	.text
	.file	"maze-algorithms.bc"
	.globl	mazegen
	.align	16, 0x90
	.type	mazegen,@function
mazegen:                                # @mazegen
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
	subq	$112, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	$0, -36(%rbp)
	movl	$1, -40(%rbp)
	movslq	-4(%rbp), %rsi
	movq	-16(%rbp), %rax
	movb	$1, (%rax,%rsi)
.LBB0_1:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
	movl	-4(%rbp), %eax
	movl	-20(%rbp), %ecx
	shll	$1, %ecx
	cmpl	%ecx, %eax
	jg	.LBB0_3
# BB#2:                                 # %cond.true
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB0_4
.LBB0_3:                                # %cond.false
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	$1, %eax
	xorl	%ecx, %ecx
	movl	-4(%rbp), %edx
	subl	-20(%rbp), %edx
	subl	-20(%rbp), %edx
	movslq	%edx, %rsi
	movq	-16(%rbp), %rdi
	movzbl	(%rdi,%rsi), %edx
	cmpl	$0, %edx
	cmovnel	%ecx, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB0_4:                                # %cond.end
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-44(%rbp), %eax         # 4-byte Reload
	movl	-4(%rbp), %ecx
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %esi
	subl	$2, %esi
	imull	%esi, %edx
	cmpl	%edx, %ecx
	movl	%eax, -48(%rbp)         # 4-byte Spill
	jl	.LBB0_6
# BB#5:                                 # %cond.true.9
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB0_7
.LBB0_6:                                # %cond.false.10
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	$2, %eax
	xorl	%ecx, %ecx
	movl	-4(%rbp), %edx
	addl	-20(%rbp), %edx
	addl	-20(%rbp), %edx
	movslq	%edx, %rsi
	movq	-16(%rbp), %rdi
	movzbl	(%rdi,%rsi), %edx
	cmpl	$0, %edx
	cmovnel	%ecx, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB0_7:                                # %cond.end.17
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-52(%rbp), %eax         # 4-byte Reload
	movl	-48(%rbp), %ecx         # 4-byte Reload
	orl	%eax, %ecx
	movl	-4(%rbp), %eax
	cltd
	idivl	-20(%rbp)
	movl	-20(%rbp), %esi
	subl	$2, %esi
	cmpl	%esi, %edx
	movl	%ecx, -56(%rbp)         # 4-byte Spill
	jne	.LBB0_9
# BB#8:                                 # %cond.true.22
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB0_10
.LBB0_9:                                # %cond.false.23
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	$4, %eax
	xorl	%ecx, %ecx
	movl	-4(%rbp), %edx
	addl	$2, %edx
	movslq	%edx, %rsi
	movq	-16(%rbp), %rdi
	movzbl	(%rdi,%rsi), %edx
	cmpl	$0, %edx
	cmovnel	%ecx, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB0_10:                               # %cond.end.30
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-60(%rbp), %eax         # 4-byte Reload
	movl	-56(%rbp), %ecx         # 4-byte Reload
	orl	%eax, %ecx
	movl	-4(%rbp), %eax
	cltd
	idivl	-20(%rbp)
	cmpl	$1, %edx
	movl	%ecx, -64(%rbp)         # 4-byte Spill
	jne	.LBB0_12
# BB#11:                                # %cond.true.36
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB0_13
.LBB0_12:                               # %cond.false.37
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	$8, %eax
	xorl	%ecx, %ecx
	movl	-4(%rbp), %edx
	subl	$2, %edx
	movslq	%edx, %rsi
	movq	-16(%rbp), %rdi
	movzbl	(%rdi,%rsi), %edx
	cmpl	$0, %edx
	cmovnel	%ecx, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB0_13:                               # %cond.end.44
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	movl	-64(%rbp), %ecx         # 4-byte Reload
	orl	%eax, %ecx
	movb	%cl, %dl
	movb	%dl, -29(%rbp)
	cmpb	$0, %dl
	je	.LBB0_27
# BB#14:                                # %while.body
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_15
.LBB0_15:                               # %do.body
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-28(%rbp), %eax
	imull	mvals+16, %eax
	addl	mvals+20, %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	movsbl	-29(%rbp), %ecx
	cltd
	idivl	%ecx
	andl	$3, %eax
	movb	%al, %sil
	movb	%sil, -30(%rbp)
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	cmpl	$100, %eax
	jle	.LBB0_17
# BB#16:                                # %if.then
                                        #   in Loop: Header=BB0_1 Depth=1
	movb	$99, -30(%rbp)
	jmp	.LBB0_19
.LBB0_17:                               # %if.end
                                        #   in Loop: Header=BB0_15 Depth=2
	jmp	.LBB0_18
.LBB0_18:                               # %do.cond
                                        #   in Loop: Header=BB0_15 Depth=2
	movl	$1, %eax
	movsbl	-29(%rbp), %ecx
	movsbl	-30(%rbp), %edx
	movl	%ecx, -72(%rbp)         # 4-byte Spill
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	movl	-72(%rbp), %edx         # 4-byte Reload
	andl	%eax, %edx
	cmpl	$0, %edx
	setne	%cl
	xorb	$-1, %cl
	testb	$1, %cl
	jne	.LBB0_15
