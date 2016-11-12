	.text
	.file	"zmath.bc"
	.globl	zsqrt
	.align	16, 0x90
	.type	zsqrt,@function
zsqrt:                                  # @zsqrt
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp1:
	.cfi_def_cfa_offset 32
.Ltmp2:
	.cfi_offset %rbx, -16
	movq	624(%rdi), %rbx
	leaq	8(%rsp), %rsi
	movq	%rbx, %rdi
	callq	real_param
	testl	%eax, %eax
	js	.LBB0_5
# BB#1:                                 # %if.end
	movsd	8(%rsp), %xmm0          # xmm0 = mem[0],zero
	movl	$-15, %eax
	xorps	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	ja	.LBB0_5
# BB#2:                                 # %if.end.3
	movsd	%xmm0, (%rsp)           # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB0_4
# BB#3:                                 # %call.sqrt
	movsd	(%rsp), %xmm0           # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB0_4:                                # %if.end.3.split
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 8(%rbx)
	movw	$4096, (%rbx)           # imm = 0x1000
	xorl	%eax, %eax
.LBB0_5:                                # %cleanup
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end0:
	.size	zsqrt, .Lfunc_end0-zsqrt
	.cfi_endproc

	.globl	zatan
	.align	16, 0x90
	.type	zatan,@function
zatan:                                  # @zatan
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp3:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp4:
	.cfi_def_cfa_offset 24
	subq	$40, %rsp
.Ltmp5:
	.cfi_def_cfa_offset 64
.Ltmp6:
	.cfi_offset %rbx, -24
.Ltmp7:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	leaq	16(%rsp), %rdx
	movl	$2, %esi
	movq	%rbx, %rdi
	callq	num_params
	testl	%eax, %eax
	js	.LBB1_3
# BB#1:                                 # %if.end
	movsd	16(%rsp), %xmm0         # xmm0 = mem[0],zero
	movsd	24(%rsp), %xmm1         # xmm1 = mem[0],zero
	leaq	8(%rsp), %rdi
	callq	gs_atan2_degrees
	testl	%eax, %eax
	js	.LBB1_3
# BB#2:                                 # %if.end.5
	movsd	8(%rsp), %xmm0          # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -8(%rbx)
	movw	$4096, -16(%rbx)        # imm = 0x1000
	addq	$-16, 624(%r14)
	xorl	%eax, %eax
.LBB1_3:                                # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end1:
	.size	zatan, .Lfunc_end1-zatan
	.cfi_endproc

	.globl	zcos
	.align	16, 0x90
	.type	zcos,@function
zcos:                                   # @zcos
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp8:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp9:
	.cfi_def_cfa_offset 32
.Ltmp10:
	.cfi_offset %rbx, -16
	movq	624(%rdi), %rbx
	leaq	8(%rsp), %rsi
	movq	%rbx, %rdi
	callq	real_param
	testl	%eax, %eax
	js	.LBB2_2
# BB#1:                                 # %if.end
	movsd	8(%rsp), %xmm0          # xmm0 = mem[0],zero
	callq	gs_cos_degrees
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 8(%rbx)
	movw	$4096, (%rbx)           # imm = 0x1000
	xorl	%eax, %eax
.LBB2_2:                                # %cleanup
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end2:
	.size	zcos, .Lfunc_end2-zcos
	.cfi_endproc

	.globl	zsin
	.align	16, 0x90
	.type	zsin,@function
zsin:                                   # @zsin
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp11:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp12:
	.cfi_def_cfa_offset 32
.Ltmp13:
	.cfi_offset %rbx, -16
	movq	624(%rdi), %rbx
	leaq	8(%rsp), %rsi
	movq	%rbx, %rdi
	callq	real_param
	testl	%eax, %eax
	js	.LBB3_2
# BB#1:                                 # %if.end
	movsd	8(%rsp), %xmm0          # xmm0 = mem[0],zero
	callq	gs_sin_degrees
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 8(%rbx)
	movw	$4096, (%rbx)           # imm = 0x1000
	xorl	%eax, %eax
