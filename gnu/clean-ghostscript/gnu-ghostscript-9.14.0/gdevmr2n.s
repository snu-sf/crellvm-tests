	.text
	.file	"gdevmr2n.bc"
	.globl	mem_gray_strip_copy_rop
	.align	16, 0x90
	.type	mem_gray_strip_copy_rop,@function
mem_gray_strip_copy_rop:                # @mem_gray_strip_copy_rop
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
	subq	$232, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 288
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
	movl	%ecx, %ebx
	movl	%edx, 132(%rsp)         # 4-byte Spill
	movq	%rsi, %r15
	movq	%rdi, %rbp
	movl	352(%rsp), %r13d
	movl	344(%rsp), %edi
	movl	336(%rsp), %r14d
	movl	320(%rsp), %r10d
	movl	312(%rsp), %r11d
	movw	108(%rbp), %ax
	movl	$1, %edx
	movb	%al, %cl
	shll	%cl, %edx
	cmpl	$1, 100(%rbp)
	movq	296(%rsp), %r12
	jg	.LBB0_8
# BB#1:                                 # %lor.lhs.false
	movl	%r13d, %ecx
	testb	$3, %ch
	jne	.LBB0_8
# BB#2:                                 # %lor.lhs.false
	movzbl	110(%rbp), %ecx
	cmpl	$255, %ecx
	je	.LBB0_8
# BB#3:                                 # %lor.lhs.false.10
	decl	%edx
	movslq	%edx, %rcx
	movq	%rcx, 120(%rsp)         # 8-byte Spill
	testq	%r9, %r9
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	(%r9), %rsi
	movq	8(%r9), %rcx
	movl	%edi, %edx
	movq	%rcx, %rdi
	orq	%rsi, %rdi
	movl	%edx, %edi
	je	.LBB0_6
# BB#5:                                 # %land.lhs.true
	andq	%rsi, %rcx
	cmpq	120(%rsp), %rcx         # 8-byte Folded Reload
	jne	.LBB0_8
.LBB0_6:                                # %lor.lhs.false.21
	testq	%r12, %r12
	je	.LBB0_9
# BB#7:                                 # %land.lhs.true.23
	movq	(%r12), %rcx
	cmpq	8(%r12), %rcx
	jne	.LBB0_8
.LBB0_9:                                # %if.end
	movl	%ebx, 108(%rsp)         # 4-byte Spill
	movq	%r8, 112(%rsp)          # 8-byte Spill
	movzwl	%ax, %r8d
	xorl	%edx, %edx
	testq	%r9, %r9
	je	.LBB0_11
# BB#10:                                # %if.then.29
	movq	(%r9), %rcx
	andl	$1, %ecx
	movq	%rcx, 216(%rsp)
	leaq	208(%rsp), %rdx
	movq	%rcx, 208(%rsp)
.LBB0_11:                               # %if.end.34
	movq	%r9, 88(%rsp)           # 8-byte Spill
	movl	328(%rsp), %ebx
	movl	%r8d, %r14d
	shrl	%r14d
	xorl	%r10d, %r10d
	movq	288(%rsp), %rcx
	testq	%rcx, %rcx
	je	.LBB0_13
# BB#12:                                # %if.then.36
	movups	(%rcx), %xmm0
	movups	16(%rcx), %xmm1
	movups	32(%rcx), %xmm2
	movaps	%xmm2, 176(%rsp)
	movaps	%xmm1, 160(%rsp)
	movaps	%xmm0, 144(%rsp)
	movb	%r14b, %cl
	shll	%cl, 156(%rsp)
	movq	176(%rsp), %rsi
	movzwl	%si, %edi
	movb	%r14b, %cl
	shll	%cl, %edi
	movw	%di, 176(%rsp)
	movq	%rsi, %rdi
	shrq	$48, %rdi
	movb	%r14b, %cl
	shll	%cl, %edi
	movw	%di, 182(%rsp)
	shrq	$32, %rsi
	movzwl	%si, %esi
	movb	%r14b, %cl
	shll	%cl, %esi
	movw	%si, 180(%rsp)
	movl	$1, 184(%rsp)
	leaq	144(%rsp), %r10
.LBB0_13:                               # %if.end.48
	xorl	%r11d, %r11d
	testq	%r12, %r12
	movq	%rdx, %r9
	je	.LBB0_14
# BB#15:                                # %if.then.50
	movq	(%r12), %rcx
	testq	%rcx, %rcx
	movl	132(%rsp), %edi         # 4-byte Reload
	movl	304(%rsp), %esi
	je	.LBB0_18
# BB#16:                                # %if.then.50
	cmpq	120(%rsp), %rcx         # 8-byte Folded Reload
	je	.LBB0_18
# BB#17:                                # %if.then.58
	movzbl	%cl, %edx
	movl	$8, %ecx
	subl	%r8d, %ecx
	shll	%cl, %edx
	movb	%dl, 136(%rsp)
	leaq	136(%rsp), %rcx
	movq	%rcx, 144(%rsp)
	movl	$8, 152(%rsp)
	movw	%ax, 176(%rsp)
	movl	%r8d, 156(%rsp)
	movw	$1, 178(%rsp)
	movl	$1, 160(%rsp)
	movq	$0, 168(%rsp)
	movl	$0, 180(%rsp)
	leaq	144(%rsp), %r10
	xorl	%r11d, %r11d
	jmp	.LBB0_19
