	.text
	.file	"title.bc"
	.globl	title
	.align	16, 0x90
	.type	title,@function
title:                                  # @title
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
	subq	$464, %rsp              # imm = 0x1D0
	testb	%al, %al
	movaps	%xmm7, -256(%rbp)       # 16-byte Spill
	movaps	%xmm6, -272(%rbp)       # 16-byte Spill
	movaps	%xmm5, -288(%rbp)       # 16-byte Spill
	movaps	%xmm4, -304(%rbp)       # 16-byte Spill
	movaps	%xmm3, -320(%rbp)       # 16-byte Spill
	movaps	%xmm2, -336(%rbp)       # 16-byte Spill
	movaps	%xmm1, -352(%rbp)       # 16-byte Spill
	movaps	%xmm0, -368(%rbp)       # 16-byte Spill
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	movq	%r9, -384(%rbp)         # 8-byte Spill
	movq	%r8, -392(%rbp)         # 8-byte Spill
	movq	%rcx, -400(%rbp)        # 8-byte Spill
	movl	%edx, -404(%rbp)        # 4-byte Spill
	movl	%esi, -408(%rbp)        # 4-byte Spill
	je	.LBB0_22
# BB#21:                                # %entry
	movaps	-368(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -192(%rbp)
	movaps	-352(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -176(%rbp)
	movaps	-336(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -160(%rbp)
	movaps	-320(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -144(%rbp)
	movaps	-304(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -128(%rbp)
	movaps	-288(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -112(%rbp)
	movaps	-272(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -96(%rbp)
	movaps	-256(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -80(%rbp)
.LBB0_22:                               # %entry
	movq	-384(%rbp), %rax        # 8-byte Reload
	movq	%rax, -200(%rbp)
	movq	-392(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -208(%rbp)
	movl	-408(%rbp), %edx        # 4-byte Reload
	movb	%dl, %sil
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movl	-404(%rbp), %r8d        # 4-byte Reload
	movq	-376(%rbp), %r9         # 8-byte Reload
	leaq	-64(%rbp), %r10
	movq	%r9, -8(%rbp)
	movb	%sil, -9(%rbp)
	movl	%r8d, -16(%rbp)
	movq	%rdi, -24(%rbp)
	movq	%r10, %rdi
	leaq	-240(%rbp), %r9
	movq	%r9, 16(%rdi)
	leaq	16(%rbp), %r9
	movq	%r9, 8(%rdi)
	movl	$48, 4(%rdi)
	movl	$32, (%rdi)
	movq	-24(%rbp), %rdi
	movq	%r10, %rsi
	callq	vprintflen
	leaq	-64(%rbp), %rcx
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rcx, -416(%rbp)        # 8-byte Spill
	callq	strlen
	subq	$1, %rax
	movq	-24(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$10, %edx
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movl	-28(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -28(%rbp)
.LBB0_2:                                # %if.end
	cmpl	$0, -16(%rbp)
	je	.LBB0_8
# BB#3:                                 # %if.then.7
	movl	$0, -32(%rbp)
.LBB0_4:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	$79, %eax
	movl	-32(%rbp), %ecx
	subl	-28(%rbp), %eax
	cmpl	%eax, %ecx
	jge	.LBB0_7
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	$32, %edi
	movq	-8(%rbp), %rsi
	callq	_IO_putc
	movl	%eax, -420(%rbp)        # 4-byte Spill
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	-32(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB0_4
.LBB0_7:                                # %for.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.12
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
	leaq	-240(%rbp), %rdx
	movq	%rdx, 16(%rcx)
	leaq	16(%rbp), %rdx
	movq	%rdx, 8(%rcx)
	movl	$48, 4(%rcx)
	movl	$32, (%rcx)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	%rax, %rdx
	callq	vfprintf
	leaq	-64(%rbp), %rcx
	movq	-24(%rbp), %rdi
	movl	%eax, -424(%rbp)        # 4-byte Spill
	movq	%rcx, -432(%rbp)        # 8-byte Spill
	callq	strlen
	subq	$1, %rax
	movq	-24(%rbp), %rcx
	movsbl	(%rcx,%rax), %r8d
	cmpl	$10, %r8d
	je	.LBB0_10
# BB#9:                                 # %if.then.25
	movl	$10, %edi
	movq	-8(%rbp), %rsi
	callq	_IO_putc
	movl	%eax, -436(%rbp)        # 4-byte Spill
.LBB0_10:                               # %if.end.27
	cmpl	$0, -16(%rbp)
	je	.LBB0_16
# BB#11:                                # %if.then.29
	movl	$0, -32(%rbp)
.LBB0_12:                               # %for.cond.30
                                        # =>This Inner Loop Header: Depth=1
	movl	$79, %eax
	movl	-32(%rbp), %ecx
	subl	-28(%rbp), %eax
	cmpl	%eax, %ecx
	jge	.LBB0_15
# BB#13:                                # %for.body.34
                                        #   in Loop: Header=BB0_12 Depth=1
	movl	$32, %edi
	movq	-8(%rbp), %rsi
	callq	_IO_putc
	movl	%eax, -440(%rbp)        # 4-byte Spill
# BB#14:                                # %for.inc.36
                                        #   in Loop: Header=BB0_12 Depth=1
	movl	-32(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB0_12
.LBB0_15:                               # %for.end.38
	jmp	.LBB0_16
.LBB0_16:                               # %if.end.39
	jmp	.LBB0_17
.LBB0_17:                               # %for.cond.40
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -28(%rbp)
	je	.LBB0_20
# BB#18:                                # %for.body.42
                                        #   in Loop: Header=BB0_17 Depth=1
	movsbl	-9(%rbp), %edi
	movq	-8(%rbp), %rsi
	callq	_IO_putc
	movl	%eax, -444(%rbp)        # 4-byte Spill
# BB#19:                                # %for.inc.45
                                        #   in Loop: Header=BB0_17 Depth=1
	movl	-28(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_17
.LBB0_20:                               # %for.end.47
	movq	-8(%rbp), %rsi
	movl	$10, %edi
	callq	_IO_putc
	movq	-8(%rbp), %rdi
	movl	%eax, -448(%rbp)        # 4-byte Spill
	callq	fflush
	movl	%eax, -452(%rbp)        # 4-byte Spill
	addq	$464, %rsp              # imm = 0x1D0
	popq	%rbp
	retq
.Lfunc_end0:
	.size	title, .Lfunc_end0-title
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
