	.text
	.file	"gdevl4r.bc"
	.align	16, 0x90
	.type	lips2p_print_page_copies,@function
lips2p_print_page_copies:               # @lips2p_print_page_copies
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%edx, %eax
	xorl	%edx, %edx
	movl	%eax, %ecx
	jmp	lips_print_page_copies  # TAILCALL
.Lfunc_end0:
	.size	lips2p_print_page_copies, .Lfunc_end0-lips2p_print_page_copies
	.cfi_endproc

	.align	16, 0x90
	.type	lips2p_image_out,@function
lips2p_image_out:                       # @lips2p_image_out
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
	subq	$120, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 176
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
	movl	%r9d, %r14d
	movl	%r14d, 36(%rsp)         # 4-byte Spill
	movl	%r8d, %ebx
	movq	%rbx, 24(%rsp)          # 8-byte Spill
	movq	%rsi, 40(%rsp)          # 8-byte Spill
	movq	%rdi, %r13
	callq	move_cap
	movq	18520(%r13), %rdi
	movq	18528(%r13), %rsi
	movl	%ebx, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	leal	(%rax,%rbx), %ebx
	sarl	$3, %ebx
	movl	%ebx, %ebp
	imull	%r14d, %ebp
	movl	%ebp, %edx
	callq	lips_mode3format_encode
	movl	%eax, %r15d
	cvttss2si	884(%r13), %r9d
	leaq	80(%rsp), %r12
	movl	$.L.str.86, %esi
	movl	$155, %edx
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	%ebx, %r8d
	movl	%ebp, %ecx
	callq	gs_sprintf
	cvttss2si	884(%r13), %r9d
	movl	%r14d, (%rsp)
	leaq	48(%rsp), %r14
	movl	$.L.str.87, %esi
	movl	$155, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	movl	%ebx, %r8d
	movl	%r15d, %ecx
	callq	gs_sprintf
	movslq	%r15d, %r15
	movslq	%ebp, %rbx
	movq	%r14, %rdi
	callq	strlen
	movq	%rbx, %rbp
	subq	%rax, %rbp
	movq	%r12, %rdi
	callq	strlen
	addq	%rbp, %rax
	cmpq	%rax, %r15
	jae	.LBB1_2
