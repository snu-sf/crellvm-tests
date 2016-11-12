	.text
	.file	"ibnum.bc"
	.globl	num_array_format
	.align	16, 0x90
	.type	num_array_format,@function
num_array_format:                       # @num_array_format
	.cfi_startproc
# BB#0:                                 # %entry
	movzbl	1(%rdi), %eax
	movl	$256, %esi              # imm = 0x100
	leal	-4(%rax), %ecx
	cmpl	$3, %ecx
	jb	.LBB0_6
# BB#1:                                 # %entry
	movl	$-20, %ecx
	cmpl	$18, %eax
	jne	.LBB0_7
# BB#2:                                 # %sw.bb
	movl	4(%rdi), %eax
	cmpl	$4, %eax
	jb	.LBB0_7
# BB#3:                                 # %lor.lhs.false
	movq	8(%rdi), %rdx
	movzbl	(%rdx), %esi
	cmpl	$149, %esi
	jne	.LBB0_7
# BB#4:                                 # %if.end
	movzbl	1(%rdx), %esi
	movl	%esi, %r8d
	andl	$126, %r8d
	movl	$-15, %ecx
	cmpl	$49, %r8d
	ja	.LBB0_7
# BB#5:                                 # %cleanup
	movzbl	2(%rdx), %r8d
	movzbl	3(%rdx), %r9d
	movl	%r9d, %edx
	shll	$8, %edx
	orl	%r8d, %edx
	shll	$8, %r8d
	orl	%r9d, %r8d
	testb	%sil, %sil
	cmovsl	%edx, %r8d
	movl	%r8d, %r9d
	andl	$32767, %r9d            # imm = 0x7FFF
	andl	$32768, %r8d            # imm = 0x8000
	subl	%r8d, %r9d
	addl	$-4, %eax
	movl	%esi, %edx
	shrl	$4, %edx
	movzbl	enc_num_bytes(%rdx), %r8d
	xorl	%edx, %edx
	divl	%r8d
	cmpl	%eax, %r9d
	jne	.LBB0_7
.LBB0_6:                                # %do.body
	testb	$32, (%rdi)
	movl	$-7, %ecx
	cmovnel	%esi, %ecx
.LBB0_7:                                # %cleanup.27
	movl	%ecx, %eax
	retq
.Lfunc_end0:
	.size	num_array_format, .Lfunc_end0-num_array_format
	.cfi_endproc

	.globl	sdecodeshort
	.align	16, 0x90
	.type	sdecodeshort,@function
sdecodeshort:                           # @sdecodeshort
	.cfi_startproc
# BB#0:                                 # %entry
	movzbl	(%rdi), %ecx
	movzbl	1(%rdi), %eax
	movl	%eax, %edx
	shll	$8, %edx
	orl	%ecx, %edx
	shll	$8, %ecx
	orl	%eax, %ecx
	cmpl	$127, %esi
	cmovgl	%edx, %ecx
	movl	%ecx, %eax
	andl	$32767, %eax            # imm = 0x7FFF
	andl	$32768, %ecx            # imm = 0x8000
	subl	%ecx, %eax
	retq
.Lfunc_end1:
	.size	sdecodeshort, .Lfunc_end1-sdecodeshort
	.cfi_endproc

	.globl	num_array_size
	.align	16, 0x90
	.type	num_array_size,@function
num_array_size:                         # @num_array_size
	.cfi_startproc
# BB#0:                                 # %entry
	cmpl	$256, %esi              # imm = 0x100
	movl	4(%rdi), %eax
	je	.LBB2_2
# BB#1:                                 # %cond.false
	addl	$-4, %eax
	sarl	$4, %esi
	movslq	%esi, %rcx
	movzbl	enc_num_bytes(%rcx), %ecx
	xorl	%edx, %edx
	divl	%ecx
.LBB2_2:                                # %cond.end
	retq
.Lfunc_end2:
	.size	num_array_size, .Lfunc_end2-num_array_size
	.cfi_endproc

	.globl	num_array_get
	.align	16, 0x90
	.type	num_array_get,@function
num_array_get:                          # @num_array_get
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
	movq	%r8, %r14
	movl	%edx, %ebx
	cmpl	$256, %ebx              # imm = 0x100
	jne	.LBB3_3
