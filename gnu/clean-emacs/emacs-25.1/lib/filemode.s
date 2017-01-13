	.text
	.file	"filemode.bc"
	.globl	strmode
	.align	16, 0x90
	.type	strmode,@function
strmode:                                # @strmode
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
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-4(%rbp), %edi
	callq	ftypelet
	movl	$45, %edi
	movl	$119, %ecx
	movl	$114, %edx
	movq	-16(%rbp), %rsi
	movb	%al, (%rsi)
	movl	-4(%rbp), %r8d
	andl	$256, %r8d              # imm = 0x100
	cmpl	$0, %r8d
	movl	%edi, %r8d
	cmovnel	%edx, %r8d
	movb	%r8b, %al
	movq	-16(%rbp), %rsi
	movb	%al, 1(%rsi)
	movl	-4(%rbp), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	cmovnel	%ecx, %edi
	movb	%dil, %al
	movq	-16(%rbp), %rsi
	movb	%al, 2(%rsi)
	movl	-4(%rbp), %ecx
	andl	$2048, %ecx             # imm = 0x800
	cmpl	$0, %ecx
	je	.LBB0_2
# BB#1:                                 # %cond.true
	movl	$83, %eax
	movl	$115, %ecx
	movl	-4(%rbp), %edx
	andl	$64, %edx
	cmpl	$0, %edx
	cmovnel	%ecx, %eax
	movl	%eax, -20(%rbp)         # 4-byte Spill
	jmp	.LBB0_3
.LBB0_2:                                # %cond.false
	movl	$45, %eax
	movl	$120, %ecx
	movl	-4(%rbp), %edx
	andl	$64, %edx
	cmpl	$0, %edx
	cmovnel	%ecx, %eax
	movl	%eax, -20(%rbp)         # 4-byte Spill
.LBB0_3:                                # %cond.end
	movl	-20(%rbp), %eax         # 4-byte Reload
	movl	$45, %ecx
	movl	$119, %edx
	movl	$114, %esi
	movb	%al, %dil
	movq	-16(%rbp), %r8
	movb	%dil, 3(%r8)
	movl	-4(%rbp), %eax
	andl	$32, %eax
	cmpl	$0, %eax
	movl	%ecx, %eax
	cmovnel	%esi, %eax
	movb	%al, %dil
	movq	-16(%rbp), %r8
	movb	%dil, 4(%r8)
	movl	-4(%rbp), %eax
	andl	$16, %eax
	cmpl	$0, %eax
	cmovnel	%edx, %ecx
	movb	%cl, %dil
	movq	-16(%rbp), %r8
	movb	%dil, 5(%r8)
	movl	-4(%rbp), %eax
	andl	$1024, %eax             # imm = 0x400
	cmpl	$0, %eax
	je	.LBB0_5
# BB#4:                                 # %cond.true.30
	movl	$83, %eax
	movl	$115, %ecx
	movl	-4(%rbp), %edx
	andl	$8, %edx
	cmpl	$0, %edx
	cmovnel	%ecx, %eax
	movl	%eax, -24(%rbp)         # 4-byte Spill
	jmp	.LBB0_6
.LBB0_5:                                # %cond.false.34
	movl	$45, %eax
	movl	$120, %ecx
	movl	-4(%rbp), %edx
	andl	$8, %edx
	cmpl	$0, %edx
	cmovnel	%ecx, %eax
	movl	%eax, -24(%rbp)         # 4-byte Spill
.LBB0_6:                                # %cond.end.38
	movl	-24(%rbp), %eax         # 4-byte Reload
	movl	$45, %ecx
	movl	$119, %edx
	movl	$114, %esi
	movb	%al, %dil
	movq	-16(%rbp), %r8
	movb	%dil, 6(%r8)
	movl	-4(%rbp), %eax
	andl	$4, %eax
	cmpl	$0, %eax
	movl	%ecx, %eax
	cmovnel	%esi, %eax
	movb	%al, %dil
	movq	-16(%rbp), %r8
	movb	%dil, 7(%r8)
	movl	-4(%rbp), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	cmovnel	%edx, %ecx
	movb	%cl, %dil
	movq	-16(%rbp), %r8
	movb	%dil, 8(%r8)
	movl	-4(%rbp), %eax
	andl	$512, %eax              # imm = 0x200
	cmpl	$0, %eax
	je	.LBB0_8
# BB#7:                                 # %cond.true.54
	movl	$84, %eax
	movl	$116, %ecx
	movl	-4(%rbp), %edx
	andl	$1, %edx
	cmpl	$0, %edx
	cmovnel	%ecx, %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
	jmp	.LBB0_9