# BB#1:                                 # %if.then
	leaq	48(%rsp), %rdx
	movl	$.L.str.88, %esi
	xorl	%eax, %eax
	movq	40(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	callq	fprintf
	movq	18528(%r13), %rdi
	movl	$1, %esi
	movq	%r15, %rdx
	movq	%rbx, %rcx
	callq	fwrite
	jmp	.LBB1_3
.LBB1_2:                                # %if.else
	leaq	80(%rsp), %rdx
	movl	$.L.str.88, %esi
	xorl	%eax, %eax
	movq	40(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rdi
	callq	fprintf
	movq	18520(%r13), %rdi
	movl	$1, %esi
	movq	%rbx, %rdx
	movq	%rbp, %rcx
	callq	fwrite
	movq	%rbp, %rbx
.LBB1_3:                                # %if.end
	cmpl	$0, 18568(%r13)
	je	.LBB1_5
# BB#4:                                 # %if.then.32
	movl	36(%rsp), %r14d         # 4-byte Reload
	movl	%r14d, (%rsp)
	movl	$155, 8(%rsp)
	movl	$.L.str.89, %esi
	movl	$155, %edx
	movl	$155, %ecx
	movl	$155, %r9d
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movq	24(%rsp), %rbp          # 8-byte Reload
	movl	%ebp, %r8d
	callq	fprintf
	movl	$.L.str.79, %esi
	movl	$155, %edx
	movl	$155, %r8d
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movl	%ebp, %ecx
	movl	%r14d, %r9d
	callq	fprintf
.LBB1_5:                                # %if.end.33
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	lips2p_image_out, .Lfunc_end1-lips2p_image_out
	.cfi_endproc

	.align	16, 0x90
	.type	lips3_print_page_copies,@function
lips3_print_page_copies:                # @lips3_print_page_copies
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%edx, %eax
	movl	$1, %edx
	movl	%eax, %ecx
	jmp	lips_print_page_copies  # TAILCALL
.Lfunc_end2:
	.size	lips3_print_page_copies, .Lfunc_end2-lips3_print_page_copies
	.cfi_endproc

	.align	16, 0x90
	.type	bjc880j_print_page_copies,@function
bjc880j_print_page_copies:              # @bjc880j_print_page_copies
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$2, %ecx
	jmp	lips4type_print_page_copies # TAILCALL
.Lfunc_end3:
	.size	bjc880j_print_page_copies, .Lfunc_end3-bjc880j_print_page_copies
	.cfi_endproc

	.align	16, 0x90
	.type	lips4_image_out,@function
lips4_image_out:                        # @lips4_image_out
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
	subq	$120, %rsp
.Ltmp19:
	.cfi_def_cfa_offset 176
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
	movl	%r9d, %ebx
	movl	%r8d, %ebp
	movq	%rbp, 24(%rsp)          # 8-byte Spill
	movq	%rsi, 32(%rsp)          # 8-byte Spill
	movq	%rdi, %r12
	callq	move_cap
	movq	18520(%r12), %rdi
	movq	18528(%r12), %rsi
	movl	%ebp, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	leal	(%rax,%rbp), %r14d
	sarl	$3, %r14d
	movl	%r14d, %ebp
	imull	%ebx, %ebp
	movl	%ebp, %edx
	callq	lips_packbits_encode
	movl	%eax, %r13d
	movq	18520(%r12), %rdi
	movq	18536(%r12), %rsi
	movl	%ebp, %edx
	callq	lips_rle_encode
	movl	%eax, %r15d
	cvttss2si	884(%r12), %r9d
	leaq	80(%rsp), %rdi
	movl	$.L.str.86, %esi
	movl	$155, %edx
	xorl	%eax, %eax
	movl	%r14d, %r8d
	movl	%ebp, %ecx
	callq	gs_sprintf
	cvttss2si	884(%r12), %r9d
	cmpl	%r15d, %r13d
	jge	.LBB4_4
# BB#1:                                 # %if.then
	movl	%ebx, (%rsp)
	movl	%ebx, 44(%rsp)          # 4-byte Spill
	leaq	48(%rsp), %r15
	movl	$.L.str.90, %esi
	movl	$155, %edx
	xorl	%eax, %eax
	movq	%r15, %rdi
	movl	%r14d, %r8d
	movl	%r13d, %ecx
	callq	gs_sprintf
	movslq	%r13d, %r14
	movslq	%ebp, %rbx
	movq	%r15, %rdi
	callq	strlen
	movq	%rbx, %rbp
	subq	%rax, %rbp
	leaq	80(%rsp), %rdi
	callq	strlen
	addq	%rbp, %rax
	cmpq	%rax, %r14
	jae	.LBB4_3
# BB#2:                                 # %if.then.26
	leaq	48(%rsp), %rdx
	movl	$.L.str.88, %esi
	xorl	%eax, %eax
	movq	32(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	callq	fprintf
	movq	18528(%r12), %rdi
	movl	$1, %esi
	movq	%r14, %rdx
	movq	%rbx, %r14
	jmp	.LBB4_7
.LBB4_4:                                # %if.else.39
	movl	%ebx, (%rsp)
	movl	%ebx, 44(%rsp)          # 4-byte Spill
	leaq	48(%rsp), %rbx
	movl	$.L.str.91, %esi
	movl	$155, %edx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movl	%r14d, %r8d
	movl	%r13d, %ecx
	callq	gs_sprintf
	movslq	%r15d, %r14
	movslq	%ebp, %r15
	movq	%rbx, %rdi
	callq	strlen
	movq	%r15, %rbp
	subq	%rax, %rbp
	leaq	80(%rsp), %rdi
	callq	strlen
	addq	%rbp, %rax
	cmpq	%rax, %r14
	jae	.LBB4_6
# BB#5:                                 # %if.then.58
	leaq	48(%rsp), %rdx
	movl	$.L.str.88, %esi
	xorl	%eax, %eax
	movq	32(%rsp), %r14          # 8-byte Reload
	movq	%r14, %rdi
	callq	fprintf
	movq	18536(%r12), %rdi
	movslq	%r13d, %rdx
	movl	$1, %esi
	jmp	.LBB4_7
.LBB4_3:                                # %if.else
	leaq	80(%rsp), %rdx
	movl	$.L.str.88, %esi
	xorl	%eax, %eax
	movq	32(%rsp), %r14          # 8-byte Reload
	movq	%r14, %rdi
	callq	fprintf
	movq	18520(%r12), %rdi
	movl	$1, %esi
	movq	%rbx, %rdx
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.64
	leaq	80(%rsp), %rdx
	movl	$.L.str.88, %esi
	xorl	%eax, %eax
	movq	32(%rsp), %r14          # 8-byte Reload
	movq	%r14, %rdi
	callq	fprintf
	movq	18520(%r12), %rdi
	movl	$1, %esi
	movq	%r15, %rdx
.LBB4_7:                                # %if.end.73
	movq	%r14, %rcx
	callq	fwrite
	cmpl	$0, 18568(%r12)
	movl	44(%rsp), %ebx          # 4-byte Reload
	je	.LBB4_9
# BB#8:                                 # %if.then.74
	movl	%ebx, (%rsp)
	movl	$155, 8(%rsp)
	movl	$.L.str.89, %esi
	movl	$155, %edx
	movl	$155, %ecx
	movl	$155, %r9d
	xorl	%eax, %eax
	movq	%r14, %rdi
	movq	24(%rsp), %rbp          # 8-byte Reload
	movl	%ebp, %r8d
	callq	fprintf
	movl	$.L.str.79, %esi
	movl	$155, %edx
	movl	$155, %r8d
	xorl	%eax, %eax
	movq	%r14, %rdi
	movl	%ebp, %ecx
	movl	%ebx, %r9d
	callq	fprintf
.LBB4_9:                                # %if.end.75
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	lips4_image_out, .Lfunc_end4-lips4_image_out
	.cfi_endproc

	.align	16, 0x90
	.type	lips4_print_page_copies,@function
lips4_print_page_copies:                # @lips4_print_page_copies
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$3, %ecx
	jmp	lips4type_print_page_copies # TAILCALL
.Lfunc_end5:
	.size	lips4_print_page_copies, .Lfunc_end5-lips4_print_page_copies
	.cfi_endproc

	.align	16, 0x90
	.type	lips2p_open,@function
lips2p_open:                            # @lips2p_open
	.cfi_startproc
# BB#0:                                 # %entry
	cvttss2si	856(%rdi), %esi
	cvttss2si	860(%rdi), %edx
	cvttss2si	884(%rdi), %eax
	cvttss2si	888(%rdi), %r8d
	cmpl	%edx, %esi
	jle	.LBB6_1
# BB#6:                                 # %if.else.i
	leal	-419(%rsi), %ecx
	cmpl	$771, %ecx              # imm = 0x303
	ja	.LBB6_8
# BB#7:                                 # %if.else.i
	leal	-284(%rdx), %ecx
	cmpl	$559, %ecx              # imm = 0x22F
	jb	.LBB6_11
.LBB6_8:                                # %land.lhs.true.37.i
	cmpl	$240, %eax
	jne	.LBB6_13
# BB#9:                                 # %land.lhs.true.37.i
	cmpl	$1224, %esi             # imm = 0x4C8
	jne	.LBB6_13
# BB#10:                                # %land.lhs.true.37.i
	cmpl	$792, %edx              # imm = 0x318
	je	.LBB6_12
	jmp	.LBB6_13
.LBB6_1:                                # %if.then.i
	leal	-284(%rsi), %ecx
	cmpl	$558, %ecx              # imm = 0x22E
	ja	.LBB6_3
# BB#2:                                 # %if.then.i
	leal	-419(%rdx), %ecx
	cmpl	$772, %ecx              # imm = 0x304
	jae	.LBB6_3
.LBB6_11:                               # %if.end.45.i
	cmpl	$240, %eax
	je	.LBB6_12
	jmp	.LBB6_13
.LBB6_3:                                # %land.lhs.true.i
	cmpl	$240, %eax
	jne	.LBB6_13
# BB#4:                                 # %land.lhs.true.i
	cmpl	$792, %esi              # imm = 0x318
	jne	.LBB6_13
# BB#5:                                 # %land.lhs.true.i
	cmpl	$1224, %edx             # imm = 0x4C8
	jne	.LBB6_13
.LBB6_12:                               # %if.end.45.i
	cmpl	%r8d, %eax
	jne	.LBB6_13
# BB#14:                                # %if.end.90.i
	jmp	gdev_prn_open           # TAILCALL
.LBB6_13:                               # %lips_open.exit
	movl	$-15, %eax
	retq
.Lfunc_end6:
	.size	lips2p_open, .Lfunc_end6-lips2p_open
	.cfi_endproc

	.align	16, 0x90
	.type	lips_close,@function
lips_close:                             # @lips_close
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp26:
	.cfi_def_cfa_offset 16
.Ltmp27:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$1, %esi
	callq	gdev_prn_open_printer
	movq	17176(%rbx), %rdi
	movl	$.L.str.5, %esi
	movl	$144, %edx
	movl	$156, %ecx
	xorl	%eax, %eax
	callq	fprintf
	cmpl	$0, 18588(%rbx)
	je	.LBB7_2
# BB#1:                                 # %if.then
	movq	17176(%rbx), %rdi
	movl	$.L.str.6, %esi
	movl	$27, %edx
	movl	$27, %ecx
	xorl	%eax, %eax
	callq	fprintf
.LBB7_2:                                # %if.end
	movq	%rbx, %rdi
	popq	%rbx
	jmp	gdev_prn_close          # TAILCALL
.Lfunc_end7:
	.size	lips_close, .Lfunc_end7-lips_close
	.cfi_endproc

	.align	16, 0x90
	.type	lips_get_params,@function
lips_get_params:                        # @lips_get_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp29:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp30:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp31:
	.cfi_def_cfa_offset 40
	subq	$24, %rsp
.Ltmp32:
	.cfi_def_cfa_offset 64
.Ltmp33:
	.cfi_offset %rbx, -40
.Ltmp34:
	.cfi_offset %r14, -32
.Ltmp35:
	.cfi_offset %r15, -24
.Ltmp36:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	lprn_get_params
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB8_8
# BB#1:                                 # %if.end
	leaq	18572(%rbx), %rdx
	movl	$.L.str.7, %esi
	movq	%r14, %rdi
	callq	param_write_int
	testl	%eax, %eax
	cmovsl	%eax, %ebp
	leaq	18588(%rbx), %rdx
	movl	$.L.str.8, %esi
	movq	%r14, %rdi
	callq	param_write_bool
	testl	%eax, %eax
	cmovsl	%eax, %ebp
	leaq	18592(%rbx), %rdx
	movl	$.L.str.9, %esi
	movq	%r14, %rdi
	callq	param_write_int
	movl	%eax, %r15d
	testl	%r15d, %r15d
	cmovsl	%r15d, %ebp
	movl	18600(%rbx), %eax
	testl	%eax, %eax
	js	.LBB8_6
# BB#2:                                 # %land.lhs.true
	je	.LBB8_4
# BB#3:                                 # %cond.true
	leaq	18596(%rbx), %rdx
	movl	$.L.str.10, %esi
	movq	%r14, %rdi
	callq	param_write_bool
	jmp	.LBB8_5
.LBB8_4:                                # %cond.false
	movl	$.L.str.10, %esi
	movq	%r14, %rdi
	callq	param_write_null
.LBB8_5:                                # %cond.end
	testl	%eax, %eax
	cmovnsl	%eax, %r15d
	movl	%r15d, %ebp
.LBB8_6:                                # %if.end.19
	testl	%ebp, %ebp
	js	.LBB8_8
# BB#7:                                 # %if.end.22
	addq	$18576, %rbx            # imm = 0x4890
	movq	%rbx, 8(%rsp)
	movq	%rbx, %rdi
	callq	strlen
	movl	%eax, 16(%rsp)
	movl	$0, 20(%rsp)
	leaq	8(%rsp), %rdx
	movl	$.L.str.11, %esi
	movq	%r14, %rdi
	callq	param_write_string
	movl	%eax, %ebp
.LBB8_8:                                # %cleanup
	movl	%ebp, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	lips_get_params, .Lfunc_end8-lips_get_params
	.cfi_endproc

	.align	16, 0x90
	.type	lips_put_params,@function
lips_put_params:                        # @lips_put_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp38:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp39:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp40:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp41:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp42:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp43:
	.cfi_def_cfa_offset 96
.Ltmp44:
	.cfi_offset %rbx, -56
.Ltmp45:
	.cfi_offset %r12, -48
.Ltmp46:
	.cfi_offset %r13, -40
.Ltmp47:
	.cfi_offset %r14, -32
.Ltmp48:
	.cfi_offset %r15, -24
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	18572(%r14), %eax
	movl	%eax, 36(%rsp)
	movl	18588(%r14), %eax
	movl	%eax, 32(%rsp)
	movl	18592(%r14), %eax
	movl	%eax, 28(%rsp)
	movl	18596(%r14), %eax
	movl	%eax, 24(%rsp)
	movl	18600(%r14), %r12d
	leaq	36(%rsp), %rdx
	movl	$.L.str.7, %esi
	movq	%rbx, %rdi
	callq	param_read_int
	movl	%eax, %ebp
	xorl	%r15d, %r15d
	cmpl	$1, %ebp
	je	.LBB9_5
# BB#1:                                 # %entry
	testl	%ebp, %ebp
	jne	.LBB9_4
# BB#2:                                 # %sw.bb
	movl	36(%rsp), %eax
	leal	1(%rax), %ecx
	cmpl	$18, %ecx
	movl	$-15, %ebp
	ja	.LBB9_4
# BB#3:                                 # %sw.bb
	addl	$-4, %eax
	cmpl	$5, %eax
	ja	.LBB9_5
.LBB9_4:                                # %casse
	movq	(%rbx), %rax
	movl	$.L.str.7, %esi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r15d
.LBB9_5:                                # %sw.epilog
	leaq	32(%rsp), %rdx
	movl	$.L.str.8, %esi
	movq	%rbx, %rdi
	callq	param_read_bool
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB9_7
# BB#6:                                 # %if.then.12
	movq	(%rbx), %rax
	movl	$.L.str.8, %esi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r15d
.LBB9_7:                                # %if.end.16
	leaq	28(%rsp), %rdx
	movl	$.L.str.9, %esi
	movq	%rbx, %rdi
	callq	param_read_int
	movl	%eax, %ebp
	cmpl	$1, %ebp
	je	.LBB9_11
# BB#8:                                 # %if.end.16
	testl	%ebp, %ebp
	jne	.LBB9_10
# BB#9:                                 # %sw.bb.18
	movl	$-15, %ebp
	cmpl	$9, 28(%rsp)
	jb	.LBB9_11
.LBB9_10:                               # %tden
	movq	(%rbx), %rax
	movl	$.L.str.9, %esi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r15d
.LBB9_11:                               # %sw.epilog.29
	cmpl	$0, 18600(%r14)
	js	.LBB9_17
# BB#12:                                # %if.then.32
	leaq	24(%rsp), %rdx
	movl	$.L.str.10, %esi
	movq	%rbx, %rdi
	callq	param_read_bool
	cmpl	$1, %eax
	je	.LBB9_17
# BB#13:                                # %if.then.32
	testl	%eax, %eax
	jne	.LBB9_15
# BB#14:                                # %sw.bb.34
	movl	$1, %r13d
	jmp	.LBB9_18
.LBB9_15:                               # %sw.default.35
	movl	$.L.str.10, %esi
	movq	%rbx, %rdi
	callq	param_read_null
	movl	%eax, %ebp
	xorl	%r13d, %r13d
	testl	%ebp, %ebp
	je	.LBB9_18
# BB#16:                                # %if.end.39
	movq	(%rbx), %rax
	movl	$.L.str.10, %esi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r15d
.LBB9_17:                               # %if.end.44
	movl	%r12d, %r13d
.LBB9_18:                               # %if.end.44
	leaq	8(%rsp), %rdx
	movl	$.L.str.11, %esi
	movq	%rbx, %rdi
	callq	param_read_string
	movl	%eax, %ebp
	cmpl	$1, %ebp
	je	.LBB9_26
# BB#19:                                # %if.end.44
	testl	%ebp, %ebp
	jne	.LBB9_25
# BB#20:                                # %sw.bb.46
	movl	16(%rsp), %eax
	movl	$-13, %ebp
	cmpl	$12, %eax
	ja	.LBB9_25
# BB#21:                                # %for.cond.preheader
	testl	%eax, %eax
	je	.LBB9_27
# BB#22:                                # %for.body.lr.ph
	movq	8(%rsp), %rsi
	xorl	%edx, %edx
	movl	$-15, %ebp
	.align	16, 0x90
.LBB9_24:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movb	(%rsi,%rdx), %cl
	addb	$-32, %cl
	movzbl	%cl, %ecx
	cmpl	$95, %ecx
	jae	.LBB9_25
# BB#23:                                # %for.cond
                                        #   in Loop: Header=BB9_24 Depth=1
	incq	%rdx
	cmpl	%eax, %edx
	jb	.LBB9_24
	jmp	.LBB9_27
.LBB9_25:                               # %userne
	movq	(%rbx), %rax
	movl	$.L.str.11, %esi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r15d
.LBB9_26:                               # %sw.bb.68
	movq	$0, 8(%rsp)
.LBB9_27:                               # %sw.epilog.70
	testl	%r15d, %r15d
	js	.LBB9_32
# BB#28:                                # %if.end.74
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	lprn_put_params
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB9_32
# BB#29:                                # %if.end.79
	movl	36(%rsp), %eax
	movl	%eax, 18572(%r14)
	movl	32(%rsp), %eax
	movl	%eax, 18588(%r14)
	movl	28(%rsp), %eax
	movl	%eax, 18592(%r14)
	movl	24(%rsp), %eax
	movl	%eax, 18596(%r14)
	movl	%r13d, 18600(%r14)
	movq	8(%rsp), %rbx
	xorl	%r15d, %r15d
	testq	%rbx, %rbx
	je	.LBB9_32
# BB#30:                                # %land.lhs.true.88
	movl	16(%rsp), %ebp
	addq	$18576, %r14            # imm = 0x4890
	movq	%r14, %rdi
	callq	strlen
	movq	%rbx, %rdi
	movl	%ebp, %esi
	movq	%r14, %rdx
	movl	%eax, %ecx
	callq	bytes_compare
	testl	%eax, %eax
	je	.LBB9_32
# BB#31:                                # %if.then.96
	movq	8(%rsp), %rsi
	movl	16(%rsp), %edx
	movq	%r14, %rdi
	callq	memcpy
	movl	16(%rsp), %eax
	movb	$0, (%r14,%rax)
.LBB9_32:                               # %cleanup.108
	movl	%r15d, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	lips_put_params, .Lfunc_end9-lips_put_params
	.cfi_endproc

	.align	16, 0x90
	.type	lips3_open,@function
lips3_open:                             # @lips3_open
	.cfi_startproc
# BB#0:                                 # %entry
	cvttss2si	856(%rdi), %esi
	cvttss2si	860(%rdi), %edx
	cvttss2si	884(%rdi), %eax
	cvttss2si	888(%rdi), %r8d
	cmpl	%edx, %esi
	jle	.LBB10_1
# BB#6:                                 # %if.else.i
	leal	-419(%rsi), %ecx
	cmpl	$771, %ecx              # imm = 0x303
	ja	.LBB10_8
# BB#7:                                 # %if.else.i
	leal	-284(%rdx), %ecx
	cmpl	$559, %ecx              # imm = 0x22F
	jb	.LBB10_11
.LBB10_8:                               # %land.lhs.true.37.i
	cmpl	$300, %eax              # imm = 0x12C
	jne	.LBB10_13
# BB#9:                                 # %land.lhs.true.37.i
	cmpl	$1224, %esi             # imm = 0x4C8
	jne	.LBB10_13
# BB#10:                                # %land.lhs.true.37.i
	cmpl	$792, %edx              # imm = 0x318
	je	.LBB10_12
	jmp	.LBB10_13
.LBB10_1:                               # %if.then.i
	leal	-284(%rsi), %ecx
	cmpl	$558, %ecx              # imm = 0x22E
	ja	.LBB10_3
# BB#2:                                 # %if.then.i
	leal	-419(%rdx), %ecx
	cmpl	$772, %ecx              # imm = 0x304
	jae	.LBB10_3
.LBB10_11:                              # %if.end.45.i
	cmpl	$300, %eax              # imm = 0x12C
	je	.LBB10_12
	jmp	.LBB10_13
.LBB10_3:                               # %land.lhs.true.i
	cmpl	$300, %eax              # imm = 0x12C
	jne	.LBB10_13
# BB#4:                                 # %land.lhs.true.i
	cmpl	$792, %esi              # imm = 0x318
	jne	.LBB10_13
# BB#5:                                 # %land.lhs.true.i
	cmpl	$1224, %edx             # imm = 0x4C8
	jne	.LBB10_13
.LBB10_12:                              # %if.end.45.i
	cmpl	%r8d, %eax
	jne	.LBB10_13
# BB#14:                                # %if.end.90.i
	jmp	gdev_prn_open           # TAILCALL
.LBB10_13:                              # %lips_open.exit
	movl	$-15, %eax
	retq
.Lfunc_end10:
	.size	lips3_open, .Lfunc_end10-lips3_open
	.cfi_endproc

	.align	16, 0x90
	.type	bjc880j_open,@function
bjc880j_open:                           # @bjc880j_open
	.cfi_startproc
# BB#0:                                 # %entry
	cvttss2si	856(%rdi), %esi
	cvttss2si	860(%rdi), %edx
	cvttss2si	884(%rdi), %eax
	cvttss2si	888(%rdi), %r8d
	cmpl	%edx, %esi
	jle	.LBB11_1
# BB#7:                                 # %if.else.i
	leal	-419(%rsi), %ecx
	cmpl	$771, %ecx              # imm = 0x303
	ja	.LBB11_9
# BB#8:                                 # %if.else.i
	leal	-284(%rdx), %ecx
	cmpl	$559, %ecx              # imm = 0x22F
	jb	.LBB11_10
.LBB11_9:                               # %land.lhs.true.37.i
	cmpl	$1224, %esi             # imm = 0x4C8
	setne	%sil
	cmpl	$792, %edx              # imm = 0x318
	jmp	.LBB11_4
.LBB11_1:                               # %if.then.i
	leal	-284(%rsi), %ecx
	cmpl	$558, %ecx              # imm = 0x22E
	ja	.LBB11_3
# BB#2:                                 # %if.then.i
	leal	-419(%rdx), %ecx
	cmpl	$772, %ecx              # imm = 0x304
	jae	.LBB11_3
.LBB11_10:                              # %if.end.45.i
	cmpl	%r8d, %eax
	jne	.LBB11_12
# BB#11:                                # %if.end.45.i
	addl	$-60, %eax
	cmpl	$300, %eax              # imm = 0x12C
	jbe	.LBB11_6
	jmp	.LBB11_12
.LBB11_3:                               # %land.lhs.true.i
	cmpl	$792, %esi              # imm = 0x318
	setne	%sil
	cmpl	$1224, %edx             # imm = 0x4C8
.LBB11_4:                               # %land.lhs.true.i
	setne	%dl
	cmpl	%r8d, %eax
	setne	%cl
	addl	$-60, %eax
	cmpl	$300, %eax              # imm = 0x12C
	ja	.LBB11_12
# BB#5:                                 # %land.lhs.true.i
	orb	%dl, %sil
	orb	%cl, %sil
	jne	.LBB11_12
.LBB11_6:                               # %if.end.90.i
	jmp	gdev_prn_open           # TAILCALL
.LBB11_12:                              # %lips_open.exit
	movl	$-15, %eax
	retq
.Lfunc_end11:
	.size	bjc880j_open, .Lfunc_end11-bjc880j_open
	.cfi_endproc

	.align	16, 0x90
	.type	lips4_get_params,@function
lips4_get_params:                       # @lips4_get_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp50:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp51:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp52:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp53:
	.cfi_def_cfa_offset 48
.Ltmp54:
	.cfi_offset %rbx, -32
.Ltmp55:
	.cfi_offset %r14, -24
.Ltmp56:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	lips_get_params
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB12_3
# BB#1:                                 # %if.end
	leaq	18628(%rbx), %rdx
	movl	$.L.str.12, %esi
	movq	%r14, %rdi
	callq	param_write_int
	testl	%eax, %eax
	cmovsl	%eax, %ebp
	leaq	18632(%rbx), %rdx
	movl	$.L.str.13, %esi
	movq	%r14, %rdi
	callq	param_write_bool
	testl	%eax, %eax
	cmovsl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB12_3
# BB#2:                                 # %if.end.11
	addq	$18636, %rbx            # imm = 0x48CC
	movq	%rbx, (%rsp)
	movq	%rbx, %rdi
	callq	strlen
	movl	%eax, 8(%rsp)
	movl	$0, 12(%rsp)
	leaq	(%rsp), %rdx
	movl	$.L.str.14, %esi
	movq	%r14, %rdi
	callq	param_write_string
	movl	%eax, %ebp
.LBB12_3:                               # %cleanup
	movl	%ebp, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end12:
	.size	lips4_get_params, .Lfunc_end12-lips4_get_params
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI13_0:
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	5                       # 0x5
	.long	5                       # 0x5
	.text
	.align	16, 0x90
	.type	lips4_put_params,@function
lips4_put_params:                       # @lips4_put_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp58:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp59:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp60:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp61:
	.cfi_def_cfa_offset 48
	subq	$32, %rsp
.Ltmp62:
	.cfi_def_cfa_offset 80
.Ltmp63:
	.cfi_offset %rbx, -48
.Ltmp64:
	.cfi_offset %r12, -40
.Ltmp65:
	.cfi_offset %r14, -32
.Ltmp66:
	.cfi_offset %r15, -24
.Ltmp67:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	18628(%r14), %eax
	movl	%eax, 12(%rsp)
	movl	18632(%r14), %eax
	movl	%eax, 8(%rsp)
	movzwl	108(%r14), %r12d
	movl	$0, 4(%rsp)
	leaq	12(%rsp), %rdx
	movl	$.L.str.12, %esi
	movq	%rbx, %rdi
	callq	param_read_int
	movl	%eax, %ebp
	xorl	%r15d, %r15d
	cmpl	$1, %ebp
	je	.LBB13_5
# BB#1:                                 # %entry
	testl	%ebp, %ebp
	jne	.LBB13_4
# BB#2:                                 # %sw.bb
	movl	$-15, %ebp
	movl	12(%rsp), %eax
	cmpl	$4, %eax
	ja	.LBB13_4
# BB#3:                                 # %sw.bb
	movl	$22, %ecx
	btl	%eax, %ecx
	jb	.LBB13_5
.LBB13_4:                               # %nupe
	movq	(%rbx), %rax
	movl	$.L.str.12, %esi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r15d
.LBB13_5:                               # %sw.epilog
	leaq	8(%rsp), %rdx
	movl	$.L.str.13, %esi
	movq	%rbx, %rdi
	callq	param_read_bool
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB13_7
# BB#6:                                 # %if.then.13
	movq	(%rbx), %rax
	movl	$.L.str.13, %esi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r15d
.LBB13_7:                               # %if.end.17
	leaq	16(%rsp), %rdx
	movl	$.L.str.14, %esi
	movq	%rbx, %rdi
	callq	param_read_string
	movl	%eax, %ebp
	cmpl	$1, %ebp
	je	.LBB13_61
# BB#8:                                 # %if.end.17
	testl	%ebp, %ebp
	jne	.LBB13_60
# BB#9:                                 # %sw.bb.19
	movl	$-13, %ebp
	cmpl	$32, 24(%rsp)
	ja	.LBB13_60
# BB#10:                                # %land.lhs.true.24
	movl	$.L.str.15, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	16(%rsp), %rdi
	cmpq	$3, %rcx
	ja	.LBB13_18
# BB#11:                                # %cond.true
	movzbl	(%rdi), %eax
	addl	$-80, %eax
	testq	%rcx, %rcx
	je	.LBB13_19
# BB#12:                                # %cond.true
	testl	%eax, %eax
	jne	.LBB13_19
# BB#13:                                # %if.then.37
	movzbl	1(%rdi), %eax
	addl	$-108, %eax
	cmpq	$2, %rcx
	jb	.LBB13_19
# BB#14:                                # %if.then.37
	testl	%eax, %eax
	jne	.LBB13_19
# BB#15:                                # %if.then.47
	movzbl	2(%rdi), %eax
	addl	$-97, %eax
	cmpq	$3, %rcx
	jb	.LBB13_19
# BB#16:                                # %if.then.47
	testl	%eax, %eax
	jne	.LBB13_19
# BB#17:                                # %if.then.57
	movzbl	3(%rdi), %eax
	addl	$-105, %eax
	jmp	.LBB13_19
.LBB13_18:                              # %cond.false
	movl	$.L.str.15, %esi
	callq	strcmp
.LBB13_19:                              # %cond.end
	testl	%eax, %eax
	je	.LBB13_62
# BB#20:                                # %land.lhs.true.76
	movl	$.L.str.16, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	16(%rsp), %rdi
	cmpq	$3, %rcx
	ja	.LBB13_28
# BB#21:                                # %cond.true.80
	movzbl	(%rdi), %eax
	addl	$-79, %eax
	testq	%rcx, %rcx
	je	.LBB13_29
# BB#22:                                # %cond.true.80
	testl	%eax, %eax
	jne	.LBB13_29
# BB#23:                                # %if.then.95
	movzbl	1(%rdi), %eax
	addl	$-72, %eax
	cmpq	$2, %rcx
	jb	.LBB13_29
# BB#24:                                # %if.then.95
	testl	%eax, %eax
	jne	.LBB13_29
# BB#25:                                # %if.then.105
	movzbl	2(%rdi), %eax
	addl	$-80, %eax
	cmpq	$3, %rcx
	jb	.LBB13_29
# BB#26:                                # %if.then.105
	testl	%eax, %eax
	jne	.LBB13_29
# BB#27:                                # %if.then.115
	movzbl	3(%rdi), %eax
	jmp	.LBB13_29
.LBB13_28:                              # %cond.false.124
	movl	$.L.str.16, %esi
	callq	strcmp
.LBB13_29:                              # %cond.end.127
	testl	%eax, %eax
	je	.LBB13_62
# BB#30:                                # %land.lhs.true.137
	movl	$.L.str.17, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	16(%rsp), %rdi
	cmpq	$3, %rcx
	ja	.LBB13_38
# BB#31:                                # %cond.true.141
	movzbl	(%rdi), %eax
	addl	$-84, %eax
	testq	%rcx, %rcx
	je	.LBB13_39
# BB#32:                                # %cond.true.141
	testl	%eax, %eax
	jne	.LBB13_39
# BB#33:                                # %if.then.156
	movzbl	1(%rdi), %eax
	addl	$-114, %eax
	cmpq	$2, %rcx
	jb	.LBB13_39
# BB#34:                                # %if.then.156
	testl	%eax, %eax
	jne	.LBB13_39
# BB#35:                                # %if.then.166
	movzbl	2(%rdi), %eax
	addl	$-97, %eax
	cmpq	$3, %rcx
	jb	.LBB13_39
# BB#36:                                # %if.then.166
	testl	%eax, %eax
	jne	.LBB13_39
# BB#37:                                # %if.then.176
	movzbl	3(%rdi), %eax
	addl	$-110, %eax
	jmp	.LBB13_39
.LBB13_38:                              # %cond.false.185
	movl	$.L.str.17, %esi
	callq	strcmp
.LBB13_39:                              # %cond.end.188
	testl	%eax, %eax
	je	.LBB13_62
# BB#40:                                # %land.lhs.true.198
	movl	$.L.str.18, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	16(%rsp), %rdi
	cmpq	$3, %rcx
	ja	.LBB13_48
# BB#41:                                # %cond.true.202
	movzbl	(%rdi), %eax
	addl	$-71, %eax
	testq	%rcx, %rcx
	je	.LBB13_49
# BB#42:                                # %cond.true.202
	testl	%eax, %eax
	jne	.LBB13_49
# BB#43:                                # %if.then.217
	movzbl	1(%rdi), %eax
	addl	$-108, %eax
	cmpq	$2, %rcx
	jb	.LBB13_49
# BB#44:                                # %if.then.217
	testl	%eax, %eax
	jne	.LBB13_49
# BB#45:                                # %if.then.227
	movzbl	2(%rdi), %eax
	addl	$-111, %eax
	cmpq	$3, %rcx
	jb	.LBB13_49
# BB#46:                                # %if.then.227
	testl	%eax, %eax
	jne	.LBB13_49
# BB#47:                                # %if.then.237
	movzbl	3(%rdi), %eax
	addl	$-115, %eax
	jmp	.LBB13_49
.LBB13_48:                              # %cond.false.246
	movl	$.L.str.18, %esi
	callq	strcmp
.LBB13_49:                              # %cond.end.249
	testl	%eax, %eax
	je	.LBB13_62
# BB#50:                                # %land.lhs.true.259
	movl	$.L.str.19, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	16(%rsp), %rdi
	cmpq	$3, %rcx
	ja	.LBB13_58
# BB#51:                                # %cond.true.263
	movzbl	(%rdi), %eax
	addl	$-67, %eax
	testq	%rcx, %rcx
	je	.LBB13_59
# BB#52:                                # %cond.true.263
	testl	%eax, %eax
	jne	.LBB13_59
# BB#53:                                # %if.then.278
	movzbl	1(%rdi), %eax
	addl	$-97, %eax
	cmpq	$2, %rcx
	jb	.LBB13_59
# BB#54:                                # %if.then.278
	testl	%eax, %eax
	jne	.LBB13_59
# BB#55:                                # %if.then.288
	movzbl	2(%rdi), %eax
	addl	$-114, %eax
	cmpq	$3, %rcx
	jb	.LBB13_59
# BB#56:                                # %if.then.288
	testl	%eax, %eax
	jne	.LBB13_59
# BB#57:                                # %if.then.298
	movzbl	3(%rdi), %eax
	addl	$-100, %eax
	jmp	.LBB13_59
.LBB13_58:                              # %cond.false.307
	movl	$.L.str.19, %esi
	callq	strcmp
.LBB13_59:                              # %cond.end.310
	movl	$-15, %ebp
	testl	%eax, %eax
	je	.LBB13_62
.LBB13_60:                              # %pmediae
	movq	(%rbx), %rax
	movl	$.L.str.14, %esi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r15d
.LBB13_61:                              # %sw.bb.321
	movq	$0, 16(%rsp)
.LBB13_62:                              # %sw.epilog.323
	leaq	4(%rsp), %rdx
	movl	$.L.str.20, %esi
	movq	%rbx, %rdi
	callq	param_read_int
	movl	%eax, %ebp
	cmpl	$1, %ebp
	je	.LBB13_67
# BB#63:                                # %sw.epilog.323
	testl	%ebp, %ebp
	jne	.LBB13_66
# BB#64:                                # %sw.bb.325
	movl	4(%rsp), %eax
	cmpl	$1, %eax
	je	.LBB13_68
# BB#65:                                # %sw.bb.325
	movl	$-15, %ebp
	cmpl	$24, %eax
	je	.LBB13_68
.LBB13_66:                              # %bppe
	movq	(%rbx), %rax
	movl	$.L.str.20, %esi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r15d
.LBB13_67:                              # %sw.epilog.338
	movl	4(%rsp), %eax
	testl	%eax, %eax
	je	.LBB13_69
.LBB13_68:                              # %if.then.341
	movw	%ax, 108(%r14)
	cmpl	$7, %eax
	setg	%cl
	cmpl	$1, %eax
	setne	%al
	movzbl	%al, %eax
	leal	1(%rax,%rax), %eax
	movl	%eax, 100(%r14)
	setg	%al
	movzbl	%al, %eax
	movl	$gx_default_b_w_map_rgb_color, %edx
	movl	$gx_default_rgb_map_rgb_color, %esi
	cmoveq	%rdx, %rsi
	movzbl	%cl, %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	pslld	$31, %xmm0
	psrad	$31, %xmm0
	movl	$2, %ecx
	movd	%ecx, %xmm1
	movl	$1, %ecx
	movd	%ecx, %xmm2
	punpckldq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	movd	%eax, %xmm1
	addl	%eax, %eax
	movd	%eax, %xmm3
	punpckldq	%xmm3, %xmm1    # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1]
	punpckldq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	movdqa	%xmm0, %xmm1
	pandn	%xmm2, %xmm1
	pand	.LCPI13_0(%rip), %xmm0
	por	%xmm1, %xmm0
	movdqu	%xmm0, 112(%r14)
	movq	%rsi, 1184(%r14)
.LBB13_69:                              # %if.end.381
	testl	%r15d, %r15d
	js	.LBB13_78
# BB#70:                                # %if.end.385
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	lips_put_params
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB13_78
# BB#71:                                # %if.end.390
	movl	12(%rsp), %eax
	movl	%eax, 18628(%r14)
	movl	8(%rsp), %eax
	movl	%eax, 18632(%r14)
	movq	16(%rsp), %rbp
	testq	%rbp, %rbp
	je	.LBB13_74
# BB#72:                                # %land.lhs.true.396
	movl	24(%rsp), %r15d
	leaq	18636(%r14), %rbx
	movq	%rbx, %rdi
	callq	strlen
	movq	%rbp, %rdi
	movl	%r15d, %esi
	movq	%rbx, %rdx
	movl	%eax, %ecx
	callq	bytes_compare
	testl	%eax, %eax
	je	.LBB13_74
# BB#73:                                # %if.then.404
	movq	16(%rsp), %rsi
	movl	24(%rsp), %edx
	movq	%rbx, %rdi
	callq	memcpy
	movl	24(%rsp), %eax
	movb	$0, 18636(%r14,%rax)
.LBB13_74:                              # %if.end.414
	movl	4(%rsp), %eax
	xorl	%r15d, %r15d
	testl	%eax, %eax
	je	.LBB13_78
# BB#75:                                # %if.end.414
	cmpl	%r12d, %eax
	je	.LBB13_78
# BB#76:                                # %land.lhs.true.420
	cmpl	$0, 84(%r14)
	je	.LBB13_78
# BB#77:                                # %if.then.422
	movq	%r14, %rdi
	callq	gs_closedevice
	movl	%eax, %r15d
.LBB13_78:                              # %cleanup
	movl	%r15d, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	lips4_put_params, .Lfunc_end13-lips4_put_params
	.cfi_endproc

	.align	16, 0x90
	.type	lips4_open,@function
lips4_open:                             # @lips4_open
	.cfi_startproc
# BB#0:                                 # %entry
	cvttss2si	856(%rdi), %esi
	cvttss2si	860(%rdi), %edx
	cvttss2si	884(%rdi), %eax
	cvttss2si	888(%rdi), %r8d
	cmpl	%edx, %esi
	jle	.LBB14_1
# BB#5:                                 # %if.else.i
	leal	-419(%rsi), %ecx
	cmpl	$771, %ecx              # imm = 0x303
	ja	.LBB14_7
# BB#6:                                 # %if.else.i
	leal	-284(%rdx), %ecx
	cmpl	$559, %ecx              # imm = 0x22F
	jb	.LBB14_9
.LBB14_7:                               # %land.lhs.true.37.i
	cmpl	$1224, %esi             # imm = 0x4C8
	jne	.LBB14_12
# BB#8:                                 # %land.lhs.true.37.i
	cmpl	$792, %edx              # imm = 0x318
	je	.LBB14_9
	jmp	.LBB14_12
.LBB14_1:                               # %if.then.i
	leal	-284(%rsi), %ecx
	cmpl	$558, %ecx              # imm = 0x22E
	ja	.LBB14_3
# BB#2:                                 # %if.then.i
	leal	-419(%rdx), %ecx
	cmpl	$772, %ecx              # imm = 0x304
	jb	.LBB14_9
.LBB14_3:                               # %land.lhs.true.i
	cmpl	$792, %esi              # imm = 0x318
	jne	.LBB14_12
# BB#4:                                 # %land.lhs.true.i
	cmpl	$1224, %edx             # imm = 0x4C8
	jne	.LBB14_12
.LBB14_9:                               # %if.end.45.i
	cmpl	%r8d, %eax
	jne	.LBB14_12
# BB#10:                                # %if.else.49.i
	cmpl	$1200, %eax             # imm = 0x4B0
	je	.LBB14_13
# BB#11:                                # %if.else.49.i
	addl	$-60, %eax
	cmpl	$540, %eax              # imm = 0x21C
	jbe	.LBB14_13
.LBB14_12:                              # %lips_open.exit
	movl	$-15, %eax
	retq
.LBB14_13:                              # %if.end.90.i
	jmp	gdev_prn_open           # TAILCALL
.Lfunc_end14:
	.size	lips4_open, .Lfunc_end14-lips4_open
	.cfi_endproc

	.align	16, 0x90
	.type	lips_print_page_copies,@function
lips_print_page_copies:                 # @lips_print_page_copies
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp68:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp69:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp70:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp71:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp72:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp73:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp74:
	.cfi_def_cfa_offset 64
.Ltmp75:
	.cfi_offset %rbx, -56
.Ltmp76:
	.cfi_offset %r12, -48
.Ltmp77:
	.cfi_offset %r13, -40
.Ltmp78:
	.cfi_offset %r14, -32
.Ltmp79:
	.cfi_offset %r15, -24
.Ltmp80:
	.cfi_offset %rbp, -16
	movl	%ecx, %r15d
	movl	%edx, %r12d
	movq	%rsi, %r14
	movq	%rdi, %rbx
	xorl	%esi, %esi
	callq	gx_device_raster
	movl	%eax, %r13d
	movl	18508(%rbx), %ebp
	movl	%ebp, %eax
	cltd
	idivl	18548(%rbx)
	subl	%edx, %ebp
	movq	%rbx, %rdi
	movl	%r12d, %esi
	movq	%r14, %rdx
	movl	%r15d, %ecx
	callq	lips_job_start
	movq	24(%rbx), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	leal	(%r13,%r13,2), %eax
	movl	%eax, %esi
	shrl	$31, %esi
	addl	%eax, %esi
	sarl	%esi
	incl	%esi
	movl	$.L.str.21, %ecx
	movl	%ebp, %edx
	callq	*88(%rdi)
	movq	%rax, 18528(%rbx)
	movl	$-25, %ebp
	testq	%rax, %rax
	je	.LBB15_3
# BB#1:                                 # %if.end
	movl	$0, 18488(%rbx)
	movl	$0, 18504(%rbx)
	movl	$0, 18500(%rbx)
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	lprn_print_image
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB15_3
# BB#2:                                 # %if.end.11
	movq	24(%rbx), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movq	18528(%rbx), %rsi
	movl	$.L.str.21, %edx
	callq	*24(%rdi)
	xorl	%ebp, %ebp
	movl	$.L.str.76, %esi
	movl	$12, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
.LBB15_3:                               # %cleanup
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	lips_print_page_copies, .Lfunc_end15-lips_print_page_copies
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI16_0:
	.quad	-4588605070337114112    # double -72
.LCPI16_1:
	.quad	4601000785043771543     # double 0.4068503937007874
.LCPI16_2:
	.quad	4596260303168284237     # double 0.19685039370078741
.LCPI16_3:
	.quad	4634766966517661696     # double 72
	.text
	.align	16, 0x90
	.type	lips_job_start,@function
lips_job_start:                         # @lips_job_start
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp81:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp82:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp83:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp84:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp85:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp86:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp87:
	.cfi_def_cfa_offset 80
.Ltmp88:
	.cfi_offset %rbx, -56
.Ltmp89:
	.cfi_offset %r12, -48
.Ltmp90:
	.cfi_offset %r13, -40
.Ltmp91:
	.cfi_offset %r14, -32
.Ltmp92:
	.cfi_offset %r15, -24
.Ltmp93:
	.cfi_offset %rbp, -16
	movl	%ecx, 4(%rsp)           # 4-byte Spill
	movq	%rdx, %r12
	movl	%esi, %r14d
	movq	%rdi, %rbx
	cvttss2si	856(%rbx), %ebp
	cvttss2si	860(%rbx), %r15d
	cmpq	$0, 928(%rbx)
	jne	.LBB16_32
# BB#1:                                 # %if.then
	cmpl	$0, 18588(%rbx)
	je	.LBB16_18
# BB#2:                                 # %if.then.5
	movl	$.L.str.22, %esi
	movl	$27, %edx
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
	cmpl	$3, %r14d
	jne	.LBB16_10
# BB#3:                                 # %if.then.8
	movl	$.L.str.23, %esi
	movl	$27, %edx
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
	cvttss2si	884(%rbx), %eax
	cmpl	$300, %eax              # imm = 0x12C
	je	.LBB16_8
# BB#4:                                 # %if.then.8
	cmpl	$600, %eax              # imm = 0x258
	jne	.LBB16_5
# BB#7:                                 # %if.then.21
	movl	$.L.str.25, %esi
	jmp	.LBB16_9
.LBB16_8:                               # %if.then.29
	movl	$.L.str.26, %esi
	jmp	.LBB16_9
.LBB16_5:                               # %if.then.8
	cmpl	$1200, %eax             # imm = 0x4B0
	jne	.LBB16_10
# BB#6:                                 # %if.then.14
	movl	$.L.str.24, %esi
.LBB16_9:                               # %if.end.33
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
.LBB16_10:                              # %if.end.33
	movl	18592(%rbx), %edx
	testl	%edx, %edx
	je	.LBB16_12
# BB#11:                                # %if.then.35
	movl	$.L.str.27, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
.LBB16_12:                              # %if.end.38
	cmpl	$0, 18600(%rbx)
	je	.LBB16_17
# BB#13:                                # %if.then.40
	movl	$.L.str.28, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
	cmpl	$0, 18596(%rbx)
	je	.LBB16_15
# BB#14:                                # %if.then.43
	movl	$.L.str.29, %esi
	jmp	.LBB16_16
.LBB16_15:                              # %if.else.45
	movl	$.L.str.30, %esi
.LBB16_16:                              # %if.end.48
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
.LBB16_17:                              # %if.end.48
	movl	$.L.str.31, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
.LBB16_18:                              # %if.end.50
	movl	$.L.str.32, %esi
	movl	$27, %edx
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
	movl	%r14d, %eax
	cmpl	$3, %r14d
	jbe	.LBB16_19
# BB#26:                                # %if.end.86
	movl	%r14d, %eax
	andl	$-2, %eax
	cmpl	$2, %eax
	jne	.LBB16_31
	jmp	.LBB16_27
.LBB16_19:                              # %if.end.50
	jmpq	*.LJTI16_0(,%rax,8)
.LBB16_20:                              # %if.then.54
	cvttss2si	884(%rbx), %ecx
	movl	$.L.str.33, %esi
	jmp	.LBB16_21
.LBB16_22:                              # %if.then.62
	cvttss2si	884(%rbx), %ecx
	movl	$.L.str.34, %esi
.LBB16_21:                              # %if.end.100
	movl	$144, %edx
	movl	$156, %r8d
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
	jmp	.LBB16_31
.LBB16_25:                              # %if.then.78
	cvttss2si	884(%rbx), %ecx
	movl	$.L.str.36, %esi
	jmp	.LBB16_24
.LBB16_23:                              # %if.then.70
	cvttss2si	884(%rbx), %ecx
	movl	$.L.str.35, %esi
.LBB16_24:                              # %if.then.91
	movl	$144, %edx
	movl	$156, %r8d
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
.LBB16_27:                              # %if.then.91
	movzwl	108(%rbx), %eax
	cmpl	$24, %eax
	jne	.LBB16_29
# BB#28:                                # %if.then.95
	movl	$.L.str.37, %esi
	jmp	.LBB16_30
.LBB16_29:                              # %if.else.97
	movl	$.L.str.38, %esi
.LBB16_30:                              # %if.end.100
	movl	$155, %edx
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
.LBB16_31:                              # %if.end.100
	movl	$.L.str.39, %esi
	movl	$27, %edx
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
	movl	$.L.str.40, %esi
	movl	$155, %edx
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
.LBB16_32:                              # %if.end.103
	movl	%ebp, %edi
	movl	%r15d, %esi
	callq	lips_media_selection
	movl	%eax, %r13d
	cmpl	$3, %r14d
	jne	.LBB16_33
# BB#42:                                # %land.lhs.true
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	movq	%r15, %rbp
	movq	%rbp, 8(%rsp)           # 8-byte Spill
	movl	$.L.str.15, %edi
	callq	strlen
	movq	%rax, %rcx
	leaq	18636(%rbx), %r15
	cmpq	$3, %rcx
	ja	.LBB16_50
# BB#43:                                # %cond.true
	movzbl	(%r15), %eax
	addl	$-80, %eax
	testq	%rcx, %rcx
	je	.LBB16_51
# BB#44:                                # %cond.true
	testl	%eax, %eax
	jne	.LBB16_51
# BB#45:                                # %if.then.156
	movzbl	18637(%rbx), %eax
	addl	$-108, %eax
	cmpq	$2, %rcx
	jb	.LBB16_51
# BB#46:                                # %if.then.156
	testl	%eax, %eax
	jne	.LBB16_51
# BB#47:                                # %if.then.166
	movzbl	18638(%rbx), %eax
	addl	$-97, %eax
	cmpq	$3, %rcx
	jb	.LBB16_51
# BB#48:                                # %if.then.166
	testl	%eax, %eax
	jne	.LBB16_51
# BB#49:                                # %if.then.176
	movzbl	18639(%rbx), %eax
	addl	$-105, %eax
	jmp	.LBB16_51
.LBB16_33:                              # %if.end.103
	cmpl	$2, %r14d
	jne	.LBB16_34
# BB#35:                                # %if.then.107
	movl	%r13d, %eax
	cmpl	$35, %r13d
	ja	.LBB16_41
# BB#36:                                # %if.then.107
	movabsq	$51539619840, %rcx      # imm = 0xC00003000
	btq	%rax, %rcx
	jae	.LBB16_37
# BB#40:                                # %if.then.133
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	movq	%r15, %rbp
	movq	%rbp, 8(%rsp)           # 8-byte Spill
	xorl	%r15d, %r15d
	movl	$.L.str.42, %esi
	jmp	.LBB16_39
.LBB16_50:                              # %cond.false
	movl	$.L.str.15, %esi
	movq	%r15, %rdi
	callq	strcmp
.LBB16_51:                              # %cond.end
	testl	%eax, %eax
	je	.LBB16_52
# BB#54:                                # %land.lhs.true.198
	movl	$.L.str.16, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB16_62
# BB#55:                                # %cond.true.202
	movzbl	(%r15), %eax
	addl	$-79, %eax
	testq	%rcx, %rcx
	je	.LBB16_63
# BB#56:                                # %cond.true.202
	testl	%eax, %eax
	jne	.LBB16_63
# BB#57:                                # %if.then.218
	movzbl	18637(%rbx), %eax
	addl	$-72, %eax
	cmpq	$2, %rcx
	jb	.LBB16_63
# BB#58:                                # %if.then.218
	testl	%eax, %eax
	jne	.LBB16_63
# BB#59:                                # %if.then.228
	movzbl	18638(%rbx), %eax
	addl	$-80, %eax
	cmpq	$3, %rcx
	jb	.LBB16_63
# BB#60:                                # %if.then.228
	testl	%eax, %eax
	jne	.LBB16_63
# BB#61:                                # %if.then.238
	movzbl	18639(%rbx), %eax
	jmp	.LBB16_63
.LBB16_34:
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	movq	%r15, %rbp
	movq	%rbp, 8(%rsp)           # 8-byte Spill
	xorl	%r15d, %r15d
	jmp	.LBB16_97
.LBB16_52:                              # %if.then.190
	movl	$.L.str.44, %esi
	jmp	.LBB16_53
.LBB16_62:                              # %cond.false.247
	movl	$.L.str.16, %esi
	movq	%r15, %rdi
	callq	strcmp
.LBB16_63:                              # %cond.end.251
	testl	%eax, %eax
	je	.LBB16_74
# BB#64:                                # %land.lhs.true.261
	movl	$.L.str.17, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB16_72
# BB#65:                                # %cond.true.265
	movzbl	(%r15), %eax
	addl	$-84, %eax
	testq	%rcx, %rcx
	je	.LBB16_73
# BB#66:                                # %cond.true.265
	testl	%eax, %eax
	jne	.LBB16_73
# BB#67:                                # %if.then.281
	movzbl	18637(%rbx), %eax
	addl	$-114, %eax
	cmpq	$2, %rcx
	jb	.LBB16_73
# BB#68:                                # %if.then.281
	testl	%eax, %eax
	jne	.LBB16_73
# BB#69:                                # %if.then.291
	movzbl	18638(%rbx), %eax
	addl	$-97, %eax
	cmpq	$3, %rcx
	jb	.LBB16_73
# BB#70:                                # %if.then.291
	testl	%eax, %eax
	jne	.LBB16_73
# BB#71:                                # %if.then.301
	movzbl	18639(%rbx), %eax
	addl	$-110, %eax
	jmp	.LBB16_73
.LBB16_72:                              # %cond.false.310
	movl	$.L.str.17, %esi
	movq	%r15, %rdi
	callq	strcmp
.LBB16_73:                              # %cond.end.314
	testl	%eax, %eax
	je	.LBB16_74
# BB#75:                                # %land.lhs.true.326
	movl	$.L.str.19, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB16_83
# BB#76:                                # %cond.true.330
	movzbl	(%r15), %eax
	addl	$-67, %eax
	testq	%rcx, %rcx
	je	.LBB16_84
# BB#77:                                # %cond.true.330
	testl	%eax, %eax
	jne	.LBB16_84
# BB#78:                                # %if.then.346
	movzbl	18637(%rbx), %eax
	addl	$-97, %eax
	cmpq	$2, %rcx
	jb	.LBB16_84
# BB#79:                                # %if.then.346
	testl	%eax, %eax
	jne	.LBB16_84
# BB#80:                                # %if.then.356
	movzbl	18638(%rbx), %eax
	addl	$-114, %eax
	cmpq	$3, %rcx
	jb	.LBB16_84
# BB#81:                                # %if.then.356
	testl	%eax, %eax
	jne	.LBB16_84
# BB#82:                                # %if.then.366
	movzbl	18639(%rbx), %eax
	addl	$-100, %eax
	jmp	.LBB16_84
.LBB16_74:                              # %if.then.318
	movl	$.L.str.45, %esi
	jmp	.LBB16_53
.LBB16_37:                              # %if.then.107
	movabsq	$12935233536, %rcx      # imm = 0x303000000
	btq	%rax, %rcx
	jae	.LBB16_41
# BB#38:                                # %if.then.119
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	movq	%r15, %rbp
	movq	%rbp, 8(%rsp)           # 8-byte Spill
	xorl	%r15d, %r15d
	movl	$.L.str.41, %esi
	jmp	.LBB16_39
.LBB16_41:                              # %if.else.135
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	movq	%r15, %rbp
	movq	%rbp, 8(%rsp)           # 8-byte Spill
	xorl	%r15d, %r15d
	movl	$.L.str.43, %esi
.LBB16_39:                              # %if.then.460
	movl	$155, %edx
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
	jmp	.LBB16_98
.LBB16_83:                              # %cond.false.375
	movl	$.L.str.19, %esi
	movq	%r15, %rdi
	callq	strcmp
.LBB16_84:                              # %cond.end.379
	testl	%eax, %eax
	je	.LBB16_85
# BB#86:                                # %land.lhs.true.391
	movl	$.L.str.18, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB16_94
# BB#87:                                # %cond.true.395
	movzbl	(%r15), %eax
	addl	$-71, %eax
	testq	%rcx, %rcx
	je	.LBB16_95
# BB#88:                                # %cond.true.395
	testl	%eax, %eax
	jne	.LBB16_95
# BB#89:                                # %if.then.411
	movzbl	18637(%rbx), %eax
	addl	$-108, %eax
	cmpq	$2, %rcx
	jb	.LBB16_95
# BB#90:                                # %if.then.411
	testl	%eax, %eax
	jne	.LBB16_95
# BB#91:                                # %if.then.421
	movzbl	18638(%rbx), %eax
	addl	$-111, %eax
	cmpq	$3, %rcx
	jb	.LBB16_95
# BB#92:                                # %if.then.421
	testl	%eax, %eax
	jne	.LBB16_95
# BB#93:                                # %if.then.431
	movzbl	18639(%rbx), %eax
	addl	$-115, %eax
	jmp	.LBB16_95
.LBB16_85:                              # %if.then.383
	movl	$.L.str.46, %esi
.LBB16_53:                              # %if.end.454
	movl	$155, %edx
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
	movb	$1, %r15b
.LBB16_97:                              # %if.end.454
	andl	$-2, %r14d
	cmpl	$2, %r14d
	jne	.LBB16_125
.LBB16_98:                              # %if.then.460
	cmpl	$0, 18484(%rbx)
	jne	.LBB16_119
# BB#99:                                # %land.lhs.true.468
	movl	$.L.str.15, %edi
	callq	strlen
	movq	%rax, %rcx
	leaq	18636(%rbx), %rbp
	cmpq	$3, %rcx
	ja	.LBB16_107
# BB#100:                               # %cond.true.472
	movzbl	(%rbp), %eax
	addl	$-80, %eax
	testq	%rcx, %rcx
	je	.LBB16_108
# BB#101:                               # %cond.true.472
	testl	%eax, %eax
	jne	.LBB16_108
# BB#102:                               # %if.then.488
	movzbl	18637(%rbx), %eax
	addl	$-108, %eax
	cmpq	$2, %rcx
	jb	.LBB16_108
# BB#103:                               # %if.then.488
	testl	%eax, %eax
	jne	.LBB16_108
# BB#104:                               # %if.then.498
	movzbl	18638(%rbx), %eax
	addl	$-97, %eax
	cmpq	$3, %rcx
	jb	.LBB16_108
# BB#105:                               # %if.then.498
	testl	%eax, %eax
	jne	.LBB16_108
# BB#106:                               # %if.then.508
	movzbl	18639(%rbx), %eax
	addl	$-105, %eax
	jmp	.LBB16_108
.LBB16_125:                             # %if.else.606
	cmpl	$0, 18484(%rbx)
	movl	18620(%rbx), %eax
	je	.LBB16_129
# BB#126:                               # %if.then.609
	cmpl	$1, %eax
	je	.LBB16_128
# BB#127:                               # %if.then.613
	movl	$.L.str.51, %esi
	movl	$155, %edx
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
.LBB16_128:                             # %if.end.615
	movl	$1, 18620(%rbx)
	jmp	.LBB16_132
.LBB16_129:                             # %if.else.617
	movl	18572(%rbx), %ecx
	cmpl	%ecx, %eax
	je	.LBB16_131
# BB#130:                               # %if.then.622
	movl	$.L.str.50, %esi
	movl	$155, %edx
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
	movl	18572(%rbx), %eax
.LBB16_131:                             # %if.end.625
	movl	%eax, 18620(%rbx)
.LBB16_132:                             # %if.end.629
	xorl	%edx, %edx
	jmp	.LBB16_133
.LBB16_107:                             # %cond.false.517
	movl	$.L.str.15, %esi
	movq	%rbp, %rdi
	callq	strcmp
.LBB16_108:                             # %cond.end.521
	testl	%eax, %eax
	je	.LBB16_122
# BB#109:                               # %land.lhs.true.531
	movl	$.L.str.48, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB16_117
# BB#110:                               # %cond.true.535
	movzbl	(%rbp), %eax
	addl	$-68, %eax
	testq	%rcx, %rcx
	je	.LBB16_118
# BB#111:                               # %cond.true.535
	testl	%eax, %eax
	jne	.LBB16_118
# BB#112:                               # %if.then.551
	movzbl	18637(%rbx), %eax
	addl	$-101, %eax
	cmpq	$2, %rcx
	jb	.LBB16_118
# BB#113:                               # %if.then.551
	testl	%eax, %eax
	jne	.LBB16_118
# BB#114:                               # %if.then.561
	movzbl	18638(%rbx), %eax
	addl	$-102, %eax
	cmpq	$3, %rcx
	jb	.LBB16_118
# BB#115:                               # %if.then.561
	testl	%eax, %eax
	jne	.LBB16_118
# BB#116:                               # %if.then.571
	movzbl	18639(%rbx), %eax
	addl	$-97, %eax
	jmp	.LBB16_118
.LBB16_117:                             # %cond.false.580
	movl	$.L.str.48, %esi
	movq	%rbp, %rdi
	callq	strcmp
.LBB16_118:                             # %cond.end.584
	testl	%eax, %eax
	je	.LBB16_122
.LBB16_119:                             # %if.then.588
	cmpl	$10, 18620(%rbx)
	je	.LBB16_121
# BB#120:                               # %if.then.591
	movl	$.L.str.49, %esi
	movl	$155, %edx
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
.LBB16_121:                             # %if.end.593
	movl	$10, 18620(%rbx)
	movb	$1, %dl
	jmp	.LBB16_133
.LBB16_122:                             # %if.else.595
	movl	18572(%rbx), %ecx
	movl	18620(%rbx), %eax
	cmpl	%ecx, %eax
	je	.LBB16_124
# BB#123:                               # %if.then.599
	movl	$.L.str.50, %esi
	movl	$155, %edx
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
	movl	18572(%rbx), %eax
.LBB16_124:                             # %if.end.602
	movl	%eax, 18620(%rbx)
	movb	$1, %dl
.LBB16_133:                             # %if.end.629
	movl	18604(%rbx), %r14d
	cmpl	%r13d, %r14d
	je	.LBB16_138
# BB#134:                               # %if.then.635
	cmpl	$80, %r13d
	jne	.LBB16_136
# BB#135:                               # %if.then.638
	movl	%edx, (%rsp)            # 4-byte Spill
	jmp	.LBB16_141
.LBB16_138:                             # %if.else.654
	movl	18608(%rbx), %ecx
	movl	18612(%rbx), %eax
	cmpl	$80, %r13d
	jne	.LBB16_142
# BB#139:                               # %if.then.657
	movl	%edx, (%rsp)            # 4-byte Spill
	movq	16(%rsp), %rdx          # 8-byte Reload
	cmpl	%edx, %ecx
	jne	.LBB16_141
# BB#140:                               # %if.then.657
	movq	8(%rsp), %rcx           # 8-byte Reload
	cmpl	%ecx, %eax
	je	.LBB16_147
.LBB16_141:                             # %if.then.663
	movl	$.L.str.52, %esi
	movl	$155, %edx
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
	movq	16(%rsp), %rax          # 8-byte Reload
	leal	(%rax,%rax), %eax
	leal	(%rax,%rax,4), %ecx
	movq	8(%rsp), %rax           # 8-byte Reload
	leal	(%rax,%rax), %eax
	leal	(%rax,%rax,4), %r8d
	movl	$.L.str.53, %esi
	jmp	.LBB16_146
.LBB16_136:                             # %if.else.642
	movl	%edx, (%rsp)            # 4-byte Spill
	cmpl	$81, %r13d
	je	.LBB16_145
# BB#137:                               # %if.else.650
	movl	$.L.str.55, %esi
	movl	$155, %edx
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	%r13d, %ecx
	callq	fprintf
	jmp	.LBB16_147
.LBB16_142:                             # %if.else.669
	movl	%edx, (%rsp)            # 4-byte Spill
	cmpl	$81, %r13d
	jne	.LBB16_147
# BB#143:                               # %if.then.672
	movq	16(%rsp), %rdx          # 8-byte Reload
	cmpl	%edx, %ecx
	jne	.LBB16_145
# BB#144:                               # %if.then.672
	movq	8(%rsp), %rcx           # 8-byte Reload
	cmpl	%ecx, %eax
	je	.LBB16_147
.LBB16_145:                             # %if.then.678
	movl	$.L.str.52, %esi
	movl	$155, %edx
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
	movq	8(%rsp), %rax           # 8-byte Reload
	leal	(%rax,%rax), %eax
	leal	(%rax,%rax,4), %ecx
	movq	16(%rsp), %rax          # 8-byte Reload
	leal	(%rax,%rax), %eax
	leal	(%rax,%rax,4), %r8d
	movl	$.L.str.54, %esi
.LBB16_146:                             # %if.end.686
	movl	$155, %edx
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
.LBB16_147:                             # %if.end.686
	movl	4(%rsp), %eax           # 4-byte Reload
	cmpl	$255, %eax
	movl	$255, %ebp
	cmovlel	%eax, %ebp
	cmpl	%ebp, 18616(%rbx)
	je	.LBB16_149
# BB#148:                               # %if.then.693
	movl	$.L.str.56, %esi
	movl	$155, %edx
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	%ebp, %ecx
	callq	fprintf
	movl	%ebp, 18616(%rbx)
.LBB16_149:                             # %if.end.696
	testb	%r15b, %r15b
	je	.LBB16_171
# BB#150:                               # %if.then.699
	cmpl	$0, 18632(%rbx)
	je	.LBB16_152
# BB#151:                               # %if.then.701
	movl	$.L.str.57, %esi
	movl	$155, %edx
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
.LBB16_152:                             # %if.then.707
	cmpq	$0, 928(%rbx)
	jne	.LBB16_155
# BB#153:                               # %if.then.711
	movl	18628(%rbx), %ecx
	cmpl	$1, %ecx
	je	.LBB16_155
# BB#154:                               # %if.then.714
	movl	$.L.str.58, %esi
	movl	$155, %edx
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	%r13d, %r8d
	callq	fprintf
.LBB16_155:                             # %if.end.718
	movl	17164(%rbx), %ecx
	movl	17168(%rbx), %eax
	testl	%ecx, %ecx
	je	.LBB16_166
# BB#156:                               # %if.end.718
	testl	%eax, %eax
	je	.LBB16_166
# BB#157:                               # %if.then.725
	movl	18492(%rbx), %ebp
	movl	18624(%rbx), %eax
	cmpl	$1, %eax
	ja	.LBB16_159
# BB#158:                               # %if.then.732
	movl	$.L.str.59, %esi
	movl	$155, %edx
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
	movl	18624(%rbx), %eax
.LBB16_159:                             # %if.end.734
	testl	%ebp, %ebp
	je	.LBB16_160
# BB#163:                               # %if.else.744
	cmpl	$3, %eax
	je	.LBB16_165
# BB#164:                               # %if.then.748
	movl	$.L.str.61, %esi
	movl	$155, %edx
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
.LBB16_165:                             # %if.end.750
	movl	$3, 18624(%rbx)
	jmp	.LBB16_171
.LBB16_166:                             # %if.else.753
	testl	%ecx, %ecx
	jne	.LBB16_171
# BB#167:                               # %if.else.753
	testl	%eax, %eax
	je	.LBB16_171
# BB#168:                               # %if.then.757
	cmpl	$1, 18624(%rbx)
	je	.LBB16_170
# BB#169:                               # %if.then.761
	movl	$.L.str.62, %esi
	movl	$155, %edx
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
.LBB16_170:                             # %if.end.763
	movl	$1, 18624(%rbx)
	jmp	.LBB16_171
.LBB16_160:                             # %if.then.736
	cmpl	$2, %eax
	je	.LBB16_162
# BB#161:                               # %if.then.740
	movl	$.L.str.60, %esi
	movl	$155, %edx
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
.LBB16_162:                             # %if.end.742
	movl	$2, 18624(%rbx)
.LBB16_171:                             # %if.end.767
	cmpq	$0, 928(%rbx)
	movq	8(%rsp), %r15           # 8-byte Reload
	jne	.LBB16_173
# BB#172:                               # %if.then.771
	leaq	18576(%rbx), %rcx
	movl	$.L.str.63, %esi
	movl	$144, %edx
	movl	$156, %r8d
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
	movl	$.L.str.40, %esi
	movl	$155, %edx
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
	movl	$.L.str.64, %esi
	movl	$155, %edx
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
	movl	$.L.str.65, %esi
	movl	$155, %edx
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
.LBB16_173:                             # %if.end.777
	movl	%r13d, %eax
	andl	$-2, %eax
	cmpl	$80, %eax
	je	.LBB16_175
# BB#174:                               # %if.end.777
	cmpl	%r13d, %r14d
	je	.LBB16_181
.LBB16_175:                             # %if.then.786
	movl	(%rsp), %eax            # 4-byte Reload
	testb	%al, %al
	je	.LBB16_176
# BB#177:                               # %if.then.805
	cvttss2si	884(%rbx), %ecx
	movl	$.L.str.66, %esi
	movl	$155, %edx
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
	movzwl	108(%rbx), %eax
	movl	$.L.str.68, %esi
	movl	$155, %edx
	cmpl	$24, %eax
	jne	.LBB16_179
# BB#178:                               # %if.then.811
	movl	$256, %ecx              # imm = 0x100
	jmp	.LBB16_180
.LBB16_176:                             # %if.end.799.thread350
	movl	$.L.str.67, %esi
	movl	$155, %edx
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
	jmp	.LBB16_181
.LBB16_179:                             # %if.else.813
	movl	$24, %ecx
.LBB16_180:                             # %if.end.817
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
.LBB16_181:                             # %if.end.817
	cmpl	%r13d, %r14d
	je	.LBB16_193
# BB#182:                               # %if.then.820
	movss	884(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	920(%rbx), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	divsd	.LCPI16_0(%rip), %xmm1
	addsd	.LCPI16_1(%rip), %xmm1
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	testl	%ecx, %ecx
	jle	.LBB16_184
# BB#183:                               # %if.end.833.thread
	movl	$.L.str.69, %esi
	jmp	.LBB16_186
.LBB16_184:                             # %if.end.833
	jns	.LBB16_187
# BB#185:                               # %if.then.836
	negl	%ecx
	movl	$.L.str.70, %esi
.LBB16_186:                             # %if.end.839
	movl	$155, %edx
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
.LBB16_187:                             # %if.end.839
	movss	884(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	908(%rbx), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	divsd	.LCPI16_0(%rip), %xmm1
	addsd	.LCPI16_2(%rip), %xmm1
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	testl	%ecx, %ecx
	jle	.LBB16_189
# BB#188:                               # %if.end.854.thread
	movl	$.L.str.71, %esi
	jmp	.LBB16_191
.LBB16_189:                             # %if.end.854
	jns	.LBB16_192
# BB#190:                               # %if.then.857
	negl	%ecx
	movl	$.L.str.72, %esi
.LBB16_191:                             # %if.end.860
	movl	$155, %edx
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
.LBB16_192:                             # %if.end.860
	movl	$.L.str.73, %esi
	movl	$155, %edx
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
	xorps	%xmm0, %xmm0
	cvtsi2sdl	836(%rbx), %xmm0
	movss	920(%rbx), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	movsd	.LCPI16_3(%rip), %xmm4  # xmm4 = mem[0],zero
	divsd	%xmm4, %xmm1
	movss	888(%rbx), %xmm2        # xmm2 = mem[0],zero,zero,zero
	movss	912(%rbx), %xmm3        # xmm3 = mem[0],zero,zero,zero
	cvtss2sd	%xmm3, %xmm3
	divsd	%xmm4, %xmm3
	addsd	%xmm1, %xmm3
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm2, %xmm1
	mulsd	%xmm3, %xmm1
	subsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ebp
	movl	$.L.str.70, %esi
	movl	$155, %edx
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	%ebp, %ecx
	callq	fprintf
	xorps	%xmm0, %xmm0
	cvtsi2sdl	832(%rbx), %xmm0
	movss	884(%rbx), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movss	908(%rbx), %xmm2        # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	movsd	.LCPI16_3(%rip), %xmm4  # xmm4 = mem[0],zero
	divsd	%xmm4, %xmm2
	movss	916(%rbx), %xmm3        # xmm3 = mem[0],zero,zero,zero
	cvtss2sd	%xmm3, %xmm3
	divsd	%xmm4, %xmm3
	addsd	%xmm2, %xmm3
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm3, %xmm1
	subsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	$.L.str.72, %esi
	movl	$155, %edx
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
	movl	$.L.str.74, %esi
	movl	$155, %edx
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
	movl	$.L.str.75, %esi
	movl	$155, %edx
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	%ebp, %ecx
	callq	fprintf
.LBB16_193:                             # %if.end.899
	movl	%r13d, 18604(%rbx)
	movq	16(%rsp), %rax          # 8-byte Reload
	movl	%eax, 18608(%rbx)
	movl	%r15d, 18612(%rbx)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB16_94:                              # %cond.false.440
	movl	$.L.str.18, %esi
	movq	%r15, %rdi
	callq	strcmp
.LBB16_95:                              # %cond.end.444
	movb	$1, %r15b
	testl	%eax, %eax
	jne	.LBB16_97
# BB#96:                                # %if.then.448
	movl	$.L.str.47, %esi
	movl	$155, %edx
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	fprintf
	jmp	.LBB16_97
.Lfunc_end16:
	.size	lips_job_start, .Lfunc_end16-lips_job_start
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI16_0:
	.quad	.LBB16_20
	.quad	.LBB16_22
	.quad	.LBB16_25
	.quad	.LBB16_23

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI17_0:
	.quad	4634766966517661696     # double 72
	.text
	.align	16, 0x90
	.type	lips4type_print_page_copies,@function
lips4type_print_page_copies:            # @lips4type_print_page_copies
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp94:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp95:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp96:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp97:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp98:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp99:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp100:
	.cfi_def_cfa_offset 112
.Ltmp101:
	.cfi_offset %rbx, -56
.Ltmp102:
	.cfi_offset %r12, -48
.Ltmp103:
	.cfi_offset %r13, -40
.Ltmp104:
	.cfi_offset %r14, -32
.Ltmp105:
	.cfi_offset %r15, -24
.Ltmp106:
	.cfi_offset %rbp, -16
	movl	%ecx, %ebx
	movl	%edx, %r12d
	movq	%rsi, %rbp
	movq	%rbp, 48(%rsp)          # 8-byte Spill
	movq	%rdi, %r13
	xorl	%esi, %esi
	callq	gx_device_raster
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movl	18508(%r13), %r14d
	movl	%r14d, %eax
	cltd
	idivl	18548(%r13)
	movl	%edx, %r15d
	movq	%r13, %rdi
	movl	%ebx, %esi
	movq	%rbp, %rdx
	movl	%r12d, %ecx
	callq	lips_job_start
	movzwl	108(%r13), %eax
	cmpl	$1, %eax
	jne	.LBB17_7
# BB#1:                                 # %if.then
	subl	%r15d, %r14d
	movq	24(%r13), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movq	40(%rsp), %rax          # 8-byte Reload
	leal	(%rax,%rax,2), %eax
	movl	%eax, %ebx
	shrl	$31, %ebx
	addl	%eax, %ebx
	sarl	%ebx
	incl	%ebx
	movl	$.L.str.21, %ecx
	movl	%ebx, %esi
	movl	%r14d, %edx
	callq	*88(%rdi)
	movq	%rax, 18528(%r13)
	movl	$-25, %r12d
	testq	%rax, %rax
	je	.LBB17_20
# BB#2:                                 # %if.end
	movq	24(%r13), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.77, %ecx
	movl	%ebx, %esi
	movl	%r14d, %edx
	callq	*88(%rdi)
	movq	%rax, 18536(%r13)
	testq	%rax, %rax
	movq	48(%rsp), %r15          # 8-byte Reload
	je	.LBB17_20
# BB#3:                                 # %if.end.25
	cmpl	$0, 18488(%r13)
	je	.LBB17_5
# BB#4:                                 # %if.then.27
	cvtsi2sdl	832(%r13), %xmm0
	movss	908(%r13), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	movsd	.LCPI17_0(%rip), %xmm2  # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	movss	916(%r13), %xmm3        # xmm3 = mem[0],zero,zero,zero
	cvtss2sd	%xmm3, %xmm3
	divsd	%xmm2, %xmm3
	addsd	%xmm1, %xmm3
	movss	884(%r13), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movss	888(%r13), %xmm4        # xmm4 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm3, %xmm1
	subsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ebp
	xorps	%xmm0, %xmm0
	cvtsi2sdl	836(%r13), %xmm0
	movss	920(%r13), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	divsd	%xmm2, %xmm1
	movss	912(%r13), %xmm3        # xmm3 = mem[0],zero,zero,zero
	cvtss2sd	%xmm3, %xmm3
	divsd	%xmm2, %xmm3
	addsd	%xmm1, %xmm3
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm4, %xmm1
	mulsd	%xmm3, %xmm1
	subsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ebx
	movl	%ebx, (%rsp)
	movl	$155, 8(%rsp)
	movl	$.L.str.78, %esi
	movl	$155, %edx
	movl	$155, %ecx
	movl	$155, %r9d
	xorl	%eax, %eax
	movq	%r15, %rdi
	movl	%ebp, %r8d
	callq	fprintf
	movl	$.L.str.79, %esi
	movl	$155, %edx
	movl	$155, %r8d
	xorl	%eax, %eax
	movq	%r15, %rdi
	movl	%ebp, %ecx
	movl	%ebx, %r9d
	callq	fprintf
.LBB17_5:                               # %if.end.58
	movl	$0, 18504(%r13)
	movl	$0, 18500(%r13)
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	lprn_print_image
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB17_20
# BB#6:                                 # %if.end.63
	movq	24(%r13), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movq	18528(%r13), %rsi
	movl	$.L.str.21, %edx
	callq	*24(%rdi)
	movq	24(%r13), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movq	18536(%r13), %rsi
	movl	$.L.str.77, %edx
	jmp	.LBB17_19
.LBB17_7:                               # %if.else
	movzwl	%ax, %eax
	cmpl	$8, %eax
	seta	%al
	movzbl	%al, %ebx
	xorl	%esi, %esi
	movq	%r13, %rdi
	callq	gx_device_raster
	movl	%eax, %r14d
	movq	24(%r13), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$1, %edx
	movl	$.L.str.80, %ecx
	movl	%r14d, %esi
	callq	*88(%rdi)
	movq	%rax, %r15
	movl	$-25, %r12d
	testq	%r15, %r15
	je	.LBB17_20
# BB#8:                                 # %if.end.i
	movq	24(%r13), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$1, %edx
	movl	$.L.str.81, %ecx
	movl	%r14d, %esi
	callq	*88(%rdi)
	movq	%rax, 40(%rsp)          # 8-byte Spill
	testq	%rax, %rax
	je	.LBB17_20
# BB#9:                                 # %if.end.18.i
	leal	1(%rbx,%rbx), %ecx
	movq	24(%r13), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	%r14d, %eax
	cltd
	idivl	%ecx
	subl	%edx, %r14d
	imull	$129, %r14d, %eax
	leal	16383(%rax), %ecx
	sarl	$31, %ecx
	shrl	$25, %ecx
	leal	16383(%rax,%rcx), %eax
	sarl	$7, %eax
	leal	(%rax,%r14), %ebp
	movl	$1, %edx
	movl	$.L.str.82, %ecx
	movl	%ebp, %esi
	callq	*88(%rdi)
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB17_20
# BB#10:                                # %if.end.34.i
	movq	24(%r13), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	shll	$8, %ebp
	movl	$1, %edx
	movl	$.L.str.83, %ecx
	movl	%ebp, %esi
	callq	*88(%rdi)
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB17_20
# BB#11:                                # %if.end.53.i
	movq	24(%r13), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	addl	%r14d, %r14d
	movl	$1, %edx
	movl	$.L.str.84, %ecx
	movl	%r14d, %esi
	callq	*88(%rdi)
	movq	%rax, %r14
	testq	%r14, %r14
	je	.LBB17_20
# BB#12:                                # %while.cond.preheader.i
	movq	%rbp, %r8
	movq	%r15, %r12
	movq	%rbx, %rcx
	movl	836(%r13), %eax
	movl	$-256, %ebx
	testl	%eax, %eax
	jle	.LBB17_13
# BB#14:
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	movq	%r8, %r15
	.align	16, 0x90
.LBB17_15:                              # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	leal	256(%rbx), %ebp
	movl	%ebp, 8(%rsp)
	movq	%r14, (%rsp)
	movl	$256, 16(%rsp)          # imm = 0x100
	movq	%r13, %rdi
	movq	48(%rsp), %rsi          # 8-byte Reload
	movq	%r12, %rdx
	movq	40(%rsp), %rcx          # 8-byte Reload
	movq	32(%rsp), %r8           # 8-byte Reload
	movq	%r15, %r9
	callq	lips4c_write_raster
	movl	836(%r13), %eax
	addl	$512, %ebx              # imm = 0x200
	cmpl	%eax, %ebx
	movl	%ebp, %ebx
	jl	.LBB17_15
	jmp	.LBB17_16
.LBB17_13:
	movl	$-256, %ebp
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	movq	%r8, %r15
.LBB17_16:                              # %while.end.i
	subl	%ebp, %eax
	movq	%r12, %rbx
	movq	%r15, %r12
	movq	48(%rsp), %r15          # 8-byte Reload
	jle	.LBB17_18
# BB#17:                                # %if.then.76.i
	movl	%eax, 16(%rsp)
	movl	%ebp, 8(%rsp)
	movq	%r14, (%rsp)
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	movq	40(%rsp), %rcx          # 8-byte Reload
	movq	32(%rsp), %r8           # 8-byte Reload
	movq	%r12, %r9
	callq	lips4c_write_raster
.LBB17_18:                              # %lips4c_output_page.exit
	movq	24(%r13), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.80, %edx
	movq	%rbx, %rsi
	callq	*24(%rdi)
	movq	24(%r13), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.81, %edx
	movq	40(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rdi)
	movq	24(%r13), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.82, %edx
	movq	32(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rdi)
	movq	24(%r13), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.83, %edx
	movq	%r12, %rsi
	callq	*24(%rdi)
	movq	24(%r13), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.84, %edx
	movq	%r14, %rsi
.LBB17_19:                              # %if.end.86
	callq	*24(%rdi)
	xorl	%r12d, %r12d
	movl	$.L.str.76, %esi
	movl	$12, %edx
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	fprintf
.LBB17_20:                              # %cleanup
	movl	%r12d, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end17:
	.size	lips4type_print_page_copies, .Lfunc_end17-lips4type_print_page_copies
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI18_0:
	.quad	14                      # 0xe
	.quad	15                      # 0xf
.LCPI18_1:
	.quad	12                      # 0xc
	.quad	13                      # 0xd
.LCPI18_2:
	.quad	10                      # 0xa
	.quad	11                      # 0xb
.LCPI18_3:
	.quad	8                       # 0x8
	.quad	9                       # 0x9
.LCPI18_4:
	.quad	6                       # 0x6
	.quad	7                       # 0x7
.LCPI18_5:
	.quad	4                       # 0x4
	.quad	5                       # 0x5
.LCPI18_6:
	.quad	2                       # 0x2
	.quad	3                       # 0x3
	.text
	.align	16, 0x90
	.type	lips4c_write_raster,@function
lips4c_write_raster:                    # @lips4c_write_raster
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp107:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp108:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp109:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp110:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp111:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp112:
	.cfi_def_cfa_offset 56
	subq	$536, %rsp              # imm = 0x218
.Ltmp113:
	.cfi_def_cfa_offset 592
.Ltmp114:
	.cfi_offset %rbx, -56
.Ltmp115:
	.cfi_offset %r12, -48
.Ltmp116:
	.cfi_offset %r13, -40
.Ltmp117:
	.cfi_offset %r14, -32
.Ltmp118:
	.cfi_offset %r15, -24
.Ltmp119:
	.cfi_offset %rbp, -16
	movq	%r9, 344(%rsp)          # 8-byte Spill
	movq	%r8, %r12
	movq	%r12, 320(%rsp)         # 8-byte Spill
	movq	%rcx, %r13
	movq	%r13, 472(%rsp)         # 8-byte Spill
	movq	%rdx, 456(%rsp)         # 8-byte Spill
	movq	%rsi, 96(%rsp)          # 8-byte Spill
	movq	%rdi, 312(%rsp)         # 8-byte Spill
	movl	608(%rsp), %r14d
	movl	600(%rsp), %ebx
	movq	592(%rsp), %rax
	movq	%rax, 464(%rsp)         # 8-byte Spill
	movzwl	108(%rdi), %eax
	movl	%eax, 92(%rsp)          # 4-byte Spill
	cmpl	$8, %eax
	seta	%al
	movzbl	%al, %eax
	leal	1(%rax,%rax), %ebp
	movl	%ebp, 192(%rsp)         # 4-byte Spill
	xorl	%esi, %esi
	callq	gx_device_raster
	movl	%eax, %ecx
	movq	%rcx, 328(%rsp)         # 8-byte Spill
	cltd
	idivl	%ebp
	movl	%eax, 196(%rsp)         # 4-byte Spill
	testl	%ecx, %ecx
	jle	.LBB18_12
# BB#1:                                 # %for.body.preheader
	movq	328(%rsp), %rax         # 8-byte Reload
	leal	-1(%rax), %ecx
	leaq	1(%rcx), %r8
	xorl	%esi, %esi
	movq	%r8, %rdx
	movabsq	$8589934560, %rax       # imm = 0x1FFFFFFE0
	andq	%rax, %rdx
	je	.LBB18_9
# BB#2:                                 # %vector.body.preheader
	leaq	1(%rcx), %rax
	movabsq	$8589934560, %rsi       # imm = 0x1FFFFFFE0
	andq	%rsi, %rax
	addq	$-32, %rax
	movl	%eax, %esi
	shrl	$5, %esi
	incl	%esi
	xorl	%edi, %edi
	testb	$3, %sil
	je	.LBB18_5
# BB#3:                                 # %vector.body.prol.preheader
	movq	328(%rsp), %rbp         # 8-byte Reload
	andl	$96, %ebp
	addl	$-32, %ebp
	shrl	$5, %ebp
	incl	%ebp
	andl	$3, %ebp
	negq	%rbp
	xorl	%edi, %edi
	pxor	%xmm0, %xmm0
	.align	16, 0x90
.LBB18_4:                               # %vector.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movdqu	%xmm0, (%r13,%rdi)
	movdqu	%xmm0, 16(%r13,%rdi)
	addq	$32, %rdi
	incq	%rbp
	jne	.LBB18_4
.LBB18_5:                               # %vector.body.preheader.split
	cmpq	$96, %rax
	jb	.LBB18_8
# BB#6:                                 # %vector.body.preheader.split.split
	incq	%rcx
	movabsq	$8589934560, %rax       # imm = 0x1FFFFFFE0
	andq	%rax, %rcx
	subq	%rdi, %rcx
	leaq	112(%rdi,%r13), %rsi
	pxor	%xmm0, %xmm0
	.align	16, 0x90
.LBB18_7:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqu	%xmm0, -112(%rsi)
	movdqu	%xmm0, -96(%rsi)
	movdqu	%xmm0, -80(%rsi)
	movdqu	%xmm0, -64(%rsi)
	movdqu	%xmm0, -48(%rsi)
	movdqu	%xmm0, -32(%rsi)
	movdqu	%xmm0, -16(%rsi)
	movdqu	%xmm0, (%rsi)
	subq	$-128, %rsi
	addq	$-128, %rcx
	jne	.LBB18_7
.LBB18_8:
	movq	%rdx, %rsi
.LBB18_9:                               # %middle.block
	cmpq	%rsi, %r8
	je	.LBB18_12
# BB#10:                                # %for.body.preheader272
	leaq	(%r13,%rsi), %rax
	movq	328(%rsp), %rcx         # 8-byte Reload
	subl	%esi, %ecx
	.align	16, 0x90
.LBB18_11:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movb	$0, (%rax)
	incq	%rax
	decl	%ecx
	jne	.LBB18_11
.LBB18_12:                              # %for.cond.4.preheader
	testl	%r14d, %r14d
	movq	%r14, 200(%rsp)         # 8-byte Spill
	movl	$0, %r15d
	jle	.LBB18_145
# BB#13:                                # %for.body.7.lr.ph
	movq	200(%rsp), %rax         # 8-byte Reload
	leal	(%rax,%rbx), %eax
	movl	%eax, 308(%rsp)         # 4-byte Spill
	movl	196(%rsp), %r14d        # 4-byte Reload
	imull	192(%rsp), %r14d        # 4-byte Folded Reload
	movl	%r14d, 452(%rsp)        # 4-byte Spill
	movslq	%r14d, %rax
	movq	456(%rsp), %rsi         # 8-byte Reload
	leaq	(%rsi,%rax), %rcx
	movq	%rcx, 272(%rsp)         # 8-byte Spill
	leal	-1(%rax), %ecx
	leaq	(%r13,%rcx), %r8
	leaq	(%rsi,%rcx), %rbp
	leaq	1(%rcx), %rcx
	movq	%rcx, 280(%rsp)         # 8-byte Spill
	movq	%rcx, %rdi
	movabsq	$8589934560, %rcx       # imm = 0x1FFFFFFE0
	andq	%rcx, %rdi
	movq	%rdi, 296(%rsp)         # 8-byte Spill
	leaq	-32(%rdi), %rcx
	movq	%rcx, 240(%rsp)         # 8-byte Spill
	shrq	$5, %rcx
	movq	%rcx, 120(%rsp)         # 8-byte Spill
	leal	1(%rax), %edx
	movl	%edx, 292(%rsp)         # 4-byte Spill
	leal	1(%rcx), %edx
	andl	$3, %edx
	movq	%rdx, 232(%rsp)         # 8-byte Spill
	cmpq	%r13, %rbp
	setae	%r9b
	cmpq	%rsi, %r8
	setae	%dl
	andb	%r9b, %dl
	movb	%dl, 271(%rsp)          # 1-byte Spill
	andl	$1, %ecx
	movq	%rcx, 112(%rsp)         # 8-byte Spill
	movq	464(%rsp), %rcx         # 8-byte Reload
	leaq	1(%rcx), %rdx
	movq	%rdx, 352(%rsp)         # 8-byte Spill
	leaq	1(%rsi,%rax), %rax
	movq	%rax, 184(%rsp)         # 8-byte Spill
	leal	-32(%rdi), %eax
	shrl	$5, %eax
	incl	%eax
	andl	$3, %eax
	negq	%rax
	movq	%rax, 224(%rsp)         # 8-byte Spill
	movl	$1, %eax
	movd	%rax, %xmm0
	pslldq	$8, %xmm0               # xmm0 = zero,zero,zero,zero,zero,zero,zero,zero,xmm0[0,1,2,3,4,5,6,7]
	movdqa	%xmm0, 496(%rsp)        # 16-byte Spill
	leaq	3(%rcx), %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movq	%rcx, %rbp
	leaq	48(%rsi), %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	leaq	48(%r13), %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	leaq	3(%r13), %rax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	leaq	3(%rsi), %rax
	movq	%rsi, %r9
	movq	%rax, 72(%rsp)          # 8-byte Spill
	leaq	112(%r13), %rax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	leaq	48(%r12), %rax
	movq	%rax, 216(%rsp)         # 8-byte Spill
	movq	344(%rsp), %rax         # 8-byte Reload
	leaq	48(%rax), %rcx
	movq	%rcx, 208(%rsp)         # 8-byte Spill
	leaq	3(%rax), %rax
	movq	%rax, 256(%rsp)         # 8-byte Spill
	leaq	3(%r12), %rax
	movq	%rax, 248(%rsp)         # 8-byte Spill
	xorl	%r15d, %r15d
	movl	$0, 340(%rsp)           # 4-byte Folded Spill
	movl	$0, 336(%rsp)           # 4-byte Folded Spill
	jmp	.LBB18_14
.LBB18_143:                             # %if.else.23
                                        #   in Loop: Header=BB18_14 Depth=1
	movl	%eax, %edx
	movslq	%r15d, %rax
	movq	344(%rsp), %rcx         # 8-byte Reload
	movb	%dl, -1(%rcx,%rax)
	incl	%edx
	movl	%edx, 336(%rsp)         # 4-byte Spill
	jmp	.LBB18_144
	.align	16, 0x90
.LBB18_14:                              # %for.body.7
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_19 Depth 2
                                        #       Child Loop BB18_27 Depth 3
                                        #       Child Loop BB18_44 Depth 3
                                        #       Child Loop BB18_51 Depth 3
                                        #     Child Loop BB18_62 Depth 2
                                        #     Child Loop BB18_69 Depth 2
                                        #     Child Loop BB18_87 Depth 2
                                        #     Child Loop BB18_94 Depth 2
                                        #     Child Loop BB18_101 Depth 2
                                        #     Child Loop BB18_140 Depth 2
                                        #     Child Loop BB18_110 Depth 2
                                        #     Child Loop BB18_115 Depth 2
                                        #     Child Loop BB18_118 Depth 2
                                        #     Child Loop BB18_74 Depth 2
                                        #     Child Loop BB18_77 Depth 2
                                        #     Child Loop BB18_81 Depth 2
                                        #     Child Loop BB18_128 Depth 2
                                        #     Child Loop BB18_133 Depth 2
                                        #     Child Loop BB18_136 Depth 2
	movl	%r15d, 396(%rsp)        # 4-byte Spill
	movq	%rbx, 360(%rsp)         # 8-byte Spill
	movq	312(%rsp), %rdi         # 8-byte Reload
	movl	%ebx, %esi
	movq	%r9, %r15
	movq	%r15, %rdx
	movq	328(%rsp), %rcx         # 8-byte Reload
	callq	gdev_prn_copy_scan_lines
	movl	%r14d, %r8d
	testl	%r8d, %r8d
	movl	$1, %edx
	movq	%r15, %r12
	movl	$0, %edi
	movl	$0, %r9d
	movl	$0, %r10d
	movl	$0, %r14d
	movl	$0, %ebx
	movl	$1, %esi
	movq	%rbp, %r11
	jle	.LBB18_15
	.align	16, 0x90
.LBB18_19:                              # %for.body.i.i
                                        #   Parent Loop BB18_14 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB18_27 Depth 3
                                        #       Child Loop BB18_44 Depth 3
                                        #       Child Loop BB18_51 Depth 3
	leaq	(%r15,%rdi), %rbp
	movzbl	(%r15,%rdi), %eax
	testb	%al, %al
	movl	$0, %ecx
	cmovnel	%ecx, %esi
	movzbl	(%r13,%rdi), %ecx
	cmpl	%ecx, %eax
	jne	.LBB18_20
# BB#36:                                # %if.else.83.i.i
                                        #   in Loop: Header=BB18_19 Depth=2
	testl	%ebx, %ebx
	jle	.LBB18_37
# BB#38:                                # %for.body.106.lr.ph.i.i
                                        #   in Loop: Header=BB18_19 Depth=2
	movl	%esi, 484(%rsp)         # 4-byte Spill
	movslq	%r10d, %r8
	leaq	(%r11,%r8), %rax
	movslq	%r14d, %rcx
	subq	%rcx, %rax
	movzbl	(%rax), %ecx
	movq	%rbx, %rsi
	movq	%rsi, 488(%rsp)         # 8-byte Spill
	shll	$5, %ebx
	addl	$224, %ebx
	orl	%ecx, %ebx
	movslq	%esi, %r13
	movq	%r13, %rdx
	negq	%rdx
	leal	-1(%rsi), %r15d
	leaq	1(%r15), %r9
	movabsq	$8589934560, %rcx       # imm = 0x1FFFFFFE0
	leaq	16(%rcx), %rcx
	movq	%r9, %rsi
	andq	%rcx, %rsi
	andq	%rcx, %r9
	movb	%bl, (%rax)
	leaq	1(%r15,%r8), %rbx
	je	.LBB18_39
# BB#40:                                # %vector.memcheck250
                                        #   in Loop: Header=BB18_19 Depth=2
	movslq	%r10d, %rax
	movq	%r10, 432(%rsp)         # 8-byte Spill
	leaq	(%r11,%rax), %r14
	movq	%r15, %rcx
	subq	%r13, %rcx
	leaq	(%rcx,%rbp), %rcx
	cmpq	%rcx, %r14
	ja	.LBB18_43
# BB#41:                                # %vector.memcheck250
                                        #   in Loop: Header=BB18_19 Depth=2
	addq	%r15, %rax
	leaq	(%rax,%r11), %rax
	movq	%rbp, %rcx
	subq	%r13, %rcx
	cmpq	%rax, %rcx
	ja	.LBB18_43
# BB#42:                                #   in Loop: Header=BB18_19 Depth=2
	movq	%r13, %r11
	xorl	%r9d, %r9d
	jmp	.LBB18_45
	.align	16, 0x90
.LBB18_20:                              # %if.then.11.i.i
                                        #   in Loop: Header=BB18_19 Depth=2
	cmpl	$1, %edx
	jne	.LBB18_33
# BB#21:                                # %if.then.14.i.i
                                        #   in Loop: Header=BB18_19 Depth=2
	movslq	%r10d, %rax
	cmpl	$32, %r9d
	jl	.LBB18_23
# BB#22:                                # %if.then.17.i.i
                                        #   in Loop: Header=BB18_19 Depth=2
	movb	$31, (%r11,%rax)
	jmp	.LBB18_24
.LBB18_37:                              #   in Loop: Header=BB18_19 Depth=2
	incl	%r9d
	movl	$1, %edx
	jmp	.LBB18_53
.LBB18_23:                              # %if.else.i.i
                                        #   in Loop: Header=BB18_19 Depth=2
	movb	%r9b, (%r11,%rax)
.LBB18_24:                              # %for.cond.26.preheader.i.i
                                        #   in Loop: Header=BB18_19 Depth=2
	leal	-31(%r9), %r13d
	movslq	%r13d, %rax
	imulq	$-2139062143, %rax, %rdx # imm = 0xFFFFFFFF80808081
	shrq	$32, %rdx
	cmpl	$255, %eax
	jl	.LBB18_25
# BB#26:                                # %for.body.29.lr.ph.i.i
                                        #   in Loop: Header=BB18_19 Depth=2
	movq	%rbx, 488(%rsp)         # 8-byte Spill
	movl	%esi, 484(%rsp)         # 4-byte Spill
	leal	-31(%rdx,%r9), %ebx
	movl	%ebx, %eax
	shrl	$31, %eax
	sarl	$7, %ebx
	addl	%eax, %ebx
	incl	%r10d
	movslq	%r10d, %r15
	leaq	(%r11,%r15), %rsi
	decq	%r15
	movl	%r14d, %r11d
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB18_27:                              # %for.body.29.i.i
                                        #   Parent Loop BB18_14 Depth=1
                                        #     Parent Loop BB18_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rcx, %rax
	movb	$-1, (%rsi,%rax)
	leaq	1(%rax), %rcx
	cmpl	%ebx, %ecx
	jl	.LBB18_27
# BB#28:                                # %for.cond.26.for.end_crit_edge.i.i
                                        #   in Loop: Header=BB18_19 Depth=2
	leal	(%r11,%rcx), %r14d
	addl	%ecx, %r10d
	movl	%r10d, %ebx
	leaq	1(%r15,%rax), %r8
	leal	1(%r11,%rcx), %eax
	movl	%r8d, %r10d
	movq	456(%rsp), %r15         # 8-byte Reload
	movq	464(%rsp), %r11         # 8-byte Reload
	movl	484(%rsp), %esi         # 4-byte Reload
	movl	452(%rsp), %r8d         # 4-byte Reload
	jmp	.LBB18_29
.LBB18_25:                              #   in Loop: Header=BB18_19 Depth=2
	movq	%rbx, 488(%rsp)         # 8-byte Spill
	leal	1(%r10), %ebx
	leal	1(%r14), %eax
.LBB18_29:                              # %for.end.i.i
                                        #   in Loop: Header=BB18_19 Depth=2
	addl	%r13d, %edx
	movl	%edx, %ecx
	shrl	$31, %ecx
	sarl	$7, %edx
	addl	%ecx, %edx
	imull	$255, %edx, %ecx
	xorl	%edx, %edx
	subl	%ecx, %r13d
	js	.LBB18_30
# BB#31:                                # %if.then.38.i.i
                                        #   in Loop: Header=BB18_19 Depth=2
	movslq	%ebx, %rax
	movb	%r13b, (%r11,%rax)
	addl	$2, %r10d
	addl	$2, %r14d
	jmp	.LBB18_32
.LBB18_39:                              #   in Loop: Header=BB18_19 Depth=2
	movq	%r13, %r11
	xorl	%r9d, %r9d
	movq	456(%rsp), %r15         # 8-byte Reload
	movl	484(%rsp), %esi         # 4-byte Reload
	jmp	.LBB18_46
.LBB18_43:                              # %vector.body230.preheader
                                        #   in Loop: Header=BB18_19 Depth=2
	addq	%r8, %rsi
	movq	%rsi, %r8
	movq	%r12, %rsi
	subq	%r13, %rsi
	movq	%r13, %r11
	incq	%r15
	movabsq	$8589934576, %rax       # imm = 0x1FFFFFFF0
	andq	%rax, %r15
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB18_44:                              # %vector.body230
                                        #   Parent Loop BB18_14 Depth=1
                                        #     Parent Loop BB18_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movd	%r13, %xmm0
	pshufd	$68, %xmm0, %xmm6       # xmm6 = xmm0[0,1,0,1]
	movdqa	%xmm6, %xmm0
	paddq	496(%rsp), %xmm0        # 16-byte Folded Reload
	movdqa	%xmm6, %xmm5
	paddq	.LCPI18_0(%rip), %xmm5
	movdqa	%xmm6, %xmm14
	paddq	.LCPI18_1(%rip), %xmm14
	movdqa	%xmm6, %xmm3
	paddq	.LCPI18_2(%rip), %xmm3
	movdqa	%xmm6, %xmm12
	paddq	.LCPI18_3(%rip), %xmm12
	movdqa	%xmm6, %xmm7
	paddq	.LCPI18_4(%rip), %xmm7
	movdqa	%xmm6, %xmm4
	paddq	.LCPI18_5(%rip), %xmm4
	paddq	.LCPI18_6(%rip), %xmm6
	pshufd	$78, %xmm0, %xmm8       # xmm8 = xmm0[2,3,0,1]
	movd	%xmm5, %rax
	leaq	(%rax,%rbp), %rax
	movzbl	(%rdx,%rax), %eax
	movd	%eax, %xmm9
	movd	%xmm7, %rax
	leaq	(%rax,%rbp), %rax
	movzbl	(%rdx,%rax), %eax
	movd	%eax, %xmm1
	movd	%xmm3, %rax
	leaq	(%rax,%rbp), %rax
	movzbl	(%rdx,%rax), %eax
	movd	%eax, %xmm10
	movd	%xmm6, %rax
	leaq	(%rax,%rbp), %rax
	pshufd	$78, %xmm6, %xmm13      # xmm13 = xmm6[2,3,0,1]
	movzbl	(%rdx,%rax), %eax
	movd	%eax, %xmm6
	movd	%xmm14, %rax
	leaq	(%rax,%rbp), %rax
	movzbl	(%rdx,%rax), %eax
	movd	%eax, %xmm11
	movd	%xmm4, %rax
	leaq	(%rax,%rbp), %rax
	pshufd	$78, %xmm7, %xmm2       # xmm2 = xmm7[2,3,0,1]
	movzbl	(%rdx,%rax), %eax
	movd	%eax, %xmm0
	movzbl	(%rsi,%r13), %eax
	movd	%eax, %xmm7
	movd	%xmm12, %rax
	leaq	(%rax,%rbp), %rax
	pshufd	$78, %xmm5, %xmm5       # xmm5 = xmm5[2,3,0,1]
	movzbl	(%rdx,%rax), %eax
	movd	%eax, %xmm15
	movd	%xmm5, %rax
	leaq	(%rax,%rbp), %rax
	movzbl	(%rdx,%rax), %eax
	movd	%eax, %xmm5
	movd	%xmm2, %rax
	leaq	(%rax,%rbp), %rax
	pshufd	$78, %xmm3, %xmm2       # xmm2 = xmm3[2,3,0,1]
	movzbl	(%rdx,%rax), %eax
	movd	%eax, %xmm3
	movd	%xmm2, %rax
	leaq	(%rax,%rbp), %rax
	movzbl	(%rdx,%rax), %eax
	movd	%eax, %xmm2
	movd	%xmm13, %rax
	leaq	(%rax,%rbp), %rax
	pshufd	$78, %xmm4, %xmm13      # xmm13 = xmm4[2,3,0,1]
	pshufd	$78, %xmm14, %xmm14     # xmm14 = xmm14[2,3,0,1]
	movzbl	(%rdx,%rax), %eax
	movd	%eax, %xmm4
	movd	%xmm14, %rax
	leaq	(%rax,%rbp), %rax
	movzbl	(%rdx,%rax), %eax
	movd	%eax, %xmm14
	movd	%xmm13, %rax
	leaq	(%rax,%rbp), %rax
	pshufd	$78, %xmm12, %xmm12     # xmm12 = xmm12[2,3,0,1]
	movzbl	(%rdx,%rax), %eax
	movd	%eax, %xmm13
	movd	%xmm12, %rax
	leaq	(%rax,%rbp), %rax
	movzbl	(%rdx,%rax), %eax
	movd	%eax, %xmm12
	movd	%xmm8, %rax
	leaq	(%rax,%rbp), %rax
	movzbl	(%rdx,%rax), %eax
	movd	%eax, %xmm8
	punpcklbw	%xmm9, %xmm1    # xmm1 = xmm1[0],xmm9[0],xmm1[1],xmm9[1],xmm1[2],xmm9[2],xmm1[3],xmm9[3],xmm1[4],xmm9[4],xmm1[5],xmm9[5],xmm1[6],xmm9[6],xmm1[7],xmm9[7]
	punpcklbw	%xmm10, %xmm6   # xmm6 = xmm6[0],xmm10[0],xmm6[1],xmm10[1],xmm6[2],xmm10[2],xmm6[3],xmm10[3],xmm6[4],xmm10[4],xmm6[5],xmm10[5],xmm6[6],xmm10[6],xmm6[7],xmm10[7]
	punpcklbw	%xmm1, %xmm6    # xmm6 = xmm6[0],xmm1[0],xmm6[1],xmm1[1],xmm6[2],xmm1[2],xmm6[3],xmm1[3],xmm6[4],xmm1[4],xmm6[5],xmm1[5],xmm6[6],xmm1[6],xmm6[7],xmm1[7]
	punpcklbw	%xmm11, %xmm0   # xmm0 = xmm0[0],xmm11[0],xmm0[1],xmm11[1],xmm0[2],xmm11[2],xmm0[3],xmm11[3],xmm0[4],xmm11[4],xmm0[5],xmm11[5],xmm0[6],xmm11[6],xmm0[7],xmm11[7]
	punpcklbw	%xmm15, %xmm7   # xmm7 = xmm7[0],xmm15[0],xmm7[1],xmm15[1],xmm7[2],xmm15[2],xmm7[3],xmm15[3],xmm7[4],xmm15[4],xmm7[5],xmm15[5],xmm7[6],xmm15[6],xmm7[7],xmm15[7]
	punpcklbw	%xmm0, %xmm7    # xmm7 = xmm7[0],xmm0[0],xmm7[1],xmm0[1],xmm7[2],xmm0[2],xmm7[3],xmm0[3],xmm7[4],xmm0[4],xmm7[5],xmm0[5],xmm7[6],xmm0[6],xmm7[7],xmm0[7]
	punpcklbw	%xmm6, %xmm7    # xmm7 = xmm7[0],xmm6[0],xmm7[1],xmm6[1],xmm7[2],xmm6[2],xmm7[3],xmm6[3],xmm7[4],xmm6[4],xmm7[5],xmm6[5],xmm7[6],xmm6[6],xmm7[7],xmm6[7]
	punpcklbw	%xmm5, %xmm3    # xmm3 = xmm3[0],xmm5[0],xmm3[1],xmm5[1],xmm3[2],xmm5[2],xmm3[3],xmm5[3],xmm3[4],xmm5[4],xmm3[5],xmm5[5],xmm3[6],xmm5[6],xmm3[7],xmm5[7]
	punpcklbw	%xmm2, %xmm4    # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1],xmm4[2],xmm2[2],xmm4[3],xmm2[3],xmm4[4],xmm2[4],xmm4[5],xmm2[5],xmm4[6],xmm2[6],xmm4[7],xmm2[7]
	punpcklbw	%xmm3, %xmm4    # xmm4 = xmm4[0],xmm3[0],xmm4[1],xmm3[1],xmm4[2],xmm3[2],xmm4[3],xmm3[3],xmm4[4],xmm3[4],xmm4[5],xmm3[5],xmm4[6],xmm3[6],xmm4[7],xmm3[7]
	punpcklbw	%xmm14, %xmm13  # xmm13 = xmm13[0],xmm14[0],xmm13[1],xmm14[1],xmm13[2],xmm14[2],xmm13[3],xmm14[3],xmm13[4],xmm14[4],xmm13[5],xmm14[5],xmm13[6],xmm14[6],xmm13[7],xmm14[7]
	punpcklbw	%xmm12, %xmm8   # xmm8 = xmm8[0],xmm12[0],xmm8[1],xmm12[1],xmm8[2],xmm12[2],xmm8[3],xmm12[3],xmm8[4],xmm12[4],xmm8[5],xmm12[5],xmm8[6],xmm12[6],xmm8[7],xmm12[7]
	punpcklbw	%xmm13, %xmm8   # xmm8 = xmm8[0],xmm13[0],xmm8[1],xmm13[1],xmm8[2],xmm13[2],xmm8[3],xmm13[3],xmm8[4],xmm13[4],xmm8[5],xmm13[5],xmm8[6],xmm13[6],xmm8[7],xmm13[7]
	punpcklbw	%xmm4, %xmm8    # xmm8 = xmm8[0],xmm4[0],xmm8[1],xmm4[1],xmm8[2],xmm4[2],xmm8[3],xmm4[3],xmm8[4],xmm4[4],xmm8[5],xmm4[5],xmm8[6],xmm4[6],xmm8[7],xmm4[7]
	punpcklbw	%xmm8, %xmm7    # xmm7 = xmm7[0],xmm8[0],xmm7[1],xmm8[1],xmm7[2],xmm8[2],xmm7[3],xmm8[3],xmm7[4],xmm8[4],xmm7[5],xmm8[5],xmm7[6],xmm8[6],xmm7[7],xmm8[7]
	movdqu	%xmm7, (%r14,%r13)
	addq	$16, %r13
	cmpq	%r13, %r15
	jne	.LBB18_44
.LBB18_45:                              #   in Loop: Header=BB18_19 Depth=2
	movq	456(%rsp), %r15         # 8-byte Reload
	movl	484(%rsp), %esi         # 4-byte Reload
	movq	432(%rsp), %r10         # 8-byte Reload
.LBB18_46:                              # %middle.block231
                                        #   in Loop: Header=BB18_19 Depth=2
	cmpq	%r8, %rbx
	je	.LBB18_52
# BB#47:                                # %for.body.106.i.i.preheader
                                        #   in Loop: Header=BB18_19 Depth=2
	movq	488(%rsp), %rbx         # 8-byte Reload
	leal	1(%rbx), %ecx
	movl	%r9d, %eax
	orl	$1, %eax
	subl	%eax, %ecx
	testb	$1, %cl
	je	.LBB18_49
# BB#48:                                # %for.body.106.i.i.prol
                                        #   in Loop: Header=BB18_19 Depth=2
	addq	%r9, %rbp
	movb	(%rdx,%rbp), %cl
	movq	464(%rsp), %rdx         # 8-byte Reload
	movb	%cl, (%rdx,%r8)
	orq	$1, %r9
	incq	%r8
.LBB18_49:                              # %for.body.106.i.i.preheader.split
                                        #   in Loop: Header=BB18_19 Depth=2
	cmpl	%eax, %ebx
	je	.LBB18_52
# BB#50:                                # %for.body.106.i.i.preheader.split.split
                                        #   in Loop: Header=BB18_19 Depth=2
	movq	488(%rsp), %rax         # 8-byte Reload
	subl	%r9d, %eax
	subq	%r11, %r9
	leaq	(%r9,%r15), %rcx
	movq	352(%rsp), %rdx         # 8-byte Reload
	leaq	(%r8,%rdx), %rdx
	.align	16, 0x90
.LBB18_51:                              # %for.body.106.i.i
                                        #   Parent Loop BB18_14 Depth=1
                                        #     Parent Loop BB18_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	(%rcx,%rdi), %bl
	movb	%bl, -1(%rdx)
	movb	1(%rcx,%rdi), %bl
	movb	%bl, (%rdx)
	addq	$2, %rcx
	addq	$2, %rdx
	addl	$-2, %eax
	jne	.LBB18_51
.LBB18_52:                              # %for.inc.122.loopexit.i.i
                                        #   in Loop: Header=BB18_19 Depth=2
	movq	488(%rsp), %rax         # 8-byte Reload
	addl	%eax, %r10d
	xorl	%ebx, %ebx
	movl	$1, %edx
	xorl	%r14d, %r14d
	movl	$1, %r9d
	movq	464(%rsp), %r11         # 8-byte Reload
	movl	452(%rsp), %r8d         # 4-byte Reload
	movq	472(%rsp), %r13         # 8-byte Reload
	jmp	.LBB18_53
.LBB18_30:                              #   in Loop: Header=BB18_19 Depth=2
	movl	%eax, %r14d
	movl	%ebx, %r10d
.LBB18_32:                              # %if.end.50.i.i
                                        #   in Loop: Header=BB18_19 Depth=2
	movq	472(%rsp), %r13         # 8-byte Reload
	movq	488(%rsp), %rbx         # 8-byte Reload
.LBB18_33:                              # %if.end.50.i.i
                                        #   in Loop: Header=BB18_19 Depth=2
	cmpl	$8, %ebx
	jl	.LBB18_34
# BB#35:                                # %if.then.53.i.i
                                        #   in Loop: Header=BB18_19 Depth=2
	movslq	%r10d, %r10
	leaq	(%r11,%r10), %rax
	movslq	%r14d, %rcx
	subq	%rcx, %rax
	orb	$-32, (%rax)
	leal	8(%r10), %eax
	movb	-8(%rbp), %cl
	movb	%cl, (%r11,%r10)
	movb	-7(%rbp), %cl
	movb	%cl, 1(%r11,%r10)
	movb	-6(%rbp), %cl
	movb	%cl, 2(%r11,%r10)
	movb	-5(%rbp), %cl
	movb	%cl, 3(%r11,%r10)
	movb	-4(%rbp), %cl
	movb	%cl, 4(%r11,%r10)
	movb	-3(%rbp), %cl
	movb	%cl, 5(%r11,%r10)
	movb	-2(%rbp), %cl
	movb	%cl, 6(%r11,%r10)
	movb	-1(%rbp), %cl
	movb	%cl, 7(%r11,%r10)
	cltq
	movb	$0, (%r11,%rax)
	addl	$9, %r10d
	movl	$1, %ebx
	xorl	%edx, %edx
	movl	$1, %r14d
	jmp	.LBB18_53
	.align	16, 0x90
.LBB18_34:                              #   in Loop: Header=BB18_19 Depth=2
	incl	%ebx
.LBB18_53:                              # %for.inc.122.i.i
                                        #   in Loop: Header=BB18_19 Depth=2
	incq	%rdi
	incq	%r12
	cmpl	%r8d, %edi
	jne	.LBB18_19
# BB#54:                                # %for.end.124.i.i
                                        #   in Loop: Header=BB18_14 Depth=1
	testl	%ebx, %ebx
	movdqa	.LCPI18_0(%rip), %xmm7  # xmm7 = [14,15]
	movdqa	.LCPI18_1(%rip), %xmm8  # xmm8 = [12,13]
	movdqa	.LCPI18_2(%rip), %xmm9  # xmm9 = [10,11]
	movdqa	%xmm9, %xmm12
	movdqa	.LCPI18_3(%rip), %xmm10 # xmm10 = [8,9]
	movdqa	%xmm10, %xmm9
	movdqa	.LCPI18_5(%rip), %xmm11 # xmm11 = [4,5]
	movdqa	.LCPI18_6(%rip), %xmm13 # xmm13 = [2,3]
	jle	.LBB18_55
# BB#56:                                # %for.body.146.lr.ph.i.i
                                        #   in Loop: Header=BB18_14 Depth=1
	movl	%esi, 484(%rsp)         # 4-byte Spill
	movslq	%r10d, %rdi
	leaq	(%r11,%rdi), %rax
	movslq	%r14d, %rcx
	subq	%rcx, %rax
	movzbl	(%rax), %ecx
	movl	%ebx, %edx
	shll	$5, %edx
	addl	$224, %edx
	orl	%ecx, %edx
	movq	%r11, %r12
	movslq	%ebx, %r11
	movq	%r11, %rsi
	negq	%rsi
	movq	%rbx, 488(%rsp)         # 8-byte Spill
	leal	-1(%rbx), %ebx
	leaq	1(%rbx), %r15
	movabsq	$8589934560, %rcx       # imm = 0x1FFFFFFE0
	leaq	16(%rcx), %rcx
	movq	%r15, %r14
	andq	%rcx, %r14
	andq	%rcx, %r15
	movb	%dl, (%rax)
	leaq	1(%rbx,%rdi), %rax
	je	.LBB18_57
# BB#58:                                # %vector.memcheck211
                                        #   in Loop: Header=BB18_14 Depth=1
	movq	%rax, 416(%rsp)         # 8-byte Spill
	movslq	%r10d, %rax
	leaq	(%r12,%rax), %rdx
	movq	272(%rsp), %r9          # 8-byte Reload
	movq	%r9, %rbp
	subq	%r11, %rbp
	movq	%rbx, %rcx
	subq	%r11, %rcx
	leaq	(%rcx,%r9), %rcx
	cmpq	%rcx, %rdx
	ja	.LBB18_61
# BB#59:                                # %vector.memcheck211
                                        #   in Loop: Header=BB18_14 Depth=1
	addq	%rbx, %rax
	leaq	(%rax,%r12), %rax
	cmpq	%rax, %rbp
	ja	.LBB18_61
# BB#60:                                #   in Loop: Header=BB18_14 Depth=1
	xorl	%r15d, %r15d
	movq	%rdi, %r14
	jmp	.LBB18_63
	.align	16, 0x90
.LBB18_15:                              # %if.then.thread.i
                                        #   in Loop: Header=BB18_14 Depth=1
	movq	%r15, %r9
	movq	320(%rsp), %rbx         # 8-byte Reload
	movw	$1, (%rbx)
	movl	396(%rsp), %r15d        # 4-byte Reload
	jmp	.LBB18_16
	.align	16, 0x90
.LBB18_55:                              #   in Loop: Header=BB18_14 Depth=1
	movq	320(%rsp), %rbx         # 8-byte Reload
	movl	396(%rsp), %r14d        # 4-byte Reload
	movdqa	.LCPI18_4(%rip), %xmm10 # xmm10 = [6,7]
	jmp	.LBB18_71
.LBB18_57:                              #   in Loop: Header=BB18_14 Depth=1
	xorl	%r15d, %r15d
	movq	%rdi, %r14
	movq	320(%rsp), %rbp         # 8-byte Reload
	movdqa	.LCPI18_4(%rip), %xmm10 # xmm10 = [6,7]
	jmp	.LBB18_64
.LBB18_61:                              # %vector.body190.preheader
                                        #   in Loop: Header=BB18_14 Depth=1
	addq	%rdi, %r14
	incq	%rbx
	movabsq	$8589934576, %rax       # imm = 0x1FFFFFFF0
	andq	%rax, %rbx
	xorl	%ecx, %ecx
	movq	272(%rsp), %rdi         # 8-byte Reload
	movl	$1, %r9d
	.align	16, 0x90
.LBB18_62:                              # %vector.body190
                                        #   Parent Loop BB18_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movd	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm6       # xmm6 = xmm0[0,1,0,1]
	movd	%r9, %xmm0
	pslldq	$8, %xmm0               # xmm0 = zero,zero,zero,zero,zero,zero,zero,zero,xmm0[0,1,2,3,4,5,6,7]
	paddq	%xmm6, %xmm0
	movdqa	%xmm6, %xmm5
	paddq	%xmm7, %xmm5
	movdqa	%xmm6, %xmm14
	paddq	%xmm8, %xmm14
	movdqa	%xmm6, %xmm3
	paddq	%xmm12, %xmm3
	movdqa	%xmm6, %xmm12
	paddq	%xmm9, %xmm12
	movdqa	%xmm6, %xmm7
	paddq	.LCPI18_4(%rip), %xmm7
	movdqa	%xmm6, %xmm4
	paddq	%xmm11, %xmm4
	paddq	%xmm13, %xmm6
	pshufd	$78, %xmm0, %xmm8       # xmm8 = xmm0[2,3,0,1]
	movd	%xmm5, %rax
	leaq	(%rax,%rdi), %rax
	movzbl	(%rsi,%rax), %eax
	movd	%eax, %xmm1
	movd	%xmm7, %rax
	leaq	(%rax,%rdi), %rax
	movzbl	(%rsi,%rax), %eax
	movd	%eax, %xmm10
	movd	%xmm3, %rax
	leaq	(%rax,%rdi), %rax
	movzbl	(%rsi,%rax), %eax
	movd	%eax, %xmm0
	movaps	%xmm0, 432(%rsp)        # 16-byte Spill
	movd	%xmm6, %rax
	leaq	(%rax,%rdi), %rax
	pshufd	$78, %xmm6, %xmm13      # xmm13 = xmm6[2,3,0,1]
	movzbl	(%rsi,%rax), %eax
	movd	%eax, %xmm6
	movd	%xmm14, %rax
	leaq	(%rax,%rdi), %rax
	movzbl	(%rsi,%rax), %eax
	movd	%eax, %xmm11
	movd	%xmm4, %rax
	leaq	(%rax,%rdi), %rax
	pshufd	$78, %xmm7, %xmm2       # xmm2 = xmm7[2,3,0,1]
	movzbl	(%rsi,%rax), %eax
	movd	%eax, %xmm0
	movzbl	(%rbp,%rcx), %eax
	movd	%eax, %xmm7
	movd	%xmm12, %rax
	leaq	(%rax,%rdi), %rax
	pshufd	$78, %xmm5, %xmm5       # xmm5 = xmm5[2,3,0,1]
	movzbl	(%rsi,%rax), %eax
	movd	%eax, %xmm15
	movd	%xmm5, %rax
	leaq	(%rax,%rdi), %rax
	movzbl	(%rsi,%rax), %eax
	movd	%eax, %xmm5
	movd	%xmm2, %rax
	leaq	(%rax,%rdi), %rax
	pshufd	$78, %xmm3, %xmm2       # xmm2 = xmm3[2,3,0,1]
	movzbl	(%rsi,%rax), %eax
	movd	%eax, %xmm3
	movd	%xmm2, %rax
	leaq	(%rax,%rdi), %rax
	movzbl	(%rsi,%rax), %eax
	movd	%eax, %xmm2
	movd	%xmm13, %rax
	leaq	(%rax,%rdi), %rax
	pshufd	$78, %xmm4, %xmm13      # xmm13 = xmm4[2,3,0,1]
	pshufd	$78, %xmm14, %xmm14     # xmm14 = xmm14[2,3,0,1]
	movzbl	(%rsi,%rax), %eax
	movd	%eax, %xmm4
	movd	%xmm14, %rax
	leaq	(%rax,%rdi), %rax
	movzbl	(%rsi,%rax), %eax
	movd	%eax, %xmm14
	movd	%xmm13, %rax
	leaq	(%rax,%rdi), %rax
	pshufd	$78, %xmm12, %xmm12     # xmm12 = xmm12[2,3,0,1]
	movzbl	(%rsi,%rax), %eax
	movd	%eax, %xmm13
	movd	%xmm12, %rax
	leaq	(%rax,%rdi), %rax
	movzbl	(%rsi,%rax), %eax
	movd	%eax, %xmm12
	movd	%xmm8, %rax
	leaq	(%rax,%rdi), %rax
	movzbl	(%rsi,%rax), %eax
	movd	%eax, %xmm8
	punpcklbw	%xmm1, %xmm10   # xmm10 = xmm10[0],xmm1[0],xmm10[1],xmm1[1],xmm10[2],xmm1[2],xmm10[3],xmm1[3],xmm10[4],xmm1[4],xmm10[5],xmm1[5],xmm10[6],xmm1[6],xmm10[7],xmm1[7]
	movdqa	.LCPI18_2(%rip), %xmm1  # xmm1 = [10,11]
	punpcklbw	432(%rsp), %xmm6 # 16-byte Folded Reload
                                        # xmm6 = xmm6[0],mem[0],xmm6[1],mem[1],xmm6[2],mem[2],xmm6[3],mem[3],xmm6[4],mem[4],xmm6[5],mem[5],xmm6[6],mem[6],xmm6[7],mem[7]
	movdqa	.LCPI18_3(%rip), %xmm9  # xmm9 = [8,9]
	punpcklbw	%xmm10, %xmm6   # xmm6 = xmm6[0],xmm10[0],xmm6[1],xmm10[1],xmm6[2],xmm10[2],xmm6[3],xmm10[3],xmm6[4],xmm10[4],xmm6[5],xmm10[5],xmm6[6],xmm10[6],xmm6[7],xmm10[7]
	punpcklbw	%xmm11, %xmm0   # xmm0 = xmm0[0],xmm11[0],xmm0[1],xmm11[1],xmm0[2],xmm11[2],xmm0[3],xmm11[3],xmm0[4],xmm11[4],xmm0[5],xmm11[5],xmm0[6],xmm11[6],xmm0[7],xmm11[7]
	movdqa	.LCPI18_5(%rip), %xmm11 # xmm11 = [4,5]
	punpcklbw	%xmm15, %xmm7   # xmm7 = xmm7[0],xmm15[0],xmm7[1],xmm15[1],xmm7[2],xmm15[2],xmm7[3],xmm15[3],xmm7[4],xmm15[4],xmm7[5],xmm15[5],xmm7[6],xmm15[6],xmm7[7],xmm15[7]
	punpcklbw	%xmm0, %xmm7    # xmm7 = xmm7[0],xmm0[0],xmm7[1],xmm0[1],xmm7[2],xmm0[2],xmm7[3],xmm0[3],xmm7[4],xmm0[4],xmm7[5],xmm0[5],xmm7[6],xmm0[6],xmm7[7],xmm0[7]
	punpcklbw	%xmm6, %xmm7    # xmm7 = xmm7[0],xmm6[0],xmm7[1],xmm6[1],xmm7[2],xmm6[2],xmm7[3],xmm6[3],xmm7[4],xmm6[4],xmm7[5],xmm6[5],xmm7[6],xmm6[6],xmm7[7],xmm6[7]
	punpcklbw	%xmm5, %xmm3    # xmm3 = xmm3[0],xmm5[0],xmm3[1],xmm5[1],xmm3[2],xmm5[2],xmm3[3],xmm5[3],xmm3[4],xmm5[4],xmm3[5],xmm5[5],xmm3[6],xmm5[6],xmm3[7],xmm5[7]
	punpcklbw	%xmm2, %xmm4    # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1],xmm4[2],xmm2[2],xmm4[3],xmm2[3],xmm4[4],xmm2[4],xmm4[5],xmm2[5],xmm4[6],xmm2[6],xmm4[7],xmm2[7]
	punpcklbw	%xmm3, %xmm4    # xmm4 = xmm4[0],xmm3[0],xmm4[1],xmm3[1],xmm4[2],xmm3[2],xmm4[3],xmm3[3],xmm4[4],xmm3[4],xmm4[5],xmm3[5],xmm4[6],xmm3[6],xmm4[7],xmm3[7]
	punpcklbw	%xmm14, %xmm13  # xmm13 = xmm13[0],xmm14[0],xmm13[1],xmm14[1],xmm13[2],xmm14[2],xmm13[3],xmm14[3],xmm13[4],xmm14[4],xmm13[5],xmm14[5],xmm13[6],xmm14[6],xmm13[7],xmm14[7]
	punpcklbw	%xmm12, %xmm8   # xmm8 = xmm8[0],xmm12[0],xmm8[1],xmm12[1],xmm8[2],xmm12[2],xmm8[3],xmm12[3],xmm8[4],xmm12[4],xmm8[5],xmm12[5],xmm8[6],xmm12[6],xmm8[7],xmm12[7]
	movdqa	%xmm1, %xmm12
	punpcklbw	%xmm13, %xmm8   # xmm8 = xmm8[0],xmm13[0],xmm8[1],xmm13[1],xmm8[2],xmm13[2],xmm8[3],xmm13[3],xmm8[4],xmm13[4],xmm8[5],xmm13[5],xmm8[6],xmm13[6],xmm8[7],xmm13[7]
	movdqa	.LCPI18_6(%rip), %xmm13 # xmm13 = [2,3]
	punpcklbw	%xmm4, %xmm8    # xmm8 = xmm8[0],xmm4[0],xmm8[1],xmm4[1],xmm8[2],xmm4[2],xmm8[3],xmm4[3],xmm8[4],xmm4[4],xmm8[5],xmm4[5],xmm8[6],xmm4[6],xmm8[7],xmm4[7]
	punpcklbw	%xmm8, %xmm7    # xmm7 = xmm7[0],xmm8[0],xmm7[1],xmm8[1],xmm7[2],xmm8[2],xmm7[3],xmm8[3],xmm7[4],xmm8[4],xmm7[5],xmm8[5],xmm7[6],xmm8[6],xmm7[7],xmm8[7]
	movdqa	.LCPI18_1(%rip), %xmm8  # xmm8 = [12,13]
	movdqu	%xmm7, (%rdx,%rcx)
	movdqa	.LCPI18_0(%rip), %xmm7  # xmm7 = [14,15]
	addq	$16, %rcx
	cmpq	%rcx, %rbx
	jne	.LBB18_62
.LBB18_63:                              #   in Loop: Header=BB18_14 Depth=1
	movq	320(%rsp), %rbp         # 8-byte Reload
	movdqa	.LCPI18_4(%rip), %xmm10 # xmm10 = [6,7]
	movq	416(%rsp), %rax         # 8-byte Reload
.LBB18_64:                              # %middle.block191
                                        #   in Loop: Header=BB18_14 Depth=1
	cmpq	%r14, %rax
	je	.LBB18_70
# BB#65:                                # %for.body.146.i.i.preheader
                                        #   in Loop: Header=BB18_14 Depth=1
	movq	488(%rsp), %rdi         # 8-byte Reload
	leal	1(%rdi), %ecx
	movl	%r15d, %eax
	orl	$1, %eax
	subl	%eax, %ecx
	testb	$1, %cl
	je	.LBB18_67
# BB#66:                                # %for.body.146.i.i.prol
                                        #   in Loop: Header=BB18_14 Depth=1
	movq	272(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%r15), %rcx
	movb	(%rsi,%rcx), %cl
	movq	464(%rsp), %rdx         # 8-byte Reload
	movb	%cl, (%rdx,%r14)
	orq	$1, %r15
	incq	%r14
.LBB18_67:                              # %for.body.146.i.i.preheader.split
                                        #   in Loop: Header=BB18_14 Depth=1
	cmpl	%eax, %edi
	je	.LBB18_70
# BB#68:                                # %for.body.146.i.i.preheader.split.split
                                        #   in Loop: Header=BB18_14 Depth=1
	movq	488(%rsp), %rax         # 8-byte Reload
	subl	%r15d, %eax
	subq	%r11, %r15
	movq	184(%rsp), %rcx         # 8-byte Reload
	leaq	(%r15,%rcx), %rcx
	movq	352(%rsp), %rdx         # 8-byte Reload
	leaq	(%r14,%rdx), %rdx
	.align	16, 0x90
.LBB18_69:                              # %for.body.146.i.i
                                        #   Parent Loop BB18_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	-1(%rcx), %bl
	movb	%bl, -1(%rdx)
	movb	(%rcx), %bl
	movb	%bl, (%rdx)
	addq	$2, %rcx
	addq	$2, %rdx
	addl	$-2, %eax
	jne	.LBB18_69
.LBB18_70:                              # %if.end.160.loopexit.i.i
                                        #   in Loop: Header=BB18_14 Depth=1
	movq	488(%rsp), %rax         # 8-byte Reload
	addl	%eax, %r10d
	movq	456(%rsp), %r15         # 8-byte Reload
	movq	464(%rsp), %r11         # 8-byte Reload
	movl	396(%rsp), %r14d        # 4-byte Reload
	movl	484(%rsp), %esi         # 4-byte Reload
	movq	%rbp, %rbx
.LBB18_71:                              # %lips_delta_compress.exit.i
                                        #   in Loop: Header=BB18_14 Depth=1
	cmpl	$1, %esi
	sbbl	%esi, %esi
	notl	%esi
	orl	%r10d, %esi
	testl	%esi, %esi
	js	.LBB18_72
# BB#82:                                # %if.else.i
                                        #   in Loop: Header=BB18_14 Depth=1
	je	.LBB18_85
# BB#83:                                # %for.cond.6.preheader.i
                                        #   in Loop: Header=BB18_14 Depth=1
	movslq	%esi, %rax
	cmpl	$254, %esi
	jle	.LBB18_84
# BB#86:                                # %for.body.8.lr.ph.i
                                        #   in Loop: Header=BB18_14 Depth=1
	imulq	$-2139062143, %rax, %rcx # imm = 0xFFFFFFFF80808081
	shrq	$32, %rcx
	leal	(%rcx,%rsi), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	sarl	$7, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB18_87:                              # %for.body.8.i
                                        #   Parent Loop BB18_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$-1, (%rbx,%r12)
	incq	%r12
	cmpq	%rdx, %r12
	jl	.LBB18_87
# BB#88:                                # %for.end.13.i
                                        #   in Loop: Header=BB18_14 Depth=1
	addl	%esi, %ecx
	movl	%ecx, %edx
	shrl	$31, %edx
	shrl	$7, %ecx
	addl	%edx, %ecx
	imull	$255, %ecx, %ecx
	movl	%esi, %edx
	subl	%ecx, %edx
	movslq	%r12d, %rcx
	movb	%dl, (%rbx,%rcx)
	xorl	%edx, %edx
	testl	%esi, %esi
	movl	292(%rsp), %r8d         # 4-byte Reload
	jle	.LBB18_104
# BB#89:                                #   in Loop: Header=BB18_14 Depth=1
	leaq	(%rcx,%rbx), %rdx
	jmp	.LBB18_90
	.align	16, 0x90
.LBB18_72:                              # %for.body.i.preheader
                                        #   in Loop: Header=BB18_14 Depth=1
	cmpq	$0, 296(%rsp)           # 8-byte Folded Reload
	movw	$1, (%rbx)
	movl	$0, %ecx
	pxor	%xmm0, %xmm0
	je	.LBB18_79
# BB#73:                                # %vector.body98.preheader
                                        #   in Loop: Header=BB18_14 Depth=1
	cmpq	$0, 232(%rsp)           # 8-byte Folded Reload
	movq	224(%rsp), %rcx         # 8-byte Reload
	movl	$0, %eax
	je	.LBB18_75
	.align	16, 0x90
.LBB18_74:                              # %vector.body98.prol
                                        #   Parent Loop BB18_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	%xmm0, (%r13,%rax)
	movdqu	%xmm0, 16(%r13,%rax)
	addq	$32, %rax
	incq	%rcx
	jne	.LBB18_74
.LBB18_75:                              # %vector.body98.preheader.split
                                        #   in Loop: Header=BB18_14 Depth=1
	cmpq	$96, 240(%rsp)          # 8-byte Folded Reload
	movq	296(%rsp), %rcx         # 8-byte Reload
	jb	.LBB18_79
# BB#76:                                # %vector.body98.preheader.split.split
                                        #   in Loop: Header=BB18_14 Depth=1
	movq	296(%rsp), %rcx         # 8-byte Reload
	subq	%rax, %rcx
	movq	104(%rsp), %rdx         # 8-byte Reload
	leaq	(%rax,%rdx), %rax
	.align	16, 0x90
.LBB18_77:                              # %vector.body98
                                        #   Parent Loop BB18_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	%xmm0, -112(%rax)
	movdqu	%xmm0, -96(%rax)
	movdqu	%xmm0, -80(%rax)
	movdqu	%xmm0, -64(%rax)
	movdqu	%xmm0, -48(%rax)
	movdqu	%xmm0, -32(%rax)
	movdqu	%xmm0, -16(%rax)
	movdqu	%xmm0, (%rax)
	subq	$-128, %rax
	addq	$-128, %rcx
	jne	.LBB18_77
# BB#78:                                #   in Loop: Header=BB18_14 Depth=1
	movq	296(%rsp), %rcx         # 8-byte Reload
.LBB18_79:                              # %middle.block99
                                        #   in Loop: Header=BB18_14 Depth=1
	movq	%r15, %r9
	cmpq	%rcx, 280(%rsp)         # 8-byte Folded Reload
	movl	%r14d, %r15d
	je	.LBB18_16
# BB#80:                                # %for.body.i.preheader271
                                        #   in Loop: Header=BB18_14 Depth=1
	movl	%r8d, %eax
	subl	%ecx, %eax
	leaq	(%rcx,%r13), %rcx
	.align	16, 0x90
.LBB18_81:                              # %for.body.i
                                        #   Parent Loop BB18_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$0, (%rcx)
	incq	%rcx
	decl	%eax
	jne	.LBB18_81
	jmp	.LBB18_16
.LBB18_85:                              # %lips_delta_encode.exit.thread38
                                        #   in Loop: Header=BB18_14 Depth=1
	movq	%r15, %r9
	movb	$0, (%rbx)
	movl	$1, %eax
	movl	%r14d, %r15d
	jmp	.LBB18_121
.LBB18_84:                              # %for.end.13.thread.i
                                        #   in Loop: Header=BB18_14 Depth=1
	imulq	$-2139062143, %rax, %rax # imm = 0xFFFFFFFF80808081
	shrq	$32, %rax
	addl	%esi, %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	shrl	$7, %eax
	addl	%ecx, %eax
	imull	$255, %eax, %eax
	movl	%esi, %ecx
	subl	%eax, %ecx
	movb	%cl, (%rbx)
	xorl	%r12d, %r12d
	movq	%rbx, %rdx
	movl	292(%rsp), %r8d         # 4-byte Reload
.LBB18_90:                              # %for.body.19.lr.ph.i
                                        #   in Loop: Header=BB18_14 Depth=1
	leal	-1(%rsi), %r9d
	leaq	1(%r9), %rdi
	movabsq	$8589934560, %rax       # imm = 0x1FFFFFFE0
	leaq	16(%rax), %rax
	andq	%rdi, %rax
	movl	$0, %ebp
	je	.LBB18_96
# BB#91:                                # %vector.memcheck175
                                        #   in Loop: Header=BB18_14 Depth=1
	leaq	1(%rdx), %rcx
	leaq	(%r11,%r9), %rbp
	cmpq	%rbp, %rcx
	ja	.LBB18_93
# BB#92:                                # %vector.memcheck175
                                        #   in Loop: Header=BB18_14 Depth=1
	leaq	1(%rdx,%r9), %rcx
	cmpq	%r11, %rcx
	movl	$0, %ebp
	jae	.LBB18_96
.LBB18_93:                              # %vector.body156.preheader
                                        #   in Loop: Header=BB18_14 Depth=1
	movq	%rax, 128(%rsp)         # 8-byte Spill
	movq	%rdi, 144(%rsp)         # 8-byte Spill
	movq	%rsi, 160(%rsp)         # 8-byte Spill
	movl	%r14d, 396(%rsp)        # 4-byte Spill
	incq	%r9
	movabsq	$8589934576, %rax       # imm = 0x1FFFFFFF0
	andq	%rax, %r9
	movq	%r9, 368(%rsp)          # 8-byte Spill
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB18_94:                              # %vector.body156
                                        #   Parent Loop BB18_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	(%r11,%rbx), %xmm0
	movaps	%xmm0, 512(%rsp)
	movb	527(%rsp), %al
	movb	%al, 488(%rsp)          # 1-byte Spill
	movb	526(%rsp), %al
	movb	%al, 484(%rsp)          # 1-byte Spill
	movb	525(%rsp), %al
	movb	%al, 432(%rsp)          # 1-byte Spill
	movb	524(%rsp), %al
	movb	%al, 416(%rsp)          # 1-byte Spill
	movb	523(%rsp), %al
	movb	%al, 400(%rsp)          # 1-byte Spill
	movb	522(%rsp), %r15b
	movb	521(%rsp), %cl
	movb	520(%rsp), %al
	movb	519(%rsp), %r8b
	movb	518(%rsp), %r9b
	movb	517(%rsp), %sil
	movb	516(%rsp), %dil
	movb	515(%rsp), %r13b
	movb	514(%rsp), %r10b
	movq	%r11, %r14
	movb	513(%rsp), %r11b
	movb	512(%rsp), %bpl
	movb	%bpl, 1(%rdx,%rbx)
	movd	%rbx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movl	$1, %ebp
	movd	%rbp, %xmm1
	pslldq	$8, %xmm1               # xmm1 = zero,zero,zero,zero,zero,zero,zero,zero,xmm1[0,1,2,3,4,5,6,7]
	paddq	%xmm0, %xmm1
	pshufd	$78, %xmm1, %xmm1       # xmm1 = xmm1[2,3,0,1]
	movd	%xmm1, %rbp
	movb	%r11b, 1(%rdx,%rbp)
	movq	%r14, %r11
	movdqa	%xmm0, %xmm1
	movdqa	%xmm0, %xmm2
	movdqa	%xmm0, %xmm3
	movdqa	%xmm0, %xmm4
	movdqa	%xmm0, %xmm5
	movdqa	%xmm0, %xmm6
	paddq	%xmm13, %xmm0
	movd	%xmm0, %rbp
	movb	%r10b, 1(%rdx,%rbp)
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movd	%xmm0, %rbp
	movb	%r13b, 1(%rdx,%rbp)
	paddq	%xmm11, %xmm6
	movd	%xmm6, %rbp
	movb	%dil, 1(%rdx,%rbp)
	pshufd	$78, %xmm6, %xmm0       # xmm0 = xmm6[2,3,0,1]
	movd	%xmm0, %rdi
	movb	%sil, 1(%rdx,%rdi)
	paddq	%xmm10, %xmm5
	movd	%xmm5, %rsi
	movb	%r9b, 1(%rdx,%rsi)
	pshufd	$78, %xmm5, %xmm0       # xmm0 = xmm5[2,3,0,1]
	movd	%xmm0, %rsi
	movb	%r8b, 1(%rdx,%rsi)
	paddq	%xmm9, %xmm4
	movd	%xmm4, %rsi
	movb	%al, 1(%rdx,%rsi)
	pshufd	$78, %xmm4, %xmm0       # xmm0 = xmm4[2,3,0,1]
	movd	%xmm0, %rax
	movb	%cl, 1(%rdx,%rax)
	paddq	%xmm12, %xmm3
	movd	%xmm3, %rax
	movb	%r15b, 1(%rdx,%rax)
	pshufd	$78, %xmm3, %xmm0       # xmm0 = xmm3[2,3,0,1]
	movd	%xmm0, %rax
	movb	400(%rsp), %cl          # 1-byte Reload
	movb	%cl, 1(%rdx,%rax)
	paddq	%xmm8, %xmm2
	movd	%xmm2, %rax
	movb	416(%rsp), %cl          # 1-byte Reload
	movb	%cl, 1(%rdx,%rax)
	pshufd	$78, %xmm2, %xmm0       # xmm0 = xmm2[2,3,0,1]
	movd	%xmm0, %rax
	movb	432(%rsp), %cl          # 1-byte Reload
	movb	%cl, 1(%rdx,%rax)
	paddq	%xmm7, %xmm1
	movd	%xmm1, %rax
	movb	484(%rsp), %cl          # 1-byte Reload
	movb	%cl, 1(%rdx,%rax)
	pshufd	$78, %xmm1, %xmm0       # xmm0 = xmm1[2,3,0,1]
	movd	%xmm0, %rax
	movb	488(%rsp), %cl          # 1-byte Reload
	movb	%cl, 1(%rdx,%rax)
	addq	$16, %rbx
	cmpq	%rbx, 368(%rsp)         # 8-byte Folded Reload
	jne	.LBB18_94
# BB#95:                                #   in Loop: Header=BB18_14 Depth=1
	movq	128(%rsp), %rbp         # 8-byte Reload
	movq	320(%rsp), %rbx         # 8-byte Reload
	movq	472(%rsp), %r13         # 8-byte Reload
	movq	456(%rsp), %r15         # 8-byte Reload
	movl	396(%rsp), %r14d        # 4-byte Reload
	movl	292(%rsp), %r8d         # 4-byte Reload
	movq	160(%rsp), %rsi         # 8-byte Reload
	movq	144(%rsp), %rdi         # 8-byte Reload
.LBB18_96:                              # %middle.block157
                                        #   in Loop: Header=BB18_14 Depth=1
	cmpq	%rbp, %rdi
	jne	.LBB18_98
# BB#97:                                #   in Loop: Header=BB18_14 Depth=1
	movl	%esi, %edx
	jmp	.LBB18_104
.LBB18_98:                              # %for.body.19.i.preheader
                                        #   in Loop: Header=BB18_14 Depth=1
	movq	%rbx, %r9
	leal	1(%rsi), %edi
	movl	%ebp, %eax
	orl	$1, %eax
	movq	%rsi, %r10
	movl	%edi, %esi
	subl	%eax, %esi
	movl	%r10d, %ecx
	subl	%eax, %ecx
	testb	$3, %sil
	je	.LBB18_99
# BB#100:                               # %for.body.19.i.prol.preheader
                                        #   in Loop: Header=BB18_14 Depth=1
	leal	1(%rbp), %eax
	subl	%eax, %edi
	andl	$3, %edi
	negl	%edi
	movq	%r9, %rbx
	.align	16, 0x90
.LBB18_101:                             # %for.body.19.i.prol
                                        #   Parent Loop BB18_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	(%r11,%rbp), %al
	movb	%al, 1(%rdx,%rbp)
	incq	%rbp
	incl	%edi
	jne	.LBB18_101
	jmp	.LBB18_102
.LBB18_99:                              #   in Loop: Header=BB18_14 Depth=1
	movq	%r9, %rbx
.LBB18_102:                             # %for.body.19.i.preheader.split
                                        #   in Loop: Header=BB18_14 Depth=1
	cmpl	$3, %ecx
	jb	.LBB18_103
# BB#139:                               # %for.body.19.i.preheader.split.split
                                        #   in Loop: Header=BB18_14 Depth=1
	movl	%r10d, %ecx
	subl	%ebp, %ecx
	leaq	4(%rdx,%rbp), %rdx
	movq	64(%rsp), %rax          # 8-byte Reload
	leaq	(%rbp,%rax), %rdi
	.align	16, 0x90
.LBB18_140:                             # %for.body.19.i
                                        #   Parent Loop BB18_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	-3(%rdi), %al
	movb	%al, -3(%rdx)
	movb	-2(%rdi), %al
	movb	%al, -2(%rdx)
	movb	-1(%rdi), %al
	movb	%al, -1(%rdx)
	movb	(%rdi), %al
	movb	%al, (%rdx)
	addq	$4, %rdx
	addq	$4, %rdi
	addl	$-4, %ecx
	jne	.LBB18_140
.LBB18_103:                             #   in Loop: Header=BB18_14 Depth=1
	movl	%r10d, %edx
.LBB18_104:                             # %overflow.checked126
                                        #   in Loop: Header=BB18_14 Depth=1
	cmpq	$0, 296(%rsp)           # 8-byte Folded Reload
	movl	$0, %ecx
	je	.LBB18_112
# BB#105:                               # %vector.memcheck139
                                        #   in Loop: Header=BB18_14 Depth=1
	cmpb	$0, 271(%rsp)           # 1-byte Folded Reload
	movl	$0, %ecx
	jne	.LBB18_112
# BB#106:                               # %vector.body122.preheader
                                        #   in Loop: Header=BB18_14 Depth=1
	cmpq	$0, 112(%rsp)           # 8-byte Folded Reload
	movl	$0, %edi
	jne	.LBB18_108
# BB#107:                               # %vector.body122.prol
                                        #   in Loop: Header=BB18_14 Depth=1
	movdqu	(%r15), %xmm0
	movdqu	16(%r15), %xmm1
	movdqu	%xmm0, (%r13)
	movdqu	%xmm1, 16(%r13)
	movl	$32, %edi
.LBB18_108:                             # %vector.body122.preheader.split
                                        #   in Loop: Header=BB18_14 Depth=1
	cmpq	$0, 120(%rsp)           # 8-byte Folded Reload
	movq	296(%rsp), %rcx         # 8-byte Reload
	je	.LBB18_112
# BB#109:                               # %vector.body122.preheader.split.split
                                        #   in Loop: Header=BB18_14 Depth=1
	movq	296(%rsp), %rcx         # 8-byte Reload
	subq	%rdi, %rcx
	movq	56(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%rdi), %rsi
	movq	48(%rsp), %rax          # 8-byte Reload
	leaq	(%rdi,%rax), %rdi
	.align	16, 0x90
.LBB18_110:                             # %vector.body122
                                        #   Parent Loop BB18_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	-48(%rsi), %xmm0
	movups	-32(%rsi), %xmm1
	movups	%xmm0, -48(%rdi)
	movups	%xmm1, -32(%rdi)
	movdqu	-16(%rsi), %xmm0
	movdqu	(%rsi), %xmm1
	movdqu	%xmm0, -16(%rdi)
	movdqu	%xmm1, (%rdi)
	addq	$64, %rsi
	addq	$64, %rdi
	addq	$-64, %rcx
	jne	.LBB18_110
# BB#111:                               #   in Loop: Header=BB18_14 Depth=1
	movq	296(%rsp), %rcx         # 8-byte Reload
	.align	16, 0x90
.LBB18_112:                             # %middle.block123
                                        #   in Loop: Header=BB18_14 Depth=1
	movq	%r15, %r9
	cmpq	%rcx, 280(%rsp)         # 8-byte Folded Reload
	je	.LBB18_119
# BB#113:                               # %for.body.33.i.preheader
                                        #   in Loop: Header=BB18_14 Depth=1
	movl	%ecx, %eax
	orl	$1, %eax
	movl	%r8d, %edi
	subl	%eax, %edi
	movl	452(%rsp), %esi         # 4-byte Reload
	subl	%eax, %esi
	testb	$3, %dil
	je	.LBB18_116
# BB#114:                               # %for.body.33.i.prol.preheader
                                        #   in Loop: Header=BB18_14 Depth=1
	leal	1(%rcx), %eax
	movl	%r8d, %edi
	subl	%eax, %edi
	andl	$3, %edi
	negl	%edi
	.align	16, 0x90
.LBB18_115:                             # %for.body.33.i.prol
                                        #   Parent Loop BB18_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	(%r9,%rcx), %al
	movb	%al, (%r13,%rcx)
	incq	%rcx
	incl	%edi
	jne	.LBB18_115
.LBB18_116:                             # %for.body.33.i.preheader.split
                                        #   in Loop: Header=BB18_14 Depth=1
	cmpl	$3, %esi
	jb	.LBB18_119
# BB#117:                               # %for.body.33.i.preheader.split.split
                                        #   in Loop: Header=BB18_14 Depth=1
	movl	452(%rsp), %esi         # 4-byte Reload
	subl	%ecx, %esi
	movq	80(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%rcx), %rdi
	movq	72(%rsp), %rax          # 8-byte Reload
	leaq	(%rcx,%rax), %rcx
	.align	16, 0x90
.LBB18_118:                             # %for.body.33.i
                                        #   Parent Loop BB18_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	-3(%rcx), %al
	movb	%al, -3(%rdi)
	movb	-2(%rcx), %al
	movb	%al, -2(%rdi)
	movb	-1(%rcx), %al
	movb	%al, -1(%rdi)
	movb	(%rcx), %al
	movb	%al, (%rdi)
	addq	$4, %rdi
	addq	$4, %rcx
	addl	$-4, %esi
	jne	.LBB18_118
.LBB18_119:                             # %lips_delta_encode.exit
                                        #   in Loop: Header=BB18_14 Depth=1
	movl	%r8d, 292(%rsp)         # 4-byte Spill
	leal	1(%r12,%rdx), %eax
	cmpl	$2, %eax
	movl	%r14d, %r15d
	movl	452(%rsp), %r8d         # 4-byte Reload
	jne	.LBB18_120
	.align	16, 0x90
.LBB18_16:                              # %land.lhs.true
                                        #   in Loop: Header=BB18_14 Depth=1
	movl	$2, %eax
	movzbl	(%rbx), %ecx
	cmpl	$1, %ecx
	jne	.LBB18_121
# BB#17:                                # %if.then
                                        #   in Loop: Header=BB18_14 Depth=1
	cmpl	$0, 340(%rsp)           # 4-byte Folded Reload
	je	.LBB18_18
# BB#141:                               # %if.else
                                        #   in Loop: Header=BB18_14 Depth=1
	movl	336(%rsp), %eax         # 4-byte Reload
	movl	%r8d, %r14d
	movq	%r11, %rbp
	cmpl	$256, %eax              # imm = 0x100
	jl	.LBB18_143
# BB#142:                               # %for.body.lr.ph.i.12
                                        #   in Loop: Header=BB18_14 Depth=1
	movl	%eax, %esi
	movslq	%r15d, %rax
	movq	344(%rsp), %rcx         # 8-byte Reload
	movq	%rcx, %rdx
	movb	$1, (%rdx,%rax)
	movb	1(%rbx), %cl
	movb	%cl, 1(%rdx,%rax)
	addl	$2, %r15d
	incl	%esi
	movl	%esi, 336(%rsp)         # 4-byte Spill
	jmp	.LBB18_144
.LBB18_18:                              # %for.body.lr.ph.i.25
                                        #   in Loop: Header=BB18_14 Depth=1
	movl	%r8d, %r14d
	movq	%r11, %rbp
	movslq	%r15d, %rax
	movq	344(%rsp), %rcx         # 8-byte Reload
	movq	%rcx, %rdx
	movb	$1, (%rdx,%rax)
	movb	1(%rbx), %cl
	movb	%cl, 1(%rdx,%rax)
	addl	$2, %r15d
	movl	$1, 340(%rsp)           # 4-byte Folded Spill
	jmp	.LBB18_144
.LBB18_120:                             # %if.else.30
                                        #   in Loop: Header=BB18_14 Depth=1
	testl	%eax, %eax
	jle	.LBB18_138
	.align	16, 0x90
.LBB18_121:                             # %for.body.lr.ph.i
                                        #   in Loop: Header=BB18_14 Depth=1
	movl	%r8d, %r10d
	movslq	%r15d, %r8
	leal	-1(%rax), %esi
	leaq	1(%rsi), %rbp
	movq	%rbp, %rdx
	movabsq	$8589934560, %rcx       # imm = 0x1FFFFFFE0
	andq	%rcx, %rdx
	movl	$0, %edi
	je	.LBB18_130
# BB#122:                               # %vector.memcheck
                                        #   in Loop: Header=BB18_14 Depth=1
	movq	344(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%r8), %rdi
	movq	%rbx, %rcx
	leaq	(%rcx,%rsi), %rbx
	cmpq	%rbx, %rdi
	movq	%rcx, %rbx
	ja	.LBB18_124
# BB#123:                               # %vector.memcheck
                                        #   in Loop: Header=BB18_14 Depth=1
	leaq	(%r8,%rsi), %rdi
	movq	344(%rsp), %rcx         # 8-byte Reload
	leaq	(%rdi,%rcx), %rdi
	cmpq	%rbx, %rdi
	movl	$0, %edi
	jae	.LBB18_130
.LBB18_124:                             # %vector.body70.preheader
                                        #   in Loop: Header=BB18_14 Depth=1
	movq	%rbx, %r14
	leaq	1(%rsi), %rdi
	movabsq	$8589934560, %rcx       # imm = 0x1FFFFFFE0
	andq	%rcx, %rdi
	addq	$-32, %rdi
	movq	%rdi, %rcx
	shrq	$5, %rcx
	btq	$5, %rdi
	movl	$0, %ebx
	jb	.LBB18_126
# BB#125:                               # %vector.body70.prol
                                        #   in Loop: Header=BB18_14 Depth=1
	movdqu	(%r14), %xmm0
	movdqu	16(%r14), %xmm1
	movq	344(%rsp), %rdi         # 8-byte Reload
	movdqu	%xmm0, (%rdi,%r8)
	movdqu	%xmm1, 16(%rdi,%r8)
	movl	$32, %ebx
.LBB18_126:                             # %vector.body70.preheader.split
                                        #   in Loop: Header=BB18_14 Depth=1
	testq	%rcx, %rcx
	je	.LBB18_129
# BB#127:                               # %vector.body70.preheader.split.split
                                        #   in Loop: Header=BB18_14 Depth=1
	incq	%rsi
	movabsq	$8589934560, %rcx       # imm = 0x1FFFFFFE0
	andq	%rcx, %rsi
	subq	%rbx, %rsi
	movq	216(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rbx), %rdi
	addq	%r8, %rbx
	movq	208(%rsp), %rcx         # 8-byte Reload
	leaq	(%rbx,%rcx), %rbx
	.align	16, 0x90
.LBB18_128:                             # %vector.body70
                                        #   Parent Loop BB18_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	-48(%rdi), %xmm0
	movups	-32(%rdi), %xmm1
	movups	%xmm0, -48(%rbx)
	movups	%xmm1, -32(%rbx)
	movdqu	-16(%rdi), %xmm0
	movdqu	(%rdi), %xmm1
	movdqu	%xmm0, -16(%rbx)
	movdqu	%xmm1, (%rbx)
	addq	$64, %rdi
	addq	$64, %rbx
	addq	$-64, %rsi
	jne	.LBB18_128
.LBB18_129:                             #   in Loop: Header=BB18_14 Depth=1
	movq	%rdx, %rdi
	movq	%r14, %rbx
.LBB18_130:                             # %middle.block71
                                        #   in Loop: Header=BB18_14 Depth=1
	cmpq	%rdi, %rbp
	je	.LBB18_137
# BB#131:                               # %for.body.i.7.preheader
                                        #   in Loop: Header=BB18_14 Depth=1
	leal	1(%rax), %edx
	movl	%edi, %ecx
	orl	$1, %ecx
	movl	%edx, %ebp
	subl	%ecx, %ebp
	movl	%eax, %esi
	subl	%ecx, %esi
	testb	$3, %bpl
	je	.LBB18_134
# BB#132:                               # %for.body.i.7.prol.preheader
                                        #   in Loop: Header=BB18_14 Depth=1
	movq	344(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%r8), %rbp
	leal	1(%rdi), %ecx
	subl	%ecx, %edx
	andl	$3, %edx
	negl	%edx
	.align	16, 0x90
.LBB18_133:                             # %for.body.i.7.prol
                                        #   Parent Loop BB18_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	(%rbx,%rdi), %cl
	movb	%cl, (%rbp,%rdi)
	incq	%rdi
	incl	%edx
	jne	.LBB18_133
.LBB18_134:                             # %for.body.i.7.preheader.split
                                        #   in Loop: Header=BB18_14 Depth=1
	cmpl	$3, %esi
	jb	.LBB18_137
# BB#135:                               # %for.body.i.7.preheader.split.split
                                        #   in Loop: Header=BB18_14 Depth=1
	movl	%eax, %edx
	subl	%edi, %edx
	leaq	(%r8,%rdi), %rcx
	movq	256(%rsp), %rsi         # 8-byte Reload
	leaq	(%rcx,%rsi), %rcx
	movq	248(%rsp), %rsi         # 8-byte Reload
	leaq	(%rdi,%rsi), %rsi
	.align	16, 0x90
.LBB18_136:                             # %for.body.i.7
                                        #   Parent Loop BB18_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	-3(%rsi), %bl
	movb	%bl, -3(%rcx)
	movb	-2(%rsi), %bl
	movb	%bl, -2(%rcx)
	movb	-1(%rsi), %bl
	movb	%bl, -1(%rcx)
	movb	(%rsi), %bl
	movb	%bl, (%rcx)
	addq	$4, %rcx
	addq	$4, %rsi
	addl	$-4, %edx
	jne	.LBB18_136
.LBB18_137:                             #   in Loop: Header=BB18_14 Depth=1
	movl	%r10d, %r8d
.LBB18_138:                             # %lips_byte_cat.exit
                                        #   in Loop: Header=BB18_14 Depth=1
	movl	%r8d, %r14d
	movq	%r11, %rbp
	addl	%r15d, %eax
	movl	$0, 336(%rsp)           # 4-byte Folded Spill
	movl	$0, 340(%rsp)           # 4-byte Folded Spill
	movl	%eax, %r15d
.LBB18_144:                             # %for.inc.33
                                        #   in Loop: Header=BB18_14 Depth=1
	movq	360(%rsp), %rbx         # 8-byte Reload
	incl	%ebx
	cmpl	308(%rsp), %ebx         # 4-byte Folded Reload
	jl	.LBB18_14
.LBB18_145:                             # %for.end.35
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	92(%rsp), %esi          # 4-byte Reload
	movl	%esi, %eax
	divl	192(%rsp)               # 4-byte Folded Reload
	cmpl	$8, %esi
	movq	312(%rsp), %rdx         # 8-byte Reload
	cvttss2si	884(%rdx), %r9d
	movl	$10, %edx
	cmovbel	%ecx, %edx
	movl	%edx, 16(%rsp)
	movl	%eax, 8(%rsp)
	movq	200(%rsp), %rax         # 8-byte Reload
	movl	%eax, (%rsp)
	movl	$.L.str.85, %esi
	movl	$155, %edx
	xorl	%eax, %eax
	movq	96(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	movl	196(%rsp), %r8d         # 4-byte Reload
	movl	%r15d, %ecx
	callq	fprintf
	movslq	%r15d, %rdx
	movl	$1, %esi
	movq	344(%rsp), %rdi         # 8-byte Reload
	movq	%rbx, %rcx
	callq	fwrite
	movl	$133, %edi
	movq	%rbx, %rsi
	addq	$536, %rsp              # imm = 0x218
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	fputc                   # TAILCALL
.Lfunc_end18:
	.size	lips4c_write_raster, .Lfunc_end18-lips4c_write_raster
	.cfi_endproc

	.align	16, 0x90
	.type	move_cap,@function
move_cap:                               # @move_cap
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp120:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp121:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp122:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp123:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp124:
	.cfi_def_cfa_offset 48
.Ltmp125:
	.cfi_offset %rbx, -40
.Ltmp126:
	.cfi_offset %r14, -32
.Ltmp127:
	.cfi_offset %r15, -24
.Ltmp128:
	.cfi_offset %rbp, -16
	movl	%ecx, %r15d
	movl	%edx, %ebp
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	18500(%rbx), %eax
	movl	%eax, %ecx
	subl	%ebp, %ecx
	je	.LBB19_5
# BB#1:                                 # %if.then
	jge	.LBB19_3
# BB#2:                                 # %if.then.3
	movl	%ebp, %ecx
	subl	%eax, %ecx
	movl	$.L.str.72, %esi
	jmp	.LBB19_4
.LBB19_3:                               # %if.else
	movl	$.L.str.71, %esi
.LBB19_4:                               # %if.end
	movl	$155, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	%ebp, 18500(%rbx)
.LBB19_5:                               # %if.end.9
	movl	18504(%rbx), %eax
	movl	%eax, %ecx
	subl	%r15d, %ecx
	je	.LBB19_10
# BB#6:                                 # %if.then.11
	jge	.LBB19_8
# BB#7:                                 # %if.then.14
	movl	%r15d, %ecx
	subl	%eax, %ecx
	movl	$.L.str.70, %esi
	jmp	.LBB19_9
.LBB19_8:                               # %if.else.18
	movl	$.L.str.69, %esi
.LBB19_9:                               # %if.end.22
	movl	$155, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	%r15d, 18504(%rbx)
.LBB19_10:                              # %if.end.24
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end19:
	.size	move_cap, .Lfunc_end19-move_cap
	.cfi_endproc

	.type	lips2p_prn_procs,@object # @lips2p_prn_procs
	.data
	.align	8
lips2p_prn_procs:
	.quad	lips2p_open
	.quad	0
	.quad	0
	.quad	gdev_prn_output_page
	.quad	lips_close
	.quad	gx_default_b_w_map_rgb_color
	.quad	gx_default_b_w_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	lips_get_params
	.quad	lips_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
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
	.quad	gx_default_b_w_map_rgb_color
	.quad	gx_default_b_w_map_color_rgb
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
	.quad	gdev_prn_dev_spec_op
	.quad	0
	.quad	gx_default_get_profile
	.quad	gx_default_set_graphics_type_tag
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	lips2p_prn_procs, 584

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"lips2p"
	.size	.L.str, 7

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceGray"
	.size	.L.str.1, 11

	.type	gs_lips2p_device,@object # @gs_lips2p_device
	.data
	.globl	gs_lips2p_device
	.align	8
gs_lips2p_device:
	.long	18624                   # 0x48c0
	.zero	4
	.quad	lips2p_prn_procs
	.quad	.L.str
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.short	1                       # 0x1
	.byte	0                       # 0x0
	.zero	1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.1
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	1968                    # 0x7b0
	.long	2784                    # 0xae0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142135194              # float 5.904000e+02
	.long	1146145997              # float 8.352000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1131413504              # float 2.400000e+02
	.long	1131413504              # float 2.400000e+02
	.long	1131413504              # float 2.400000e+02
	.long	1131413504              # float 2.400000e+02
	.long	3258776052              # float -4.724409e+01
	.long	3258776052              # float -4.724409e+01
	.long	1096992139              # float 1.417323e+01
	.long	1096992139              # float 1.417323e+01
	.long	1096992139              # float 1.417323e+01
	.long	1096992139              # float 1.417323e+01
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.zero	584
	.zero	11240
	.quad	0
	.quad	lips2p_print_page_copies
	.quad	gx_default_create_buf_device
	.quad	gx_default_size_buf_device
	.quad	gx_default_setup_buf_device
	.quad	gx_default_destroy_buf_device
	.quad	gx_default_get_space_params
	.quad	gx_default_start_render_thread
	.quad	gx_default_open_render_device
	.quad	gx_default_close_render_device
	.quad	gx_default_buffer_page
	.zero	4096
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.quad	0
	.quad	0                       # 0x0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	32
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	584
	.zero	584
	.quad	lips2p_image_out
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	256                     # 0x100
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	4                       # 0x4
	.long	32                      # 0x20
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.asciz	"Ghostscript"
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.size	gs_lips2p_device, 18624

	.type	lips3_prn_procs,@object # @lips3_prn_procs
	.align	8
lips3_prn_procs:
	.quad	lips3_open
	.quad	0
	.quad	0
	.quad	gdev_prn_output_page
	.quad	lips_close
	.quad	gx_default_b_w_map_rgb_color
	.quad	gx_default_b_w_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	lips_get_params
	.quad	lips_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
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
	.quad	gx_default_b_w_map_rgb_color
	.quad	gx_default_b_w_map_color_rgb
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
	.quad	gdev_prn_dev_spec_op
	.quad	0
	.quad	gx_default_get_profile
	.quad	gx_default_set_graphics_type_tag
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	lips3_prn_procs, 584

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"lips3"
	.size	.L.str.2, 6

	.type	gs_lips3_device,@object # @gs_lips3_device
	.data
	.globl	gs_lips3_device
	.align	8
gs_lips3_device:
	.long	18624                   # 0x48c0
	.zero	4
	.quad	lips3_prn_procs
	.quad	.L.str.2
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.short	1                       # 0x1
	.byte	0                       # 0x0
	.zero	1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.1
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	2460                    # 0x99c
	.long	3480                    # 0xd98
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142135194              # float 5.904000e+02
	.long	1146145997              # float 8.352000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	3261872241              # float -5.905512e+01
	.long	3261872241              # float -5.905512e+01
	.long	1096992139              # float 1.417323e+01
	.long	1096992139              # float 1.417323e+01
	.long	1096992139              # float 1.417323e+01
	.long	1096992139              # float 1.417323e+01
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.zero	584
	.zero	11240
	.quad	0
	.quad	lips3_print_page_copies
	.quad	gx_default_create_buf_device
	.quad	gx_default_size_buf_device
	.quad	gx_default_setup_buf_device
	.quad	gx_default_destroy_buf_device
	.quad	gx_default_get_space_params
	.quad	gx_default_start_render_thread
	.quad	gx_default_open_render_device
	.quad	gx_default_close_render_device
	.quad	gx_default_buffer_page
	.zero	4096
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.quad	0
	.quad	0                       # 0x0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	32
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	584
	.zero	584
	.quad	lips2p_image_out
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	256                     # 0x100
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	4                       # 0x4
	.long	32                      # 0x20
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.asciz	"Ghostscript"
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.size	gs_lips3_device, 18624

	.type	bjc880j_prn_color_procs,@object # @bjc880j_prn_color_procs
	.align	8
bjc880j_prn_color_procs:
	.quad	bjc880j_open
	.quad	0
	.quad	0
	.quad	gdev_prn_output_page
	.quad	lips_close
	.quad	gx_default_b_w_map_rgb_color
	.quad	gx_default_b_w_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	lips4_get_params
	.quad	lips4_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
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
	.quad	gx_default_b_w_map_rgb_color
	.quad	gx_default_b_w_map_color_rgb
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
	.quad	gdev_prn_dev_spec_op
	.quad	0
	.quad	gx_default_get_profile
	.quad	gx_default_set_graphics_type_tag
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	bjc880j_prn_color_procs, 584

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"bjc880j"
	.size	.L.str.3, 8

	.type	gs_bjc880j_device,@object # @gs_bjc880j_device
	.data
	.globl	gs_bjc880j_device
	.align	8
gs_bjc880j_device:
	.long	18672                   # 0x48f0
	.zero	4
	.quad	bjc880j_prn_color_procs
	.quad	.L.str.3
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.short	1                       # 0x1
	.byte	0                       # 0x0
	.zero	1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.1
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	2952                    # 0xb88
	.long	4176                    # 0x1050
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142135194              # float 5.904000e+02
	.long	1146145997              # float 8.352000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1135869952              # float 3.600000e+02
	.long	1135869952              # float 3.600000e+02
	.long	1135869952              # float 3.600000e+02
	.long	1135869952              # float 3.600000e+02
	.long	3264068471              # float -7.086614e+01
	.long	3252864395              # float -2.834646e+01
	.long	1096992139              # float 1.417323e+01
	.long	1102408406              # float 2.267717e+01
	.long	1096992139              # float 1.417323e+01
	.long	1085631190              # float 5.669291e+00
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.zero	584
	.zero	11240
	.quad	0
	.quad	bjc880j_print_page_copies
	.quad	gx_default_create_buf_device
	.quad	gx_default_size_buf_device
	.quad	gx_default_setup_buf_device
	.quad	gx_default_destroy_buf_device
	.quad	gx_default_get_space_params
	.quad	gx_default_start_render_thread
	.quad	gx_default_open_render_device
	.quad	gx_default_close_render_device
	.quad	gx_default_buffer_page
	.zero	4096
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	0                       # 0x0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	32
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	584
	.zero	584
	.quad	lips4_image_out
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	256                     # 0x100
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	4                       # 0x4
	.long	32                      # 0x20
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.asciz	"Ghostscript"
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.asciz	"Default\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.zero	4
	.size	gs_bjc880j_device, 18672

	.type	lips4_prn_procs,@object # @lips4_prn_procs
	.align	8
lips4_prn_procs:
	.quad	lips4_open
	.quad	0
	.quad	0
	.quad	gdev_prn_output_page
	.quad	lips_close
	.quad	gx_default_b_w_map_rgb_color
	.quad	gx_default_b_w_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	lips4_get_params
	.quad	lips4_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
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
	.quad	gx_default_b_w_map_rgb_color
	.quad	gx_default_b_w_map_color_rgb
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
	.quad	gdev_prn_dev_spec_op
	.quad	0
	.quad	gx_default_get_profile
	.quad	gx_default_set_graphics_type_tag
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	lips4_prn_procs, 584

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"lips4"
	.size	.L.str.4, 6

	.type	gs_lips4_device,@object # @gs_lips4_device
	.data
	.globl	gs_lips4_device
	.align	8
gs_lips4_device:
	.long	18672                   # 0x48f0
	.zero	4
	.quad	lips4_prn_procs
	.quad	.L.str.4
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.short	1                       # 0x1
	.byte	0                       # 0x0
	.zero	1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.1
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	4920                    # 0x1338
	.long	6960                    # 0x1b30
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142135194              # float 5.904000e+02
	.long	1146145997              # float 8.352000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	3270260849              # float -1.181102e+02
	.long	3270260849              # float -1.181102e+02
	.long	1096992139              # float 1.417323e+01
	.long	1096992139              # float 1.417323e+01
	.long	1096992139              # float 1.417323e+01
	.long	1096992139              # float 1.417323e+01
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.zero	584
	.zero	11240
	.quad	0
	.quad	lips4_print_page_copies
	.quad	gx_default_create_buf_device
	.quad	gx_default_size_buf_device
	.quad	gx_default_setup_buf_device
	.quad	gx_default_destroy_buf_device
	.quad	gx_default_get_space_params
	.quad	gx_default_start_render_thread
	.quad	gx_default_open_render_device
	.quad	gx_default_close_render_device
	.quad	gx_default_buffer_page
	.zero	4096
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	0                       # 0x0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	32
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	584
	.zero	584
	.quad	lips4_image_out
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	256                     # 0x100
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	4                       # 0x4
	.long	32                      # 0x20
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.asciz	"Ghostscript"
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.asciz	"Default\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.zero	4
	.size	gs_lips4_device, 18672

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"%c0J%c"
	.size	.L.str.5, 7

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"%c%%-12345X@PJL SET LPARM : LIPS SW2 = OFF\n@PJL EOJ\n%c%%-12345X"
	.size	.L.str.6, 64

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Casset"
	.size	.L.str.7, 7

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"PJL"
	.size	.L.str.8, 4

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"TonerDensity"
	.size	.L.str.9, 13

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"TonerSaving"
	.size	.L.str.10, 12

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"UserName"
	.size	.L.str.11, 9

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Nup"
	.size	.L.str.12, 4

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"OutputFaceUp"
	.size	.L.str.13, 13

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"MediaType"
	.size	.L.str.14, 10

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"PlainPaper"
	.size	.L.str.15, 11

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"OHP"
	.size	.L.str.16, 4

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"TransparencyFilm"
	.size	.L.str.17, 17

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"GlossyFilm"
	.size	.L.str.18, 11

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"CardBoard"
	.size	.L.str.19, 10

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"BitsPerPixel"
	.size	.L.str.20, 13

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"(CompBuf)"
	.size	.L.str.21, 10

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"%c%%-12345X@PJL CJLMODE\n@PJL JOB\n"
	.size	.L.str.22, 34

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"%c%%-12345X@PJL CJLMODE\n"
	.size	.L.str.23, 25

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"@PJL SET RESOLUTION = SUPERFINE\n"
	.size	.L.str.24, 33

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"@PJL SET RESOLUTION = FINE\n"
	.size	.L.str.25, 28

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"@PJL SET RESOLUTION = QUICK\n"
	.size	.L.str.26, 29

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"@PJL SET TONER-DENSITY=%d\n"
	.size	.L.str.27, 27

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"@PJL SET TONER-SAVING="
	.size	.L.str.28, 23

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"ON\n"
	.size	.L.str.29, 4

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"OFF\n"
	.size	.L.str.30, 5

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"@PJL SET LPARM : LIPS SW2 = ON\n@PJL ENTER LANGUAGE = LIPS\n"
	.size	.L.str.31, 59

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"%c%%@"
	.size	.L.str.32, 6

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"%c21;%d;0Jlips2p:2.3.6%c"
	.size	.L.str.33, 25

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"%c31;%d;0Jlips3:2.3.6%c"
	.size	.L.str.34, 24

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"%c41;%d;0Jlips4:2.3.6%c"
	.size	.L.str.35, 24

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"%c41;%d;0Jbjc880j:2.3.6%c"
	.size	.L.str.36, 26

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"%c1\"p"
	.size	.L.str.37, 6

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"%c0\"p"
	.size	.L.str.38, 6

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"%c<"
	.size	.L.str.39, 4

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"%c11h"
	.size	.L.str.40, 6

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"%c3&z"
	.size	.L.str.41, 6

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"%c4&z"
	.size	.L.str.42, 6

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"%c2&z"
	.size	.L.str.43, 6

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"%c20't"
	.size	.L.str.44, 7

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"%c40't"
	.size	.L.str.45, 7

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"%c30't"
	.size	.L.str.46, 7

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"%c41't"
	.size	.L.str.47, 7

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Default"
	.size	.L.str.48, 8

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"%c10q"
	.size	.L.str.49, 6

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"%c%dq"
	.size	.L.str.50, 6

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"%c1q"
	.size	.L.str.51, 5

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"%c2 I"
	.size	.L.str.52, 6

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"%c80;%d;%dp"
	.size	.L.str.53, 12

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"%c81;%d;%dp"
	.size	.L.str.54, 12

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"%c%dp"
	.size	.L.str.55, 6

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"%c%dv"
	.size	.L.str.56, 6

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"%c11;12;12~"
	.size	.L.str.57, 12

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"%c%d1;;%do"
	.size	.L.str.58, 11

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"%c2;#x"
	.size	.L.str.59, 7

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"%c0;#w"
	.size	.L.str.60, 7

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"%c2;#w"
	.size	.L.str.61, 7

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"%c0;#x"
	.size	.L.str.62, 7

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"%c2y%s%c"
	.size	.L.str.63, 9

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"%c?2;3h"
	.size	.L.str.64, 8

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"%c?1;4;5;6l"
	.size	.L.str.65, 12

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"%c?7;%d I"
	.size	.L.str.66, 10

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"%c7 I"
	.size	.L.str.67, 6

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"%c%d G"
	.size	.L.str.68, 7

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"%c%dk"
	.size	.L.str.69, 6

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"%c%de"
	.size	.L.str.70, 6

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"%c%dj"
	.size	.L.str.71, 6

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"%c%da"
	.size	.L.str.72, 6

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"%c0;2t"
	.size	.L.str.73, 7

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"%c1;3t"
	.size	.L.str.74, 7

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"%c%dk\r"
	.size	.L.str.75, 7

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"\r%c"
	.size	.L.str.76, 4

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"(CompBuf2)"
	.size	.L.str.77, 11

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"%c{%c%da%c%de%c;;;3}"
	.size	.L.str.78, 21

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"%c%dj%c%dk"
	.size	.L.str.79, 11

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"lips4c_compress_output_page(pBuff)"
	.size	.L.str.80, 35

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"lips4c_compress_output_page(prevBuff)"
	.size	.L.str.81, 38

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"lips4c_compress_output_page(ComBuff)"
	.size	.L.str.82, 37

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"lips4c_compress_output_page(TotalBuff)"
	.size	.L.str.83, 39

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"lips_print_page"
	.size	.L.str.84, 16

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"%c%d;%d;%d;12;%d;;%d;%d;;1.r"
	.size	.L.str.85, 29

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"%c%d;%d;%d.r"
	.size	.L.str.86, 13

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"%c%d;%d;%d;9;%d.r"
	.size	.L.str.87, 18

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"%s"
	.size	.L.str.88, 3

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"%c{%c%da%c%de%c}"
	.size	.L.str.89, 17

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"%c%d;%d;%d;11;%d.r"
	.size	.L.str.90, 19

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"%c%d;%d;%d;10;%d.r"
	.size	.L.str.91, 19


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
