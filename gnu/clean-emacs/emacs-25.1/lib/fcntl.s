	.text
	.file	"fcntl.bc"
	.globl	rpl_fcntl
	.align	16, 0x90
	.type	rpl_fcntl,@function
rpl_fcntl:                              # @rpl_fcntl
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
	subq	$480, %rsp              # imm = 0x1E0
	testb	%al, %al
	movaps	%xmm7, -256(%rbp)       # 16-byte Spill
	movaps	%xmm6, -272(%rbp)       # 16-byte Spill
	movaps	%xmm5, -288(%rbp)       # 16-byte Spill
	movaps	%xmm4, -304(%rbp)       # 16-byte Spill
	movaps	%xmm3, -320(%rbp)       # 16-byte Spill
	movaps	%xmm2, -336(%rbp)       # 16-byte Spill
	movaps	%xmm1, -352(%rbp)       # 16-byte Spill
	movaps	%xmm0, -368(%rbp)       # 16-byte Spill
	movl	%edi, -372(%rbp)        # 4-byte Spill
	movq	%r9, -384(%rbp)         # 8-byte Spill
	movq	%r8, -392(%rbp)         # 8-byte Spill
	movq	%rcx, -400(%rbp)        # 8-byte Spill
	movq	%rdx, -408(%rbp)        # 8-byte Spill
	movl	%esi, -412(%rbp)        # 4-byte Spill
	je	.LBB0_26
# BB#25:                                # %entry
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
.LBB0_26:                               # %entry
	movq	-384(%rbp), %rax        # 8-byte Reload
	movq	%rax, -200(%rbp)
	movq	-392(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -208(%rbp)
	movq	-400(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -216(%rbp)
	movq	-408(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -224(%rbp)
	movl	-412(%rbp), %edi        # 4-byte Reload
	movl	-372(%rbp), %r8d        # 4-byte Reload
	movl	%r8d, -4(%rbp)
	movl	%edi, -8(%rbp)
	movl	$-1, -36(%rbp)
	leaq	-240(%rbp), %r9
	movq	%r9, -16(%rbp)
	leaq	16(%rbp), %r9
	movq	%r9, -24(%rbp)
	movl	$48, -28(%rbp)
	movl	$16, -32(%rbp)
	movl	-8(%rbp), %edi
	subl	$1030, %edi             # imm = 0x406
	movl	%edi, -416(%rbp)        # 4-byte Spill
	jne	.LBB0_20
	jmp	.LBB0_1
.LBB0_1:                                # %sw.bb
	leaq	-32(%rbp), %rax
	movl	-32(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -424(%rbp)        # 8-byte Spill
	movl	%ecx, -428(%rbp)        # 4-byte Spill
	ja	.LBB0_3
# BB#2:                                 # %vaarg.in_reg
	movl	-428(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-424(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -440(%rbp)        # 8-byte Spill
	jmp	.LBB0_4
.LBB0_3:                                # %vaarg.in_mem
	movq	-424(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -440(%rbp)        # 8-byte Spill
.LBB0_4:                                # %vaarg.end
	movq	-440(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movl	(%rax), %edx
	movl	%edx, -40(%rbp)
	cmpl	rpl_fcntl.have_dupfd_cloexec, %ecx
	jg	.LBB0_12
# BB#5:                                 # %if.then
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	movl	-40(%rbp), %edx
	movb	$0, %al
	callq	fcntl
	xorl	%edx, %edx
	movl	%eax, -36(%rbp)
	cmpl	-36(%rbp), %edx
	jle	.LBB0_7
# BB#6:                                 # %lor.lhs.false
	callq	__errno_location
	cmpl	$22, (%rax)
	je	.LBB0_8
.LBB0_7:                                # %if.then.6
	movl	$1, rpl_fcntl.have_dupfd_cloexec
	jmp	.LBB0_11
.LBB0_8:                                # %if.else
	xorl	%esi, %esi
	movl	-4(%rbp), %edi
	movl	-40(%rbp), %edx
	movb	$0, %al
	callq	rpl_fcntl
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jge	.LBB0_10
# BB#9:                                 # %if.then.9
	jmp	.LBB0_24
.LBB0_10:                               # %if.end
	movl	$-1, rpl_fcntl.have_dupfd_cloexec
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_13
.LBB0_12:                               # %if.else.11
	xorl	%esi, %esi
	movl	-4(%rbp), %edi
	movl	-40(%rbp), %edx
	movb	$0, %al
	callq	rpl_fcntl
	movl	%eax, -36(%rbp)
.LBB0_13:                               # %if.end.13
	xorl	%eax, %eax
	cmpl	-36(%rbp), %eax
	jg	.LBB0_19
# BB#14:                                # %land.lhs.true
	cmpl	$-1, rpl_fcntl.have_dupfd_cloexec
	jne	.LBB0_19
# BB#15:                                # %if.then.16
	movl	$1, %esi
	movl	-36(%rbp), %edi
	movb	$0, %al
	callq	fcntl
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jl	.LBB0_17
# BB#16:                                # %lor.lhs.false.19
	movl	$2, %esi
	movl	-36(%rbp), %edi
	movl	-44(%rbp), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movb	$0, %al
	callq	fcntl
	cmpl	$-1, %eax
	jne	.LBB0_18
.LBB0_17:                               # %if.then.22
	callq	__errno_location
	movl	(%rax), %ecx
	movl	%ecx, -48(%rbp)
	movl	-36(%rbp), %edi
	callq	close
	movl	-48(%rbp), %ecx
	movl	%eax, -444(%rbp)        # 4-byte Spill
	movl	%ecx, -448(%rbp)        # 4-byte Spill
	callq	__errno_location
	movl	-448(%rbp), %ecx        # 4-byte Reload
	movl	%ecx, (%rax)
	movl	$-1, -36(%rbp)
.LBB0_18:                               # %if.end.26
	jmp	.LBB0_19
.LBB0_19:                               # %if.end.27
	jmp	.LBB0_24
.LBB0_20:                               # %sw.default
	leaq	-32(%rbp), %rax
	movl	-32(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -456(%rbp)        # 8-byte Spill
	movl	%ecx, -460(%rbp)        # 4-byte Spill
	ja	.LBB0_22
# BB#21:                                # %vaarg.in_reg.32
	movl	-460(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-456(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -472(%rbp)        # 8-byte Spill
	jmp	.LBB0_23
.LBB0_22:                               # %vaarg.in_mem.34
	movq	-456(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -472(%rbp)        # 8-byte Spill
.LBB0_23:                               # %vaarg.end.38
	movq	-472(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	movq	-56(%rbp), %rdx
	movb	$0, %al
	callq	fcntl
	movl	%eax, -36(%rbp)
.LBB0_24:                               # %sw.epilog
	movl	-36(%rbp), %eax
	addq	$480, %rsp              # imm = 0x1E0
	popq	%rbp
	retq
.Lfunc_end0:
	.size	rpl_fcntl, .Lfunc_end0-rpl_fcntl
	.cfi_endproc

	.type	rpl_fcntl.have_dupfd_cloexec,@object # @rpl_fcntl.have_dupfd_cloexec
	.local	rpl_fcntl.have_dupfd_cloexec
	.comm	rpl_fcntl.have_dupfd_cloexec,4,4

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