.LBB3_2:                                # %cleanup
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end3:
	.size	zsin, .Lfunc_end3-zsin
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI4_0:
	.long	1065353216              # float 1
	.text
	.globl	zexp
	.align	16, 0x90
	.type	zexp,@function
zexp:                                   # @zexp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp14:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp15:
	.cfi_def_cfa_offset 24
	subq	$40, %rsp
.Ltmp16:
	.cfi_def_cfa_offset 64
.Ltmp17:
	.cfi_offset %rbx, -24
.Ltmp18:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	leaq	16(%rsp), %rdx
	movl	$2, %esi
	movq	%rbx, %rdi
	callq	num_params
	testl	%eax, %eax
	js	.LBB4_9
# BB#1:                                 # %if.end
	movsd	16(%rsp), %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm2, %xmm2
	ucomisd	%xmm0, %xmm2
	jbe	.LBB4_4
# BB#2:                                 # %land.lhs.true
	movsd	24(%rsp), %xmm0         # xmm0 = mem[0],zero
	leaq	8(%rsp), %rdi
	callq	modf
	xorps	%xmm2, %xmm2
	movl	$-23, %eax
	ucomisd	%xmm2, %xmm0
	jne	.LBB4_9
	jp	.LBB4_9
# BB#3:                                 # %if.end.6thread-pre-split
	movsd	16(%rsp), %xmm0         # xmm0 = mem[0],zero
.LBB4_4:                                # %if.end.6
	movsd	24(%rsp), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm2, %xmm0
	jne	.LBB4_7
	jp	.LBB4_7
# BB#5:                                 # %if.end.6
	xorps	%xmm2, %xmm2
	ucomisd	%xmm2, %xmm1
	jne	.LBB4_7
	jp	.LBB4_7
# BB#6:
	movss	.LCPI4_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB4_8
.LBB4_7:                                # %if.else
	callq	pow
	cvtsd2ss	%xmm0, %xmm0
.LBB4_8:                                # %if.end.16
	movss	%xmm0, -8(%rbx)
	movw	$4096, -16(%rbx)        # imm = 0x1000
	addq	$-16, 624(%r14)
	xorl	%eax, %eax
.LBB4_9:                                # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end4:
	.size	zexp, .Lfunc_end4-zexp
	.cfi_endproc

	.globl	zln
	.align	16, 0x90
	.type	zln,@function
zln:                                    # @zln
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp19:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp20:
	.cfi_def_cfa_offset 32
.Ltmp21:
	.cfi_offset %rbx, -16
	movq	624(%rdi), %rbx
	leaq	8(%rsp), %rsi
	movq	%rbx, %rdi
	callq	real_param
	testl	%eax, %eax
	js	.LBB5_3
# BB#1:                                 # %if.end
	movsd	8(%rsp), %xmm0          # xmm0 = mem[0],zero
	movl	$-15, %eax
	xorps	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	jae	.LBB5_3
# BB#2:                                 # %if.end.3
	callq	log
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 8(%rbx)
	movw	$4096, (%rbx)           # imm = 0x1000
	xorl	%eax, %eax
.LBB5_3:                                # %cleanup
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end5:
	.size	zln, .Lfunc_end5-zln
	.cfi_endproc

	.globl	zlog
	.align	16, 0x90
	.type	zlog,@function
zlog:                                   # @zlog
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp22:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp23:
	.cfi_def_cfa_offset 32
.Ltmp24:
	.cfi_offset %rbx, -16
	movq	624(%rdi), %rbx
	leaq	8(%rsp), %rsi
	movq	%rbx, %rdi
	callq	real_param
	testl	%eax, %eax
	js	.LBB6_3
# BB#1:                                 # %if.end
	movsd	8(%rsp), %xmm0          # xmm0 = mem[0],zero
	movl	$-15, %eax
	xorps	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	jae	.LBB6_3