# BB#1:                                 # %if.then
	movl	%ecx, %edx
	movq	%r14, %rcx
	callq	array_get
	movl	%eax, %ecx
	movl	$14, %eax
	testl	%ecx, %ecx
	js	.LBB3_4
# BB#2:                                 # %if.end
	movzbl	1(%r14), %ecx
	cmpl	$16, %ecx
	movl	$-20, %eax
	cmovel	%ecx, %eax
	cmpl	$11, %ecx
	cmovel	%ecx, %eax
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	movl	%ebx, %eax
	sarl	$4, %eax
	cltq
	movzbl	enc_num_bytes(%rax), %edi
	movl	4(%rsi), %eax
	addl	$-4, %eax
	xorl	%edx, %edx
	divl	%edi
	movl	%eax, %edx
	movl	$14, %eax
	cmpl	%ecx, %edx
	jbe	.LBB3_4
# BB#5:                                 # %if.end.12
	movq	8(%rsi), %rax
	imull	%ecx, %edi
	leaq	4(%rax,%rdi), %rdi
	movl	%ebx, %esi
	movq	%r14, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	sdecode_number          # TAILCALL
.LBB3_4:                                # %return
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end3:
	.size	num_array_get, .Lfunc_end3-num_array_get
	.cfi_endproc

	.globl	sdecode_number
	.align	16, 0x90
	.type	sdecode_number,@function
sdecode_number:                         # @sdecode_number
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp5:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp6:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp7:
	.cfi_def_cfa_offset 32
.Ltmp8:
	.cfi_offset %rbx, -24
.Ltmp9:
	.cfi_offset %r14, -16
	movq	%rdx, %r14
	movq	%rdi, %rcx
	movl	%esi, %edx
	andl	$368, %edx              # imm = 0x170
	movl	$-18, %eax
	cmpl	$31, %edx
	jg	.LBB4_5
# BB#1:                                 # %entry
	testl	%edx, %edx
	je	.LBB4_3
# BB#2:                                 # %entry
	cmpl	$16, %edx
	jne	.LBB4_25
.LBB4_3:                                # %sw.bb
	movl	%esi, %eax
	andl	$31, %eax
	movzbl	(%rcx), %ebx
	movzbl	1(%rcx), %edx
	movzbl	2(%rcx), %edi
	movzbl	3(%rcx), %ecx
	cmpl	$128, %esi
	jl	.LBB4_9
# BB#4:                                 # %cond.true.i
	shll	$24, %ecx
	shll	$16, %edi
	shll	$8, %edx
	orl	%ebx, %edx
	orl	%edi, %edx
	orl	%ecx, %edx
	jmp	.LBB4_10
.LBB4_5:                                # %entry
	cmpl	$32, %edx
	jne	.LBB4_6
# BB#15:                                # %sw.bb.7
	movzbl	(%rcx), %edx
	movzbl	1(%rcx), %eax
	movl	%eax, %ecx
	shll	$8, %ecx
	orl	%edx, %ecx
	shll	$8, %edx
	orl	%eax, %edx
	cmpl	$127, %esi
	cmovgl	%ecx, %edx
	movl	%edx, %eax
	andl	$32767, %eax            # imm = 0x7FFF
	andl	$32768, %edx            # imm = 0x8000
	subl	%edx, %eax
	andl	$15, %esi
	je	.LBB4_16
# BB#17:                                # %if.else.16
	cvtsi2sdl	%eax, %xmm0
	movl	%esi, %eax
	jmp	.LBB4_14
.LBB4_6:                                # %entry
	cmpl	$48, %edx
	jne	.LBB4_25
# BB#7:                                 # %sw.bb.26
	movl	%esi, %eax
	andl	$-129, %eax
	cmpl	$49, %eax
	jne	.LBB4_18
# BB#8:                                 # %if.then.i
	leaq	4(%rsp), %rdi
	movl	$4, %edx
	movq	%rcx, %rsi
	callq	memcpy
	movl	4(%rsp), %edx
	jmp	.LBB4_22
