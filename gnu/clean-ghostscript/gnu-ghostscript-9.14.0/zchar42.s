	.text
	.file	"zchar42.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	-4616189618054758400    # double -1
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI0_1:
	.long	1056964608              # float 0.5
.LCPI0_2:
	.long	1065353216              # float 1
	.text
	.globl	zchar42_set_cache
	.align	16, 0x90
	.type	zchar42_set_cache,@function
zchar42_set_cache:                      # @zchar42_set_cache
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
	subq	$216, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 272
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
	movq	%r9, 40(%rsp)           # 8-byte Spill
	movq	%r8, 48(%rsp)           # 8-byte Spill
	movl	%ecx, %r13d
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %rbx
	leaq	176(%rsp), %rdx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	zchar_get_metrics
	movl	%eax, %r12d
	movq	(%rbx), %rdi
	callq	gs_rootfont
	movl	148(%rax), %ebp
	movq	72(%r14), %rdi
	movq	$0, 56(%rsp)
	testl	%r12d, %r12d
	movl	%r12d, %eax
	js	.LBB0_19
# BB#1:                                 # %if.end
	leaq	56(%rsp), %rdx
	movl	$.L.str, %esi
	callq	dict_find_string
	testl	%ebp, %ebp
	je	.LBB0_2
# BB#9:                                 # %if.then.6
	movl	%eax, 36(%rsp)          # 4-byte Spill
	leaq	64(%rsp), %rcx
	movl	$4, %edx
	movq	%r14, %rdi
	movl	%r13d, %esi
	callq	*480(%r14)
	testl	%eax, %eax
	js	.LBB0_19
# BB#10:                                # %if.end.11
	movq	%rbx, %rbp
	movq	%r15, %rbx
	leaq	96(%rsp), %r15
	movl	$5, %edx
	movq	%r14, %rdi
	movl	%r13d, %esi
	movq	%r15, %rcx
	callq	*480(%r14)
	cmpl	$0, 36(%rsp)            # 4-byte Folded Reload
	jle	.LBB0_3
# BB#11:                                # %if.end.11
	testl	%eax, %eax
	jns	.LBB0_3
