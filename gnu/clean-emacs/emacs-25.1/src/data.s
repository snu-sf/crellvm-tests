	.text
	.file	"data.bc"
	.globl	wrong_type_argument
	.align	16, 0x90
	.type	wrong_type_argument,@function
wrong_type_argument:                    # @wrong_type_argument
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
	movl	$1044, %eax             # imm = 0x414
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	xsignal2
.Lfunc_end0:
	.size	wrong_type_argument, .Lfunc_end0-wrong_type_argument
	.cfi_endproc

	.globl	pure_write_error
	.align	16, 0x90
	.type	pure_write_error,@function
pure_write_error:                       # @pure_write_error
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
	movl	$372, %eax              # imm = 0x174
	movq	%rdi, -8(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movabsq	$.L.str, %rdi
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	build_string
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	xsignal2
.Lfunc_end1:
	.size	pure_write_error, .Lfunc_end1-pure_write_error
	.cfi_endproc

	.globl	args_out_of_range
	.align	16, 0x90
	.type	args_out_of_range,@function
args_out_of_range:                      # @args_out_of_range
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
	subq	$16, %rsp
	movl	$177, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	callq	xsignal2
.Lfunc_end2:
	.size	args_out_of_range, .Lfunc_end2-args_out_of_range
	.cfi_endproc

	.globl	args_out_of_range_3
	.align	16, 0x90
	.type	args_out_of_range_3,@function
args_out_of_range_3:                    # @args_out_of_range_3
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
	subq	$32, %rsp
	movl	$177, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rax, %rdi
	callq	xsignal3
.Lfunc_end3:
	.size	args_out_of_range_3, .Lfunc_end3-args_out_of_range_3
	.cfi_endproc

	.globl	Feq
	.align	16, 0x90
	.type	Feq,@function
Feq:                                    # @Feq
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	cmpq	-24(%rbp), %rsi
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB4_3
.LBB4_2:                                # %if.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB4_3:                                # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	Feq, .Lfunc_end4-Feq
	.cfi_endproc

	.globl	Fnull
	.align	16, 0x90
	.type	Fnull,@function
Fnull:                                  # @Fnull
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
	subq	$32, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB5_2
# BB#1:                                 # %if.then
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB5_3
.LBB5_2:                                # %if.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB5_3:                                # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	Fnull, .Lfunc_end5-Fnull
	.cfi_endproc

	.globl	Ftype_of
	.align	16, 0x90
	.type	Ftype_of,@function
Ftype_of:                               # @Ftype_of
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%edi, %eax
	andl	$7, %eax
	movl	%eax, %edi
	movl	%edi, %eax
	subl	$7, %eax
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movl	%eax, -28(%rbp)         # 4-byte Spill
	ja	.LBB6_39
# BB#41:                                # %entry
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	.LJTI6_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB6_1:                                # %sw.bb
	movl	$557, %edi              # imm = 0x22D
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB6_40
.LBB6_2:                                # %sw.bb.1
	movl	$896, %edi              # imm = 0x380
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB6_40
.LBB6_3:                                # %sw.bb.3
	movl	$882, %edi              # imm = 0x372
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB6_40
.LBB6_4:                                # %sw.bb.5
	movl	$294, %edi              # imm = 0x126
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB6_40
.LBB6_5:                                # %sw.bb.7
	movq	-16(%rbp), %rdi
	callq	XMISCTYPE
	addl	$-24236, %eax           # imm = 0xFFFFFFFFFFFFA154
	movl	%eax, %edi
	subl	$4, %eax
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movl	%eax, -44(%rbp)         # 4-byte Spill
	ja	.LBB6_10
# BB#42:                                # %sw.bb.7
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	.LJTI6_1(,%rax,8), %rcx
	jmpq	*%rcx
.LBB6_6:                                # %sw.bb.9
	movl	$645, %edi              # imm = 0x285
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB6_40
.LBB6_7:                                # %sw.bb.11
	movl	$729, %edi              # imm = 0x2D9
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB6_40
.LBB6_8:                                # %sw.bb.13
	movl	$433, %edi              # imm = 0x1B1
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB6_40
.LBB6_9:                                # %sw.bb.15
	movl	$431, %edi              # imm = 0x1AF
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB6_40
.LBB6_10:                               # %sw.default
	callq	emacs_abort
.LBB6_11:                               # %sw.bb.17
	movq	-16(%rbp), %rdi
	callq	WINDOW_CONFIGURATIONP
	testb	$1, %al
	jne	.LBB6_12
	jmp	.LBB6_13
.LBB6_12:                               # %if.then
	movl	$1019, %edi             # imm = 0x3FB
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB6_40
.LBB6_13:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	PROCESSP
	testb	$1, %al
	jne	.LBB6_14
	jmp	.LBB6_15
.LBB6_14:                               # %if.then.21
	movl	$774, %edi              # imm = 0x306
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB6_40
.LBB6_15:                               # %if.end.23
	movq	-16(%rbp), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB6_16
	jmp	.LBB6_17
.LBB6_16:                               # %if.then.25
	movl	$1018, %edi             # imm = 0x3FA
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB6_40
.LBB6_17:                               # %if.end.27
	movq	-16(%rbp), %rdi
	callq	SUBRP
	testb	$1, %al
	jne	.LBB6_18
	jmp	.LBB6_19
.LBB6_18:                               # %if.then.29
	movl	$888, %edi              # imm = 0x378
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB6_40
.LBB6_19:                               # %if.end.31
	movq	-16(%rbp), %rdi
	callq	COMPILEDP
	testb	$1, %al
	jne	.LBB6_20
	jmp	.LBB6_21
.LBB6_20:                               # %if.then.33
	movl	$288, %edi              # imm = 0x120
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB6_40
.LBB6_21:                               # %if.end.35
	movq	-16(%rbp), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB6_22
	jmp	.LBB6_23
.LBB6_22:                               # %if.then.37
	movl	$219, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB6_40
.LBB6_23:                               # %if.end.39
	movq	-16(%rbp), %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB6_24
	jmp	.LBB6_25
.LBB6_24:                               # %if.then.41
	movl	$257, %edi              # imm = 0x101
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB6_40
.LBB6_25:                               # %if.end.43
	movq	-16(%rbp), %rdi
	callq	BOOL_VECTOR_P
	testb	$1, %al
	jne	.LBB6_26
	jmp	.LBB6_27
.LBB6_26:                               # %if.then.45
	movl	$206, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB6_40
.LBB6_27:                               # %if.end.47
	movq	-16(%rbp), %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB6_28
	jmp	.LBB6_29
.LBB6_28:                               # %if.then.49
	movl	$456, %edi              # imm = 0x1C8
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB6_40
.LBB6_29:                               # %if.end.51
	movq	-16(%rbp), %rdi
	callq	HASH_TABLE_P
	testb	$1, %al
	jne	.LBB6_30
	jmp	.LBB6_31
.LBB6_30:                               # %if.then.53
	movl	$509, %edi              # imm = 0x1FD
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB6_40
.LBB6_31:                               # %if.end.55
	movq	-16(%rbp), %rdi
	callq	FONT_SPEC_P
	testb	$1, %al
	jne	.LBB6_32
	jmp	.LBB6_33
.LBB6_32:                               # %if.then.57
	movl	$446, %edi              # imm = 0x1BE
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB6_40
.LBB6_33:                               # %if.end.59
	movq	-16(%rbp), %rdi
	callq	FONT_ENTITY_P
	testb	$1, %al
	jne	.LBB6_34
	jmp	.LBB6_35
.LBB6_34:                               # %if.then.61
	movl	$441, %edi              # imm = 0x1B9
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB6_40
.LBB6_35:                               # %if.end.63
	movq	-16(%rbp), %rdi
	callq	FONT_OBJECT_P
	testb	$1, %al
	jne	.LBB6_36
	jmp	.LBB6_37
.LBB6_36:                               # %if.then.65
	movl	$443, %edi              # imm = 0x1BB
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB6_40
.LBB6_37:                               # %if.end.67
	movl	$993, %edi              # imm = 0x3E1
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB6_40
.LBB6_38:                               # %sw.bb.69
	movl	$433, %edi              # imm = 0x1B1
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB6_40
.LBB6_39:                               # %sw.default.71
	callq	emacs_abort
.LBB6_40:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	Ftype_of, .Lfunc_end6-Ftype_of
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI6_0:
	.quad	.LBB6_2
	.quad	.LBB6_5
	.quad	.LBB6_1
	.quad	.LBB6_4
	.quad	.LBB6_3
	.quad	.LBB6_11
	.quad	.LBB6_1
	.quad	.LBB6_38
.LJTI6_1:
	.quad	.LBB6_6
	.quad	.LBB6_7
	.quad	.LBB6_10
	.quad	.LBB6_9
	.quad	.LBB6_8

	.text
	.globl	Fconsp
	.align	16, 0x90
	.type	Fconsp,@function
Fconsp:                                 # @Fconsp
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
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$3, %eax
	jne	.LBB7_2
# BB#1:                                 # %if.then
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB7_3
.LBB7_2:                                # %if.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB7_3:                                # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	Fconsp, .Lfunc_end7-Fconsp
	.cfi_endproc

	.globl	Fatom
	.align	16, 0x90
	.type	Fatom,@function
Fatom:                                  # @Fatom
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
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$3, %eax
	jne	.LBB8_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB8_3
.LBB8_2:                                # %if.end
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB8_3:                                # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	Fatom, .Lfunc_end8-Fatom
	.cfi_endproc

	.globl	Flistp
	.align	16, 0x90
	.type	Flistp,@function
Flistp:                                 # @Flistp
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$3, %eax
	je	.LBB9_2
# BB#1:                                 # %lor.lhs.false
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB9_3
.LBB9_2:                                # %if.then
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB9_4
.LBB9_3:                                # %if.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB9_4:                                # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	Flistp, .Lfunc_end9-Flistp
	.cfi_endproc

	.globl	Fnlistp
	.align	16, 0x90
	.type	Fnlistp,@function
Fnlistp:                                # @Fnlistp
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$3, %eax
	je	.LBB10_2
# BB#1:                                 # %lor.lhs.false
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB10_3
.LBB10_2:                               # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB10_4
.LBB10_3:                               # %if.end
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB10_4:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	Fnlistp, .Lfunc_end10-Fnlistp
	.cfi_endproc

	.globl	Fsymbolp
	.align	16, 0x90
	.type	Fsymbolp,@function
Fsymbolp:                               # @Fsymbolp
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
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$0, %eax
	jne	.LBB11_2
# BB#1:                                 # %if.then
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB11_3
.LBB11_2:                               # %if.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB11_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	Fsymbolp, .Lfunc_end11-Fsymbolp
	.cfi_endproc

	.globl	Fkeywordp
	.align	16, 0x90
	.type	Fkeywordp,@function
Fkeywordp:                              # @Fkeywordp
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
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$0, %eax
	jne	.LBB12_4
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	SYMBOL_NAME
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	SREF
	movzbl	%al, %ecx
	cmpl	$58, %ecx
	jne	.LBB12_4
# BB#2:                                 # %land.lhs.true.6
	movq	-16(%rbp), %rdi
	callq	SYMBOL_INTERNED_IN_INITIAL_OBARRAY_P
	testb	$1, %al
	jne	.LBB12_3
	jmp	.LBB12_4
.LBB12_3:                               # %if.then
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB12_5
.LBB12_4:                               # %if.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB12_5:                               # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	Fkeywordp, .Lfunc_end12-Fkeywordp
	.cfi_endproc

	.globl	Fvectorp
	.align	16, 0x90
	.type	Fvectorp,@function
Fvectorp:                               # @Fvectorp
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
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB13_1
	jmp	.LBB13_2
.LBB13_1:                               # %if.then
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB13_3
.LBB13_2:                               # %if.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB13_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	Fvectorp, .Lfunc_end13-Fvectorp
	.cfi_endproc

	.globl	Fstringp
	.align	16, 0x90
	.type	Fstringp,@function
Fstringp:                               # @Fstringp
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
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB14_1
	jmp	.LBB14_2
.LBB14_1:                               # %if.then
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB14_3
.LBB14_2:                               # %if.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB14_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	Fstringp, .Lfunc_end14-Fstringp
	.cfi_endproc

	.globl	Fmultibyte_string_p
	.align	16, 0x90
	.type	Fmultibyte_string_p,@function
Fmultibyte_string_p:                    # @Fmultibyte_string_p
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
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB15_1
	jmp	.LBB15_3
.LBB15_1:                               # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	STRING_MULTIBYTE
	testb	$1, %al
	jne	.LBB15_2
	jmp	.LBB15_3
.LBB15_2:                               # %if.then
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB15_4
.LBB15_3:                               # %if.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB15_4:                               # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	Fmultibyte_string_p, .Lfunc_end15-Fmultibyte_string_p
	.cfi_endproc

	.globl	Fchar_table_p
	.align	16, 0x90
	.type	Fchar_table_p,@function
Fchar_table_p:                          # @Fchar_table_p
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
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB16_1
	jmp	.LBB16_2
.LBB16_1:                               # %if.then
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB16_3
.LBB16_2:                               # %if.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB16_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	Fchar_table_p, .Lfunc_end16-Fchar_table_p
	.cfi_endproc

	.globl	Fvector_or_char_table_p
	.align	16, 0x90
	.type	Fvector_or_char_table_p,@function
Fvector_or_char_table_p:                # @Fvector_or_char_table_p
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
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB17_2
# BB#1:                                 # %lor.lhs.false
	movq	-16(%rbp), %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB17_2
	jmp	.LBB17_3
.LBB17_2:                               # %if.then
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB17_4
.LBB17_3:                               # %if.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB17_4:                               # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	Fvector_or_char_table_p, .Lfunc_end17-Fvector_or_char_table_p
	.cfi_endproc

	.globl	Fbool_vector_p
	.align	16, 0x90
	.type	Fbool_vector_p,@function
Fbool_vector_p:                         # @Fbool_vector_p
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
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	BOOL_VECTOR_P
	testb	$1, %al
	jne	.LBB18_1
	jmp	.LBB18_2
.LBB18_1:                               # %if.then
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB18_3
.LBB18_2:                               # %if.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB18_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	Fbool_vector_p, .Lfunc_end18-Fbool_vector_p
	.cfi_endproc

	.globl	Farrayp
	.align	16, 0x90
	.type	Farrayp,@function
Farrayp:                                # @Farrayp
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
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	ARRAYP
	testb	$1, %al
	jne	.LBB19_1
	jmp	.LBB19_2
.LBB19_1:                               # %if.then
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB19_3
.LBB19_2:                               # %if.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB19_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	Farrayp, .Lfunc_end19-Farrayp
	.cfi_endproc

	.globl	Fsequencep
	.align	16, 0x90
	.type	Fsequencep,@function
Fsequencep:                             # @Fsequencep
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$3, %eax
	je	.LBB20_3
# BB#1:                                 # %lor.lhs.false
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB20_3
# BB#2:                                 # %lor.lhs.false.4
	movq	-16(%rbp), %rdi
	callq	ARRAYP
	testb	$1, %al
	jne	.LBB20_3
	jmp	.LBB20_4
.LBB20_3:                               # %if.then
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB20_5
.LBB20_4:                               # %if.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB20_5:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	Fsequencep, .Lfunc_end20-Fsequencep
	.cfi_endproc

	.globl	Fbufferp
	.align	16, 0x90
	.type	Fbufferp,@function
Fbufferp:                               # @Fbufferp
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
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB21_1
	jmp	.LBB21_2
.LBB21_1:                               # %if.then
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB21_3
.LBB21_2:                               # %if.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB21_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	Fbufferp, .Lfunc_end21-Fbufferp
	.cfi_endproc

	.globl	Fmarkerp
	.align	16, 0x90
	.type	Fmarkerp,@function
Fmarkerp:                               # @Fmarkerp
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
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$1, %eax
	jne	.LBB22_3
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB22_3
# BB#2:                                 # %if.then
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB22_4
.LBB22_3:                               # %if.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB22_4:                               # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	Fmarkerp, .Lfunc_end22-Fmarkerp
	.cfi_endproc

	.globl	Fsubrp
	.align	16, 0x90
	.type	Fsubrp,@function
Fsubrp:                                 # @Fsubrp
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
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	SUBRP
	testb	$1, %al
	jne	.LBB23_1
	jmp	.LBB23_2
.LBB23_1:                               # %if.then
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB23_3
.LBB23_2:                               # %if.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB23_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	Fsubrp, .Lfunc_end23-Fsubrp
	.cfi_endproc

	.globl	Fbyte_code_function_p
	.align	16, 0x90
	.type	Fbyte_code_function_p,@function
Fbyte_code_function_p:                  # @Fbyte_code_function_p
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
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	COMPILEDP
	testb	$1, %al
	jne	.LBB24_1
	jmp	.LBB24_2
.LBB24_1:                               # %if.then
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB24_3
.LBB24_2:                               # %if.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB24_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	Fbyte_code_function_p, .Lfunc_end24-Fbyte_code_function_p
	.cfi_endproc

	.globl	Fchar_or_string_p
	.align	16, 0x90
	.type	Fchar_or_string_p,@function
Fchar_or_string_p:                      # @Fchar_or_string_p
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp75:
	.cfi_def_cfa_offset 16
.Ltmp76:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp77:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB25_1
	jmp	.LBB25_2
.LBB25_1:                               # %land.lhs.true
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jle	.LBB25_3
.LBB25_2:                               # %lor.lhs.false
	movq	-16(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB25_3
	jmp	.LBB25_4
.LBB25_3:                               # %if.then
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB25_5
.LBB25_4:                               # %if.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB25_5:                               # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	Fchar_or_string_p, .Lfunc_end25-Fchar_or_string_p
	.cfi_endproc

	.globl	Fintegerp
	.align	16, 0x90
	.type	Fintegerp,@function
Fintegerp:                              # @Fintegerp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp78:
	.cfi_def_cfa_offset 16
.Ltmp79:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp80:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	andl	$-5, %eax
	cmpl	$2, %eax
	jne	.LBB26_2
# BB#1:                                 # %if.then
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB26_3
.LBB26_2:                               # %if.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB26_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	Fintegerp, .Lfunc_end26-Fintegerp
	.cfi_endproc

	.globl	Finteger_or_marker_p
	.align	16, 0x90
	.type	Finteger_or_marker_p,@function
Finteger_or_marker_p:                   # @Finteger_or_marker_p
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp81:
	.cfi_def_cfa_offset 16
.Ltmp82:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp83:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$1, %eax
	jne	.LBB27_2
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	je	.LBB27_3
.LBB27_2:                               # %lor.lhs.false
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB27_4
.LBB27_3:                               # %if.then
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB27_5
.LBB27_4:                               # %if.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB27_5:                               # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	Finteger_or_marker_p, .Lfunc_end27-Finteger_or_marker_p
	.cfi_endproc

	.globl	Fnatnump
	.align	16, 0x90
	.type	Fnatnump,@function
Fnatnump:                               # @Fnatnump
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp84:
	.cfi_def_cfa_offset 16
.Ltmp85:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp86:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB28_1
	jmp	.LBB28_2
.LBB28_1:                               # %if.then
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB28_3
.LBB28_2:                               # %if.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB28_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	Fnatnump, .Lfunc_end28-Fnatnump
	.cfi_endproc

	.globl	Fnumberp
	.align	16, 0x90
	.type	Fnumberp,@function
Fnumberp:                               # @Fnumberp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp87:
	.cfi_def_cfa_offset 16
.Ltmp88:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp89:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	NUMBERP
	testb	$1, %al
	jne	.LBB29_1
	jmp	.LBB29_2
.LBB29_1:                               # %if.then
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB29_3
.LBB29_2:                               # %if.else
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB29_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	Fnumberp, .Lfunc_end29-Fnumberp
	.cfi_endproc

	.globl	Fnumber_or_marker_p
	.align	16, 0x90
	.type	Fnumber_or_marker_p,@function
Fnumber_or_marker_p:                    # @Fnumber_or_marker_p
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp90:
	.cfi_def_cfa_offset 16
.Ltmp91:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp92:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	NUMBERP
	testb	$1, %al
	jne	.LBB30_3
# BB#1:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB30_4
# BB#2:                                 # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB30_4
.LBB30_3:                               # %if.then
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB30_5
.LBB30_4:                               # %if.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB30_5:                               # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	Fnumber_or_marker_p, .Lfunc_end30-Fnumber_or_marker_p
	.cfi_endproc

	.globl	Ffloatp
	.align	16, 0x90
	.type	Ffloatp,@function
Ffloatp:                                # @Ffloatp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp93:
	.cfi_def_cfa_offset 16
.Ltmp94:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp95:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$7, %eax
	jne	.LBB31_2
# BB#1:                                 # %if.then
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB31_3
.LBB31_2:                               # %if.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB31_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	Ffloatp, .Lfunc_end31-Ffloatp
	.cfi_endproc

	.globl	Fcar
	.align	16, 0x90
	.type	Fcar,@function
Fcar:                                   # @Fcar
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp96:
	.cfi_def_cfa_offset 16
.Ltmp97:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp98:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	CAR
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	Fcar, .Lfunc_end32-Fcar
	.cfi_endproc

	.globl	Fcar_safe
	.align	16, 0x90
	.type	Fcar_safe,@function
Fcar_safe:                              # @Fcar_safe
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp99:
	.cfi_def_cfa_offset 16
.Ltmp100:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp101:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	CAR_SAFE
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	Fcar_safe, .Lfunc_end33-Fcar_safe
	.cfi_endproc

	.globl	Fcdr
	.align	16, 0x90
	.type	Fcdr,@function
Fcdr:                                   # @Fcdr
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp102:
	.cfi_def_cfa_offset 16
.Ltmp103:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp104:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	CDR
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	Fcdr, .Lfunc_end34-Fcdr
	.cfi_endproc

	.globl	Fcdr_safe
	.align	16, 0x90
	.type	Fcdr_safe,@function
Fcdr_safe:                              # @Fcdr_safe
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp105:
	.cfi_def_cfa_offset 16
.Ltmp106:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp107:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	CDR_SAFE
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	Fcdr_safe, .Lfunc_end35-Fcdr_safe
	.cfi_endproc

	.globl	Fsetcar
	.align	16, 0x90
	.type	Fsetcar,@function
Fsetcar:                                # @Fsetcar
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp108:
	.cfi_def_cfa_offset 16
.Ltmp109:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp110:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_CONS
	movabsq	$pure, %rsi
	movq	-8(%rbp), %rdi
	subq	$3, %rdi
	subq	%rsi, %rdi
	cmpq	$3000000, %rdi          # imm = 0x2DC6C0
	ja	.LBB36_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rdi
	callq	pure_write_error
.LBB36_2:                               # %cond.false
	jmp	.LBB36_3
.LBB36_3:                               # %cond.end
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	XSETCAR
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	Fsetcar, .Lfunc_end36-Fsetcar
	.cfi_endproc

	.globl	Fsetcdr
	.align	16, 0x90
	.type	Fsetcdr,@function
Fsetcdr:                                # @Fsetcdr
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp111:
	.cfi_def_cfa_offset 16
.Ltmp112:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp113:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_CONS
	movabsq	$pure, %rsi
	movq	-8(%rbp), %rdi
	subq	$3, %rdi
	subq	%rsi, %rdi
	cmpq	$3000000, %rdi          # imm = 0x2DC6C0
	ja	.LBB37_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rdi
	callq	pure_write_error
.LBB37_2:                               # %cond.false
	jmp	.LBB37_3
.LBB37_3:                               # %cond.end
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	XSETCDR
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	Fsetcdr, .Lfunc_end37-Fsetcdr
	.cfi_endproc

	.globl	Fboundp
	.align	16, 0x90
	.type	Fboundp,@function
Fboundp:                                # @Fboundp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp114:
	.cfi_def_cfa_offset 16
.Ltmp115:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp116:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$0, %eax
	jne	.LBB38_2
# BB#1:                                 # %cond.true
	jmp	.LBB38_3
.LBB38_2:                               # %cond.false
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB38_3:                               # %cond.end
	movabsq	$lispsym, %rax
	movq	-16(%rbp), %rcx
	subq	$0, %rcx
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
.LBB38_4:                               # %start
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movzwl	(%rax), %ecx
	shrl	%ecx
	andl	$7, %ecx
	decl	%ecx
	movl	%ecx, %eax
	subl	$3, %ecx
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	ja	.LBB38_12
# BB#18:                                # %start
                                        #   in Loop: Header=BB38_4 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	.LJTI38_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB38_5:                               # %sw.bb
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB38_13
.LBB38_6:                               # %sw.bb.2
                                        #   in Loop: Header=BB38_4 Depth=1
	movq	-32(%rbp), %rdi
	callq	indirect_variable
	movq	%rax, -32(%rbp)
	jmp	.LBB38_4
.LBB38_7:                               # %sw.bb.4
	movq	-32(%rbp), %rdi
	callq	SYMBOL_BLV
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB38_9
# BB#8:                                 # %if.then
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB38_17
.LBB38_9:                               # %if.else
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	swap_in_symval_forwarding
	movq	-40(%rbp), %rdi
	callq	blv_value
	movq	%rax, -24(%rbp)
# BB#10:                                # %if.end
	jmp	.LBB38_13
.LBB38_11:                              # %sw.bb.8
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB38_17
.LBB38_12:                              # %sw.default
	callq	emacs_abort
.LBB38_13:                              # %sw.epilog
	movl	$957, %edi              # imm = 0x3BD
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB38_15
# BB#14:                                # %cond.true.13
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB38_16
.LBB38_15:                              # %cond.false.15
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB38_16:                              # %cond.end.17
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, -8(%rbp)
.LBB38_17:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	Fboundp, .Lfunc_end38-Fboundp
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI38_0:
	.quad	.LBB38_6
	.quad	.LBB38_7
	.quad	.LBB38_11
	.quad	.LBB38_5

	.text
	.globl	indirect_variable
	.align	16, 0x90
	.type	indirect_variable,@function
indirect_variable:                      # @indirect_variable
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp117:
	.cfi_def_cfa_offset 16
.Ltmp118:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp119:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	%rdi, -24(%rbp)
.LBB39_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movw	(%rax), %cx
	shrw	$1, %cx
	andw	$7, %cx
	movzwl	%cx, %edx
	cmpl	$1, %edx
	jne	.LBB39_7
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB39_1 Depth=1
	movq	-24(%rbp), %rdi
	callq	SYMBOL_ALIAS
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movw	(%rax), %cx
	shrw	$1, %cx
	andw	$7, %cx
	movzwl	%cx, %edx
	cmpl	$1, %edx
	je	.LBB39_4
# BB#3:                                 # %if.then
	jmp	.LBB39_7
.LBB39_4:                               # %if.end
                                        #   in Loop: Header=BB39_1 Depth=1
	movq	-24(%rbp), %rdi
	callq	SYMBOL_ALIAS
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	SYMBOL_ALIAS
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB39_6
# BB#5:                                 # %if.then.9
	movq	-8(%rbp), %rdi
	callq	make_lisp_symbol
	movl	$313, %edi              # imm = 0x139
	movq	%rax, -32(%rbp)
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	xsignal1
.LBB39_6:                               # %if.end.12
                                        #   in Loop: Header=BB39_1 Depth=1
	jmp	.LBB39_1
.LBB39_7:                               # %while.end
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	indirect_variable, .Lfunc_end39-indirect_variable
	.cfi_endproc

	.align	16, 0x90
	.type	swap_in_symval_forwarding,@function
swap_in_symval_forwarding:              # @swap_in_symval_forwarding
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp120:
	.cfi_def_cfa_offset 16
.Ltmp121:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp122:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	16(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movl	%eax, %edi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB40_4
# BB#1:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movb	(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB40_3
# BB#2:                                 # %cond.true
	movq	selected_frame, %rax
	cmpq	-24(%rbp), %rax
	je	.LBB40_14
	jmp	.LBB40_4
.LBB40_3:                               # %cond.false
	movq	current_buffer, %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	XBUFFER
	movq	-48(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	je	.LBB40_14
.LBB40_4:                               # %if.then
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB40_6
# BB#5:                                 # %if.then.4
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	do_symval_forwarding
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	set_blv_value
.LBB40_6:                               # %if.end
	movq	-8(%rbp), %rdi
	callq	make_lisp_symbol
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movb	(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB40_8
# BB#7:                                 # %if.then.12
	movq	-32(%rbp), %rdi
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	64(%rax), %rsi
	callq	assq_no_quit
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	selected_frame, %rsi
	callq	set_blv_where
	jmp	.LBB40_9
.LBB40_8:                               # %if.else
	movq	-32(%rbp), %rdi
	movq	current_buffer, %rax
	movq	72(%rax), %rsi
	callq	assq_no_quit
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	Fcurrent_buffer
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	set_blv_where
.LBB40_9:                               # %if.end.16
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	movq	-16(%rbp), %rax
	andb	$1, %dl
	movb	(%rax), %sil
	movb	%dl, %r8b
	shlb	$2, %r8b
	andb	$-5, %sil
	orb	%r8b, %sil
	movb	%sil, (%rax)
	testb	$1, %dl
	jne	.LBB40_11
# BB#10:                                # %if.then.22
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB40_11:                              # %if.end.23
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	set_blv_valcell
	movq	-16(%rbp), %rsi
	cmpq	$0, 8(%rsi)
	je	.LBB40_13
# BB#12:                                # %if.then.26
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	blv_value
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	store_symval_forwarding
.LBB40_13:                              # %if.end.29
	jmp	.LBB40_14
.LBB40_14:                              # %if.end.30
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	swap_in_symval_forwarding, .Lfunc_end40-swap_in_symval_forwarding
	.cfi_endproc

	.align	16, 0x90
	.type	blv_value,@function
blv_value:                              # @blv_value
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp123:
	.cfi_def_cfa_offset 16
.Ltmp124:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp125:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	subq	$3, %rdi
	movq	8(%rdi), %rax
	popq	%rbp
	retq
.Lfunc_end41:
	.size	blv_value, .Lfunc_end41-blv_value
	.cfi_endproc

	.globl	Ffboundp
	.align	16, 0x90
	.type	Ffboundp,@function
Ffboundp:                               # @Ffboundp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp126:
	.cfi_def_cfa_offset 16
.Ltmp127:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp128:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$0, %eax
	jne	.LBB42_2
# BB#1:                                 # %cond.true
	jmp	.LBB42_3
.LBB42_2:                               # %cond.false
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB42_3:                               # %cond.end
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	subq	$0, %rax
	movq	lispsym+24(,%rax), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB42_5
# BB#4:                                 # %cond.true.5
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB42_6
.LBB42_5:                               # %cond.false.7
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB42_6:                               # %cond.end.9
	movq	-32(%rbp), %rax         # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end42:
	.size	Ffboundp, .Lfunc_end42-Ffboundp
	.cfi_endproc

	.globl	Fmakunbound
	.align	16, 0x90
	.type	Fmakunbound,@function
Fmakunbound:                            # @Fmakunbound
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp129:
	.cfi_def_cfa_offset 16
.Ltmp130:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp131:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$0, %eax
	jne	.LBB43_2
# BB#1:                                 # %cond.true
	jmp	.LBB43_3
.LBB43_2:                               # %cond.false
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB43_3:                               # %cond.end
	movq	-8(%rbp), %rax
	subq	$0, %rax
	movw	lispsym(,%rax), %cx
	shrw	$4, %cx
	andw	$3, %cx
	movzwl	%cx, %edx
	cmpl	$0, %edx
	je	.LBB43_5
# BB#4:                                 # %if.then
	movl	$855, %edi              # imm = 0x357
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	xsignal1
.LBB43_5:                               # %if.end
	movl	$957, %edi              # imm = 0x3BD
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fset
	movq	-8(%rbp), %rsi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	movq	%rsi, %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end43:
	.size	Fmakunbound, .Lfunc_end43-Fmakunbound
	.cfi_endproc

	.globl	Fset
	.align	16, 0x90
	.type	Fset,@function
Fset:                                   # @Fset
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp132:
	.cfi_def_cfa_offset 16
.Ltmp133:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp134:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	set_internal
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end44:
	.size	Fset, .Lfunc_end44-Fset
	.cfi_endproc

	.globl	Ffmakunbound
	.align	16, 0x90
	.type	Ffmakunbound,@function
Ffmakunbound:                           # @Ffmakunbound
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp135:
	.cfi_def_cfa_offset 16
.Ltmp136:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp137:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$0, %eax
	jne	.LBB45_2
# BB#1:                                 # %cond.true
	jmp	.LBB45_3
.LBB45_2:                               # %cond.false
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB45_3:                               # %cond.end
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB45_5
# BB#4:                                 # %lor.lhs.false
	movl	$901, %edi              # imm = 0x385
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB45_6
.LBB45_5:                               # %if.then
	movl	$855, %edi              # imm = 0x357
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	xsignal1
.LBB45_6:                               # %if.end
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	set_symbol_function
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end45:
	.size	Ffmakunbound, .Lfunc_end45-Ffmakunbound
	.cfi_endproc

	.globl	Fsymbol_function
	.align	16, 0x90
	.type	Fsymbol_function,@function
Fsymbol_function:                       # @Fsymbol_function
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp138:
	.cfi_def_cfa_offset 16
.Ltmp139:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp140:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$0, %eax
	jne	.LBB46_2
# BB#1:                                 # %cond.true
	jmp	.LBB46_3
.LBB46_2:                               # %cond.false
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB46_3:                               # %cond.end
	movq	-8(%rbp), %rax
	subq	$0, %rax
	movq	lispsym+24(,%rax), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end46:
	.size	Fsymbol_function, .Lfunc_end46-Fsymbol_function
	.cfi_endproc

	.globl	Fsymbol_plist
	.align	16, 0x90
	.type	Fsymbol_plist,@function
Fsymbol_plist:                          # @Fsymbol_plist
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp141:
	.cfi_def_cfa_offset 16
.Ltmp142:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp143:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$0, %eax
	jne	.LBB47_2
# BB#1:                                 # %cond.true
	jmp	.LBB47_3
.LBB47_2:                               # %cond.false
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB47_3:                               # %cond.end
	movq	-8(%rbp), %rax
	subq	$0, %rax
	movq	lispsym+32(,%rax), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end47:
	.size	Fsymbol_plist, .Lfunc_end47-Fsymbol_plist
	.cfi_endproc

	.globl	Fsymbol_name
	.align	16, 0x90
	.type	Fsymbol_name,@function
Fsymbol_name:                           # @Fsymbol_name
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp144:
	.cfi_def_cfa_offset 16
.Ltmp145:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp146:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$0, %eax
	jne	.LBB48_2
# BB#1:                                 # %cond.true
	jmp	.LBB48_3
.LBB48_2:                               # %cond.false
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB48_3:                               # %cond.end
	movq	-8(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end48:
	.size	Fsymbol_name, .Lfunc_end48-Fsymbol_name
	.cfi_endproc

	.globl	Ffset
	.align	16, 0x90
	.type	Ffset,@function
Ffset:                                  # @Ffset
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp147:
	.cfi_def_cfa_offset 16
.Ltmp148:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp149:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	andq	$7, %rsi
	movl	%esi, %eax
	cmpl	$0, %eax
	jne	.LBB49_2
# BB#1:                                 # %cond.true
	jmp	.LBB49_3
.LBB49_2:                               # %cond.false
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB49_3:                               # %cond.end
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	subq	$0, %rax
	movq	lispsym+24(,%rax), %rax
	movq	%rax, -24(%rbp)
	movq	Vautoload_queue, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB49_6
# BB#4:                                 # %land.lhs.true
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB49_6
# BB#5:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	Fcons
	movq	Vautoload_queue, %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, Vautoload_queue
.LBB49_6:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	AUTOLOADP
	testb	$1, %al
	jne	.LBB49_7
	jmp	.LBB49_8
.LBB49_7:                               # %if.then.12
	movl	$191, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rdx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fput
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB49_8:                               # %if.end.16
	movq	-16(%rbp), %rdi
	callq	valid_lisp_object_p
	cmpl	$0, %eax
	jne	.LBB49_10
# BB#9:                                 # %if.then.18
	callq	emacs_abort
.LBB49_10:                              # %if.end.19
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	set_symbol_function
	movq	-16(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end49:
	.size	Ffset, .Lfunc_end49-Ffset
	.cfi_endproc

	.globl	Fdefalias
	.align	16, 0x90
	.type	Fdefalias,@function
Fdefalias:                              # @Fdefalias
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp150:
	.cfi_def_cfa_offset 16
.Ltmp151:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp152:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$0, %eax
	jne	.LBB50_2
# BB#1:                                 # %cond.true
	jmp	.LBB50_3
.LBB50_2:                               # %cond.false
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB50_3:                               # %cond.end
	xorl	%edi, %edi
	movq	globals+1920, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB50_6
# BB#4:                                 # %land.lhs.true
	xorl	%eax, %eax
	movq	-16(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	get_keymap
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB50_6
# BB#5:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	Fpurecopy
	movq	%rax, -16(%rbp)
.LBB50_6:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	AUTOLOADP
	xorl	%edi, %edi
	andb	$1, %al
	movb	%al, -25(%rbp)
	movq	globals+1920, %rcx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB50_8
# BB#7:                                 # %lor.lhs.false
	testb	$1, -25(%rbp)
	jne	.LBB50_14
.LBB50_8:                               # %if.then.14
	movq	-8(%rbp), %rax
	subq	$0, %rax
	movq	lispsym+24(,%rax), %rdi
	callq	AUTOLOADP
	testb	$1, %al
	jne	.LBB50_9
	jmp	.LBB50_10
.LBB50_9:                               # %if.then.16
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, %rdi
	callq	LOADHIST_ATTACH
.LBB50_10:                              # %if.end.19
	testb	$1, -25(%rbp)
	je	.LBB50_12
# BB#11:                                # %cond.true.22
	movl	$191, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB50_13
.LBB50_12:                              # %cond.false.24
	movl	$327, %edi              # imm = 0x147
	callq	builtin_lisp_symbol
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB50_13:                              # %cond.end.26
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, %rdi
	callq	LOADHIST_ATTACH
.LBB50_14:                              # %if.end.28
	movl	$323, %edi              # imm = 0x143
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB50_16
# BB#15:                                # %if.then.34
	movq	-40(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	callq	call2
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB50_17
.LBB50_16:                              # %if.else
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	Ffset
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB50_17:                              # %if.end.37
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB50_19
# BB#18:                                # %if.then.41
	movl	$477, %edi              # imm = 0x1DD
	movq	-8(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rdx
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fput
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB50_19:                              # %if.end.44
	movq	-8(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end50:
	.size	Fdefalias, .Lfunc_end50-Fdefalias
	.cfi_endproc

	.globl	Fsetplist
	.align	16, 0x90
	.type	Fsetplist,@function
Fsetplist:                              # @Fsetplist
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp153:
	.cfi_def_cfa_offset 16
.Ltmp154:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp155:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	andq	$7, %rsi
	movl	%esi, %eax
	cmpl	$0, %eax
	jne	.LBB51_2
# BB#1:                                 # %cond.true
	jmp	.LBB51_3
.LBB51_2:                               # %cond.false
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB51_3:                               # %cond.end
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	set_symbol_plist
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end51:
	.size	Fsetplist, .Lfunc_end51-Fsetplist
	.cfi_endproc

	.globl	Fsubr_arity
	.align	16, 0x90
	.type	Fsubr_arity,@function
Fsubr_arity:                            # @Fsubr_arity
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp156:
	.cfi_def_cfa_offset 16
.Ltmp157:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp158:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_SUBR
	movq	-8(%rbp), %rdi
	callq	XSUBR
	movw	16(%rax), %cx
	movw	%cx, -10(%rbp)
	movq	-8(%rbp), %rdi
	callq	XSUBR
	movw	18(%rax), %cx
	movw	%cx, -12(%rbp)
	movswq	-10(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movswl	-12(%rbp), %edx
	cmpl	$-2, %edx
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jne	.LBB52_2
# BB#1:                                 # %cond.true
	movl	$642, %edi              # imm = 0x282
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB52_6
.LBB52_2:                               # %cond.false
	movswl	-12(%rbp), %eax
	cmpl	$-1, %eax
	jne	.LBB52_4
# BB#3:                                 # %cond.true.8
	movl	$969, %edi              # imm = 0x3C9
	callq	builtin_lisp_symbol
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB52_5
.LBB52_4:                               # %cond.false.10
	movswq	-12(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB52_5:                               # %cond.end
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB52_6:                               # %cond.end.14
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end52:
	.size	Fsubr_arity, .Lfunc_end52-Fsubr_arity
	.cfi_endproc

	.align	16, 0x90
	.type	CHECK_SUBR,@function
CHECK_SUBR:                             # @CHECK_SUBR
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp159:
	.cfi_def_cfa_offset 16
.Ltmp160:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp161:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	SUBRP
	testb	$1, %al
	jne	.LBB53_1
	jmp	.LBB53_2
.LBB53_1:                               # %cond.true
	jmp	.LBB53_3
.LBB53_2:                               # %cond.false
	movl	$889, %edi              # imm = 0x379
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB53_3:                               # %cond.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end53:
	.size	CHECK_SUBR, .Lfunc_end53-CHECK_SUBR
	.cfi_endproc

	.globl	Fsubr_name
	.align	16, 0x90
	.type	Fsubr_name,@function
Fsubr_name:                             # @Fsubr_name
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp162:
	.cfi_def_cfa_offset 16
.Ltmp163:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp164:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_SUBR
	movq	-8(%rbp), %rdi
	callq	XSUBR
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	build_string
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end54:
	.size	Fsubr_name, .Lfunc_end54-Fsubr_name
	.cfi_endproc

	.globl	Finteractive_form
	.align	16, 0x90
	.type	Finteractive_form,@function
Finteractive_form:                      # @Finteractive_form
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp165:
	.cfi_def_cfa_offset 16
.Ltmp166:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp167:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	indirect_function
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB55_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB55_32
.LBB55_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB55_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB55_8
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB55_3 Depth=1
	movl	$561, %edi              # imm = 0x231
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB55_6
# BB#5:                                 # %if.then.10
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB55_32
.LBB55_6:                               # %if.else
                                        #   in Loop: Header=BB55_3 Depth=1
	movq	-24(%rbp), %rdi
	callq	Fsymbol_function
	movq	%rax, -24(%rbp)
# BB#7:                                 # %if.end.12
                                        #   in Loop: Header=BB55_3 Depth=1
	jmp	.LBB55_3
.LBB55_8:                               # %while.end
	movq	-24(%rbp), %rdi
	callq	SUBRP
	testb	$1, %al
	jne	.LBB55_9
	jmp	.LBB55_15
.LBB55_9:                               # %if.then.14
	movq	-24(%rbp), %rdi
	callq	XSUBR
	movq	32(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB55_14
# BB#10:                                # %if.then.17
	movl	$560, %edi              # imm = 0x230
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx
	movsbl	(%rcx), %edi
	cmpl	$40, %edi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	je	.LBB55_12
# BB#11:                                # %cond.true
	movq	-40(%rbp), %rdi
	callq	build_string
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB55_13
.LBB55_12:                              # %cond.false
	movq	-40(%rbp), %rdi
	callq	build_string
	xorl	%edi, %edi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fread_from_string
	movq	%rax, %rdi
	callq	Fcar
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB55_13:                              # %cond.end
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	list2
	movq	%rax, -8(%rbp)
	jmp	.LBB55_32
.LBB55_14:                              # %if.end.29
	jmp	.LBB55_31
.LBB55_15:                              # %if.else.30
	movq	-24(%rbp), %rdi
	callq	COMPILEDP
	testb	$1, %al
	jne	.LBB55_16
	jmp	.LBB55_19
.LBB55_16:                              # %if.then.32
	movq	-24(%rbp), %rdi
	callq	ASIZE
	andq	$4095, %rax             # imm = 0xFFF
	cmpq	$5, %rax
	jle	.LBB55_18
# BB#17:                                # %if.then.37
	movl	$560, %edi              # imm = 0x230
	callq	builtin_lisp_symbol
	movl	$5, %edi
	movl	%edi, %esi
	movq	-24(%rbp), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	AREF
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	list2
	movq	%rax, -8(%rbp)
	jmp	.LBB55_32
.LBB55_18:                              # %if.end.41
	jmp	.LBB55_30
.LBB55_19:                              # %if.else.42
	movq	-24(%rbp), %rdi
	callq	AUTOLOADP
	testb	$1, %al
	jne	.LBB55_20
	jmp	.LBB55_21
.LBB55_20:                              # %if.then.44
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fautoload_do_load
	movq	%rax, %rdi
	callq	Finteractive_form
	movq	%rax, -8(%rbp)
	jmp	.LBB55_32
.LBB55_21:                              # %if.else.48
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB55_28
# BB#22:                                # %if.then.53
	movl	$271, %edi              # imm = 0x10F
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB55_24
# BB#23:                                # %if.then.58
	movl	$560, %edi              # imm = 0x230
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	Fcdr
	movq	%rax, %rdi
	callq	Fcdr
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fassq
	movq	%rax, -8(%rbp)
	jmp	.LBB55_32
.LBB55_24:                              # %if.else.64
	movl	$598, %edi              # imm = 0x256
	movq	-48(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB55_26
# BB#25:                                # %if.then.68
	movl	$560, %edi              # imm = 0x230
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rdi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	Fcdr
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fassq
	movq	%rax, -8(%rbp)
	jmp	.LBB55_32
.LBB55_26:                              # %if.end.75
	jmp	.LBB55_27
.LBB55_27:                              # %if.end.76
	jmp	.LBB55_28
.LBB55_28:                              # %if.end.77
	jmp	.LBB55_29
.LBB55_29:                              # %if.end.78
	jmp	.LBB55_30
.LBB55_30:                              # %if.end.79
	jmp	.LBB55_31
.LBB55_31:                              # %if.end.80
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB55_32:                              # %return
	movq	-8(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end55:
	.size	Finteractive_form, .Lfunc_end55-Finteractive_form
	.cfi_endproc

	.globl	indirect_function
	.align	16, 0x90
	.type	indirect_function,@function
indirect_function:                      # @indirect_function
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp168:
	.cfi_def_cfa_offset 16
.Ltmp169:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp170:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	%rdi, -24(%rbp)
.LBB56_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB56_3
# BB#2:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB56_1 Depth=1
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB56_4
.LBB56_3:                               # %if.then
	jmp	.LBB56_10
.LBB56_4:                               # %if.end
                                        #   in Loop: Header=BB56_1 Depth=1
	movq	-24(%rbp), %rax
	subq	$0, %rax
	movq	lispsym+24(,%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB56_6
# BB#5:                                 # %lor.lhs.false.8
                                        #   in Loop: Header=BB56_1 Depth=1
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB56_7
.LBB56_6:                               # %if.then.12
	jmp	.LBB56_10
.LBB56_7:                               # %if.end.13
                                        #   in Loop: Header=BB56_1 Depth=1
	movq	-24(%rbp), %rax
	subq	$0, %rax
	movq	lispsym+24(,%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	subq	$0, %rax
	movq	lispsym+24(,%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB56_9
# BB#8:                                 # %if.then.22
	movl	$312, %edi              # imm = 0x138
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	xsignal1
.LBB56_9:                               # %if.end.24
                                        #   in Loop: Header=BB56_1 Depth=1
	jmp	.LBB56_1
.LBB56_10:                              # %for.end
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end56:
	.size	indirect_function, .Lfunc_end56-indirect_function
	.cfi_endproc

	.globl	Findirect_variable
	.align	16, 0x90
	.type	Findirect_variable,@function
Findirect_variable:                     # @Findirect_variable
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp171:
	.cfi_def_cfa_offset 16
.Ltmp172:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp173:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$0, %eax
	jne	.LBB57_2
# BB#1:                                 # %if.then
	movabsq	$lispsym, %rax
	movq	-8(%rbp), %rcx
	subq	$0, %rcx
	addq	%rcx, %rax
	movq	%rax, %rdi
	callq	indirect_variable
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	make_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB57_2:                               # %if.end
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end57:
	.size	Findirect_variable, .Lfunc_end57-Findirect_variable
	.cfi_endproc

	.globl	do_symval_forwarding
	.align	16, 0x90
	.type	do_symval_forwarding,@function
do_symval_forwarding:                   # @do_symval_forwarding
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp174:
	.cfi_def_cfa_offset 16
.Ltmp175:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp176:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	callq	XFWDTYPE
	movl	%eax, %ecx
	movl	%ecx, %edi
	subl	$4, %eax
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movl	%eax, -36(%rbp)         # 4-byte Spill
	ja	.LBB58_13
# BB#15:                                # %entry
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	.LJTI58_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB58_1:                               # %sw.bb
	movq	-16(%rbp), %rdi
	callq	XINTFWD
	movq	8(%rax), %rax
	movq	(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB58_14
.LBB58_2:                               # %sw.bb.2
	movq	-16(%rbp), %rdi
	callq	XBOOLFWD
	movq	8(%rax), %rax
	testb	$1, (%rax)
	je	.LBB58_4
# BB#3:                                 # %cond.true
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB58_5
.LBB58_4:                               # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB58_5:                               # %cond.end
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, -8(%rbp)
	jmp	.LBB58_14
.LBB58_6:                               # %sw.bb.6
	movq	-16(%rbp), %rdi
	callq	XOBJFWD
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB58_14
.LBB58_7:                               # %sw.bb.8
	movq	current_buffer, %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	XBUFFER_OBJFWD
	movl	4(%rax), %esi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	per_buffer_value
	movq	%rax, -8(%rbp)
	jmp	.LBB58_14
.LBB58_8:                               # %sw.bb.11
	movq	-16(%rbp), %rdi
	callq	XKBOARD_OBJFWD
	movl	4(%rax), %ecx
	movq	selected_frame, %rdi
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB58_9
	jmp	.LBB58_11
.LBB58_9:                               # %land.lhs.true
	movq	selected_frame, %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB58_11
# BB#10:                                # %cond.true.15
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB58_12
.LBB58_11:                              # %cond.false.17
	callq	emacs_abort
.LBB58_12:                              # %cond.end.18
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	376(%rax), %rcx
	movq	72(%rcx), %rcx
	movl	-60(%rbp), %edx         # 4-byte Reload
	movslq	%edx, %rsi
	movq	(%rcx,%rsi), %rcx
	movq	%rcx, -8(%rbp)
	jmp	.LBB58_14
.LBB58_13:                              # %sw.default
	callq	emacs_abort
.LBB58_14:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end58:
	.size	do_symval_forwarding, .Lfunc_end58-do_symval_forwarding
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI58_0:
	.quad	.LBB58_1
	.quad	.LBB58_2
	.quad	.LBB58_6
	.quad	.LBB58_7
	.quad	.LBB58_8

	.text
	.align	16, 0x90
	.type	XINTFWD,@function
XINTFWD:                                # @XINTFWD
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp177:
	.cfi_def_cfa_offset 16
.Ltmp178:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp179:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end59:
	.size	XINTFWD, .Lfunc_end59-XINTFWD
	.cfi_endproc

	.align	16, 0x90
	.type	XBOOLFWD,@function
XBOOLFWD:                               # @XBOOLFWD
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp180:
	.cfi_def_cfa_offset 16
.Ltmp181:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp182:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end60:
	.size	XBOOLFWD, .Lfunc_end60-XBOOLFWD
	.cfi_endproc

	.align	16, 0x90
	.type	XOBJFWD,@function
XOBJFWD:                                # @XOBJFWD
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp183:
	.cfi_def_cfa_offset 16
.Ltmp184:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp185:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end61:
	.size	XOBJFWD, .Lfunc_end61-XOBJFWD
	.cfi_endproc

	.align	16, 0x90
	.type	XKBOARD_OBJFWD,@function
XKBOARD_OBJFWD:                         # @XKBOARD_OBJFWD
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp186:
	.cfi_def_cfa_offset 16
.Ltmp187:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp188:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end62:
	.size	XKBOARD_OBJFWD, .Lfunc_end62-XKBOARD_OBJFWD
	.cfi_endproc

	.globl	wrong_choice
	.align	16, 0x90
	.type	wrong_choice,@function
wrong_choice:                           # @wrong_choice
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp189:
	.cfi_def_cfa_offset 16
.Ltmp190:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp191:
	.cfi_def_cfa_register %rbp
	subq	$1136, %rsp             # imm = 0x470
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	Flength
	movl	$4, %esi
	leaq	-88(%rbp), %rdi
	movabsq	$.L.str.1, %rcx
	sarq	$2, %rax
	movq	%rax, -32(%rbp)
	movq	$7, -88(%rbp)
	movq	$-1, -80(%rbp)
	movq	$0, -72(%rbp)
	movq	%rcx, -64(%rbp)
	callq	make_lisp_ptr
	movl	$4, %esi
	leaq	-128(%rbp), %rcx
	movabsq	$.L.str.2, %rdi
	movq	%rax, -56(%rbp)
	movq	$2, -128(%rbp)
	movq	$-1, -120(%rbp)
	movq	$0, -112(%rbp)
	movq	%rdi, -104(%rbp)
	movq	%rcx, %rdi
	callq	make_lisp_ptr
	movl	$4, %esi
	leaq	-168(%rbp), %rcx
	movabsq	$.L.str.3, %rdi
	movq	%rax, -96(%rbp)
	movq	$4, -168(%rbp)
	movq	$-1, -160(%rbp)
	movq	$0, -152(%rbp)
	movq	%rdi, -144(%rbp)
	movq	%rcx, %rdi
	callq	make_lisp_ptr
	movl	$4, %esi
	leaq	-208(%rbp), %rcx
	movabsq	$.L.str.4, %rdi
	movq	%rax, -136(%rbp)
	movq	$20, -208(%rbp)
	movq	$-1, -200(%rbp)
	movq	$0, -192(%rbp)
	movq	%rdi, -184(%rbp)
	movq	%rcx, %rdi
	callq	make_lisp_ptr
	movq	%rax, -176(%rbp)
	movq	$16384, -216(%rbp)      # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -224(%rbp)
	movb	$0, -225(%rbp)
# BB#1:                                 # %do.body
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_2
	jmp	.LBB63_81
.LBB63_2:                               # %cond.true
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_3
	jmp	.LBB63_42
.LBB63_3:                               # %cond.true.28
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB63_5
# BB#4:                                 # %cond.true.33
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-32(%rbp), %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -252(%rbp)        # 4-byte Spill
	jmp	.LBB63_6
.LBB63_5:                               # %cond.false
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -252(%rbp)        # 4-byte Spill
.LBB63_6:                               # %cond.end
	movl	-252(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB63_8
# BB#7:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jl	.LBB63_34
.LBB63_8:                               # %lor.lhs.false
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_9
	jmp	.LBB63_20
.LBB63_9:                               # %cond.true.70
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB63_14
# BB#10:                                # %cond.true.77
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -256(%rbp)        # 4-byte Spill
	jge	.LBB63_12
# BB#11:                                # %cond.true.91
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -260(%rbp)        # 4-byte Spill
	jmp	.LBB63_13
.LBB63_12:                              # %cond.false.103
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -260(%rbp)        # 4-byte Spill
.LBB63_13:                              # %cond.end.111
	movl	-260(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-256(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB63_34
	jmp	.LBB63_31
.LBB63_14:                              # %cond.false.115
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_15
	jmp	.LBB63_16
.LBB63_15:                              # %cond.true.116
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_34
	jmp	.LBB63_31
.LBB63_16:                              # %cond.false.117
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB63_18
# BB#17:                                # %cond.true.127
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-32(%rbp), %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -264(%rbp)        # 4-byte Spill
	jmp	.LBB63_19
.LBB63_18:                              # %cond.false.151
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -264(%rbp)        # 4-byte Spill
.LBB63_19:                              # %cond.end.159
	movl	-264(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-32(%rbp), %rsi
	shlq	$1, %rsi
	addq	$1, %rsi
	movb	%sil, %dil
	movsbl	%dil, %ecx
	cmpl	%ecx, %eax
	jl	.LBB63_34
	jmp	.LBB63_31
.LBB63_20:                              # %cond.false.168
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_21
	jmp	.LBB63_22
.LBB63_21:                              # %cond.true.169
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_34
	jmp	.LBB63_31
.LBB63_22:                              # %cond.false.170
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB63_27
# BB#23:                                # %cond.true.177
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -268(%rbp)        # 4-byte Spill
	jge	.LBB63_25
# BB#24:                                # %cond.true.191
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-32(%rbp), %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -272(%rbp)        # 4-byte Spill
	jmp	.LBB63_26
.LBB63_25:                              # %cond.false.215
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -272(%rbp)        # 4-byte Spill
.LBB63_26:                              # %cond.end.223
	movl	-272(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-268(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB63_34
	jmp	.LBB63_31
.LBB63_27:                              # %cond.false.228
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB63_29
# BB#28:                                # %cond.true.238
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -276(%rbp)        # 4-byte Spill
	jmp	.LBB63_30
.LBB63_29:                              # %cond.false.250
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -276(%rbp)        # 4-byte Spill
.LBB63_30:                              # %cond.end.258
	movl	-276(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-32(%rbp), %rsi
	shlq	$1, %rsi
	addq	$1, %rsi
	movb	%sil, %dil
	movsbl	%dil, %ecx
	cmpl	%ecx, %eax
	jl	.LBB63_34
.LBB63_31:                              # %lor.lhs.false.267
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	shll	$3, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB63_33
# BB#32:                                # %land.lhs.true.277
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	shll	$3, %edx
	cmpl	$-128, %edx
	jl	.LBB63_34
.LBB63_33:                              # %lor.lhs.false.285
	movl	$127, %eax
	movq	-32(%rbp), %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	shll	$3, %esi
	cmpl	%esi, %eax
	jge	.LBB63_38
.LBB63_34:                              # %cond.true.293
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB63_36
# BB#35:                                # %cond.true.301
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -280(%rbp)        # 4-byte Spill
	jmp	.LBB63_37
.LBB63_36:                              # %cond.false.309
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -280(%rbp)        # 4-byte Spill
.LBB63_37:                              # %cond.end.319
	movl	-280(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -240(%rbp)
	testb	$1, %cl
	jne	.LBB63_401
	jmp	.LBB63_400
.LBB63_38:                              # %cond.false.322
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB63_40
# BB#39:                                # %cond.true.330
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -284(%rbp)        # 4-byte Spill
	jmp	.LBB63_41
.LBB63_40:                              # %cond.false.338
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -284(%rbp)        # 4-byte Spill
.LBB63_41:                              # %cond.end.348
	movl	-284(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -240(%rbp)
	testb	$1, %dl
	jne	.LBB63_401
	jmp	.LBB63_400
.LBB63_42:                              # %cond.false.351
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_44
# BB#43:                                # %cond.true.359
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -296(%rbp)        # 8-byte Spill
	jmp	.LBB63_45
.LBB63_44:                              # %cond.false.380
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
.LBB63_45:                              # %cond.end.386
	movq	-296(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB63_47
# BB#46:                                # %land.lhs.true.390
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	cmpq	$0, %rax
	jl	.LBB63_73
.LBB63_47:                              # %lor.lhs.false.395
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_48
	jmp	.LBB63_59
.LBB63_48:                              # %cond.true.396
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_53
# BB#49:                                # %cond.true.401
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	-32(%rbp), %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -304(%rbp)        # 8-byte Spill
	jge	.LBB63_51
# BB#50:                                # %cond.true.411
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	jmp	.LBB63_52
.LBB63_51:                              # %cond.false.421
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
.LBB63_52:                              # %cond.end.427
	movq	-312(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -320(%rbp)        # 8-byte Spill
	cqto
	movq	-320(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-304(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB63_73
	jmp	.LBB63_70
.LBB63_53:                              # %cond.false.432
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_54
	jmp	.LBB63_55
.LBB63_54:                              # %cond.true.433
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_73
	jmp	.LBB63_70
.LBB63_55:                              # %cond.false.434
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_57
# BB#56:                                # %cond.true.442
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -328(%rbp)        # 8-byte Spill
	jmp	.LBB63_58
.LBB63_57:                              # %cond.false.463
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
.LBB63_58:                              # %cond.end.469
	movq	-328(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -336(%rbp)        # 8-byte Spill
	cqto
	movq	-336(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-32(%rbp), %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	cmpq	%rdi, %rax
	jl	.LBB63_73
	jmp	.LBB63_70
.LBB63_59:                              # %cond.false.476
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_60
	jmp	.LBB63_61
.LBB63_60:                              # %cond.true.477
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_73
	jmp	.LBB63_70
.LBB63_61:                              # %cond.false.478
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_66
# BB#62:                                # %cond.true.483
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	-32(%rbp), %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -344(%rbp)        # 8-byte Spill
	jge	.LBB63_64
# BB#63:                                # %cond.true.493
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -352(%rbp)        # 8-byte Spill
	jmp	.LBB63_65
.LBB63_64:                              # %cond.false.514
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
.LBB63_65:                              # %cond.end.520
	movq	-352(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -360(%rbp)        # 8-byte Spill
	cqto
	movq	-360(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-344(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB63_73
	jmp	.LBB63_70
.LBB63_66:                              # %cond.false.525
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_68
# BB#67:                                # %cond.true.533
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	jmp	.LBB63_69
.LBB63_68:                              # %cond.false.543
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
.LBB63_69:                              # %cond.end.549
	movq	-368(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -376(%rbp)        # 8-byte Spill
	cqto
	movq	-376(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-32(%rbp), %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	cmpq	%rdi, %rax
	jl	.LBB63_73
.LBB63_70:                              # %lor.lhs.false.556
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_72
# BB#71:                                # %land.lhs.true.564
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	shlq	$3, %rax
	cmpq	$-128, %rax
	jl	.LBB63_73
.LBB63_72:                              # %lor.lhs.false.570
	movl	$127, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	shlq	$3, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB63_77
.LBB63_73:                              # %cond.true.576
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB63_75
# BB#74:                                # %cond.true.584
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -380(%rbp)        # 4-byte Spill
	jmp	.LBB63_76
.LBB63_75:                              # %cond.false.592
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -380(%rbp)        # 4-byte Spill
.LBB63_76:                              # %cond.end.602
	movl	-380(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -240(%rbp)
	testb	$1, %cl
	jne	.LBB63_401
	jmp	.LBB63_400
.LBB63_77:                              # %cond.false.605
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB63_79
# BB#78:                                # %cond.true.613
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -384(%rbp)        # 4-byte Spill
	jmp	.LBB63_80
.LBB63_79:                              # %cond.false.621
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -384(%rbp)        # 4-byte Spill
.LBB63_80:                              # %cond.end.631
	movl	-384(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -240(%rbp)
	testb	$1, %dl
	jne	.LBB63_401
	jmp	.LBB63_400
.LBB63_81:                              # %cond.false.634
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_82
	jmp	.LBB63_161
.LBB63_82:                              # %cond.true.635
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_83
	jmp	.LBB63_122
.LBB63_83:                              # %cond.true.636
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB63_85
# BB#84:                                # %cond.true.646
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %esi
	subl	%esi, %eax
	movq	-32(%rbp), %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -388(%rbp)        # 4-byte Spill
	jmp	.LBB63_86
.LBB63_85:                              # %cond.false.670
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -388(%rbp)        # 4-byte Spill
.LBB63_86:                              # %cond.end.678
	movl	-388(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB63_88
# BB#87:                                # %land.lhs.true.682
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jl	.LBB63_114
.LBB63_88:                              # %lor.lhs.false.689
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_89
	jmp	.LBB63_100
.LBB63_89:                              # %cond.true.690
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB63_94
# BB#90:                                # %cond.true.697
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -392(%rbp)        # 4-byte Spill
	jge	.LBB63_92
# BB#91:                                # %cond.true.711
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -396(%rbp)        # 4-byte Spill
	jmp	.LBB63_93
.LBB63_92:                              # %cond.false.723
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -396(%rbp)        # 4-byte Spill
.LBB63_93:                              # %cond.end.731
	movl	-396(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-392(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB63_114
	jmp	.LBB63_111
.LBB63_94:                              # %cond.false.736
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_95
	jmp	.LBB63_96
.LBB63_95:                              # %cond.true.737
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_114
	jmp	.LBB63_111
.LBB63_96:                              # %cond.false.738
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB63_98
# BB#97:                                # %cond.true.748
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %esi
	subl	%esi, %eax
	movq	-32(%rbp), %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -400(%rbp)        # 4-byte Spill
	jmp	.LBB63_99
.LBB63_98:                              # %cond.false.772
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -400(%rbp)        # 4-byte Spill
.LBB63_99:                              # %cond.end.780
	movl	-400(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-32(%rbp), %rsi
	shlq	$1, %rsi
	addq	$1, %rsi
	movw	%si, %di
	movswl	%di, %ecx
	cmpl	%ecx, %eax
	jl	.LBB63_114
	jmp	.LBB63_111
.LBB63_100:                             # %cond.false.789
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_101
	jmp	.LBB63_102
.LBB63_101:                             # %cond.true.790
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_114
	jmp	.LBB63_111
.LBB63_102:                             # %cond.false.791
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB63_107
# BB#103:                               # %cond.true.798
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -404(%rbp)        # 4-byte Spill
	jge	.LBB63_105
# BB#104:                               # %cond.true.812
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %esi
	subl	%esi, %eax
	movq	-32(%rbp), %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -408(%rbp)        # 4-byte Spill
	jmp	.LBB63_106
.LBB63_105:                             # %cond.false.836
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -408(%rbp)        # 4-byte Spill
.LBB63_106:                             # %cond.end.844
	movl	-408(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-404(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB63_114
	jmp	.LBB63_111
.LBB63_107:                             # %cond.false.849
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB63_109
# BB#108:                               # %cond.true.859
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -412(%rbp)        # 4-byte Spill
	jmp	.LBB63_110
.LBB63_109:                             # %cond.false.871
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -412(%rbp)        # 4-byte Spill
.LBB63_110:                             # %cond.end.879
	movl	-412(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-32(%rbp), %rsi
	shlq	$1, %rsi
	addq	$1, %rsi
	movw	%si, %di
	movswl	%di, %ecx
	cmpl	%ecx, %eax
	jl	.LBB63_114
.LBB63_111:                             # %lor.lhs.false.888
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	shll	$3, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB63_113
# BB#112:                               # %land.lhs.true.898
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	shll	$3, %edx
	cmpl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB63_114
.LBB63_113:                             # %lor.lhs.false.906
	movl	$32767, %eax            # imm = 0x7FFF
	movq	-32(%rbp), %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	shll	$3, %esi
	cmpl	%esi, %eax
	jge	.LBB63_118
.LBB63_114:                             # %cond.true.914
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB63_116
# BB#115:                               # %cond.true.922
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -416(%rbp)        # 4-byte Spill
	jmp	.LBB63_117
.LBB63_116:                             # %cond.false.930
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -416(%rbp)        # 4-byte Spill
.LBB63_117:                             # %cond.end.940
	movl	-416(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -240(%rbp)
	testb	$1, %cl
	jne	.LBB63_401
	jmp	.LBB63_400
.LBB63_118:                             # %cond.false.943
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB63_120
# BB#119:                               # %cond.true.951
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -420(%rbp)        # 4-byte Spill
	jmp	.LBB63_121
.LBB63_120:                             # %cond.false.959
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -420(%rbp)        # 4-byte Spill
.LBB63_121:                             # %cond.end.969
	movl	-420(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -240(%rbp)
	testb	$1, %dl
	jne	.LBB63_401
	jmp	.LBB63_400
.LBB63_122:                             # %cond.false.972
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_124
# BB#123:                               # %cond.true.980
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -432(%rbp)        # 8-byte Spill
	jmp	.LBB63_125
.LBB63_124:                             # %cond.false.1001
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
.LBB63_125:                             # %cond.end.1007
	movq	-432(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB63_127
# BB#126:                               # %land.lhs.true.1011
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	cmpq	$0, %rax
	jl	.LBB63_153
.LBB63_127:                             # %lor.lhs.false.1016
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_128
	jmp	.LBB63_139
.LBB63_128:                             # %cond.true.1017
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_133
# BB#129:                               # %cond.true.1022
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	-32(%rbp), %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -440(%rbp)        # 8-byte Spill
	jge	.LBB63_131
# BB#130:                               # %cond.true.1032
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	jmp	.LBB63_132
.LBB63_131:                             # %cond.false.1042
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
.LBB63_132:                             # %cond.end.1048
	movq	-448(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -456(%rbp)        # 8-byte Spill
	cqto
	movq	-456(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-440(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB63_153
	jmp	.LBB63_150
.LBB63_133:                             # %cond.false.1053
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_134
	jmp	.LBB63_135
.LBB63_134:                             # %cond.true.1054
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_153
	jmp	.LBB63_150
.LBB63_135:                             # %cond.false.1055
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_137
# BB#136:                               # %cond.true.1063
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -464(%rbp)        # 8-byte Spill
	jmp	.LBB63_138
.LBB63_137:                             # %cond.false.1084
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
.LBB63_138:                             # %cond.end.1090
	movq	-464(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -472(%rbp)        # 8-byte Spill
	cqto
	movq	-472(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-32(%rbp), %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	cmpq	%rdi, %rax
	jl	.LBB63_153
	jmp	.LBB63_150
.LBB63_139:                             # %cond.false.1097
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_140
	jmp	.LBB63_141
.LBB63_140:                             # %cond.true.1098
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_153
	jmp	.LBB63_150
.LBB63_141:                             # %cond.false.1099
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_146
# BB#142:                               # %cond.true.1104
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	-32(%rbp), %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -480(%rbp)        # 8-byte Spill
	jge	.LBB63_144
# BB#143:                               # %cond.true.1114
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -488(%rbp)        # 8-byte Spill
	jmp	.LBB63_145
.LBB63_144:                             # %cond.false.1135
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
.LBB63_145:                             # %cond.end.1141
	movq	-488(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -496(%rbp)        # 8-byte Spill
	cqto
	movq	-496(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-480(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB63_153
	jmp	.LBB63_150
.LBB63_146:                             # %cond.false.1146
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_148
# BB#147:                               # %cond.true.1154
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	jmp	.LBB63_149
.LBB63_148:                             # %cond.false.1164
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
.LBB63_149:                             # %cond.end.1170
	movq	-504(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -512(%rbp)        # 8-byte Spill
	cqto
	movq	-512(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-32(%rbp), %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	cmpq	%rdi, %rax
	jl	.LBB63_153
.LBB63_150:                             # %lor.lhs.false.1177
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_152
# BB#151:                               # %land.lhs.true.1185
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	shlq	$3, %rax
	cmpq	$-32768, %rax           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB63_153
.LBB63_152:                             # %lor.lhs.false.1191
	movl	$32767, %eax            # imm = 0x7FFF
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	shlq	$3, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB63_157
.LBB63_153:                             # %cond.true.1197
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB63_155
# BB#154:                               # %cond.true.1205
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -516(%rbp)        # 4-byte Spill
	jmp	.LBB63_156
.LBB63_155:                             # %cond.false.1213
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -516(%rbp)        # 4-byte Spill
.LBB63_156:                             # %cond.end.1223
	movl	-516(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -240(%rbp)
	testb	$1, %cl
	jne	.LBB63_401
	jmp	.LBB63_400
.LBB63_157:                             # %cond.false.1226
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB63_159
# BB#158:                               # %cond.true.1234
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -520(%rbp)        # 4-byte Spill
	jmp	.LBB63_160
.LBB63_159:                             # %cond.false.1242
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -520(%rbp)        # 4-byte Spill
.LBB63_160:                             # %cond.end.1252
	movl	-520(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -240(%rbp)
	testb	$1, %dl
	jne	.LBB63_401
	jmp	.LBB63_400
.LBB63_161:                             # %cond.false.1255
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_162
	jmp	.LBB63_241
.LBB63_162:                             # %cond.true.1256
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_163
	jmp	.LBB63_202
.LBB63_163:                             # %cond.true.1257
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB63_165
# BB#164:                               # %cond.true.1266
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-32(%rbp), %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -524(%rbp)        # 4-byte Spill
	jmp	.LBB63_166
.LBB63_165:                             # %cond.false.1288
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -524(%rbp)        # 4-byte Spill
.LBB63_166:                             # %cond.end.1295
	movl	-524(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB63_168
# BB#167:                               # %land.lhs.true.1299
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jl	.LBB63_194
.LBB63_168:                             # %lor.lhs.false.1305
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_169
	jmp	.LBB63_180
.LBB63_169:                             # %cond.true.1306
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB63_174
# BB#170:                               # %cond.true.1312
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movl	%eax, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -528(%rbp)        # 4-byte Spill
	jge	.LBB63_172
# BB#171:                               # %cond.true.1324
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -532(%rbp)        # 4-byte Spill
	jmp	.LBB63_173
.LBB63_172:                             # %cond.false.1335
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -532(%rbp)        # 4-byte Spill
.LBB63_173:                             # %cond.end.1342
	movl	-532(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-528(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB63_194
	jmp	.LBB63_191
.LBB63_174:                             # %cond.false.1347
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_175
	jmp	.LBB63_176
.LBB63_175:                             # %cond.true.1348
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_194
	jmp	.LBB63_191
.LBB63_176:                             # %cond.false.1349
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB63_178
# BB#177:                               # %cond.true.1358
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-32(%rbp), %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -536(%rbp)        # 4-byte Spill
	jmp	.LBB63_179
.LBB63_178:                             # %cond.false.1380
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -536(%rbp)        # 4-byte Spill
.LBB63_179:                             # %cond.end.1387
	movl	-536(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-32(%rbp), %rsi
	shlq	$1, %rsi
	addq	$1, %rsi
	movl	%esi, %ecx
	cmpl	%ecx, %eax
	jl	.LBB63_194
	jmp	.LBB63_191
.LBB63_180:                             # %cond.false.1395
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_181
	jmp	.LBB63_182
.LBB63_181:                             # %cond.true.1396
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_194
	jmp	.LBB63_191
.LBB63_182:                             # %cond.false.1397
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB63_187
# BB#183:                               # %cond.true.1403
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movl	%eax, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -540(%rbp)        # 4-byte Spill
	jge	.LBB63_185
# BB#184:                               # %cond.true.1415
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-32(%rbp), %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -544(%rbp)        # 4-byte Spill
	jmp	.LBB63_186
.LBB63_185:                             # %cond.false.1437
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -544(%rbp)        # 4-byte Spill
.LBB63_186:                             # %cond.end.1444
	movl	-544(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-540(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB63_194
	jmp	.LBB63_191
.LBB63_187:                             # %cond.false.1449
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB63_189
# BB#188:                               # %cond.true.1458
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -548(%rbp)        # 4-byte Spill
	jmp	.LBB63_190
.LBB63_189:                             # %cond.false.1469
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -548(%rbp)        # 4-byte Spill
.LBB63_190:                             # %cond.end.1476
	movl	-548(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-32(%rbp), %rsi
	shlq	$1, %rsi
	addq	$1, %rsi
	movl	%esi, %ecx
	cmpl	%ecx, %eax
	jl	.LBB63_194
.LBB63_191:                             # %lor.lhs.false.1484
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB63_193
# BB#192:                               # %land.lhs.true.1493
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	jl	.LBB63_194
.LBB63_193:                             # %lor.lhs.false.1500
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movq	-32(%rbp), %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	movl	%ecx, %edx
	shll	$3, %edx
	cmpl	%edx, %eax
	jge	.LBB63_198
.LBB63_194:                             # %cond.true.1507
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB63_196
# BB#195:                               # %cond.true.1514
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -552(%rbp)        # 4-byte Spill
	jmp	.LBB63_197
.LBB63_196:                             # %cond.false.1519
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -552(%rbp)        # 4-byte Spill
.LBB63_197:                             # %cond.end.1526
	movl	-552(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -240(%rbp)
	testb	$1, %cl
	jne	.LBB63_401
	jmp	.LBB63_400
.LBB63_198:                             # %cond.false.1529
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB63_200
# BB#199:                               # %cond.true.1536
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -556(%rbp)        # 4-byte Spill
	jmp	.LBB63_201
.LBB63_200:                             # %cond.false.1541
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -556(%rbp)        # 4-byte Spill
.LBB63_201:                             # %cond.end.1548
	movl	-556(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -240(%rbp)
	testb	$1, %dl
	jne	.LBB63_401
	jmp	.LBB63_400
.LBB63_202:                             # %cond.false.1551
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_204
# BB#203:                               # %cond.true.1559
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -568(%rbp)        # 8-byte Spill
	jmp	.LBB63_205
.LBB63_204:                             # %cond.false.1580
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
.LBB63_205:                             # %cond.end.1586
	movq	-568(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB63_207
# BB#206:                               # %land.lhs.true.1590
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	cmpq	$0, %rax
	jl	.LBB63_233
.LBB63_207:                             # %lor.lhs.false.1595
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_208
	jmp	.LBB63_219
.LBB63_208:                             # %cond.true.1596
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_213
# BB#209:                               # %cond.true.1601
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	-32(%rbp), %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -576(%rbp)        # 8-byte Spill
	jge	.LBB63_211
# BB#210:                               # %cond.true.1611
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
	jmp	.LBB63_212
.LBB63_211:                             # %cond.false.1621
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
.LBB63_212:                             # %cond.end.1627
	movq	-584(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -592(%rbp)        # 8-byte Spill
	cqto
	movq	-592(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-576(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB63_233
	jmp	.LBB63_230
.LBB63_213:                             # %cond.false.1632
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_214
	jmp	.LBB63_215
.LBB63_214:                             # %cond.true.1633
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_233
	jmp	.LBB63_230
.LBB63_215:                             # %cond.false.1634
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_217
# BB#216:                               # %cond.true.1642
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -600(%rbp)        # 8-byte Spill
	jmp	.LBB63_218
.LBB63_217:                             # %cond.false.1663
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
.LBB63_218:                             # %cond.end.1669
	movq	-600(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -608(%rbp)        # 8-byte Spill
	cqto
	movq	-608(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-32(%rbp), %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	cmpq	%rdi, %rax
	jl	.LBB63_233
	jmp	.LBB63_230
.LBB63_219:                             # %cond.false.1676
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_220
	jmp	.LBB63_221
.LBB63_220:                             # %cond.true.1677
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_233
	jmp	.LBB63_230
.LBB63_221:                             # %cond.false.1678
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_226
# BB#222:                               # %cond.true.1683
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	-32(%rbp), %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -616(%rbp)        # 8-byte Spill
	jge	.LBB63_224
# BB#223:                               # %cond.true.1693
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -624(%rbp)        # 8-byte Spill
	jmp	.LBB63_225
.LBB63_224:                             # %cond.false.1714
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
.LBB63_225:                             # %cond.end.1720
	movq	-624(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -632(%rbp)        # 8-byte Spill
	cqto
	movq	-632(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-616(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB63_233
	jmp	.LBB63_230
.LBB63_226:                             # %cond.false.1725
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_228
# BB#227:                               # %cond.true.1733
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
	jmp	.LBB63_229
.LBB63_228:                             # %cond.false.1743
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
.LBB63_229:                             # %cond.end.1749
	movq	-640(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -648(%rbp)        # 8-byte Spill
	cqto
	movq	-648(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-32(%rbp), %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	cmpq	%rdi, %rax
	jl	.LBB63_233
.LBB63_230:                             # %lor.lhs.false.1756
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_232
# BB#231:                               # %land.lhs.true.1764
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	shlq	$3, %rax
	cmpq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	jl	.LBB63_233
.LBB63_232:                             # %lor.lhs.false.1770
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	shlq	$3, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB63_237
.LBB63_233:                             # %cond.true.1776
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB63_235
# BB#234:                               # %cond.true.1783
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -652(%rbp)        # 4-byte Spill
	jmp	.LBB63_236
.LBB63_235:                             # %cond.false.1788
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -652(%rbp)        # 4-byte Spill
.LBB63_236:                             # %cond.end.1795
	movl	-652(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -240(%rbp)
	testb	$1, %cl
	jne	.LBB63_401
	jmp	.LBB63_400
.LBB63_237:                             # %cond.false.1798
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB63_239
# BB#238:                               # %cond.true.1805
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -656(%rbp)        # 4-byte Spill
	jmp	.LBB63_240
.LBB63_239:                             # %cond.false.1810
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -656(%rbp)        # 4-byte Spill
.LBB63_240:                             # %cond.end.1817
	movl	-656(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -240(%rbp)
	testb	$1, %dl
	jne	.LBB63_401
	jmp	.LBB63_400
.LBB63_241:                             # %cond.false.1820
	movb	$1, %al
	testb	$1, %al
	jne	.LBB63_242
	jmp	.LBB63_321
.LBB63_242:                             # %cond.true.1821
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_243
	jmp	.LBB63_282
.LBB63_243:                             # %cond.true.1822
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_245
# BB#244:                               # %cond.true.1830
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -664(%rbp)        # 8-byte Spill
	jmp	.LBB63_246
.LBB63_245:                             # %cond.false.1851
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -664(%rbp)        # 8-byte Spill
.LBB63_246:                             # %cond.end.1857
	movq	-664(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB63_248
# BB#247:                               # %land.lhs.true.1861
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	cmpq	$0, %rax
	jl	.LBB63_274
.LBB63_248:                             # %lor.lhs.false.1866
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_249
	jmp	.LBB63_260
.LBB63_249:                             # %cond.true.1867
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_254
# BB#250:                               # %cond.true.1872
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	-32(%rbp), %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -672(%rbp)        # 8-byte Spill
	jge	.LBB63_252
# BB#251:                               # %cond.true.1882
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -680(%rbp)        # 8-byte Spill
	jmp	.LBB63_253
.LBB63_252:                             # %cond.false.1892
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -680(%rbp)        # 8-byte Spill
.LBB63_253:                             # %cond.end.1898
	movq	-680(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -688(%rbp)        # 8-byte Spill
	cqto
	movq	-688(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-672(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB63_274
	jmp	.LBB63_271
.LBB63_254:                             # %cond.false.1903
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_255
	jmp	.LBB63_256
.LBB63_255:                             # %cond.true.1904
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_274
	jmp	.LBB63_271
.LBB63_256:                             # %cond.false.1905
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_258
# BB#257:                               # %cond.true.1913
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -696(%rbp)        # 8-byte Spill
	jmp	.LBB63_259
.LBB63_258:                             # %cond.false.1934
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -696(%rbp)        # 8-byte Spill
.LBB63_259:                             # %cond.end.1940
	movq	-696(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -704(%rbp)        # 8-byte Spill
	cqto
	movq	-704(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-32(%rbp), %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	cmpq	%rdi, %rax
	jl	.LBB63_274
	jmp	.LBB63_271
.LBB63_260:                             # %cond.false.1947
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_261
	jmp	.LBB63_262
.LBB63_261:                             # %cond.true.1948
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_274
	jmp	.LBB63_271
.LBB63_262:                             # %cond.false.1949
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_267
# BB#263:                               # %cond.true.1954
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	-32(%rbp), %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -712(%rbp)        # 8-byte Spill
	jge	.LBB63_265
# BB#264:                               # %cond.true.1964
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -720(%rbp)        # 8-byte Spill
	jmp	.LBB63_266
.LBB63_265:                             # %cond.false.1985
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -720(%rbp)        # 8-byte Spill
.LBB63_266:                             # %cond.end.1991
	movq	-720(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -728(%rbp)        # 8-byte Spill
	cqto
	movq	-728(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-712(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB63_274
	jmp	.LBB63_271
.LBB63_267:                             # %cond.false.1996
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_269
# BB#268:                               # %cond.true.2004
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -736(%rbp)        # 8-byte Spill
	jmp	.LBB63_270
.LBB63_269:                             # %cond.false.2014
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -736(%rbp)        # 8-byte Spill
.LBB63_270:                             # %cond.end.2020
	movq	-736(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -744(%rbp)        # 8-byte Spill
	cqto
	movq	-744(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-32(%rbp), %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	cmpq	%rdi, %rax
	jl	.LBB63_274
.LBB63_271:                             # %lor.lhs.false.2027
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_273
# BB#272:                               # %land.lhs.true.2035
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-32(%rbp), %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB63_274
.LBB63_273:                             # %lor.lhs.false.2041
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB63_278
.LBB63_274:                             # %cond.true.2047
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB63_276
# BB#275:                               # %cond.true.2053
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	shlq	$3, %rax
	movq	%rax, -752(%rbp)        # 8-byte Spill
	jmp	.LBB63_277
.LBB63_276:                             # %cond.false.2057
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -752(%rbp)        # 8-byte Spill
.LBB63_277:                             # %cond.end.2063
	movq	-752(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -240(%rbp)
	testb	$1, %cl
	jne	.LBB63_401
	jmp	.LBB63_400
.LBB63_278:                             # %cond.false.2065
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB63_280
# BB#279:                               # %cond.true.2071
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	shlq	$3, %rax
	movq	%rax, -760(%rbp)        # 8-byte Spill
	jmp	.LBB63_281
.LBB63_280:                             # %cond.false.2075
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -760(%rbp)        # 8-byte Spill
.LBB63_281:                             # %cond.end.2081
	movq	-760(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -240(%rbp)
	testb	$1, %dl
	jne	.LBB63_401
	jmp	.LBB63_400
.LBB63_282:                             # %cond.false.2083
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_284
# BB#283:                               # %cond.true.2091
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -768(%rbp)        # 8-byte Spill
	jmp	.LBB63_285
.LBB63_284:                             # %cond.false.2112
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -768(%rbp)        # 8-byte Spill
.LBB63_285:                             # %cond.end.2118
	movq	-768(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB63_287
# BB#286:                               # %land.lhs.true.2122
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	cmpq	$0, %rax
	jl	.LBB63_313
.LBB63_287:                             # %lor.lhs.false.2127
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_288
	jmp	.LBB63_299
.LBB63_288:                             # %cond.true.2128
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_293
# BB#289:                               # %cond.true.2133
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	-32(%rbp), %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -776(%rbp)        # 8-byte Spill
	jge	.LBB63_291
# BB#290:                               # %cond.true.2143
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -784(%rbp)        # 8-byte Spill
	jmp	.LBB63_292
.LBB63_291:                             # %cond.false.2153
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -784(%rbp)        # 8-byte Spill
.LBB63_292:                             # %cond.end.2159
	movq	-784(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -792(%rbp)        # 8-byte Spill
	cqto
	movq	-792(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-776(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB63_313
	jmp	.LBB63_310
.LBB63_293:                             # %cond.false.2164
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_294
	jmp	.LBB63_295
.LBB63_294:                             # %cond.true.2165
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_313
	jmp	.LBB63_310
.LBB63_295:                             # %cond.false.2166
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_297
# BB#296:                               # %cond.true.2174
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -800(%rbp)        # 8-byte Spill
	jmp	.LBB63_298
.LBB63_297:                             # %cond.false.2195
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -800(%rbp)        # 8-byte Spill
.LBB63_298:                             # %cond.end.2201
	movq	-800(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -808(%rbp)        # 8-byte Spill
	cqto
	movq	-808(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-32(%rbp), %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	cmpq	%rdi, %rax
	jl	.LBB63_313
	jmp	.LBB63_310
.LBB63_299:                             # %cond.false.2208
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_300
	jmp	.LBB63_301
.LBB63_300:                             # %cond.true.2209
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_313
	jmp	.LBB63_310
.LBB63_301:                             # %cond.false.2210
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_306
# BB#302:                               # %cond.true.2215
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	-32(%rbp), %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -816(%rbp)        # 8-byte Spill
	jge	.LBB63_304
# BB#303:                               # %cond.true.2225
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -824(%rbp)        # 8-byte Spill
	jmp	.LBB63_305
.LBB63_304:                             # %cond.false.2246
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -824(%rbp)        # 8-byte Spill
.LBB63_305:                             # %cond.end.2252
	movq	-824(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -832(%rbp)        # 8-byte Spill
	cqto
	movq	-832(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-816(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB63_313
	jmp	.LBB63_310
.LBB63_306:                             # %cond.false.2257
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_308
# BB#307:                               # %cond.true.2265
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -840(%rbp)        # 8-byte Spill
	jmp	.LBB63_309
.LBB63_308:                             # %cond.false.2275
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -840(%rbp)        # 8-byte Spill
.LBB63_309:                             # %cond.end.2281
	movq	-840(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -848(%rbp)        # 8-byte Spill
	cqto
	movq	-848(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-32(%rbp), %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	cmpq	%rdi, %rax
	jl	.LBB63_313
.LBB63_310:                             # %lor.lhs.false.2288
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_312
# BB#311:                               # %land.lhs.true.2296
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-32(%rbp), %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB63_313
.LBB63_312:                             # %lor.lhs.false.2302
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB63_317
.LBB63_313:                             # %cond.true.2308
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB63_315
# BB#314:                               # %cond.true.2314
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	shlq	$3, %rax
	movq	%rax, -856(%rbp)        # 8-byte Spill
	jmp	.LBB63_316
.LBB63_315:                             # %cond.false.2318
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -856(%rbp)        # 8-byte Spill
.LBB63_316:                             # %cond.end.2324
	movq	-856(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -240(%rbp)
	testb	$1, %cl
	jne	.LBB63_401
	jmp	.LBB63_400
.LBB63_317:                             # %cond.false.2326
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB63_319
# BB#318:                               # %cond.true.2332
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	shlq	$3, %rax
	movq	%rax, -864(%rbp)        # 8-byte Spill
	jmp	.LBB63_320
.LBB63_319:                             # %cond.false.2336
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -864(%rbp)        # 8-byte Spill
.LBB63_320:                             # %cond.end.2342
	movq	-864(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -240(%rbp)
	testb	$1, %dl
	jne	.LBB63_401
	jmp	.LBB63_400
.LBB63_321:                             # %cond.false.2344
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_322
	jmp	.LBB63_361
.LBB63_322:                             # %cond.true.2345
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_324
# BB#323:                               # %cond.true.2353
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -872(%rbp)        # 8-byte Spill
	jmp	.LBB63_325
.LBB63_324:                             # %cond.false.2374
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -872(%rbp)        # 8-byte Spill
.LBB63_325:                             # %cond.end.2380
	movq	-872(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB63_327
# BB#326:                               # %land.lhs.true.2384
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	cmpq	$0, %rax
	jl	.LBB63_353
.LBB63_327:                             # %lor.lhs.false.2389
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_328
	jmp	.LBB63_339
.LBB63_328:                             # %cond.true.2390
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_333
# BB#329:                               # %cond.true.2395
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	-32(%rbp), %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -880(%rbp)        # 8-byte Spill
	jge	.LBB63_331
# BB#330:                               # %cond.true.2405
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -888(%rbp)        # 8-byte Spill
	jmp	.LBB63_332
.LBB63_331:                             # %cond.false.2415
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -888(%rbp)        # 8-byte Spill
.LBB63_332:                             # %cond.end.2421
	movq	-888(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -896(%rbp)        # 8-byte Spill
	cqto
	movq	-896(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-880(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB63_353
	jmp	.LBB63_350
.LBB63_333:                             # %cond.false.2426
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_334
	jmp	.LBB63_335
.LBB63_334:                             # %cond.true.2427
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_353
	jmp	.LBB63_350
.LBB63_335:                             # %cond.false.2428
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_337
# BB#336:                               # %cond.true.2436
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -904(%rbp)        # 8-byte Spill
	jmp	.LBB63_338
.LBB63_337:                             # %cond.false.2457
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -904(%rbp)        # 8-byte Spill
.LBB63_338:                             # %cond.end.2463
	movq	-904(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -912(%rbp)        # 8-byte Spill
	cqto
	movq	-912(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-32(%rbp), %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	cmpq	%rdi, %rax
	jl	.LBB63_353
	jmp	.LBB63_350
.LBB63_339:                             # %cond.false.2470
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_340
	jmp	.LBB63_341
.LBB63_340:                             # %cond.true.2471
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_353
	jmp	.LBB63_350
.LBB63_341:                             # %cond.false.2472
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_346
# BB#342:                               # %cond.true.2477
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	-32(%rbp), %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -920(%rbp)        # 8-byte Spill
	jge	.LBB63_344
# BB#343:                               # %cond.true.2487
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -928(%rbp)        # 8-byte Spill
	jmp	.LBB63_345
.LBB63_344:                             # %cond.false.2508
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -928(%rbp)        # 8-byte Spill
.LBB63_345:                             # %cond.end.2514
	movq	-928(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -936(%rbp)        # 8-byte Spill
	cqto
	movq	-936(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-920(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB63_353
	jmp	.LBB63_350
.LBB63_346:                             # %cond.false.2519
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_348
# BB#347:                               # %cond.true.2527
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -944(%rbp)        # 8-byte Spill
	jmp	.LBB63_349
.LBB63_348:                             # %cond.false.2537
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -944(%rbp)        # 8-byte Spill
.LBB63_349:                             # %cond.end.2543
	movq	-944(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -952(%rbp)        # 8-byte Spill
	cqto
	movq	-952(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-32(%rbp), %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	cmpq	%rdi, %rax
	jl	.LBB63_353
.LBB63_350:                             # %lor.lhs.false.2550
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_352
# BB#351:                               # %land.lhs.true.2558
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-32(%rbp), %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB63_353
.LBB63_352:                             # %lor.lhs.false.2564
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB63_357
.LBB63_353:                             # %cond.true.2570
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB63_355
# BB#354:                               # %cond.true.2576
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	shlq	$3, %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB63_356
.LBB63_355:                             # %cond.false.2580
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
.LBB63_356:                             # %cond.end.2586
	movq	-960(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -240(%rbp)
	testb	$1, %cl
	jne	.LBB63_401
	jmp	.LBB63_400
.LBB63_357:                             # %cond.false.2588
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB63_359
# BB#358:                               # %cond.true.2594
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	shlq	$3, %rax
	movq	%rax, -968(%rbp)        # 8-byte Spill
	jmp	.LBB63_360
.LBB63_359:                             # %cond.false.2598
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -968(%rbp)        # 8-byte Spill
.LBB63_360:                             # %cond.end.2604
	movq	-968(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -240(%rbp)
	testb	$1, %dl
	jne	.LBB63_401
	jmp	.LBB63_400
.LBB63_361:                             # %cond.false.2606
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_363
# BB#362:                               # %cond.true.2614
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -976(%rbp)        # 8-byte Spill
	jmp	.LBB63_364
.LBB63_363:                             # %cond.false.2635
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -976(%rbp)        # 8-byte Spill
.LBB63_364:                             # %cond.end.2641
	movq	-976(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB63_366
# BB#365:                               # %land.lhs.true.2645
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	cmpq	$0, %rax
	jl	.LBB63_392
.LBB63_366:                             # %lor.lhs.false.2650
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_367
	jmp	.LBB63_378
.LBB63_367:                             # %cond.true.2651
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_372
# BB#368:                               # %cond.true.2656
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	-32(%rbp), %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -984(%rbp)        # 8-byte Spill
	jge	.LBB63_370
# BB#369:                               # %cond.true.2666
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -992(%rbp)        # 8-byte Spill
	jmp	.LBB63_371
.LBB63_370:                             # %cond.false.2676
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -992(%rbp)        # 8-byte Spill
.LBB63_371:                             # %cond.end.2682
	movq	-992(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1000(%rbp)       # 8-byte Spill
	cqto
	movq	-1000(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-984(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB63_392
	jmp	.LBB63_389
.LBB63_372:                             # %cond.false.2687
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_373
	jmp	.LBB63_374
.LBB63_373:                             # %cond.true.2688
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_392
	jmp	.LBB63_389
.LBB63_374:                             # %cond.false.2689
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_376
# BB#375:                               # %cond.true.2697
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1008(%rbp)       # 8-byte Spill
	jmp	.LBB63_377
.LBB63_376:                             # %cond.false.2718
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1008(%rbp)       # 8-byte Spill
.LBB63_377:                             # %cond.end.2724
	movq	-1008(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1016(%rbp)       # 8-byte Spill
	cqto
	movq	-1016(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-32(%rbp), %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	cmpq	%rdi, %rax
	jl	.LBB63_392
	jmp	.LBB63_389
.LBB63_378:                             # %cond.false.2731
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_379
	jmp	.LBB63_380
.LBB63_379:                             # %cond.true.2732
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_392
	jmp	.LBB63_389
.LBB63_380:                             # %cond.false.2733
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_385
# BB#381:                               # %cond.true.2738
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	-32(%rbp), %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1024(%rbp)       # 8-byte Spill
	jge	.LBB63_383
# BB#382:                               # %cond.true.2748
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1032(%rbp)       # 8-byte Spill
	jmp	.LBB63_384
.LBB63_383:                             # %cond.false.2769
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1032(%rbp)       # 8-byte Spill
.LBB63_384:                             # %cond.end.2775
	movq	-1032(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1040(%rbp)       # 8-byte Spill
	cqto
	movq	-1040(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1024(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB63_392
	jmp	.LBB63_389
.LBB63_385:                             # %cond.false.2780
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_387
# BB#386:                               # %cond.true.2788
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1048(%rbp)       # 8-byte Spill
	jmp	.LBB63_388
.LBB63_387:                             # %cond.false.2798
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1048(%rbp)       # 8-byte Spill
.LBB63_388:                             # %cond.end.2804
	movq	-1048(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1056(%rbp)       # 8-byte Spill
	cqto
	movq	-1056(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-32(%rbp), %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	cmpq	%rdi, %rax
	jl	.LBB63_392
.LBB63_389:                             # %lor.lhs.false.2811
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_391
# BB#390:                               # %land.lhs.true.2819
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-32(%rbp), %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB63_392
.LBB63_391:                             # %lor.lhs.false.2825
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB63_396
.LBB63_392:                             # %cond.true.2831
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB63_394
# BB#393:                               # %cond.true.2837
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	shlq	$3, %rax
	movq	%rax, -1064(%rbp)       # 8-byte Spill
	jmp	.LBB63_395
.LBB63_394:                             # %cond.false.2841
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1064(%rbp)       # 8-byte Spill
.LBB63_395:                             # %cond.end.2847
	movq	-1064(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -240(%rbp)
	testb	$1, %cl
	jne	.LBB63_401
	jmp	.LBB63_400
.LBB63_396:                             # %cond.false.2849
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB63_398
# BB#397:                               # %cond.true.2855
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	shlq	$3, %rax
	movq	%rax, -1072(%rbp)       # 8-byte Spill
	jmp	.LBB63_399
.LBB63_398:                             # %cond.false.2859
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1072(%rbp)       # 8-byte Spill
.LBB63_399:                             # %cond.end.2865
	movq	-1072(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -240(%rbp)
	testb	$1, %dl
	jne	.LBB63_401
.LBB63_400:                             # %lor.lhs.false.2867
	movq	$-1, %rax
	cmpq	-240(%rbp), %rax
	jae	.LBB63_402
.LBB63_401:                             # %if.then
	movq	$-1, %rdi
	callq	memory_full
.LBB63_402:                             # %if.else
	movq	-240(%rbp), %rax
	cmpq	-216(%rbp), %rax
	jg	.LBB63_404
# BB#403:                               # %if.then.2872
	movq	-240(%rbp), %rax
	movq	-216(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -216(%rbp)
	movq	-240(%rbp), %rax
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -48(%rbp)
	jmp	.LBB63_405
.LBB63_404:                             # %if.else.2874
	movq	-240(%rbp), %rdi
	callq	xmalloc
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, %rsi
	callq	make_save_memory
	movabsq	$free_save_value, %rdi
	movq	%rax, -248(%rbp)
	movb	$1, -225(%rbp)
	movq	-248(%rbp), %rsi
	callq	record_unwind_protect
.LBB63_405:                             # %if.end
	jmp	.LBB63_406
.LBB63_406:                             # %if.end.2879
	jmp	.LBB63_407
.LBB63_407:                             # %do.end
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -24(%rbp)
	movq	-48(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB63_408:                             # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -1080(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1080(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB63_409
	jmp	.LBB63_417
.LBB63_409:                             # %for.body
                                        #   in Loop: Header=BB63_408 Depth=1
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	SYMBOL_NAME
	xorl	%edi, %edi
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -24(%rbp)
	movq	-48(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -1088(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1088(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB63_411
# BB#410:                               # %cond.true.2891
                                        #   in Loop: Header=BB63_408 Depth=1
	movq	-176(%rbp), %rax
	movq	%rax, -1096(%rbp)       # 8-byte Spill
	jmp	.LBB63_415
.LBB63_411:                             # %cond.false.2892
                                        #   in Loop: Header=BB63_408 Depth=1
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -1104(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1104(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB63_413
# BB#412:                               # %cond.true.2902
                                        #   in Loop: Header=BB63_408 Depth=1
	movq	-136(%rbp), %rax
	movq	%rax, -1112(%rbp)       # 8-byte Spill
	jmp	.LBB63_414
.LBB63_413:                             # %cond.false.2903
                                        #   in Loop: Header=BB63_408 Depth=1
	movq	-96(%rbp), %rax
	movq	%rax, -1112(%rbp)       # 8-byte Spill
.LBB63_414:                             # %cond.end.2904
                                        #   in Loop: Header=BB63_408 Depth=1
	movq	-1112(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1096(%rbp)       # 8-byte Spill
.LBB63_415:                             # %cond.end.2906
                                        #   in Loop: Header=BB63_408 Depth=1
	movq	-1096(%rbp), %rax       # 8-byte Reload
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -24(%rbp)
	movq	-48(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
# BB#416:                               # %for.inc
                                        #   in Loop: Header=BB63_408 Depth=1
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB63_408
.LBB63_417:                             # %for.end
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	Fconcat
	movq	%rax, -40(%rbp)
# BB#418:                               # %do.body.2914
	testb	$1, -225(%rbp)
	je	.LBB63_420
# BB#419:                               # %if.then.2915
	xorl	%edi, %edi
	movb	$0, -225(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, -1120(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1120(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -1128(%rbp)       # 8-byte Spill
.LBB63_420:                             # %if.end.2918
	jmp	.LBB63_421
.LBB63_421:                             # %do.end.2919
	movl	$372, %edi              # imm = 0x174
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	callq	xsignal2
.Lfunc_end63:
	.size	wrong_choice, .Lfunc_end63-wrong_choice
	.cfi_endproc

	.globl	swap_in_global_binding
	.align	16, 0x90
	.type	swap_in_global_binding,@function
swap_in_global_binding:                 # @swap_in_global_binding
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp192:
	.cfi_def_cfa_offset 16
.Ltmp193:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp194:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	SYMBOL_BLV
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB64_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	do_symval_forwarding
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	set_blv_value
.LBB64_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	24(%rax), %rsi
	callq	set_blv_valcell
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB64_4
# BB#3:                                 # %if.then.5
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rcx
	movq	24(%rcx), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rsi
	callq	store_symval_forwarding
.LBB64_4:                               # %if.end.8
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	set_blv_where
	xorl	%esi, %esi
	movq	-16(%rbp), %rdi
	callq	set_blv_found
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end64:
	.size	swap_in_global_binding, .Lfunc_end64-swap_in_global_binding
	.cfi_endproc

	.align	16, 0x90
	.type	set_blv_value,@function
set_blv_value:                          # @set_blv_value
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp195:
	.cfi_def_cfa_offset 16
.Ltmp196:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp197:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %rdi
	movq	-16(%rbp), %rsi
	callq	XSETCDR
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end65:
	.size	set_blv_value, .Lfunc_end65-set_blv_value
	.cfi_endproc

	.align	16, 0x90
	.type	set_blv_valcell,@function
set_blv_valcell:                        # @set_blv_valcell
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp198:
	.cfi_def_cfa_offset 16
.Ltmp199:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp200:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 32(%rdi)
	popq	%rbp
	retq
.Lfunc_end66:
	.size	set_blv_valcell, .Lfunc_end66-set_blv_valcell
	.cfi_endproc

	.align	16, 0x90
	.type	store_symval_forwarding,@function
store_symval_forwarding:                # @store_symval_forwarding
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp201:
	.cfi_def_cfa_offset 16
.Ltmp202:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp203:
	.cfi_def_cfa_register %rbp
	subq	$272, %rsp              # imm = 0x110
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	XFWDTYPE
	movl	%eax, %ecx
	movl	%ecx, %edx
	subl	$4, %eax
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	movl	%eax, -124(%rbp)        # 4-byte Spill
	ja	.LBB67_51
# BB#53:                                # %entry
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	.LJTI67_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB67_1:                               # %sw.bb
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB67_3
# BB#2:                                 # %cond.true
	jmp	.LBB67_4
.LBB67_3:                               # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB67_4:                               # %cond.end
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	XINTFWD
	movq	8(%rax), %rax
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, (%rax)
	jmp	.LBB67_52
.LBB67_5:                               # %sw.bb.5
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	movq	-8(%rbp), %rdi
	movb	%dl, -153(%rbp)         # 1-byte Spill
	callq	XBOOLFWD
	movq	8(%rax), %rax
	movb	-153(%rbp), %dl         # 1-byte Reload
	andb	$1, %dl
	movb	%dl, (%rax)
	jmp	.LBB67_52
.LBB67_6:                               # %sw.bb.10
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	XOBJFWD
	movq	8(%rax), %rax
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, (%rax)
	movq	-8(%rbp), %rdi
	callq	XOBJFWD
	movabsq	$buffer_defaults, %rdi
	cmpq	%rdi, 8(%rax)
	jbe	.LBB67_22
# BB#7:                                 # %land.lhs.true
	movq	-8(%rbp), %rdi
	callq	XOBJFWD
	movabsq	$buffer_defaults, %rdi
	addq	$976, %rdi              # imm = 0x3D0
	cmpq	%rdi, 8(%rax)
	jae	.LBB67_22
# BB#8:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	XOBJFWD
	movabsq	$buffer_defaults, %rdi
	movq	8(%rax), %rax
	subq	%rdi, %rax
	movl	%eax, %ecx
	movl	%ecx, -28(%rbp)
	movslq	-28(%rbp), %rax
	movq	buffer_local_flags(,%rax), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -32(%rbp)
	cmpl	$0, -32(%rbp)
	jg	.LBB67_10
# BB#9:                                 # %if.then.28
	jmp	.LBB67_52
.LBB67_10:                              # %if.end
	movq	Vbuffer_alist, %rax
	movq	%rax, -40(%rbp)
.LBB67_11:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -169(%rbp)         # 1-byte Spill
	jne	.LBB67_13
# BB#12:                                # %land.rhs
                                        #   in Loop: Header=BB67_11 Depth=1
	movb	$1, %al
	movq	-40(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -48(%rbp)
	movb	%al, -169(%rbp)         # 1-byte Spill
.LBB67_13:                              # %land.end
                                        #   in Loop: Header=BB67_11 Depth=1
	movb	-169(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB67_14
	jmp	.LBB67_21
.LBB67_14:                              # %for.body
                                        #   in Loop: Header=BB67_11 Depth=1
	movq	-48(%rbp), %rdi
	callq	XBUFFER
	movq	%rax, -56(%rbp)
	cmpl	$0, -32(%rbp)
	jl	.LBB67_16
# BB#15:                                # %lor.lhs.false
                                        #   in Loop: Header=BB67_11 Depth=1
	movl	-32(%rbp), %eax
	cmpl	last_per_buffer_idx, %eax
	jl	.LBB67_17
.LBB67_16:                              # %cond.true.39
	callq	emacs_abort
.LBB67_17:                              # %cond.false.40
                                        #   in Loop: Header=BB67_11 Depth=1
	movslq	-32(%rbp), %rax
	movq	-56(%rbp), %rcx
	movsbl	800(%rcx,%rax), %edx
	cmpl	$0, %edx
	jne	.LBB67_19
# BB#18:                                # %if.then.44
                                        #   in Loop: Header=BB67_11 Depth=1
	movq	-56(%rbp), %rdi
	movl	-28(%rbp), %esi
	movq	-16(%rbp), %rdx
	callq	set_per_buffer_value
.LBB67_19:                              # %if.end.45
                                        #   in Loop: Header=BB67_11 Depth=1
	jmp	.LBB67_20
.LBB67_20:                              # %for.inc
                                        #   in Loop: Header=BB67_11 Depth=1
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB67_11
.LBB67_21:                              # %for.end
	jmp	.LBB67_22
.LBB67_22:                              # %if.end.49
	jmp	.LBB67_52
.LBB67_23:                              # %sw.bb.50
	movq	-8(%rbp), %rdi
	callq	XBUFFER_OBJFWD
	movl	4(%rax), %ecx
	movl	%ecx, -60(%rbp)
	movq	-8(%rbp), %rdi
	callq	XBUFFER_OBJFWD
	xorl	%edi, %edi
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB67_43
# BB#24:                                # %if.then.59
	movq	-72(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB67_42
# BB#25:                                # %if.then.64
	movl	$263, %edi              # imm = 0x107
	movq	-72(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget
	xorl	%edi, %edi
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-200(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%cl
	xorb	$-1, %cl
	testb	$1, %cl
	jne	.LBB67_26
	jmp	.LBB67_29
.LBB67_26:                              # %if.then.71
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	Fmemq
	xorl	%edi, %edi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB67_28
# BB#27:                                # %if.then.76
	movq	-80(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	wrong_choice
.LBB67_28:                              # %if.end.77
	jmp	.LBB67_41
.LBB67_29:                              # %if.else
	movl	$785, %edi              # imm = 0x311
	movq	-72(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget
	xorl	%edi, %edi
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%cl
	xorb	$-1, %cl
	testb	$1, %cl
	jne	.LBB67_30
	jmp	.LBB67_35
.LBB67_30:                              # %if.then.84
	movq	-80(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-16(%rbp), %rdi
	callq	NUMBERP
	testb	$1, %al
	jne	.LBB67_31
	jmp	.LBB67_33
.LBB67_31:                              # %lor.lhs.false.91
	movl	$2, %edx
	movq	-16(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	arithcompare
	xorl	%edi, %edi
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-232(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB67_33
# BB#32:                                # %lor.lhs.false.96
	movl	$3, %edx
	movq	-16(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	arithcompare
	xorl	%edi, %edi
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-240(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB67_34
.LBB67_33:                              # %if.then.101
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movq	-16(%rbp), %rdx
	callq	wrong_range
.LBB67_34:                              # %if.end.102
	jmp	.LBB67_40
.LBB67_35:                              # %if.else.103
	movq	-72(%rbp), %rdi
	callq	FUNCTIONP
	testb	$1, %al
	jne	.LBB67_36
	jmp	.LBB67_39
.LBB67_36:                              # %if.then.105
	movq	-72(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	call1
	xorl	%edi, %edi
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-248(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB67_38
# BB#37:                                # %if.then.110
	movq	-72(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	wrong_type_argument
	movq	%rax, -256(%rbp)        # 8-byte Spill
.LBB67_38:                              # %if.end.111
	jmp	.LBB67_39
.LBB67_39:                              # %if.end.112
	jmp	.LBB67_40
.LBB67_40:                              # %if.end.113
	jmp	.LBB67_41
.LBB67_41:                              # %if.end.114
	jmp	.LBB67_42
.LBB67_42:                              # %if.end.115
	jmp	.LBB67_43
.LBB67_43:                              # %if.end.116
	cmpq	$0, -24(%rbp)
	jne	.LBB67_45
# BB#44:                                # %if.then.119
	movq	current_buffer, %rax
	movq	%rax, -24(%rbp)
.LBB67_45:                              # %if.end.120
	movq	-24(%rbp), %rdi
	movl	-60(%rbp), %esi
	movq	-16(%rbp), %rdx
	callq	set_per_buffer_value
	jmp	.LBB67_52
.LBB67_46:                              # %sw.bb.121
	movq	selected_frame, %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB67_47
	jmp	.LBB67_49
.LBB67_47:                              # %land.lhs.true.124
	movq	selected_frame, %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB67_49
# BB#48:                                # %cond.true.128
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	jmp	.LBB67_50
.LBB67_49:                              # %cond.false.130
	callq	emacs_abort
.LBB67_50:                              # %cond.end.131
	movq	-264(%rbp), %rax        # 8-byte Reload
	movq	376(%rax), %rcx
	movq	72(%rcx), %rcx
	movq	%rcx, -104(%rbp)
	movq	-104(%rbp), %rcx
	movq	-8(%rbp), %rdi
	movq	%rcx, -272(%rbp)        # 8-byte Spill
	callq	XKBOARD_OBJFWD
	movslq	4(%rax), %rax
	movq	-272(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	movq	%rcx, -112(%rbp)
	movq	-16(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB67_52
.LBB67_51:                              # %sw.default
	callq	emacs_abort
.LBB67_52:                              # %sw.epilog
	addq	$272, %rsp              # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end67:
	.size	store_symval_forwarding, .Lfunc_end67-store_symval_forwarding
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI67_0:
	.quad	.LBB67_1
	.quad	.LBB67_5
	.quad	.LBB67_6
	.quad	.LBB67_23
	.quad	.LBB67_46

	.text
	.align	16, 0x90
	.type	set_blv_where,@function
set_blv_where:                          # @set_blv_where
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp204:
	.cfi_def_cfa_offset 16
.Ltmp205:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp206:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 16(%rdi)
	popq	%rbp
	retq
.Lfunc_end68:
	.size	set_blv_where, .Lfunc_end68-set_blv_where
	.cfi_endproc

	.align	16, 0x90
	.type	set_blv_found,@function
set_blv_found:                          # @set_blv_found
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp207:
	.cfi_def_cfa_offset 16
.Ltmp208:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp209:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$0, -12(%rbp)
	setne	%al
	movq	-8(%rbp), %rdi
	andb	$1, %al
	movb	(%rdi), %cl
	shlb	$2, %al
	andb	$-5, %cl
	orb	%al, %cl
	movb	%cl, (%rdi)
	popq	%rbp
	retq
.Lfunc_end69:
	.size	set_blv_found, .Lfunc_end69-set_blv_found
	.cfi_endproc

	.globl	find_symbol_value
	.align	16, 0x90
	.type	find_symbol_value,@function
find_symbol_value:                      # @find_symbol_value
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp210:
	.cfi_def_cfa_offset 16
.Ltmp211:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp212:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$0, %eax
	jne	.LBB70_2
# BB#1:                                 # %cond.true
	jmp	.LBB70_3
.LBB70_2:                               # %cond.false
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB70_3:                               # %cond.end
	movabsq	$lispsym, %rax
	movq	-16(%rbp), %rcx
	subq	$0, %rcx
	addq	%rcx, %rax
	movq	%rax, -24(%rbp)
.LBB70_4:                               # %start
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movzwl	(%rax), %ecx
	shrl	%ecx
	andl	$7, %ecx
	decl	%ecx
	movl	%ecx, %eax
	subl	$3, %ecx
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	ja	.LBB70_12
# BB#14:                                # %start
                                        #   in Loop: Header=BB70_4 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	.LJTI70_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB70_5:                               # %sw.bb
                                        #   in Loop: Header=BB70_4 Depth=1
	movq	-24(%rbp), %rdi
	callq	indirect_variable
	movq	%rax, -24(%rbp)
	jmp	.LBB70_4
.LBB70_6:                               # %sw.bb.3
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB70_13
.LBB70_7:                               # %sw.bb.4
	movq	-24(%rbp), %rdi
	callq	SYMBOL_BLV
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	swap_in_symval_forwarding
	movq	-32(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB70_9
# BB#8:                                 # %cond.true.6
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	callq	do_symval_forwarding
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB70_10
.LBB70_9:                               # %cond.false.9
	movq	-32(%rbp), %rdi
	callq	blv_value
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB70_10:                              # %cond.end.11
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, -8(%rbp)
	jmp	.LBB70_13
.LBB70_11:                              # %sw.bb.12
	movq	-24(%rbp), %rdi
	callq	SYMBOL_FWD
	movq	%rax, %rdi
	callq	do_symval_forwarding
	movq	%rax, -8(%rbp)
	jmp	.LBB70_13
.LBB70_12:                              # %sw.default
	callq	emacs_abort
.LBB70_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end70:
	.size	find_symbol_value, .Lfunc_end70-find_symbol_value
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI70_0:
	.quad	.LBB70_5
	.quad	.LBB70_7
	.quad	.LBB70_11
	.quad	.LBB70_6

	.text
	.globl	Fsymbol_value
	.align	16, 0x90
	.type	Fsymbol_value,@function
Fsymbol_value:                          # @Fsymbol_value
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp213:
	.cfi_def_cfa_offset 16
.Ltmp214:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp215:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	find_symbol_value
	movl	$957, %edi              # imm = 0x3BD
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB71_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.LBB71_2:                               # %if.end
	movl	$1007, %edi             # imm = 0x3EF
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	xsignal1
.Lfunc_end71:
	.size	Fsymbol_value, .Lfunc_end71-Fsymbol_value
	.cfi_endproc

	.globl	set_internal
	.align	16, 0x90
	.type	set_internal,@function
set_internal:                           # @set_internal
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp216:
	.cfi_def_cfa_offset 16
.Ltmp217:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp218:
	.cfi_def_cfa_register %rbp
	subq	$224, %rsp
	movb	%cl, %al
	movl	$957, %ecx              # imm = 0x3BD
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	andb	$1, %al
	movb	%al, -25(%rbp)
	movq	-16(%rbp), %rdx
	movl	%ecx, %edi
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	sete	%r8b
	andb	$1, %r8b
	movb	%r8b, -26(%rbp)
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB72_2
# BB#1:                                 # %cond.true
	jmp	.LBB72_3
.LBB72_2:                               # %cond.false
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB72_3:                               # %cond.end
	movq	-8(%rbp), %rax
	subq	$0, %rax
	movw	lispsym(,%rax), %cx
	shrw	$4, %cx
	andw	$3, %cx
	movzwl	%cx, %edx
	cmpl	$0, %edx
	je	.LBB72_8
# BB#4:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	Fkeywordp
	xorl	%edi, %edi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB72_6
# BB#5:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	Fsymbol_value
	movq	-112(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	je	.LBB72_7
.LBB72_6:                               # %if.then.12
	movl	$855, %edi              # imm = 0x357
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	xsignal1
.LBB72_7:                               # %if.else
	jmp	.LBB72_61
.LBB72_8:                               # %if.end
	movq	-8(%rbp), %rdi
	callq	maybe_set_redisplay
	movabsq	$lispsym, %rdi
	movq	-8(%rbp), %rax
	subq	$0, %rax
	addq	%rax, %rdi
	movq	%rdi, -40(%rbp)
.LBB72_9:                               # %start
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	movzwl	(%rax), %ecx
	shrl	%ecx
	andl	$7, %ecx
	decl	%ecx
	movl	%ecx, %eax
	subl	$3, %ecx
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	ja	.LBB72_59
# BB#62:                                # %start
                                        #   in Loop: Header=BB72_9 Depth=1
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	.LJTI72_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB72_10:                              # %sw.bb
                                        #   in Loop: Header=BB72_9 Depth=1
	movq	-40(%rbp), %rdi
	callq	indirect_variable
	movq	%rax, -40(%rbp)
	jmp	.LBB72_9
.LBB72_11:                              # %sw.bb.21
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 16(%rcx)
	jmp	.LBB72_61
.LBB72_12:                              # %sw.bb.22
	movq	-40(%rbp), %rdi
	callq	SYMBOL_BLV
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB72_17
# BB#13:                                # %if.then.27
	movq	-56(%rbp), %rax
	movb	(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB72_15
# BB#14:                                # %if.then.32
	movq	selected_frame, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB72_16
.LBB72_15:                              # %if.else.33
	movl	$5, %esi
	movq	current_buffer, %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -24(%rbp)
.LBB72_16:                              # %if.end.35
	jmp	.LBB72_17
.LBB72_17:                              # %if.end.36
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB72_19
# BB#18:                                # %lor.lhs.false.40
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	-56(%rbp), %rcx
	cmpq	24(%rcx), %rax
	jne	.LBB72_32
.LBB72_19:                              # %if.then.43
	movq	-56(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB72_21
# BB#20:                                # %if.then.45
	movq	-56(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	do_symval_forwarding
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	set_blv_value
.LBB72_21:                              # %if.end.48
	movq	-40(%rbp), %rdi
	callq	make_lisp_symbol
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	-56(%rbp), %rax
	movb	(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	testb	$1, %cl
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	je	.LBB72_23
# BB#22:                                # %cond.true.55
	movq	-24(%rbp), %rax
	subq	$5, %rax
	movq	64(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB72_24
.LBB72_23:                              # %cond.false.57
	movq	-24(%rbp), %rdi
	callq	XBUFFER
	movq	72(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
.LBB72_24:                              # %cond.end.59
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	assq_no_quit
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	set_blv_where
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movb	(%rax), %cl
	andb	$-5, %cl
	orb	$4, %cl
	movb	%cl, (%rax)
	movq	-48(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB72_31
# BB#25:                                # %if.then.66
	testb	$1, -25(%rbp)
	jne	.LBB72_28
# BB#26:                                # %lor.lhs.false.69
	movq	-56(%rbp), %rax
	movb	(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB72_28
# BB#27:                                # %lor.lhs.false.73
	movq	-40(%rbp), %rdi
	callq	let_shadows_buffer_binding_p
	testb	$1, %al
	jne	.LBB72_28
	jmp	.LBB72_29
.LBB72_28:                              # %if.then.76
	movq	-56(%rbp), %rax
	movb	(%rax), %cl
	andb	$-5, %cl
	movb	%cl, (%rax)
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB72_30
.LBB72_29:                              # %if.else.80
	movq	-8(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rsi
	callq	Fcons
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rdi
	callq	XBUFFER
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	XBUFFER
	movq	72(%rax), %rsi
	movq	-176(%rbp), %rdi        # 8-byte Reload
	callq	Fcons
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_local_var_alist
.LBB72_30:                              # %if.end.88
	jmp	.LBB72_31
.LBB72_31:                              # %if.end.89
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	set_blv_valcell
.LBB72_32:                              # %if.end.90
	movq	-56(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	set_blv_value
	movq	-56(%rbp), %rsi
	cmpq	$0, 8(%rsi)
	je	.LBB72_40
# BB#33:                                # %if.then.93
	testb	$1, -26(%rbp)
	je	.LBB72_35
# BB#34:                                # %if.then.95
	movq	-56(%rbp), %rax
	movq	$0, 8(%rax)
	jmp	.LBB72_39
.LBB72_35:                              # %if.else.97
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -200(%rbp)        # 8-byte Spill
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB72_36
	jmp	.LBB72_37
.LBB72_36:                              # %cond.true.101
	movq	-24(%rbp), %rdi
	callq	XBUFFER
	movq	%rax, -208(%rbp)        # 8-byte Spill
	jmp	.LBB72_38
.LBB72_37:                              # %cond.false.103
	movq	current_buffer, %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
.LBB72_38:                              # %cond.end.104
	movq	-208(%rbp), %rax        # 8-byte Reload
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	-200(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	store_symval_forwarding
.LBB72_39:                              # %if.end.106
	jmp	.LBB72_40
.LBB72_40:                              # %if.end.107
	jmp	.LBB72_60
.LBB72_41:                              # %sw.bb.108
	movq	-24(%rbp), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB72_42
	jmp	.LBB72_43
.LBB72_42:                              # %cond.true.111
	movq	-24(%rbp), %rdi
	callq	XBUFFER
	movq	%rax, -216(%rbp)        # 8-byte Spill
	jmp	.LBB72_44
.LBB72_43:                              # %cond.false.113
	movq	current_buffer, %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
.LBB72_44:                              # %cond.end.114
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rdi
	callq	SYMBOL_FWD
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	BUFFER_OBJFWDP
	testb	$1, %al
	jne	.LBB72_45
	jmp	.LBB72_55
.LBB72_45:                              # %if.then.118
	movq	-72(%rbp), %rdi
	callq	XBUFFER_OBJFWD
	movl	4(%rax), %ecx
	movl	%ecx, -76(%rbp)
	movslq	-76(%rbp), %rax
	movq	buffer_local_flags(,%rax), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -80(%rbp)
	cmpl	$0, -80(%rbp)
	jle	.LBB72_54
# BB#46:                                # %land.lhs.true
	testb	$1, -25(%rbp)
	jne	.LBB72_54
# BB#47:                                # %land.lhs.true.126
	movq	-40(%rbp), %rdi
	callq	let_shadows_buffer_binding_p
	testb	$1, %al
	jne	.LBB72_54
# BB#48:                                # %if.then.128
	jmp	.LBB72_49
.LBB72_49:                              # %do.body
	cmpl	$0, -80(%rbp)
	jl	.LBB72_51
# BB#50:                                # %lor.lhs.false.131
	movl	-80(%rbp), %eax
	cmpl	last_per_buffer_idx, %eax
	jl	.LBB72_52
.LBB72_51:                              # %if.then.134
	callq	emacs_abort
.LBB72_52:                              # %if.end.135
	movslq	-80(%rbp), %rax
	movq	-64(%rbp), %rcx
	movb	$1, 800(%rcx,%rax)
# BB#53:                                # %do.end
	jmp	.LBB72_54
.LBB72_54:                              # %if.end.136
	jmp	.LBB72_55
.LBB72_55:                              # %if.end.137
	testb	$1, -26(%rbp)
	je	.LBB72_57
# BB#56:                                # %if.then.139
	movq	-40(%rbp), %rax
	movw	(%rax), %cx
	andw	$-15, %cx
	orw	$8, %cx
	movw	%cx, (%rax)
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, 16(%rdx)
	jmp	.LBB72_58
.LBB72_57:                              # %if.else.145
	movq	-72(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-64(%rbp), %rdx
	callq	store_symval_forwarding
.LBB72_58:                              # %if.end.146
	jmp	.LBB72_60
.LBB72_59:                              # %sw.default
	callq	emacs_abort
.LBB72_60:                              # %sw.epilog
	jmp	.LBB72_61
.LBB72_61:                              # %return
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end72:
	.size	set_internal, .Lfunc_end72-set_internal
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI72_0:
	.quad	.LBB72_10
	.quad	.LBB72_12
	.quad	.LBB72_41
	.quad	.LBB72_11

	.text
	.globl	Fdefault_boundp
	.align	16, 0x90
	.type	Fdefault_boundp,@function
Fdefault_boundp:                        # @Fdefault_boundp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp219:
	.cfi_def_cfa_offset 16
.Ltmp220:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp221:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	default_value
	movl	$957, %edi              # imm = 0x3BD
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB73_2
# BB#1:                                 # %cond.true
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB73_3
.LBB73_2:                               # %cond.false
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB73_3:                               # %cond.end
	movq	-32(%rbp), %rax         # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end73:
	.size	Fdefault_boundp, .Lfunc_end73-Fdefault_boundp
	.cfi_endproc

	.align	16, 0x90
	.type	default_value,@function
default_value:                          # @default_value
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp222:
	.cfi_def_cfa_offset 16
.Ltmp223:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp224:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$0, %eax
	jne	.LBB74_2
# BB#1:                                 # %cond.true
	jmp	.LBB74_3
.LBB74_2:                               # %cond.false
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB74_3:                               # %cond.end
	movabsq	$lispsym, %rax
	movq	-16(%rbp), %rcx
	subq	$0, %rcx
	addq	%rcx, %rax
	movq	%rax, -24(%rbp)
.LBB74_4:                               # %start
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movzwl	(%rax), %ecx
	shrl	%ecx
	andl	$7, %ecx
	decl	%ecx
	movl	%ecx, %eax
	subl	$3, %ecx
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	ja	.LBB74_16
# BB#18:                                # %start
                                        #   in Loop: Header=BB74_4 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	.LJTI74_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB74_5:                               # %sw.bb
                                        #   in Loop: Header=BB74_4 Depth=1
	movq	-24(%rbp), %rdi
	callq	indirect_variable
	movq	%rax, -24(%rbp)
	jmp	.LBB74_4
.LBB74_6:                               # %sw.bb.3
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB74_17
.LBB74_7:                               # %sw.bb.4
	movq	-24(%rbp), %rdi
	callq	SYMBOL_BLV
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB74_10
# BB#8:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	-32(%rbp), %rcx
	cmpq	24(%rcx), %rax
	jne	.LBB74_10
# BB#9:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	callq	do_symval_forwarding
	movq	%rax, -8(%rbp)
	jmp	.LBB74_17
.LBB74_10:                              # %if.else
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB74_17
.LBB74_11:                              # %sw.bb.12
	movq	-24(%rbp), %rdi
	callq	SYMBOL_FWD
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	BUFFER_OBJFWDP
	testb	$1, %al
	jne	.LBB74_12
	jmp	.LBB74_15
.LBB74_12:                              # %if.then.15
	movq	-40(%rbp), %rdi
	callq	XBUFFER_OBJFWD
	movl	4(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movslq	-44(%rbp), %rax
	movq	buffer_local_flags(,%rax), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	je	.LBB74_14
# BB#13:                                # %if.then.21
	movl	-44(%rbp), %edi
	callq	per_buffer_default
	movq	%rax, -8(%rbp)
	jmp	.LBB74_17
.LBB74_14:                              # %if.end
	jmp	.LBB74_15
.LBB74_15:                              # %if.end.23
	movq	-40(%rbp), %rdi
	callq	do_symval_forwarding
	movq	%rax, -8(%rbp)
	jmp	.LBB74_17
.LBB74_16:                              # %sw.default
	callq	emacs_abort
.LBB74_17:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end74:
	.size	default_value, .Lfunc_end74-default_value
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI74_0:
	.quad	.LBB74_5
	.quad	.LBB74_7
	.quad	.LBB74_11
	.quad	.LBB74_6

	.text
	.globl	Fdefault_value
	.align	16, 0x90
	.type	Fdefault_value,@function
Fdefault_value:                         # @Fdefault_value
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp225:
	.cfi_def_cfa_offset 16
.Ltmp226:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp227:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	default_value
	movl	$957, %edi              # imm = 0x3BD
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB75_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.LBB75_2:                               # %if.end
	movl	$1007, %edi             # imm = 0x3EF
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	xsignal1
.Lfunc_end75:
	.size	Fdefault_value, .Lfunc_end75-Fdefault_value
	.cfi_endproc

	.globl	Fset_default
	.align	16, 0x90
	.type	Fset_default,@function
Fset_default:                           # @Fset_default
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp228:
	.cfi_def_cfa_offset 16
.Ltmp229:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp230:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	andq	$7, %rsi
	movl	%esi, %eax
	cmpl	$0, %eax
	jne	.LBB76_2
# BB#1:                                 # %cond.true
	jmp	.LBB76_3
.LBB76_2:                               # %cond.false
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB76_3:                               # %cond.end
	movq	-16(%rbp), %rax
	subq	$0, %rax
	movw	lispsym(,%rax), %cx
	shrw	$4, %cx
	andw	$3, %cx
	movzwl	%cx, %edx
	cmpl	$0, %edx
	je	.LBB76_8
# BB#4:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	Fkeywordp
	xorl	%edi, %edi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB76_6
# BB#5:                                 # %lor.lhs.false
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	Fdefault_value
	movq	-88(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	je	.LBB76_7
.LBB76_6:                               # %if.then.9
	movl	$855, %edi              # imm = 0x357
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	xsignal1
.LBB76_7:                               # %if.else
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB76_31
.LBB76_8:                               # %if.end
	movabsq	$lispsym, %rax
	movq	-16(%rbp), %rcx
	subq	$0, %rcx
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
.LBB76_9:                               # %start
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movzwl	(%rax), %ecx
	shrl	%ecx
	andl	$7, %ecx
	decl	%ecx
	movl	%ecx, %eax
	subl	$3, %ecx
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movl	%ecx, -100(%rbp)        # 4-byte Spill
	ja	.LBB76_30
# BB#32:                                # %start
                                        #   in Loop: Header=BB76_9 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	.LJTI76_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB76_10:                              # %sw.bb
                                        #   in Loop: Header=BB76_9 Depth=1
	movq	-32(%rbp), %rdi
	callq	indirect_variable
	movq	%rax, -32(%rbp)
	jmp	.LBB76_9
.LBB76_11:                              # %sw.bb.18
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	Fset
	movq	%rax, -8(%rbp)
	jmp	.LBB76_31
.LBB76_12:                              # %sw.bb.20
	movq	-32(%rbp), %rdi
	callq	SYMBOL_BLV
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	XSETCDR
	movq	-40(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB76_15
# BB#13:                                # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	-40(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jne	.LBB76_15
# BB#14:                                # %if.then.26
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-24(%rbp), %rsi
	callq	store_symval_forwarding
.LBB76_15:                              # %if.end.28
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB76_31
.LBB76_16:                              # %sw.bb.29
	movq	-32(%rbp), %rdi
	callq	SYMBOL_FWD
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	BUFFER_OBJFWDP
	testb	$1, %al
	jne	.LBB76_17
	jmp	.LBB76_29
.LBB76_17:                              # %if.then.32
	movq	-48(%rbp), %rdi
	callq	XBUFFER_OBJFWD
	movl	4(%rax), %ecx
	movl	%ecx, -52(%rbp)
	movslq	-52(%rbp), %rax
	movq	buffer_local_flags(,%rax), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -56(%rbp)
	movl	-52(%rbp), %edi
	movq	-24(%rbp), %rsi
	callq	set_per_buffer_default
	cmpl	$0, -56(%rbp)
	jle	.LBB76_28
# BB#18:                                # %if.then.39
	movq	all_buffers, %rax
	movq	%rax, -64(%rbp)
.LBB76_19:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB76_27
# BB#20:                                # %for.body
                                        #   in Loop: Header=BB76_19 Depth=1
	cmpl	$0, -56(%rbp)
	jl	.LBB76_22
# BB#21:                                # %lor.lhs.false.43
                                        #   in Loop: Header=BB76_19 Depth=1
	movl	-56(%rbp), %eax
	cmpl	last_per_buffer_idx, %eax
	jl	.LBB76_23
.LBB76_22:                              # %cond.true.46
	callq	emacs_abort
.LBB76_23:                              # %cond.false.47
                                        #   in Loop: Header=BB76_19 Depth=1
	movslq	-56(%rbp), %rax
	movq	-64(%rbp), %rcx
	movsbl	800(%rcx,%rax), %edx
	cmpl	$0, %edx
	jne	.LBB76_25
# BB#24:                                # %if.then.51
                                        #   in Loop: Header=BB76_19 Depth=1
	movq	-64(%rbp), %rdi
	movl	-52(%rbp), %esi
	movq	-24(%rbp), %rdx
	callq	set_per_buffer_value
.LBB76_25:                              # %if.end.52
                                        #   in Loop: Header=BB76_19 Depth=1
	jmp	.LBB76_26
.LBB76_26:                              # %for.inc
                                        #   in Loop: Header=BB76_19 Depth=1
	movq	-64(%rbp), %rax
	movq	728(%rax), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB76_19
.LBB76_27:                              # %for.end
	jmp	.LBB76_28
.LBB76_28:                              # %if.end.53
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB76_31
.LBB76_29:                              # %if.else.54
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	Fset
	movq	%rax, -8(%rbp)
	jmp	.LBB76_31
.LBB76_30:                              # %sw.default
	callq	emacs_abort
.LBB76_31:                              # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end76:
	.size	Fset_default, .Lfunc_end76-Fset_default
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI76_0:
	.quad	.LBB76_10
	.quad	.LBB76_12
	.quad	.LBB76_16
	.quad	.LBB76_11

	.text
	.globl	Fsetq_default
	.align	16, 0x90
	.type	Fsetq_default,@function
Fsetq_default:                          # @Fsetq_default
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp231:
	.cfi_def_cfa_offset 16
.Ltmp232:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp233:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)
	movq	%rdi, -16(%rbp)
.LBB77_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB77_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB77_1 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	Fcar
	movq	%rax, %rdi
	callq	eval_sub
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	Fset_default
	movq	-16(%rbp), %rsi
	subq	$3, %rsi
	movq	8(%rsi), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	Fcdr
	movq	%rax, -16(%rbp)
	jmp	.LBB77_1
.LBB77_3:                               # %while.end
	movq	-32(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end77:
	.size	Fsetq_default, .Lfunc_end77-Fsetq_default
	.cfi_endproc

	.globl	Fmake_variable_buffer_local
	.align	16, 0x90
	.type	Fmake_variable_buffer_local,@function
Fmake_variable_buffer_local:            # @Fmake_variable_buffer_local
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp234:
	.cfi_def_cfa_offset 16
.Ltmp235:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp236:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -16(%rbp)
	movq	$0, -32(%rbp)
	movq	-16(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$0, %eax
	jne	.LBB78_2
# BB#1:                                 # %cond.true
	jmp	.LBB78_3
.LBB78_2:                               # %cond.false
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB78_3:                               # %cond.end
	movabsq	$lispsym, %rax
	movq	-16(%rbp), %rcx
	subq	$0, %rcx
	addq	%rcx, %rax
	movq	%rax, -24(%rbp)
.LBB78_4:                               # %start
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movzwl	(%rax), %ecx
	shrl	%ecx
	andl	$7, %ecx
	decl	%ecx
	movl	%ecx, %eax
	subl	$3, %ecx
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movl	%ecx, -132(%rbp)        # 4-byte Spill
	ja	.LBB78_18
# BB#27:                                # %start
                                        #   in Loop: Header=BB78_4 Depth=1
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	.LJTI78_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB78_5:                               # %sw.bb
                                        #   in Loop: Header=BB78_4 Depth=1
	movq	-24(%rbp), %rdi
	callq	indirect_variable
	movq	%rax, -24(%rbp)
	jmp	.LBB78_4
.LBB78_6:                               # %sw.bb.3
	movl	$957, %edi              # imm = 0x3BD
	movb	$0, -41(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB78_8
# BB#7:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -40(%rbp)
.LBB78_8:                               # %if.end
	jmp	.LBB78_19
.LBB78_9:                               # %sw.bb.11
	movq	-24(%rbp), %rdi
	callq	SYMBOL_BLV
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movb	(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB78_11
# BB#10:                                # %if.then.17
	movq	-16(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SDATA
	movabsq	$.L.str.5, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	error
.LBB78_11:                              # %if.end.20
	jmp	.LBB78_19
.LBB78_12:                              # %sw.bb.21
	movb	$1, -41(%rbp)
	movq	-24(%rbp), %rdi
	callq	SYMBOL_FWD
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	KBOARD_OBJFWDP
	testb	$1, %al
	jne	.LBB78_13
	jmp	.LBB78_14
.LBB78_13:                              # %if.then.25
	movq	-16(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SDATA
	movabsq	$.L.str.5, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	error
.LBB78_14:                              # %if.else
	movq	-40(%rbp), %rdi
	callq	BUFFER_OBJFWDP
	testb	$1, %al
	jne	.LBB78_15
	jmp	.LBB78_16
.LBB78_15:                              # %if.then.30
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB78_26
.LBB78_16:                              # %if.end.31
	jmp	.LBB78_17
.LBB78_17:                              # %if.end.32
	jmp	.LBB78_19
.LBB78_18:                              # %sw.default
	callq	emacs_abort
.LBB78_19:                              # %sw.epilog
	movq	-24(%rbp), %rax
	movw	(%rax), %cx
	shrw	$4, %cx
	andw	$3, %cx
	movzwl	%cx, %edx
	cmpl	$0, %edx
	je	.LBB78_21
# BB#20:                                # %if.then.37
	movq	-16(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SDATA
	movabsq	$.L.str.5, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	error
.LBB78_21:                              # %if.end.40
	cmpq	$0, -32(%rbp)
	jne	.LBB78_25
# BB#22:                                # %if.then.42
	movq	-24(%rbp), %rdi
	movb	-41(%rbp), %al
	movq	-40(%rbp), %rdx
	andb	$1, %al
	movzbl	%al, %esi
	callq	make_blv
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movw	(%rax), %cx
	andw	$-15, %cx
	orw	$4, %cx
	movw	%cx, (%rax)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	SET_SYMBOL_BLV
	movq	-24(%rbp), %rdi
	callq	make_lisp_symbol
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	let_shadows_global_binding_p
	testb	$1, %al
	jne	.LBB78_23
	jmp	.LBB78_24
.LBB78_23:                              # %if.then.49
	movl	$4, %esi
	leaq	-96(%rbp), %rax
	movabsq	$.L.str.6, %rcx
	movq	$39, -96(%rbp)
	movq	$-1, -88(%rbp)
	movq	$0, -80(%rbp)
	movq	%rcx, -72(%rbp)
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-16(%rbp), %rdi
	callq	SYMBOL_NAME
	movl	$2, %esi
	movl	%esi, %edi
	leaq	-112(%rbp), %rsi
	movq	%rax, -104(%rbp)
	callq	Fmessage
	movq	%rax, -152(%rbp)        # 8-byte Spill
.LBB78_24:                              # %if.end.55
	jmp	.LBB78_25
.LBB78_25:                              # %if.end.56
	movq	-32(%rbp), %rax
	movb	(%rax), %cl
	andb	$-2, %cl
	orb	$1, %cl
	movb	%cl, (%rax)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB78_26:                              # %return
	movq	-8(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end78:
	.size	Fmake_variable_buffer_local, .Lfunc_end78-Fmake_variable_buffer_local
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI78_0:
	.quad	.LBB78_5
	.quad	.LBB78_9
	.quad	.LBB78_12
	.quad	.LBB78_6

	.text
	.align	16, 0x90
	.type	KBOARD_OBJFWDP,@function
KBOARD_OBJFWDP:                         # @KBOARD_OBJFWDP
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp237:
	.cfi_def_cfa_offset 16
.Ltmp238:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp239:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	XFWDTYPE
	cmpl	$4, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end79:
	.size	KBOARD_OBJFWDP, .Lfunc_end79-KBOARD_OBJFWDP
	.cfi_endproc

	.align	16, 0x90
	.type	make_blv,@function
make_blv:                               # @make_blv
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp240:
	.cfi_def_cfa_offset 16
.Ltmp241:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp242:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movb	%sil, %al
	movl	$40, %esi
	movl	%esi, %ecx
	movq	%rdx, -8(%rbp)
	movq	%rdi, -16(%rbp)
	andb	$1, %al
	movb	%al, -17(%rbp)
	movq	%rcx, %rdi
	callq	xmalloc
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	make_lisp_symbol
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	testb	$1, -17(%rbp)
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	je	.LBB80_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rdi
	callq	do_symval_forwarding
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB80_3
.LBB80_2:                               # %cond.false
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB80_3:                               # %cond.end
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	%rax, -48(%rbp)
	testb	$1, -17(%rbp)
	je	.LBB80_5
# BB#4:                                 # %cond.true.5
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB80_6
.LBB80_5:                               # %cond.false.7
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	jmp	.LBB80_6
.LBB80_6:                               # %cond.end.8
	movq	-72(%rbp), %rax         # 8-byte Reload
	xorl	%edi, %edi
	movq	-32(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	set_blv_where
	movq	-32(%rbp), %rax
	movb	(%rax), %dl
	andb	$-3, %dl
	movb	%dl, (%rax)
	movq	-32(%rbp), %rax
	movb	(%rax), %dl
	andb	$-2, %dl
	movb	%dl, (%rax)
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	set_blv_defcell
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	set_blv_valcell
	xorl	%esi, %esi
	movq	-32(%rbp), %rdi
	callq	set_blv_found
	movq	-32(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end80:
	.size	make_blv, .Lfunc_end80-make_blv
	.cfi_endproc

	.globl	Fmake_local_variable
	.align	16, 0x90
	.type	Fmake_local_variable,@function
Fmake_local_variable:                   # @Fmake_local_variable
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp243:
	.cfi_def_cfa_offset 16
.Ltmp244:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp245:
	.cfi_def_cfa_register %rbp
	subq	$304, %rsp              # imm = 0x130
	movq	%rdi, -16(%rbp)
	movq	$0, -56(%rbp)
	movq	-16(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$0, %eax
	jne	.LBB81_2
# BB#1:                                 # %cond.true
	jmp	.LBB81_3
.LBB81_2:                               # %cond.false
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -192(%rbp)        # 8-byte Spill
.LBB81_3:                               # %cond.end
	movabsq	$lispsym, %rax
	movq	-16(%rbp), %rcx
	subq	$0, %rcx
	addq	%rcx, %rax
	movq	%rax, -48(%rbp)
.LBB81_4:                               # %start
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	movzwl	(%rax), %ecx
	shrl	%ecx
	andl	$7, %ecx
	decl	%ecx
	movl	%ecx, %eax
	subl	$3, %ecx
	movq	%rax, -200(%rbp)        # 8-byte Spill
	movl	%ecx, -204(%rbp)        # 4-byte Spill
	ja	.LBB81_13
# BB#38:                                # %start
                                        #   in Loop: Header=BB81_4 Depth=1
	movq	-200(%rbp), %rax        # 8-byte Reload
	movq	.LJTI81_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB81_5:                               # %sw.bb
                                        #   in Loop: Header=BB81_4 Depth=1
	movq	-48(%rbp), %rdi
	callq	indirect_variable
	movq	%rax, -48(%rbp)
	jmp	.LBB81_4
.LBB81_6:                               # %sw.bb.3
	movb	$0, -25(%rbp)
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB81_14
.LBB81_7:                               # %sw.bb.5
	movq	-48(%rbp), %rdi
	callq	SYMBOL_BLV
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movb	(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB81_9
# BB#8:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SDATA
	movabsq	$.L.str.5, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	error
.LBB81_9:                               # %if.end
	jmp	.LBB81_14
.LBB81_10:                              # %sw.bb.13
	movb	$1, -25(%rbp)
	movq	-48(%rbp), %rdi
	callq	SYMBOL_FWD
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	KBOARD_OBJFWDP
	testb	$1, %al
	jne	.LBB81_11
	jmp	.LBB81_12
.LBB81_11:                              # %if.then.17
	movq	-16(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SDATA
	movabsq	$.L.str.5, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	error
.LBB81_12:                              # %if.end.20
	jmp	.LBB81_14
.LBB81_13:                              # %sw.default
	callq	emacs_abort
.LBB81_14:                              # %sw.epilog
	movq	-48(%rbp), %rax
	movw	(%rax), %cx
	shrw	$4, %cx
	andw	$3, %cx
	movzwl	%cx, %edx
	cmpl	$0, %edx
	je	.LBB81_16
# BB#15:                                # %if.then.25
	movq	-16(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SDATA
	movabsq	$.L.str.5, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	error
.LBB81_16:                              # %if.end.28
	cmpq	$0, -56(%rbp)
	je	.LBB81_18
# BB#17:                                # %cond.true.30
	movq	-56(%rbp), %rax
	movb	(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB81_20
	jmp	.LBB81_24
.LBB81_18:                              # %cond.false.35
	testb	$1, -25(%rbp)
	je	.LBB81_24
# BB#19:                                # %land.lhs.true
	movq	-40(%rbp), %rdi
	callq	BUFFER_OBJFWDP
	testb	$1, %al
	jne	.LBB81_20
	jmp	.LBB81_24
.LBB81_20:                              # %if.then.41
	movq	-16(%rbp), %rdi
	callq	Fboundp
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB81_22
# BB#21:                                # %cond.true.46
	movq	-16(%rbp), %rdi
	callq	Fsymbol_value
	movq	%rax, -232(%rbp)        # 8-byte Spill
	jmp	.LBB81_23
.LBB81_22:                              # %cond.false.48
	movl	$957, %edi              # imm = 0x3BD
	callq	builtin_lisp_symbol
	movq	%rax, -232(%rbp)        # 8-byte Spill
.LBB81_23:                              # %cond.end.50
	movq	-232(%rbp), %rax        # 8-byte Reload
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fset
	movq	-16(%rbp), %rsi
	movq	%rsi, -8(%rbp)
	movq	%rax, -240(%rbp)        # 8-byte Spill
	jmp	.LBB81_37
.LBB81_24:                              # %if.end.52
	cmpq	$0, -56(%rbp)
	jne	.LBB81_28
# BB#25:                                # %if.then.54
	movq	-48(%rbp), %rdi
	movb	-25(%rbp), %al
	movq	-40(%rbp), %rdx
	andb	$1, %al
	movzbl	%al, %esi
	callq	make_blv
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movw	(%rax), %cx
	andw	$-15, %cx
	orw	$4, %cx
	movw	%cx, (%rax)
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	SET_SYMBOL_BLV
	movq	-48(%rbp), %rdi
	callq	make_lisp_symbol
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	let_shadows_global_binding_p
	testb	$1, %al
	jne	.LBB81_26
	jmp	.LBB81_27
.LBB81_26:                              # %if.then.61
	movl	$4, %esi
	leaq	-104(%rbp), %rax
	movabsq	$.L.str.7, %rcx
	movq	$38, -104(%rbp)
	movq	$-1, -96(%rbp)
	movq	$0, -88(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-16(%rbp), %rdi
	callq	SYMBOL_NAME
	movl	$3, %esi
	movl	%esi, %edi
	leaq	-128(%rbp), %rsi
	movq	%rax, -120(%rbp)
	movq	current_buffer, %rax
	movq	8(%rax), %rax
	movq	%rax, -112(%rbp)
	callq	Fmessage
	movq	%rax, -248(%rbp)        # 8-byte Spill
.LBB81_27:                              # %if.end.68
	jmp	.LBB81_28
.LBB81_28:                              # %if.end.69
	movq	-48(%rbp), %rdi
	callq	make_lisp_symbol
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	current_buffer, %rax
	movq	72(%rax), %rsi
	callq	Fassq
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-256(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB81_34
# BB#29:                                # %if.then.75
	movq	-48(%rbp), %rdi
	callq	let_shadows_buffer_binding_p
	testb	$1, %al
	jne	.LBB81_30
	jmp	.LBB81_31
.LBB81_30:                              # %if.then.77
	movl	$4, %esi
	leaq	-168(%rbp), %rax
	movabsq	$.L.str.8, %rcx
	movq	$47, -168(%rbp)
	movq	$-1, -160(%rbp)
	movq	$0, -152(%rbp)
	movq	%rcx, -144(%rbp)
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	-16(%rbp), %rdi
	callq	SYMBOL_NAME
	movl	$2, %esi
	movl	%esi, %edi
	leaq	-184(%rbp), %rsi
	movq	%rax, -176(%rbp)
	callq	Fmessage
	movq	%rax, -264(%rbp)        # 8-byte Spill
.LBB81_31:                              # %if.end.93
	movq	-16(%rbp), %rdi
	callq	find_symbol_value
	movq	current_buffer, %rdi
	movq	-16(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	24(%rdx), %rdx
	subq	$3, %rdx
	movq	8(%rdx), %rsi
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	Fcons
	movq	current_buffer, %rcx
	movq	72(%rcx), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_local_var_alist
	movq	current_buffer, %rax
	movq	-56(%rbp), %rcx
	movq	16(%rcx), %rdi
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	XBUFFER
	movq	-288(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB81_33
# BB#32:                                # %if.then.102
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	set_blv_where
.LBB81_33:                              # %if.end.104
	xorl	%esi, %esi
	movq	-56(%rbp), %rdi
	callq	set_blv_found
.LBB81_34:                              # %if.end.105
	movq	-56(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB81_36
# BB#35:                                # %if.then.108
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	swap_in_symval_forwarding
.LBB81_36:                              # %if.end.109
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB81_37:                              # %return
	movq	-8(%rbp), %rax
	addq	$304, %rsp              # imm = 0x130
	popq	%rbp
	retq
.Lfunc_end81:
	.size	Fmake_local_variable, .Lfunc_end81-Fmake_local_variable
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI81_0:
	.quad	.LBB81_5
	.quad	.LBB81_7
	.quad	.LBB81_10
	.quad	.LBB81_6

	.text
	.globl	Fkill_local_variable
	.align	16, 0x90
	.type	Fkill_local_variable,@function
Fkill_local_variable:                   # @Fkill_local_variable
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp246:
	.cfi_def_cfa_offset 16
.Ltmp247:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp248:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$0, %eax
	jne	.LBB82_2
# BB#1:                                 # %cond.true
	jmp	.LBB82_3
.LBB82_2:                               # %cond.false
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB82_3:                               # %cond.end
	movabsq	$lispsym, %rax
	movq	-16(%rbp), %rcx
	subq	$0, %rcx
	addq	%rcx, %rax
	movq	%rax, -40(%rbp)
.LBB82_4:                               # %start
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	movzwl	(%rax), %ecx
	shrl	%ecx
	andl	$7, %ecx
	decl	%ecx
	movl	%ecx, %eax
	subl	$3, %ecx
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	ja	.LBB82_20
# BB#27:                                # %start
                                        #   in Loop: Header=BB82_4 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI82_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB82_5:                               # %sw.bb
                                        #   in Loop: Header=BB82_4 Depth=1
	movq	-40(%rbp), %rdi
	callq	indirect_variable
	movq	%rax, -40(%rbp)
	jmp	.LBB82_4
.LBB82_6:                               # %sw.bb.3
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB82_26
.LBB82_7:                               # %sw.bb.4
	movq	-40(%rbp), %rdi
	callq	SYMBOL_FWD
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	BUFFER_OBJFWDP
	testb	$1, %al
	jne	.LBB82_8
	jmp	.LBB82_16
.LBB82_8:                               # %if.then
	movq	-48(%rbp), %rdi
	callq	XBUFFER_OBJFWD
	movl	4(%rax), %ecx
	movl	%ecx, -52(%rbp)
	movslq	-52(%rbp), %rax
	movq	buffer_local_flags(,%rax), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -56(%rbp)
	cmpl	$0, -56(%rbp)
	jle	.LBB82_15
# BB#9:                                 # %if.then.13
	jmp	.LBB82_10
.LBB82_10:                              # %do.body
	cmpl	$0, -56(%rbp)
	jl	.LBB82_12
# BB#11:                                # %lor.lhs.false
	movl	-56(%rbp), %eax
	cmpl	last_per_buffer_idx, %eax
	jl	.LBB82_13
.LBB82_12:                              # %if.then.18
	callq	emacs_abort
.LBB82_13:                              # %if.end
	movslq	-56(%rbp), %rax
	movq	current_buffer, %rcx
	movb	$0, 800(%rcx,%rax)
# BB#14:                                # %do.end
	movq	current_buffer, %rdi
	movl	-52(%rbp), %esi
	movl	-52(%rbp), %eax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	movl	%esi, -100(%rbp)        # 4-byte Spill
	callq	per_buffer_default
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	set_per_buffer_value
.LBB82_15:                              # %if.end.20
	jmp	.LBB82_16
.LBB82_16:                              # %if.end.21
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB82_26
.LBB82_17:                              # %sw.bb.22
	movq	-40(%rbp), %rdi
	callq	SYMBOL_BLV
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movb	(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB82_19
# BB#18:                                # %if.then.28
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB82_26
.LBB82_19:                              # %if.end.29
	jmp	.LBB82_21
.LBB82_20:                              # %sw.default
	callq	emacs_abort
.LBB82_21:                              # %sw.epilog
	movq	-40(%rbp), %rdi
	callq	make_lisp_symbol
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	current_buffer, %rax
	movq	72(%rax), %rsi
	callq	Fassq
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB82_23
# BB#22:                                # %if.then.35
	movq	current_buffer, %rdi
	movq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	movq	72(%rcx), %rsi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	Fdelq
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_local_var_alist
.LBB82_23:                              # %if.end.38
	movl	$5, %esi
	movq	current_buffer, %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	-32(%rbp), %rdi
	cmpq	16(%rdi), %rax
	jne	.LBB82_25
# BB#24:                                # %if.then.42
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	set_blv_where
	movq	-32(%rbp), %rax
	movb	(%rax), %cl
	andb	$-5, %cl
	movb	%cl, (%rax)
	movq	-16(%rbp), %rdi
	callq	find_symbol_value
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB82_25:                              # %if.end.47
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB82_26:                              # %return
	movq	-8(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end82:
	.size	Fkill_local_variable, .Lfunc_end82-Fkill_local_variable
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI82_0:
	.quad	.LBB82_5
	.quad	.LBB82_17
	.quad	.LBB82_7
	.quad	.LBB82_6

	.text
	.globl	Fmake_variable_frame_local
	.align	16, 0x90
	.type	Fmake_variable_frame_local,@function
Fmake_variable_frame_local:             # @Fmake_variable_frame_local
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp249:
	.cfi_def_cfa_offset 16
.Ltmp250:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp251:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -16(%rbp)
	movq	$0, -48(%rbp)
	movq	-16(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$0, %eax
	jne	.LBB83_2
# BB#1:                                 # %cond.true
	jmp	.LBB83_3
.LBB83_2:                               # %cond.false
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB83_3:                               # %cond.end
	movabsq	$lispsym, %rax
	movq	-16(%rbp), %rcx
	subq	$0, %rcx
	addq	%rcx, %rax
	movq	%rax, -40(%rbp)
.LBB83_4:                               # %start
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	movzwl	(%rax), %ecx
	shrl	%ecx
	andl	$7, %ecx
	decl	%ecx
	movl	%ecx, %eax
	subl	$3, %ecx
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movl	%ecx, -132(%rbp)        # 4-byte Spill
	ja	.LBB83_16
# BB#23:                                # %start
                                        #   in Loop: Header=BB83_4 Depth=1
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	.LJTI83_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB83_5:                               # %sw.bb
                                        #   in Loop: Header=BB83_4 Depth=1
	movq	-40(%rbp), %rdi
	callq	indirect_variable
	movq	%rax, -40(%rbp)
	jmp	.LBB83_4
.LBB83_6:                               # %sw.bb.3
	movl	$957, %edi              # imm = 0x3BD
	movb	$0, -17(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB83_8
# BB#7:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)
.LBB83_8:                               # %if.end
	jmp	.LBB83_17
.LBB83_9:                               # %sw.bb.11
	movq	-40(%rbp), %rdi
	callq	SYMBOL_BLV
	movb	(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB83_11
# BB#10:                                # %if.then.17
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB83_22
.LBB83_11:                              # %if.else
	movq	-16(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SDATA
	movabsq	$.L.str.9, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	error
.LBB83_12:                              # %sw.bb.20
	movb	$1, -17(%rbp)
	movq	-40(%rbp), %rdi
	callq	SYMBOL_FWD
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	KBOARD_OBJFWDP
	testb	$1, %al
	jne	.LBB83_14
# BB#13:                                # %lor.lhs.false
	movq	-32(%rbp), %rdi
	callq	BUFFER_OBJFWDP
	testb	$1, %al
	jne	.LBB83_14
	jmp	.LBB83_15
.LBB83_14:                              # %if.then.28
	movq	-16(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SDATA
	movabsq	$.L.str.9, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	error
.LBB83_15:                              # %if.end.31
	jmp	.LBB83_17
.LBB83_16:                              # %sw.default
	callq	emacs_abort
.LBB83_17:                              # %sw.epilog
	movq	-40(%rbp), %rax
	movw	(%rax), %cx
	shrw	$4, %cx
	andw	$3, %cx
	movzwl	%cx, %edx
	cmpl	$0, %edx
	je	.LBB83_19
# BB#18:                                # %if.then.36
	movq	-16(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SDATA
	movabsq	$.L.str.9, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	error
.LBB83_19:                              # %if.end.39
	movq	-40(%rbp), %rdi
	movb	-17(%rbp), %al
	movq	-32(%rbp), %rdx
	andb	$1, %al
	movzbl	%al, %esi
	callq	make_blv
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movb	(%rax), %cl
	andb	$-3, %cl
	orb	$2, %cl
	movb	%cl, (%rax)
	movq	-40(%rbp), %rax
	movw	(%rax), %r8w
	andw	$-15, %r8w
	orw	$4, %r8w
	movw	%r8w, (%rax)
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	SET_SYMBOL_BLV
	movq	-40(%rbp), %rdi
	callq	make_lisp_symbol
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	let_shadows_global_binding_p
	testb	$1, %al
	jne	.LBB83_20
	jmp	.LBB83_21
.LBB83_20:                              # %if.then.49
	movl	$4, %esi
	leaq	-96(%rbp), %rax
	movabsq	$.L.str.10, %rcx
	movq	$38, -96(%rbp)
	movq	$-1, -88(%rbp)
	movq	$0, -80(%rbp)
	movq	%rcx, -72(%rbp)
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-16(%rbp), %rdi
	callq	SYMBOL_NAME
	movl	$2, %esi
	movl	%esi, %edi
	leaq	-112(%rbp), %rsi
	movq	%rax, -104(%rbp)
	callq	Fmessage
	movq	%rax, -152(%rbp)        # 8-byte Spill
.LBB83_21:                              # %if.end.55
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB83_22:                              # %return
	movq	-8(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end83:
	.size	Fmake_variable_frame_local, .Lfunc_end83-Fmake_variable_frame_local
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI83_0:
	.quad	.LBB83_5
	.quad	.LBB83_9
	.quad	.LBB83_12
	.quad	.LBB83_6

	.text
	.globl	Flocal_variable_p
	.align	16, 0x90
	.type	Flocal_variable_p,@function
Flocal_variable_p:                      # @Flocal_variable_p
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp252:
	.cfi_def_cfa_offset 16
.Ltmp253:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp254:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	decode_buffer
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB84_2
# BB#1:                                 # %cond.true
	jmp	.LBB84_3
.LBB84_2:                               # %cond.false
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB84_3:                               # %cond.end
	movabsq	$lispsym, %rax
	movq	-16(%rbp), %rcx
	subq	$0, %rcx
	addq	%rcx, %rax
	movq	%rax, -40(%rbp)
.LBB84_4:                               # %start
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	movzwl	(%rax), %ecx
	shrl	%ecx
	andl	$7, %ecx
	decl	%ecx
	movl	%ecx, %eax
	subl	$3, %ecx
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	ja	.LBB84_29
# BB#31:                                # %start
                                        #   in Loop: Header=BB84_4 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	.LJTI84_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB84_5:                               # %sw.bb
                                        #   in Loop: Header=BB84_4 Depth=1
	movq	-40(%rbp), %rdi
	callq	indirect_variable
	movq	%rax, -40(%rbp)
	jmp	.LBB84_4
.LBB84_6:                               # %sw.bb.4
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB84_30
.LBB84_7:                               # %sw.bb.6
	movq	-40(%rbp), %rdi
	callq	SYMBOL_BLV
	movl	$5, %esi
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rdi
	callq	make_lisp_symbol
	movq	%rax, -16(%rbp)
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB84_12
# BB#8:                                 # %if.then
	movq	-72(%rbp), %rdi
	callq	blv_found
	cmpl	$0, %eax
	je	.LBB84_10
# BB#9:                                 # %cond.true.14
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB84_11
.LBB84_10:                              # %cond.false.16
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB84_11:                              # %cond.end.18
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, -8(%rbp)
	jmp	.LBB84_30
.LBB84_12:                              # %if.else
	movq	-32(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB84_13:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB84_18
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB84_13 Depth=1
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	-56(%rbp), %rcx
	subq	$3, %rcx
	cmpq	(%rcx), %rax
	jne	.LBB84_16
# BB#15:                                # %if.then.28
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB84_30
.LBB84_16:                              # %if.end
                                        #   in Loop: Header=BB84_13 Depth=1
	jmp	.LBB84_17
.LBB84_17:                              # %for.inc
                                        #   in Loop: Header=BB84_13 Depth=1
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB84_13
.LBB84_18:                              # %for.end
	jmp	.LBB84_19
.LBB84_19:                              # %if.end.31
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB84_30
.LBB84_20:                              # %sw.bb.33
	movq	-40(%rbp), %rdi
	callq	SYMBOL_FWD
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	callq	BUFFER_OBJFWDP
	testb	$1, %al
	jne	.LBB84_21
	jmp	.LBB84_28
.LBB84_21:                              # %if.then.37
	movq	-80(%rbp), %rdi
	callq	XBUFFER_OBJFWD
	movl	4(%rax), %ecx
	movl	%ecx, -84(%rbp)
	movslq	-84(%rbp), %rax
	movq	buffer_local_flags(,%rax), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -88(%rbp)
	cmpl	$-1, -88(%rbp)
	je	.LBB84_26
# BB#22:                                # %lor.lhs.false
	cmpl	$0, -88(%rbp)
	jl	.LBB84_24
# BB#23:                                # %lor.lhs.false.48
	movl	-88(%rbp), %eax
	cmpl	last_per_buffer_idx, %eax
	jl	.LBB84_25
.LBB84_24:                              # %cond.true.51
	callq	emacs_abort
.LBB84_25:                              # %cond.false.52
	movslq	-88(%rbp), %rax
	movq	-32(%rbp), %rcx
	movsbl	800(%rcx,%rax), %edx
	cmpl	$0, %edx
	je	.LBB84_27
.LBB84_26:                              # %if.then.56
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB84_30
.LBB84_27:                              # %if.end.58
	jmp	.LBB84_28
.LBB84_28:                              # %if.end.59
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB84_30
.LBB84_29:                              # %sw.default
	callq	emacs_abort
.LBB84_30:                              # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end84:
	.size	Flocal_variable_p, .Lfunc_end84-Flocal_variable_p
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI84_0:
	.quad	.LBB84_5
	.quad	.LBB84_7
	.quad	.LBB84_20
	.quad	.LBB84_6

	.text
	.globl	Flocal_variable_if_set_p
	.align	16, 0x90
	.type	Flocal_variable_if_set_p,@function
Flocal_variable_if_set_p:               # @Flocal_variable_if_set_p
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp255:
	.cfi_def_cfa_offset 16
.Ltmp256:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp257:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	andq	$7, %rsi
	movl	%esi, %eax
	cmpl	$0, %eax
	jne	.LBB85_2
# BB#1:                                 # %cond.true
	jmp	.LBB85_3
.LBB85_2:                               # %cond.false
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB85_3:                               # %cond.end
	movabsq	$lispsym, %rax
	movq	-16(%rbp), %rcx
	subq	$0, %rcx
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
.LBB85_4:                               # %start
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movzwl	(%rax), %ecx
	shrl	%ecx
	andl	$7, %ecx
	decl	%ecx
	movl	%ecx, %eax
	subl	$3, %ecx
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	ja	.LBB85_14
# BB#16:                                # %start
                                        #   in Loop: Header=BB85_4 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	.LJTI85_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB85_5:                               # %sw.bb
                                        #   in Loop: Header=BB85_4 Depth=1
	movq	-32(%rbp), %rdi
	callq	indirect_variable
	movq	%rax, -32(%rbp)
	jmp	.LBB85_4
.LBB85_6:                               # %sw.bb.3
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB85_15
.LBB85_7:                               # %sw.bb.5
	movq	-32(%rbp), %rdi
	callq	SYMBOL_BLV
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movb	(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB85_9
# BB#8:                                 # %if.then
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB85_15
.LBB85_9:                               # %if.end
	movq	-32(%rbp), %rdi
	callq	make_lisp_symbol
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	Flocal_variable_p
	movq	%rax, -8(%rbp)
	jmp	.LBB85_15
.LBB85_10:                              # %sw.bb.13
	movq	-32(%rbp), %rdi
	callq	SYMBOL_FWD
	movq	%rax, %rdi
	callq	BUFFER_OBJFWDP
	testb	$1, %al
	jne	.LBB85_11
	jmp	.LBB85_12
.LBB85_11:                              # %cond.true.17
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB85_13
.LBB85_12:                              # %cond.false.19
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB85_13:                              # %cond.end.21
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, -8(%rbp)
	jmp	.LBB85_15
.LBB85_14:                              # %sw.default
	callq	emacs_abort
.LBB85_15:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end85:
	.size	Flocal_variable_if_set_p, .Lfunc_end85-Flocal_variable_if_set_p
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI85_0:
	.quad	.LBB85_5
	.quad	.LBB85_7
	.quad	.LBB85_10
	.quad	.LBB85_6

	.text
	.globl	Fvariable_binding_locus
	.align	16, 0x90
	.type	Fvariable_binding_locus,@function
Fvariable_binding_locus:                # @Fvariable_binding_locus
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp258:
	.cfi_def_cfa_offset 16
.Ltmp259:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp260:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$0, %eax
	jne	.LBB86_2
# BB#1:                                 # %cond.true
	jmp	.LBB86_3
.LBB86_2:                               # %cond.false
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB86_3:                               # %cond.end
	movabsq	$lispsym, %rax
	movq	-16(%rbp), %rcx
	subq	$0, %rcx
	addq	%rcx, %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	find_symbol_value
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB86_4:                               # %start
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movzwl	(%rax), %ecx
	shrl	%ecx
	andl	$7, %ecx
	decl	%ecx
	movl	%ecx, %eax
	subl	$3, %ecx
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	ja	.LBB86_19
# BB#21:                                # %start
                                        #   in Loop: Header=BB86_4 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	.LJTI86_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB86_5:                               # %sw.bb
                                        #   in Loop: Header=BB86_4 Depth=1
	movq	-24(%rbp), %rdi
	callq	indirect_variable
	movq	%rax, -24(%rbp)
	jmp	.LBB86_4
.LBB86_6:                               # %sw.bb.4
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB86_20
.LBB86_7:                               # %sw.bb.6
	movq	-24(%rbp), %rdi
	callq	SYMBOL_FWD
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	KBOARD_OBJFWDP
	testb	$1, %al
	jne	.LBB86_8
	jmp	.LBB86_9
.LBB86_8:                               # %if.then
	movq	selected_frame, %rdi
	callq	Fframe_terminal
	movq	%rax, -8(%rbp)
	jmp	.LBB86_20
.LBB86_9:                               # %if.else
	movq	-32(%rbp), %rdi
	callq	BUFFER_OBJFWDP
	testb	$1, %al
	jne	.LBB86_11
# BB#10:                                # %if.then.11
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB86_20
.LBB86_11:                              # %if.end
	jmp	.LBB86_12
.LBB86_12:                              # %if.end.13
	jmp	.LBB86_13
.LBB86_13:                              # %sw.bb.14
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Flocal_variable_p
	xorl	%edi, %edi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB86_15
# BB#14:                                # %if.then.20
	callq	Fcurrent_buffer
	movq	%rax, -8(%rbp)
	jmp	.LBB86_20
.LBB86_15:                              # %if.else.22
	movq	-24(%rbp), %rax
	movw	(%rax), %cx
	shrw	$1, %cx
	andw	$7, %cx
	movzwl	%cx, %edx
	cmpl	$2, %edx
	jne	.LBB86_18
# BB#16:                                # %land.lhs.true
	movq	-24(%rbp), %rdi
	callq	SYMBOL_BLV
	movq	%rax, %rdi
	callq	blv_found
	cmpl	$0, %eax
	je	.LBB86_18
# BB#17:                                # %if.then.31
	movq	-24(%rbp), %rdi
	callq	SYMBOL_BLV
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB86_20
.LBB86_18:                              # %if.else.33
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB86_20
.LBB86_19:                              # %sw.default
	callq	emacs_abort
.LBB86_20:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end86:
	.size	Fvariable_binding_locus, .Lfunc_end86-Fvariable_binding_locus
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI86_0:
	.quad	.LBB86_5
	.quad	.LBB86_13
	.quad	.LBB86_7
	.quad	.LBB86_6

	.text
	.globl	Findirect_function
	.align	16, 0x90
	.type	Findirect_function,@function
Findirect_function:                     # @Findirect_function
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp261:
	.cfi_def_cfa_offset 16
.Ltmp262:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp263:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rsi
	andq	$7, %rsi
	movl	%esi, %eax
	cmpl	$0, %eax
	jne	.LBB87_4
# BB#1:                                 # %land.lhs.true
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB87_4
# BB#2:                                 # %land.lhs.true.4
	movq	-32(%rbp), %rax
	subq	$0, %rax
	movq	lispsym+24(,%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB87_4
# BB#3:                                 # %if.then
	movq	-32(%rbp), %rdi
	callq	indirect_function
	movq	%rax, -32(%rbp)
.LBB87_4:                               # %if.end
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB87_6
# BB#5:                                 # %if.then.13
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB87_7
.LBB87_6:                               # %if.end.14
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB87_7:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end87:
	.size	Findirect_function, .Lfunc_end87-Findirect_function
	.cfi_endproc

	.globl	Faref
	.align	16, 0x90
	.type	Faref,@function
Faref:                                  # @Faref
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp264:
	.cfi_def_cfa_offset 16
.Ltmp265:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp266:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	andq	$7, %rsi
	movl	%esi, %eax
	andl	$-5, %eax
	cmpl	$2, %eax
	jne	.LBB88_2
# BB#1:                                 # %cond.true
	jmp	.LBB88_3
.LBB88_2:                               # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB88_3:                               # %cond.end
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB88_4
	jmp	.LBB88_19
.LBB88_4:                               # %if.then
	cmpq	$0, -32(%rbp)
	jl	.LBB88_6
# BB#5:                                 # %lor.lhs.false
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	SCHARS
	movq	-72(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB88_7
.LBB88_6:                               # %if.then.9
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	args_out_of_range
.LBB88_7:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	STRING_MULTIBYTE
	testb	$1, %al
	jne	.LBB88_9
# BB#8:                                 # %if.then.11
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	SREF
	movzbl	%al, %ecx
	movl	%ecx, %esi
	shlq	$2, %rsi
	addq	$2, %rsi
	movq	%rsi, -8(%rbp)
	jmp	.LBB88_40
.LBB88_9:                               # %if.end.14
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	string_char_to_byte
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdi
	callq	SDATA
	movq	-48(%rbp), %rsi
	movzbl	(%rax,%rsi), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB88_11
# BB#10:                                # %cond.true.19
	movq	-16(%rbp), %rdi
	callq	SDATA
	movq	-48(%rbp), %rdi
	movzbl	(%rax,%rdi), %ecx
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	jmp	.LBB88_18
.LBB88_11:                              # %cond.false.24
	movq	-16(%rbp), %rdi
	callq	SDATA
	movq	-48(%rbp), %rdi
	movzbl	(%rax,%rdi), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB88_13
# BB#12:                                # %cond.true.31
	movq	-16(%rbp), %rdi
	callq	SDATA
	movq	-48(%rbp), %rdi
	movzbl	(%rax,%rdi), %ecx
	andl	$31, %ecx
	shll	$6, %ecx
	movq	-16(%rbp), %rdi
	movl	%ecx, -80(%rbp)         # 4-byte Spill
	callq	SDATA
	movq	-48(%rbp), %rdi
	movzbl	1(%rax,%rdi), %ecx
	andl	$63, %ecx
	movl	-80(%rbp), %edx         # 4-byte Reload
	orl	%ecx, %edx
	movq	-16(%rbp), %rdi
	movl	%edx, -84(%rbp)         # 4-byte Spill
	callq	SDATA
	xorl	%ecx, %ecx
	movl	$4194176, %edx          # imm = 0x3FFF80
	movq	-48(%rbp), %rdi
	movzbl	(%rax,%rdi), %esi
	cmpl	$194, %esi
	cmovll	%edx, %ecx
	movl	-84(%rbp), %edx         # 4-byte Reload
	addl	%ecx, %edx
	movl	%edx, -88(%rbp)         # 4-byte Spill
	jmp	.LBB88_17
.LBB88_13:                              # %cond.false.50
	movq	-16(%rbp), %rdi
	callq	SDATA
	movq	-48(%rbp), %rdi
	movzbl	(%rax,%rdi), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB88_15
# BB#14:                                # %cond.true.57
	movq	-16(%rbp), %rdi
	callq	SDATA
	movq	-48(%rbp), %rdi
	movzbl	(%rax,%rdi), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-16(%rbp), %rdi
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	callq	SDATA
	movq	-48(%rbp), %rdi
	movzbl	1(%rax,%rdi), %ecx
	andl	$63, %ecx
	shll	$6, %ecx
	movl	-92(%rbp), %edx         # 4-byte Reload
	orl	%ecx, %edx
	movq	-16(%rbp), %rdi
	movl	%edx, -96(%rbp)         # 4-byte Spill
	callq	SDATA
	movq	-48(%rbp), %rdi
	movzbl	2(%rax,%rdi), %ecx
	andl	$63, %ecx
	movl	-96(%rbp), %edx         # 4-byte Reload
	orl	%ecx, %edx
	movl	%edx, -100(%rbp)        # 4-byte Spill
	jmp	.LBB88_16
.LBB88_15:                              # %cond.false.77
	movq	-16(%rbp), %rdi
	callq	SDATA
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	addq	-48(%rbp), %rax
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movq	-112(%rbp), %rdx        # 8-byte Reload
	callq	string_char
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB88_16:                              # %cond.end.81
	movl	-100(%rbp), %eax        # 4-byte Reload
	movl	%eax, -88(%rbp)         # 4-byte Spill
.LBB88_17:                              # %cond.end.83
	movl	-88(%rbp), %eax         # 4-byte Reload
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB88_18:                              # %cond.end.85
	movl	-76(%rbp), %eax         # 4-byte Reload
	movl	%eax, -36(%rbp)
	movslq	-36(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -8(%rbp)
	jmp	.LBB88_40
.LBB88_19:                              # %if.else
	movq	-16(%rbp), %rdi
	callq	BOOL_VECTOR_P
	testb	$1, %al
	jne	.LBB88_20
	jmp	.LBB88_24
.LBB88_20:                              # %if.then.91
	cmpq	$0, -32(%rbp)
	jl	.LBB88_22
# BB#21:                                # %lor.lhs.false.94
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	bool_vector_size
	movq	-120(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB88_23
.LBB88_22:                              # %if.then.98
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	args_out_of_range
.LBB88_23:                              # %if.end.99
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	bool_vector_ref
	movq	%rax, -8(%rbp)
	jmp	.LBB88_40
.LBB88_24:                              # %if.else.101
	movq	-16(%rbp), %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB88_25
	jmp	.LBB88_30
.LBB88_25:                              # %if.then.103
	movq	-24(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB88_26
	jmp	.LBB88_28
.LBB88_26:                              # %land.lhs.true
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jg	.LBB88_28
# BB#27:                                # %cond.true.109
	jmp	.LBB88_29
.LBB88_28:                              # %cond.false.110
	movl	$260, %edi              # imm = 0x104
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB88_29:                              # %cond.end.112
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, %esi
	callq	CHAR_TABLE_REF
	movq	%rax, -8(%rbp)
	jmp	.LBB88_40
.LBB88_30:                              # %if.else.115
	movq	$0, -56(%rbp)
	movq	-16(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB88_31
	jmp	.LBB88_32
.LBB88_31:                              # %if.then.117
	movq	-16(%rbp), %rdi
	callq	ASIZE
	movq	%rax, -56(%rbp)
	jmp	.LBB88_36
.LBB88_32:                              # %if.else.119
	movq	-16(%rbp), %rdi
	callq	COMPILEDP
	testb	$1, %al
	jne	.LBB88_33
	jmp	.LBB88_34
.LBB88_33:                              # %if.then.121
	movq	-16(%rbp), %rdi
	callq	ASIZE
	andq	$4095, %rax             # imm = 0xFFF
	movq	%rax, -56(%rbp)
	jmp	.LBB88_35
.LBB88_34:                              # %if.else.124
	movl	$179, %edi
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB88_35:                              # %if.end.126
	jmp	.LBB88_36
.LBB88_36:                              # %if.end.127
	cmpq	$0, -32(%rbp)
	jl	.LBB88_38
# BB#37:                                # %lor.lhs.false.130
	movq	-32(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jl	.LBB88_39
.LBB88_38:                              # %if.then.133
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	args_out_of_range
.LBB88_39:                              # %if.end.134
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	AREF
	movq	%rax, -8(%rbp)
.LBB88_40:                              # %return
	movq	-8(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end88:
	.size	Faref, .Lfunc_end88-Faref
	.cfi_endproc

	.globl	Faset
	.align	16, 0x90
	.type	Faset,@function
Faset:                                  # @Faset
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp267:
	.cfi_def_cfa_offset 16
.Ltmp268:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp269:
	.cfi_def_cfa_register %rbp
	subq	$304, %rsp              # imm = 0x130
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	andl	$-5, %eax
	cmpl	$2, %eax
	jne	.LBB89_2
# BB#1:                                 # %cond.true
	jmp	.LBB89_3
.LBB89_2:                               # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -152(%rbp)        # 8-byte Spill
.LBB89_3:                               # %cond.end
	movl	$179, %edi
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	CHECK_ARRAY
	movq	-16(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB89_4
	jmp	.LBB89_11
.LBB89_4:                               # %if.then
	movq	-16(%rbp), %rdi
	callq	XVECTOR
	movabsq	$pure, %rdi
	subq	%rdi, %rax
	cmpq	$3000000, %rax          # imm = 0x2DC6C0
	ja	.LBB89_6
# BB#5:                                 # %cond.true.8
	movq	-16(%rbp), %rdi
	callq	pure_write_error
.LBB89_6:                               # %cond.false.9
	jmp	.LBB89_7
.LBB89_7:                               # %cond.end.10
	cmpq	$0, -40(%rbp)
	jl	.LBB89_9
# BB#8:                                 # %lor.lhs.false
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	ASIZE
	movq	-168(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB89_10
.LBB89_9:                               # %if.then.16
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	args_out_of_range
.LBB89_10:                              # %if.end
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	ASET
	jmp	.LBB89_89
.LBB89_11:                              # %if.else
	movq	-16(%rbp), %rdi
	callq	BOOL_VECTOR_P
	testb	$1, %al
	jne	.LBB89_12
	jmp	.LBB89_16
.LBB89_12:                              # %if.then.18
	cmpq	$0, -40(%rbp)
	jl	.LBB89_14
# BB#13:                                # %lor.lhs.false.21
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	bool_vector_size
	movq	-176(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB89_15
.LBB89_14:                              # %if.then.25
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	args_out_of_range
.LBB89_15:                              # %if.end.26
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rcx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	movq	%rax, -192(%rbp)        # 8-byte Spill
	movq	%rsi, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	movzbl	%dl, %edi
	andl	$1, %edi
	movq	-192(%rbp), %rax        # 8-byte Reload
	movl	%edi, -204(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	movq	-200(%rbp), %rsi        # 8-byte Reload
	movl	-204(%rbp), %edx        # 4-byte Reload
	callq	bool_vector_set
	jmp	.LBB89_88
.LBB89_16:                              # %if.else.30
	movq	-16(%rbp), %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB89_17
	jmp	.LBB89_22
.LBB89_17:                              # %if.then.32
	movq	-24(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB89_18
	jmp	.LBB89_20
.LBB89_18:                              # %land.lhs.true
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jg	.LBB89_20
# BB#19:                                # %cond.true.38
	jmp	.LBB89_21
.LBB89_20:                              # %cond.false.39
	movl	$260, %edi              # imm = 0x104
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -216(%rbp)        # 8-byte Spill
.LBB89_21:                              # %cond.end.41
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movl	%ecx, %esi
	callq	CHAR_TABLE_SET
	jmp	.LBB89_87
.LBB89_22:                              # %if.else.43
	movq	-16(%rbp), %rdi
	callq	XSTRING
	movabsq	$pure, %rdi
	subq	%rdi, %rax
	cmpq	$3000000, %rax          # imm = 0x2DC6C0
	ja	.LBB89_24
# BB#23:                                # %cond.true.48
	movq	-16(%rbp), %rdi
	callq	pure_write_error
.LBB89_24:                              # %cond.false.49
	jmp	.LBB89_25
.LBB89_25:                              # %cond.end.50
	cmpq	$0, -40(%rbp)
	jl	.LBB89_27
# BB#26:                                # %lor.lhs.false.53
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	SCHARS
	movq	-224(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB89_28
.LBB89_27:                              # %if.then.57
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	args_out_of_range
.LBB89_28:                              # %if.end.58
	movq	-32(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB89_29
	jmp	.LBB89_31
.LBB89_29:                              # %land.lhs.true.61
	movq	-32(%rbp), %rax
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jg	.LBB89_31
# BB#30:                                # %cond.true.65
	jmp	.LBB89_32
.LBB89_31:                              # %cond.false.66
	movl	$260, %edi              # imm = 0x104
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -232(%rbp)        # 8-byte Spill
.LBB89_32:                              # %cond.end.68
	movq	-32(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -44(%rbp)
	movq	-16(%rbp), %rdi
	callq	STRING_MULTIBYTE
	testb	$1, %al
	jne	.LBB89_33
	jmp	.LBB89_70
.LBB89_33:                              # %if.then.72
	leaq	-77(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-16(%rbp), %rdi
	callq	SBYTES
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	string_char_to_byte
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rdi
	callq	SDATA
	addq	-56(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB89_35
# BB#34:                                # %cond.true.78
	movl	$1, %eax
	movl	%eax, -236(%rbp)        # 4-byte Spill
	jmp	.LBB89_42
.LBB89_35:                              # %cond.false.79
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB89_37
# BB#36:                                # %cond.true.83
	movl	$2, %eax
	movl	%eax, -240(%rbp)        # 4-byte Spill
	jmp	.LBB89_41
.LBB89_37:                              # %cond.false.84
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB89_39
# BB#38:                                # %cond.true.88
	movl	$3, %eax
	movl	%eax, -244(%rbp)        # 4-byte Spill
	jmp	.LBB89_40
.LBB89_39:                              # %cond.false.89
	movl	$5, %eax
	movl	$4, %ecx
	movq	-96(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$8, %esi
	cmpl	$0, %esi
	setne	%dil
	xorb	$-1, %dil
	testb	$1, %dil
	cmovnel	%ecx, %eax
	movl	%eax, -244(%rbp)        # 4-byte Spill
.LBB89_40:                              # %cond.end.94
	movl	-244(%rbp), %eax        # 4-byte Reload
	movl	%eax, -240(%rbp)        # 4-byte Spill
.LBB89_41:                              # %cond.end.96
	movl	-240(%rbp), %eax        # 4-byte Reload
	movl	%eax, -236(%rbp)        # 4-byte Spill
.LBB89_42:                              # %cond.end.98
	movl	-236(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movl	%eax, -68(%rbp)
	testb	$1, %cl
	jne	.LBB89_43
	jmp	.LBB89_44
.LBB89_43:                              # %cond.true.100
	movl	-44(%rbp), %eax
	addl	$0, %eax
	cmpl	$127, %eax
	jbe	.LBB89_45
	jmp	.LBB89_46
.LBB89_44:                              # %cond.false.103
	movslq	-44(%rbp), %rax
	addq	$0, %rax
	cmpq	$127, %rax
	ja	.LBB89_46
.LBB89_45:                              # %cond.true.108
	movl	$1, %eax
	movl	-44(%rbp), %ecx
	movb	%cl, %dl
	movq	-88(%rbp), %rsi
	movb	%dl, (%rsi)
	movl	%eax, -248(%rbp)        # 4-byte Spill
	jmp	.LBB89_57
.LBB89_46:                              # %cond.false.110
	movb	$1, %al
	testb	$1, %al
	jne	.LBB89_47
	jmp	.LBB89_48
.LBB89_47:                              # %cond.true.111
	movl	-44(%rbp), %eax
	addl	$0, %eax
	cmpl	$2047, %eax             # imm = 0x7FF
	jbe	.LBB89_49
	jmp	.LBB89_50
.LBB89_48:                              # %cond.false.115
	movslq	-44(%rbp), %rax
	addq	$0, %rax
	cmpq	$2047, %rax             # imm = 0x7FF
	ja	.LBB89_50
.LBB89_49:                              # %cond.true.120
	movl	$2, %eax
	movl	-44(%rbp), %ecx
	sarl	$6, %ecx
	orl	$192, %ecx
	movb	%cl, %dl
	movq	-88(%rbp), %rsi
	movb	%dl, (%rsi)
	movl	-44(%rbp), %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movq	-88(%rbp), %rsi
	movb	%dl, 1(%rsi)
	movl	%eax, -252(%rbp)        # 4-byte Spill
	jmp	.LBB89_56
.LBB89_50:                              # %cond.false.128
	movb	$1, %al
	testb	$1, %al
	jne	.LBB89_51
	jmp	.LBB89_52
.LBB89_51:                              # %cond.true.129
	movl	-44(%rbp), %eax
	addl	$0, %eax
	cmpl	$65535, %eax            # imm = 0xFFFF
	jbe	.LBB89_53
	jmp	.LBB89_54
.LBB89_52:                              # %cond.false.133
	movslq	-44(%rbp), %rax
	addq	$0, %rax
	cmpq	$65535, %rax            # imm = 0xFFFF
	ja	.LBB89_54
.LBB89_53:                              # %cond.true.138
	movl	$3, %eax
	movl	-44(%rbp), %ecx
	sarl	$12, %ecx
	orl	$224, %ecx
	movb	%cl, %dl
	movq	-88(%rbp), %rsi
	movb	%dl, (%rsi)
	movl	-44(%rbp), %ecx
	sarl	$6, %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movq	-88(%rbp), %rsi
	movb	%dl, 1(%rsi)
	movl	-44(%rbp), %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movq	-88(%rbp), %rsi
	movb	%dl, 2(%rsi)
	movl	%eax, -256(%rbp)        # 4-byte Spill
	jmp	.LBB89_55
.LBB89_54:                              # %cond.false.152
	movl	-44(%rbp), %edi
	movq	-88(%rbp), %rsi
	callq	char_string
	movl	%eax, -256(%rbp)        # 4-byte Spill
.LBB89_55:                              # %cond.end.154
	movl	-256(%rbp), %eax        # 4-byte Reload
	movl	%eax, -252(%rbp)        # 4-byte Spill
.LBB89_56:                              # %cond.end.156
	movl	-252(%rbp), %eax        # 4-byte Reload
	movl	%eax, -248(%rbp)        # 4-byte Spill
.LBB89_57:                              # %cond.end.158
	movl	-248(%rbp), %eax        # 4-byte Reload
	movl	%eax, -72(%rbp)
	movl	-68(%rbp), %eax
	cmpl	-72(%rbp), %eax
	je	.LBB89_66
# BB#58:                                # %if.then.162
	movq	-16(%rbp), %rdi
	callq	SCHARS
	movq	%rax, -104(%rbp)
	movq	$16384, -112(%rbp)      # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -120(%rbp)
	movb	$0, -121(%rbp)
	movq	-64(%rbp), %rax
	cmpq	-112(%rbp), %rax
	jg	.LBB89_60
# BB#59:                                # %cond.true.167
	movq	-64(%rbp), %rax
	movq	-112(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -112(%rbp)
	movq	-64(%rbp), %rax
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -264(%rbp)        # 8-byte Spill
	jmp	.LBB89_61
.LBB89_60:                              # %cond.false.169
	movb	$1, -121(%rbp)
	movq	-64(%rbp), %rdi
	callq	record_xmalloc
	movq	%rax, -264(%rbp)        # 8-byte Spill
.LBB89_61:                              # %cond.end.171
	movq	-264(%rbp), %rax        # 8-byte Reload
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	SDATA
	movq	-64(%rbp), %rdx
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	memcpy
	movq	-16(%rbp), %rdi
	callq	XSTRING
	movq	-104(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movslq	-72(%rbp), %rdi
	addq	%rdi, %rdx
	movslq	-68(%rbp), %rdi
	subq	%rdi, %rdx
	movq	%rax, %rdi
	callq	allocate_string_data
	movq	-16(%rbp), %rdi
	callq	SDATA
	movq	-136(%rbp), %rsi
	movq	-56(%rbp), %rdx
	movq	%rax, %rdi
	callq	memcpy
	movq	-16(%rbp), %rdi
	callq	SDATA
	addq	-56(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movslq	-72(%rbp), %rdx
	addq	%rdx, %rax
	movq	-136(%rbp), %rdx
	addq	-56(%rbp), %rdx
	movslq	-68(%rbp), %rsi
	addq	%rsi, %rdx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rdi
	movslq	-68(%rbp), %rcx
	addq	%rcx, %rdi
	subq	%rdi, %rsi
	movq	%rax, %rdi
	movq	%rsi, -280(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	-280(%rbp), %rdx        # 8-byte Reload
	callq	memcpy
# BB#62:                                # %do.body
	testb	$1, -121(%rbp)
	je	.LBB89_64
# BB#63:                                # %if.then.190
	xorl	%edi, %edi
	movb	$0, -121(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -296(%rbp)        # 8-byte Spill
.LBB89_64:                              # %if.end.193
	jmp	.LBB89_65
.LBB89_65:                              # %do.end
	callq	clear_string_char_byte_cache
.LBB89_66:                              # %if.end.194
	jmp	.LBB89_67
.LBB89_67:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-72(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -72(%rbp)
	cmpl	$0, %eax
	je	.LBB89_69
# BB#68:                                # %while.body
                                        #   in Loop: Header=BB89_67 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -88(%rbp)
	movb	(%rax), %dl
	movq	-96(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -96(%rbp)
	movb	%dl, (%rax)
	jmp	.LBB89_67
.LBB89_69:                              # %while.end
	jmp	.LBB89_86
.LBB89_70:                              # %if.else.197
	movb	$1, %al
	testb	$1, %al
	jne	.LBB89_71
	jmp	.LBB89_72
.LBB89_71:                              # %cond.true.198
	movl	-44(%rbp), %eax
	addl	$0, %eax
	cmpl	$256, %eax              # imm = 0x100
	jb	.LBB89_85
	jmp	.LBB89_73
.LBB89_72:                              # %cond.false.202
	movslq	-44(%rbp), %rax
	addq	$0, %rax
	cmpq	$256, %rax              # imm = 0x100
	jb	.LBB89_85
.LBB89_73:                              # %if.then.207
	movq	-16(%rbp), %rdi
	callq	SBYTES
	subq	$1, %rax
	movq	%rax, -144(%rbp)
.LBB89_74:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -144(%rbp)
	jl	.LBB89_79
# BB#75:                                # %for.body
                                        #   in Loop: Header=BB89_74 Depth=1
	movq	-16(%rbp), %rdi
	movq	-144(%rbp), %rsi
	callq	SREF
	movzbl	%al, %ecx
	cmpl	$128, %ecx
	jl	.LBB89_77
# BB#76:                                # %if.then.216
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	args_out_of_range
.LBB89_77:                              # %if.end.217
                                        #   in Loop: Header=BB89_74 Depth=1
	jmp	.LBB89_78
.LBB89_78:                              # %for.inc
                                        #   in Loop: Header=BB89_74 Depth=1
	movq	-144(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -144(%rbp)
	jmp	.LBB89_74
.LBB89_79:                              # %for.end
	jmp	.LBB89_80
.LBB89_80:                              # %do.body.219
	movq	-16(%rbp), %rdi
	callq	XSTRING
	cmpq	$0, (%rax)
	jne	.LBB89_82
# BB#81:                                # %if.then.223
	movq	empty_multibyte_string, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB89_83
.LBB89_82:                              # %if.else.224
	movq	-16(%rbp), %rdi
	callq	XSTRING
	movq	(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	XSTRING
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, 8(%rax)
.LBB89_83:                              # %if.end.228
	jmp	.LBB89_84
.LBB89_84:                              # %do.end.229
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	Faset
	movq	%rax, -8(%rbp)
	jmp	.LBB89_90
.LBB89_85:                              # %if.end.231
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movl	-44(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %edx
	callq	SSET
.LBB89_86:                              # %if.end.233
	jmp	.LBB89_87
.LBB89_87:                              # %if.end.234
	jmp	.LBB89_88
.LBB89_88:                              # %if.end.235
	jmp	.LBB89_89
.LBB89_89:                              # %if.end.236
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB89_90:                              # %return
	movq	-8(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end89:
	.size	Faset, .Lfunc_end89-Faset
	.cfi_endproc

	.globl	arithcompare
	.align	16, 0x90
	.type	arithcompare,@function
arithcompare:                           # @arithcompare
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp270:
	.cfi_def_cfa_offset 16
.Ltmp271:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp272:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	xorps	%xmm0, %xmm0
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movsd	%xmm0, -40(%rbp)
	movsd	%xmm0, -48(%rbp)
	movb	$0, -49(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB90_4
# BB#2:                                 # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB90_4
# BB#3:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	marker_position
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -16(%rbp)
	jmp	.LBB90_8
.LBB90_4:                               # %if.else
	movq	-16(%rbp), %rdi
	callq	NUMBERP
	testb	$1, %al
	jne	.LBB90_5
	jmp	.LBB90_6
.LBB90_5:                               # %cond.true
	jmp	.LBB90_7
.LBB90_6:                               # %cond.false
	movl	$710, %edi              # imm = 0x2C6
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB90_7:                               # %cond.end
	jmp	.LBB90_8
.LBB90_8:                               # %if.end
	jmp	.LBB90_9
.LBB90_9:                               # %do.end
	jmp	.LBB90_10
.LBB90_10:                              # %do.body.9
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB90_13
# BB#11:                                # %land.lhs.true.14
	movq	-24(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB90_13
# BB#12:                                # %if.then.18
	movq	-24(%rbp), %rdi
	callq	marker_position
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -24(%rbp)
	jmp	.LBB90_17
.LBB90_13:                              # %if.else.21
	movq	-24(%rbp), %rdi
	callq	NUMBERP
	testb	$1, %al
	jne	.LBB90_14
	jmp	.LBB90_15
.LBB90_14:                              # %cond.true.24
	jmp	.LBB90_16
.LBB90_15:                              # %cond.false.25
	movl	$710, %edi              # imm = 0x2C6
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB90_16:                              # %cond.end.27
	jmp	.LBB90_17
.LBB90_17:                              # %if.end.28
	jmp	.LBB90_18
.LBB90_18:                              # %do.end.29
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$7, %ecx
	je	.LBB90_20
# BB#19:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$7, %ecx
	jne	.LBB90_27
.LBB90_20:                              # %if.then.38
	movb	$1, -49(%rbp)
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$7, %ecx
	jne	.LBB90_22
# BB#21:                                # %cond.true.43
	movq	-16(%rbp), %rdi
	callq	XFLOAT_DATA
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	jmp	.LBB90_23
.LBB90_22:                              # %cond.false.45
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
.LBB90_23:                              # %cond.end.47
	movsd	-80(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$7, %ecx
	jne	.LBB90_25
# BB#24:                                # %cond.true.52
	movq	-24(%rbp), %rdi
	callq	XFLOAT_DATA
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	jmp	.LBB90_26
.LBB90_25:                              # %cond.false.54
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
.LBB90_26:                              # %cond.end.57
	movsd	-88(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
.LBB90_27:                              # %if.end.59
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$5, %rdx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	ja	.LBB90_58
# BB#60:                                # %if.end.59
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	.LJTI90_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB90_28:                              # %sw.bb
	testb	$1, -49(%rbp)
	je	.LBB90_30
# BB#29:                                # %cond.true.61
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-48(%rbp), %xmm0
	jne	.LBB90_32
	jp	.LBB90_32
	jmp	.LBB90_31
.LBB90_30:                              # %cond.false.64
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	-24(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jne	.LBB90_32
.LBB90_31:                              # %if.then.69
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB90_59
.LBB90_32:                              # %if.end.71
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB90_59
.LBB90_33:                              # %sw.bb.73
	testb	$1, -49(%rbp)
	je	.LBB90_35
# BB#34:                                # %cond.true.76
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-48(%rbp), %xmm0
	jne	.LBB90_36
	jp	.LBB90_36
	jmp	.LBB90_37
.LBB90_35:                              # %cond.false.79
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	-24(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	je	.LBB90_37
.LBB90_36:                              # %if.then.84
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB90_59
.LBB90_37:                              # %if.end.86
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB90_59
.LBB90_38:                              # %sw.bb.88
	testb	$1, -49(%rbp)
	je	.LBB90_40
# BB#39:                                # %cond.true.91
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB90_41
	jmp	.LBB90_42
.LBB90_40:                              # %cond.false.94
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	-24(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jge	.LBB90_42
.LBB90_41:                              # %if.then.99
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB90_59
.LBB90_42:                              # %if.end.101
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB90_59
.LBB90_43:                              # %sw.bb.103
	testb	$1, -49(%rbp)
	je	.LBB90_45
# BB#44:                                # %cond.true.106
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jae	.LBB90_46
	jmp	.LBB90_47
.LBB90_45:                              # %cond.false.109
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	-24(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jg	.LBB90_47
.LBB90_46:                              # %if.then.114
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB90_59
.LBB90_47:                              # %if.end.116
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB90_59
.LBB90_48:                              # %sw.bb.118
	testb	$1, -49(%rbp)
	je	.LBB90_50
# BB#49:                                # %cond.true.121
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-48(%rbp), %xmm0
	ja	.LBB90_51
	jmp	.LBB90_52
.LBB90_50:                              # %cond.false.124
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	-24(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jle	.LBB90_52
.LBB90_51:                              # %if.then.129
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB90_59
.LBB90_52:                              # %if.end.131
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB90_59
.LBB90_53:                              # %sw.bb.133
	testb	$1, -49(%rbp)
	je	.LBB90_55
# BB#54:                                # %cond.true.136
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-48(%rbp), %xmm0
	jae	.LBB90_56
	jmp	.LBB90_57
.LBB90_55:                              # %cond.false.139
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	-24(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jl	.LBB90_57
.LBB90_56:                              # %if.then.144
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB90_59
.LBB90_57:                              # %if.end.146
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB90_59
.LBB90_58:                              # %sw.default
	callq	emacs_abort
.LBB90_59:                              # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end90:
	.size	arithcompare, .Lfunc_end90-arithcompare
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI90_0:
	.quad	.LBB90_28
	.quad	.LBB90_33
	.quad	.LBB90_38
	.quad	.LBB90_48
	.quad	.LBB90_43
	.quad	.LBB90_53

	.text
	.globl	Feqlsign
	.align	16, 0x90
	.type	Feqlsign,@function
Feqlsign:                               # @Feqlsign
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp273:
	.cfi_def_cfa_offset 16
.Ltmp274:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp275:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	xorl	%edx, %edx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	arithcompare_driver
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end91:
	.size	Feqlsign, .Lfunc_end91-Feqlsign
	.cfi_endproc

	.align	16, 0x90
	.type	arithcompare_driver,@function
arithcompare_driver:                    # @arithcompare_driver
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp276:
	.cfi_def_cfa_offset 16
.Ltmp277:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp278:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	$1, -40(%rbp)
.LBB92_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jge	.LBB92_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB92_1 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx
	subq	$1, %rcx
	movq	-24(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rdi
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rsi
	movl	-28(%rbp), %edx
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	arithcompare
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB92_4
# BB#3:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB92_7
.LBB92_4:                               # %if.end
                                        #   in Loop: Header=BB92_1 Depth=1
	jmp	.LBB92_5
.LBB92_5:                               # %for.inc
                                        #   in Loop: Header=BB92_1 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB92_1
.LBB92_6:                               # %for.end
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB92_7:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end92:
	.size	arithcompare_driver, .Lfunc_end92-arithcompare_driver
	.cfi_endproc

	.globl	Flss
	.align	16, 0x90
	.type	Flss,@function
Flss:                                   # @Flss
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp279:
	.cfi_def_cfa_offset 16
.Ltmp280:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp281:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$2, %edx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	arithcompare_driver
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end93:
	.size	Flss, .Lfunc_end93-Flss
	.cfi_endproc

	.globl	Fgtr
	.align	16, 0x90
	.type	Fgtr,@function
Fgtr:                                   # @Fgtr
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp282:
	.cfi_def_cfa_offset 16
.Ltmp283:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp284:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$3, %edx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	arithcompare_driver
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end94:
	.size	Fgtr, .Lfunc_end94-Fgtr
	.cfi_endproc

	.globl	Fleq
	.align	16, 0x90
	.type	Fleq,@function
Fleq:                                   # @Fleq
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp285:
	.cfi_def_cfa_offset 16
.Ltmp286:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp287:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$4, %edx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	arithcompare_driver
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end95:
	.size	Fleq, .Lfunc_end95-Fleq
	.cfi_endproc

	.globl	Fgeq
	.align	16, 0x90
	.type	Fgeq,@function
Fgeq:                                   # @Fgeq
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp288:
	.cfi_def_cfa_offset 16
.Ltmp289:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp290:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$5, %edx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	arithcompare_driver
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end96:
	.size	Fgeq, .Lfunc_end96-Fgeq
	.cfi_endproc

	.globl	Fneq
	.align	16, 0x90
	.type	Fneq,@function
Fneq:                                   # @Fneq
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp291:
	.cfi_def_cfa_offset 16
.Ltmp292:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp293:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$1, %edx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	arithcompare
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end97:
	.size	Fneq, .Lfunc_end97-Fneq
	.cfi_endproc

	.globl	intbig_to_lisp
	.align	16, 0x90
	.type	intbig_to_lisp,@function
intbig_to_lisp:                         # @intbig_to_lisp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp294:
	.cfi_def_cfa_offset 16
.Ltmp295:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp296:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	sarq	$16, %rdi
	shlq	$2, %rdi
	addq	$2, %rdi
	movq	-8(%rbp), %rax
	andq	$65535, %rax            # imm = 0xFFFF
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rsi
	callq	Fcons
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end98:
	.size	intbig_to_lisp, .Lfunc_end98-intbig_to_lisp
	.cfi_endproc

	.globl	uintbig_to_lisp
	.align	16, 0x90
	.type	uintbig_to_lisp,@function
uintbig_to_lisp:                        # @uintbig_to_lisp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp297:
	.cfi_def_cfa_offset 16
.Ltmp298:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp299:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	shrq	$16, %rdi
	shlq	$2, %rdi
	addq	$2, %rdi
	movq	-8(%rbp), %rax
	andq	$65535, %rax            # imm = 0xFFFF
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rsi
	callq	Fcons
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end99:
	.size	uintbig_to_lisp, .Lfunc_end99-uintbig_to_lisp
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI100_0:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI100_1:
	.quad	4841369599423283200     # double 4.503600e+15
	.quad	4985484787499139072     # double 1.934281e+25
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI100_2:
	.quad	4895412794951729152     # double 1.8446744073709552E+19
.LCPI100_3:
	.quad	4890909195324358656     # double 9.2233720368547758E+18
	.text
	.globl	cons_to_unsigned
	.align	16, 0x90
	.type	cons_to_unsigned,@function
cons_to_unsigned:                       # @cons_to_unsigned
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp300:
	.cfi_def_cfa_offset 16
.Ltmp301:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp302:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movb	$0, -17(%rbp)
	movq	-8(%rbp), %rsi
	andq	$7, %rsi
	movl	%esi, %eax
	andl	$-5, %eax
	cmpl	$2, %eax
	jne	.LBB100_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	sarq	$2, %rdx
	cmpq	%rdx, %rcx
	setle	%sil
	andb	$1, %sil
	movb	%sil, -17(%rbp)
	movq	-8(%rbp), %rcx
	sarq	$2, %rcx
	movq	%rcx, -32(%rbp)
	jmp	.LBB100_30
.LBB100_2:                              # %if.else
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$7, %ecx
	jne	.LBB100_10
# BB#3:                                 # %if.then.10
	movq	-8(%rbp), %rdi
	callq	XFLOAT_DATA
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -40(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jb	.LBB100_9
# BB#4:                                 # %land.lhs.true
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	cmpq	$-1, -16(%rbp)
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	jne	.LBB100_6
# BB#5:                                 # %cond.true
	movsd	.LCPI100_2, %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	jmp	.LBB100_7
.LBB100_6:                              # %cond.false
	movq	-16(%rbp), %rax
	incq	%rax
	movd	%rax, %xmm0
	movaps	.LCPI100_0(%rip), %xmm1 # xmm1 = [1127219200,1160773632,0,0]
	punpckldq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	movapd	.LCPI100_1(%rip), %xmm1 # xmm1 = [4.503600e+15,1.934281e+25]
	subpd	%xmm1, %xmm0
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	addpd	%xmm0, %xmm1
	movsd	%xmm1, -80(%rbp)        # 8-byte Spill
.LBB100_7:                              # %cond.end
	movsd	-80(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB100_9
# BB#8:                                 # %if.then.18
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI100_3(%rip), %xmm1 # xmm1 = mem[0],zero
	movaps	%xmm0, %xmm2
	subsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	cvttsd2si	%xmm0, %rcx
	ucomisd	%xmm0, %xmm1
	cmovaq	%rcx, %rax
	movq	%rax, -32(%rbp)
	movb	$1, -17(%rbp)
.LBB100_9:                              # %if.end
	jmp	.LBB100_29
.LBB100_10:                             # %if.else.20
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB100_28
# BB#11:                                # %land.lhs.true.25
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB100_12
	jmp	.LBB100_28
.LBB100_12:                             # %if.then.28
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	cmpq	$16777215, -48(%rbp)    # imm = 0xFFFFFF
	ja	.LBB100_19
# BB#13:                                # %land.lhs.true.35
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB100_19
# BB#14:                                # %land.lhs.true.40
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB100_15
	jmp	.LBB100_19
.LBB100_15:                             # %land.lhs.true.45
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	cmpq	$16777216, %rax         # imm = 0x1000000
	jge	.LBB100_19
# BB#16:                                # %land.lhs.true.51
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB100_17
	jmp	.LBB100_19
.LBB100_17:                             # %land.lhs.true.57
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	sarq	$2, %rax
	cmpq	$65536, %rax            # imm = 0x10000
	jge	.LBB100_19
# BB#18:                                # %if.then.64
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	shlq	$24, %rax
	shlq	$16, %rax
	movq	-64(%rbp), %rcx
	shlq	$16, %rcx
	orq	%rcx, %rax
	movq	-56(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rcx
	sarq	$2, %rcx
	orq	%rcx, %rax
	movq	%rax, -32(%rbp)
	movb	$1, -17(%rbp)
	jmp	.LBB100_27
.LBB100_19:                             # %if.else.75
	movabsq	$281474976710655, %rax  # imm = 0xFFFFFFFFFFFF
	cmpq	%rax, -48(%rbp)
	ja	.LBB100_26
# BB#20:                                # %if.then.78
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB100_22
# BB#21:                                # %if.then.83
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
.LBB100_22:                             # %if.end.86
	movq	-56(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB100_23
	jmp	.LBB100_25
.LBB100_23:                             # %land.lhs.true.89
	movq	-56(%rbp), %rax
	sarq	$2, %rax
	cmpq	$65536, %rax            # imm = 0x10000
	jge	.LBB100_25
# BB#24:                                # %if.then.93
	movq	-48(%rbp), %rax
	shlq	$16, %rax
	movq	-56(%rbp), %rcx
	sarq	$2, %rcx
	orq	%rcx, %rax
	movq	%rax, -32(%rbp)
	movb	$1, -17(%rbp)
.LBB100_25:                             # %if.end.97
	jmp	.LBB100_26
.LBB100_26:                             # %if.end.98
	jmp	.LBB100_27
.LBB100_27:                             # %if.end.99
	jmp	.LBB100_28
.LBB100_28:                             # %if.end.100
	jmp	.LBB100_29
.LBB100_29:                             # %if.end.101
	jmp	.LBB100_30
.LBB100_30:                             # %if.end.102
	testb	$1, -17(%rbp)
	je	.LBB100_32
# BB#31:                                # %land.lhs.true.104
	movq	-32(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jbe	.LBB100_33
.LBB100_32:                             # %if.then.107
	movabsq	$.L.str.11, %rdi
	movb	$0, %al
	callq	error
.LBB100_33:                             # %if.end.108
	movq	-32(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end100:
	.size	cons_to_unsigned, .Lfunc_end100-cons_to_unsigned
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI101_0:
	.quad	4890909195324358656     # double 9.2233720368547758E+18
	.text
	.globl	cons_to_signed
	.align	16, 0x90
	.type	cons_to_signed,@function
cons_to_signed:                         # @cons_to_signed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp303:
	.cfi_def_cfa_offset 16
.Ltmp304:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp305:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movb	$0, -25(%rbp)
	movq	-8(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	andl	$-5, %eax
	cmpl	$2, %eax
	jne	.LBB101_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -40(%rbp)
	movb	$1, -25(%rbp)
	jmp	.LBB101_32
.LBB101_2:                              # %if.else
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$7, %ecx
	jne	.LBB101_10
# BB#3:                                 # %if.then.7
	movq	-8(%rbp), %rdi
	callq	XFLOAT_DATA
	movsd	%xmm0, -48(%rbp)
	cvtsi2sdq	-16(%rbp), %xmm0
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB101_9
# BB#4:                                 # %land.lhs.true
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	cmpq	%rax, -24(%rbp)
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	jne	.LBB101_6
# BB#5:                                 # %cond.true
	movsd	.LCPI101_0, %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	jmp	.LBB101_7
.LBB101_6:                              # %cond.false
	movq	-24(%rbp), %rax
	addq	$1, %rax
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
.LBB101_7:                              # %cond.end
	movsd	-88(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB101_9
# BB#8:                                 # %if.then.16
	cvttsd2si	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
	movb	$1, -25(%rbp)
.LBB101_9:                              # %if.end
	jmp	.LBB101_31
.LBB101_10:                             # %if.else.18
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB101_30
# BB#11:                                # %land.lhs.true.23
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB101_30
# BB#12:                                # %if.then.29
	movq	$-8388608, %rax         # imm = 0xFFFFFFFFFF800000
	movq	-8(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	sarq	$2, %rcx
	movq	%rcx, -56(%rbp)
	movq	-8(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -64(%rbp)
	cmpq	-56(%rbp), %rax
	jg	.LBB101_20
# BB#13:                                # %land.lhs.true.36
	cmpq	$8388607, -56(%rbp)     # imm = 0x7FFFFF
	jg	.LBB101_20
# BB#14:                                # %land.lhs.true.39
	movq	-64(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB101_20
# BB#15:                                # %land.lhs.true.44
	movq	-64(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB101_16
	jmp	.LBB101_20
.LBB101_16:                             # %land.lhs.true.49
	movq	-64(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	cmpq	$16777216, %rax         # imm = 0x1000000
	jge	.LBB101_20
# BB#17:                                # %land.lhs.true.55
	movq	-64(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB101_18
	jmp	.LBB101_20
.LBB101_18:                             # %land.lhs.true.61
	movq	-64(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	sarq	$2, %rax
	cmpq	$65536, %rax            # imm = 0x10000
	jge	.LBB101_20
# BB#19:                                # %if.then.68
	movq	-64(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	shlq	$24, %rax
	shlq	$16, %rax
	movq	-72(%rbp), %rcx
	shlq	$16, %rcx
	orq	%rcx, %rax
	movq	-64(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rcx
	sarq	$2, %rcx
	orq	%rcx, %rax
	movq	%rax, -40(%rbp)
	movb	$1, -25(%rbp)
	jmp	.LBB101_29
.LBB101_20:                             # %if.else.79
	movabsq	$-140737488355328, %rax # imm = 0xFFFF800000000000
	cmpq	-56(%rbp), %rax
	jg	.LBB101_28
# BB#21:                                # %land.lhs.true.82
	movabsq	$140737488355327, %rax  # imm = 0x7FFFFFFFFFFF
	cmpq	%rax, -56(%rbp)
	jg	.LBB101_28
# BB#22:                                # %if.then.85
	movq	-64(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB101_24
# BB#23:                                # %if.then.90
	movq	-64(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
.LBB101_24:                             # %if.end.93
	movq	-64(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB101_25
	jmp	.LBB101_27
.LBB101_25:                             # %land.lhs.true.96
	movq	-64(%rbp), %rax
	sarq	$2, %rax
	cmpq	$65536, %rax            # imm = 0x10000
	jge	.LBB101_27
# BB#26:                                # %if.then.100
	movq	-56(%rbp), %rax
	shlq	$16, %rax
	movq	-64(%rbp), %rcx
	sarq	$2, %rcx
	orq	%rcx, %rax
	movq	%rax, -40(%rbp)
	movb	$1, -25(%rbp)
.LBB101_27:                             # %if.end.104
	jmp	.LBB101_28
.LBB101_28:                             # %if.end.105
	jmp	.LBB101_29
.LBB101_29:                             # %if.end.106
	jmp	.LBB101_30
.LBB101_30:                             # %if.end.107
	jmp	.LBB101_31
.LBB101_31:                             # %if.end.108
	jmp	.LBB101_32
.LBB101_32:                             # %if.end.109
	testb	$1, -25(%rbp)
	je	.LBB101_35
# BB#33:                                # %land.lhs.true.111
	movq	-16(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jg	.LBB101_35
# BB#34:                                # %land.lhs.true.114
	movq	-40(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jle	.LBB101_36
.LBB101_35:                             # %if.then.117
	movabsq	$.L.str.11, %rdi
	movb	$0, %al
	callq	error
.LBB101_36:                             # %if.end.118
	movq	-40(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end101:
	.size	cons_to_signed, .Lfunc_end101-cons_to_signed
	.cfi_endproc

	.globl	Fnumber_to_string
	.align	16, 0x90
	.type	Fnumber_to_string,@function
Fnumber_to_string:                      # @Fnumber_to_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp306:
	.cfi_def_cfa_offset 16
.Ltmp307:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp308:
	.cfi_def_cfa_register %rbp
	subq	$384, %rsp              # imm = 0x180
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_NUMBER_OR_FLOAT
	movq	-8(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$7, %eax
	jne	.LBB102_2
# BB#1:                                 # %if.then
	leaq	-368(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -384(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	XFLOAT_DATA
	movq	-384(%rbp), %rdi        # 8-byte Reload
	callq	float_to_string
	movl	%eax, -372(%rbp)
	jmp	.LBB102_3
.LBB102_2:                              # %if.else
	movabsq	$.L.str.12, %rsi
	leaq	-368(%rbp), %rdi
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, %rdx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -372(%rbp)
.LBB102_3:                              # %if.end
	leaq	-368(%rbp), %rdi
	movslq	-372(%rbp), %rsi
	callq	make_unibyte_string
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end102:
	.size	Fnumber_to_string, .Lfunc_end102-Fnumber_to_string
	.cfi_endproc

	.globl	Fstring_to_number
	.align	16, 0x90
	.type	Fstring_to_number,@function
Fstring_to_number:                      # @Fstring_to_number
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp309:
	.cfi_def_cfa_offset 16
.Ltmp310:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp311:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_STRING
	xorl	%edi, %edi
	movq	-16(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB103_2
# BB#1:                                 # %if.then
	movl	$10, -28(%rbp)
	jmp	.LBB103_9
.LBB103_2:                              # %if.else
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB103_4
# BB#3:                                 # %cond.true
	jmp	.LBB103_5
.LBB103_4:                              # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB103_5:                              # %cond.end
	movl	$2, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	sarq	$2, %rdx
	cmpq	%rdx, %rcx
	jg	.LBB103_7
# BB#6:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	cmpq	$16, %rax
	jle	.LBB103_8
.LBB103_7:                              # %if.then.10
	movl	$177, %edi
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	xsignal1
.LBB103_8:                              # %if.end
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -28(%rbp)
.LBB103_9:                              # %if.end.14
	movq	-8(%rbp), %rdi
	callq	SSDATA
	movq	%rax, -24(%rbp)
.LBB103_10:                             # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movb	$1, %al
	movq	-24(%rbp), %rcx
	movsbl	(%rcx), %edx
	cmpl	$32, %edx
	movb	%al, -57(%rbp)          # 1-byte Spill
	je	.LBB103_12
# BB#11:                                # %lor.rhs
                                        #   in Loop: Header=BB103_10 Depth=1
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$9, %ecx
	sete	%dl
	movb	%dl, -57(%rbp)          # 1-byte Spill
.LBB103_12:                             # %lor.end
                                        #   in Loop: Header=BB103_10 Depth=1
	movb	-57(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB103_13
	jmp	.LBB103_14
.LBB103_13:                             # %while.body
                                        #   in Loop: Header=BB103_10 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB103_10
.LBB103_14:                             # %while.end
	movl	$1, %edx
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	string_to_number
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB103_16
# BB#15:                                # %cond.true.26
	movl	$2, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB103_17
.LBB103_16:                             # %cond.false.27
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB103_17:                             # %cond.end.28
	movq	-80(%rbp), %rax         # 8-byte Reload
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end103:
	.size	Fstring_to_number, .Lfunc_end103-Fstring_to_number
	.cfi_endproc

	.globl	Fplus
	.align	16, 0x90
	.type	Fplus,@function
Fplus:                                  # @Fplus
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp312:
	.cfi_def_cfa_offset 16
.Ltmp313:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp314:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movl	%eax, %edi
	callq	arith_driver
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end104:
	.size	Fplus, .Lfunc_end104-Fplus
	.cfi_endproc

	.align	16, 0x90
	.type	arith_driver,@function
arith_driver:                           # @arith_driver
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp315:
	.cfi_def_cfa_offset 16
.Ltmp316:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp317:
	.cfi_def_cfa_register %rbp
	subq	$384, %rsp              # imm = 0x180
	movl	%edi, -12(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	$0, -64(%rbp)
	movb	$0, -81(%rbp)
	movl	-12(%rbp), %edi
	movl	%edi, %eax
	subl	$2, %eax
	movl	%edi, -88(%rbp)         # 4-byte Spill
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jb	.LBB105_1
	jmp	.LBB105_170
.LBB105_170:                            # %entry
	movl	-88(%rbp), %eax         # 4-byte Reload
	addl	$-2, %eax
	subl	$2, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jb	.LBB105_2
	jmp	.LBB105_171
.LBB105_171:                            # %entry
	movl	-88(%rbp), %eax         # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB105_3
	jmp	.LBB105_172
.LBB105_172:                            # %entry
	movl	-88(%rbp), %eax         # 4-byte Reload
	addl	$-5, %eax
	subl	$1, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	ja	.LBB105_4
	jmp	.LBB105_1
.LBB105_1:                              # %sw.bb
	movq	$0, -64(%rbp)
	jmp	.LBB105_5
.LBB105_2:                              # %sw.bb.1
	movq	$1, -64(%rbp)
	jmp	.LBB105_5
.LBB105_3:                              # %sw.bb.2
	movq	$-1, -64(%rbp)
	jmp	.LBB105_5
.LBB105_4:                              # %sw.default
	jmp	.LBB105_5
.LBB105_5:                              # %sw.epilog
	movq	$0, -48(%rbp)
.LBB105_6:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jge	.LBB105_168
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB105_6 Depth=1
	testb	$1, -81(%rbp)
	jne	.LBB105_9
# BB#8:                                 # %if.then
                                        #   in Loop: Header=BB105_6 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -80(%rbp)
.LBB105_9:                              # %if.end
                                        #   in Loop: Header=BB105_6 Depth=1
	movq	-48(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -40(%rbp)
# BB#10:                                # %do.body
                                        #   in Loop: Header=BB105_6 Depth=1
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB105_13
# BB#11:                                # %land.lhs.true
                                        #   in Loop: Header=BB105_6 Depth=1
	movq	-40(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB105_13
# BB#12:                                # %if.then.7
                                        #   in Loop: Header=BB105_6 Depth=1
	movq	-40(%rbp), %rdi
	callq	marker_position
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -40(%rbp)
	jmp	.LBB105_17
.LBB105_13:                             # %if.else
                                        #   in Loop: Header=BB105_6 Depth=1
	movq	-40(%rbp), %rdi
	callq	NUMBERP
	testb	$1, %al
	jne	.LBB105_14
	jmp	.LBB105_15
.LBB105_14:                             # %cond.true
                                        #   in Loop: Header=BB105_6 Depth=1
	jmp	.LBB105_16
.LBB105_15:                             # %cond.false
	movl	$710, %edi              # imm = 0x2C6
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB105_16:                             # %cond.end
                                        #   in Loop: Header=BB105_6 Depth=1
	jmp	.LBB105_17
.LBB105_17:                             # %if.end.13
                                        #   in Loop: Header=BB105_6 Depth=1
	jmp	.LBB105_18
.LBB105_18:                             # %do.end
                                        #   in Loop: Header=BB105_6 Depth=1
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$7, %ecx
	jne	.LBB105_20
# BB#19:                                # %if.then.18
	cvtsi2sdq	-80(%rbp), %xmm0
	movq	-56(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	float_arith_driver
	movq	%rax, -8(%rbp)
	jmp	.LBB105_169
.LBB105_20:                             # %if.end.21
                                        #   in Loop: Header=BB105_6 Depth=1
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-48(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	sarq	$2, %rax
	movq	%rax, -72(%rbp)
	movl	-12(%rbp), %esi
	movl	%esi, %eax
	movq	%rax, %rcx
	subq	$8, %rcx
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	ja	.LBB105_166
# BB#173:                               # %if.end.21
                                        #   in Loop: Header=BB105_6 Depth=1
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	.LJTI105_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB105_21:                             # %sw.bb.24
                                        #   in Loop: Header=BB105_6 Depth=1
	imulq	$0, -72(%rbp), %rax
	addq	-64(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB105_23
# BB#22:                                # %cond.true.28
                                        #   in Loop: Header=BB105_6 Depth=1
	xorl	%eax, %eax
	imulq	$0, -72(%rbp), %rcx
	addq	-64(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -72(%rbp), %rdi
	addq	-64(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	jmp	.LBB105_24
.LBB105_23:                             # %cond.false.45
                                        #   in Loop: Header=BB105_6 Depth=1
	imulq	$0, -72(%rbp), %rax
	addq	-64(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB105_24:                             # %cond.end.50
                                        #   in Loop: Header=BB105_6 Depth=1
	movq	-136(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB105_34
# BB#25:                                # %cond.true.53
                                        #   in Loop: Header=BB105_6 Depth=1
	cmpq	$0, -72(%rbp)
	jge	.LBB105_30
# BB#26:                                # %cond.true.56
                                        #   in Loop: Header=BB105_6 Depth=1
	movq	-64(%rbp), %rax
	imulq	$0, -72(%rbp), %rcx
	addq	-64(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jge	.LBB105_28
# BB#27:                                # %cond.true.63
                                        #   in Loop: Header=BB105_6 Depth=1
	xorl	%eax, %eax
	imulq	$0, -72(%rbp), %rcx
	addq	-64(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -72(%rbp), %rdi
	addq	-64(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	jmp	.LBB105_29
.LBB105_28:                             # %cond.false.82
                                        #   in Loop: Header=BB105_6 Depth=1
	imulq	$0, -72(%rbp), %rax
	addq	-64(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
.LBB105_29:                             # %cond.end.87
                                        #   in Loop: Header=BB105_6 Depth=1
	movq	-152(%rbp), %rax        # 8-byte Reload
	subq	-72(%rbp), %rax
	movq	-144(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB105_42
	jmp	.LBB105_39
.LBB105_30:                             # %cond.false.92
                                        #   in Loop: Header=BB105_6 Depth=1
	imulq	$0, -72(%rbp), %rax
	addq	-64(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB105_32
# BB#31:                                # %cond.true.99
                                        #   in Loop: Header=BB105_6 Depth=1
	imulq	$0, -72(%rbp), %rax
	addq	-64(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB105_33
.LBB105_32:                             # %cond.false.108
                                        #   in Loop: Header=BB105_6 Depth=1
	imulq	$0, -72(%rbp), %rax
	addq	-64(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
.LBB105_33:                             # %cond.end.113
                                        #   in Loop: Header=BB105_6 Depth=1
	movq	-160(%rbp), %rax        # 8-byte Reload
	subq	-72(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jl	.LBB105_42
	jmp	.LBB105_39
.LBB105_34:                             # %cond.false.118
                                        #   in Loop: Header=BB105_6 Depth=1
	cmpq	$0, -64(%rbp)
	jge	.LBB105_36
# BB#35:                                # %cond.true.121
                                        #   in Loop: Header=BB105_6 Depth=1
	movq	-72(%rbp), %rax
	movq	-64(%rbp), %rcx
	addq	-72(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB105_42
	jmp	.LBB105_39
.LBB105_36:                             # %cond.false.125
                                        #   in Loop: Header=BB105_6 Depth=1
	cmpq	$0, -72(%rbp)
	jge	.LBB105_38
# BB#37:                                # %cond.true.128
                                        #   in Loop: Header=BB105_6 Depth=1
	movq	-64(%rbp), %rax
	movq	-64(%rbp), %rcx
	addq	-72(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB105_42
	jmp	.LBB105_39
.LBB105_38:                             # %cond.false.132
                                        #   in Loop: Header=BB105_6 Depth=1
	movq	-64(%rbp), %rax
	addq	-72(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jl	.LBB105_42
.LBB105_39:                             # %lor.lhs.false
                                        #   in Loop: Header=BB105_6 Depth=1
	movq	-64(%rbp), %rax
	addq	-72(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB105_41
# BB#40:                                # %land.lhs.true.141
                                        #   in Loop: Header=BB105_6 Depth=1
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-64(%rbp), %rcx
	addq	-72(%rbp), %rcx
	cmpq	%rax, %rcx
	jl	.LBB105_42
.LBB105_41:                             # %lor.lhs.false.145
                                        #   in Loop: Header=BB105_6 Depth=1
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-64(%rbp), %rcx
	addq	-72(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB105_46
.LBB105_42:                             # %cond.true.149
                                        #   in Loop: Header=BB105_6 Depth=1
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-64(%rbp), %rcx
	addq	-72(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB105_44
# BB#43:                                # %cond.true.153
                                        #   in Loop: Header=BB105_6 Depth=1
	movq	-64(%rbp), %rax
	addq	-72(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB105_45
.LBB105_44:                             # %cond.false.155
                                        #   in Loop: Header=BB105_6 Depth=1
	movq	-64(%rbp), %rax
	addq	-72(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
.LBB105_45:                             # %cond.end.159
                                        #   in Loop: Header=BB105_6 Depth=1
	movq	-168(%rbp), %rax        # 8-byte Reload
	movl	$1, %ecx
	movq	%rax, -64(%rbp)
	movl	%ecx, -172(%rbp)        # 4-byte Spill
	jmp	.LBB105_50
.LBB105_46:                             # %cond.false.161
                                        #   in Loop: Header=BB105_6 Depth=1
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-64(%rbp), %rcx
	addq	-72(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB105_48
# BB#47:                                # %cond.true.165
                                        #   in Loop: Header=BB105_6 Depth=1
	movq	-64(%rbp), %rax
	addq	-72(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB105_49
.LBB105_48:                             # %cond.false.167
                                        #   in Loop: Header=BB105_6 Depth=1
	movq	-64(%rbp), %rax
	addq	-72(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
.LBB105_49:                             # %cond.end.171
                                        #   in Loop: Header=BB105_6 Depth=1
	movq	-184(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movq	%rax, -64(%rbp)
	movl	%ecx, -172(%rbp)        # 4-byte Spill
.LBB105_50:                             # %cond.end.173
                                        #   in Loop: Header=BB105_6 Depth=1
	movl	-172(%rbp), %eax        # 4-byte Reload
	movb	-81(%rbp), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	orl	%eax, %edx
	cmpl	$0, %edx
	setne	%cl
	andb	$1, %cl
	movb	%cl, -81(%rbp)
	jmp	.LBB105_166
.LBB105_51:                             # %sw.bb.178
                                        #   in Loop: Header=BB105_6 Depth=1
	cmpq	$0, -48(%rbp)
	jne	.LBB105_56
# BB#52:                                # %if.then.180
                                        #   in Loop: Header=BB105_6 Depth=1
	cmpq	$1, -24(%rbp)
	jne	.LBB105_54
# BB#53:                                # %cond.true.183
                                        #   in Loop: Header=BB105_6 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	subq	-72(%rbp), %rcx
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	jmp	.LBB105_55
.LBB105_54:                             # %cond.false.185
                                        #   in Loop: Header=BB105_6 Depth=1
	movq	-72(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
.LBB105_55:                             # %cond.end.186
                                        #   in Loop: Header=BB105_6 Depth=1
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	%rax, -64(%rbp)
	jmp	.LBB105_86
.LBB105_56:                             # %if.else.188
                                        #   in Loop: Header=BB105_6 Depth=1
	imulq	$0, -72(%rbp), %rax
	addq	-64(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB105_58
# BB#57:                                # %cond.true.195
                                        #   in Loop: Header=BB105_6 Depth=1
	xorl	%eax, %eax
	imulq	$0, -72(%rbp), %rcx
	addq	-64(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -72(%rbp), %rdi
	addq	-64(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	jmp	.LBB105_59
.LBB105_58:                             # %cond.false.214
                                        #   in Loop: Header=BB105_6 Depth=1
	imulq	$0, -72(%rbp), %rax
	addq	-64(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
.LBB105_59:                             # %cond.end.219
                                        #   in Loop: Header=BB105_6 Depth=1
	movq	-200(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB105_69
# BB#60:                                # %cond.true.223
                                        #   in Loop: Header=BB105_6 Depth=1
	cmpq	$0, -72(%rbp)
	jge	.LBB105_65
# BB#61:                                # %cond.true.226
                                        #   in Loop: Header=BB105_6 Depth=1
	imulq	$0, -72(%rbp), %rax
	addq	-64(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB105_63
# BB#62:                                # %cond.true.233
                                        #   in Loop: Header=BB105_6 Depth=1
	imulq	$0, -72(%rbp), %rax
	addq	-64(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	jmp	.LBB105_64
.LBB105_63:                             # %cond.false.242
                                        #   in Loop: Header=BB105_6 Depth=1
	imulq	$0, -72(%rbp), %rax
	addq	-64(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
.LBB105_64:                             # %cond.end.247
                                        #   in Loop: Header=BB105_6 Depth=1
	movq	-208(%rbp), %rax        # 8-byte Reload
	addq	-72(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jl	.LBB105_77
	jmp	.LBB105_74
.LBB105_65:                             # %cond.false.252
                                        #   in Loop: Header=BB105_6 Depth=1
	movq	-64(%rbp), %rax
	imulq	$0, -72(%rbp), %rcx
	addq	-64(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -216(%rbp)        # 8-byte Spill
	jge	.LBB105_67
# BB#66:                                # %cond.true.259
                                        #   in Loop: Header=BB105_6 Depth=1
	xorl	%eax, %eax
	imulq	$0, -72(%rbp), %rcx
	addq	-64(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -72(%rbp), %rdi
	addq	-64(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	jmp	.LBB105_68
.LBB105_67:                             # %cond.false.278
                                        #   in Loop: Header=BB105_6 Depth=1
	imulq	$0, -72(%rbp), %rax
	addq	-64(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
.LBB105_68:                             # %cond.end.283
                                        #   in Loop: Header=BB105_6 Depth=1
	movq	-224(%rbp), %rax        # 8-byte Reload
	addq	-72(%rbp), %rax
	movq	-216(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB105_77
	jmp	.LBB105_74
.LBB105_69:                             # %cond.false.288
                                        #   in Loop: Header=BB105_6 Depth=1
	cmpq	$0, -64(%rbp)
	jge	.LBB105_71
# BB#70:                                # %cond.true.291
                                        #   in Loop: Header=BB105_6 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB105_77
	jmp	.LBB105_74
.LBB105_71:                             # %cond.false.292
                                        #   in Loop: Header=BB105_6 Depth=1
	cmpq	$0, -72(%rbp)
	jge	.LBB105_73
# BB#72:                                # %cond.true.295
                                        #   in Loop: Header=BB105_6 Depth=1
	movq	-64(%rbp), %rax
	subq	-72(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jle	.LBB105_77
	jmp	.LBB105_74
.LBB105_73:                             # %cond.false.299
                                        #   in Loop: Header=BB105_6 Depth=1
	movq	-64(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jl	.LBB105_77
.LBB105_74:                             # %lor.lhs.false.302
                                        #   in Loop: Header=BB105_6 Depth=1
	movq	-64(%rbp), %rax
	subq	-72(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB105_76
# BB#75:                                # %land.lhs.true.308
                                        #   in Loop: Header=BB105_6 Depth=1
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-64(%rbp), %rcx
	subq	-72(%rbp), %rcx
	cmpq	%rax, %rcx
	jl	.LBB105_77
.LBB105_76:                             # %lor.lhs.false.312
                                        #   in Loop: Header=BB105_6 Depth=1
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-64(%rbp), %rcx
	subq	-72(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB105_81
.LBB105_77:                             # %cond.true.316
                                        #   in Loop: Header=BB105_6 Depth=1
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-64(%rbp), %rcx
	subq	-72(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB105_79
# BB#78:                                # %cond.true.320
                                        #   in Loop: Header=BB105_6 Depth=1
	movq	-64(%rbp), %rax
	subq	-72(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	jmp	.LBB105_80
.LBB105_79:                             # %cond.false.322
                                        #   in Loop: Header=BB105_6 Depth=1
	movq	-64(%rbp), %rax
	subq	-72(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
.LBB105_80:                             # %cond.end.326
                                        #   in Loop: Header=BB105_6 Depth=1
	movq	-232(%rbp), %rax        # 8-byte Reload
	movl	$1, %ecx
	movq	%rax, -64(%rbp)
	movl	%ecx, -236(%rbp)        # 4-byte Spill
	jmp	.LBB105_85
.LBB105_81:                             # %cond.false.328
                                        #   in Loop: Header=BB105_6 Depth=1
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-64(%rbp), %rcx
	subq	-72(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB105_83
# BB#82:                                # %cond.true.332
                                        #   in Loop: Header=BB105_6 Depth=1
	movq	-64(%rbp), %rax
	subq	-72(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	jmp	.LBB105_84
.LBB105_83:                             # %cond.false.334
                                        #   in Loop: Header=BB105_6 Depth=1
	movq	-64(%rbp), %rax
	subq	-72(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
.LBB105_84:                             # %cond.end.338
                                        #   in Loop: Header=BB105_6 Depth=1
	movq	-248(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movq	%rax, -64(%rbp)
	movl	%ecx, -236(%rbp)        # 4-byte Spill
.LBB105_85:                             # %cond.end.340
                                        #   in Loop: Header=BB105_6 Depth=1
	movl	-236(%rbp), %eax        # 4-byte Reload
	movb	-81(%rbp), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	orl	%eax, %edx
	cmpl	$0, %edx
	setne	%cl
	andb	$1, %cl
	movb	%cl, -81(%rbp)
.LBB105_86:                             # %if.end.347
                                        #   in Loop: Header=BB105_6 Depth=1
	jmp	.LBB105_166
.LBB105_87:                             # %sw.bb.348
                                        #   in Loop: Header=BB105_6 Depth=1
	imulq	$0, -72(%rbp), %rax
	addq	-64(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB105_89
# BB#88:                                # %cond.true.355
                                        #   in Loop: Header=BB105_6 Depth=1
	xorl	%eax, %eax
	imulq	$0, -72(%rbp), %rcx
	addq	-64(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -72(%rbp), %rdi
	addq	-64(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	jmp	.LBB105_90
.LBB105_89:                             # %cond.false.374
                                        #   in Loop: Header=BB105_6 Depth=1
	imulq	$0, -72(%rbp), %rax
	addq	-64(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
.LBB105_90:                             # %cond.end.379
                                        #   in Loop: Header=BB105_6 Depth=1
	movq	-256(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB105_95
# BB#91:                                # %land.lhs.true.383
                                        #   in Loop: Header=BB105_6 Depth=1
	cmpq	$0, -64(%rbp)
	jge	.LBB105_93
# BB#92:                                # %land.lhs.true.386
                                        #   in Loop: Header=BB105_6 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	cmpq	-72(%rbp), %rcx
	jl	.LBB105_121
.LBB105_93:                             # %lor.lhs.false.389
                                        #   in Loop: Header=BB105_6 Depth=1
	cmpq	$0, -72(%rbp)
	jge	.LBB105_95
# BB#94:                                # %land.lhs.true.392
                                        #   in Loop: Header=BB105_6 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	cmpq	-64(%rbp), %rcx
	jl	.LBB105_121
.LBB105_95:                             # %lor.lhs.false.395
                                        #   in Loop: Header=BB105_6 Depth=1
	cmpq	$0, -72(%rbp)
	jge	.LBB105_107
# BB#96:                                # %cond.true.398
                                        #   in Loop: Header=BB105_6 Depth=1
	cmpq	$0, -64(%rbp)
	jge	.LBB105_101
# BB#97:                                # %cond.true.401
                                        #   in Loop: Header=BB105_6 Depth=1
	movq	-64(%rbp), %rax
	imulq	$0, -72(%rbp), %rcx
	addq	-64(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -264(%rbp)        # 8-byte Spill
	jge	.LBB105_99
# BB#98:                                # %cond.true.408
                                        #   in Loop: Header=BB105_6 Depth=1
	imulq	$0, -72(%rbp), %rax
	addq	-64(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	jmp	.LBB105_100
.LBB105_99:                             # %cond.false.417
                                        #   in Loop: Header=BB105_6 Depth=1
	imulq	$0, -72(%rbp), %rax
	addq	-64(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
.LBB105_100:                            # %cond.end.422
                                        #   in Loop: Header=BB105_6 Depth=1
	movq	-272(%rbp), %rax        # 8-byte Reload
	cqto
	idivq	-72(%rbp)
	movq	-264(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB105_121
	jmp	.LBB105_118
.LBB105_101:                            # %cond.false.426
                                        #   in Loop: Header=BB105_6 Depth=1
	cmpq	$-1, -72(%rbp)
	jne	.LBB105_103
# BB#102:                               # %cond.true.429
                                        #   in Loop: Header=BB105_6 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB105_121
	jmp	.LBB105_118
.LBB105_103:                            # %cond.false.430
                                        #   in Loop: Header=BB105_6 Depth=1
	imulq	$0, -72(%rbp), %rax
	addq	-64(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB105_105
# BB#104:                               # %cond.true.437
                                        #   in Loop: Header=BB105_6 Depth=1
	xorl	%eax, %eax
	imulq	$0, -72(%rbp), %rcx
	addq	-64(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -72(%rbp), %rdi
	addq	-64(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -280(%rbp)        # 8-byte Spill
	jmp	.LBB105_106
.LBB105_105:                            # %cond.false.456
                                        #   in Loop: Header=BB105_6 Depth=1
	imulq	$0, -72(%rbp), %rax
	addq	-64(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
.LBB105_106:                            # %cond.end.461
                                        #   in Loop: Header=BB105_6 Depth=1
	movq	-280(%rbp), %rax        # 8-byte Reload
	cqto
	idivq	-72(%rbp)
	cmpq	-64(%rbp), %rax
	jl	.LBB105_121
	jmp	.LBB105_118
.LBB105_107:                            # %cond.false.466
                                        #   in Loop: Header=BB105_6 Depth=1
	cmpq	$0, -72(%rbp)
	jne	.LBB105_109
# BB#108:                               # %cond.true.469
                                        #   in Loop: Header=BB105_6 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB105_121
	jmp	.LBB105_118
.LBB105_109:                            # %cond.false.470
                                        #   in Loop: Header=BB105_6 Depth=1
	cmpq	$0, -64(%rbp)
	jge	.LBB105_114
# BB#110:                               # %cond.true.473
                                        #   in Loop: Header=BB105_6 Depth=1
	movq	-64(%rbp), %rax
	imulq	$0, -72(%rbp), %rcx
	addq	-64(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -288(%rbp)        # 8-byte Spill
	jge	.LBB105_112
# BB#111:                               # %cond.true.480
                                        #   in Loop: Header=BB105_6 Depth=1
	xorl	%eax, %eax
	imulq	$0, -72(%rbp), %rcx
	addq	-64(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -72(%rbp), %rdi
	addq	-64(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -296(%rbp)        # 8-byte Spill
	jmp	.LBB105_113
.LBB105_112:                            # %cond.false.499
                                        #   in Loop: Header=BB105_6 Depth=1
	imulq	$0, -72(%rbp), %rax
	addq	-64(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
.LBB105_113:                            # %cond.end.504
                                        #   in Loop: Header=BB105_6 Depth=1
	movq	-296(%rbp), %rax        # 8-byte Reload
	cqto
	idivq	-72(%rbp)
	movq	-288(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB105_121
	jmp	.LBB105_118
.LBB105_114:                            # %cond.false.509
                                        #   in Loop: Header=BB105_6 Depth=1
	imulq	$0, -72(%rbp), %rax
	addq	-64(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB105_116
# BB#115:                               # %cond.true.516
                                        #   in Loop: Header=BB105_6 Depth=1
	imulq	$0, -72(%rbp), %rax
	addq	-64(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	jmp	.LBB105_117
.LBB105_116:                            # %cond.false.525
                                        #   in Loop: Header=BB105_6 Depth=1
	imulq	$0, -72(%rbp), %rax
	addq	-64(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
.LBB105_117:                            # %cond.end.530
                                        #   in Loop: Header=BB105_6 Depth=1
	movq	-304(%rbp), %rax        # 8-byte Reload
	cqto
	idivq	-72(%rbp)
	cmpq	-64(%rbp), %rax
	jl	.LBB105_121
.LBB105_118:                            # %lor.lhs.false.535
                                        #   in Loop: Header=BB105_6 Depth=1
	movq	-64(%rbp), %rax
	imulq	-72(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB105_120
# BB#119:                               # %land.lhs.true.541
                                        #   in Loop: Header=BB105_6 Depth=1
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-64(%rbp), %rcx
	imulq	-72(%rbp), %rcx
	cmpq	%rax, %rcx
	jl	.LBB105_121
.LBB105_120:                            # %lor.lhs.false.545
                                        #   in Loop: Header=BB105_6 Depth=1
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-64(%rbp), %rcx
	imulq	-72(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB105_125
.LBB105_121:                            # %cond.true.549
                                        #   in Loop: Header=BB105_6 Depth=1
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-64(%rbp), %rcx
	imulq	-72(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB105_123
# BB#122:                               # %cond.true.553
                                        #   in Loop: Header=BB105_6 Depth=1
	movq	-64(%rbp), %rax
	imulq	-72(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	jmp	.LBB105_124
.LBB105_123:                            # %cond.false.555
                                        #   in Loop: Header=BB105_6 Depth=1
	movq	-64(%rbp), %rax
	imulq	-72(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
.LBB105_124:                            # %cond.end.559
                                        #   in Loop: Header=BB105_6 Depth=1
	movq	-312(%rbp), %rax        # 8-byte Reload
	movl	$1, %ecx
	movq	%rax, -64(%rbp)
	movl	%ecx, -316(%rbp)        # 4-byte Spill
	jmp	.LBB105_129
.LBB105_125:                            # %cond.false.561
                                        #   in Loop: Header=BB105_6 Depth=1
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-64(%rbp), %rcx
	imulq	-72(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB105_127
# BB#126:                               # %cond.true.565
                                        #   in Loop: Header=BB105_6 Depth=1
	movq	-64(%rbp), %rax
	imulq	-72(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	jmp	.LBB105_128
.LBB105_127:                            # %cond.false.567
                                        #   in Loop: Header=BB105_6 Depth=1
	movq	-64(%rbp), %rax
	imulq	-72(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
.LBB105_128:                            # %cond.end.571
                                        #   in Loop: Header=BB105_6 Depth=1
	movq	-328(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movq	%rax, -64(%rbp)
	movl	%ecx, -316(%rbp)        # 4-byte Spill
.LBB105_129:                            # %cond.end.573
                                        #   in Loop: Header=BB105_6 Depth=1
	movl	-316(%rbp), %eax        # 4-byte Reload
	movb	-81(%rbp), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	orl	%eax, %edx
	cmpl	$0, %edx
	setne	%cl
	andb	$1, %cl
	movb	%cl, -81(%rbp)
	jmp	.LBB105_166
.LBB105_130:                            # %sw.bb.580
                                        #   in Loop: Header=BB105_6 Depth=1
	cmpq	$0, -48(%rbp)
	jne	.LBB105_133
# BB#131:                               # %lor.lhs.false.582
                                        #   in Loop: Header=BB105_6 Depth=1
	cmpq	$1, -24(%rbp)
	je	.LBB105_133
# BB#132:                               # %if.then.585
                                        #   in Loop: Header=BB105_6 Depth=1
	movq	-72(%rbp), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB105_154
.LBB105_133:                            # %if.else.586
                                        #   in Loop: Header=BB105_6 Depth=1
	cmpq	$0, -72(%rbp)
	jne	.LBB105_135
# BB#134:                               # %if.then.589
	movl	$178, %edi
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	xsignal0
.LBB105_135:                            # %if.end.591
                                        #   in Loop: Header=BB105_6 Depth=1
	imulq	$0, -72(%rbp), %rax
	addq	-64(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB105_137
# BB#136:                               # %cond.true.598
                                        #   in Loop: Header=BB105_6 Depth=1
	xorl	%eax, %eax
	imulq	$0, -72(%rbp), %rcx
	addq	-64(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -72(%rbp), %rdi
	addq	-64(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -336(%rbp)        # 8-byte Spill
	jmp	.LBB105_138
.LBB105_137:                            # %cond.false.617
                                        #   in Loop: Header=BB105_6 Depth=1
	imulq	$0, -72(%rbp), %rax
	addq	-64(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
.LBB105_138:                            # %cond.end.622
                                        #   in Loop: Header=BB105_6 Depth=1
	movq	-336(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB105_147
# BB#139:                               # %cond.true.626
                                        #   in Loop: Header=BB105_6 Depth=1
	movq	-72(%rbp), %rax
	imulq	$0, -72(%rbp), %rcx
	addq	-64(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -344(%rbp)        # 8-byte Spill
	jge	.LBB105_141
# BB#140:                               # %cond.true.633
                                        #   in Loop: Header=BB105_6 Depth=1
	xorl	%eax, %eax
	imulq	$0, -72(%rbp), %rcx
	addq	-64(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -72(%rbp), %rdi
	addq	-64(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -352(%rbp)        # 8-byte Spill
	jmp	.LBB105_142
.LBB105_141:                            # %cond.false.652
                                        #   in Loop: Header=BB105_6 Depth=1
	imulq	$0, -72(%rbp), %rax
	addq	-64(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
.LBB105_142:                            # %cond.end.657
                                        #   in Loop: Header=BB105_6 Depth=1
	movq	-352(%rbp), %rax        # 8-byte Reload
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	-344(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB105_152
# BB#143:                               # %land.lhs.true.663
                                        #   in Loop: Header=BB105_6 Depth=1
	movq	-64(%rbp), %rax
	imulq	$0, -72(%rbp), %rcx
	addq	-64(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -360(%rbp)        # 8-byte Spill
	jge	.LBB105_145
# BB#144:                               # %cond.true.670
                                        #   in Loop: Header=BB105_6 Depth=1
	imulq	$0, -72(%rbp), %rax
	addq	-64(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	jmp	.LBB105_146
.LBB105_145:                            # %cond.false.679
                                        #   in Loop: Header=BB105_6 Depth=1
	imulq	$0, -72(%rbp), %rax
	addq	-64(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
.LBB105_146:                            # %cond.end.684
                                        #   in Loop: Header=BB105_6 Depth=1
	movq	-368(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	subq	%rax, %rdx
	movq	-360(%rbp), %rax        # 8-byte Reload
	cmpq	%rdx, %rax
	jl	.LBB105_151
	jmp	.LBB105_152
.LBB105_147:                            # %cond.false.689
                                        #   in Loop: Header=BB105_6 Depth=1
	cmpq	$0, -64(%rbp)
	jge	.LBB105_149
# BB#148:                               # %cond.true.692
                                        #   in Loop: Header=BB105_6 Depth=1
	movq	-72(%rbp), %rax
	movq	-64(%rbp), %rcx
	addq	-72(%rbp), %rcx
	subq	$1, %rcx
	cmpq	%rcx, %rax
	jle	.LBB105_151
	jmp	.LBB105_152
.LBB105_149:                            # %cond.false.697
                                        #   in Loop: Header=BB105_6 Depth=1
	cmpq	$0, -72(%rbp)
	jge	.LBB105_152
# BB#150:                               # %land.lhs.true.700
                                        #   in Loop: Header=BB105_6 Depth=1
	movq	-64(%rbp), %rax
	addq	-72(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jg	.LBB105_152
.LBB105_151:                            # %if.then.704
                                        #   in Loop: Header=BB105_6 Depth=1
	movb	$1, -81(%rbp)
	jmp	.LBB105_153
.LBB105_152:                            # %if.else.705
                                        #   in Loop: Header=BB105_6 Depth=1
	movq	-72(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, -376(%rbp)        # 8-byte Spill
	movq	%rcx, %rax
	cqto
	movq	-376(%rbp), %rcx        # 8-byte Reload
	idivq	%rcx
	movq	%rax, -64(%rbp)
.LBB105_153:                            # %if.end.707
                                        #   in Loop: Header=BB105_6 Depth=1
	jmp	.LBB105_154
.LBB105_154:                            # %if.end.708
                                        #   in Loop: Header=BB105_6 Depth=1
	jmp	.LBB105_166
.LBB105_155:                            # %sw.bb.709
                                        #   in Loop: Header=BB105_6 Depth=1
	movq	-72(%rbp), %rax
	andq	-64(%rbp), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB105_166
.LBB105_156:                            # %sw.bb.711
                                        #   in Loop: Header=BB105_6 Depth=1
	movq	-72(%rbp), %rax
	orq	-64(%rbp), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB105_166
.LBB105_157:                            # %sw.bb.713
                                        #   in Loop: Header=BB105_6 Depth=1
	movq	-72(%rbp), %rax
	xorq	-64(%rbp), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB105_166
.LBB105_158:                            # %sw.bb.714
                                        #   in Loop: Header=BB105_6 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB105_160
# BB#159:                               # %lor.lhs.false.716
                                        #   in Loop: Header=BB105_6 Depth=1
	movq	-72(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jle	.LBB105_161
.LBB105_160:                            # %if.then.719
                                        #   in Loop: Header=BB105_6 Depth=1
	movq	-72(%rbp), %rax
	movq	%rax, -64(%rbp)
.LBB105_161:                            # %if.end.720
                                        #   in Loop: Header=BB105_6 Depth=1
	jmp	.LBB105_166
.LBB105_162:                            # %sw.bb.721
                                        #   in Loop: Header=BB105_6 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB105_164
# BB#163:                               # %lor.lhs.false.723
                                        #   in Loop: Header=BB105_6 Depth=1
	movq	-72(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jge	.LBB105_165
.LBB105_164:                            # %if.then.726
                                        #   in Loop: Header=BB105_6 Depth=1
	movq	-72(%rbp), %rax
	movq	%rax, -64(%rbp)
.LBB105_165:                            # %if.end.727
                                        #   in Loop: Header=BB105_6 Depth=1
	jmp	.LBB105_166
.LBB105_166:                            # %sw.epilog.728
                                        #   in Loop: Header=BB105_6 Depth=1
	jmp	.LBB105_167
.LBB105_167:                            # %for.inc
                                        #   in Loop: Header=BB105_6 Depth=1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB105_6
.LBB105_168:                            # %for.end
	movq	-64(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB105_169:                            # %return
	movq	-8(%rbp), %rax
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end105:
	.size	arith_driver, .Lfunc_end105-arith_driver
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI105_0:
	.quad	.LBB105_21
	.quad	.LBB105_51
	.quad	.LBB105_87
	.quad	.LBB105_130
	.quad	.LBB105_155
	.quad	.LBB105_156
	.quad	.LBB105_157
	.quad	.LBB105_158
	.quad	.LBB105_162

	.text
	.globl	Fminus
	.align	16, 0x90
	.type	Fminus,@function
Fminus:                                 # @Fminus
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp318:
	.cfi_def_cfa_offset 16
.Ltmp319:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp320:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$1, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movl	%eax, %edi
	callq	arith_driver
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end106:
	.size	Fminus, .Lfunc_end106-Fminus
	.cfi_endproc

	.globl	Ftimes
	.align	16, 0x90
	.type	Ftimes,@function
Ftimes:                                 # @Ftimes
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp321:
	.cfi_def_cfa_offset 16
.Ltmp322:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp323:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$2, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movl	%eax, %edi
	callq	arith_driver
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end107:
	.size	Ftimes, .Lfunc_end107-Ftimes
	.cfi_endproc

	.globl	Fquo
	.align	16, 0x90
	.type	Fquo,@function
Fquo:                                   # @Fquo
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp324:
	.cfi_def_cfa_offset 16
.Ltmp325:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp326:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	$2, -32(%rbp)
.LBB108_1:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jge	.LBB108_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB108_1 Depth=1
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	andq	$7, %rax
	movl	%eax, %edx
	cmpl	$7, %edx
	jne	.LBB108_4
# BB#3:                                 # %if.then
	xorps	%xmm0, %xmm0
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	$3, %esi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	callq	float_arith_driver
	movq	%rax, -8(%rbp)
	jmp	.LBB108_7
.LBB108_4:                              # %if.end
                                        #   in Loop: Header=BB108_1 Depth=1
	jmp	.LBB108_5
.LBB108_5:                              # %for.inc
                                        #   in Loop: Header=BB108_1 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB108_1
.LBB108_6:                              # %for.end
	movl	$3, %edi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	arith_driver
	movq	%rax, -8(%rbp)
.LBB108_7:                              # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end108:
	.size	Fquo, .Lfunc_end108-Fquo
	.cfi_endproc

	.align	16, 0x90
	.type	float_arith_driver,@function
float_arith_driver:                     # @float_arith_driver
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp327:
	.cfi_def_cfa_offset 16
.Ltmp328:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp329:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movsd	%xmm0, -16(%rbp)
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
.LBB109_1:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jge	.LBB109_42
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB109_1 Depth=1
	movq	-24(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -56(%rbp)
# BB#3:                                 # %do.body
                                        #   in Loop: Header=BB109_1 Depth=1
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB109_6
# BB#4:                                 # %land.lhs.true
                                        #   in Loop: Header=BB109_1 Depth=1
	movq	-56(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB109_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB109_1 Depth=1
	movq	-56(%rbp), %rdi
	callq	marker_position
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -56(%rbp)
	jmp	.LBB109_10
.LBB109_6:                              # %if.else
                                        #   in Loop: Header=BB109_1 Depth=1
	movq	-56(%rbp), %rdi
	callq	NUMBERP
	testb	$1, %al
	jne	.LBB109_7
	jmp	.LBB109_8
.LBB109_7:                              # %cond.true
                                        #   in Loop: Header=BB109_1 Depth=1
	jmp	.LBB109_9
.LBB109_8:                              # %cond.false
	movl	$710, %edi              # imm = 0x2C6
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB109_9:                              # %cond.end
                                        #   in Loop: Header=BB109_1 Depth=1
	jmp	.LBB109_10
.LBB109_10:                             # %if.end
                                        #   in Loop: Header=BB109_1 Depth=1
	jmp	.LBB109_11
.LBB109_11:                             # %do.end
                                        #   in Loop: Header=BB109_1 Depth=1
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$7, %ecx
	jne	.LBB109_13
# BB#12:                                # %if.then.14
                                        #   in Loop: Header=BB109_1 Depth=1
	movq	-56(%rbp), %rdi
	callq	XFLOAT_DATA
	movsd	%xmm0, -64(%rbp)
	jmp	.LBB109_14
.LBB109_13:                             # %if.else.16
                                        #   in Loop: Header=BB109_1 Depth=1
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-24(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	sarq	$2, %rax
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, -64(%rbp)
.LBB109_14:                             # %if.end.20
                                        #   in Loop: Header=BB109_1 Depth=1
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$8, %rdx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	ja	.LBB109_40
# BB#44:                                # %if.end.20
                                        #   in Loop: Header=BB109_1 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI109_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB109_15:                             # %sw.bb
                                        #   in Loop: Header=BB109_1 Depth=1
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-16(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.LBB109_40
.LBB109_16:                             # %sw.bb.21
                                        #   in Loop: Header=BB109_1 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB109_18
# BB#17:                                # %cond.true.22
                                        #   in Loop: Header=BB109_1 Depth=1
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-64(%rbp), %xmm0
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	jmp	.LBB109_22
.LBB109_18:                             # %cond.false.23
                                        #   in Loop: Header=BB109_1 Depth=1
	cmpq	$1, -40(%rbp)
	jne	.LBB109_20
# BB#19:                                # %cond.true.26
                                        #   in Loop: Header=BB109_1 Depth=1
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	jmp	.LBB109_21
.LBB109_20:                             # %cond.false.28
                                        #   in Loop: Header=BB109_1 Depth=1
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
.LBB109_21:                             # %cond.end.29
                                        #   in Loop: Header=BB109_1 Depth=1
	movsd	-104(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
.LBB109_22:                             # %cond.end.30
                                        #   in Loop: Header=BB109_1 Depth=1
	movsd	-96(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -16(%rbp)
	jmp	.LBB109_40
.LBB109_23:                             # %sw.bb.32
                                        #   in Loop: Header=BB109_1 Depth=1
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-16(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.LBB109_40
.LBB109_24:                             # %sw.bb.33
                                        #   in Loop: Header=BB109_1 Depth=1
	cmpq	$0, -24(%rbp)
	jne	.LBB109_27
# BB#25:                                # %lor.lhs.false
                                        #   in Loop: Header=BB109_1 Depth=1
	cmpq	$1, -40(%rbp)
	je	.LBB109_27
# BB#26:                                # %if.then.37
                                        #   in Loop: Header=BB109_1 Depth=1
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -16(%rbp)
	jmp	.LBB109_28
.LBB109_27:                             # %if.else.38
                                        #   in Loop: Header=BB109_1 Depth=1
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -16(%rbp)
.LBB109_28:                             # %if.end.39
                                        #   in Loop: Header=BB109_1 Depth=1
	jmp	.LBB109_40
.LBB109_29:                             # %sw.bb.40
	movl	$558, %edi              # imm = 0x22E
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB109_30:                             # %sw.bb.42
                                        #   in Loop: Header=BB109_1 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB109_33
# BB#31:                                # %lor.lhs.false.44
                                        #   in Loop: Header=BB109_1 Depth=1
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-64(%rbp), %xmm0
	jne	.LBB109_33
	jp	.LBB109_33
# BB#32:                                # %lor.lhs.false.47
                                        #   in Loop: Header=BB109_1 Depth=1
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-16(%rbp), %xmm0
	jbe	.LBB109_34
.LBB109_33:                             # %if.then.50
                                        #   in Loop: Header=BB109_1 Depth=1
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -16(%rbp)
.LBB109_34:                             # %if.end.51
                                        #   in Loop: Header=BB109_1 Depth=1
	jmp	.LBB109_40
.LBB109_35:                             # %sw.bb.52
                                        #   in Loop: Header=BB109_1 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB109_38
# BB#36:                                # %lor.lhs.false.54
                                        #   in Loop: Header=BB109_1 Depth=1
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-64(%rbp), %xmm0
	jne	.LBB109_38
	jp	.LBB109_38
# BB#37:                                # %lor.lhs.false.57
                                        #   in Loop: Header=BB109_1 Depth=1
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB109_39
.LBB109_38:                             # %if.then.60
                                        #   in Loop: Header=BB109_1 Depth=1
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -16(%rbp)
.LBB109_39:                             # %if.end.61
                                        #   in Loop: Header=BB109_1 Depth=1
	jmp	.LBB109_40
.LBB109_40:                             # %sw.epilog
                                        #   in Loop: Header=BB109_1 Depth=1
	jmp	.LBB109_41
.LBB109_41:                             # %for.inc
                                        #   in Loop: Header=BB109_1 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB109_1
.LBB109_42:                             # %for.end
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	make_float
	movq	%rax, -8(%rbp)
# BB#43:                                # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end109:
	.size	float_arith_driver, .Lfunc_end109-float_arith_driver
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI109_0:
	.quad	.LBB109_15
	.quad	.LBB109_16
	.quad	.LBB109_23
	.quad	.LBB109_24
	.quad	.LBB109_29
	.quad	.LBB109_29
	.quad	.LBB109_29
	.quad	.LBB109_30
	.quad	.LBB109_35

	.text
	.globl	Frem
	.align	16, 0x90
	.type	Frem,@function
Frem:                                   # @Frem
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp330:
	.cfi_def_cfa_offset 16
.Ltmp331:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp332:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB110_4
# BB#2:                                 # %land.lhs.true
	movq	-8(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB110_4
# BB#3:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	marker_position
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -8(%rbp)
	jmp	.LBB110_8
.LBB110_4:                              # %if.else
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB110_6
# BB#5:                                 # %cond.true
	jmp	.LBB110_7
.LBB110_6:                              # %cond.false
	movl	$558, %edi              # imm = 0x22E
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB110_7:                              # %cond.end
	jmp	.LBB110_8
.LBB110_8:                              # %if.end
	jmp	.LBB110_9
.LBB110_9:                              # %do.end
	jmp	.LBB110_10
.LBB110_10:                             # %do.body.12
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB110_13
# BB#11:                                # %land.lhs.true.17
	movq	-16(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB110_13
# BB#12:                                # %if.then.21
	movq	-16(%rbp), %rdi
	callq	marker_position
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -16(%rbp)
	jmp	.LBB110_17
.LBB110_13:                             # %if.else.24
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB110_15
# BB#14:                                # %cond.true.30
	jmp	.LBB110_16
.LBB110_15:                             # %cond.false.31
	movl	$558, %edi              # imm = 0x22E
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB110_16:                             # %cond.end.33
	jmp	.LBB110_17
.LBB110_17:                             # %if.end.34
	jmp	.LBB110_18
.LBB110_18:                             # %do.end.35
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jne	.LBB110_20
# BB#19:                                # %if.then.38
	movl	$178, %edi
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	xsignal0
.LBB110_20:                             # %if.end.40
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	movq	-16(%rbp), %rcx
	sarq	$2, %rcx
	cqto
	idivq	%rcx
	shlq	$2, %rdx
	addq	$2, %rdx
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end110:
	.size	Frem, .Lfunc_end110-Frem
	.cfi_endproc

	.globl	Fmod
	.align	16, 0x90
	.type	Fmod,@function
Fmod:                                   # @Fmod
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp333:
	.cfi_def_cfa_offset 16
.Ltmp334:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp335:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB111_4
# BB#2:                                 # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB111_4
# BB#3:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	marker_position
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -16(%rbp)
	jmp	.LBB111_8
.LBB111_4:                              # %if.else
	movq	-16(%rbp), %rdi
	callq	NUMBERP
	testb	$1, %al
	jne	.LBB111_5
	jmp	.LBB111_6
.LBB111_5:                              # %cond.true
	jmp	.LBB111_7
.LBB111_6:                              # %cond.false
	movl	$710, %edi              # imm = 0x2C6
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB111_7:                              # %cond.end
	jmp	.LBB111_8
.LBB111_8:                              # %if.end
	jmp	.LBB111_9
.LBB111_9:                              # %do.end
	jmp	.LBB111_10
.LBB111_10:                             # %do.body.9
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB111_13
# BB#11:                                # %land.lhs.true.14
	movq	-24(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB111_13
# BB#12:                                # %if.then.18
	movq	-24(%rbp), %rdi
	callq	marker_position
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -24(%rbp)
	jmp	.LBB111_17
.LBB111_13:                             # %if.else.21
	movq	-24(%rbp), %rdi
	callq	NUMBERP
	testb	$1, %al
	jne	.LBB111_14
	jmp	.LBB111_15
.LBB111_14:                             # %cond.true.24
	jmp	.LBB111_16
.LBB111_15:                             # %cond.false.25
	movl	$710, %edi              # imm = 0x2C6
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB111_16:                             # %cond.end.27
	jmp	.LBB111_17
.LBB111_17:                             # %if.end.28
	jmp	.LBB111_18
.LBB111_18:                             # %do.end.29
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$7, %ecx
	je	.LBB111_20
# BB#19:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$7, %ecx
	jne	.LBB111_21
.LBB111_20:                             # %if.then.38
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	fmod_float
	movq	%rax, -8(%rbp)
	jmp	.LBB111_28
.LBB111_21:                             # %if.end.40
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB111_23
# BB#22:                                # %if.then.44
	movl	$178, %edi
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	xsignal0
.LBB111_23:                             # %if.end.46
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rcx, %rax
	cqto
	movq	-72(%rbp), %rcx         # 8-byte Reload
	idivq	%rcx
	movq	%rdx, -40(%rbp)
	cmpq	$0, -48(%rbp)
	jge	.LBB111_25
# BB#24:                                # %cond.true.49
	cmpq	$0, -40(%rbp)
	jg	.LBB111_26
	jmp	.LBB111_27
.LBB111_25:                             # %cond.false.52
	cmpq	$0, -40(%rbp)
	jge	.LBB111_27
.LBB111_26:                             # %if.then.55
	movq	-48(%rbp), %rax
	addq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB111_27:                             # %if.end.56
	movq	-40(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB111_28:                             # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end111:
	.size	Fmod, .Lfunc_end111-Fmod
	.cfi_endproc

	.globl	Fmax
	.align	16, 0x90
	.type	Fmax,@function
Fmax:                                   # @Fmax
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp336:
	.cfi_def_cfa_offset 16
.Ltmp337:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp338:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$7, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movl	%eax, %edi
	callq	arith_driver
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end112:
	.size	Fmax, .Lfunc_end112-Fmax
	.cfi_endproc

	.globl	Fmin
	.align	16, 0x90
	.type	Fmin,@function
Fmin:                                   # @Fmin
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp339:
	.cfi_def_cfa_offset 16
.Ltmp340:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp341:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$8, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movl	%eax, %edi
	callq	arith_driver
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end113:
	.size	Fmin, .Lfunc_end113-Fmin
	.cfi_endproc

	.globl	Flogand
	.align	16, 0x90
	.type	Flogand,@function
Flogand:                                # @Flogand
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp342:
	.cfi_def_cfa_offset 16
.Ltmp343:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp344:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$4, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movl	%eax, %edi
	callq	arith_driver
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end114:
	.size	Flogand, .Lfunc_end114-Flogand
	.cfi_endproc

	.globl	Flogior
	.align	16, 0x90
	.type	Flogior,@function
Flogior:                                # @Flogior
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp345:
	.cfi_def_cfa_offset 16
.Ltmp346:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp347:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$5, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movl	%eax, %edi
	callq	arith_driver
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end115:
	.size	Flogior, .Lfunc_end115-Flogior
	.cfi_endproc

	.globl	Flogxor
	.align	16, 0x90
	.type	Flogxor,@function
Flogxor:                                # @Flogxor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp348:
	.cfi_def_cfa_offset 16
.Ltmp349:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp350:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$6, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movl	%eax, %edi
	callq	arith_driver
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end116:
	.size	Flogxor, .Lfunc_end116-Flogxor
	.cfi_endproc

	.globl	Fash
	.align	16, 0x90
	.type	Fash,@function
Fash:                                   # @Fash
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp351:
	.cfi_def_cfa_offset 16
.Ltmp352:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp353:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	andq	$7, %rsi
	movl	%esi, %eax
	andl	$-5, %eax
	cmpl	$2, %eax
	jne	.LBB117_2
# BB#1:                                 # %cond.true
	jmp	.LBB117_3
.LBB117_2:                              # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB117_3:                              # %cond.end
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB117_5
# BB#4:                                 # %cond.true.8
	jmp	.LBB117_6
.LBB117_5:                              # %cond.false.9
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB117_6:                              # %cond.end.11
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	cmpq	$64, %rax
	jl	.LBB117_8
# BB#7:                                 # %if.then
	movq	$2, -24(%rbp)
	jmp	.LBB117_15
.LBB117_8:                              # %if.else
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jle	.LBB117_10
# BB#9:                                 # %if.then.17
	movq	-8(%rbp), %rdi
	callq	XUINT
	movq	-16(%rbp), %rdi
	sarq	$2, %rdi
	movq	%rdi, %rcx
                                        # kill: CL<def> RCX<kill>
	shlq	%cl, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB117_14
.LBB117_10:                             # %if.else.21
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	cmpq	$-64, %rax
	jg	.LBB117_12
# BB#11:                                # %if.then.25
	xorl	%eax, %eax
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	-8(%rbp), %rdx
	sarq	$2, %rdx
	cmpq	$0, %rdx
	cmovll	%ecx, %eax
	movslq	%eax, %rdx
	shlq	$2, %rdx
	addq	$2, %rdx
	movq	%rdx, -24(%rbp)
	jmp	.LBB117_13
.LBB117_12:                             # %if.else.32
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	sarq	$2, %rdx
	movq	-16(%rbp), %rsi
	sarq	$2, %rsi
	subq	%rsi, %rcx
                                        # kill: CL<def> RCX<kill>
	sarq	%cl, %rdx
	shlq	$2, %rdx
	addq	$2, %rdx
	movq	%rdx, -24(%rbp)
.LBB117_13:                             # %if.end
	jmp	.LBB117_14
.LBB117_14:                             # %if.end.38
	jmp	.LBB117_15
.LBB117_15:                             # %if.end.39
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end117:
	.size	Fash, .Lfunc_end117-Fash
	.cfi_endproc

	.globl	Flsh
	.align	16, 0x90
	.type	Flsh,@function
Flsh:                                   # @Flsh
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp354:
	.cfi_def_cfa_offset 16
.Ltmp355:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp356:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	andq	$7, %rsi
	movl	%esi, %eax
	andl	$-5, %eax
	cmpl	$2, %eax
	jne	.LBB118_2
# BB#1:                                 # %cond.true
	jmp	.LBB118_3
.LBB118_2:                              # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB118_3:                              # %cond.end
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB118_5
# BB#4:                                 # %cond.true.8
	jmp	.LBB118_6
.LBB118_5:                              # %cond.false.9
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB118_6:                              # %cond.end.11
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	cmpq	$64, %rax
	jl	.LBB118_8
# BB#7:                                 # %if.then
	movq	$2, -24(%rbp)
	jmp	.LBB118_15
.LBB118_8:                              # %if.else
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jle	.LBB118_10
# BB#9:                                 # %if.then.17
	movq	-8(%rbp), %rdi
	callq	XUINT
	movq	-16(%rbp), %rdi
	sarq	$2, %rdi
	movq	%rdi, %rcx
                                        # kill: CL<def> RCX<kill>
	shlq	%cl, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB118_14
.LBB118_10:                             # %if.else.21
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	cmpq	$-64, %rax
	jg	.LBB118_12
# BB#11:                                # %if.then.25
	movq	$2, -24(%rbp)
	jmp	.LBB118_13
.LBB118_12:                             # %if.else.26
	movq	-8(%rbp), %rdi
	callq	XUINT
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	-16(%rbp), %rdx
	sarq	$2, %rdx
	subq	%rdx, %rdi
	movq	%rdi, %rcx
                                        # kill: CL<def> RCX<kill>
	shrq	%cl, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -24(%rbp)
.LBB118_13:                             # %if.end
	jmp	.LBB118_14
.LBB118_14:                             # %if.end.32
	jmp	.LBB118_15
.LBB118_15:                             # %if.end.33
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end118:
	.size	Flsh, .Lfunc_end118-Flsh
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI119_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	Fadd1
	.align	16, 0x90
	.type	Fadd1,@function
Fadd1:                                  # @Fadd1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp357:
	.cfi_def_cfa_offset 16
.Ltmp358:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp359:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB119_4
# BB#2:                                 # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB119_4
# BB#3:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	marker_position
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -16(%rbp)
	jmp	.LBB119_8
.LBB119_4:                              # %if.else
	movq	-16(%rbp), %rdi
	callq	NUMBERP
	testb	$1, %al
	jne	.LBB119_5
	jmp	.LBB119_6
.LBB119_5:                              # %cond.true
	jmp	.LBB119_7
.LBB119_6:                              # %cond.false
	movl	$710, %edi              # imm = 0x2C6
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB119_7:                              # %cond.end
	jmp	.LBB119_8
.LBB119_8:                              # %if.end
	jmp	.LBB119_9
.LBB119_9:                              # %do.end
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$7, %ecx
	jne	.LBB119_11
# BB#10:                                # %if.then.13
	movq	-16(%rbp), %rdi
	callq	XFLOAT_DATA
	movsd	.LCPI119_0, %xmm1       # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	callq	make_float
	movq	%rax, -8(%rbp)
	jmp	.LBB119_12
.LBB119_11:                             # %if.end.16
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	addq	$1, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB119_12:                             # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end119:
	.size	Fadd1, .Lfunc_end119-Fadd1
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI120_0:
	.quad	-4616189618054758400    # double -1
	.text
	.globl	Fsub1
	.align	16, 0x90
	.type	Fsub1,@function
Fsub1:                                  # @Fsub1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp360:
	.cfi_def_cfa_offset 16
.Ltmp361:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp362:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB120_4
# BB#2:                                 # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB120_4
# BB#3:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	marker_position
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -16(%rbp)
	jmp	.LBB120_8
.LBB120_4:                              # %if.else
	movq	-16(%rbp), %rdi
	callq	NUMBERP
	testb	$1, %al
	jne	.LBB120_5
	jmp	.LBB120_6
.LBB120_5:                              # %cond.true
	jmp	.LBB120_7
.LBB120_6:                              # %cond.false
	movl	$710, %edi              # imm = 0x2C6
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB120_7:                              # %cond.end
	jmp	.LBB120_8
.LBB120_8:                              # %if.end
	jmp	.LBB120_9
.LBB120_9:                              # %do.end
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$7, %ecx
	jne	.LBB120_11
# BB#10:                                # %if.then.13
	movq	-16(%rbp), %rdi
	callq	XFLOAT_DATA
	movsd	.LCPI120_0, %xmm1       # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	callq	make_float
	movq	%rax, -8(%rbp)
	jmp	.LBB120_12
.LBB120_11:                             # %if.end.16
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	subq	$1, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB120_12:                             # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end120:
	.size	Fsub1, .Lfunc_end120-Fsub1
	.cfi_endproc

	.globl	Flognot
	.align	16, 0x90
	.type	Flognot,@function
Flognot:                                # @Flognot
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp363:
	.cfi_def_cfa_offset 16
.Ltmp364:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp365:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	andl	$-5, %eax
	cmpl	$2, %eax
	jne	.LBB121_2
# BB#1:                                 # %cond.true
	jmp	.LBB121_3
.LBB121_2:                              # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB121_3:                              # %cond.end
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	xorq	$-1, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end121:
	.size	Flognot, .Lfunc_end121-Flognot
	.cfi_endproc

	.globl	Fbyteorder
	.align	16, 0x90
	.type	Fbyteorder,@function
Fbyteorder:                             # @Fbyteorder
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp366:
	.cfi_def_cfa_offset 16
.Ltmp367:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp368:
	.cfi_def_cfa_register %rbp
	movl	$66, %eax
	movl	$108, %ecx
	movl	$67305985, -4(%rbp)     # imm = 0x4030201
	movsbl	-4(%rbp), %edx
	cmpl	$1, %edx
	cmovel	%ecx, %eax
	movl	%eax, -8(%rbp)
	movslq	-8(%rbp), %rsi
	shlq	$2, %rsi
	addq	$2, %rsi
	movq	%rsi, %rax
	popq	%rbp
	retq
.Lfunc_end122:
	.size	Fbyteorder, .Lfunc_end122-Fbyteorder
	.cfi_endproc

	.globl	Fbool_vector_exclusive_or
	.align	16, 0x90
	.type	Fbool_vector_exclusive_or,@function
Fbool_vector_exclusive_or:              # @Fbool_vector_exclusive_or
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp369:
	.cfi_def_cfa_offset 16
.Ltmp370:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp371:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%ecx, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	bool_vector_binop_driver
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end123:
	.size	Fbool_vector_exclusive_or, .Lfunc_end123-Fbool_vector_exclusive_or
	.cfi_endproc

	.align	16, 0x90
	.type	bool_vector_binop_driver,@function
bool_vector_binop_driver:               # @bool_vector_binop_driver
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp372:
	.cfi_def_cfa_offset 16
.Ltmp373:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp374:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	$0, -80(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHECK_BOOL_VECTOR
	movq	-24(%rbp), %rdi
	callq	CHECK_BOOL_VECTOR
	movq	-16(%rbp), %rdi
	callq	bool_vector_size
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rdi
	callq	bool_vector_size
	cmpq	-48(%rbp), %rax
	je	.LBB124_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	wrong_length_argument
.LBB124_2:                              # %if.end
	movq	-48(%rbp), %rdi
	callq	bool_vector_words
	movq	%rax, -88(%rbp)
	movq	-16(%rbp), %rdi
	callq	bool_vector_data
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rdi
	callq	bool_vector_data
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB124_4
# BB#3:                                 # %if.then.7
	movq	-48(%rbp), %rdi
	callq	make_uninit_bool_vector
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	bool_vector_data
	movq	%rax, -72(%rbp)
	jmp	.LBB124_43
.LBB124_4:                              # %if.else
	movq	-32(%rbp), %rdi
	callq	CHECK_BOOL_VECTOR
	movq	-32(%rbp), %rdi
	callq	bool_vector_data
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rdi
	callq	bool_vector_size
	cmpq	-48(%rbp), %rax
	je	.LBB124_6
# BB#5:                                 # %if.then.13
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	wrong_length_argument
.LBB124_6:                              # %if.end.14
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$4, %rdx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	ja	.LBB124_42
# BB#68:                                # %if.end.14
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	.LJTI124_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB124_7:                              # %sw.bb
	jmp	.LBB124_8
.LBB124_8:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-80(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jge	.LBB124_13
# BB#9:                                 # %for.body
                                        #   in Loop: Header=BB124_8 Depth=1
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-80(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	-80(%rbp), %rdx
	movq	-64(%rbp), %rsi
	xorq	(%rsi,%rdx,8), %rcx
	cmpq	%rcx, %rax
	je	.LBB124_11
# BB#10:                                # %if.then.19
	jmp	.LBB124_44
.LBB124_11:                             # %if.end.20
                                        #   in Loop: Header=BB124_8 Depth=1
	jmp	.LBB124_12
.LBB124_12:                             # %for.inc
                                        #   in Loop: Header=BB124_8 Depth=1
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB124_8
.LBB124_13:                             # %for.end
	jmp	.LBB124_42
.LBB124_14:                             # %sw.bb.21
	jmp	.LBB124_15
.LBB124_15:                             # %for.cond.22
                                        # =>This Inner Loop Header: Depth=1
	movq	-80(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jge	.LBB124_20
# BB#16:                                # %for.body.24
                                        #   in Loop: Header=BB124_15 Depth=1
	movq	-80(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	xorq	$-1, %rcx
	andq	%rcx, %rax
	cmpq	$0, %rax
	je	.LBB124_18
# BB#17:                                # %if.then.27
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB124_67
.LBB124_18:                             # %if.end.29
                                        #   in Loop: Header=BB124_15 Depth=1
	jmp	.LBB124_19
.LBB124_19:                             # %for.inc.30
                                        #   in Loop: Header=BB124_15 Depth=1
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB124_15
.LBB124_20:                             # %for.end.32
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB124_67
.LBB124_21:                             # %sw.bb.34
	jmp	.LBB124_22
.LBB124_22:                             # %for.cond.35
                                        # =>This Inner Loop Header: Depth=1
	movq	-80(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jge	.LBB124_27
# BB#23:                                # %for.body.37
                                        #   in Loop: Header=BB124_22 Depth=1
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-80(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	-80(%rbp), %rdx
	movq	-64(%rbp), %rsi
	orq	(%rsi,%rdx,8), %rcx
	cmpq	%rcx, %rax
	je	.LBB124_25
# BB#24:                                # %if.then.42
	jmp	.LBB124_44
.LBB124_25:                             # %if.end.43
                                        #   in Loop: Header=BB124_22 Depth=1
	jmp	.LBB124_26
.LBB124_26:                             # %for.inc.44
                                        #   in Loop: Header=BB124_22 Depth=1
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB124_22
.LBB124_27:                             # %for.end.46
	jmp	.LBB124_42
.LBB124_28:                             # %sw.bb.47
	jmp	.LBB124_29
.LBB124_29:                             # %for.cond.48
                                        # =>This Inner Loop Header: Depth=1
	movq	-80(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jge	.LBB124_34
# BB#30:                                # %for.body.50
                                        #   in Loop: Header=BB124_29 Depth=1
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-80(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	-80(%rbp), %rdx
	movq	-64(%rbp), %rsi
	andq	(%rsi,%rdx,8), %rcx
	cmpq	%rcx, %rax
	je	.LBB124_32
# BB#31:                                # %if.then.56
	jmp	.LBB124_44
.LBB124_32:                             # %if.end.57
                                        #   in Loop: Header=BB124_29 Depth=1
	jmp	.LBB124_33
.LBB124_33:                             # %for.inc.58
                                        #   in Loop: Header=BB124_29 Depth=1
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB124_29
.LBB124_34:                             # %for.end.60
	jmp	.LBB124_42
.LBB124_35:                             # %sw.bb.61
	jmp	.LBB124_36
.LBB124_36:                             # %for.cond.62
                                        # =>This Inner Loop Header: Depth=1
	movq	-80(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jge	.LBB124_41
# BB#37:                                # %for.body.64
                                        #   in Loop: Header=BB124_36 Depth=1
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-80(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	-80(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	(%rsi,%rdx,8), %rdx
	xorq	$-1, %rdx
	andq	%rdx, %rcx
	cmpq	%rcx, %rax
	je	.LBB124_39
# BB#38:                                # %if.then.71
	jmp	.LBB124_44
.LBB124_39:                             # %if.end.72
                                        #   in Loop: Header=BB124_36 Depth=1
	jmp	.LBB124_40
.LBB124_40:                             # %for.inc.73
                                        #   in Loop: Header=BB124_36 Depth=1
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB124_36
.LBB124_41:                             # %for.end.75
	jmp	.LBB124_42
.LBB124_42:                             # %sw.epilog
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB124_67
.LBB124_43:                             # %if.end.77
	jmp	.LBB124_44
.LBB124_44:                             # %set_dest
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$3, %rdx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	ja	.LBB124_65
# BB#69:                                # %set_dest
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	.LJTI124_1(,%rax,8), %rcx
	jmpq	*%rcx
.LBB124_45:                             # %sw.bb.78
	jmp	.LBB124_46
.LBB124_46:                             # %for.cond.79
                                        # =>This Inner Loop Header: Depth=1
	movq	-80(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jge	.LBB124_49
# BB#47:                                # %for.body.81
                                        #   in Loop: Header=BB124_46 Depth=1
	movq	-80(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	xorq	(%rdx,%rcx,8), %rax
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
# BB#48:                                # %for.inc.86
                                        #   in Loop: Header=BB124_46 Depth=1
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB124_46
.LBB124_49:                             # %for.end.88
	jmp	.LBB124_66
.LBB124_50:                             # %sw.bb.89
	jmp	.LBB124_51
.LBB124_51:                             # %for.cond.90
                                        # =>This Inner Loop Header: Depth=1
	movq	-80(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jge	.LBB124_54
# BB#52:                                # %for.body.92
                                        #   in Loop: Header=BB124_51 Depth=1
	movq	-80(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	orq	(%rdx,%rcx,8), %rax
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
# BB#53:                                # %for.inc.97
                                        #   in Loop: Header=BB124_51 Depth=1
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB124_51
.LBB124_54:                             # %for.end.99
	jmp	.LBB124_66
.LBB124_55:                             # %sw.bb.100
	jmp	.LBB124_56
.LBB124_56:                             # %for.cond.101
                                        # =>This Inner Loop Header: Depth=1
	movq	-80(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jge	.LBB124_59
# BB#57:                                # %for.body.103
                                        #   in Loop: Header=BB124_56 Depth=1
	movq	-80(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	andq	(%rdx,%rcx,8), %rax
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
# BB#58:                                # %for.inc.108
                                        #   in Loop: Header=BB124_56 Depth=1
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB124_56
.LBB124_59:                             # %for.end.110
	jmp	.LBB124_66
.LBB124_60:                             # %sw.bb.111
	jmp	.LBB124_61
.LBB124_61:                             # %for.cond.112
                                        # =>This Inner Loop Header: Depth=1
	movq	-80(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jge	.LBB124_64
# BB#62:                                # %for.body.114
                                        #   in Loop: Header=BB124_61 Depth=1
	movq	-80(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	xorq	$-1, %rcx
	andq	%rcx, %rax
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
# BB#63:                                # %for.inc.120
                                        #   in Loop: Header=BB124_61 Depth=1
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB124_61
.LBB124_64:                             # %for.end.122
	jmp	.LBB124_66
.LBB124_65:                             # %sw.default
.LBB124_66:                             # %sw.epilog.123
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB124_67:                             # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end124:
	.size	bool_vector_binop_driver, .Lfunc_end124-bool_vector_binop_driver
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI124_0:
	.quad	.LBB124_7
	.quad	.LBB124_21
	.quad	.LBB124_28
	.quad	.LBB124_35
	.quad	.LBB124_14
.LJTI124_1:
	.quad	.LBB124_45
	.quad	.LBB124_50
	.quad	.LBB124_55
	.quad	.LBB124_60

	.text
	.globl	Fbool_vector_union
	.align	16, 0x90
	.type	Fbool_vector_union,@function
Fbool_vector_union:                     # @Fbool_vector_union
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp375:
	.cfi_def_cfa_offset 16
.Ltmp376:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp377:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$1, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	bool_vector_binop_driver
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end125:
	.size	Fbool_vector_union, .Lfunc_end125-Fbool_vector_union
	.cfi_endproc

	.globl	Fbool_vector_intersection
	.align	16, 0x90
	.type	Fbool_vector_intersection,@function
Fbool_vector_intersection:              # @Fbool_vector_intersection
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp378:
	.cfi_def_cfa_offset 16
.Ltmp379:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp380:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$2, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	bool_vector_binop_driver
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end126:
	.size	Fbool_vector_intersection, .Lfunc_end126-Fbool_vector_intersection
	.cfi_endproc

	.globl	Fbool_vector_set_difference
	.align	16, 0x90
	.type	Fbool_vector_set_difference,@function
Fbool_vector_set_difference:            # @Fbool_vector_set_difference
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp381:
	.cfi_def_cfa_offset 16
.Ltmp382:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp383:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$3, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	bool_vector_binop_driver
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end127:
	.size	Fbool_vector_set_difference, .Lfunc_end127-Fbool_vector_set_difference
	.cfi_endproc

	.globl	Fbool_vector_subsetp
	.align	16, 0x90
	.type	Fbool_vector_subsetp,@function
Fbool_vector_subsetp:                   # @Fbool_vector_subsetp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp384:
	.cfi_def_cfa_offset 16
.Ltmp385:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp386:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$4, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-16(%rbp), %rdx
	callq	bool_vector_binop_driver
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end128:
	.size	Fbool_vector_subsetp, .Lfunc_end128-Fbool_vector_subsetp
	.cfi_endproc

	.globl	Fbool_vector_not
	.align	16, 0x90
	.type	Fbool_vector_not,@function
Fbool_vector_not:                       # @Fbool_vector_not
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp387:
	.cfi_def_cfa_offset 16
.Ltmp388:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp389:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_BOOL_VECTOR
	movq	-8(%rbp), %rdi
	callq	bool_vector_size
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB129_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	make_uninit_bool_vector
	movq	%rax, -16(%rbp)
	jmp	.LBB129_5
.LBB129_2:                              # %if.else
	movq	-16(%rbp), %rdi
	callq	CHECK_BOOL_VECTOR
	movq	-16(%rbp), %rdi
	callq	bool_vector_size
	cmpq	-24(%rbp), %rax
	je	.LBB129_4
# BB#3:                                 # %if.then.5
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	wrong_length_argument
.LBB129_4:                              # %if.end
	jmp	.LBB129_5
.LBB129_5:                              # %if.end.7
	movq	-16(%rbp), %rdi
	callq	bool_vector_data
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	bool_vector_data
	movq	%rax, -40(%rbp)
	movq	$0, -48(%rbp)
.LBB129_6:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	$64, %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	cqto
	idivq	%rcx
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jge	.LBB129_9
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB129_6 Depth=1
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	xorq	$-1, %rax
	andq	$-1, %rax
	movq	-48(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB129_6 Depth=1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB129_6
.LBB129_9:                              # %for.end
	movl	$64, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	cqto
	idivq	%rcx
	cmpq	$0, %rdx
	je	.LBB129_11
# BB#10:                                # %if.then.12
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	bits_word_to_host_endian
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	xorq	$-1, %rax
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rdi
	callq	bool_vector_spare_mask
	andq	-56(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	bits_word_to_host_endian
	movq	-48(%rbp), %rcx
	movq	-32(%rbp), %rdi
	movq	%rax, (%rdi,%rcx,8)
.LBB129_11:                             # %if.end.20
	movq	-16(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end129:
	.size	Fbool_vector_not, .Lfunc_end129-Fbool_vector_not
	.cfi_endproc

	.align	16, 0x90
	.type	wrong_length_argument,@function
wrong_length_argument:                  # @wrong_length_argument
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp390:
	.cfi_def_cfa_offset 16
.Ltmp391:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp392:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	bool_vector_size
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	bool_vector_size
	xorl	%edi, %edi
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB130_2
# BB#1:                                 # %if.then
	movl	$1042, %edi             # imm = 0x412
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	%rax, %rdi
	callq	xsignal2
.LBB130_2:                              # %if.else
	movl	$1042, %edi             # imm = 0x412
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	callq	bool_vector_size
	shlq	$2, %rax
	addq	$2, %rax
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	callq	xsignal3
.Lfunc_end130:
	.size	wrong_length_argument, .Lfunc_end130-wrong_length_argument
	.cfi_endproc

	.align	16, 0x90
	.type	bits_word_to_host_endian,@function
bits_word_to_host_endian:               # @bits_word_to_host_endian
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp393:
	.cfi_def_cfa_offset 16
.Ltmp394:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp395:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end131:
	.size	bits_word_to_host_endian, .Lfunc_end131-bits_word_to_host_endian
	.cfi_endproc

	.align	16, 0x90
	.type	bool_vector_spare_mask,@function
bool_vector_spare_mask:                 # @bool_vector_spare_mask
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp396:
	.cfi_def_cfa_offset 16
.Ltmp397:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp398:
	.cfi_def_cfa_register %rbp
	movl	$1, %eax
	movl	%eax, %ecx
	movl	$64, %eax
	movl	%eax, %edx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rdx, -16(%rbp)         # 8-byte Spill
	cqto
	movq	-16(%rbp), %rdi         # 8-byte Reload
	idivq	%rdi
	movq	%rcx, -24(%rbp)         # 8-byte Spill
	movq	%rdx, %rcx
                                        # kill: CL<def> RCX<kill>
	movq	-24(%rbp), %rdx         # 8-byte Reload
	shlq	%cl, %rdx
	subq	$1, %rdx
	movq	%rdx, %rax
	popq	%rbp
	retq
.Lfunc_end132:
	.size	bool_vector_spare_mask, .Lfunc_end132-bool_vector_spare_mask
	.cfi_endproc

	.globl	Fbool_vector_count_population
	.align	16, 0x90
	.type	Fbool_vector_count_population,@function
Fbool_vector_count_population:          # @Fbool_vector_count_population
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp399:
	.cfi_def_cfa_offset 16
.Ltmp400:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp401:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_BOOL_VECTOR
	movq	-8(%rbp), %rdi
	callq	bool_vector_size
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	bool_vector_words
	movq	%rax, -48(%rbp)
	movq	$0, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	bool_vector_data
	movq	%rax, -32(%rbp)
	movq	$0, -40(%rbp)
.LBB133_1:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jge	.LBB133_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB133_1 Depth=1
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	count_one_bits_word
	movslq	%eax, %rcx
	addq	-16(%rbp), %rcx
	movq	%rcx, -16(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB133_1 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB133_1
.LBB133_4:                              # %for.end
	movq	-16(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end133:
	.size	Fbool_vector_count_population, .Lfunc_end133-Fbool_vector_count_population
	.cfi_endproc

	.align	16, 0x90
	.type	count_one_bits_word,@function
count_one_bits_word:                    # @count_one_bits_word
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp402:
	.cfi_def_cfa_offset 16
.Ltmp403:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp404:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	count_one_bits_l
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end134:
	.size	count_one_bits_word, .Lfunc_end134-count_one_bits_word
	.cfi_endproc

	.globl	Fbool_vector_count_consecutive
	.align	16, 0x90
	.type	Fbool_vector_count_consecutive,@function
Fbool_vector_count_consecutive:         # @Fbool_vector_count_consecutive
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp405:
	.cfi_def_cfa_offset 16
.Ltmp406:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp407:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHECK_BOOL_VECTOR
	movq	-32(%rbp), %rdi
	callq	CHECK_NATNUM
	movq	-16(%rbp), %rdi
	callq	bool_vector_size
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	sarq	$2, %rax
	cmpq	-48(%rbp), %rax
	jle	.LBB135_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	args_out_of_range
.LBB135_2:                              # %if.end
	movq	-16(%rbp), %rdi
	callq	bool_vector_data
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rdi
	callq	bool_vector_words
	xorl	%edi, %edi
	movl	$64, %ecx
	movl	%ecx, %edx
	movq	%rax, -104(%rbp)
	movq	-32(%rbp), %rax
	sarq	$2, %rax
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	cqto
	movq	-112(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	%rax, -88(%rbp)
	movq	-32(%rbp), %rax
	sarq	$2, %rax
	cqto
	idivq	%rsi
	movl	%edx, %ecx
	movl	%ecx, -52(%rbp)
	movq	$0, -40(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	$-1, %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-120(%rbp), %r8         # 8-byte Reload
	cmpq	%rax, %r8
	cmoveq	%rsi, %rdx
	movq	%rdx, -72(%rbp)
	movq	-88(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jge	.LBB135_7
# BB#3:                                 # %land.lhs.true
	cmpl	$0, -52(%rbp)
	je	.LBB135_7
# BB#4:                                 # %if.then.12
	movq	-88(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	bits_word_to_host_endian
	movl	$1, %edx
	movl	%edx, %ecx
	movl	$64, %edx
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	xorq	-80(%rbp), %rax
	movq	%rax, -80(%rbp)
	movl	-52(%rbp), %esi
	movq	-80(%rbp), %rax
	movl	%esi, %esi
	movl	%esi, %edi
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	movq	%rdi, %rcx
                                        # kill: CL<def> RCX<kill>
	shrq	%cl, %rax
	movq	%rax, -80(%rbp)
	subl	-52(%rbp), %edx
	movl	%edx, %edx
	movl	%edx, %ecx
                                        # kill: CL<def> RCX<kill>
	movq	-128(%rbp), %rax        # 8-byte Reload
	shlq	%cl, %rax
	orq	-80(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	callq	count_trailing_zero_bits
	movslq	%eax, %rdi
	movq	%rdi, -40(%rbp)
	movq	-88(%rbp), %rdi
	addq	$1, %rdi
	movq	%rdi, -88(%rbp)
	movq	-40(%rbp), %rdi
	movslq	-52(%rbp), %r8
	addq	%r8, %rdi
	cmpq	$64, %rdi
	jge	.LBB135_6
# BB#5:                                 # %if.then.21
	movq	-40(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB135_18
.LBB135_6:                              # %if.end.24
	jmp	.LBB135_7
.LBB135_7:                              # %if.end.25
	movq	-88(%rbp), %rax
	movq	%rax, -96(%rbp)
.LBB135_8:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-88(%rbp), %rdx
	cmpq	-104(%rbp), %rdx
	movb	%cl, -129(%rbp)         # 1-byte Spill
	jge	.LBB135_10
# BB#9:                                 # %land.rhs
                                        #   in Loop: Header=BB135_8 Depth=1
	movq	-88(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	cmpq	-72(%rbp), %rax
	sete	%dl
	movb	%dl, -129(%rbp)         # 1-byte Spill
.LBB135_10:                             # %land.end
                                        #   in Loop: Header=BB135_8 Depth=1
	movb	-129(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB135_11
	jmp	.LBB135_12
.LBB135_11:                             # %while.body
                                        #   in Loop: Header=BB135_8 Depth=1
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB135_8
.LBB135_12:                             # %while.end
	movq	-88(%rbp), %rax
	subq	-96(%rbp), %rax
	shlq	$6, %rax
	addq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-88(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jge	.LBB135_14
# BB#13:                                # %if.then.36
	movq	-88(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	bits_word_to_host_endian
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	xorq	-80(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	callq	count_trailing_zero_bits
	movslq	%eax, %rcx
	addq	-40(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	jmp	.LBB135_17
.LBB135_14:                             # %if.else
	movl	$64, %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	cqto
	idivq	%rcx
	cmpq	$0, %rdx
	je	.LBB135_16
# BB#15:                                # %if.then.46
	movl	$64, %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	cqto
	idivq	%rcx
	subq	%rdx, %rcx
	movq	-40(%rbp), %rdx
	subq	%rcx, %rdx
	movq	%rdx, -40(%rbp)
.LBB135_16:                             # %if.end.50
	jmp	.LBB135_17
.LBB135_17:                             # %if.end.51
	movq	-40(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -8(%rbp)
.LBB135_18:                             # %return
	movq	-8(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end135:
	.size	Fbool_vector_count_consecutive, .Lfunc_end135-Fbool_vector_count_consecutive
	.cfi_endproc

	.align	16, 0x90
	.type	count_trailing_zero_bits,@function
count_trailing_zero_bits:               # @count_trailing_zero_bits
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp408:
	.cfi_def_cfa_offset 16
.Ltmp409:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp410:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	count_trailing_zeros_l
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end136:
	.size	count_trailing_zero_bits, .Lfunc_end136-count_trailing_zero_bits
	.cfi_endproc

	.globl	syms_of_data
	.align	16, 0x90
	.type	syms_of_data,@function
syms_of_data:                           # @syms_of_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp411:
	.cfi_def_cfa_offset 16
.Ltmp412:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp413:
	.cfi_def_cfa_register %rbp
	subq	$1360, %rsp             # imm = 0x550
	movl	$372, %edi              # imm = 0x174
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	pure_cons
	movl	$372, %edi              # imm = 0x174
	movq	%rax, -8(%rbp)
	callq	builtin_lisp_symbol
	movl	$373, %edi              # imm = 0x175
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fput
	movl	$372, %edi              # imm = 0x174
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$374, %edi              # imm = 0x176
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.13, %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	build_pure_c_string
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movl	$782, %edi              # imm = 0x30E
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$373, %edi              # imm = 0x175
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$782, %edi              # imm = 0x30E
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	pure_cons
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movl	$782, %edi              # imm = 0x30E
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$374, %edi              # imm = 0x176
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.14, %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	build_pure_c_string
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movl	$981, %edi              # imm = 0x3D5
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$373, %edi              # imm = 0x175
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$981, %edi              # imm = 0x3D5
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	pure_cons
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	-136(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movl	$981, %edi              # imm = 0x3D5
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$374, %edi              # imm = 0x176
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.15, %rdi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	build_pure_c_string
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	-160(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movl	$1042, %edi             # imm = 0x412
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$373, %edi              # imm = 0x175
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$1042, %edi             # imm = 0x412
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	pure_cons
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	-184(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movl	$1042, %edi             # imm = 0x412
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$374, %edi              # imm = 0x176
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.16, %rdi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	build_pure_c_string
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	-208(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movl	$1044, %edi             # imm = 0x414
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$373, %edi              # imm = 0x175
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$1044, %edi             # imm = 0x414
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	pure_cons
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	-232(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movl	$1044, %edi             # imm = 0x414
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$374, %edi              # imm = 0x176
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.17, %rdi
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	build_pure_c_string
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	-256(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movl	$177, %edi
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$373, %edi              # imm = 0x175
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$177, %edi
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	pure_cons
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	-280(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movl	$177, %edi
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$374, %edi              # imm = 0x176
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.18, %rdi
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	build_pure_c_string
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	-304(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movl	$1006, %edi             # imm = 0x3EE
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$373, %edi              # imm = 0x175
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$1006, %edi             # imm = 0x3EE
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	pure_cons
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	-328(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movl	$1006, %edi             # imm = 0x3EE
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$374, %edi              # imm = 0x176
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.19, %rdi
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	build_pure_c_string
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	-352(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movl	$312, %edi              # imm = 0x138
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$373, %edi              # imm = 0x175
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$312, %edi              # imm = 0x138
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	pure_cons
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	-376(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movl	$312, %edi              # imm = 0x138
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$374, %edi              # imm = 0x176
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.20, %rdi
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	build_pure_c_string
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	-400(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movl	$313, %edi              # imm = 0x139
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$373, %edi              # imm = 0x175
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$313, %edi              # imm = 0x139
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	pure_cons
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	-424(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movl	$313, %edi              # imm = 0x139
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$374, %edi              # imm = 0x176
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.21, %rdi
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	build_pure_c_string
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	-448(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movl	$265, %edi              # imm = 0x109
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$373, %edi              # imm = 0x175
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$265, %edi              # imm = 0x109
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	pure_cons
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	-472(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movl	$265, %edi              # imm = 0x109
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$374, %edi              # imm = 0x176
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.22, %rdi
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	build_pure_c_string
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	-496(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movl	$1007, %edi             # imm = 0x3EF
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$373, %edi              # imm = 0x175
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$1007, %edi             # imm = 0x3EF
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	pure_cons
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	-520(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movl	$1007, %edi             # imm = 0x3EF
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$374, %edi              # imm = 0x176
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.23, %rdi
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	build_pure_c_string
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movq	-544(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movl	$855, %edi              # imm = 0x357
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$373, %edi              # imm = 0x175
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$855, %edi              # imm = 0x357
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	pure_cons
	movq	-560(%rbp), %rdi        # 8-byte Reload
	movq	-568(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movl	$855, %edi              # imm = 0x357
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$374, %edi              # imm = 0x176
	movq	%rax, -584(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.24, %rdi
	movq	%rax, -592(%rbp)        # 8-byte Spill
	callq	build_pure_c_string
	movq	-584(%rbp), %rdi        # 8-byte Reload
	movq	-592(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movl	$571, %edi              # imm = 0x23B
	movq	%rax, -600(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$373, %edi              # imm = 0x175
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$571, %edi              # imm = 0x23B
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	pure_cons
	movq	-608(%rbp), %rdi        # 8-byte Reload
	movq	-616(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movl	$571, %edi              # imm = 0x23B
	movq	%rax, -624(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$374, %edi              # imm = 0x176
	movq	%rax, -632(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.25, %rdi
	movq	%rax, -640(%rbp)        # 8-byte Spill
	callq	build_pure_c_string
	movq	-632(%rbp), %rdi        # 8-byte Reload
	movq	-640(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movl	$570, %edi              # imm = 0x23A
	movq	%rax, -648(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$373, %edi              # imm = 0x175
	movq	%rax, -656(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$570, %edi              # imm = 0x23A
	movq	%rax, -664(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	pure_cons
	movq	-656(%rbp), %rdi        # 8-byte Reload
	movq	-664(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movl	$570, %edi              # imm = 0x23A
	movq	%rax, -672(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$374, %edi              # imm = 0x176
	movq	%rax, -680(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.26, %rdi
	movq	%rax, -688(%rbp)        # 8-byte Spill
	callq	build_pure_c_string
	movq	-680(%rbp), %rdi        # 8-byte Reload
	movq	-688(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movl	$1043, %edi             # imm = 0x413
	movq	%rax, -696(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$373, %edi              # imm = 0x175
	movq	%rax, -704(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$1043, %edi             # imm = 0x413
	movq	%rax, -712(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	pure_cons
	movq	-704(%rbp), %rdi        # 8-byte Reload
	movq	-712(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movl	$1043, %edi             # imm = 0x413
	movq	%rax, -720(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$374, %edi              # imm = 0x176
	movq	%rax, -728(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.27, %rdi
	movq	%rax, -736(%rbp)        # 8-byte Spill
	callq	build_pure_c_string
	movq	-728(%rbp), %rdi        # 8-byte Reload
	movq	-736(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movl	$701, %edi              # imm = 0x2BD
	movq	%rax, -744(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$373, %edi              # imm = 0x175
	movq	%rax, -752(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$701, %edi              # imm = 0x2BD
	movq	%rax, -760(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	pure_cons
	movq	-752(%rbp), %rdi        # 8-byte Reload
	movq	-760(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movl	$701, %edi              # imm = 0x2BD
	movq	%rax, -768(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$374, %edi              # imm = 0x176
	movq	%rax, -776(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.28, %rdi
	movq	%rax, -784(%rbp)        # 8-byte Spill
	callq	build_pure_c_string
	movq	-776(%rbp), %rdi        # 8-byte Reload
	movq	-784(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movl	$367, %edi              # imm = 0x16F
	movq	%rax, -792(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$373, %edi              # imm = 0x175
	movq	%rax, -800(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$367, %edi              # imm = 0x16F
	movq	%rax, -808(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	pure_cons
	movq	-800(%rbp), %rdi        # 8-byte Reload
	movq	-808(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movl	$367, %edi              # imm = 0x16F
	movq	%rax, -816(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$374, %edi              # imm = 0x176
	movq	%rax, -824(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.29, %rdi
	movq	%rax, -832(%rbp)        # 8-byte Spill
	callq	build_pure_c_string
	movq	-824(%rbp), %rdi        # 8-byte Reload
	movq	-832(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movl	$178, %edi
	movq	%rax, -840(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	pure_cons
	movl	$178, %edi
	movq	%rax, -16(%rbp)
	callq	builtin_lisp_symbol
	movl	$373, %edi              # imm = 0x175
	movq	%rax, -848(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdx
	movq	-848(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fput
	movl	$178, %edi
	movq	%rax, -856(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$374, %edi              # imm = 0x176
	movq	%rax, -864(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.30, %rdi
	movq	%rax, -872(%rbp)        # 8-byte Spill
	callq	build_pure_c_string
	movq	-864(%rbp), %rdi        # 8-byte Reload
	movq	-872(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movl	$200, %edi
	movq	%rax, -880(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$373, %edi              # imm = 0x175
	movq	%rax, -888(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$200, %edi
	movq	%rax, -896(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	pure_cons
	movq	-888(%rbp), %rdi        # 8-byte Reload
	movq	-896(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movl	$200, %edi
	movq	%rax, -904(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$374, %edi              # imm = 0x176
	movq	%rax, -912(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.31, %rdi
	movq	%rax, -920(%rbp)        # 8-byte Spill
	callq	build_pure_c_string
	movq	-912(%rbp), %rdi        # 8-byte Reload
	movq	-920(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movl	$366, %edi              # imm = 0x16E
	movq	%rax, -928(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$373, %edi              # imm = 0x175
	movq	%rax, -936(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$366, %edi              # imm = 0x16E
	movq	%rax, -944(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	pure_cons
	movq	-936(%rbp), %rdi        # 8-byte Reload
	movq	-944(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movl	$366, %edi              # imm = 0x16E
	movq	%rax, -952(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$374, %edi              # imm = 0x176
	movq	%rax, -960(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.32, %rdi
	movq	%rax, -968(%rbp)        # 8-byte Spill
	callq	build_pure_c_string
	movq	-960(%rbp), %rdi        # 8-byte Reload
	movq	-968(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movl	$228, %edi
	movq	%rax, -976(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$373, %edi              # imm = 0x175
	movq	%rax, -984(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$228, %edi
	movq	%rax, -992(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	pure_cons
	movq	-984(%rbp), %rdi        # 8-byte Reload
	movq	-992(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movl	$228, %edi
	movq	%rax, -1000(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$374, %edi              # imm = 0x176
	movq	%rax, -1008(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.33, %rdi
	movq	%rax, -1016(%rbp)       # 8-byte Spill
	callq	build_pure_c_string
	movq	-1008(%rbp), %rdi       # 8-byte Reload
	movq	-1016(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movl	$913, %edi              # imm = 0x391
	movq	%rax, -1024(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$373, %edi              # imm = 0x175
	movq	%rax, -1032(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$913, %edi              # imm = 0x391
	movq	%rax, -1040(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$228, %edi
	movq	%rax, -1048(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	pure_cons
	movq	-1048(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	pure_cons
	movq	-1032(%rbp), %rdi       # 8-byte Reload
	movq	-1040(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movl	$913, %edi              # imm = 0x391
	movq	%rax, -1056(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$374, %edi              # imm = 0x176
	movq	%rax, -1064(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.34, %rdi
	movq	%rax, -1072(%rbp)       # 8-byte Spill
	callq	build_pure_c_string
	movq	-1064(%rbp), %rdi       # 8-byte Reload
	movq	-1072(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movl	$349, %edi              # imm = 0x15D
	movq	%rax, -1080(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$373, %edi              # imm = 0x175
	movq	%rax, -1088(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$349, %edi              # imm = 0x15D
	movq	%rax, -1096(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	pure_cons
	movq	-1088(%rbp), %rdi       # 8-byte Reload
	movq	-1096(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movl	$349, %edi              # imm = 0x15D
	movq	%rax, -1104(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$374, %edi              # imm = 0x176
	movq	%rax, -1112(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.35, %rdi
	movq	%rax, -1120(%rbp)       # 8-byte Spill
	callq	build_pure_c_string
	movq	-1112(%rbp), %rdi       # 8-byte Reload
	movq	-1120(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movl	$786, %edi              # imm = 0x312
	movq	%rax, -1128(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$373, %edi              # imm = 0x175
	movq	%rax, -1136(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$786, %edi              # imm = 0x312
	movq	%rax, -1144(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	pure_cons
	movq	-1136(%rbp), %rdi       # 8-byte Reload
	movq	-1144(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movl	$786, %edi              # imm = 0x312
	movq	%rax, -1152(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$374, %edi              # imm = 0x176
	movq	%rax, -1160(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.36, %rdi
	movq	%rax, -1168(%rbp)       # 8-byte Spill
	callq	build_pure_c_string
	movq	-1160(%rbp), %rdi       # 8-byte Reload
	movq	-1168(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movl	$863, %edi              # imm = 0x35F
	movq	%rax, -1176(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$373, %edi              # imm = 0x175
	movq	%rax, -1184(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$863, %edi              # imm = 0x35F
	movq	%rax, -1192(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$349, %edi              # imm = 0x15D
	movq	%rax, -1200(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	-1200(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	pure_cons
	movq	-1184(%rbp), %rdi       # 8-byte Reload
	movq	-1192(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movl	$863, %edi              # imm = 0x35F
	movq	%rax, -1208(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$374, %edi              # imm = 0x176
	movq	%rax, -1216(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.37, %rdi
	movq	%rax, -1224(%rbp)       # 8-byte Spill
	callq	build_pure_c_string
	movq	-1216(%rbp), %rdi       # 8-byte Reload
	movq	-1224(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movl	$728, %edi              # imm = 0x2D8
	movq	%rax, -1232(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$373, %edi              # imm = 0x175
	movq	%rax, -1240(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$728, %edi              # imm = 0x2D8
	movq	%rax, -1248(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$349, %edi              # imm = 0x15D
	movq	%rax, -1256(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	-1256(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	pure_cons
	movq	-1240(%rbp), %rdi       # 8-byte Reload
	movq	-1248(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movl	$728, %edi              # imm = 0x2D8
	movq	%rax, -1264(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$374, %edi              # imm = 0x176
	movq	%rax, -1272(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.38, %rdi
	movq	%rax, -1280(%rbp)       # 8-byte Spill
	callq	build_pure_c_string
	movq	-1272(%rbp), %rdi       # 8-byte Reload
	movq	-1280(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movl	$961, %edi              # imm = 0x3C1
	movq	%rax, -1288(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$373, %edi              # imm = 0x175
	movq	%rax, -1296(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$961, %edi              # imm = 0x3C1
	movq	%rax, -1304(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$349, %edi              # imm = 0x15D
	movq	%rax, -1312(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	-1312(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	pure_cons
	movq	-1296(%rbp), %rdi       # 8-byte Reload
	movq	-1304(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movl	$961, %edi              # imm = 0x3C1
	movq	%rax, -1320(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$374, %edi              # imm = 0x176
	movq	%rax, -1328(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.39, %rdi
	movq	%rax, -1336(%rbp)       # 8-byte Spill
	callq	build_pure_c_string
	movq	-1328(%rbp), %rdi       # 8-byte Reload
	movq	-1336(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movabsq	$Sindirect_variable, %rdx
	movq	%rdx, %rdi
	movq	%rax, -1344(%rbp)       # 8-byte Spill
	callq	defsubr
	movabsq	$Sinteractive_form, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Seq, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Snull, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Stype_of, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Slistp, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Snlistp, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sconsp, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Satom, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sintegerp, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sinteger_or_marker_p, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Snumberp, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Snumber_or_marker_p, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sfloatp, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Snatnump, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Ssymbolp, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Skeywordp, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sstringp, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Smultibyte_string_p, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Svectorp, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Schar_table_p, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Svector_or_char_table_p, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sbool_vector_p, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sarrayp, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Ssequencep, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sbufferp, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Smarkerp, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Ssubrp, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sbyte_code_function_p, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Schar_or_string_p, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Scar, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Scdr, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Scar_safe, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Scdr_safe, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Ssetcar, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Ssetcdr, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Ssymbol_function, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sindirect_function, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Ssymbol_plist, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Ssymbol_name, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Smakunbound, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sfmakunbound, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sboundp, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sfboundp, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sfset, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sdefalias, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Ssetplist, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Ssymbol_value, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sset, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sdefault_boundp, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sdefault_value, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sset_default, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Ssetq_default, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Smake_variable_buffer_local, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Smake_local_variable, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Skill_local_variable, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Smake_variable_frame_local, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Slocal_variable_p, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Slocal_variable_if_set_p, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Svariable_binding_locus, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Saref, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Saset, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Snumber_to_string, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sstring_to_number, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Seqlsign, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Slss, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sgtr, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sleq, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sgeq, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sneq, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Splus, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sminus, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Stimes, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Squo, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Srem, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Smod, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Smax, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Smin, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Slogand, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Slogior, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Slogxor, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Slsh, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sash, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sadd1, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Ssub1, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Slognot, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sbyteorder, %rdi
	callq	defsubr
	movabsq	$Ssubr_arity, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Ssubr_name, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sbool_vector_exclusive_or, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sbool_vector_union, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sbool_vector_intersection, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sbool_vector_set_difference, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sbool_vector_not, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sbool_vector_subsetp, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sbool_vector_count_consecutive, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sbool_vector_count_population, %rax
	movq	%rax, %rdi
	callq	defsubr
	movl	$1015, %edi             # imm = 0x3F7
	callq	builtin_lisp_symbol
	movl	$698, %edi              # imm = 0x2BA
	movq	%rax, -1352(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	subq	$0, %rax
	movq	lispsym+24(,%rax), %rsi
	movq	-1352(%rbp), %rdi       # 8-byte Reload
	callq	set_symbol_function
# BB#1:                                 # %do.body
	movabsq	$syms_of_data.o_fwd, %rdi
	movabsq	$.L.str.40, %rsi
	movabsq	$globals, %rax
	addq	$1592, %rax             # imm = 0x638
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#2:                                 # %do.end
	movabsq	$.L.str.40, %rdi
	movabsq	$9223372036854775806, %rax # imm = 0x7FFFFFFFFFFFFFFE
	movq	%rax, globals+1592
	callq	intern_c_string
	subq	$0, %rax
	movw	lispsym(,%rax), %cx
	andw	$-49, %cx
	orw	$16, %cx
	movw	%cx, lispsym(,%rax)
# BB#3:                                 # %do.body.258
	movabsq	$syms_of_data.o_fwd.41, %rdi
	movabsq	$.L.str.42, %rsi
	movabsq	$globals, %rax
	addq	$1584, %rax             # imm = 0x630
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#4:                                 # %do.end.259
	movabsq	$.L.str.42, %rdi
	movabsq	$-9223372036854775806, %rax # imm = 0x8000000000000002
	movq	%rax, globals+1584
	callq	intern_c_string
	subq	$0, %rax
	movw	lispsym(,%rax), %cx
	andw	$-49, %cx
	orw	$16, %cx
	movw	%cx, lispsym(,%rax)
	addq	$1360, %rsp             # imm = 0x550
	popq	%rbp
	retq
.Lfunc_end137:
	.size	syms_of_data, .Lfunc_end137-syms_of_data
	.cfi_endproc

	.align	16, 0x90
	.type	wrong_range,@function
wrong_range:                            # @wrong_range
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp414:
	.cfi_def_cfa_offset 16
.Ltmp415:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp416:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movl	$4, %eax
	leaq	-64(%rbp), %rcx
	movabsq	$.L.str.43, %r8
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	$21, -64(%rbp)
	movq	$-1, -56(%rbp)
	movq	$0, -48(%rbp)
	movq	%r8, -40(%rbp)
	movq	%rcx, %rdi
	movl	%eax, %esi
	callq	make_lisp_ptr
	movl	$4, %esi
	leaq	-104(%rbp), %rcx
	movabsq	$.L.str.44, %rdx
	movq	%rax, -32(%rbp)
	movq	$4, -104(%rbp)
	movq	$-1, -96(%rbp)
	movq	$0, -88(%rbp)
	movq	%rdx, -80(%rbp)
	movq	%rcx, %rdi
	callq	make_lisp_ptr
	movl	$372, %edi              # imm = 0x174
	movq	%rax, -72(%rbp)
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx
	movq	%rcx, -136(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	Fnumber_to_string
	movq	%rax, -128(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	-16(%rbp), %rdi
	callq	Fnumber_to_string
	movl	$4, %esi
	movl	%esi, %edi
	leaq	-136(%rbp), %rsi
	movq	%rax, -112(%rbp)
	callq	Fconcat
	movq	-24(%rbp), %rdx
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	xsignal2
.Lfunc_end138:
	.size	wrong_range, .Lfunc_end138-wrong_range
	.cfi_endproc

	.align	16, 0x90
	.type	set_blv_defcell,@function
set_blv_defcell:                        # @set_blv_defcell
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp417:
	.cfi_def_cfa_offset 16
.Ltmp418:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp419:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 24(%rdi)
	popq	%rbp
	retq
.Lfunc_end139:
	.size	set_blv_defcell, .Lfunc_end139-set_blv_defcell
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Attempt to modify read-only object"
	.size	.L.str, 35

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"One of "
	.size	.L.str.1, 8

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	", "
	.size	.L.str.2, 3

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	" or "
	.size	.L.str.3, 5

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	" should be specified"
	.size	.L.str.4, 21

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Symbol %s may not be buffer-local"
	.size	.L.str.5, 34

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Making %s buffer-local while let-bound!"
	.size	.L.str.6, 40

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Making %s local to %s while let-bound!"
	.size	.L.str.7, 39

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Making %s buffer-local while locally let-bound!"
	.size	.L.str.8, 48

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Symbol %s may not be frame-local"
	.size	.L.str.9, 33

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Making %s frame-local while let-bound!"
	.size	.L.str.10, 39

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Not an in-range integer, float, or cons of integers"
	.size	.L.str.11, 52

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"%ld"
	.size	.L.str.12, 4

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"error"
	.size	.L.str.13, 6

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Quit"
	.size	.L.str.14, 5

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.zero	1
	.size	.L.str.15, 1

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Wrong length argument"
	.size	.L.str.16, 22

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Wrong type argument"
	.size	.L.str.17, 20

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Args out of range"
	.size	.L.str.18, 18

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Symbol's function definition is void"
	.size	.L.str.19, 37

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Symbol's chain of function indirections contains a loop"
	.size	.L.str.20, 56

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Symbol's chain of variable indirections contains a loop"
	.size	.L.str.21, 56

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"List contains a loop"
	.size	.L.str.22, 21

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Symbol's value as variable is void"
	.size	.L.str.23, 35

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Attempt to set a constant symbol"
	.size	.L.str.24, 33

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Invalid read syntax"
	.size	.L.str.25, 20

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Invalid function"
	.size	.L.str.26, 17

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Wrong number of arguments"
	.size	.L.str.27, 26

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"No catch for tag"
	.size	.L.str.28, 17

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"End of file during parsing"
	.size	.L.str.29, 27

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Arithmetic error"
	.size	.L.str.30, 17

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Beginning of buffer"
	.size	.L.str.31, 20

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"End of buffer"
	.size	.L.str.32, 14

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Buffer is read-only"
	.size	.L.str.33, 20

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Text is read-only"
	.size	.L.str.34, 18

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Arithmetic domain error"
	.size	.L.str.35, 24

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Arithmetic range error"
	.size	.L.str.36, 23

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Arithmetic singularity error"
	.size	.L.str.37, 29

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Arithmetic overflow error"
	.size	.L.str.38, 26

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Arithmetic underflow error"
	.size	.L.str.39, 27

	.type	Sbyteorder,@object      # @Sbyteorder
	.data
	.align	8
Sbyteorder:
	.quad	167772160               # 0xa000000
	.quad	Fbyteorder
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.135
	.quad	0
	.quad	0
	.size	Sbyteorder, 48

	.type	syms_of_data.o_fwd,@object # @syms_of_data.o_fwd
	.local	syms_of_data.o_fwd
	.comm	syms_of_data.o_fwd,16,8
	.type	.L.str.40,@object       # @.str.40
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.40:
	.asciz	"most-positive-fixnum"
	.size	.L.str.40, 21

	.type	syms_of_data.o_fwd.41,@object # @syms_of_data.o_fwd.41
	.local	syms_of_data.o_fwd.41
	.comm	syms_of_data.o_fwd.41,16,8
	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"most-negative-fixnum"
	.size	.L.str.42, 21

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"Value should be from "
	.size	.L.str.43, 22

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	" to "
	.size	.L.str.44, 5

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"indirect-variable"
	.size	.L.str.45, 18

	.type	Sindirect_variable,@object # @Sindirect_variable
	.data
	.align	8
Sindirect_variable:
	.quad	167772160               # 0xa000000
	.quad	Findirect_variable
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.45
	.quad	0
	.quad	0
	.size	Sindirect_variable, 48

	.type	.L.str.46,@object       # @.str.46
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.46:
	.asciz	"interactive-form"
	.size	.L.str.46, 17

	.type	Sinteractive_form,@object # @Sinteractive_form
	.data
	.align	8
Sinteractive_form:
	.quad	167772160               # 0xa000000
	.quad	Finteractive_form
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.46
	.quad	0
	.quad	0
	.size	Sinteractive_form, 48

	.type	.L.str.47,@object       # @.str.47
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.47:
	.asciz	"eq"
	.size	.L.str.47, 3

	.type	Seq,@object             # @Seq
	.data
	.align	8
Seq:
	.quad	167772160               # 0xa000000
	.quad	Feq
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.47
	.quad	0
	.quad	0
	.size	Seq, 48

	.type	.L.str.48,@object       # @.str.48
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.48:
	.asciz	"null"
	.size	.L.str.48, 5

	.type	Snull,@object           # @Snull
	.data
	.align	8
Snull:
	.quad	167772160               # 0xa000000
	.quad	Fnull
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.48
	.quad	0
	.quad	0
	.size	Snull, 48

	.type	.L.str.49,@object       # @.str.49
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.49:
	.asciz	"type-of"
	.size	.L.str.49, 8

	.type	Stype_of,@object        # @Stype_of
	.data
	.align	8
Stype_of:
	.quad	167772160               # 0xa000000
	.quad	Ftype_of
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.49
	.quad	0
	.quad	0
	.size	Stype_of, 48

	.type	.L.str.50,@object       # @.str.50
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.50:
	.asciz	"listp"
	.size	.L.str.50, 6

	.type	Slistp,@object          # @Slistp
	.data
	.align	8
Slistp:
	.quad	167772160               # 0xa000000
	.quad	Flistp
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.50
	.quad	0
	.quad	0
	.size	Slistp, 48

	.type	.L.str.51,@object       # @.str.51
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.51:
	.asciz	"nlistp"
	.size	.L.str.51, 7

	.type	Snlistp,@object         # @Snlistp
	.data
	.align	8
Snlistp:
	.quad	167772160               # 0xa000000
	.quad	Fnlistp
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.51
	.quad	0
	.quad	0
	.size	Snlistp, 48

	.type	.L.str.52,@object       # @.str.52
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.52:
	.asciz	"consp"
	.size	.L.str.52, 6

	.type	Sconsp,@object          # @Sconsp
	.data
	.align	8
Sconsp:
	.quad	167772160               # 0xa000000
	.quad	Fconsp
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.52
	.quad	0
	.quad	0
	.size	Sconsp, 48

	.type	.L.str.53,@object       # @.str.53
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.53:
	.asciz	"atom"
	.size	.L.str.53, 5

	.type	Satom,@object           # @Satom
	.data
	.align	8
Satom:
	.quad	167772160               # 0xa000000
	.quad	Fatom
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.53
	.quad	0
	.quad	0
	.size	Satom, 48

	.type	.L.str.54,@object       # @.str.54
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.54:
	.asciz	"integerp"
	.size	.L.str.54, 9

	.type	Sintegerp,@object       # @Sintegerp
	.data
	.align	8
Sintegerp:
	.quad	167772160               # 0xa000000
	.quad	Fintegerp
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.54
	.quad	0
	.quad	0
	.size	Sintegerp, 48

	.type	.L.str.55,@object       # @.str.55
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.55:
	.asciz	"integer-or-marker-p"
	.size	.L.str.55, 20

	.type	Sinteger_or_marker_p,@object # @Sinteger_or_marker_p
	.data
	.align	8
Sinteger_or_marker_p:
	.quad	167772160               # 0xa000000
	.quad	Finteger_or_marker_p
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.55
	.quad	0
	.quad	0
	.size	Sinteger_or_marker_p, 48

	.type	.L.str.56,@object       # @.str.56
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.56:
	.asciz	"numberp"
	.size	.L.str.56, 8

	.type	Snumberp,@object        # @Snumberp
	.data
	.align	8
Snumberp:
	.quad	167772160               # 0xa000000
	.quad	Fnumberp
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.56
	.quad	0
	.quad	0
	.size	Snumberp, 48

	.type	.L.str.57,@object       # @.str.57
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.57:
	.asciz	"number-or-marker-p"
	.size	.L.str.57, 19

	.type	Snumber_or_marker_p,@object # @Snumber_or_marker_p
	.data
	.align	8
Snumber_or_marker_p:
	.quad	167772160               # 0xa000000
	.quad	Fnumber_or_marker_p
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.57
	.quad	0
	.quad	0
	.size	Snumber_or_marker_p, 48

	.type	.L.str.58,@object       # @.str.58
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.58:
	.asciz	"floatp"
	.size	.L.str.58, 7

	.type	Sfloatp,@object         # @Sfloatp
	.data
	.align	8
Sfloatp:
	.quad	167772160               # 0xa000000
	.quad	Ffloatp
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.58
	.quad	0
	.quad	0
	.size	Sfloatp, 48

	.type	.L.str.59,@object       # @.str.59
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.59:
	.asciz	"natnump"
	.size	.L.str.59, 8

	.type	Snatnump,@object        # @Snatnump
	.data
	.align	8
Snatnump:
	.quad	167772160               # 0xa000000
	.quad	Fnatnump
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.59
	.quad	0
	.quad	0
	.size	Snatnump, 48

	.type	.L.str.60,@object       # @.str.60
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.60:
	.asciz	"symbolp"
	.size	.L.str.60, 8

	.type	Ssymbolp,@object        # @Ssymbolp
	.data
	.align	8
Ssymbolp:
	.quad	167772160               # 0xa000000
	.quad	Fsymbolp
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.60
	.quad	0
	.quad	0
	.size	Ssymbolp, 48

	.type	.L.str.61,@object       # @.str.61
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.61:
	.asciz	"keywordp"
	.size	.L.str.61, 9

	.type	Skeywordp,@object       # @Skeywordp
	.data
	.align	8
Skeywordp:
	.quad	167772160               # 0xa000000
	.quad	Fkeywordp
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.61
	.quad	0
	.quad	0
	.size	Skeywordp, 48

	.type	.L.str.62,@object       # @.str.62
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.62:
	.asciz	"stringp"
	.size	.L.str.62, 8

	.type	Sstringp,@object        # @Sstringp
	.data
	.align	8
Sstringp:
	.quad	167772160               # 0xa000000
	.quad	Fstringp
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.62
	.quad	0
	.quad	0
	.size	Sstringp, 48

	.type	.L.str.63,@object       # @.str.63
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.63:
	.asciz	"multibyte-string-p"
	.size	.L.str.63, 19

	.type	Smultibyte_string_p,@object # @Smultibyte_string_p
	.data
	.align	8
Smultibyte_string_p:
	.quad	167772160               # 0xa000000
	.quad	Fmultibyte_string_p
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.63
	.quad	0
	.quad	0
	.size	Smultibyte_string_p, 48

	.type	.L.str.64,@object       # @.str.64
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.64:
	.asciz	"vectorp"
	.size	.L.str.64, 8

	.type	Svectorp,@object        # @Svectorp
	.data
	.align	8
Svectorp:
	.quad	167772160               # 0xa000000
	.quad	Fvectorp
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.64
	.quad	0
	.quad	0
	.size	Svectorp, 48

	.type	.L.str.65,@object       # @.str.65
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.65:
	.asciz	"char-table-p"
	.size	.L.str.65, 13

	.type	Schar_table_p,@object   # @Schar_table_p
	.data
	.align	8
Schar_table_p:
	.quad	167772160               # 0xa000000
	.quad	Fchar_table_p
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.65
	.quad	0
	.quad	0
	.size	Schar_table_p, 48

	.type	.L.str.66,@object       # @.str.66
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.66:
	.asciz	"vector-or-char-table-p"
	.size	.L.str.66, 23

	.type	Svector_or_char_table_p,@object # @Svector_or_char_table_p
	.data
	.align	8
Svector_or_char_table_p:
	.quad	167772160               # 0xa000000
	.quad	Fvector_or_char_table_p
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.66
	.quad	0
	.quad	0
	.size	Svector_or_char_table_p, 48

	.type	.L.str.67,@object       # @.str.67
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.67:
	.asciz	"bool-vector-p"
	.size	.L.str.67, 14

	.type	Sbool_vector_p,@object  # @Sbool_vector_p
	.data
	.align	8
Sbool_vector_p:
	.quad	167772160               # 0xa000000
	.quad	Fbool_vector_p
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.67
	.quad	0
	.quad	0
	.size	Sbool_vector_p, 48

	.type	.L.str.68,@object       # @.str.68
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.68:
	.asciz	"arrayp"
	.size	.L.str.68, 7

	.type	Sarrayp,@object         # @Sarrayp
	.data
	.align	8
Sarrayp:
	.quad	167772160               # 0xa000000
	.quad	Farrayp
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.68
	.quad	0
	.quad	0
	.size	Sarrayp, 48

	.type	.L.str.69,@object       # @.str.69
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.69:
	.asciz	"sequencep"
	.size	.L.str.69, 10

	.type	Ssequencep,@object      # @Ssequencep
	.data
	.align	8
Ssequencep:
	.quad	167772160               # 0xa000000
	.quad	Fsequencep
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.69
	.quad	0
	.quad	0
	.size	Ssequencep, 48

	.type	.L.str.70,@object       # @.str.70
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.70:
	.asciz	"bufferp"
	.size	.L.str.70, 8

	.type	Sbufferp,@object        # @Sbufferp
	.data
	.align	8
Sbufferp:
	.quad	167772160               # 0xa000000
	.quad	Fbufferp
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.70
	.quad	0
	.quad	0
	.size	Sbufferp, 48

	.type	.L.str.71,@object       # @.str.71
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.71:
	.asciz	"markerp"
	.size	.L.str.71, 8

	.type	Smarkerp,@object        # @Smarkerp
	.data
	.align	8
Smarkerp:
	.quad	167772160               # 0xa000000
	.quad	Fmarkerp
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.71
	.quad	0
	.quad	0
	.size	Smarkerp, 48

	.type	.L.str.72,@object       # @.str.72
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.72:
	.asciz	"subrp"
	.size	.L.str.72, 6

	.type	Ssubrp,@object          # @Ssubrp
	.data
	.align	8
Ssubrp:
	.quad	167772160               # 0xa000000
	.quad	Fsubrp
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.72
	.quad	0
	.quad	0
	.size	Ssubrp, 48

	.type	.L.str.73,@object       # @.str.73
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.73:
	.asciz	"byte-code-function-p"
	.size	.L.str.73, 21

	.type	Sbyte_code_function_p,@object # @Sbyte_code_function_p
	.data
	.align	8
Sbyte_code_function_p:
	.quad	167772160               # 0xa000000
	.quad	Fbyte_code_function_p
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.73
	.quad	0
	.quad	0
	.size	Sbyte_code_function_p, 48

	.type	.L.str.74,@object       # @.str.74
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.74:
	.asciz	"char-or-string-p"
	.size	.L.str.74, 17

	.type	Schar_or_string_p,@object # @Schar_or_string_p
	.data
	.align	8
Schar_or_string_p:
	.quad	167772160               # 0xa000000
	.quad	Fchar_or_string_p
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.74
	.quad	0
	.quad	0
	.size	Schar_or_string_p, 48

	.type	.L.str.75,@object       # @.str.75
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.75:
	.asciz	"car"
	.size	.L.str.75, 4

	.type	Scar,@object            # @Scar
	.data
	.align	8
Scar:
	.quad	167772160               # 0xa000000
	.quad	Fcar
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.75
	.quad	0
	.quad	0
	.size	Scar, 48

	.type	.L.str.76,@object       # @.str.76
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.76:
	.asciz	"cdr"
	.size	.L.str.76, 4

	.type	Scdr,@object            # @Scdr
	.data
	.align	8
Scdr:
	.quad	167772160               # 0xa000000
	.quad	Fcdr
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.76
	.quad	0
	.quad	0
	.size	Scdr, 48

	.type	.L.str.77,@object       # @.str.77
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.77:
	.asciz	"car-safe"
	.size	.L.str.77, 9

	.type	Scar_safe,@object       # @Scar_safe
	.data
	.align	8
Scar_safe:
	.quad	167772160               # 0xa000000
	.quad	Fcar_safe
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.77
	.quad	0
	.quad	0
	.size	Scar_safe, 48

	.type	.L.str.78,@object       # @.str.78
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.78:
	.asciz	"cdr-safe"
	.size	.L.str.78, 9

	.type	Scdr_safe,@object       # @Scdr_safe
	.data
	.align	8
Scdr_safe:
	.quad	167772160               # 0xa000000
	.quad	Fcdr_safe
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.78
	.quad	0
	.quad	0
	.size	Scdr_safe, 48

	.type	.L.str.79,@object       # @.str.79
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.79:
	.asciz	"setcar"
	.size	.L.str.79, 7

	.type	Ssetcar,@object         # @Ssetcar
	.data
	.align	8
Ssetcar:
	.quad	167772160               # 0xa000000
	.quad	Fsetcar
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.79
	.quad	0
	.quad	0
	.size	Ssetcar, 48

	.type	.L.str.80,@object       # @.str.80
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.80:
	.asciz	"setcdr"
	.size	.L.str.80, 7

	.type	Ssetcdr,@object         # @Ssetcdr
	.data
	.align	8
Ssetcdr:
	.quad	167772160               # 0xa000000
	.quad	Fsetcdr
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.80
	.quad	0
	.quad	0
	.size	Ssetcdr, 48

	.type	.L.str.81,@object       # @.str.81
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.81:
	.asciz	"symbol-function"
	.size	.L.str.81, 16

	.type	Ssymbol_function,@object # @Ssymbol_function
	.data
	.align	8
Ssymbol_function:
	.quad	167772160               # 0xa000000
	.quad	Fsymbol_function
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.81
	.quad	0
	.quad	0
	.size	Ssymbol_function, 48

	.type	.L.str.82,@object       # @.str.82
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.82:
	.asciz	"indirect-function"
	.size	.L.str.82, 18

	.type	Sindirect_function,@object # @Sindirect_function
	.data
	.align	8
Sindirect_function:
	.quad	167772160               # 0xa000000
	.quad	Findirect_function
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.82
	.quad	0
	.quad	0
	.size	Sindirect_function, 48

	.type	.L.str.83,@object       # @.str.83
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.83:
	.asciz	"symbol-plist"
	.size	.L.str.83, 13

	.type	Ssymbol_plist,@object   # @Ssymbol_plist
	.data
	.align	8
Ssymbol_plist:
	.quad	167772160               # 0xa000000
	.quad	Fsymbol_plist
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.83
	.quad	0
	.quad	0
	.size	Ssymbol_plist, 48

	.type	.L.str.84,@object       # @.str.84
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.84:
	.asciz	"symbol-name"
	.size	.L.str.84, 12

	.type	Ssymbol_name,@object    # @Ssymbol_name
	.data
	.align	8
Ssymbol_name:
	.quad	167772160               # 0xa000000
	.quad	Fsymbol_name
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.84
	.quad	0
	.quad	0
	.size	Ssymbol_name, 48

	.type	.L.str.85,@object       # @.str.85
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.85:
	.asciz	"makunbound"
	.size	.L.str.85, 11

	.type	Smakunbound,@object     # @Smakunbound
	.data
	.align	8
Smakunbound:
	.quad	167772160               # 0xa000000
	.quad	Fmakunbound
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.85
	.quad	0
	.quad	0
	.size	Smakunbound, 48

	.type	.L.str.86,@object       # @.str.86
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.86:
	.asciz	"fmakunbound"
	.size	.L.str.86, 12

	.type	Sfmakunbound,@object    # @Sfmakunbound
	.data
	.align	8
Sfmakunbound:
	.quad	167772160               # 0xa000000
	.quad	Ffmakunbound
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.86
	.quad	0
	.quad	0
	.size	Sfmakunbound, 48

	.type	.L.str.87,@object       # @.str.87
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.87:
	.asciz	"boundp"
	.size	.L.str.87, 7

	.type	Sboundp,@object         # @Sboundp
	.data
	.align	8
Sboundp:
	.quad	167772160               # 0xa000000
	.quad	Fboundp
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.87
	.quad	0
	.quad	0
	.size	Sboundp, 48

	.type	.L.str.88,@object       # @.str.88
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.88:
	.asciz	"fboundp"
	.size	.L.str.88, 8

	.type	Sfboundp,@object        # @Sfboundp
	.data
	.align	8
Sfboundp:
	.quad	167772160               # 0xa000000
	.quad	Ffboundp
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.88
	.quad	0
	.quad	0
	.size	Sfboundp, 48

	.type	.L.str.89,@object       # @.str.89
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.89:
	.asciz	"fset"
	.size	.L.str.89, 5

	.type	Sfset,@object           # @Sfset
	.data
	.align	8
Sfset:
	.quad	167772160               # 0xa000000
	.quad	Ffset
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.89
	.quad	0
	.quad	0
	.size	Sfset, 48

	.type	.L.str.90,@object       # @.str.90
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.90:
	.asciz	"defalias"
	.size	.L.str.90, 9

	.type	Sdefalias,@object       # @Sdefalias
	.data
	.align	8
Sdefalias:
	.quad	167772160               # 0xa000000
	.quad	Fdefalias
	.short	2                       # 0x2
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.90
	.quad	0
	.quad	0
	.size	Sdefalias, 48

	.type	.L.str.91,@object       # @.str.91
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.91:
	.asciz	"setplist"
	.size	.L.str.91, 9

	.type	Ssetplist,@object       # @Ssetplist
	.data
	.align	8
Ssetplist:
	.quad	167772160               # 0xa000000
	.quad	Fsetplist
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.91
	.quad	0
	.quad	0
	.size	Ssetplist, 48

	.type	.L.str.92,@object       # @.str.92
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.92:
	.asciz	"symbol-value"
	.size	.L.str.92, 13

	.type	Ssymbol_value,@object   # @Ssymbol_value
	.data
	.align	8
Ssymbol_value:
	.quad	167772160               # 0xa000000
	.quad	Fsymbol_value
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.92
	.quad	0
	.quad	0
	.size	Ssymbol_value, 48

	.type	.L.str.93,@object       # @.str.93
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.93:
	.asciz	"set"
	.size	.L.str.93, 4

	.type	Sset,@object            # @Sset
	.data
	.align	8
Sset:
	.quad	167772160               # 0xa000000
	.quad	Fset
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.93
	.quad	0
	.quad	0
	.size	Sset, 48

	.type	.L.str.94,@object       # @.str.94
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.94:
	.asciz	"default-boundp"
	.size	.L.str.94, 15

	.type	Sdefault_boundp,@object # @Sdefault_boundp
	.data
	.align	8
Sdefault_boundp:
	.quad	167772160               # 0xa000000
	.quad	Fdefault_boundp
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.94
	.quad	0
	.quad	0
	.size	Sdefault_boundp, 48

	.type	.L.str.95,@object       # @.str.95
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.95:
	.asciz	"default-value"
	.size	.L.str.95, 14

	.type	Sdefault_value,@object  # @Sdefault_value
	.data
	.align	8
Sdefault_value:
	.quad	167772160               # 0xa000000
	.quad	Fdefault_value
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.95
	.quad	0
	.quad	0
	.size	Sdefault_value, 48

	.type	.L.str.96,@object       # @.str.96
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.96:
	.asciz	"set-default"
	.size	.L.str.96, 12

	.type	Sset_default,@object    # @Sset_default
	.data
	.align	8
Sset_default:
	.quad	167772160               # 0xa000000
	.quad	Fset_default
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.96
	.quad	0
	.quad	0
	.size	Sset_default, 48

	.type	.L.str.97,@object       # @.str.97
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.97:
	.asciz	"setq-default"
	.size	.L.str.97, 13

	.type	Ssetq_default,@object   # @Ssetq_default
	.data
	.align	8
Ssetq_default:
	.quad	167772160               # 0xa000000
	.quad	Fsetq_default
	.short	0                       # 0x0
	.short	65535                   # 0xffff
	.zero	4
	.quad	.L.str.97
	.quad	0
	.quad	0
	.size	Ssetq_default, 48

	.type	.L.str.98,@object       # @.str.98
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.98:
	.asciz	"make-variable-buffer-local"
	.size	.L.str.98, 27

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"vMake Variable Buffer Local: "
	.size	.L.str.99, 30

	.type	Smake_variable_buffer_local,@object # @Smake_variable_buffer_local
	.data
	.align	8
Smake_variable_buffer_local:
	.quad	167772160               # 0xa000000
	.quad	Fmake_variable_buffer_local
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.98
	.quad	.L.str.99
	.quad	0
	.size	Smake_variable_buffer_local, 48

	.type	.L.str.100,@object      # @.str.100
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.100:
	.asciz	"make-local-variable"
	.size	.L.str.100, 20

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"vMake Local Variable: "
	.size	.L.str.101, 23

	.type	Smake_local_variable,@object # @Smake_local_variable
	.data
	.align	8
Smake_local_variable:
	.quad	167772160               # 0xa000000
	.quad	Fmake_local_variable
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.100
	.quad	.L.str.101
	.quad	0
	.size	Smake_local_variable, 48

	.type	.L.str.102,@object      # @.str.102
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.102:
	.asciz	"kill-local-variable"
	.size	.L.str.102, 20

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"vKill Local Variable: "
	.size	.L.str.103, 23

	.type	Skill_local_variable,@object # @Skill_local_variable
	.data
	.align	8
Skill_local_variable:
	.quad	167772160               # 0xa000000
	.quad	Fkill_local_variable
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.102
	.quad	.L.str.103
	.quad	0
	.size	Skill_local_variable, 48

	.type	.L.str.104,@object      # @.str.104
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.104:
	.asciz	"make-variable-frame-local"
	.size	.L.str.104, 26

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"vMake Variable Frame Local: "
	.size	.L.str.105, 29

	.type	Smake_variable_frame_local,@object # @Smake_variable_frame_local
	.data
	.align	8
Smake_variable_frame_local:
	.quad	167772160               # 0xa000000
	.quad	Fmake_variable_frame_local
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.104
	.quad	.L.str.105
	.quad	0
	.size	Smake_variable_frame_local, 48

	.type	.L.str.106,@object      # @.str.106
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.106:
	.asciz	"local-variable-p"
	.size	.L.str.106, 17

	.type	Slocal_variable_p,@object # @Slocal_variable_p
	.data
	.align	8
Slocal_variable_p:
	.quad	167772160               # 0xa000000
	.quad	Flocal_variable_p
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.106
	.quad	0
	.quad	0
	.size	Slocal_variable_p, 48

	.type	.L.str.107,@object      # @.str.107
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.107:
	.asciz	"local-variable-if-set-p"
	.size	.L.str.107, 24

	.type	Slocal_variable_if_set_p,@object # @Slocal_variable_if_set_p
	.data
	.align	8
Slocal_variable_if_set_p:
	.quad	167772160               # 0xa000000
	.quad	Flocal_variable_if_set_p
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.107
	.quad	0
	.quad	0
	.size	Slocal_variable_if_set_p, 48

	.type	.L.str.108,@object      # @.str.108
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.108:
	.asciz	"variable-binding-locus"
	.size	.L.str.108, 23

	.type	Svariable_binding_locus,@object # @Svariable_binding_locus
	.data
	.align	8
Svariable_binding_locus:
	.quad	167772160               # 0xa000000
	.quad	Fvariable_binding_locus
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.108
	.quad	0
	.quad	0
	.size	Svariable_binding_locus, 48

	.type	.L.str.109,@object      # @.str.109
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.109:
	.asciz	"aref"
	.size	.L.str.109, 5

	.type	Saref,@object           # @Saref
	.data
	.align	8
Saref:
	.quad	167772160               # 0xa000000
	.quad	Faref
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.109
	.quad	0
	.quad	0
	.size	Saref, 48

	.type	.L.str.110,@object      # @.str.110
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.110:
	.asciz	"aset"
	.size	.L.str.110, 5

	.type	Saset,@object           # @Saset
	.data
	.align	8
Saset:
	.quad	167772160               # 0xa000000
	.quad	Faset
	.short	3                       # 0x3
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.110
	.quad	0
	.quad	0
	.size	Saset, 48

	.type	.L.str.111,@object      # @.str.111
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.111:
	.asciz	"number-to-string"
	.size	.L.str.111, 17

	.type	Snumber_to_string,@object # @Snumber_to_string
	.data
	.align	8
Snumber_to_string:
	.quad	167772160               # 0xa000000
	.quad	Fnumber_to_string
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.111
	.quad	0
	.quad	0
	.size	Snumber_to_string, 48

	.type	.L.str.112,@object      # @.str.112
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.112:
	.asciz	"string-to-number"
	.size	.L.str.112, 17

	.type	Sstring_to_number,@object # @Sstring_to_number
	.data
	.align	8
Sstring_to_number:
	.quad	167772160               # 0xa000000
	.quad	Fstring_to_number
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.112
	.quad	0
	.quad	0
	.size	Sstring_to_number, 48

	.type	.L.str.113,@object      # @.str.113
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.113:
	.asciz	"="
	.size	.L.str.113, 2

	.type	Seqlsign,@object        # @Seqlsign
	.data
	.align	8
Seqlsign:
	.quad	167772160               # 0xa000000
	.quad	Feqlsign
	.short	1                       # 0x1
	.short	65534                   # 0xfffe
	.zero	4
	.quad	.L.str.113
	.quad	0
	.quad	0
	.size	Seqlsign, 48

	.type	.L.str.114,@object      # @.str.114
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.114:
	.asciz	"<"
	.size	.L.str.114, 2

	.type	Slss,@object            # @Slss
	.data
	.align	8
Slss:
	.quad	167772160               # 0xa000000
	.quad	Flss
	.short	1                       # 0x1
	.short	65534                   # 0xfffe
	.zero	4
	.quad	.L.str.114
	.quad	0
	.quad	0
	.size	Slss, 48

	.type	.L.str.115,@object      # @.str.115
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.115:
	.asciz	">"
	.size	.L.str.115, 2

	.type	Sgtr,@object            # @Sgtr
	.data
	.align	8
Sgtr:
	.quad	167772160               # 0xa000000
	.quad	Fgtr
	.short	1                       # 0x1
	.short	65534                   # 0xfffe
	.zero	4
	.quad	.L.str.115
	.quad	0
	.quad	0
	.size	Sgtr, 48

	.type	.L.str.116,@object      # @.str.116
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.116:
	.asciz	"<="
	.size	.L.str.116, 3

	.type	Sleq,@object            # @Sleq
	.data
	.align	8
Sleq:
	.quad	167772160               # 0xa000000
	.quad	Fleq
	.short	1                       # 0x1
	.short	65534                   # 0xfffe
	.zero	4
	.quad	.L.str.116
	.quad	0
	.quad	0
	.size	Sleq, 48

	.type	.L.str.117,@object      # @.str.117
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.117:
	.asciz	">="
	.size	.L.str.117, 3

	.type	Sgeq,@object            # @Sgeq
	.data
	.align	8
Sgeq:
	.quad	167772160               # 0xa000000
	.quad	Fgeq
	.short	1                       # 0x1
	.short	65534                   # 0xfffe
	.zero	4
	.quad	.L.str.117
	.quad	0
	.quad	0
	.size	Sgeq, 48

	.type	.L.str.118,@object      # @.str.118
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.118:
	.asciz	"/="
	.size	.L.str.118, 3

	.type	Sneq,@object            # @Sneq
	.data
	.align	8
Sneq:
	.quad	167772160               # 0xa000000
	.quad	Fneq
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.118
	.quad	0
	.quad	0
	.size	Sneq, 48

	.type	.L.str.119,@object      # @.str.119
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.119:
	.asciz	"+"
	.size	.L.str.119, 2

	.type	Splus,@object           # @Splus
	.data
	.align	8
Splus:
	.quad	167772160               # 0xa000000
	.quad	Fplus
	.short	0                       # 0x0
	.short	65534                   # 0xfffe
	.zero	4
	.quad	.L.str.119
	.quad	0
	.quad	0
	.size	Splus, 48

	.type	.L.str.120,@object      # @.str.120
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.120:
	.asciz	"-"
	.size	.L.str.120, 2

	.type	Sminus,@object          # @Sminus
	.data
	.align	8
Sminus:
	.quad	167772160               # 0xa000000
	.quad	Fminus
	.short	0                       # 0x0
	.short	65534                   # 0xfffe
	.zero	4
	.quad	.L.str.120
	.quad	0
	.quad	0
	.size	Sminus, 48

	.type	.L.str.121,@object      # @.str.121
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.121:
	.asciz	"*"
	.size	.L.str.121, 2

	.type	Stimes,@object          # @Stimes
	.data
	.align	8
Stimes:
	.quad	167772160               # 0xa000000
	.quad	Ftimes
	.short	0                       # 0x0
	.short	65534                   # 0xfffe
	.zero	4
	.quad	.L.str.121
	.quad	0
	.quad	0
	.size	Stimes, 48

	.type	.L.str.122,@object      # @.str.122
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.122:
	.asciz	"/"
	.size	.L.str.122, 2

	.type	Squo,@object            # @Squo
	.data
	.align	8
Squo:
	.quad	167772160               # 0xa000000
	.quad	Fquo
	.short	1                       # 0x1
	.short	65534                   # 0xfffe
	.zero	4
	.quad	.L.str.122
	.quad	0
	.quad	0
	.size	Squo, 48

	.type	.L.str.123,@object      # @.str.123
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.123:
	.asciz	"%"
	.size	.L.str.123, 2

	.type	Srem,@object            # @Srem
	.data
	.align	8
Srem:
	.quad	167772160               # 0xa000000
	.quad	Frem
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.123
	.quad	0
	.quad	0
	.size	Srem, 48

	.type	.L.str.124,@object      # @.str.124
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.124:
	.asciz	"mod"
	.size	.L.str.124, 4

	.type	Smod,@object            # @Smod
	.data
	.align	8
Smod:
	.quad	167772160               # 0xa000000
	.quad	Fmod
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.124
	.quad	0
	.quad	0
	.size	Smod, 48

	.type	.L.str.125,@object      # @.str.125
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.125:
	.asciz	"max"
	.size	.L.str.125, 4

	.type	Smax,@object            # @Smax
	.data
	.align	8
Smax:
	.quad	167772160               # 0xa000000
	.quad	Fmax
	.short	1                       # 0x1
	.short	65534                   # 0xfffe
	.zero	4
	.quad	.L.str.125
	.quad	0
	.quad	0
	.size	Smax, 48

	.type	.L.str.126,@object      # @.str.126
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.126:
	.asciz	"min"
	.size	.L.str.126, 4

	.type	Smin,@object            # @Smin
	.data
	.align	8
Smin:
	.quad	167772160               # 0xa000000
	.quad	Fmin
	.short	1                       # 0x1
	.short	65534                   # 0xfffe
	.zero	4
	.quad	.L.str.126
	.quad	0
	.quad	0
	.size	Smin, 48

	.type	.L.str.127,@object      # @.str.127
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.127:
	.asciz	"logand"
	.size	.L.str.127, 7

	.type	Slogand,@object         # @Slogand
	.data
	.align	8
Slogand:
	.quad	167772160               # 0xa000000
	.quad	Flogand
	.short	0                       # 0x0
	.short	65534                   # 0xfffe
	.zero	4
	.quad	.L.str.127
	.quad	0
	.quad	0
	.size	Slogand, 48

	.type	.L.str.128,@object      # @.str.128
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.128:
	.asciz	"logior"
	.size	.L.str.128, 7

	.type	Slogior,@object         # @Slogior
	.data
	.align	8
Slogior:
	.quad	167772160               # 0xa000000
	.quad	Flogior
	.short	0                       # 0x0
	.short	65534                   # 0xfffe
	.zero	4
	.quad	.L.str.128
	.quad	0
	.quad	0
	.size	Slogior, 48

	.type	.L.str.129,@object      # @.str.129
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.129:
	.asciz	"logxor"
	.size	.L.str.129, 7

	.type	Slogxor,@object         # @Slogxor
	.data
	.align	8
Slogxor:
	.quad	167772160               # 0xa000000
	.quad	Flogxor
	.short	0                       # 0x0
	.short	65534                   # 0xfffe
	.zero	4
	.quad	.L.str.129
	.quad	0
	.quad	0
	.size	Slogxor, 48

	.type	.L.str.130,@object      # @.str.130
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.130:
	.asciz	"lsh"
	.size	.L.str.130, 4

	.type	Slsh,@object            # @Slsh
	.data
	.align	8
Slsh:
	.quad	167772160               # 0xa000000
	.quad	Flsh
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.130
	.quad	0
	.quad	0
	.size	Slsh, 48

	.type	.L.str.131,@object      # @.str.131
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.131:
	.asciz	"ash"
	.size	.L.str.131, 4

	.type	Sash,@object            # @Sash
	.data
	.align	8
Sash:
	.quad	167772160               # 0xa000000
	.quad	Fash
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.131
	.quad	0
	.quad	0
	.size	Sash, 48

	.type	.L.str.132,@object      # @.str.132
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.132:
	.asciz	"1+"
	.size	.L.str.132, 3

	.type	Sadd1,@object           # @Sadd1
	.data
	.align	8
Sadd1:
	.quad	167772160               # 0xa000000
	.quad	Fadd1
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.132
	.quad	0
	.quad	0
	.size	Sadd1, 48

	.type	.L.str.133,@object      # @.str.133
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.133:
	.asciz	"1-"
	.size	.L.str.133, 3

	.type	Ssub1,@object           # @Ssub1
	.data
	.align	8
Ssub1:
	.quad	167772160               # 0xa000000
	.quad	Fsub1
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.133
	.quad	0
	.quad	0
	.size	Ssub1, 48

	.type	.L.str.134,@object      # @.str.134
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.134:
	.asciz	"lognot"
	.size	.L.str.134, 7

	.type	Slognot,@object         # @Slognot
	.data
	.align	8
Slognot:
	.quad	167772160               # 0xa000000
	.quad	Flognot
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.134
	.quad	0
	.quad	0
	.size	Slognot, 48

	.type	.L.str.135,@object      # @.str.135
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.135:
	.asciz	"byteorder"
	.size	.L.str.135, 10

	.type	.L.str.136,@object      # @.str.136
.L.str.136:
	.asciz	"subr-arity"
	.size	.L.str.136, 11

	.type	Ssubr_arity,@object     # @Ssubr_arity
	.data
	.align	8
Ssubr_arity:
	.quad	167772160               # 0xa000000
	.quad	Fsubr_arity
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.136
	.quad	0
	.quad	0
	.size	Ssubr_arity, 48

	.type	.L.str.137,@object      # @.str.137
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.137:
	.asciz	"subr-name"
	.size	.L.str.137, 10

	.type	Ssubr_name,@object      # @Ssubr_name
	.data
	.align	8
Ssubr_name:
	.quad	167772160               # 0xa000000
	.quad	Fsubr_name
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.137
	.quad	0
	.quad	0
	.size	Ssubr_name, 48

	.type	.L.str.138,@object      # @.str.138
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.138:
	.asciz	"bool-vector-exclusive-or"
	.size	.L.str.138, 25

	.type	Sbool_vector_exclusive_or,@object # @Sbool_vector_exclusive_or
	.data
	.align	8
Sbool_vector_exclusive_or:
	.quad	167772160               # 0xa000000
	.quad	Fbool_vector_exclusive_or
	.short	2                       # 0x2
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.138
	.quad	0
	.quad	0
	.size	Sbool_vector_exclusive_or, 48

	.type	.L.str.139,@object      # @.str.139
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.139:
	.asciz	"bool-vector-union"
	.size	.L.str.139, 18

	.type	Sbool_vector_union,@object # @Sbool_vector_union
	.data
	.align	8
Sbool_vector_union:
	.quad	167772160               # 0xa000000
	.quad	Fbool_vector_union
	.short	2                       # 0x2
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.139
	.quad	0
	.quad	0
	.size	Sbool_vector_union, 48

	.type	.L.str.140,@object      # @.str.140
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.140:
	.asciz	"bool-vector-intersection"
	.size	.L.str.140, 25

	.type	Sbool_vector_intersection,@object # @Sbool_vector_intersection
	.data
	.align	8
Sbool_vector_intersection:
	.quad	167772160               # 0xa000000
	.quad	Fbool_vector_intersection
	.short	2                       # 0x2
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.140
	.quad	0
	.quad	0
	.size	Sbool_vector_intersection, 48

	.type	.L.str.141,@object      # @.str.141
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.141:
	.asciz	"bool-vector-set-difference"
	.size	.L.str.141, 27

	.type	Sbool_vector_set_difference,@object # @Sbool_vector_set_difference
	.data
	.align	8
Sbool_vector_set_difference:
	.quad	167772160               # 0xa000000
	.quad	Fbool_vector_set_difference
	.short	2                       # 0x2
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.141
	.quad	0
	.quad	0
	.size	Sbool_vector_set_difference, 48

	.type	.L.str.142,@object      # @.str.142
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.142:
	.asciz	"bool-vector-not"
	.size	.L.str.142, 16

	.type	Sbool_vector_not,@object # @Sbool_vector_not
	.data
	.align	8
Sbool_vector_not:
	.quad	167772160               # 0xa000000
	.quad	Fbool_vector_not
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.142
	.quad	0
	.quad	0
	.size	Sbool_vector_not, 48

	.type	.L.str.143,@object      # @.str.143
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.143:
	.asciz	"bool-vector-subsetp"
	.size	.L.str.143, 20

	.type	Sbool_vector_subsetp,@object # @Sbool_vector_subsetp
	.data
	.align	8
Sbool_vector_subsetp:
	.quad	167772160               # 0xa000000
	.quad	Fbool_vector_subsetp
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.143
	.quad	0
	.quad	0
	.size	Sbool_vector_subsetp, 48

	.type	.L.str.144,@object      # @.str.144
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.144:
	.asciz	"bool-vector-count-consecutive"
	.size	.L.str.144, 30

	.type	Sbool_vector_count_consecutive,@object # @Sbool_vector_count_consecutive
	.data
	.align	8
Sbool_vector_count_consecutive:
	.quad	167772160               # 0xa000000
	.quad	Fbool_vector_count_consecutive
	.short	3                       # 0x3
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.144
	.quad	0
	.quad	0
	.size	Sbool_vector_count_consecutive, 48

	.type	.L.str.145,@object      # @.str.145
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.145:
	.asciz	"bool-vector-count-population"
	.size	.L.str.145, 29

	.type	Sbool_vector_count_population,@object # @Sbool_vector_count_population
	.data
	.align	8
Sbool_vector_count_population:
	.quad	167772160               # 0xa000000
	.quad	Fbool_vector_count_population
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.145
	.quad	0
	.quad	0
	.size	Sbool_vector_count_population, 48


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