.LBB4_9:                                # %cond.false.i
	shll	$24, %ebx
	shll	$16, %edx
	orl	%ebx, %edx
	shll	$8, %edi
	orl	%edx, %edi
	orl	%ecx, %edi
	movl	%edi, %edx
.LBB4_10:                               # %sdecodeint32.exit
	testl	%eax, %eax
	je	.LBB4_11
# BB#13:                                # %if.else
	cvtsi2sdl	%edx, %xmm0
	movl	%eax, %eax
.LBB4_14:                               # %return
	mulsd	binary_scale(,%rax,8), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 8(%r14)
.LBB4_24:                               # %return
	movl	$16, %eax
	jmp	.LBB4_25
.LBB4_11:                               # %if.then
	movslq	%edx, %rax
	jmp	.LBB4_12
.LBB4_16:                               # %if.then.11
	cltq
.LBB4_12:                               # %return
	movq	%rax, 8(%r14)
	movl	$11, %eax
	jmp	.LBB4_25
.LBB4_18:                               # %if.else.i
	movzbl	(%rcx), %eax
	movzbl	1(%rcx), %edx
	movzbl	2(%rcx), %edi
	movzbl	3(%rcx), %ecx
	cmpl	$128, %esi
	jl	.LBB4_20
# BB#19:                                # %cond.true.i.i
	shll	$24, %ecx
	shll	$16, %edi
	shll	$8, %edx
	orl	%eax, %edx
	orl	%edi, %edx
	orl	%ecx, %edx
	jmp	.LBB4_21
.LBB4_20:                               # %cond.false.i.i
	shll	$24, %eax
	shll	$16, %edx
	orl	%eax, %edx
	shll	$8, %edi
	orl	%edx, %edi
	orl	%ecx, %edi
	movl	%edi, %edx
.LBB4_21:                               # %sdecodebits32.exit.i
	movl	%edx, 4(%rsp)
.LBB4_22:                               # %sdecode_float.exit
	movl	%edx, %ecx
	andl	$2139095040, %ecx       # imm = 0x7F800000
	movl	$-23, %eax
	cmpl	$2139095040, %ecx       # imm = 0x7F800000
	jne	.LBB4_23
.LBB4_25:                               # %return
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.LBB4_23:                               # %if.end
	movl	%edx, 8(%r14)
	jmp	.LBB4_24
.Lfunc_end4:
	.size	sdecode_number, .Lfunc_end4-sdecode_number
	.cfi_endproc

	.globl	sdecodeint32
	.align	16, 0x90
	.type	sdecodeint32,@function
sdecodeint32:                           # @sdecodeint32
	.cfi_startproc
# BB#0:                                 # %entry
	movzbl	(%rdi), %ecx
	movzbl	1(%rdi), %eax
	movzbl	2(%rdi), %edx
	movzbl	3(%rdi), %edi
	cmpl	$128, %esi
	jl	.LBB5_2
# BB#1:                                 # %cond.true
	shll	$24, %edi
	shll	$16, %edx
	shll	$8, %eax
	orl	%ecx, %eax
	orl	%edx, %eax
	orl	%edi, %eax
	retq
.LBB5_2:                                # %cond.false
	shll	$24, %ecx
	shll	$16, %eax
	orl	%ecx, %eax
	shll	$8, %edx
	orl	%eax, %edx
	orl	%edi, %edx
	movl	%edx, %eax
	retq
.Lfunc_end5:
	.size	sdecodeint32, .Lfunc_end5-sdecodeint32
	.cfi_endproc

	.globl	sdecode_float
	.align	16, 0x90
	.type	sdecode_float,@function
sdecode_float:                          # @sdecode_float
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp10:
	.cfi_def_cfa_offset 16
.Ltmp11:
	.cfi_offset %rbx, -16
	movq	%rdx, %rbx
	movq	%rdi, %rax
	movl	%esi, %ecx
	andl	$-129, %ecx
	cmpl	$49, %ecx
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movl	$4, %edx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	memcpy
	movl	(%rbx), %ecx
	jmp	.LBB6_6
.LBB6_2:                                # %if.else
	movzbl	(%rax), %edi
	movzbl	1(%rax), %ecx
	movzbl	2(%rax), %edx
	movzbl	3(%rax), %eax
	cmpl	$128, %esi
	jl	.LBB6_4