.LBB0_8:                                # %cond.false.58
	movl	$45, %eax
	movl	$120, %ecx
	movl	-4(%rbp), %edx
	andl	$1, %edx
	cmpl	$0, %edx
	cmovnel	%ecx, %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB0_9:                                # %cond.end.62
	movl	-28(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movb	%cl, 9(%rdx)
	movq	-16(%rbp), %rdx
	movb	$32, 10(%rdx)
	movq	-16(%rbp), %rdx
	movb	$0, 11(%rdx)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	strmode, .Lfunc_end0-strmode
	.cfi_endproc

	.align	16, 0x90
	.type	ftypelet,@function
ftypelet:                               # @ftypelet
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
	movl	%edi, -8(%rbp)
	movl	-8(%rbp), %edi
	andl	$61440, %edi            # imm = 0xF000
	cmpl	$32768, %edi            # imm = 0x8000
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movb	$45, -1(%rbp)
	jmp	.LBB1_15
.LBB1_2:                                # %if.end
	movl	-8(%rbp), %eax
	andl	$61440, %eax            # imm = 0xF000
	cmpl	$16384, %eax            # imm = 0x4000
	jne	.LBB1_4
# BB#3:                                 # %if.then.3
	movb	$100, -1(%rbp)
	jmp	.LBB1_15
.LBB1_4:                                # %if.end.4
	movl	-8(%rbp), %eax
	andl	$61440, %eax            # imm = 0xF000
	cmpl	$24576, %eax            # imm = 0x6000
	jne	.LBB1_6
# BB#5:                                 # %if.then.7
	movb	$98, -1(%rbp)
	jmp	.LBB1_15
.LBB1_6:                                # %if.end.8
	movl	-8(%rbp), %eax
	andl	$61440, %eax            # imm = 0xF000
	cmpl	$8192, %eax             # imm = 0x2000
	jne	.LBB1_8
# BB#7:                                 # %if.then.11
	movb	$99, -1(%rbp)
	jmp	.LBB1_15
.LBB1_8:                                # %if.end.12
	movl	-8(%rbp), %eax
	andl	$61440, %eax            # imm = 0xF000
	cmpl	$40960, %eax            # imm = 0xA000
	jne	.LBB1_10
# BB#9:                                 # %if.then.15
	movb	$108, -1(%rbp)
	jmp	.LBB1_15
.LBB1_10:                               # %if.end.16
	movl	-8(%rbp), %eax
	andl	$61440, %eax            # imm = 0xF000
	cmpl	$4096, %eax             # imm = 0x1000
	jne	.LBB1_12
# BB#11:                                # %if.then.19
	movb	$112, -1(%rbp)
	jmp	.LBB1_15
.LBB1_12:                               # %if.end.20
	movl	-8(%rbp), %eax
	andl	$61440, %eax            # imm = 0xF000
	cmpl	$49152, %eax            # imm = 0xC000
	jne	.LBB1_14
# BB#13:                                # %if.then.23
	movb	$115, -1(%rbp)
	jmp	.LBB1_15
.LBB1_14:                               # %if.end.24
	movb	$63, -1(%rbp)
.LBB1_15:                               # %return
	movsbl	-1(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end1:
	.size	ftypelet, .Lfunc_end1-ftypelet
	.cfi_endproc

	.globl	filemodestring
	.align	16, 0x90
	.type	filemodestring,@function
filemodestring:                         # @filemodestring
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movl	24(%rsi), %edi
	movq	-16(%rbp), %rsi
	callq	strmode
	movq	-8(%rbp), %rsi
	movl	24(%rsi), %edi
	movq	-8(%rbp), %rsi
	subl	24(%rsi), %edi
	cmpl	$0, %edi
	je	.LBB2_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movb	$70, (%rax)
	jmp	.LBB2_9
.LBB2_2:                                # %if.else
	movq	-8(%rbp), %rax
	movl	24(%rax), %ecx
	movq	-8(%rbp), %rax
	subl	24(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB2_4
# BB#3:                                 # %if.then.7
	movq	-16(%rbp), %rax
	movb	$81, (%rax)
	jmp	.LBB2_8
.LBB2_4:                                # %if.else.9
	movq	-8(%rbp), %rax
	movl	24(%rax), %ecx
	movq	-8(%rbp), %rax
	subl	24(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB2_6
# BB#5:                                 # %if.then.14
	movq	-16(%rbp), %rax
	movb	$83, (%rax)
	jmp	.LBB2_7
.LBB2_6:                                # %if.else.16
	jmp	.LBB2_7
.LBB2_7:                                # %if.end
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.17
	jmp	.LBB2_9
.LBB2_9:                                # %if.end.18
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	filemodestring, .Lfunc_end2-filemodestring
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