# BB#2:                                 # %if.end.3
	callq	log10
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 8(%rbx)
	movw	$4096, (%rbx)           # imm = 0x1000
	xorl	%eax, %eax
.LBB6_3:                                # %cleanup
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end6:
	.size	zlog, .Lfunc_end6-zlog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4633260481411531256     # double 57.295779513082323
	.text
	.align	16, 0x90
	.type	zarccos,@function
zarccos:                                # @zarccos
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp25:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp26:
	.cfi_def_cfa_offset 32
.Ltmp27:
	.cfi_offset %rbx, -16
	movq	624(%rdi), %rbx
	leaq	8(%rsp), %rsi
	movq	%rbx, %rdi
	callq	real_param
	testl	%eax, %eax
	js	.LBB7_2
# BB#1:                                 # %if.end
	movsd	8(%rsp), %xmm0          # xmm0 = mem[0],zero
	callq	acos
	mulsd	.LCPI7_0(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 8(%rbx)
	movw	$4096, (%rbx)           # imm = 0x1000
	xorl	%eax, %eax
.LBB7_2:                                # %cleanup
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end7:
	.size	zarccos, .Lfunc_end7-zarccos
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4633260481411531256     # double 57.295779513082323
	.text
	.align	16, 0x90
	.type	zarcsin,@function
zarcsin:                                # @zarcsin
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp28:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp29:
	.cfi_def_cfa_offset 32
.Ltmp30:
	.cfi_offset %rbx, -16
	movq	624(%rdi), %rbx
	leaq	8(%rsp), %rsi
	movq	%rbx, %rdi
	callq	real_param
	testl	%eax, %eax
	js	.LBB8_2
# BB#1:                                 # %if.end
	movsd	8(%rsp), %xmm0          # xmm0 = mem[0],zero
	callq	asin
	mulsd	.LCPI8_0(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 8(%rbx)
	movw	$4096, (%rbx)           # imm = 0x1000
	xorl	%eax, %eax
.LBB8_2:                                # %cleanup
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end8:
	.size	zarcsin, .Lfunc_end8-zarcsin
	.cfi_endproc

	.align	16, 0x90
	.type	zrand,@function
zrand:                                  # @zrand
	.cfi_startproc
# BB#0:                                 # %entry
	movq	128(%rdi), %rcx
	movq	624(%rdi), %rsi
	movabsq	$4730756183288445817, %rdx # imm = 0x41A705AF1FE3FB79
	movq	%rcx, %rax
	imulq	%rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$15, %rdx
	addq	%rax, %rdx
	imulq	$127773, %rdx, %rax     # imm = 0x1F31D
	subq	%rax, %rcx
	imulq	$16807, %rcx, %rax      # imm = 0x41A7
	imulq	$-2836, %rdx, %rcx      # imm = 0xFFFFFFFFFFFFF4EC
	leaq	(%rcx,%rax), %rdx
	testq	%rdx, %rdx
	leaq	2147483647(%rcx,%rax), %rax
	cmovgq	%rdx, %rax
	movq	%rax, 128(%rdi)
	leaq	16(%rsi), %rcx
	cmpq	640(%rdi), %rcx
	jbe	.LBB9_2
# BB#1:                                 # %if.then.9
	movl	$1, 688(%rdi)
	movl	$-16, %eax
	retq
.LBB9_2:                                # %if.else
	movq	%rcx, 624(%rdi)
	movq	%rax, 24(%rsi)
	movw	$2816, 16(%rsi)         # imm = 0xB00
	xorl	%eax, %eax
	retq
.Lfunc_end9:
	.size	zrand, .Lfunc_end9-zrand
	.cfi_endproc

	.align	16, 0x90
	.type	zrrand,@function
zrrand:                                 # @zrrand
	.cfi_startproc
# BB#0:                                 # %entry
	movq	624(%rdi), %rax
	leaq	16(%rax), %rcx
	cmpq	640(%rdi), %rcx
	jbe	.LBB10_2
# BB#1:                                 # %if.then
	movl	$1, 688(%rdi)
	movl	$-16, %eax
	retq
.LBB10_2:                               # %if.else
	movq	%rcx, 624(%rdi)
	movq	128(%rdi), %rcx
	movq	%rcx, 24(%rax)
	movw	$2816, 16(%rax)         # imm = 0xB00
	xorl	%eax, %eax
	retq
.Lfunc_end10:
	.size	zrrand, .Lfunc_end10-zrrand
	.cfi_endproc

	.align	16, 0x90
	.type	zsrand,@function
zsrand:                                 # @zsrand
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	movq	624(%rax), %rdi
	movzbl	1(%rdi), %ecx
	cmpl	$11, %ecx
	jne	.LBB11_2
# BB#1:                                 # %cleanup
	movslq	8(%rdi), %rcx
	imulq	$-2147483645, %rcx, %rdx # imm = 0xFFFFFFFF80000003
	shrq	$32, %rdx
	addl	%ecx, %edx
	movl	%edx, %esi
	shrl	$31, %esi
	sarl	$30, %edx
	addl	%esi, %edx
	imull	$2147483646, %edx, %edx # imm = 0x7FFFFFFE
	movl	%ecx, %esi
	subl	%edx, %esi
	movl	$1, %edx
	subl	%esi, %edx
	cmpq	$2147483647, %rcx       # imm = 0x7FFFFFFF
	movl	$2147483646, %esi       # imm = 0x7FFFFFFE
	cmovnel	%ecx, %esi
	testq	%rcx, %rcx
	cmovlel	%edx, %esi
	movslq	%esi, %rcx
	movq	%rcx, 128(%rax)
	addq	$-16, %rdi
	movq	%rdi, 624(%rax)
	xorl	%eax, %eax
	retq
.LBB11_2:                               # %if.then
	jmp	check_type_failed       # TAILCALL
.Lfunc_end11:
	.size	zsrand, .Lfunc_end11-zsrand
	.cfi_endproc

	.type	rand_state_initial,@object # @rand_state_initial
	.section	.rodata,"a",@progbits
	.globl	rand_state_initial
	.align	8
rand_state_initial:
	.quad	1                       # 0x1
	.size	rand_state_initial, 8

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"1arccos"
	.size	.L.str, 8

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"1arcsin"
	.size	.L.str.1, 8

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"2atan"
	.size	.L.str.2, 6

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"1cos"
	.size	.L.str.3, 5

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"2exp"
	.size	.L.str.4, 5

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"1ln"
	.size	.L.str.5, 4

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"1log"
	.size	.L.str.6, 5

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"0rand"
	.size	.L.str.7, 6

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"0rrand"
	.size	.L.str.8, 7

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"1sin"
	.size	.L.str.9, 5

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"1sqrt"
	.size	.L.str.10, 6

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"1srand"
	.size	.L.str.11, 7

	.type	zmath_op_defs,@object   # @zmath_op_defs
	.section	.rodata,"a",@progbits
	.globl	zmath_op_defs
	.align	16
zmath_op_defs:
	.quad	.L.str
	.quad	zarccos
	.quad	.L.str.1
	.quad	zarcsin
	.quad	.L.str.2
	.quad	zatan
	.quad	.L.str.3
	.quad	zcos
	.quad	.L.str.4
	.quad	zexp
	.quad	.L.str.5
	.quad	zln
	.quad	.L.str.6
	.quad	zlog
	.quad	.L.str.7
	.quad	zrand
	.quad	.L.str.8
	.quad	zrrand
	.quad	.L.str.9
	.quad	zsin
	.quad	.L.str.10
	.quad	zsqrt
	.quad	.L.str.11
	.quad	zsrand
	.zero	16
	.size	zmath_op_defs, 208


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
