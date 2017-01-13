	.text
	.file	"floatfns.bc"
	.globl	extract_float
	.align	16, 0x90
	.type	extract_float,@function
extract_float:                          # @extract_float
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
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHECK_NUMBER_OR_FLOAT
	movq	-16(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$7, %eax
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	XFLOAT_DATA
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB0_3
.LBB0_2:                                # %if.end
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, -8(%rbp)
.LBB0_3:                                # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	extract_float, .Lfunc_end0-extract_float
	.cfi_endproc

	.globl	Facos
	.align	16, 0x90
	.type	Facos,@function
Facos:                                  # @Facos
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
	callq	extract_float
	movsd	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	acos
	movsd	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	make_float
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	Facos, .Lfunc_end1-Facos
	.cfi_endproc

	.globl	Fasin
	.align	16, 0x90
	.type	Fasin,@function
Fasin:                                  # @Fasin
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	extract_float
	movsd	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	asin
	movsd	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	make_float
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	Fasin, .Lfunc_end2-Fasin
	.cfi_endproc

	.globl	Fatan
	.align	16, 0x90
	.type	Fatan,@function
Fatan:                                  # @Fatan
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	extract_float
	xorl	%edi, %edi
	movsd	%xmm0, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	atan
	movsd	%xmm0, -24(%rbp)
	jmp	.LBB3_3
.LBB3_2:                                # %if.else
	movq	-16(%rbp), %rdi
	callq	extract_float
	movsd	%xmm0, -32(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	atan2
	movsd	%xmm0, -24(%rbp)
.LBB3_3:                                # %if.end
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	make_float
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	Fatan, .Lfunc_end3-Fatan
	.cfi_endproc

	.globl	Fcos
	.align	16, 0x90
	.type	Fcos,@function
Fcos:                                   # @Fcos
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	extract_float
	movsd	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	cos
	movsd	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	make_float
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	Fcos, .Lfunc_end4-Fcos
	.cfi_endproc

	.globl	Fsin
	.align	16, 0x90
	.type	Fsin,@function
Fsin:                                   # @Fsin
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	extract_float
	movsd	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	sin
	movsd	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	make_float
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	Fsin, .Lfunc_end5-Fsin
	.cfi_endproc

	.globl	Ftan
	.align	16, 0x90
	.type	Ftan,@function
Ftan:                                   # @Ftan
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
	callq	extract_float
	movsd	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	tan
	movsd	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	make_float
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	Ftan, .Lfunc_end6-Ftan
	.cfi_endproc

	.globl	Fisnan
	.align	16, 0x90
	.type	Fisnan,@function
Fisnan:                                 # @Fisnan
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_FLOAT
	movq	-8(%rbp), %rdi
	callq	XFLOAT_DATA
	movq	-8(%rbp), %rdi
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
	callq	XFLOAT_DATA
	movsd	-16(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB7_1
	jp	.LBB7_1
	jmp	.LBB7_2
.LBB7_1:                                # %cond.true
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB7_3
.LBB7_2:                                # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB7_3:                                # %cond.end
	movq	-24(%rbp), %rax         # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	Fisnan, .Lfunc_end7-Fisnan
	.cfi_endproc

	.align	16, 0x90
	.type	CHECK_FLOAT,@function
CHECK_FLOAT:                            # @CHECK_FLOAT
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$7, %eax
	jne	.LBB8_2
# BB#1:                                 # %cond.true
	jmp	.LBB8_3
.LBB8_2:                                # %cond.false
	movl	$434, %edi              # imm = 0x1B2
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB8_3:                                # %cond.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	CHECK_FLOAT, .Lfunc_end8-CHECK_FLOAT
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI9_0:
	.quad	-9223372036854775808    # double -0.000000e+00
	.quad	0                       # double 0.000000e+00
.LCPI9_1:
	.quad	9223372036854775807     # double nan
	.quad	0                       # double 0.000000e+00
	.text
	.globl	Fcopysign
	.align	16, 0x90
	.type	Fcopysign,@function
Fcopysign:                              # @Fcopysign
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_FLOAT
	movq	-16(%rbp), %rdi
	callq	CHECK_FLOAT
	movq	-8(%rbp), %rdi
	callq	XFLOAT_DATA
	movsd	%xmm0, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	XFLOAT_DATA
	movsd	%xmm0, -32(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movapd	.LCPI9_0(%rip), %xmm2   # xmm2 = [-0.000000e+00,0.000000e+00]
	andpd	%xmm2, %xmm1
	movapd	.LCPI9_1(%rip), %xmm2   # xmm2 = [nan,0.000000e+00]
	andpd	%xmm2, %xmm0
	orpd	%xmm1, %xmm0
	callq	make_float
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	Fcopysign, .Lfunc_end9-Fcopysign
	.cfi_endproc

	.globl	Ffrexp
	.align	16, 0x90
	.type	Ffrexp,@function
Ffrexp:                                 # @Ffrexp
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	XFLOATINT
	leaq	-20(%rbp), %rdi
	movsd	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	frexp
	movsd	%xmm0, -32(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	make_float
	movslq	-20(%rbp), %rdi
	shlq	$2, %rdi
	addq	$2, %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-40(%rbp), %rsi         # 8-byte Reload
	callq	Fcons
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	Ffrexp, .Lfunc_end10-Ffrexp
	.cfi_endproc

	.globl	Fldexp
	.align	16, 0x90
	.type	Fldexp,@function
Fldexp:                                 # @Fldexp
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	andq	$7, %rsi
	movl	%esi, %eax
	andl	$-5, %eax
	cmpl	$2, %eax
	jne	.LBB11_2
# BB#1:                                 # %cond.true
	jmp	.LBB11_3
.LBB11_2:                               # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB11_3:                               # %cond.end
	movq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	movq	-16(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jle	.LBB11_5
# BB#4:                                 # %cond.true.5
	movq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB11_6
.LBB11_5:                               # %cond.false.6
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB11_6:                               # %cond.end.8
	movq	-40(%rbp), %rax         # 8-byte Reload
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	jge	.LBB11_11
# BB#7:                                 # %cond.true.11
	movq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	movq	-16(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jle	.LBB11_9
# BB#8:                                 # %cond.true.15
	movq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB11_10
.LBB11_9:                               # %cond.false.16
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB11_10:                              # %cond.end.18
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB11_12
.LBB11_11:                              # %cond.false.20
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB11_12
.LBB11_12:                              # %cond.end.21
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	%eax, %ecx
	movl	%ecx, -20(%rbp)
	movq	-8(%rbp), %rdi
	callq	XFLOATINT
	movl	-20(%rbp), %edi
	callq	ldexp
	callq	make_float
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	Fldexp, .Lfunc_end11-Fldexp
	.cfi_endproc

	.globl	Fexp
	.align	16, 0x90
	.type	Fexp,@function
Fexp:                                   # @Fexp
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	extract_float
	movsd	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	exp
	movsd	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	make_float
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	Fexp, .Lfunc_end12-Fexp
	.cfi_endproc

	.globl	Fexpt
	.align	16, 0x90
	.type	Fexpt,@function
Fexpt:                                  # @Fexpt
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHECK_NUMBER_OR_FLOAT
	movq	-24(%rbp), %rdi
	callq	CHECK_NUMBER_OR_FLOAT
	movq	-16(%rbp), %rsi
	andq	$7, %rsi
	movl	%esi, %eax
	andl	$-5, %eax
	cmpl	$2, %eax
	jne	.LBB13_12
# BB#1:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB13_12
# BB#2:                                 # %land.lhs.true.8
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jl	.LBB13_12
# BB#3:                                 # %if.then
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -72(%rbp)
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	andq	$1, %rax
	cmpq	$0, %rax
	je	.LBB13_5
# BB#4:                                 # %cond.true
	movq	-72(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB13_6
.LBB13_5:                               # %cond.false
	movl	$1, %eax
	movl	%eax, %ecx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	jmp	.LBB13_6
.LBB13_6:                               # %cond.end
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -64(%rbp)
.LBB13_7:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax
	sarq	$1, %rax
	movq	%rax, -56(%rbp)
	cmpq	$0, %rax
	je	.LBB13_11
# BB#8:                                 # %while.body
                                        #   in Loop: Header=BB13_7 Depth=1
	movq	-72(%rbp), %rax
	imulq	-72(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	andq	$1, %rax
	cmpq	$0, %rax
	je	.LBB13_10
# BB#9:                                 # %if.then.19
                                        #   in Loop: Header=BB13_7 Depth=1
	movq	-72(%rbp), %rax
	imulq	-64(%rbp), %rax
	movq	%rax, -64(%rbp)
.LBB13_10:                              # %if.end
                                        #   in Loop: Header=BB13_7 Depth=1
	jmp	.LBB13_7
.LBB13_11:                              # %while.end
	movq	-64(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB13_19
.LBB13_12:                              # %if.end.21
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$7, %ecx
	jne	.LBB13_14
# BB#13:                                # %cond.true.26
	movq	-16(%rbp), %rdi
	callq	XFLOAT_DATA
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	jmp	.LBB13_15
.LBB13_14:                              # %cond.false.27
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
.LBB13_15:                              # %cond.end.30
	movsd	-96(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$7, %ecx
	jne	.LBB13_17
# BB#16:                                # %cond.true.36
	movq	-24(%rbp), %rdi
	callq	XFLOAT_DATA
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	jmp	.LBB13_18
.LBB13_17:                              # %cond.false.38
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
.LBB13_18:                              # %cond.end.41
	movsd	-104(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	pow
	movsd	%xmm0, -48(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	make_float
	movq	%rax, -8(%rbp)
.LBB13_19:                              # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	Fexpt, .Lfunc_end13-Fexpt
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI14_0:
	.quad	4621819117588971520     # double 10
.LCPI14_1:
	.quad	4611686018427387904     # double 2
	.text
	.globl	Flog
	.align	16, 0x90
	.type	Flog,@function
Flog:                                   # @Flog
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
	movq	-8(%rbp), %rdi
	callq	extract_float
	xorl	%edi, %edi
	movsd	%xmm0, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB14_2
# BB#1:                                 # %if.then
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	log
	movsd	%xmm0, -24(%rbp)
	jmp	.LBB14_9
.LBB14_2:                               # %if.else
	movq	-16(%rbp), %rdi
	callq	extract_float
	movsd	.LCPI14_0, %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jne	.LBB14_4
	jp	.LBB14_4
# BB#3:                                 # %if.then.5
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	log10
	movsd	%xmm0, -24(%rbp)
	jmp	.LBB14_8
.LBB14_4:                               # %if.else.7
	movsd	.LCPI14_1, %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB14_6
	jp	.LBB14_6
# BB#5:                                 # %if.then.9
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	log2
	movsd	%xmm0, -24(%rbp)
	jmp	.LBB14_7
.LBB14_6:                               # %if.else.11
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	log
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	log
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -24(%rbp)
.LBB14_7:                               # %if.end
	jmp	.LBB14_8
.LBB14_8:                               # %if.end.14
	jmp	.LBB14_9
.LBB14_9:                               # %if.end.15
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	make_float
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	Flog, .Lfunc_end14-Flog
	.cfi_endproc

	.globl	Fsqrt
	.align	16, 0x90
	.type	Fsqrt,@function
Fsqrt:                                  # @Fsqrt
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	extract_float
	movsd	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	sqrt
	movsd	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	make_float
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	Fsqrt, .Lfunc_end15-Fsqrt
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI16_0:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.globl	Fabs
	.align	16, 0x90
	.type	Fabs,@function
Fabs:                                   # @Fabs
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_NUMBER_OR_FLOAT
	movq	-8(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$7, %eax
	jne	.LBB16_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	XFLOAT_DATA
	movapd	.LCPI16_0(%rip), %xmm1  # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	callq	make_float
	movq	%rax, -8(%rbp)
	jmp	.LBB16_5
.LBB16_2:                               # %if.else
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jge	.LBB16_4
# BB#3:                                 # %if.then.6
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	sarq	$2, %rdx
	subq	%rdx, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -8(%rbp)
.LBB16_4:                               # %if.end
	jmp	.LBB16_5
.LBB16_5:                               # %if.end.8
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	Fabs, .Lfunc_end16-Fabs
	.cfi_endproc

	.globl	Ffloat
	.align	16, 0x90
	.type	Ffloat,@function
Ffloat:                                 # @Ffloat
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
	callq	CHECK_NUMBER_OR_FLOAT
	movq	-16(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	andl	$-5, %eax
	cmpl	$2, %eax
	jne	.LBB17_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	cvtsi2sdq	%rax, %xmm0
	callq	make_float
	movq	%rax, -8(%rbp)
	jmp	.LBB17_3
.LBB17_2:                               # %if.else
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB17_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	Ffloat, .Lfunc_end17-Ffloat
	.cfi_endproc

	.globl	Flogb
	.align	16, 0x90
	.type	Flogb,@function
Flogb:                                  # @Flogb
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	extract_float
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -32(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jne	.LBB18_2
	jp	.LBB18_2
# BB#1:                                 # %if.then
	movabsq	$-2305843009213693952, %rax # imm = 0xE000000000000000
	movq	%rax, -24(%rbp)
	jmp	.LBB18_6
.LBB18_2:                               # %if.else
	xorps	%xmm0, %xmm0
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-32(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jne	.LBB18_4
	jp	.LBB18_4
# BB#3:                                 # %if.then.2
	leaq	-36(%rbp), %rdi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	frexp
	movl	-36(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rdi
	movq	%rdi, -24(%rbp)
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	jmp	.LBB18_5
.LBB18_4:                               # %if.else.5
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	movq	%rax, -24(%rbp)
.LBB18_5:                               # %if.end
	jmp	.LBB18_6
.LBB18_6:                               # %if.end.6
	movq	-24(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	Flogb, .Lfunc_end18-Flogb
	.cfi_endproc

	.globl	Fceiling
	.align	16, 0x90
	.type	Fceiling,@function
Fceiling:                               # @Fceiling
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
	movabsq	$ceil, %rdx
	movabsq	$ceiling2, %rcx
	movabsq	$.L.str, %r8
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	rounding_driver
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	Fceiling, .Lfunc_end19-Fceiling
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI20_0:
	.quad	-4341470040785158144    # double -2.305843009213694E+18
.LCPI20_1:
	.quad	4881901996069617664     # double 2.305843009213694E+18
.LCPI20_2:
	.quad	4890909195324358656     # double 9.2233720368547758E+18
	.text
	.align	16, 0x90
	.type	rounding_driver,@function
rounding_driver:                        # @rounding_driver
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
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHECK_NUMBER_OR_FLOAT
	xorl	%edi, %edi
	movq	-24(%rbp), %rcx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB20_17
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	CHECK_NUMBER_OR_FLOAT
	movq	-16(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$7, %eax
	je	.LBB20_3
# BB#2:                                 # %lor.lhs.false
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$7, %ecx
	jne	.LBB20_14
.LBB20_3:                               # %if.then.7
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$7, %ecx
	jne	.LBB20_5
# BB#4:                                 # %cond.true
	movq	-16(%rbp), %rdi
	callq	XFLOAT_DATA
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	jmp	.LBB20_6
.LBB20_5:                               # %cond.false
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
.LBB20_6:                               # %cond.end
	movsd	-104(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$7, %ecx
	jne	.LBB20_8
# BB#7:                                 # %cond.true.18
	movq	-24(%rbp), %rdi
	callq	XFLOAT_DATA
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	jmp	.LBB20_9
.LBB20_8:                               # %cond.false.20
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
.LBB20_9:                               # %cond.end.23
	movsd	-112(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)
	movq	-32(%rbp), %rax
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	divsd	-80(%rbp), %xmm0
	callq	*%rax
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -72(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jae	.LBB20_11
# BB#10:                                # %lor.lhs.false.28
	movsd	.LCPI20_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB20_12
.LBB20_11:                              # %land.lhs.true
	movsd	.LCPI20_1, %xmm0        # xmm0 = mem[0],zero
	ucomisd	-72(%rbp), %xmm0
	jae	.LBB20_13
.LBB20_12:                              # %if.then.33
	movl	$786, %edi              # imm = 0x312
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	build_string
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	xsignal3
.LBB20_13:                              # %if.end
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI20_2(%rip), %xmm1  # xmm1 = mem[0],zero
	movaps	%xmm0, %xmm2
	subsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	cvttsd2si	%xmm0, %rcx
	ucomisd	%xmm0, %xmm1
	cmovaq	%rcx, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB20_24
.LBB20_14:                              # %if.end.37
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB20_16
# BB#15:                                # %if.then.42
	movl	$178, %edi
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	xsignal0
.LBB20_16:                              # %if.end.44
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	*%rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB20_24
.LBB20_17:                              # %if.end.48
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$7, %ecx
	jne	.LBB20_23
# BB#18:                                # %if.then.53
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	XFLOAT_DATA
	movq	-128(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -88(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jae	.LBB20_20
# BB#19:                                # %lor.lhs.false.58
	movsd	.LCPI20_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB20_21
.LBB20_20:                              # %land.lhs.true.61
	movsd	.LCPI20_1, %xmm0        # xmm0 = mem[0],zero
	ucomisd	-88(%rbp), %xmm0
	jae	.LBB20_22
.LBB20_21:                              # %if.then.64
	movl	$786, %edi              # imm = 0x312
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	build_string
	movq	-16(%rbp), %rdx
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	xsignal2
.LBB20_22:                              # %if.end.67
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI20_2(%rip), %xmm1  # xmm1 = mem[0],zero
	movaps	%xmm0, %xmm2
	subsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	cvttsd2si	%xmm0, %rcx
	ucomisd	%xmm0, %xmm1
	cmovaq	%rcx, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -16(%rbp)
.LBB20_23:                              # %if.end.71
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB20_24:                              # %return
	movq	-8(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	rounding_driver, .Lfunc_end20-rounding_driver
	.cfi_endproc

	.align	16, 0x90
	.type	ceiling2,@function
ceiling2:                               # @ceiling2
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	cqto
	idivq	-16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rax
	cqto
	idivq	-16(%rbp)
	cmpq	$0, %rdx
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %r8d
	cmpq	$0, -8(%rbp)
	setl	%cl
	andb	$1, %cl
	movzbl	%cl, %r9d
	cmpq	$0, -16(%rbp)
	setl	%cl
	andb	$1, %cl
	movzbl	%cl, %r10d
	cmpl	%r10d, %r9d
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %r9d
	andl	%r9d, %r8d
	movslq	%r8d, %rdx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	addq	%rdx, %rsi
	movq	%rsi, %rax
	popq	%rbp
	retq
.Lfunc_end21:
	.size	ceiling2, .Lfunc_end21-ceiling2
	.cfi_endproc

	.globl	Ffloor
	.align	16, 0x90
	.type	Ffloor,@function
Ffloor:                                 # @Ffloor
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
	movabsq	$floor, %rdx
	movabsq	$floor2, %rcx
	movabsq	$.L.str.1, %r8
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	rounding_driver
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	Ffloor, .Lfunc_end22-Ffloor
	.cfi_endproc

	.align	16, 0x90
	.type	floor2,@function
floor2:                                 # @floor2
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	cqto
	idivq	-16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rax
	cqto
	idivq	-16(%rbp)
	cmpq	$0, %rdx
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %r8d
	cmpq	$0, -8(%rbp)
	setl	%cl
	andb	$1, %cl
	movzbl	%cl, %r9d
	cmpq	$0, -16(%rbp)
	setl	%cl
	andb	$1, %cl
	movzbl	%cl, %r10d
	cmpl	%r10d, %r9d
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %r9d
	andl	%r9d, %r8d
	movslq	%r8d, %rdx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	subq	%rdx, %rsi
	movq	%rsi, %rax
	popq	%rbp
	retq
.Lfunc_end23:
	.size	floor2, .Lfunc_end23-floor2
	.cfi_endproc

	.globl	Fround
	.align	16, 0x90
	.type	Fround,@function
Fround:                                 # @Fround
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
	movabsq	$rint, %rdx
	movabsq	$round2, %rcx
	movabsq	$.L.str.2, %r8
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	rounding_driver
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	Fround, .Lfunc_end24-Fround
	.cfi_endproc

	.align	16, 0x90
	.type	round2,@function
round2:                                 # @round2
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	cqto
	idivq	-16(%rbp)
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	cqto
	idivq	-16(%rbp)
	movq	%rdx, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jge	.LBB25_2
# BB#1:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, %ecx
	subq	-32(%rbp), %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB25_3
.LBB25_2:                               # %cond.false
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB25_3:                               # %cond.end
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	cmpq	$0, -16(%rbp)
	jge	.LBB25_5
# BB#4:                                 # %cond.true.2
	xorl	%eax, %eax
	movl	%eax, %ecx
	subq	-16(%rbp), %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	jmp	.LBB25_6
.LBB25_5:                               # %cond.false.4
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB25_6:                               # %cond.end.5
	movq	-64(%rbp), %rax         # 8-byte Reload
	subq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rdx
	andq	$1, %rdx
	addq	%rdx, %rcx
	cmpq	-48(%rbp), %rcx
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jg	.LBB25_8
# BB#7:                                 # %cond.true.9
	xorl	%eax, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB25_9
.LBB25_8:                               # %cond.false.10
	movl	$1, %eax
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	-16(%rbp), %rdx
	xorq	-32(%rbp), %rdx
	cmpq	$0, %rdx
	cmovll	%ecx, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB25_9:                               # %cond.end.13
	movl	-76(%rbp), %eax         # 4-byte Reload
	movslq	%eax, %rcx
	movq	-72(%rbp), %rdx         # 8-byte Reload
	addq	%rcx, %rdx
	movq	%rdx, %rax
	popq	%rbp
	retq
.Lfunc_end25:
	.size	round2, .Lfunc_end25-round2
	.cfi_endproc

	.globl	Ftruncate
	.align	16, 0x90
	.type	Ftruncate,@function
Ftruncate:                              # @Ftruncate
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
	movabsq	$double_identity, %rdx
	movabsq	$truncate2, %rcx
	movabsq	$.L.str.3, %r8
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	rounding_driver
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	Ftruncate, .Lfunc_end26-Ftruncate
	.cfi_endproc

	.align	16, 0x90
	.type	double_identity,@function
double_identity:                        # @double_identity
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
	movsd	%xmm0, -8(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	popq	%rbp
	retq
.Lfunc_end27:
	.size	double_identity, .Lfunc_end27-double_identity
	.cfi_endproc

	.align	16, 0x90
	.type	truncate2,@function
truncate2:                              # @truncate2
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	cqto
	idivq	-16(%rbp)
	popq	%rbp
	retq
.Lfunc_end28:
	.size	truncate2, .Lfunc_end28-truncate2
	.cfi_endproc

	.globl	fmod_float
	.align	16, 0x90
	.type	fmod_float,@function
fmod_float:                             # @fmod_float
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	andq	$7, %rsi
	movl	%esi, %eax
	cmpl	$7, %eax
	jne	.LBB29_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rdi
	callq	XFLOAT_DATA
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	jmp	.LBB29_3
.LBB29_2:                               # %cond.false
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
.LBB29_3:                               # %cond.end
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$7, %ecx
	jne	.LBB29_5
# BB#4:                                 # %cond.true.7
	movq	-16(%rbp), %rdi
	callq	XFLOAT_DATA
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	jmp	.LBB29_6
.LBB29_5:                               # %cond.false.9
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
.LBB29_6:                               # %cond.end.12
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	fmod
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -24(%rbp)
	ucomisd	-32(%rbp), %xmm1
	jbe	.LBB29_8
# BB#7:                                 # %cond.true.17
	xorps	%xmm0, %xmm0
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB29_9
	jmp	.LBB29_10
.LBB29_8:                               # %cond.false.20
	xorps	%xmm0, %xmm0
	ucomisd	-24(%rbp), %xmm0
	jbe	.LBB29_10
.LBB29_9:                               # %if.then
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-24(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
.LBB29_10:                              # %if.end
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	make_float
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	fmod_float, .Lfunc_end29-fmod_float
	.cfi_endproc

	.globl	Ffceiling
	.align	16, 0x90
	.type	Ffceiling,@function
Ffceiling:                              # @Ffceiling
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	extract_float
	movsd	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	ceil
	movsd	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	make_float
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	Ffceiling, .Lfunc_end30-Ffceiling
	.cfi_endproc

	.globl	Fffloor
	.align	16, 0x90
	.type	Fffloor,@function
Fffloor:                                # @Fffloor
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	extract_float
	movsd	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	floor
	movsd	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	make_float
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	Fffloor, .Lfunc_end31-Fffloor
	.cfi_endproc

	.globl	Ffround
	.align	16, 0x90
	.type	Ffround,@function
Ffround:                                # @Ffround
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
	callq	extract_float
	movsd	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	rint
	movsd	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	make_float
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	Ffround, .Lfunc_end32-Ffround
	.cfi_endproc

	.globl	Fftruncate
	.align	16, 0x90
	.type	Fftruncate,@function
Fftruncate:                             # @Fftruncate
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
	callq	extract_float
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jb	.LBB33_2
# BB#1:                                 # %if.then
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	floor
	movsd	%xmm0, -16(%rbp)
	jmp	.LBB33_3
.LBB33_2:                               # %if.else
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	ceil
	movsd	%xmm0, -16(%rbp)
.LBB33_3:                               # %if.end
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	make_float
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	Fftruncate, .Lfunc_end33-Fftruncate
	.cfi_endproc

	.globl	syms_of_floatfns
	.align	16, 0x90
	.type	syms_of_floatfns,@function
syms_of_floatfns:                       # @syms_of_floatfns
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
	movabsq	$Sacos, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sasin, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Satan, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Scos, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Ssin, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Stan, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sisnan, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Scopysign, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sfrexp, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sldexp, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sfceiling, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sffloor, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sfround, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sftruncate, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sexp, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sexpt, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Slog, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Ssqrt, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sabs, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sfloat, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Slogb, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sceiling, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sfloor, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sround, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Struncate, %rax
	movq	%rax, %rdi
	callq	defsubr
	popq	%rbp
	retq
.Lfunc_end34:
	.size	syms_of_floatfns, .Lfunc_end34-syms_of_floatfns
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"ceiling"
	.size	.L.str, 8

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"floor"
	.size	.L.str.1, 6

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"round"
	.size	.L.str.2, 6

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"truncate"
	.size	.L.str.3, 9

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"acos"
	.size	.L.str.4, 5

	.type	Sacos,@object           # @Sacos
	.data
	.align	8
Sacos:
	.quad	167772160               # 0xa000000
	.quad	Facos
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.4
	.quad	0
	.quad	0
	.size	Sacos, 48

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"asin"
	.size	.L.str.5, 5

	.type	Sasin,@object           # @Sasin
	.data
	.align	8
Sasin:
	.quad	167772160               # 0xa000000
	.quad	Fasin
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.5
	.quad	0
	.quad	0
	.size	Sasin, 48

	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"atan"
	.size	.L.str.6, 5

	.type	Satan,@object           # @Satan
	.data
	.align	8
Satan:
	.quad	167772160               # 0xa000000
	.quad	Fatan
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.6
	.quad	0
	.quad	0
	.size	Satan, 48

	.type	.L.str.7,@object        # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"cos"
	.size	.L.str.7, 4

	.type	Scos,@object            # @Scos
	.data
	.align	8
Scos:
	.quad	167772160               # 0xa000000
	.quad	Fcos
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.7
	.quad	0
	.quad	0
	.size	Scos, 48

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"sin"
	.size	.L.str.8, 4

	.type	Ssin,@object            # @Ssin
	.data
	.align	8
Ssin:
	.quad	167772160               # 0xa000000
	.quad	Fsin
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.8
	.quad	0
	.quad	0
	.size	Ssin, 48

	.type	.L.str.9,@object        # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"tan"
	.size	.L.str.9, 4

	.type	Stan,@object            # @Stan
	.data
	.align	8
Stan:
	.quad	167772160               # 0xa000000
	.quad	Ftan
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.9
	.quad	0
	.quad	0
	.size	Stan, 48

	.type	.L.str.10,@object       # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"isnan"
	.size	.L.str.10, 6

	.type	Sisnan,@object          # @Sisnan
	.data
	.align	8
Sisnan:
	.quad	167772160               # 0xa000000
	.quad	Fisnan
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.10
	.quad	0
	.quad	0
	.size	Sisnan, 48

	.type	.L.str.11,@object       # @.str.11
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.11:
	.asciz	"copysign"
	.size	.L.str.11, 9

	.type	Scopysign,@object       # @Scopysign
	.data
	.align	8
Scopysign:
	.quad	167772160               # 0xa000000
	.quad	Fcopysign
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.11
	.quad	0
	.quad	0
	.size	Scopysign, 48

	.type	.L.str.12,@object       # @.str.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.12:
	.asciz	"frexp"
	.size	.L.str.12, 6

	.type	Sfrexp,@object          # @Sfrexp
	.data
	.align	8
Sfrexp:
	.quad	167772160               # 0xa000000
	.quad	Ffrexp
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.12
	.quad	0
	.quad	0
	.size	Sfrexp, 48

	.type	.L.str.13,@object       # @.str.13
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.13:
	.asciz	"ldexp"
	.size	.L.str.13, 6

	.type	Sldexp,@object          # @Sldexp
	.data
	.align	8
Sldexp:
	.quad	167772160               # 0xa000000
	.quad	Fldexp
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.13
	.quad	0
	.quad	0
	.size	Sldexp, 48

	.type	.L.str.14,@object       # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"fceiling"
	.size	.L.str.14, 9

	.type	Sfceiling,@object       # @Sfceiling
	.data
	.align	8
Sfceiling:
	.quad	167772160               # 0xa000000
	.quad	Ffceiling
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.14
	.quad	0
	.quad	0
	.size	Sfceiling, 48

	.type	.L.str.15,@object       # @.str.15
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.15:
	.asciz	"ffloor"
	.size	.L.str.15, 7

	.type	Sffloor,@object         # @Sffloor
	.data
	.align	8
Sffloor:
	.quad	167772160               # 0xa000000
	.quad	Fffloor
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.15
	.quad	0
	.quad	0
	.size	Sffloor, 48

	.type	.L.str.16,@object       # @.str.16
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.16:
	.asciz	"fround"
	.size	.L.str.16, 7

	.type	Sfround,@object         # @Sfround
	.data
	.align	8
Sfround:
	.quad	167772160               # 0xa000000
	.quad	Ffround
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.16
	.quad	0
	.quad	0
	.size	Sfround, 48

	.type	.L.str.17,@object       # @.str.17
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.17:
	.asciz	"ftruncate"
	.size	.L.str.17, 10

	.type	Sftruncate,@object      # @Sftruncate
	.data
	.align	8
Sftruncate:
	.quad	167772160               # 0xa000000
	.quad	Fftruncate
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.17
	.quad	0
	.quad	0
	.size	Sftruncate, 48

	.type	.L.str.18,@object       # @.str.18
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.18:
	.asciz	"exp"
	.size	.L.str.18, 4

	.type	Sexp,@object            # @Sexp
	.data
	.align	8
Sexp:
	.quad	167772160               # 0xa000000
	.quad	Fexp
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.18
	.quad	0
	.quad	0
	.size	Sexp, 48

	.type	.L.str.19,@object       # @.str.19
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.19:
	.asciz	"expt"
	.size	.L.str.19, 5

	.type	Sexpt,@object           # @Sexpt
	.data
	.align	8
Sexpt:
	.quad	167772160               # 0xa000000
	.quad	Fexpt
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.19
	.quad	0
	.quad	0
	.size	Sexpt, 48

	.type	.L.str.20,@object       # @.str.20
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.20:
	.asciz	"log"
	.size	.L.str.20, 4

	.type	Slog,@object            # @Slog
	.data
	.align	8
Slog:
	.quad	167772160               # 0xa000000
	.quad	Flog
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.20
	.quad	0
	.quad	0
	.size	Slog, 48

	.type	.L.str.21,@object       # @.str.21
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.21:
	.asciz	"sqrt"
	.size	.L.str.21, 5

	.type	Ssqrt,@object           # @Ssqrt
	.data
	.align	8
Ssqrt:
	.quad	167772160               # 0xa000000
	.quad	Fsqrt
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.21
	.quad	0
	.quad	0
	.size	Ssqrt, 48

	.type	.L.str.22,@object       # @.str.22
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.22:
	.asciz	"abs"
	.size	.L.str.22, 4

	.type	Sabs,@object            # @Sabs
	.data
	.align	8
Sabs:
	.quad	167772160               # 0xa000000
	.quad	Fabs
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.22
	.quad	0
	.quad	0
	.size	Sabs, 48

	.type	.L.str.23,@object       # @.str.23
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.23:
	.asciz	"float"
	.size	.L.str.23, 6

	.type	Sfloat,@object          # @Sfloat
	.data
	.align	8
Sfloat:
	.quad	167772160               # 0xa000000
	.quad	Ffloat
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.23
	.quad	0
	.quad	0
	.size	Sfloat, 48

	.type	.L.str.24,@object       # @.str.24
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.24:
	.asciz	"logb"
	.size	.L.str.24, 5

	.type	Slogb,@object           # @Slogb
	.data
	.align	8
Slogb:
	.quad	167772160               # 0xa000000
	.quad	Flogb
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.24
	.quad	0
	.quad	0
	.size	Slogb, 48

	.type	Sceiling,@object        # @Sceiling
	.align	8
Sceiling:
	.quad	167772160               # 0xa000000
	.quad	Fceiling
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.size	Sceiling, 48

	.type	Sfloor,@object          # @Sfloor
	.align	8
Sfloor:
	.quad	167772160               # 0xa000000
	.quad	Ffloor
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.1
	.quad	0
	.quad	0
	.size	Sfloor, 48

	.type	Sround,@object          # @Sround
	.align	8
Sround:
	.quad	167772160               # 0xa000000
	.quad	Fround
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.2
	.quad	0
	.quad	0
	.size	Sround, 48

	.type	Struncate,@object       # @Struncate
	.align	8
Struncate:
	.quad	167772160               # 0xa000000
	.quad	Ftruncate
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.3
	.quad	0
	.quad	0
	.size	Struncate, 48


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
