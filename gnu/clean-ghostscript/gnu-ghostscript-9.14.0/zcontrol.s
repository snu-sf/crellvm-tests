	.text
	.file	"zcontrol.bc"
	.globl	zexec
	.align	16, 0x90
	.type	zexec,@function
zexec:                                  # @zexec
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp2:
	.cfi_def_cfa_offset 32
.Ltmp3:
	.cfi_offset %rbx, -32
.Ltmp4:
	.cfi_offset %r14, -24
.Ltmp5:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %r15
	movl	$-17, %eax
	cmpq	632(%rbx), %r15
	jb	.LBB0_12
# BB#1:                                 # %if.end
	movzwl	(%r15), %ecx
	testb	$64, %cl
	jne	.LBB0_5
# BB#2:                                 # %land.lhs.true.i
	movzbl	1(%r15), %edx
	testb	$1, ref_type_properties(%rdx)
	je	.LBB0_5
# BB#3:                                 # %land.lhs.true.7.i
	movl	$-7, %eax
	testb	$-128, %cl
	jne	.LBB0_12
# BB#4:                                 # %land.lhs.true.7.i
	movzbl	%dl, %edx
	cmpl	$2, %edx
	jne	.LBB0_12
.LBB0_5:                                # %if.end.5
	xorl	%eax, %eax
	testb	$-128, %cl
	je	.LBB0_12
# BB#6:                                 # %if.end.7
	leaq	520(%rbx), %r14
	movq	520(%rbx), %rax
	movq	536(%rbx), %rcx
	addq	$-16, %rcx
	cmpq	%rcx, %rax
	jbe	.LBB0_9
# BB#7:                                 # %if.then.15
	movl	$1, %esi
	movq	%r14, %rdi
	callq	ref_stack_extend
	testl	%eax, %eax
	js	.LBB0_12
# BB#8:                                 # %if.then.15.if.end.23_crit_edge
	movq	(%r14), %rax
.LBB0_9:                                # %if.end.23
	leaq	16(%rax), %rcx
	movq	%rcx, (%r14)
	movups	(%r15), %xmm0
	movups	%xmm0, 16(%rax)
	movq	(%r14), %rax
	movzwl	(%rax), %ecx
	andl	$16256, %ecx            # imm = 0x3F80
	cmpl	$896, %ecx              # imm = 0x380
	jne	.LBB0_11
# BB#10:                                # %if.then.39
	movq	%rax, 616(%rbx)
.LBB0_11:                               # %do.end
	addq	$-16, 624(%rbx)
	movl	$5, %eax
.LBB0_12:                               # %cleanup.49
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end0:
	.size	zexec, .Lfunc_end0-zexec
	.cfi_endproc

	.globl	zif
	.align	16, 0x90
	.type	zif,@function
zif:                                    # @zif
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp6:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp7:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp8:
	.cfi_def_cfa_offset 32
.Ltmp9:
	.cfi_offset %rbx, -32
.Ltmp10:
	.cfi_offset %r14, -24
.Ltmp11:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movzwl	(%rbx), %eax
	andl	$15552, %eax            # imm = 0x3CC0
	cmpl	$1216, %eax             # imm = 0x4C0
	jne	.LBB1_10
# BB#1:                                 # %do.end
	movzbl	-15(%rbx), %eax
	cmpl	$1, %eax
	jne	.LBB1_11
# BB#2:                                 # %if.end.11
	cmpw	$0, -8(%rbx)
	je	.LBB1_8
# BB#3:                                 # %if.then.13
	leaq	520(%r14), %r15
	movq	520(%r14), %rax
	movq	536(%r14), %rcx
	addq	$-16, %rcx
	cmpq	%rcx, %rax
	jbe	.LBB1_6
# BB#4:                                 # %if.then.20
	movl	$1, %esi
	movq	%r15, %rdi
	callq	ref_stack_extend
	testl	%eax, %eax
	js	.LBB1_9
# BB#5:                                 # %if.then.20.if.end.28_crit_edge
	movq	(%r15), %rax
.LBB1_6:                                # %if.end.28
	leaq	16(%rax), %rcx
	movq	%rcx, (%r15)
	movups	(%rbx), %xmm0
	movups	%xmm0, 16(%rax)
	movq	(%r15), %rax
	movzwl	(%rax), %ecx
	andl	$16256, %ecx            # imm = 0x3F80
	cmpl	$896, %ecx              # imm = 0x380
	jne	.LBB1_8
# BB#7:                                 # %if.then.45
	movq	%rax, 616(%r14)
.LBB1_8:                                # %if.end.53
	addq	$-32, 624(%r14)
	movl	$5, %eax
.LBB1_9:                                # %cleanup.58
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.LBB1_10:                               # %if.then
	movq	%rbx, %rdi
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	check_proc_failed       # TAILCALL
.LBB1_11:                               # %if.then.8
	addq	$-16, %rbx
	movq	%rbx, %rdi
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	check_type_failed       # TAILCALL
.Lfunc_end1:
	.size	zif, .Lfunc_end1-zif
	.cfi_endproc

	.globl	zifelse
	.align	16, 0x90
	.type	zifelse,@function
zifelse:                                # @zifelse
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp12:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp13:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp14:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp15:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp16:
	.cfi_def_cfa_offset 48
.Ltmp17:
	.cfi_offset %rbx, -40
.Ltmp18:
	.cfi_offset %r12, -32
.Ltmp19:
	.cfi_offset %r14, -24
.Ltmp20:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movzwl	(%rbx), %eax
	andl	$15552, %eax            # imm = 0x3CC0
	cmpl	$1216, %eax             # imm = 0x4C0
	jne	.LBB2_1
# BB#3:                                 # %do.body.2
	leaq	-16(%rbx), %r15
	movzwl	-16(%rbx), %eax
	andl	$15552, %eax            # imm = 0x3CC0
	cmpl	$1216, %eax             # imm = 0x4C0
	jne	.LBB2_4
# BB#5:                                 # %do.end.14
	movzbl	-31(%rbx), %eax
	cmpl	$1, %eax
	jne	.LBB2_16
# BB#6:                                 # %if.end.25
	leaq	520(%r14), %r12
	movq	520(%r14), %rax
	movq	536(%r14), %rcx
	addq	$-16, %rcx
	cmpq	%rcx, %rax
	jbe	.LBB2_9
# BB#7:                                 # %if.then.32
	movl	$1, %esi
	movq	%r12, %rdi
	callq	ref_stack_extend
	testl	%eax, %eax
	js	.LBB2_15
# BB#8:                                 # %if.then.32.if.end.40_crit_edge
	movq	(%r12), %rax
.LBB2_9:                                # %if.end.40
	addq	$16, %rax
	movq	%rax, (%r12)
	cmpw	$0, -24(%rbx)
	je	.LBB2_11
# BB#10:                                # %if.then.45
	movups	(%r15), %xmm0
	jmp	.LBB2_12
.LBB2_1:                                # %if.then
	movq	%rbx, %rdi
	jmp	.LBB2_2
.LBB2_4:                                # %if.then.9
	movq	%r15, %rdi
.LBB2_2:                                # %if.then
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	jmp	check_proc_failed       # TAILCALL
.LBB2_16:                               # %if.then.22
	addq	$-32, %rbx
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	jmp	check_type_failed       # TAILCALL
.LBB2_11:                               # %if.else
	movups	(%rbx), %xmm0
.LBB2_12:                               # %do.body.54
	movups	%xmm0, (%rax)
	movq	(%r12), %rax
	movzwl	(%rax), %ecx
	andl	$16256, %ecx            # imm = 0x3F80
	cmpl	$896, %ecx              # imm = 0x380
	jne	.LBB2_14
# BB#13:                                # %if.then.64
	movq	%rax, 616(%r14)
.LBB2_14:                               # %do.end.71
	addq	$-48, 624(%r14)
	movl	$5, %eax
.LBB2_15:                               # %cleanup.76
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end2:
	.size	zifelse, .Lfunc_end2-zifelse
	.cfi_endproc

	.globl	zfor
	.align	16, 0x90
	.type	zfor,@function
zfor:                                   # @zfor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp21:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp22:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp23:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp24:
	.cfi_def_cfa_offset 40
	subq	$24, %rsp
.Ltmp25:
	.cfi_def_cfa_offset 64
.Ltmp26:
	.cfi_offset %rbx, -40
.Ltmp27:
	.cfi_offset %r12, -32
.Ltmp28:
	.cfi_offset %r14, -24
.Ltmp29:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %r14
	leaq	-16(%r14), %r15
	leaq	12(%rsp), %rdx
	movl	$3, %esi
	movq	%r15, %rdi
	callq	float_params
	testl	%eax, %eax
	js	.LBB3_21