.LBB0_8:                                # %if.then
	movl	%r13d, 64(%rsp)
	movl	%edi, 56(%rsp)
	movl	%r14d, 48(%rsp)
	movl	328(%rsp), %eax
	movl	%eax, 40(%rsp)
	movl	%r10d, 32(%rsp)
	movl	%r11d, 24(%rsp)
	movl	304(%rsp), %eax
	movl	%eax, 16(%rsp)
	movq	%r12, 8(%rsp)
	movq	288(%rsp), %rax
	movq	%rax, (%rsp)
	movq	%rbp, %rdi
	movq	%r15, %rsi
	movl	132(%rsp), %edx         # 4-byte Reload
	movl	%ebx, %ecx
.LBB0_24:                               # %cleanup
	callq	mem_default_strip_copy_rop
.LBB0_25:                               # %cleanup
	addq	$232, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_14:
	movq	112(%rsp), %r8          # 8-byte Reload
	movl	132(%rsp), %edi         # 4-byte Reload
	movl	304(%rsp), %esi
	jmp	.LBB0_20
.LBB0_18:                               # %if.else
	andl	$1, %ecx
	movq	%rcx, 200(%rsp)
	leaq	192(%rsp), %r11
	movq	%rcx, 192(%rsp)
.LBB0_19:                               # %if.end.81
	movq	112(%rsp), %r8          # 8-byte Reload
.LBB0_20:                               # %if.end.81
	movq	1200(%rbp), %r12
	movq	1216(%rbp), %rax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	movq	1416(%rbp), %rax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	movq	$mem_gray_rop_fill_rectangle, 1200(%rbp)
	movq	$mem_gray_rop_copy_mono, 1216(%rbp)
	movq	$mem_gray_rop_strip_tile_rectangle, 1416(%rbp)
	movb	%r14b, %cl
	shll	%cl, 832(%rbp)
	testq	%r9, %r9
	movb	%r14b, %cl
	je	.LBB0_22
# BB#21:                                # %if.end.81
	xorl	%ecx, %ecx
.LBB0_22:                               # %if.end.81
	movl	%edi, %edx
	shll	%cl, %edx
	movl	%esi, %eax
	movb	%r14b, %cl
	shll	%cl, %eax
	movl	320(%rsp), %ecx
	movl	%ecx, %edi
	movb	%r14b, %cl
	shll	%cl, %edi
	movl	336(%rsp), %ecx
	movl	%ecx, %esi
	movb	%r14b, %cl
	shll	%cl, %esi
	movl	%r13d, 64(%rsp)
	movl	344(%rsp), %ecx
	movl	%ecx, 56(%rsp)
	movl	%esi, 48(%rsp)
	movl	%ebx, 40(%rsp)
	movl	%edi, 32(%rsp)
	movl	312(%rsp), %ebx
	movl	%ebx, 24(%rsp)
	movl	%eax, 16(%rsp)
	movq	%r11, 8(%rsp)
	movq	%r10, (%rsp)
	movq	%rbp, %rdi
	movq	%r15, %rsi
	movl	108(%rsp), %ecx         # 4-byte Reload
	callq	mem_mono_strip_copy_rop
	movq	%r12, 1200(%rbp)
	movq	120(%rsp), %rcx         # 8-byte Reload
	movq	%rcx, 1216(%rbp)
	movq	96(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, 1416(%rbp)
	movb	%r14b, %cl
	sarl	%cl, 832(%rbp)
	testl	%eax, %eax
	jns	.LBB0_25
# BB#23:                                # %if.then.112
	movl	%r13d, 64(%rsp)
	movl	344(%rsp), %eax
	movl	%eax, 56(%rsp)
	movl	336(%rsp), %eax
	movl	%eax, 48(%rsp)
	movl	328(%rsp), %eax
	movl	%eax, 40(%rsp)
	movl	320(%rsp), %eax
	movl	%eax, 32(%rsp)
	movl	%ebx, 24(%rsp)
	movl	304(%rsp), %eax
	movl	%eax, 16(%rsp)
	movq	296(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	288(%rsp), %rax
	movq	%rax, (%rsp)
	movq	%rbp, %rdi
	movq	%r15, %rsi
	movl	132(%rsp), %edx         # 4-byte Reload
	movl	108(%rsp), %ecx         # 4-byte Reload
	movq	112(%rsp), %r8          # 8-byte Reload
	movq	88(%rsp), %r9           # 8-byte Reload
	jmp	.LBB0_24
.Lfunc_end0:
	.size	mem_gray_strip_copy_rop, .Lfunc_end0-mem_gray_strip_copy_rop
	.cfi_endproc

	.align	16, 0x90
	.type	mem_gray_rop_fill_rectangle,@function
mem_gray_rop_fill_rectangle:            # @mem_gray_rop_fill_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-1, %eax
	retq
.Lfunc_end1:
	.size	mem_gray_rop_fill_rectangle, .Lfunc_end1-mem_gray_rop_fill_rectangle
	.cfi_endproc

	.align	16, 0x90
	.type	mem_gray_rop_copy_mono,@function
mem_gray_rop_copy_mono:                 # @mem_gray_rop_copy_mono
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-1, %eax
	retq
.Lfunc_end2:
	.size	mem_gray_rop_copy_mono, .Lfunc_end2-mem_gray_rop_copy_mono
	.cfi_endproc

	.align	16, 0x90
	.type	mem_gray_rop_strip_tile_rectangle,@function
mem_gray_rop_strip_tile_rectangle:      # @mem_gray_rop_strip_tile_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-1, %eax
	retq
.Lfunc_end3:
	.size	mem_gray_rop_strip_tile_rectangle, .Lfunc_end3-mem_gray_rop_strip_tile_rectangle
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