# BB#3:                                 # %cond.true.i
	shll	$24, %eax
	shll	$16, %edx
	shll	$8, %ecx
	orl	%edi, %ecx
	orl	%edx, %ecx
	orl	%eax, %ecx
	jmp	.LBB6_5
.LBB6_4:                                # %cond.false.i
	shll	$24, %edi
	shll	$16, %ecx
	orl	%edi, %ecx
	shll	$8, %edx
	orl	%ecx, %edx
	orl	%eax, %edx
	movl	%edx, %ecx
.LBB6_5:                                # %sdecodebits32.exit
	movl	%ecx, (%rbx)
.LBB6_6:                                # %if.end
	andl	$2139095040, %ecx       # imm = 0x7F800000
	xorl	%edx, %edx
	cmpl	$2139095040, %ecx       # imm = 0x7F800000
	movl	$-23, %eax
	cmovnel	%edx, %eax
	popq	%rbx
	retq
.Lfunc_end6:
	.size	sdecode_float, .Lfunc_end6-sdecode_float
	.cfi_endproc

	.globl	sdecodeushort
	.align	16, 0x90
	.type	sdecodeushort,@function
sdecodeushort:                          # @sdecodeushort
	.cfi_startproc
# BB#0:                                 # %entry
	movzbl	(%rdi), %eax
	movzbl	1(%rdi), %ecx
	movl	%ecx, %edx
	shll	$8, %edx
	orl	%eax, %edx
	shll	$8, %eax
	orl	%ecx, %eax
	cmpl	$127, %esi
	cmovgl	%edx, %eax
	retq
.Lfunc_end7:
	.size	sdecodeushort, .Lfunc_end7-sdecodeushort
	.cfi_endproc

	.type	enc_num_bytes,@object   # @enc_num_bytes
	.section	.rodata,"a",@progbits
	.globl	enc_num_bytes
	.align	16
enc_num_bytes:
	.ascii	"\004\004\002\004\000\000\000\000\004\004\002\004\000\000\000\000\020"
	.size	enc_num_bytes, 17

	.type	binary_scale,@object    # @binary_scale
	.align	16
binary_scale:
	.quad	4607182418800017408     # double 1.000000e+00
	.quad	4602678819172646912     # double 5.000000e-01
	.quad	4598175219545276416     # double 2.500000e-01
	.quad	4593671619917905920     # double 1.250000e-01
	.quad	4589168020290535424     # double 6.250000e-02
	.quad	4584664420663164928     # double 3.125000e-02
	.quad	4580160821035794432     # double 1.562500e-02
	.quad	4575657221408423936     # double 7.812500e-03
	.quad	4571153621781053440     # double 3.906250e-03
	.quad	4566650022153682944     # double 1.953125e-03
	.quad	4562146422526312448     # double 9.765625e-04
	.quad	4557642822898941952     # double 4.882812e-04
	.quad	4553139223271571456     # double 2.441406e-04
	.quad	4548635623644200960     # double 1.220703e-04
	.quad	4544132024016830464     # double 6.103516e-05
	.quad	4539628424389459968     # double 3.051758e-05
	.quad	4535124824762089472     # double 1.525879e-05
	.quad	4530621225134718976     # double 7.629395e-06
	.quad	4526117625507348480     # double 3.814697e-06
	.quad	4521614025879977984     # double 1.907349e-06
	.quad	4517110426252607488     # double 9.536743e-07
	.quad	4512606826625236992     # double 4.768372e-07
	.quad	4508103226997866496     # double 2.384186e-07
	.quad	4503599627370496000     # double 1.192093e-07
	.quad	4499096027743125504     # double 5.960464e-08
	.quad	4494592428115755008     # double 2.980232e-08
	.quad	4490088828488384512     # double 1.490116e-08
	.quad	4485585228861014016     # double 7.450581e-09
	.quad	4481081629233643520     # double 3.725290e-09
	.quad	4476578029606273024     # double 1.862645e-09
	.quad	4472074429978902528     # double 9.313226e-10
	.quad	4467570830351532032     # double 4.656613e-10
	.size	binary_scale, 256


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