.LBB0_19:                               # %do.end
                                        #   in Loop: Header=BB0_1 Depth=1
	movsbl	-30(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	je	.LBB0_20
	jmp	.LBB0_29
.LBB0_29:                               # %do.end
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	je	.LBB0_21
	jmp	.LBB0_30
.LBB0_30:                               # %do.end
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB0_22
	jmp	.LBB0_31
.LBB0_31:                               # %do.end
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB0_23
	jmp	.LBB0_32
.LBB0_32:                               # %do.end
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$99, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB0_24
	jmp	.LBB0_25
.LBB0_20:                               # %sw.bb
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	subl	-20(%rbp), %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB0_26
.LBB0_21:                               # %sw.bb.61
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB0_26
.LBB0_22:                               # %sw.bb.62
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	$1, -40(%rbp)
	jmp	.LBB0_26
.LBB0_23:                               # %sw.bb.63
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	$-1, -40(%rbp)
	jmp	.LBB0_26
.LBB0_24:                               # %sw.bb.64
	jmp	.LBB0_28
.LBB0_25:                               # %sw.default
                                        #   in Loop: Header=BB0_1 Depth=1
	movabsq	$.L.str, %rdi
	movsbl	-30(%rbp), %esi
	movsbl	-29(%rbp), %edx
	movl	mvals+8, %ecx
	movl	-20(%rbp), %r8d
	movl	-24(%rbp), %r9d
	movl	mvals+16, %eax
	movl	mvals+20, %r10d
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	movb	$0, %al
	callq	g_warning
.LBB0_26:                               # %sw.epilog
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-4(%rbp), %eax
	addl	-40(%rbp), %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movb	$1, (%rdx,%rcx)
	movl	-4(%rbp), %eax
	movl	-40(%rbp), %esi
	shll	$1, %esi
	addl	%esi, %eax
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-28(%rbp), %r8d
	movl	%eax, %edi
	callq	mazegen
	jmp	.LBB0_1
.LBB0_27:                               # %while.end
	jmp	.LBB0_28
.LBB0_28:                               # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	mazegen, .Lfunc_end0-mazegen
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	subq	$384, %rsp              # imm = 0x180
	testb	%al, %al
	movaps	%xmm7, -224(%rbp)       # 16-byte Spill
	movaps	%xmm6, -240(%rbp)       # 16-byte Spill
	movaps	%xmm5, -256(%rbp)       # 16-byte Spill
	movaps	%xmm4, -272(%rbp)       # 16-byte Spill
	movaps	%xmm3, -288(%rbp)       # 16-byte Spill
	movaps	%xmm2, -304(%rbp)       # 16-byte Spill
	movaps	%xmm1, -320(%rbp)       # 16-byte Spill
	movaps	%xmm0, -336(%rbp)       # 16-byte Spill
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%r9, -352(%rbp)         # 8-byte Spill
	movq	%r8, -360(%rbp)         # 8-byte Spill
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	movq	%rdx, -376(%rbp)        # 8-byte Spill
	movq	%rsi, -384(%rbp)        # 8-byte Spill
	je	.LBB1_2
# BB#1:                                 # %entry
	movaps	-336(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -160(%rbp)
	movaps	-320(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -144(%rbp)
	movaps	-304(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -128(%rbp)
	movaps	-288(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -112(%rbp)
	movaps	-272(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -96(%rbp)
	movaps	-256(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -80(%rbp)
	movaps	-240(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -64(%rbp)
	movaps	-224(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -48(%rbp)
.LBB1_2:                                # %entry
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	%rax, -168(%rbp)
	movq	-360(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -176(%rbp)
	movq	-368(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -184(%rbp)
	movq	-376(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -192(%rbp)
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, -200(%rbp)
	movq	-344(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	leaq	-208(%rbp), %r8
	movq	%r8, -16(%rbp)
	leaq	16(%rbp), %r8
	movq	%r8, -24(%rbp)
	movl	$48, -28(%rbp)
	movl	$8, -32(%rbp)
	movq	-8(%rbp), %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end1:
	.size	g_warning, .Lfunc_end1-g_warning
	.cfi_endproc

	.globl	mazegen_tileable
	.align	16, 0x90
	.type	mazegen_tileable,@function
mazegen_tileable:                       # @mazegen_tileable
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
	subq	$144, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	$0, -36(%rbp)
	movl	$2, -40(%rbp)
	movslq	-4(%rbp), %rsi
	movq	-16(%rbp), %rax
	movb	$1, (%rax,%rsi)
.LBB2_1:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_15 Depth 2
	movl	-4(%rbp), %eax
	movl	-20(%rbp), %ecx
	shll	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB2_3
# BB#2:                                 # %cond.true
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-20(%rbp), %eax
	movl	-24(%rbp), %ecx
	subl	$2, %ecx
	imull	%ecx, %eax
	addl	-4(%rbp), %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB2_4
.LBB2_3:                                # %cond.false
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-4(%rbp), %eax
	subl	-20(%rbp), %eax
	subl	-20(%rbp), %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB2_4:                                # %cond.end
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-44(%rbp), %eax         # 4-byte Reload
	movl	$1, %ecx
	xorl	%edx, %edx
	movslq	%eax, %rsi
	movq	-16(%rbp), %rdi
	movzbl	(%rdi,%rsi), %eax
	cmpl	$0, %eax
	cmovnel	%edx, %ecx
	movl	-4(%rbp), %eax
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %r8d
	subl	$2, %r8d
	imull	%r8d, %edx
	cmpl	%edx, %eax
	movl	%ecx, -48(%rbp)         # 4-byte Spill
	jl	.LBB2_6
# BB#5:                                 # %cond.true.11
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-4(%rbp), %eax
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %edx
	subl	$2, %edx
	imull	%edx, %ecx
	subl	%ecx, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB2_7
.LBB2_6:                                # %cond.false.15
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-4(%rbp), %eax
	addl	-20(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB2_7:                                # %cond.end.18
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-52(%rbp), %eax         # 4-byte Reload
	movl	$2, %ecx
	xorl	%edx, %edx
	movslq	%eax, %rsi
	movq	-16(%rbp), %rdi
	movzbl	(%rdi,%rsi), %eax
	cmpl	$0, %eax
	cmovnel	%edx, %ecx
	movl	-48(%rbp), %eax         # 4-byte Reload
	orl	%ecx, %eax
	movl	-4(%rbp), %ecx
	movl	%eax, -56(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	-20(%rbp)
	movl	-20(%rbp), %ecx
	subl	$2, %ecx
	cmpl	%ecx, %edx
	jl	.LBB2_9
# BB#8:                                 # %cond.true.28
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$2, %eax
	subl	-20(%rbp), %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB2_10
.LBB2_9:                                # %cond.false.31
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB2_10:                               # %cond.end.33
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax         # 4-byte Reload
	movl	$4, %ecx
	xorl	%edx, %edx
	movslq	%eax, %rsi
	movq	-16(%rbp), %rdi
	movzbl	(%rdi,%rsi), %eax
	cmpl	$0, %eax
	cmovnel	%edx, %ecx
	movl	-56(%rbp), %eax         # 4-byte Reload
	orl	%ecx, %eax
	movl	-4(%rbp), %ecx
	movl	%eax, -64(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	-20(%rbp)
	cmpl	$1, %edx
	jg	.LBB2_12
# BB#11:                                # %cond.true.44
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-4(%rbp), %eax
	addl	-20(%rbp), %eax
	subl	$2, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB2_13
.LBB2_12:                               # %cond.false.47
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-4(%rbp), %eax
	subl	$2, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB2_13:                               # %cond.end.49
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	movl	$8, %ecx
	xorl	%edx, %edx
	movslq	%eax, %rsi
	movq	-16(%rbp), %rdi
	movzbl	(%rdi,%rsi), %eax
	cmpl	$0, %eax
	cmovnel	%edx, %ecx
	movl	-64(%rbp), %eax         # 4-byte Reload
	orl	%ecx, %eax
	movb	%al, %r8b
	movb	%r8b, -29(%rbp)
	cmpb	$0, %r8b
	je	.LBB2_45
# BB#14:                                # %while.body
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_15
.LBB2_15:                               # %do.body
                                        #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-28(%rbp), %eax
	imull	mvals+16, %eax
	addl	mvals+20, %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	movsbl	-29(%rbp), %ecx
	cltd
	idivl	%ecx
	andl	$3, %eax
	movb	%al, %sil
	movb	%sil, -30(%rbp)
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	cmpl	$100, %eax
	jle	.LBB2_17
# BB#16:                                # %if.then
                                        #   in Loop: Header=BB2_1 Depth=1
	movb	$99, -30(%rbp)
	jmp	.LBB2_19
.LBB2_17:                               # %if.end
                                        #   in Loop: Header=BB2_15 Depth=2
	jmp	.LBB2_18
.LBB2_18:                               # %do.cond
                                        #   in Loop: Header=BB2_15 Depth=2
	movl	$1, %eax
	movsbl	-29(%rbp), %ecx
	movsbl	-30(%rbp), %edx
	movl	%ecx, -72(%rbp)         # 4-byte Spill
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	movl	-72(%rbp), %edx         # 4-byte Reload
	andl	%eax, %edx
	cmpl	$0, %edx
	setne	%cl
	xorb	$-1, %cl
	testb	$1, %cl
	jne	.LBB2_15
.LBB2_19:                               # %do.end
                                        #   in Loop: Header=BB2_1 Depth=1
	movsbl	-30(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	je	.LBB2_20
	jmp	.LBB2_47
.LBB2_47:                               # %do.end
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	je	.LBB2_27
	jmp	.LBB2_48
.LBB2_48:                               # %do.end
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB2_31
	jmp	.LBB2_49
.LBB2_49:                               # %do.end
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB2_35
	jmp	.LBB2_50
.LBB2_50:                               # %do.end
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$99, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB2_42
	jmp	.LBB2_43
.LBB2_20:                               # %sw.bb
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-4(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB2_22
# BB#21:                                # %cond.true.72
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-20(%rbp), %eax
	movl	-24(%rbp), %ecx
	subl	$1, %ecx
	imull	%ecx, %eax
	addl	-4(%rbp), %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jmp	.LBB2_23
.LBB2_22:                               # %cond.false.76
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-4(%rbp), %eax
	subl	-20(%rbp), %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
.LBB2_23:                               # %cond.end.78
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-96(%rbp), %eax         # 4-byte Reload
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movb	$1, (%rdx,%rcx)
	movl	-4(%rbp), %eax
	movl	-20(%rbp), %esi
	shll	$1, %esi
	cmpl	%esi, %eax
	jge	.LBB2_25
# BB#24:                                # %cond.true.85
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-20(%rbp), %eax
	movl	-24(%rbp), %ecx
	subl	$2, %ecx
	imull	%ecx, %eax
	addl	-4(%rbp), %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB2_26
.LBB2_25:                               # %cond.false.89
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-4(%rbp), %eax
	subl	-20(%rbp), %eax
	subl	-20(%rbp), %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB2_26:                               # %cond.end.92
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-100(%rbp), %eax        # 4-byte Reload
	movl	%eax, -40(%rbp)
	jmp	.LBB2_44
.LBB2_27:                               # %sw.bb.94
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-4(%rbp), %eax
	addl	-20(%rbp), %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movb	$1, (%rdx,%rcx)
	movl	-4(%rbp), %eax
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edi
	subl	$2, %edi
	imull	%edi, %esi
	cmpl	%esi, %eax
	jl	.LBB2_29
# BB#28:                                # %cond.true.102
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-4(%rbp), %eax
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %edx
	subl	$2, %edx
	imull	%edx, %ecx
	subl	%ecx, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB2_30
.LBB2_29:                               # %cond.false.106
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-4(%rbp), %eax
	addl	-20(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
.LBB2_30:                               # %cond.end.109
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-104(%rbp), %eax        # 4-byte Reload
	movl	%eax, -40(%rbp)
	jmp	.LBB2_44
.LBB2_31:                               # %sw.bb.111
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movb	$1, (%rdx,%rcx)
	movl	-4(%rbp), %eax
	cltd
	idivl	-20(%rbp)
	movl	-20(%rbp), %esi
	subl	$2, %esi
	cmpl	%esi, %edx
	jl	.LBB2_33
# BB#32:                                # %cond.true.119
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$2, %eax
	subl	-20(%rbp), %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB2_34
.LBB2_33:                               # %cond.false.122
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB2_34:                               # %cond.end.124
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-108(%rbp), %eax        # 4-byte Reload
	movl	%eax, -40(%rbp)
	jmp	.LBB2_44
.LBB2_35:                               # %sw.bb.126
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-4(%rbp), %eax
	cltd
	idivl	-20(%rbp)
	cmpl	$0, %edx
	jne	.LBB2_37
# BB#36:                                # %cond.true.130
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-4(%rbp), %eax
	addl	-20(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB2_38
.LBB2_37:                               # %cond.false.133
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-4(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
.LBB2_38:                               # %cond.end.135
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-112(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movb	$1, (%rdx,%rcx)
	movl	-4(%rbp), %eax
	cltd
	idivl	-20(%rbp)
	cmpl	$1, %edx
	jg	.LBB2_40
# BB#39:                                # %cond.true.142
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-4(%rbp), %eax
	addl	-20(%rbp), %eax
	subl	$2, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB2_41
.LBB2_40:                               # %cond.false.145
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-4(%rbp), %eax
	subl	$2, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB2_41:                               # %cond.end.147
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-116(%rbp), %eax        # 4-byte Reload
	movl	%eax, -40(%rbp)
	jmp	.LBB2_44
.LBB2_42:                               # %sw.bb.149
	jmp	.LBB2_46
.LBB2_43:                               # %sw.default
                                        #   in Loop: Header=BB2_1 Depth=1
	movabsq	$.L.str.1, %rdi
	movsbl	-30(%rbp), %esi
	movsbl	-29(%rbp), %edx
	movl	mvals+8, %ecx
	movl	-20(%rbp), %r8d
	movl	-24(%rbp), %r9d
	movl	mvals+16, %eax
	movl	mvals+20, %r10d
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	movb	$0, %al
	callq	g_warning
.LBB2_44:                               # %sw.epilog
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-40(%rbp), %edi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-28(%rbp), %r8d
	callq	mazegen_tileable
	jmp	.LBB2_1
.LBB2_45:                               # %while.end
	jmp	.LBB2_46
.LBB2_46:                               # %return
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	mazegen_tileable, .Lfunc_end2-mazegen_tileable
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	prim
	.align	16, 0x90
	.type	prim,@function
prim:                                   # @prim
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
	subq	$208, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -56(%rbp)
	movl	$0, -68(%rbp)
	movl	mvals+8, %ecx
	movl	%ecx, -72(%rbp)
	movq	gr, %rdi
	movl	-72(%rbp), %esi
	callq	g_rand_set_seed
	movabsq	$.L.str.2, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movl	-20(%rbp), %ecx
	imull	-24(%rbp), %ecx
	shrl	$2, %ecx
	movl	%ecx, -60(%rbp)
	movslq	-4(%rbp), %rdi
	movq	-16(%rbp), %r8
	movb	$1, (%r8,%rdi)
	movl	-4(%rbp), %ecx
	movl	-20(%rbp), %edx
	shll	$1, %edx
	cmpl	%edx, %ecx
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jae	.LBB3_2
# BB#1:                                 # %cond.true
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -80(%rbp)         # 4-byte Spill
	jmp	.LBB3_3
.LBB3_2:                                # %cond.false
	movl	-4(%rbp), %eax
	subl	-20(%rbp), %eax
	subl	-20(%rbp), %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
.LBB3_3:                                # %cond.end
	movl	-80(%rbp), %eax         # 4-byte Reload
	movl	%eax, -40(%rbp)
	movl	-4(%rbp), %eax
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %edx
	subl	$2, %edx
	imull	%edx, %ecx
	cmpl	%ecx, %eax
	jb	.LBB3_5
# BB#4:                                 # %cond.true.7
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jmp	.LBB3_6
.LBB3_5:                                # %cond.false.8
	movl	-4(%rbp), %eax
	addl	-20(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB3_6:                                # %cond.end.10
	movl	-84(%rbp), %eax         # 4-byte Reload
	movl	%eax, -44(%rbp)
	movl	-4(%rbp), %eax
	xorl	%edx, %edx
	divl	-20(%rbp)
	cmpl	$1, %edx
	ja	.LBB3_8
# BB#7:                                 # %cond.true.13
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -88(%rbp)         # 4-byte Spill
	jmp	.LBB3_9
.LBB3_8:                                # %cond.false.14
	movl	-4(%rbp), %eax
	subl	$2, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
.LBB3_9:                                # %cond.end.16
	movl	-88(%rbp), %eax         # 4-byte Reload
	movl	%eax, -48(%rbp)
	movl	-4(%rbp), %eax
	xorl	%edx, %edx
	divl	-20(%rbp)
	movl	-20(%rbp), %ecx
	subl	$2, %ecx
	cmpl	%ecx, %edx
	jb	.LBB3_11
# BB#10:                                # %cond.true.21
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB3_12
.LBB3_11:                               # %cond.false.22
	movl	-4(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB3_12:                               # %cond.end.24
	movl	-92(%rbp), %eax         # 4-byte Reload
	movl	%eax, -52(%rbp)
	cmpl	$0, -40(%rbp)
	jl	.LBB3_14
# BB#13:                                # %if.then
	movslq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movb	$2, (%rcx,%rax)
	movq	-32(%rbp), %rdi
	movslq	-40(%rbp), %rsi
	callq	g_slist_append
	movq	%rax, -32(%rbp)
.LBB3_14:                               # %if.end
	cmpl	$0, -44(%rbp)
	jl	.LBB3_16
# BB#15:                                # %if.then.32
	movslq	-44(%rbp), %rax
	movq	-16(%rbp), %rcx
	movb	$2, (%rcx,%rax)
	movq	-32(%rbp), %rdi
	movslq	-44(%rbp), %rsi
	callq	g_slist_append
	movq	%rax, -32(%rbp)
.LBB3_16:                               # %if.end.37
	cmpl	$0, -48(%rbp)
	jl	.LBB3_18
# BB#17:                                # %if.then.40
	movslq	-48(%rbp), %rax
	movq	-16(%rbp), %rcx
	movb	$2, (%rcx,%rax)
	movq	-32(%rbp), %rdi
	movslq	-48(%rbp), %rsi
	callq	g_slist_append
	movq	%rax, -32(%rbp)
.LBB3_18:                               # %if.end.45
	cmpl	$0, -52(%rbp)
	jl	.LBB3_20
# BB#19:                                # %if.then.48
	movslq	-52(%rbp), %rax
	movq	-16(%rbp), %rcx
	movb	$2, (%rcx,%rax)
	movq	-32(%rbp), %rdi
	movslq	-52(%rbp), %rsi
	callq	g_slist_append
	movq	%rax, -32(%rbp)
.LBB3_20:                               # %if.end.53
	jmp	.LBB3_21
.LBB3_21:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_61 Depth 2
	movq	-32(%rbp), %rdi
	callq	g_slist_length
	cmpl	$0, %eax
	jbe	.LBB3_75
# BB#22:                                # %while.body
                                        #   in Loop: Header=BB3_21 Depth=1
	movq	gr, %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_slist_length
	xorl	%esi, %esi
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %edx
	callq	g_rand_int_range
	movl	%eax, -36(%rbp)
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	g_slist_nth
	movq	(%rax), %rax
	movl	%eax, %edx
	movl	%edx, -4(%rbp)
	movq	-32(%rbp), %rdi
	movslq	-4(%rbp), %rsi
	callq	g_slist_remove
	movq	%rax, -32(%rbp)
	movslq	-4(%rbp), %rax
	movq	-16(%rbp), %rsi
	movb	$1, (%rsi,%rax)
	movl	-4(%rbp), %edx
	movl	-20(%rbp), %ecx
	shll	$1, %ecx
	cmpl	%ecx, %edx
	jae	.LBB3_24
# BB#23:                                # %cond.true.68
                                        #   in Loop: Header=BB3_21 Depth=1
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB3_25
.LBB3_24:                               # %cond.false.69
                                        #   in Loop: Header=BB3_21 Depth=1
	movl	-4(%rbp), %eax
	subl	-20(%rbp), %eax
	subl	-20(%rbp), %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB3_25:                               # %cond.end.72
                                        #   in Loop: Header=BB3_21 Depth=1
	movl	-108(%rbp), %eax        # 4-byte Reload
	movl	%eax, -40(%rbp)
	movl	-4(%rbp), %eax
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %edx
	subl	$2, %edx
	imull	%edx, %ecx
	cmpl	%ecx, %eax
	jb	.LBB3_27
# BB#26:                                # %cond.true.78
                                        #   in Loop: Header=BB3_21 Depth=1
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB3_28
.LBB3_27:                               # %cond.false.79
                                        #   in Loop: Header=BB3_21 Depth=1
	movl	-4(%rbp), %eax
	addl	-20(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
.LBB3_28:                               # %cond.end.82
                                        #   in Loop: Header=BB3_21 Depth=1
	movl	-112(%rbp), %eax        # 4-byte Reload
	movl	%eax, -44(%rbp)
	movl	-4(%rbp), %eax
	xorl	%edx, %edx
	divl	-20(%rbp)
	cmpl	$1, %edx
	ja	.LBB3_30
# BB#29:                                # %cond.true.87
                                        #   in Loop: Header=BB3_21 Depth=1
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB3_31
.LBB3_30:                               # %cond.false.88
                                        #   in Loop: Header=BB3_21 Depth=1
	movl	-4(%rbp), %eax
	subl	$2, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB3_31:                               # %cond.end.90
                                        #   in Loop: Header=BB3_21 Depth=1
	movl	-116(%rbp), %eax        # 4-byte Reload
	movl	%eax, -48(%rbp)
	movl	-4(%rbp), %eax
	xorl	%edx, %edx
	divl	-20(%rbp)
	movl	-20(%rbp), %ecx
	subl	$2, %ecx
	cmpl	%ecx, %edx
	jb	.LBB3_33
# BB#32:                                # %cond.true.96
                                        #   in Loop: Header=BB3_21 Depth=1
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB3_34
.LBB3_33:                               # %cond.false.97
                                        #   in Loop: Header=BB3_21 Depth=1
	movl	-4(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB3_34:                               # %cond.end.99
                                        #   in Loop: Header=BB3_21 Depth=1
	movl	-120(%rbp), %eax        # 4-byte Reload
	movl	%eax, -52(%rbp)
	movb	$0, -61(%rbp)
	cmpl	$0, -40(%rbp)
	jl	.LBB3_40
# BB#35:                                # %if.then.103
                                        #   in Loop: Header=BB3_21 Depth=1
	movslq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	testl	%edx, %edx
	movl	%edx, -124(%rbp)        # 4-byte Spill
	je	.LBB3_36
	jmp	.LBB3_76
.LBB3_76:                               # %if.then.103
                                        #   in Loop: Header=BB3_21 Depth=1
	movl	-124(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	je	.LBB3_37
	jmp	.LBB3_38
.LBB3_36:                               # %sw.bb
                                        #   in Loop: Header=BB3_21 Depth=1
	movslq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movb	$2, (%rcx,%rax)
	movq	-32(%rbp), %rdi
	movslq	-40(%rbp), %rsi
	callq	g_slist_prepend
	movq	%rax, -32(%rbp)
	jmp	.LBB3_39
.LBB3_37:                               # %sw.bb.111
                                        #   in Loop: Header=BB3_21 Depth=1
	movb	$1, -61(%rbp)
	jmp	.LBB3_39
.LBB3_38:                               # %sw.default
                                        #   in Loop: Header=BB3_21 Depth=1
	jmp	.LBB3_39
.LBB3_39:                               # %sw.epilog
                                        #   in Loop: Header=BB3_21 Depth=1
	jmp	.LBB3_40
.LBB3_40:                               # %if.end.112
                                        #   in Loop: Header=BB3_21 Depth=1
	cmpl	$0, -44(%rbp)
	jl	.LBB3_46
# BB#41:                                # %if.then.115
                                        #   in Loop: Header=BB3_21 Depth=1
	movslq	-44(%rbp), %rax
	movq	-16(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	testl	%edx, %edx
	movl	%edx, -132(%rbp)        # 4-byte Spill
	je	.LBB3_42
	jmp	.LBB3_77
.LBB3_77:                               # %if.then.115
                                        #   in Loop: Header=BB3_21 Depth=1
	movl	-132(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	je	.LBB3_43
	jmp	.LBB3_44
.LBB3_42:                               # %sw.bb.119
                                        #   in Loop: Header=BB3_21 Depth=1
	movslq	-44(%rbp), %rax
	movq	-16(%rbp), %rcx
	movb	$2, (%rcx,%rax)
	movq	-32(%rbp), %rdi
	movslq	-44(%rbp), %rsi
	callq	g_slist_prepend
	movq	%rax, -32(%rbp)
	jmp	.LBB3_45
.LBB3_43:                               # %sw.bb.124
                                        #   in Loop: Header=BB3_21 Depth=1
	movsbl	-61(%rbp), %eax
	orl	$2, %eax
	movb	%al, %cl
	movb	%cl, -61(%rbp)
	jmp	.LBB3_45
.LBB3_44:                               # %sw.default.127
                                        #   in Loop: Header=BB3_21 Depth=1
	jmp	.LBB3_45
.LBB3_45:                               # %sw.epilog.128
                                        #   in Loop: Header=BB3_21 Depth=1
	jmp	.LBB3_46
.LBB3_46:                               # %if.end.129
                                        #   in Loop: Header=BB3_21 Depth=1
	cmpl	$0, -48(%rbp)
	jl	.LBB3_52
# BB#47:                                # %if.then.132
                                        #   in Loop: Header=BB3_21 Depth=1
	movslq	-48(%rbp), %rax
	movq	-16(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	testl	%edx, %edx
	movl	%edx, -140(%rbp)        # 4-byte Spill
	je	.LBB3_48
	jmp	.LBB3_78
.LBB3_78:                               # %if.then.132
                                        #   in Loop: Header=BB3_21 Depth=1
	movl	-140(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
	je	.LBB3_49
	jmp	.LBB3_50
.LBB3_48:                               # %sw.bb.136
                                        #   in Loop: Header=BB3_21 Depth=1
	movslq	-48(%rbp), %rax
	movq	-16(%rbp), %rcx
	movb	$2, (%rcx,%rax)
	movq	-32(%rbp), %rdi
	movslq	-48(%rbp), %rsi
	callq	g_slist_prepend
	movq	%rax, -32(%rbp)
	jmp	.LBB3_51
.LBB3_49:                               # %sw.bb.141
                                        #   in Loop: Header=BB3_21 Depth=1
	movsbl	-61(%rbp), %eax
	orl	$4, %eax
	movb	%al, %cl
	movb	%cl, -61(%rbp)
	jmp	.LBB3_51
.LBB3_50:                               # %sw.default.145
                                        #   in Loop: Header=BB3_21 Depth=1
	jmp	.LBB3_51
.LBB3_51:                               # %sw.epilog.146
                                        #   in Loop: Header=BB3_21 Depth=1
	jmp	.LBB3_52
.LBB3_52:                               # %if.end.147
                                        #   in Loop: Header=BB3_21 Depth=1
	cmpl	$0, -52(%rbp)
	jl	.LBB3_58
# BB#53:                                # %if.then.150
                                        #   in Loop: Header=BB3_21 Depth=1
	movslq	-52(%rbp), %rax
	movq	-16(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	testl	%edx, %edx
	movl	%edx, -148(%rbp)        # 4-byte Spill
	je	.LBB3_54
	jmp	.LBB3_79
.LBB3_79:                               # %if.then.150
                                        #   in Loop: Header=BB3_21 Depth=1
	movl	-148(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -152(%rbp)        # 4-byte Spill
	je	.LBB3_55
	jmp	.LBB3_56
.LBB3_54:                               # %sw.bb.154
                                        #   in Loop: Header=BB3_21 Depth=1
	movslq	-52(%rbp), %rax
	movq	-16(%rbp), %rcx
	movb	$2, (%rcx,%rax)
	movq	-32(%rbp), %rdi
	movslq	-52(%rbp), %rsi
	callq	g_slist_prepend
	movq	%rax, -32(%rbp)
	jmp	.LBB3_57
.LBB3_55:                               # %sw.bb.159
                                        #   in Loop: Header=BB3_21 Depth=1
	movsbl	-61(%rbp), %eax
	orl	$8, %eax
	movb	%al, %cl
	movb	%cl, -61(%rbp)
	jmp	.LBB3_57
.LBB3_56:                               # %sw.default.163
                                        #   in Loop: Header=BB3_21 Depth=1
	jmp	.LBB3_57
.LBB3_57:                               # %sw.epilog.164
                                        #   in Loop: Header=BB3_21 Depth=1
	jmp	.LBB3_58
.LBB3_58:                               # %if.end.165
                                        #   in Loop: Header=BB3_21 Depth=1
	cmpb	$0, -61(%rbp)
	jne	.LBB3_60
# BB#59:                                # %if.then.166
	movabsq	$.L.str.3, %rdi
	movl	mvals+8, %esi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	mvals+16, %r8d
	movl	mvals+20, %r9d
	movb	$0, %al
	callq	g_warning
	jmp	.LBB3_75
.LBB3_60:                               # %if.end.167
                                        #   in Loop: Header=BB3_21 Depth=1
	movl	$0, -68(%rbp)
.LBB3_61:                               # %do.body
                                        #   Parent Loop BB3_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-72(%rbp), %eax
	imull	mvals+16, %eax
	addl	mvals+20, %eax
	movl	%eax, -72(%rbp)
	movl	-72(%rbp), %eax
	movsbl	-61(%rbp), %ecx
	cltd
	idivl	%ecx
	andl	$3, %eax
	movb	%al, %sil
	movb	%sil, -62(%rbp)
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	cmpl	$100, %eax
	jbe	.LBB3_63
# BB#62:                                # %if.then.175
                                        #   in Loop: Header=BB3_21 Depth=1
	movb	$99, -62(%rbp)
	jmp	.LBB3_65
.LBB3_63:                               # %if.end.176
                                        #   in Loop: Header=BB3_61 Depth=2
	jmp	.LBB3_64
.LBB3_64:                               # %do.cond
                                        #   in Loop: Header=BB3_61 Depth=2
	movl	$1, %eax
	movsbl	-61(%rbp), %ecx
	movsbl	-62(%rbp), %edx
	movl	%ecx, -156(%rbp)        # 4-byte Spill
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	movl	-156(%rbp), %edx        # 4-byte Reload
	andl	%eax, %edx
	cmpl	$0, %edx
	setne	%cl
	xorb	$-1, %cl
	testb	$1, %cl
	jne	.LBB3_61
.LBB3_65:                               # %do.end
                                        #   in Loop: Header=BB3_21 Depth=1
	movsbl	-62(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -160(%rbp)        # 4-byte Spill
	je	.LBB3_66
	jmp	.LBB3_80
.LBB3_80:                               # %do.end
                                        #   in Loop: Header=BB3_21 Depth=1
	movl	-160(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -164(%rbp)        # 4-byte Spill
	je	.LBB3_67
	jmp	.LBB3_81
.LBB3_81:                               # %do.end
                                        #   in Loop: Header=BB3_21 Depth=1
	movl	-160(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -168(%rbp)        # 4-byte Spill
	je	.LBB3_68
	jmp	.LBB3_82
.LBB3_82:                               # %do.end
                                        #   in Loop: Header=BB3_21 Depth=1
	movl	-160(%rbp), %eax        # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -172(%rbp)        # 4-byte Spill
	je	.LBB3_69
	jmp	.LBB3_83
.LBB3_83:                               # %do.end
                                        #   in Loop: Header=BB3_21 Depth=1
	movl	-160(%rbp), %eax        # 4-byte Reload
	subl	$99, %eax
	movl	%eax, -176(%rbp)        # 4-byte Spill
	je	.LBB3_70
	jmp	.LBB3_71
.LBB3_66:                               # %sw.bb.182
                                        #   in Loop: Header=BB3_21 Depth=1
	movl	-4(%rbp), %eax
	subl	-20(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movb	$1, (%rdx,%rcx)
	jmp	.LBB3_72
.LBB3_67:                               # %sw.bb.186
                                        #   in Loop: Header=BB3_21 Depth=1
	movl	-4(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movb	$1, (%rdx,%rcx)
	jmp	.LBB3_72
.LBB3_68:                               # %sw.bb.190
                                        #   in Loop: Header=BB3_21 Depth=1
	movl	-4(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movb	$1, (%rdx,%rcx)
	jmp	.LBB3_72
.LBB3_69:                               # %sw.bb.194
                                        #   in Loop: Header=BB3_21 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movb	$1, (%rdx,%rcx)
	jmp	.LBB3_72
.LBB3_70:                               # %sw.bb.198
                                        #   in Loop: Header=BB3_21 Depth=1
	jmp	.LBB3_72
.LBB3_71:                               # %sw.default.199
                                        #   in Loop: Header=BB3_21 Depth=1
	movabsq	$.L.str.4, %rdi
	movsbl	-62(%rbp), %esi
	movsbl	-61(%rbp), %edx
	movl	mvals+8, %ecx
	movl	-20(%rbp), %r8d
	movl	-24(%rbp), %r9d
	movl	mvals+16, %eax
	movl	mvals+20, %r10d
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	movb	$0, %al
	callq	g_warning
.LBB3_72:                               # %sw.epilog.202
                                        #   in Loop: Header=BB3_21 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -56(%rbp)
	andl	$255, %eax
	cmpl	$0, %eax
	je	.LBB3_74
# BB#73:                                # %if.then.206
                                        #   in Loop: Header=BB3_21 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	cvtsi2sdq	%rcx, %xmm0
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	cvtsi2sdq	%rcx, %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -180(%rbp)        # 4-byte Spill
.LBB3_74:                               # %if.end.211
                                        #   in Loop: Header=BB3_21 Depth=1
	jmp	.LBB3_21
.LBB3_75:                               # %while.end
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-32(%rbp), %rdi
	movl	%eax, -184(%rbp)        # 4-byte Spill
	callq	g_slist_free
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	prim, .Lfunc_end3-prim
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	prim_tileable
	.align	16, 0x90
	.type	prim_tileable,@function
prim_tileable:                          # @prim_tileable
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
	subq	$208, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -52(%rbp)
	movl	$0, -64(%rbp)
	movl	mvals+8, %edx
	movl	%edx, -68(%rbp)
	movq	gr, %rdi
	movl	-68(%rbp), %esi
	callq	g_rand_set_seed
	movabsq	$.L.str.5, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	xorl	%esi, %esi
	movl	-12(%rbp), %edx
	imull	-16(%rbp), %edx
	shrl	$2, %edx
	movl	%edx, -56(%rbp)
	movl	-12(%rbp), %edx
	shll	$1, %edx
	movq	gr, %rdi
	movl	-16(%rbp), %ecx
	shrl	$1, %ecx
	movl	%edx, -72(%rbp)         # 4-byte Spill
	movl	%ecx, %edx
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	g_rand_int_range
	xorl	%esi, %esi
	movl	-72(%rbp), %ecx         # 4-byte Reload
	imull	%eax, %ecx
	movq	gr, %rdi
	movl	-12(%rbp), %eax
	shrl	$1, %eax
	movl	%eax, %edx
	movl	%ecx, -80(%rbp)         # 4-byte Spill
	callq	g_rand_int_range
	shll	$1, %eax
	movl	-80(%rbp), %ecx         # 4-byte Reload
	addl	%eax, %ecx
	movl	%ecx, -32(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, %edi
	movq	-8(%rbp), %r8
	movb	$1, (%r8,%rdi)
	movl	-32(%rbp), %eax
	movl	-12(%rbp), %ecx
	shll	$1, %ecx
	cmpl	%ecx, %eax
	jae	.LBB4_2
# BB#1:                                 # %cond.true
	movl	-12(%rbp), %eax
	movl	-16(%rbp), %ecx
	subl	$2, %ecx
	imull	%ecx, %eax
	addl	-32(%rbp), %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jmp	.LBB4_3
.LBB4_2:                                # %cond.false
	movl	-32(%rbp), %eax
	subl	-12(%rbp), %eax
	subl	-12(%rbp), %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB4_3:                                # %cond.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	movl	%eax, -36(%rbp)
	movl	-32(%rbp), %eax
	movl	-12(%rbp), %ecx
	movl	-16(%rbp), %edx
	subl	$2, %edx
	imull	%edx, %ecx
	cmpl	%ecx, %eax
	jb	.LBB4_5
# BB#4:                                 # %cond.true.17
	movl	-32(%rbp), %eax
	movl	-12(%rbp), %ecx
	movl	-16(%rbp), %edx
	subl	$2, %edx
	imull	%edx, %ecx
	subl	%ecx, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	jmp	.LBB4_6
.LBB4_5:                                # %cond.false.21
	movl	-32(%rbp), %eax
	addl	-12(%rbp), %eax
	addl	-12(%rbp), %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
.LBB4_6:                                # %cond.end.24
	movl	-88(%rbp), %eax         # 4-byte Reload
	movl	%eax, -40(%rbp)
	movl	-32(%rbp), %eax
	xorl	%edx, %edx
	divl	-12(%rbp)
	cmpl	$1, %edx
	ja	.LBB4_8
# BB#7:                                 # %cond.true.27
	movl	-32(%rbp), %eax
	addl	-12(%rbp), %eax
	subl	$2, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB4_9
.LBB4_8:                                # %cond.false.30
	movl	-32(%rbp), %eax
	subl	$2, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB4_9:                                # %cond.end.32
	movl	-92(%rbp), %eax         # 4-byte Reload
	movl	%eax, -44(%rbp)
	movl	-32(%rbp), %eax
	xorl	%edx, %edx
	divl	-12(%rbp)
	movl	-12(%rbp), %ecx
	subl	$2, %ecx
	cmpl	%ecx, %edx
	jb	.LBB4_11
# BB#10:                                # %cond.true.37
	movl	-32(%rbp), %eax
	addl	$2, %eax
	subl	-12(%rbp), %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jmp	.LBB4_12
.LBB4_11:                               # %cond.false.40
	movl	-32(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
.LBB4_12:                               # %cond.end.42
	movl	-96(%rbp), %eax         # 4-byte Reload
	movl	%eax, -48(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movb	$2, (%rdx,%rcx)
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movb	$2, (%rdx,%rcx)
	movl	-40(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movb	$2, (%rdx,%rcx)
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movb	$2, (%rdx,%rcx)
	movq	-24(%rbp), %rdi
	movl	-36(%rbp), %eax
	movl	%eax, %esi
	callq	g_slist_append
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movl	-40(%rbp), %r8d
	movl	%r8d, %esi
	callq	g_slist_append
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movl	-44(%rbp), %r8d
	movl	%r8d, %esi
	callq	g_slist_append
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movl	-48(%rbp), %r8d
	movl	%r8d, %esi
	callq	g_slist_append
	movq	%rax, -24(%rbp)
.LBB4_13:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_45 Depth 2
	movq	-24(%rbp), %rdi
	callq	g_slist_length
	cmpl	$0, %eax
	jbe	.LBB4_65
# BB#14:                                # %while.body
                                        #   in Loop: Header=BB4_13 Depth=1
	movq	gr, %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_slist_length
	xorl	%esi, %esi
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %edx
	callq	g_rand_int_range
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	g_slist_nth
	movq	(%rax), %rax
	movl	%eax, %edx
	movl	%edx, -32(%rbp)
	movq	-24(%rbp), %rdi
	movl	-32(%rbp), %edx
	movl	%edx, %esi
	callq	g_slist_remove
	movq	%rax, -24(%rbp)
	movl	-32(%rbp), %edx
	movl	%edx, %eax
	movq	-8(%rbp), %rsi
	movb	$1, (%rsi,%rax)
	movl	-32(%rbp), %edx
	movl	-12(%rbp), %ecx
	shll	$1, %ecx
	cmpl	%ecx, %edx
	jae	.LBB4_16
# BB#15:                                # %cond.true.73
                                        #   in Loop: Header=BB4_13 Depth=1
	movl	-12(%rbp), %eax
	movl	-16(%rbp), %ecx
	subl	$2, %ecx
	imull	%ecx, %eax
	addl	-32(%rbp), %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB4_17
.LBB4_16:                               # %cond.false.77
                                        #   in Loop: Header=BB4_13 Depth=1
	movl	-32(%rbp), %eax
	subl	-12(%rbp), %eax
	subl	-12(%rbp), %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB4_17:                               # %cond.end.80
                                        #   in Loop: Header=BB4_13 Depth=1
	movl	-108(%rbp), %eax        # 4-byte Reload
	movl	%eax, -36(%rbp)
	movl	-32(%rbp), %eax
	movl	-12(%rbp), %ecx
	movl	-16(%rbp), %edx
	subl	$2, %edx
	imull	%edx, %ecx
	cmpl	%ecx, %eax
	jb	.LBB4_19
# BB#18:                                # %cond.true.86
                                        #   in Loop: Header=BB4_13 Depth=1
	movl	-32(%rbp), %eax
	movl	-12(%rbp), %ecx
	movl	-16(%rbp), %edx
	subl	$2, %edx
	imull	%edx, %ecx
	subl	%ecx, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB4_20
.LBB4_19:                               # %cond.false.90
                                        #   in Loop: Header=BB4_13 Depth=1
	movl	-32(%rbp), %eax
	addl	-12(%rbp), %eax
	addl	-12(%rbp), %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
.LBB4_20:                               # %cond.end.93
                                        #   in Loop: Header=BB4_13 Depth=1
	movl	-112(%rbp), %eax        # 4-byte Reload
	movl	%eax, -40(%rbp)
	movl	-32(%rbp), %eax
	xorl	%edx, %edx
	divl	-12(%rbp)
	cmpl	$1, %edx
	ja	.LBB4_22
# BB#21:                                # %cond.true.98
                                        #   in Loop: Header=BB4_13 Depth=1
	movl	-32(%rbp), %eax
	addl	-12(%rbp), %eax
	subl	$2, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB4_23
.LBB4_22:                               # %cond.false.101
                                        #   in Loop: Header=BB4_13 Depth=1
	movl	-32(%rbp), %eax
	subl	$2, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB4_23:                               # %cond.end.103
                                        #   in Loop: Header=BB4_13 Depth=1
	movl	-116(%rbp), %eax        # 4-byte Reload
	movl	%eax, -44(%rbp)
	movl	-32(%rbp), %eax
	xorl	%edx, %edx
	divl	-12(%rbp)
	movl	-12(%rbp), %ecx
	subl	$2, %ecx
	cmpl	%ecx, %edx
	jb	.LBB4_25
# BB#24:                                # %cond.true.109
                                        #   in Loop: Header=BB4_13 Depth=1
	movl	-32(%rbp), %eax
	addl	$2, %eax
	subl	-12(%rbp), %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB4_26
.LBB4_25:                               # %cond.false.112
                                        #   in Loop: Header=BB4_13 Depth=1
	movl	-32(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB4_26:                               # %cond.end.114
                                        #   in Loop: Header=BB4_13 Depth=1
	movl	-120(%rbp), %eax        # 4-byte Reload
	movl	%eax, -48(%rbp)
	movb	$0, -57(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	testl	%eax, %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	je	.LBB4_27
	jmp	.LBB4_66
.LBB4_66:                               # %cond.end.114
                                        #   in Loop: Header=BB4_13 Depth=1
	movl	-124(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	je	.LBB4_28
	jmp	.LBB4_29
.LBB4_27:                               # %sw.bb
                                        #   in Loop: Header=BB4_13 Depth=1
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movb	$2, (%rdx,%rcx)
	movq	-24(%rbp), %rdi
	movl	-36(%rbp), %eax
	movl	%eax, %esi
	callq	g_slist_append
	movq	%rax, -24(%rbp)
	jmp	.LBB4_30
.LBB4_28:                               # %sw.bb.123
                                        #   in Loop: Header=BB4_13 Depth=1
	movb	$1, -57(%rbp)
	jmp	.LBB4_30
.LBB4_29:                               # %sw.default
                                        #   in Loop: Header=BB4_13 Depth=1
	jmp	.LBB4_30
.LBB4_30:                               # %sw.epilog
                                        #   in Loop: Header=BB4_13 Depth=1
	movl	-40(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	testl	%eax, %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	je	.LBB4_31
	jmp	.LBB4_67
.LBB4_67:                               # %sw.epilog
                                        #   in Loop: Header=BB4_13 Depth=1
	movl	-132(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	je	.LBB4_32
	jmp	.LBB4_33
.LBB4_31:                               # %sw.bb.127
                                        #   in Loop: Header=BB4_13 Depth=1
	movl	-40(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movb	$2, (%rdx,%rcx)
	movq	-24(%rbp), %rdi
	movl	-40(%rbp), %eax
	movl	%eax, %esi
	callq	g_slist_append
	movq	%rax, -24(%rbp)
	jmp	.LBB4_34
.LBB4_32:                               # %sw.bb.132
                                        #   in Loop: Header=BB4_13 Depth=1
	movsbl	-57(%rbp), %eax
	orl	$2, %eax
	movb	%al, %cl
	movb	%cl, -57(%rbp)
	jmp	.LBB4_34
.LBB4_33:                               # %sw.default.135
                                        #   in Loop: Header=BB4_13 Depth=1
	jmp	.LBB4_34
.LBB4_34:                               # %sw.epilog.136
                                        #   in Loop: Header=BB4_13 Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	testl	%eax, %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
	je	.LBB4_35
	jmp	.LBB4_68
.LBB4_68:                               # %sw.epilog.136
                                        #   in Loop: Header=BB4_13 Depth=1
	movl	-140(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
	je	.LBB4_36
	jmp	.LBB4_37
.LBB4_35:                               # %sw.bb.140
                                        #   in Loop: Header=BB4_13 Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movb	$2, (%rdx,%rcx)
	movq	-24(%rbp), %rdi
	movl	-44(%rbp), %eax
	movl	%eax, %esi
	callq	g_slist_append
	movq	%rax, -24(%rbp)
	jmp	.LBB4_38
.LBB4_36:                               # %sw.bb.145
                                        #   in Loop: Header=BB4_13 Depth=1
	movsbl	-57(%rbp), %eax
	orl	$4, %eax
	movb	%al, %cl
	movb	%cl, -57(%rbp)
	jmp	.LBB4_38
.LBB4_37:                               # %sw.default.149
                                        #   in Loop: Header=BB4_13 Depth=1
	jmp	.LBB4_38
.LBB4_38:                               # %sw.epilog.150
                                        #   in Loop: Header=BB4_13 Depth=1
	movl	-48(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	testl	%eax, %eax
	movl	%eax, -148(%rbp)        # 4-byte Spill
	je	.LBB4_39
	jmp	.LBB4_69
.LBB4_69:                               # %sw.epilog.150
                                        #   in Loop: Header=BB4_13 Depth=1
	movl	-148(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -152(%rbp)        # 4-byte Spill
	je	.LBB4_40
	jmp	.LBB4_41
.LBB4_39:                               # %sw.bb.154
                                        #   in Loop: Header=BB4_13 Depth=1
	movl	-48(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movb	$2, (%rdx,%rcx)
	movq	-24(%rbp), %rdi
	movl	-48(%rbp), %eax
	movl	%eax, %esi
	callq	g_slist_append
	movq	%rax, -24(%rbp)
	jmp	.LBB4_42
.LBB4_40:                               # %sw.bb.159
                                        #   in Loop: Header=BB4_13 Depth=1
	movsbl	-57(%rbp), %eax
	orl	$8, %eax
	movb	%al, %cl
	movb	%cl, -57(%rbp)
	jmp	.LBB4_42
.LBB4_41:                               # %sw.default.163
                                        #   in Loop: Header=BB4_13 Depth=1
	jmp	.LBB4_42
.LBB4_42:                               # %sw.epilog.164
                                        #   in Loop: Header=BB4_13 Depth=1
	cmpb	$0, -57(%rbp)
	jne	.LBB4_44
# BB#43:                                # %if.then
	movabsq	$.L.str.6, %rdi
	movl	mvals+8, %esi
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %ecx
	movl	mvals+16, %r8d
	movl	mvals+20, %r9d
	movb	$0, %al
	callq	g_warning
	jmp	.LBB4_65
.LBB4_44:                               # %if.end
                                        #   in Loop: Header=BB4_13 Depth=1
	movl	$0, -64(%rbp)
.LBB4_45:                               # %do.body
                                        #   Parent Loop BB4_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-68(%rbp), %eax
	imull	mvals+16, %eax
	addl	mvals+20, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	movsbl	-57(%rbp), %ecx
	cltd
	idivl	%ecx
	andl	$3, %eax
	movb	%al, %sil
	movb	%sil, -58(%rbp)
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	cmpl	$100, %eax
	jbe	.LBB4_47
# BB#46:                                # %if.then.172
                                        #   in Loop: Header=BB4_13 Depth=1
	movb	$99, -58(%rbp)
	jmp	.LBB4_49
.LBB4_47:                               # %if.end.173
                                        #   in Loop: Header=BB4_45 Depth=2
	jmp	.LBB4_48
.LBB4_48:                               # %do.cond
                                        #   in Loop: Header=BB4_45 Depth=2
	movl	$1, %eax
	movsbl	-57(%rbp), %ecx
	movsbl	-58(%rbp), %edx
	movl	%ecx, -156(%rbp)        # 4-byte Spill
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	movl	-156(%rbp), %edx        # 4-byte Reload
	andl	%eax, %edx
	cmpl	$0, %edx
	setne	%cl
	xorb	$-1, %cl
	testb	$1, %cl
	jne	.LBB4_45
.LBB4_49:                               # %do.end
                                        #   in Loop: Header=BB4_13 Depth=1
	movsbl	-58(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -160(%rbp)        # 4-byte Spill
	je	.LBB4_50
	jmp	.LBB4_70
.LBB4_70:                               # %do.end
                                        #   in Loop: Header=BB4_13 Depth=1
	movl	-160(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -164(%rbp)        # 4-byte Spill
	je	.LBB4_54
	jmp	.LBB4_71
.LBB4_71:                               # %do.end
                                        #   in Loop: Header=BB4_13 Depth=1
	movl	-160(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -168(%rbp)        # 4-byte Spill
	je	.LBB4_55
	jmp	.LBB4_72
.LBB4_72:                               # %do.end
                                        #   in Loop: Header=BB4_13 Depth=1
	movl	-160(%rbp), %eax        # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -172(%rbp)        # 4-byte Spill
	je	.LBB4_59
	jmp	.LBB4_73
.LBB4_73:                               # %do.end
                                        #   in Loop: Header=BB4_13 Depth=1
	movl	-160(%rbp), %eax        # 4-byte Reload
	subl	$99, %eax
	movl	%eax, -176(%rbp)        # 4-byte Spill
	je	.LBB4_60
	jmp	.LBB4_61
.LBB4_50:                               # %sw.bb.179
                                        #   in Loop: Header=BB4_13 Depth=1
	movl	-32(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jae	.LBB4_52
# BB#51:                                # %cond.true.182
                                        #   in Loop: Header=BB4_13 Depth=1
	movl	-12(%rbp), %eax
	movl	-16(%rbp), %ecx
	subl	$1, %ecx
	imull	%ecx, %eax
	addl	-32(%rbp), %eax
	movl	%eax, -180(%rbp)        # 4-byte Spill
	jmp	.LBB4_53
.LBB4_52:                               # %cond.false.186
                                        #   in Loop: Header=BB4_13 Depth=1
	movl	-32(%rbp), %eax
	subl	-12(%rbp), %eax
	movl	%eax, -180(%rbp)        # 4-byte Spill
.LBB4_53:                               # %cond.end.188
                                        #   in Loop: Header=BB4_13 Depth=1
	movl	-180(%rbp), %eax        # 4-byte Reload
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movb	$1, (%rdx,%rcx)
	jmp	.LBB4_62
.LBB4_54:                               # %sw.bb.192
                                        #   in Loop: Header=BB4_13 Depth=1
	movl	-32(%rbp), %eax
	addl	-12(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movb	$1, (%rdx,%rcx)
	jmp	.LBB4_62
.LBB4_55:                               # %sw.bb.196
                                        #   in Loop: Header=BB4_13 Depth=1
	movl	-32(%rbp), %eax
	xorl	%edx, %edx
	divl	-12(%rbp)
	cmpl	$0, %edx
	jne	.LBB4_57
# BB#56:                                # %cond.true.200
                                        #   in Loop: Header=BB4_13 Depth=1
	movl	-32(%rbp), %eax
	addl	-12(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -184(%rbp)        # 4-byte Spill
	jmp	.LBB4_58
.LBB4_57:                               # %cond.false.203
                                        #   in Loop: Header=BB4_13 Depth=1
	movl	-32(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -184(%rbp)        # 4-byte Spill
.LBB4_58:                               # %cond.end.205
                                        #   in Loop: Header=BB4_13 Depth=1
	movl	-184(%rbp), %eax        # 4-byte Reload
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movb	$1, (%rdx,%rcx)
	jmp	.LBB4_62
.LBB4_59:                               # %sw.bb.209
                                        #   in Loop: Header=BB4_13 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movb	$1, (%rdx,%rcx)
	jmp	.LBB4_62
.LBB4_60:                               # %sw.bb.213
                                        #   in Loop: Header=BB4_13 Depth=1
	jmp	.LBB4_62
.LBB4_61:                               # %sw.default.214
                                        #   in Loop: Header=BB4_13 Depth=1
	movabsq	$.L.str.7, %rdi
	movsbl	-58(%rbp), %esi
	movsbl	-57(%rbp), %edx
	movl	mvals+8, %ecx
	movl	-12(%rbp), %r8d
	movl	-16(%rbp), %r9d
	movl	mvals+16, %eax
	movl	mvals+20, %r10d
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	movb	$0, %al
	callq	g_warning
.LBB4_62:                               # %sw.epilog.217
                                        #   in Loop: Header=BB4_13 Depth=1
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -52(%rbp)
	andl	$255, %eax
	cmpl	$0, %eax
	je	.LBB4_64
# BB#63:                                # %if.then.221
                                        #   in Loop: Header=BB4_13 Depth=1
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	cvtsi2sdq	%rcx, %xmm0
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	cvtsi2sdq	%rcx, %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -188(%rbp)        # 4-byte Spill
.LBB4_64:                               # %if.end.226
                                        #   in Loop: Header=BB4_13 Depth=1
	jmp	.LBB4_13
.LBB4_65:                               # %while.end
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-24(%rbp), %rdi
	movl	%eax, -192(%rbp)        # 4-byte Spill
	callq	g_slist_free
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	prim_tileable, .Lfunc_end4-prim_tileable
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"maze: mazegen: Going in unknown direction.\ni: %d, d: %d, seed: %d, mw: %d, mh: %d, mult: %d, offset: %d\n"
	.size	.L.str, 105

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"maze: mazegen_tileable: Going in unknown direction.\ni: %d, d: %d, seed: %d, mw: %d, mh: %d, mult: %d, offset: %d\n"
	.size	.L.str.1, 114

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Constructing maze using Prim's Algorithm"
	.size	.L.str.2, 41

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"maze: prim: Lack of neighbors.\nseed: %d, mw: %d, mh: %d, mult: %d, offset: %d\n"
	.size	.L.str.3, 79

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"maze: prim: Going in unknown direction.\ni: %d, d: %d, seed: %d, mw: %d, mh: %d, mult: %d, offset: %d\n"
	.size	.L.str.4, 102

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Constructing tileable maze using Prim's Algorithm"
	.size	.L.str.5, 50

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"maze: prim's tileable: Lack of neighbors.\nseed: %d, mw: %d, mh: %d, mult: %d, offset: %d\n"
	.size	.L.str.6, 90

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"maze: prim's tileable: Going in unknown direction.\ni: %d, d: %d, seed: %d, mw: %d, mh: %d, mult: %d, offset: %d\n"
	.size	.L.str.7, 113


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