# BB#1:                                 # %if.end
	movss	12(%rsp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	xorps	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm1
	jne	.LBB3_4
	jp	.LBB3_4
# BB#2:                                 # %land.lhs.true
	movss	16(%rsp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jne	.LBB3_4
	jp	.LBB3_4
# BB#3:                                 # %if.then.7
	addq	$-64, 624(%rbx)
	xorl	%eax, %eax
	jmp	.LBB3_21
.LBB3_4:                                # %if.end.12
	movq	520(%rbx), %rax
	movq	536(%rbx), %rcx
	addq	$-112, %rcx
	cmpq	%rcx, %rax
	jbe	.LBB3_7
# BB#5:                                 # %if.then.20
	leaq	520(%rbx), %r12
	movl	$7, %esi
	movq	%r12, %rdi
	callq	ref_stack_extend
	testl	%eax, %eax
	js	.LBB3_21
# BB#6:                                 # %if.then.20.if.end.28_crit_edge
	movq	(%r12), %rax
.LBB3_7:                                # %if.end.28
	movzwl	(%r14), %ecx
	andl	$15552, %ecx            # imm = 0x3CC0
	cmpl	$1216, %ecx             # imm = 0x4C0
	jne	.LBB3_8
# BB#9:                                 # %do.end
	movzbl	-47(%r14), %ecx
	cmpl	$11, %ecx
	jne	.LBB3_19
# BB#10:                                # %land.lhs.true.46
	movzbl	-31(%r14), %ecx
	cmpl	$11, %ecx
	jne	.LBB3_19
# BB#11:                                # %if.then.54
	movq	-40(%r14), %rcx
	movq	%rcx, 40(%rax)
	movw	$2816, 32(%rax)         # imm = 0xB00
	movq	-24(%r14), %rcx
	movq	%rcx, 56(%rax)
	movw	$2816, 48(%rax)         # imm = 0xB00
	movzbl	-15(%r14), %edx
	cmpl	$16, %edx
	jne	.LBB3_12
# BB#16:                                # %sw.bb.85
	cvttss2si	-8(%r14), %rdx
	jmp	.LBB3_14
.LBB3_8:                                # %if.then.36
	movq	%r14, %rdi
	callq	check_proc_failed
	jmp	.LBB3_21
.LBB3_19:                               # %if.else.114
	movl	12(%rsp), %ecx
	movl	%ecx, 40(%rax)
	movw	$4096, 32(%rax)         # imm = 0x1000
	movl	16(%rsp), %ecx
	movl	%ecx, 56(%rax)
	movw	$4096, 48(%rax)         # imm = 0x1000
	movl	20(%rsp), %ecx
	movl	%ecx, 72(%rax)
	movw	$4096, 64(%rax)         # imm = 0x1000
	movq	$for_real_continue, 104(%rax)
.LBB3_20:                               # %if.end.142
	movw	$3968, 96(%rax)         # imm = 0xF80
	movl	$0, 100(%rax)
	movq	$no_cleanup, 24(%rax)
	movw	$3712, 16(%rax)         # imm = 0xE80
	movl	$2, 20(%rax)
	movups	(%r14), %xmm0
	movups	%xmm0, 80(%rax)
	leaq	96(%rax), %rax
	movq	%rax, 520(%rbx)
	addq	$-64, 624(%rbx)
	movl	$5, %eax
.LBB3_21:                               # %cleanup.160
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.LBB3_12:                               # %if.then.54
	cmpl	$11, %edx
	jne	.LBB3_17
# BB#13:                                # %sw.bb
	movq	-8(%r14), %rdx
.LBB3_14:                               # %sw.epilog
	movq	%rdx, 72(%rax)
	movw	$2816, 64(%rax)         # imm = 0xB00
	testq	%rcx, %rcx
	js	.LBB3_18
# BB#15:                                # %if.then.102
	movq	$for_pos_int_continue, 104(%rax)
	jmp	.LBB3_20
.LBB3_17:                               # %sw.default
	movq	%r15, %rdi
	callq	check_type_failed
	jmp	.LBB3_21
.LBB3_18:                               # %if.else
	movq	$for_neg_int_continue, 104(%rax)
	jmp	.LBB3_20
.Lfunc_end3:
	.size	zfor, .Lfunc_end3-zfor
	.cfi_endproc

	.align	16, 0x90
	.type	for_pos_int_continue,@function
for_pos_int_continue:                   # @for_pos_int_continue
	.cfi_startproc
# BB#0:                                 # %entry
	movq	520(%rdi), %rax
	movslq	-40(%rax), %rcx
	cmpq	-8(%rax), %rcx
	jle	.LBB4_2
# BB#1:                                 # %if.then
	addq	$-80, %rax
	movq	%rax, 520(%rdi)
	movl	$14, %eax
	retq
.LBB4_2:                                # %do.body
	movq	624(%rdi), %rdx
	leaq	16(%rdx), %rsi
	cmpq	640(%rdi), %rsi
	jbe	.LBB4_4
# BB#3:                                 # %if.then.16
	movl	$1, 688(%rdi)
	movl	$-16, %eax
	retq
.LBB4_4:                                # %if.else
	movq	%rsi, 624(%rdi)
	movq	%rcx, 24(%rdx)
	movw	$2816, 16(%rdx)         # imm = 0xB00
	addq	-24(%rax), %rcx
	movq	%rcx, -40(%rax)
	movups	(%rax), %xmm0
	movups	%xmm0, 32(%rax)
	leaq	32(%rax), %rax
	movq	%rax, 520(%rdi)
	movl	$5, %eax
	retq
.Lfunc_end4:
	.size	for_pos_int_continue, .Lfunc_end4-for_pos_int_continue
	.cfi_endproc

	.align	16, 0x90
	.type	for_neg_int_continue,@function
for_neg_int_continue:                   # @for_neg_int_continue
	.cfi_startproc
# BB#0:                                 # %entry
	movq	520(%rdi), %rax
	movslq	-40(%rax), %rcx
	cmpq	-8(%rax), %rcx
	jge	.LBB5_2
# BB#1:                                 # %if.then
	addq	$-80, %rax
	movq	%rax, 520(%rdi)
	movl	$14, %eax
	retq
.LBB5_2:                                # %do.body
	movq	624(%rdi), %rdx
	leaq	16(%rdx), %rsi
	cmpq	640(%rdi), %rsi
	jbe	.LBB5_4
# BB#3:                                 # %if.then.16
	movl	$1, 688(%rdi)
	movl	$-16, %eax
	retq
.LBB5_4:                                # %if.else
	movq	%rsi, 624(%rdi)
	movq	%rcx, 24(%rdx)
	movw	$2816, 16(%rdx)         # imm = 0xB00
	addq	-24(%rax), %rcx
	movq	%rcx, -40(%rax)
	movups	(%rax), %xmm0
	movups	%xmm0, 32(%rax)
	leaq	32(%rax), %rax
	movq	%rax, 520(%rdi)
	movl	$5, %eax
	retq
.Lfunc_end5:
	.size	for_neg_int_continue, .Lfunc_end5-for_neg_int_continue
	.cfi_endproc

	.align	16, 0x90
	.type	for_real_continue,@function
for_real_continue:                      # @for_real_continue
	.cfi_startproc
# BB#0:                                 # %entry
	movq	520(%rdi), %rax
	movq	624(%rdi), %rcx
	movss	-40(%rax), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	-24(%rax), %xmm1        # xmm1 = mem[0],zero,zero,zero
	xorps	%xmm2, %xmm2
	ucomiss	%xmm2, %xmm1
	movss	-8(%rax), %xmm2         # xmm2 = mem[0],zero,zero,zero
	jae	.LBB6_1
# BB#4:                                 # %cond.false
	ucomiss	%xmm0, %xmm2
	jbe	.LBB6_2
	jmp	.LBB6_5
.LBB6_1:                                # %cond.true
	ucomiss	%xmm2, %xmm0
	jbe	.LBB6_2
.LBB6_5:                                # %if.then
	addq	$-80, %rax
	movq	%rax, 520(%rdi)
	movl	$14, %eax
	retq
.LBB6_2:                                # %do.body
	addq	$16, %rcx
	cmpq	640(%rdi), %rcx
	jbe	.LBB6_6
# BB#3:                                 # %if.then.21
	movl	$1, 688(%rdi)
	movl	$-16, %eax
	retq
.LBB6_6:                                # %if.else
	leaq	-48(%rax), %rdx
	movq	%rcx, 624(%rdi)
	movups	(%rdx), %xmm2
	movups	%xmm2, (%rcx)
	addss	%xmm1, %xmm0
	movss	%xmm0, -40(%rax)
	leaq	32(%rax), %rcx
	movq	%rcx, 520(%rdi)
	movups	(%rax), %xmm0
	movups	%xmm0, 32(%rax)
	movl	$5, %eax
	retq
.Lfunc_end6:
	.size	for_real_continue, .Lfunc_end6-for_real_continue
	.cfi_endproc

	.align	16, 0x90
	.type	no_cleanup,@function
no_cleanup:                             # @no_cleanup
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end7:
	.size	no_cleanup, .Lfunc_end7-no_cleanup
	.cfi_endproc

	.globl	zfor_samples
	.align	16, 0x90
	.type	zfor_samples,@function
zfor_samples:                           # @zfor_samples
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp30:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp31:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp32:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp33:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp34:
	.cfi_def_cfa_offset 48
.Ltmp35:
	.cfi_offset %rbx, -40
.Ltmp36:
	.cfi_offset %r12, -32
.Ltmp37:
	.cfi_offset %r14, -24
.Ltmp38:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	leaq	-48(%rbx), %r15
	movzbl	-47(%rbx), %eax
	cmpl	$16, %eax
	jne	.LBB8_1
# BB#3:                                 # %if.end
	movzbl	-31(%rbx), %eax
	cmpl	$11, %eax
	jne	.LBB8_4
# BB#6:                                 # %if.end.14
	movzbl	-15(%rbx), %eax
	cmpl	$16, %eax
	jne	.LBB8_7
# BB#8:                                 # %do.body
	movzwl	(%rbx), %eax
	andl	$15552, %eax            # imm = 0x3CC0
	cmpl	$1216, %eax             # imm = 0x4C0
	jne	.LBB8_14
# BB#9:                                 # %do.end
	movq	520(%r14), %r12
	movq	536(%r14), %rax
	addq	$-128, %rax
	cmpq	%rax, %r12
	jbe	.LBB8_12
# BB#10:                                # %if.then.40
	leaq	520(%r14), %r12
	movl	$8, %esi
	movq	%r12, %rdi
	callq	ref_stack_extend
	testl	%eax, %eax
	js	.LBB8_13
# BB#11:                                # %if.then.40.if.end.48_crit_edge
	movq	(%r12), %r12
.LBB8_12:                               # %if.end.48
	movq	$no_cleanup, 24(%r12)
	movw	$3712, 16(%r12)         # imm = 0xE80
	movl	$2, 20(%r12)
	movq	$0, 40(%r12)
	movw	$2816, 32(%r12)         # imm = 0xB00
	leaq	48(%r12), %rdi
	movl	$48, %edx
	movq	%r15, %rsi
	callq	memcpy
	movups	(%rbx), %xmm0
	movups	%xmm0, 96(%r12)
	movq	$for_samples_continue, 120(%r12)
	movw	$3968, 112(%r12)        # imm = 0xF80
	movl	$0, 116(%r12)
	leaq	112(%r12), %rax
	movq	%rax, 520(%r14)
	addq	$-64, 624(%r14)
	movl	$5, %eax
.LBB8_13:                               # %cleanup.81
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.LBB8_1:                                # %if.then
	movq	%r15, %rdi
	jmp	.LBB8_2
.LBB8_4:                                # %if.then.11
	addq	$-32, %rbx
	movq	%rbx, %rdi
	jmp	.LBB8_2
.LBB8_7:                                # %if.then.22
	addq	$-16, %rbx
	movq	%rbx, %rdi
.LBB8_2:                                # %if.then
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	jmp	check_type_failed       # TAILCALL
.LBB8_14:                               # %if.then.31
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	jmp	check_proc_failed       # TAILCALL
.Lfunc_end8:
	.size	zfor_samples, .Lfunc_end8-zfor_samples
	.cfi_endproc

	.align	16, 0x90
	.type	for_samples_continue,@function
for_samples_continue:                   # @for_samples_continue
	.cfi_startproc
# BB#0:                                 # %entry
	movq	520(%rdi), %rax
	movq	-56(%rax), %rcx
	movl	-24(%rax), %esi
	movl	%esi, %edx
	subl	%ecx, %edx
	jge	.LBB9_2
# BB#1:                                 # %if.then
	addq	$-96, %rax
	movq	%rax, 520(%rdi)
	movl	$14, %eax
	retq
.LBB9_2:                                # %do.body
	movq	624(%rdi), %r8
	leaq	16(%r8), %r9
	cmpq	640(%rdi), %r9
	jbe	.LBB9_4
# BB#3:                                 # %if.then.21
	movl	$1, 688(%rdi)
	movl	$-16, %eax
	retq
.LBB9_4:                                # %if.else
	movss	-40(%rax), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	-8(%rax), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%r9, 624(%rdi)
	cvtsi2ssl	%edx, %xmm2
	mulss	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ecx, %xmm0
	mulss	%xmm1, %xmm0
	addss	%xmm2, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%esi, %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, 24(%r8)
	movw	$4096, 16(%r8)          # imm = 0x1000
	shlq	$32, %rcx
	movabsq	$4294967296, %rdx       # imm = 0x100000000
	addq	%rcx, %rdx
	sarq	$32, %rdx
	movq	%rdx, -56(%rax)
	movups	(%rax), %xmm0
	movups	%xmm0, 32(%rax)
	leaq	32(%rax), %rax
	movq	%rax, 520(%rdi)
	movl	$5, %eax
	retq
.Lfunc_end9:
	.size	for_samples_continue, .Lfunc_end9-for_samples_continue
	.cfi_endproc

	.globl	zrepeat
	.align	16, 0x90
	.type	zrepeat,@function
zrepeat:                                # @zrepeat
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp39:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp40:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp41:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp42:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp43:
	.cfi_def_cfa_offset 48
.Ltmp44:
	.cfi_offset %rbx, -40
.Ltmp45:
	.cfi_offset %r12, -32
.Ltmp46:
	.cfi_offset %r14, -24
.Ltmp47:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movzwl	(%rbx), %eax
	andl	$15552, %eax            # imm = 0x3CC0
	cmpl	$1216, %eax             # imm = 0x4C0
	jne	.LBB10_10
# BB#1:                                 # %do.end
	leaq	-16(%rbx), %r15
	movzbl	-15(%rbx), %eax
	cmpl	$11, %eax
	jne	.LBB10_11
# BB#2:                                 # %if.end.11
	movl	$-15, %eax
	cmpq	$0, -8(%rbx)
	js	.LBB10_9
# BB#3:                                 # %if.end.16
	movq	520(%r14), %rax
	movq	536(%r14), %rcx
	addq	$-80, %rcx
	cmpq	%rcx, %rax
	jbe	.LBB10_6
# BB#4:                                 # %if.then.23
	leaq	520(%r14), %r12
	movl	$5, %esi
	movq	%r12, %rdi
	callq	ref_stack_extend
	testl	%eax, %eax
	js	.LBB10_9
# BB#5:                                 # %if.then.23.if.end.31_crit_edge
	movq	(%r12), %rax
.LBB10_6:                               # %if.end.31
	leaq	16(%rax), %rcx
	movq	%rcx, 520(%r14)
	movq	$no_cleanup, 24(%rax)
	movq	520(%r14), %rax
	movw	$3712, (%rax)           # imm = 0xE80
	movl	$2, 4(%rax)
	leaq	16(%rax), %rcx
	movq	%rcx, 520(%r14)
	movups	(%r15), %xmm0
	movups	%xmm0, 16(%rax)
	movq	520(%r14), %rax
	leaq	16(%rax), %rcx
	movq	%rcx, 520(%r14)
	movups	(%rbx), %xmm0
	movups	%xmm0, 16(%rax)
	movq	520(%r14), %rax
	movq	$repeat_continue, 24(%rax)
	movq	520(%r14), %rax
	movw	$3968, 16(%rax)         # imm = 0xF80
	movl	$0, 20(%rax)
	addq	$-32, 624(%r14)
	movq	-8(%rax), %rcx
	leaq	-1(%rcx), %rdx
	movq	%rdx, -8(%rax)
	testq	%rcx, %rcx
	jle	.LBB10_8
# BB#7:                                 # %if.then.i
	leaq	32(%rax), %rcx
	movq	%rcx, 520(%r14)
	movups	(%rax), %xmm0
	movups	%xmm0, 32(%rax)
	movl	$5, %eax
	jmp	.LBB10_9
.LBB10_10:                              # %if.then
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	jmp	check_proc_failed       # TAILCALL
.LBB10_11:                              # %if.then.8
	movq	%r15, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	jmp	check_type_failed       # TAILCALL
.LBB10_8:                               # %if.else.i
	addq	$-48, %rax
	movq	%rax, 520(%r14)
	movl	$14, %eax
.LBB10_9:                               # %cleanup.80
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end10:
	.size	zrepeat, .Lfunc_end10-zrepeat
	.cfi_endproc

	.align	16, 0x90
	.type	repeat_continue,@function
repeat_continue:                        # @repeat_continue
	.cfi_startproc
# BB#0:                                 # %entry
	movq	520(%rdi), %rax
	movq	-8(%rax), %rcx
	leaq	-1(%rcx), %rdx
	movq	%rdx, -8(%rax)
	testq	%rcx, %rcx
	jle	.LBB11_2
# BB#1:                                 # %if.then
	leaq	32(%rax), %rcx
	movq	%rcx, 520(%rdi)
	movups	(%rax), %xmm0
	movups	%xmm0, 32(%rax)
	movl	$5, %eax
	retq
.LBB11_2:                               # %if.else
	addq	$-48, %rax
	movq	%rax, 520(%rdi)
	movl	$14, %eax
	retq
.Lfunc_end11:
	.size	repeat_continue, .Lfunc_end11-repeat_continue
	.cfi_endproc

	.align	16, 0x90
	.type	zcond,@function
zcond:                                  # @zcond
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp48:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp49:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp50:
	.cfi_def_cfa_offset 32
.Ltmp51:
	.cfi_offset %rbx, -32
.Ltmp52:
	.cfi_offset %r14, -24
.Ltmp53:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movzwl	(%rbx), %ecx
	movl	%ecx, %eax
	andl	$15360, %eax            # imm = 0x3C00
	cmpl	$1024, %eax             # imm = 0x400
	jne	.LBB12_10
# BB#1:                                 # %do.body
	movl	$-7, %eax
	testb	$64, %cl
	je	.LBB12_9
# BB#2:                                 # %do.end
	movl	4(%rbx), %ecx
	movl	$-15, %eax
	testb	$1, %cl
	jne	.LBB12_9
# BB#3:                                 # %if.end.15
	testl	%ecx, %ecx
	je	.LBB12_11
# BB#4:                                 # %if.end.22
	movq	520(%r14), %r15
	movq	536(%r14), %rax
	addq	$-48, %rax
	cmpq	%rax, %r15
	jbe	.LBB12_6
# BB#5:                                 # %if.then.30
	leaq	520(%r14), %rdi
	movl	$3, %esi
	callq	ref_stack_extend
	testl	%eax, %eax
	js	.LBB12_9
.LBB12_6:                               # %if.end.38
	leaq	48(%r15), %rcx
	movq	%rcx, 520(%r14)
	movups	(%rbx), %xmm0
	movups	%xmm0, 16(%r15)
	movq	$cond_continue, 40(%r15)
	movw	$3968, 32(%r15)         # imm = 0xF80
	movl	$0, 36(%r15)
	movq	8(%r14), %rdi
	xorl	%edx, %edx
	movq	%rbx, %rsi
	callq	array_get
	movq	520(%r14), %rax
	movzwl	(%rax), %ecx
	andl	$16256, %ecx            # imm = 0x3F80
	cmpl	$896, %ecx              # imm = 0x380
	jne	.LBB12_8
# BB#7:                                 # %if.then.62
	movq	%rax, 616(%r14)
.LBB12_8:                               # %do.end.69
	addq	$-16, 624(%r14)
	movl	$5, %eax
.LBB12_9:                               # %cleanup.74
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.LBB12_10:                              # %if.then
	movq	%rbx, %rdi
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	check_type_failed       # TAILCALL
.LBB12_11:                              # %if.then.20
	movq	%r14, %rdi
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	zpop                    # TAILCALL
.Lfunc_end12:
	.size	zcond, .Lfunc_end12-zcond
	.cfi_endproc

	.align	16, 0x90
	.type	zcountexecstack,@function
zcountexecstack:                        # @zcountexecstack
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp55:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp56:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp57:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp58:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp59:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp60:
	.cfi_def_cfa_offset 64
.Ltmp61:
	.cfi_offset %rbx, -56
.Ltmp62:
	.cfi_offset %r12, -48
.Ltmp63:
	.cfi_offset %r13, -40
.Ltmp64:
	.cfi_offset %r14, -32
.Ltmp65:
	.cfi_offset %r15, -24
.Ltmp66:
	.cfi_offset %rbp, -16
	movq	%rdi, %r15
	movq	624(%r15), %r12
	leaq	16(%r12), %rax
	cmpq	640(%r15), %rax
	jbe	.LBB13_2
# BB#1:                                 # %if.then
	movl	$1, 688(%r15)
	movl	$-16, %r14d
	jmp	.LBB13_7
.LBB13_2:                               # %if.else
	movq	%rax, 624(%r15)
	addq	$520, %r15              # imm = 0x208
	movq	%r15, %rdi
	callq	ref_stack_count
	movl	%eax, %r13d
	xorl	%r14d, %r14d
	testl	%r13d, %r13d
	movl	$0, %eax
	je	.LBB13_6
# BB#3:                                 # %for.body.lr.ph.i
	movl	%r13d, %ebx
	decl	%ebx
	movl	%r13d, %ebp
	.align	16, 0x90
.LBB13_4:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	ref_stack_index
	movzwl	(%rax), %eax
	andl	$16256, %eax            # imm = 0x3F80
	cmpl	$3712, %eax             # imm = 0xE80
	sete	%al
	movzbl	%al, %eax
	subl	%eax, %ebp
	decq	%rbx
	decl	%r13d
	jne	.LBB13_4
# BB#5:                                 # %count_exec_stack.exit.loopexit
	movl	%ebp, %eax
.LBB13_6:                               # %count_exec_stack.exit
	movq	%rax, 24(%r12)
	movw	$2816, 16(%r12)         # imm = 0xB00
.LBB13_7:                               # %cleanup
	movl	%r14d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	zcountexecstack, .Lfunc_end13-zcountexecstack
	.cfi_endproc

	.align	16, 0x90
	.type	zcountexecstack1,@function
zcountexecstack1:                       # @zcountexecstack1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp67:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp68:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp69:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp70:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp71:
	.cfi_def_cfa_offset 48
.Ltmp72:
	.cfi_offset %rbx, -48
.Ltmp73:
	.cfi_offset %r12, -40
.Ltmp74:
	.cfi_offset %r14, -32
.Ltmp75:
	.cfi_offset %r15, -24
.Ltmp76:
	.cfi_offset %rbp, -16
	movq	%rdi, %r15
	movq	624(%r15), %r14
	movzbl	1(%r14), %eax
	cmpl	$1, %eax
	jne	.LBB14_7
# BB#1:                                 # %if.end
	addq	$520, %r15              # imm = 0x208
	movw	8(%r14), %bx
	movq	%r15, %rdi
	callq	ref_stack_count
	movl	%eax, %r12d
	cmpw	$0, %bx
	je	.LBB14_3
# BB#2:
	movl	%r12d, %ebp
	jmp	.LBB14_6
.LBB14_7:                               # %if.then
	movq	%r14, %rdi
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	check_type_failed       # TAILCALL
.LBB14_3:                               # %for.cond.preheader.i
	xorl	%ebp, %ebp
	testl	%r12d, %r12d
	je	.LBB14_6
# BB#4:                                 # %for.body.lr.ph.i
	movl	%r12d, %ebx
	decl	%ebx
	movl	%r12d, %ebp
	.align	16, 0x90
.LBB14_5:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	ref_stack_index
	movzwl	(%rax), %eax
	andl	$16256, %eax            # imm = 0x3F80
	cmpl	$3712, %eax             # imm = 0xE80
	sete	%al
	movzbl	%al, %eax
	subl	%eax, %ebp
	decq	%rbx
	decl	%r12d
	jne	.LBB14_5
.LBB14_6:                               # %cleanup
	movl	%ebp, %eax
	movq	%rax, 8(%r14)
	movw	$2816, (%r14)           # imm = 0xB00
	xorl	%eax, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	zcountexecstack1, .Lfunc_end14-zcountexecstack1
	.cfi_endproc

	.align	16, 0x90
	.type	zcurrentfile,@function
zcurrentfile:                           # @zcurrentfile
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp77:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp78:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp79:
	.cfi_def_cfa_offset 32
	subq	$32, %rsp
.Ltmp80:
	.cfi_def_cfa_offset 64
.Ltmp81:
	.cfi_offset %rbx, -32
.Ltmp82:
	.cfi_offset %r14, -24
.Ltmp83:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	addq	$16, %rbx
	cmpq	640(%r14), %rbx
	jbe	.LBB15_2
# BB#1:                                 # %if.then
	movl	$1, 688(%r14)
	movl	$-16, %eax
	jmp	.LBB15_13
.LBB15_2:                               # %if.else
	movq	%rbx, 624(%r14)
	movq	616(%r14), %rax
	testq	%rax, %rax
	je	.LBB15_4
# BB#3:                                 # %if.then.9
	movups	(%rax), %xmm0
	movups	%xmm0, (%rbx)
	jmp	.LBB15_12
.LBB15_4:                               # %if.else.12
	leaq	520(%r14), %rsi
	leaq	8(%rsp), %r15
	movq	%r15, %rdi
	callq	ref_stack_enum_begin
.LBB15_5:                               # %do.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_8 Depth 2
	movl	24(%rsp), %eax
	testq	%rax, %rax
	je	.LBB15_10
# BB#6:                                 # %for.body.lr.ph.i
                                        #   in Loop: Header=BB15_5 Depth=1
	movq	16(%rsp), %rcx
	movq	%rax, %rdx
	shlq	$4, %rdx
	leaq	-16(%rcx,%rdx), %rcx
	.align	16, 0x90
.LBB15_8:                               # %for.body.i
                                        #   Parent Loop BB15_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%rcx), %edx
	andl	$16256, %edx            # imm = 0x3F80
	cmpl	$896, %edx              # imm = 0x380
	je	.LBB15_9
# BB#7:                                 # %for.cond.i
                                        #   in Loop: Header=BB15_8 Depth=2
	decl	%eax
	addq	$-16, %rcx
	testl	%eax, %eax
	jne	.LBB15_8
.LBB15_10:                              # %do.cond.i
                                        #   in Loop: Header=BB15_5 Depth=1
	movq	%r15, %rdi
	callq	ref_stack_enum_next
	testl	%eax, %eax
	jne	.LBB15_5
# BB#11:                                # %if.then.14
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	make_invalid_file
	jmp	.LBB15_12
.LBB15_9:                               # %if.else.15
	movups	(%rcx), %xmm0
	movups	%xmm0, (%rbx)
	movq	%rcx, 616(%r14)
.LBB15_12:                              # %if.end.19
	andb	$127, (%rbx)
	xorl	%eax, %eax
.LBB15_13:                              # %cleanup
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end15:
	.size	zcurrentfile, .Lfunc_end15-zcurrentfile
	.cfi_endproc

	.align	16, 0x90
	.type	zexecn,@function
zexecn:                                 # @zexecn
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp84:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp85:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp86:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp87:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp88:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp89:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp90:
	.cfi_def_cfa_offset 64
.Ltmp91:
	.cfi_offset %rbx, -56
.Ltmp92:
	.cfi_offset %r12, -48
.Ltmp93:
	.cfi_offset %r13, -40
.Ltmp94:
	.cfi_offset %r14, -32
.Ltmp95:
	.cfi_offset %r15, -24
.Ltmp96:
	.cfi_offset %rbp, -16
	movq	%rdi, %r13
	movq	624(%r13), %rdi
	movzbl	1(%rdi), %eax
	cmpl	$11, %eax
	jne	.LBB16_18
# BB#1:                                 # %if.end
	movl	$4294967295, %ebx       # imm = 0xFFFFFFFF
	movq	8(%rdi), %rbp
	leaq	-1(%rbx), %rcx
	movl	$-15, %eax
	cmpq	%rcx, %rbp
	ja	.LBB16_17
# BB#2:                                 # %do.end
	movq	%rbp, %r14
	andq	%rbx, %r14
	movq	%r14, %rcx
	shlq	$4, %rcx
	movq	632(%r13), %rdx
	addq	%rcx, %rdx
	movl	$-17, %eax
	cmpq	%rdx, %rdi
	jb	.LBB16_17
# BB#3:                                 # %if.end.14
	leaq	520(%r13), %r15
	movq	520(%r13), %rdx
	movq	536(%r13), %rax
	subq	%rcx, %rax
	cmpq	%rax, %rdx
	jbe	.LBB16_6
# BB#4:                                 # %if.then.23
	movq	%r15, %rdi
	movl	%ebp, %esi
	callq	ref_stack_extend
	testl	%eax, %eax
	js	.LBB16_17
# BB#5:                                 # %if.then.23.if.end.31_crit_edge
	movq	(%r15), %rdx
.LBB16_6:                               # %if.end.31
	leaq	624(%r13), %r12
	testl	%ebp, %ebp
	je	.LBB16_14
# BB#7:                                 # %for.body.lr.ph
	movq	%rdx, (%rsp)            # 8-byte Spill
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB16_8:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	incq	%rbx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	ref_stack_index
	movzbl	1(%rax), %edx
	movzwl	(%rax), %ecx
	testb	$1, ref_type_properties(%rdx)
	je	.LBB16_10
# BB#9:                                 # %for.body
                                        #   in Loop: Header=BB16_8 Depth=1
	movl	%ecx, %edx
	andl	$192, %edx
	movzwl	%dx, %edx
	cmpl	$128, %edx
	je	.LBB16_19
.LBB16_10:                              # %if.end.64
                                        #   in Loop: Header=BB16_8 Depth=1
	andl	$16256, %ecx            # imm = 0x3F80
	cmpl	$3712, %ecx             # imm = 0xE80
	je	.LBB16_12
# BB#11:                                # %if.then.71
                                        #   in Loop: Header=BB16_8 Depth=1
	movq	(%r15), %rcx
	leaq	16(%rcx), %rdx
	movq	%rdx, (%r15)
	movups	(%rax), %xmm0
	movups	%xmm0, 16(%rcx)
.LBB16_12:                              # %for.cond.backedge
                                        #   in Loop: Header=BB16_8 Depth=1
	cmpq	%r14, %rbx
	jb	.LBB16_8
# BB#13:                                # %for.cond.do.body.82_crit_edge
	movq	(%r15), %rdx
	movl	$4294967295, %ebx       # imm = 0xFFFFFFFF
.LBB16_14:                              # %do.body.82
	incq	%rbp
	movzwl	(%rdx), %eax
	andl	$16256, %eax            # imm = 0x3F80
	cmpl	$896, %eax              # imm = 0x380
	jne	.LBB16_16
# BB#15:                                # %if.then.92
	movq	%rdx, 616(%r13)
.LBB16_16:                              # %do.end.99
	andq	%rbx, %rbp
	shlq	$4, %rbp
	subq	%rbp, (%r12)
	movl	$5, %eax
	jmp	.LBB16_17
.LBB16_18:                              # %if.then
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	check_type_failed       # TAILCALL
.LBB16_19:                              # %cleanup.79
	movq	(%rsp), %rax            # 8-byte Reload
	movq	%rax, (%r15)
	movl	$-7, %eax
.LBB16_17:                              # %cleanup.107
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end16:
	.size	zexecn, .Lfunc_end16-zexecn
	.cfi_endproc

	.align	16, 0x90
	.type	zexecstack,@function
zexecstack:                             # @zexecstack
	.cfi_startproc
# BB#0:                                 # %entry
	movq	624(%rdi), %rsi
	xorl	%edx, %edx
	movl	$execstack_continue, %ecx
	jmp	push_execstack          # TAILCALL
.Lfunc_end17:
	.size	zexecstack, .Lfunc_end17-zexecstack
	.cfi_endproc

	.align	16, 0x90
	.type	zexecstack2,@function
zexecstack2:                            # @zexecstack2
	.cfi_startproc
# BB#0:                                 # %entry
	movq	624(%rdi), %rsi
	movzbl	1(%rsi), %eax
	cmpl	$1, %eax
	jne	.LBB18_1
# BB#2:                                 # %if.end
	movzwl	8(%rsi), %edx
	addq	$-16, %rsi
	movl	$execstack2_continue, %ecx
	jmp	push_execstack          # TAILCALL
.LBB18_1:                               # %if.then
	movq	%rsi, %rdi
	jmp	check_type_failed       # TAILCALL
.Lfunc_end18:
	.size	zexecstack2, .Lfunc_end18-zexecstack2
	.cfi_endproc

	.align	16, 0x90
	.type	zexit,@function
zexit:                                  # @zexit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp97:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp98:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp99:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp100:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp101:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp102:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp103:
	.cfi_def_cfa_offset 96
.Ltmp104:
	.cfi_offset %rbx, -56
.Ltmp105:
	.cfi_offset %r12, -48
.Ltmp106:
	.cfi_offset %r13, -40
.Ltmp107:
	.cfi_offset %r14, -32
.Ltmp108:
	.cfi_offset %r15, -24
.Ltmp109:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %r15
	leaq	520(%rbx), %r14
	leaq	16(%rsp), %r12
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	ref_stack_enum_begin
	xorl	%ebp, %ebp
.LBB19_1:                               # %do.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_3 Depth 2
	movl	32(%rsp), %ecx
	testq	%rcx, %rcx
	je	.LBB19_13
# BB#2:                                 # %for.body.lr.ph
                                        #   in Loop: Header=BB19_1 Depth=1
	movq	24(%rsp), %rax
	movq	%rcx, %rdx
	shlq	$4, %rdx
	leaq	-12(%rax,%rdx), %rsi
	movl	%ecx, %edx
.LBB19_3:                               # %for.body
                                        #   Parent Loop BB19_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	-4(%rsi), %eax
	andl	$16256, %eax            # imm = 0x3F80
	cmpl	$3712, %eax             # imm = 0xE80
	jne	.LBB19_12
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB19_3 Depth=2
	movl	(%rsi), %edi
	movl	$-8, %eax
	cmpl	$3, %edi
	je	.LBB19_17
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB19_3 Depth=2
	cmpl	$2, %edi
	je	.LBB19_6
.LBB19_12:                              # %for.inc
                                        #   in Loop: Header=BB19_3 Depth=2
	addq	$-16, %rsi
	decl	%edx
	jne	.LBB19_3
	.align	16, 0x90
.LBB19_13:                              # %do.cond
                                        #   in Loop: Header=BB19_1 Depth=1
	leal	(%rbp,%rcx), %ebp
	movq	%r12, %rdi
	callq	ref_stack_enum_next
	testl	%eax, %eax
	jne	.LBB19_1
# BB#14:                                # %do.body.11
	leaq	32(%r15), %rax
	cmpq	640(%rbx), %rax
	jbe	.LBB19_16
# BB#15:                                # %if.then.17
	movl	$2, 688(%rbx)
	movl	$-16, %eax
	jmp	.LBB19_17
.LBB19_6:                               # %sw.bb
	leal	1(%rbp,%rcx), %eax
	xorl	%r13d, %r13d
	subl	%edx, %eax
	movl	%eax, 8(%rsp)           # 4-byte Spill
	movq	$0, 616(%rbx)
	je	.LBB19_11
# BB#7:                                 # %for.body.i.preheader
	leal	1(%rcx,%rbp), %eax
	subl	%edx, %eax
	movl	%eax, 12(%rsp)          # 4-byte Spill
	xorl	%r15d, %r15d
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB19_8:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%r15d, %ebp
	subl	%r13d, %ebp
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	ref_stack_index
	movq	%rax, %r12
	movzwl	(%r12), %eax
	andl	$16256, %eax            # imm = 0x3F80
	incl	%r15d
	cmpl	$3712, %eax             # imm = 0xE80
	jne	.LBB19_10
# BB#9:                                 # %if.then.i
                                        #   in Loop: Header=BB19_8 Depth=1
	incl	%ebp
	movq	%r14, %rdi
	movl	%ebp, %esi
	callq	ref_stack_pop
	movq	%rbx, %rdi
	callq	*8(%r12)
	movl	%r15d, %r13d
.LBB19_10:                              # %if.end.i
                                        #   in Loop: Header=BB19_8 Depth=1
	cmpl	%r15d, 12(%rsp)         # 4-byte Folded Reload
	jne	.LBB19_8
.LBB19_11:                              # %pop_estack.exit
	movl	8(%rsp), %esi           # 4-byte Reload
	subl	%r13d, %esi
	movq	%r14, %rdi
	callq	ref_stack_pop
	movl	$14, %eax
	jmp	.LBB19_17
.LBB19_16:                              # %if.else
	movq	%rax, 624(%rbx)
	movq	$zexit, 24(%r15)
	movw	$3968, 16(%r15)         # imm = 0xF80
	movl	$0, 20(%r15)
	movq	$-8, 40(%r15)
	movw	$2816, 32(%r15)         # imm = 0xB00
	movl	$-101, %eax
.LBB19_17:                              # %cleanup.27
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end19:
	.size	zexit, .Lfunc_end19-zexit
	.cfi_endproc

	.align	16, 0x90
	.type	zinstopped,@function
zinstopped:                             # @zinstopped
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp110:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp111:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp112:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp113:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp114:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp115:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp116:
	.cfi_def_cfa_offset 80
.Ltmp117:
	.cfi_offset %rbx, -56
.Ltmp118:
	.cfi_offset %r12, -48
.Ltmp119:
	.cfi_offset %r13, -40
.Ltmp120:
	.cfi_offset %r14, -32
.Ltmp121:
	.cfi_offset %r15, -24
.Ltmp122:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	624(%r14), %r13
	movzbl	1(%r13), %eax
	cmpl	$11, %eax
	jne	.LBB20_16
# BB#1:                                 # %if.end
	movq	8(%r13), %rbx
	leaq	520(%r14), %r15
	leaq	(%rsp), %r12
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	ref_stack_enum_begin
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB20_2:                               # %do.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_4 Depth 2
	movl	16(%rsp), %eax
	testq	%rax, %rax
	je	.LBB20_8
# BB#3:                                 # %for.body.lr.ph.i
                                        #   in Loop: Header=BB20_2 Depth=1
	movq	8(%rsp), %rcx
	movq	%rax, %rdx
	shlq	$4, %rdx
	leaq	-16(%rcx,%rdx), %rdx
	movl	%eax, %ecx
	.align	16, 0x90
.LBB20_4:                               # %for.body.i
                                        #   Parent Loop BB20_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%rdx), %esi
	andl	$16256, %esi            # imm = 0x3F80
	cmpl	$3712, %esi             # imm = 0xE80
	jne	.LBB20_7
# BB#5:                                 # %if.then.i
                                        #   in Loop: Header=BB20_4 Depth=2
	cmpl	$3, 4(%rdx)
	jne	.LBB20_7
# BB#6:                                 # %land.lhs.true.i
                                        #   in Loop: Header=BB20_4 Depth=2
	testq	40(%rdx), %rbx
	jne	.LBB20_10
.LBB20_7:                               # %for.inc.i
                                        #   in Loop: Header=BB20_4 Depth=2
	addq	$-16, %rdx
	decl	%ecx
	jne	.LBB20_4
.LBB20_8:                               # %do.cond.i
                                        #   in Loop: Header=BB20_2 Depth=1
	leal	(%rbp,%rax), %ebp
	movq	%r12, %rdi
	callq	ref_stack_enum_next
	testl	%eax, %eax
	jne	.LBB20_2
	jmp	.LBB20_9
.LBB20_16:                              # %if.then
	movq	%r13, %rdi
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	check_type_failed       # TAILCALL
.LBB20_10:                              # %count_to_stopped.exit
	leal	1(%rbp,%rax), %esi
	cmpl	%ecx, %esi
	jne	.LBB20_11
.LBB20_9:                               # %if.else.22
	movw	$0, 8(%r13)
	movw	$256, (%r13)            # imm = 0x100
	jmp	.LBB20_14
.LBB20_11:                              # %do.body
	leaq	16(%r13), %rax
	cmpq	640(%r14), %rax
	jbe	.LBB20_13
# BB#12:                                # %if.then.8
	movl	$1, 688(%r14)
	movl	$-16, %eax
	jmp	.LBB20_15
.LBB20_13:                              # %if.else
	movq	%rax, 624(%r14)
	addl	$-2, %esi
	subl	%ecx, %esi
	movq	%r15, %rdi
	callq	ref_stack_index
	movups	(%rax), %xmm0
	movups	%xmm0, (%r13)
	movw	$1, 24(%r13)
	movw	$256, 16(%r13)          # imm = 0x100
.LBB20_14:                              # %cleanup
	xorl	%eax, %eax
.LBB20_15:                              # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end20:
	.size	zinstopped, .Lfunc_end20-zinstopped
	.cfi_endproc

	.align	16, 0x90
	.type	zneedinput,@function
zneedinput:                             # @zneedinput
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-106, %eax
	retq
.Lfunc_end21:
	.size	zneedinput, .Lfunc_end21-zneedinput
	.cfi_endproc

	.align	16, 0x90
	.type	zloop,@function
zloop:                                  # @zloop
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp123:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp124:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp125:
	.cfi_def_cfa_offset 32
.Ltmp126:
	.cfi_offset %rbx, -32
.Ltmp127:
	.cfi_offset %r14, -24
.Ltmp128:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %r14
	movzwl	(%r14), %eax
	andl	$15552, %eax            # imm = 0x3CC0
	cmpl	$1216, %eax             # imm = 0x4C0
	jne	.LBB22_6
# BB#1:                                 # %do.end
	movq	520(%rbx), %rax
	movq	536(%rbx), %rcx
	addq	$-64, %rcx
	cmpq	%rcx, %rax
	jbe	.LBB22_4
# BB#2:                                 # %if.then.8
	leaq	520(%rbx), %r15
	movl	$4, %esi
	movq	%r15, %rdi
	callq	ref_stack_extend
	testl	%eax, %eax
	js	.LBB22_5
# BB#3:                                 # %if.then.8.if.end.16_crit_edge
	movq	(%r15), %rax
.LBB22_4:                               # %if.end.16
	leaq	16(%rax), %rcx
	movq	%rcx, 520(%rbx)
	movq	$no_cleanup, 24(%rax)
	movq	520(%rbx), %rax
	movw	$3712, (%rax)           # imm = 0xE80
	movl	$2, 4(%rax)
	leaq	16(%rax), %rcx
	movq	%rcx, 520(%rbx)
	movups	(%r14), %xmm0
	movups	%xmm0, 16(%rax)
	movq	520(%rbx), %rax
	movq	$loop_continue, 24(%rax)
	movq	520(%rbx), %rax
	movw	$3968, 16(%rax)         # imm = 0xF80
	movl	$0, 20(%rax)
	addq	$-16, 624(%rbx)
	movups	(%rax), %xmm0
	movups	%xmm0, 32(%rax)
	leaq	32(%rax), %rax
	movq	%rax, 520(%rbx)
	movl	$5, %eax
.LBB22_5:                               # %cleanup.59
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.LBB22_6:                               # %if.then
	movq	%r14, %rdi
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	check_proc_failed       # TAILCALL
.Lfunc_end22:
	.size	zloop, .Lfunc_end22-zloop
	.cfi_endproc

	.align	16, 0x90
	.type	zquit,@function
zquit:                                  # @zquit
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	movq	624(%rax), %rdi
	movq	632(%rax), %rcx
	addq	$16, %rcx
	movl	$-17, %eax
	cmpq	%rcx, %rdi
	jb	.LBB23_2
# BB#1:                                 # %if.end
	movzbl	1(%rdi), %ecx
	movl	$-101, %eax
	cmpl	$11, %ecx
	jne	.LBB23_3
.LBB23_2:                               # %cleanup
	retq
.LBB23_3:                               # %if.then.5
	jmp	check_type_failed       # TAILCALL
.Lfunc_end23:
	.size	zquit, .Lfunc_end23-zquit
	.cfi_endproc

	.align	16, 0x90
	.type	zstop,@function
zstop:                                  # @zstop
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp129:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp130:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp131:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp132:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp133:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp134:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp135:
	.cfi_def_cfa_offset 96
.Ltmp136:
	.cfi_offset %rbx, -56
.Ltmp137:
	.cfi_offset %r12, -48
.Ltmp138:
	.cfi_offset %r13, -40
.Ltmp139:
	.cfi_offset %r14, -32
.Ltmp140:
	.cfi_offset %r15, -24
.Ltmp141:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbp
	movq	624(%rbp), %r13
	leaq	520(%rbp), %r12
	leaq	16(%rsp), %r14
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	ref_stack_enum_begin
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB24_1:                               # %do.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_3 Depth 2
	movl	32(%rsp), %eax
	testq	%rax, %rax
	je	.LBB24_7
# BB#2:                                 # %for.body.lr.ph.i
                                        #   in Loop: Header=BB24_1 Depth=1
	movq	24(%rsp), %rcx
	movq	%rax, %rdx
	shlq	$4, %rdx
	leaq	-16(%rcx,%rdx), %rdx
	movl	%eax, %ecx
	.align	16, 0x90
.LBB24_3:                               # %for.body.i
                                        #   Parent Loop BB24_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%rdx), %esi
	andl	$16256, %esi            # imm = 0x3F80
	cmpl	$3712, %esi             # imm = 0xE80
	jne	.LBB24_6
# BB#4:                                 # %if.then.i
                                        #   in Loop: Header=BB24_3 Depth=2
	cmpl	$3, 4(%rdx)
	jne	.LBB24_6
# BB#5:                                 # %land.lhs.true.i
                                        #   in Loop: Header=BB24_3 Depth=2
	testb	$1, 40(%rdx)
	jne	.LBB24_10
.LBB24_6:                               # %for.inc.i
                                        #   in Loop: Header=BB24_3 Depth=2
	addq	$-16, %rdx
	decl	%ecx
	jne	.LBB24_3
.LBB24_7:                               # %do.cond.i
                                        #   in Loop: Header=BB24_1 Depth=1
	leal	(%rbx,%rax), %ebx
	movq	%r14, %rdi
	callq	ref_stack_enum_next
	testl	%eax, %eax
	jne	.LBB24_1
	jmp	.LBB24_8
.LBB24_10:                              # %count_to_stopped.exit
	leal	1(%rbx,%rax), %esi
	subl	%ecx, %esi
	jne	.LBB24_11
.LBB24_8:                               # %do.body.25
	leaq	32(%r13), %rax
	cmpq	640(%rbp), %rax
	ja	.LBB24_12
# BB#9:                                 # %if.else.35
	movq	%rax, 624(%rbp)
	movq	$zstop, 24(%r13)
	movw	$3968, 16(%r13)         # imm = 0xF80
	movl	$0, 20(%r13)
	movq	$-8, 40(%r13)
	movw	$2816, 32(%r13)         # imm = 0xB00
	movl	$-101, %eax
	jmp	.LBB24_20
.LBB24_11:                              # %if.then
	movq	640(%rbp), %rdx
	subq	624(%rbp), %rdx
	cmpq	$31, %rdx
	jg	.LBB24_13
.LBB24_12:                              # %if.then.6
	movl	$2, 688(%rbp)
	movl	$-16, %eax
	jmp	.LBB24_20
.LBB24_13:                              # %if.end
	movl	%esi, 4(%rsp)           # 4-byte Spill
	movq	$0, 616(%rbp)
	movq	%rbp, 8(%rsp)           # 8-byte Spill
	leal	1(%rax,%rbx), %r13d
	subl	%ecx, %r13d
	xorl	%r15d, %r15d
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB24_14:                              # %for.body.i.27
                                        # =>This Inner Loop Header: Depth=1
	movl	%r15d, %ebp
	subl	%r14d, %ebp
	movq	%r12, %rdi
	movq	%rbp, %rsi
	callq	ref_stack_index
	movq	%rax, %rbx
	movzwl	(%rbx), %eax
	andl	$16256, %eax            # imm = 0x3F80
	incl	%r15d
	cmpl	$3712, %eax             # imm = 0xE80
	jne	.LBB24_16
# BB#15:                                # %if.then.i.28
                                        #   in Loop: Header=BB24_14 Depth=1
	incl	%ebp
	movq	%r12, %rdi
	movl	%ebp, %esi
	callq	ref_stack_pop
	movq	8(%rsp), %rdi           # 8-byte Reload
	callq	*8(%rbx)
	movl	%r15d, %r14d
.LBB24_16:                              # %if.end.i
                                        #   in Loop: Header=BB24_14 Depth=1
	cmpl	%r15d, %r13d
	jne	.LBB24_14
# BB#17:                                # %pop_estack.exit
	movl	4(%rsp), %esi           # 4-byte Reload
	subl	%r14d, %esi
	movq	%r12, %rdi
	callq	ref_stack_pop
	movq	8(%rsp), %rdx           # 8-byte Reload
	movq	624(%rdx), %rax
	leaq	16(%rax), %rcx
	cmpq	640(%rdx), %rcx
	jbe	.LBB24_19
# BB#18:                                # %if.then.16
	movl	$1, 688(%rdx)
	movl	$-16, %eax
	jmp	.LBB24_20
.LBB24_19:                              # %if.else
	movq	%rcx, 624(%rdx)
	movw	$1, 24(%rax)
	movw	$256, 16(%rax)          # imm = 0x100
	movl	$14, %eax
.LBB24_20:                              # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end24:
	.size	zstop, .Lfunc_end24-zstop
	.cfi_endproc

	.align	16, 0x90
	.type	zzstop,@function
zzstop:                                 # @zzstop
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp142:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp143:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp144:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp145:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp146:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp147:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp148:
	.cfi_def_cfa_offset 96
.Ltmp149:
	.cfi_offset %rbx, -56
.Ltmp150:
	.cfi_offset %r12, -48
.Ltmp151:
	.cfi_offset %r13, -40
.Ltmp152:
	.cfi_offset %r14, -32
.Ltmp153:
	.cfi_offset %r15, -24
.Ltmp154:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	624(%r14), %r13
	movzbl	1(%r13), %eax
	cmpl	$11, %eax
	jne	.LBB25_20
# BB#1:                                 # %if.end
	movq	8(%r13), %rbx
	leaq	520(%r14), %r15
	leaq	16(%rsp), %r12
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	ref_stack_enum_begin
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB25_2:                               # %do.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_4 Depth 2
	movl	32(%rsp), %ecx
	testq	%rcx, %rcx
	je	.LBB25_8
# BB#3:                                 # %for.body.lr.ph.i
                                        #   in Loop: Header=BB25_2 Depth=1
	movq	24(%rsp), %rax
	movq	%rcx, %rdx
	shlq	$4, %rdx
	leaq	-16(%rax,%rdx), %rax
	movl	%ecx, %edx
	.align	16, 0x90
.LBB25_4:                               # %for.body.i
                                        #   Parent Loop BB25_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%rax), %esi
	andl	$16256, %esi            # imm = 0x3F80
	cmpl	$3712, %esi             # imm = 0xE80
	jne	.LBB25_7
# BB#5:                                 # %if.then.i
                                        #   in Loop: Header=BB25_4 Depth=2
	cmpl	$3, 4(%rax)
	jne	.LBB25_7
# BB#6:                                 # %land.lhs.true.i
                                        #   in Loop: Header=BB25_4 Depth=2
	testq	40(%rax), %rbx
	jne	.LBB25_10
.LBB25_7:                               # %for.inc.i
                                        #   in Loop: Header=BB25_4 Depth=2
	addq	$-16, %rax
	decl	%edx
	jne	.LBB25_4
.LBB25_8:                               # %do.cond.i
                                        #   in Loop: Header=BB25_2 Depth=1
	leal	(%rbp,%rcx), %ebp
	movq	%r12, %rdi
	callq	ref_stack_enum_next
	testl	%eax, %eax
	jne	.LBB25_2
	jmp	.LBB25_9
.LBB25_20:                              # %if.then
	movq	%r13, %rdi
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	check_type_failed       # TAILCALL
.LBB25_10:                              # %count_to_stopped.exit
	leal	1(%rbp,%rcx), %edi
	subl	%edx, %edi
	jne	.LBB25_11
.LBB25_9:                               # %if.end.30
	movq	$zzstop, -8(%r13)
	movw	$3968, -16(%r13)        # imm = 0xF80
	movl	$0, -12(%r13)
	movq	$-8, 8(%r13)
	movw	$2816, (%r13)           # imm = 0xB00
	movl	$-101, %eax
	jmp	.LBB25_19
.LBB25_11:                              # %if.then.3
	movq	632(%r14), %rsi
	addq	$16, %rsi
	movl	$-17, %eax
	cmpq	%rsi, %r13
	jb	.LBB25_19
# BB#12:                                # %if.end.9
	movl	%edi, 4(%rsp)           # 4-byte Spill
	movups	-16(%r13), %xmm0
	movaps	%xmm0, 16(%rsp)
	addq	$-32, 624(%r14)
	movq	$0, 616(%r14)
	movq	%r14, 8(%rsp)           # 8-byte Spill
	leal	1(%rcx,%rbp), %r13d
	subl	%edx, %r13d
	xorl	%r12d, %r12d
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB25_13:                              # %for.body.i.27
                                        # =>This Inner Loop Header: Depth=1
	movl	%r12d, %ebx
	subl	%r14d, %ebx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	ref_stack_index
	movq	%rax, %rbp
	movzwl	(%rbp), %eax
	andl	$16256, %eax            # imm = 0x3F80
	incl	%r12d
	cmpl	$3712, %eax             # imm = 0xE80
	jne	.LBB25_15
# BB#14:                                # %if.then.i.28
                                        #   in Loop: Header=BB25_13 Depth=1
	incl	%ebx
	movq	%r15, %rdi
	movl	%ebx, %esi
	callq	ref_stack_pop
	movq	8(%rsp), %rdi           # 8-byte Reload
	callq	*8(%rbp)
	movl	%r12d, %r14d
.LBB25_15:                              # %if.end.i
                                        #   in Loop: Header=BB25_13 Depth=1
	cmpl	%r12d, %r13d
	jne	.LBB25_13
# BB#16:                                # %pop_estack.exit
	movl	4(%rsp), %esi           # 4-byte Reload
	subl	%r14d, %esi
	movq	%r15, %rdi
	callq	ref_stack_pop
	movq	8(%rsp), %rcx           # 8-byte Reload
	movq	624(%rcx), %rax
	addq	$16, %rax
	cmpq	640(%rcx), %rax
	jbe	.LBB25_18
# BB#17:                                # %if.then.23
	movl	$1, 688(%rcx)
	movl	$-16, %eax
	jmp	.LBB25_19
.LBB25_18:                              # %if.else
	movq	%rax, 624(%rcx)
	movaps	16(%rsp), %xmm0
	movups	%xmm0, (%rax)
	movl	$14, %eax
.LBB25_19:                              # %cleanup.32
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end25:
	.size	zzstop, .Lfunc_end25-zzstop
	.cfi_endproc

	.align	16, 0x90
	.type	zstopped,@function
zstopped:                               # @zstopped
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp155:
	.cfi_def_cfa_offset 16
.Ltmp156:
	.cfi_offset %rbx, -16
	movq	624(%rdi), %rcx
	movl	$-17, %eax
	cmpq	632(%rdi), %rcx
	jb	.LBB26_5
# BB#1:                                 # %if.end
	movq	520(%rdi), %rax
	movq	536(%rdi), %rcx
	leaq	520(%rdi), %rbx
	addq	$-80, %rcx
	cmpq	%rcx, %rax
	jbe	.LBB26_4
# BB#2:                                 # %if.then.9
	movl	$5, %esi
	movq	%rbx, %rdi
	callq	ref_stack_extend
	testl	%eax, %eax
	js	.LBB26_5
# BB#3:                                 # %if.then.9.if.end.15_crit_edge
	movq	(%rbx), %rax
.LBB26_4:                               # %if.end.15
	leaq	16(%rax), %rcx
	movq	%rcx, (%rbx)
	movq	$no_cleanup, 24(%rax)
	movq	(%rbx), %rax
	movw	$3712, (%rax)           # imm = 0xE80
	movl	$3, 4(%rax)
	movw	$0, 24(%rax)
	movw	$256, 16(%rax)          # imm = 0x100
	movq	$1, 40(%rax)
	movw	$2816, 32(%rax)         # imm = 0xB00
	leaq	48(%rax), %rcx
	movq	%rcx, (%rbx)
	movq	$stopped_push, 56(%rax)
	movq	(%rbx), %rax
	movw	$3968, (%rax)           # imm = 0xF80
	movl	$0, 4(%rax)
	leaq	16(%rax), %rcx
	movq	%rcx, (%rbx)
	movq	$zexec, 24(%rax)
	movq	(%rbx), %rax
	movw	$3968, (%rax)           # imm = 0xF80
	movl	$0, 4(%rax)
	movl	$5, %eax
.LBB26_5:                               # %cleanup.93
	popq	%rbx
	retq
.Lfunc_end26:
	.size	zstopped, .Lfunc_end26-zstopped
	.cfi_endproc

	.align	16, 0x90
	.type	zzstopped,@function
zzstopped:                              # @zzstopped
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp157:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp158:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp159:
	.cfi_def_cfa_offset 32
.Ltmp160:
	.cfi_offset %rbx, -32
.Ltmp161:
	.cfi_offset %r14, -24
.Ltmp162:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %r14
	movzbl	1(%r14), %eax
	cmpl	$11, %eax
	jne	.LBB27_7
# BB#1:                                 # %if.end
	movq	632(%rbx), %rcx
	addq	$32, %rcx
	movl	$-17, %eax
	cmpq	%rcx, %r14
	jb	.LBB27_6
# BB#2:                                 # %if.end.7
	movq	520(%rbx), %rax
	movq	536(%rbx), %rcx
	addq	$-80, %rcx
	cmpq	%rcx, %rax
	jbe	.LBB27_5
# BB#3:                                 # %if.then.15
	leaq	520(%rbx), %r15
	movl	$5, %esi
	movq	%r15, %rdi
	callq	ref_stack_extend
	testl	%eax, %eax
	js	.LBB27_6
# BB#4:                                 # %if.then.15.if.end.23_crit_edge
	movq	(%r15), %rax
.LBB27_5:                               # %if.end.23
	leaq	16(%rax), %rcx
	movq	%rcx, 520(%rbx)
	movq	$no_cleanup, 24(%rax)
	movq	520(%rbx), %rax
	movw	$3712, (%rax)           # imm = 0xE80
	movl	$3, 4(%rax)
	leaq	16(%rax), %rcx
	movq	%rcx, 520(%rbx)
	movups	-16(%r14), %xmm0
	movups	%xmm0, 16(%rax)
	movq	520(%rbx), %rax
	leaq	16(%rax), %rcx
	movq	%rcx, 520(%rbx)
	movups	(%r14), %xmm0
	movups	%xmm0, 16(%rax)
	movq	520(%rbx), %rax
	leaq	16(%rax), %rcx
	movq	%rcx, 520(%rbx)
	movq	$stopped_push, 24(%rax)
	movq	520(%rbx), %rax
	movw	$3968, (%rax)           # imm = 0xF80
	movl	$0, 4(%rax)
	leaq	16(%rax), %rcx
	movq	%rcx, 520(%rbx)
	movq	$zexec, 24(%rax)
	movq	520(%rbx), %rax
	movw	$3968, (%rax)           # imm = 0xF80
	movl	$0, 4(%rax)
	addq	$-32, 624(%rbx)
	movl	$5, %eax
.LBB27_6:                               # %cleanup.90
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.LBB27_7:                               # %if.then
	movq	%r14, %rdi
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	check_type_failed       # TAILCALL
.Lfunc_end27:
	.size	zzstopped, .Lfunc_end27-zzstopped
	.cfi_endproc

	.align	16, 0x90
	.type	cond_continue,@function
cond_continue:                          # @cond_continue
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp163:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp164:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp165:
	.cfi_def_cfa_offset 32
.Ltmp166:
	.cfi_offset %rbx, -32
.Ltmp167:
	.cfi_offset %r14, -24
.Ltmp168:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rdi
	movzbl	1(%rdi), %eax
	cmpl	$1, %eax
	jne	.LBB28_19
# BB#1:                                 # %if.end
	movq	520(%rbx), %r14
	cmpw	$0, 8(%rdi)
	je	.LBB28_4
# BB#2:                                 # %if.then.4
	movq	8(%rbx), %rdi
	movl	$1, %edx
	movq	%r14, %rsi
	movq	%r14, %rcx
	callq	array_get
	movq	520(%rbx), %rcx
	movzwl	(%rcx), %edx
	andl	$16256, %edx            # imm = 0x3F80
	movl	$14, %eax
	cmpl	$896, %edx              # imm = 0x380
	jne	.LBB28_17
# BB#3:                                 # %if.then.14
	movq	%rcx, 616(%rbx)
	jmp	.LBB28_17
.LBB28_19:                              # %if.then
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	check_type_failed       # TAILCALL
.LBB28_4:                               # %if.else
	leaq	520(%rbx), %rdi
	movl	4(%r14), %eax
	cmpl	$3, %eax
	jb	.LBB28_16
# BB#5:                                 # %if.then.23
	movq	8(%r14), %r15
	movq	536(%rbx), %rcx
	addq	$-32, %rcx
	cmpq	%rcx, %r14
	jbe	.LBB28_8
# BB#6:                                 # %if.then.32
	movl	$2, %esi
	callq	ref_stack_extend
	testl	%eax, %eax
	js	.LBB28_18
# BB#7:                                 # %if.then.32.if.end.40_crit_edge
	movl	4(%r14), %eax
.LBB28_8:                               # %if.end.40
	addl	$-2, %eax
	movl	%eax, 4(%r14)
	movzwl	(%r15), %eax
	cmpl	$16383, %eax            # imm = 0x3FFF
	jbe	.LBB28_10
# BB#9:
	addq	$2, %r15
	jmp	.LBB28_11
.LBB28_16:                              # %if.else.97
	addq	$-16, %r14
	movq	%r14, (%rdi)
	movl	$14, %eax
	jmp	.LBB28_17
.LBB28_10:                              # %select.mid
	addq	$16, %r15
.LBB28_11:                              # %select.end
	movzwl	(%r15), %eax
	cmpl	$16383, %eax            # imm = 0x3FFF
	jbe	.LBB28_13
# BB#12:
	addq	$2, %r15
	jmp	.LBB28_14
.LBB28_13:                              # %select.mid60
	addq	$16, %r15
.LBB28_14:                              # %select.end59
	movq	%r15, 8(%r14)
	movq	8(%rbx), %rdi
	leaq	32(%r14), %r15
	xorl	%edx, %edx
	movq	%r14, %rsi
	movq	%r15, %rcx
	callq	array_get
	movq	$cond_continue, 24(%r14)
	movw	$3968, 16(%r14)         # imm = 0xF80
	movl	$0, 20(%r14)
	movq	%r15, 520(%rbx)
	movzwl	32(%r14), %ecx
	andl	$16256, %ecx            # imm = 0x3F80
	movl	$5, %eax
	cmpl	$896, %ecx              # imm = 0x380
	jne	.LBB28_17
# BB#15:                                # %if.then.85
	movq	%r15, 616(%rbx)
.LBB28_17:                              # %if.end.103
	addq	$-16, 624(%rbx)
.LBB28_18:                              # %cleanup.108
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end28:
	.size	cond_continue, .Lfunc_end28-cond_continue
	.cfi_endproc

	.align	16, 0x90
	.type	execstack_continue,@function
execstack_continue:                     # @execstack_continue
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp169:
	.cfi_def_cfa_offset 16
	movq	624(%rdi), %rdx
	xorl	%esi, %esi
	callq	do_execstack
	xorl	%eax, %eax
	popq	%rdx
	retq
.Lfunc_end29:
	.size	execstack_continue, .Lfunc_end29-execstack_continue
	.cfi_endproc

	.align	16, 0x90
	.type	execstack2_continue,@function
execstack2_continue:                    # @execstack2_continue
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp170:
	.cfi_def_cfa_offset 16
	movq	624(%rdi), %rdx
	movzwl	8(%rdx), %esi
	addq	$-16, %rdx
	callq	do_execstack
	xorl	%eax, %eax
	popq	%rdx
	retq
.Lfunc_end30:
	.size	execstack2_continue, .Lfunc_end30-execstack2_continue
	.cfi_endproc

	.align	16, 0x90
	.type	loop_continue,@function
loop_continue:                          # @loop_continue
	.cfi_startproc
# BB#0:                                 # %entry
	movq	520(%rdi), %rax
	movups	(%rax), %xmm0
	movups	%xmm0, 32(%rax)
	leaq	32(%rax), %rax
	movq	%rax, 520(%rdi)
	movl	$5, %eax
	retq
.Lfunc_end31:
	.size	loop_continue, .Lfunc_end31-loop_continue
	.cfi_endproc

	.align	16, 0x90
	.type	stopped_push,@function
stopped_push:                           # @stopped_push
	.cfi_startproc
# BB#0:                                 # %entry
	movq	624(%rdi), %rax
	addq	$16, %rax
	cmpq	640(%rdi), %rax
	jbe	.LBB32_2
# BB#1:                                 # %if.then
	movl	$1, 688(%rdi)
	movl	$-16, %eax
	retq
.LBB32_2:                               # %if.else
	movq	%rax, 624(%rdi)
	movq	520(%rdi), %rcx
	movups	-16(%rcx), %xmm0
	movups	%xmm0, (%rax)
	addq	$-48, 520(%rdi)
	movl	$14, %eax
	retq
.Lfunc_end32:
	.size	stopped_push, .Lfunc_end32-stopped_push
	.cfi_endproc

	.align	16, 0x90
	.type	zsuperexec,@function
zsuperexec:                             # @zsuperexec
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp171:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp172:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp173:
	.cfi_def_cfa_offset 32
.Ltmp174:
	.cfi_offset %rbx, -32
.Ltmp175:
	.cfi_offset %r14, -24
.Ltmp176:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %r15
	movl	$-17, %eax
	cmpq	632(%rbx), %r15
	jb	.LBB33_8
# BB#1:                                 # %if.end
	xorl	%eax, %eax
	testb	$-128, (%r15)
	je	.LBB33_8
# BB#2:                                 # %if.end.4
	leaq	520(%rbx), %r14
	movq	520(%rbx), %rax
	movq	536(%rbx), %rcx
	addq	$-32, %rcx
	cmpq	%rcx, %rax
	jbe	.LBB33_5
# BB#3:                                 # %if.then.12
	movl	$2, %esi
	movq	%r14, %rdi
	callq	ref_stack_extend
	testl	%eax, %eax
	js	.LBB33_8
# BB#4:                                 # %if.then.12.if.end.19_crit_edge
	movq	(%r14), %rax
.LBB33_5:                               # %if.end.19
	leaq	48(%rax), %rcx
	movq	%rcx, (%r14)
	movq	$end_superexec, 24(%rax)
	movw	$3712, 16(%rax)         # imm = 0xE80
	movl	$0, 20(%rax)
	movq	$end_superexec, 40(%rax)
	movw	$3968, 32(%rax)         # imm = 0xF80
	movl	$0, 36(%rax)
	movups	(%r15), %xmm0
	movups	%xmm0, 48(%rax)
	movq	(%r14), %rax
	movzwl	(%rax), %ecx
	andl	$16256, %ecx            # imm = 0x3F80
	cmpl	$896, %ecx              # imm = 0x380
	jne	.LBB33_7
# BB#6:                                 # %if.then.48
	movq	%rax, 616(%rbx)
.LBB33_7:                               # %do.end
	addq	$-16, 624(%rbx)
	incl	148(%rbx)
	movl	$5, %eax
.LBB33_8:                               # %cleanup.58
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end33:
	.size	zsuperexec, .Lfunc_end33-zsuperexec
	.cfi_endproc

	.align	16, 0x90
	.type	end_superexec,@function
end_superexec:                          # @end_superexec
	.cfi_startproc
# BB#0:                                 # %entry
	decl	148(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end34:
	.size	end_superexec, .Lfunc_end34-end_superexec
	.cfi_endproc

	.align	16, 0x90
	.type	zrunandhide,@function
zrunandhide:                            # @zrunandhide
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp177:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp178:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp179:
	.cfi_def_cfa_offset 32
.Ltmp180:
	.cfi_offset %rbx, -32
.Ltmp181:
	.cfi_offset %r14, -24
.Ltmp182:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movq	632(%r14), %rcx
	addq	$16, %rcx
	movl	$-17, %eax
	cmpq	%rcx, %rbx
	jb	.LBB35_9
# BB#1:                                 # %if.end
	movzwl	-16(%rbx), %eax
	andl	$15360, %eax            # imm = 0x3C00
	cmpl	$1024, %eax             # imm = 0x400
	jne	.LBB35_10
# BB#2:                                 # %if.end.7
	xorl	%eax, %eax
	testb	$-128, (%rbx)
	je	.LBB35_9
# BB#3:                                 # %if.end.13
	leaq	520(%r14), %r15
	movq	520(%r14), %rax
	movq	536(%r14), %rcx
	addq	$-80, %rcx
	cmpq	%rcx, %rax
	jbe	.LBB35_6
# BB#4:                                 # %if.then.21
	movl	$5, %esi
	movq	%r15, %rdi
	callq	ref_stack_extend
	testl	%eax, %eax
	js	.LBB35_9
# BB#5:                                 # %if.then.21.if.end.29_crit_edge
	movq	(%r15), %rax
.LBB35_6:                               # %if.end.29
	leaq	-16(%rbx), %rcx
	leaq	80(%rax), %rdx
	movq	%rdx, (%r15)
	movq	$err_end_runandhide, 24(%rax)
	movw	$3712, 16(%rax)         # imm = 0xE80
	movl	$0, 20(%rax)
	movq	$end_runandhide, 72(%rax)
	movw	$3968, 64(%rax)         # imm = 0xF80
	movl	$0, 68(%rax)
	movups	(%rbx), %xmm0
	movups	%xmm0, 80(%rax)
	movzwl	-16(%rbx), %edx
	movq	%rdx, 40(%rax)
	movw	$2816, 32(%rax)         # imm = 0xB00
	movups	(%rcx), %xmm0
	movups	%xmm0, 48(%rax)
	andb	$-113, 48(%rax)
	movq	(%r15), %rax
	movzwl	(%rax), %ecx
	andl	$16256, %ecx            # imm = 0x3F80
	cmpl	$896, %ecx              # imm = 0x380
	jne	.LBB35_8
# BB#7:                                 # %if.then.75
	movq	%rax, 616(%r14)
.LBB35_8:                               # %do.end
	addq	$-32, 624(%r14)
	movl	$5, %eax
.LBB35_9:                               # %cleanup.85
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.LBB35_10:                              # %if.then.6
	movq	%rbx, %rdi
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	check_type_failed       # TAILCALL
.Lfunc_end35:
	.size	zrunandhide, .Lfunc_end35-zrunandhide
	.cfi_endproc

	.align	16, 0x90
	.type	end_runandhide,@function
end_runandhide:                         # @end_runandhide
	.cfi_startproc
# BB#0:                                 # %entry
	movq	624(%rdi), %rax
	addq	$16, %rax
	cmpq	640(%rdi), %rax
	jbe	.LBB36_2
# BB#1:                                 # %runandhide_restore_hidden.exit.thread
	movl	$1, 688(%rdi)
	movl	$-16, %eax
	retq
.LBB36_2:                               # %if.end
	movq	520(%rdi), %rcx
	movq	%rax, 624(%rdi)
	movups	(%rcx), %xmm0
	movups	%xmm0, (%rax)
	movzwl	(%rax), %edx
	andl	$65423, %edx            # imm = 0xFF8F
	orl	-8(%rcx), %edx
	movw	%dx, (%rax)
	addq	$-32, 520(%rdi)
	movl	$14, %eax
	retq
.Lfunc_end36:
	.size	end_runandhide, .Lfunc_end36-end_runandhide
	.cfi_endproc

	.globl	pop_estack
	.align	16, 0x90
	.type	pop_estack,@function
pop_estack:                             # @pop_estack
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp183:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp184:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp185:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp186:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp187:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp188:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp189:
	.cfi_def_cfa_offset 64
.Ltmp190:
	.cfi_offset %rbx, -56
.Ltmp191:
	.cfi_offset %r12, -48
.Ltmp192:
	.cfi_offset %r13, -40
.Ltmp193:
	.cfi_offset %r14, -32
.Ltmp194:
	.cfi_offset %r15, -24
.Ltmp195:
	.cfi_offset %rbp, -16
	movl	%esi, %r15d
	movq	%rdi, (%rsp)            # 8-byte Spill
	leaq	520(%rdi), %r12
	movq	$0, 616(%rdi)
	xorl	%ebx, %ebx
	xorl	%r14d, %r14d
	testl	%r15d, %r15d
	je	.LBB37_4
	.align	16, 0x90
.LBB37_1:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, %ebp
	subl	%r14d, %ebp
	movq	%r12, %rdi
	movq	%rbp, %rsi
	callq	ref_stack_index
	movq	%rax, %r13
	movzwl	(%r13), %eax
	andl	$16256, %eax            # imm = 0x3F80
	incl	%ebx
	cmpl	$3712, %eax             # imm = 0xE80
	jne	.LBB37_3
# BB#2:                                 # %if.then
                                        #   in Loop: Header=BB37_1 Depth=1
	incl	%ebp
	movq	%r12, %rdi
	movl	%ebp, %esi
	callq	ref_stack_pop
	movq	(%rsp), %rdi            # 8-byte Reload
	callq	*8(%r13)
	movl	%ebx, %r14d
.LBB37_3:                               # %if.end
                                        #   in Loop: Header=BB37_1 Depth=1
	cmpl	%ebx, %r15d
	jne	.LBB37_1
.LBB37_4:                               # %for.end
	subl	%r14d, %r15d
	movq	%r12, %rdi
	movl	%r15d, %esi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	ref_stack_pop           # TAILCALL
.Lfunc_end37:
	.size	pop_estack, .Lfunc_end37-pop_estack
	.cfi_endproc

	.align	16, 0x90
	.type	push_execstack,@function
push_execstack:                         # @push_execstack
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp196:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp197:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp198:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp199:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp200:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp201:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp202:
	.cfi_def_cfa_offset 80
.Ltmp203:
	.cfi_offset %rbx, -56
.Ltmp204:
	.cfi_offset %r12, -48
.Ltmp205:
	.cfi_offset %r13, -40
.Ltmp206:
	.cfi_offset %r14, -32
.Ltmp207:
	.cfi_offset %r15, -24
.Ltmp208:
	.cfi_offset %rbp, -16
	movq	%rcx, %r13
	movl	%edx, %r14d
	movq	%rsi, %r15
	movq	%rdi, %r12
	movzwl	(%r15), %eax
	andl	$15360, %eax            # imm = 0x3C00
	cmpl	$1024, %eax             # imm = 0x400
	jne	.LBB38_14
# BB#1:                                 # %if.end
	movl	4(%r15), %eax
	movl	%eax, 20(%rsp)          # 4-byte Spill
	leaq	520(%r12), %rbx
	movq	%rbx, %rdi
	callq	ref_stack_count
	movl	%eax, %ebp
	testl	%r14d, %r14d
	je	.LBB38_3
# BB#2:
	movq	%r13, 8(%rsp)           # 8-byte Spill
	movl	%ebp, %r13d
	jmp	.LBB38_6
.LBB38_14:                              # %if.then
	movq	%r15, %rdi
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	check_type_failed       # TAILCALL
.LBB38_3:                               # %for.cond.preheader.i
	movq	%r13, 8(%rsp)           # 8-byte Spill
	xorl	%r13d, %r13d
	testl	%ebp, %ebp
	je	.LBB38_7
# BB#4:                                 # %for.body.lr.ph.i
	movl	%ebp, %r14d
	decl	%r14d
	movl	%ebp, %r13d
	.align	16, 0x90
.LBB38_5:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	ref_stack_index
	movzwl	(%rax), %eax
	andl	$16256, %eax            # imm = 0x3F80
	cmpl	$3712, %eax             # imm = 0xE80
	sete	%al
	movzbl	%al, %eax
	subl	%eax, %r13d
	decq	%r14
	decl	%ebp
	jne	.LBB38_5
.LBB38_6:                               # %count_exec_stack.exit
	movl	$-15, %eax
	cmpl	20(%rsp), %r13d         # 4-byte Folded Reload
	ja	.LBB38_13
.LBB38_7:                               # %do.body
	movl	$-7, %eax
	testb	$16, (%r15)
	je	.LBB38_13
# BB#8:                                 # %do.end
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movl	20(%rsp), %edx          # 4-byte Reload
	callq	ref_stack_store_check
	testl	%eax, %eax
	js	.LBB38_13
# BB#9:                                 # %cleanup.cont
	movq	520(%r12), %rax
	movq	536(%r12), %rcx
	addq	$-16, %rcx
	cmpq	%rcx, %rax
	jbe	.LBB38_12
# BB#10:                                # %if.then.25
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	ref_stack_extend
	testl	%eax, %eax
	js	.LBB38_13
# BB#11:                                # %if.then.25.if.end.36_crit_edge
	movq	(%rbx), %rax
.LBB38_12:                              # %if.end.36
	movl	%r13d, 4(%r15)
	leaq	16(%rax), %rcx
	movq	%rcx, (%rbx)
	movq	8(%rsp), %rcx           # 8-byte Reload
	movq	%rcx, 24(%rax)
	movq	(%rbx), %rax
	movw	$3968, (%rax)           # imm = 0xF80
	movl	$0, 4(%rax)
	movl	$5, %eax
.LBB38_13:                              # %cleanup.55
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end38:
	.size	push_execstack, .Lfunc_end38-push_execstack
	.cfi_endproc

	.align	16, 0x90
	.type	do_execstack,@function
do_execstack:                           # @do_execstack
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp209:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp210:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp211:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp212:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp213:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp214:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp215:
	.cfi_def_cfa_offset 96
.Ltmp216:
	.cfi_offset %rbx, -56
.Ltmp217:
	.cfi_offset %r12, -48
.Ltmp218:
	.cfi_offset %r13, -40
.Ltmp219:
	.cfi_offset %r14, -32
.Ltmp220:
	.cfi_offset %r15, -24
.Ltmp221:
	.cfi_offset %rbp, -16
	movl	%esi, 36(%rsp)          # 4-byte Spill
	movq	%rdi, %rbx
	movq	624(%rbx), %rsi
	movl	4(%rdx), %ecx
	testq	%rcx, %rcx
	movq	%rsi, %rax
	je	.LBB39_19
# BB#1:                                 # %for.body.lr.ph
	movq	%rsi, (%rsp)            # 8-byte Spill
	movq	8(%rdx), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	shlq	$4, %rcx
	leaq	(%rcx,%rax), %rbp
	leaq	520(%rbx), %r13
	leaq	8(%rbx), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB39_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%r15d, %esi
	movq	%r13, %rdi
	callq	ref_stack_index
	movq	%rax, %r14
	cmpl	$0, 36(%rsp)            # 4-byte Folded Reload
	jne	.LBB39_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB39_2 Depth=1
	movzwl	(%r14), %eax
	andl	$16256, %eax            # imm = 0x3F80
	movzwl	%ax, %eax
	cmpl	$3712, %eax             # imm = 0xE80
	jne	.LBB39_5
# BB#4:                                 #   in Loop: Header=BB39_2 Depth=1
	movq	%rbp, %r12
	jmp	.LBB39_17
	.align	16, 0x90
.LBB39_5:                               # %if.end
                                        #   in Loop: Header=BB39_2 Depth=1
	leaq	-16(%rbp), %r12
	movzwl	-16(%rbp), %eax
	testl	72(%rbx), %eax
	jne	.LBB39_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB39_2 Depth=1
	movl	$.L.str.36, %ecx
	movq	16(%rsp), %rdi          # 8-byte Reload
	movq	8(%rsp), %rsi           # 8-byte Reload
	movq	%r12, %rdx
	callq	alloc_save_change
.LBB39_7:                               # %cond.end
                                        #   in Loop: Header=BB39_2 Depth=1
	movups	(%r14), %xmm0
	movups	%xmm0, (%r12)
	movzwl	(%r12), %eax
	orl	76(%rbx), %eax
	movw	%ax, (%r12)
	movzbl	%ah, %eax  # NOREX
	leal	-8(%rax), %ecx
	cmpl	$2, %ecx
	jae	.LBB39_8
# BB#14:                                # %sw.bb.51
                                        #   in Loop: Header=BB39_2 Depth=1
	movq	-8(%rbp), %rsi
	testq	%rsi, %rsi
	movl	$.L.str.37, %edi
	je	.LBB39_16
# BB#15:                                # %cond.true.54
                                        #   in Loop: Header=BB39_2 Depth=1
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rdi
	callq	*128(%rdi)
	movq	%rax, %rdi
	callq	gs_struct_type_name
	movq	%rax, %rdi
.LBB39_16:                              # %cond.end.63
                                        #   in Loop: Header=BB39_2 Depth=1
	movq	%rdi, -8(%rbp)
	movw	$4704, -16(%rbp)        # imm = 0x1260
	callq	strlen
	movl	%eax, -12(%rbp)
	jmp	.LBB39_17
.LBB39_8:                               # %cond.end
                                        #   in Loop: Header=BB39_2 Depth=1
	cmpl	$15, %eax
	jne	.LBB39_17
# BB#9:                                 # %sw.bb
                                        #   in Loop: Header=BB39_2 Depth=1
	movl	-12(%rbp), %eax
	testl	%eax, %eax
	jne	.LBB39_12
# BB#10:                                # %cond.end.32
                                        #   in Loop: Header=BB39_2 Depth=1
	movq	%r12, %rdi
	callq	op_find_index
	testw	%ax, %ax
	je	.LBB39_13
# BB#11:                                #   in Loop: Header=BB39_2 Depth=1
	movzwl	%ax, %eax
.LBB39_12:                              # %lor.lhs.false
                                        #   in Loop: Header=BB39_2 Depth=1
	movl	%eax, %ecx
	andl	$15, %ecx
	shrl	$4, %eax
	movq	op_defs_all(,%rax,8), %rax
	shlq	$4, %rcx
	movq	(%rax,%rcx), %rax
	movzbl	1(%rax), %eax
	cmpl	$37, %eax
	jne	.LBB39_17
.LBB39_13:                              # %if.then.44
                                        #   in Loop: Header=BB39_2 Depth=1
	andb	$127, (%r12)
	.align	16, 0x90
.LBB39_17:                              # %cleanup
                                        #   in Loop: Header=BB39_2 Depth=1
	incl	%r15d
	cmpq	24(%rsp), %r12          # 8-byte Folded Reload
	movq	%r12, %rbp
	jne	.LBB39_2
# BB#18:                                # %for.cond.for.end_crit_edge
	movq	624(%rbx), %rax
	movq	8(%rsp), %rdx           # 8-byte Reload
	movq	(%rsp), %rsi            # 8-byte Reload
.LBB39_19:                              # %for.end
	subq	%rdx, %rsi
	subq	%rsi, %rax
	movq	%rax, 624(%rbx)
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end39:
	.size	do_execstack, .Lfunc_end39-do_execstack
	.cfi_endproc

	.align	16, 0x90
	.type	err_end_runandhide,@function
err_end_runandhide:                     # @err_end_runandhide
	.cfi_startproc
# BB#0:                                 # %entry
	movq	624(%rdi), %rax
	addq	$16, %rax
	cmpq	640(%rdi), %rax
	jbe	.LBB40_2
# BB#1:                                 # %if.then.i
	movl	$1, 688(%rdi)
	movl	$-16, %ecx
	jmp	.LBB40_3
.LBB40_2:                               # %if.else.i
	movq	520(%rdi), %rcx
	movq	%rax, 624(%rdi)
	movups	48(%rcx), %xmm0
	movups	%xmm0, (%rax)
	movzwl	(%rax), %edx
	andl	$65423, %edx            # imm = 0xFF8F
	orl	40(%rcx), %edx
	movw	%dx, (%rax)
	xorl	%ecx, %ecx
.LBB40_3:                               # %runandhide_restore_hidden.exit
	movl	%ecx, %eax
	sarl	$31, %eax
	andl	%ecx, %eax
	retq
.Lfunc_end40:
	.size	err_end_runandhide, .Lfunc_end40-err_end_runandhide
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"1.cond"
	.size	.L.str, 7

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"0countexecstack"
	.size	.L.str.1, 16

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"1.countexecstack"
	.size	.L.str.2, 17

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"0currentfile"
	.size	.L.str.3, 13

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"1exec"
	.size	.L.str.4, 6

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"1.execn"
	.size	.L.str.5, 8

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"1execstack"
	.size	.L.str.6, 11

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"2.execstack"
	.size	.L.str.7, 12

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"0exit"
	.size	.L.str.8, 6

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"2if"
	.size	.L.str.9, 4

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"3ifelse"
	.size	.L.str.10, 8

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"0.instopped"
	.size	.L.str.11, 12

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"0.needinput"
	.size	.L.str.12, 12

	.type	zcontrol1_op_defs,@object # @zcontrol1_op_defs
	.section	.rodata,"a",@progbits
	.globl	zcontrol1_op_defs
	.align	16
zcontrol1_op_defs:
	.quad	.L.str
	.quad	zcond
	.quad	.L.str.1
	.quad	zcountexecstack
	.quad	.L.str.2
	.quad	zcountexecstack1
	.quad	.L.str.3
	.quad	zcurrentfile
	.quad	.L.str.4
	.quad	zexec
	.quad	.L.str.5
	.quad	zexecn
	.quad	.L.str.6
	.quad	zexecstack
	.quad	.L.str.7
	.quad	zexecstack2
	.quad	.L.str.8
	.quad	zexit
	.quad	.L.str.9
	.quad	zif
	.quad	.L.str.10
	.quad	zifelse
	.quad	.L.str.11
	.quad	zinstopped
	.quad	.L.str.12
	.quad	zneedinput
	.zero	16
	.size	zcontrol1_op_defs, 224

	.type	.L.str.13,@object       # @.str.13
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.13:
	.asciz	"4for"
	.size	.L.str.13, 5

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"1loop"
	.size	.L.str.14, 6

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"2.quit"
	.size	.L.str.15, 7

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"2repeat"
	.size	.L.str.16, 8

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"0stop"
	.size	.L.str.17, 6

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"1.stop"
	.size	.L.str.18, 7

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"1stopped"
	.size	.L.str.19, 9

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"2.stopped"
	.size	.L.str.20, 10

	.type	zcontrol2_op_defs,@object # @zcontrol2_op_defs
	.section	.rodata,"a",@progbits
	.globl	zcontrol2_op_defs
	.align	16
zcontrol2_op_defs:
	.quad	.L.str.13
	.quad	zfor
	.quad	.L.str.14
	.quad	zloop
	.quad	.L.str.15
	.quad	zquit
	.quad	.L.str.16
	.quad	zrepeat
	.quad	.L.str.17
	.quad	zstop
	.quad	.L.str.18
	.quad	zzstop
	.quad	.L.str.19
	.quad	zstopped
	.quad	.L.str.20
	.quad	zzstopped
	.zero	16
	.size	zcontrol2_op_defs, 144

	.type	.L.str.21,@object       # @.str.21
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.21:
	.asciz	"1%cond_continue"
	.size	.L.str.21, 16

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"1%execstack_continue"
	.size	.L.str.22, 21

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"2%execstack2_continue"
	.size	.L.str.23, 22

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"0%for_pos_int_continue"
	.size	.L.str.24, 23

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"0%for_neg_int_continue"
	.size	.L.str.25, 23

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"0%for_real_continue"
	.size	.L.str.26, 20

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"4%for_samples"
	.size	.L.str.27, 14

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"0%for_samples_continue"
	.size	.L.str.28, 23

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"0%loop_continue"
	.size	.L.str.29, 16

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"0%repeat_continue"
	.size	.L.str.30, 18

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"0%stopped_push"
	.size	.L.str.31, 15

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"1superexec"
	.size	.L.str.32, 11

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"0%end_superexec"
	.size	.L.str.33, 16

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"2.runandhide"
	.size	.L.str.34, 13

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"0%end_runandhide"
	.size	.L.str.35, 17

	.type	zcontrol3_op_defs,@object # @zcontrol3_op_defs
	.section	.rodata,"a",@progbits
	.globl	zcontrol3_op_defs
	.align	16
zcontrol3_op_defs:
	.quad	.L.str.21
	.quad	cond_continue
	.quad	.L.str.22
	.quad	execstack_continue
	.quad	.L.str.23
	.quad	execstack2_continue
	.quad	.L.str.24
	.quad	for_pos_int_continue
	.quad	.L.str.25
	.quad	for_neg_int_continue
	.quad	.L.str.26
	.quad	for_real_continue
	.quad	.L.str.27
	.quad	zfor_samples
	.quad	.L.str.28
	.quad	for_samples_continue
	.quad	.L.str.29
	.quad	loop_continue
	.quad	.L.str.30
	.quad	repeat_continue
	.quad	.L.str.31
	.quad	stopped_push
	.quad	.L.str.32
	.quad	zsuperexec
	.quad	.L.str.33
	.quad	end_superexec
	.quad	.L.str.34
	.quad	zrunandhide
	.quad	.L.str.35
	.quad	end_runandhide
	.zero	16
	.size	zcontrol3_op_defs, 256

	.type	.L.str.36,@object       # @.str.36
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.36:
	.asciz	"execstack"
	.size	.L.str.36, 10

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"NULL"
	.size	.L.str.37, 5


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
