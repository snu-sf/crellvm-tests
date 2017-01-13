	.text
	.file	"xstrrpl.bc"
	.globl	xstrrpl
	.align	16, 0x90
	.type	xstrrpl,@function
xstrrpl:                                # @xstrrpl
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -48(%rbp)
	movl	$0, -36(%rbp)
.LBB0_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-36(%rbp), %rax
	shlq	$4, %rax
	addq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-48(%rbp), %rax
	movslq	-36(%rbp), %rcx
	shlq	$4, %rcx
	addq	-16(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	strlen
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jbe	.LBB0_4
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB0_5
.LBB0_4:                                # %cond.false
                                        #   in Loop: Header=BB0_1 Depth=1
	movslq	-36(%rbp), %rax
	shlq	$4, %rax
	addq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	strlen
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB0_5:                                # %cond.end
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, -48(%rbp)
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB0_1
.LBB0_7:                                # %for.end
	movq	-8(%rbp), %rdi
	callq	strlen
	movq	-48(%rbp), %rdi
	addq	$1, %rdi
	imulq	%rdi, %rax
	addq	$1, %rax
	shlq	$0, %rax
	movq	%rax, %rdi
	callq	xmalloc
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB0_8:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_10 Depth 2
	movq	-8(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB0_17
# BB#9:                                 # %while.body
                                        #   in Loop: Header=BB0_8 Depth=1
	movl	$0, -36(%rbp)
.LBB0_10:                               # %for.cond.14
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-36(%rbp), %rax
	shlq	$4, %rax
	addq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_15
# BB#11:                                # %for.body.19
                                        #   in Loop: Header=BB0_10 Depth=2
	movslq	-36(%rbp), %rax
	shlq	$4, %rax
	addq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movq	-8(%rbp), %rsi
	movslq	-36(%rbp), %rax
	shlq	$4, %rax
	addq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	strlen
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB0_13
# BB#12:                                # %if.then
                                        #   in Loop: Header=BB0_8 Depth=1
	movq	-32(%rbp), %rdi
	movslq	-36(%rbp), %rax
	shlq	$4, %rax
	addq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	callq	stpcpy
	movq	%rax, -32(%rbp)
	movslq	-36(%rbp), %rax
	shlq	$4, %rax
	addq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	strlen
	addq	-8(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_16
.LBB0_13:                               # %if.end
                                        #   in Loop: Header=BB0_10 Depth=2
	jmp	.LBB0_14
.LBB0_14:                               # %for.inc.37
                                        #   in Loop: Header=BB0_10 Depth=2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB0_10
.LBB0_15:                               # %for.end.39
                                        #   in Loop: Header=BB0_8 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -8(%rbp)
	movb	(%rax), %dl
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movb	%dl, (%rax)
.LBB0_16:                               # %__next_char
                                        #   in Loop: Header=BB0_8 Depth=1
	jmp	.LBB0_8
.LBB0_17:                               # %while.end
	movq	-32(%rbp), %rax
	movb	$0, (%rax)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	%rcx, %rax
	addq	$1, %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	xstrrpl, .Lfunc_end0-xstrrpl
	.cfi_endproc

	.globl	strrpl
	.align	16, 0x90
	.type	strrpl,@function
strrpl:                                 # @strrpl
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	-16(%rbp), %rsi
	callq	xstrrpl
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	free
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rsi
	movq	%rax, (%rsi)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	strrpl, .Lfunc_end1-strrpl
	.cfi_endproc

	.globl	xvstrrpl
	.align	16, 0x90
	.type	xvstrrpl,@function
xvstrrpl:                               # @xvstrrpl
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
	subq	$2064, %rsp             # imm = 0x810
	testb	%al, %al
	movaps	%xmm7, -1856(%rbp)      # 16-byte Spill
	movaps	%xmm6, -1872(%rbp)      # 16-byte Spill
	movaps	%xmm5, -1888(%rbp)      # 16-byte Spill
	movaps	%xmm4, -1904(%rbp)      # 16-byte Spill
	movaps	%xmm3, -1920(%rbp)      # 16-byte Spill
	movaps	%xmm2, -1936(%rbp)      # 16-byte Spill
	movaps	%xmm1, -1952(%rbp)      # 16-byte Spill
	movaps	%xmm0, -1968(%rbp)      # 16-byte Spill
	movq	%rdi, -1976(%rbp)       # 8-byte Spill
	movq	%r9, -1984(%rbp)        # 8-byte Spill
	movq	%r8, -1992(%rbp)        # 8-byte Spill
	movq	%rcx, -2000(%rbp)       # 8-byte Spill
	movq	%rdx, -2008(%rbp)       # 8-byte Spill
	movq	%rsi, -2016(%rbp)       # 8-byte Spill
	je	.LBB2_12
# BB#11:                                # %entry
	movaps	-1968(%rbp), %xmm0      # 16-byte Reload
	movaps	%xmm0, -1792(%rbp)
	movaps	-1952(%rbp), %xmm1      # 16-byte Reload
	movaps	%xmm1, -1776(%rbp)
	movaps	-1936(%rbp), %xmm2      # 16-byte Reload
	movaps	%xmm2, -1760(%rbp)
	movaps	-1920(%rbp), %xmm3      # 16-byte Reload
	movaps	%xmm3, -1744(%rbp)
	movaps	-1904(%rbp), %xmm4      # 16-byte Reload
	movaps	%xmm4, -1728(%rbp)
	movaps	-1888(%rbp), %xmm5      # 16-byte Reload
	movaps	%xmm5, -1712(%rbp)
	movaps	-1872(%rbp), %xmm6      # 16-byte Reload
	movaps	%xmm6, -1696(%rbp)
	movaps	-1856(%rbp), %xmm7      # 16-byte Reload
	movaps	%xmm7, -1680(%rbp)
.LBB2_12:                               # %entry
	movq	-1984(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1800(%rbp)
	movq	-1992(%rbp), %rcx       # 8-byte Reload
	movq	%rcx, -1808(%rbp)
	movq	-2000(%rbp), %rdx       # 8-byte Reload
	movq	%rdx, -1816(%rbp)
	movq	-2008(%rbp), %rsi       # 8-byte Reload
	movq	%rsi, -1824(%rbp)
	movq	-2016(%rbp), %rdi       # 8-byte Reload
	movq	%rdi, -1832(%rbp)
	movq	-1976(%rbp), %r8        # 8-byte Reload
	leaq	-48(%rbp), %r9
	movq	%r8, -16(%rbp)
	movl	$0, -1652(%rbp)
	leaq	-1840(%rbp), %r8
	movq	%r8, 16(%r9)
	leaq	16(%rbp), %r8
	movq	%r8, 8(%r9)
	movl	$48, 4(%r9)
	movl	$8, (%r9)
	movl	$0, -1652(%rbp)
.LBB2_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	leaq	-48(%rbp), %rax
	movl	-48(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -2024(%rbp)       # 8-byte Spill
	movl	%ecx, -2028(%rbp)       # 4-byte Spill
	ja	.LBB2_3
# BB#2:                                 # %vaarg.in_reg
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-2028(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	-2024(%rbp), %rdx       # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -2040(%rbp)       # 8-byte Spill
	jmp	.LBB2_4
.LBB2_3:                                # %vaarg.in_mem
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-2024(%rbp), %rax       # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -2040(%rbp)       # 8-byte Spill
.LBB2_4:                                # %vaarg.end
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-2040(%rbp), %rax       # 8-byte Reload
	leaq	-1648(%rbp), %rcx
	movl	$2, %edx
	movq	(%rax), %rax
	movl	-1652(%rbp), %esi
	movq	%rax, -2048(%rbp)       # 8-byte Spill
	movl	%esi, %eax
	movl	%edx, -2052(%rbp)       # 4-byte Spill
	cltd
	movl	-2052(%rbp), %esi       # 4-byte Reload
	idivl	%esi
	movslq	%edx, %rdi
	movl	-1652(%rbp), %edx
	movl	%edx, %eax
	cltd
	idivl	%esi
	movslq	%eax, %r8
	shlq	$4, %r8
	addq	%r8, %rcx
	movq	-2048(%rbp), %r8        # 8-byte Reload
	movq	%r8, (%rcx,%rdi,8)
	cmpq	$0, %r8
	je	.LBB2_7
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_6
.LBB2_6:                                # %for.inc
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-1652(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1652(%rbp)
	jmp	.LBB2_1
.LBB2_7:                                # %for.end
	movl	$2, %eax
	leaq	-48(%rbp), %rcx
	movl	-1652(%rbp), %edx
	movl	%eax, -2056(%rbp)       # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-2056(%rbp), %esi       # 4-byte Reload
	idivl	%esi
	cmpl	$0, %edx
	movq	%rcx, -2064(%rbp)       # 8-byte Spill
	je	.LBB2_9
# BB#8:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB2_10
.LBB2_9:                                # %if.end
	leaq	-1648(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	xstrrpl
	movq	%rax, -8(%rbp)
.LBB2_10:                               # %return
	movq	-8(%rbp), %rax
	addq	$2064, %rsp             # imm = 0x810
	popq	%rbp
	retq
.Lfunc_end2:
	.size	xvstrrpl, .Lfunc_end2-xvstrrpl
	.cfi_endproc

	.globl	vstrrpl
	.align	16, 0x90
	.type	vstrrpl,@function
vstrrpl:                                # @vstrrpl
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
	subq	$2048, %rsp             # imm = 0x800
	testb	%al, %al
	movaps	%xmm7, -1840(%rbp)      # 16-byte Spill
	movaps	%xmm6, -1856(%rbp)      # 16-byte Spill
	movaps	%xmm5, -1872(%rbp)      # 16-byte Spill
	movaps	%xmm4, -1888(%rbp)      # 16-byte Spill
	movaps	%xmm3, -1904(%rbp)      # 16-byte Spill
	movaps	%xmm2, -1920(%rbp)      # 16-byte Spill
	movaps	%xmm1, -1936(%rbp)      # 16-byte Spill
	movaps	%xmm0, -1952(%rbp)      # 16-byte Spill
	movq	%rdi, -1960(%rbp)       # 8-byte Spill
	movq	%r9, -1968(%rbp)        # 8-byte Spill
	movq	%r8, -1976(%rbp)        # 8-byte Spill
	movq	%rcx, -1984(%rbp)       # 8-byte Spill
	movq	%rdx, -1992(%rbp)       # 8-byte Spill
	movq	%rsi, -2000(%rbp)       # 8-byte Spill
	je	.LBB3_12
# BB#11:                                # %entry
	movaps	-1952(%rbp), %xmm0      # 16-byte Reload
	movaps	%xmm0, -1776(%rbp)
	movaps	-1936(%rbp), %xmm1      # 16-byte Reload
	movaps	%xmm1, -1760(%rbp)
	movaps	-1920(%rbp), %xmm2      # 16-byte Reload
	movaps	%xmm2, -1744(%rbp)
	movaps	-1904(%rbp), %xmm3      # 16-byte Reload
	movaps	%xmm3, -1728(%rbp)
	movaps	-1888(%rbp), %xmm4      # 16-byte Reload
	movaps	%xmm4, -1712(%rbp)
	movaps	-1872(%rbp), %xmm5      # 16-byte Reload
	movaps	%xmm5, -1696(%rbp)
	movaps	-1856(%rbp), %xmm6      # 16-byte Reload
	movaps	%xmm6, -1680(%rbp)
	movaps	-1840(%rbp), %xmm7      # 16-byte Reload
	movaps	%xmm7, -1664(%rbp)
.LBB3_12:                               # %entry
	movq	-1968(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1784(%rbp)
	movq	-1976(%rbp), %rcx       # 8-byte Reload
	movq	%rcx, -1792(%rbp)
	movq	-1984(%rbp), %rdx       # 8-byte Reload
	movq	%rdx, -1800(%rbp)
	movq	-1992(%rbp), %rsi       # 8-byte Reload
	movq	%rsi, -1808(%rbp)
	movq	-2000(%rbp), %rdi       # 8-byte Reload
	movq	%rdi, -1816(%rbp)
	movq	-1960(%rbp), %r8        # 8-byte Reload
	leaq	-32(%rbp), %r9
	movq	%r8, -8(%rbp)
	movl	$0, -1636(%rbp)
	leaq	-1824(%rbp), %r8
	movq	%r8, 16(%r9)
	leaq	16(%rbp), %r8
	movq	%r8, 8(%r9)
	movl	$48, 4(%r9)
	movl	$8, (%r9)
	movl	$0, -1636(%rbp)
.LBB3_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	leaq	-32(%rbp), %rax
	movl	-32(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -2008(%rbp)       # 8-byte Spill
	movl	%ecx, -2012(%rbp)       # 4-byte Spill
	ja	.LBB3_3
# BB#2:                                 # %vaarg.in_reg
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-2012(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	-2008(%rbp), %rdx       # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -2024(%rbp)       # 8-byte Spill
	jmp	.LBB3_4
.LBB3_3:                                # %vaarg.in_mem
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-2008(%rbp), %rax       # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -2024(%rbp)       # 8-byte Spill
.LBB3_4:                                # %vaarg.end
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-2024(%rbp), %rax       # 8-byte Reload
	leaq	-1632(%rbp), %rcx
	movl	$2, %edx
	movq	(%rax), %rax
	movl	-1636(%rbp), %esi
	movq	%rax, -2032(%rbp)       # 8-byte Spill
	movl	%esi, %eax
	movl	%edx, -2036(%rbp)       # 4-byte Spill
	cltd
	movl	-2036(%rbp), %esi       # 4-byte Reload
	idivl	%esi
	movslq	%edx, %rdi
	movl	-1636(%rbp), %edx
	movl	%edx, %eax
	cltd
	idivl	%esi
	movslq	%eax, %r8
	shlq	$4, %r8
	addq	%r8, %rcx
	movq	-2032(%rbp), %r8        # 8-byte Reload
	movq	%r8, (%rcx,%rdi,8)
	cmpq	$0, %r8
	je	.LBB3_7
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_6
.LBB3_6:                                # %for.inc
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-1636(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1636(%rbp)
	jmp	.LBB3_1
.LBB3_7:                                # %for.end
	movl	$2, %eax
	leaq	-32(%rbp), %rcx
	movl	-1636(%rbp), %edx
	movl	%eax, -2040(%rbp)       # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-2040(%rbp), %esi       # 4-byte Reload
	idivl	%esi
	cmpl	$0, %edx
	movq	%rcx, -2048(%rbp)       # 8-byte Spill
	je	.LBB3_9
# BB#8:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	free
	jmp	.LBB3_10
.LBB3_9:                                # %if.else
	leaq	-1632(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	strrpl
.LBB3_10:                               # %if.end
	addq	$2048, %rsp             # imm = 0x800
	popq	%rbp
	retq
.Lfunc_end3:
	.size	vstrrpl, .Lfunc_end3-vstrrpl
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