# BB#12:                                # %if.then.25
	movl	$0, 96(%rsp)
	movsd	400(%r14), %xmm0        # xmm0 = mem[0],zero
	addsd	.LCPI0_0(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 100(%rsp)
	movl	$0, 104(%rsp)
	movl	$-1082130432, 108(%rsp) # imm = 0xFFFFFFFFBF800000
	movb	$1, %al
	cmpl	$2, %r12d
	movq	%rbx, %rdx
	movq	%rbp, %rdi
	je	.LBB0_8
# BB#13:                                # %if.then.28
	movss	72(%rsp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	mulss	.LCPI0_1(%rip), %xmm1
	addss	.LCPI0_2(%rip), %xmm0
	unpcklps	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	cvtps2pd	%xmm1, %xmm0
	movdqa	%xmm0, 176(%rsp)
	testl	%r12d, %r12d
	movq	48(%rsp), %rsi          # 8-byte Reload
	movq	40(%rsp), %rbp          # 8-byte Reload
	leaq	176(%rsp), %rbx
	jne	.LBB0_15
# BB#14:                                # %if.then.40
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	pslldq	$8, %xmm0               # xmm0 = zero,zero,zero,zero,zero,zero,zero,zero,xmm0[0,1,2,3,4,5,6,7]
	movdqa	%xmm0, 192(%rsp)
	jmp	.LBB0_15
.LBB0_2:                                # %if.end.if.else.46_crit_edge
	movq	%rbx, %rbp
	movq	%r15, %rbx
	leaq	96(%rsp), %r15
.LBB0_3:                                # %if.else.46
	movl	$4, %edx
	movq	%r14, %rdi
	movl	%r13d, %esi
	movq	%r15, %rcx
	callq	*480(%r14)
	testl	%eax, %eax
	movq	%rbx, %rdx
	movq	%rbp, %rdi
	js	.LBB0_19
# BB#4:                                 # %if.end.54
	cmpl	$2, %r12d
	je	.LBB0_7
# BB#5:                                 # %if.then.57
	movq	96(%rsp), %xmm0         # xmm0 = mem[0],zero
	cvtps2pd	%xmm0, %xmm0
	movaps	%xmm0, 176(%rsp)
	testl	%r12d, %r12d
	jne	.LBB0_7
# BB#6:                                 # %if.then.67
	cvtps2pd	104(%rsp), %xmm0
	movaps	%xmm0, 192(%rsp)
.LBB0_7:                                # %if.end.75
	xorl	%eax, %eax
.LBB0_8:                                # %if.end.75
	movq	48(%rsp), %rsi          # 8-byte Reload
	movq	40(%rsp), %rbp          # 8-byte Reload
	leaq	176(%rsp), %rbx
.LBB0_15:                               # %if.end.75
	movaps	192(%rsp), %xmm0
	movaps	%xmm0, 160(%rsp)
	testb	%al, %al
	je	.LBB0_17
# BB#16:                                # %if.end.75.if.end.89_crit_edge
	movss	112(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movss	120(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB0_18
.LBB0_17:                               # %if.then.81
	movss	96(%rsp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movss	120(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	subss	112(%rsp), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, 120(%rsp)
	movss	%xmm1, 112(%rsp)
.LBB0_18:                               # %if.end.89
	movss	116(%rsp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	unpcklps	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	cvtps2pd	%xmm1, %xmm1
	movsd	384(%r14), %xmm2        # xmm2 = mem[0],zero
	movlhps	%xmm2, %xmm2            # xmm2 = xmm2[0,0]
	minpd	%xmm2, %xmm1
	movapd	%xmm1, 128(%rsp)
	movss	124(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	unpcklps	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	cvtps2pd	%xmm0, %xmm0
	movupd	392(%r14), %xmm1
	maxpd	%xmm1, %xmm0
	movapd	%xmm0, 144(%rsp)
	xorl	%ecx, %ecx
	testb	%al, %al
	cmoveq	%rcx, %rbx
	movq	%rbx, 16(%rsp)
	movq	%rbp, 8(%rsp)
	movq	%rsi, (%rsp)
	leaq	160(%rsp), %r8
	leaq	128(%rsp), %r9
	xorl	%ecx, %ecx
	movq	%r14, %rsi
	callq	zchar_set_cache
.LBB0_19:                               # %cleanup
	addq	$216, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	zchar42_set_cache, .Lfunc_end0-zchar42_set_cache
	.cfi_endproc

	.align	16, 0x90
	.type	ztype42execchar,@function
ztype42execchar:                        # @ztype42execchar
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
	subq	$40, %rsp
.Ltmp19:
	.cfi_def_cfa_offset 96
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
	movq	%rdi, %rbx
	movq	624(%rbx), %r14
	leaq	-48(%r14), %rdi
	leaq	32(%rsp), %rsi
	callq	font_param
	movl	%eax, %ebp
	movq	32(%rsp), %r15
	movq	%rbx, %rdi
	callq	op_show_find
	movq	%rax, %r13
	movl	$type42_fill, %r12d
	cmpl	$0, 152(%r15)
	je	.LBB1_2
# BB#1:                                 # %select.mid
	movl	$type42_stroke, %r12d
.LBB1_2:                                # %select.end
	movq	$0, 24(%rsp)
	testl	%ebp, %ebp
	js	.LBB1_23
# BB#3:                                 # %if.end
	movl	$-21, %ebp
	testq	%r13, %r13
	je	.LBB1_23
# BB#4:                                 # %lor.lhs.false
	movq	32(%rsp), %rax
	movl	128(%rax), %ecx
	cmpl	$42, %ecx
	je	.LBB1_6
# BB#5:                                 # %lor.lhs.false
	cmpl	$11, %ecx
	jne	.LBB1_23
.LBB1_6:                                # %if.end.8
	cmpl	$0, 152(%rax)
	je	.LBB1_8
# BB#7:                                 # %if.then.10
	movq	(%rbx), %rdi
	movss	156(%rax), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	callq	gs_setlinewidth
.LBB1_8:                                # %if.end.12
	movq	536(%rbx), %rax
	addq	$-48, %rax
	cmpq	%rax, 520(%rbx)
	jbe	.LBB1_10
# BB#9:                                 # %if.then.20
	leaq	520(%rbx), %rdi
	movl	$3, %esi
	callq	ref_stack_extend
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_23
.LBB1_10:                               # %if.end.28
	movzwl	(%r14), %eax
	andl	$15552, %eax            # imm = 0x3CC0
	cmpl	$1216, %eax             # imm = 0x4C0
	jne	.LBB1_12
# BB#11:                                # %if.then.32
	movq	%rbx, %rdi
	callq	zchar_exec_char_proc
	jmp	.LBB1_22
.LBB1_12:                               # %if.end.34
	movzbl	1(%r14), %eax
	cmpl	$11, %eax
	jne	.LBB1_13
# BB#14:                                # %if.end.42
	movq	640(%rbx), %rax
	subq	624(%rbx), %rax
	cmpq	$47, %rax
	jg	.LBB1_16
# BB#15:                                # %if.then.51
	movl	$3, 688(%rbx)
	movl	$-16, %ebp
	jmp	.LBB1_23
.LBB1_13:                               # %if.then.40
	movq	%r14, %rdi
	callq	check_type_failed
.LBB1_22:                               # %cleanup.84
	movl	%eax, %ebp
.LBB1_23:                               # %cleanup.84
	movl	%ebp, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_16:                               # %if.end.54
	movq	(%rbx), %rdi
	xorps	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	callq	gs_moveto
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_23
# BB#17:                                # %if.end.60
	leaq	-16(%r14), %rdx
	movl	8(%r14), %ebp
	cmpq	$0, 648(%r15)
	je	.LBB1_19
# BB#18:                                # %if.then.64
	movq	488(%r15), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movq	(%rbx), %rdi
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	callq	gs_rootfont
	movl	148(%rax), %edx
	movq	424(%r13), %rcx
	movq	%r15, %rdi
	movl	%ebp, %esi
	callq	*8(%rsp)                # 8-byte Folded Reload
	movq	16(%rsp), %rdx          # 8-byte Reload
	movl	%eax, %ebp
	movl	%ebp, %eax
	movq	%rax, 8(%r14)
	movw	$2816, (%r14)           # imm = 0xB00
.LBB1_19:                               # %if.end.74
	leaq	24(%rsp), %r9
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movl	%ebp, %ecx
	movq	%r12, %r8
	callq	zchar42_set_cache
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_23
# BB#20:                                # %if.end.74
	movq	24(%rsp), %rax
	testq	%rax, %rax
	je	.LBB1_23
# BB#21:                                # %if.then.81
	movq	%rbx, %rdi
	callq	*%rax
	jmp	.LBB1_22
.Lfunc_end1:
	.size	ztype42execchar, .Lfunc_end1-ztype42execchar
	.cfi_endproc

	.align	16, 0x90
	.type	type42_fill,@function
type42_fill:                            # @type42_fill
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp26:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp27:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp28:
	.cfi_def_cfa_offset 32
.Ltmp29:
	.cfi_offset %rbx, -24
.Ltmp30:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	(%rbx), %rax
	movq	300(%rax), %r14
	movl	$-1, 304(%rax)
	movl	$-1, 300(%rax)
	movl	$gs_fill, %esi
	callq	type42_finish
	movq	(%rbx), %rcx
	movq	%r14, 300(%rcx)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end2:
	.size	type42_fill, .Lfunc_end2-type42_fill
	.cfi_endproc

	.align	16, 0x90
	.type	type42_stroke,@function
type42_stroke:                          # @type42_stroke
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$gs_stroke, %esi
	jmp	type42_finish           # TAILCALL
.Lfunc_end3:
	.size	type42_stroke, .Lfunc_end3-type42_stroke
	.cfi_endproc

	.align	16, 0x90
	.type	type42_finish,@function
type42_finish:                          # @type42_finish
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
	pushq	%r13
.Ltmp34:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp35:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp36:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp37:
	.cfi_def_cfa_offset 80
.Ltmp38:
	.cfi_offset %rbx, -56
.Ltmp39:
	.cfi_offset %r12, -48
.Ltmp40:
	.cfi_offset %r13, -40
.Ltmp41:
	.cfi_offset %r14, -32
.Ltmp42:
	.cfi_offset %r15, -24
.Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %r12
	movq	624(%r12), %rbx
	callq	op_show_find
	movq	%rax, %r15
	movzbl	1(%rbx), %eax
	cmpl	$11, %eax
	jne	.LBB4_1
# BB#2:                                 # %if.end
	leaq	-48(%rbx), %rdi
	leaq	16(%rsp), %rsi
	callq	font_param
	testl	%eax, %eax
	js	.LBB4_39
# BB#3:                                 # %if.end.7
	movl	$-21, %eax
	testq	%r15, %r15
	je	.LBB4_39
# BB#4:                                 # %lor.lhs.false
	movq	16(%rsp), %r13
	movl	128(%r13), %ecx
	cmpl	$42, %ecx
	je	.LBB4_6
# BB#5:                                 # %lor.lhs.false
	cmpl	$11, %ecx
	jne	.LBB4_39
.LBB4_6:                                # %if.end.16
	cmpl	$0, 196(%r12)
	jne	.LBB4_35
# BB#7:                                 # %if.then.17
	movzbl	-15(%rbx), %eax
	cmpl	$13, %eax
	jne	.LBB4_35
# BB#8:                                 # %if.then.25
	leaq	-16(%rbx), %rsi
	movq	8(%r12), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	leaq	(%rsp), %rdx
	callq	names_string_ref
	movl	4(%rsp), %eax
	cmpl	$7, %eax
	jne	.LBB4_22
# BB#9:                                 # %land.lhs.true.30
	movl	$.L.str.2, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$6, %rcx
	ja	.LBB4_19
# BB#10:                                # %land.lhs.true.34
	movq	8(%rsp), %rdi
	cmpq	$3, %rcx
	ja	.LBB4_18
# BB#11:                                # %cond.true.38
	movzbl	(%rdi), %eax
	addl	$-46, %eax
	testq	%rcx, %rcx
	je	.LBB4_20
# BB#12:                                # %cond.true.38
	testl	%eax, %eax
	jne	.LBB4_20
# BB#13:                                # %if.then.49
	movzbl	1(%rdi), %eax
	addl	$-110, %eax
	cmpq	$2, %rcx
	jb	.LBB4_20
# BB#14:                                # %if.then.49
	testl	%eax, %eax
	jne	.LBB4_20
# BB#15:                                # %if.then.59
	movzbl	2(%rdi), %eax
	addl	$-111, %eax
	cmpq	$3, %rcx
	jb	.LBB4_20
# BB#16:                                # %if.then.59
	testl	%eax, %eax
	jne	.LBB4_20
# BB#17:                                # %if.then.69
	movzbl	3(%rdi), %eax
	addl	$-116, %eax
	jmp	.LBB4_20
.LBB4_1:                                # %if.then
	movq	%rbx, %rdi
	callq	check_type_failed
.LBB4_39:                               # %cleanup.200
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB4_19:                               # %cond.false.81
	movq	8(%rsp), %rdi
	movl	$.L.str.2, %esi
	movl	$7, %edx
	callq	strncmp
	jmp	.LBB4_20
.LBB4_18:                               # %cond.false
	movl	$.L.str.2, %esi
	callq	strcmp
.LBB4_20:                               # %cond.end.85
	testl	%eax, %eax
	je	.LBB4_38
# BB#21:                                # %lor.lhs.false.89thread-pre-split
	movl	4(%rsp), %eax
.LBB4_22:                               # %lor.lhs.false.89
	cmpl	$10, %eax
	jb	.LBB4_35
# BB#23:                                # %land.lhs.true.94
	movl	$.L.str.3, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$9, %rcx
	ja	.LBB4_33
# BB#24:                                # %land.lhs.true.104
	movq	8(%rsp), %rdi
	cmpq	$3, %rcx
	ja	.LBB4_32
# BB#25:                                # %cond.true.108
	movzbl	(%rdi), %eax
	addl	$-46, %eax
	testq	%rcx, %rcx
	je	.LBB4_34
# BB#26:                                # %cond.true.108
	testl	%eax, %eax
	jne	.LBB4_34
# BB#27:                                # %if.then.124
	movzbl	1(%rdi), %eax
	addl	$-110, %eax
	cmpq	$2, %rcx
	jb	.LBB4_34
# BB#28:                                # %if.then.124
	testl	%eax, %eax
	jne	.LBB4_34
# BB#29:                                # %if.then.134
	movzbl	2(%rdi), %eax
	addl	$-111, %eax
	cmpq	$3, %rcx
	jb	.LBB4_34
# BB#30:                                # %if.then.134
	testl	%eax, %eax
	jne	.LBB4_34
# BB#31:                                # %if.then.144
	movzbl	3(%rdi), %eax
	addl	$-116, %eax
	jmp	.LBB4_34
.LBB4_33:                               # %cond.false.159
	movq	8(%rsp), %rdi
	movl	$.L.str.3, %esi
	movl	$10, %edx
	callq	strncmp
	jmp	.LBB4_34
.LBB4_32:                               # %cond.false.153
	movl	$.L.str.3, %esi
	callq	strcmp
.LBB4_34:                               # %cond.end.163
	testl	%eax, %eax
	je	.LBB4_38
.LBB4_35:                               # %if.end.175
	movl	8(%rbx), %ebx
	cmpq	$0, 648(%r13)
	je	.LBB4_37
# BB#36:                                # %if.then.179
	movq	488(%r13), %rbp
	movq	(%r12), %rdi
	callq	gs_rootfont
	movl	148(%rax), %edx
	movq	424(%r15), %rcx
	movq	%r13, %rdi
	movl	%ebx, %esi
	callq	*%rbp
	movl	%eax, %ebx
.LBB4_37:                               # %if.end.184
	movq	(%r12), %rsi
	movq	1680(%rsi), %rdx
	movq	16(%rsp), %r8
	movl	(%r15), %eax
	testb	$-8, %ah
	setne	%al
	movzbl	%al, %r9d
	movl	%ebx, %edi
	movq	%r15, %rcx
	callq	gs_type42_append
	testl	%eax, %eax
	js	.LBB4_39
.LBB4_38:                               # %if.end.193
	addq	$-64, 624(%r12)
	movq	(%r12), %rdi
	callq	*%r14
	jmp	.LBB4_39
.Lfunc_end4:
	.size	type42_finish, .Lfunc_end4-type42_finish
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Path"
	.size	.L.str, 5

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"4.type42execchar"
	.size	.L.str.1, 17

	.type	zchar42_op_defs,@object # @zchar42_op_defs
	.section	.rodata,"a",@progbits
	.globl	zchar42_op_defs
	.align	16
zchar42_op_defs:
	.quad	.L.str.1
	.quad	ztype42execchar
	.zero	16
	.size	zchar42_op_defs, 32

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	".notdef"
	.size	.L.str.2, 8

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	".notdef~GS"
	.size	.L.str.3, 11


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
