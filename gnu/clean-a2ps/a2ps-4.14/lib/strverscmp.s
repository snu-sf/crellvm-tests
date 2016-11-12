	.text
	.file	"strverscmp.bc"
	.globl	strverscmp
	.align	16, 0x90
	.type	strverscmp,@function
strverscmp:                             # @strverscmp
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
	subq	$160, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rsi, -40(%rbp)
	movq	-32(%rbp), %rsi
	cmpq	-40(%rbp), %rsi
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB0_19
.LBB0_2:                                # %if.end
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movb	(%rax), %dl
	movb	%dl, -41(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	(%rax), %dl
	movb	%dl, -42(%rbp)
	movzbl	-41(%rbp), %esi
	cmpl	$48, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movzbl	-41(%rbp), %edi
	movslq	%edi, %rax
	movl	%esi, -56(%rbp)         # 4-byte Spill
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movzwl	(%rax,%rcx,2), %esi
	andl	$2048, %esi             # imm = 0x800
	cmpl	$0, %esi
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movl	-56(%rbp), %edi         # 4-byte Reload
	addl	%esi, %edi
	orl	$0, %edi
	movl	%edi, -48(%rbp)
.LBB0_3:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movzbl	-41(%rbp), %eax
	movzbl	-42(%rbp), %edx
	subl	%edx, %eax
	movl	%eax, -52(%rbp)
	cmpl	$0, %eax
	movb	%cl, -65(%rbp)          # 1-byte Spill
	jne	.LBB0_5
# BB#4:                                 # %land.rhs
                                        #   in Loop: Header=BB0_3 Depth=1
	movzbl	-41(%rbp), %eax
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -65(%rbp)          # 1-byte Spill
.LBB0_5:                                # %land.end
                                        #   in Loop: Header=BB0_3 Depth=1
	movb	-65(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_6
	jmp	.LBB0_7
.LBB0_6:                                # %while.body
                                        #   in Loop: Header=BB0_3 Depth=1
	movslq	-48(%rbp), %rax
	movl	strverscmp.next_state(,%rax,4), %ecx
	movl	%ecx, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -32(%rbp)
	movb	(%rax), %sil
	movb	%sil, -41(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -40(%rbp)
	movb	(%rax), %sil
	movb	%sil, -42(%rbp)
	movzbl	-41(%rbp), %ecx
	cmpl	$48, %ecx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	movzbl	-41(%rbp), %edi
	movslq	%edi, %rax
	movl	%ecx, -72(%rbp)         # 4-byte Spill
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movq	-80(%rbp), %rdx         # 8-byte Reload
	movzwl	(%rax,%rdx,2), %ecx
	andl	$2048, %ecx             # imm = 0x800
	cmpl	$0, %ecx
	setne	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	movl	-72(%rbp), %edi         # 4-byte Reload
	addl	%ecx, %edi
	orl	-48(%rbp), %edi
	movl	%edi, -48(%rbp)
	jmp	.LBB0_3
.LBB0_7:                                # %while.end
	movl	-48(%rbp), %eax
	shll	$2, %eax
	movzbl	-42(%rbp), %ecx
	movl	%ecx, %edx
	movl	%edx, %ecx
	subl	$48, %ecx
	sete	%sil
	movzbl	%sil, %edi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movl	%ecx, -100(%rbp)        # 4-byte Spill
	movl	%edi, -104(%rbp)        # 4-byte Spill
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movzwl	(%rax,%rdx,2), %ecx
	andl	$2048, %ecx             # imm = 0x800
	shrl	$11, %ecx
	movl	-104(%rbp), %edi        # 4-byte Reload
	addl	%ecx, %edi
	movl	-84(%rbp), %ecx         # 4-byte Reload
	orl	%edi, %ecx
	movslq	%ecx, %rax
	movl	strverscmp.result_type(,%rax,4), %ecx
	movl	%ecx, -48(%rbp)
	movl	%ecx, %edi
	subl	$2, %edi
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	movl	%edi, -112(%rbp)        # 4-byte Spill
	je	.LBB0_8
	jmp	.LBB0_20
.LBB0_20:                               # %while.end
	movl	-108(%rbp), %eax        # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	je	.LBB0_9
	jmp	.LBB0_18
.LBB0_8:                                # %sw.bb
	movl	-52(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_19
.LBB0_9:                                # %sw.bb.47
	jmp	.LBB0_10
.LBB0_10:                               # %while.cond.48
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movzbl	(%rax), %edx
	movslq	%edx, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movzwl	(%rax,%rcx,2), %edx
	andl	$2048, %edx             # imm = 0x800
	cmpl	$0, %edx
	je	.LBB0_14
# BB#11:                                # %while.body.56
                                        #   in Loop: Header=BB0_10 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movzbl	(%rax), %edx
	movslq	%edx, %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movzwl	(%rax,%rcx,2), %edx
	andl	$2048, %edx             # imm = 0x800
	cmpl	$0, %edx
	jne	.LBB0_13
# BB#12:                                # %if.then.65
	movl	$1, -4(%rbp)
	jmp	.LBB0_19
.LBB0_13:                               # %if.end.66
                                        #   in Loop: Header=BB0_10 Depth=1
	jmp	.LBB0_10
.LBB0_14:                               # %while.end.67
	movq	-40(%rbp), %rax
	movzbl	(%rax), %ecx
	movslq	%ecx, %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movq	-144(%rbp), %rdx        # 8-byte Reload
	movzwl	(%rax,%rdx,2), %ecx
	andl	$2048, %ecx             # imm = 0x800
	cmpl	$0, %ecx
	je	.LBB0_16
# BB#15:                                # %cond.true
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -148(%rbp)        # 4-byte Spill
	jmp	.LBB0_17
.LBB0_16:                               # %cond.false
	movl	-52(%rbp), %eax
	movl	%eax, -148(%rbp)        # 4-byte Spill
.LBB0_17:                               # %cond.end
	movl	-148(%rbp), %eax        # 4-byte Reload
	movl	%eax, -4(%rbp)
	jmp	.LBB0_19
.LBB0_18:                               # %sw.default
	movl	-48(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB0_19:                               # %return
	movl	-4(%rbp), %eax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	strverscmp, .Lfunc_end0-strverscmp
	.cfi_endproc

	.type	strverscmp.next_state,@object # @strverscmp.next_state
	.section	.rodata,"a",@progbits
	.align	16
strverscmp.next_state:
	.long	0                       # 0x0
	.long	4                       # 0x4
	.long	12                      # 0xc
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	0                       # 0x0
	.long	8                       # 0x8
	.long	8                       # 0x8
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	8                       # 0x8
	.long	12                      # 0xc
	.long	12                      # 0xc
	.size	strverscmp.next_state, 64

	.type	strverscmp.result_type,@object # @strverscmp.result_type
	.align	16
strverscmp.result_type:
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	4294967295              # 0xffffffff
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	4294967295              # 0xffffffff
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.size	strverscmp.result_type, 240


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
