	.text
	.file	"character.bc"
	.globl	char_resolve_modifier_mask
	.align	16, 0x90
	.type	char_resolve_modifier_mask,@function
char_resolve_modifier_mask:             # @char_resolve_modifier_mask
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
	xorl	%eax, %eax
	movb	%al, %cl
	movq	%rdi, -16(%rbp)
	testb	$1, %cl
	jne	.LBB0_1
	jmp	.LBB0_2
.LBB0_1:                                # %cond.true
	movq	-16(%rbp), %rax
	andq	$-264241153, %rax       # imm = 0xFFFFFFFFF03FFFFF
	addq	$0, %rax
	cmpq	$128, %rax
	jl	.LBB0_4
	jmp	.LBB0_3
.LBB0_2:                                # %cond.false
	movq	-16(%rbp), %rax
	andq	$-264241153, %rax       # imm = 0xFFFFFFFFF03FFFFF
	addq	$0, %rax
	cmpq	$128, %rax
	jb	.LBB0_4
.LBB0_3:                                # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_32
.LBB0_4:                                # %if.end
	movq	-16(%rbp), %rax
	andq	$33554432, %rax         # imm = 0x2000000
	cmpq	$0, %rax
	je	.LBB0_16
# BB#5:                                 # %if.then.5
	movq	-16(%rbp), %rax
	andq	$255, %rax
	cmpq	$65, %rax
	jl	.LBB0_8
# BB#6:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	andq	$255, %rax
	cmpq	$90, %rax
	jg	.LBB0_8
# BB#7:                                 # %if.then.10
	movq	-16(%rbp), %rax
	andq	$-33554433, %rax        # imm = 0xFFFFFFFFFDFFFFFF
	movq	%rax, -16(%rbp)
	jmp	.LBB0_15
.LBB0_8:                                # %if.else
	movq	-16(%rbp), %rax
	andq	$255, %rax
	cmpq	$97, %rax
	jl	.LBB0_11
# BB#9:                                 # %land.lhs.true.14
	movq	-16(%rbp), %rax
	andq	$255, %rax
	cmpq	$122, %rax
	jg	.LBB0_11
# BB#10:                                # %if.then.17
	movq	-16(%rbp), %rax
	andq	$-33554433, %rax        # imm = 0xFFFFFFFFFDFFFFFF
	subq	$32, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB0_14
.LBB0_11:                               # %if.else.19
	movq	-16(%rbp), %rax
	andq	$-264241153, %rax       # imm = 0xFFFFFFFFF03FFFFF
	cmpq	$32, %rax
	jg	.LBB0_13
# BB#12:                                # %if.then.22
	movq	-16(%rbp), %rax
	andq	$-33554433, %rax        # imm = 0xFFFFFFFFFDFFFFFF
	movq	%rax, -16(%rbp)
.LBB0_13:                               # %if.end.24
	jmp	.LBB0_14
.LBB0_14:                               # %if.end.25
	jmp	.LBB0_15
.LBB0_15:                               # %if.end.26
	jmp	.LBB0_16
.LBB0_16:                               # %if.end.27
	movq	-16(%rbp), %rax
	andq	$67108864, %rax         # imm = 0x4000000
	cmpq	$0, %rax
	je	.LBB0_31
# BB#17:                                # %if.then.30
	movq	-16(%rbp), %rax
	andq	$255, %rax
	cmpq	$32, %rax
	jne	.LBB0_19
# BB#18:                                # %if.then.33
	movq	-16(%rbp), %rax
	andq	$-67108992, %rax        # imm = 0xFFFFFFFFFBFFFF80
	movq	%rax, -16(%rbp)
	jmp	.LBB0_30
.LBB0_19:                               # %if.else.35
	movq	-16(%rbp), %rax
	andq	$255, %rax
	cmpq	$63, %rax
	jne	.LBB0_21
# BB#20:                                # %if.then.38
	movq	-16(%rbp), %rax
	andq	$-128, %rax
	andq	$-67108865, %rax        # imm = 0xFFFFFFFFFBFFFFFF
	orq	$127, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB0_29
.LBB0_21:                               # %if.else.41
	movq	-16(%rbp), %rax
	andq	$95, %rax
	cmpq	$65, %rax
	jl	.LBB0_24
# BB#22:                                # %land.lhs.true.44
	movq	-16(%rbp), %rax
	andq	$95, %rax
	cmpq	$90, %rax
	jg	.LBB0_24
# BB#23:                                # %if.then.47
	movq	-16(%rbp), %rax
	andq	$-67108961, %rax        # imm = 0xFFFFFFFFFBFFFF9F
	movq	%rax, -16(%rbp)
	jmp	.LBB0_28
.LBB0_24:                               # %if.else.49
	movq	-16(%rbp), %rax
	andq	$127, %rax
	cmpq	$64, %rax
	jl	.LBB0_27
# BB#25:                                # %land.lhs.true.52
	movq	-16(%rbp), %rax
	andq	$127, %rax
	cmpq	$95, %rax
	jg	.LBB0_27
# BB#26:                                # %if.then.55
	movq	-16(%rbp), %rax
	andq	$-67108961, %rax        # imm = 0xFFFFFFFFFBFFFF9F
	movq	%rax, -16(%rbp)
.LBB0_27:                               # %if.end.57
	jmp	.LBB0_28
.LBB0_28:                               # %if.end.58
	jmp	.LBB0_29
.LBB0_29:                               # %if.end.59
	jmp	.LBB0_30
.LBB0_30:                               # %if.end.60
	jmp	.LBB0_31
.LBB0_31:                               # %if.end.61
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_32:                               # %return
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	char_resolve_modifier_mask, .Lfunc_end0-char_resolve_modifier_mask
	.cfi_endproc

	.globl	char_string
	.align	16, 0x90
	.type	char_string,@function
char_string:                            # @char_string
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
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-4(%rbp), %edi
	andl	$264241152, %edi        # imm = 0xFC00000
	cmpl	$0, %edi
	je	.LBB1_2
# BB#1:                                 # %if.then
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	callq	char_resolve_modifier_mask
	movl	%eax, %ecx
	movl	%ecx, -4(%rbp)
	movl	-4(%rbp), %ecx
	andl	$-264241153, %ecx       # imm = 0xFFFFFFFFF03FFFFF
	movl	%ecx, -4(%rbp)
.LBB1_2:                                # %if.end
	cmpl	$65535, -4(%rbp)        # imm = 0xFFFF
	ja	.LBB1_19
# BB#3:                                 # %if.then.4
	movb	$1, %al
	testb	$1, %al
	jne	.LBB1_4
	jmp	.LBB1_5
.LBB1_4:                                # %cond.true
	movl	-4(%rbp), %eax
	addl	$0, %eax
	cmpl	$127, %eax
	jbe	.LBB1_6
	jmp	.LBB1_7
.LBB1_5:                                # %cond.false
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	cmpq	$127, %rcx
	ja	.LBB1_7
.LBB1_6:                                # %cond.true.11
	movl	$1, %eax
	movl	-4(%rbp), %ecx
	movb	%cl, %dl
	movq	-16(%rbp), %rsi
	movb	%dl, (%rsi)
	movl	%eax, -24(%rbp)         # 4-byte Spill
	jmp	.LBB1_18
.LBB1_7:                                # %cond.false.13
	movb	$1, %al
	testb	$1, %al
	jne	.LBB1_8
	jmp	.LBB1_9
.LBB1_8:                                # %cond.true.14
	movl	-4(%rbp), %eax
	addl	$0, %eax
	cmpl	$2047, %eax             # imm = 0x7FF
	jbe	.LBB1_10
	jmp	.LBB1_11
.LBB1_9:                                # %cond.false.18
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	cmpq	$2047, %rcx             # imm = 0x7FF
	ja	.LBB1_11
.LBB1_10:                               # %cond.true.23
	movl	$2, %eax
	movl	-4(%rbp), %ecx
	shrl	$6, %ecx
	orl	$192, %ecx
	movb	%cl, %dl
	movq	-16(%rbp), %rsi
	movb	%dl, (%rsi)
	movl	-4(%rbp), %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movq	-16(%rbp), %rsi
	movb	%dl, 1(%rsi)
	movl	%eax, -28(%rbp)         # 4-byte Spill
	jmp	.LBB1_17
.LBB1_11:                               # %cond.false.30
	movb	$1, %al
	testb	$1, %al
	jne	.LBB1_12
	jmp	.LBB1_13
.LBB1_12:                               # %cond.true.31
	movl	-4(%rbp), %eax
	addl	$0, %eax
	cmpl	$65535, %eax            # imm = 0xFFFF
	jbe	.LBB1_14
	jmp	.LBB1_15
.LBB1_13:                               # %cond.false.35
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	cmpq	$65535, %rcx            # imm = 0xFFFF
	ja	.LBB1_15
.LBB1_14:                               # %cond.true.40
	movl	$3, %eax
	movl	-4(%rbp), %ecx
	shrl	$12, %ecx
	orl	$224, %ecx
	movb	%cl, %dl
	movq	-16(%rbp), %rsi
	movb	%dl, (%rsi)
	movl	-4(%rbp), %ecx
	shrl	$6, %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movq	-16(%rbp), %rsi
	movb	%dl, 1(%rsi)
	movl	-4(%rbp), %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movq	-16(%rbp), %rsi
	movb	%dl, 2(%rsi)
	movl	%eax, -32(%rbp)         # 4-byte Spill
	jmp	.LBB1_16
.LBB1_15:                               # %cond.false.54
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	char_string
	movl	%eax, -32(%rbp)         # 4-byte Spill
.LBB1_16:                               # %cond.end
	movl	-32(%rbp), %eax         # 4-byte Reload
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB1_17:                               # %cond.end.56
	movl	-28(%rbp), %eax         # 4-byte Reload
	movl	%eax, -24(%rbp)         # 4-byte Spill
.LBB1_18:                               # %cond.end.58
	movl	-24(%rbp), %eax         # 4-byte Reload
	movl	%eax, -20(%rbp)
	jmp	.LBB1_32
.LBB1_19:                               # %if.else
	cmpl	$2097151, -4(%rbp)      # imm = 0x1FFFFF
	ja	.LBB1_21
# BB#20:                                # %if.then.62
	movl	-4(%rbp), %eax
	shrl	$18, %eax
	orl	$240, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movb	%cl, (%rdx)
	movl	-4(%rbp), %eax
	shrl	$12, %eax
	andl	$63, %eax
	orl	$128, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movb	%cl, 1(%rdx)
	movl	-4(%rbp), %eax
	shrl	$6, %eax
	andl	$63, %eax
	orl	$128, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movb	%cl, 2(%rdx)
	movl	-4(%rbp), %eax
	andl	$63, %eax
	orl	$128, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movb	%cl, 3(%rdx)
	movl	$4, -20(%rbp)
	jmp	.LBB1_31
.LBB1_21:                               # %if.else.81
	cmpl	$4194175, -4(%rbp)      # imm = 0x3FFF7F
	ja	.LBB1_23
# BB#22:                                # %if.then.84
	movq	-16(%rbp), %rax
	movb	$-8, (%rax)
	movl	-4(%rbp), %ecx
	shrl	$18, %ecx
	andl	$15, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movq	-16(%rbp), %rax
	movb	%dl, 1(%rax)
	movl	-4(%rbp), %ecx
	shrl	$12, %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movq	-16(%rbp), %rax
	movb	%dl, 2(%rax)
	movl	-4(%rbp), %ecx
	shrl	$6, %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movq	-16(%rbp), %rax
	movb	%dl, 3(%rax)
	movl	-4(%rbp), %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movq	-16(%rbp), %rax
	movb	%dl, 4(%rax)
	movl	$5, -20(%rbp)
	jmp	.LBB1_30
.LBB1_23:                               # %if.else.105
	cmpl	$4194303, -4(%rbp)      # imm = 0x3FFFFF
	ja	.LBB1_28
# BB#24:                                # %if.then.108
	cmpl	$4194175, -4(%rbp)      # imm = 0x3FFF7F
	jbe	.LBB1_26
# BB#25:                                # %cond.true.111
	movl	-4(%rbp), %eax
	subl	$4194048, %eax          # imm = 0x3FFF00
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jmp	.LBB1_27
.LBB1_26:                               # %cond.false.112
	movl	-4(%rbp), %eax
	andl	$255, %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB1_27:                               # %cond.end.114
	movl	-36(%rbp), %eax         # 4-byte Reload
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	shrl	$6, %eax
	andl	$1, %eax
	orl	$192, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movb	%cl, (%rdx)
	movl	-4(%rbp), %eax
	andl	$63, %eax
	orl	$128, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movb	%cl, 1(%rdx)
	movl	$2, -20(%rbp)
	jmp	.LBB1_29
.LBB1_28:                               # %if.else.125
	movabsq	$.L.str, %rdi
	movl	-4(%rbp), %esi
	movb	$0, %al
	callq	error
.LBB1_29:                               # %if.end.126
	jmp	.LBB1_30
.LBB1_30:                               # %if.end.127
	jmp	.LBB1_31
.LBB1_31:                               # %if.end.128
	jmp	.LBB1_32
.LBB1_32:                               # %if.end.129
	movl	-20(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	char_string, .Lfunc_end1-char_string
	.cfi_endproc

	.globl	string_char
	.align	16, 0x90
	.type	string_char,@function
string_char:                            # @string_char
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	movq	-8(%rbp), %rdx
	movzbl	(%rdx), %eax
	cmpl	$128, %eax
	jl	.LBB2_3
# BB#1:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	je	.LBB2_3
# BB#2:                                 # %lor.lhs.false.3
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB2_13
.LBB2_3:                                # %if.then
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB2_5
# BB#4:                                 # %cond.true
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -8(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -44(%rbp)         # 4-byte Spill
	jmp	.LBB2_12
.LBB2_5:                                # %cond.false
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB2_7
# BB#6:                                 # %cond.true.15
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movq	-8(%rbp), %rdx
	addq	$2, %rdx
	movq	%rdx, -8(%rbp)
	movq	-8(%rbp), %rdx
	movzbl	-2(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-8(%rbp), %rdx
	movzbl	-1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-8(%rbp), %rdx
	movzbl	-2(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	orl	%eax, %esi
	movl	%esi, -48(%rbp)         # 4-byte Spill
	jmp	.LBB2_11
.LBB2_7:                                # %cond.false.27
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB2_9
# BB#8:                                 # %cond.true.32
	movq	-8(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	-3(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-8(%rbp), %rax
	movzbl	-2(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-8(%rbp), %rax
	movzbl	-1(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	jmp	.LBB2_10
.LBB2_9:                                # %cond.false.47
	leaq	-8(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rdi
	callq	string_char
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB2_10:                               # %cond.end
	movl	-52(%rbp), %eax         # 4-byte Reload
	movl	%eax, -48(%rbp)         # 4-byte Spill
.LBB2_11:                               # %cond.end.49
	movl	-48(%rbp), %eax         # 4-byte Reload
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB2_12:                               # %cond.end.51
	movl	-44(%rbp), %eax         # 4-byte Reload
	movl	%eax, -28(%rbp)
	jmp	.LBB2_17
.LBB2_13:                               # %if.else
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$8, %ecx
	cmpl	$0, %ecx
	jne	.LBB2_15
# BB#14:                                # %if.then.56
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$7, %ecx
	shll	$18, %ecx
	movq	-8(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$12, %edx
	orl	%edx, %ecx
	movq	-8(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-8(%rbp), %rax
	movzbl	3(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB2_16
.LBB2_15:                               # %if.else.76
	movq	-8(%rbp), %rax
	movzbl	1(%rax), %ecx
	andl	$63, %ecx
	shll	$18, %ecx
	movq	-8(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	shll	$12, %edx
	orl	%edx, %ecx
	movq	-8(%rbp), %rax
	movzbl	3(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-8(%rbp), %rax
	movzbl	4(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rax
	addq	$5, %rax
	movq	%rax, -8(%rbp)
.LBB2_16:                               # %if.end
	jmp	.LBB2_17
.LBB2_17:                               # %if.end.96
	cmpq	$0, -24(%rbp)
	je	.LBB2_19
# BB#18:                                # %if.then.98
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
.LBB2_19:                               # %if.end.100
	cmpq	$0, -16(%rbp)
	je	.LBB2_21
# BB#20:                                # %if.then.102
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB2_21:                               # %if.end.103
	movl	-28(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	string_char, .Lfunc_end2-string_char
	.cfi_endproc

	.globl	translate_char
	.align	16, 0x90
	.type	translate_char,@function
translate_char:                         # @translate_char
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB3_1
	jmp	.LBB3_5
.LBB3_1:                                # %if.then
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	CHAR_TABLE_REF
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB3_2
	jmp	.LBB3_4
.LBB3_2:                                # %land.lhs.true
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jg	.LBB3_4
# BB#3:                                 # %if.then.3
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -12(%rbp)
.LBB3_4:                                # %if.end
	jmp	.LBB3_10
.LBB3_5:                                # %if.else
	jmp	.LBB3_6
.LBB3_6:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB3_9
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	movl	-12(%rbp), %esi
	callq	translate_char
	movl	%eax, -12(%rbp)
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB3_6
.LBB3_9:                                # %for.end
	jmp	.LBB3_10
.LBB3_10:                               # %if.end.10
	movl	-12(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	translate_char, .Lfunc_end3-translate_char
	.cfi_endproc

	.globl	Fcharacterp
	.align	16, 0x90
	.type	Fcharacterp,@function
Fcharacterp:                            # @Fcharacterp
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB4_1
	jmp	.LBB4_3
.LBB4_1:                                # %land.lhs.true
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jg	.LBB4_3
# BB#2:                                 # %cond.true
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB4_4
.LBB4_3:                                # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB4_4:                                # %cond.end
	movq	-24(%rbp), %rax         # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	Fcharacterp, .Lfunc_end4-Fcharacterp
	.cfi_endproc

	.globl	Fmax_char
	.align	16, 0x90
	.type	Fmax_char,@function
Fmax_char:                              # @Fmax_char
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
.Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp17:
	.cfi_def_cfa_register %rbp
	movl	$16777214, %eax         # imm = 0xFFFFFE
                                        # kill: RAX<def> EAX<kill>
	popq	%rbp
	retq
.Lfunc_end5:
	.size	Fmax_char, .Lfunc_end5-Fmax_char
	.cfi_endproc

	.globl	Funibyte_char_to_multibyte
	.align	16, 0x90
	.type	Funibyte_char_to_multibyte,@function
Funibyte_char_to_multibyte:             # @Funibyte_char_to_multibyte
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
.Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp20:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB6_1
	jmp	.LBB6_3
.LBB6_1:                                # %land.lhs.true
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jg	.LBB6_3
# BB#2:                                 # %cond.true
	jmp	.LBB6_4
.LBB6_3:                                # %cond.false
	movl	$260, %edi              # imm = 0x104
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB6_4:                                # %cond.end
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -12(%rbp)
	cmpl	$256, -12(%rbp)         # imm = 0x100
	jl	.LBB6_6
# BB#5:                                 # %if.then
	movabsq	$.L.str.1, %rdi
	movl	-12(%rbp), %esi
	movb	$0, %al
	callq	error
.LBB6_6:                                # %if.end
	movb	$1, %al
	testb	$1, %al
	jne	.LBB6_7
	jmp	.LBB6_8
.LBB6_7:                                # %cond.true.5
	movl	-12(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB6_9
	jmp	.LBB6_10
.LBB6_8:                                # %cond.false.8
	movslq	-12(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB6_10
.LBB6_9:                                # %cond.true.13
	movl	-12(%rbp), %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
	jmp	.LBB6_11
.LBB6_10:                               # %cond.false.14
	movl	-12(%rbp), %eax
	addl	$4194048, %eax          # imm = 0x3FFF00
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB6_11:                               # %cond.end.16
	movl	-28(%rbp), %eax         # 4-byte Reload
	movl	%eax, -12(%rbp)
	movslq	-12(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	Funibyte_char_to_multibyte, .Lfunc_end6-Funibyte_char_to_multibyte
	.cfi_endproc

	.globl	Fmultibyte_char_to_unibyte
	.align	16, 0x90
	.type	Fmultibyte_char_to_unibyte,@function
Fmultibyte_char_to_unibyte:             # @Fmultibyte_char_to_unibyte
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp21:
	.cfi_def_cfa_offset 16
.Ltmp22:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp23:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB7_1
	jmp	.LBB7_3
.LBB7_1:                                # %land.lhs.true
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jg	.LBB7_3
# BB#2:                                 # %cond.true
	jmp	.LBB7_4
.LBB7_3:                                # %cond.false
	movl	$260, %edi              # imm = 0x104
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB7_4:                                # %cond.end
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -20(%rbp)
	cmpl	$256, -20(%rbp)         # imm = 0x100
	jge	.LBB7_6
# BB#5:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB7_15
.LBB7_6:                                # %if.else
	movb	$1, %al
	testb	$1, %al
	jne	.LBB7_7
	jmp	.LBB7_8
.LBB7_7:                                # %cond.true.5
	movl	-20(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB7_9
	jmp	.LBB7_10
.LBB7_8:                                # %cond.false.8
	movslq	-20(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB7_10
.LBB7_9:                                # %cond.true.13
	movl	-20(%rbp), %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jmp	.LBB7_14
.LBB7_10:                               # %cond.false.14
	cmpl	$4194175, -20(%rbp)     # imm = 0x3FFF7F
	jle	.LBB7_12
# BB#11:                                # %cond.true.17
	movl	-20(%rbp), %eax
	subl	$4194048, %eax          # imm = 0x3FFF00
	movl	%eax, -40(%rbp)         # 4-byte Spill
	jmp	.LBB7_13
.LBB7_12:                               # %cond.false.18
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -40(%rbp)         # 4-byte Spill
	jmp	.LBB7_13
.LBB7_13:                               # %cond.end.19
	movl	-40(%rbp), %eax         # 4-byte Reload
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB7_14:                               # %cond.end.20
	movl	-36(%rbp), %eax         # 4-byte Reload
	movl	%eax, -24(%rbp)
	movslq	-24(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -8(%rbp)
.LBB7_15:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	Fmultibyte_char_to_unibyte, .Lfunc_end7-Fmultibyte_char_to_unibyte
	.cfi_endproc

	.globl	Fchar_width
	.align	16, 0x90
	.type	Fchar_width,@function
Fchar_width:                            # @Fchar_width
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp24:
	.cfi_def_cfa_offset 16
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp26:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB8_1
	jmp	.LBB8_3
.LBB8_1:                                # %land.lhs.true
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jg	.LBB8_3
# BB#2:                                 # %cond.true
	jmp	.LBB8_4
.LBB8_3:                                # %cond.false
	movl	$260, %edi              # imm = 0x104
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB8_4:                                # %cond.end
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -12(%rbp)
	movl	-12(%rbp), %edi
	movl	%edi, -36(%rbp)         # 4-byte Spill
	callq	buffer_display_table
	movl	-36(%rbp), %edi         # 4-byte Reload
	movq	%rax, %rsi
	callq	char_width
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	Fchar_width, .Lfunc_end8-Fchar_width
	.cfi_endproc

	.align	16, 0x90
	.type	char_width,@function
char_width:                             # @char_width
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp27:
	.cfi_def_cfa_offset 16
.Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp29:
	.cfi_def_cfa_register %rbp
	subq	$560, %rsp              # imm = 0x230
	movb	$1, %al
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	testb	$1, %al
	jne	.LBB9_1
	jmp	.LBB9_2
.LBB9_1:                                # %cond.true
	movl	-4(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB9_3
	jmp	.LBB9_16
.LBB9_2:                                # %cond.false
	movslq	-4(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB9_16
.LBB9_3:                                # %cond.true.4
	cmpl	$32, -4(%rbp)
	jge	.LBB9_11
# BB#4:                                 # %cond.true.7
	cmpl	$9, -4(%rbp)
	jne	.LBB9_6
# BB#5:                                 # %cond.true.10
	movq	current_buffer, %rax
	movq	152(%rax), %rax
	sarq	$2, %rax
	movq	%rax, %rdi
	callq	sanitize_tab_width
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB9_10
.LBB9_6:                                # %cond.false.11
	cmpl	$10, -4(%rbp)
	jne	.LBB9_8
# BB#7:                                 # %cond.true.14
	xorl	%eax, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB9_9
.LBB9_8:                                # %cond.false.15
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	232(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$2, %edi
	movl	$4, %ecx
	movq	-64(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	cmovel	%ecx, %edi
	movl	%edi, -56(%rbp)         # 4-byte Spill
.LBB9_9:                                # %cond.end
	movl	-56(%rbp), %eax         # 4-byte Reload
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB9_10:                               # %cond.end.20
	movl	-52(%rbp), %eax         # 4-byte Reload
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB9_15
.LBB9_11:                               # %cond.false.22
	cmpl	$127, -4(%rbp)
	jge	.LBB9_13
# BB#12:                                # %cond.true.25
	movl	$1, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jmp	.LBB9_14
.LBB9_13:                               # %cond.false.26
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	232(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$2, %edi
	movl	$4, %ecx
	movq	-80(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	cmovel	%ecx, %edi
	movl	%edi, -72(%rbp)         # 4-byte Spill
.LBB9_14:                               # %cond.end.32
	movl	-72(%rbp), %eax         # 4-byte Reload
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB9_15:                               # %cond.end.34
	movl	-68(%rbp), %eax         # 4-byte Reload
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jmp	.LBB9_17
.LBB9_16:                               # %cond.false.36
	movq	globals+224, %rdi
	movl	-4(%rbp), %esi
	callq	CHAR_TABLE_REF
	sarq	$2, %rax
	movq	%rax, %rdi
	callq	sanitize_char_width
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB9_17:                               # %cond.end.40
	movl	-84(%rbp), %eax         # 4-byte Reload
	movslq	%eax, %rcx
	movq	%rcx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB9_356
# BB#18:                                # %if.then
	movb	$1, %al
	testb	$1, %al
	jne	.LBB9_19
	jmp	.LBB9_20
.LBB9_19:                               # %cond.true.43
	movl	-4(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB9_21
	jmp	.LBB9_28
.LBB9_20:                               # %cond.false.47
	movslq	-4(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB9_28
.LBB9_21:                               # %cond.true.52
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB9_23
# BB#22:                                # %cond.true.56
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB9_27
.LBB9_23:                               # %cond.false.57
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	SUB_CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB9_24
	jmp	.LBB9_25
.LBB9_24:                               # %cond.true.61
	movslq	-4(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	XSUB_CHAR_TABLE
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movq	16(%rax,%rcx,8), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB9_26
.LBB9_25:                               # %cond.false.64
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB9_26:                               # %cond.end.66
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB9_27:                               # %cond.end.68
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB9_29
.LBB9_28:                               # %cond.false.70
	movq	-16(%rbp), %rdi
	movl	-4(%rbp), %esi
	callq	disp_char_vector
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB9_29:                               # %cond.end.72
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB9_30
	jmp	.LBB9_355
.LBB9_30:                               # %if.then.75
	movl	$0, -44(%rbp)
	movq	$0, -24(%rbp)
.LBB9_31:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-44(%rbp), %rax
	movq	-32(%rbp), %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	ASIZE
	movq	-136(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jge	.LBB9_354
# BB#32:                                # %for.body
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-32(%rbp), %rdi
	movslq	-44(%rbp), %rsi
	callq	AREF
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB9_33
	jmp	.LBB9_352
.LBB9_33:                               # %land.lhs.true
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jg	.LBB9_352
# BB#34:                                # %if.then.87
                                        #   in Loop: Header=BB9_31 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB9_35
	jmp	.LBB9_36
.LBB9_35:                               # %cond.true.88
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jl	.LBB9_37
	jmp	.LBB9_50
.LBB9_36:                               # %cond.false.93
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB9_50
.LBB9_37:                               # %cond.true.98
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	cmpq	$32, %rax
	jge	.LBB9_45
# BB#38:                                # %cond.true.102
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	cmpq	$9, %rax
	jne	.LBB9_40
# BB#39:                                # %cond.true.106
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	current_buffer, %rax
	movq	152(%rax), %rax
	sarq	$2, %rax
	movq	%rax, %rdi
	callq	sanitize_tab_width
	movl	%eax, -140(%rbp)        # 4-byte Spill
	jmp	.LBB9_44
.LBB9_40:                               # %cond.false.110
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	cmpq	$10, %rax
	jne	.LBB9_42
# BB#41:                                # %cond.true.114
                                        #   in Loop: Header=BB9_31 Depth=1
	xorl	%eax, %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
	jmp	.LBB9_43
.LBB9_42:                               # %cond.false.115
                                        #   in Loop: Header=BB9_31 Depth=1
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	232(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$2, %edi
	movl	$4, %ecx
	movq	-152(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	cmovel	%ecx, %edi
	movl	%edi, -144(%rbp)        # 4-byte Spill
.LBB9_43:                               # %cond.end.121
                                        #   in Loop: Header=BB9_31 Depth=1
	movl	-144(%rbp), %eax        # 4-byte Reload
	movl	%eax, -140(%rbp)        # 4-byte Spill
.LBB9_44:                               # %cond.end.123
                                        #   in Loop: Header=BB9_31 Depth=1
	movl	-140(%rbp), %eax        # 4-byte Reload
	movl	%eax, -156(%rbp)        # 4-byte Spill
	jmp	.LBB9_49
.LBB9_45:                               # %cond.false.125
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	cmpq	$127, %rax
	jge	.LBB9_47
# BB#46:                                # %cond.true.129
                                        #   in Loop: Header=BB9_31 Depth=1
	movl	$1, %eax
	movl	%eax, -160(%rbp)        # 4-byte Spill
	jmp	.LBB9_48
.LBB9_47:                               # %cond.false.130
                                        #   in Loop: Header=BB9_31 Depth=1
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	232(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$2, %edi
	movl	$4, %ecx
	movq	-168(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	cmovel	%ecx, %edi
	movl	%edi, -160(%rbp)        # 4-byte Spill
.LBB9_48:                               # %cond.end.136
                                        #   in Loop: Header=BB9_31 Depth=1
	movl	-160(%rbp), %eax        # 4-byte Reload
	movl	%eax, -156(%rbp)        # 4-byte Spill
.LBB9_49:                               # %cond.end.138
                                        #   in Loop: Header=BB9_31 Depth=1
	movl	-156(%rbp), %eax        # 4-byte Reload
	movl	%eax, -172(%rbp)        # 4-byte Spill
	jmp	.LBB9_51
.LBB9_50:                               # %cond.false.140
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	globals+224, %rdi
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, %esi
	callq	CHAR_TABLE_REF
	sarq	$2, %rax
	movq	%rax, %rdi
	callq	sanitize_char_width
	movl	%eax, -172(%rbp)        # 4-byte Spill
.LBB9_51:                               # %cond.end.146
                                        #   in Loop: Header=BB9_31 Depth=1
	movl	-172(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movl	%eax, -48(%rbp)
	testb	$1, %dl
	jne	.LBB9_52
	jmp	.LBB9_111
.LBB9_52:                               # %cond.true.148
                                        #   in Loop: Header=BB9_31 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB9_53
	jmp	.LBB9_82
.LBB9_53:                               # %cond.true.149
                                        #   in Loop: Header=BB9_31 Depth=1
	movl	-48(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	imull	$0, %eax, %eax
	movq	-24(%rbp), %rdx
	movb	%dl, %cl
	movsbl	%cl, %esi
	addl	%esi, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB9_55
# BB#54:                                # %cond.true.158
                                        #   in Loop: Header=BB9_31 Depth=1
	xorl	%eax, %eax
	movl	-48(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	imull	$0, %ecx, %ecx
	movq	-24(%rbp), %rsi
	movb	%sil, %dl
	movsbl	%dl, %edi
	addl	%edi, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	movl	-48(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	imull	$0, %ecx, %ecx
	movq	-24(%rbp), %rsi
	movb	%sil, %dl
	movsbl	%dl, %edi
	addl	%edi, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -176(%rbp)        # 4-byte Spill
	jmp	.LBB9_56
.LBB9_55:                               # %cond.false.182
                                        #   in Loop: Header=BB9_31 Depth=1
	movl	-48(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	imull	$0, %eax, %eax
	movq	-24(%rbp), %rdx
	movb	%dl, %cl
	movsbl	%cl, %esi
	addl	%esi, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -176(%rbp)        # 4-byte Spill
.LBB9_56:                               # %cond.end.191
                                        #   in Loop: Header=BB9_31 Depth=1
	movl	-176(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jge	.LBB9_66
# BB#57:                                # %cond.true.195
                                        #   in Loop: Header=BB9_31 Depth=1
	movl	-48(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	cmpl	$0, %eax
	jge	.LBB9_62
# BB#58:                                # %cond.true.200
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movl	-48(%rbp), %esi
	movb	%sil, %cl
	movsbl	%cl, %esi
	imull	$0, %esi, %esi
	movq	-24(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -180(%rbp)        # 4-byte Spill
	jge	.LBB9_60
# BB#59:                                # %cond.true.213
                                        #   in Loop: Header=BB9_31 Depth=1
	xorl	%eax, %eax
	movl	-48(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	imull	$0, %ecx, %ecx
	movq	-24(%rbp), %rsi
	movb	%sil, %dl
	movsbl	%dl, %edi
	addl	%edi, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	movl	-48(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	imull	$0, %ecx, %ecx
	movq	-24(%rbp), %rsi
	movb	%sil, %dl
	movsbl	%dl, %edi
	addl	%edi, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -184(%rbp)        # 4-byte Spill
	jmp	.LBB9_61
.LBB9_60:                               # %cond.false.239
                                        #   in Loop: Header=BB9_31 Depth=1
	movl	-48(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	imull	$0, %eax, %eax
	movq	-24(%rbp), %rdx
	movb	%dl, %cl
	movsbl	%cl, %esi
	addl	%esi, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -184(%rbp)        # 4-byte Spill
.LBB9_61:                               # %cond.end.248
                                        #   in Loop: Header=BB9_31 Depth=1
	movl	-184(%rbp), %eax        # 4-byte Reload
	movl	-48(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	subl	%ecx, %eax
	movl	-180(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB9_74
	jmp	.LBB9_71
.LBB9_62:                               # %cond.false.255
                                        #   in Loop: Header=BB9_31 Depth=1
	movl	-48(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	imull	$0, %eax, %eax
	movq	-24(%rbp), %rdx
	movb	%dl, %cl
	movsbl	%cl, %esi
	addl	%esi, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB9_64
# BB#63:                                # %cond.true.266
                                        #   in Loop: Header=BB9_31 Depth=1
	movl	-48(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	imull	$0, %eax, %eax
	movq	-24(%rbp), %rdx
	movb	%dl, %cl
	movsbl	%cl, %esi
	addl	%esi, %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -188(%rbp)        # 4-byte Spill
	jmp	.LBB9_65
.LBB9_64:                               # %cond.false.279
                                        #   in Loop: Header=BB9_31 Depth=1
	movl	-48(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	imull	$0, %eax, %eax
	movq	-24(%rbp), %rdx
	movb	%dl, %cl
	movsbl	%cl, %esi
	addl	%esi, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -188(%rbp)        # 4-byte Spill
.LBB9_65:                               # %cond.end.288
                                        #   in Loop: Header=BB9_31 Depth=1
	movl	-188(%rbp), %eax        # 4-byte Reload
	movl	-48(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	subl	%ecx, %eax
	movq	-24(%rbp), %rsi
	movb	%sil, %dl
	movsbl	%dl, %ecx
	cmpl	%ecx, %eax
	jl	.LBB9_74
	jmp	.LBB9_71
.LBB9_66:                               # %cond.false.297
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB9_68
# BB#67:                                # %cond.true.302
                                        #   in Loop: Header=BB9_31 Depth=1
	movl	-48(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	movq	-24(%rbp), %rdx
	movb	%dl, %cl
	movsbl	%cl, %esi
	movl	-48(%rbp), %edi
	movb	%dil, %cl
	movsbl	%cl, %edi
	addl	%edi, %esi
	cmpl	%esi, %eax
	jle	.LBB9_74
	jmp	.LBB9_71
.LBB9_68:                               # %cond.false.312
                                        #   in Loop: Header=BB9_31 Depth=1
	movl	-48(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	cmpl	$0, %eax
	jge	.LBB9_70
# BB#69:                                # %cond.true.317
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-24(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	movl	-48(%rbp), %edi
	movb	%dil, %cl
	movsbl	%cl, %edi
	addl	%edi, %esi
	cmpl	%esi, %edx
	jle	.LBB9_74
	jmp	.LBB9_71
.LBB9_70:                               # %cond.false.327
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movl	-48(%rbp), %esi
	movb	%sil, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	movl	-48(%rbp), %esi
	movb	%sil, %cl
	movsbl	%cl, %esi
	cmpl	%esi, %edx
	jl	.LBB9_74
.LBB9_71:                               # %lor.lhs.false
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movl	-48(%rbp), %esi
	movb	%sil, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB9_73
# BB#72:                                # %land.lhs.true.346
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movl	-48(%rbp), %esi
	movb	%sil, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	cmpl	$-128, %edx
	jl	.LBB9_74
.LBB9_73:                               # %lor.lhs.false.354
                                        #   in Loop: Header=BB9_31 Depth=1
	movl	$127, %eax
	movq	-24(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	movl	-48(%rbp), %edi
	movb	%dil, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
	cmpl	%esi, %eax
	jge	.LBB9_78
.LBB9_74:                               # %cond.true.362
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movl	-48(%rbp), %esi
	movb	%sil, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	cmpl	$127, %edx
	jg	.LBB9_76
# BB#75:                                # %cond.true.370
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movl	-48(%rbp), %esi
	movb	%sil, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -192(%rbp)        # 4-byte Spill
	jmp	.LBB9_77
.LBB9_76:                               # %cond.false.378
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movl	-48(%rbp), %esi
	movb	%sil, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -192(%rbp)        # 4-byte Spill
.LBB9_77:                               # %cond.end.388
                                        #   in Loop: Header=BB9_31 Depth=1
	movl	-192(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -24(%rbp)
	testb	$1, %cl
	jne	.LBB9_350
	jmp	.LBB9_351
.LBB9_78:                               # %cond.false.391
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movl	-48(%rbp), %esi
	movb	%sil, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	cmpl	$127, %edx
	jg	.LBB9_80
# BB#79:                                # %cond.true.399
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movl	-48(%rbp), %esi
	movb	%sil, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -196(%rbp)        # 4-byte Spill
	jmp	.LBB9_81
.LBB9_80:                               # %cond.false.407
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movl	-48(%rbp), %esi
	movb	%sil, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -196(%rbp)        # 4-byte Spill
.LBB9_81:                               # %cond.end.417
                                        #   in Loop: Header=BB9_31 Depth=1
	movl	-196(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -24(%rbp)
	testb	$1, %dl
	jne	.LBB9_350
	jmp	.LBB9_351
.LBB9_82:                               # %cond.false.420
                                        #   in Loop: Header=BB9_31 Depth=1
	imull	$0, -48(%rbp), %eax
	movslq	%eax, %rcx
	addq	-24(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jge	.LBB9_84
# BB#83:                                # %cond.true.428
                                        #   in Loop: Header=BB9_31 Depth=1
	xorl	%eax, %eax
	imull	$0, -48(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	-24(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	imull	$0, -48(%rbp), %eax
	movslq	%eax, %rdi
	addq	-24(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -208(%rbp)        # 8-byte Spill
	jmp	.LBB9_85
.LBB9_84:                               # %cond.false.449
                                        #   in Loop: Header=BB9_31 Depth=1
	imull	$0, -48(%rbp), %eax
	movslq	%eax, %rcx
	addq	-24(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -208(%rbp)        # 8-byte Spill
.LBB9_85:                               # %cond.end.455
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-208(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB9_95
# BB#86:                                # %cond.true.459
                                        #   in Loop: Header=BB9_31 Depth=1
	cmpl	$0, -48(%rbp)
	jge	.LBB9_91
# BB#87:                                # %cond.true.462
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	imull	$0, -48(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	-24(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	subq	$1, %rdx
	cmpq	$0, %rdx
	movq	%rax, -216(%rbp)        # 8-byte Spill
	jge	.LBB9_89
# BB#88:                                # %cond.true.470
                                        #   in Loop: Header=BB9_31 Depth=1
	xorl	%eax, %eax
	imull	$0, -48(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	-24(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	imull	$0, -48(%rbp), %eax
	movslq	%eax, %rdi
	addq	-24(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -224(%rbp)        # 8-byte Spill
	jmp	.LBB9_90
.LBB9_89:                               # %cond.false.491
                                        #   in Loop: Header=BB9_31 Depth=1
	imull	$0, -48(%rbp), %eax
	movslq	%eax, %rcx
	addq	-24(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -224(%rbp)        # 8-byte Spill
.LBB9_90:                               # %cond.end.497
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-224(%rbp), %rax        # 8-byte Reload
	movslq	-48(%rbp), %rcx
	subq	%rcx, %rax
	movq	-216(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB9_103
	jmp	.LBB9_100
.LBB9_91:                               # %cond.false.503
                                        #   in Loop: Header=BB9_31 Depth=1
	imull	$0, -48(%rbp), %eax
	movslq	%eax, %rcx
	addq	-24(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jge	.LBB9_93
# BB#92:                                # %cond.true.511
                                        #   in Loop: Header=BB9_31 Depth=1
	imull	$0, -48(%rbp), %eax
	movslq	%eax, %rcx
	addq	-24(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$1, %rcx
	shlq	$62, %rcx
	subq	$1, %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	jmp	.LBB9_94
.LBB9_93:                               # %cond.false.521
                                        #   in Loop: Header=BB9_31 Depth=1
	imull	$0, -48(%rbp), %eax
	movslq	%eax, %rcx
	addq	-24(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	movq	%rcx, -232(%rbp)        # 8-byte Spill
.LBB9_94:                               # %cond.end.527
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-232(%rbp), %rax        # 8-byte Reload
	movslq	-48(%rbp), %rcx
	subq	%rcx, %rax
	cmpq	-24(%rbp), %rax
	jl	.LBB9_103
	jmp	.LBB9_100
.LBB9_95:                               # %cond.false.533
                                        #   in Loop: Header=BB9_31 Depth=1
	cmpq	$0, -24(%rbp)
	jge	.LBB9_97
# BB#96:                                # %cond.true.536
                                        #   in Loop: Header=BB9_31 Depth=1
	movslq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	movslq	-48(%rbp), %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jle	.LBB9_103
	jmp	.LBB9_100
.LBB9_97:                               # %cond.false.542
                                        #   in Loop: Header=BB9_31 Depth=1
	cmpl	$0, -48(%rbp)
	jge	.LBB9_99
# BB#98:                                # %cond.true.545
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movq	-24(%rbp), %rcx
	movslq	-48(%rbp), %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jle	.LBB9_103
	jmp	.LBB9_100
.LBB9_99:                               # %cond.false.550
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movslq	-48(%rbp), %rcx
	addq	%rcx, %rax
	movslq	-48(%rbp), %rcx
	cmpq	%rcx, %rax
	jl	.LBB9_103
.LBB9_100:                              # %lor.lhs.false.556
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movslq	-48(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB9_102
# BB#101:                               # %land.lhs.true.563
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movslq	-48(%rbp), %rcx
	addq	%rcx, %rax
	cmpq	$-128, %rax
	jl	.LBB9_103
.LBB9_102:                              # %lor.lhs.false.568
                                        #   in Loop: Header=BB9_31 Depth=1
	movl	$127, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movslq	-48(%rbp), %rsi
	addq	%rsi, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB9_107
.LBB9_103:                              # %cond.true.573
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movl	-48(%rbp), %esi
	movb	%sil, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	cmpl	$127, %edx
	jg	.LBB9_105
# BB#104:                               # %cond.true.581
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movl	-48(%rbp), %esi
	movb	%sil, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -236(%rbp)        # 4-byte Spill
	jmp	.LBB9_106
.LBB9_105:                              # %cond.false.589
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movl	-48(%rbp), %esi
	movb	%sil, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -236(%rbp)        # 4-byte Spill
.LBB9_106:                              # %cond.end.599
                                        #   in Loop: Header=BB9_31 Depth=1
	movl	-236(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -24(%rbp)
	testb	$1, %cl
	jne	.LBB9_350
	jmp	.LBB9_351
.LBB9_107:                              # %cond.false.602
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movl	-48(%rbp), %esi
	movb	%sil, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	cmpl	$127, %edx
	jg	.LBB9_109
# BB#108:                               # %cond.true.610
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movl	-48(%rbp), %esi
	movb	%sil, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -240(%rbp)        # 4-byte Spill
	jmp	.LBB9_110
.LBB9_109:                              # %cond.false.618
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movl	-48(%rbp), %esi
	movb	%sil, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -240(%rbp)        # 4-byte Spill
.LBB9_110:                              # %cond.end.628
                                        #   in Loop: Header=BB9_31 Depth=1
	movl	-240(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -24(%rbp)
	testb	$1, %dl
	jne	.LBB9_350
	jmp	.LBB9_351
.LBB9_111:                              # %cond.false.631
                                        #   in Loop: Header=BB9_31 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB9_112
	jmp	.LBB9_171
.LBB9_112:                              # %cond.true.632
                                        #   in Loop: Header=BB9_31 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB9_113
	jmp	.LBB9_142
.LBB9_113:                              # %cond.true.633
                                        #   in Loop: Header=BB9_31 Depth=1
	movl	-48(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	imull	$0, %eax, %eax
	movq	-24(%rbp), %rdx
	movw	%dx, %cx
	movswl	%cx, %esi
	addl	%esi, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB9_115
# BB#114:                               # %cond.true.644
                                        #   in Loop: Header=BB9_31 Depth=1
	xorl	%eax, %eax
	movl	-48(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	imull	$0, %ecx, %ecx
	movq	-24(%rbp), %rsi
	movw	%si, %dx
	movswl	%dx, %edi
	addl	%edi, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %ecx
	subl	%ecx, %eax
	movl	-48(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	imull	$0, %ecx, %ecx
	movq	-24(%rbp), %rsi
	movw	%si, %dx
	movswl	%dx, %edi
	addl	%edi, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -244(%rbp)        # 4-byte Spill
	jmp	.LBB9_116
.LBB9_115:                              # %cond.false.670
                                        #   in Loop: Header=BB9_31 Depth=1
	movl	-48(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	imull	$0, %eax, %eax
	movq	-24(%rbp), %rdx
	movw	%dx, %cx
	movswl	%cx, %esi
	addl	%esi, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -244(%rbp)        # 4-byte Spill
.LBB9_116:                              # %cond.end.679
                                        #   in Loop: Header=BB9_31 Depth=1
	movl	-244(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jge	.LBB9_126
# BB#117:                               # %cond.true.683
                                        #   in Loop: Header=BB9_31 Depth=1
	movl	-48(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	cmpl	$0, %eax
	jge	.LBB9_122
# BB#118:                               # %cond.true.688
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movl	-48(%rbp), %esi
	movw	%si, %cx
	movswl	%cx, %esi
	imull	$0, %esi, %esi
	movq	-24(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -248(%rbp)        # 4-byte Spill
	jge	.LBB9_120
# BB#119:                               # %cond.true.701
                                        #   in Loop: Header=BB9_31 Depth=1
	xorl	%eax, %eax
	movl	-48(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	imull	$0, %ecx, %ecx
	movq	-24(%rbp), %rsi
	movw	%si, %dx
	movswl	%dx, %edi
	addl	%edi, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %ecx
	subl	%ecx, %eax
	movl	-48(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	imull	$0, %ecx, %ecx
	movq	-24(%rbp), %rsi
	movw	%si, %dx
	movswl	%dx, %edi
	addl	%edi, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -252(%rbp)        # 4-byte Spill
	jmp	.LBB9_121
.LBB9_120:                              # %cond.false.727
                                        #   in Loop: Header=BB9_31 Depth=1
	movl	-48(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	imull	$0, %eax, %eax
	movq	-24(%rbp), %rdx
	movw	%dx, %cx
	movswl	%cx, %esi
	addl	%esi, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -252(%rbp)        # 4-byte Spill
.LBB9_121:                              # %cond.end.736
                                        #   in Loop: Header=BB9_31 Depth=1
	movl	-252(%rbp), %eax        # 4-byte Reload
	movl	-48(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	subl	%ecx, %eax
	movl	-248(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB9_134
	jmp	.LBB9_131
.LBB9_122:                              # %cond.false.743
                                        #   in Loop: Header=BB9_31 Depth=1
	movl	-48(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	imull	$0, %eax, %eax
	movq	-24(%rbp), %rdx
	movw	%dx, %cx
	movswl	%cx, %esi
	addl	%esi, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB9_124
# BB#123:                               # %cond.true.754
                                        #   in Loop: Header=BB9_31 Depth=1
	movl	-48(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	imull	$0, %eax, %eax
	movq	-24(%rbp), %rdx
	movw	%dx, %cx
	movswl	%cx, %esi
	addl	%esi, %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -256(%rbp)        # 4-byte Spill
	jmp	.LBB9_125
.LBB9_124:                              # %cond.false.767
                                        #   in Loop: Header=BB9_31 Depth=1
	movl	-48(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	imull	$0, %eax, %eax
	movq	-24(%rbp), %rdx
	movw	%dx, %cx
	movswl	%cx, %esi
	addl	%esi, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -256(%rbp)        # 4-byte Spill
.LBB9_125:                              # %cond.end.776
                                        #   in Loop: Header=BB9_31 Depth=1
	movl	-256(%rbp), %eax        # 4-byte Reload
	movl	-48(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	subl	%ecx, %eax
	movq	-24(%rbp), %rsi
	movw	%si, %dx
	movswl	%dx, %ecx
	cmpl	%ecx, %eax
	jl	.LBB9_134
	jmp	.LBB9_131
.LBB9_126:                              # %cond.false.785
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB9_128
# BB#127:                               # %cond.true.790
                                        #   in Loop: Header=BB9_31 Depth=1
	movl	-48(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	movq	-24(%rbp), %rdx
	movw	%dx, %cx
	movswl	%cx, %esi
	movl	-48(%rbp), %edi
	movw	%di, %cx
	movswl	%cx, %edi
	addl	%edi, %esi
	cmpl	%esi, %eax
	jle	.LBB9_134
	jmp	.LBB9_131
.LBB9_128:                              # %cond.false.800
                                        #   in Loop: Header=BB9_31 Depth=1
	movl	-48(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	cmpl	$0, %eax
	jge	.LBB9_130
# BB#129:                               # %cond.true.805
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-24(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	movl	-48(%rbp), %edi
	movw	%di, %cx
	movswl	%cx, %edi
	addl	%edi, %esi
	cmpl	%esi, %edx
	jle	.LBB9_134
	jmp	.LBB9_131
.LBB9_130:                              # %cond.false.815
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movl	-48(%rbp), %esi
	movw	%si, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	movl	-48(%rbp), %esi
	movw	%si, %cx
	movswl	%cx, %esi
	cmpl	%esi, %edx
	jl	.LBB9_134
.LBB9_131:                              # %lor.lhs.false.825
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movl	-48(%rbp), %esi
	movw	%si, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB9_133
# BB#132:                               # %land.lhs.true.835
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movl	-48(%rbp), %esi
	movw	%si, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	cmpl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB9_134
.LBB9_133:                              # %lor.lhs.false.843
                                        #   in Loop: Header=BB9_31 Depth=1
	movl	$32767, %eax            # imm = 0x7FFF
	movq	-24(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	movl	-48(%rbp), %edi
	movw	%di, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	cmpl	%esi, %eax
	jge	.LBB9_138
.LBB9_134:                              # %cond.true.851
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movl	-48(%rbp), %esi
	movw	%si, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB9_136
# BB#135:                               # %cond.true.859
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movl	-48(%rbp), %esi
	movw	%si, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -260(%rbp)        # 4-byte Spill
	jmp	.LBB9_137
.LBB9_136:                              # %cond.false.867
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movl	-48(%rbp), %esi
	movw	%si, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -260(%rbp)        # 4-byte Spill
.LBB9_137:                              # %cond.end.877
                                        #   in Loop: Header=BB9_31 Depth=1
	movl	-260(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -24(%rbp)
	testb	$1, %cl
	jne	.LBB9_350
	jmp	.LBB9_351
.LBB9_138:                              # %cond.false.880
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movl	-48(%rbp), %esi
	movw	%si, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB9_140
# BB#139:                               # %cond.true.888
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movl	-48(%rbp), %esi
	movw	%si, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -264(%rbp)        # 4-byte Spill
	jmp	.LBB9_141
.LBB9_140:                              # %cond.false.896
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movl	-48(%rbp), %esi
	movw	%si, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -264(%rbp)        # 4-byte Spill
.LBB9_141:                              # %cond.end.906
                                        #   in Loop: Header=BB9_31 Depth=1
	movl	-264(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -24(%rbp)
	testb	$1, %dl
	jne	.LBB9_350
	jmp	.LBB9_351
.LBB9_142:                              # %cond.false.909
                                        #   in Loop: Header=BB9_31 Depth=1
	imull	$0, -48(%rbp), %eax
	movslq	%eax, %rcx
	addq	-24(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jge	.LBB9_144
# BB#143:                               # %cond.true.917
                                        #   in Loop: Header=BB9_31 Depth=1
	xorl	%eax, %eax
	imull	$0, -48(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	-24(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	imull	$0, -48(%rbp), %eax
	movslq	%eax, %rdi
	addq	-24(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -272(%rbp)        # 8-byte Spill
	jmp	.LBB9_145
.LBB9_144:                              # %cond.false.938
                                        #   in Loop: Header=BB9_31 Depth=1
	imull	$0, -48(%rbp), %eax
	movslq	%eax, %rcx
	addq	-24(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -272(%rbp)        # 8-byte Spill
.LBB9_145:                              # %cond.end.944
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-272(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB9_155
# BB#146:                               # %cond.true.948
                                        #   in Loop: Header=BB9_31 Depth=1
	cmpl	$0, -48(%rbp)
	jge	.LBB9_151
# BB#147:                               # %cond.true.951
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	imull	$0, -48(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	-24(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	subq	$1, %rdx
	cmpq	$0, %rdx
	movq	%rax, -280(%rbp)        # 8-byte Spill
	jge	.LBB9_149
# BB#148:                               # %cond.true.959
                                        #   in Loop: Header=BB9_31 Depth=1
	xorl	%eax, %eax
	imull	$0, -48(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	-24(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	imull	$0, -48(%rbp), %eax
	movslq	%eax, %rdi
	addq	-24(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -288(%rbp)        # 8-byte Spill
	jmp	.LBB9_150
.LBB9_149:                              # %cond.false.980
                                        #   in Loop: Header=BB9_31 Depth=1
	imull	$0, -48(%rbp), %eax
	movslq	%eax, %rcx
	addq	-24(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -288(%rbp)        # 8-byte Spill
.LBB9_150:                              # %cond.end.986
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-288(%rbp), %rax        # 8-byte Reload
	movslq	-48(%rbp), %rcx
	subq	%rcx, %rax
	movq	-280(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB9_163
	jmp	.LBB9_160
.LBB9_151:                              # %cond.false.992
                                        #   in Loop: Header=BB9_31 Depth=1
	imull	$0, -48(%rbp), %eax
	movslq	%eax, %rcx
	addq	-24(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jge	.LBB9_153
# BB#152:                               # %cond.true.1000
                                        #   in Loop: Header=BB9_31 Depth=1
	imull	$0, -48(%rbp), %eax
	movslq	%eax, %rcx
	addq	-24(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$1, %rcx
	shlq	$62, %rcx
	subq	$1, %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	movq	%rcx, -296(%rbp)        # 8-byte Spill
	jmp	.LBB9_154
.LBB9_153:                              # %cond.false.1010
                                        #   in Loop: Header=BB9_31 Depth=1
	imull	$0, -48(%rbp), %eax
	movslq	%eax, %rcx
	addq	-24(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	movq	%rcx, -296(%rbp)        # 8-byte Spill
.LBB9_154:                              # %cond.end.1016
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-296(%rbp), %rax        # 8-byte Reload
	movslq	-48(%rbp), %rcx
	subq	%rcx, %rax
	cmpq	-24(%rbp), %rax
	jl	.LBB9_163
	jmp	.LBB9_160
.LBB9_155:                              # %cond.false.1022
                                        #   in Loop: Header=BB9_31 Depth=1
	cmpq	$0, -24(%rbp)
	jge	.LBB9_157
# BB#156:                               # %cond.true.1025
                                        #   in Loop: Header=BB9_31 Depth=1
	movslq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	movslq	-48(%rbp), %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jle	.LBB9_163
	jmp	.LBB9_160
.LBB9_157:                              # %cond.false.1031
                                        #   in Loop: Header=BB9_31 Depth=1
	cmpl	$0, -48(%rbp)
	jge	.LBB9_159
# BB#158:                               # %cond.true.1034
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movq	-24(%rbp), %rcx
	movslq	-48(%rbp), %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jle	.LBB9_163
	jmp	.LBB9_160
.LBB9_159:                              # %cond.false.1039
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movslq	-48(%rbp), %rcx
	addq	%rcx, %rax
	movslq	-48(%rbp), %rcx
	cmpq	%rcx, %rax
	jl	.LBB9_163
.LBB9_160:                              # %lor.lhs.false.1045
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movslq	-48(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB9_162
# BB#161:                               # %land.lhs.true.1052
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movslq	-48(%rbp), %rcx
	addq	%rcx, %rax
	cmpq	$-32768, %rax           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB9_163
.LBB9_162:                              # %lor.lhs.false.1057
                                        #   in Loop: Header=BB9_31 Depth=1
	movl	$32767, %eax            # imm = 0x7FFF
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movslq	-48(%rbp), %rsi
	addq	%rsi, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB9_167
.LBB9_163:                              # %cond.true.1062
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movl	-48(%rbp), %esi
	movw	%si, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB9_165
# BB#164:                               # %cond.true.1070
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movl	-48(%rbp), %esi
	movw	%si, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -300(%rbp)        # 4-byte Spill
	jmp	.LBB9_166
.LBB9_165:                              # %cond.false.1078
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movl	-48(%rbp), %esi
	movw	%si, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -300(%rbp)        # 4-byte Spill
.LBB9_166:                              # %cond.end.1088
                                        #   in Loop: Header=BB9_31 Depth=1
	movl	-300(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -24(%rbp)
	testb	$1, %cl
	jne	.LBB9_350
	jmp	.LBB9_351
.LBB9_167:                              # %cond.false.1091
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movl	-48(%rbp), %esi
	movw	%si, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB9_169
# BB#168:                               # %cond.true.1099
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movl	-48(%rbp), %esi
	movw	%si, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -304(%rbp)        # 4-byte Spill
	jmp	.LBB9_170
.LBB9_169:                              # %cond.false.1107
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movl	-48(%rbp), %esi
	movw	%si, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -304(%rbp)        # 4-byte Spill
.LBB9_170:                              # %cond.end.1117
                                        #   in Loop: Header=BB9_31 Depth=1
	movl	-304(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -24(%rbp)
	testb	$1, %dl
	jne	.LBB9_350
	jmp	.LBB9_351
.LBB9_171:                              # %cond.false.1120
                                        #   in Loop: Header=BB9_31 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB9_172
	jmp	.LBB9_231
.LBB9_172:                              # %cond.true.1121
                                        #   in Loop: Header=BB9_31 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB9_173
	jmp	.LBB9_202
.LBB9_173:                              # %cond.true.1122
                                        #   in Loop: Header=BB9_31 Depth=1
	imull	$0, -48(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%ecx, %edx
	addl	%edx, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB9_175
# BB#174:                               # %cond.true.1130
                                        #   in Loop: Header=BB9_31 Depth=1
	xorl	%eax, %eax
	imull	$0, -48(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movl	%edx, %esi
	addl	%esi, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %ecx
	subl	%ecx, %eax
	imull	$0, -48(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movl	%edx, %esi
	addl	%esi, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -308(%rbp)        # 4-byte Spill
	jmp	.LBB9_176
.LBB9_175:                              # %cond.false.1150
                                        #   in Loop: Header=BB9_31 Depth=1
	imull	$0, -48(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%ecx, %edx
	addl	%edx, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -308(%rbp)        # 4-byte Spill
.LBB9_176:                              # %cond.end.1156
                                        #   in Loop: Header=BB9_31 Depth=1
	movl	-308(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jge	.LBB9_186
# BB#177:                               # %cond.true.1160
                                        #   in Loop: Header=BB9_31 Depth=1
	cmpl	$0, -48(%rbp)
	jge	.LBB9_182
# BB#178:                               # %cond.true.1163
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, -48(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%eax, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -312(%rbp)        # 4-byte Spill
	jge	.LBB9_180
# BB#179:                               # %cond.true.1172
                                        #   in Loop: Header=BB9_31 Depth=1
	xorl	%eax, %eax
	imull	$0, -48(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movl	%edx, %esi
	addl	%esi, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %ecx
	subl	%ecx, %eax
	imull	$0, -48(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movl	%edx, %esi
	addl	%esi, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -316(%rbp)        # 4-byte Spill
	jmp	.LBB9_181
.LBB9_180:                              # %cond.false.1192
                                        #   in Loop: Header=BB9_31 Depth=1
	imull	$0, -48(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%ecx, %edx
	addl	%edx, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -316(%rbp)        # 4-byte Spill
.LBB9_181:                              # %cond.end.1198
                                        #   in Loop: Header=BB9_31 Depth=1
	movl	-316(%rbp), %eax        # 4-byte Reload
	subl	-48(%rbp), %eax
	movl	-312(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB9_194
	jmp	.LBB9_191
.LBB9_182:                              # %cond.false.1203
                                        #   in Loop: Header=BB9_31 Depth=1
	imull	$0, -48(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%ecx, %edx
	addl	%edx, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB9_184
# BB#183:                               # %cond.true.1211
                                        #   in Loop: Header=BB9_31 Depth=1
	imull	$0, -48(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%ecx, %edx
	addl	%edx, %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -320(%rbp)        # 4-byte Spill
	jmp	.LBB9_185
.LBB9_184:                              # %cond.false.1221
                                        #   in Loop: Header=BB9_31 Depth=1
	imull	$0, -48(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%ecx, %edx
	addl	%edx, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -320(%rbp)        # 4-byte Spill
.LBB9_185:                              # %cond.end.1227
                                        #   in Loop: Header=BB9_31 Depth=1
	movl	-320(%rbp), %eax        # 4-byte Reload
	subl	-48(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%ecx, %edx
	cmpl	%edx, %eax
	jl	.LBB9_194
	jmp	.LBB9_191
.LBB9_186:                              # %cond.false.1233
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB9_188
# BB#187:                               # %cond.true.1237
                                        #   in Loop: Header=BB9_31 Depth=1
	movl	-48(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%ecx, %edx
	addl	-48(%rbp), %edx
	cmpl	%edx, %eax
	jle	.LBB9_194
	jmp	.LBB9_191
.LBB9_188:                              # %cond.false.1242
                                        #   in Loop: Header=BB9_31 Depth=1
	cmpl	$0, -48(%rbp)
	jge	.LBB9_190
# BB#189:                               # %cond.true.1245
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	%eax, %edx
	addl	-48(%rbp), %edx
	cmpl	%edx, %ecx
	jle	.LBB9_194
	jmp	.LBB9_191
.LBB9_190:                              # %cond.false.1251
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movl	%eax, %ecx
	addl	-48(%rbp), %ecx
	cmpl	-48(%rbp), %ecx
	jl	.LBB9_194
.LBB9_191:                              # %lor.lhs.false.1256
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movl	%eax, %ecx
	addl	-48(%rbp), %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB9_193
# BB#192:                               # %land.lhs.true.1263
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movl	%eax, %ecx
	addl	-48(%rbp), %ecx
	cmpl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	jl	.LBB9_194
.LBB9_193:                              # %lor.lhs.false.1268
                                        #   in Loop: Header=BB9_31 Depth=1
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movq	-24(%rbp), %rcx
	movl	%ecx, %edx
	addl	-48(%rbp), %edx
	cmpl	%edx, %eax
	jge	.LBB9_198
.LBB9_194:                              # %cond.true.1273
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movl	%eax, %ecx
	addl	-48(%rbp), %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB9_196
# BB#195:                               # %cond.true.1278
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movl	%eax, %ecx
	addl	-48(%rbp), %ecx
	movl	%ecx, -324(%rbp)        # 4-byte Spill
	jmp	.LBB9_197
.LBB9_196:                              # %cond.false.1281
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movl	%eax, %ecx
	addl	-48(%rbp), %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -324(%rbp)        # 4-byte Spill
.LBB9_197:                              # %cond.end.1286
                                        #   in Loop: Header=BB9_31 Depth=1
	movl	-324(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -24(%rbp)
	testb	$1, %cl
	jne	.LBB9_350
	jmp	.LBB9_351
.LBB9_198:                              # %cond.false.1289
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movl	%eax, %ecx
	addl	-48(%rbp), %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB9_200
# BB#199:                               # %cond.true.1294
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movl	%eax, %ecx
	addl	-48(%rbp), %ecx
	movl	%ecx, -328(%rbp)        # 4-byte Spill
	jmp	.LBB9_201
.LBB9_200:                              # %cond.false.1297
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movl	%eax, %ecx
	addl	-48(%rbp), %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -328(%rbp)        # 4-byte Spill
.LBB9_201:                              # %cond.end.1302
                                        #   in Loop: Header=BB9_31 Depth=1
	movl	-328(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -24(%rbp)
	testb	$1, %dl
	jne	.LBB9_350
	jmp	.LBB9_351
.LBB9_202:                              # %cond.false.1305
                                        #   in Loop: Header=BB9_31 Depth=1
	imull	$0, -48(%rbp), %eax
	movslq	%eax, %rcx
	addq	-24(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jge	.LBB9_204
# BB#203:                               # %cond.true.1313
                                        #   in Loop: Header=BB9_31 Depth=1
	xorl	%eax, %eax
	imull	$0, -48(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	-24(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	imull	$0, -48(%rbp), %eax
	movslq	%eax, %rdi
	addq	-24(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -336(%rbp)        # 8-byte Spill
	jmp	.LBB9_205
.LBB9_204:                              # %cond.false.1334
                                        #   in Loop: Header=BB9_31 Depth=1
	imull	$0, -48(%rbp), %eax
	movslq	%eax, %rcx
	addq	-24(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -336(%rbp)        # 8-byte Spill
.LBB9_205:                              # %cond.end.1340
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-336(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB9_215
# BB#206:                               # %cond.true.1344
                                        #   in Loop: Header=BB9_31 Depth=1
	cmpl	$0, -48(%rbp)
	jge	.LBB9_211
# BB#207:                               # %cond.true.1347
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	imull	$0, -48(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	-24(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	subq	$1, %rdx
	cmpq	$0, %rdx
	movq	%rax, -344(%rbp)        # 8-byte Spill
	jge	.LBB9_209
# BB#208:                               # %cond.true.1355
                                        #   in Loop: Header=BB9_31 Depth=1
	xorl	%eax, %eax
	imull	$0, -48(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	-24(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	imull	$0, -48(%rbp), %eax
	movslq	%eax, %rdi
	addq	-24(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -352(%rbp)        # 8-byte Spill
	jmp	.LBB9_210
.LBB9_209:                              # %cond.false.1376
                                        #   in Loop: Header=BB9_31 Depth=1
	imull	$0, -48(%rbp), %eax
	movslq	%eax, %rcx
	addq	-24(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -352(%rbp)        # 8-byte Spill
.LBB9_210:                              # %cond.end.1382
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-352(%rbp), %rax        # 8-byte Reload
	movslq	-48(%rbp), %rcx
	subq	%rcx, %rax
	movq	-344(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB9_223
	jmp	.LBB9_220
.LBB9_211:                              # %cond.false.1388
                                        #   in Loop: Header=BB9_31 Depth=1
	imull	$0, -48(%rbp), %eax
	movslq	%eax, %rcx
	addq	-24(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jge	.LBB9_213
# BB#212:                               # %cond.true.1396
                                        #   in Loop: Header=BB9_31 Depth=1
	imull	$0, -48(%rbp), %eax
	movslq	%eax, %rcx
	addq	-24(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$1, %rcx
	shlq	$62, %rcx
	subq	$1, %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	movq	%rcx, -360(%rbp)        # 8-byte Spill
	jmp	.LBB9_214
.LBB9_213:                              # %cond.false.1406
                                        #   in Loop: Header=BB9_31 Depth=1
	imull	$0, -48(%rbp), %eax
	movslq	%eax, %rcx
	addq	-24(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	movq	%rcx, -360(%rbp)        # 8-byte Spill
.LBB9_214:                              # %cond.end.1412
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-360(%rbp), %rax        # 8-byte Reload
	movslq	-48(%rbp), %rcx
	subq	%rcx, %rax
	cmpq	-24(%rbp), %rax
	jl	.LBB9_223
	jmp	.LBB9_220
.LBB9_215:                              # %cond.false.1418
                                        #   in Loop: Header=BB9_31 Depth=1
	cmpq	$0, -24(%rbp)
	jge	.LBB9_217
# BB#216:                               # %cond.true.1421
                                        #   in Loop: Header=BB9_31 Depth=1
	movslq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	movslq	-48(%rbp), %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jle	.LBB9_223
	jmp	.LBB9_220
.LBB9_217:                              # %cond.false.1427
                                        #   in Loop: Header=BB9_31 Depth=1
	cmpl	$0, -48(%rbp)
	jge	.LBB9_219
# BB#218:                               # %cond.true.1430
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movq	-24(%rbp), %rcx
	movslq	-48(%rbp), %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jle	.LBB9_223
	jmp	.LBB9_220
.LBB9_219:                              # %cond.false.1435
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movslq	-48(%rbp), %rcx
	addq	%rcx, %rax
	movslq	-48(%rbp), %rcx
	cmpq	%rcx, %rax
	jl	.LBB9_223
.LBB9_220:                              # %lor.lhs.false.1441
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movslq	-48(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB9_222
# BB#221:                               # %land.lhs.true.1448
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movslq	-48(%rbp), %rcx
	addq	%rcx, %rax
	cmpq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	jl	.LBB9_223
.LBB9_222:                              # %lor.lhs.false.1453
                                        #   in Loop: Header=BB9_31 Depth=1
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movslq	-48(%rbp), %rsi
	addq	%rsi, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB9_227
.LBB9_223:                              # %cond.true.1458
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movl	%eax, %ecx
	addl	-48(%rbp), %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB9_225
# BB#224:                               # %cond.true.1463
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movl	%eax, %ecx
	addl	-48(%rbp), %ecx
	movl	%ecx, -364(%rbp)        # 4-byte Spill
	jmp	.LBB9_226
.LBB9_225:                              # %cond.false.1466
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movl	%eax, %ecx
	addl	-48(%rbp), %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -364(%rbp)        # 4-byte Spill
.LBB9_226:                              # %cond.end.1471
                                        #   in Loop: Header=BB9_31 Depth=1
	movl	-364(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -24(%rbp)
	testb	$1, %cl
	jne	.LBB9_350
	jmp	.LBB9_351
.LBB9_227:                              # %cond.false.1474
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movl	%eax, %ecx
	addl	-48(%rbp), %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB9_229
# BB#228:                               # %cond.true.1479
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movl	%eax, %ecx
	addl	-48(%rbp), %ecx
	movl	%ecx, -368(%rbp)        # 4-byte Spill
	jmp	.LBB9_230
.LBB9_229:                              # %cond.false.1482
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movl	%eax, %ecx
	addl	-48(%rbp), %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -368(%rbp)        # 4-byte Spill
.LBB9_230:                              # %cond.end.1487
                                        #   in Loop: Header=BB9_31 Depth=1
	movl	-368(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -24(%rbp)
	testb	$1, %dl
	jne	.LBB9_350
	jmp	.LBB9_351
.LBB9_231:                              # %cond.false.1490
                                        #   in Loop: Header=BB9_31 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB9_232
	jmp	.LBB9_291
.LBB9_232:                              # %cond.true.1491
                                        #   in Loop: Header=BB9_31 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB9_233
	jmp	.LBB9_262
.LBB9_233:                              # %cond.true.1492
                                        #   in Loop: Header=BB9_31 Depth=1
	movslq	-48(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	-24(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB9_235
# BB#234:                               # %cond.true.1500
                                        #   in Loop: Header=BB9_31 Depth=1
	xorl	%eax, %eax
	movslq	-48(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	-24(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movslq	-48(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	-24(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -376(%rbp)        # 8-byte Spill
	jmp	.LBB9_236
.LBB9_235:                              # %cond.false.1521
                                        #   in Loop: Header=BB9_31 Depth=1
	movslq	-48(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	-24(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
.LBB9_236:                              # %cond.end.1527
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-376(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB9_246
# BB#237:                               # %cond.true.1531
                                        #   in Loop: Header=BB9_31 Depth=1
	movslq	-48(%rbp), %rax
	cmpq	$0, %rax
	jge	.LBB9_242
# BB#238:                               # %cond.true.1535
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movslq	-48(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	-24(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -384(%rbp)        # 8-byte Spill
	jge	.LBB9_240
# BB#239:                               # %cond.true.1543
                                        #   in Loop: Header=BB9_31 Depth=1
	xorl	%eax, %eax
	movslq	-48(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	-24(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movslq	-48(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	-24(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -392(%rbp)        # 8-byte Spill
	jmp	.LBB9_241
.LBB9_240:                              # %cond.false.1564
                                        #   in Loop: Header=BB9_31 Depth=1
	movslq	-48(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	-24(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
.LBB9_241:                              # %cond.end.1570
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-392(%rbp), %rax        # 8-byte Reload
	movslq	-48(%rbp), %rcx
	subq	%rcx, %rax
	movq	-384(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB9_254
	jmp	.LBB9_251
.LBB9_242:                              # %cond.false.1576
                                        #   in Loop: Header=BB9_31 Depth=1
	movslq	-48(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	-24(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB9_244
# BB#243:                               # %cond.true.1584
                                        #   in Loop: Header=BB9_31 Depth=1
	movslq	-48(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	-24(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	jmp	.LBB9_245
.LBB9_244:                              # %cond.false.1594
                                        #   in Loop: Header=BB9_31 Depth=1
	movslq	-48(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	-24(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
.LBB9_245:                              # %cond.end.1600
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-400(%rbp), %rax        # 8-byte Reload
	movslq	-48(%rbp), %rcx
	subq	%rcx, %rax
	cmpq	-24(%rbp), %rax
	jl	.LBB9_254
	jmp	.LBB9_251
.LBB9_246:                              # %cond.false.1606
                                        #   in Loop: Header=BB9_31 Depth=1
	cmpq	$0, -24(%rbp)
	jge	.LBB9_248
# BB#247:                               # %cond.true.1609
                                        #   in Loop: Header=BB9_31 Depth=1
	movslq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	movslq	-48(%rbp), %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jle	.LBB9_254
	jmp	.LBB9_251
.LBB9_248:                              # %cond.false.1615
                                        #   in Loop: Header=BB9_31 Depth=1
	movslq	-48(%rbp), %rax
	cmpq	$0, %rax
	jge	.LBB9_250
# BB#249:                               # %cond.true.1619
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movq	-24(%rbp), %rcx
	movslq	-48(%rbp), %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jle	.LBB9_254
	jmp	.LBB9_251
.LBB9_250:                              # %cond.false.1624
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movslq	-48(%rbp), %rcx
	addq	%rcx, %rax
	movslq	-48(%rbp), %rcx
	cmpq	%rcx, %rax
	jl	.LBB9_254
.LBB9_251:                              # %lor.lhs.false.1630
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movslq	-48(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB9_253
# BB#252:                               # %land.lhs.true.1637
                                        #   in Loop: Header=BB9_31 Depth=1
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-24(%rbp), %rcx
	movslq	-48(%rbp), %rdx
	addq	%rdx, %rcx
	cmpq	%rax, %rcx
	jl	.LBB9_254
.LBB9_253:                              # %lor.lhs.false.1642
                                        #   in Loop: Header=BB9_31 Depth=1
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-24(%rbp), %rcx
	movslq	-48(%rbp), %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jge	.LBB9_258
.LBB9_254:                              # %cond.true.1647
                                        #   in Loop: Header=BB9_31 Depth=1
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-24(%rbp), %rcx
	movslq	-48(%rbp), %rdx
	addq	%rdx, %rcx
	cmpq	%rax, %rcx
	ja	.LBB9_256
# BB#255:                               # %cond.true.1652
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movslq	-48(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	jmp	.LBB9_257
.LBB9_256:                              # %cond.false.1655
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movslq	-48(%rbp), %rcx
	addq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
.LBB9_257:                              # %cond.end.1660
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-408(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -24(%rbp)
	testb	$1, %cl
	jne	.LBB9_350
	jmp	.LBB9_351
.LBB9_258:                              # %cond.false.1662
                                        #   in Loop: Header=BB9_31 Depth=1
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-24(%rbp), %rcx
	movslq	-48(%rbp), %rdx
	addq	%rdx, %rcx
	cmpq	%rax, %rcx
	ja	.LBB9_260
# BB#259:                               # %cond.true.1667
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movslq	-48(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	jmp	.LBB9_261
.LBB9_260:                              # %cond.false.1670
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movslq	-48(%rbp), %rcx
	addq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
.LBB9_261:                              # %cond.end.1675
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-416(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -24(%rbp)
	testb	$1, %dl
	jne	.LBB9_350
	jmp	.LBB9_351
.LBB9_262:                              # %cond.false.1677
                                        #   in Loop: Header=BB9_31 Depth=1
	imull	$0, -48(%rbp), %eax
	movslq	%eax, %rcx
	addq	-24(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jge	.LBB9_264
# BB#263:                               # %cond.true.1685
                                        #   in Loop: Header=BB9_31 Depth=1
	xorl	%eax, %eax
	imull	$0, -48(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	-24(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	imull	$0, -48(%rbp), %eax
	movslq	%eax, %rdi
	addq	-24(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -424(%rbp)        # 8-byte Spill
	jmp	.LBB9_265
.LBB9_264:                              # %cond.false.1706
                                        #   in Loop: Header=BB9_31 Depth=1
	imull	$0, -48(%rbp), %eax
	movslq	%eax, %rcx
	addq	-24(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -424(%rbp)        # 8-byte Spill
.LBB9_265:                              # %cond.end.1712
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-424(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB9_275
# BB#266:                               # %cond.true.1716
                                        #   in Loop: Header=BB9_31 Depth=1
	cmpl	$0, -48(%rbp)
	jge	.LBB9_271
# BB#267:                               # %cond.true.1719
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	imull	$0, -48(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	-24(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	subq	$1, %rdx
	cmpq	$0, %rdx
	movq	%rax, -432(%rbp)        # 8-byte Spill
	jge	.LBB9_269
# BB#268:                               # %cond.true.1727
                                        #   in Loop: Header=BB9_31 Depth=1
	xorl	%eax, %eax
	imull	$0, -48(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	-24(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	imull	$0, -48(%rbp), %eax
	movslq	%eax, %rdi
	addq	-24(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -440(%rbp)        # 8-byte Spill
	jmp	.LBB9_270
.LBB9_269:                              # %cond.false.1748
                                        #   in Loop: Header=BB9_31 Depth=1
	imull	$0, -48(%rbp), %eax
	movslq	%eax, %rcx
	addq	-24(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -440(%rbp)        # 8-byte Spill
.LBB9_270:                              # %cond.end.1754
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-440(%rbp), %rax        # 8-byte Reload
	movslq	-48(%rbp), %rcx
	subq	%rcx, %rax
	movq	-432(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB9_283
	jmp	.LBB9_280
.LBB9_271:                              # %cond.false.1760
                                        #   in Loop: Header=BB9_31 Depth=1
	imull	$0, -48(%rbp), %eax
	movslq	%eax, %rcx
	addq	-24(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jge	.LBB9_273
# BB#272:                               # %cond.true.1768
                                        #   in Loop: Header=BB9_31 Depth=1
	imull	$0, -48(%rbp), %eax
	movslq	%eax, %rcx
	addq	-24(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$1, %rcx
	shlq	$62, %rcx
	subq	$1, %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	movq	%rcx, -448(%rbp)        # 8-byte Spill
	jmp	.LBB9_274
.LBB9_273:                              # %cond.false.1778
                                        #   in Loop: Header=BB9_31 Depth=1
	imull	$0, -48(%rbp), %eax
	movslq	%eax, %rcx
	addq	-24(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	movq	%rcx, -448(%rbp)        # 8-byte Spill
.LBB9_274:                              # %cond.end.1784
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-448(%rbp), %rax        # 8-byte Reload
	movslq	-48(%rbp), %rcx
	subq	%rcx, %rax
	cmpq	-24(%rbp), %rax
	jl	.LBB9_283
	jmp	.LBB9_280
.LBB9_275:                              # %cond.false.1790
                                        #   in Loop: Header=BB9_31 Depth=1
	cmpq	$0, -24(%rbp)
	jge	.LBB9_277
# BB#276:                               # %cond.true.1793
                                        #   in Loop: Header=BB9_31 Depth=1
	movslq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	movslq	-48(%rbp), %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jle	.LBB9_283
	jmp	.LBB9_280
.LBB9_277:                              # %cond.false.1799
                                        #   in Loop: Header=BB9_31 Depth=1
	cmpl	$0, -48(%rbp)
	jge	.LBB9_279
# BB#278:                               # %cond.true.1802
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movq	-24(%rbp), %rcx
	movslq	-48(%rbp), %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jle	.LBB9_283
	jmp	.LBB9_280
.LBB9_279:                              # %cond.false.1807
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movslq	-48(%rbp), %rcx
	addq	%rcx, %rax
	movslq	-48(%rbp), %rcx
	cmpq	%rcx, %rax
	jl	.LBB9_283
.LBB9_280:                              # %lor.lhs.false.1813
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movslq	-48(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB9_282
# BB#281:                               # %land.lhs.true.1820
                                        #   in Loop: Header=BB9_31 Depth=1
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-24(%rbp), %rcx
	movslq	-48(%rbp), %rdx
	addq	%rdx, %rcx
	cmpq	%rax, %rcx
	jl	.LBB9_283
.LBB9_282:                              # %lor.lhs.false.1825
                                        #   in Loop: Header=BB9_31 Depth=1
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-24(%rbp), %rcx
	movslq	-48(%rbp), %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jge	.LBB9_287
.LBB9_283:                              # %cond.true.1830
                                        #   in Loop: Header=BB9_31 Depth=1
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-24(%rbp), %rcx
	movslq	-48(%rbp), %rdx
	addq	%rdx, %rcx
	cmpq	%rax, %rcx
	ja	.LBB9_285
# BB#284:                               # %cond.true.1835
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movslq	-48(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	jmp	.LBB9_286
.LBB9_285:                              # %cond.false.1838
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movslq	-48(%rbp), %rcx
	addq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
.LBB9_286:                              # %cond.end.1843
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-456(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -24(%rbp)
	testb	$1, %cl
	jne	.LBB9_350
	jmp	.LBB9_351
.LBB9_287:                              # %cond.false.1845
                                        #   in Loop: Header=BB9_31 Depth=1
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-24(%rbp), %rcx
	movslq	-48(%rbp), %rdx
	addq	%rdx, %rcx
	cmpq	%rax, %rcx
	ja	.LBB9_289
# BB#288:                               # %cond.true.1850
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movslq	-48(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	jmp	.LBB9_290
.LBB9_289:                              # %cond.false.1853
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movslq	-48(%rbp), %rcx
	addq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
.LBB9_290:                              # %cond.end.1858
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-464(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -24(%rbp)
	testb	$1, %dl
	jne	.LBB9_350
	jmp	.LBB9_351
.LBB9_291:                              # %cond.false.1860
                                        #   in Loop: Header=BB9_31 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB9_292
	jmp	.LBB9_321
.LBB9_292:                              # %cond.true.1861
                                        #   in Loop: Header=BB9_31 Depth=1
	movslq	-48(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	-24(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB9_294
# BB#293:                               # %cond.true.1869
                                        #   in Loop: Header=BB9_31 Depth=1
	xorl	%eax, %eax
	movslq	-48(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	-24(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movslq	-48(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	-24(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -472(%rbp)        # 8-byte Spill
	jmp	.LBB9_295
.LBB9_294:                              # %cond.false.1890
                                        #   in Loop: Header=BB9_31 Depth=1
	movslq	-48(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	-24(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
.LBB9_295:                              # %cond.end.1896
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-472(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB9_305
# BB#296:                               # %cond.true.1900
                                        #   in Loop: Header=BB9_31 Depth=1
	movslq	-48(%rbp), %rax
	cmpq	$0, %rax
	jge	.LBB9_301
# BB#297:                               # %cond.true.1904
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movslq	-48(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	-24(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -480(%rbp)        # 8-byte Spill
	jge	.LBB9_299
# BB#298:                               # %cond.true.1912
                                        #   in Loop: Header=BB9_31 Depth=1
	xorl	%eax, %eax
	movslq	-48(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	-24(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movslq	-48(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	-24(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -488(%rbp)        # 8-byte Spill
	jmp	.LBB9_300
.LBB9_299:                              # %cond.false.1933
                                        #   in Loop: Header=BB9_31 Depth=1
	movslq	-48(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	-24(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
.LBB9_300:                              # %cond.end.1939
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-488(%rbp), %rax        # 8-byte Reload
	movslq	-48(%rbp), %rcx
	subq	%rcx, %rax
	movq	-480(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB9_313
	jmp	.LBB9_310
.LBB9_301:                              # %cond.false.1945
                                        #   in Loop: Header=BB9_31 Depth=1
	movslq	-48(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	-24(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB9_303
# BB#302:                               # %cond.true.1953
                                        #   in Loop: Header=BB9_31 Depth=1
	movslq	-48(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	-24(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	jmp	.LBB9_304
.LBB9_303:                              # %cond.false.1963
                                        #   in Loop: Header=BB9_31 Depth=1
	movslq	-48(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	-24(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
.LBB9_304:                              # %cond.end.1969
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-496(%rbp), %rax        # 8-byte Reload
	movslq	-48(%rbp), %rcx
	subq	%rcx, %rax
	cmpq	-24(%rbp), %rax
	jl	.LBB9_313
	jmp	.LBB9_310
.LBB9_305:                              # %cond.false.1975
                                        #   in Loop: Header=BB9_31 Depth=1
	cmpq	$0, -24(%rbp)
	jge	.LBB9_307
# BB#306:                               # %cond.true.1978
                                        #   in Loop: Header=BB9_31 Depth=1
	movslq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	movslq	-48(%rbp), %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jle	.LBB9_313
	jmp	.LBB9_310
.LBB9_307:                              # %cond.false.1984
                                        #   in Loop: Header=BB9_31 Depth=1
	movslq	-48(%rbp), %rax
	cmpq	$0, %rax
	jge	.LBB9_309
# BB#308:                               # %cond.true.1988
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movq	-24(%rbp), %rcx
	movslq	-48(%rbp), %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jle	.LBB9_313
	jmp	.LBB9_310
.LBB9_309:                              # %cond.false.1993
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movslq	-48(%rbp), %rcx
	addq	%rcx, %rax
	movslq	-48(%rbp), %rcx
	cmpq	%rcx, %rax
	jl	.LBB9_313
.LBB9_310:                              # %lor.lhs.false.1999
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movslq	-48(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB9_312
# BB#311:                               # %land.lhs.true.2006
                                        #   in Loop: Header=BB9_31 Depth=1
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-24(%rbp), %rcx
	movslq	-48(%rbp), %rdx
	addq	%rdx, %rcx
	cmpq	%rax, %rcx
	jl	.LBB9_313
.LBB9_312:                              # %lor.lhs.false.2011
                                        #   in Loop: Header=BB9_31 Depth=1
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-24(%rbp), %rcx
	movslq	-48(%rbp), %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jge	.LBB9_317
.LBB9_313:                              # %cond.true.2016
                                        #   in Loop: Header=BB9_31 Depth=1
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-24(%rbp), %rcx
	movslq	-48(%rbp), %rdx
	addq	%rdx, %rcx
	cmpq	%rax, %rcx
	ja	.LBB9_315
# BB#314:                               # %cond.true.2021
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movslq	-48(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	jmp	.LBB9_316
.LBB9_315:                              # %cond.false.2024
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movslq	-48(%rbp), %rcx
	addq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
.LBB9_316:                              # %cond.end.2029
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-504(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -24(%rbp)
	testb	$1, %cl
	jne	.LBB9_350
	jmp	.LBB9_351
.LBB9_317:                              # %cond.false.2031
                                        #   in Loop: Header=BB9_31 Depth=1
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-24(%rbp), %rcx
	movslq	-48(%rbp), %rdx
	addq	%rdx, %rcx
	cmpq	%rax, %rcx
	ja	.LBB9_319
# BB#318:                               # %cond.true.2036
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movslq	-48(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	jmp	.LBB9_320
.LBB9_319:                              # %cond.false.2039
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movslq	-48(%rbp), %rcx
	addq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
.LBB9_320:                              # %cond.end.2044
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-512(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -24(%rbp)
	testb	$1, %dl
	jne	.LBB9_350
	jmp	.LBB9_351
.LBB9_321:                              # %cond.false.2046
                                        #   in Loop: Header=BB9_31 Depth=1
	imull	$0, -48(%rbp), %eax
	movslq	%eax, %rcx
	addq	-24(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jge	.LBB9_323
# BB#322:                               # %cond.true.2054
                                        #   in Loop: Header=BB9_31 Depth=1
	xorl	%eax, %eax
	imull	$0, -48(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	-24(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	imull	$0, -48(%rbp), %eax
	movslq	%eax, %rdi
	addq	-24(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -520(%rbp)        # 8-byte Spill
	jmp	.LBB9_324
.LBB9_323:                              # %cond.false.2075
                                        #   in Loop: Header=BB9_31 Depth=1
	imull	$0, -48(%rbp), %eax
	movslq	%eax, %rcx
	addq	-24(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -520(%rbp)        # 8-byte Spill
.LBB9_324:                              # %cond.end.2081
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-520(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB9_334
# BB#325:                               # %cond.true.2085
                                        #   in Loop: Header=BB9_31 Depth=1
	cmpl	$0, -48(%rbp)
	jge	.LBB9_330
# BB#326:                               # %cond.true.2088
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	imull	$0, -48(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	-24(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	subq	$1, %rdx
	cmpq	$0, %rdx
	movq	%rax, -528(%rbp)        # 8-byte Spill
	jge	.LBB9_328
# BB#327:                               # %cond.true.2096
                                        #   in Loop: Header=BB9_31 Depth=1
	xorl	%eax, %eax
	imull	$0, -48(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	-24(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	imull	$0, -48(%rbp), %eax
	movslq	%eax, %rdi
	addq	-24(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -536(%rbp)        # 8-byte Spill
	jmp	.LBB9_329
.LBB9_328:                              # %cond.false.2117
                                        #   in Loop: Header=BB9_31 Depth=1
	imull	$0, -48(%rbp), %eax
	movslq	%eax, %rcx
	addq	-24(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -536(%rbp)        # 8-byte Spill
.LBB9_329:                              # %cond.end.2123
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-536(%rbp), %rax        # 8-byte Reload
	movslq	-48(%rbp), %rcx
	subq	%rcx, %rax
	movq	-528(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB9_342
	jmp	.LBB9_339
.LBB9_330:                              # %cond.false.2129
                                        #   in Loop: Header=BB9_31 Depth=1
	imull	$0, -48(%rbp), %eax
	movslq	%eax, %rcx
	addq	-24(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jge	.LBB9_332
# BB#331:                               # %cond.true.2137
                                        #   in Loop: Header=BB9_31 Depth=1
	imull	$0, -48(%rbp), %eax
	movslq	%eax, %rcx
	addq	-24(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$1, %rcx
	shlq	$62, %rcx
	subq	$1, %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	movq	%rcx, -544(%rbp)        # 8-byte Spill
	jmp	.LBB9_333
.LBB9_332:                              # %cond.false.2147
                                        #   in Loop: Header=BB9_31 Depth=1
	imull	$0, -48(%rbp), %eax
	movslq	%eax, %rcx
	addq	-24(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	movq	%rcx, -544(%rbp)        # 8-byte Spill
.LBB9_333:                              # %cond.end.2153
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-544(%rbp), %rax        # 8-byte Reload
	movslq	-48(%rbp), %rcx
	subq	%rcx, %rax
	cmpq	-24(%rbp), %rax
	jl	.LBB9_342
	jmp	.LBB9_339
.LBB9_334:                              # %cond.false.2159
                                        #   in Loop: Header=BB9_31 Depth=1
	cmpq	$0, -24(%rbp)
	jge	.LBB9_336
# BB#335:                               # %cond.true.2162
                                        #   in Loop: Header=BB9_31 Depth=1
	movslq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	movslq	-48(%rbp), %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jle	.LBB9_342
	jmp	.LBB9_339
.LBB9_336:                              # %cond.false.2168
                                        #   in Loop: Header=BB9_31 Depth=1
	cmpl	$0, -48(%rbp)
	jge	.LBB9_338
# BB#337:                               # %cond.true.2171
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movq	-24(%rbp), %rcx
	movslq	-48(%rbp), %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jle	.LBB9_342
	jmp	.LBB9_339
.LBB9_338:                              # %cond.false.2176
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movslq	-48(%rbp), %rcx
	addq	%rcx, %rax
	movslq	-48(%rbp), %rcx
	cmpq	%rcx, %rax
	jl	.LBB9_342
.LBB9_339:                              # %lor.lhs.false.2182
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movslq	-48(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB9_341
# BB#340:                               # %land.lhs.true.2189
                                        #   in Loop: Header=BB9_31 Depth=1
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-24(%rbp), %rcx
	movslq	-48(%rbp), %rdx
	addq	%rdx, %rcx
	cmpq	%rax, %rcx
	jl	.LBB9_342
.LBB9_341:                              # %lor.lhs.false.2194
                                        #   in Loop: Header=BB9_31 Depth=1
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-24(%rbp), %rcx
	movslq	-48(%rbp), %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jge	.LBB9_346
.LBB9_342:                              # %cond.true.2199
                                        #   in Loop: Header=BB9_31 Depth=1
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-24(%rbp), %rcx
	movslq	-48(%rbp), %rdx
	addq	%rdx, %rcx
	cmpq	%rax, %rcx
	ja	.LBB9_344
# BB#343:                               # %cond.true.2204
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movslq	-48(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
	jmp	.LBB9_345
.LBB9_344:                              # %cond.false.2207
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movslq	-48(%rbp), %rcx
	addq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
.LBB9_345:                              # %cond.end.2212
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-552(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -24(%rbp)
	testb	$1, %cl
	jne	.LBB9_350
	jmp	.LBB9_351
.LBB9_346:                              # %cond.false.2214
                                        #   in Loop: Header=BB9_31 Depth=1
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-24(%rbp), %rcx
	movslq	-48(%rbp), %rdx
	addq	%rdx, %rcx
	cmpq	%rax, %rcx
	ja	.LBB9_348
# BB#347:                               # %cond.true.2219
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movslq	-48(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -560(%rbp)        # 8-byte Spill
	jmp	.LBB9_349
.LBB9_348:                              # %cond.false.2222
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-24(%rbp), %rax
	movslq	-48(%rbp), %rcx
	addq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -560(%rbp)        # 8-byte Spill
.LBB9_349:                              # %cond.end.2227
                                        #   in Loop: Header=BB9_31 Depth=1
	movq	-560(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -24(%rbp)
	testb	$1, %dl
	jne	.LBB9_350
	jmp	.LBB9_351
.LBB9_350:                              # %if.then.2229
	callq	string_overflow
.LBB9_351:                              # %if.end
                                        #   in Loop: Header=BB9_31 Depth=1
	jmp	.LBB9_352
.LBB9_352:                              # %if.end.2230
                                        #   in Loop: Header=BB9_31 Depth=1
	jmp	.LBB9_353
.LBB9_353:                              # %for.inc
                                        #   in Loop: Header=BB9_31 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB9_31
.LBB9_354:                              # %for.end
	jmp	.LBB9_355
.LBB9_355:                              # %if.end.2231
	jmp	.LBB9_356
.LBB9_356:                              # %if.end.2232
	movq	-24(%rbp), %rax
	addq	$560, %rsp              # imm = 0x230
	popq	%rbp
	retq
.Lfunc_end9:
	.size	char_width, .Lfunc_end9-char_width
	.cfi_endproc

	.globl	c_string_width
	.align	16, 0x90
	.type	c_string_width,@function
c_string_width:                         # @c_string_width
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp30:
	.cfi_def_cfa_offset 16
.Ltmp31:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp32:
	.cfi_def_cfa_register %rbp
	subq	$496, %rsp              # imm = 0x1F0
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	callq	buffer_display_table
	movq	%rax, -80(%rbp)
.LBB10_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jge	.LBB10_315
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-16(%rbp), %rax
	movq	-64(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	jne	.LBB10_4
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	$1, -84(%rbp)
	movq	-16(%rbp), %rax
	movq	-64(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	movl	%edx, -100(%rbp)        # 4-byte Spill
	jmp	.LBB10_11
.LBB10_4:                               # %cond.false
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-16(%rbp), %rax
	movq	-64(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	andl	$32, %edx
	cmpl	$0, %edx
	jne	.LBB10_6
# BB#5:                                 # %cond.true.9
                                        #   in Loop: Header=BB10_1 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -84(%rbp)
	movq	-16(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movzbl	(%rdx,%rsi), %edi
	andl	$31, %edi
	shll	$6, %edi
	movq	-16(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movzbl	1(%rdx,%rsi), %r8d
	andl	$63, %r8d
	orl	%r8d, %edi
	movq	-16(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movzbl	(%rdx,%rsi), %r8d
	cmpl	$194, %r8d
	cmovll	%ecx, %eax
	addl	%eax, %edi
	movl	%edi, -104(%rbp)        # 4-byte Spill
	jmp	.LBB10_10
.LBB10_6:                               # %cond.false.23
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-16(%rbp), %rax
	movq	-64(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	andl	$16, %edx
	cmpl	$0, %edx
	jne	.LBB10_8
# BB#7:                                 # %cond.true.29
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	$3, -84(%rbp)
	movq	-16(%rbp), %rax
	movq	-64(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	andl	$15, %edx
	shll	$12, %edx
	movq	-16(%rbp), %rax
	movq	-64(%rbp), %rcx
	movzbl	1(%rax,%rcx), %esi
	andl	$63, %esi
	shll	$6, %esi
	orl	%esi, %edx
	movq	-16(%rbp), %rax
	movq	-64(%rbp), %rcx
	movzbl	2(%rax,%rcx), %esi
	andl	$63, %esi
	orl	%esi, %edx
	movl	%edx, -108(%rbp)        # 4-byte Spill
	jmp	.LBB10_9
.LBB10_8:                               # %cond.false.46
                                        #   in Loop: Header=BB10_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-84(%rbp), %rdx
	movq	-16(%rbp), %rcx
	addq	-64(%rbp), %rcx
	movq	%rcx, %rdi
	callq	string_char
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB10_9:                               # %cond.end
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-108(%rbp), %eax        # 4-byte Reload
	movl	%eax, -104(%rbp)        # 4-byte Spill
.LBB10_10:                              # %cond.end.50
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-104(%rbp), %eax        # 4-byte Reload
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB10_11:                              # %cond.end.52
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-100(%rbp), %eax        # 4-byte Reload
	movl	%eax, -88(%rbp)
	movl	-88(%rbp), %edi
	movq	-80(%rbp), %rsi
	callq	char_width
	xorl	%edi, %edi
	movq	%rax, -96(%rbp)
	cmpl	-28(%rbp), %edi
	jge	.LBB10_14
# BB#12:                                # %land.lhs.true
                                        #   in Loop: Header=BB10_1 Depth=1
	movslq	-28(%rbp), %rax
	subq	-72(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jge	.LBB10_14
# BB#13:                                # %if.then
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-72(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB10_318
.LBB10_14:                              # %if.end
                                        #   in Loop: Header=BB10_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB10_15
	jmp	.LBB10_74
.LBB10_15:                              # %cond.true.60
                                        #   in Loop: Header=BB10_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB10_16
	jmp	.LBB10_45
.LBB10_16:                              # %cond.true.61
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-72(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-96(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB10_18
# BB#17:                                # %cond.true.71
                                        #   in Loop: Header=BB10_1 Depth=1
	xorl	%eax, %eax
	movq	-72(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	imull	$0, %esi, %esi
	movq	-96(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-72(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	imull	$0, %esi, %esi
	movq	-96(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB10_19
.LBB10_18:                              # %cond.false.96
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-72(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-96(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -112(%rbp)        # 4-byte Spill
.LBB10_19:                              # %cond.end.105
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-112(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jge	.LBB10_29
# BB#20:                                # %cond.true.109
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-72(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB10_25
# BB#21:                                # %cond.true.114
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-72(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	imull	$0, %esi, %esi
	movq	-96(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -116(%rbp)        # 4-byte Spill
	jge	.LBB10_23
# BB#22:                                # %cond.true.127
                                        #   in Loop: Header=BB10_1 Depth=1
	xorl	%eax, %eax
	movq	-72(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	imull	$0, %esi, %esi
	movq	-96(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-72(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	imull	$0, %esi, %esi
	movq	-96(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB10_24
.LBB10_23:                              # %cond.false.153
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-72(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-96(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -120(%rbp)        # 4-byte Spill
.LBB10_24:                              # %cond.end.162
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-120(%rbp), %eax        # 4-byte Reload
	movq	-72(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	subl	%esi, %eax
	movl	-116(%rbp), %esi        # 4-byte Reload
	cmpl	%eax, %esi
	jl	.LBB10_37
	jmp	.LBB10_34
.LBB10_25:                              # %cond.false.169
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-72(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-96(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB10_27
# BB#26:                                # %cond.true.180
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-72(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-96(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -124(%rbp)        # 4-byte Spill
	jmp	.LBB10_28
.LBB10_27:                              # %cond.false.193
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-72(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-96(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -124(%rbp)        # 4-byte Spill
.LBB10_28:                              # %cond.end.202
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-124(%rbp), %eax        # 4-byte Reload
	movq	-72(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	subl	%esi, %eax
	movq	-96(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	cmpl	%esi, %eax
	jl	.LBB10_37
	jmp	.LBB10_34
.LBB10_29:                              # %cond.false.211
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB10_31
# BB#30:                                # %cond.true.216
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-72(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-96(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	movq	-72(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edi
	addl	%edi, %esi
	cmpl	%esi, %edx
	jle	.LBB10_37
	jmp	.LBB10_34
.LBB10_31:                              # %cond.false.226
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-72(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB10_33
# BB#32:                                # %cond.true.231
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-96(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	movq	-72(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edi
	addl	%edi, %esi
	cmpl	%esi, %edx
	jle	.LBB10_37
	jmp	.LBB10_34
.LBB10_33:                              # %cond.false.241
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-72(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	movq	-72(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	cmpl	%esi, %edx
	jl	.LBB10_37
.LBB10_34:                              # %lor.lhs.false
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-72(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB10_36
# BB#35:                                # %land.lhs.true.260
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-72(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	cmpl	$-128, %edx
	jl	.LBB10_37
.LBB10_36:                              # %lor.lhs.false.268
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	$127, %eax
	movq	-96(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	movq	-72(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
	cmpl	%esi, %eax
	jge	.LBB10_41
.LBB10_37:                              # %cond.true.276
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-72(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	cmpl	$127, %edx
	jg	.LBB10_39
# BB#38:                                # %cond.true.284
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-72(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -128(%rbp)        # 4-byte Spill
	jmp	.LBB10_40
.LBB10_39:                              # %cond.false.292
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-72(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -128(%rbp)        # 4-byte Spill
.LBB10_40:                              # %cond.end.302
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-128(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -72(%rbp)
	testb	$1, %cl
	jne	.LBB10_313
	jmp	.LBB10_314
.LBB10_41:                              # %cond.false.305
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-72(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	cmpl	$127, %edx
	jg	.LBB10_43
# BB#42:                                # %cond.true.313
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-72(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -132(%rbp)        # 4-byte Spill
	jmp	.LBB10_44
.LBB10_43:                              # %cond.false.321
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-72(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -132(%rbp)        # 4-byte Spill
.LBB10_44:                              # %cond.end.331
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-132(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -72(%rbp)
	testb	$1, %dl
	jne	.LBB10_313
	jmp	.LBB10_314
.LBB10_45:                              # %cond.false.334
                                        #   in Loop: Header=BB10_1 Depth=1
	imulq	$0, -72(%rbp), %rax
	addq	-96(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB10_47
# BB#46:                                # %cond.true.341
                                        #   in Loop: Header=BB10_1 Depth=1
	xorl	%eax, %eax
	imulq	$0, -72(%rbp), %rcx
	addq	-96(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -72(%rbp), %rdi
	addq	-96(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB10_48
.LBB10_47:                              # %cond.false.360
                                        #   in Loop: Header=BB10_1 Depth=1
	imulq	$0, -72(%rbp), %rax
	addq	-96(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB10_48:                              # %cond.end.365
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-144(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB10_58
# BB#49:                                # %cond.true.369
                                        #   in Loop: Header=BB10_1 Depth=1
	cmpq	$0, -72(%rbp)
	jge	.LBB10_54
# BB#50:                                # %cond.true.372
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	imulq	$0, -72(%rbp), %rcx
	addq	-96(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jge	.LBB10_52
# BB#51:                                # %cond.true.379
                                        #   in Loop: Header=BB10_1 Depth=1
	xorl	%eax, %eax
	imulq	$0, -72(%rbp), %rcx
	addq	-96(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -72(%rbp), %rdi
	addq	-96(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	jmp	.LBB10_53
.LBB10_52:                              # %cond.false.398
                                        #   in Loop: Header=BB10_1 Depth=1
	imulq	$0, -72(%rbp), %rax
	addq	-96(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
.LBB10_53:                              # %cond.end.403
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-160(%rbp), %rax        # 8-byte Reload
	subq	-72(%rbp), %rax
	movq	-152(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB10_66
	jmp	.LBB10_63
.LBB10_54:                              # %cond.false.408
                                        #   in Loop: Header=BB10_1 Depth=1
	imulq	$0, -72(%rbp), %rax
	addq	-96(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB10_56
# BB#55:                                # %cond.true.415
                                        #   in Loop: Header=BB10_1 Depth=1
	imulq	$0, -72(%rbp), %rax
	addq	-96(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB10_57
.LBB10_56:                              # %cond.false.424
                                        #   in Loop: Header=BB10_1 Depth=1
	imulq	$0, -72(%rbp), %rax
	addq	-96(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
.LBB10_57:                              # %cond.end.429
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-168(%rbp), %rax        # 8-byte Reload
	subq	-72(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jl	.LBB10_66
	jmp	.LBB10_63
.LBB10_58:                              # %cond.false.434
                                        #   in Loop: Header=BB10_1 Depth=1
	cmpq	$0, -96(%rbp)
	jge	.LBB10_60
# BB#59:                                # %cond.true.437
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-72(%rbp), %rax
	movq	-96(%rbp), %rcx
	addq	-72(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB10_66
	jmp	.LBB10_63
.LBB10_60:                              # %cond.false.441
                                        #   in Loop: Header=BB10_1 Depth=1
	cmpq	$0, -72(%rbp)
	jge	.LBB10_62
# BB#61:                                # %cond.true.444
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	movq	-96(%rbp), %rcx
	addq	-72(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB10_66
	jmp	.LBB10_63
.LBB10_62:                              # %cond.false.448
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	addq	-72(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jl	.LBB10_66
.LBB10_63:                              # %lor.lhs.false.452
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	addq	-72(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB10_65
# BB#64:                                # %land.lhs.true.458
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	addq	-72(%rbp), %rax
	cmpq	$-128, %rax
	jl	.LBB10_66
.LBB10_65:                              # %lor.lhs.false.462
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	$127, %eax
	movl	%eax, %ecx
	movq	-96(%rbp), %rdx
	addq	-72(%rbp), %rdx
	cmpq	%rdx, %rcx
	jge	.LBB10_70
.LBB10_66:                              # %cond.true.466
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-72(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	cmpl	$127, %edx
	jg	.LBB10_68
# BB#67:                                # %cond.true.474
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-72(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -172(%rbp)        # 4-byte Spill
	jmp	.LBB10_69
.LBB10_68:                              # %cond.false.482
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-72(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -172(%rbp)        # 4-byte Spill
.LBB10_69:                              # %cond.end.492
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-172(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -72(%rbp)
	testb	$1, %cl
	jne	.LBB10_313
	jmp	.LBB10_314
.LBB10_70:                              # %cond.false.495
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-72(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	cmpl	$127, %edx
	jg	.LBB10_72
# BB#71:                                # %cond.true.503
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-72(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -176(%rbp)        # 4-byte Spill
	jmp	.LBB10_73
.LBB10_72:                              # %cond.false.511
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-72(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -176(%rbp)        # 4-byte Spill
.LBB10_73:                              # %cond.end.521
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-176(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -72(%rbp)
	testb	$1, %dl
	jne	.LBB10_313
	jmp	.LBB10_314
.LBB10_74:                              # %cond.false.524
                                        #   in Loop: Header=BB10_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB10_75
	jmp	.LBB10_134
.LBB10_75:                              # %cond.true.525
                                        #   in Loop: Header=BB10_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB10_76
	jmp	.LBB10_105
.LBB10_76:                              # %cond.true.526
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-72(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-96(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB10_78
# BB#77:                                # %cond.true.537
                                        #   in Loop: Header=BB10_1 Depth=1
	xorl	%eax, %eax
	movq	-72(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	movq	-96(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %esi
	subl	%esi, %eax
	movq	-72(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	movq	-96(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -180(%rbp)        # 4-byte Spill
	jmp	.LBB10_79
.LBB10_78:                              # %cond.false.563
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-72(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-96(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -180(%rbp)        # 4-byte Spill
.LBB10_79:                              # %cond.end.572
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-180(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jge	.LBB10_89
# BB#80:                                # %cond.true.576
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-72(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB10_85
# BB#81:                                # %cond.true.581
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-72(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	imull	$0, %esi, %esi
	movq	-96(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -184(%rbp)        # 4-byte Spill
	jge	.LBB10_83
# BB#82:                                # %cond.true.594
                                        #   in Loop: Header=BB10_1 Depth=1
	xorl	%eax, %eax
	movq	-72(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	movq	-96(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %esi
	subl	%esi, %eax
	movq	-72(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	movq	-96(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -188(%rbp)        # 4-byte Spill
	jmp	.LBB10_84
.LBB10_83:                              # %cond.false.620
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-72(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-96(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -188(%rbp)        # 4-byte Spill
.LBB10_84:                              # %cond.end.629
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-188(%rbp), %eax        # 4-byte Reload
	movq	-72(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	subl	%esi, %eax
	movl	-184(%rbp), %esi        # 4-byte Reload
	cmpl	%eax, %esi
	jl	.LBB10_97
	jmp	.LBB10_94
.LBB10_85:                              # %cond.false.636
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-72(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-96(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB10_87
# BB#86:                                # %cond.true.647
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-72(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-96(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -192(%rbp)        # 4-byte Spill
	jmp	.LBB10_88
.LBB10_87:                              # %cond.false.660
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-72(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-96(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -192(%rbp)        # 4-byte Spill
.LBB10_88:                              # %cond.end.669
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-192(%rbp), %eax        # 4-byte Reload
	movq	-72(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	subl	%esi, %eax
	movq	-96(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	cmpl	%esi, %eax
	jl	.LBB10_97
	jmp	.LBB10_94
.LBB10_89:                              # %cond.false.678
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB10_91
# BB#90:                                # %cond.true.683
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-72(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-96(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	movq	-72(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edi
	addl	%edi, %esi
	cmpl	%esi, %edx
	jle	.LBB10_97
	jmp	.LBB10_94
.LBB10_91:                              # %cond.false.693
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-72(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB10_93
# BB#92:                                # %cond.true.698
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-96(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	movq	-72(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edi
	addl	%edi, %esi
	cmpl	%esi, %edx
	jle	.LBB10_97
	jmp	.LBB10_94
.LBB10_93:                              # %cond.false.708
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-72(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	movq	-72(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	cmpl	%esi, %edx
	jl	.LBB10_97
.LBB10_94:                              # %lor.lhs.false.718
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-72(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB10_96
# BB#95:                                # %land.lhs.true.728
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-72(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	cmpl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB10_97
.LBB10_96:                              # %lor.lhs.false.736
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	$32767, %eax            # imm = 0x7FFF
	movq	-96(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	movq	-72(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	cmpl	%esi, %eax
	jge	.LBB10_101
.LBB10_97:                              # %cond.true.744
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-72(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB10_99
# BB#98:                                # %cond.true.752
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-72(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -196(%rbp)        # 4-byte Spill
	jmp	.LBB10_100
.LBB10_99:                              # %cond.false.760
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-72(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -196(%rbp)        # 4-byte Spill
.LBB10_100:                             # %cond.end.770
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-196(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -72(%rbp)
	testb	$1, %cl
	jne	.LBB10_313
	jmp	.LBB10_314
.LBB10_101:                             # %cond.false.773
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-72(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB10_103
# BB#102:                               # %cond.true.781
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-72(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -200(%rbp)        # 4-byte Spill
	jmp	.LBB10_104
.LBB10_103:                             # %cond.false.789
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-72(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -200(%rbp)        # 4-byte Spill
.LBB10_104:                             # %cond.end.799
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-200(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -72(%rbp)
	testb	$1, %dl
	jne	.LBB10_313
	jmp	.LBB10_314
.LBB10_105:                             # %cond.false.802
                                        #   in Loop: Header=BB10_1 Depth=1
	imulq	$0, -72(%rbp), %rax
	addq	-96(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB10_107
# BB#106:                               # %cond.true.809
                                        #   in Loop: Header=BB10_1 Depth=1
	xorl	%eax, %eax
	imulq	$0, -72(%rbp), %rcx
	addq	-96(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -72(%rbp), %rdi
	addq	-96(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	jmp	.LBB10_108
.LBB10_107:                             # %cond.false.828
                                        #   in Loop: Header=BB10_1 Depth=1
	imulq	$0, -72(%rbp), %rax
	addq	-96(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
.LBB10_108:                             # %cond.end.833
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-208(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB10_118
# BB#109:                               # %cond.true.837
                                        #   in Loop: Header=BB10_1 Depth=1
	cmpq	$0, -72(%rbp)
	jge	.LBB10_114
# BB#110:                               # %cond.true.840
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	imulq	$0, -72(%rbp), %rcx
	addq	-96(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -216(%rbp)        # 8-byte Spill
	jge	.LBB10_112
# BB#111:                               # %cond.true.847
                                        #   in Loop: Header=BB10_1 Depth=1
	xorl	%eax, %eax
	imulq	$0, -72(%rbp), %rcx
	addq	-96(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -72(%rbp), %rdi
	addq	-96(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	jmp	.LBB10_113
.LBB10_112:                             # %cond.false.866
                                        #   in Loop: Header=BB10_1 Depth=1
	imulq	$0, -72(%rbp), %rax
	addq	-96(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
.LBB10_113:                             # %cond.end.871
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-224(%rbp), %rax        # 8-byte Reload
	subq	-72(%rbp), %rax
	movq	-216(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB10_126
	jmp	.LBB10_123
.LBB10_114:                             # %cond.false.876
                                        #   in Loop: Header=BB10_1 Depth=1
	imulq	$0, -72(%rbp), %rax
	addq	-96(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB10_116
# BB#115:                               # %cond.true.883
                                        #   in Loop: Header=BB10_1 Depth=1
	imulq	$0, -72(%rbp), %rax
	addq	-96(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	jmp	.LBB10_117
.LBB10_116:                             # %cond.false.892
                                        #   in Loop: Header=BB10_1 Depth=1
	imulq	$0, -72(%rbp), %rax
	addq	-96(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
.LBB10_117:                             # %cond.end.897
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-232(%rbp), %rax        # 8-byte Reload
	subq	-72(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jl	.LBB10_126
	jmp	.LBB10_123
.LBB10_118:                             # %cond.false.902
                                        #   in Loop: Header=BB10_1 Depth=1
	cmpq	$0, -96(%rbp)
	jge	.LBB10_120
# BB#119:                               # %cond.true.905
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-72(%rbp), %rax
	movq	-96(%rbp), %rcx
	addq	-72(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB10_126
	jmp	.LBB10_123
.LBB10_120:                             # %cond.false.909
                                        #   in Loop: Header=BB10_1 Depth=1
	cmpq	$0, -72(%rbp)
	jge	.LBB10_122
# BB#121:                               # %cond.true.912
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	movq	-96(%rbp), %rcx
	addq	-72(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB10_126
	jmp	.LBB10_123
.LBB10_122:                             # %cond.false.916
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	addq	-72(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jl	.LBB10_126
.LBB10_123:                             # %lor.lhs.false.920
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	addq	-72(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB10_125
# BB#124:                               # %land.lhs.true.926
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	addq	-72(%rbp), %rax
	cmpq	$-32768, %rax           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB10_126
.LBB10_125:                             # %lor.lhs.false.930
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	$32767, %eax            # imm = 0x7FFF
	movl	%eax, %ecx
	movq	-96(%rbp), %rdx
	addq	-72(%rbp), %rdx
	cmpq	%rdx, %rcx
	jge	.LBB10_130
.LBB10_126:                             # %cond.true.934
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-72(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB10_128
# BB#127:                               # %cond.true.942
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-72(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -236(%rbp)        # 4-byte Spill
	jmp	.LBB10_129
.LBB10_128:                             # %cond.false.950
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-72(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -236(%rbp)        # 4-byte Spill
.LBB10_129:                             # %cond.end.960
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-236(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -72(%rbp)
	testb	$1, %cl
	jne	.LBB10_313
	jmp	.LBB10_314
.LBB10_130:                             # %cond.false.963
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-72(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB10_132
# BB#131:                               # %cond.true.971
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-72(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -240(%rbp)        # 4-byte Spill
	jmp	.LBB10_133
.LBB10_132:                             # %cond.false.979
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-72(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -240(%rbp)        # 4-byte Spill
.LBB10_133:                             # %cond.end.989
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-240(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -72(%rbp)
	testb	$1, %dl
	jne	.LBB10_313
	jmp	.LBB10_314
.LBB10_134:                             # %cond.false.992
                                        #   in Loop: Header=BB10_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB10_135
	jmp	.LBB10_194
.LBB10_135:                             # %cond.true.993
                                        #   in Loop: Header=BB10_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB10_136
	jmp	.LBB10_165
.LBB10_136:                             # %cond.true.994
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-72(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-96(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB10_138
# BB#137:                               # %cond.true.1003
                                        #   in Loop: Header=BB10_1 Depth=1
	xorl	%eax, %eax
	movq	-72(%rbp), %rcx
	movl	%ecx, %edx
	imull	$0, %edx, %edx
	movq	-96(%rbp), %rcx
	movl	%ecx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %edx
	subl	%edx, %eax
	movq	-72(%rbp), %rcx
	movl	%ecx, %edx
	imull	$0, %edx, %edx
	movq	-96(%rbp), %rcx
	movl	%ecx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -244(%rbp)        # 4-byte Spill
	jmp	.LBB10_139
.LBB10_138:                             # %cond.false.1025
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-72(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-96(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -244(%rbp)        # 4-byte Spill
.LBB10_139:                             # %cond.end.1032
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-244(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jge	.LBB10_149
# BB#140:                               # %cond.true.1036
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-72(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB10_145
# BB#141:                               # %cond.true.1040
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	movl	%eax, %ecx
	movq	-72(%rbp), %rax
	movl	%eax, %edx
	imull	$0, %edx, %edx
	movq	-96(%rbp), %rax
	movl	%eax, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -248(%rbp)        # 4-byte Spill
	jge	.LBB10_143
# BB#142:                               # %cond.true.1050
                                        #   in Loop: Header=BB10_1 Depth=1
	xorl	%eax, %eax
	movq	-72(%rbp), %rcx
	movl	%ecx, %edx
	imull	$0, %edx, %edx
	movq	-96(%rbp), %rcx
	movl	%ecx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %edx
	subl	%edx, %eax
	movq	-72(%rbp), %rcx
	movl	%ecx, %edx
	imull	$0, %edx, %edx
	movq	-96(%rbp), %rcx
	movl	%ecx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -252(%rbp)        # 4-byte Spill
	jmp	.LBB10_144
.LBB10_143:                             # %cond.false.1072
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-72(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-96(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -252(%rbp)        # 4-byte Spill
.LBB10_144:                             # %cond.end.1079
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-252(%rbp), %eax        # 4-byte Reload
	movq	-72(%rbp), %rcx
	movl	%ecx, %edx
	subl	%edx, %eax
	movl	-248(%rbp), %edx        # 4-byte Reload
	cmpl	%eax, %edx
	jl	.LBB10_157
	jmp	.LBB10_154
.LBB10_145:                             # %cond.false.1085
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-72(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-96(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB10_147
# BB#146:                               # %cond.true.1094
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-72(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-96(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -256(%rbp)        # 4-byte Spill
	jmp	.LBB10_148
.LBB10_147:                             # %cond.false.1105
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-72(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-96(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -256(%rbp)        # 4-byte Spill
.LBB10_148:                             # %cond.end.1112
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-256(%rbp), %eax        # 4-byte Reload
	movq	-72(%rbp), %rcx
	movl	%ecx, %edx
	subl	%edx, %eax
	movq	-96(%rbp), %rcx
	movl	%ecx, %edx
	cmpl	%edx, %eax
	jl	.LBB10_157
	jmp	.LBB10_154
.LBB10_149:                             # %cond.false.1119
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB10_151
# BB#150:                               # %cond.true.1123
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-72(%rbp), %rax
	movl	%eax, %ecx
	movq	-96(%rbp), %rax
	movl	%eax, %edx
	movq	-72(%rbp), %rax
	movl	%eax, %esi
	addl	%esi, %edx
	cmpl	%edx, %ecx
	jle	.LBB10_157
	jmp	.LBB10_154
.LBB10_151:                             # %cond.false.1130
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-72(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB10_153
# BB#152:                               # %cond.true.1134
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	movl	%eax, %ecx
	movq	-96(%rbp), %rax
	movl	%eax, %edx
	movq	-72(%rbp), %rax
	movl	%eax, %esi
	addl	%esi, %edx
	cmpl	%edx, %ecx
	jle	.LBB10_157
	jmp	.LBB10_154
.LBB10_153:                             # %cond.false.1141
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	movl	%eax, %ecx
	movq	-72(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	movq	-72(%rbp), %rax
	movl	%eax, %edx
	cmpl	%edx, %ecx
	jl	.LBB10_157
.LBB10_154:                             # %lor.lhs.false.1148
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	movl	%eax, %ecx
	movq	-72(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB10_156
# BB#155:                               # %land.lhs.true.1156
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	movl	%eax, %ecx
	movq	-72(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	cmpl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	jl	.LBB10_157
.LBB10_156:                             # %lor.lhs.false.1162
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movq	-96(%rbp), %rcx
	movl	%ecx, %edx
	movq	-72(%rbp), %rcx
	movl	%ecx, %esi
	addl	%esi, %edx
	cmpl	%edx, %eax
	jge	.LBB10_161
.LBB10_157:                             # %cond.true.1168
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	movl	%eax, %ecx
	movq	-72(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB10_159
# BB#158:                               # %cond.true.1174
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	movl	%eax, %ecx
	movq	-72(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	movl	%ecx, -260(%rbp)        # 4-byte Spill
	jmp	.LBB10_160
.LBB10_159:                             # %cond.false.1178
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	movl	%eax, %ecx
	movq	-72(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -260(%rbp)        # 4-byte Spill
.LBB10_160:                             # %cond.end.1184
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-260(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -72(%rbp)
	testb	$1, %cl
	jne	.LBB10_313
	jmp	.LBB10_314
.LBB10_161:                             # %cond.false.1187
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	movl	%eax, %ecx
	movq	-72(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB10_163
# BB#162:                               # %cond.true.1193
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	movl	%eax, %ecx
	movq	-72(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	movl	%ecx, -264(%rbp)        # 4-byte Spill
	jmp	.LBB10_164
.LBB10_163:                             # %cond.false.1197
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	movl	%eax, %ecx
	movq	-72(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -264(%rbp)        # 4-byte Spill
.LBB10_164:                             # %cond.end.1203
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-264(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -72(%rbp)
	testb	$1, %dl
	jne	.LBB10_313
	jmp	.LBB10_314
.LBB10_165:                             # %cond.false.1206
                                        #   in Loop: Header=BB10_1 Depth=1
	imulq	$0, -72(%rbp), %rax
	addq	-96(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB10_167
# BB#166:                               # %cond.true.1213
                                        #   in Loop: Header=BB10_1 Depth=1
	xorl	%eax, %eax
	imulq	$0, -72(%rbp), %rcx
	addq	-96(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -72(%rbp), %rdi
	addq	-96(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -272(%rbp)        # 8-byte Spill
	jmp	.LBB10_168
.LBB10_167:                             # %cond.false.1232
                                        #   in Loop: Header=BB10_1 Depth=1
	imulq	$0, -72(%rbp), %rax
	addq	-96(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
.LBB10_168:                             # %cond.end.1237
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-272(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB10_178
# BB#169:                               # %cond.true.1241
                                        #   in Loop: Header=BB10_1 Depth=1
	cmpq	$0, -72(%rbp)
	jge	.LBB10_174
# BB#170:                               # %cond.true.1244
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	imulq	$0, -72(%rbp), %rcx
	addq	-96(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -280(%rbp)        # 8-byte Spill
	jge	.LBB10_172
# BB#171:                               # %cond.true.1251
                                        #   in Loop: Header=BB10_1 Depth=1
	xorl	%eax, %eax
	imulq	$0, -72(%rbp), %rcx
	addq	-96(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -72(%rbp), %rdi
	addq	-96(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -288(%rbp)        # 8-byte Spill
	jmp	.LBB10_173
.LBB10_172:                             # %cond.false.1270
                                        #   in Loop: Header=BB10_1 Depth=1
	imulq	$0, -72(%rbp), %rax
	addq	-96(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
.LBB10_173:                             # %cond.end.1275
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-288(%rbp), %rax        # 8-byte Reload
	subq	-72(%rbp), %rax
	movq	-280(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB10_186
	jmp	.LBB10_183
.LBB10_174:                             # %cond.false.1280
                                        #   in Loop: Header=BB10_1 Depth=1
	imulq	$0, -72(%rbp), %rax
	addq	-96(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB10_176
# BB#175:                               # %cond.true.1287
                                        #   in Loop: Header=BB10_1 Depth=1
	imulq	$0, -72(%rbp), %rax
	addq	-96(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	jmp	.LBB10_177
.LBB10_176:                             # %cond.false.1296
                                        #   in Loop: Header=BB10_1 Depth=1
	imulq	$0, -72(%rbp), %rax
	addq	-96(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
.LBB10_177:                             # %cond.end.1301
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-296(%rbp), %rax        # 8-byte Reload
	subq	-72(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jl	.LBB10_186
	jmp	.LBB10_183
.LBB10_178:                             # %cond.false.1306
                                        #   in Loop: Header=BB10_1 Depth=1
	cmpq	$0, -96(%rbp)
	jge	.LBB10_180
# BB#179:                               # %cond.true.1309
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-72(%rbp), %rax
	movq	-96(%rbp), %rcx
	addq	-72(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB10_186
	jmp	.LBB10_183
.LBB10_180:                             # %cond.false.1313
                                        #   in Loop: Header=BB10_1 Depth=1
	cmpq	$0, -72(%rbp)
	jge	.LBB10_182
# BB#181:                               # %cond.true.1316
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	movq	-96(%rbp), %rcx
	addq	-72(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB10_186
	jmp	.LBB10_183
.LBB10_182:                             # %cond.false.1320
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	addq	-72(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jl	.LBB10_186
.LBB10_183:                             # %lor.lhs.false.1324
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	addq	-72(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB10_185
# BB#184:                               # %land.lhs.true.1330
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	addq	-72(%rbp), %rax
	cmpq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	jl	.LBB10_186
.LBB10_185:                             # %lor.lhs.false.1334
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %ecx
	movq	-96(%rbp), %rdx
	addq	-72(%rbp), %rdx
	cmpq	%rdx, %rcx
	jge	.LBB10_190
.LBB10_186:                             # %cond.true.1338
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	movl	%eax, %ecx
	movq	-72(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB10_188
# BB#187:                               # %cond.true.1344
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	movl	%eax, %ecx
	movq	-72(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	movl	%ecx, -300(%rbp)        # 4-byte Spill
	jmp	.LBB10_189
.LBB10_188:                             # %cond.false.1348
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	movl	%eax, %ecx
	movq	-72(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -300(%rbp)        # 4-byte Spill
.LBB10_189:                             # %cond.end.1354
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-300(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -72(%rbp)
	testb	$1, %cl
	jne	.LBB10_313
	jmp	.LBB10_314
.LBB10_190:                             # %cond.false.1357
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	movl	%eax, %ecx
	movq	-72(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB10_192
# BB#191:                               # %cond.true.1363
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	movl	%eax, %ecx
	movq	-72(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	movl	%ecx, -304(%rbp)        # 4-byte Spill
	jmp	.LBB10_193
.LBB10_192:                             # %cond.false.1367
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	movl	%eax, %ecx
	movq	-72(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -304(%rbp)        # 4-byte Spill
.LBB10_193:                             # %cond.end.1373
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-304(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -72(%rbp)
	testb	$1, %dl
	jne	.LBB10_313
	jmp	.LBB10_314
.LBB10_194:                             # %cond.false.1376
                                        #   in Loop: Header=BB10_1 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB10_195
	jmp	.LBB10_254
.LBB10_195:                             # %cond.true.1377
                                        #   in Loop: Header=BB10_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB10_196
	jmp	.LBB10_225
.LBB10_196:                             # %cond.true.1378
                                        #   in Loop: Header=BB10_1 Depth=1
	imulq	$0, -72(%rbp), %rax
	addq	-96(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB10_198
# BB#197:                               # %cond.true.1385
                                        #   in Loop: Header=BB10_1 Depth=1
	xorl	%eax, %eax
	imulq	$0, -72(%rbp), %rcx
	addq	-96(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -72(%rbp), %rdi
	addq	-96(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -312(%rbp)        # 8-byte Spill
	jmp	.LBB10_199
.LBB10_198:                             # %cond.false.1404
                                        #   in Loop: Header=BB10_1 Depth=1
	imulq	$0, -72(%rbp), %rax
	addq	-96(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
.LBB10_199:                             # %cond.end.1409
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-312(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB10_209
# BB#200:                               # %cond.true.1413
                                        #   in Loop: Header=BB10_1 Depth=1
	cmpq	$0, -72(%rbp)
	jge	.LBB10_205
# BB#201:                               # %cond.true.1416
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	imulq	$0, -72(%rbp), %rcx
	addq	-96(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -320(%rbp)        # 8-byte Spill
	jge	.LBB10_203
# BB#202:                               # %cond.true.1423
                                        #   in Loop: Header=BB10_1 Depth=1
	xorl	%eax, %eax
	imulq	$0, -72(%rbp), %rcx
	addq	-96(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -72(%rbp), %rdi
	addq	-96(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -328(%rbp)        # 8-byte Spill
	jmp	.LBB10_204
.LBB10_203:                             # %cond.false.1442
                                        #   in Loop: Header=BB10_1 Depth=1
	imulq	$0, -72(%rbp), %rax
	addq	-96(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
.LBB10_204:                             # %cond.end.1447
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-328(%rbp), %rax        # 8-byte Reload
	subq	-72(%rbp), %rax
	movq	-320(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB10_217
	jmp	.LBB10_214
.LBB10_205:                             # %cond.false.1452
                                        #   in Loop: Header=BB10_1 Depth=1
	imulq	$0, -72(%rbp), %rax
	addq	-96(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB10_207
# BB#206:                               # %cond.true.1459
                                        #   in Loop: Header=BB10_1 Depth=1
	imulq	$0, -72(%rbp), %rax
	addq	-96(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	jmp	.LBB10_208
.LBB10_207:                             # %cond.false.1468
                                        #   in Loop: Header=BB10_1 Depth=1
	imulq	$0, -72(%rbp), %rax
	addq	-96(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
.LBB10_208:                             # %cond.end.1473
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-336(%rbp), %rax        # 8-byte Reload
	subq	-72(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jl	.LBB10_217
	jmp	.LBB10_214
.LBB10_209:                             # %cond.false.1478
                                        #   in Loop: Header=BB10_1 Depth=1
	cmpq	$0, -96(%rbp)
	jge	.LBB10_211
# BB#210:                               # %cond.true.1481
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-72(%rbp), %rax
	movq	-96(%rbp), %rcx
	addq	-72(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB10_217
	jmp	.LBB10_214
.LBB10_211:                             # %cond.false.1485
                                        #   in Loop: Header=BB10_1 Depth=1
	cmpq	$0, -72(%rbp)
	jge	.LBB10_213
# BB#212:                               # %cond.true.1488
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	movq	-96(%rbp), %rcx
	addq	-72(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB10_217
	jmp	.LBB10_214
.LBB10_213:                             # %cond.false.1492
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	addq	-72(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jl	.LBB10_217
.LBB10_214:                             # %lor.lhs.false.1496
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	addq	-72(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB10_216
# BB#215:                               # %land.lhs.true.1502
                                        #   in Loop: Header=BB10_1 Depth=1
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-96(%rbp), %rcx
	addq	-72(%rbp), %rcx
	cmpq	%rax, %rcx
	jl	.LBB10_217
.LBB10_216:                             # %lor.lhs.false.1506
                                        #   in Loop: Header=BB10_1 Depth=1
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-96(%rbp), %rcx
	addq	-72(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB10_221
.LBB10_217:                             # %cond.true.1510
                                        #   in Loop: Header=BB10_1 Depth=1
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-96(%rbp), %rcx
	addq	-72(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB10_219
# BB#218:                               # %cond.true.1514
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	addq	-72(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	jmp	.LBB10_220
.LBB10_219:                             # %cond.false.1516
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	addq	-72(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
.LBB10_220:                             # %cond.end.1520
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-344(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -72(%rbp)
	testb	$1, %cl
	jne	.LBB10_313
	jmp	.LBB10_314
.LBB10_221:                             # %cond.false.1522
                                        #   in Loop: Header=BB10_1 Depth=1
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-96(%rbp), %rcx
	addq	-72(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB10_223
# BB#222:                               # %cond.true.1526
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	addq	-72(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	jmp	.LBB10_224
.LBB10_223:                             # %cond.false.1528
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	addq	-72(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
.LBB10_224:                             # %cond.end.1532
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-352(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -72(%rbp)
	testb	$1, %dl
	jne	.LBB10_313
	jmp	.LBB10_314
.LBB10_225:                             # %cond.false.1534
                                        #   in Loop: Header=BB10_1 Depth=1
	imulq	$0, -72(%rbp), %rax
	addq	-96(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB10_227
# BB#226:                               # %cond.true.1541
                                        #   in Loop: Header=BB10_1 Depth=1
	xorl	%eax, %eax
	imulq	$0, -72(%rbp), %rcx
	addq	-96(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -72(%rbp), %rdi
	addq	-96(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -360(%rbp)        # 8-byte Spill
	jmp	.LBB10_228
.LBB10_227:                             # %cond.false.1560
                                        #   in Loop: Header=BB10_1 Depth=1
	imulq	$0, -72(%rbp), %rax
	addq	-96(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
.LBB10_228:                             # %cond.end.1565
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-360(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB10_238
# BB#229:                               # %cond.true.1569
                                        #   in Loop: Header=BB10_1 Depth=1
	cmpq	$0, -72(%rbp)
	jge	.LBB10_234
# BB#230:                               # %cond.true.1572
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	imulq	$0, -72(%rbp), %rcx
	addq	-96(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -368(%rbp)        # 8-byte Spill
	jge	.LBB10_232
# BB#231:                               # %cond.true.1579
                                        #   in Loop: Header=BB10_1 Depth=1
	xorl	%eax, %eax
	imulq	$0, -72(%rbp), %rcx
	addq	-96(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -72(%rbp), %rdi
	addq	-96(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -376(%rbp)        # 8-byte Spill
	jmp	.LBB10_233
.LBB10_232:                             # %cond.false.1598
                                        #   in Loop: Header=BB10_1 Depth=1
	imulq	$0, -72(%rbp), %rax
	addq	-96(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
.LBB10_233:                             # %cond.end.1603
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-376(%rbp), %rax        # 8-byte Reload
	subq	-72(%rbp), %rax
	movq	-368(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB10_246
	jmp	.LBB10_243
.LBB10_234:                             # %cond.false.1608
                                        #   in Loop: Header=BB10_1 Depth=1
	imulq	$0, -72(%rbp), %rax
	addq	-96(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB10_236
# BB#235:                               # %cond.true.1615
                                        #   in Loop: Header=BB10_1 Depth=1
	imulq	$0, -72(%rbp), %rax
	addq	-96(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	jmp	.LBB10_237
.LBB10_236:                             # %cond.false.1624
                                        #   in Loop: Header=BB10_1 Depth=1
	imulq	$0, -72(%rbp), %rax
	addq	-96(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
.LBB10_237:                             # %cond.end.1629
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-384(%rbp), %rax        # 8-byte Reload
	subq	-72(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jl	.LBB10_246
	jmp	.LBB10_243
.LBB10_238:                             # %cond.false.1634
                                        #   in Loop: Header=BB10_1 Depth=1
	cmpq	$0, -96(%rbp)
	jge	.LBB10_240
# BB#239:                               # %cond.true.1637
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-72(%rbp), %rax
	movq	-96(%rbp), %rcx
	addq	-72(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB10_246
	jmp	.LBB10_243
.LBB10_240:                             # %cond.false.1641
                                        #   in Loop: Header=BB10_1 Depth=1
	cmpq	$0, -72(%rbp)
	jge	.LBB10_242
# BB#241:                               # %cond.true.1644
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	movq	-96(%rbp), %rcx
	addq	-72(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB10_246
	jmp	.LBB10_243
.LBB10_242:                             # %cond.false.1648
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	addq	-72(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jl	.LBB10_246
.LBB10_243:                             # %lor.lhs.false.1652
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	addq	-72(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB10_245
# BB#244:                               # %land.lhs.true.1658
                                        #   in Loop: Header=BB10_1 Depth=1
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-96(%rbp), %rcx
	addq	-72(%rbp), %rcx
	cmpq	%rax, %rcx
	jl	.LBB10_246
.LBB10_245:                             # %lor.lhs.false.1662
                                        #   in Loop: Header=BB10_1 Depth=1
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-96(%rbp), %rcx
	addq	-72(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB10_250
.LBB10_246:                             # %cond.true.1666
                                        #   in Loop: Header=BB10_1 Depth=1
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-96(%rbp), %rcx
	addq	-72(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB10_248
# BB#247:                               # %cond.true.1670
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	addq	-72(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	jmp	.LBB10_249
.LBB10_248:                             # %cond.false.1672
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	addq	-72(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
.LBB10_249:                             # %cond.end.1676
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-392(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -72(%rbp)
	testb	$1, %cl
	jne	.LBB10_313
	jmp	.LBB10_314
.LBB10_250:                             # %cond.false.1678
                                        #   in Loop: Header=BB10_1 Depth=1
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-96(%rbp), %rcx
	addq	-72(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB10_252
# BB#251:                               # %cond.true.1682
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	addq	-72(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	jmp	.LBB10_253
.LBB10_252:                             # %cond.false.1684
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	addq	-72(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
.LBB10_253:                             # %cond.end.1688
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-400(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -72(%rbp)
	testb	$1, %dl
	jne	.LBB10_313
	jmp	.LBB10_314
.LBB10_254:                             # %cond.false.1690
                                        #   in Loop: Header=BB10_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB10_255
	jmp	.LBB10_284
.LBB10_255:                             # %cond.true.1691
                                        #   in Loop: Header=BB10_1 Depth=1
	imulq	$0, -72(%rbp), %rax
	addq	-96(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB10_257
# BB#256:                               # %cond.true.1698
                                        #   in Loop: Header=BB10_1 Depth=1
	xorl	%eax, %eax
	imulq	$0, -72(%rbp), %rcx
	addq	-96(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -72(%rbp), %rdi
	addq	-96(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -408(%rbp)        # 8-byte Spill
	jmp	.LBB10_258
.LBB10_257:                             # %cond.false.1717
                                        #   in Loop: Header=BB10_1 Depth=1
	imulq	$0, -72(%rbp), %rax
	addq	-96(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
.LBB10_258:                             # %cond.end.1722
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-408(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB10_268
# BB#259:                               # %cond.true.1726
                                        #   in Loop: Header=BB10_1 Depth=1
	cmpq	$0, -72(%rbp)
	jge	.LBB10_264
# BB#260:                               # %cond.true.1729
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	imulq	$0, -72(%rbp), %rcx
	addq	-96(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -416(%rbp)        # 8-byte Spill
	jge	.LBB10_262
# BB#261:                               # %cond.true.1736
                                        #   in Loop: Header=BB10_1 Depth=1
	xorl	%eax, %eax
	imulq	$0, -72(%rbp), %rcx
	addq	-96(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -72(%rbp), %rdi
	addq	-96(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -424(%rbp)        # 8-byte Spill
	jmp	.LBB10_263
.LBB10_262:                             # %cond.false.1755
                                        #   in Loop: Header=BB10_1 Depth=1
	imulq	$0, -72(%rbp), %rax
	addq	-96(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
.LBB10_263:                             # %cond.end.1760
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-424(%rbp), %rax        # 8-byte Reload
	subq	-72(%rbp), %rax
	movq	-416(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB10_276
	jmp	.LBB10_273
.LBB10_264:                             # %cond.false.1765
                                        #   in Loop: Header=BB10_1 Depth=1
	imulq	$0, -72(%rbp), %rax
	addq	-96(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB10_266
# BB#265:                               # %cond.true.1772
                                        #   in Loop: Header=BB10_1 Depth=1
	imulq	$0, -72(%rbp), %rax
	addq	-96(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	jmp	.LBB10_267
.LBB10_266:                             # %cond.false.1781
                                        #   in Loop: Header=BB10_1 Depth=1
	imulq	$0, -72(%rbp), %rax
	addq	-96(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
.LBB10_267:                             # %cond.end.1786
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-432(%rbp), %rax        # 8-byte Reload
	subq	-72(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jl	.LBB10_276
	jmp	.LBB10_273
.LBB10_268:                             # %cond.false.1791
                                        #   in Loop: Header=BB10_1 Depth=1
	cmpq	$0, -96(%rbp)
	jge	.LBB10_270
# BB#269:                               # %cond.true.1794
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-72(%rbp), %rax
	movq	-96(%rbp), %rcx
	addq	-72(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB10_276
	jmp	.LBB10_273
.LBB10_270:                             # %cond.false.1798
                                        #   in Loop: Header=BB10_1 Depth=1
	cmpq	$0, -72(%rbp)
	jge	.LBB10_272
# BB#271:                               # %cond.true.1801
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	movq	-96(%rbp), %rcx
	addq	-72(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB10_276
	jmp	.LBB10_273
.LBB10_272:                             # %cond.false.1805
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	addq	-72(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jl	.LBB10_276
.LBB10_273:                             # %lor.lhs.false.1809
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	addq	-72(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB10_275
# BB#274:                               # %land.lhs.true.1815
                                        #   in Loop: Header=BB10_1 Depth=1
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-96(%rbp), %rcx
	addq	-72(%rbp), %rcx
	cmpq	%rax, %rcx
	jl	.LBB10_276
.LBB10_275:                             # %lor.lhs.false.1819
                                        #   in Loop: Header=BB10_1 Depth=1
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-96(%rbp), %rcx
	addq	-72(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB10_280
.LBB10_276:                             # %cond.true.1823
                                        #   in Loop: Header=BB10_1 Depth=1
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-96(%rbp), %rcx
	addq	-72(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB10_278
# BB#277:                               # %cond.true.1827
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	addq	-72(%rbp), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	jmp	.LBB10_279
.LBB10_278:                             # %cond.false.1829
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	addq	-72(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
.LBB10_279:                             # %cond.end.1833
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-440(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -72(%rbp)
	testb	$1, %cl
	jne	.LBB10_313
	jmp	.LBB10_314
.LBB10_280:                             # %cond.false.1835
                                        #   in Loop: Header=BB10_1 Depth=1
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-96(%rbp), %rcx
	addq	-72(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB10_282
# BB#281:                               # %cond.true.1839
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	addq	-72(%rbp), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	jmp	.LBB10_283
.LBB10_282:                             # %cond.false.1841
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	addq	-72(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
.LBB10_283:                             # %cond.end.1845
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-448(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -72(%rbp)
	testb	$1, %dl
	jne	.LBB10_313
	jmp	.LBB10_314
.LBB10_284:                             # %cond.false.1847
                                        #   in Loop: Header=BB10_1 Depth=1
	imulq	$0, -72(%rbp), %rax
	addq	-96(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB10_286
# BB#285:                               # %cond.true.1854
                                        #   in Loop: Header=BB10_1 Depth=1
	xorl	%eax, %eax
	imulq	$0, -72(%rbp), %rcx
	addq	-96(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -72(%rbp), %rdi
	addq	-96(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -456(%rbp)        # 8-byte Spill
	jmp	.LBB10_287
.LBB10_286:                             # %cond.false.1873
                                        #   in Loop: Header=BB10_1 Depth=1
	imulq	$0, -72(%rbp), %rax
	addq	-96(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
.LBB10_287:                             # %cond.end.1878
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-456(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB10_297
# BB#288:                               # %cond.true.1882
                                        #   in Loop: Header=BB10_1 Depth=1
	cmpq	$0, -72(%rbp)
	jge	.LBB10_293
# BB#289:                               # %cond.true.1885
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	imulq	$0, -72(%rbp), %rcx
	addq	-96(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -464(%rbp)        # 8-byte Spill
	jge	.LBB10_291
# BB#290:                               # %cond.true.1892
                                        #   in Loop: Header=BB10_1 Depth=1
	xorl	%eax, %eax
	imulq	$0, -72(%rbp), %rcx
	addq	-96(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -72(%rbp), %rdi
	addq	-96(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -472(%rbp)        # 8-byte Spill
	jmp	.LBB10_292
.LBB10_291:                             # %cond.false.1911
                                        #   in Loop: Header=BB10_1 Depth=1
	imulq	$0, -72(%rbp), %rax
	addq	-96(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
.LBB10_292:                             # %cond.end.1916
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-472(%rbp), %rax        # 8-byte Reload
	subq	-72(%rbp), %rax
	movq	-464(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB10_305
	jmp	.LBB10_302
.LBB10_293:                             # %cond.false.1921
                                        #   in Loop: Header=BB10_1 Depth=1
	imulq	$0, -72(%rbp), %rax
	addq	-96(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB10_295
# BB#294:                               # %cond.true.1928
                                        #   in Loop: Header=BB10_1 Depth=1
	imulq	$0, -72(%rbp), %rax
	addq	-96(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	jmp	.LBB10_296
.LBB10_295:                             # %cond.false.1937
                                        #   in Loop: Header=BB10_1 Depth=1
	imulq	$0, -72(%rbp), %rax
	addq	-96(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
.LBB10_296:                             # %cond.end.1942
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-480(%rbp), %rax        # 8-byte Reload
	subq	-72(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jl	.LBB10_305
	jmp	.LBB10_302
.LBB10_297:                             # %cond.false.1947
                                        #   in Loop: Header=BB10_1 Depth=1
	cmpq	$0, -96(%rbp)
	jge	.LBB10_299
# BB#298:                               # %cond.true.1950
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-72(%rbp), %rax
	movq	-96(%rbp), %rcx
	addq	-72(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB10_305
	jmp	.LBB10_302
.LBB10_299:                             # %cond.false.1954
                                        #   in Loop: Header=BB10_1 Depth=1
	cmpq	$0, -72(%rbp)
	jge	.LBB10_301
# BB#300:                               # %cond.true.1957
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	movq	-96(%rbp), %rcx
	addq	-72(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB10_305
	jmp	.LBB10_302
.LBB10_301:                             # %cond.false.1961
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	addq	-72(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jl	.LBB10_305
.LBB10_302:                             # %lor.lhs.false.1965
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	addq	-72(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB10_304
# BB#303:                               # %land.lhs.true.1971
                                        #   in Loop: Header=BB10_1 Depth=1
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-96(%rbp), %rcx
	addq	-72(%rbp), %rcx
	cmpq	%rax, %rcx
	jl	.LBB10_305
.LBB10_304:                             # %lor.lhs.false.1975
                                        #   in Loop: Header=BB10_1 Depth=1
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-96(%rbp), %rcx
	addq	-72(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB10_309
.LBB10_305:                             # %cond.true.1979
                                        #   in Loop: Header=BB10_1 Depth=1
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-96(%rbp), %rcx
	addq	-72(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB10_307
# BB#306:                               # %cond.true.1983
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	addq	-72(%rbp), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	jmp	.LBB10_308
.LBB10_307:                             # %cond.false.1985
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	addq	-72(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
.LBB10_308:                             # %cond.end.1989
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-488(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -72(%rbp)
	testb	$1, %cl
	jne	.LBB10_313
	jmp	.LBB10_314
.LBB10_309:                             # %cond.false.1991
                                        #   in Loop: Header=BB10_1 Depth=1
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-96(%rbp), %rcx
	addq	-72(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB10_311
# BB#310:                               # %cond.true.1995
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	addq	-72(%rbp), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	jmp	.LBB10_312
.LBB10_311:                             # %cond.false.1997
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-96(%rbp), %rax
	addq	-72(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
.LBB10_312:                             # %cond.end.2001
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-496(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -72(%rbp)
	testb	$1, %dl
	jne	.LBB10_313
	jmp	.LBB10_314
.LBB10_313:                             # %if.then.2003
	callq	string_overflow
.LBB10_314:                             # %if.end.2004
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	movslq	-84(%rbp), %rax
	addq	-64(%rbp), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB10_1
.LBB10_315:                             # %while.end
	cmpl	$0, -28(%rbp)
	jle	.LBB10_317
# BB#316:                               # %if.then.2009
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB10_317:                             # %if.end.2010
	movq	-72(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB10_318:                             # %return
	movq	-8(%rbp), %rax
	addq	$496, %rsp              # imm = 0x1F0
	popq	%rbp
	retq
.Lfunc_end10:
	.size	c_string_width, .Lfunc_end10-c_string_width
	.cfi_endproc

	.globl	strwidth
	.align	16, 0x90
	.type	strwidth,@function
strwidth:                               # @strwidth
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp33:
	.cfi_def_cfa_offset 16
.Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp35:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	%rcx, -24(%rbp)         # 8-byte Spill
	movq	-24(%rbp), %r8          # 8-byte Reload
	callq	c_string_width
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	strwidth, .Lfunc_end11-strwidth
	.cfi_endproc

	.globl	lisp_string_width
	.align	16, 0x90
	.type	lisp_string_width,@function
lisp_string_width:                      # @lisp_string_width
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp36:
	.cfi_def_cfa_offset 16
.Ltmp37:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp38:
	.cfi_def_cfa_register %rbp
	subq	$576, %rsp              # imm = 0x240
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	SCHARS
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	SBYTES
	movq	-168(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	setl	%r8b
	andb	$1, %r8b
	movb	%r8b, -49(%rbp)
	movq	-16(%rbp), %rdi
	callq	SDATA
	movq	%rax, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	callq	buffer_display_table
	movq	%rax, -96(%rbp)
.LBB12_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-72(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jge	.LBB12_322
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	$-1, %rsi
	leaq	-144(%rbp), %rdx
	leaq	-152(%rbp), %rcx
	leaq	-128(%rbp), %r8
	movq	-72(%rbp), %rdi
	movq	-16(%rbp), %r9
	callq	find_composition
	testb	$1, %al
	jne	.LBB12_3
	jmp	.LBB12_5
.LBB12_3:                               # %land.lhs.true
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-152(%rbp), %rax
	subq	-72(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	-16(%rbp), %r8
	movq	%rax, %rdx
	callq	get_composition_id
	movq	%rax, -136(%rbp)
	cmpq	$0, %rax
	jl	.LBB12_5
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-136(%rbp), %rax
	movq	composition_table, %rcx
	movq	(%rcx,%rax,8), %rax
	movslq	16(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-152(%rbp), %rax
	subq	-72(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-16(%rbp), %rdi
	movq	-152(%rbp), %rsi
	callq	string_char_to_byte
	subq	-80(%rbp), %rax
	movq	%rax, -112(%rbp)
	jmp	.LBB12_18
.LBB12_5:                               # %if.else
                                        #   in Loop: Header=BB12_1 Depth=1
	testb	$1, -49(%rbp)
	je	.LBB12_16
# BB#6:                                 # %if.then.12
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-64(%rbp), %rax
	movq	-80(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	jne	.LBB12_8
# BB#7:                                 # %cond.true
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	$1, -160(%rbp)
	movq	-64(%rbp), %rax
	movq	-80(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	movl	%edx, -172(%rbp)        # 4-byte Spill
	jmp	.LBB12_15
.LBB12_8:                               # %cond.false
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-64(%rbp), %rax
	movq	-80(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	andl	$32, %edx
	cmpl	$0, %edx
	jne	.LBB12_10
# BB#9:                                 # %cond.true.24
                                        #   in Loop: Header=BB12_1 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -160(%rbp)
	movq	-64(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movzbl	(%rdx,%rsi), %edi
	andl	$31, %edi
	shll	$6, %edi
	movq	-64(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movzbl	1(%rdx,%rsi), %r8d
	andl	$63, %r8d
	orl	%r8d, %edi
	movq	-64(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movzbl	(%rdx,%rsi), %r8d
	cmpl	$194, %r8d
	cmovll	%ecx, %eax
	addl	%eax, %edi
	movl	%edi, -176(%rbp)        # 4-byte Spill
	jmp	.LBB12_14
.LBB12_10:                              # %cond.false.38
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-64(%rbp), %rax
	movq	-80(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	andl	$16, %edx
	cmpl	$0, %edx
	jne	.LBB12_12
# BB#11:                                # %cond.true.44
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	$3, -160(%rbp)
	movq	-64(%rbp), %rax
	movq	-80(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	andl	$15, %edx
	shll	$12, %edx
	movq	-64(%rbp), %rax
	movq	-80(%rbp), %rcx
	movzbl	1(%rax,%rcx), %esi
	andl	$63, %esi
	shll	$6, %esi
	orl	%esi, %edx
	movq	-64(%rbp), %rax
	movq	-80(%rbp), %rcx
	movzbl	2(%rax,%rcx), %esi
	andl	$63, %esi
	orl	%esi, %edx
	movl	%edx, -180(%rbp)        # 4-byte Spill
	jmp	.LBB12_13
.LBB12_12:                              # %cond.false.61
                                        #   in Loop: Header=BB12_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-160(%rbp), %rdx
	movq	-64(%rbp), %rcx
	addq	-80(%rbp), %rcx
	movq	%rcx, %rdi
	callq	string_char
	movl	%eax, -180(%rbp)        # 4-byte Spill
.LBB12_13:                              # %cond.end
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-180(%rbp), %eax        # 4-byte Reload
	movl	%eax, -176(%rbp)        # 4-byte Spill
.LBB12_14:                              # %cond.end.65
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-176(%rbp), %eax        # 4-byte Reload
	movl	%eax, -172(%rbp)        # 4-byte Spill
.LBB12_15:                              # %cond.end.67
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-172(%rbp), %eax        # 4-byte Reload
	movl	%eax, -156(%rbp)
	movslq	-160(%rbp), %rcx
	movq	%rcx, -112(%rbp)
	jmp	.LBB12_17
.LBB12_16:                              # %if.else.70
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-80(%rbp), %rax
	movq	-64(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, -156(%rbp)
	movq	$1, -112(%rbp)
.LBB12_17:                              # %if.end
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	$1, -104(%rbp)
	movl	-156(%rbp), %edi
	movq	-96(%rbp), %rsi
	callq	char_width
	movq	%rax, -120(%rbp)
.LBB12_18:                              # %if.end.74
                                        #   in Loop: Header=BB12_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	cmpq	-24(%rbp), %rcx
	jge	.LBB12_21
# BB#19:                                # %land.lhs.true.77
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-24(%rbp), %rax
	subq	-88(%rbp), %rax
	cmpq	-120(%rbp), %rax
	jge	.LBB12_21
# BB#20:                                # %if.then.81
	movq	-72(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-80(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-88(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB12_325
.LBB12_21:                              # %if.end.82
                                        #   in Loop: Header=BB12_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB12_22
	jmp	.LBB12_81
.LBB12_22:                              # %cond.true.83
                                        #   in Loop: Header=BB12_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB12_23
	jmp	.LBB12_52
.LBB12_23:                              # %cond.true.84
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-120(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB12_25
# BB#24:                                # %cond.true.94
                                        #   in Loop: Header=BB12_1 Depth=1
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	imull	$0, %esi, %esi
	movq	-120(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-88(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	imull	$0, %esi, %esi
	movq	-120(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -184(%rbp)        # 4-byte Spill
	jmp	.LBB12_26
.LBB12_25:                              # %cond.false.119
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-120(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -184(%rbp)        # 4-byte Spill
.LBB12_26:                              # %cond.end.128
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-184(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jge	.LBB12_36
# BB#27:                                # %cond.true.132
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB12_32
# BB#28:                                # %cond.true.137
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	imull	$0, %esi, %esi
	movq	-120(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -188(%rbp)        # 4-byte Spill
	jge	.LBB12_30
# BB#29:                                # %cond.true.150
                                        #   in Loop: Header=BB12_1 Depth=1
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	imull	$0, %esi, %esi
	movq	-120(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-88(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	imull	$0, %esi, %esi
	movq	-120(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -192(%rbp)        # 4-byte Spill
	jmp	.LBB12_31
.LBB12_30:                              # %cond.false.176
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-120(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -192(%rbp)        # 4-byte Spill
.LBB12_31:                              # %cond.end.185
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-192(%rbp), %eax        # 4-byte Reload
	movq	-88(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	subl	%esi, %eax
	movl	-188(%rbp), %esi        # 4-byte Reload
	cmpl	%eax, %esi
	jl	.LBB12_44
	jmp	.LBB12_41
.LBB12_32:                              # %cond.false.192
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-120(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB12_34
# BB#33:                                # %cond.true.203
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-120(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -196(%rbp)        # 4-byte Spill
	jmp	.LBB12_35
.LBB12_34:                              # %cond.false.216
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-120(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -196(%rbp)        # 4-byte Spill
.LBB12_35:                              # %cond.end.225
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-196(%rbp), %eax        # 4-byte Reload
	movq	-88(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	subl	%esi, %eax
	movq	-120(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	cmpl	%esi, %eax
	jl	.LBB12_44
	jmp	.LBB12_41
.LBB12_36:                              # %cond.false.234
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB12_38
# BB#37:                                # %cond.true.239
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-120(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edi
	addl	%edi, %esi
	cmpl	%esi, %edx
	jle	.LBB12_44
	jmp	.LBB12_41
.LBB12_38:                              # %cond.false.249
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB12_40
# BB#39:                                # %cond.true.254
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-120(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edi
	addl	%edi, %esi
	cmpl	%esi, %edx
	jle	.LBB12_44
	jmp	.LBB12_41
.LBB12_40:                              # %cond.false.264
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	cmpl	%esi, %edx
	jl	.LBB12_44
.LBB12_41:                              # %lor.lhs.false
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB12_43
# BB#42:                                # %land.lhs.true.283
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	cmpl	$-128, %edx
	jl	.LBB12_44
.LBB12_43:                              # %lor.lhs.false.291
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	$127, %eax
	movq	-120(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	movq	-88(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
	cmpl	%esi, %eax
	jge	.LBB12_48
.LBB12_44:                              # %cond.true.299
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	cmpl	$127, %edx
	jg	.LBB12_46
# BB#45:                                # %cond.true.307
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -200(%rbp)        # 4-byte Spill
	jmp	.LBB12_47
.LBB12_46:                              # %cond.false.315
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -200(%rbp)        # 4-byte Spill
.LBB12_47:                              # %cond.end.325
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-200(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -88(%rbp)
	testb	$1, %cl
	jne	.LBB12_320
	jmp	.LBB12_321
.LBB12_48:                              # %cond.false.328
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	cmpl	$127, %edx
	jg	.LBB12_50
# BB#49:                                # %cond.true.336
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -204(%rbp)        # 4-byte Spill
	jmp	.LBB12_51
.LBB12_50:                              # %cond.false.344
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -204(%rbp)        # 4-byte Spill
.LBB12_51:                              # %cond.end.354
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-204(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -88(%rbp)
	testb	$1, %dl
	jne	.LBB12_320
	jmp	.LBB12_321
.LBB12_52:                              # %cond.false.357
                                        #   in Loop: Header=BB12_1 Depth=1
	imulq	$0, -88(%rbp), %rax
	addq	-120(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB12_54
# BB#53:                                # %cond.true.364
                                        #   in Loop: Header=BB12_1 Depth=1
	xorl	%eax, %eax
	imulq	$0, -88(%rbp), %rcx
	addq	-120(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -88(%rbp), %rdi
	addq	-120(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	jmp	.LBB12_55
.LBB12_54:                              # %cond.false.383
                                        #   in Loop: Header=BB12_1 Depth=1
	imulq	$0, -88(%rbp), %rax
	addq	-120(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
.LBB12_55:                              # %cond.end.388
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-216(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB12_65
# BB#56:                                # %cond.true.392
                                        #   in Loop: Header=BB12_1 Depth=1
	cmpq	$0, -88(%rbp)
	jge	.LBB12_61
# BB#57:                                # %cond.true.395
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	imulq	$0, -88(%rbp), %rcx
	addq	-120(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -224(%rbp)        # 8-byte Spill
	jge	.LBB12_59
# BB#58:                                # %cond.true.402
                                        #   in Loop: Header=BB12_1 Depth=1
	xorl	%eax, %eax
	imulq	$0, -88(%rbp), %rcx
	addq	-120(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -88(%rbp), %rdi
	addq	-120(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	jmp	.LBB12_60
.LBB12_59:                              # %cond.false.421
                                        #   in Loop: Header=BB12_1 Depth=1
	imulq	$0, -88(%rbp), %rax
	addq	-120(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
.LBB12_60:                              # %cond.end.426
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-232(%rbp), %rax        # 8-byte Reload
	subq	-88(%rbp), %rax
	movq	-224(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB12_73
	jmp	.LBB12_70
.LBB12_61:                              # %cond.false.431
                                        #   in Loop: Header=BB12_1 Depth=1
	imulq	$0, -88(%rbp), %rax
	addq	-120(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB12_63
# BB#62:                                # %cond.true.438
                                        #   in Loop: Header=BB12_1 Depth=1
	imulq	$0, -88(%rbp), %rax
	addq	-120(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	jmp	.LBB12_64
.LBB12_63:                              # %cond.false.447
                                        #   in Loop: Header=BB12_1 Depth=1
	imulq	$0, -88(%rbp), %rax
	addq	-120(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
.LBB12_64:                              # %cond.end.452
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-240(%rbp), %rax        # 8-byte Reload
	subq	-88(%rbp), %rax
	cmpq	-120(%rbp), %rax
	jl	.LBB12_73
	jmp	.LBB12_70
.LBB12_65:                              # %cond.false.457
                                        #   in Loop: Header=BB12_1 Depth=1
	cmpq	$0, -120(%rbp)
	jge	.LBB12_67
# BB#66:                                # %cond.true.460
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-88(%rbp), %rax
	movq	-120(%rbp), %rcx
	addq	-88(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB12_73
	jmp	.LBB12_70
.LBB12_67:                              # %cond.false.464
                                        #   in Loop: Header=BB12_1 Depth=1
	cmpq	$0, -88(%rbp)
	jge	.LBB12_69
# BB#68:                                # %cond.true.467
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	movq	-120(%rbp), %rcx
	addq	-88(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB12_73
	jmp	.LBB12_70
.LBB12_69:                              # %cond.false.471
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	addq	-88(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jl	.LBB12_73
.LBB12_70:                              # %lor.lhs.false.475
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	addq	-88(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB12_72
# BB#71:                                # %land.lhs.true.481
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	addq	-88(%rbp), %rax
	cmpq	$-128, %rax
	jl	.LBB12_73
.LBB12_72:                              # %lor.lhs.false.485
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	$127, %eax
	movl	%eax, %ecx
	movq	-120(%rbp), %rdx
	addq	-88(%rbp), %rdx
	cmpq	%rdx, %rcx
	jge	.LBB12_77
.LBB12_73:                              # %cond.true.489
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	cmpl	$127, %edx
	jg	.LBB12_75
# BB#74:                                # %cond.true.497
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -244(%rbp)        # 4-byte Spill
	jmp	.LBB12_76
.LBB12_75:                              # %cond.false.505
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -244(%rbp)        # 4-byte Spill
.LBB12_76:                              # %cond.end.515
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-244(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -88(%rbp)
	testb	$1, %cl
	jne	.LBB12_320
	jmp	.LBB12_321
.LBB12_77:                              # %cond.false.518
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	cmpl	$127, %edx
	jg	.LBB12_79
# BB#78:                                # %cond.true.526
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -248(%rbp)        # 4-byte Spill
	jmp	.LBB12_80
.LBB12_79:                              # %cond.false.534
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -248(%rbp)        # 4-byte Spill
.LBB12_80:                              # %cond.end.544
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-248(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -88(%rbp)
	testb	$1, %dl
	jne	.LBB12_320
	jmp	.LBB12_321
.LBB12_81:                              # %cond.false.547
                                        #   in Loop: Header=BB12_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB12_82
	jmp	.LBB12_141
.LBB12_82:                              # %cond.true.548
                                        #   in Loop: Header=BB12_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB12_83
	jmp	.LBB12_112
.LBB12_83:                              # %cond.true.549
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-120(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB12_85
# BB#84:                                # %cond.true.560
                                        #   in Loop: Header=BB12_1 Depth=1
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	movq	-120(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %esi
	subl	%esi, %eax
	movq	-88(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	movq	-120(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -252(%rbp)        # 4-byte Spill
	jmp	.LBB12_86
.LBB12_85:                              # %cond.false.586
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-120(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -252(%rbp)        # 4-byte Spill
.LBB12_86:                              # %cond.end.595
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-252(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jge	.LBB12_96
# BB#87:                                # %cond.true.599
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB12_92
# BB#88:                                # %cond.true.604
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	imull	$0, %esi, %esi
	movq	-120(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -256(%rbp)        # 4-byte Spill
	jge	.LBB12_90
# BB#89:                                # %cond.true.617
                                        #   in Loop: Header=BB12_1 Depth=1
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	movq	-120(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %esi
	subl	%esi, %eax
	movq	-88(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	movq	-120(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -260(%rbp)        # 4-byte Spill
	jmp	.LBB12_91
.LBB12_90:                              # %cond.false.643
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-120(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -260(%rbp)        # 4-byte Spill
.LBB12_91:                              # %cond.end.652
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-260(%rbp), %eax        # 4-byte Reload
	movq	-88(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	subl	%esi, %eax
	movl	-256(%rbp), %esi        # 4-byte Reload
	cmpl	%eax, %esi
	jl	.LBB12_104
	jmp	.LBB12_101
.LBB12_92:                              # %cond.false.659
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-120(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB12_94
# BB#93:                                # %cond.true.670
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-120(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -264(%rbp)        # 4-byte Spill
	jmp	.LBB12_95
.LBB12_94:                              # %cond.false.683
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-120(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -264(%rbp)        # 4-byte Spill
.LBB12_95:                              # %cond.end.692
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-264(%rbp), %eax        # 4-byte Reload
	movq	-88(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	subl	%esi, %eax
	movq	-120(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	cmpl	%esi, %eax
	jl	.LBB12_104
	jmp	.LBB12_101
.LBB12_96:                              # %cond.false.701
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB12_98
# BB#97:                                # %cond.true.706
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-120(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edi
	addl	%edi, %esi
	cmpl	%esi, %edx
	jle	.LBB12_104
	jmp	.LBB12_101
.LBB12_98:                              # %cond.false.716
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB12_100
# BB#99:                                # %cond.true.721
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-120(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edi
	addl	%edi, %esi
	cmpl	%esi, %edx
	jle	.LBB12_104
	jmp	.LBB12_101
.LBB12_100:                             # %cond.false.731
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	cmpl	%esi, %edx
	jl	.LBB12_104
.LBB12_101:                             # %lor.lhs.false.741
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB12_103
# BB#102:                               # %land.lhs.true.751
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	cmpl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB12_104
.LBB12_103:                             # %lor.lhs.false.759
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	$32767, %eax            # imm = 0x7FFF
	movq	-120(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	movq	-88(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	cmpl	%esi, %eax
	jge	.LBB12_108
.LBB12_104:                             # %cond.true.767
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB12_106
# BB#105:                               # %cond.true.775
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -268(%rbp)        # 4-byte Spill
	jmp	.LBB12_107
.LBB12_106:                             # %cond.false.783
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -268(%rbp)        # 4-byte Spill
.LBB12_107:                             # %cond.end.793
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-268(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -88(%rbp)
	testb	$1, %cl
	jne	.LBB12_320
	jmp	.LBB12_321
.LBB12_108:                             # %cond.false.796
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB12_110
# BB#109:                               # %cond.true.804
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -272(%rbp)        # 4-byte Spill
	jmp	.LBB12_111
.LBB12_110:                             # %cond.false.812
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -272(%rbp)        # 4-byte Spill
.LBB12_111:                             # %cond.end.822
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-272(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -88(%rbp)
	testb	$1, %dl
	jne	.LBB12_320
	jmp	.LBB12_321
.LBB12_112:                             # %cond.false.825
                                        #   in Loop: Header=BB12_1 Depth=1
	imulq	$0, -88(%rbp), %rax
	addq	-120(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB12_114
# BB#113:                               # %cond.true.832
                                        #   in Loop: Header=BB12_1 Depth=1
	xorl	%eax, %eax
	imulq	$0, -88(%rbp), %rcx
	addq	-120(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -88(%rbp), %rdi
	addq	-120(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -280(%rbp)        # 8-byte Spill
	jmp	.LBB12_115
.LBB12_114:                             # %cond.false.851
                                        #   in Loop: Header=BB12_1 Depth=1
	imulq	$0, -88(%rbp), %rax
	addq	-120(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
.LBB12_115:                             # %cond.end.856
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-280(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB12_125
# BB#116:                               # %cond.true.860
                                        #   in Loop: Header=BB12_1 Depth=1
	cmpq	$0, -88(%rbp)
	jge	.LBB12_121
# BB#117:                               # %cond.true.863
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	imulq	$0, -88(%rbp), %rcx
	addq	-120(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -288(%rbp)        # 8-byte Spill
	jge	.LBB12_119
# BB#118:                               # %cond.true.870
                                        #   in Loop: Header=BB12_1 Depth=1
	xorl	%eax, %eax
	imulq	$0, -88(%rbp), %rcx
	addq	-120(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -88(%rbp), %rdi
	addq	-120(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -296(%rbp)        # 8-byte Spill
	jmp	.LBB12_120
.LBB12_119:                             # %cond.false.889
                                        #   in Loop: Header=BB12_1 Depth=1
	imulq	$0, -88(%rbp), %rax
	addq	-120(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
.LBB12_120:                             # %cond.end.894
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-296(%rbp), %rax        # 8-byte Reload
	subq	-88(%rbp), %rax
	movq	-288(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB12_133
	jmp	.LBB12_130
.LBB12_121:                             # %cond.false.899
                                        #   in Loop: Header=BB12_1 Depth=1
	imulq	$0, -88(%rbp), %rax
	addq	-120(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB12_123
# BB#122:                               # %cond.true.906
                                        #   in Loop: Header=BB12_1 Depth=1
	imulq	$0, -88(%rbp), %rax
	addq	-120(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	jmp	.LBB12_124
.LBB12_123:                             # %cond.false.915
                                        #   in Loop: Header=BB12_1 Depth=1
	imulq	$0, -88(%rbp), %rax
	addq	-120(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
.LBB12_124:                             # %cond.end.920
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-304(%rbp), %rax        # 8-byte Reload
	subq	-88(%rbp), %rax
	cmpq	-120(%rbp), %rax
	jl	.LBB12_133
	jmp	.LBB12_130
.LBB12_125:                             # %cond.false.925
                                        #   in Loop: Header=BB12_1 Depth=1
	cmpq	$0, -120(%rbp)
	jge	.LBB12_127
# BB#126:                               # %cond.true.928
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-88(%rbp), %rax
	movq	-120(%rbp), %rcx
	addq	-88(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB12_133
	jmp	.LBB12_130
.LBB12_127:                             # %cond.false.932
                                        #   in Loop: Header=BB12_1 Depth=1
	cmpq	$0, -88(%rbp)
	jge	.LBB12_129
# BB#128:                               # %cond.true.935
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	movq	-120(%rbp), %rcx
	addq	-88(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB12_133
	jmp	.LBB12_130
.LBB12_129:                             # %cond.false.939
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	addq	-88(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jl	.LBB12_133
.LBB12_130:                             # %lor.lhs.false.943
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	addq	-88(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB12_132
# BB#131:                               # %land.lhs.true.949
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	addq	-88(%rbp), %rax
	cmpq	$-32768, %rax           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB12_133
.LBB12_132:                             # %lor.lhs.false.953
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	$32767, %eax            # imm = 0x7FFF
	movl	%eax, %ecx
	movq	-120(%rbp), %rdx
	addq	-88(%rbp), %rdx
	cmpq	%rdx, %rcx
	jge	.LBB12_137
.LBB12_133:                             # %cond.true.957
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB12_135
# BB#134:                               # %cond.true.965
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -308(%rbp)        # 4-byte Spill
	jmp	.LBB12_136
.LBB12_135:                             # %cond.false.973
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -308(%rbp)        # 4-byte Spill
.LBB12_136:                             # %cond.end.983
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-308(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -88(%rbp)
	testb	$1, %cl
	jne	.LBB12_320
	jmp	.LBB12_321
.LBB12_137:                             # %cond.false.986
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB12_139
# BB#138:                               # %cond.true.994
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -312(%rbp)        # 4-byte Spill
	jmp	.LBB12_140
.LBB12_139:                             # %cond.false.1002
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -312(%rbp)        # 4-byte Spill
.LBB12_140:                             # %cond.end.1012
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-312(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -88(%rbp)
	testb	$1, %dl
	jne	.LBB12_320
	jmp	.LBB12_321
.LBB12_141:                             # %cond.false.1015
                                        #   in Loop: Header=BB12_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB12_142
	jmp	.LBB12_201
.LBB12_142:                             # %cond.true.1016
                                        #   in Loop: Header=BB12_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB12_143
	jmp	.LBB12_172
.LBB12_143:                             # %cond.true.1017
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-88(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-120(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB12_145
# BB#144:                               # %cond.true.1026
                                        #   in Loop: Header=BB12_1 Depth=1
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	movl	%ecx, %edx
	imull	$0, %edx, %edx
	movq	-120(%rbp), %rcx
	movl	%ecx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %edx
	subl	%edx, %eax
	movq	-88(%rbp), %rcx
	movl	%ecx, %edx
	imull	$0, %edx, %edx
	movq	-120(%rbp), %rcx
	movl	%ecx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -316(%rbp)        # 4-byte Spill
	jmp	.LBB12_146
.LBB12_145:                             # %cond.false.1048
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-88(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-120(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -316(%rbp)        # 4-byte Spill
.LBB12_146:                             # %cond.end.1055
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-316(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jge	.LBB12_156
# BB#147:                               # %cond.true.1059
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-88(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB12_152
# BB#148:                               # %cond.true.1063
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	movl	%eax, %ecx
	movq	-88(%rbp), %rax
	movl	%eax, %edx
	imull	$0, %edx, %edx
	movq	-120(%rbp), %rax
	movl	%eax, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -320(%rbp)        # 4-byte Spill
	jge	.LBB12_150
# BB#149:                               # %cond.true.1073
                                        #   in Loop: Header=BB12_1 Depth=1
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	movl	%ecx, %edx
	imull	$0, %edx, %edx
	movq	-120(%rbp), %rcx
	movl	%ecx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %edx
	subl	%edx, %eax
	movq	-88(%rbp), %rcx
	movl	%ecx, %edx
	imull	$0, %edx, %edx
	movq	-120(%rbp), %rcx
	movl	%ecx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -324(%rbp)        # 4-byte Spill
	jmp	.LBB12_151
.LBB12_150:                             # %cond.false.1095
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-88(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-120(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -324(%rbp)        # 4-byte Spill
.LBB12_151:                             # %cond.end.1102
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-324(%rbp), %eax        # 4-byte Reload
	movq	-88(%rbp), %rcx
	movl	%ecx, %edx
	subl	%edx, %eax
	movl	-320(%rbp), %edx        # 4-byte Reload
	cmpl	%eax, %edx
	jl	.LBB12_164
	jmp	.LBB12_161
.LBB12_152:                             # %cond.false.1108
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-88(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-120(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB12_154
# BB#153:                               # %cond.true.1117
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-88(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-120(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -328(%rbp)        # 4-byte Spill
	jmp	.LBB12_155
.LBB12_154:                             # %cond.false.1128
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-88(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-120(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -328(%rbp)        # 4-byte Spill
.LBB12_155:                             # %cond.end.1135
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-328(%rbp), %eax        # 4-byte Reload
	movq	-88(%rbp), %rcx
	movl	%ecx, %edx
	subl	%edx, %eax
	movq	-120(%rbp), %rcx
	movl	%ecx, %edx
	cmpl	%edx, %eax
	jl	.LBB12_164
	jmp	.LBB12_161
.LBB12_156:                             # %cond.false.1142
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB12_158
# BB#157:                               # %cond.true.1146
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-88(%rbp), %rax
	movl	%eax, %ecx
	movq	-120(%rbp), %rax
	movl	%eax, %edx
	movq	-88(%rbp), %rax
	movl	%eax, %esi
	addl	%esi, %edx
	cmpl	%edx, %ecx
	jle	.LBB12_164
	jmp	.LBB12_161
.LBB12_158:                             # %cond.false.1153
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-88(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB12_160
# BB#159:                               # %cond.true.1157
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	movl	%eax, %ecx
	movq	-120(%rbp), %rax
	movl	%eax, %edx
	movq	-88(%rbp), %rax
	movl	%eax, %esi
	addl	%esi, %edx
	cmpl	%edx, %ecx
	jle	.LBB12_164
	jmp	.LBB12_161
.LBB12_160:                             # %cond.false.1164
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	movl	%eax, %ecx
	movq	-88(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	movq	-88(%rbp), %rax
	movl	%eax, %edx
	cmpl	%edx, %ecx
	jl	.LBB12_164
.LBB12_161:                             # %lor.lhs.false.1171
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	movl	%eax, %ecx
	movq	-88(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB12_163
# BB#162:                               # %land.lhs.true.1179
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	movl	%eax, %ecx
	movq	-88(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	cmpl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	jl	.LBB12_164
.LBB12_163:                             # %lor.lhs.false.1185
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movq	-120(%rbp), %rcx
	movl	%ecx, %edx
	movq	-88(%rbp), %rcx
	movl	%ecx, %esi
	addl	%esi, %edx
	cmpl	%edx, %eax
	jge	.LBB12_168
.LBB12_164:                             # %cond.true.1191
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	movl	%eax, %ecx
	movq	-88(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB12_166
# BB#165:                               # %cond.true.1197
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	movl	%eax, %ecx
	movq	-88(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	movl	%ecx, -332(%rbp)        # 4-byte Spill
	jmp	.LBB12_167
.LBB12_166:                             # %cond.false.1201
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	movl	%eax, %ecx
	movq	-88(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -332(%rbp)        # 4-byte Spill
.LBB12_167:                             # %cond.end.1207
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-332(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -88(%rbp)
	testb	$1, %cl
	jne	.LBB12_320
	jmp	.LBB12_321
.LBB12_168:                             # %cond.false.1210
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	movl	%eax, %ecx
	movq	-88(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB12_170
# BB#169:                               # %cond.true.1216
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	movl	%eax, %ecx
	movq	-88(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	movl	%ecx, -336(%rbp)        # 4-byte Spill
	jmp	.LBB12_171
.LBB12_170:                             # %cond.false.1220
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	movl	%eax, %ecx
	movq	-88(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -336(%rbp)        # 4-byte Spill
.LBB12_171:                             # %cond.end.1226
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-336(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -88(%rbp)
	testb	$1, %dl
	jne	.LBB12_320
	jmp	.LBB12_321
.LBB12_172:                             # %cond.false.1229
                                        #   in Loop: Header=BB12_1 Depth=1
	imulq	$0, -88(%rbp), %rax
	addq	-120(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB12_174
# BB#173:                               # %cond.true.1236
                                        #   in Loop: Header=BB12_1 Depth=1
	xorl	%eax, %eax
	imulq	$0, -88(%rbp), %rcx
	addq	-120(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -88(%rbp), %rdi
	addq	-120(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -344(%rbp)        # 8-byte Spill
	jmp	.LBB12_175
.LBB12_174:                             # %cond.false.1255
                                        #   in Loop: Header=BB12_1 Depth=1
	imulq	$0, -88(%rbp), %rax
	addq	-120(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
.LBB12_175:                             # %cond.end.1260
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-344(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB12_185
# BB#176:                               # %cond.true.1264
                                        #   in Loop: Header=BB12_1 Depth=1
	cmpq	$0, -88(%rbp)
	jge	.LBB12_181
# BB#177:                               # %cond.true.1267
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	imulq	$0, -88(%rbp), %rcx
	addq	-120(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -352(%rbp)        # 8-byte Spill
	jge	.LBB12_179
# BB#178:                               # %cond.true.1274
                                        #   in Loop: Header=BB12_1 Depth=1
	xorl	%eax, %eax
	imulq	$0, -88(%rbp), %rcx
	addq	-120(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -88(%rbp), %rdi
	addq	-120(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -360(%rbp)        # 8-byte Spill
	jmp	.LBB12_180
.LBB12_179:                             # %cond.false.1293
                                        #   in Loop: Header=BB12_1 Depth=1
	imulq	$0, -88(%rbp), %rax
	addq	-120(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
.LBB12_180:                             # %cond.end.1298
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-360(%rbp), %rax        # 8-byte Reload
	subq	-88(%rbp), %rax
	movq	-352(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB12_193
	jmp	.LBB12_190
.LBB12_181:                             # %cond.false.1303
                                        #   in Loop: Header=BB12_1 Depth=1
	imulq	$0, -88(%rbp), %rax
	addq	-120(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB12_183
# BB#182:                               # %cond.true.1310
                                        #   in Loop: Header=BB12_1 Depth=1
	imulq	$0, -88(%rbp), %rax
	addq	-120(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	jmp	.LBB12_184
.LBB12_183:                             # %cond.false.1319
                                        #   in Loop: Header=BB12_1 Depth=1
	imulq	$0, -88(%rbp), %rax
	addq	-120(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
.LBB12_184:                             # %cond.end.1324
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-368(%rbp), %rax        # 8-byte Reload
	subq	-88(%rbp), %rax
	cmpq	-120(%rbp), %rax
	jl	.LBB12_193
	jmp	.LBB12_190
.LBB12_185:                             # %cond.false.1329
                                        #   in Loop: Header=BB12_1 Depth=1
	cmpq	$0, -120(%rbp)
	jge	.LBB12_187
# BB#186:                               # %cond.true.1332
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-88(%rbp), %rax
	movq	-120(%rbp), %rcx
	addq	-88(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB12_193
	jmp	.LBB12_190
.LBB12_187:                             # %cond.false.1336
                                        #   in Loop: Header=BB12_1 Depth=1
	cmpq	$0, -88(%rbp)
	jge	.LBB12_189
# BB#188:                               # %cond.true.1339
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	movq	-120(%rbp), %rcx
	addq	-88(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB12_193
	jmp	.LBB12_190
.LBB12_189:                             # %cond.false.1343
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	addq	-88(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jl	.LBB12_193
.LBB12_190:                             # %lor.lhs.false.1347
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	addq	-88(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB12_192
# BB#191:                               # %land.lhs.true.1353
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	addq	-88(%rbp), %rax
	cmpq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	jl	.LBB12_193
.LBB12_192:                             # %lor.lhs.false.1357
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %ecx
	movq	-120(%rbp), %rdx
	addq	-88(%rbp), %rdx
	cmpq	%rdx, %rcx
	jge	.LBB12_197
.LBB12_193:                             # %cond.true.1361
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	movl	%eax, %ecx
	movq	-88(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB12_195
# BB#194:                               # %cond.true.1367
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	movl	%eax, %ecx
	movq	-88(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	movl	%ecx, -372(%rbp)        # 4-byte Spill
	jmp	.LBB12_196
.LBB12_195:                             # %cond.false.1371
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	movl	%eax, %ecx
	movq	-88(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -372(%rbp)        # 4-byte Spill
.LBB12_196:                             # %cond.end.1377
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-372(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -88(%rbp)
	testb	$1, %cl
	jne	.LBB12_320
	jmp	.LBB12_321
.LBB12_197:                             # %cond.false.1380
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	movl	%eax, %ecx
	movq	-88(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB12_199
# BB#198:                               # %cond.true.1386
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	movl	%eax, %ecx
	movq	-88(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	movl	%ecx, -376(%rbp)        # 4-byte Spill
	jmp	.LBB12_200
.LBB12_199:                             # %cond.false.1390
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	movl	%eax, %ecx
	movq	-88(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -376(%rbp)        # 4-byte Spill
.LBB12_200:                             # %cond.end.1396
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-376(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -88(%rbp)
	testb	$1, %dl
	jne	.LBB12_320
	jmp	.LBB12_321
.LBB12_201:                             # %cond.false.1399
                                        #   in Loop: Header=BB12_1 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB12_202
	jmp	.LBB12_261
.LBB12_202:                             # %cond.true.1400
                                        #   in Loop: Header=BB12_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB12_203
	jmp	.LBB12_232
.LBB12_203:                             # %cond.true.1401
                                        #   in Loop: Header=BB12_1 Depth=1
	imulq	$0, -88(%rbp), %rax
	addq	-120(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB12_205
# BB#204:                               # %cond.true.1408
                                        #   in Loop: Header=BB12_1 Depth=1
	xorl	%eax, %eax
	imulq	$0, -88(%rbp), %rcx
	addq	-120(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -88(%rbp), %rdi
	addq	-120(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -384(%rbp)        # 8-byte Spill
	jmp	.LBB12_206
.LBB12_205:                             # %cond.false.1427
                                        #   in Loop: Header=BB12_1 Depth=1
	imulq	$0, -88(%rbp), %rax
	addq	-120(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
.LBB12_206:                             # %cond.end.1432
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-384(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB12_216
# BB#207:                               # %cond.true.1436
                                        #   in Loop: Header=BB12_1 Depth=1
	cmpq	$0, -88(%rbp)
	jge	.LBB12_212
# BB#208:                               # %cond.true.1439
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	imulq	$0, -88(%rbp), %rcx
	addq	-120(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -392(%rbp)        # 8-byte Spill
	jge	.LBB12_210
# BB#209:                               # %cond.true.1446
                                        #   in Loop: Header=BB12_1 Depth=1
	xorl	%eax, %eax
	imulq	$0, -88(%rbp), %rcx
	addq	-120(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -88(%rbp), %rdi
	addq	-120(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -400(%rbp)        # 8-byte Spill
	jmp	.LBB12_211
.LBB12_210:                             # %cond.false.1465
                                        #   in Loop: Header=BB12_1 Depth=1
	imulq	$0, -88(%rbp), %rax
	addq	-120(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
.LBB12_211:                             # %cond.end.1470
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-400(%rbp), %rax        # 8-byte Reload
	subq	-88(%rbp), %rax
	movq	-392(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB12_224
	jmp	.LBB12_221
.LBB12_212:                             # %cond.false.1475
                                        #   in Loop: Header=BB12_1 Depth=1
	imulq	$0, -88(%rbp), %rax
	addq	-120(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB12_214
# BB#213:                               # %cond.true.1482
                                        #   in Loop: Header=BB12_1 Depth=1
	imulq	$0, -88(%rbp), %rax
	addq	-120(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	jmp	.LBB12_215
.LBB12_214:                             # %cond.false.1491
                                        #   in Loop: Header=BB12_1 Depth=1
	imulq	$0, -88(%rbp), %rax
	addq	-120(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
.LBB12_215:                             # %cond.end.1496
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-408(%rbp), %rax        # 8-byte Reload
	subq	-88(%rbp), %rax
	cmpq	-120(%rbp), %rax
	jl	.LBB12_224
	jmp	.LBB12_221
.LBB12_216:                             # %cond.false.1501
                                        #   in Loop: Header=BB12_1 Depth=1
	cmpq	$0, -120(%rbp)
	jge	.LBB12_218
# BB#217:                               # %cond.true.1504
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-88(%rbp), %rax
	movq	-120(%rbp), %rcx
	addq	-88(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB12_224
	jmp	.LBB12_221
.LBB12_218:                             # %cond.false.1508
                                        #   in Loop: Header=BB12_1 Depth=1
	cmpq	$0, -88(%rbp)
	jge	.LBB12_220
# BB#219:                               # %cond.true.1511
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	movq	-120(%rbp), %rcx
	addq	-88(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB12_224
	jmp	.LBB12_221
.LBB12_220:                             # %cond.false.1515
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	addq	-88(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jl	.LBB12_224
.LBB12_221:                             # %lor.lhs.false.1519
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	addq	-88(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB12_223
# BB#222:                               # %land.lhs.true.1525
                                        #   in Loop: Header=BB12_1 Depth=1
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-120(%rbp), %rcx
	addq	-88(%rbp), %rcx
	cmpq	%rax, %rcx
	jl	.LBB12_224
.LBB12_223:                             # %lor.lhs.false.1529
                                        #   in Loop: Header=BB12_1 Depth=1
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-120(%rbp), %rcx
	addq	-88(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB12_228
.LBB12_224:                             # %cond.true.1533
                                        #   in Loop: Header=BB12_1 Depth=1
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-120(%rbp), %rcx
	addq	-88(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB12_226
# BB#225:                               # %cond.true.1537
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	addq	-88(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	jmp	.LBB12_227
.LBB12_226:                             # %cond.false.1539
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	addq	-88(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
.LBB12_227:                             # %cond.end.1543
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-416(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -88(%rbp)
	testb	$1, %cl
	jne	.LBB12_320
	jmp	.LBB12_321
.LBB12_228:                             # %cond.false.1545
                                        #   in Loop: Header=BB12_1 Depth=1
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-120(%rbp), %rcx
	addq	-88(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB12_230
# BB#229:                               # %cond.true.1549
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	addq	-88(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	jmp	.LBB12_231
.LBB12_230:                             # %cond.false.1551
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	addq	-88(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
.LBB12_231:                             # %cond.end.1555
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-424(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -88(%rbp)
	testb	$1, %dl
	jne	.LBB12_320
	jmp	.LBB12_321
.LBB12_232:                             # %cond.false.1557
                                        #   in Loop: Header=BB12_1 Depth=1
	imulq	$0, -88(%rbp), %rax
	addq	-120(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB12_234
# BB#233:                               # %cond.true.1564
                                        #   in Loop: Header=BB12_1 Depth=1
	xorl	%eax, %eax
	imulq	$0, -88(%rbp), %rcx
	addq	-120(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -88(%rbp), %rdi
	addq	-120(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -432(%rbp)        # 8-byte Spill
	jmp	.LBB12_235
.LBB12_234:                             # %cond.false.1583
                                        #   in Loop: Header=BB12_1 Depth=1
	imulq	$0, -88(%rbp), %rax
	addq	-120(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
.LBB12_235:                             # %cond.end.1588
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-432(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB12_245
# BB#236:                               # %cond.true.1592
                                        #   in Loop: Header=BB12_1 Depth=1
	cmpq	$0, -88(%rbp)
	jge	.LBB12_241
# BB#237:                               # %cond.true.1595
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	imulq	$0, -88(%rbp), %rcx
	addq	-120(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -440(%rbp)        # 8-byte Spill
	jge	.LBB12_239
# BB#238:                               # %cond.true.1602
                                        #   in Loop: Header=BB12_1 Depth=1
	xorl	%eax, %eax
	imulq	$0, -88(%rbp), %rcx
	addq	-120(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -88(%rbp), %rdi
	addq	-120(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -448(%rbp)        # 8-byte Spill
	jmp	.LBB12_240
.LBB12_239:                             # %cond.false.1621
                                        #   in Loop: Header=BB12_1 Depth=1
	imulq	$0, -88(%rbp), %rax
	addq	-120(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
.LBB12_240:                             # %cond.end.1626
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-448(%rbp), %rax        # 8-byte Reload
	subq	-88(%rbp), %rax
	movq	-440(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB12_253
	jmp	.LBB12_250
.LBB12_241:                             # %cond.false.1631
                                        #   in Loop: Header=BB12_1 Depth=1
	imulq	$0, -88(%rbp), %rax
	addq	-120(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB12_243
# BB#242:                               # %cond.true.1638
                                        #   in Loop: Header=BB12_1 Depth=1
	imulq	$0, -88(%rbp), %rax
	addq	-120(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	jmp	.LBB12_244
.LBB12_243:                             # %cond.false.1647
                                        #   in Loop: Header=BB12_1 Depth=1
	imulq	$0, -88(%rbp), %rax
	addq	-120(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
.LBB12_244:                             # %cond.end.1652
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-456(%rbp), %rax        # 8-byte Reload
	subq	-88(%rbp), %rax
	cmpq	-120(%rbp), %rax
	jl	.LBB12_253
	jmp	.LBB12_250
.LBB12_245:                             # %cond.false.1657
                                        #   in Loop: Header=BB12_1 Depth=1
	cmpq	$0, -120(%rbp)
	jge	.LBB12_247
# BB#246:                               # %cond.true.1660
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-88(%rbp), %rax
	movq	-120(%rbp), %rcx
	addq	-88(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB12_253
	jmp	.LBB12_250
.LBB12_247:                             # %cond.false.1664
                                        #   in Loop: Header=BB12_1 Depth=1
	cmpq	$0, -88(%rbp)
	jge	.LBB12_249
# BB#248:                               # %cond.true.1667
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	movq	-120(%rbp), %rcx
	addq	-88(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB12_253
	jmp	.LBB12_250
.LBB12_249:                             # %cond.false.1671
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	addq	-88(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jl	.LBB12_253
.LBB12_250:                             # %lor.lhs.false.1675
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	addq	-88(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB12_252
# BB#251:                               # %land.lhs.true.1681
                                        #   in Loop: Header=BB12_1 Depth=1
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-120(%rbp), %rcx
	addq	-88(%rbp), %rcx
	cmpq	%rax, %rcx
	jl	.LBB12_253
.LBB12_252:                             # %lor.lhs.false.1685
                                        #   in Loop: Header=BB12_1 Depth=1
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-120(%rbp), %rcx
	addq	-88(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB12_257
.LBB12_253:                             # %cond.true.1689
                                        #   in Loop: Header=BB12_1 Depth=1
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-120(%rbp), %rcx
	addq	-88(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB12_255
# BB#254:                               # %cond.true.1693
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	addq	-88(%rbp), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	jmp	.LBB12_256
.LBB12_255:                             # %cond.false.1695
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	addq	-88(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
.LBB12_256:                             # %cond.end.1699
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-464(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -88(%rbp)
	testb	$1, %cl
	jne	.LBB12_320
	jmp	.LBB12_321
.LBB12_257:                             # %cond.false.1701
                                        #   in Loop: Header=BB12_1 Depth=1
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-120(%rbp), %rcx
	addq	-88(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB12_259
# BB#258:                               # %cond.true.1705
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	addq	-88(%rbp), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	jmp	.LBB12_260
.LBB12_259:                             # %cond.false.1707
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	addq	-88(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
.LBB12_260:                             # %cond.end.1711
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-472(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -88(%rbp)
	testb	$1, %dl
	jne	.LBB12_320
	jmp	.LBB12_321
.LBB12_261:                             # %cond.false.1713
                                        #   in Loop: Header=BB12_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB12_262
	jmp	.LBB12_291
.LBB12_262:                             # %cond.true.1714
                                        #   in Loop: Header=BB12_1 Depth=1
	imulq	$0, -88(%rbp), %rax
	addq	-120(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB12_264
# BB#263:                               # %cond.true.1721
                                        #   in Loop: Header=BB12_1 Depth=1
	xorl	%eax, %eax
	imulq	$0, -88(%rbp), %rcx
	addq	-120(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -88(%rbp), %rdi
	addq	-120(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -480(%rbp)        # 8-byte Spill
	jmp	.LBB12_265
.LBB12_264:                             # %cond.false.1740
                                        #   in Loop: Header=BB12_1 Depth=1
	imulq	$0, -88(%rbp), %rax
	addq	-120(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
.LBB12_265:                             # %cond.end.1745
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-480(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB12_275
# BB#266:                               # %cond.true.1749
                                        #   in Loop: Header=BB12_1 Depth=1
	cmpq	$0, -88(%rbp)
	jge	.LBB12_271
# BB#267:                               # %cond.true.1752
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	imulq	$0, -88(%rbp), %rcx
	addq	-120(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -488(%rbp)        # 8-byte Spill
	jge	.LBB12_269
# BB#268:                               # %cond.true.1759
                                        #   in Loop: Header=BB12_1 Depth=1
	xorl	%eax, %eax
	imulq	$0, -88(%rbp), %rcx
	addq	-120(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -88(%rbp), %rdi
	addq	-120(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -496(%rbp)        # 8-byte Spill
	jmp	.LBB12_270
.LBB12_269:                             # %cond.false.1778
                                        #   in Loop: Header=BB12_1 Depth=1
	imulq	$0, -88(%rbp), %rax
	addq	-120(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
.LBB12_270:                             # %cond.end.1783
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-496(%rbp), %rax        # 8-byte Reload
	subq	-88(%rbp), %rax
	movq	-488(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB12_283
	jmp	.LBB12_280
.LBB12_271:                             # %cond.false.1788
                                        #   in Loop: Header=BB12_1 Depth=1
	imulq	$0, -88(%rbp), %rax
	addq	-120(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB12_273
# BB#272:                               # %cond.true.1795
                                        #   in Loop: Header=BB12_1 Depth=1
	imulq	$0, -88(%rbp), %rax
	addq	-120(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	jmp	.LBB12_274
.LBB12_273:                             # %cond.false.1804
                                        #   in Loop: Header=BB12_1 Depth=1
	imulq	$0, -88(%rbp), %rax
	addq	-120(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
.LBB12_274:                             # %cond.end.1809
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-504(%rbp), %rax        # 8-byte Reload
	subq	-88(%rbp), %rax
	cmpq	-120(%rbp), %rax
	jl	.LBB12_283
	jmp	.LBB12_280
.LBB12_275:                             # %cond.false.1814
                                        #   in Loop: Header=BB12_1 Depth=1
	cmpq	$0, -120(%rbp)
	jge	.LBB12_277
# BB#276:                               # %cond.true.1817
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-88(%rbp), %rax
	movq	-120(%rbp), %rcx
	addq	-88(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB12_283
	jmp	.LBB12_280
.LBB12_277:                             # %cond.false.1821
                                        #   in Loop: Header=BB12_1 Depth=1
	cmpq	$0, -88(%rbp)
	jge	.LBB12_279
# BB#278:                               # %cond.true.1824
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	movq	-120(%rbp), %rcx
	addq	-88(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB12_283
	jmp	.LBB12_280
.LBB12_279:                             # %cond.false.1828
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	addq	-88(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jl	.LBB12_283
.LBB12_280:                             # %lor.lhs.false.1832
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	addq	-88(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB12_282
# BB#281:                               # %land.lhs.true.1838
                                        #   in Loop: Header=BB12_1 Depth=1
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-120(%rbp), %rcx
	addq	-88(%rbp), %rcx
	cmpq	%rax, %rcx
	jl	.LBB12_283
.LBB12_282:                             # %lor.lhs.false.1842
                                        #   in Loop: Header=BB12_1 Depth=1
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-120(%rbp), %rcx
	addq	-88(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB12_287
.LBB12_283:                             # %cond.true.1846
                                        #   in Loop: Header=BB12_1 Depth=1
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-120(%rbp), %rcx
	addq	-88(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB12_285
# BB#284:                               # %cond.true.1850
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	addq	-88(%rbp), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	jmp	.LBB12_286
.LBB12_285:                             # %cond.false.1852
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	addq	-88(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
.LBB12_286:                             # %cond.end.1856
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-512(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -88(%rbp)
	testb	$1, %cl
	jne	.LBB12_320
	jmp	.LBB12_321
.LBB12_287:                             # %cond.false.1858
                                        #   in Loop: Header=BB12_1 Depth=1
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-120(%rbp), %rcx
	addq	-88(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB12_289
# BB#288:                               # %cond.true.1862
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	addq	-88(%rbp), %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	jmp	.LBB12_290
.LBB12_289:                             # %cond.false.1864
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	addq	-88(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
.LBB12_290:                             # %cond.end.1868
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-520(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -88(%rbp)
	testb	$1, %dl
	jne	.LBB12_320
	jmp	.LBB12_321
.LBB12_291:                             # %cond.false.1870
                                        #   in Loop: Header=BB12_1 Depth=1
	imulq	$0, -88(%rbp), %rax
	addq	-120(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB12_293
# BB#292:                               # %cond.true.1877
                                        #   in Loop: Header=BB12_1 Depth=1
	xorl	%eax, %eax
	imulq	$0, -88(%rbp), %rcx
	addq	-120(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -88(%rbp), %rdi
	addq	-120(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -528(%rbp)        # 8-byte Spill
	jmp	.LBB12_294
.LBB12_293:                             # %cond.false.1896
                                        #   in Loop: Header=BB12_1 Depth=1
	imulq	$0, -88(%rbp), %rax
	addq	-120(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
.LBB12_294:                             # %cond.end.1901
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-528(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB12_304
# BB#295:                               # %cond.true.1905
                                        #   in Loop: Header=BB12_1 Depth=1
	cmpq	$0, -88(%rbp)
	jge	.LBB12_300
# BB#296:                               # %cond.true.1908
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	imulq	$0, -88(%rbp), %rcx
	addq	-120(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -536(%rbp)        # 8-byte Spill
	jge	.LBB12_298
# BB#297:                               # %cond.true.1915
                                        #   in Loop: Header=BB12_1 Depth=1
	xorl	%eax, %eax
	imulq	$0, -88(%rbp), %rcx
	addq	-120(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -88(%rbp), %rdi
	addq	-120(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -544(%rbp)        # 8-byte Spill
	jmp	.LBB12_299
.LBB12_298:                             # %cond.false.1934
                                        #   in Loop: Header=BB12_1 Depth=1
	imulq	$0, -88(%rbp), %rax
	addq	-120(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
.LBB12_299:                             # %cond.end.1939
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-544(%rbp), %rax        # 8-byte Reload
	subq	-88(%rbp), %rax
	movq	-536(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB12_312
	jmp	.LBB12_309
.LBB12_300:                             # %cond.false.1944
                                        #   in Loop: Header=BB12_1 Depth=1
	imulq	$0, -88(%rbp), %rax
	addq	-120(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB12_302
# BB#301:                               # %cond.true.1951
                                        #   in Loop: Header=BB12_1 Depth=1
	imulq	$0, -88(%rbp), %rax
	addq	-120(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
	jmp	.LBB12_303
.LBB12_302:                             # %cond.false.1960
                                        #   in Loop: Header=BB12_1 Depth=1
	imulq	$0, -88(%rbp), %rax
	addq	-120(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
.LBB12_303:                             # %cond.end.1965
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-552(%rbp), %rax        # 8-byte Reload
	subq	-88(%rbp), %rax
	cmpq	-120(%rbp), %rax
	jl	.LBB12_312
	jmp	.LBB12_309
.LBB12_304:                             # %cond.false.1970
                                        #   in Loop: Header=BB12_1 Depth=1
	cmpq	$0, -120(%rbp)
	jge	.LBB12_306
# BB#305:                               # %cond.true.1973
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-88(%rbp), %rax
	movq	-120(%rbp), %rcx
	addq	-88(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB12_312
	jmp	.LBB12_309
.LBB12_306:                             # %cond.false.1977
                                        #   in Loop: Header=BB12_1 Depth=1
	cmpq	$0, -88(%rbp)
	jge	.LBB12_308
# BB#307:                               # %cond.true.1980
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	movq	-120(%rbp), %rcx
	addq	-88(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB12_312
	jmp	.LBB12_309
.LBB12_308:                             # %cond.false.1984
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	addq	-88(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jl	.LBB12_312
.LBB12_309:                             # %lor.lhs.false.1988
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	addq	-88(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB12_311
# BB#310:                               # %land.lhs.true.1994
                                        #   in Loop: Header=BB12_1 Depth=1
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-120(%rbp), %rcx
	addq	-88(%rbp), %rcx
	cmpq	%rax, %rcx
	jl	.LBB12_312
.LBB12_311:                             # %lor.lhs.false.1998
                                        #   in Loop: Header=BB12_1 Depth=1
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-120(%rbp), %rcx
	addq	-88(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB12_316
.LBB12_312:                             # %cond.true.2002
                                        #   in Loop: Header=BB12_1 Depth=1
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-120(%rbp), %rcx
	addq	-88(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB12_314
# BB#313:                               # %cond.true.2006
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	addq	-88(%rbp), %rax
	movq	%rax, -560(%rbp)        # 8-byte Spill
	jmp	.LBB12_315
.LBB12_314:                             # %cond.false.2008
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	addq	-88(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -560(%rbp)        # 8-byte Spill
.LBB12_315:                             # %cond.end.2012
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-560(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -88(%rbp)
	testb	$1, %cl
	jne	.LBB12_320
	jmp	.LBB12_321
.LBB12_316:                             # %cond.false.2014
                                        #   in Loop: Header=BB12_1 Depth=1
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-120(%rbp), %rcx
	addq	-88(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB12_318
# BB#317:                               # %cond.true.2018
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	addq	-88(%rbp), %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
	jmp	.LBB12_319
.LBB12_318:                             # %cond.false.2020
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax
	addq	-88(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
.LBB12_319:                             # %cond.end.2024
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-568(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -88(%rbp)
	testb	$1, %dl
	jne	.LBB12_320
	jmp	.LBB12_321
.LBB12_320:                             # %if.then.2026
	callq	string_overflow
.LBB12_321:                             # %if.end.2027
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-104(%rbp), %rax
	addq	-72(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-112(%rbp), %rax
	addq	-80(%rbp), %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB12_1
.LBB12_322:                             # %while.end
	cmpq	$0, -24(%rbp)
	jle	.LBB12_324
# BB#323:                               # %if.then.2032
	movq	-72(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-80(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB12_324:                             # %if.end.2033
	movq	-88(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB12_325:                             # %return
	movq	-8(%rbp), %rax
	addq	$576, %rsp              # imm = 0x240
	popq	%rbp
	retq
.Lfunc_end12:
	.size	lisp_string_width, .Lfunc_end12-lisp_string_width
	.cfi_endproc

	.globl	Fstring_width
	.align	16, 0x90
	.type	Fstring_width,@function
Fstring_width:                          # @Fstring_width
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
.Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp41:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_STRING
	movq	$-1, %rsi
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movq	-24(%rbp), %rcx         # 8-byte Reload
	callq	lisp_string_width
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	Fstring_width, .Lfunc_end13-Fstring_width
	.cfi_endproc

	.globl	chars_in_text
	.align	16, 0x90
	.type	chars_in_text,@function
chars_in_text:                          # @chars_in_text
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
.Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp44:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	cmpq	$0, current_buffer
	je	.LBB14_2
# BB#1:                                 # %lor.lhs.false
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB14_3
.LBB14_2:                               # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB14_4
.LBB14_3:                               # %if.end
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	multibyte_chars_in_text
	movq	%rax, -8(%rbp)
.LBB14_4:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	chars_in_text, .Lfunc_end14-chars_in_text
	.cfi_endproc

	.globl	multibyte_chars_in_text
	.align	16, 0x90
	.type	multibyte_chars_in_text,@function
multibyte_chars_in_text:                # @multibyte_chars_in_text
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp45:
	.cfi_def_cfa_offset 16
.Ltmp46:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp47:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	addq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	$0, -32(%rbp)
.LBB15_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jae	.LBB15_38
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-8(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jb	.LBB15_4
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB15_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
	jmp	.LBB15_35
.LBB15_4:                               # %cond.false
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB15_6
# BB#5:                                 # %cond.true.2
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	$1, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB15_34
.LBB15_6:                               # %cond.false.3
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-8(%rbp), %rax
	addq	$1, %rax
	cmpq	-24(%rbp), %rax
	jae	.LBB15_8
# BB#7:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-8(%rbp), %rax
	movzbl	1(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	je	.LBB15_9
.LBB15_8:                               # %cond.true.12
                                        #   in Loop: Header=BB15_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	jmp	.LBB15_33
.LBB15_9:                               # %cond.false.13
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$224, %ecx
	cmpl	$192, %ecx
	jne	.LBB15_11
# BB#10:                                # %cond.true.19
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	$2, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB15_32
.LBB15_11:                              # %cond.false.20
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-8(%rbp), %rax
	addq	$2, %rax
	cmpq	-24(%rbp), %rax
	jae	.LBB15_13
# BB#12:                                # %lor.lhs.false.24
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-8(%rbp), %rax
	movzbl	2(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	je	.LBB15_14
.LBB15_13:                              # %cond.true.30
                                        #   in Loop: Header=BB15_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB15_31
.LBB15_14:                              # %cond.false.31
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$240, %ecx
	cmpl	$224, %ecx
	jne	.LBB15_16
# BB#15:                                # %cond.true.37
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	$3, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB15_30
.LBB15_16:                              # %cond.false.38
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-8(%rbp), %rax
	addq	$3, %rax
	cmpq	-24(%rbp), %rax
	jae	.LBB15_18
# BB#17:                                # %lor.lhs.false.42
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-8(%rbp), %rax
	movzbl	3(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	je	.LBB15_19
.LBB15_18:                              # %cond.true.48
                                        #   in Loop: Header=BB15_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jmp	.LBB15_29
.LBB15_19:                              # %cond.false.49
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$248, %ecx
	cmpl	$240, %ecx
	jne	.LBB15_21
# BB#20:                                # %cond.true.55
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	$4, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB15_28
.LBB15_21:                              # %cond.false.56
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-8(%rbp), %rax
	addq	$4, %rax
	cmpq	-24(%rbp), %rax
	jae	.LBB15_23
# BB#22:                                # %lor.lhs.false.60
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-8(%rbp), %rax
	movzbl	4(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	je	.LBB15_24
.LBB15_23:                              # %cond.true.66
                                        #   in Loop: Header=BB15_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jmp	.LBB15_27
.LBB15_24:                              # %cond.false.67
                                        #   in Loop: Header=BB15_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movzbl	(%rdx), %eax
	cmpl	$248, %eax
	movb	%cl, -73(%rbp)          # 1-byte Spill
	jne	.LBB15_26
# BB#25:                                # %land.rhs
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-8(%rbp), %rax
	movzbl	1(%rax), %ecx
	andl	$240, %ecx
	cmpl	$128, %ecx
	sete	%dl
	movb	%dl, -73(%rbp)          # 1-byte Spill
.LBB15_26:                              # %land.end
                                        #   in Loop: Header=BB15_1 Depth=1
	movb	-73(%rbp), %al          # 1-byte Reload
	xorl	%ecx, %ecx
	movl	$5, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -72(%rbp)         # 4-byte Spill
.LBB15_27:                              # %cond.end
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-72(%rbp), %eax         # 4-byte Reload
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB15_28:                              # %cond.end.78
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	movl	%eax, -64(%rbp)         # 4-byte Spill
.LBB15_29:                              # %cond.end.80
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-64(%rbp), %eax         # 4-byte Reload
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB15_30:                              # %cond.end.82
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-60(%rbp), %eax         # 4-byte Reload
	movl	%eax, -56(%rbp)         # 4-byte Spill
.LBB15_31:                              # %cond.end.84
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-56(%rbp), %eax         # 4-byte Reload
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB15_32:                              # %cond.end.86
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-52(%rbp), %eax         # 4-byte Reload
	movl	%eax, -48(%rbp)         # 4-byte Spill
.LBB15_33:                              # %cond.end.88
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-48(%rbp), %eax         # 4-byte Reload
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB15_34:                              # %cond.end.90
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-44(%rbp), %eax         # 4-byte Reload
	movl	%eax, -40(%rbp)         # 4-byte Spill
.LBB15_35:                              # %cond.end.92
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-40(%rbp), %eax         # 4-byte Reload
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jne	.LBB15_37
# BB#36:                                # %if.then
	callq	emacs_abort
.LBB15_37:                              # %if.end
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -8(%rbp)
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	jmp	.LBB15_1
.LBB15_38:                              # %while.end
	movq	-32(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	multibyte_chars_in_text, .Lfunc_end15-multibyte_chars_in_text
	.cfi_endproc

	.globl	parse_str_as_multibyte
	.align	16, 0x90
	.type	parse_str_as_multibyte,@function
parse_str_as_multibyte:                 # @parse_str_as_multibyte
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp50:
	.cfi_def_cfa_register %rbp
	subq	$24, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	addq	-16(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	cmpq	$5, -16(%rbp)
	jl	.LBB16_36
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	addq	$-5, %rax
	movq	%rax, -72(%rbp)
.LBB16_2:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jae	.LBB16_35
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB16_2 Depth=1
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$192, %ecx
	je	.LBB16_33
# BB#4:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB16_2 Depth=1
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$193, %ecx
	je	.LBB16_33
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB16_2 Depth=1
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB16_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB16_2 Depth=1
	movl	$1, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB16_31
.LBB16_7:                               # %cond.false
                                        #   in Loop: Header=BB16_2 Depth=1
	movq	-8(%rbp), %rax
	movzbl	1(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	je	.LBB16_9
# BB#8:                                 # %cond.true.14
                                        #   in Loop: Header=BB16_2 Depth=1
	xorl	%eax, %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	jmp	.LBB16_30
.LBB16_9:                               # %cond.false.15
                                        #   in Loop: Header=BB16_2 Depth=1
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$224, %ecx
	cmpl	$192, %ecx
	jne	.LBB16_11
# BB#10:                                # %cond.true.21
                                        #   in Loop: Header=BB16_2 Depth=1
	movl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jmp	.LBB16_29
.LBB16_11:                              # %cond.false.22
                                        #   in Loop: Header=BB16_2 Depth=1
	movq	-8(%rbp), %rax
	movzbl	2(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	je	.LBB16_13
# BB#12:                                # %cond.true.28
                                        #   in Loop: Header=BB16_2 Depth=1
	xorl	%eax, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	jmp	.LBB16_28
.LBB16_13:                              # %cond.false.29
                                        #   in Loop: Header=BB16_2 Depth=1
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$240, %ecx
	cmpl	$224, %ecx
	jne	.LBB16_15
# BB#14:                                # %cond.true.35
                                        #   in Loop: Header=BB16_2 Depth=1
	movl	$3, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB16_27
.LBB16_15:                              # %cond.false.36
                                        #   in Loop: Header=BB16_2 Depth=1
	movq	-8(%rbp), %rax
	movzbl	3(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	je	.LBB16_17
# BB#16:                                # %cond.true.42
                                        #   in Loop: Header=BB16_2 Depth=1
	xorl	%eax, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jmp	.LBB16_26
.LBB16_17:                              # %cond.false.43
                                        #   in Loop: Header=BB16_2 Depth=1
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$248, %ecx
	cmpl	$240, %ecx
	jne	.LBB16_19
# BB#18:                                # %cond.true.49
                                        #   in Loop: Header=BB16_2 Depth=1
	movl	$4, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB16_25
.LBB16_19:                              # %cond.false.50
                                        #   in Loop: Header=BB16_2 Depth=1
	movq	-8(%rbp), %rax
	movzbl	4(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	je	.LBB16_21
# BB#20:                                # %cond.true.56
                                        #   in Loop: Header=BB16_2 Depth=1
	xorl	%eax, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB16_24
.LBB16_21:                              # %cond.false.57
                                        #   in Loop: Header=BB16_2 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movzbl	(%rdx), %eax
	cmpl	$248, %eax
	movb	%cl, -105(%rbp)         # 1-byte Spill
	jne	.LBB16_23
# BB#22:                                # %land.rhs
                                        #   in Loop: Header=BB16_2 Depth=1
	movq	-8(%rbp), %rax
	movzbl	1(%rax), %ecx
	andl	$240, %ecx
	cmpl	$128, %ecx
	sete	%dl
	movb	%dl, -105(%rbp)         # 1-byte Spill
.LBB16_23:                              # %land.end
                                        #   in Loop: Header=BB16_2 Depth=1
	movb	-105(%rbp), %al         # 1-byte Reload
	xorl	%ecx, %ecx
	movl	$5, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -104(%rbp)        # 4-byte Spill
.LBB16_24:                              # %cond.end
                                        #   in Loop: Header=BB16_2 Depth=1
	movl	-104(%rbp), %eax        # 4-byte Reload
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB16_25:                              # %cond.end.68
                                        #   in Loop: Header=BB16_2 Depth=1
	movl	-100(%rbp), %eax        # 4-byte Reload
	movl	%eax, -96(%rbp)         # 4-byte Spill
.LBB16_26:                              # %cond.end.70
                                        #   in Loop: Header=BB16_2 Depth=1
	movl	-96(%rbp), %eax         # 4-byte Reload
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB16_27:                              # %cond.end.72
                                        #   in Loop: Header=BB16_2 Depth=1
	movl	-92(%rbp), %eax         # 4-byte Reload
	movl	%eax, -88(%rbp)         # 4-byte Spill
.LBB16_28:                              # %cond.end.74
                                        #   in Loop: Header=BB16_2 Depth=1
	movl	-88(%rbp), %eax         # 4-byte Reload
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB16_29:                              # %cond.end.76
                                        #   in Loop: Header=BB16_2 Depth=1
	movl	-84(%rbp), %eax         # 4-byte Reload
	movl	%eax, -80(%rbp)         # 4-byte Spill
.LBB16_30:                              # %cond.end.78
                                        #   in Loop: Header=BB16_2 Depth=1
	movl	-80(%rbp), %eax         # 4-byte Reload
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB16_31:                              # %cond.end.80
                                        #   in Loop: Header=BB16_2 Depth=1
	movl	-76(%rbp), %eax         # 4-byte Reload
	movl	%eax, -44(%rbp)
	cmpl	$0, %eax
	jle	.LBB16_33
# BB#32:                                # %if.then.84
                                        #   in Loop: Header=BB16_2 Depth=1
	movl	-44(%rbp), %eax
	movq	-8(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -8(%rbp)
	movslq	-44(%rbp), %rcx
	addq	-64(%rbp), %rcx
	movq	%rcx, -64(%rbp)
	jmp	.LBB16_34
.LBB16_33:                              # %if.else
                                        #   in Loop: Header=BB16_2 Depth=1
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	movq	-64(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -64(%rbp)
.LBB16_34:                              # %if.end
                                        #   in Loop: Header=BB16_2 Depth=1
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB16_2
.LBB16_35:                              # %while.end
	jmp	.LBB16_36
.LBB16_36:                              # %if.end.88
	jmp	.LBB16_37
.LBB16_37:                              # %while.cond.89
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jae	.LBB16_77
# BB#38:                                # %while.body.92
                                        #   in Loop: Header=BB16_37 Depth=1
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$192, %ecx
	je	.LBB16_75
# BB#39:                                # %lor.lhs.false.96
                                        #   in Loop: Header=BB16_37 Depth=1
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$193, %ecx
	je	.LBB16_75
# BB#40:                                # %land.lhs.true.100
                                        #   in Loop: Header=BB16_37 Depth=1
	movq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.LBB16_42
# BB#41:                                # %cond.true.103
                                        #   in Loop: Header=BB16_37 Depth=1
	xorl	%eax, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB16_73
.LBB16_42:                              # %cond.false.104
                                        #   in Loop: Header=BB16_37 Depth=1
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB16_44
# BB#43:                                # %cond.true.109
                                        #   in Loop: Header=BB16_37 Depth=1
	movl	$1, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB16_72
.LBB16_44:                              # %cond.false.110
                                        #   in Loop: Header=BB16_37 Depth=1
	movq	-8(%rbp), %rax
	addq	$1, %rax
	cmpq	-40(%rbp), %rax
	jae	.LBB16_46
# BB#45:                                # %lor.lhs.false.114
                                        #   in Loop: Header=BB16_37 Depth=1
	movq	-8(%rbp), %rax
	movzbl	1(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	je	.LBB16_47
.LBB16_46:                              # %cond.true.120
                                        #   in Loop: Header=BB16_37 Depth=1
	xorl	%eax, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB16_71
.LBB16_47:                              # %cond.false.121
                                        #   in Loop: Header=BB16_37 Depth=1
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$224, %ecx
	cmpl	$192, %ecx
	jne	.LBB16_49
# BB#48:                                # %cond.true.127
                                        #   in Loop: Header=BB16_37 Depth=1
	movl	$2, %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jmp	.LBB16_70
.LBB16_49:                              # %cond.false.128
                                        #   in Loop: Header=BB16_37 Depth=1
	movq	-8(%rbp), %rax
	addq	$2, %rax
	cmpq	-40(%rbp), %rax
	jae	.LBB16_51
# BB#50:                                # %lor.lhs.false.132
                                        #   in Loop: Header=BB16_37 Depth=1
	movq	-8(%rbp), %rax
	movzbl	2(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	je	.LBB16_52
.LBB16_51:                              # %cond.true.138
                                        #   in Loop: Header=BB16_37 Depth=1
	xorl	%eax, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	jmp	.LBB16_69
.LBB16_52:                              # %cond.false.139
                                        #   in Loop: Header=BB16_37 Depth=1
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$240, %ecx
	cmpl	$224, %ecx
	jne	.LBB16_54
# BB#53:                                # %cond.true.145
                                        #   in Loop: Header=BB16_37 Depth=1
	movl	$3, %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jmp	.LBB16_68
.LBB16_54:                              # %cond.false.146
                                        #   in Loop: Header=BB16_37 Depth=1
	movq	-8(%rbp), %rax
	addq	$3, %rax
	cmpq	-40(%rbp), %rax
	jae	.LBB16_56
# BB#55:                                # %lor.lhs.false.150
                                        #   in Loop: Header=BB16_37 Depth=1
	movq	-8(%rbp), %rax
	movzbl	3(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	je	.LBB16_57
.LBB16_56:                              # %cond.true.156
                                        #   in Loop: Header=BB16_37 Depth=1
	xorl	%eax, %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	jmp	.LBB16_67
.LBB16_57:                              # %cond.false.157
                                        #   in Loop: Header=BB16_37 Depth=1
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$248, %ecx
	cmpl	$240, %ecx
	jne	.LBB16_59
# BB#58:                                # %cond.true.163
                                        #   in Loop: Header=BB16_37 Depth=1
	movl	$4, %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
	jmp	.LBB16_66
.LBB16_59:                              # %cond.false.164
                                        #   in Loop: Header=BB16_37 Depth=1
	movq	-8(%rbp), %rax
	addq	$4, %rax
	cmpq	-40(%rbp), %rax
	jae	.LBB16_61
# BB#60:                                # %lor.lhs.false.168
                                        #   in Loop: Header=BB16_37 Depth=1
	movq	-8(%rbp), %rax
	movzbl	4(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	je	.LBB16_62
.LBB16_61:                              # %cond.true.174
                                        #   in Loop: Header=BB16_37 Depth=1
	xorl	%eax, %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
	jmp	.LBB16_65
.LBB16_62:                              # %cond.false.175
                                        #   in Loop: Header=BB16_37 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movzbl	(%rdx), %eax
	cmpl	$248, %eax
	movb	%cl, -145(%rbp)         # 1-byte Spill
	jne	.LBB16_64
# BB#63:                                # %land.rhs.180
                                        #   in Loop: Header=BB16_37 Depth=1
	movq	-8(%rbp), %rax
	movzbl	1(%rax), %ecx
	andl	$240, %ecx
	cmpl	$128, %ecx
	sete	%dl
	movb	%dl, -145(%rbp)         # 1-byte Spill
.LBB16_64:                              # %land.end.186
                                        #   in Loop: Header=BB16_37 Depth=1
	movb	-145(%rbp), %al         # 1-byte Reload
	xorl	%ecx, %ecx
	movl	$5, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -144(%rbp)        # 4-byte Spill
.LBB16_65:                              # %cond.end.188
                                        #   in Loop: Header=BB16_37 Depth=1
	movl	-144(%rbp), %eax        # 4-byte Reload
	movl	%eax, -140(%rbp)        # 4-byte Spill
.LBB16_66:                              # %cond.end.190
                                        #   in Loop: Header=BB16_37 Depth=1
	movl	-140(%rbp), %eax        # 4-byte Reload
	movl	%eax, -136(%rbp)        # 4-byte Spill
.LBB16_67:                              # %cond.end.192
                                        #   in Loop: Header=BB16_37 Depth=1
	movl	-136(%rbp), %eax        # 4-byte Reload
	movl	%eax, -132(%rbp)        # 4-byte Spill
.LBB16_68:                              # %cond.end.194
                                        #   in Loop: Header=BB16_37 Depth=1
	movl	-132(%rbp), %eax        # 4-byte Reload
	movl	%eax, -128(%rbp)        # 4-byte Spill
.LBB16_69:                              # %cond.end.196
                                        #   in Loop: Header=BB16_37 Depth=1
	movl	-128(%rbp), %eax        # 4-byte Reload
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB16_70:                              # %cond.end.198
                                        #   in Loop: Header=BB16_37 Depth=1
	movl	-124(%rbp), %eax        # 4-byte Reload
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB16_71:                              # %cond.end.200
                                        #   in Loop: Header=BB16_37 Depth=1
	movl	-120(%rbp), %eax        # 4-byte Reload
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB16_72:                              # %cond.end.202
                                        #   in Loop: Header=BB16_37 Depth=1
	movl	-116(%rbp), %eax        # 4-byte Reload
	movl	%eax, -112(%rbp)        # 4-byte Spill
.LBB16_73:                              # %cond.end.204
                                        #   in Loop: Header=BB16_37 Depth=1
	movl	-112(%rbp), %eax        # 4-byte Reload
	movl	%eax, -44(%rbp)
	cmpl	$0, %eax
	jle	.LBB16_75
# BB#74:                                # %if.then.208
                                        #   in Loop: Header=BB16_37 Depth=1
	movl	-44(%rbp), %eax
	movq	-8(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -8(%rbp)
	movslq	-44(%rbp), %rcx
	addq	-64(%rbp), %rcx
	movq	%rcx, -64(%rbp)
	jmp	.LBB16_76
.LBB16_75:                              # %if.else.213
                                        #   in Loop: Header=BB16_37 Depth=1
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	movq	-64(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -64(%rbp)
.LBB16_76:                              # %if.end.216
                                        #   in Loop: Header=BB16_37 Depth=1
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB16_37
.LBB16_77:                              # %while.end.218
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-64(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	addq	$24, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	parse_str_as_multibyte, .Lfunc_end16-parse_str_as_multibyte
	.cfi_endproc

	.globl	str_as_multibyte
	.align	16, 0x90
	.type	str_as_multibyte,@function
str_as_multibyte:                       # @str_as_multibyte
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
.Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp53:
	.cfi_def_cfa_register %rbp
	subq	$304, %rsp              # imm = 0x130
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -48(%rbp)
	movq	-16(%rbp), %rcx
	addq	-32(%rbp), %rcx
	movq	%rcx, -56(%rbp)
	movq	$0, -72(%rbp)
	cmpq	$5, -32(%rbp)
	jl	.LBB17_35
# BB#1:                                 # %if.then
	movq	-56(%rbp), %rax
	addq	$-5, %rax
	movq	%rax, -88(%rbp)
.LBB17_2:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	cmpq	-88(%rbp), %rdx
	movb	%cl, -105(%rbp)         # 1-byte Spill
	jae	.LBB17_32
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB17_2 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	movzbl	(%rdx), %eax
	cmpl	$192, %eax
	movb	%cl, -105(%rbp)         # 1-byte Spill
	je	.LBB17_32
# BB#4:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB17_2 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	movzbl	(%rdx), %eax
	cmpl	$193, %eax
	movb	%cl, -105(%rbp)         # 1-byte Spill
	je	.LBB17_32
# BB#5:                                 # %land.rhs
                                        #   in Loop: Header=BB17_2 Depth=1
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB17_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB17_2 Depth=1
	movl	$1, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB17_31
.LBB17_7:                               # %cond.false
                                        #   in Loop: Header=BB17_2 Depth=1
	movq	-48(%rbp), %rax
	movzbl	1(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	je	.LBB17_9
# BB#8:                                 # %cond.true.14
                                        #   in Loop: Header=BB17_2 Depth=1
	xorl	%eax, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB17_30
.LBB17_9:                               # %cond.false.15
                                        #   in Loop: Header=BB17_2 Depth=1
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$224, %ecx
	cmpl	$192, %ecx
	jne	.LBB17_11
# BB#10:                                # %cond.true.21
                                        #   in Loop: Header=BB17_2 Depth=1
	movl	$2, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB17_29
.LBB17_11:                              # %cond.false.22
                                        #   in Loop: Header=BB17_2 Depth=1
	movq	-48(%rbp), %rax
	movzbl	2(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	je	.LBB17_13
# BB#12:                                # %cond.true.28
                                        #   in Loop: Header=BB17_2 Depth=1
	xorl	%eax, %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jmp	.LBB17_28
.LBB17_13:                              # %cond.false.29
                                        #   in Loop: Header=BB17_2 Depth=1
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$240, %ecx
	cmpl	$224, %ecx
	jne	.LBB17_15
# BB#14:                                # %cond.true.35
                                        #   in Loop: Header=BB17_2 Depth=1
	movl	$3, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	jmp	.LBB17_27
.LBB17_15:                              # %cond.false.36
                                        #   in Loop: Header=BB17_2 Depth=1
	movq	-48(%rbp), %rax
	movzbl	3(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	je	.LBB17_17
# BB#16:                                # %cond.true.42
                                        #   in Loop: Header=BB17_2 Depth=1
	xorl	%eax, %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jmp	.LBB17_26
.LBB17_17:                              # %cond.false.43
                                        #   in Loop: Header=BB17_2 Depth=1
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$248, %ecx
	cmpl	$240, %ecx
	jne	.LBB17_19
# BB#18:                                # %cond.true.49
                                        #   in Loop: Header=BB17_2 Depth=1
	movl	$4, %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	jmp	.LBB17_25
.LBB17_19:                              # %cond.false.50
                                        #   in Loop: Header=BB17_2 Depth=1
	movq	-48(%rbp), %rax
	movzbl	4(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	je	.LBB17_21
# BB#20:                                # %cond.true.56
                                        #   in Loop: Header=BB17_2 Depth=1
	xorl	%eax, %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
	jmp	.LBB17_24
.LBB17_21:                              # %cond.false.57
                                        #   in Loop: Header=BB17_2 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	movzbl	(%rdx), %eax
	cmpl	$248, %eax
	movb	%cl, -141(%rbp)         # 1-byte Spill
	jne	.LBB17_23
# BB#22:                                # %land.rhs.62
                                        #   in Loop: Header=BB17_2 Depth=1
	movq	-48(%rbp), %rax
	movzbl	1(%rax), %ecx
	andl	$240, %ecx
	cmpl	$128, %ecx
	sete	%dl
	movb	%dl, -141(%rbp)         # 1-byte Spill
.LBB17_23:                              # %land.end
                                        #   in Loop: Header=BB17_2 Depth=1
	movb	-141(%rbp), %al         # 1-byte Reload
	xorl	%ecx, %ecx
	movl	$5, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -140(%rbp)        # 4-byte Spill
.LBB17_24:                              # %cond.end
                                        #   in Loop: Header=BB17_2 Depth=1
	movl	-140(%rbp), %eax        # 4-byte Reload
	movl	%eax, -136(%rbp)        # 4-byte Spill
.LBB17_25:                              # %cond.end.69
                                        #   in Loop: Header=BB17_2 Depth=1
	movl	-136(%rbp), %eax        # 4-byte Reload
	movl	%eax, -132(%rbp)        # 4-byte Spill
.LBB17_26:                              # %cond.end.71
                                        #   in Loop: Header=BB17_2 Depth=1
	movl	-132(%rbp), %eax        # 4-byte Reload
	movl	%eax, -128(%rbp)        # 4-byte Spill
.LBB17_27:                              # %cond.end.73
                                        #   in Loop: Header=BB17_2 Depth=1
	movl	-128(%rbp), %eax        # 4-byte Reload
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB17_28:                              # %cond.end.75
                                        #   in Loop: Header=BB17_2 Depth=1
	movl	-124(%rbp), %eax        # 4-byte Reload
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB17_29:                              # %cond.end.77
                                        #   in Loop: Header=BB17_2 Depth=1
	movl	-120(%rbp), %eax        # 4-byte Reload
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB17_30:                              # %cond.end.79
                                        #   in Loop: Header=BB17_2 Depth=1
	movl	-116(%rbp), %eax        # 4-byte Reload
	movl	%eax, -112(%rbp)        # 4-byte Spill
.LBB17_31:                              # %cond.end.81
                                        #   in Loop: Header=BB17_2 Depth=1
	movl	-112(%rbp), %eax        # 4-byte Reload
	movl	%eax, -76(%rbp)
	cmpl	$0, %eax
	setg	%cl
	movb	%cl, -105(%rbp)         # 1-byte Spill
.LBB17_32:                              # %land.end.85
                                        #   in Loop: Header=BB17_2 Depth=1
	movb	-105(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB17_33
	jmp	.LBB17_34
.LBB17_33:                              # %while.body
                                        #   in Loop: Header=BB17_2 Depth=1
	movl	-76(%rbp), %eax
	movq	-48(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -48(%rbp)
	movq	-72(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -72(%rbp)
	jmp	.LBB17_2
.LBB17_34:                              # %while.end
	jmp	.LBB17_35
.LBB17_35:                              # %if.end
	jmp	.LBB17_36
.LBB17_36:                              # %while.cond.87
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	cmpq	-56(%rbp), %rdx
	movb	%cl, -142(%rbp)         # 1-byte Spill
	jae	.LBB17_73
# BB#37:                                # %land.lhs.true.90
                                        #   in Loop: Header=BB17_36 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	movzbl	(%rdx), %eax
	cmpl	$192, %eax
	movb	%cl, -142(%rbp)         # 1-byte Spill
	je	.LBB17_73
# BB#38:                                # %lor.lhs.false.94
                                        #   in Loop: Header=BB17_36 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	movzbl	(%rdx), %eax
	cmpl	$193, %eax
	movb	%cl, -142(%rbp)         # 1-byte Spill
	je	.LBB17_73
# BB#39:                                # %land.rhs.98
                                        #   in Loop: Header=BB17_36 Depth=1
	movq	-48(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jb	.LBB17_41
# BB#40:                                # %cond.true.101
                                        #   in Loop: Header=BB17_36 Depth=1
	xorl	%eax, %eax
	movl	%eax, -148(%rbp)        # 4-byte Spill
	jmp	.LBB17_72
.LBB17_41:                              # %cond.false.102
                                        #   in Loop: Header=BB17_36 Depth=1
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB17_43
# BB#42:                                # %cond.true.107
                                        #   in Loop: Header=BB17_36 Depth=1
	movl	$1, %eax
	movl	%eax, -152(%rbp)        # 4-byte Spill
	jmp	.LBB17_71
.LBB17_43:                              # %cond.false.108
                                        #   in Loop: Header=BB17_36 Depth=1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	cmpq	-56(%rbp), %rax
	jae	.LBB17_45
# BB#44:                                # %lor.lhs.false.112
                                        #   in Loop: Header=BB17_36 Depth=1
	movq	-48(%rbp), %rax
	movzbl	1(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	je	.LBB17_46
.LBB17_45:                              # %cond.true.118
                                        #   in Loop: Header=BB17_36 Depth=1
	xorl	%eax, %eax
	movl	%eax, -156(%rbp)        # 4-byte Spill
	jmp	.LBB17_70
.LBB17_46:                              # %cond.false.119
                                        #   in Loop: Header=BB17_36 Depth=1
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$224, %ecx
	cmpl	$192, %ecx
	jne	.LBB17_48
# BB#47:                                # %cond.true.125
                                        #   in Loop: Header=BB17_36 Depth=1
	movl	$2, %eax
	movl	%eax, -160(%rbp)        # 4-byte Spill
	jmp	.LBB17_69
.LBB17_48:                              # %cond.false.126
                                        #   in Loop: Header=BB17_36 Depth=1
	movq	-48(%rbp), %rax
	addq	$2, %rax
	cmpq	-56(%rbp), %rax
	jae	.LBB17_50
# BB#49:                                # %lor.lhs.false.130
                                        #   in Loop: Header=BB17_36 Depth=1
	movq	-48(%rbp), %rax
	movzbl	2(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	je	.LBB17_51
.LBB17_50:                              # %cond.true.136
                                        #   in Loop: Header=BB17_36 Depth=1
	xorl	%eax, %eax
	movl	%eax, -164(%rbp)        # 4-byte Spill
	jmp	.LBB17_68
.LBB17_51:                              # %cond.false.137
                                        #   in Loop: Header=BB17_36 Depth=1
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$240, %ecx
	cmpl	$224, %ecx
	jne	.LBB17_53
# BB#52:                                # %cond.true.143
                                        #   in Loop: Header=BB17_36 Depth=1
	movl	$3, %eax
	movl	%eax, -168(%rbp)        # 4-byte Spill
	jmp	.LBB17_67
.LBB17_53:                              # %cond.false.144
                                        #   in Loop: Header=BB17_36 Depth=1
	movq	-48(%rbp), %rax
	addq	$3, %rax
	cmpq	-56(%rbp), %rax
	jae	.LBB17_55
# BB#54:                                # %lor.lhs.false.148
                                        #   in Loop: Header=BB17_36 Depth=1
	movq	-48(%rbp), %rax
	movzbl	3(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	je	.LBB17_56
.LBB17_55:                              # %cond.true.154
                                        #   in Loop: Header=BB17_36 Depth=1
	xorl	%eax, %eax
	movl	%eax, -172(%rbp)        # 4-byte Spill
	jmp	.LBB17_66
.LBB17_56:                              # %cond.false.155
                                        #   in Loop: Header=BB17_36 Depth=1
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$248, %ecx
	cmpl	$240, %ecx
	jne	.LBB17_58
# BB#57:                                # %cond.true.161
                                        #   in Loop: Header=BB17_36 Depth=1
	movl	$4, %eax
	movl	%eax, -176(%rbp)        # 4-byte Spill
	jmp	.LBB17_65
.LBB17_58:                              # %cond.false.162
                                        #   in Loop: Header=BB17_36 Depth=1
	movq	-48(%rbp), %rax
	addq	$4, %rax
	cmpq	-56(%rbp), %rax
	jae	.LBB17_60
# BB#59:                                # %lor.lhs.false.166
                                        #   in Loop: Header=BB17_36 Depth=1
	movq	-48(%rbp), %rax
	movzbl	4(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	je	.LBB17_61
.LBB17_60:                              # %cond.true.172
                                        #   in Loop: Header=BB17_36 Depth=1
	xorl	%eax, %eax
	movl	%eax, -180(%rbp)        # 4-byte Spill
	jmp	.LBB17_64
.LBB17_61:                              # %cond.false.173
                                        #   in Loop: Header=BB17_36 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	movzbl	(%rdx), %eax
	cmpl	$248, %eax
	movb	%cl, -181(%rbp)         # 1-byte Spill
	jne	.LBB17_63
# BB#62:                                # %land.rhs.178
                                        #   in Loop: Header=BB17_36 Depth=1
	movq	-48(%rbp), %rax
	movzbl	1(%rax), %ecx
	andl	$240, %ecx
	cmpl	$128, %ecx
	sete	%dl
	movb	%dl, -181(%rbp)         # 1-byte Spill
.LBB17_63:                              # %land.end.184
                                        #   in Loop: Header=BB17_36 Depth=1
	movb	-181(%rbp), %al         # 1-byte Reload
	xorl	%ecx, %ecx
	movl	$5, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -180(%rbp)        # 4-byte Spill
.LBB17_64:                              # %cond.end.186
                                        #   in Loop: Header=BB17_36 Depth=1
	movl	-180(%rbp), %eax        # 4-byte Reload
	movl	%eax, -176(%rbp)        # 4-byte Spill
.LBB17_65:                              # %cond.end.188
                                        #   in Loop: Header=BB17_36 Depth=1
	movl	-176(%rbp), %eax        # 4-byte Reload
	movl	%eax, -172(%rbp)        # 4-byte Spill
.LBB17_66:                              # %cond.end.190
                                        #   in Loop: Header=BB17_36 Depth=1
	movl	-172(%rbp), %eax        # 4-byte Reload
	movl	%eax, -168(%rbp)        # 4-byte Spill
.LBB17_67:                              # %cond.end.192
                                        #   in Loop: Header=BB17_36 Depth=1
	movl	-168(%rbp), %eax        # 4-byte Reload
	movl	%eax, -164(%rbp)        # 4-byte Spill
.LBB17_68:                              # %cond.end.194
                                        #   in Loop: Header=BB17_36 Depth=1
	movl	-164(%rbp), %eax        # 4-byte Reload
	movl	%eax, -160(%rbp)        # 4-byte Spill
.LBB17_69:                              # %cond.end.196
                                        #   in Loop: Header=BB17_36 Depth=1
	movl	-160(%rbp), %eax        # 4-byte Reload
	movl	%eax, -156(%rbp)        # 4-byte Spill
.LBB17_70:                              # %cond.end.198
                                        #   in Loop: Header=BB17_36 Depth=1
	movl	-156(%rbp), %eax        # 4-byte Reload
	movl	%eax, -152(%rbp)        # 4-byte Spill
.LBB17_71:                              # %cond.end.200
                                        #   in Loop: Header=BB17_36 Depth=1
	movl	-152(%rbp), %eax        # 4-byte Reload
	movl	%eax, -148(%rbp)        # 4-byte Spill
.LBB17_72:                              # %cond.end.202
                                        #   in Loop: Header=BB17_36 Depth=1
	movl	-148(%rbp), %eax        # 4-byte Reload
	movl	%eax, -76(%rbp)
	cmpl	$0, %eax
	setg	%cl
	movb	%cl, -142(%rbp)         # 1-byte Spill
.LBB17_73:                              # %land.end.206
                                        #   in Loop: Header=BB17_36 Depth=1
	movb	-142(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB17_74
	jmp	.LBB17_75
.LBB17_74:                              # %while.body.207
                                        #   in Loop: Header=BB17_36 Depth=1
	movl	-76(%rbp), %eax
	movq	-48(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -48(%rbp)
	movq	-72(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -72(%rbp)
	jmp	.LBB17_36
.LBB17_75:                              # %while.end.211
	cmpq	$0, -40(%rbp)
	je	.LBB17_77
# BB#76:                                # %if.then.213
	movq	-72(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB17_77:                              # %if.end.214
	movq	-48(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB17_79
# BB#78:                                # %if.then.217
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB17_195
.LBB17_79:                              # %if.end.218
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	movq	%rdx, -64(%rbp)
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	subq	%rsi, %rdx
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	addq	-24(%rbp), %rdx
	movq	%rdx, -56(%rbp)
	movq	-56(%rbp), %rdx
	movq	%rcx, %rsi
	subq	-32(%rbp), %rsi
	addq	%rsi, %rdx
	movq	-48(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-192(%rbp), %rdx        # 8-byte Reload
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	callq	memmove
	movq	-56(%rbp), %rcx
	movq	-200(%rbp), %rdx        # 8-byte Reload
	subq	-32(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rcx, -48(%rbp)
	cmpq	$5, -32(%rbp)
	jl	.LBB17_133
# BB#80:                                # %if.then.225
	movq	-56(%rbp), %rax
	addq	$-5, %rax
	movq	%rax, -96(%rbp)
.LBB17_81:                              # %while.cond.228
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_112 Depth 2
	movq	-48(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jae	.LBB17_132
# BB#82:                                # %while.body.231
                                        #   in Loop: Header=BB17_81 Depth=1
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$192, %ecx
	je	.LBB17_115
# BB#83:                                # %lor.lhs.false.235
                                        #   in Loop: Header=BB17_81 Depth=1
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$193, %ecx
	je	.LBB17_115
# BB#84:                                # %land.lhs.true.239
                                        #   in Loop: Header=BB17_81 Depth=1
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB17_86
# BB#85:                                # %cond.true.244
                                        #   in Loop: Header=BB17_81 Depth=1
	movl	$1, %eax
	movl	%eax, -204(%rbp)        # 4-byte Spill
	jmp	.LBB17_110
.LBB17_86:                              # %cond.false.245
                                        #   in Loop: Header=BB17_81 Depth=1
	movq	-48(%rbp), %rax
	movzbl	1(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	je	.LBB17_88
# BB#87:                                # %cond.true.251
                                        #   in Loop: Header=BB17_81 Depth=1
	xorl	%eax, %eax
	movl	%eax, -208(%rbp)        # 4-byte Spill
	jmp	.LBB17_109
.LBB17_88:                              # %cond.false.252
                                        #   in Loop: Header=BB17_81 Depth=1
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$224, %ecx
	cmpl	$192, %ecx
	jne	.LBB17_90
# BB#89:                                # %cond.true.258
                                        #   in Loop: Header=BB17_81 Depth=1
	movl	$2, %eax
	movl	%eax, -212(%rbp)        # 4-byte Spill
	jmp	.LBB17_108
.LBB17_90:                              # %cond.false.259
                                        #   in Loop: Header=BB17_81 Depth=1
	movq	-48(%rbp), %rax
	movzbl	2(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	je	.LBB17_92
# BB#91:                                # %cond.true.265
                                        #   in Loop: Header=BB17_81 Depth=1
	xorl	%eax, %eax
	movl	%eax, -216(%rbp)        # 4-byte Spill
	jmp	.LBB17_107
.LBB17_92:                              # %cond.false.266
                                        #   in Loop: Header=BB17_81 Depth=1
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$240, %ecx
	cmpl	$224, %ecx
	jne	.LBB17_94
# BB#93:                                # %cond.true.272
                                        #   in Loop: Header=BB17_81 Depth=1
	movl	$3, %eax
	movl	%eax, -220(%rbp)        # 4-byte Spill
	jmp	.LBB17_106
.LBB17_94:                              # %cond.false.273
                                        #   in Loop: Header=BB17_81 Depth=1
	movq	-48(%rbp), %rax
	movzbl	3(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	je	.LBB17_96
# BB#95:                                # %cond.true.279
                                        #   in Loop: Header=BB17_81 Depth=1
	xorl	%eax, %eax
	movl	%eax, -224(%rbp)        # 4-byte Spill
	jmp	.LBB17_105
.LBB17_96:                              # %cond.false.280
                                        #   in Loop: Header=BB17_81 Depth=1
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$248, %ecx
	cmpl	$240, %ecx
	jne	.LBB17_98
# BB#97:                                # %cond.true.286
                                        #   in Loop: Header=BB17_81 Depth=1
	movl	$4, %eax
	movl	%eax, -228(%rbp)        # 4-byte Spill
	jmp	.LBB17_104
.LBB17_98:                              # %cond.false.287
                                        #   in Loop: Header=BB17_81 Depth=1
	movq	-48(%rbp), %rax
	movzbl	4(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	je	.LBB17_100
# BB#99:                                # %cond.true.293
                                        #   in Loop: Header=BB17_81 Depth=1
	xorl	%eax, %eax
	movl	%eax, -232(%rbp)        # 4-byte Spill
	jmp	.LBB17_103
.LBB17_100:                             # %cond.false.294
                                        #   in Loop: Header=BB17_81 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	movzbl	(%rdx), %eax
	cmpl	$248, %eax
	movb	%cl, -233(%rbp)         # 1-byte Spill
	jne	.LBB17_102
# BB#101:                               # %land.rhs.299
                                        #   in Loop: Header=BB17_81 Depth=1
	movq	-48(%rbp), %rax
	movzbl	1(%rax), %ecx
	andl	$240, %ecx
	cmpl	$128, %ecx
	sete	%dl
	movb	%dl, -233(%rbp)         # 1-byte Spill
.LBB17_102:                             # %land.end.305
                                        #   in Loop: Header=BB17_81 Depth=1
	movb	-233(%rbp), %al         # 1-byte Reload
	xorl	%ecx, %ecx
	movl	$5, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -232(%rbp)        # 4-byte Spill
.LBB17_103:                             # %cond.end.307
                                        #   in Loop: Header=BB17_81 Depth=1
	movl	-232(%rbp), %eax        # 4-byte Reload
	movl	%eax, -228(%rbp)        # 4-byte Spill
.LBB17_104:                             # %cond.end.309
                                        #   in Loop: Header=BB17_81 Depth=1
	movl	-228(%rbp), %eax        # 4-byte Reload
	movl	%eax, -224(%rbp)        # 4-byte Spill
.LBB17_105:                             # %cond.end.311
                                        #   in Loop: Header=BB17_81 Depth=1
	movl	-224(%rbp), %eax        # 4-byte Reload
	movl	%eax, -220(%rbp)        # 4-byte Spill
.LBB17_106:                             # %cond.end.313
                                        #   in Loop: Header=BB17_81 Depth=1
	movl	-220(%rbp), %eax        # 4-byte Reload
	movl	%eax, -216(%rbp)        # 4-byte Spill
.LBB17_107:                             # %cond.end.315
                                        #   in Loop: Header=BB17_81 Depth=1
	movl	-216(%rbp), %eax        # 4-byte Reload
	movl	%eax, -212(%rbp)        # 4-byte Spill
.LBB17_108:                             # %cond.end.317
                                        #   in Loop: Header=BB17_81 Depth=1
	movl	-212(%rbp), %eax        # 4-byte Reload
	movl	%eax, -208(%rbp)        # 4-byte Spill
.LBB17_109:                             # %cond.end.319
                                        #   in Loop: Header=BB17_81 Depth=1
	movl	-208(%rbp), %eax        # 4-byte Reload
	movl	%eax, -204(%rbp)        # 4-byte Spill
.LBB17_110:                             # %cond.end.321
                                        #   in Loop: Header=BB17_81 Depth=1
	movl	-204(%rbp), %eax        # 4-byte Reload
	movl	%eax, -76(%rbp)
	cmpl	$0, %eax
	jle	.LBB17_115
# BB#111:                               # %if.then.325
                                        #   in Loop: Header=BB17_81 Depth=1
	jmp	.LBB17_112
.LBB17_112:                             # %while.cond.326
                                        #   Parent Loop BB17_81 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-76(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -76(%rbp)
	cmpl	$0, %eax
	je	.LBB17_114
# BB#113:                               # %while.body.328
                                        #   in Loop: Header=BB17_112 Depth=2
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	movb	(%rax), %dl
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -64(%rbp)
	movb	%dl, (%rax)
	jmp	.LBB17_112
.LBB17_114:                             # %while.end.330
                                        #   in Loop: Header=BB17_81 Depth=1
	jmp	.LBB17_131
.LBB17_115:                             # %if.else
                                        #   in Loop: Header=BB17_81 Depth=1
	movb	$1, %al
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -48(%rbp)
	movzbl	(%rcx), %esi
	movl	%esi, -100(%rbp)
	movl	-100(%rbp), %esi
	addl	$4194048, %esi          # imm = 0x3FFF00
	movl	%esi, -100(%rbp)
	testb	$1, %al
	jne	.LBB17_116
	jmp	.LBB17_117
.LBB17_116:                             # %cond.true.333
                                        #   in Loop: Header=BB17_81 Depth=1
	movl	-100(%rbp), %eax
	addl	$0, %eax
	cmpl	$127, %eax
	jbe	.LBB17_118
	jmp	.LBB17_119
.LBB17_117:                             # %cond.false.337
                                        #   in Loop: Header=BB17_81 Depth=1
	movslq	-100(%rbp), %rax
	addq	$0, %rax
	cmpq	$127, %rax
	ja	.LBB17_119
.LBB17_118:                             # %cond.true.342
                                        #   in Loop: Header=BB17_81 Depth=1
	movl	$1, %eax
	movl	-100(%rbp), %ecx
	movb	%cl, %dl
	movq	-64(%rbp), %rsi
	movb	%dl, (%rsi)
	movl	%eax, -240(%rbp)        # 4-byte Spill
	jmp	.LBB17_130
.LBB17_119:                             # %cond.false.345
                                        #   in Loop: Header=BB17_81 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB17_120
	jmp	.LBB17_121
.LBB17_120:                             # %cond.true.346
                                        #   in Loop: Header=BB17_81 Depth=1
	movl	-100(%rbp), %eax
	addl	$0, %eax
	cmpl	$2047, %eax             # imm = 0x7FF
	jbe	.LBB17_122
	jmp	.LBB17_123
.LBB17_121:                             # %cond.false.350
                                        #   in Loop: Header=BB17_81 Depth=1
	movslq	-100(%rbp), %rax
	addq	$0, %rax
	cmpq	$2047, %rax             # imm = 0x7FF
	ja	.LBB17_123
.LBB17_122:                             # %cond.true.355
                                        #   in Loop: Header=BB17_81 Depth=1
	movl	$2, %eax
	movl	-100(%rbp), %ecx
	sarl	$6, %ecx
	orl	$192, %ecx
	movb	%cl, %dl
	movq	-64(%rbp), %rsi
	movb	%dl, (%rsi)
	movl	-100(%rbp), %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movq	-64(%rbp), %rsi
	movb	%dl, 1(%rsi)
	movl	%eax, -244(%rbp)        # 4-byte Spill
	jmp	.LBB17_129
.LBB17_123:                             # %cond.false.362
                                        #   in Loop: Header=BB17_81 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB17_124
	jmp	.LBB17_125
.LBB17_124:                             # %cond.true.363
                                        #   in Loop: Header=BB17_81 Depth=1
	movl	-100(%rbp), %eax
	addl	$0, %eax
	cmpl	$65535, %eax            # imm = 0xFFFF
	jbe	.LBB17_126
	jmp	.LBB17_127
.LBB17_125:                             # %cond.false.367
                                        #   in Loop: Header=BB17_81 Depth=1
	movslq	-100(%rbp), %rax
	addq	$0, %rax
	cmpq	$65535, %rax            # imm = 0xFFFF
	ja	.LBB17_127
.LBB17_126:                             # %cond.true.372
                                        #   in Loop: Header=BB17_81 Depth=1
	movl	$3, %eax
	movl	-100(%rbp), %ecx
	sarl	$12, %ecx
	orl	$224, %ecx
	movb	%cl, %dl
	movq	-64(%rbp), %rsi
	movb	%dl, (%rsi)
	movl	-100(%rbp), %ecx
	sarl	$6, %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movq	-64(%rbp), %rsi
	movb	%dl, 1(%rsi)
	movl	-100(%rbp), %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movq	-64(%rbp), %rsi
	movb	%dl, 2(%rsi)
	movl	%eax, -248(%rbp)        # 4-byte Spill
	jmp	.LBB17_128
.LBB17_127:                             # %cond.false.386
                                        #   in Loop: Header=BB17_81 Depth=1
	movl	-100(%rbp), %edi
	movq	-64(%rbp), %rsi
	callq	char_string
	movl	%eax, -248(%rbp)        # 4-byte Spill
.LBB17_128:                             # %cond.end.387
                                        #   in Loop: Header=BB17_81 Depth=1
	movl	-248(%rbp), %eax        # 4-byte Reload
	movl	%eax, -244(%rbp)        # 4-byte Spill
.LBB17_129:                             # %cond.end.389
                                        #   in Loop: Header=BB17_81 Depth=1
	movl	-244(%rbp), %eax        # 4-byte Reload
	movl	%eax, -240(%rbp)        # 4-byte Spill
.LBB17_130:                             # %cond.end.391
                                        #   in Loop: Header=BB17_81 Depth=1
	movl	-240(%rbp), %eax        # 4-byte Reload
	movq	-64(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -64(%rbp)
.LBB17_131:                             # %if.end.395
                                        #   in Loop: Header=BB17_81 Depth=1
	jmp	.LBB17_81
.LBB17_132:                             # %while.end.396
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
.LBB17_133:                             # %if.end.398
	jmp	.LBB17_134
.LBB17_134:                             # %while.cond.399
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_172 Depth 2
	movq	-48(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jae	.LBB17_192
# BB#135:                               # %while.body.402
                                        #   in Loop: Header=BB17_134 Depth=1
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$192, %ecx
	je	.LBB17_175
# BB#136:                               # %lor.lhs.false.406
                                        #   in Loop: Header=BB17_134 Depth=1
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$193, %ecx
	je	.LBB17_175
# BB#137:                               # %land.lhs.true.410
                                        #   in Loop: Header=BB17_134 Depth=1
	movq	-48(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jb	.LBB17_139
# BB#138:                               # %cond.true.413
                                        #   in Loop: Header=BB17_134 Depth=1
	xorl	%eax, %eax
	movl	%eax, -252(%rbp)        # 4-byte Spill
	jmp	.LBB17_170
.LBB17_139:                             # %cond.false.414
                                        #   in Loop: Header=BB17_134 Depth=1
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB17_141
# BB#140:                               # %cond.true.419
                                        #   in Loop: Header=BB17_134 Depth=1
	movl	$1, %eax
	movl	%eax, -256(%rbp)        # 4-byte Spill
	jmp	.LBB17_169
.LBB17_141:                             # %cond.false.420
                                        #   in Loop: Header=BB17_134 Depth=1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	cmpq	-56(%rbp), %rax
	jae	.LBB17_143
# BB#142:                               # %lor.lhs.false.424
                                        #   in Loop: Header=BB17_134 Depth=1
	movq	-48(%rbp), %rax
	movzbl	1(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	je	.LBB17_144
.LBB17_143:                             # %cond.true.430
                                        #   in Loop: Header=BB17_134 Depth=1
	xorl	%eax, %eax
	movl	%eax, -260(%rbp)        # 4-byte Spill
	jmp	.LBB17_168
.LBB17_144:                             # %cond.false.431
                                        #   in Loop: Header=BB17_134 Depth=1
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$224, %ecx
	cmpl	$192, %ecx
	jne	.LBB17_146
# BB#145:                               # %cond.true.437
                                        #   in Loop: Header=BB17_134 Depth=1
	movl	$2, %eax
	movl	%eax, -264(%rbp)        # 4-byte Spill
	jmp	.LBB17_167
.LBB17_146:                             # %cond.false.438
                                        #   in Loop: Header=BB17_134 Depth=1
	movq	-48(%rbp), %rax
	addq	$2, %rax
	cmpq	-56(%rbp), %rax
	jae	.LBB17_148
# BB#147:                               # %lor.lhs.false.442
                                        #   in Loop: Header=BB17_134 Depth=1
	movq	-48(%rbp), %rax
	movzbl	2(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	je	.LBB17_149
.LBB17_148:                             # %cond.true.448
                                        #   in Loop: Header=BB17_134 Depth=1
	xorl	%eax, %eax
	movl	%eax, -268(%rbp)        # 4-byte Spill
	jmp	.LBB17_166
.LBB17_149:                             # %cond.false.449
                                        #   in Loop: Header=BB17_134 Depth=1
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$240, %ecx
	cmpl	$224, %ecx
	jne	.LBB17_151
# BB#150:                               # %cond.true.455
                                        #   in Loop: Header=BB17_134 Depth=1
	movl	$3, %eax
	movl	%eax, -272(%rbp)        # 4-byte Spill
	jmp	.LBB17_165
.LBB17_151:                             # %cond.false.456
                                        #   in Loop: Header=BB17_134 Depth=1
	movq	-48(%rbp), %rax
	addq	$3, %rax
	cmpq	-56(%rbp), %rax
	jae	.LBB17_153
# BB#152:                               # %lor.lhs.false.460
                                        #   in Loop: Header=BB17_134 Depth=1
	movq	-48(%rbp), %rax
	movzbl	3(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	je	.LBB17_154
.LBB17_153:                             # %cond.true.466
                                        #   in Loop: Header=BB17_134 Depth=1
	xorl	%eax, %eax
	movl	%eax, -276(%rbp)        # 4-byte Spill
	jmp	.LBB17_164
.LBB17_154:                             # %cond.false.467
                                        #   in Loop: Header=BB17_134 Depth=1
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$248, %ecx
	cmpl	$240, %ecx
	jne	.LBB17_156
# BB#155:                               # %cond.true.473
                                        #   in Loop: Header=BB17_134 Depth=1
	movl	$4, %eax
	movl	%eax, -280(%rbp)        # 4-byte Spill
	jmp	.LBB17_163
.LBB17_156:                             # %cond.false.474
                                        #   in Loop: Header=BB17_134 Depth=1
	movq	-48(%rbp), %rax
	addq	$4, %rax
	cmpq	-56(%rbp), %rax
	jae	.LBB17_158
# BB#157:                               # %lor.lhs.false.478
                                        #   in Loop: Header=BB17_134 Depth=1
	movq	-48(%rbp), %rax
	movzbl	4(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	je	.LBB17_159
.LBB17_158:                             # %cond.true.484
                                        #   in Loop: Header=BB17_134 Depth=1
	xorl	%eax, %eax
	movl	%eax, -284(%rbp)        # 4-byte Spill
	jmp	.LBB17_162
.LBB17_159:                             # %cond.false.485
                                        #   in Loop: Header=BB17_134 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	movzbl	(%rdx), %eax
	cmpl	$248, %eax
	movb	%cl, -285(%rbp)         # 1-byte Spill
	jne	.LBB17_161
# BB#160:                               # %land.rhs.490
                                        #   in Loop: Header=BB17_134 Depth=1
	movq	-48(%rbp), %rax
	movzbl	1(%rax), %ecx
	andl	$240, %ecx
	cmpl	$128, %ecx
	sete	%dl
	movb	%dl, -285(%rbp)         # 1-byte Spill
.LBB17_161:                             # %land.end.496
                                        #   in Loop: Header=BB17_134 Depth=1
	movb	-285(%rbp), %al         # 1-byte Reload
	xorl	%ecx, %ecx
	movl	$5, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -284(%rbp)        # 4-byte Spill
.LBB17_162:                             # %cond.end.498
                                        #   in Loop: Header=BB17_134 Depth=1
	movl	-284(%rbp), %eax        # 4-byte Reload
	movl	%eax, -280(%rbp)        # 4-byte Spill
.LBB17_163:                             # %cond.end.500
                                        #   in Loop: Header=BB17_134 Depth=1
	movl	-280(%rbp), %eax        # 4-byte Reload
	movl	%eax, -276(%rbp)        # 4-byte Spill
.LBB17_164:                             # %cond.end.502
                                        #   in Loop: Header=BB17_134 Depth=1
	movl	-276(%rbp), %eax        # 4-byte Reload
	movl	%eax, -272(%rbp)        # 4-byte Spill
.LBB17_165:                             # %cond.end.504
                                        #   in Loop: Header=BB17_134 Depth=1
	movl	-272(%rbp), %eax        # 4-byte Reload
	movl	%eax, -268(%rbp)        # 4-byte Spill
.LBB17_166:                             # %cond.end.506
                                        #   in Loop: Header=BB17_134 Depth=1
	movl	-268(%rbp), %eax        # 4-byte Reload
	movl	%eax, -264(%rbp)        # 4-byte Spill
.LBB17_167:                             # %cond.end.508
                                        #   in Loop: Header=BB17_134 Depth=1
	movl	-264(%rbp), %eax        # 4-byte Reload
	movl	%eax, -260(%rbp)        # 4-byte Spill
.LBB17_168:                             # %cond.end.510
                                        #   in Loop: Header=BB17_134 Depth=1
	movl	-260(%rbp), %eax        # 4-byte Reload
	movl	%eax, -256(%rbp)        # 4-byte Spill
.LBB17_169:                             # %cond.end.512
                                        #   in Loop: Header=BB17_134 Depth=1
	movl	-256(%rbp), %eax        # 4-byte Reload
	movl	%eax, -252(%rbp)        # 4-byte Spill
.LBB17_170:                             # %cond.end.514
                                        #   in Loop: Header=BB17_134 Depth=1
	movl	-252(%rbp), %eax        # 4-byte Reload
	movl	%eax, -76(%rbp)
	cmpl	$0, %eax
	jle	.LBB17_175
# BB#171:                               # %if.then.518
                                        #   in Loop: Header=BB17_134 Depth=1
	jmp	.LBB17_172
.LBB17_172:                             # %while.cond.519
                                        #   Parent Loop BB17_134 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-76(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -76(%rbp)
	cmpl	$0, %eax
	je	.LBB17_174
# BB#173:                               # %while.body.522
                                        #   in Loop: Header=BB17_172 Depth=2
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	movb	(%rax), %dl
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -64(%rbp)
	movb	%dl, (%rax)
	jmp	.LBB17_172
.LBB17_174:                             # %while.end.525
                                        #   in Loop: Header=BB17_134 Depth=1
	jmp	.LBB17_191
.LBB17_175:                             # %if.else.526
                                        #   in Loop: Header=BB17_134 Depth=1
	movb	$1, %al
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -48(%rbp)
	movzbl	(%rcx), %esi
	movl	%esi, -104(%rbp)
	movl	-104(%rbp), %esi
	addl	$4194048, %esi          # imm = 0x3FFF00
	movl	%esi, -104(%rbp)
	testb	$1, %al
	jne	.LBB17_176
	jmp	.LBB17_177
.LBB17_176:                             # %cond.true.531
                                        #   in Loop: Header=BB17_134 Depth=1
	movl	-104(%rbp), %eax
	addl	$0, %eax
	cmpl	$127, %eax
	jbe	.LBB17_178
	jmp	.LBB17_179
.LBB17_177:                             # %cond.false.535
                                        #   in Loop: Header=BB17_134 Depth=1
	movslq	-104(%rbp), %rax
	addq	$0, %rax
	cmpq	$127, %rax
	ja	.LBB17_179
.LBB17_178:                             # %cond.true.540
                                        #   in Loop: Header=BB17_134 Depth=1
	movl	$1, %eax
	movl	-104(%rbp), %ecx
	movb	%cl, %dl
	movq	-64(%rbp), %rsi
	movb	%dl, (%rsi)
	movl	%eax, -292(%rbp)        # 4-byte Spill
	jmp	.LBB17_190
.LBB17_179:                             # %cond.false.543
                                        #   in Loop: Header=BB17_134 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB17_180
	jmp	.LBB17_181
.LBB17_180:                             # %cond.true.544
                                        #   in Loop: Header=BB17_134 Depth=1
	movl	-104(%rbp), %eax
	addl	$0, %eax
	cmpl	$2047, %eax             # imm = 0x7FF
	jbe	.LBB17_182
	jmp	.LBB17_183
.LBB17_181:                             # %cond.false.548
                                        #   in Loop: Header=BB17_134 Depth=1
	movslq	-104(%rbp), %rax
	addq	$0, %rax
	cmpq	$2047, %rax             # imm = 0x7FF
	ja	.LBB17_183
.LBB17_182:                             # %cond.true.553
                                        #   in Loop: Header=BB17_134 Depth=1
	movl	$2, %eax
	movl	-104(%rbp), %ecx
	sarl	$6, %ecx
	orl	$192, %ecx
	movb	%cl, %dl
	movq	-64(%rbp), %rsi
	movb	%dl, (%rsi)
	movl	-104(%rbp), %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movq	-64(%rbp), %rsi
	movb	%dl, 1(%rsi)
	movl	%eax, -296(%rbp)        # 4-byte Spill
	jmp	.LBB17_189
.LBB17_183:                             # %cond.false.562
                                        #   in Loop: Header=BB17_134 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB17_184
	jmp	.LBB17_185
.LBB17_184:                             # %cond.true.563
                                        #   in Loop: Header=BB17_134 Depth=1
	movl	-104(%rbp), %eax
	addl	$0, %eax
	cmpl	$65535, %eax            # imm = 0xFFFF
	jbe	.LBB17_186
	jmp	.LBB17_187
.LBB17_185:                             # %cond.false.567
                                        #   in Loop: Header=BB17_134 Depth=1
	movslq	-104(%rbp), %rax
	addq	$0, %rax
	cmpq	$65535, %rax            # imm = 0xFFFF
	ja	.LBB17_187
.LBB17_186:                             # %cond.true.572
                                        #   in Loop: Header=BB17_134 Depth=1
	movl	$3, %eax
	movl	-104(%rbp), %ecx
	sarl	$12, %ecx
	orl	$224, %ecx
	movb	%cl, %dl
	movq	-64(%rbp), %rsi
	movb	%dl, (%rsi)
	movl	-104(%rbp), %ecx
	sarl	$6, %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movq	-64(%rbp), %rsi
	movb	%dl, 1(%rsi)
	movl	-104(%rbp), %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movq	-64(%rbp), %rsi
	movb	%dl, 2(%rsi)
	movl	%eax, -300(%rbp)        # 4-byte Spill
	jmp	.LBB17_188
.LBB17_187:                             # %cond.false.586
                                        #   in Loop: Header=BB17_134 Depth=1
	movl	-104(%rbp), %edi
	movq	-64(%rbp), %rsi
	callq	char_string
	movl	%eax, -300(%rbp)        # 4-byte Spill
.LBB17_188:                             # %cond.end.588
                                        #   in Loop: Header=BB17_134 Depth=1
	movl	-300(%rbp), %eax        # 4-byte Reload
	movl	%eax, -296(%rbp)        # 4-byte Spill
.LBB17_189:                             # %cond.end.590
                                        #   in Loop: Header=BB17_134 Depth=1
	movl	-296(%rbp), %eax        # 4-byte Reload
	movl	%eax, -292(%rbp)        # 4-byte Spill
.LBB17_190:                             # %cond.end.592
                                        #   in Loop: Header=BB17_134 Depth=1
	movl	-292(%rbp), %eax        # 4-byte Reload
	movq	-64(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -64(%rbp)
.LBB17_191:                             # %if.end.596
                                        #   in Loop: Header=BB17_134 Depth=1
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB17_134
.LBB17_192:                             # %while.end.598
	cmpq	$0, -40(%rbp)
	je	.LBB17_194
# BB#193:                               # %if.then.600
	movq	-72(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB17_194:                             # %if.end.601
	movq	-64(%rbp), %rax
	movq	-16(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -8(%rbp)
.LBB17_195:                             # %return
	movq	-8(%rbp), %rax
	addq	$304, %rsp              # imm = 0x130
	popq	%rbp
	retq
.Lfunc_end17:
	.size	str_as_multibyte, .Lfunc_end17-str_as_multibyte
	.cfi_endproc

	.globl	count_size_as_multibyte
	.align	16, 0x90
	.type	count_size_as_multibyte,@function
count_size_as_multibyte:                # @count_size_as_multibyte
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
.Ltmp55:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp56:
	.cfi_def_cfa_register %rbp
	subq	$432, %rsp              # imm = 0x1B0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	addq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	$0, -32(%rbp)
.LBB18_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jae	.LBB18_304
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB18_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	$2, %eax
	movl	$1, %edx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi), %edi
	cmpl	$128, %edi
	cmovll	%edx, %eax
	movl	%eax, -36(%rbp)
	testb	$1, %cl
	jne	.LBB18_3
	jmp	.LBB18_62
.LBB18_3:                               # %cond.true
                                        #   in Loop: Header=BB18_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB18_4
	jmp	.LBB18_33
.LBB18_4:                               # %cond.true.3
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-36(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	imull	$0, %eax, %eax
	movq	-32(%rbp), %rdx
	movb	%dl, %cl
	movsbl	%cl, %esi
	addl	%esi, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB18_6
# BB#5:                                 # %cond.true.11
                                        #   in Loop: Header=BB18_1 Depth=1
	xorl	%eax, %eax
	movl	-36(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	imull	$0, %ecx, %ecx
	movq	-32(%rbp), %rsi
	movb	%sil, %dl
	movsbl	%dl, %edi
	addl	%edi, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	movl	-36(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	imull	$0, %ecx, %ecx
	movq	-32(%rbp), %rsi
	movb	%sil, %dl
	movsbl	%dl, %edi
	addl	%edi, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
	jmp	.LBB18_7
.LBB18_6:                               # %cond.false
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-36(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	imull	$0, %eax, %eax
	movq	-32(%rbp), %rdx
	movb	%dl, %cl
	movsbl	%cl, %esi
	addl	%esi, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
.LBB18_7:                               # %cond.end
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-40(%rbp), %eax         # 4-byte Reload
	cmpl	$0, %eax
	jge	.LBB18_17
# BB#8:                                 # %cond.true.46
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-36(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	cmpl	$0, %eax
	jge	.LBB18_13
# BB#9:                                 # %cond.true.51
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movl	-36(%rbp), %esi
	movb	%sil, %cl
	movsbl	%cl, %esi
	imull	$0, %esi, %esi
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -44(%rbp)         # 4-byte Spill
	jge	.LBB18_11
# BB#10:                                # %cond.true.64
                                        #   in Loop: Header=BB18_1 Depth=1
	xorl	%eax, %eax
	movl	-36(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	imull	$0, %ecx, %ecx
	movq	-32(%rbp), %rsi
	movb	%sil, %dl
	movsbl	%dl, %edi
	addl	%edi, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	movl	-36(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	imull	$0, %ecx, %ecx
	movq	-32(%rbp), %rsi
	movb	%sil, %dl
	movsbl	%dl, %edi
	addl	%edi, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	jmp	.LBB18_12
.LBB18_11:                              # %cond.false.90
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-36(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	imull	$0, %eax, %eax
	movq	-32(%rbp), %rdx
	movb	%dl, %cl
	movsbl	%cl, %esi
	addl	%esi, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
.LBB18_12:                              # %cond.end.99
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-48(%rbp), %eax         # 4-byte Reload
	movl	-36(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	subl	%ecx, %eax
	movl	-44(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB18_25
	jmp	.LBB18_22
.LBB18_13:                              # %cond.false.106
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-36(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	imull	$0, %eax, %eax
	movq	-32(%rbp), %rdx
	movb	%dl, %cl
	movsbl	%cl, %esi
	addl	%esi, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB18_15
# BB#14:                                # %cond.true.117
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-36(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	imull	$0, %eax, %eax
	movq	-32(%rbp), %rdx
	movb	%dl, %cl
	movsbl	%cl, %esi
	addl	%esi, %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB18_16
.LBB18_15:                              # %cond.false.130
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-36(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	imull	$0, %eax, %eax
	movq	-32(%rbp), %rdx
	movb	%dl, %cl
	movsbl	%cl, %esi
	addl	%esi, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB18_16:                              # %cond.end.139
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-52(%rbp), %eax         # 4-byte Reload
	movl	-36(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	subl	%ecx, %eax
	movq	-32(%rbp), %rsi
	movb	%sil, %dl
	movsbl	%dl, %ecx
	cmpl	%ecx, %eax
	jl	.LBB18_25
	jmp	.LBB18_22
.LBB18_17:                              # %cond.false.148
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB18_19
# BB#18:                                # %cond.true.153
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-36(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	movq	-32(%rbp), %rdx
	movb	%dl, %cl
	movsbl	%cl, %esi
	movl	-36(%rbp), %edi
	movb	%dil, %cl
	movsbl	%cl, %edi
	addl	%edi, %esi
	cmpl	%esi, %eax
	jle	.LBB18_25
	jmp	.LBB18_22
.LBB18_19:                              # %cond.false.163
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-36(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	cmpl	$0, %eax
	jge	.LBB18_21
# BB#20:                                # %cond.true.168
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	movl	-36(%rbp), %edi
	movb	%dil, %cl
	movsbl	%cl, %edi
	addl	%edi, %esi
	cmpl	%esi, %edx
	jle	.LBB18_25
	jmp	.LBB18_22
.LBB18_21:                              # %cond.false.178
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movl	-36(%rbp), %esi
	movb	%sil, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	movl	-36(%rbp), %esi
	movb	%sil, %cl
	movsbl	%cl, %esi
	cmpl	%esi, %edx
	jl	.LBB18_25
.LBB18_22:                              # %lor.lhs.false
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movl	-36(%rbp), %esi
	movb	%sil, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB18_24
# BB#23:                                # %land.lhs.true
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movl	-36(%rbp), %esi
	movb	%sil, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	cmpl	$-128, %edx
	jl	.LBB18_25
.LBB18_24:                              # %lor.lhs.false.204
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	$127, %eax
	movq	-32(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	movl	-36(%rbp), %edi
	movb	%dil, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
	cmpl	%esi, %eax
	jge	.LBB18_29
.LBB18_25:                              # %cond.true.212
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movl	-36(%rbp), %esi
	movb	%sil, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	cmpl	$127, %edx
	jg	.LBB18_27
# BB#26:                                # %cond.true.220
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movl	-36(%rbp), %esi
	movb	%sil, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -56(%rbp)         # 4-byte Spill
	jmp	.LBB18_28
.LBB18_27:                              # %cond.false.228
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movl	-36(%rbp), %esi
	movb	%sil, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -56(%rbp)         # 4-byte Spill
.LBB18_28:                              # %cond.end.238
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-56(%rbp), %eax         # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -32(%rbp)
	testb	$1, %cl
	jne	.LBB18_301
	jmp	.LBB18_302
.LBB18_29:                              # %cond.false.241
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movl	-36(%rbp), %esi
	movb	%sil, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	cmpl	$127, %edx
	jg	.LBB18_31
# BB#30:                                # %cond.true.249
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movl	-36(%rbp), %esi
	movb	%sil, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -60(%rbp)         # 4-byte Spill
	jmp	.LBB18_32
.LBB18_31:                              # %cond.false.257
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movl	-36(%rbp), %esi
	movb	%sil, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -60(%rbp)         # 4-byte Spill
.LBB18_32:                              # %cond.end.267
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-60(%rbp), %eax         # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -32(%rbp)
	testb	$1, %dl
	jne	.LBB18_301
	jmp	.LBB18_302
.LBB18_33:                              # %cond.false.270
                                        #   in Loop: Header=BB18_1 Depth=1
	imull	$0, -36(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jge	.LBB18_35
# BB#34:                                # %cond.true.278
                                        #   in Loop: Header=BB18_1 Depth=1
	xorl	%eax, %eax
	imull	$0, -36(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	-32(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	imull	$0, -36(%rbp), %eax
	movslq	%eax, %rdi
	addq	-32(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	jmp	.LBB18_36
.LBB18_35:                              # %cond.false.299
                                        #   in Loop: Header=BB18_1 Depth=1
	imull	$0, -36(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
.LBB18_36:                              # %cond.end.305
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB18_46
# BB#37:                                # %cond.true.309
                                        #   in Loop: Header=BB18_1 Depth=1
	cmpl	$0, -36(%rbp)
	jge	.LBB18_42
# BB#38:                                # %cond.true.312
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	imull	$0, -36(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	-32(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	subq	$1, %rdx
	cmpq	$0, %rdx
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jge	.LBB18_40
# BB#39:                                # %cond.true.320
                                        #   in Loop: Header=BB18_1 Depth=1
	xorl	%eax, %eax
	imull	$0, -36(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	-32(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	imull	$0, -36(%rbp), %eax
	movslq	%eax, %rdi
	addq	-32(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	jmp	.LBB18_41
.LBB18_40:                              # %cond.false.341
                                        #   in Loop: Header=BB18_1 Depth=1
	imull	$0, -36(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
.LBB18_41:                              # %cond.end.347
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-88(%rbp), %rax         # 8-byte Reload
	movslq	-36(%rbp), %rcx
	subq	%rcx, %rax
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB18_54
	jmp	.LBB18_51
.LBB18_42:                              # %cond.false.353
                                        #   in Loop: Header=BB18_1 Depth=1
	imull	$0, -36(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jge	.LBB18_44
# BB#43:                                # %cond.true.361
                                        #   in Loop: Header=BB18_1 Depth=1
	imull	$0, -36(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$1, %rcx
	shlq	$62, %rcx
	subq	$1, %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB18_45
.LBB18_44:                              # %cond.false.371
                                        #   in Loop: Header=BB18_1 Depth=1
	imull	$0, -36(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
.LBB18_45:                              # %cond.end.377
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movslq	-36(%rbp), %rcx
	subq	%rcx, %rax
	cmpq	-32(%rbp), %rax
	jl	.LBB18_54
	jmp	.LBB18_51
.LBB18_46:                              # %cond.false.383
                                        #   in Loop: Header=BB18_1 Depth=1
	cmpq	$0, -32(%rbp)
	jge	.LBB18_48
# BB#47:                                # %cond.true.386
                                        #   in Loop: Header=BB18_1 Depth=1
	movslq	-36(%rbp), %rax
	movq	-32(%rbp), %rcx
	movslq	-36(%rbp), %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jle	.LBB18_54
	jmp	.LBB18_51
.LBB18_48:                              # %cond.false.392
                                        #   in Loop: Header=BB18_1 Depth=1
	cmpl	$0, -36(%rbp)
	jge	.LBB18_50
# BB#49:                                # %cond.true.395
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movq	-32(%rbp), %rcx
	movslq	-36(%rbp), %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jle	.LBB18_54
	jmp	.LBB18_51
.LBB18_50:                              # %cond.false.400
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	addq	%rcx, %rax
	movslq	-36(%rbp), %rcx
	cmpq	%rcx, %rax
	jl	.LBB18_54
.LBB18_51:                              # %lor.lhs.false.406
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB18_53
# BB#52:                                # %land.lhs.true.413
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	addq	%rcx, %rax
	cmpq	$-128, %rax
	jl	.LBB18_54
.LBB18_53:                              # %lor.lhs.false.418
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	$127, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movslq	-36(%rbp), %rsi
	addq	%rsi, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB18_58
.LBB18_54:                              # %cond.true.423
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movl	-36(%rbp), %esi
	movb	%sil, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	cmpl	$127, %edx
	jg	.LBB18_56
# BB#55:                                # %cond.true.431
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movl	-36(%rbp), %esi
	movb	%sil, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -100(%rbp)        # 4-byte Spill
	jmp	.LBB18_57
.LBB18_56:                              # %cond.false.439
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movl	-36(%rbp), %esi
	movb	%sil, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -100(%rbp)        # 4-byte Spill
.LBB18_57:                              # %cond.end.449
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-100(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -32(%rbp)
	testb	$1, %cl
	jne	.LBB18_301
	jmp	.LBB18_302
.LBB18_58:                              # %cond.false.452
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movl	-36(%rbp), %esi
	movb	%sil, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	cmpl	$127, %edx
	jg	.LBB18_60
# BB#59:                                # %cond.true.460
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movl	-36(%rbp), %esi
	movb	%sil, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -104(%rbp)        # 4-byte Spill
	jmp	.LBB18_61
.LBB18_60:                              # %cond.false.468
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movl	-36(%rbp), %esi
	movb	%sil, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -104(%rbp)        # 4-byte Spill
.LBB18_61:                              # %cond.end.478
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-104(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -32(%rbp)
	testb	$1, %dl
	jne	.LBB18_301
	jmp	.LBB18_302
.LBB18_62:                              # %cond.false.481
                                        #   in Loop: Header=BB18_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB18_63
	jmp	.LBB18_122
.LBB18_63:                              # %cond.true.482
                                        #   in Loop: Header=BB18_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB18_64
	jmp	.LBB18_93
.LBB18_64:                              # %cond.true.483
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-36(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	imull	$0, %eax, %eax
	movq	-32(%rbp), %rdx
	movw	%dx, %cx
	movswl	%cx, %esi
	addl	%esi, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB18_66
# BB#65:                                # %cond.true.494
                                        #   in Loop: Header=BB18_1 Depth=1
	xorl	%eax, %eax
	movl	-36(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	imull	$0, %ecx, %ecx
	movq	-32(%rbp), %rsi
	movw	%si, %dx
	movswl	%dx, %edi
	addl	%edi, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %ecx
	subl	%ecx, %eax
	movl	-36(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	imull	$0, %ecx, %ecx
	movq	-32(%rbp), %rsi
	movw	%si, %dx
	movswl	%dx, %edi
	addl	%edi, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB18_67
.LBB18_66:                              # %cond.false.520
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-36(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	imull	$0, %eax, %eax
	movq	-32(%rbp), %rdx
	movw	%dx, %cx
	movswl	%cx, %esi
	addl	%esi, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB18_67:                              # %cond.end.529
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-108(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jge	.LBB18_77
# BB#68:                                # %cond.true.533
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-36(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	cmpl	$0, %eax
	jge	.LBB18_73
# BB#69:                                # %cond.true.538
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movl	-36(%rbp), %esi
	movw	%si, %cx
	movswl	%cx, %esi
	imull	$0, %esi, %esi
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -112(%rbp)        # 4-byte Spill
	jge	.LBB18_71
# BB#70:                                # %cond.true.551
                                        #   in Loop: Header=BB18_1 Depth=1
	xorl	%eax, %eax
	movl	-36(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	imull	$0, %ecx, %ecx
	movq	-32(%rbp), %rsi
	movw	%si, %dx
	movswl	%dx, %edi
	addl	%edi, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %ecx
	subl	%ecx, %eax
	movl	-36(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	imull	$0, %ecx, %ecx
	movq	-32(%rbp), %rsi
	movw	%si, %dx
	movswl	%dx, %edi
	addl	%edi, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB18_72
.LBB18_71:                              # %cond.false.577
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-36(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	imull	$0, %eax, %eax
	movq	-32(%rbp), %rdx
	movw	%dx, %cx
	movswl	%cx, %esi
	addl	%esi, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB18_72:                              # %cond.end.586
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-116(%rbp), %eax        # 4-byte Reload
	movl	-36(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	subl	%ecx, %eax
	movl	-112(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB18_85
	jmp	.LBB18_82
.LBB18_73:                              # %cond.false.593
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-36(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	imull	$0, %eax, %eax
	movq	-32(%rbp), %rdx
	movw	%dx, %cx
	movswl	%cx, %esi
	addl	%esi, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB18_75
# BB#74:                                # %cond.true.604
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-36(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	imull	$0, %eax, %eax
	movq	-32(%rbp), %rdx
	movw	%dx, %cx
	movswl	%cx, %esi
	addl	%esi, %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB18_76
.LBB18_75:                              # %cond.false.617
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-36(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	imull	$0, %eax, %eax
	movq	-32(%rbp), %rdx
	movw	%dx, %cx
	movswl	%cx, %esi
	addl	%esi, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB18_76:                              # %cond.end.626
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-120(%rbp), %eax        # 4-byte Reload
	movl	-36(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	subl	%ecx, %eax
	movq	-32(%rbp), %rsi
	movw	%si, %dx
	movswl	%dx, %ecx
	cmpl	%ecx, %eax
	jl	.LBB18_85
	jmp	.LBB18_82
.LBB18_77:                              # %cond.false.635
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB18_79
# BB#78:                                # %cond.true.640
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-36(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	movq	-32(%rbp), %rdx
	movw	%dx, %cx
	movswl	%cx, %esi
	movl	-36(%rbp), %edi
	movw	%di, %cx
	movswl	%cx, %edi
	addl	%edi, %esi
	cmpl	%esi, %eax
	jle	.LBB18_85
	jmp	.LBB18_82
.LBB18_79:                              # %cond.false.650
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-36(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	cmpl	$0, %eax
	jge	.LBB18_81
# BB#80:                                # %cond.true.655
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	movl	-36(%rbp), %edi
	movw	%di, %cx
	movswl	%cx, %edi
	addl	%edi, %esi
	cmpl	%esi, %edx
	jle	.LBB18_85
	jmp	.LBB18_82
.LBB18_81:                              # %cond.false.665
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movl	-36(%rbp), %esi
	movw	%si, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	movl	-36(%rbp), %esi
	movw	%si, %cx
	movswl	%cx, %esi
	cmpl	%esi, %edx
	jl	.LBB18_85
.LBB18_82:                              # %lor.lhs.false.675
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movl	-36(%rbp), %esi
	movw	%si, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB18_84
# BB#83:                                # %land.lhs.true.685
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movl	-36(%rbp), %esi
	movw	%si, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	cmpl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB18_85
.LBB18_84:                              # %lor.lhs.false.693
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	$32767, %eax            # imm = 0x7FFF
	movq	-32(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	movl	-36(%rbp), %edi
	movw	%di, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	cmpl	%esi, %eax
	jge	.LBB18_89
.LBB18_85:                              # %cond.true.701
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movl	-36(%rbp), %esi
	movw	%si, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB18_87
# BB#86:                                # %cond.true.709
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movl	-36(%rbp), %esi
	movw	%si, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -124(%rbp)        # 4-byte Spill
	jmp	.LBB18_88
.LBB18_87:                              # %cond.false.717
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movl	-36(%rbp), %esi
	movw	%si, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -124(%rbp)        # 4-byte Spill
.LBB18_88:                              # %cond.end.727
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-124(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -32(%rbp)
	testb	$1, %cl
	jne	.LBB18_301
	jmp	.LBB18_302
.LBB18_89:                              # %cond.false.730
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movl	-36(%rbp), %esi
	movw	%si, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB18_91
# BB#90:                                # %cond.true.738
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movl	-36(%rbp), %esi
	movw	%si, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -128(%rbp)        # 4-byte Spill
	jmp	.LBB18_92
.LBB18_91:                              # %cond.false.746
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movl	-36(%rbp), %esi
	movw	%si, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -128(%rbp)        # 4-byte Spill
.LBB18_92:                              # %cond.end.756
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-128(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -32(%rbp)
	testb	$1, %dl
	jne	.LBB18_301
	jmp	.LBB18_302
.LBB18_93:                              # %cond.false.759
                                        #   in Loop: Header=BB18_1 Depth=1
	imull	$0, -36(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jge	.LBB18_95
# BB#94:                                # %cond.true.767
                                        #   in Loop: Header=BB18_1 Depth=1
	xorl	%eax, %eax
	imull	$0, -36(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	-32(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	imull	$0, -36(%rbp), %eax
	movslq	%eax, %rdi
	addq	-32(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	jmp	.LBB18_96
.LBB18_95:                              # %cond.false.788
                                        #   in Loop: Header=BB18_1 Depth=1
	imull	$0, -36(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
.LBB18_96:                              # %cond.end.794
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-136(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB18_106
# BB#97:                                # %cond.true.798
                                        #   in Loop: Header=BB18_1 Depth=1
	cmpl	$0, -36(%rbp)
	jge	.LBB18_102
# BB#98:                                # %cond.true.801
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	imull	$0, -36(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	-32(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	subq	$1, %rdx
	cmpq	$0, %rdx
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jge	.LBB18_100
# BB#99:                                # %cond.true.809
                                        #   in Loop: Header=BB18_1 Depth=1
	xorl	%eax, %eax
	imull	$0, -36(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	-32(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	imull	$0, -36(%rbp), %eax
	movslq	%eax, %rdi
	addq	-32(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	jmp	.LBB18_101
.LBB18_100:                             # %cond.false.830
                                        #   in Loop: Header=BB18_1 Depth=1
	imull	$0, -36(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
.LBB18_101:                             # %cond.end.836
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-152(%rbp), %rax        # 8-byte Reload
	movslq	-36(%rbp), %rcx
	subq	%rcx, %rax
	movq	-144(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB18_114
	jmp	.LBB18_111
.LBB18_102:                             # %cond.false.842
                                        #   in Loop: Header=BB18_1 Depth=1
	imull	$0, -36(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jge	.LBB18_104
# BB#103:                               # %cond.true.850
                                        #   in Loop: Header=BB18_1 Depth=1
	imull	$0, -36(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$1, %rcx
	shlq	$62, %rcx
	subq	$1, %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	jmp	.LBB18_105
.LBB18_104:                             # %cond.false.860
                                        #   in Loop: Header=BB18_1 Depth=1
	imull	$0, -36(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
.LBB18_105:                             # %cond.end.866
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-160(%rbp), %rax        # 8-byte Reload
	movslq	-36(%rbp), %rcx
	subq	%rcx, %rax
	cmpq	-32(%rbp), %rax
	jl	.LBB18_114
	jmp	.LBB18_111
.LBB18_106:                             # %cond.false.872
                                        #   in Loop: Header=BB18_1 Depth=1
	cmpq	$0, -32(%rbp)
	jge	.LBB18_108
# BB#107:                               # %cond.true.875
                                        #   in Loop: Header=BB18_1 Depth=1
	movslq	-36(%rbp), %rax
	movq	-32(%rbp), %rcx
	movslq	-36(%rbp), %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jle	.LBB18_114
	jmp	.LBB18_111
.LBB18_108:                             # %cond.false.881
                                        #   in Loop: Header=BB18_1 Depth=1
	cmpl	$0, -36(%rbp)
	jge	.LBB18_110
# BB#109:                               # %cond.true.884
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movq	-32(%rbp), %rcx
	movslq	-36(%rbp), %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jle	.LBB18_114
	jmp	.LBB18_111
.LBB18_110:                             # %cond.false.889
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	addq	%rcx, %rax
	movslq	-36(%rbp), %rcx
	cmpq	%rcx, %rax
	jl	.LBB18_114
.LBB18_111:                             # %lor.lhs.false.895
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB18_113
# BB#112:                               # %land.lhs.true.902
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	addq	%rcx, %rax
	cmpq	$-32768, %rax           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB18_114
.LBB18_113:                             # %lor.lhs.false.907
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	$32767, %eax            # imm = 0x7FFF
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movslq	-36(%rbp), %rsi
	addq	%rsi, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB18_118
.LBB18_114:                             # %cond.true.912
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movl	-36(%rbp), %esi
	movw	%si, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB18_116
# BB#115:                               # %cond.true.920
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movl	-36(%rbp), %esi
	movw	%si, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -164(%rbp)        # 4-byte Spill
	jmp	.LBB18_117
.LBB18_116:                             # %cond.false.928
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movl	-36(%rbp), %esi
	movw	%si, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -164(%rbp)        # 4-byte Spill
.LBB18_117:                             # %cond.end.938
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-164(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -32(%rbp)
	testb	$1, %cl
	jne	.LBB18_301
	jmp	.LBB18_302
.LBB18_118:                             # %cond.false.941
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movl	-36(%rbp), %esi
	movw	%si, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB18_120
# BB#119:                               # %cond.true.949
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movl	-36(%rbp), %esi
	movw	%si, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -168(%rbp)        # 4-byte Spill
	jmp	.LBB18_121
.LBB18_120:                             # %cond.false.957
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movl	-36(%rbp), %esi
	movw	%si, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -168(%rbp)        # 4-byte Spill
.LBB18_121:                             # %cond.end.967
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-168(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -32(%rbp)
	testb	$1, %dl
	jne	.LBB18_301
	jmp	.LBB18_302
.LBB18_122:                             # %cond.false.970
                                        #   in Loop: Header=BB18_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB18_123
	jmp	.LBB18_182
.LBB18_123:                             # %cond.true.971
                                        #   in Loop: Header=BB18_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB18_124
	jmp	.LBB18_153
.LBB18_124:                             # %cond.true.972
                                        #   in Loop: Header=BB18_1 Depth=1
	imull	$0, -36(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%ecx, %edx
	addl	%edx, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB18_126
# BB#125:                               # %cond.true.980
                                        #   in Loop: Header=BB18_1 Depth=1
	xorl	%eax, %eax
	imull	$0, -36(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movl	%edx, %esi
	addl	%esi, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %ecx
	subl	%ecx, %eax
	imull	$0, -36(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movl	%edx, %esi
	addl	%esi, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -172(%rbp)        # 4-byte Spill
	jmp	.LBB18_127
.LBB18_126:                             # %cond.false.1000
                                        #   in Loop: Header=BB18_1 Depth=1
	imull	$0, -36(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%ecx, %edx
	addl	%edx, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -172(%rbp)        # 4-byte Spill
.LBB18_127:                             # %cond.end.1006
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-172(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jge	.LBB18_137
# BB#128:                               # %cond.true.1010
                                        #   in Loop: Header=BB18_1 Depth=1
	cmpl	$0, -36(%rbp)
	jge	.LBB18_133
# BB#129:                               # %cond.true.1013
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, -36(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%eax, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -176(%rbp)        # 4-byte Spill
	jge	.LBB18_131
# BB#130:                               # %cond.true.1022
                                        #   in Loop: Header=BB18_1 Depth=1
	xorl	%eax, %eax
	imull	$0, -36(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movl	%edx, %esi
	addl	%esi, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %ecx
	subl	%ecx, %eax
	imull	$0, -36(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movl	%edx, %esi
	addl	%esi, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -180(%rbp)        # 4-byte Spill
	jmp	.LBB18_132
.LBB18_131:                             # %cond.false.1042
                                        #   in Loop: Header=BB18_1 Depth=1
	imull	$0, -36(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%ecx, %edx
	addl	%edx, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -180(%rbp)        # 4-byte Spill
.LBB18_132:                             # %cond.end.1048
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-180(%rbp), %eax        # 4-byte Reload
	subl	-36(%rbp), %eax
	movl	-176(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB18_145
	jmp	.LBB18_142
.LBB18_133:                             # %cond.false.1053
                                        #   in Loop: Header=BB18_1 Depth=1
	imull	$0, -36(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%ecx, %edx
	addl	%edx, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB18_135
# BB#134:                               # %cond.true.1061
                                        #   in Loop: Header=BB18_1 Depth=1
	imull	$0, -36(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%ecx, %edx
	addl	%edx, %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -184(%rbp)        # 4-byte Spill
	jmp	.LBB18_136
.LBB18_135:                             # %cond.false.1071
                                        #   in Loop: Header=BB18_1 Depth=1
	imull	$0, -36(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%ecx, %edx
	addl	%edx, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -184(%rbp)        # 4-byte Spill
.LBB18_136:                             # %cond.end.1077
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-184(%rbp), %eax        # 4-byte Reload
	subl	-36(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%ecx, %edx
	cmpl	%edx, %eax
	jl	.LBB18_145
	jmp	.LBB18_142
.LBB18_137:                             # %cond.false.1083
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB18_139
# BB#138:                               # %cond.true.1087
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-36(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%ecx, %edx
	addl	-36(%rbp), %edx
	cmpl	%edx, %eax
	jle	.LBB18_145
	jmp	.LBB18_142
.LBB18_139:                             # %cond.false.1092
                                        #   in Loop: Header=BB18_1 Depth=1
	cmpl	$0, -36(%rbp)
	jge	.LBB18_141
# BB#140:                               # %cond.true.1095
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	movl	%eax, %edx
	addl	-36(%rbp), %edx
	cmpl	%edx, %ecx
	jle	.LBB18_145
	jmp	.LBB18_142
.LBB18_141:                             # %cond.false.1101
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	addl	-36(%rbp), %ecx
	cmpl	-36(%rbp), %ecx
	jl	.LBB18_145
.LBB18_142:                             # %lor.lhs.false.1106
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	addl	-36(%rbp), %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB18_144
# BB#143:                               # %land.lhs.true.1113
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	addl	-36(%rbp), %ecx
	cmpl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	jl	.LBB18_145
.LBB18_144:                             # %lor.lhs.false.1118
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movq	-32(%rbp), %rcx
	movl	%ecx, %edx
	addl	-36(%rbp), %edx
	cmpl	%edx, %eax
	jge	.LBB18_149
.LBB18_145:                             # %cond.true.1123
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	addl	-36(%rbp), %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB18_147
# BB#146:                               # %cond.true.1128
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	addl	-36(%rbp), %ecx
	movl	%ecx, -188(%rbp)        # 4-byte Spill
	jmp	.LBB18_148
.LBB18_147:                             # %cond.false.1131
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	addl	-36(%rbp), %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -188(%rbp)        # 4-byte Spill
.LBB18_148:                             # %cond.end.1136
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-188(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -32(%rbp)
	testb	$1, %cl
	jne	.LBB18_301
	jmp	.LBB18_302
.LBB18_149:                             # %cond.false.1139
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	addl	-36(%rbp), %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB18_151
# BB#150:                               # %cond.true.1144
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	addl	-36(%rbp), %ecx
	movl	%ecx, -192(%rbp)        # 4-byte Spill
	jmp	.LBB18_152
.LBB18_151:                             # %cond.false.1147
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	addl	-36(%rbp), %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -192(%rbp)        # 4-byte Spill
.LBB18_152:                             # %cond.end.1152
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-192(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -32(%rbp)
	testb	$1, %dl
	jne	.LBB18_301
	jmp	.LBB18_302
.LBB18_153:                             # %cond.false.1155
                                        #   in Loop: Header=BB18_1 Depth=1
	imull	$0, -36(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jge	.LBB18_155
# BB#154:                               # %cond.true.1163
                                        #   in Loop: Header=BB18_1 Depth=1
	xorl	%eax, %eax
	imull	$0, -36(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	-32(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	imull	$0, -36(%rbp), %eax
	movslq	%eax, %rdi
	addq	-32(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -200(%rbp)        # 8-byte Spill
	jmp	.LBB18_156
.LBB18_155:                             # %cond.false.1184
                                        #   in Loop: Header=BB18_1 Depth=1
	imull	$0, -36(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -200(%rbp)        # 8-byte Spill
.LBB18_156:                             # %cond.end.1190
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-200(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB18_166
# BB#157:                               # %cond.true.1194
                                        #   in Loop: Header=BB18_1 Depth=1
	cmpl	$0, -36(%rbp)
	jge	.LBB18_162
# BB#158:                               # %cond.true.1197
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	imull	$0, -36(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	-32(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	subq	$1, %rdx
	cmpq	$0, %rdx
	movq	%rax, -208(%rbp)        # 8-byte Spill
	jge	.LBB18_160
# BB#159:                               # %cond.true.1205
                                        #   in Loop: Header=BB18_1 Depth=1
	xorl	%eax, %eax
	imull	$0, -36(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	-32(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	imull	$0, -36(%rbp), %eax
	movslq	%eax, %rdi
	addq	-32(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -216(%rbp)        # 8-byte Spill
	jmp	.LBB18_161
.LBB18_160:                             # %cond.false.1226
                                        #   in Loop: Header=BB18_1 Depth=1
	imull	$0, -36(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -216(%rbp)        # 8-byte Spill
.LBB18_161:                             # %cond.end.1232
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-216(%rbp), %rax        # 8-byte Reload
	movslq	-36(%rbp), %rcx
	subq	%rcx, %rax
	movq	-208(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB18_174
	jmp	.LBB18_171
.LBB18_162:                             # %cond.false.1238
                                        #   in Loop: Header=BB18_1 Depth=1
	imull	$0, -36(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jge	.LBB18_164
# BB#163:                               # %cond.true.1246
                                        #   in Loop: Header=BB18_1 Depth=1
	imull	$0, -36(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$1, %rcx
	shlq	$62, %rcx
	subq	$1, %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	jmp	.LBB18_165
.LBB18_164:                             # %cond.false.1256
                                        #   in Loop: Header=BB18_1 Depth=1
	imull	$0, -36(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	movq	%rcx, -224(%rbp)        # 8-byte Spill
.LBB18_165:                             # %cond.end.1262
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-224(%rbp), %rax        # 8-byte Reload
	movslq	-36(%rbp), %rcx
	subq	%rcx, %rax
	cmpq	-32(%rbp), %rax
	jl	.LBB18_174
	jmp	.LBB18_171
.LBB18_166:                             # %cond.false.1268
                                        #   in Loop: Header=BB18_1 Depth=1
	cmpq	$0, -32(%rbp)
	jge	.LBB18_168
# BB#167:                               # %cond.true.1271
                                        #   in Loop: Header=BB18_1 Depth=1
	movslq	-36(%rbp), %rax
	movq	-32(%rbp), %rcx
	movslq	-36(%rbp), %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jle	.LBB18_174
	jmp	.LBB18_171
.LBB18_168:                             # %cond.false.1277
                                        #   in Loop: Header=BB18_1 Depth=1
	cmpl	$0, -36(%rbp)
	jge	.LBB18_170
# BB#169:                               # %cond.true.1280
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movq	-32(%rbp), %rcx
	movslq	-36(%rbp), %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jle	.LBB18_174
	jmp	.LBB18_171
.LBB18_170:                             # %cond.false.1285
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	addq	%rcx, %rax
	movslq	-36(%rbp), %rcx
	cmpq	%rcx, %rax
	jl	.LBB18_174
.LBB18_171:                             # %lor.lhs.false.1291
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB18_173
# BB#172:                               # %land.lhs.true.1298
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	addq	%rcx, %rax
	cmpq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	jl	.LBB18_174
.LBB18_173:                             # %lor.lhs.false.1303
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movslq	-36(%rbp), %rsi
	addq	%rsi, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB18_178
.LBB18_174:                             # %cond.true.1308
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	addl	-36(%rbp), %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB18_176
# BB#175:                               # %cond.true.1313
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	addl	-36(%rbp), %ecx
	movl	%ecx, -228(%rbp)        # 4-byte Spill
	jmp	.LBB18_177
.LBB18_176:                             # %cond.false.1316
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	addl	-36(%rbp), %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -228(%rbp)        # 4-byte Spill
.LBB18_177:                             # %cond.end.1321
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-228(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -32(%rbp)
	testb	$1, %cl
	jne	.LBB18_301
	jmp	.LBB18_302
.LBB18_178:                             # %cond.false.1324
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	addl	-36(%rbp), %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB18_180
# BB#179:                               # %cond.true.1329
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	addl	-36(%rbp), %ecx
	movl	%ecx, -232(%rbp)        # 4-byte Spill
	jmp	.LBB18_181
.LBB18_180:                             # %cond.false.1332
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	addl	-36(%rbp), %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -232(%rbp)        # 4-byte Spill
.LBB18_181:                             # %cond.end.1337
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-232(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -32(%rbp)
	testb	$1, %dl
	jne	.LBB18_301
	jmp	.LBB18_302
.LBB18_182:                             # %cond.false.1340
                                        #   in Loop: Header=BB18_1 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB18_183
	jmp	.LBB18_242
.LBB18_183:                             # %cond.true.1341
                                        #   in Loop: Header=BB18_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB18_184
	jmp	.LBB18_213
.LBB18_184:                             # %cond.true.1342
                                        #   in Loop: Header=BB18_1 Depth=1
	movslq	-36(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB18_186
# BB#185:                               # %cond.true.1350
                                        #   in Loop: Header=BB18_1 Depth=1
	xorl	%eax, %eax
	movslq	-36(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movslq	-36(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	-32(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	jmp	.LBB18_187
.LBB18_186:                             # %cond.false.1371
                                        #   in Loop: Header=BB18_1 Depth=1
	movslq	-36(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
.LBB18_187:                             # %cond.end.1377
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-240(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB18_197
# BB#188:                               # %cond.true.1381
                                        #   in Loop: Header=BB18_1 Depth=1
	movslq	-36(%rbp), %rax
	cmpq	$0, %rax
	jge	.LBB18_193
# BB#189:                               # %cond.true.1385
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -248(%rbp)        # 8-byte Spill
	jge	.LBB18_191
# BB#190:                               # %cond.true.1393
                                        #   in Loop: Header=BB18_1 Depth=1
	xorl	%eax, %eax
	movslq	-36(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movslq	-36(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	-32(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	jmp	.LBB18_192
.LBB18_191:                             # %cond.false.1414
                                        #   in Loop: Header=BB18_1 Depth=1
	movslq	-36(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
.LBB18_192:                             # %cond.end.1420
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-256(%rbp), %rax        # 8-byte Reload
	movslq	-36(%rbp), %rcx
	subq	%rcx, %rax
	movq	-248(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB18_205
	jmp	.LBB18_202
.LBB18_193:                             # %cond.false.1426
                                        #   in Loop: Header=BB18_1 Depth=1
	movslq	-36(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB18_195
# BB#194:                               # %cond.true.1434
                                        #   in Loop: Header=BB18_1 Depth=1
	movslq	-36(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	jmp	.LBB18_196
.LBB18_195:                             # %cond.false.1444
                                        #   in Loop: Header=BB18_1 Depth=1
	movslq	-36(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
.LBB18_196:                             # %cond.end.1450
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-264(%rbp), %rax        # 8-byte Reload
	movslq	-36(%rbp), %rcx
	subq	%rcx, %rax
	cmpq	-32(%rbp), %rax
	jl	.LBB18_205
	jmp	.LBB18_202
.LBB18_197:                             # %cond.false.1456
                                        #   in Loop: Header=BB18_1 Depth=1
	cmpq	$0, -32(%rbp)
	jge	.LBB18_199
# BB#198:                               # %cond.true.1459
                                        #   in Loop: Header=BB18_1 Depth=1
	movslq	-36(%rbp), %rax
	movq	-32(%rbp), %rcx
	movslq	-36(%rbp), %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jle	.LBB18_205
	jmp	.LBB18_202
.LBB18_199:                             # %cond.false.1465
                                        #   in Loop: Header=BB18_1 Depth=1
	movslq	-36(%rbp), %rax
	cmpq	$0, %rax
	jge	.LBB18_201
# BB#200:                               # %cond.true.1469
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movq	-32(%rbp), %rcx
	movslq	-36(%rbp), %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jle	.LBB18_205
	jmp	.LBB18_202
.LBB18_201:                             # %cond.false.1474
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	addq	%rcx, %rax
	movslq	-36(%rbp), %rcx
	cmpq	%rcx, %rax
	jl	.LBB18_205
.LBB18_202:                             # %lor.lhs.false.1480
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB18_204
# BB#203:                               # %land.lhs.true.1487
                                        #   in Loop: Header=BB18_1 Depth=1
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-32(%rbp), %rcx
	movslq	-36(%rbp), %rdx
	addq	%rdx, %rcx
	cmpq	%rax, %rcx
	jl	.LBB18_205
.LBB18_204:                             # %lor.lhs.false.1492
                                        #   in Loop: Header=BB18_1 Depth=1
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	movslq	-36(%rbp), %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jge	.LBB18_209
.LBB18_205:                             # %cond.true.1497
                                        #   in Loop: Header=BB18_1 Depth=1
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	movslq	-36(%rbp), %rdx
	addq	%rdx, %rcx
	cmpq	%rax, %rcx
	ja	.LBB18_207
# BB#206:                               # %cond.true.1502
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	jmp	.LBB18_208
.LBB18_207:                             # %cond.false.1505
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	addq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
.LBB18_208:                             # %cond.end.1510
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-272(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -32(%rbp)
	testb	$1, %cl
	jne	.LBB18_301
	jmp	.LBB18_302
.LBB18_209:                             # %cond.false.1512
                                        #   in Loop: Header=BB18_1 Depth=1
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	movslq	-36(%rbp), %rdx
	addq	%rdx, %rcx
	cmpq	%rax, %rcx
	ja	.LBB18_211
# BB#210:                               # %cond.true.1517
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	jmp	.LBB18_212
.LBB18_211:                             # %cond.false.1520
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	addq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
.LBB18_212:                             # %cond.end.1525
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-280(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -32(%rbp)
	testb	$1, %dl
	jne	.LBB18_301
	jmp	.LBB18_302
.LBB18_213:                             # %cond.false.1527
                                        #   in Loop: Header=BB18_1 Depth=1
	imull	$0, -36(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jge	.LBB18_215
# BB#214:                               # %cond.true.1535
                                        #   in Loop: Header=BB18_1 Depth=1
	xorl	%eax, %eax
	imull	$0, -36(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	-32(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	imull	$0, -36(%rbp), %eax
	movslq	%eax, %rdi
	addq	-32(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -288(%rbp)        # 8-byte Spill
	jmp	.LBB18_216
.LBB18_215:                             # %cond.false.1556
                                        #   in Loop: Header=BB18_1 Depth=1
	imull	$0, -36(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -288(%rbp)        # 8-byte Spill
.LBB18_216:                             # %cond.end.1562
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-288(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB18_226
# BB#217:                               # %cond.true.1566
                                        #   in Loop: Header=BB18_1 Depth=1
	cmpl	$0, -36(%rbp)
	jge	.LBB18_222
# BB#218:                               # %cond.true.1569
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	imull	$0, -36(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	-32(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	subq	$1, %rdx
	cmpq	$0, %rdx
	movq	%rax, -296(%rbp)        # 8-byte Spill
	jge	.LBB18_220
# BB#219:                               # %cond.true.1577
                                        #   in Loop: Header=BB18_1 Depth=1
	xorl	%eax, %eax
	imull	$0, -36(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	-32(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	imull	$0, -36(%rbp), %eax
	movslq	%eax, %rdi
	addq	-32(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -304(%rbp)        # 8-byte Spill
	jmp	.LBB18_221
.LBB18_220:                             # %cond.false.1598
                                        #   in Loop: Header=BB18_1 Depth=1
	imull	$0, -36(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -304(%rbp)        # 8-byte Spill
.LBB18_221:                             # %cond.end.1604
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-304(%rbp), %rax        # 8-byte Reload
	movslq	-36(%rbp), %rcx
	subq	%rcx, %rax
	movq	-296(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB18_234
	jmp	.LBB18_231
.LBB18_222:                             # %cond.false.1610
                                        #   in Loop: Header=BB18_1 Depth=1
	imull	$0, -36(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jge	.LBB18_224
# BB#223:                               # %cond.true.1618
                                        #   in Loop: Header=BB18_1 Depth=1
	imull	$0, -36(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$1, %rcx
	shlq	$62, %rcx
	subq	$1, %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	movq	%rcx, -312(%rbp)        # 8-byte Spill
	jmp	.LBB18_225
.LBB18_224:                             # %cond.false.1628
                                        #   in Loop: Header=BB18_1 Depth=1
	imull	$0, -36(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	movq	%rcx, -312(%rbp)        # 8-byte Spill
.LBB18_225:                             # %cond.end.1634
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-312(%rbp), %rax        # 8-byte Reload
	movslq	-36(%rbp), %rcx
	subq	%rcx, %rax
	cmpq	-32(%rbp), %rax
	jl	.LBB18_234
	jmp	.LBB18_231
.LBB18_226:                             # %cond.false.1640
                                        #   in Loop: Header=BB18_1 Depth=1
	cmpq	$0, -32(%rbp)
	jge	.LBB18_228
# BB#227:                               # %cond.true.1643
                                        #   in Loop: Header=BB18_1 Depth=1
	movslq	-36(%rbp), %rax
	movq	-32(%rbp), %rcx
	movslq	-36(%rbp), %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jle	.LBB18_234
	jmp	.LBB18_231
.LBB18_228:                             # %cond.false.1649
                                        #   in Loop: Header=BB18_1 Depth=1
	cmpl	$0, -36(%rbp)
	jge	.LBB18_230
# BB#229:                               # %cond.true.1652
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movq	-32(%rbp), %rcx
	movslq	-36(%rbp), %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jle	.LBB18_234
	jmp	.LBB18_231
.LBB18_230:                             # %cond.false.1657
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	addq	%rcx, %rax
	movslq	-36(%rbp), %rcx
	cmpq	%rcx, %rax
	jl	.LBB18_234
.LBB18_231:                             # %lor.lhs.false.1663
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB18_233
# BB#232:                               # %land.lhs.true.1670
                                        #   in Loop: Header=BB18_1 Depth=1
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-32(%rbp), %rcx
	movslq	-36(%rbp), %rdx
	addq	%rdx, %rcx
	cmpq	%rax, %rcx
	jl	.LBB18_234
.LBB18_233:                             # %lor.lhs.false.1675
                                        #   in Loop: Header=BB18_1 Depth=1
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	movslq	-36(%rbp), %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jge	.LBB18_238
.LBB18_234:                             # %cond.true.1680
                                        #   in Loop: Header=BB18_1 Depth=1
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	movslq	-36(%rbp), %rdx
	addq	%rdx, %rcx
	cmpq	%rax, %rcx
	ja	.LBB18_236
# BB#235:                               # %cond.true.1685
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	jmp	.LBB18_237
.LBB18_236:                             # %cond.false.1688
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	addq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
.LBB18_237:                             # %cond.end.1693
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-320(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -32(%rbp)
	testb	$1, %cl
	jne	.LBB18_301
	jmp	.LBB18_302
.LBB18_238:                             # %cond.false.1695
                                        #   in Loop: Header=BB18_1 Depth=1
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	movslq	-36(%rbp), %rdx
	addq	%rdx, %rcx
	cmpq	%rax, %rcx
	ja	.LBB18_240
# BB#239:                               # %cond.true.1700
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	jmp	.LBB18_241
.LBB18_240:                             # %cond.false.1703
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	addq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
.LBB18_241:                             # %cond.end.1708
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-328(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -32(%rbp)
	testb	$1, %dl
	jne	.LBB18_301
	jmp	.LBB18_302
.LBB18_242:                             # %cond.false.1710
                                        #   in Loop: Header=BB18_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB18_243
	jmp	.LBB18_272
.LBB18_243:                             # %cond.true.1711
                                        #   in Loop: Header=BB18_1 Depth=1
	movslq	-36(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB18_245
# BB#244:                               # %cond.true.1719
                                        #   in Loop: Header=BB18_1 Depth=1
	xorl	%eax, %eax
	movslq	-36(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movslq	-36(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	-32(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -336(%rbp)        # 8-byte Spill
	jmp	.LBB18_246
.LBB18_245:                             # %cond.false.1740
                                        #   in Loop: Header=BB18_1 Depth=1
	movslq	-36(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
.LBB18_246:                             # %cond.end.1746
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-336(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB18_256
# BB#247:                               # %cond.true.1750
                                        #   in Loop: Header=BB18_1 Depth=1
	movslq	-36(%rbp), %rax
	cmpq	$0, %rax
	jge	.LBB18_252
# BB#248:                               # %cond.true.1754
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -344(%rbp)        # 8-byte Spill
	jge	.LBB18_250
# BB#249:                               # %cond.true.1762
                                        #   in Loop: Header=BB18_1 Depth=1
	xorl	%eax, %eax
	movslq	-36(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movslq	-36(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	-32(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -352(%rbp)        # 8-byte Spill
	jmp	.LBB18_251
.LBB18_250:                             # %cond.false.1783
                                        #   in Loop: Header=BB18_1 Depth=1
	movslq	-36(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
.LBB18_251:                             # %cond.end.1789
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-352(%rbp), %rax        # 8-byte Reload
	movslq	-36(%rbp), %rcx
	subq	%rcx, %rax
	movq	-344(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB18_264
	jmp	.LBB18_261
.LBB18_252:                             # %cond.false.1795
                                        #   in Loop: Header=BB18_1 Depth=1
	movslq	-36(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB18_254
# BB#253:                               # %cond.true.1803
                                        #   in Loop: Header=BB18_1 Depth=1
	movslq	-36(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	jmp	.LBB18_255
.LBB18_254:                             # %cond.false.1813
                                        #   in Loop: Header=BB18_1 Depth=1
	movslq	-36(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
.LBB18_255:                             # %cond.end.1819
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-360(%rbp), %rax        # 8-byte Reload
	movslq	-36(%rbp), %rcx
	subq	%rcx, %rax
	cmpq	-32(%rbp), %rax
	jl	.LBB18_264
	jmp	.LBB18_261
.LBB18_256:                             # %cond.false.1825
                                        #   in Loop: Header=BB18_1 Depth=1
	cmpq	$0, -32(%rbp)
	jge	.LBB18_258
# BB#257:                               # %cond.true.1828
                                        #   in Loop: Header=BB18_1 Depth=1
	movslq	-36(%rbp), %rax
	movq	-32(%rbp), %rcx
	movslq	-36(%rbp), %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jle	.LBB18_264
	jmp	.LBB18_261
.LBB18_258:                             # %cond.false.1834
                                        #   in Loop: Header=BB18_1 Depth=1
	movslq	-36(%rbp), %rax
	cmpq	$0, %rax
	jge	.LBB18_260
# BB#259:                               # %cond.true.1838
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movq	-32(%rbp), %rcx
	movslq	-36(%rbp), %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jle	.LBB18_264
	jmp	.LBB18_261
.LBB18_260:                             # %cond.false.1843
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	addq	%rcx, %rax
	movslq	-36(%rbp), %rcx
	cmpq	%rcx, %rax
	jl	.LBB18_264
.LBB18_261:                             # %lor.lhs.false.1849
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB18_263
# BB#262:                               # %land.lhs.true.1856
                                        #   in Loop: Header=BB18_1 Depth=1
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-32(%rbp), %rcx
	movslq	-36(%rbp), %rdx
	addq	%rdx, %rcx
	cmpq	%rax, %rcx
	jl	.LBB18_264
.LBB18_263:                             # %lor.lhs.false.1861
                                        #   in Loop: Header=BB18_1 Depth=1
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	movslq	-36(%rbp), %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jge	.LBB18_268
.LBB18_264:                             # %cond.true.1866
                                        #   in Loop: Header=BB18_1 Depth=1
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	movslq	-36(%rbp), %rdx
	addq	%rdx, %rcx
	cmpq	%rax, %rcx
	ja	.LBB18_266
# BB#265:                               # %cond.true.1871
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	jmp	.LBB18_267
.LBB18_266:                             # %cond.false.1874
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	addq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
.LBB18_267:                             # %cond.end.1879
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-368(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -32(%rbp)
	testb	$1, %cl
	jne	.LBB18_301
	jmp	.LBB18_302
.LBB18_268:                             # %cond.false.1881
                                        #   in Loop: Header=BB18_1 Depth=1
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	movslq	-36(%rbp), %rdx
	addq	%rdx, %rcx
	cmpq	%rax, %rcx
	ja	.LBB18_270
# BB#269:                               # %cond.true.1886
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	jmp	.LBB18_271
.LBB18_270:                             # %cond.false.1889
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	addq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
.LBB18_271:                             # %cond.end.1894
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-376(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -32(%rbp)
	testb	$1, %dl
	jne	.LBB18_301
	jmp	.LBB18_302
.LBB18_272:                             # %cond.false.1896
                                        #   in Loop: Header=BB18_1 Depth=1
	imull	$0, -36(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jge	.LBB18_274
# BB#273:                               # %cond.true.1904
                                        #   in Loop: Header=BB18_1 Depth=1
	xorl	%eax, %eax
	imull	$0, -36(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	-32(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	imull	$0, -36(%rbp), %eax
	movslq	%eax, %rdi
	addq	-32(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -384(%rbp)        # 8-byte Spill
	jmp	.LBB18_275
.LBB18_274:                             # %cond.false.1925
                                        #   in Loop: Header=BB18_1 Depth=1
	imull	$0, -36(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -384(%rbp)        # 8-byte Spill
.LBB18_275:                             # %cond.end.1931
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-384(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB18_285
# BB#276:                               # %cond.true.1935
                                        #   in Loop: Header=BB18_1 Depth=1
	cmpl	$0, -36(%rbp)
	jge	.LBB18_281
# BB#277:                               # %cond.true.1938
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	imull	$0, -36(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	-32(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	subq	$1, %rdx
	cmpq	$0, %rdx
	movq	%rax, -392(%rbp)        # 8-byte Spill
	jge	.LBB18_279
# BB#278:                               # %cond.true.1946
                                        #   in Loop: Header=BB18_1 Depth=1
	xorl	%eax, %eax
	imull	$0, -36(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	-32(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	imull	$0, -36(%rbp), %eax
	movslq	%eax, %rdi
	addq	-32(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -400(%rbp)        # 8-byte Spill
	jmp	.LBB18_280
.LBB18_279:                             # %cond.false.1967
                                        #   in Loop: Header=BB18_1 Depth=1
	imull	$0, -36(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -400(%rbp)        # 8-byte Spill
.LBB18_280:                             # %cond.end.1973
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-400(%rbp), %rax        # 8-byte Reload
	movslq	-36(%rbp), %rcx
	subq	%rcx, %rax
	movq	-392(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB18_293
	jmp	.LBB18_290
.LBB18_281:                             # %cond.false.1979
                                        #   in Loop: Header=BB18_1 Depth=1
	imull	$0, -36(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jge	.LBB18_283
# BB#282:                               # %cond.true.1987
                                        #   in Loop: Header=BB18_1 Depth=1
	imull	$0, -36(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$1, %rcx
	shlq	$62, %rcx
	subq	$1, %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	movq	%rcx, -408(%rbp)        # 8-byte Spill
	jmp	.LBB18_284
.LBB18_283:                             # %cond.false.1997
                                        #   in Loop: Header=BB18_1 Depth=1
	imull	$0, -36(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	movq	%rcx, -408(%rbp)        # 8-byte Spill
.LBB18_284:                             # %cond.end.2003
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-408(%rbp), %rax        # 8-byte Reload
	movslq	-36(%rbp), %rcx
	subq	%rcx, %rax
	cmpq	-32(%rbp), %rax
	jl	.LBB18_293
	jmp	.LBB18_290
.LBB18_285:                             # %cond.false.2009
                                        #   in Loop: Header=BB18_1 Depth=1
	cmpq	$0, -32(%rbp)
	jge	.LBB18_287
# BB#286:                               # %cond.true.2012
                                        #   in Loop: Header=BB18_1 Depth=1
	movslq	-36(%rbp), %rax
	movq	-32(%rbp), %rcx
	movslq	-36(%rbp), %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jle	.LBB18_293
	jmp	.LBB18_290
.LBB18_287:                             # %cond.false.2018
                                        #   in Loop: Header=BB18_1 Depth=1
	cmpl	$0, -36(%rbp)
	jge	.LBB18_289
# BB#288:                               # %cond.true.2021
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movq	-32(%rbp), %rcx
	movslq	-36(%rbp), %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jle	.LBB18_293
	jmp	.LBB18_290
.LBB18_289:                             # %cond.false.2026
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	addq	%rcx, %rax
	movslq	-36(%rbp), %rcx
	cmpq	%rcx, %rax
	jl	.LBB18_293
.LBB18_290:                             # %lor.lhs.false.2032
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB18_292
# BB#291:                               # %land.lhs.true.2039
                                        #   in Loop: Header=BB18_1 Depth=1
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-32(%rbp), %rcx
	movslq	-36(%rbp), %rdx
	addq	%rdx, %rcx
	cmpq	%rax, %rcx
	jl	.LBB18_293
.LBB18_292:                             # %lor.lhs.false.2044
                                        #   in Loop: Header=BB18_1 Depth=1
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	movslq	-36(%rbp), %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jge	.LBB18_297
.LBB18_293:                             # %cond.true.2049
                                        #   in Loop: Header=BB18_1 Depth=1
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	movslq	-36(%rbp), %rdx
	addq	%rdx, %rcx
	cmpq	%rax, %rcx
	ja	.LBB18_295
# BB#294:                               # %cond.true.2054
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	jmp	.LBB18_296
.LBB18_295:                             # %cond.false.2057
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	addq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
.LBB18_296:                             # %cond.end.2062
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-416(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -32(%rbp)
	testb	$1, %cl
	jne	.LBB18_301
	jmp	.LBB18_302
.LBB18_297:                             # %cond.false.2064
                                        #   in Loop: Header=BB18_1 Depth=1
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	movslq	-36(%rbp), %rdx
	addq	%rdx, %rcx
	cmpq	%rax, %rcx
	ja	.LBB18_299
# BB#298:                               # %cond.true.2069
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	jmp	.LBB18_300
.LBB18_299:                             # %cond.false.2072
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	addq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
.LBB18_300:                             # %cond.end.2077
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-424(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -32(%rbp)
	testb	$1, %dl
	jne	.LBB18_301
	jmp	.LBB18_302
.LBB18_301:                             # %if.then
	callq	string_overflow
.LBB18_302:                             # %if.end
                                        #   in Loop: Header=BB18_1 Depth=1
	jmp	.LBB18_303
.LBB18_303:                             # %for.inc
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB18_1
.LBB18_304:                             # %for.end
	movq	-32(%rbp), %rax
	addq	$432, %rsp              # imm = 0x1B0
	popq	%rbp
	retq
.Lfunc_end18:
	.size	count_size_as_multibyte, .Lfunc_end18-count_size_as_multibyte
	.cfi_endproc

	.globl	str_to_multibyte
	.align	16, 0x90
	.type	str_to_multibyte,@function
str_to_multibyte:                       # @str_to_multibyte
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp59:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	movq	-16(%rbp), %rdx
	addq	-32(%rbp), %rdx
	movq	%rdx, -48(%rbp)
.LBB19_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	cmpq	-48(%rbp), %rdx
	movb	%cl, -61(%rbp)          # 1-byte Spill
	jae	.LBB19_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB19_1 Depth=1
	movq	-40(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$128, %ecx
	setl	%dl
	movb	%dl, -61(%rbp)          # 1-byte Spill
.LBB19_3:                               # %land.end
                                        #   in Loop: Header=BB19_1 Depth=1
	movb	-61(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB19_4
	jmp	.LBB19_5
.LBB19_4:                               # %while.body
                                        #   in Loop: Header=BB19_1 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB19_1
.LBB19_5:                               # %while.end
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB19_7
# BB#6:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB19_28
.LBB19_7:                               # %if.end
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	movq	%rdx, -56(%rbp)
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rsi
	subq	%rsi, %rdx
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	addq	-24(%rbp), %rdx
	movq	%rdx, -48(%rbp)
	movq	-48(%rbp), %rdx
	movq	%rcx, %rsi
	subq	-32(%rbp), %rsi
	addq	%rsi, %rdx
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	callq	memmove
	movq	-48(%rbp), %rcx
	movq	-80(%rbp), %rdx         # 8-byte Reload
	subq	-32(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rcx, -40(%rbp)
.LBB19_8:                               # %while.cond.9
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jae	.LBB19_27
# BB#9:                                 # %while.body.12
                                        #   in Loop: Header=BB19_8 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -60(%rbp)
	cmpl	$128, -60(%rbp)
	jl	.LBB19_11
# BB#10:                                # %if.then.17
                                        #   in Loop: Header=BB19_8 Depth=1
	movl	-60(%rbp), %eax
	addl	$4194048, %eax          # imm = 0x3FFF00
	movl	%eax, -60(%rbp)
.LBB19_11:                              # %if.end.18
                                        #   in Loop: Header=BB19_8 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB19_12
	jmp	.LBB19_13
.LBB19_12:                              # %cond.true
                                        #   in Loop: Header=BB19_8 Depth=1
	movl	-60(%rbp), %eax
	addl	$0, %eax
	cmpl	$127, %eax
	jbe	.LBB19_14
	jmp	.LBB19_15
.LBB19_13:                              # %cond.false
                                        #   in Loop: Header=BB19_8 Depth=1
	movslq	-60(%rbp), %rax
	addq	$0, %rax
	cmpq	$127, %rax
	ja	.LBB19_15
.LBB19_14:                              # %cond.true.26
                                        #   in Loop: Header=BB19_8 Depth=1
	movl	$1, %eax
	movl	-60(%rbp), %ecx
	movb	%cl, %dl
	movq	-56(%rbp), %rsi
	movb	%dl, (%rsi)
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jmp	.LBB19_26
.LBB19_15:                              # %cond.false.28
                                        #   in Loop: Header=BB19_8 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB19_16
	jmp	.LBB19_17
.LBB19_16:                              # %cond.true.29
                                        #   in Loop: Header=BB19_8 Depth=1
	movl	-60(%rbp), %eax
	addl	$0, %eax
	cmpl	$2047, %eax             # imm = 0x7FF
	jbe	.LBB19_18
	jmp	.LBB19_19
.LBB19_17:                              # %cond.false.33
                                        #   in Loop: Header=BB19_8 Depth=1
	movslq	-60(%rbp), %rax
	addq	$0, %rax
	cmpq	$2047, %rax             # imm = 0x7FF
	ja	.LBB19_19
.LBB19_18:                              # %cond.true.38
                                        #   in Loop: Header=BB19_8 Depth=1
	movl	$2, %eax
	movl	-60(%rbp), %ecx
	sarl	$6, %ecx
	orl	$192, %ecx
	movb	%cl, %dl
	movq	-56(%rbp), %rsi
	movb	%dl, (%rsi)
	movl	-60(%rbp), %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movq	-56(%rbp), %rsi
	movb	%dl, 1(%rsi)
	movl	%eax, -88(%rbp)         # 4-byte Spill
	jmp	.LBB19_25
.LBB19_19:                              # %cond.false.44
                                        #   in Loop: Header=BB19_8 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB19_20
	jmp	.LBB19_21
.LBB19_20:                              # %cond.true.45
                                        #   in Loop: Header=BB19_8 Depth=1
	movl	-60(%rbp), %eax
	addl	$0, %eax
	cmpl	$65535, %eax            # imm = 0xFFFF
	jbe	.LBB19_22
	jmp	.LBB19_23
.LBB19_21:                              # %cond.false.49
                                        #   in Loop: Header=BB19_8 Depth=1
	movslq	-60(%rbp), %rax
	addq	$0, %rax
	cmpq	$65535, %rax            # imm = 0xFFFF
	ja	.LBB19_23
.LBB19_22:                              # %cond.true.54
                                        #   in Loop: Header=BB19_8 Depth=1
	movl	$3, %eax
	movl	-60(%rbp), %ecx
	sarl	$12, %ecx
	orl	$224, %ecx
	movb	%cl, %dl
	movq	-56(%rbp), %rsi
	movb	%dl, (%rsi)
	movl	-60(%rbp), %ecx
	sarl	$6, %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movq	-56(%rbp), %rsi
	movb	%dl, 1(%rsi)
	movl	-60(%rbp), %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movq	-56(%rbp), %rsi
	movb	%dl, 2(%rsi)
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB19_24
.LBB19_23:                              # %cond.false.68
                                        #   in Loop: Header=BB19_8 Depth=1
	movl	-60(%rbp), %edi
	movq	-56(%rbp), %rsi
	callq	char_string
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB19_24:                              # %cond.end
                                        #   in Loop: Header=BB19_8 Depth=1
	movl	-92(%rbp), %eax         # 4-byte Reload
	movl	%eax, -88(%rbp)         # 4-byte Spill
.LBB19_25:                              # %cond.end.69
                                        #   in Loop: Header=BB19_8 Depth=1
	movl	-88(%rbp), %eax         # 4-byte Reload
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB19_26:                              # %cond.end.71
                                        #   in Loop: Header=BB19_8 Depth=1
	movl	-84(%rbp), %eax         # 4-byte Reload
	movq	-56(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -56(%rbp)
	jmp	.LBB19_8
.LBB19_27:                              # %while.end.74
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -8(%rbp)
.LBB19_28:                              # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	str_to_multibyte, .Lfunc_end19-str_to_multibyte
	.cfi_endproc

	.globl	str_as_unibyte
	.align	16, 0x90
	.type	str_as_unibyte,@function
str_as_unibyte:                         # @str_as_unibyte
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp60:
	.cfi_def_cfa_offset 16
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp62:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rsi
	addq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)
.LBB20_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jae	.LBB20_15
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movl	-44(%rbp), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB20_4
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	$1, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB20_11
.LBB20_4:                               # %cond.false
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	-44(%rbp), %eax
	andl	$32, %eax
	cmpl	$0, %eax
	jne	.LBB20_6
# BB#5:                                 # %cond.true.3
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	$2, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB20_10
.LBB20_6:                               # %cond.false.4
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	-44(%rbp), %eax
	andl	$16, %eax
	cmpl	$0, %eax
	jne	.LBB20_8
# BB#7:                                 # %cond.true.7
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	$3, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB20_9
.LBB20_8:                               # %cond.false.8
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	$5, %eax
	movl	$4, %ecx
	movl	-44(%rbp), %edx
	andl	$8, %edx
	cmpl	$0, %edx
	setne	%sil
	xorb	$-1, %sil
	testb	$1, %sil
	cmovnel	%ecx, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB20_9:                               # %cond.end
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	-60(%rbp), %eax         # 4-byte Reload
	movl	%eax, -56(%rbp)         # 4-byte Spill
.LBB20_10:                              # %cond.end.12
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	-56(%rbp), %eax         # 4-byte Reload
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB20_11:                              # %cond.end.14
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	-52(%rbp), %eax         # 4-byte Reload
	movl	%eax, -48(%rbp)
	cmpl	$192, -44(%rbp)
	je	.LBB20_13
# BB#12:                                # %lor.lhs.false
                                        #   in Loop: Header=BB20_1 Depth=1
	cmpl	$193, -44(%rbp)
	jne	.LBB20_14
.LBB20_13:                              # %if.then
	jmp	.LBB20_15
.LBB20_14:                              # %if.end
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	-48(%rbp), %eax
	movq	-24(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -24(%rbp)
	jmp	.LBB20_1
.LBB20_15:                              # %while.end
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -40(%rbp)
.LBB20_16:                              # %while.cond.22
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_42 Depth 2
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jae	.LBB20_46
# BB#17:                                # %while.body.25
                                        #   in Loop: Header=BB20_16 Depth=1
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movl	-44(%rbp), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB20_19
# BB#18:                                # %cond.true.29
                                        #   in Loop: Header=BB20_16 Depth=1
	movl	$1, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jmp	.LBB20_26
.LBB20_19:                              # %cond.false.30
                                        #   in Loop: Header=BB20_16 Depth=1
	movl	-44(%rbp), %eax
	andl	$32, %eax
	cmpl	$0, %eax
	jne	.LBB20_21
# BB#20:                                # %cond.true.33
                                        #   in Loop: Header=BB20_16 Depth=1
	movl	$2, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB20_25
.LBB20_21:                              # %cond.false.34
                                        #   in Loop: Header=BB20_16 Depth=1
	movl	-44(%rbp), %eax
	andl	$16, %eax
	cmpl	$0, %eax
	jne	.LBB20_23
# BB#22:                                # %cond.true.37
                                        #   in Loop: Header=BB20_16 Depth=1
	movl	$3, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jmp	.LBB20_24
.LBB20_23:                              # %cond.false.38
                                        #   in Loop: Header=BB20_16 Depth=1
	movl	$5, %eax
	movl	$4, %ecx
	movl	-44(%rbp), %edx
	andl	$8, %edx
	cmpl	$0, %edx
	setne	%sil
	xorb	$-1, %sil
	testb	$1, %sil
	cmovnel	%ecx, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
.LBB20_24:                              # %cond.end.43
                                        #   in Loop: Header=BB20_16 Depth=1
	movl	-72(%rbp), %eax         # 4-byte Reload
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB20_25:                              # %cond.end.45
                                        #   in Loop: Header=BB20_16 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	movl	%eax, -64(%rbp)         # 4-byte Spill
.LBB20_26:                              # %cond.end.47
                                        #   in Loop: Header=BB20_16 Depth=1
	movl	-64(%rbp), %eax         # 4-byte Reload
	movl	%eax, -48(%rbp)
	cmpl	$192, -44(%rbp)
	je	.LBB20_28
# BB#27:                                # %lor.lhs.false.51
                                        #   in Loop: Header=BB20_16 Depth=1
	cmpl	$193, -44(%rbp)
	jne	.LBB20_41
.LBB20_28:                              # %if.then.54
                                        #   in Loop: Header=BB20_16 Depth=1
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB20_30
# BB#29:                                # %cond.true.58
                                        #   in Loop: Header=BB20_16 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -76(%rbp)         # 4-byte Spill
	jmp	.LBB20_37
.LBB20_30:                              # %cond.false.60
                                        #   in Loop: Header=BB20_16 Depth=1
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB20_32
# BB#31:                                # %cond.true.65
                                        #   in Loop: Header=BB20_16 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movq	-24(%rbp), %rdx
	addq	$2, %rdx
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movzbl	-2(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-24(%rbp), %rdx
	movzbl	-1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-24(%rbp), %rdx
	movzbl	-2(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	orl	%eax, %esi
	movl	%esi, -80(%rbp)         # 4-byte Spill
	jmp	.LBB20_36
.LBB20_32:                              # %cond.false.79
                                        #   in Loop: Header=BB20_16 Depth=1
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB20_34
# BB#33:                                # %cond.true.84
                                        #   in Loop: Header=BB20_16 Depth=1
	movq	-24(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movzbl	-3(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-24(%rbp), %rax
	movzbl	-2(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-24(%rbp), %rax
	movzbl	-1(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	jmp	.LBB20_35
.LBB20_34:                              # %cond.false.99
                                        #   in Loop: Header=BB20_16 Depth=1
	leaq	-24(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rdi
	callq	string_char
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB20_35:                              # %cond.end.100
                                        #   in Loop: Header=BB20_16 Depth=1
	movl	-84(%rbp), %eax         # 4-byte Reload
	movl	%eax, -80(%rbp)         # 4-byte Spill
.LBB20_36:                              # %cond.end.102
                                        #   in Loop: Header=BB20_16 Depth=1
	movl	-80(%rbp), %eax         # 4-byte Reload
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB20_37:                              # %cond.end.104
                                        #   in Loop: Header=BB20_16 Depth=1
	movl	-76(%rbp), %eax         # 4-byte Reload
	movl	%eax, -44(%rbp)
	cmpl	$4194175, -44(%rbp)     # imm = 0x3FFF7F
	jle	.LBB20_39
# BB#38:                                # %cond.true.108
                                        #   in Loop: Header=BB20_16 Depth=1
	movl	-44(%rbp), %eax
	subl	$4194048, %eax          # imm = 0x3FFF00
	movl	%eax, -88(%rbp)         # 4-byte Spill
	jmp	.LBB20_40
.LBB20_39:                              # %cond.false.109
                                        #   in Loop: Header=BB20_16 Depth=1
	movl	-44(%rbp), %eax
	andl	$255, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
.LBB20_40:                              # %cond.end.111
                                        #   in Loop: Header=BB20_16 Depth=1
	movl	-88(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -40(%rbp)
	movb	%cl, (%rdx)
	jmp	.LBB20_45
.LBB20_41:                              # %if.else
                                        #   in Loop: Header=BB20_16 Depth=1
	jmp	.LBB20_42
.LBB20_42:                              # %while.cond.115
                                        #   Parent Loop BB20_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-48(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -48(%rbp)
	cmpl	$0, %eax
	je	.LBB20_44
# BB#43:                                # %while.body.117
                                        #   in Loop: Header=BB20_42 Depth=2
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	(%rax), %dl
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	%dl, (%rax)
	jmp	.LBB20_42
.LBB20_44:                              # %while.end.120
                                        #   in Loop: Header=BB20_16 Depth=1
	jmp	.LBB20_45
.LBB20_45:                              # %if.end.121
                                        #   in Loop: Header=BB20_16 Depth=1
	jmp	.LBB20_16
.LBB20_46:                              # %while.end.122
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	subq	%rcx, %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	str_as_unibyte, .Lfunc_end20-str_as_unibyte
	.cfi_endproc

	.globl	str_to_unibyte
	.align	16, 0x90
	.type	str_to_unibyte,@function
str_to_unibyte:                         # @str_to_unibyte
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
.Ltmp64:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp65:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	$0, -40(%rbp)
.LBB21_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jge	.LBB21_23
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB21_1 Depth=1
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB21_4
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB21_1 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -48(%rbp)         # 4-byte Spill
	jmp	.LBB21_11
.LBB21_4:                               # %cond.false
                                        #   in Loop: Header=BB21_1 Depth=1
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB21_6
# BB#5:                                 # %cond.true.6
                                        #   in Loop: Header=BB21_1 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movq	-16(%rbp), %rdx
	addq	$2, %rdx
	movq	%rdx, -16(%rbp)
	movq	-16(%rbp), %rdx
	movzbl	-2(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-16(%rbp), %rdx
	movzbl	-1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-16(%rbp), %rdx
	movzbl	-2(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	orl	%eax, %esi
	movl	%esi, -52(%rbp)         # 4-byte Spill
	jmp	.LBB21_10
.LBB21_6:                               # %cond.false.18
                                        #   in Loop: Header=BB21_1 Depth=1
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB21_8
# BB#7:                                 # %cond.true.23
                                        #   in Loop: Header=BB21_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movzbl	-3(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-16(%rbp), %rax
	movzbl	-2(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-16(%rbp), %rax
	movzbl	-1(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -56(%rbp)         # 4-byte Spill
	jmp	.LBB21_9
.LBB21_8:                               # %cond.false.38
                                        #   in Loop: Header=BB21_1 Depth=1
	leaq	-16(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	string_char
	movl	%eax, -56(%rbp)         # 4-byte Spill
.LBB21_9:                               # %cond.end
                                        #   in Loop: Header=BB21_1 Depth=1
	movl	-56(%rbp), %eax         # 4-byte Reload
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB21_10:                              # %cond.end.40
                                        #   in Loop: Header=BB21_1 Depth=1
	movl	-52(%rbp), %eax         # 4-byte Reload
	movl	%eax, -48(%rbp)         # 4-byte Spill
.LBB21_11:                              # %cond.end.42
                                        #   in Loop: Header=BB21_1 Depth=1
	movl	-48(%rbp), %eax         # 4-byte Reload
	movl	%eax, -44(%rbp)
	cmpl	$4194175, -44(%rbp)     # imm = 0x3FFF7F
	jle	.LBB21_16
# BB#12:                                # %if.then
                                        #   in Loop: Header=BB21_1 Depth=1
	cmpl	$4194175, -44(%rbp)     # imm = 0x3FFF7F
	jle	.LBB21_14
# BB#13:                                # %cond.true.48
                                        #   in Loop: Header=BB21_1 Depth=1
	movl	-44(%rbp), %eax
	subl	$4194048, %eax          # imm = 0x3FFF00
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB21_15
.LBB21_14:                              # %cond.false.49
                                        #   in Loop: Header=BB21_1 Depth=1
	movl	-44(%rbp), %eax
	andl	$255, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB21_15:                              # %cond.end.51
                                        #   in Loop: Header=BB21_1 Depth=1
	movl	-60(%rbp), %eax         # 4-byte Reload
	movl	%eax, -44(%rbp)
	jmp	.LBB21_21
.LBB21_16:                              # %if.else
                                        #   in Loop: Header=BB21_1 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB21_17
	jmp	.LBB21_18
.LBB21_17:                              # %cond.true.53
                                        #   in Loop: Header=BB21_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB21_20
	jmp	.LBB21_19
.LBB21_18:                              # %cond.false.56
                                        #   in Loop: Header=BB21_1 Depth=1
	movslq	-44(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jb	.LBB21_20
.LBB21_19:                              # %if.then.61
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB21_24
.LBB21_20:                              # %if.end
                                        #   in Loop: Header=BB21_1 Depth=1
	jmp	.LBB21_21
.LBB21_21:                              # %if.end.62
                                        #   in Loop: Header=BB21_1 Depth=1
	movl	-44(%rbp), %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -24(%rbp)
	movb	%cl, (%rdx)
# BB#22:                                # %for.inc
                                        #   in Loop: Header=BB21_1 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB21_1
.LBB21_23:                              # %for.end
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB21_24:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	str_to_unibyte, .Lfunc_end21-str_to_unibyte
	.cfi_endproc

	.globl	string_escape_byte8
	.align	16, 0x90
	.type	string_escape_byte8,@function
string_escape_byte8:                    # @string_escape_byte8
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp66:
	.cfi_def_cfa_offset 16
.Ltmp67:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp68:
	.cfi_def_cfa_register %rbp
	subq	$2128, %rsp             # imm = 0x850
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	SCHARS
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	SBYTES
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	STRING_MULTIBYTE
	andb	$1, %al
	movb	%al, -33(%rbp)
	testb	$1, -33(%rbp)
	je	.LBB22_3
# BB#1:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB22_3
# BB#2:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB22_1348
.LBB22_3:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	string_count_byte8
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB22_5
# BB#4:                                 # %if.then.5
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB22_1348
.LBB22_5:                               # %if.end.6
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_6
	jmp	.LBB22_85
.LBB22_6:                               # %cond.true
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_7
	jmp	.LBB22_46
.LBB22_7:                               # %cond.true.7
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB22_9
# BB#8:                                 # %cond.true.11
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-48(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB22_10
.LBB22_9:                               # %cond.false
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -116(%rbp)        # 4-byte Spill
.LBB22_10:                              # %cond.end
	movl	-116(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB22_12
# BB#11:                                # %land.lhs.true.36
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jl	.LBB22_38
.LBB22_12:                              # %lor.lhs.false
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_13
	jmp	.LBB22_24
.LBB22_13:                              # %cond.true.41
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB22_18
# BB#14:                                # %cond.true.46
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -120(%rbp)        # 4-byte Spill
	jge	.LBB22_16
# BB#15:                                # %cond.true.56
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -124(%rbp)        # 4-byte Spill
	jmp	.LBB22_17
.LBB22_16:                              # %cond.false.66
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -124(%rbp)        # 4-byte Spill
.LBB22_17:                              # %cond.end.72
	movl	-124(%rbp), %eax        # 4-byte Reload
	movl	$3, %ecx
	cltd
	idivl	%ecx
	movl	-120(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB22_38
	jmp	.LBB22_35
.LBB22_18:                              # %cond.false.76
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_19
	jmp	.LBB22_20
.LBB22_19:                              # %cond.true.77
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_38
	jmp	.LBB22_35
.LBB22_20:                              # %cond.false.78
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB22_22
# BB#21:                                # %cond.true.86
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-48(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	jmp	.LBB22_23
.LBB22_22:                              # %cond.false.106
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -128(%rbp)        # 4-byte Spill
.LBB22_23:                              # %cond.end.112
	movl	-128(%rbp), %eax        # 4-byte Reload
	movl	$3, %ecx
	cltd
	idivl	%ecx
	movq	-48(%rbp), %rsi
	movb	%sil, %dil
	movsbl	%dil, %ecx
	cmpl	%ecx, %eax
	jl	.LBB22_38
	jmp	.LBB22_35
.LBB22_24:                              # %cond.false.119
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_25
	jmp	.LBB22_26
.LBB22_25:                              # %cond.true.120
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_38
	jmp	.LBB22_35
.LBB22_26:                              # %cond.false.121
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB22_31
# BB#27:                                # %cond.true.126
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -132(%rbp)        # 4-byte Spill
	jge	.LBB22_29
# BB#28:                                # %cond.true.136
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-48(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	jmp	.LBB22_30
.LBB22_29:                              # %cond.false.156
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -136(%rbp)        # 4-byte Spill
.LBB22_30:                              # %cond.end.162
	movl	-136(%rbp), %eax        # 4-byte Reload
	movl	$3, %ecx
	cltd
	idivl	%ecx
	movl	-132(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB22_38
	jmp	.LBB22_35
.LBB22_31:                              # %cond.false.167
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB22_33
# BB#32:                                # %cond.true.175
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -140(%rbp)        # 4-byte Spill
	jmp	.LBB22_34
.LBB22_33:                              # %cond.false.185
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -140(%rbp)        # 4-byte Spill
.LBB22_34:                              # %cond.end.191
	movl	-140(%rbp), %eax        # 4-byte Reload
	movl	$3, %ecx
	cltd
	idivl	%ecx
	movq	-48(%rbp), %rsi
	movb	%sil, %dil
	movsbl	%dil, %ecx
	cmpl	%ecx, %eax
	jl	.LBB22_38
.LBB22_35:                              # %lor.lhs.false.198
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$3, %edx, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB22_37
# BB#36:                                # %land.lhs.true.206
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$3, %edx, %edx
	cmpl	$-128, %edx
	jl	.LBB22_38
.LBB22_37:                              # %lor.lhs.false.212
	movl	$127, %eax
	movq	-48(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	imull	$3, %esi, %esi
	cmpl	%esi, %eax
	jge	.LBB22_42
.LBB22_38:                              # %cond.true.218
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	imull	$3, %edx, %edx
	cmpl	$127, %edx
	jg	.LBB22_40
# BB#39:                                # %cond.true.224
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	imull	$3, %edx, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -144(%rbp)        # 4-byte Spill
	jmp	.LBB22_41
.LBB22_40:                              # %cond.false.230
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	imull	$3, %edx, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -144(%rbp)        # 4-byte Spill
.LBB22_41:                              # %cond.end.238
	movl	-144(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -56(%rbp)
	testb	$1, %cl
	jne	.LBB22_404
	jmp	.LBB22_405
.LBB22_42:                              # %cond.false.241
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	imull	$3, %edx, %edx
	cmpl	$127, %edx
	jg	.LBB22_44
# BB#43:                                # %cond.true.247
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	imull	$3, %edx, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -148(%rbp)        # 4-byte Spill
	jmp	.LBB22_45
.LBB22_44:                              # %cond.false.253
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	imull	$3, %edx, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -148(%rbp)        # 4-byte Spill
.LBB22_45:                              # %cond.end.261
	movl	-148(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -56(%rbp)
	testb	$1, %dl
	jne	.LBB22_404
	jmp	.LBB22_405
.LBB22_46:                              # %cond.false.264
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_48
# BB#47:                                # %cond.true.270
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	jmp	.LBB22_49
.LBB22_48:                              # %cond.false.287
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
.LBB22_49:                              # %cond.end.291
	movq	-160(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB22_51
# BB#50:                                # %land.lhs.true.295
	cmpq	$0, -48(%rbp)
	jl	.LBB22_77
.LBB22_51:                              # %lor.lhs.false.298
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_52
	jmp	.LBB22_63
.LBB22_52:                              # %cond.true.299
	cmpq	$0, -48(%rbp)
	jge	.LBB22_57
# BB#53:                                # %cond.true.302
	movq	-48(%rbp), %rax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jge	.LBB22_55
# BB#54:                                # %cond.true.308
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB22_56
.LBB22_55:                              # %cond.false.316
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
.LBB22_56:                              # %cond.end.320
	movq	-176(%rbp), %rax        # 8-byte Reload
	movl	$3, %ecx
	movl	%ecx, %edx
	movq	%rdx, -184(%rbp)        # 8-byte Spill
	cqto
	movq	-184(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-168(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB22_77
	jmp	.LBB22_74
.LBB22_57:                              # %cond.false.325
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_58
	jmp	.LBB22_59
.LBB22_58:                              # %cond.true.326
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_77
	jmp	.LBB22_74
.LBB22_59:                              # %cond.false.327
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_61
# BB#60:                                # %cond.true.333
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	jmp	.LBB22_62
.LBB22_61:                              # %cond.false.350
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
.LBB22_62:                              # %cond.end.354
	movq	-192(%rbp), %rax        # 8-byte Reload
	movl	$3, %ecx
	movl	%ecx, %edx
	movq	%rdx, -200(%rbp)        # 8-byte Spill
	cqto
	movq	-200(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-48(%rbp), %rax
	jl	.LBB22_77
	jmp	.LBB22_74
.LBB22_63:                              # %cond.false.359
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_64
	jmp	.LBB22_65
.LBB22_64:                              # %cond.true.360
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_77
	jmp	.LBB22_74
.LBB22_65:                              # %cond.false.361
	cmpq	$0, -48(%rbp)
	jge	.LBB22_70
# BB#66:                                # %cond.true.364
	movq	-48(%rbp), %rax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -208(%rbp)        # 8-byte Spill
	jge	.LBB22_68
# BB#67:                                # %cond.true.370
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	jmp	.LBB22_69
.LBB22_68:                              # %cond.false.387
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
.LBB22_69:                              # %cond.end.391
	movq	-216(%rbp), %rax        # 8-byte Reload
	movl	$3, %ecx
	movl	%ecx, %edx
	movq	%rdx, -224(%rbp)        # 8-byte Spill
	cqto
	movq	-224(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-208(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB22_77
	jmp	.LBB22_74
.LBB22_70:                              # %cond.false.396
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_72
# BB#71:                                # %cond.true.402
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	jmp	.LBB22_73
.LBB22_72:                              # %cond.false.410
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
.LBB22_73:                              # %cond.end.414
	movq	-232(%rbp), %rax        # 8-byte Reload
	movl	$3, %ecx
	movl	%ecx, %edx
	movq	%rdx, -240(%rbp)        # 8-byte Spill
	cqto
	movq	-240(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-48(%rbp), %rax
	jl	.LBB22_77
.LBB22_74:                              # %lor.lhs.false.419
	imulq	$3, -48(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_76
# BB#75:                                # %land.lhs.true.425
	imulq	$3, -48(%rbp), %rax
	cmpq	$-128, %rax
	jl	.LBB22_77
.LBB22_76:                              # %lor.lhs.false.429
	movl	$127, %eax
	movl	%eax, %ecx
	imulq	$3, -48(%rbp), %rdx
	cmpq	%rdx, %rcx
	jge	.LBB22_81
.LBB22_77:                              # %cond.true.433
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	imull	$3, %edx, %edx
	cmpl	$127, %edx
	jg	.LBB22_79
# BB#78:                                # %cond.true.439
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	imull	$3, %edx, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -244(%rbp)        # 4-byte Spill
	jmp	.LBB22_80
.LBB22_79:                              # %cond.false.445
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	imull	$3, %edx, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -244(%rbp)        # 4-byte Spill
.LBB22_80:                              # %cond.end.453
	movl	-244(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -56(%rbp)
	testb	$1, %cl
	jne	.LBB22_404
	jmp	.LBB22_405
.LBB22_81:                              # %cond.false.456
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	imull	$3, %edx, %edx
	cmpl	$127, %edx
	jg	.LBB22_83
# BB#82:                                # %cond.true.462
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	imull	$3, %edx, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -248(%rbp)        # 4-byte Spill
	jmp	.LBB22_84
.LBB22_83:                              # %cond.false.468
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	imull	$3, %edx, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -248(%rbp)        # 4-byte Spill
.LBB22_84:                              # %cond.end.476
	movl	-248(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -56(%rbp)
	testb	$1, %dl
	jne	.LBB22_404
	jmp	.LBB22_405
.LBB22_85:                              # %cond.false.479
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_86
	jmp	.LBB22_165
.LBB22_86:                              # %cond.true.480
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_87
	jmp	.LBB22_126
.LBB22_87:                              # %cond.true.481
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB22_89
# BB#88:                                # %cond.true.489
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %esi
	subl	%esi, %eax
	movq	-48(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -252(%rbp)        # 4-byte Spill
	jmp	.LBB22_90
.LBB22_89:                              # %cond.false.509
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -252(%rbp)        # 4-byte Spill
.LBB22_90:                              # %cond.end.515
	movl	-252(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB22_92
# BB#91:                                # %land.lhs.true.519
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jl	.LBB22_118
.LBB22_92:                              # %lor.lhs.false.524
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_93
	jmp	.LBB22_104
.LBB22_93:                              # %cond.true.525
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB22_98
# BB#94:                                # %cond.true.530
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -256(%rbp)        # 4-byte Spill
	jge	.LBB22_96
# BB#95:                                # %cond.true.540
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -260(%rbp)        # 4-byte Spill
	jmp	.LBB22_97
.LBB22_96:                              # %cond.false.550
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -260(%rbp)        # 4-byte Spill
.LBB22_97:                              # %cond.end.556
	movl	-260(%rbp), %eax        # 4-byte Reload
	movl	$3, %ecx
	cltd
	idivl	%ecx
	movl	-256(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB22_118
	jmp	.LBB22_115
.LBB22_98:                              # %cond.false.561
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_99
	jmp	.LBB22_100
.LBB22_99:                              # %cond.true.562
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_118
	jmp	.LBB22_115
.LBB22_100:                             # %cond.false.563
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB22_102
# BB#101:                               # %cond.true.571
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %esi
	subl	%esi, %eax
	movq	-48(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -264(%rbp)        # 4-byte Spill
	jmp	.LBB22_103
.LBB22_102:                             # %cond.false.591
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -264(%rbp)        # 4-byte Spill
.LBB22_103:                             # %cond.end.597
	movl	-264(%rbp), %eax        # 4-byte Reload
	movl	$3, %ecx
	cltd
	idivl	%ecx
	movq	-48(%rbp), %rsi
	movw	%si, %di
	movswl	%di, %ecx
	cmpl	%ecx, %eax
	jl	.LBB22_118
	jmp	.LBB22_115
.LBB22_104:                             # %cond.false.604
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_105
	jmp	.LBB22_106
.LBB22_105:                             # %cond.true.605
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_118
	jmp	.LBB22_115
.LBB22_106:                             # %cond.false.606
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB22_111
# BB#107:                               # %cond.true.611
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -268(%rbp)        # 4-byte Spill
	jge	.LBB22_109
# BB#108:                               # %cond.true.621
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %esi
	subl	%esi, %eax
	movq	-48(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -272(%rbp)        # 4-byte Spill
	jmp	.LBB22_110
.LBB22_109:                             # %cond.false.641
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -272(%rbp)        # 4-byte Spill
.LBB22_110:                             # %cond.end.647
	movl	-272(%rbp), %eax        # 4-byte Reload
	movl	$3, %ecx
	cltd
	idivl	%ecx
	movl	-268(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB22_118
	jmp	.LBB22_115
.LBB22_111:                             # %cond.false.652
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB22_113
# BB#112:                               # %cond.true.660
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -276(%rbp)        # 4-byte Spill
	jmp	.LBB22_114
.LBB22_113:                             # %cond.false.670
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -276(%rbp)        # 4-byte Spill
.LBB22_114:                             # %cond.end.676
	movl	-276(%rbp), %eax        # 4-byte Reload
	movl	$3, %ecx
	cltd
	idivl	%ecx
	movq	-48(%rbp), %rsi
	movw	%si, %di
	movswl	%di, %ecx
	cmpl	%ecx, %eax
	jl	.LBB22_118
.LBB22_115:                             # %lor.lhs.false.683
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$3, %edx, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB22_117
# BB#116:                               # %land.lhs.true.691
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$3, %edx, %edx
	cmpl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB22_118
.LBB22_117:                             # %lor.lhs.false.697
	movl	$32767, %eax            # imm = 0x7FFF
	movq	-48(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$3, %esi, %esi
	cmpl	%esi, %eax
	jge	.LBB22_122
.LBB22_118:                             # %cond.true.703
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	imull	$3, %edx, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB22_120
# BB#119:                               # %cond.true.709
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	imull	$3, %edx, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -280(%rbp)        # 4-byte Spill
	jmp	.LBB22_121
.LBB22_120:                             # %cond.false.715
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	imull	$3, %edx, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -280(%rbp)        # 4-byte Spill
.LBB22_121:                             # %cond.end.723
	movl	-280(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -56(%rbp)
	testb	$1, %cl
	jne	.LBB22_404
	jmp	.LBB22_405
.LBB22_122:                             # %cond.false.726
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	imull	$3, %edx, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB22_124
# BB#123:                               # %cond.true.732
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	imull	$3, %edx, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -284(%rbp)        # 4-byte Spill
	jmp	.LBB22_125
.LBB22_124:                             # %cond.false.738
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	imull	$3, %edx, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -284(%rbp)        # 4-byte Spill
.LBB22_125:                             # %cond.end.746
	movl	-284(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -56(%rbp)
	testb	$1, %dl
	jne	.LBB22_404
	jmp	.LBB22_405
.LBB22_126:                             # %cond.false.749
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_128
# BB#127:                               # %cond.true.755
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -296(%rbp)        # 8-byte Spill
	jmp	.LBB22_129
.LBB22_128:                             # %cond.false.772
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
.LBB22_129:                             # %cond.end.776
	movq	-296(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB22_131
# BB#130:                               # %land.lhs.true.780
	cmpq	$0, -48(%rbp)
	jl	.LBB22_157
.LBB22_131:                             # %lor.lhs.false.783
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_132
	jmp	.LBB22_143
.LBB22_132:                             # %cond.true.784
	cmpq	$0, -48(%rbp)
	jge	.LBB22_137
# BB#133:                               # %cond.true.787
	movq	-48(%rbp), %rax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -304(%rbp)        # 8-byte Spill
	jge	.LBB22_135
# BB#134:                               # %cond.true.793
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	jmp	.LBB22_136
.LBB22_135:                             # %cond.false.801
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
.LBB22_136:                             # %cond.end.805
	movq	-312(%rbp), %rax        # 8-byte Reload
	movl	$3, %ecx
	movl	%ecx, %edx
	movq	%rdx, -320(%rbp)        # 8-byte Spill
	cqto
	movq	-320(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-304(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB22_157
	jmp	.LBB22_154
.LBB22_137:                             # %cond.false.810
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_138
	jmp	.LBB22_139
.LBB22_138:                             # %cond.true.811
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_157
	jmp	.LBB22_154
.LBB22_139:                             # %cond.false.812
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_141
# BB#140:                               # %cond.true.818
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -328(%rbp)        # 8-byte Spill
	jmp	.LBB22_142
.LBB22_141:                             # %cond.false.835
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
.LBB22_142:                             # %cond.end.839
	movq	-328(%rbp), %rax        # 8-byte Reload
	movl	$3, %ecx
	movl	%ecx, %edx
	movq	%rdx, -336(%rbp)        # 8-byte Spill
	cqto
	movq	-336(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-48(%rbp), %rax
	jl	.LBB22_157
	jmp	.LBB22_154
.LBB22_143:                             # %cond.false.844
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_144
	jmp	.LBB22_145
.LBB22_144:                             # %cond.true.845
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_157
	jmp	.LBB22_154
.LBB22_145:                             # %cond.false.846
	cmpq	$0, -48(%rbp)
	jge	.LBB22_150
# BB#146:                               # %cond.true.849
	movq	-48(%rbp), %rax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -344(%rbp)        # 8-byte Spill
	jge	.LBB22_148
# BB#147:                               # %cond.true.855
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -352(%rbp)        # 8-byte Spill
	jmp	.LBB22_149
.LBB22_148:                             # %cond.false.872
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
.LBB22_149:                             # %cond.end.876
	movq	-352(%rbp), %rax        # 8-byte Reload
	movl	$3, %ecx
	movl	%ecx, %edx
	movq	%rdx, -360(%rbp)        # 8-byte Spill
	cqto
	movq	-360(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-344(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB22_157
	jmp	.LBB22_154
.LBB22_150:                             # %cond.false.881
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_152
# BB#151:                               # %cond.true.887
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	jmp	.LBB22_153
.LBB22_152:                             # %cond.false.895
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
.LBB22_153:                             # %cond.end.899
	movq	-368(%rbp), %rax        # 8-byte Reload
	movl	$3, %ecx
	movl	%ecx, %edx
	movq	%rdx, -376(%rbp)        # 8-byte Spill
	cqto
	movq	-376(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-48(%rbp), %rax
	jl	.LBB22_157
.LBB22_154:                             # %lor.lhs.false.904
	imulq	$3, -48(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_156
# BB#155:                               # %land.lhs.true.910
	imulq	$3, -48(%rbp), %rax
	cmpq	$-32768, %rax           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB22_157
.LBB22_156:                             # %lor.lhs.false.914
	movl	$32767, %eax            # imm = 0x7FFF
	movl	%eax, %ecx
	imulq	$3, -48(%rbp), %rdx
	cmpq	%rdx, %rcx
	jge	.LBB22_161
.LBB22_157:                             # %cond.true.918
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	imull	$3, %edx, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB22_159
# BB#158:                               # %cond.true.924
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	imull	$3, %edx, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -380(%rbp)        # 4-byte Spill
	jmp	.LBB22_160
.LBB22_159:                             # %cond.false.930
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	imull	$3, %edx, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -380(%rbp)        # 4-byte Spill
.LBB22_160:                             # %cond.end.938
	movl	-380(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -56(%rbp)
	testb	$1, %cl
	jne	.LBB22_404
	jmp	.LBB22_405
.LBB22_161:                             # %cond.false.941
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	imull	$3, %edx, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB22_163
# BB#162:                               # %cond.true.947
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	imull	$3, %edx, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -384(%rbp)        # 4-byte Spill
	jmp	.LBB22_164
.LBB22_163:                             # %cond.false.953
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	imull	$3, %edx, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -384(%rbp)        # 4-byte Spill
.LBB22_164:                             # %cond.end.961
	movl	-384(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -56(%rbp)
	testb	$1, %dl
	jne	.LBB22_404
	jmp	.LBB22_405
.LBB22_165:                             # %cond.false.964
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_166
	jmp	.LBB22_245
.LBB22_166:                             # %cond.true.965
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_167
	jmp	.LBB22_206
.LBB22_167:                             # %cond.true.966
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB22_169
# BB#168:                               # %cond.true.973
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-48(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -388(%rbp)        # 4-byte Spill
	jmp	.LBB22_170
.LBB22_169:                             # %cond.false.991
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -388(%rbp)        # 4-byte Spill
.LBB22_170:                             # %cond.end.996
	movl	-388(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB22_172
# BB#171:                               # %land.lhs.true.1000
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jl	.LBB22_198
.LBB22_172:                             # %lor.lhs.false.1004
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_173
	jmp	.LBB22_184
.LBB22_173:                             # %cond.true.1005
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB22_178
# BB#174:                               # %cond.true.1009
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -392(%rbp)        # 4-byte Spill
	jge	.LBB22_176
# BB#175:                               # %cond.true.1017
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -396(%rbp)        # 4-byte Spill
	jmp	.LBB22_177
.LBB22_176:                             # %cond.false.1026
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -396(%rbp)        # 4-byte Spill
.LBB22_177:                             # %cond.end.1031
	movl	-396(%rbp), %eax        # 4-byte Reload
	movl	$3, %ecx
	cltd
	idivl	%ecx
	movl	-392(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB22_198
	jmp	.LBB22_195
.LBB22_178:                             # %cond.false.1036
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_179
	jmp	.LBB22_180
.LBB22_179:                             # %cond.true.1037
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_198
	jmp	.LBB22_195
.LBB22_180:                             # %cond.false.1038
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB22_182
# BB#181:                               # %cond.true.1045
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-48(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -400(%rbp)        # 4-byte Spill
	jmp	.LBB22_183
.LBB22_182:                             # %cond.false.1063
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -400(%rbp)        # 4-byte Spill
.LBB22_183:                             # %cond.end.1068
	movl	-400(%rbp), %eax        # 4-byte Reload
	movl	$3, %ecx
	cltd
	idivl	%ecx
	movq	-48(%rbp), %rsi
	movl	%esi, %ecx
	cmpl	%ecx, %eax
	jl	.LBB22_198
	jmp	.LBB22_195
.LBB22_184:                             # %cond.false.1074
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_185
	jmp	.LBB22_186
.LBB22_185:                             # %cond.true.1075
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_198
	jmp	.LBB22_195
.LBB22_186:                             # %cond.false.1076
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB22_191
# BB#187:                               # %cond.true.1080
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -404(%rbp)        # 4-byte Spill
	jge	.LBB22_189
# BB#188:                               # %cond.true.1088
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-48(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -408(%rbp)        # 4-byte Spill
	jmp	.LBB22_190
.LBB22_189:                             # %cond.false.1106
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -408(%rbp)        # 4-byte Spill
.LBB22_190:                             # %cond.end.1111
	movl	-408(%rbp), %eax        # 4-byte Reload
	movl	$3, %ecx
	cltd
	idivl	%ecx
	movl	-404(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB22_198
	jmp	.LBB22_195
.LBB22_191:                             # %cond.false.1116
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB22_193
# BB#192:                               # %cond.true.1123
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -412(%rbp)        # 4-byte Spill
	jmp	.LBB22_194
.LBB22_193:                             # %cond.false.1132
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -412(%rbp)        # 4-byte Spill
.LBB22_194:                             # %cond.end.1137
	movl	-412(%rbp), %eax        # 4-byte Reload
	movl	$3, %ecx
	cltd
	idivl	%ecx
	movq	-48(%rbp), %rsi
	movl	%esi, %ecx
	cmpl	%ecx, %eax
	jl	.LBB22_198
.LBB22_195:                             # %lor.lhs.false.1143
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	imull	$3, %ecx, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB22_197
# BB#196:                               # %land.lhs.true.1150
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	imull	$3, %ecx, %ecx
	cmpl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	jl	.LBB22_198
.LBB22_197:                             # %lor.lhs.false.1155
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movq	-48(%rbp), %rcx
	movl	%ecx, %edx
	imull	$3, %edx, %edx
	cmpl	%edx, %eax
	jge	.LBB22_202
.LBB22_198:                             # %cond.true.1160
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	imull	$3, %ecx, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB22_200
# BB#199:                               # %cond.true.1165
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	imull	$3, %ecx, %ecx
	movl	%ecx, -416(%rbp)        # 4-byte Spill
	jmp	.LBB22_201
.LBB22_200:                             # %cond.false.1168
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	imull	$3, %ecx, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -416(%rbp)        # 4-byte Spill
.LBB22_201:                             # %cond.end.1173
	movl	-416(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -56(%rbp)
	testb	$1, %cl
	jne	.LBB22_404
	jmp	.LBB22_405
.LBB22_202:                             # %cond.false.1176
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	imull	$3, %ecx, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB22_204
# BB#203:                               # %cond.true.1181
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	imull	$3, %ecx, %ecx
	movl	%ecx, -420(%rbp)        # 4-byte Spill
	jmp	.LBB22_205
.LBB22_204:                             # %cond.false.1184
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	imull	$3, %ecx, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -420(%rbp)        # 4-byte Spill
.LBB22_205:                             # %cond.end.1189
	movl	-420(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -56(%rbp)
	testb	$1, %dl
	jne	.LBB22_404
	jmp	.LBB22_405
.LBB22_206:                             # %cond.false.1192
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_208
# BB#207:                               # %cond.true.1198
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -432(%rbp)        # 8-byte Spill
	jmp	.LBB22_209
.LBB22_208:                             # %cond.false.1215
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
.LBB22_209:                             # %cond.end.1219
	movq	-432(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB22_211
# BB#210:                               # %land.lhs.true.1223
	cmpq	$0, -48(%rbp)
	jl	.LBB22_237
.LBB22_211:                             # %lor.lhs.false.1226
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_212
	jmp	.LBB22_223
.LBB22_212:                             # %cond.true.1227
	cmpq	$0, -48(%rbp)
	jge	.LBB22_217
# BB#213:                               # %cond.true.1230
	movq	-48(%rbp), %rax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -440(%rbp)        # 8-byte Spill
	jge	.LBB22_215
# BB#214:                               # %cond.true.1236
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	jmp	.LBB22_216
.LBB22_215:                             # %cond.false.1244
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
.LBB22_216:                             # %cond.end.1248
	movq	-448(%rbp), %rax        # 8-byte Reload
	movl	$3, %ecx
	movl	%ecx, %edx
	movq	%rdx, -456(%rbp)        # 8-byte Spill
	cqto
	movq	-456(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-440(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB22_237
	jmp	.LBB22_234
.LBB22_217:                             # %cond.false.1253
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_218
	jmp	.LBB22_219
.LBB22_218:                             # %cond.true.1254
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_237
	jmp	.LBB22_234
.LBB22_219:                             # %cond.false.1255
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_221
# BB#220:                               # %cond.true.1261
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -464(%rbp)        # 8-byte Spill
	jmp	.LBB22_222
.LBB22_221:                             # %cond.false.1278
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
.LBB22_222:                             # %cond.end.1282
	movq	-464(%rbp), %rax        # 8-byte Reload
	movl	$3, %ecx
	movl	%ecx, %edx
	movq	%rdx, -472(%rbp)        # 8-byte Spill
	cqto
	movq	-472(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-48(%rbp), %rax
	jl	.LBB22_237
	jmp	.LBB22_234
.LBB22_223:                             # %cond.false.1287
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_224
	jmp	.LBB22_225
.LBB22_224:                             # %cond.true.1288
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_237
	jmp	.LBB22_234
.LBB22_225:                             # %cond.false.1289
	cmpq	$0, -48(%rbp)
	jge	.LBB22_230
# BB#226:                               # %cond.true.1292
	movq	-48(%rbp), %rax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -480(%rbp)        # 8-byte Spill
	jge	.LBB22_228
# BB#227:                               # %cond.true.1298
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -488(%rbp)        # 8-byte Spill
	jmp	.LBB22_229
.LBB22_228:                             # %cond.false.1315
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
.LBB22_229:                             # %cond.end.1319
	movq	-488(%rbp), %rax        # 8-byte Reload
	movl	$3, %ecx
	movl	%ecx, %edx
	movq	%rdx, -496(%rbp)        # 8-byte Spill
	cqto
	movq	-496(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-480(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB22_237
	jmp	.LBB22_234
.LBB22_230:                             # %cond.false.1324
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_232
# BB#231:                               # %cond.true.1330
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	jmp	.LBB22_233
.LBB22_232:                             # %cond.false.1338
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
.LBB22_233:                             # %cond.end.1342
	movq	-504(%rbp), %rax        # 8-byte Reload
	movl	$3, %ecx
	movl	%ecx, %edx
	movq	%rdx, -512(%rbp)        # 8-byte Spill
	cqto
	movq	-512(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-48(%rbp), %rax
	jl	.LBB22_237
.LBB22_234:                             # %lor.lhs.false.1347
	imulq	$3, -48(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_236
# BB#235:                               # %land.lhs.true.1353
	imulq	$3, -48(%rbp), %rax
	cmpq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	jl	.LBB22_237
.LBB22_236:                             # %lor.lhs.false.1357
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %ecx
	imulq	$3, -48(%rbp), %rdx
	cmpq	%rdx, %rcx
	jge	.LBB22_241
.LBB22_237:                             # %cond.true.1361
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	imull	$3, %ecx, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB22_239
# BB#238:                               # %cond.true.1366
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	imull	$3, %ecx, %ecx
	movl	%ecx, -516(%rbp)        # 4-byte Spill
	jmp	.LBB22_240
.LBB22_239:                             # %cond.false.1369
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	imull	$3, %ecx, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -516(%rbp)        # 4-byte Spill
.LBB22_240:                             # %cond.end.1374
	movl	-516(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -56(%rbp)
	testb	$1, %cl
	jne	.LBB22_404
	jmp	.LBB22_405
.LBB22_241:                             # %cond.false.1377
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	imull	$3, %ecx, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB22_243
# BB#242:                               # %cond.true.1382
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	imull	$3, %ecx, %ecx
	movl	%ecx, -520(%rbp)        # 4-byte Spill
	jmp	.LBB22_244
.LBB22_243:                             # %cond.false.1385
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	imull	$3, %ecx, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -520(%rbp)        # 4-byte Spill
.LBB22_244:                             # %cond.end.1390
	movl	-520(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -56(%rbp)
	testb	$1, %dl
	jne	.LBB22_404
	jmp	.LBB22_405
.LBB22_245:                             # %cond.false.1393
	movb	$1, %al
	testb	$1, %al
	jne	.LBB22_246
	jmp	.LBB22_325
.LBB22_246:                             # %cond.true.1394
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_247
	jmp	.LBB22_286
.LBB22_247:                             # %cond.true.1395
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_249
# BB#248:                               # %cond.true.1401
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -528(%rbp)        # 8-byte Spill
	jmp	.LBB22_250
.LBB22_249:                             # %cond.false.1418
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
.LBB22_250:                             # %cond.end.1422
	movq	-528(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB22_252
# BB#251:                               # %land.lhs.true.1426
	cmpq	$0, -48(%rbp)
	jl	.LBB22_278
.LBB22_252:                             # %lor.lhs.false.1429
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_253
	jmp	.LBB22_264
.LBB22_253:                             # %cond.true.1430
	cmpq	$0, -48(%rbp)
	jge	.LBB22_258
# BB#254:                               # %cond.true.1433
	movq	-48(%rbp), %rax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -536(%rbp)        # 8-byte Spill
	jge	.LBB22_256
# BB#255:                               # %cond.true.1439
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	jmp	.LBB22_257
.LBB22_256:                             # %cond.false.1447
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
.LBB22_257:                             # %cond.end.1451
	movq	-544(%rbp), %rax        # 8-byte Reload
	movl	$3, %ecx
	movl	%ecx, %edx
	movq	%rdx, -552(%rbp)        # 8-byte Spill
	cqto
	movq	-552(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-536(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB22_278
	jmp	.LBB22_275
.LBB22_258:                             # %cond.false.1456
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_259
	jmp	.LBB22_260
.LBB22_259:                             # %cond.true.1457
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_278
	jmp	.LBB22_275
.LBB22_260:                             # %cond.false.1458
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_262
# BB#261:                               # %cond.true.1464
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -560(%rbp)        # 8-byte Spill
	jmp	.LBB22_263
.LBB22_262:                             # %cond.false.1481
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -560(%rbp)        # 8-byte Spill
.LBB22_263:                             # %cond.end.1485
	movq	-560(%rbp), %rax        # 8-byte Reload
	movl	$3, %ecx
	movl	%ecx, %edx
	movq	%rdx, -568(%rbp)        # 8-byte Spill
	cqto
	movq	-568(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-48(%rbp), %rax
	jl	.LBB22_278
	jmp	.LBB22_275
.LBB22_264:                             # %cond.false.1490
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_265
	jmp	.LBB22_266
.LBB22_265:                             # %cond.true.1491
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_278
	jmp	.LBB22_275
.LBB22_266:                             # %cond.false.1492
	cmpq	$0, -48(%rbp)
	jge	.LBB22_271
# BB#267:                               # %cond.true.1495
	movq	-48(%rbp), %rax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -576(%rbp)        # 8-byte Spill
	jge	.LBB22_269
# BB#268:                               # %cond.true.1501
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -584(%rbp)        # 8-byte Spill
	jmp	.LBB22_270
.LBB22_269:                             # %cond.false.1518
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
.LBB22_270:                             # %cond.end.1522
	movq	-584(%rbp), %rax        # 8-byte Reload
	movl	$3, %ecx
	movl	%ecx, %edx
	movq	%rdx, -592(%rbp)        # 8-byte Spill
	cqto
	movq	-592(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-576(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB22_278
	jmp	.LBB22_275
.LBB22_271:                             # %cond.false.1527
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_273
# BB#272:                               # %cond.true.1533
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
	jmp	.LBB22_274
.LBB22_273:                             # %cond.false.1541
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
.LBB22_274:                             # %cond.end.1545
	movq	-600(%rbp), %rax        # 8-byte Reload
	movl	$3, %ecx
	movl	%ecx, %edx
	movq	%rdx, -608(%rbp)        # 8-byte Spill
	cqto
	movq	-608(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-48(%rbp), %rax
	jl	.LBB22_278
.LBB22_275:                             # %lor.lhs.false.1550
	imulq	$3, -48(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_277
# BB#276:                               # %land.lhs.true.1556
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	imulq	$3, -48(%rbp), %rcx
	cmpq	%rax, %rcx
	jl	.LBB22_278
.LBB22_277:                             # %lor.lhs.false.1560
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	imulq	$3, -48(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB22_282
.LBB22_278:                             # %cond.true.1564
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	imulq	$3, -48(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB22_280
# BB#279:                               # %cond.true.1568
	imulq	$3, -48(%rbp), %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
	jmp	.LBB22_281
.LBB22_280:                             # %cond.false.1570
	imulq	$3, -48(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
.LBB22_281:                             # %cond.end.1574
	movq	-616(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -56(%rbp)
	testb	$1, %cl
	jne	.LBB22_404
	jmp	.LBB22_405
.LBB22_282:                             # %cond.false.1576
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	imulq	$3, -48(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB22_284
# BB#283:                               # %cond.true.1580
	imulq	$3, -48(%rbp), %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
	jmp	.LBB22_285
.LBB22_284:                             # %cond.false.1582
	imulq	$3, -48(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
.LBB22_285:                             # %cond.end.1586
	movq	-624(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -56(%rbp)
	testb	$1, %dl
	jne	.LBB22_404
	jmp	.LBB22_405
.LBB22_286:                             # %cond.false.1588
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_288
# BB#287:                               # %cond.true.1594
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -632(%rbp)        # 8-byte Spill
	jmp	.LBB22_289
.LBB22_288:                             # %cond.false.1611
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -632(%rbp)        # 8-byte Spill
.LBB22_289:                             # %cond.end.1615
	movq	-632(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB22_291
# BB#290:                               # %land.lhs.true.1619
	cmpq	$0, -48(%rbp)
	jl	.LBB22_317
.LBB22_291:                             # %lor.lhs.false.1622
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_292
	jmp	.LBB22_303
.LBB22_292:                             # %cond.true.1623
	cmpq	$0, -48(%rbp)
	jge	.LBB22_297
# BB#293:                               # %cond.true.1626
	movq	-48(%rbp), %rax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -640(%rbp)        # 8-byte Spill
	jge	.LBB22_295
# BB#294:                               # %cond.true.1632
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -648(%rbp)        # 8-byte Spill
	jmp	.LBB22_296
.LBB22_295:                             # %cond.false.1640
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -648(%rbp)        # 8-byte Spill
.LBB22_296:                             # %cond.end.1644
	movq	-648(%rbp), %rax        # 8-byte Reload
	movl	$3, %ecx
	movl	%ecx, %edx
	movq	%rdx, -656(%rbp)        # 8-byte Spill
	cqto
	movq	-656(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-640(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB22_317
	jmp	.LBB22_314
.LBB22_297:                             # %cond.false.1649
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_298
	jmp	.LBB22_299
.LBB22_298:                             # %cond.true.1650
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_317
	jmp	.LBB22_314
.LBB22_299:                             # %cond.false.1651
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_301
# BB#300:                               # %cond.true.1657
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -664(%rbp)        # 8-byte Spill
	jmp	.LBB22_302
.LBB22_301:                             # %cond.false.1674
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -664(%rbp)        # 8-byte Spill
.LBB22_302:                             # %cond.end.1678
	movq	-664(%rbp), %rax        # 8-byte Reload
	movl	$3, %ecx
	movl	%ecx, %edx
	movq	%rdx, -672(%rbp)        # 8-byte Spill
	cqto
	movq	-672(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-48(%rbp), %rax
	jl	.LBB22_317
	jmp	.LBB22_314
.LBB22_303:                             # %cond.false.1683
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_304
	jmp	.LBB22_305
.LBB22_304:                             # %cond.true.1684
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_317
	jmp	.LBB22_314
.LBB22_305:                             # %cond.false.1685
	cmpq	$0, -48(%rbp)
	jge	.LBB22_310
# BB#306:                               # %cond.true.1688
	movq	-48(%rbp), %rax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -680(%rbp)        # 8-byte Spill
	jge	.LBB22_308
# BB#307:                               # %cond.true.1694
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -688(%rbp)        # 8-byte Spill
	jmp	.LBB22_309
.LBB22_308:                             # %cond.false.1711
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -688(%rbp)        # 8-byte Spill
.LBB22_309:                             # %cond.end.1715
	movq	-688(%rbp), %rax        # 8-byte Reload
	movl	$3, %ecx
	movl	%ecx, %edx
	movq	%rdx, -696(%rbp)        # 8-byte Spill
	cqto
	movq	-696(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-680(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB22_317
	jmp	.LBB22_314
.LBB22_310:                             # %cond.false.1720
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_312
# BB#311:                               # %cond.true.1726
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -704(%rbp)        # 8-byte Spill
	jmp	.LBB22_313
.LBB22_312:                             # %cond.false.1734
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -704(%rbp)        # 8-byte Spill
.LBB22_313:                             # %cond.end.1738
	movq	-704(%rbp), %rax        # 8-byte Reload
	movl	$3, %ecx
	movl	%ecx, %edx
	movq	%rdx, -712(%rbp)        # 8-byte Spill
	cqto
	movq	-712(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-48(%rbp), %rax
	jl	.LBB22_317
.LBB22_314:                             # %lor.lhs.false.1743
	imulq	$3, -48(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_316
# BB#315:                               # %land.lhs.true.1749
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	imulq	$3, -48(%rbp), %rcx
	cmpq	%rax, %rcx
	jl	.LBB22_317
.LBB22_316:                             # %lor.lhs.false.1753
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	imulq	$3, -48(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB22_321
.LBB22_317:                             # %cond.true.1757
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	imulq	$3, -48(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB22_319
# BB#318:                               # %cond.true.1761
	imulq	$3, -48(%rbp), %rax
	movq	%rax, -720(%rbp)        # 8-byte Spill
	jmp	.LBB22_320
.LBB22_319:                             # %cond.false.1763
	imulq	$3, -48(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -720(%rbp)        # 8-byte Spill
.LBB22_320:                             # %cond.end.1767
	movq	-720(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -56(%rbp)
	testb	$1, %cl
	jne	.LBB22_404
	jmp	.LBB22_405
.LBB22_321:                             # %cond.false.1769
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	imulq	$3, -48(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB22_323
# BB#322:                               # %cond.true.1773
	imulq	$3, -48(%rbp), %rax
	movq	%rax, -728(%rbp)        # 8-byte Spill
	jmp	.LBB22_324
.LBB22_323:                             # %cond.false.1775
	imulq	$3, -48(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -728(%rbp)        # 8-byte Spill
.LBB22_324:                             # %cond.end.1779
	movq	-728(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -56(%rbp)
	testb	$1, %dl
	jne	.LBB22_404
	jmp	.LBB22_405
.LBB22_325:                             # %cond.false.1781
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_326
	jmp	.LBB22_365
.LBB22_326:                             # %cond.true.1782
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_328
# BB#327:                               # %cond.true.1788
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -736(%rbp)        # 8-byte Spill
	jmp	.LBB22_329
.LBB22_328:                             # %cond.false.1805
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -736(%rbp)        # 8-byte Spill
.LBB22_329:                             # %cond.end.1809
	movq	-736(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB22_331
# BB#330:                               # %land.lhs.true.1813
	cmpq	$0, -48(%rbp)
	jl	.LBB22_357
.LBB22_331:                             # %lor.lhs.false.1816
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_332
	jmp	.LBB22_343
.LBB22_332:                             # %cond.true.1817
	cmpq	$0, -48(%rbp)
	jge	.LBB22_337
# BB#333:                               # %cond.true.1820
	movq	-48(%rbp), %rax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -744(%rbp)        # 8-byte Spill
	jge	.LBB22_335
# BB#334:                               # %cond.true.1826
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -752(%rbp)        # 8-byte Spill
	jmp	.LBB22_336
.LBB22_335:                             # %cond.false.1834
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -752(%rbp)        # 8-byte Spill
.LBB22_336:                             # %cond.end.1838
	movq	-752(%rbp), %rax        # 8-byte Reload
	movl	$3, %ecx
	movl	%ecx, %edx
	movq	%rdx, -760(%rbp)        # 8-byte Spill
	cqto
	movq	-760(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-744(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB22_357
	jmp	.LBB22_354
.LBB22_337:                             # %cond.false.1843
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_338
	jmp	.LBB22_339
.LBB22_338:                             # %cond.true.1844
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_357
	jmp	.LBB22_354
.LBB22_339:                             # %cond.false.1845
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_341
# BB#340:                               # %cond.true.1851
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -768(%rbp)        # 8-byte Spill
	jmp	.LBB22_342
.LBB22_341:                             # %cond.false.1868
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -768(%rbp)        # 8-byte Spill
.LBB22_342:                             # %cond.end.1872
	movq	-768(%rbp), %rax        # 8-byte Reload
	movl	$3, %ecx
	movl	%ecx, %edx
	movq	%rdx, -776(%rbp)        # 8-byte Spill
	cqto
	movq	-776(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-48(%rbp), %rax
	jl	.LBB22_357
	jmp	.LBB22_354
.LBB22_343:                             # %cond.false.1877
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_344
	jmp	.LBB22_345
.LBB22_344:                             # %cond.true.1878
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_357
	jmp	.LBB22_354
.LBB22_345:                             # %cond.false.1879
	cmpq	$0, -48(%rbp)
	jge	.LBB22_350
# BB#346:                               # %cond.true.1882
	movq	-48(%rbp), %rax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -784(%rbp)        # 8-byte Spill
	jge	.LBB22_348
# BB#347:                               # %cond.true.1888
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -792(%rbp)        # 8-byte Spill
	jmp	.LBB22_349
.LBB22_348:                             # %cond.false.1905
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -792(%rbp)        # 8-byte Spill
.LBB22_349:                             # %cond.end.1909
	movq	-792(%rbp), %rax        # 8-byte Reload
	movl	$3, %ecx
	movl	%ecx, %edx
	movq	%rdx, -800(%rbp)        # 8-byte Spill
	cqto
	movq	-800(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-784(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB22_357
	jmp	.LBB22_354
.LBB22_350:                             # %cond.false.1914
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_352
# BB#351:                               # %cond.true.1920
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -808(%rbp)        # 8-byte Spill
	jmp	.LBB22_353
.LBB22_352:                             # %cond.false.1928
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -808(%rbp)        # 8-byte Spill
.LBB22_353:                             # %cond.end.1932
	movq	-808(%rbp), %rax        # 8-byte Reload
	movl	$3, %ecx
	movl	%ecx, %edx
	movq	%rdx, -816(%rbp)        # 8-byte Spill
	cqto
	movq	-816(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-48(%rbp), %rax
	jl	.LBB22_357
.LBB22_354:                             # %lor.lhs.false.1937
	imulq	$3, -48(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_356
# BB#355:                               # %land.lhs.true.1943
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	imulq	$3, -48(%rbp), %rcx
	cmpq	%rax, %rcx
	jl	.LBB22_357
.LBB22_356:                             # %lor.lhs.false.1947
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	imulq	$3, -48(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB22_361
.LBB22_357:                             # %cond.true.1951
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	imulq	$3, -48(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB22_359
# BB#358:                               # %cond.true.1955
	imulq	$3, -48(%rbp), %rax
	movq	%rax, -824(%rbp)        # 8-byte Spill
	jmp	.LBB22_360
.LBB22_359:                             # %cond.false.1957
	imulq	$3, -48(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -824(%rbp)        # 8-byte Spill
.LBB22_360:                             # %cond.end.1961
	movq	-824(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -56(%rbp)
	testb	$1, %cl
	jne	.LBB22_404
	jmp	.LBB22_405
.LBB22_361:                             # %cond.false.1963
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	imulq	$3, -48(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB22_363
# BB#362:                               # %cond.true.1967
	imulq	$3, -48(%rbp), %rax
	movq	%rax, -832(%rbp)        # 8-byte Spill
	jmp	.LBB22_364
.LBB22_363:                             # %cond.false.1969
	imulq	$3, -48(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -832(%rbp)        # 8-byte Spill
.LBB22_364:                             # %cond.end.1973
	movq	-832(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -56(%rbp)
	testb	$1, %dl
	jne	.LBB22_404
	jmp	.LBB22_405
.LBB22_365:                             # %cond.false.1975
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_367
# BB#366:                               # %cond.true.1981
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -840(%rbp)        # 8-byte Spill
	jmp	.LBB22_368
.LBB22_367:                             # %cond.false.1998
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -840(%rbp)        # 8-byte Spill
.LBB22_368:                             # %cond.end.2002
	movq	-840(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB22_370
# BB#369:                               # %land.lhs.true.2006
	cmpq	$0, -48(%rbp)
	jl	.LBB22_396
.LBB22_370:                             # %lor.lhs.false.2009
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_371
	jmp	.LBB22_382
.LBB22_371:                             # %cond.true.2010
	cmpq	$0, -48(%rbp)
	jge	.LBB22_376
# BB#372:                               # %cond.true.2013
	movq	-48(%rbp), %rax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -848(%rbp)        # 8-byte Spill
	jge	.LBB22_374
# BB#373:                               # %cond.true.2019
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -856(%rbp)        # 8-byte Spill
	jmp	.LBB22_375
.LBB22_374:                             # %cond.false.2027
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -856(%rbp)        # 8-byte Spill
.LBB22_375:                             # %cond.end.2031
	movq	-856(%rbp), %rax        # 8-byte Reload
	movl	$3, %ecx
	movl	%ecx, %edx
	movq	%rdx, -864(%rbp)        # 8-byte Spill
	cqto
	movq	-864(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-848(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB22_396
	jmp	.LBB22_393
.LBB22_376:                             # %cond.false.2036
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_377
	jmp	.LBB22_378
.LBB22_377:                             # %cond.true.2037
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_396
	jmp	.LBB22_393
.LBB22_378:                             # %cond.false.2038
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_380
# BB#379:                               # %cond.true.2044
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -872(%rbp)        # 8-byte Spill
	jmp	.LBB22_381
.LBB22_380:                             # %cond.false.2061
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -872(%rbp)        # 8-byte Spill
.LBB22_381:                             # %cond.end.2065
	movq	-872(%rbp), %rax        # 8-byte Reload
	movl	$3, %ecx
	movl	%ecx, %edx
	movq	%rdx, -880(%rbp)        # 8-byte Spill
	cqto
	movq	-880(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-48(%rbp), %rax
	jl	.LBB22_396
	jmp	.LBB22_393
.LBB22_382:                             # %cond.false.2070
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_383
	jmp	.LBB22_384
.LBB22_383:                             # %cond.true.2071
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_396
	jmp	.LBB22_393
.LBB22_384:                             # %cond.false.2072
	cmpq	$0, -48(%rbp)
	jge	.LBB22_389
# BB#385:                               # %cond.true.2075
	movq	-48(%rbp), %rax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -888(%rbp)        # 8-byte Spill
	jge	.LBB22_387
# BB#386:                               # %cond.true.2081
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -896(%rbp)        # 8-byte Spill
	jmp	.LBB22_388
.LBB22_387:                             # %cond.false.2098
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -896(%rbp)        # 8-byte Spill
.LBB22_388:                             # %cond.end.2102
	movq	-896(%rbp), %rax        # 8-byte Reload
	movl	$3, %ecx
	movl	%ecx, %edx
	movq	%rdx, -904(%rbp)        # 8-byte Spill
	cqto
	movq	-904(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-888(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB22_396
	jmp	.LBB22_393
.LBB22_389:                             # %cond.false.2107
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_391
# BB#390:                               # %cond.true.2113
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -912(%rbp)        # 8-byte Spill
	jmp	.LBB22_392
.LBB22_391:                             # %cond.false.2121
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -912(%rbp)        # 8-byte Spill
.LBB22_392:                             # %cond.end.2125
	movq	-912(%rbp), %rax        # 8-byte Reload
	movl	$3, %ecx
	movl	%ecx, %edx
	movq	%rdx, -920(%rbp)        # 8-byte Spill
	cqto
	movq	-920(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-48(%rbp), %rax
	jl	.LBB22_396
.LBB22_393:                             # %lor.lhs.false.2130
	imulq	$3, -48(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_395
# BB#394:                               # %land.lhs.true.2136
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	imulq	$3, -48(%rbp), %rcx
	cmpq	%rax, %rcx
	jl	.LBB22_396
.LBB22_395:                             # %lor.lhs.false.2140
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	imulq	$3, -48(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB22_400
.LBB22_396:                             # %cond.true.2144
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	imulq	$3, -48(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB22_398
# BB#397:                               # %cond.true.2148
	imulq	$3, -48(%rbp), %rax
	movq	%rax, -928(%rbp)        # 8-byte Spill
	jmp	.LBB22_399
.LBB22_398:                             # %cond.false.2150
	imulq	$3, -48(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -928(%rbp)        # 8-byte Spill
.LBB22_399:                             # %cond.end.2154
	movq	-928(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -56(%rbp)
	testb	$1, %cl
	jne	.LBB22_404
	jmp	.LBB22_405
.LBB22_400:                             # %cond.false.2156
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	imulq	$3, -48(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB22_402
# BB#401:                               # %cond.true.2160
	imulq	$3, -48(%rbp), %rax
	movq	%rax, -936(%rbp)        # 8-byte Spill
	jmp	.LBB22_403
.LBB22_402:                             # %cond.false.2162
	imulq	$3, -48(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -936(%rbp)        # 8-byte Spill
.LBB22_403:                             # %cond.end.2166
	movq	-936(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -56(%rbp)
	testb	$1, %dl
	jne	.LBB22_404
	jmp	.LBB22_405
.LBB22_404:                             # %if.then.2168
	callq	string_overflow
.LBB22_405:                             # %if.end.2169
	testb	$1, -33(%rbp)
	je	.LBB22_1006
# BB#406:                               # %if.then.2171
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_407
	jmp	.LBB22_466
.LBB22_407:                             # %cond.true.2172
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_408
	jmp	.LBB22_437
.LBB22_408:                             # %cond.true.2173
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-24(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB22_410
# BB#409:                               # %cond.true.2184
	xorl	%eax, %eax
	movq	-56(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	imull	$0, %esi, %esi
	movq	-24(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-56(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	imull	$0, %esi, %esi
	movq	-24(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -940(%rbp)        # 4-byte Spill
	jmp	.LBB22_411
.LBB22_410:                             # %cond.false.2210
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-24(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -940(%rbp)        # 4-byte Spill
.LBB22_411:                             # %cond.end.2219
	movl	-940(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jge	.LBB22_421
# BB#412:                               # %cond.true.2223
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB22_417
# BB#413:                               # %cond.true.2228
	movq	-24(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	imull	$0, %esi, %esi
	movq	-24(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -944(%rbp)        # 4-byte Spill
	jge	.LBB22_415
# BB#414:                               # %cond.true.2241
	xorl	%eax, %eax
	movq	-56(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	imull	$0, %esi, %esi
	movq	-24(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-56(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	imull	$0, %esi, %esi
	movq	-24(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -948(%rbp)        # 4-byte Spill
	jmp	.LBB22_416
.LBB22_415:                             # %cond.false.2267
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-24(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -948(%rbp)        # 4-byte Spill
.LBB22_416:                             # %cond.end.2276
	movl	-948(%rbp), %eax        # 4-byte Reload
	movq	-56(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	subl	%esi, %eax
	movl	-944(%rbp), %esi        # 4-byte Reload
	cmpl	%eax, %esi
	jl	.LBB22_429
	jmp	.LBB22_426
.LBB22_417:                             # %cond.false.2283
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-24(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB22_419
# BB#418:                               # %cond.true.2294
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-24(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -952(%rbp)        # 4-byte Spill
	jmp	.LBB22_420
.LBB22_419:                             # %cond.false.2307
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-24(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -952(%rbp)        # 4-byte Spill
.LBB22_420:                             # %cond.end.2316
	movl	-952(%rbp), %eax        # 4-byte Reload
	movq	-56(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	subl	%esi, %eax
	movq	-24(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	cmpl	%esi, %eax
	jl	.LBB22_429
	jmp	.LBB22_426
.LBB22_421:                             # %cond.false.2325
	movq	-24(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB22_423
# BB#422:                               # %cond.true.2330
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-24(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edi
	addl	%edi, %esi
	cmpl	%esi, %edx
	jle	.LBB22_429
	jmp	.LBB22_426
.LBB22_423:                             # %cond.false.2340
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB22_425
# BB#424:                               # %cond.true.2345
	movq	-24(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-24(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edi
	addl	%edi, %esi
	cmpl	%esi, %edx
	jle	.LBB22_429
	jmp	.LBB22_426
.LBB22_425:                             # %cond.false.2355
	movq	-24(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	cmpl	%esi, %edx
	jl	.LBB22_429
.LBB22_426:                             # %lor.lhs.false.2365
	movq	-24(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB22_428
# BB#427:                               # %land.lhs.true.2375
	movq	-24(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	cmpl	$-128, %edx
	jl	.LBB22_429
.LBB22_428:                             # %lor.lhs.false.2383
	movl	$127, %eax
	movq	-24(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	movq	-56(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
	cmpl	%esi, %eax
	jge	.LBB22_433
.LBB22_429:                             # %cond.true.2391
	movq	-24(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	cmpl	$127, %edx
	jg	.LBB22_431
# BB#430:                               # %cond.true.2399
	movq	-24(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -956(%rbp)        # 4-byte Spill
	jmp	.LBB22_432
.LBB22_431:                             # %cond.false.2407
	movq	-24(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -956(%rbp)        # 4-byte Spill
.LBB22_432:                             # %cond.end.2417
	movl	-956(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -64(%rbp)
	testb	$1, %cl
	jne	.LBB22_1004
	jmp	.LBB22_705
.LBB22_433:                             # %cond.false.2420
	movq	-24(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	cmpl	$127, %edx
	jg	.LBB22_435
# BB#434:                               # %cond.true.2428
	movq	-24(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -960(%rbp)        # 4-byte Spill
	jmp	.LBB22_436
.LBB22_435:                             # %cond.false.2436
	movq	-24(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -960(%rbp)        # 4-byte Spill
.LBB22_436:                             # %cond.end.2446
	movl	-960(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -64(%rbp)
	testb	$1, %dl
	jne	.LBB22_1004
	jmp	.LBB22_705
.LBB22_437:                             # %cond.false.2449
	imulq	$0, -56(%rbp), %rax
	addq	-24(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_439
# BB#438:                               # %cond.true.2456
	xorl	%eax, %eax
	imulq	$0, -56(%rbp), %rcx
	addq	-24(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -56(%rbp), %rdi
	addq	-24(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -968(%rbp)        # 8-byte Spill
	jmp	.LBB22_440
.LBB22_439:                             # %cond.false.2475
	imulq	$0, -56(%rbp), %rax
	addq	-24(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -968(%rbp)        # 8-byte Spill
.LBB22_440:                             # %cond.end.2480
	movq	-968(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB22_450
# BB#441:                               # %cond.true.2484
	cmpq	$0, -56(%rbp)
	jge	.LBB22_446
# BB#442:                               # %cond.true.2487
	movq	-24(%rbp), %rax
	imulq	$0, -56(%rbp), %rcx
	addq	-24(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -976(%rbp)        # 8-byte Spill
	jge	.LBB22_444
# BB#443:                               # %cond.true.2494
	xorl	%eax, %eax
	imulq	$0, -56(%rbp), %rcx
	addq	-24(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -56(%rbp), %rdi
	addq	-24(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -984(%rbp)        # 8-byte Spill
	jmp	.LBB22_445
.LBB22_444:                             # %cond.false.2513
	imulq	$0, -56(%rbp), %rax
	addq	-24(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -984(%rbp)        # 8-byte Spill
.LBB22_445:                             # %cond.end.2518
	movq	-984(%rbp), %rax        # 8-byte Reload
	subq	-56(%rbp), %rax
	movq	-976(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB22_458
	jmp	.LBB22_455
.LBB22_446:                             # %cond.false.2523
	imulq	$0, -56(%rbp), %rax
	addq	-24(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_448
# BB#447:                               # %cond.true.2530
	imulq	$0, -56(%rbp), %rax
	addq	-24(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -992(%rbp)        # 8-byte Spill
	jmp	.LBB22_449
.LBB22_448:                             # %cond.false.2539
	imulq	$0, -56(%rbp), %rax
	addq	-24(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -992(%rbp)        # 8-byte Spill
.LBB22_449:                             # %cond.end.2544
	movq	-992(%rbp), %rax        # 8-byte Reload
	subq	-56(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jl	.LBB22_458
	jmp	.LBB22_455
.LBB22_450:                             # %cond.false.2549
	cmpq	$0, -24(%rbp)
	jge	.LBB22_452
# BB#451:                               # %cond.true.2552
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rcx
	addq	-56(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB22_458
	jmp	.LBB22_455
.LBB22_452:                             # %cond.false.2556
	cmpq	$0, -56(%rbp)
	jge	.LBB22_454
# BB#453:                               # %cond.true.2559
	movq	-24(%rbp), %rax
	movq	-24(%rbp), %rcx
	addq	-56(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB22_458
	jmp	.LBB22_455
.LBB22_454:                             # %cond.false.2563
	movq	-24(%rbp), %rax
	addq	-56(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jl	.LBB22_458
.LBB22_455:                             # %lor.lhs.false.2567
	movq	-24(%rbp), %rax
	addq	-56(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_457
# BB#456:                               # %land.lhs.true.2573
	movq	-24(%rbp), %rax
	addq	-56(%rbp), %rax
	cmpq	$-128, %rax
	jl	.LBB22_458
.LBB22_457:                             # %lor.lhs.false.2577
	movl	$127, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	addq	-56(%rbp), %rdx
	cmpq	%rdx, %rcx
	jge	.LBB22_462
.LBB22_458:                             # %cond.true.2581
	movq	-24(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	cmpl	$127, %edx
	jg	.LBB22_460
# BB#459:                               # %cond.true.2589
	movq	-24(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -996(%rbp)        # 4-byte Spill
	jmp	.LBB22_461
.LBB22_460:                             # %cond.false.2597
	movq	-24(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -996(%rbp)        # 4-byte Spill
.LBB22_461:                             # %cond.end.2607
	movl	-996(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -64(%rbp)
	testb	$1, %cl
	jne	.LBB22_1004
	jmp	.LBB22_705
.LBB22_462:                             # %cond.false.2610
	movq	-24(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	cmpl	$127, %edx
	jg	.LBB22_464
# BB#463:                               # %cond.true.2618
	movq	-24(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -1000(%rbp)       # 4-byte Spill
	jmp	.LBB22_465
.LBB22_464:                             # %cond.false.2626
	movq	-24(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -1000(%rbp)       # 4-byte Spill
.LBB22_465:                             # %cond.end.2636
	movl	-1000(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -64(%rbp)
	testb	$1, %dl
	jne	.LBB22_1004
	jmp	.LBB22_705
.LBB22_466:                             # %cond.false.2639
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_467
	jmp	.LBB22_526
.LBB22_467:                             # %cond.true.2640
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_468
	jmp	.LBB22_497
.LBB22_468:                             # %cond.true.2641
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-24(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB22_470
# BB#469:                               # %cond.true.2652
	xorl	%eax, %eax
	movq	-56(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	movq	-24(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %esi
	subl	%esi, %eax
	movq	-56(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	movq	-24(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -1004(%rbp)       # 4-byte Spill
	jmp	.LBB22_471
.LBB22_470:                             # %cond.false.2678
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-24(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -1004(%rbp)       # 4-byte Spill
.LBB22_471:                             # %cond.end.2687
	movl	-1004(%rbp), %eax       # 4-byte Reload
	cmpl	$0, %eax
	jge	.LBB22_481
# BB#472:                               # %cond.true.2691
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB22_477
# BB#473:                               # %cond.true.2696
	movq	-24(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	imull	$0, %esi, %esi
	movq	-24(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -1008(%rbp)       # 4-byte Spill
	jge	.LBB22_475
# BB#474:                               # %cond.true.2709
	xorl	%eax, %eax
	movq	-56(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	movq	-24(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %esi
	subl	%esi, %eax
	movq	-56(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	movq	-24(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -1012(%rbp)       # 4-byte Spill
	jmp	.LBB22_476
.LBB22_475:                             # %cond.false.2735
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-24(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -1012(%rbp)       # 4-byte Spill
.LBB22_476:                             # %cond.end.2744
	movl	-1012(%rbp), %eax       # 4-byte Reload
	movq	-56(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	subl	%esi, %eax
	movl	-1008(%rbp), %esi       # 4-byte Reload
	cmpl	%eax, %esi
	jl	.LBB22_489
	jmp	.LBB22_486
.LBB22_477:                             # %cond.false.2751
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-24(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB22_479
# BB#478:                               # %cond.true.2762
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-24(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -1016(%rbp)       # 4-byte Spill
	jmp	.LBB22_480
.LBB22_479:                             # %cond.false.2775
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-24(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -1016(%rbp)       # 4-byte Spill
.LBB22_480:                             # %cond.end.2784
	movl	-1016(%rbp), %eax       # 4-byte Reload
	movq	-56(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	subl	%esi, %eax
	movq	-24(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	cmpl	%esi, %eax
	jl	.LBB22_489
	jmp	.LBB22_486
.LBB22_481:                             # %cond.false.2793
	movq	-24(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB22_483
# BB#482:                               # %cond.true.2798
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-24(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edi
	addl	%edi, %esi
	cmpl	%esi, %edx
	jle	.LBB22_489
	jmp	.LBB22_486
.LBB22_483:                             # %cond.false.2808
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB22_485
# BB#484:                               # %cond.true.2813
	movq	-24(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-24(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edi
	addl	%edi, %esi
	cmpl	%esi, %edx
	jle	.LBB22_489
	jmp	.LBB22_486
.LBB22_485:                             # %cond.false.2823
	movq	-24(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	cmpl	%esi, %edx
	jl	.LBB22_489
.LBB22_486:                             # %lor.lhs.false.2833
	movq	-24(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB22_488
# BB#487:                               # %land.lhs.true.2843
	movq	-24(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	cmpl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB22_489
.LBB22_488:                             # %lor.lhs.false.2851
	movl	$32767, %eax            # imm = 0x7FFF
	movq	-24(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	movq	-56(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	cmpl	%esi, %eax
	jge	.LBB22_493
.LBB22_489:                             # %cond.true.2859
	movq	-24(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB22_491
# BB#490:                               # %cond.true.2867
	movq	-24(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -1020(%rbp)       # 4-byte Spill
	jmp	.LBB22_492
.LBB22_491:                             # %cond.false.2875
	movq	-24(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -1020(%rbp)       # 4-byte Spill
.LBB22_492:                             # %cond.end.2885
	movl	-1020(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -64(%rbp)
	testb	$1, %cl
	jne	.LBB22_1004
	jmp	.LBB22_705
.LBB22_493:                             # %cond.false.2888
	movq	-24(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB22_495
# BB#494:                               # %cond.true.2896
	movq	-24(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -1024(%rbp)       # 4-byte Spill
	jmp	.LBB22_496
.LBB22_495:                             # %cond.false.2904
	movq	-24(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -1024(%rbp)       # 4-byte Spill
.LBB22_496:                             # %cond.end.2914
	movl	-1024(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -64(%rbp)
	testb	$1, %dl
	jne	.LBB22_1004
	jmp	.LBB22_705
.LBB22_497:                             # %cond.false.2917
	imulq	$0, -56(%rbp), %rax
	addq	-24(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_499
# BB#498:                               # %cond.true.2924
	xorl	%eax, %eax
	imulq	$0, -56(%rbp), %rcx
	addq	-24(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -56(%rbp), %rdi
	addq	-24(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1032(%rbp)       # 8-byte Spill
	jmp	.LBB22_500
.LBB22_499:                             # %cond.false.2943
	imulq	$0, -56(%rbp), %rax
	addq	-24(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1032(%rbp)       # 8-byte Spill
.LBB22_500:                             # %cond.end.2948
	movq	-1032(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB22_510
# BB#501:                               # %cond.true.2952
	cmpq	$0, -56(%rbp)
	jge	.LBB22_506
# BB#502:                               # %cond.true.2955
	movq	-24(%rbp), %rax
	imulq	$0, -56(%rbp), %rcx
	addq	-24(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1040(%rbp)       # 8-byte Spill
	jge	.LBB22_504
# BB#503:                               # %cond.true.2962
	xorl	%eax, %eax
	imulq	$0, -56(%rbp), %rcx
	addq	-24(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -56(%rbp), %rdi
	addq	-24(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1048(%rbp)       # 8-byte Spill
	jmp	.LBB22_505
.LBB22_504:                             # %cond.false.2981
	imulq	$0, -56(%rbp), %rax
	addq	-24(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1048(%rbp)       # 8-byte Spill
.LBB22_505:                             # %cond.end.2986
	movq	-1048(%rbp), %rax       # 8-byte Reload
	subq	-56(%rbp), %rax
	movq	-1040(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB22_518
	jmp	.LBB22_515
.LBB22_506:                             # %cond.false.2991
	imulq	$0, -56(%rbp), %rax
	addq	-24(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_508
# BB#507:                               # %cond.true.2998
	imulq	$0, -56(%rbp), %rax
	addq	-24(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1056(%rbp)       # 8-byte Spill
	jmp	.LBB22_509
.LBB22_508:                             # %cond.false.3007
	imulq	$0, -56(%rbp), %rax
	addq	-24(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1056(%rbp)       # 8-byte Spill
.LBB22_509:                             # %cond.end.3012
	movq	-1056(%rbp), %rax       # 8-byte Reload
	subq	-56(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jl	.LBB22_518
	jmp	.LBB22_515
.LBB22_510:                             # %cond.false.3017
	cmpq	$0, -24(%rbp)
	jge	.LBB22_512
# BB#511:                               # %cond.true.3020
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rcx
	addq	-56(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB22_518
	jmp	.LBB22_515
.LBB22_512:                             # %cond.false.3024
	cmpq	$0, -56(%rbp)
	jge	.LBB22_514
# BB#513:                               # %cond.true.3027
	movq	-24(%rbp), %rax
	movq	-24(%rbp), %rcx
	addq	-56(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB22_518
	jmp	.LBB22_515
.LBB22_514:                             # %cond.false.3031
	movq	-24(%rbp), %rax
	addq	-56(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jl	.LBB22_518
.LBB22_515:                             # %lor.lhs.false.3035
	movq	-24(%rbp), %rax
	addq	-56(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_517
# BB#516:                               # %land.lhs.true.3041
	movq	-24(%rbp), %rax
	addq	-56(%rbp), %rax
	cmpq	$-32768, %rax           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB22_518
.LBB22_517:                             # %lor.lhs.false.3045
	movl	$32767, %eax            # imm = 0x7FFF
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	addq	-56(%rbp), %rdx
	cmpq	%rdx, %rcx
	jge	.LBB22_522
.LBB22_518:                             # %cond.true.3049
	movq	-24(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB22_520
# BB#519:                               # %cond.true.3057
	movq	-24(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -1060(%rbp)       # 4-byte Spill
	jmp	.LBB22_521
.LBB22_520:                             # %cond.false.3065
	movq	-24(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -1060(%rbp)       # 4-byte Spill
.LBB22_521:                             # %cond.end.3075
	movl	-1060(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -64(%rbp)
	testb	$1, %cl
	jne	.LBB22_1004
	jmp	.LBB22_705
.LBB22_522:                             # %cond.false.3078
	movq	-24(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB22_524
# BB#523:                               # %cond.true.3086
	movq	-24(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -1064(%rbp)       # 4-byte Spill
	jmp	.LBB22_525
.LBB22_524:                             # %cond.false.3094
	movq	-24(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -1064(%rbp)       # 4-byte Spill
.LBB22_525:                             # %cond.end.3104
	movl	-1064(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -64(%rbp)
	testb	$1, %dl
	jne	.LBB22_1004
	jmp	.LBB22_705
.LBB22_526:                             # %cond.false.3107
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_527
	jmp	.LBB22_586
.LBB22_527:                             # %cond.true.3108
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_528
	jmp	.LBB22_557
.LBB22_528:                             # %cond.true.3109
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-24(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB22_530
# BB#529:                               # %cond.true.3118
	xorl	%eax, %eax
	movq	-56(%rbp), %rcx
	movl	%ecx, %edx
	imull	$0, %edx, %edx
	movq	-24(%rbp), %rcx
	movl	%ecx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %edx
	subl	%edx, %eax
	movq	-56(%rbp), %rcx
	movl	%ecx, %edx
	imull	$0, %edx, %edx
	movq	-24(%rbp), %rcx
	movl	%ecx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -1068(%rbp)       # 4-byte Spill
	jmp	.LBB22_531
.LBB22_530:                             # %cond.false.3140
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-24(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -1068(%rbp)       # 4-byte Spill
.LBB22_531:                             # %cond.end.3147
	movl	-1068(%rbp), %eax       # 4-byte Reload
	cmpl	$0, %eax
	jge	.LBB22_541
# BB#532:                               # %cond.true.3151
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB22_537
# BB#533:                               # %cond.true.3155
	movq	-24(%rbp), %rax
	movl	%eax, %ecx
	movq	-56(%rbp), %rax
	movl	%eax, %edx
	imull	$0, %edx, %edx
	movq	-24(%rbp), %rax
	movl	%eax, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -1072(%rbp)       # 4-byte Spill
	jge	.LBB22_535
# BB#534:                               # %cond.true.3165
	xorl	%eax, %eax
	movq	-56(%rbp), %rcx
	movl	%ecx, %edx
	imull	$0, %edx, %edx
	movq	-24(%rbp), %rcx
	movl	%ecx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %edx
	subl	%edx, %eax
	movq	-56(%rbp), %rcx
	movl	%ecx, %edx
	imull	$0, %edx, %edx
	movq	-24(%rbp), %rcx
	movl	%ecx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -1076(%rbp)       # 4-byte Spill
	jmp	.LBB22_536
.LBB22_535:                             # %cond.false.3187
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-24(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -1076(%rbp)       # 4-byte Spill
.LBB22_536:                             # %cond.end.3194
	movl	-1076(%rbp), %eax       # 4-byte Reload
	movq	-56(%rbp), %rcx
	movl	%ecx, %edx
	subl	%edx, %eax
	movl	-1072(%rbp), %edx       # 4-byte Reload
	cmpl	%eax, %edx
	jl	.LBB22_549
	jmp	.LBB22_546
.LBB22_537:                             # %cond.false.3200
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-24(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB22_539
# BB#538:                               # %cond.true.3209
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-24(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -1080(%rbp)       # 4-byte Spill
	jmp	.LBB22_540
.LBB22_539:                             # %cond.false.3220
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-24(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -1080(%rbp)       # 4-byte Spill
.LBB22_540:                             # %cond.end.3227
	movl	-1080(%rbp), %eax       # 4-byte Reload
	movq	-56(%rbp), %rcx
	movl	%ecx, %edx
	subl	%edx, %eax
	movq	-24(%rbp), %rcx
	movl	%ecx, %edx
	cmpl	%edx, %eax
	jl	.LBB22_549
	jmp	.LBB22_546
.LBB22_541:                             # %cond.false.3234
	movq	-24(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB22_543
# BB#542:                               # %cond.true.3238
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%eax, %esi
	addl	%esi, %edx
	cmpl	%edx, %ecx
	jle	.LBB22_549
	jmp	.LBB22_546
.LBB22_543:                             # %cond.false.3245
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB22_545
# BB#544:                               # %cond.true.3249
	movq	-24(%rbp), %rax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%eax, %esi
	addl	%esi, %edx
	cmpl	%edx, %ecx
	jle	.LBB22_549
	jmp	.LBB22_546
.LBB22_545:                             # %cond.false.3256
	movq	-24(%rbp), %rax
	movl	%eax, %ecx
	movq	-56(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	movq	-56(%rbp), %rax
	movl	%eax, %edx
	cmpl	%edx, %ecx
	jl	.LBB22_549
.LBB22_546:                             # %lor.lhs.false.3263
	movq	-24(%rbp), %rax
	movl	%eax, %ecx
	movq	-56(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB22_548
# BB#547:                               # %land.lhs.true.3271
	movq	-24(%rbp), %rax
	movl	%eax, %ecx
	movq	-56(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	cmpl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	jl	.LBB22_549
.LBB22_548:                             # %lor.lhs.false.3277
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movq	-24(%rbp), %rcx
	movl	%ecx, %edx
	movq	-56(%rbp), %rcx
	movl	%ecx, %esi
	addl	%esi, %edx
	cmpl	%edx, %eax
	jge	.LBB22_553
.LBB22_549:                             # %cond.true.3283
	movq	-24(%rbp), %rax
	movl	%eax, %ecx
	movq	-56(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB22_551
# BB#550:                               # %cond.true.3289
	movq	-24(%rbp), %rax
	movl	%eax, %ecx
	movq	-56(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	movl	%ecx, -1084(%rbp)       # 4-byte Spill
	jmp	.LBB22_552
.LBB22_551:                             # %cond.false.3293
	movq	-24(%rbp), %rax
	movl	%eax, %ecx
	movq	-56(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -1084(%rbp)       # 4-byte Spill
.LBB22_552:                             # %cond.end.3299
	movl	-1084(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -64(%rbp)
	testb	$1, %cl
	jne	.LBB22_1004
	jmp	.LBB22_705
.LBB22_553:                             # %cond.false.3302
	movq	-24(%rbp), %rax
	movl	%eax, %ecx
	movq	-56(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB22_555
# BB#554:                               # %cond.true.3308
	movq	-24(%rbp), %rax
	movl	%eax, %ecx
	movq	-56(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	movl	%ecx, -1088(%rbp)       # 4-byte Spill
	jmp	.LBB22_556
.LBB22_555:                             # %cond.false.3312
	movq	-24(%rbp), %rax
	movl	%eax, %ecx
	movq	-56(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -1088(%rbp)       # 4-byte Spill
.LBB22_556:                             # %cond.end.3318
	movl	-1088(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -64(%rbp)
	testb	$1, %dl
	jne	.LBB22_1004
	jmp	.LBB22_705
.LBB22_557:                             # %cond.false.3321
	imulq	$0, -56(%rbp), %rax
	addq	-24(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_559
# BB#558:                               # %cond.true.3328
	xorl	%eax, %eax
	imulq	$0, -56(%rbp), %rcx
	addq	-24(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -56(%rbp), %rdi
	addq	-24(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1096(%rbp)       # 8-byte Spill
	jmp	.LBB22_560
.LBB22_559:                             # %cond.false.3347
	imulq	$0, -56(%rbp), %rax
	addq	-24(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1096(%rbp)       # 8-byte Spill
.LBB22_560:                             # %cond.end.3352
	movq	-1096(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB22_570
# BB#561:                               # %cond.true.3356
	cmpq	$0, -56(%rbp)
	jge	.LBB22_566
# BB#562:                               # %cond.true.3359
	movq	-24(%rbp), %rax
	imulq	$0, -56(%rbp), %rcx
	addq	-24(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1104(%rbp)       # 8-byte Spill
	jge	.LBB22_564
# BB#563:                               # %cond.true.3366
	xorl	%eax, %eax
	imulq	$0, -56(%rbp), %rcx
	addq	-24(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -56(%rbp), %rdi
	addq	-24(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1112(%rbp)       # 8-byte Spill
	jmp	.LBB22_565
.LBB22_564:                             # %cond.false.3385
	imulq	$0, -56(%rbp), %rax
	addq	-24(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1112(%rbp)       # 8-byte Spill
.LBB22_565:                             # %cond.end.3390
	movq	-1112(%rbp), %rax       # 8-byte Reload
	subq	-56(%rbp), %rax
	movq	-1104(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB22_578
	jmp	.LBB22_575
.LBB22_566:                             # %cond.false.3395
	imulq	$0, -56(%rbp), %rax
	addq	-24(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_568
# BB#567:                               # %cond.true.3402
	imulq	$0, -56(%rbp), %rax
	addq	-24(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1120(%rbp)       # 8-byte Spill
	jmp	.LBB22_569
.LBB22_568:                             # %cond.false.3411
	imulq	$0, -56(%rbp), %rax
	addq	-24(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1120(%rbp)       # 8-byte Spill
.LBB22_569:                             # %cond.end.3416
	movq	-1120(%rbp), %rax       # 8-byte Reload
	subq	-56(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jl	.LBB22_578
	jmp	.LBB22_575
.LBB22_570:                             # %cond.false.3421
	cmpq	$0, -24(%rbp)
	jge	.LBB22_572
# BB#571:                               # %cond.true.3424
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rcx
	addq	-56(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB22_578
	jmp	.LBB22_575
.LBB22_572:                             # %cond.false.3428
	cmpq	$0, -56(%rbp)
	jge	.LBB22_574
# BB#573:                               # %cond.true.3431
	movq	-24(%rbp), %rax
	movq	-24(%rbp), %rcx
	addq	-56(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB22_578
	jmp	.LBB22_575
.LBB22_574:                             # %cond.false.3435
	movq	-24(%rbp), %rax
	addq	-56(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jl	.LBB22_578
.LBB22_575:                             # %lor.lhs.false.3439
	movq	-24(%rbp), %rax
	addq	-56(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_577
# BB#576:                               # %land.lhs.true.3445
	movq	-24(%rbp), %rax
	addq	-56(%rbp), %rax
	cmpq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	jl	.LBB22_578
.LBB22_577:                             # %lor.lhs.false.3449
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	addq	-56(%rbp), %rdx
	cmpq	%rdx, %rcx
	jge	.LBB22_582
.LBB22_578:                             # %cond.true.3453
	movq	-24(%rbp), %rax
	movl	%eax, %ecx
	movq	-56(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB22_580
# BB#579:                               # %cond.true.3459
	movq	-24(%rbp), %rax
	movl	%eax, %ecx
	movq	-56(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	movl	%ecx, -1124(%rbp)       # 4-byte Spill
	jmp	.LBB22_581
.LBB22_580:                             # %cond.false.3463
	movq	-24(%rbp), %rax
	movl	%eax, %ecx
	movq	-56(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -1124(%rbp)       # 4-byte Spill
.LBB22_581:                             # %cond.end.3469
	movl	-1124(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -64(%rbp)
	testb	$1, %cl
	jne	.LBB22_1004
	jmp	.LBB22_705
.LBB22_582:                             # %cond.false.3472
	movq	-24(%rbp), %rax
	movl	%eax, %ecx
	movq	-56(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB22_584
# BB#583:                               # %cond.true.3478
	movq	-24(%rbp), %rax
	movl	%eax, %ecx
	movq	-56(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	movl	%ecx, -1128(%rbp)       # 4-byte Spill
	jmp	.LBB22_585
.LBB22_584:                             # %cond.false.3482
	movq	-24(%rbp), %rax
	movl	%eax, %ecx
	movq	-56(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -1128(%rbp)       # 4-byte Spill
.LBB22_585:                             # %cond.end.3488
	movl	-1128(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -64(%rbp)
	testb	$1, %dl
	jne	.LBB22_1004
	jmp	.LBB22_705
.LBB22_586:                             # %cond.false.3491
	movb	$1, %al
	testb	$1, %al
	jne	.LBB22_587
	jmp	.LBB22_646
.LBB22_587:                             # %cond.true.3492
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_588
	jmp	.LBB22_617
.LBB22_588:                             # %cond.true.3493
	imulq	$0, -56(%rbp), %rax
	addq	-24(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_590
# BB#589:                               # %cond.true.3500
	xorl	%eax, %eax
	imulq	$0, -56(%rbp), %rcx
	addq	-24(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -56(%rbp), %rdi
	addq	-24(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1136(%rbp)       # 8-byte Spill
	jmp	.LBB22_591
.LBB22_590:                             # %cond.false.3519
	imulq	$0, -56(%rbp), %rax
	addq	-24(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1136(%rbp)       # 8-byte Spill
.LBB22_591:                             # %cond.end.3524
	movq	-1136(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB22_601
# BB#592:                               # %cond.true.3528
	cmpq	$0, -56(%rbp)
	jge	.LBB22_597
# BB#593:                               # %cond.true.3531
	movq	-24(%rbp), %rax
	imulq	$0, -56(%rbp), %rcx
	addq	-24(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1144(%rbp)       # 8-byte Spill
	jge	.LBB22_595
# BB#594:                               # %cond.true.3538
	xorl	%eax, %eax
	imulq	$0, -56(%rbp), %rcx
	addq	-24(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -56(%rbp), %rdi
	addq	-24(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1152(%rbp)       # 8-byte Spill
	jmp	.LBB22_596
.LBB22_595:                             # %cond.false.3557
	imulq	$0, -56(%rbp), %rax
	addq	-24(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1152(%rbp)       # 8-byte Spill
.LBB22_596:                             # %cond.end.3562
	movq	-1152(%rbp), %rax       # 8-byte Reload
	subq	-56(%rbp), %rax
	movq	-1144(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB22_609
	jmp	.LBB22_606
.LBB22_597:                             # %cond.false.3567
	imulq	$0, -56(%rbp), %rax
	addq	-24(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_599
# BB#598:                               # %cond.true.3574
	imulq	$0, -56(%rbp), %rax
	addq	-24(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1160(%rbp)       # 8-byte Spill
	jmp	.LBB22_600
.LBB22_599:                             # %cond.false.3583
	imulq	$0, -56(%rbp), %rax
	addq	-24(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1160(%rbp)       # 8-byte Spill
.LBB22_600:                             # %cond.end.3588
	movq	-1160(%rbp), %rax       # 8-byte Reload
	subq	-56(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jl	.LBB22_609
	jmp	.LBB22_606
.LBB22_601:                             # %cond.false.3593
	cmpq	$0, -24(%rbp)
	jge	.LBB22_603
# BB#602:                               # %cond.true.3596
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rcx
	addq	-56(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB22_609
	jmp	.LBB22_606
.LBB22_603:                             # %cond.false.3600
	cmpq	$0, -56(%rbp)
	jge	.LBB22_605
# BB#604:                               # %cond.true.3603
	movq	-24(%rbp), %rax
	movq	-24(%rbp), %rcx
	addq	-56(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB22_609
	jmp	.LBB22_606
.LBB22_605:                             # %cond.false.3607
	movq	-24(%rbp), %rax
	addq	-56(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jl	.LBB22_609
.LBB22_606:                             # %lor.lhs.false.3611
	movq	-24(%rbp), %rax
	addq	-56(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_608
# BB#607:                               # %land.lhs.true.3617
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-24(%rbp), %rcx
	addq	-56(%rbp), %rcx
	cmpq	%rax, %rcx
	jl	.LBB22_609
.LBB22_608:                             # %lor.lhs.false.3621
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-24(%rbp), %rcx
	addq	-56(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB22_613
.LBB22_609:                             # %cond.true.3625
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-24(%rbp), %rcx
	addq	-56(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB22_611
# BB#610:                               # %cond.true.3629
	movq	-24(%rbp), %rax
	addq	-56(%rbp), %rax
	movq	%rax, -1168(%rbp)       # 8-byte Spill
	jmp	.LBB22_612
.LBB22_611:                             # %cond.false.3631
	movq	-24(%rbp), %rax
	addq	-56(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1168(%rbp)       # 8-byte Spill
.LBB22_612:                             # %cond.end.3635
	movq	-1168(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -64(%rbp)
	testb	$1, %cl
	jne	.LBB22_1004
	jmp	.LBB22_705
.LBB22_613:                             # %cond.false.3637
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-24(%rbp), %rcx
	addq	-56(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB22_615
# BB#614:                               # %cond.true.3641
	movq	-24(%rbp), %rax
	addq	-56(%rbp), %rax
	movq	%rax, -1176(%rbp)       # 8-byte Spill
	jmp	.LBB22_616
.LBB22_615:                             # %cond.false.3643
	movq	-24(%rbp), %rax
	addq	-56(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1176(%rbp)       # 8-byte Spill
.LBB22_616:                             # %cond.end.3647
	movq	-1176(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -64(%rbp)
	testb	$1, %dl
	jne	.LBB22_1004
	jmp	.LBB22_705
.LBB22_617:                             # %cond.false.3649
	imulq	$0, -56(%rbp), %rax
	addq	-24(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_619
# BB#618:                               # %cond.true.3656
	xorl	%eax, %eax
	imulq	$0, -56(%rbp), %rcx
	addq	-24(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -56(%rbp), %rdi
	addq	-24(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1184(%rbp)       # 8-byte Spill
	jmp	.LBB22_620
.LBB22_619:                             # %cond.false.3675
	imulq	$0, -56(%rbp), %rax
	addq	-24(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1184(%rbp)       # 8-byte Spill
.LBB22_620:                             # %cond.end.3680
	movq	-1184(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB22_630
# BB#621:                               # %cond.true.3684
	cmpq	$0, -56(%rbp)
	jge	.LBB22_626
# BB#622:                               # %cond.true.3687
	movq	-24(%rbp), %rax
	imulq	$0, -56(%rbp), %rcx
	addq	-24(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1192(%rbp)       # 8-byte Spill
	jge	.LBB22_624
# BB#623:                               # %cond.true.3694
	xorl	%eax, %eax
	imulq	$0, -56(%rbp), %rcx
	addq	-24(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -56(%rbp), %rdi
	addq	-24(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1200(%rbp)       # 8-byte Spill
	jmp	.LBB22_625
.LBB22_624:                             # %cond.false.3713
	imulq	$0, -56(%rbp), %rax
	addq	-24(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1200(%rbp)       # 8-byte Spill
.LBB22_625:                             # %cond.end.3718
	movq	-1200(%rbp), %rax       # 8-byte Reload
	subq	-56(%rbp), %rax
	movq	-1192(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB22_638
	jmp	.LBB22_635
.LBB22_626:                             # %cond.false.3723
	imulq	$0, -56(%rbp), %rax
	addq	-24(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_628
# BB#627:                               # %cond.true.3730
	imulq	$0, -56(%rbp), %rax
	addq	-24(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1208(%rbp)       # 8-byte Spill
	jmp	.LBB22_629
.LBB22_628:                             # %cond.false.3739
	imulq	$0, -56(%rbp), %rax
	addq	-24(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1208(%rbp)       # 8-byte Spill
.LBB22_629:                             # %cond.end.3744
	movq	-1208(%rbp), %rax       # 8-byte Reload
	subq	-56(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jl	.LBB22_638
	jmp	.LBB22_635
.LBB22_630:                             # %cond.false.3749
	cmpq	$0, -24(%rbp)
	jge	.LBB22_632
# BB#631:                               # %cond.true.3752
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rcx
	addq	-56(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB22_638
	jmp	.LBB22_635
.LBB22_632:                             # %cond.false.3756
	cmpq	$0, -56(%rbp)
	jge	.LBB22_634
# BB#633:                               # %cond.true.3759
	movq	-24(%rbp), %rax
	movq	-24(%rbp), %rcx
	addq	-56(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB22_638
	jmp	.LBB22_635
.LBB22_634:                             # %cond.false.3763
	movq	-24(%rbp), %rax
	addq	-56(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jl	.LBB22_638
.LBB22_635:                             # %lor.lhs.false.3767
	movq	-24(%rbp), %rax
	addq	-56(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_637
# BB#636:                               # %land.lhs.true.3773
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-24(%rbp), %rcx
	addq	-56(%rbp), %rcx
	cmpq	%rax, %rcx
	jl	.LBB22_638
.LBB22_637:                             # %lor.lhs.false.3777
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-24(%rbp), %rcx
	addq	-56(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB22_642
.LBB22_638:                             # %cond.true.3781
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-24(%rbp), %rcx
	addq	-56(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB22_640
# BB#639:                               # %cond.true.3785
	movq	-24(%rbp), %rax
	addq	-56(%rbp), %rax
	movq	%rax, -1216(%rbp)       # 8-byte Spill
	jmp	.LBB22_641
.LBB22_640:                             # %cond.false.3787
	movq	-24(%rbp), %rax
	addq	-56(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1216(%rbp)       # 8-byte Spill
.LBB22_641:                             # %cond.end.3791
	movq	-1216(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -64(%rbp)
	testb	$1, %cl
	jne	.LBB22_1004
	jmp	.LBB22_705
.LBB22_642:                             # %cond.false.3793
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-24(%rbp), %rcx
	addq	-56(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB22_644
# BB#643:                               # %cond.true.3797
	movq	-24(%rbp), %rax
	addq	-56(%rbp), %rax
	movq	%rax, -1224(%rbp)       # 8-byte Spill
	jmp	.LBB22_645
.LBB22_644:                             # %cond.false.3799
	movq	-24(%rbp), %rax
	addq	-56(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1224(%rbp)       # 8-byte Spill
.LBB22_645:                             # %cond.end.3803
	movq	-1224(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -64(%rbp)
	testb	$1, %dl
	jne	.LBB22_1004
	jmp	.LBB22_705
.LBB22_646:                             # %cond.false.3805
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_647
	jmp	.LBB22_676
.LBB22_647:                             # %cond.true.3806
	imulq	$0, -56(%rbp), %rax
	addq	-24(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_649
# BB#648:                               # %cond.true.3813
	xorl	%eax, %eax
	imulq	$0, -56(%rbp), %rcx
	addq	-24(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -56(%rbp), %rdi
	addq	-24(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1232(%rbp)       # 8-byte Spill
	jmp	.LBB22_650
.LBB22_649:                             # %cond.false.3832
	imulq	$0, -56(%rbp), %rax
	addq	-24(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1232(%rbp)       # 8-byte Spill
.LBB22_650:                             # %cond.end.3837
	movq	-1232(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB22_660
# BB#651:                               # %cond.true.3841
	cmpq	$0, -56(%rbp)
	jge	.LBB22_656
# BB#652:                               # %cond.true.3844
	movq	-24(%rbp), %rax
	imulq	$0, -56(%rbp), %rcx
	addq	-24(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1240(%rbp)       # 8-byte Spill
	jge	.LBB22_654
# BB#653:                               # %cond.true.3851
	xorl	%eax, %eax
	imulq	$0, -56(%rbp), %rcx
	addq	-24(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -56(%rbp), %rdi
	addq	-24(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1248(%rbp)       # 8-byte Spill
	jmp	.LBB22_655
.LBB22_654:                             # %cond.false.3870
	imulq	$0, -56(%rbp), %rax
	addq	-24(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1248(%rbp)       # 8-byte Spill
.LBB22_655:                             # %cond.end.3875
	movq	-1248(%rbp), %rax       # 8-byte Reload
	subq	-56(%rbp), %rax
	movq	-1240(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB22_668
	jmp	.LBB22_665
.LBB22_656:                             # %cond.false.3880
	imulq	$0, -56(%rbp), %rax
	addq	-24(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_658
# BB#657:                               # %cond.true.3887
	imulq	$0, -56(%rbp), %rax
	addq	-24(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1256(%rbp)       # 8-byte Spill
	jmp	.LBB22_659
.LBB22_658:                             # %cond.false.3896
	imulq	$0, -56(%rbp), %rax
	addq	-24(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1256(%rbp)       # 8-byte Spill
.LBB22_659:                             # %cond.end.3901
	movq	-1256(%rbp), %rax       # 8-byte Reload
	subq	-56(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jl	.LBB22_668
	jmp	.LBB22_665
.LBB22_660:                             # %cond.false.3906
	cmpq	$0, -24(%rbp)
	jge	.LBB22_662
# BB#661:                               # %cond.true.3909
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rcx
	addq	-56(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB22_668
	jmp	.LBB22_665
.LBB22_662:                             # %cond.false.3913
	cmpq	$0, -56(%rbp)
	jge	.LBB22_664
# BB#663:                               # %cond.true.3916
	movq	-24(%rbp), %rax
	movq	-24(%rbp), %rcx
	addq	-56(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB22_668
	jmp	.LBB22_665
.LBB22_664:                             # %cond.false.3920
	movq	-24(%rbp), %rax
	addq	-56(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jl	.LBB22_668
.LBB22_665:                             # %lor.lhs.false.3924
	movq	-24(%rbp), %rax
	addq	-56(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_667
# BB#666:                               # %land.lhs.true.3930
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-24(%rbp), %rcx
	addq	-56(%rbp), %rcx
	cmpq	%rax, %rcx
	jl	.LBB22_668
.LBB22_667:                             # %lor.lhs.false.3934
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-24(%rbp), %rcx
	addq	-56(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB22_672
.LBB22_668:                             # %cond.true.3938
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-24(%rbp), %rcx
	addq	-56(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB22_670
# BB#669:                               # %cond.true.3942
	movq	-24(%rbp), %rax
	addq	-56(%rbp), %rax
	movq	%rax, -1264(%rbp)       # 8-byte Spill
	jmp	.LBB22_671
.LBB22_670:                             # %cond.false.3944
	movq	-24(%rbp), %rax
	addq	-56(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1264(%rbp)       # 8-byte Spill
.LBB22_671:                             # %cond.end.3948
	movq	-1264(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -64(%rbp)
	testb	$1, %cl
	jne	.LBB22_1004
	jmp	.LBB22_705
.LBB22_672:                             # %cond.false.3950
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-24(%rbp), %rcx
	addq	-56(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB22_674
# BB#673:                               # %cond.true.3954
	movq	-24(%rbp), %rax
	addq	-56(%rbp), %rax
	movq	%rax, -1272(%rbp)       # 8-byte Spill
	jmp	.LBB22_675
.LBB22_674:                             # %cond.false.3956
	movq	-24(%rbp), %rax
	addq	-56(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1272(%rbp)       # 8-byte Spill
.LBB22_675:                             # %cond.end.3960
	movq	-1272(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -64(%rbp)
	testb	$1, %dl
	jne	.LBB22_1004
	jmp	.LBB22_705
.LBB22_676:                             # %cond.false.3962
	imulq	$0, -56(%rbp), %rax
	addq	-24(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_678
# BB#677:                               # %cond.true.3969
	xorl	%eax, %eax
	imulq	$0, -56(%rbp), %rcx
	addq	-24(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -56(%rbp), %rdi
	addq	-24(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1280(%rbp)       # 8-byte Spill
	jmp	.LBB22_679
.LBB22_678:                             # %cond.false.3988
	imulq	$0, -56(%rbp), %rax
	addq	-24(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1280(%rbp)       # 8-byte Spill
.LBB22_679:                             # %cond.end.3993
	movq	-1280(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB22_689
# BB#680:                               # %cond.true.3997
	cmpq	$0, -56(%rbp)
	jge	.LBB22_685
# BB#681:                               # %cond.true.4000
	movq	-24(%rbp), %rax
	imulq	$0, -56(%rbp), %rcx
	addq	-24(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1288(%rbp)       # 8-byte Spill
	jge	.LBB22_683
# BB#682:                               # %cond.true.4007
	xorl	%eax, %eax
	imulq	$0, -56(%rbp), %rcx
	addq	-24(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -56(%rbp), %rdi
	addq	-24(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1296(%rbp)       # 8-byte Spill
	jmp	.LBB22_684
.LBB22_683:                             # %cond.false.4026
	imulq	$0, -56(%rbp), %rax
	addq	-24(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1296(%rbp)       # 8-byte Spill
.LBB22_684:                             # %cond.end.4031
	movq	-1296(%rbp), %rax       # 8-byte Reload
	subq	-56(%rbp), %rax
	movq	-1288(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB22_697
	jmp	.LBB22_694
.LBB22_685:                             # %cond.false.4036
	imulq	$0, -56(%rbp), %rax
	addq	-24(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_687
# BB#686:                               # %cond.true.4043
	imulq	$0, -56(%rbp), %rax
	addq	-24(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1304(%rbp)       # 8-byte Spill
	jmp	.LBB22_688
.LBB22_687:                             # %cond.false.4052
	imulq	$0, -56(%rbp), %rax
	addq	-24(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1304(%rbp)       # 8-byte Spill
.LBB22_688:                             # %cond.end.4057
	movq	-1304(%rbp), %rax       # 8-byte Reload
	subq	-56(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jl	.LBB22_697
	jmp	.LBB22_694
.LBB22_689:                             # %cond.false.4062
	cmpq	$0, -24(%rbp)
	jge	.LBB22_691
# BB#690:                               # %cond.true.4065
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rcx
	addq	-56(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB22_697
	jmp	.LBB22_694
.LBB22_691:                             # %cond.false.4069
	cmpq	$0, -56(%rbp)
	jge	.LBB22_693
# BB#692:                               # %cond.true.4072
	movq	-24(%rbp), %rax
	movq	-24(%rbp), %rcx
	addq	-56(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB22_697
	jmp	.LBB22_694
.LBB22_693:                             # %cond.false.4076
	movq	-24(%rbp), %rax
	addq	-56(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jl	.LBB22_697
.LBB22_694:                             # %lor.lhs.false.4080
	movq	-24(%rbp), %rax
	addq	-56(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_696
# BB#695:                               # %land.lhs.true.4086
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-24(%rbp), %rcx
	addq	-56(%rbp), %rcx
	cmpq	%rax, %rcx
	jl	.LBB22_697
.LBB22_696:                             # %lor.lhs.false.4090
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-24(%rbp), %rcx
	addq	-56(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB22_701
.LBB22_697:                             # %cond.true.4094
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-24(%rbp), %rcx
	addq	-56(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB22_699
# BB#698:                               # %cond.true.4098
	movq	-24(%rbp), %rax
	addq	-56(%rbp), %rax
	movq	%rax, -1312(%rbp)       # 8-byte Spill
	jmp	.LBB22_700
.LBB22_699:                             # %cond.false.4100
	movq	-24(%rbp), %rax
	addq	-56(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1312(%rbp)       # 8-byte Spill
.LBB22_700:                             # %cond.end.4104
	movq	-1312(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -64(%rbp)
	testb	$1, %cl
	jne	.LBB22_1004
	jmp	.LBB22_705
.LBB22_701:                             # %cond.false.4106
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-24(%rbp), %rcx
	addq	-56(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB22_703
# BB#702:                               # %cond.true.4110
	movq	-24(%rbp), %rax
	addq	-56(%rbp), %rax
	movq	%rax, -1320(%rbp)       # 8-byte Spill
	jmp	.LBB22_704
.LBB22_703:                             # %cond.false.4112
	movq	-24(%rbp), %rax
	addq	-56(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1320(%rbp)       # 8-byte Spill
.LBB22_704:                             # %cond.end.4116
	movq	-1320(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -64(%rbp)
	testb	$1, %dl
	jne	.LBB22_1004
.LBB22_705:                             # %lor.lhs.false.4118
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_706
	jmp	.LBB22_765
.LBB22_706:                             # %cond.true.4119
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_707
	jmp	.LBB22_736
.LBB22_707:                             # %cond.true.4120
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB22_709
# BB#708:                               # %cond.true.4132
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	imull	$0, %esi, %esi
	movq	-32(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	imull	$0, %esi, %esi
	movq	-32(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -1324(%rbp)       # 4-byte Spill
	jmp	.LBB22_710
.LBB22_709:                             # %cond.false.4160
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -1324(%rbp)       # 4-byte Spill
.LBB22_710:                             # %cond.end.4170
	movl	-1324(%rbp), %eax       # 4-byte Reload
	cmpl	$0, %eax
	jge	.LBB22_720
# BB#711:                               # %cond.true.4174
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB22_716
# BB#712:                               # %cond.true.4180
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	imull	$0, %esi, %esi
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -1328(%rbp)       # 4-byte Spill
	jge	.LBB22_714
# BB#713:                               # %cond.true.4194
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	imull	$0, %esi, %esi
	movq	-32(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	imull	$0, %esi, %esi
	movq	-32(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -1332(%rbp)       # 4-byte Spill
	jmp	.LBB22_715
.LBB22_714:                             # %cond.false.4222
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -1332(%rbp)       # 4-byte Spill
.LBB22_715:                             # %cond.end.4232
	movl	-1332(%rbp), %eax       # 4-byte Reload
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	subl	%esi, %eax
	movl	-1328(%rbp), %esi       # 4-byte Reload
	cmpl	%eax, %esi
	jl	.LBB22_728
	jmp	.LBB22_725
.LBB22_716:                             # %cond.false.4240
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB22_718
# BB#717:                               # %cond.true.4252
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -1336(%rbp)       # 4-byte Spill
	jmp	.LBB22_719
.LBB22_718:                             # %cond.false.4266
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -1336(%rbp)       # 4-byte Spill
.LBB22_719:                             # %cond.end.4276
	movl	-1336(%rbp), %eax       # 4-byte Reload
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	subl	%esi, %eax
	movq	-32(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	cmpl	%esi, %eax
	jl	.LBB22_728
	jmp	.LBB22_725
.LBB22_720:                             # %cond.false.4286
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB22_722
# BB#721:                               # %cond.true.4291
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edi
	addl	%edi, %esi
	cmpl	%esi, %edx
	jle	.LBB22_728
	jmp	.LBB22_725
.LBB22_722:                             # %cond.false.4303
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB22_724
# BB#723:                               # %cond.true.4309
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edi
	addl	%edi, %esi
	cmpl	%esi, %edx
	jle	.LBB22_728
	jmp	.LBB22_725
.LBB22_724:                             # %cond.false.4320
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	cmpl	%esi, %edx
	jl	.LBB22_728
.LBB22_725:                             # %lor.lhs.false.4332
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB22_727
# BB#726:                               # %land.lhs.true.4343
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	cmpl	$-128, %edx
	jl	.LBB22_728
.LBB22_727:                             # %lor.lhs.false.4352
	movl	$127, %eax
	movq	-32(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	movb	%cl, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
	cmpl	%esi, %eax
	jge	.LBB22_732
.LBB22_728:                             # %cond.true.4361
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	cmpl	$127, %edx
	jg	.LBB22_730
# BB#729:                               # %cond.true.4370
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -1340(%rbp)       # 4-byte Spill
	jmp	.LBB22_731
.LBB22_730:                             # %cond.false.4379
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -1340(%rbp)       # 4-byte Spill
.LBB22_731:                             # %cond.end.4390
	movl	-1340(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -72(%rbp)
	testb	$1, %cl
	jne	.LBB22_1004
	jmp	.LBB22_1005
.LBB22_732:                             # %cond.false.4393
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	cmpl	$127, %edx
	jg	.LBB22_734
# BB#733:                               # %cond.true.4402
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -1344(%rbp)       # 4-byte Spill
	jmp	.LBB22_735
.LBB22_734:                             # %cond.false.4411
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -1344(%rbp)       # 4-byte Spill
.LBB22_735:                             # %cond.end.4422
	movl	-1344(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -72(%rbp)
	testb	$1, %dl
	jne	.LBB22_1004
	jmp	.LBB22_1005
.LBB22_736:                             # %cond.false.4425
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	imulq	$0, %rax, %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_738
# BB#737:                               # %cond.true.4433
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	imulq	$0, %rcx, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdi
	shlq	$1, %rdi
	imulq	$0, %rdi, %rdi
	addq	-32(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1352(%rbp)       # 8-byte Spill
	jmp	.LBB22_739
.LBB22_738:                             # %cond.false.4454
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	imulq	$0, %rax, %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1352(%rbp)       # 8-byte Spill
.LBB22_739:                             # %cond.end.4460
	movq	-1352(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB22_749
# BB#740:                               # %cond.true.4464
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_745
# BB#741:                               # %cond.true.4468
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	imulq	$0, %rcx, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1360(%rbp)       # 8-byte Spill
	jge	.LBB22_743
# BB#742:                               # %cond.true.4476
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	imulq	$0, %rcx, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdi
	shlq	$1, %rdi
	imulq	$0, %rdi, %rdi
	addq	-32(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1368(%rbp)       # 8-byte Spill
	jmp	.LBB22_744
.LBB22_743:                             # %cond.false.4497
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	imulq	$0, %rax, %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1368(%rbp)       # 8-byte Spill
.LBB22_744:                             # %cond.end.4503
	movq	-1368(%rbp), %rax       # 8-byte Reload
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	subq	%rcx, %rax
	movq	-1360(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB22_757
	jmp	.LBB22_754
.LBB22_745:                             # %cond.false.4509
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	imulq	$0, %rax, %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_747
# BB#746:                               # %cond.true.4517
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	imulq	$0, %rax, %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1376(%rbp)       # 8-byte Spill
	jmp	.LBB22_748
.LBB22_747:                             # %cond.false.4527
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	imulq	$0, %rax, %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1376(%rbp)       # 8-byte Spill
.LBB22_748:                             # %cond.end.4533
	movq	-1376(%rbp), %rax       # 8-byte Reload
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	subq	%rcx, %rax
	cmpq	-32(%rbp), %rax
	jl	.LBB22_757
	jmp	.LBB22_754
.LBB22_749:                             # %cond.false.4539
	cmpq	$0, -32(%rbp)
	jge	.LBB22_751
# BB#750:                               # %cond.true.4542
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movq	-32(%rbp), %rcx
	movq	-48(%rbp), %rdx
	shlq	$1, %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jle	.LBB22_757
	jmp	.LBB22_754
.LBB22_751:                             # %cond.false.4548
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_753
# BB#752:                               # %cond.true.4552
	movq	-32(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	-48(%rbp), %rdx
	shlq	$1, %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jle	.LBB22_757
	jmp	.LBB22_754
.LBB22_753:                             # %cond.false.4557
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	cmpq	%rcx, %rax
	jl	.LBB22_757
.LBB22_754:                             # %lor.lhs.false.4563
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_756
# BB#755:                               # %land.lhs.true.4570
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	cmpq	$-128, %rax
	jl	.LBB22_757
.LBB22_756:                             # %lor.lhs.false.4575
	movl	$127, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rsi
	shlq	$1, %rsi
	addq	%rsi, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB22_761
.LBB22_757:                             # %cond.true.4580
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	cmpl	$127, %edx
	jg	.LBB22_759
# BB#758:                               # %cond.true.4589
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -1380(%rbp)       # 4-byte Spill
	jmp	.LBB22_760
.LBB22_759:                             # %cond.false.4598
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -1380(%rbp)       # 4-byte Spill
.LBB22_760:                             # %cond.end.4609
	movl	-1380(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -72(%rbp)
	testb	$1, %cl
	jne	.LBB22_1004
	jmp	.LBB22_1005
.LBB22_761:                             # %cond.false.4612
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	cmpl	$127, %edx
	jg	.LBB22_763
# BB#762:                               # %cond.true.4621
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -1384(%rbp)       # 4-byte Spill
	jmp	.LBB22_764
.LBB22_763:                             # %cond.false.4630
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -1384(%rbp)       # 4-byte Spill
.LBB22_764:                             # %cond.end.4641
	movl	-1384(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -72(%rbp)
	testb	$1, %dl
	jne	.LBB22_1004
	jmp	.LBB22_1005
.LBB22_765:                             # %cond.false.4644
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_766
	jmp	.LBB22_825
.LBB22_766:                             # %cond.true.4645
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_767
	jmp	.LBB22_796
.LBB22_767:                             # %cond.true.4646
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB22_769
# BB#768:                               # %cond.true.4658
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	movq	-32(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %esi
	subl	%esi, %eax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	movq	-32(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -1388(%rbp)       # 4-byte Spill
	jmp	.LBB22_770
.LBB22_769:                             # %cond.false.4686
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -1388(%rbp)       # 4-byte Spill
.LBB22_770:                             # %cond.end.4696
	movl	-1388(%rbp), %eax       # 4-byte Reload
	cmpl	$0, %eax
	jge	.LBB22_780
# BB#771:                               # %cond.true.4700
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB22_776
# BB#772:                               # %cond.true.4706
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	imull	$0, %esi, %esi
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -1392(%rbp)       # 4-byte Spill
	jge	.LBB22_774
# BB#773:                               # %cond.true.4720
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	movq	-32(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %esi
	subl	%esi, %eax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	movq	-32(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -1396(%rbp)       # 4-byte Spill
	jmp	.LBB22_775
.LBB22_774:                             # %cond.false.4748
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -1396(%rbp)       # 4-byte Spill
.LBB22_775:                             # %cond.end.4758
	movl	-1396(%rbp), %eax       # 4-byte Reload
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	subl	%esi, %eax
	movl	-1392(%rbp), %esi       # 4-byte Reload
	cmpl	%eax, %esi
	jl	.LBB22_788
	jmp	.LBB22_785
.LBB22_776:                             # %cond.false.4766
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB22_778
# BB#777:                               # %cond.true.4778
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -1400(%rbp)       # 4-byte Spill
	jmp	.LBB22_779
.LBB22_778:                             # %cond.false.4792
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -1400(%rbp)       # 4-byte Spill
.LBB22_779:                             # %cond.end.4802
	movl	-1400(%rbp), %eax       # 4-byte Reload
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	subl	%esi, %eax
	movq	-32(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	cmpl	%esi, %eax
	jl	.LBB22_788
	jmp	.LBB22_785
.LBB22_780:                             # %cond.false.4812
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB22_782
# BB#781:                               # %cond.true.4817
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edi
	addl	%edi, %esi
	cmpl	%esi, %edx
	jle	.LBB22_788
	jmp	.LBB22_785
.LBB22_782:                             # %cond.false.4829
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB22_784
# BB#783:                               # %cond.true.4835
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edi
	addl	%edi, %esi
	cmpl	%esi, %edx
	jle	.LBB22_788
	jmp	.LBB22_785
.LBB22_784:                             # %cond.false.4846
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	cmpl	%esi, %edx
	jl	.LBB22_788
.LBB22_785:                             # %lor.lhs.false.4858
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB22_787
# BB#786:                               # %land.lhs.true.4869
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	cmpl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB22_788
.LBB22_787:                             # %lor.lhs.false.4878
	movl	$32767, %eax            # imm = 0x7FFF
	movq	-32(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	movw	%cx, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	cmpl	%esi, %eax
	jge	.LBB22_792
.LBB22_788:                             # %cond.true.4887
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB22_790
# BB#789:                               # %cond.true.4896
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -1404(%rbp)       # 4-byte Spill
	jmp	.LBB22_791
.LBB22_790:                             # %cond.false.4905
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -1404(%rbp)       # 4-byte Spill
.LBB22_791:                             # %cond.end.4916
	movl	-1404(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -72(%rbp)
	testb	$1, %cl
	jne	.LBB22_1004
	jmp	.LBB22_1005
.LBB22_792:                             # %cond.false.4919
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB22_794
# BB#793:                               # %cond.true.4928
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -1408(%rbp)       # 4-byte Spill
	jmp	.LBB22_795
.LBB22_794:                             # %cond.false.4937
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -1408(%rbp)       # 4-byte Spill
.LBB22_795:                             # %cond.end.4948
	movl	-1408(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -72(%rbp)
	testb	$1, %dl
	jne	.LBB22_1004
	jmp	.LBB22_1005
.LBB22_796:                             # %cond.false.4951
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	imulq	$0, %rax, %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_798
# BB#797:                               # %cond.true.4959
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	imulq	$0, %rcx, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdi
	shlq	$1, %rdi
	imulq	$0, %rdi, %rdi
	addq	-32(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1416(%rbp)       # 8-byte Spill
	jmp	.LBB22_799
.LBB22_798:                             # %cond.false.4980
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	imulq	$0, %rax, %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1416(%rbp)       # 8-byte Spill
.LBB22_799:                             # %cond.end.4986
	movq	-1416(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB22_809
# BB#800:                               # %cond.true.4990
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_805
# BB#801:                               # %cond.true.4994
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	imulq	$0, %rcx, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1424(%rbp)       # 8-byte Spill
	jge	.LBB22_803
# BB#802:                               # %cond.true.5002
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	imulq	$0, %rcx, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdi
	shlq	$1, %rdi
	imulq	$0, %rdi, %rdi
	addq	-32(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1432(%rbp)       # 8-byte Spill
	jmp	.LBB22_804
.LBB22_803:                             # %cond.false.5023
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	imulq	$0, %rax, %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1432(%rbp)       # 8-byte Spill
.LBB22_804:                             # %cond.end.5029
	movq	-1432(%rbp), %rax       # 8-byte Reload
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	subq	%rcx, %rax
	movq	-1424(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB22_817
	jmp	.LBB22_814
.LBB22_805:                             # %cond.false.5035
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	imulq	$0, %rax, %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_807
# BB#806:                               # %cond.true.5043
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	imulq	$0, %rax, %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1440(%rbp)       # 8-byte Spill
	jmp	.LBB22_808
.LBB22_807:                             # %cond.false.5053
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	imulq	$0, %rax, %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1440(%rbp)       # 8-byte Spill
.LBB22_808:                             # %cond.end.5059
	movq	-1440(%rbp), %rax       # 8-byte Reload
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	subq	%rcx, %rax
	cmpq	-32(%rbp), %rax
	jl	.LBB22_817
	jmp	.LBB22_814
.LBB22_809:                             # %cond.false.5065
	cmpq	$0, -32(%rbp)
	jge	.LBB22_811
# BB#810:                               # %cond.true.5068
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movq	-32(%rbp), %rcx
	movq	-48(%rbp), %rdx
	shlq	$1, %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jle	.LBB22_817
	jmp	.LBB22_814
.LBB22_811:                             # %cond.false.5074
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_813
# BB#812:                               # %cond.true.5078
	movq	-32(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	-48(%rbp), %rdx
	shlq	$1, %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jle	.LBB22_817
	jmp	.LBB22_814
.LBB22_813:                             # %cond.false.5083
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	cmpq	%rcx, %rax
	jl	.LBB22_817
.LBB22_814:                             # %lor.lhs.false.5089
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_816
# BB#815:                               # %land.lhs.true.5096
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	cmpq	$-32768, %rax           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB22_817
.LBB22_816:                             # %lor.lhs.false.5101
	movl	$32767, %eax            # imm = 0x7FFF
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rsi
	shlq	$1, %rsi
	addq	%rsi, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB22_821
.LBB22_817:                             # %cond.true.5106
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB22_819
# BB#818:                               # %cond.true.5115
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -1444(%rbp)       # 4-byte Spill
	jmp	.LBB22_820
.LBB22_819:                             # %cond.false.5124
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -1444(%rbp)       # 4-byte Spill
.LBB22_820:                             # %cond.end.5135
	movl	-1444(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -72(%rbp)
	testb	$1, %cl
	jne	.LBB22_1004
	jmp	.LBB22_1005
.LBB22_821:                             # %cond.false.5138
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB22_823
# BB#822:                               # %cond.true.5147
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -1448(%rbp)       # 4-byte Spill
	jmp	.LBB22_824
.LBB22_823:                             # %cond.false.5156
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -1448(%rbp)       # 4-byte Spill
.LBB22_824:                             # %cond.end.5167
	movl	-1448(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -72(%rbp)
	testb	$1, %dl
	jne	.LBB22_1004
	jmp	.LBB22_1005
.LBB22_825:                             # %cond.false.5170
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_826
	jmp	.LBB22_885
.LBB22_826:                             # %cond.true.5171
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_827
	jmp	.LBB22_856
.LBB22_827:                             # %cond.true.5172
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-32(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB22_829
# BB#828:                               # %cond.true.5182
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	movl	%ecx, %edx
	imull	$0, %edx, %edx
	movq	-32(%rbp), %rcx
	movl	%ecx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %edx
	subl	%edx, %eax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	movl	%ecx, %edx
	imull	$0, %edx, %edx
	movq	-32(%rbp), %rcx
	movl	%ecx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -1452(%rbp)       # 4-byte Spill
	jmp	.LBB22_830
.LBB22_829:                             # %cond.false.5206
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-32(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -1452(%rbp)       # 4-byte Spill
.LBB22_830:                             # %cond.end.5214
	movl	-1452(%rbp), %eax       # 4-byte Reload
	cmpl	$0, %eax
	jge	.LBB22_840
# BB#831:                               # %cond.true.5218
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB22_836
# BB#832:                               # %cond.true.5223
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %edx
	imull	$0, %edx, %edx
	movq	-32(%rbp), %rax
	movl	%eax, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -1456(%rbp)       # 4-byte Spill
	jge	.LBB22_834
# BB#833:                               # %cond.true.5234
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	movl	%ecx, %edx
	imull	$0, %edx, %edx
	movq	-32(%rbp), %rcx
	movl	%ecx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %edx
	subl	%edx, %eax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	movl	%ecx, %edx
	imull	$0, %edx, %edx
	movq	-32(%rbp), %rcx
	movl	%ecx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -1460(%rbp)       # 4-byte Spill
	jmp	.LBB22_835
.LBB22_834:                             # %cond.false.5258
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-32(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -1460(%rbp)       # 4-byte Spill
.LBB22_835:                             # %cond.end.5266
	movl	-1460(%rbp), %eax       # 4-byte Reload
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	movl	%ecx, %edx
	subl	%edx, %eax
	movl	-1456(%rbp), %edx       # 4-byte Reload
	cmpl	%eax, %edx
	jl	.LBB22_848
	jmp	.LBB22_845
.LBB22_836:                             # %cond.false.5273
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-32(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB22_838
# BB#837:                               # %cond.true.5283
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-32(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -1464(%rbp)       # 4-byte Spill
	jmp	.LBB22_839
.LBB22_838:                             # %cond.false.5295
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-32(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -1464(%rbp)       # 4-byte Spill
.LBB22_839:                             # %cond.end.5303
	movl	-1464(%rbp), %eax       # 4-byte Reload
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	movl	%ecx, %edx
	subl	%edx, %eax
	movq	-32(%rbp), %rcx
	movl	%ecx, %edx
	cmpl	%edx, %eax
	jl	.LBB22_848
	jmp	.LBB22_845
.LBB22_840:                             # %cond.false.5311
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB22_842
# BB#841:                               # %cond.true.5315
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %esi
	addl	%esi, %edx
	cmpl	%edx, %ecx
	jle	.LBB22_848
	jmp	.LBB22_845
.LBB22_842:                             # %cond.false.5324
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB22_844
# BB#843:                               # %cond.true.5329
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %esi
	addl	%esi, %edx
	cmpl	%edx, %ecx
	jle	.LBB22_848
	jmp	.LBB22_845
.LBB22_844:                             # %cond.false.5337
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %edx
	cmpl	%edx, %ecx
	jl	.LBB22_848
.LBB22_845:                             # %lor.lhs.false.5346
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB22_847
# BB#846:                               # %land.lhs.true.5355
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	cmpl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	jl	.LBB22_848
.LBB22_847:                             # %lor.lhs.false.5362
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movq	-32(%rbp), %rcx
	movl	%ecx, %edx
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	movl	%ecx, %esi
	addl	%esi, %edx
	cmpl	%edx, %eax
	jge	.LBB22_852
.LBB22_848:                             # %cond.true.5369
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB22_850
# BB#849:                               # %cond.true.5376
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	movl	%ecx, -1468(%rbp)       # 4-byte Spill
	jmp	.LBB22_851
.LBB22_850:                             # %cond.false.5381
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -1468(%rbp)       # 4-byte Spill
.LBB22_851:                             # %cond.end.5388
	movl	-1468(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -72(%rbp)
	testb	$1, %cl
	jne	.LBB22_1004
	jmp	.LBB22_1005
.LBB22_852:                             # %cond.false.5391
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB22_854
# BB#853:                               # %cond.true.5398
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	movl	%ecx, -1472(%rbp)       # 4-byte Spill
	jmp	.LBB22_855
.LBB22_854:                             # %cond.false.5403
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -1472(%rbp)       # 4-byte Spill
.LBB22_855:                             # %cond.end.5410
	movl	-1472(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -72(%rbp)
	testb	$1, %dl
	jne	.LBB22_1004
	jmp	.LBB22_1005
.LBB22_856:                             # %cond.false.5413
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	imulq	$0, %rax, %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_858
# BB#857:                               # %cond.true.5421
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	imulq	$0, %rcx, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdi
	shlq	$1, %rdi
	imulq	$0, %rdi, %rdi
	addq	-32(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1480(%rbp)       # 8-byte Spill
	jmp	.LBB22_859
.LBB22_858:                             # %cond.false.5442
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	imulq	$0, %rax, %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1480(%rbp)       # 8-byte Spill
.LBB22_859:                             # %cond.end.5448
	movq	-1480(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB22_869
# BB#860:                               # %cond.true.5452
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_865
# BB#861:                               # %cond.true.5456
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	imulq	$0, %rcx, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1488(%rbp)       # 8-byte Spill
	jge	.LBB22_863
# BB#862:                               # %cond.true.5464
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	imulq	$0, %rcx, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdi
	shlq	$1, %rdi
	imulq	$0, %rdi, %rdi
	addq	-32(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1496(%rbp)       # 8-byte Spill
	jmp	.LBB22_864
.LBB22_863:                             # %cond.false.5485
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	imulq	$0, %rax, %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1496(%rbp)       # 8-byte Spill
.LBB22_864:                             # %cond.end.5491
	movq	-1496(%rbp), %rax       # 8-byte Reload
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	subq	%rcx, %rax
	movq	-1488(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB22_877
	jmp	.LBB22_874
.LBB22_865:                             # %cond.false.5497
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	imulq	$0, %rax, %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_867
# BB#866:                               # %cond.true.5505
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	imulq	$0, %rax, %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1504(%rbp)       # 8-byte Spill
	jmp	.LBB22_868
.LBB22_867:                             # %cond.false.5515
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	imulq	$0, %rax, %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1504(%rbp)       # 8-byte Spill
.LBB22_868:                             # %cond.end.5521
	movq	-1504(%rbp), %rax       # 8-byte Reload
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	subq	%rcx, %rax
	cmpq	-32(%rbp), %rax
	jl	.LBB22_877
	jmp	.LBB22_874
.LBB22_869:                             # %cond.false.5527
	cmpq	$0, -32(%rbp)
	jge	.LBB22_871
# BB#870:                               # %cond.true.5530
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movq	-32(%rbp), %rcx
	movq	-48(%rbp), %rdx
	shlq	$1, %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jle	.LBB22_877
	jmp	.LBB22_874
.LBB22_871:                             # %cond.false.5536
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_873
# BB#872:                               # %cond.true.5540
	movq	-32(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	-48(%rbp), %rdx
	shlq	$1, %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jle	.LBB22_877
	jmp	.LBB22_874
.LBB22_873:                             # %cond.false.5545
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	cmpq	%rcx, %rax
	jl	.LBB22_877
.LBB22_874:                             # %lor.lhs.false.5551
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_876
# BB#875:                               # %land.lhs.true.5558
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	cmpq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	jl	.LBB22_877
.LBB22_876:                             # %lor.lhs.false.5563
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rsi
	shlq	$1, %rsi
	addq	%rsi, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB22_881
.LBB22_877:                             # %cond.true.5568
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB22_879
# BB#878:                               # %cond.true.5575
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	movl	%ecx, -1508(%rbp)       # 4-byte Spill
	jmp	.LBB22_880
.LBB22_879:                             # %cond.false.5580
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -1508(%rbp)       # 4-byte Spill
.LBB22_880:                             # %cond.end.5587
	movl	-1508(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -72(%rbp)
	testb	$1, %cl
	jne	.LBB22_1004
	jmp	.LBB22_1005
.LBB22_881:                             # %cond.false.5590
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB22_883
# BB#882:                               # %cond.true.5597
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	movl	%ecx, -1512(%rbp)       # 4-byte Spill
	jmp	.LBB22_884
.LBB22_883:                             # %cond.false.5602
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -1512(%rbp)       # 4-byte Spill
.LBB22_884:                             # %cond.end.5609
	movl	-1512(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -72(%rbp)
	testb	$1, %dl
	jne	.LBB22_1004
	jmp	.LBB22_1005
.LBB22_885:                             # %cond.false.5612
	movb	$1, %al
	testb	$1, %al
	jne	.LBB22_886
	jmp	.LBB22_945
.LBB22_886:                             # %cond.true.5613
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_887
	jmp	.LBB22_916
.LBB22_887:                             # %cond.true.5614
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	imulq	$0, %rax, %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_889
# BB#888:                               # %cond.true.5622
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	imulq	$0, %rcx, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdi
	shlq	$1, %rdi
	imulq	$0, %rdi, %rdi
	addq	-32(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1520(%rbp)       # 8-byte Spill
	jmp	.LBB22_890
.LBB22_889:                             # %cond.false.5643
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	imulq	$0, %rax, %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1520(%rbp)       # 8-byte Spill
.LBB22_890:                             # %cond.end.5649
	movq	-1520(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB22_900
# BB#891:                               # %cond.true.5653
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_896
# BB#892:                               # %cond.true.5657
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	imulq	$0, %rcx, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1528(%rbp)       # 8-byte Spill
	jge	.LBB22_894
# BB#893:                               # %cond.true.5665
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	imulq	$0, %rcx, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdi
	shlq	$1, %rdi
	imulq	$0, %rdi, %rdi
	addq	-32(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1536(%rbp)       # 8-byte Spill
	jmp	.LBB22_895
.LBB22_894:                             # %cond.false.5686
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	imulq	$0, %rax, %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1536(%rbp)       # 8-byte Spill
.LBB22_895:                             # %cond.end.5692
	movq	-1536(%rbp), %rax       # 8-byte Reload
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	subq	%rcx, %rax
	movq	-1528(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB22_908
	jmp	.LBB22_905
.LBB22_896:                             # %cond.false.5698
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	imulq	$0, %rax, %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_898
# BB#897:                               # %cond.true.5706
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	imulq	$0, %rax, %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1544(%rbp)       # 8-byte Spill
	jmp	.LBB22_899
.LBB22_898:                             # %cond.false.5716
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	imulq	$0, %rax, %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1544(%rbp)       # 8-byte Spill
.LBB22_899:                             # %cond.end.5722
	movq	-1544(%rbp), %rax       # 8-byte Reload
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	subq	%rcx, %rax
	cmpq	-32(%rbp), %rax
	jl	.LBB22_908
	jmp	.LBB22_905
.LBB22_900:                             # %cond.false.5728
	cmpq	$0, -32(%rbp)
	jge	.LBB22_902
# BB#901:                               # %cond.true.5731
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movq	-32(%rbp), %rcx
	movq	-48(%rbp), %rdx
	shlq	$1, %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jle	.LBB22_908
	jmp	.LBB22_905
.LBB22_902:                             # %cond.false.5737
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_904
# BB#903:                               # %cond.true.5741
	movq	-32(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	-48(%rbp), %rdx
	shlq	$1, %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jle	.LBB22_908
	jmp	.LBB22_905
.LBB22_904:                             # %cond.false.5746
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	cmpq	%rcx, %rax
	jl	.LBB22_908
.LBB22_905:                             # %lor.lhs.false.5752
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_907
# BB#906:                               # %land.lhs.true.5759
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-32(%rbp), %rcx
	movq	-48(%rbp), %rdx
	shlq	$1, %rdx
	addq	%rdx, %rcx
	cmpq	%rax, %rcx
	jl	.LBB22_908
.LBB22_907:                             # %lor.lhs.false.5764
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	movq	-48(%rbp), %rdx
	shlq	$1, %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jge	.LBB22_912
.LBB22_908:                             # %cond.true.5769
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	movq	-48(%rbp), %rdx
	shlq	$1, %rdx
	addq	%rdx, %rcx
	cmpq	%rax, %rcx
	ja	.LBB22_910
# BB#909:                               # %cond.true.5774
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, -1552(%rbp)       # 8-byte Spill
	jmp	.LBB22_911
.LBB22_910:                             # %cond.false.5777
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1552(%rbp)       # 8-byte Spill
.LBB22_911:                             # %cond.end.5782
	movq	-1552(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -72(%rbp)
	testb	$1, %cl
	jne	.LBB22_1004
	jmp	.LBB22_1005
.LBB22_912:                             # %cond.false.5784
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	movq	-48(%rbp), %rdx
	shlq	$1, %rdx
	addq	%rdx, %rcx
	cmpq	%rax, %rcx
	ja	.LBB22_914
# BB#913:                               # %cond.true.5789
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, -1560(%rbp)       # 8-byte Spill
	jmp	.LBB22_915
.LBB22_914:                             # %cond.false.5792
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1560(%rbp)       # 8-byte Spill
.LBB22_915:                             # %cond.end.5797
	movq	-1560(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -72(%rbp)
	testb	$1, %dl
	jne	.LBB22_1004
	jmp	.LBB22_1005
.LBB22_916:                             # %cond.false.5799
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	imulq	$0, %rax, %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_918
# BB#917:                               # %cond.true.5807
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	imulq	$0, %rcx, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdi
	shlq	$1, %rdi
	imulq	$0, %rdi, %rdi
	addq	-32(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1568(%rbp)       # 8-byte Spill
	jmp	.LBB22_919
.LBB22_918:                             # %cond.false.5828
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	imulq	$0, %rax, %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1568(%rbp)       # 8-byte Spill
.LBB22_919:                             # %cond.end.5834
	movq	-1568(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB22_929
# BB#920:                               # %cond.true.5838
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_925
# BB#921:                               # %cond.true.5842
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	imulq	$0, %rcx, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1576(%rbp)       # 8-byte Spill
	jge	.LBB22_923
# BB#922:                               # %cond.true.5850
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	imulq	$0, %rcx, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdi
	shlq	$1, %rdi
	imulq	$0, %rdi, %rdi
	addq	-32(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1584(%rbp)       # 8-byte Spill
	jmp	.LBB22_924
.LBB22_923:                             # %cond.false.5871
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	imulq	$0, %rax, %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1584(%rbp)       # 8-byte Spill
.LBB22_924:                             # %cond.end.5877
	movq	-1584(%rbp), %rax       # 8-byte Reload
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	subq	%rcx, %rax
	movq	-1576(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB22_937
	jmp	.LBB22_934
.LBB22_925:                             # %cond.false.5883
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	imulq	$0, %rax, %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_927
# BB#926:                               # %cond.true.5891
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	imulq	$0, %rax, %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1592(%rbp)       # 8-byte Spill
	jmp	.LBB22_928
.LBB22_927:                             # %cond.false.5901
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	imulq	$0, %rax, %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1592(%rbp)       # 8-byte Spill
.LBB22_928:                             # %cond.end.5907
	movq	-1592(%rbp), %rax       # 8-byte Reload
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	subq	%rcx, %rax
	cmpq	-32(%rbp), %rax
	jl	.LBB22_937
	jmp	.LBB22_934
.LBB22_929:                             # %cond.false.5913
	cmpq	$0, -32(%rbp)
	jge	.LBB22_931
# BB#930:                               # %cond.true.5916
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movq	-32(%rbp), %rcx
	movq	-48(%rbp), %rdx
	shlq	$1, %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jle	.LBB22_937
	jmp	.LBB22_934
.LBB22_931:                             # %cond.false.5922
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_933
# BB#932:                               # %cond.true.5926
	movq	-32(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	-48(%rbp), %rdx
	shlq	$1, %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jle	.LBB22_937
	jmp	.LBB22_934
.LBB22_933:                             # %cond.false.5931
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	cmpq	%rcx, %rax
	jl	.LBB22_937
.LBB22_934:                             # %lor.lhs.false.5937
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_936
# BB#935:                               # %land.lhs.true.5944
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-32(%rbp), %rcx
	movq	-48(%rbp), %rdx
	shlq	$1, %rdx
	addq	%rdx, %rcx
	cmpq	%rax, %rcx
	jl	.LBB22_937
.LBB22_936:                             # %lor.lhs.false.5949
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	movq	-48(%rbp), %rdx
	shlq	$1, %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jge	.LBB22_941
.LBB22_937:                             # %cond.true.5954
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	movq	-48(%rbp), %rdx
	shlq	$1, %rdx
	addq	%rdx, %rcx
	cmpq	%rax, %rcx
	ja	.LBB22_939
# BB#938:                               # %cond.true.5959
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, -1600(%rbp)       # 8-byte Spill
	jmp	.LBB22_940
.LBB22_939:                             # %cond.false.5962
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1600(%rbp)       # 8-byte Spill
.LBB22_940:                             # %cond.end.5967
	movq	-1600(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -72(%rbp)
	testb	$1, %cl
	jne	.LBB22_1004
	jmp	.LBB22_1005
.LBB22_941:                             # %cond.false.5969
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	movq	-48(%rbp), %rdx
	shlq	$1, %rdx
	addq	%rdx, %rcx
	cmpq	%rax, %rcx
	ja	.LBB22_943
# BB#942:                               # %cond.true.5974
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, -1608(%rbp)       # 8-byte Spill
	jmp	.LBB22_944
.LBB22_943:                             # %cond.false.5977
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1608(%rbp)       # 8-byte Spill
.LBB22_944:                             # %cond.end.5982
	movq	-1608(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -72(%rbp)
	testb	$1, %dl
	jne	.LBB22_1004
	jmp	.LBB22_1005
.LBB22_945:                             # %cond.false.5984
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_946
	jmp	.LBB22_975
.LBB22_946:                             # %cond.true.5985
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	imulq	$0, %rax, %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_948
# BB#947:                               # %cond.true.5993
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	imulq	$0, %rcx, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdi
	shlq	$1, %rdi
	imulq	$0, %rdi, %rdi
	addq	-32(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1616(%rbp)       # 8-byte Spill
	jmp	.LBB22_949
.LBB22_948:                             # %cond.false.6014
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	imulq	$0, %rax, %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1616(%rbp)       # 8-byte Spill
.LBB22_949:                             # %cond.end.6020
	movq	-1616(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB22_959
# BB#950:                               # %cond.true.6024
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_955
# BB#951:                               # %cond.true.6028
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	imulq	$0, %rcx, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1624(%rbp)       # 8-byte Spill
	jge	.LBB22_953
# BB#952:                               # %cond.true.6036
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	imulq	$0, %rcx, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdi
	shlq	$1, %rdi
	imulq	$0, %rdi, %rdi
	addq	-32(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1632(%rbp)       # 8-byte Spill
	jmp	.LBB22_954
.LBB22_953:                             # %cond.false.6057
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	imulq	$0, %rax, %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1632(%rbp)       # 8-byte Spill
.LBB22_954:                             # %cond.end.6063
	movq	-1632(%rbp), %rax       # 8-byte Reload
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	subq	%rcx, %rax
	movq	-1624(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB22_967
	jmp	.LBB22_964
.LBB22_955:                             # %cond.false.6069
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	imulq	$0, %rax, %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_957
# BB#956:                               # %cond.true.6077
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	imulq	$0, %rax, %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1640(%rbp)       # 8-byte Spill
	jmp	.LBB22_958
.LBB22_957:                             # %cond.false.6087
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	imulq	$0, %rax, %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1640(%rbp)       # 8-byte Spill
.LBB22_958:                             # %cond.end.6093
	movq	-1640(%rbp), %rax       # 8-byte Reload
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	subq	%rcx, %rax
	cmpq	-32(%rbp), %rax
	jl	.LBB22_967
	jmp	.LBB22_964
.LBB22_959:                             # %cond.false.6099
	cmpq	$0, -32(%rbp)
	jge	.LBB22_961
# BB#960:                               # %cond.true.6102
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movq	-32(%rbp), %rcx
	movq	-48(%rbp), %rdx
	shlq	$1, %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jle	.LBB22_967
	jmp	.LBB22_964
.LBB22_961:                             # %cond.false.6108
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_963
# BB#962:                               # %cond.true.6112
	movq	-32(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	-48(%rbp), %rdx
	shlq	$1, %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jle	.LBB22_967
	jmp	.LBB22_964
.LBB22_963:                             # %cond.false.6117
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	cmpq	%rcx, %rax
	jl	.LBB22_967
.LBB22_964:                             # %lor.lhs.false.6123
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_966
# BB#965:                               # %land.lhs.true.6130
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-32(%rbp), %rcx
	movq	-48(%rbp), %rdx
	shlq	$1, %rdx
	addq	%rdx, %rcx
	cmpq	%rax, %rcx
	jl	.LBB22_967
.LBB22_966:                             # %lor.lhs.false.6135
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	movq	-48(%rbp), %rdx
	shlq	$1, %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jge	.LBB22_971
.LBB22_967:                             # %cond.true.6140
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	movq	-48(%rbp), %rdx
	shlq	$1, %rdx
	addq	%rdx, %rcx
	cmpq	%rax, %rcx
	ja	.LBB22_969
# BB#968:                               # %cond.true.6145
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, -1648(%rbp)       # 8-byte Spill
	jmp	.LBB22_970
.LBB22_969:                             # %cond.false.6148
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1648(%rbp)       # 8-byte Spill
.LBB22_970:                             # %cond.end.6153
	movq	-1648(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -72(%rbp)
	testb	$1, %cl
	jne	.LBB22_1004
	jmp	.LBB22_1005
.LBB22_971:                             # %cond.false.6155
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	movq	-48(%rbp), %rdx
	shlq	$1, %rdx
	addq	%rdx, %rcx
	cmpq	%rax, %rcx
	ja	.LBB22_973
# BB#972:                               # %cond.true.6160
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, -1656(%rbp)       # 8-byte Spill
	jmp	.LBB22_974
.LBB22_973:                             # %cond.false.6163
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1656(%rbp)       # 8-byte Spill
.LBB22_974:                             # %cond.end.6168
	movq	-1656(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -72(%rbp)
	testb	$1, %dl
	jne	.LBB22_1004
	jmp	.LBB22_1005
.LBB22_975:                             # %cond.false.6170
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	imulq	$0, %rax, %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_977
# BB#976:                               # %cond.true.6178
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	imulq	$0, %rcx, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdi
	shlq	$1, %rdi
	imulq	$0, %rdi, %rdi
	addq	-32(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1664(%rbp)       # 8-byte Spill
	jmp	.LBB22_978
.LBB22_977:                             # %cond.false.6199
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	imulq	$0, %rax, %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1664(%rbp)       # 8-byte Spill
.LBB22_978:                             # %cond.end.6205
	movq	-1664(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB22_988
# BB#979:                               # %cond.true.6209
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_984
# BB#980:                               # %cond.true.6213
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	imulq	$0, %rcx, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1672(%rbp)       # 8-byte Spill
	jge	.LBB22_982
# BB#981:                               # %cond.true.6221
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	imulq	$0, %rcx, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdi
	shlq	$1, %rdi
	imulq	$0, %rdi, %rdi
	addq	-32(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1680(%rbp)       # 8-byte Spill
	jmp	.LBB22_983
.LBB22_982:                             # %cond.false.6242
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	imulq	$0, %rax, %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1680(%rbp)       # 8-byte Spill
.LBB22_983:                             # %cond.end.6248
	movq	-1680(%rbp), %rax       # 8-byte Reload
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	subq	%rcx, %rax
	movq	-1672(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB22_996
	jmp	.LBB22_993
.LBB22_984:                             # %cond.false.6254
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	imulq	$0, %rax, %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_986
# BB#985:                               # %cond.true.6262
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	imulq	$0, %rax, %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1688(%rbp)       # 8-byte Spill
	jmp	.LBB22_987
.LBB22_986:                             # %cond.false.6272
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	imulq	$0, %rax, %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1688(%rbp)       # 8-byte Spill
.LBB22_987:                             # %cond.end.6278
	movq	-1688(%rbp), %rax       # 8-byte Reload
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	subq	%rcx, %rax
	cmpq	-32(%rbp), %rax
	jl	.LBB22_996
	jmp	.LBB22_993
.LBB22_988:                             # %cond.false.6284
	cmpq	$0, -32(%rbp)
	jge	.LBB22_990
# BB#989:                               # %cond.true.6287
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movq	-32(%rbp), %rcx
	movq	-48(%rbp), %rdx
	shlq	$1, %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jle	.LBB22_996
	jmp	.LBB22_993
.LBB22_990:                             # %cond.false.6293
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_992
# BB#991:                               # %cond.true.6297
	movq	-32(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	-48(%rbp), %rdx
	shlq	$1, %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jle	.LBB22_996
	jmp	.LBB22_993
.LBB22_992:                             # %cond.false.6302
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	cmpq	%rcx, %rax
	jl	.LBB22_996
.LBB22_993:                             # %lor.lhs.false.6308
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_995
# BB#994:                               # %land.lhs.true.6315
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-32(%rbp), %rcx
	movq	-48(%rbp), %rdx
	shlq	$1, %rdx
	addq	%rdx, %rcx
	cmpq	%rax, %rcx
	jl	.LBB22_996
.LBB22_995:                             # %lor.lhs.false.6320
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	movq	-48(%rbp), %rdx
	shlq	$1, %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jge	.LBB22_1000
.LBB22_996:                             # %cond.true.6325
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	movq	-48(%rbp), %rdx
	shlq	$1, %rdx
	addq	%rdx, %rcx
	cmpq	%rax, %rcx
	ja	.LBB22_998
# BB#997:                               # %cond.true.6330
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, -1696(%rbp)       # 8-byte Spill
	jmp	.LBB22_999
.LBB22_998:                             # %cond.false.6333
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1696(%rbp)       # 8-byte Spill
.LBB22_999:                             # %cond.end.6338
	movq	-1696(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -72(%rbp)
	testb	$1, %cl
	jne	.LBB22_1004
	jmp	.LBB22_1005
.LBB22_1000:                            # %cond.false.6340
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	movq	-48(%rbp), %rdx
	shlq	$1, %rdx
	addq	%rdx, %rcx
	cmpq	%rax, %rcx
	ja	.LBB22_1002
# BB#1001:                              # %cond.true.6345
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, -1704(%rbp)       # 8-byte Spill
	jmp	.LBB22_1003
.LBB22_1002:                            # %cond.false.6348
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1704(%rbp)       # 8-byte Spill
.LBB22_1003:                            # %cond.end.6353
	movq	-1704(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -72(%rbp)
	testb	$1, %dl
	jne	.LBB22_1004
	jmp	.LBB22_1005
.LBB22_1004:                            # %if.then.6355
	callq	string_overflow
.LBB22_1005:                            # %if.end.6356
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	make_uninit_multibyte_string
	movq	%rax, -104(%rbp)
	jmp	.LBB22_1307
.LBB22_1006:                            # %if.else
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_1007
	jmp	.LBB22_1066
.LBB22_1007:                            # %cond.true.6358
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_1008
	jmp	.LBB22_1037
.LBB22_1008:                            # %cond.true.6359
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB22_1010
# BB#1009:                              # %cond.true.6370
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	imull	$0, %esi, %esi
	movq	-56(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-32(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	imull	$0, %esi, %esi
	movq	-56(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -1708(%rbp)       # 4-byte Spill
	jmp	.LBB22_1011
.LBB22_1010:                            # %cond.false.6396
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -1708(%rbp)       # 4-byte Spill
.LBB22_1011:                            # %cond.end.6405
	movl	-1708(%rbp), %eax       # 4-byte Reload
	cmpl	$0, %eax
	jge	.LBB22_1021
# BB#1012:                              # %cond.true.6409
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB22_1017
# BB#1013:                              # %cond.true.6414
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	imull	$0, %esi, %esi
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -1712(%rbp)       # 4-byte Spill
	jge	.LBB22_1015
# BB#1014:                              # %cond.true.6427
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	imull	$0, %esi, %esi
	movq	-56(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-32(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	imull	$0, %esi, %esi
	movq	-56(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -1716(%rbp)       # 4-byte Spill
	jmp	.LBB22_1016
.LBB22_1015:                            # %cond.false.6453
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -1716(%rbp)       # 4-byte Spill
.LBB22_1016:                            # %cond.end.6462
	movl	-1716(%rbp), %eax       # 4-byte Reload
	movq	-32(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	subl	%esi, %eax
	movl	-1712(%rbp), %esi       # 4-byte Reload
	cmpl	%eax, %esi
	jl	.LBB22_1029
	jmp	.LBB22_1026
.LBB22_1017:                            # %cond.false.6469
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB22_1019
# BB#1018:                              # %cond.true.6480
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -1720(%rbp)       # 4-byte Spill
	jmp	.LBB22_1020
.LBB22_1019:                            # %cond.false.6493
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -1720(%rbp)       # 4-byte Spill
.LBB22_1020:                            # %cond.end.6502
	movl	-1720(%rbp), %eax       # 4-byte Reload
	movq	-32(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	subl	%esi, %eax
	movq	-56(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	cmpl	%esi, %eax
	jl	.LBB22_1029
	jmp	.LBB22_1026
.LBB22_1021:                            # %cond.false.6511
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB22_1023
# BB#1022:                              # %cond.true.6516
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edi
	addl	%edi, %esi
	cmpl	%esi, %edx
	jle	.LBB22_1029
	jmp	.LBB22_1026
.LBB22_1023:                            # %cond.false.6526
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB22_1025
# BB#1024:                              # %cond.true.6531
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edi
	addl	%edi, %esi
	cmpl	%esi, %edx
	jle	.LBB22_1029
	jmp	.LBB22_1026
.LBB22_1025:                            # %cond.false.6541
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	cmpl	%esi, %edx
	jl	.LBB22_1029
.LBB22_1026:                            # %lor.lhs.false.6551
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB22_1028
# BB#1027:                              # %land.lhs.true.6561
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	cmpl	$-128, %edx
	jl	.LBB22_1029
.LBB22_1028:                            # %lor.lhs.false.6569
	movl	$127, %eax
	movq	-56(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	movq	-32(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
	cmpl	%esi, %eax
	jge	.LBB22_1033
.LBB22_1029:                            # %cond.true.6577
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	cmpl	$127, %edx
	jg	.LBB22_1031
# BB#1030:                              # %cond.true.6585
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -1724(%rbp)       # 4-byte Spill
	jmp	.LBB22_1032
.LBB22_1031:                            # %cond.false.6593
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -1724(%rbp)       # 4-byte Spill
.LBB22_1032:                            # %cond.end.6603
	movl	-1724(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -72(%rbp)
	testb	$1, %cl
	jne	.LBB22_1305
	jmp	.LBB22_1306
.LBB22_1033:                            # %cond.false.6606
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	cmpl	$127, %edx
	jg	.LBB22_1035
# BB#1034:                              # %cond.true.6614
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -1728(%rbp)       # 4-byte Spill
	jmp	.LBB22_1036
.LBB22_1035:                            # %cond.false.6622
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -1728(%rbp)       # 4-byte Spill
.LBB22_1036:                            # %cond.end.6632
	movl	-1728(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -72(%rbp)
	testb	$1, %dl
	jne	.LBB22_1305
	jmp	.LBB22_1306
.LBB22_1037:                            # %cond.false.6635
	imulq	$0, -32(%rbp), %rax
	addq	-56(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_1039
# BB#1038:                              # %cond.true.6642
	xorl	%eax, %eax
	imulq	$0, -32(%rbp), %rcx
	addq	-56(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -32(%rbp), %rdi
	addq	-56(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1736(%rbp)       # 8-byte Spill
	jmp	.LBB22_1040
.LBB22_1039:                            # %cond.false.6661
	imulq	$0, -32(%rbp), %rax
	addq	-56(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1736(%rbp)       # 8-byte Spill
.LBB22_1040:                            # %cond.end.6666
	movq	-1736(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB22_1050
# BB#1041:                              # %cond.true.6670
	cmpq	$0, -32(%rbp)
	jge	.LBB22_1046
# BB#1042:                              # %cond.true.6673
	movq	-56(%rbp), %rax
	imulq	$0, -32(%rbp), %rcx
	addq	-56(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1744(%rbp)       # 8-byte Spill
	jge	.LBB22_1044
# BB#1043:                              # %cond.true.6680
	xorl	%eax, %eax
	imulq	$0, -32(%rbp), %rcx
	addq	-56(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -32(%rbp), %rdi
	addq	-56(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1752(%rbp)       # 8-byte Spill
	jmp	.LBB22_1045
.LBB22_1044:                            # %cond.false.6699
	imulq	$0, -32(%rbp), %rax
	addq	-56(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1752(%rbp)       # 8-byte Spill
.LBB22_1045:                            # %cond.end.6704
	movq	-1752(%rbp), %rax       # 8-byte Reload
	subq	-32(%rbp), %rax
	movq	-1744(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB22_1058
	jmp	.LBB22_1055
.LBB22_1046:                            # %cond.false.6709
	imulq	$0, -32(%rbp), %rax
	addq	-56(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_1048
# BB#1047:                              # %cond.true.6716
	imulq	$0, -32(%rbp), %rax
	addq	-56(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1760(%rbp)       # 8-byte Spill
	jmp	.LBB22_1049
.LBB22_1048:                            # %cond.false.6725
	imulq	$0, -32(%rbp), %rax
	addq	-56(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1760(%rbp)       # 8-byte Spill
.LBB22_1049:                            # %cond.end.6730
	movq	-1760(%rbp), %rax       # 8-byte Reload
	subq	-32(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jl	.LBB22_1058
	jmp	.LBB22_1055
.LBB22_1050:                            # %cond.false.6735
	cmpq	$0, -56(%rbp)
	jge	.LBB22_1052
# BB#1051:                              # %cond.true.6738
	movq	-32(%rbp), %rax
	movq	-56(%rbp), %rcx
	addq	-32(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB22_1058
	jmp	.LBB22_1055
.LBB22_1052:                            # %cond.false.6742
	cmpq	$0, -32(%rbp)
	jge	.LBB22_1054
# BB#1053:                              # %cond.true.6745
	movq	-56(%rbp), %rax
	movq	-56(%rbp), %rcx
	addq	-32(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB22_1058
	jmp	.LBB22_1055
.LBB22_1054:                            # %cond.false.6749
	movq	-56(%rbp), %rax
	addq	-32(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jl	.LBB22_1058
.LBB22_1055:                            # %lor.lhs.false.6753
	movq	-56(%rbp), %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_1057
# BB#1056:                              # %land.lhs.true.6759
	movq	-56(%rbp), %rax
	addq	-32(%rbp), %rax
	cmpq	$-128, %rax
	jl	.LBB22_1058
.LBB22_1057:                            # %lor.lhs.false.6763
	movl	$127, %eax
	movl	%eax, %ecx
	movq	-56(%rbp), %rdx
	addq	-32(%rbp), %rdx
	cmpq	%rdx, %rcx
	jge	.LBB22_1062
.LBB22_1058:                            # %cond.true.6767
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	cmpl	$127, %edx
	jg	.LBB22_1060
# BB#1059:                              # %cond.true.6775
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -1764(%rbp)       # 4-byte Spill
	jmp	.LBB22_1061
.LBB22_1060:                            # %cond.false.6783
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -1764(%rbp)       # 4-byte Spill
.LBB22_1061:                            # %cond.end.6793
	movl	-1764(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -72(%rbp)
	testb	$1, %cl
	jne	.LBB22_1305
	jmp	.LBB22_1306
.LBB22_1062:                            # %cond.false.6796
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	cmpl	$127, %edx
	jg	.LBB22_1064
# BB#1063:                              # %cond.true.6804
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -1768(%rbp)       # 4-byte Spill
	jmp	.LBB22_1065
.LBB22_1064:                            # %cond.false.6812
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -1768(%rbp)       # 4-byte Spill
.LBB22_1065:                            # %cond.end.6822
	movl	-1768(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -72(%rbp)
	testb	$1, %dl
	jne	.LBB22_1305
	jmp	.LBB22_1306
.LBB22_1066:                            # %cond.false.6825
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_1067
	jmp	.LBB22_1126
.LBB22_1067:                            # %cond.true.6826
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_1068
	jmp	.LBB22_1097
.LBB22_1068:                            # %cond.true.6827
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB22_1070
# BB#1069:                              # %cond.true.6838
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	movq	-56(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %esi
	subl	%esi, %eax
	movq	-32(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	movq	-56(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -1772(%rbp)       # 4-byte Spill
	jmp	.LBB22_1071
.LBB22_1070:                            # %cond.false.6864
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -1772(%rbp)       # 4-byte Spill
.LBB22_1071:                            # %cond.end.6873
	movl	-1772(%rbp), %eax       # 4-byte Reload
	cmpl	$0, %eax
	jge	.LBB22_1081
# BB#1072:                              # %cond.true.6877
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB22_1077
# BB#1073:                              # %cond.true.6882
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	imull	$0, %esi, %esi
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -1776(%rbp)       # 4-byte Spill
	jge	.LBB22_1075
# BB#1074:                              # %cond.true.6895
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	movq	-56(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %esi
	subl	%esi, %eax
	movq	-32(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	movq	-56(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -1780(%rbp)       # 4-byte Spill
	jmp	.LBB22_1076
.LBB22_1075:                            # %cond.false.6921
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -1780(%rbp)       # 4-byte Spill
.LBB22_1076:                            # %cond.end.6930
	movl	-1780(%rbp), %eax       # 4-byte Reload
	movq	-32(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	subl	%esi, %eax
	movl	-1776(%rbp), %esi       # 4-byte Reload
	cmpl	%eax, %esi
	jl	.LBB22_1089
	jmp	.LBB22_1086
.LBB22_1077:                            # %cond.false.6937
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB22_1079
# BB#1078:                              # %cond.true.6948
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -1784(%rbp)       # 4-byte Spill
	jmp	.LBB22_1080
.LBB22_1079:                            # %cond.false.6961
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -1784(%rbp)       # 4-byte Spill
.LBB22_1080:                            # %cond.end.6970
	movl	-1784(%rbp), %eax       # 4-byte Reload
	movq	-32(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	subl	%esi, %eax
	movq	-56(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	cmpl	%esi, %eax
	jl	.LBB22_1089
	jmp	.LBB22_1086
.LBB22_1081:                            # %cond.false.6979
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB22_1083
# BB#1082:                              # %cond.true.6984
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edi
	addl	%edi, %esi
	cmpl	%esi, %edx
	jle	.LBB22_1089
	jmp	.LBB22_1086
.LBB22_1083:                            # %cond.false.6994
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB22_1085
# BB#1084:                              # %cond.true.6999
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edi
	addl	%edi, %esi
	cmpl	%esi, %edx
	jle	.LBB22_1089
	jmp	.LBB22_1086
.LBB22_1085:                            # %cond.false.7009
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	cmpl	%esi, %edx
	jl	.LBB22_1089
.LBB22_1086:                            # %lor.lhs.false.7019
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB22_1088
# BB#1087:                              # %land.lhs.true.7029
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	cmpl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB22_1089
.LBB22_1088:                            # %lor.lhs.false.7037
	movl	$32767, %eax            # imm = 0x7FFF
	movq	-56(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	movq	-32(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	cmpl	%esi, %eax
	jge	.LBB22_1093
.LBB22_1089:                            # %cond.true.7045
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB22_1091
# BB#1090:                              # %cond.true.7053
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -1788(%rbp)       # 4-byte Spill
	jmp	.LBB22_1092
.LBB22_1091:                            # %cond.false.7061
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -1788(%rbp)       # 4-byte Spill
.LBB22_1092:                            # %cond.end.7071
	movl	-1788(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -72(%rbp)
	testb	$1, %cl
	jne	.LBB22_1305
	jmp	.LBB22_1306
.LBB22_1093:                            # %cond.false.7074
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB22_1095
# BB#1094:                              # %cond.true.7082
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -1792(%rbp)       # 4-byte Spill
	jmp	.LBB22_1096
.LBB22_1095:                            # %cond.false.7090
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -1792(%rbp)       # 4-byte Spill
.LBB22_1096:                            # %cond.end.7100
	movl	-1792(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -72(%rbp)
	testb	$1, %dl
	jne	.LBB22_1305
	jmp	.LBB22_1306
.LBB22_1097:                            # %cond.false.7103
	imulq	$0, -32(%rbp), %rax
	addq	-56(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_1099
# BB#1098:                              # %cond.true.7110
	xorl	%eax, %eax
	imulq	$0, -32(%rbp), %rcx
	addq	-56(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -32(%rbp), %rdi
	addq	-56(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1800(%rbp)       # 8-byte Spill
	jmp	.LBB22_1100
.LBB22_1099:                            # %cond.false.7129
	imulq	$0, -32(%rbp), %rax
	addq	-56(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1800(%rbp)       # 8-byte Spill
.LBB22_1100:                            # %cond.end.7134
	movq	-1800(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB22_1110
# BB#1101:                              # %cond.true.7138
	cmpq	$0, -32(%rbp)
	jge	.LBB22_1106
# BB#1102:                              # %cond.true.7141
	movq	-56(%rbp), %rax
	imulq	$0, -32(%rbp), %rcx
	addq	-56(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1808(%rbp)       # 8-byte Spill
	jge	.LBB22_1104
# BB#1103:                              # %cond.true.7148
	xorl	%eax, %eax
	imulq	$0, -32(%rbp), %rcx
	addq	-56(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -32(%rbp), %rdi
	addq	-56(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1816(%rbp)       # 8-byte Spill
	jmp	.LBB22_1105
.LBB22_1104:                            # %cond.false.7167
	imulq	$0, -32(%rbp), %rax
	addq	-56(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1816(%rbp)       # 8-byte Spill
.LBB22_1105:                            # %cond.end.7172
	movq	-1816(%rbp), %rax       # 8-byte Reload
	subq	-32(%rbp), %rax
	movq	-1808(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB22_1118
	jmp	.LBB22_1115
.LBB22_1106:                            # %cond.false.7177
	imulq	$0, -32(%rbp), %rax
	addq	-56(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_1108
# BB#1107:                              # %cond.true.7184
	imulq	$0, -32(%rbp), %rax
	addq	-56(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1824(%rbp)       # 8-byte Spill
	jmp	.LBB22_1109
.LBB22_1108:                            # %cond.false.7193
	imulq	$0, -32(%rbp), %rax
	addq	-56(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1824(%rbp)       # 8-byte Spill
.LBB22_1109:                            # %cond.end.7198
	movq	-1824(%rbp), %rax       # 8-byte Reload
	subq	-32(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jl	.LBB22_1118
	jmp	.LBB22_1115
.LBB22_1110:                            # %cond.false.7203
	cmpq	$0, -56(%rbp)
	jge	.LBB22_1112
# BB#1111:                              # %cond.true.7206
	movq	-32(%rbp), %rax
	movq	-56(%rbp), %rcx
	addq	-32(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB22_1118
	jmp	.LBB22_1115
.LBB22_1112:                            # %cond.false.7210
	cmpq	$0, -32(%rbp)
	jge	.LBB22_1114
# BB#1113:                              # %cond.true.7213
	movq	-56(%rbp), %rax
	movq	-56(%rbp), %rcx
	addq	-32(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB22_1118
	jmp	.LBB22_1115
.LBB22_1114:                            # %cond.false.7217
	movq	-56(%rbp), %rax
	addq	-32(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jl	.LBB22_1118
.LBB22_1115:                            # %lor.lhs.false.7221
	movq	-56(%rbp), %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_1117
# BB#1116:                              # %land.lhs.true.7227
	movq	-56(%rbp), %rax
	addq	-32(%rbp), %rax
	cmpq	$-32768, %rax           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB22_1118
.LBB22_1117:                            # %lor.lhs.false.7231
	movl	$32767, %eax            # imm = 0x7FFF
	movl	%eax, %ecx
	movq	-56(%rbp), %rdx
	addq	-32(%rbp), %rdx
	cmpq	%rdx, %rcx
	jge	.LBB22_1122
.LBB22_1118:                            # %cond.true.7235
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB22_1120
# BB#1119:                              # %cond.true.7243
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -1828(%rbp)       # 4-byte Spill
	jmp	.LBB22_1121
.LBB22_1120:                            # %cond.false.7251
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -1828(%rbp)       # 4-byte Spill
.LBB22_1121:                            # %cond.end.7261
	movl	-1828(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -72(%rbp)
	testb	$1, %cl
	jne	.LBB22_1305
	jmp	.LBB22_1306
.LBB22_1122:                            # %cond.false.7264
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB22_1124
# BB#1123:                              # %cond.true.7272
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -1832(%rbp)       # 4-byte Spill
	jmp	.LBB22_1125
.LBB22_1124:                            # %cond.false.7280
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -1832(%rbp)       # 4-byte Spill
.LBB22_1125:                            # %cond.end.7290
	movl	-1832(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -72(%rbp)
	testb	$1, %dl
	jne	.LBB22_1305
	jmp	.LBB22_1306
.LBB22_1126:                            # %cond.false.7293
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_1127
	jmp	.LBB22_1186
.LBB22_1127:                            # %cond.true.7294
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_1128
	jmp	.LBB22_1157
.LBB22_1128:                            # %cond.true.7295
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-56(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB22_1130
# BB#1129:                              # %cond.true.7304
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	movl	%ecx, %edx
	imull	$0, %edx, %edx
	movq	-56(%rbp), %rcx
	movl	%ecx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %edx
	subl	%edx, %eax
	movq	-32(%rbp), %rcx
	movl	%ecx, %edx
	imull	$0, %edx, %edx
	movq	-56(%rbp), %rcx
	movl	%ecx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -1836(%rbp)       # 4-byte Spill
	jmp	.LBB22_1131
.LBB22_1130:                            # %cond.false.7326
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-56(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -1836(%rbp)       # 4-byte Spill
.LBB22_1131:                            # %cond.end.7333
	movl	-1836(%rbp), %eax       # 4-byte Reload
	cmpl	$0, %eax
	jge	.LBB22_1141
# BB#1132:                              # %cond.true.7337
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB22_1137
# BB#1133:                              # %cond.true.7341
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	movl	%eax, %edx
	imull	$0, %edx, %edx
	movq	-56(%rbp), %rax
	movl	%eax, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -1840(%rbp)       # 4-byte Spill
	jge	.LBB22_1135
# BB#1134:                              # %cond.true.7351
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	movl	%ecx, %edx
	imull	$0, %edx, %edx
	movq	-56(%rbp), %rcx
	movl	%ecx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %edx
	subl	%edx, %eax
	movq	-32(%rbp), %rcx
	movl	%ecx, %edx
	imull	$0, %edx, %edx
	movq	-56(%rbp), %rcx
	movl	%ecx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -1844(%rbp)       # 4-byte Spill
	jmp	.LBB22_1136
.LBB22_1135:                            # %cond.false.7373
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-56(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -1844(%rbp)       # 4-byte Spill
.LBB22_1136:                            # %cond.end.7380
	movl	-1844(%rbp), %eax       # 4-byte Reload
	movq	-32(%rbp), %rcx
	movl	%ecx, %edx
	subl	%edx, %eax
	movl	-1840(%rbp), %edx       # 4-byte Reload
	cmpl	%eax, %edx
	jl	.LBB22_1149
	jmp	.LBB22_1146
.LBB22_1137:                            # %cond.false.7386
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-56(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB22_1139
# BB#1138:                              # %cond.true.7395
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-56(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -1848(%rbp)       # 4-byte Spill
	jmp	.LBB22_1140
.LBB22_1139:                            # %cond.false.7406
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-56(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -1848(%rbp)       # 4-byte Spill
.LBB22_1140:                            # %cond.end.7413
	movl	-1848(%rbp), %eax       # 4-byte Reload
	movq	-32(%rbp), %rcx
	movl	%ecx, %edx
	subl	%edx, %eax
	movq	-56(%rbp), %rcx
	movl	%ecx, %edx
	cmpl	%edx, %eax
	jl	.LBB22_1149
	jmp	.LBB22_1146
.LBB22_1141:                            # %cond.false.7420
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB22_1143
# BB#1142:                              # %cond.true.7424
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	movq	-56(%rbp), %rax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%eax, %esi
	addl	%esi, %edx
	cmpl	%edx, %ecx
	jle	.LBB22_1149
	jmp	.LBB22_1146
.LBB22_1143:                            # %cond.false.7431
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB22_1145
# BB#1144:                              # %cond.true.7435
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	movq	-56(%rbp), %rax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%eax, %esi
	addl	%esi, %edx
	cmpl	%edx, %ecx
	jle	.LBB22_1149
	jmp	.LBB22_1146
.LBB22_1145:                            # %cond.false.7442
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	movq	-32(%rbp), %rax
	movl	%eax, %edx
	cmpl	%edx, %ecx
	jl	.LBB22_1149
.LBB22_1146:                            # %lor.lhs.false.7449
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB22_1148
# BB#1147:                              # %land.lhs.true.7457
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	cmpl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	jl	.LBB22_1149
.LBB22_1148:                            # %lor.lhs.false.7463
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movq	-56(%rbp), %rcx
	movl	%ecx, %edx
	movq	-32(%rbp), %rcx
	movl	%ecx, %esi
	addl	%esi, %edx
	cmpl	%edx, %eax
	jge	.LBB22_1153
.LBB22_1149:                            # %cond.true.7469
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB22_1151
# BB#1150:                              # %cond.true.7475
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	movl	%ecx, -1852(%rbp)       # 4-byte Spill
	jmp	.LBB22_1152
.LBB22_1151:                            # %cond.false.7479
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -1852(%rbp)       # 4-byte Spill
.LBB22_1152:                            # %cond.end.7485
	movl	-1852(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -72(%rbp)
	testb	$1, %cl
	jne	.LBB22_1305
	jmp	.LBB22_1306
.LBB22_1153:                            # %cond.false.7488
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB22_1155
# BB#1154:                              # %cond.true.7494
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	movl	%ecx, -1856(%rbp)       # 4-byte Spill
	jmp	.LBB22_1156
.LBB22_1155:                            # %cond.false.7498
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -1856(%rbp)       # 4-byte Spill
.LBB22_1156:                            # %cond.end.7504
	movl	-1856(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -72(%rbp)
	testb	$1, %dl
	jne	.LBB22_1305
	jmp	.LBB22_1306
.LBB22_1157:                            # %cond.false.7507
	imulq	$0, -32(%rbp), %rax
	addq	-56(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_1159
# BB#1158:                              # %cond.true.7514
	xorl	%eax, %eax
	imulq	$0, -32(%rbp), %rcx
	addq	-56(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -32(%rbp), %rdi
	addq	-56(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1864(%rbp)       # 8-byte Spill
	jmp	.LBB22_1160
.LBB22_1159:                            # %cond.false.7533
	imulq	$0, -32(%rbp), %rax
	addq	-56(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1864(%rbp)       # 8-byte Spill
.LBB22_1160:                            # %cond.end.7538
	movq	-1864(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB22_1170
# BB#1161:                              # %cond.true.7542
	cmpq	$0, -32(%rbp)
	jge	.LBB22_1166
# BB#1162:                              # %cond.true.7545
	movq	-56(%rbp), %rax
	imulq	$0, -32(%rbp), %rcx
	addq	-56(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1872(%rbp)       # 8-byte Spill
	jge	.LBB22_1164
# BB#1163:                              # %cond.true.7552
	xorl	%eax, %eax
	imulq	$0, -32(%rbp), %rcx
	addq	-56(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -32(%rbp), %rdi
	addq	-56(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1880(%rbp)       # 8-byte Spill
	jmp	.LBB22_1165
.LBB22_1164:                            # %cond.false.7571
	imulq	$0, -32(%rbp), %rax
	addq	-56(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1880(%rbp)       # 8-byte Spill
.LBB22_1165:                            # %cond.end.7576
	movq	-1880(%rbp), %rax       # 8-byte Reload
	subq	-32(%rbp), %rax
	movq	-1872(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB22_1178
	jmp	.LBB22_1175
.LBB22_1166:                            # %cond.false.7581
	imulq	$0, -32(%rbp), %rax
	addq	-56(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_1168
# BB#1167:                              # %cond.true.7588
	imulq	$0, -32(%rbp), %rax
	addq	-56(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1888(%rbp)       # 8-byte Spill
	jmp	.LBB22_1169
.LBB22_1168:                            # %cond.false.7597
	imulq	$0, -32(%rbp), %rax
	addq	-56(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1888(%rbp)       # 8-byte Spill
.LBB22_1169:                            # %cond.end.7602
	movq	-1888(%rbp), %rax       # 8-byte Reload
	subq	-32(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jl	.LBB22_1178
	jmp	.LBB22_1175
.LBB22_1170:                            # %cond.false.7607
	cmpq	$0, -56(%rbp)
	jge	.LBB22_1172
# BB#1171:                              # %cond.true.7610
	movq	-32(%rbp), %rax
	movq	-56(%rbp), %rcx
	addq	-32(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB22_1178
	jmp	.LBB22_1175
.LBB22_1172:                            # %cond.false.7614
	cmpq	$0, -32(%rbp)
	jge	.LBB22_1174
# BB#1173:                              # %cond.true.7617
	movq	-56(%rbp), %rax
	movq	-56(%rbp), %rcx
	addq	-32(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB22_1178
	jmp	.LBB22_1175
.LBB22_1174:                            # %cond.false.7621
	movq	-56(%rbp), %rax
	addq	-32(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jl	.LBB22_1178
.LBB22_1175:                            # %lor.lhs.false.7625
	movq	-56(%rbp), %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_1177
# BB#1176:                              # %land.lhs.true.7631
	movq	-56(%rbp), %rax
	addq	-32(%rbp), %rax
	cmpq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	jl	.LBB22_1178
.LBB22_1177:                            # %lor.lhs.false.7635
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %ecx
	movq	-56(%rbp), %rdx
	addq	-32(%rbp), %rdx
	cmpq	%rdx, %rcx
	jge	.LBB22_1182
.LBB22_1178:                            # %cond.true.7639
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB22_1180
# BB#1179:                              # %cond.true.7645
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	movl	%ecx, -1892(%rbp)       # 4-byte Spill
	jmp	.LBB22_1181
.LBB22_1180:                            # %cond.false.7649
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -1892(%rbp)       # 4-byte Spill
.LBB22_1181:                            # %cond.end.7655
	movl	-1892(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -72(%rbp)
	testb	$1, %cl
	jne	.LBB22_1305
	jmp	.LBB22_1306
.LBB22_1182:                            # %cond.false.7658
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB22_1184
# BB#1183:                              # %cond.true.7664
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	movl	%ecx, -1896(%rbp)       # 4-byte Spill
	jmp	.LBB22_1185
.LBB22_1184:                            # %cond.false.7668
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -1896(%rbp)       # 4-byte Spill
.LBB22_1185:                            # %cond.end.7674
	movl	-1896(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -72(%rbp)
	testb	$1, %dl
	jne	.LBB22_1305
	jmp	.LBB22_1306
.LBB22_1186:                            # %cond.false.7677
	movb	$1, %al
	testb	$1, %al
	jne	.LBB22_1187
	jmp	.LBB22_1246
.LBB22_1187:                            # %cond.true.7678
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_1188
	jmp	.LBB22_1217
.LBB22_1188:                            # %cond.true.7679
	imulq	$0, -32(%rbp), %rax
	addq	-56(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_1190
# BB#1189:                              # %cond.true.7686
	xorl	%eax, %eax
	imulq	$0, -32(%rbp), %rcx
	addq	-56(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -32(%rbp), %rdi
	addq	-56(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1904(%rbp)       # 8-byte Spill
	jmp	.LBB22_1191
.LBB22_1190:                            # %cond.false.7705
	imulq	$0, -32(%rbp), %rax
	addq	-56(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1904(%rbp)       # 8-byte Spill
.LBB22_1191:                            # %cond.end.7710
	movq	-1904(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB22_1201
# BB#1192:                              # %cond.true.7714
	cmpq	$0, -32(%rbp)
	jge	.LBB22_1197
# BB#1193:                              # %cond.true.7717
	movq	-56(%rbp), %rax
	imulq	$0, -32(%rbp), %rcx
	addq	-56(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1912(%rbp)       # 8-byte Spill
	jge	.LBB22_1195
# BB#1194:                              # %cond.true.7724
	xorl	%eax, %eax
	imulq	$0, -32(%rbp), %rcx
	addq	-56(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -32(%rbp), %rdi
	addq	-56(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1920(%rbp)       # 8-byte Spill
	jmp	.LBB22_1196
.LBB22_1195:                            # %cond.false.7743
	imulq	$0, -32(%rbp), %rax
	addq	-56(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1920(%rbp)       # 8-byte Spill
.LBB22_1196:                            # %cond.end.7748
	movq	-1920(%rbp), %rax       # 8-byte Reload
	subq	-32(%rbp), %rax
	movq	-1912(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB22_1209
	jmp	.LBB22_1206
.LBB22_1197:                            # %cond.false.7753
	imulq	$0, -32(%rbp), %rax
	addq	-56(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_1199
# BB#1198:                              # %cond.true.7760
	imulq	$0, -32(%rbp), %rax
	addq	-56(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1928(%rbp)       # 8-byte Spill
	jmp	.LBB22_1200
.LBB22_1199:                            # %cond.false.7769
	imulq	$0, -32(%rbp), %rax
	addq	-56(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1928(%rbp)       # 8-byte Spill
.LBB22_1200:                            # %cond.end.7774
	movq	-1928(%rbp), %rax       # 8-byte Reload
	subq	-32(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jl	.LBB22_1209
	jmp	.LBB22_1206
.LBB22_1201:                            # %cond.false.7779
	cmpq	$0, -56(%rbp)
	jge	.LBB22_1203
# BB#1202:                              # %cond.true.7782
	movq	-32(%rbp), %rax
	movq	-56(%rbp), %rcx
	addq	-32(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB22_1209
	jmp	.LBB22_1206
.LBB22_1203:                            # %cond.false.7786
	cmpq	$0, -32(%rbp)
	jge	.LBB22_1205
# BB#1204:                              # %cond.true.7789
	movq	-56(%rbp), %rax
	movq	-56(%rbp), %rcx
	addq	-32(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB22_1209
	jmp	.LBB22_1206
.LBB22_1205:                            # %cond.false.7793
	movq	-56(%rbp), %rax
	addq	-32(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jl	.LBB22_1209
.LBB22_1206:                            # %lor.lhs.false.7797
	movq	-56(%rbp), %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_1208
# BB#1207:                              # %land.lhs.true.7803
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-56(%rbp), %rcx
	addq	-32(%rbp), %rcx
	cmpq	%rax, %rcx
	jl	.LBB22_1209
.LBB22_1208:                            # %lor.lhs.false.7807
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-56(%rbp), %rcx
	addq	-32(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB22_1213
.LBB22_1209:                            # %cond.true.7811
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-56(%rbp), %rcx
	addq	-32(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB22_1211
# BB#1210:                              # %cond.true.7815
	movq	-56(%rbp), %rax
	addq	-32(%rbp), %rax
	movq	%rax, -1936(%rbp)       # 8-byte Spill
	jmp	.LBB22_1212
.LBB22_1211:                            # %cond.false.7817
	movq	-56(%rbp), %rax
	addq	-32(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1936(%rbp)       # 8-byte Spill
.LBB22_1212:                            # %cond.end.7821
	movq	-1936(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -72(%rbp)
	testb	$1, %cl
	jne	.LBB22_1305
	jmp	.LBB22_1306
.LBB22_1213:                            # %cond.false.7823
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-56(%rbp), %rcx
	addq	-32(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB22_1215
# BB#1214:                              # %cond.true.7827
	movq	-56(%rbp), %rax
	addq	-32(%rbp), %rax
	movq	%rax, -1944(%rbp)       # 8-byte Spill
	jmp	.LBB22_1216
.LBB22_1215:                            # %cond.false.7829
	movq	-56(%rbp), %rax
	addq	-32(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1944(%rbp)       # 8-byte Spill
.LBB22_1216:                            # %cond.end.7833
	movq	-1944(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -72(%rbp)
	testb	$1, %dl
	jne	.LBB22_1305
	jmp	.LBB22_1306
.LBB22_1217:                            # %cond.false.7835
	imulq	$0, -32(%rbp), %rax
	addq	-56(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_1219
# BB#1218:                              # %cond.true.7842
	xorl	%eax, %eax
	imulq	$0, -32(%rbp), %rcx
	addq	-56(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -32(%rbp), %rdi
	addq	-56(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1952(%rbp)       # 8-byte Spill
	jmp	.LBB22_1220
.LBB22_1219:                            # %cond.false.7861
	imulq	$0, -32(%rbp), %rax
	addq	-56(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1952(%rbp)       # 8-byte Spill
.LBB22_1220:                            # %cond.end.7866
	movq	-1952(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB22_1230
# BB#1221:                              # %cond.true.7870
	cmpq	$0, -32(%rbp)
	jge	.LBB22_1226
# BB#1222:                              # %cond.true.7873
	movq	-56(%rbp), %rax
	imulq	$0, -32(%rbp), %rcx
	addq	-56(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1960(%rbp)       # 8-byte Spill
	jge	.LBB22_1224
# BB#1223:                              # %cond.true.7880
	xorl	%eax, %eax
	imulq	$0, -32(%rbp), %rcx
	addq	-56(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -32(%rbp), %rdi
	addq	-56(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1968(%rbp)       # 8-byte Spill
	jmp	.LBB22_1225
.LBB22_1224:                            # %cond.false.7899
	imulq	$0, -32(%rbp), %rax
	addq	-56(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1968(%rbp)       # 8-byte Spill
.LBB22_1225:                            # %cond.end.7904
	movq	-1968(%rbp), %rax       # 8-byte Reload
	subq	-32(%rbp), %rax
	movq	-1960(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB22_1238
	jmp	.LBB22_1235
.LBB22_1226:                            # %cond.false.7909
	imulq	$0, -32(%rbp), %rax
	addq	-56(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_1228
# BB#1227:                              # %cond.true.7916
	imulq	$0, -32(%rbp), %rax
	addq	-56(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1976(%rbp)       # 8-byte Spill
	jmp	.LBB22_1229
.LBB22_1228:                            # %cond.false.7925
	imulq	$0, -32(%rbp), %rax
	addq	-56(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1976(%rbp)       # 8-byte Spill
.LBB22_1229:                            # %cond.end.7930
	movq	-1976(%rbp), %rax       # 8-byte Reload
	subq	-32(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jl	.LBB22_1238
	jmp	.LBB22_1235
.LBB22_1230:                            # %cond.false.7935
	cmpq	$0, -56(%rbp)
	jge	.LBB22_1232
# BB#1231:                              # %cond.true.7938
	movq	-32(%rbp), %rax
	movq	-56(%rbp), %rcx
	addq	-32(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB22_1238
	jmp	.LBB22_1235
.LBB22_1232:                            # %cond.false.7942
	cmpq	$0, -32(%rbp)
	jge	.LBB22_1234
# BB#1233:                              # %cond.true.7945
	movq	-56(%rbp), %rax
	movq	-56(%rbp), %rcx
	addq	-32(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB22_1238
	jmp	.LBB22_1235
.LBB22_1234:                            # %cond.false.7949
	movq	-56(%rbp), %rax
	addq	-32(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jl	.LBB22_1238
.LBB22_1235:                            # %lor.lhs.false.7953
	movq	-56(%rbp), %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_1237
# BB#1236:                              # %land.lhs.true.7959
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-56(%rbp), %rcx
	addq	-32(%rbp), %rcx
	cmpq	%rax, %rcx
	jl	.LBB22_1238
.LBB22_1237:                            # %lor.lhs.false.7963
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-56(%rbp), %rcx
	addq	-32(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB22_1242
.LBB22_1238:                            # %cond.true.7967
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-56(%rbp), %rcx
	addq	-32(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB22_1240
# BB#1239:                              # %cond.true.7971
	movq	-56(%rbp), %rax
	addq	-32(%rbp), %rax
	movq	%rax, -1984(%rbp)       # 8-byte Spill
	jmp	.LBB22_1241
.LBB22_1240:                            # %cond.false.7973
	movq	-56(%rbp), %rax
	addq	-32(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1984(%rbp)       # 8-byte Spill
.LBB22_1241:                            # %cond.end.7977
	movq	-1984(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -72(%rbp)
	testb	$1, %cl
	jne	.LBB22_1305
	jmp	.LBB22_1306
.LBB22_1242:                            # %cond.false.7979
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-56(%rbp), %rcx
	addq	-32(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB22_1244
# BB#1243:                              # %cond.true.7983
	movq	-56(%rbp), %rax
	addq	-32(%rbp), %rax
	movq	%rax, -1992(%rbp)       # 8-byte Spill
	jmp	.LBB22_1245
.LBB22_1244:                            # %cond.false.7985
	movq	-56(%rbp), %rax
	addq	-32(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1992(%rbp)       # 8-byte Spill
.LBB22_1245:                            # %cond.end.7989
	movq	-1992(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -72(%rbp)
	testb	$1, %dl
	jne	.LBB22_1305
	jmp	.LBB22_1306
.LBB22_1246:                            # %cond.false.7991
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_1247
	jmp	.LBB22_1276
.LBB22_1247:                            # %cond.true.7992
	imulq	$0, -32(%rbp), %rax
	addq	-56(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_1249
# BB#1248:                              # %cond.true.7999
	xorl	%eax, %eax
	imulq	$0, -32(%rbp), %rcx
	addq	-56(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -32(%rbp), %rdi
	addq	-56(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -2000(%rbp)       # 8-byte Spill
	jmp	.LBB22_1250
.LBB22_1249:                            # %cond.false.8018
	imulq	$0, -32(%rbp), %rax
	addq	-56(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -2000(%rbp)       # 8-byte Spill
.LBB22_1250:                            # %cond.end.8023
	movq	-2000(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB22_1260
# BB#1251:                              # %cond.true.8027
	cmpq	$0, -32(%rbp)
	jge	.LBB22_1256
# BB#1252:                              # %cond.true.8030
	movq	-56(%rbp), %rax
	imulq	$0, -32(%rbp), %rcx
	addq	-56(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -2008(%rbp)       # 8-byte Spill
	jge	.LBB22_1254
# BB#1253:                              # %cond.true.8037
	xorl	%eax, %eax
	imulq	$0, -32(%rbp), %rcx
	addq	-56(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -32(%rbp), %rdi
	addq	-56(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -2016(%rbp)       # 8-byte Spill
	jmp	.LBB22_1255
.LBB22_1254:                            # %cond.false.8056
	imulq	$0, -32(%rbp), %rax
	addq	-56(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -2016(%rbp)       # 8-byte Spill
.LBB22_1255:                            # %cond.end.8061
	movq	-2016(%rbp), %rax       # 8-byte Reload
	subq	-32(%rbp), %rax
	movq	-2008(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB22_1268
	jmp	.LBB22_1265
.LBB22_1256:                            # %cond.false.8066
	imulq	$0, -32(%rbp), %rax
	addq	-56(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_1258
# BB#1257:                              # %cond.true.8073
	imulq	$0, -32(%rbp), %rax
	addq	-56(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -2024(%rbp)       # 8-byte Spill
	jmp	.LBB22_1259
.LBB22_1258:                            # %cond.false.8082
	imulq	$0, -32(%rbp), %rax
	addq	-56(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -2024(%rbp)       # 8-byte Spill
.LBB22_1259:                            # %cond.end.8087
	movq	-2024(%rbp), %rax       # 8-byte Reload
	subq	-32(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jl	.LBB22_1268
	jmp	.LBB22_1265
.LBB22_1260:                            # %cond.false.8092
	cmpq	$0, -56(%rbp)
	jge	.LBB22_1262
# BB#1261:                              # %cond.true.8095
	movq	-32(%rbp), %rax
	movq	-56(%rbp), %rcx
	addq	-32(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB22_1268
	jmp	.LBB22_1265
.LBB22_1262:                            # %cond.false.8099
	cmpq	$0, -32(%rbp)
	jge	.LBB22_1264
# BB#1263:                              # %cond.true.8102
	movq	-56(%rbp), %rax
	movq	-56(%rbp), %rcx
	addq	-32(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB22_1268
	jmp	.LBB22_1265
.LBB22_1264:                            # %cond.false.8106
	movq	-56(%rbp), %rax
	addq	-32(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jl	.LBB22_1268
.LBB22_1265:                            # %lor.lhs.false.8110
	movq	-56(%rbp), %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_1267
# BB#1266:                              # %land.lhs.true.8116
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-56(%rbp), %rcx
	addq	-32(%rbp), %rcx
	cmpq	%rax, %rcx
	jl	.LBB22_1268
.LBB22_1267:                            # %lor.lhs.false.8120
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-56(%rbp), %rcx
	addq	-32(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB22_1272
.LBB22_1268:                            # %cond.true.8124
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-56(%rbp), %rcx
	addq	-32(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB22_1270
# BB#1269:                              # %cond.true.8128
	movq	-56(%rbp), %rax
	addq	-32(%rbp), %rax
	movq	%rax, -2032(%rbp)       # 8-byte Spill
	jmp	.LBB22_1271
.LBB22_1270:                            # %cond.false.8130
	movq	-56(%rbp), %rax
	addq	-32(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -2032(%rbp)       # 8-byte Spill
.LBB22_1271:                            # %cond.end.8134
	movq	-2032(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -72(%rbp)
	testb	$1, %cl
	jne	.LBB22_1305
	jmp	.LBB22_1306
.LBB22_1272:                            # %cond.false.8136
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-56(%rbp), %rcx
	addq	-32(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB22_1274
# BB#1273:                              # %cond.true.8140
	movq	-56(%rbp), %rax
	addq	-32(%rbp), %rax
	movq	%rax, -2040(%rbp)       # 8-byte Spill
	jmp	.LBB22_1275
.LBB22_1274:                            # %cond.false.8142
	movq	-56(%rbp), %rax
	addq	-32(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -2040(%rbp)       # 8-byte Spill
.LBB22_1275:                            # %cond.end.8146
	movq	-2040(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -72(%rbp)
	testb	$1, %dl
	jne	.LBB22_1305
	jmp	.LBB22_1306
.LBB22_1276:                            # %cond.false.8148
	imulq	$0, -32(%rbp), %rax
	addq	-56(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_1278
# BB#1277:                              # %cond.true.8155
	xorl	%eax, %eax
	imulq	$0, -32(%rbp), %rcx
	addq	-56(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -32(%rbp), %rdi
	addq	-56(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -2048(%rbp)       # 8-byte Spill
	jmp	.LBB22_1279
.LBB22_1278:                            # %cond.false.8174
	imulq	$0, -32(%rbp), %rax
	addq	-56(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -2048(%rbp)       # 8-byte Spill
.LBB22_1279:                            # %cond.end.8179
	movq	-2048(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB22_1289
# BB#1280:                              # %cond.true.8183
	cmpq	$0, -32(%rbp)
	jge	.LBB22_1285
# BB#1281:                              # %cond.true.8186
	movq	-56(%rbp), %rax
	imulq	$0, -32(%rbp), %rcx
	addq	-56(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -2056(%rbp)       # 8-byte Spill
	jge	.LBB22_1283
# BB#1282:                              # %cond.true.8193
	xorl	%eax, %eax
	imulq	$0, -32(%rbp), %rcx
	addq	-56(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -32(%rbp), %rdi
	addq	-56(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -2064(%rbp)       # 8-byte Spill
	jmp	.LBB22_1284
.LBB22_1283:                            # %cond.false.8212
	imulq	$0, -32(%rbp), %rax
	addq	-56(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -2064(%rbp)       # 8-byte Spill
.LBB22_1284:                            # %cond.end.8217
	movq	-2064(%rbp), %rax       # 8-byte Reload
	subq	-32(%rbp), %rax
	movq	-2056(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB22_1297
	jmp	.LBB22_1294
.LBB22_1285:                            # %cond.false.8222
	imulq	$0, -32(%rbp), %rax
	addq	-56(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_1287
# BB#1286:                              # %cond.true.8229
	imulq	$0, -32(%rbp), %rax
	addq	-56(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -2072(%rbp)       # 8-byte Spill
	jmp	.LBB22_1288
.LBB22_1287:                            # %cond.false.8238
	imulq	$0, -32(%rbp), %rax
	addq	-56(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -2072(%rbp)       # 8-byte Spill
.LBB22_1288:                            # %cond.end.8243
	movq	-2072(%rbp), %rax       # 8-byte Reload
	subq	-32(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jl	.LBB22_1297
	jmp	.LBB22_1294
.LBB22_1289:                            # %cond.false.8248
	cmpq	$0, -56(%rbp)
	jge	.LBB22_1291
# BB#1290:                              # %cond.true.8251
	movq	-32(%rbp), %rax
	movq	-56(%rbp), %rcx
	addq	-32(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB22_1297
	jmp	.LBB22_1294
.LBB22_1291:                            # %cond.false.8255
	cmpq	$0, -32(%rbp)
	jge	.LBB22_1293
# BB#1292:                              # %cond.true.8258
	movq	-56(%rbp), %rax
	movq	-56(%rbp), %rcx
	addq	-32(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB22_1297
	jmp	.LBB22_1294
.LBB22_1293:                            # %cond.false.8262
	movq	-56(%rbp), %rax
	addq	-32(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jl	.LBB22_1297
.LBB22_1294:                            # %lor.lhs.false.8266
	movq	-56(%rbp), %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB22_1296
# BB#1295:                              # %land.lhs.true.8272
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-56(%rbp), %rcx
	addq	-32(%rbp), %rcx
	cmpq	%rax, %rcx
	jl	.LBB22_1297
.LBB22_1296:                            # %lor.lhs.false.8276
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-56(%rbp), %rcx
	addq	-32(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB22_1301
.LBB22_1297:                            # %cond.true.8280
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-56(%rbp), %rcx
	addq	-32(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB22_1299
# BB#1298:                              # %cond.true.8284
	movq	-56(%rbp), %rax
	addq	-32(%rbp), %rax
	movq	%rax, -2080(%rbp)       # 8-byte Spill
	jmp	.LBB22_1300
.LBB22_1299:                            # %cond.false.8286
	movq	-56(%rbp), %rax
	addq	-32(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -2080(%rbp)       # 8-byte Spill
.LBB22_1300:                            # %cond.end.8290
	movq	-2080(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -72(%rbp)
	testb	$1, %cl
	jne	.LBB22_1305
	jmp	.LBB22_1306
.LBB22_1301:                            # %cond.false.8292
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-56(%rbp), %rcx
	addq	-32(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB22_1303
# BB#1302:                              # %cond.true.8296
	movq	-56(%rbp), %rax
	addq	-32(%rbp), %rax
	movq	%rax, -2088(%rbp)       # 8-byte Spill
	jmp	.LBB22_1304
.LBB22_1303:                            # %cond.false.8298
	movq	-56(%rbp), %rax
	addq	-32(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -2088(%rbp)       # 8-byte Spill
.LBB22_1304:                            # %cond.end.8302
	movq	-2088(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -72(%rbp)
	testb	$1, %dl
	jne	.LBB22_1305
	jmp	.LBB22_1306
.LBB22_1305:                            # %if.then.8304
	callq	string_overflow
.LBB22_1306:                            # %if.end.8305
	movq	-72(%rbp), %rdi
	callq	make_uninit_string
	movq	%rax, -104(%rbp)
.LBB22_1307:                            # %if.end.8307
	movq	-16(%rbp), %rdi
	callq	SDATA
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	addq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-104(%rbp), %rdi
	callq	SDATA
	movq	%rax, -96(%rbp)
	testb	$1, -33(%rbp)
	je	.LBB22_1340
# BB#1308:                              # %if.then.8311
	jmp	.LBB22_1309
.LBB22_1309:                            # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_1335 Depth 2
	movq	-80(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jae	.LBB22_1339
# BB#1310:                              # %while.body
                                        #   in Loop: Header=BB22_1309 Depth=1
	movq	-80(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -108(%rbp)
	movl	-108(%rbp), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB22_1312
# BB#1311:                              # %cond.true.8316
                                        #   in Loop: Header=BB22_1309 Depth=1
	movl	$1, %eax
	movl	%eax, -2092(%rbp)       # 4-byte Spill
	jmp	.LBB22_1319
.LBB22_1312:                            # %cond.false.8317
                                        #   in Loop: Header=BB22_1309 Depth=1
	movl	-108(%rbp), %eax
	andl	$32, %eax
	cmpl	$0, %eax
	jne	.LBB22_1314
# BB#1313:                              # %cond.true.8320
                                        #   in Loop: Header=BB22_1309 Depth=1
	movl	$2, %eax
	movl	%eax, -2096(%rbp)       # 4-byte Spill
	jmp	.LBB22_1318
.LBB22_1314:                            # %cond.false.8321
                                        #   in Loop: Header=BB22_1309 Depth=1
	movl	-108(%rbp), %eax
	andl	$16, %eax
	cmpl	$0, %eax
	jne	.LBB22_1316
# BB#1315:                              # %cond.true.8324
                                        #   in Loop: Header=BB22_1309 Depth=1
	movl	$3, %eax
	movl	%eax, -2100(%rbp)       # 4-byte Spill
	jmp	.LBB22_1317
.LBB22_1316:                            # %cond.false.8325
                                        #   in Loop: Header=BB22_1309 Depth=1
	movl	$5, %eax
	movl	$4, %ecx
	movl	-108(%rbp), %edx
	andl	$8, %edx
	cmpl	$0, %edx
	setne	%sil
	xorb	$-1, %sil
	testb	$1, %sil
	cmovnel	%ecx, %eax
	movl	%eax, -2100(%rbp)       # 4-byte Spill
.LBB22_1317:                            # %cond.end.8329
                                        #   in Loop: Header=BB22_1309 Depth=1
	movl	-2100(%rbp), %eax       # 4-byte Reload
	movl	%eax, -2096(%rbp)       # 4-byte Spill
.LBB22_1318:                            # %cond.end.8331
                                        #   in Loop: Header=BB22_1309 Depth=1
	movl	-2096(%rbp), %eax       # 4-byte Reload
	movl	%eax, -2092(%rbp)       # 4-byte Spill
.LBB22_1319:                            # %cond.end.8333
                                        #   in Loop: Header=BB22_1309 Depth=1
	movl	-2092(%rbp), %eax       # 4-byte Reload
	movl	%eax, -112(%rbp)
	cmpl	$192, -108(%rbp)
	je	.LBB22_1321
# BB#1320:                              # %lor.lhs.false.8337
                                        #   in Loop: Header=BB22_1309 Depth=1
	cmpl	$193, -108(%rbp)
	jne	.LBB22_1334
.LBB22_1321:                            # %if.then.8340
                                        #   in Loop: Header=BB22_1309 Depth=1
	movq	-80(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB22_1323
# BB#1322:                              # %cond.true.8344
                                        #   in Loop: Header=BB22_1309 Depth=1
	movq	-80(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -80(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -2104(%rbp)       # 4-byte Spill
	jmp	.LBB22_1330
.LBB22_1323:                            # %cond.false.8346
                                        #   in Loop: Header=BB22_1309 Depth=1
	movq	-80(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB22_1325
# BB#1324:                              # %cond.true.8351
                                        #   in Loop: Header=BB22_1309 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movq	-80(%rbp), %rdx
	addq	$2, %rdx
	movq	%rdx, -80(%rbp)
	movq	-80(%rbp), %rdx
	movzbl	-2(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-80(%rbp), %rdx
	movzbl	-1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-80(%rbp), %rdx
	movzbl	-2(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	orl	%eax, %esi
	movl	%esi, -2108(%rbp)       # 4-byte Spill
	jmp	.LBB22_1329
.LBB22_1325:                            # %cond.false.8366
                                        #   in Loop: Header=BB22_1309 Depth=1
	movq	-80(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB22_1327
# BB#1326:                              # %cond.true.8371
                                        #   in Loop: Header=BB22_1309 Depth=1
	movq	-80(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movzbl	-3(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-80(%rbp), %rax
	movzbl	-2(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-80(%rbp), %rax
	movzbl	-1(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -2112(%rbp)       # 4-byte Spill
	jmp	.LBB22_1328
.LBB22_1327:                            # %cond.false.8386
                                        #   in Loop: Header=BB22_1309 Depth=1
	leaq	-80(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-80(%rbp), %rdi
	callq	string_char
	movl	%eax, -2112(%rbp)       # 4-byte Spill
.LBB22_1328:                            # %cond.end.8388
                                        #   in Loop: Header=BB22_1309 Depth=1
	movl	-2112(%rbp), %eax       # 4-byte Reload
	movl	%eax, -2108(%rbp)       # 4-byte Spill
.LBB22_1329:                            # %cond.end.8390
                                        #   in Loop: Header=BB22_1309 Depth=1
	movl	-2108(%rbp), %eax       # 4-byte Reload
	movl	%eax, -2104(%rbp)       # 4-byte Spill
.LBB22_1330:                            # %cond.end.8392
                                        #   in Loop: Header=BB22_1309 Depth=1
	movl	-2104(%rbp), %eax       # 4-byte Reload
	movl	%eax, -108(%rbp)
	cmpl	$4194175, -108(%rbp)    # imm = 0x3FFF7F
	jle	.LBB22_1332
# BB#1331:                              # %cond.true.8396
                                        #   in Loop: Header=BB22_1309 Depth=1
	movl	-108(%rbp), %eax
	subl	$4194048, %eax          # imm = 0x3FFF00
	movl	%eax, -2116(%rbp)       # 4-byte Spill
	jmp	.LBB22_1333
.LBB22_1332:                            # %cond.false.8398
                                        #   in Loop: Header=BB22_1309 Depth=1
	movl	-108(%rbp), %eax
	andl	$255, %eax
	movl	%eax, -2116(%rbp)       # 4-byte Spill
.LBB22_1333:                            # %cond.end.8400
                                        #   in Loop: Header=BB22_1309 Depth=1
	movl	-2116(%rbp), %eax       # 4-byte Reload
	movabsq	$.L.str.2, %rsi
	movl	%eax, -108(%rbp)
	movq	-96(%rbp), %rdi
	movl	-108(%rbp), %eax
	addl	$0, %eax
	movl	%eax, %edx
	movb	$0, %al
	callq	sprintf
	movq	-96(%rbp), %rsi
	movslq	%eax, %rdi
	addq	%rdi, %rsi
	movq	%rsi, -96(%rbp)
	jmp	.LBB22_1338
.LBB22_1334:                            # %if.else.8405
                                        #   in Loop: Header=BB22_1309 Depth=1
	jmp	.LBB22_1335
.LBB22_1335:                            # %while.cond.8406
                                        #   Parent Loop BB22_1309 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-112(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -112(%rbp)
	cmpl	$0, %eax
	je	.LBB22_1337
# BB#1336:                              # %while.body.8408
                                        #   in Loop: Header=BB22_1335 Depth=2
	movq	-80(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -80(%rbp)
	movb	(%rax), %dl
	movq	-96(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -96(%rbp)
	movb	%dl, (%rax)
	jmp	.LBB22_1335
.LBB22_1337:                            # %while.end
                                        #   in Loop: Header=BB22_1309 Depth=1
	jmp	.LBB22_1338
.LBB22_1338:                            # %if.end.8411
                                        #   in Loop: Header=BB22_1309 Depth=1
	jmp	.LBB22_1309
.LBB22_1339:                            # %while.end.8412
	jmp	.LBB22_1347
.LBB22_1340:                            # %if.else.8413
	jmp	.LBB22_1341
.LBB22_1341:                            # %while.cond.8414
                                        # =>This Inner Loop Header: Depth=1
	movq	-80(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jae	.LBB22_1346
# BB#1342:                              # %while.body.8417
                                        #   in Loop: Header=BB22_1341 Depth=1
	movq	-80(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -80(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -108(%rbp)
	cmpl	$128, -108(%rbp)
	jl	.LBB22_1344
# BB#1343:                              # %if.then.8422
                                        #   in Loop: Header=BB22_1341 Depth=1
	movabsq	$.L.str.2, %rsi
	movq	-96(%rbp), %rdi
	movl	-108(%rbp), %eax
	addl	$0, %eax
	movl	%eax, %edx
	movb	$0, %al
	callq	sprintf
	movq	-96(%rbp), %rsi
	movslq	%eax, %rdi
	addq	%rdi, %rsi
	movq	%rsi, -96(%rbp)
	jmp	.LBB22_1345
.LBB22_1344:                            # %if.else.8427
                                        #   in Loop: Header=BB22_1341 Depth=1
	movl	-108(%rbp), %eax
	movb	%al, %cl
	movq	-96(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -96(%rbp)
	movb	%cl, (%rdx)
.LBB22_1345:                            # %if.end.8430
                                        #   in Loop: Header=BB22_1341 Depth=1
	jmp	.LBB22_1341
.LBB22_1346:                            # %while.end.8431
	jmp	.LBB22_1347
.LBB22_1347:                            # %if.end.8432
	movq	-104(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB22_1348:                            # %return
	movq	-8(%rbp), %rax
	addq	$2128, %rsp             # imm = 0x850
	popq	%rbp
	retq
.Lfunc_end22:
	.size	string_escape_byte8, .Lfunc_end22-string_escape_byte8
	.cfi_endproc

	.align	16, 0x90
	.type	string_count_byte8,@function
string_count_byte8:                     # @string_count_byte8
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp69:
	.cfi_def_cfa_offset 16
.Ltmp70:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp71:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	STRING_MULTIBYTE
	andb	$1, %al
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rdi
	callq	SBYTES
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	SDATA
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	addq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	$0, -48(%rbp)
	testb	$1, -9(%rbp)
	je	.LBB23_17
# BB#1:                                 # %if.then
	jmp	.LBB23_2
.LBB23_2:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jae	.LBB23_16
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB23_2 Depth=1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -52(%rbp)
	movl	-52(%rbp), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB23_5
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB23_2 Depth=1
	movl	$1, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB23_12
.LBB23_5:                               # %cond.false
                                        #   in Loop: Header=BB23_2 Depth=1
	movl	-52(%rbp), %eax
	andl	$32, %eax
	cmpl	$0, %eax
	jne	.LBB23_7
# BB#6:                                 # %cond.true.6
                                        #   in Loop: Header=BB23_2 Depth=1
	movl	$2, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jmp	.LBB23_11
.LBB23_7:                               # %cond.false.7
                                        #   in Loop: Header=BB23_2 Depth=1
	movl	-52(%rbp), %eax
	andl	$16, %eax
	cmpl	$0, %eax
	jne	.LBB23_9
# BB#8:                                 # %cond.true.10
                                        #   in Loop: Header=BB23_2 Depth=1
	movl	$3, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB23_10
.LBB23_9:                               # %cond.false.11
                                        #   in Loop: Header=BB23_2 Depth=1
	movl	$5, %eax
	movl	$4, %ecx
	movl	-52(%rbp), %edx
	andl	$8, %edx
	cmpl	$0, %edx
	setne	%sil
	xorb	$-1, %sil
	testb	$1, %sil
	cmovnel	%ecx, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB23_10:                              # %cond.end
                                        #   in Loop: Header=BB23_2 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	movl	%eax, -64(%rbp)         # 4-byte Spill
.LBB23_11:                              # %cond.end.15
                                        #   in Loop: Header=BB23_2 Depth=1
	movl	-64(%rbp), %eax         # 4-byte Reload
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB23_12:                              # %cond.end.17
                                        #   in Loop: Header=BB23_2 Depth=1
	movl	-60(%rbp), %eax         # 4-byte Reload
	movl	%eax, -56(%rbp)
	cmpl	$192, -52(%rbp)
	je	.LBB23_14
# BB#13:                                # %lor.lhs.false
                                        #   in Loop: Header=BB23_2 Depth=1
	cmpl	$193, -52(%rbp)
	jne	.LBB23_15
.LBB23_14:                              # %if.then.23
                                        #   in Loop: Header=BB23_2 Depth=1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
.LBB23_15:                              # %if.end
                                        #   in Loop: Header=BB23_2 Depth=1
	movl	-56(%rbp), %eax
	movq	-32(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -32(%rbp)
	jmp	.LBB23_2
.LBB23_16:                              # %while.end
	jmp	.LBB23_23
.LBB23_17:                              # %if.else
	jmp	.LBB23_18
.LBB23_18:                              # %while.cond.25
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jae	.LBB23_22
# BB#19:                                # %while.body.28
                                        #   in Loop: Header=BB23_18 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movzbl	(%rax), %edx
	cmpl	$128, %edx
	jl	.LBB23_21
# BB#20:                                # %if.then.32
                                        #   in Loop: Header=BB23_18 Depth=1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
.LBB23_21:                              # %if.end.34
                                        #   in Loop: Header=BB23_18 Depth=1
	jmp	.LBB23_18
.LBB23_22:                              # %while.end.35
	jmp	.LBB23_23
.LBB23_23:                              # %if.end.36
	movq	-48(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	string_count_byte8, .Lfunc_end23-string_count_byte8
	.cfi_endproc

	.globl	Fstring
	.align	16, 0x90
	.type	Fstring,@function
Fstring:                                # @Fstring
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
.Ltmp73:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp74:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$16384, -64(%rbp)       # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -72(%rbp)
	movb	$0, -73(%rbp)
# BB#1:                                 # %do.body
	movl	$5, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movq	-64(%rbp), %rsi
	shrq	$0, %rsi
	movq	%rsi, %rax
	xorl	%edi, %edi
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	movl	%edi, %edx
	divq	%rcx
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	ja	.LBB24_3
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rax
	leaq	(%rax,%rax,4), %rax
	movq	-64(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -64(%rbp)
	movq	-8(%rbp), %rax
	leaq	15(%rax,%rax,4), %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -40(%rbp)
	jmp	.LBB24_4
.LBB24_3:                               # %if.else
	movl	$5, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	xnmalloc
	movabsq	$xfree, %rdi
	movq	%rax, -40(%rbp)
	movb	$1, -73(%rbp)
	movq	-40(%rbp), %rsi
	callq	record_unwind_protect_ptr
.LBB24_4:                               # %if.end
	jmp	.LBB24_5
.LBB24_5:                               # %do.end
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	$0, -24(%rbp)
.LBB24_6:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jge	.LBB24_28
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB24_6 Depth=1
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB24_8
	jmp	.LBB24_10
.LBB24_8:                               # %land.lhs.true
                                        #   in Loop: Header=BB24_6 Depth=1
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jg	.LBB24_10
# BB#9:                                 # %cond.true
                                        #   in Loop: Header=BB24_6 Depth=1
	jmp	.LBB24_11
.LBB24_10:                              # %cond.false
	movl	$260, %edi              # imm = 0x104
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB24_11:                              # %cond.end
                                        #   in Loop: Header=BB24_6 Depth=1
	movb	$1, %al
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	sarq	$2, %rcx
	movl	%ecx, %esi
	movl	%esi, -28(%rbp)
	testb	$1, %al
	jne	.LBB24_12
	jmp	.LBB24_13
.LBB24_12:                              # %cond.true.12
                                        #   in Loop: Header=BB24_6 Depth=1
	movl	-28(%rbp), %eax
	addl	$0, %eax
	cmpl	$127, %eax
	jbe	.LBB24_14
	jmp	.LBB24_15
.LBB24_13:                              # %cond.false.15
                                        #   in Loop: Header=BB24_6 Depth=1
	movslq	-28(%rbp), %rax
	addq	$0, %rax
	cmpq	$127, %rax
	ja	.LBB24_15
.LBB24_14:                              # %cond.true.20
                                        #   in Loop: Header=BB24_6 Depth=1
	movl	$1, %eax
	movl	-28(%rbp), %ecx
	movb	%cl, %dl
	movq	-48(%rbp), %rsi
	movb	%dl, (%rsi)
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB24_26
.LBB24_15:                              # %cond.false.23
                                        #   in Loop: Header=BB24_6 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB24_16
	jmp	.LBB24_17
.LBB24_16:                              # %cond.true.24
                                        #   in Loop: Header=BB24_6 Depth=1
	movl	-28(%rbp), %eax
	addl	$0, %eax
	cmpl	$2047, %eax             # imm = 0x7FF
	jbe	.LBB24_18
	jmp	.LBB24_19
.LBB24_17:                              # %cond.false.28
                                        #   in Loop: Header=BB24_6 Depth=1
	movslq	-28(%rbp), %rax
	addq	$0, %rax
	cmpq	$2047, %rax             # imm = 0x7FF
	ja	.LBB24_19
.LBB24_18:                              # %cond.true.33
                                        #   in Loop: Header=BB24_6 Depth=1
	movl	$2, %eax
	movl	-28(%rbp), %ecx
	sarl	$6, %ecx
	orl	$192, %ecx
	movb	%cl, %dl
	movq	-48(%rbp), %rsi
	movb	%dl, (%rsi)
	movl	-28(%rbp), %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movq	-48(%rbp), %rsi
	movb	%dl, 1(%rsi)
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB24_25
.LBB24_19:                              # %cond.false.40
                                        #   in Loop: Header=BB24_6 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB24_20
	jmp	.LBB24_21
.LBB24_20:                              # %cond.true.41
                                        #   in Loop: Header=BB24_6 Depth=1
	movl	-28(%rbp), %eax
	addl	$0, %eax
	cmpl	$65535, %eax            # imm = 0xFFFF
	jbe	.LBB24_22
	jmp	.LBB24_23
.LBB24_21:                              # %cond.false.45
                                        #   in Loop: Header=BB24_6 Depth=1
	movslq	-28(%rbp), %rax
	addq	$0, %rax
	cmpq	$65535, %rax            # imm = 0xFFFF
	ja	.LBB24_23
.LBB24_22:                              # %cond.true.50
                                        #   in Loop: Header=BB24_6 Depth=1
	movl	$3, %eax
	movl	-28(%rbp), %ecx
	sarl	$12, %ecx
	orl	$224, %ecx
	movb	%cl, %dl
	movq	-48(%rbp), %rsi
	movb	%dl, (%rsi)
	movl	-28(%rbp), %ecx
	sarl	$6, %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movq	-48(%rbp), %rsi
	movb	%dl, 1(%rsi)
	movl	-28(%rbp), %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movq	-48(%rbp), %rsi
	movb	%dl, 2(%rsi)
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB24_24
.LBB24_23:                              # %cond.false.64
                                        #   in Loop: Header=BB24_6 Depth=1
	movl	-28(%rbp), %edi
	movq	-48(%rbp), %rsi
	callq	char_string
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB24_24:                              # %cond.end.66
                                        #   in Loop: Header=BB24_6 Depth=1
	movl	-108(%rbp), %eax        # 4-byte Reload
	movl	%eax, -104(%rbp)        # 4-byte Spill
.LBB24_25:                              # %cond.end.67
                                        #   in Loop: Header=BB24_6 Depth=1
	movl	-104(%rbp), %eax        # 4-byte Reload
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB24_26:                              # %cond.end.69
                                        #   in Loop: Header=BB24_6 Depth=1
	movl	-100(%rbp), %eax        # 4-byte Reload
	movq	-48(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -48(%rbp)
# BB#27:                                # %for.inc
                                        #   in Loop: Header=BB24_6 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB24_6
.LBB24_28:                              # %for.end
	movq	-40(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, %rdx
	callq	make_string_from_bytes
	movq	%rax, -56(%rbp)
# BB#29:                                # %do.body.72
	testb	$1, -73(%rbp)
	je	.LBB24_31
# BB#30:                                # %if.then.73
	xorl	%edi, %edi
	movb	$0, -73(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB24_31:                              # %if.end.76
	jmp	.LBB24_32
.LBB24_32:                              # %do.end.77
	movq	-56(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	Fstring, .Lfunc_end24-Fstring
	.cfi_endproc

	.globl	Funibyte_string
	.align	16, 0x90
	.type	Funibyte_string,@function
Funibyte_string:                        # @Funibyte_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp75:
	.cfi_def_cfa_offset 16
.Ltmp76:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp77:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$16384, -40(%rbp)       # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -48(%rbp)
	movb	$0, -49(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jg	.LBB25_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -40(%rbp)
	movq	-8(%rbp), %rax
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB25_3
.LBB25_2:                               # %cond.false
	movb	$1, -49(%rbp)
	movq	-8(%rbp), %rdi
	callq	record_xmalloc
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB25_3:                               # %cond.end
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	$0, -24(%rbp)
.LBB25_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jge	.LBB25_15
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB25_4 Depth=1
	jmp	.LBB25_6
.LBB25_6:                               # %do.body
                                        #   in Loop: Header=BB25_4 Depth=1
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	andq	$7, %rax
	movl	%eax, %edx
	andl	$-5, %edx
	cmpl	$2, %edx
	jne	.LBB25_8
# BB#7:                                 # %cond.true.6
                                        #   in Loop: Header=BB25_4 Depth=1
	jmp	.LBB25_9
.LBB25_8:                               # %cond.false.7
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB25_9:                               # %cond.end.10
                                        #   in Loop: Header=BB25_4 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	(%rsi,%rdx,8), %rdx
	sarq	$2, %rdx
	cmpq	%rdx, %rcx
	jg	.LBB25_11
# BB#10:                                # %land.lhs.true
                                        #   in Loop: Header=BB25_4 Depth=1
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	sarq	$2, %rax
	cmpq	$255, %rax
	jle	.LBB25_12
.LBB25_11:                              # %if.then
	movl	$2, %eax
	movl	%eax, %esi
	movl	$1022, %eax             # imm = 0x3FE
	movl	%eax, %edx
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	(%rdi,%rcx,8), %rdi
	callq	args_out_of_range_3
.LBB25_12:                              # %if.end
                                        #   in Loop: Header=BB25_4 Depth=1
	jmp	.LBB25_13
.LBB25_13:                              # %do.end
                                        #   in Loop: Header=BB25_4 Depth=1
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	sarq	$2, %rax
	movb	%al, %dl
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -72(%rbp)
	movb	%dl, (%rax)
# BB#14:                                # %for.inc
                                        #   in Loop: Header=BB25_4 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB25_4
.LBB25_15:                              # %for.end
	movq	-64(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	-64(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, %rdx
	callq	make_string_from_bytes
	movq	%rax, -32(%rbp)
# BB#16:                                # %do.body.23
	testb	$1, -49(%rbp)
	je	.LBB25_18
# BB#17:                                # %if.then.24
	xorl	%edi, %edi
	movb	$0, -49(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB25_18:                              # %if.end.27
	jmp	.LBB25_19
.LBB25_19:                              # %do.end.28
	movq	-32(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	Funibyte_string, .Lfunc_end25-Funibyte_string
	.cfi_endproc

	.globl	Fchar_resolve_modifiers
	.align	16, 0x90
	.type	Fchar_resolve_modifiers,@function
Fchar_resolve_modifiers:                # @Fchar_resolve_modifiers
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp78:
	.cfi_def_cfa_offset 16
.Ltmp79:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp80:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	andl	$-5, %eax
	cmpl	$2, %eax
	jne	.LBB26_2
# BB#1:                                 # %cond.true
	jmp	.LBB26_3
.LBB26_2:                               # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB26_3:                               # %cond.end
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	char_resolve_modifier_mask
	shlq	$2, %rax
	addq	$2, %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	Fchar_resolve_modifiers, .Lfunc_end26-Fchar_resolve_modifiers
	.cfi_endproc

	.globl	Fget_byte
	.align	16, 0x90
	.type	Fget_byte,@function
Fget_byte:                              # @Fget_byte
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp81:
	.cfi_def_cfa_offset 16
.Ltmp82:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp83:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movl	%eax, %edi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB27_25
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB27_6
# BB#2:                                 # %if.then.3
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB27_4
# BB#3:                                 # %cond.true
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB27_5
.LBB27_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	jmp	.LBB27_5
.LBB27_5:                               # %cond.end
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	current_buffer, %rcx
	addq	744(%rcx), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB27_22
.LBB27_6:                               # %if.else
	jmp	.LBB27_7
.LBB27_7:                               # %do.body
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB27_10
# BB#8:                                 # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB27_10
# BB#9:                                 # %if.then.14
	movq	-16(%rbp), %rdi
	callq	marker_position
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -16(%rbp)
	jmp	.LBB27_14
.LBB27_10:                              # %if.else.17
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB27_12
# BB#11:                                # %cond.true.23
	jmp	.LBB27_13
.LBB27_12:                              # %cond.false.24
	movl	$558, %edi              # imm = 0x22E
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB27_13:                              # %cond.end.26
	jmp	.LBB27_14
.LBB27_14:                              # %if.end
	jmp	.LBB27_15
.LBB27_15:                              # %do.end
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	current_buffer, %rcx
	cmpq	752(%rcx), %rax
	jl	.LBB27_17
# BB#16:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	jl	.LBB27_18
.LBB27_17:                              # %if.then.32
	movq	-16(%rbp), %rdi
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	current_buffer, %rcx
	movq	768(%rcx), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	args_out_of_range_3
.LBB27_18:                              # %if.end.38
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	8(%rcx), %rax
	jl	.LBB27_20
# BB#19:                                # %cond.true.43
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB27_21
.LBB27_20:                              # %cond.false.46
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	jmp	.LBB27_21
.LBB27_21:                              # %cond.end.47
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	current_buffer, %rdi
	movq	-40(%rbp), %rsi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	buf_charpos_to_bytepos
	movq	-96(%rbp), %rsi         # 8-byte Reload
	addq	%rax, %rsi
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	addq	(%rax), %rsi
	addq	$-1, %rsi
	movq	%rsi, -48(%rbp)
.LBB27_22:                              # %if.end.55
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB27_24
# BB#23:                                # %if.then.59
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB27_53
.LBB27_24:                              # %if.end.63
	jmp	.LBB27_33
.LBB27_25:                              # %if.else.64
	movq	-24(%rbp), %rdi
	callq	CHECK_STRING
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB27_27
# BB#26:                                # %if.then.68
	movq	-24(%rbp), %rdi
	callq	SDATA
	movq	%rax, -48(%rbp)
	jmp	.LBB27_30
.LBB27_27:                              # %if.else.70
	movq	-16(%rbp), %rdi
	callq	CHECK_NATNUM
	movq	-16(%rbp), %rdi
	sarq	$2, %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	SCHARS
	movq	-120(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB27_29
# BB#28:                                # %if.then.75
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	args_out_of_range
.LBB27_29:                              # %if.end.76
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	SDATA
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	string_char_to_byte
	movq	-128(%rbp), %rsi        # 8-byte Reload
	addq	%rax, %rsi
	movq	%rsi, -48(%rbp)
.LBB27_30:                              # %if.end.81
	movq	-24(%rbp), %rdi
	callq	STRING_MULTIBYTE
	testb	$1, %al
	jne	.LBB27_32
# BB#31:                                # %if.then.83
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB27_53
.LBB27_32:                              # %if.end.87
	jmp	.LBB27_33
.LBB27_33:                              # %if.end.88
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB27_35
# BB#34:                                # %cond.true.91
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -132(%rbp)        # 4-byte Spill
	jmp	.LBB27_42
.LBB27_35:                              # %cond.false.94
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB27_37
# BB#36:                                # %cond.true.99
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movq	-48(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-48(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-48(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -136(%rbp)        # 4-byte Spill
	jmp	.LBB27_41
.LBB27_37:                              # %cond.false.113
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB27_39
# BB#38:                                # %cond.true.118
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-48(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-48(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -140(%rbp)        # 4-byte Spill
	jmp	.LBB27_40
.LBB27_39:                              # %cond.false.132
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	string_char
	movl	%eax, -140(%rbp)        # 4-byte Spill
.LBB27_40:                              # %cond.end.134
	movl	-140(%rbp), %eax        # 4-byte Reload
	movl	%eax, -136(%rbp)        # 4-byte Spill
.LBB27_41:                              # %cond.end.136
	movl	-136(%rbp), %eax        # 4-byte Reload
	movl	%eax, -132(%rbp)        # 4-byte Spill
.LBB27_42:                              # %cond.end.138
	movl	-132(%rbp), %eax        # 4-byte Reload
	movl	%eax, -28(%rbp)
	cmpl	$4194175, -28(%rbp)     # imm = 0x3FFF7F
	jle	.LBB27_47
# BB#43:                                # %if.then.142
	cmpl	$4194175, -28(%rbp)     # imm = 0x3FFF7F
	jle	.LBB27_45
# BB#44:                                # %cond.true.145
	movl	-28(%rbp), %eax
	subl	$4194048, %eax          # imm = 0x3FFF00
	movl	%eax, -144(%rbp)        # 4-byte Spill
	jmp	.LBB27_46
.LBB27_45:                              # %cond.false.146
	movl	-28(%rbp), %eax
	andl	$255, %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
.LBB27_46:                              # %cond.end.148
	movl	-144(%rbp), %eax        # 4-byte Reload
	movl	%eax, -28(%rbp)
	jmp	.LBB27_52
.LBB27_47:                              # %if.else.150
	movb	$1, %al
	testb	$1, %al
	jne	.LBB27_48
	jmp	.LBB27_49
.LBB27_48:                              # %cond.true.151
	movl	-28(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB27_51
	jmp	.LBB27_50
.LBB27_49:                              # %cond.false.155
	movslq	-28(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jb	.LBB27_51
.LBB27_50:                              # %if.then.160
	movabsq	$.L.str.3, %rdi
	movl	-28(%rbp), %esi
	movb	$0, %al
	callq	error
.LBB27_51:                              # %if.end.161
	jmp	.LBB27_52
.LBB27_52:                              # %if.end.162
	movslq	-28(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -8(%rbp)
.LBB27_53:                              # %return
	movq	-8(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	Fget_byte, .Lfunc_end27-Fget_byte
	.cfi_endproc

	.globl	alphabeticp
	.align	16, 0x90
	.type	alphabeticp,@function
alphabeticp:                            # @alphabeticp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp84:
	.cfi_def_cfa_offset 16
.Ltmp85:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp86:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -8(%rbp)
	movq	globals+2512, %rdi
	movl	-8(%rbp), %esi
	callq	CHAR_TABLE_REF
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %esi
	andl	$-5, %esi
	cmpl	$2, %esi
	je	.LBB28_2
# BB#1:                                 # %if.then
	movb	$0, -1(%rbp)
	jmp	.LBB28_12
.LBB28_2:                               # %if.end
	movb	$1, %al
	movq	-16(%rbp), %rcx
	sarq	$2, %rcx
	movq	%rcx, -24(%rbp)
	cmpq	$1, -24(%rbp)
	movb	%al, -25(%rbp)          # 1-byte Spill
	je	.LBB28_11
# BB#3:                                 # %lor.lhs.false
	movb	$1, %al
	cmpq	$2, -24(%rbp)
	movb	%al, -25(%rbp)          # 1-byte Spill
	je	.LBB28_11
# BB#4:                                 # %lor.lhs.false.7
	movb	$1, %al
	cmpq	$3, -24(%rbp)
	movb	%al, -25(%rbp)          # 1-byte Spill
	je	.LBB28_11
# BB#5:                                 # %lor.lhs.false.10
	movb	$1, %al
	cmpq	$4, -24(%rbp)
	movb	%al, -25(%rbp)          # 1-byte Spill
	je	.LBB28_11
# BB#6:                                 # %lor.lhs.false.13
	movb	$1, %al
	cmpq	$5, -24(%rbp)
	movb	%al, -25(%rbp)          # 1-byte Spill
	je	.LBB28_11
# BB#7:                                 # %lor.lhs.false.16
	movb	$1, %al
	cmpq	$6, -24(%rbp)
	movb	%al, -25(%rbp)          # 1-byte Spill
	je	.LBB28_11
# BB#8:                                 # %lor.lhs.false.19
	movb	$1, %al
	cmpq	$7, -24(%rbp)
	movb	%al, -25(%rbp)          # 1-byte Spill
	je	.LBB28_11
# BB#9:                                 # %lor.lhs.false.22
	movb	$1, %al
	cmpq	$8, -24(%rbp)
	movb	%al, -25(%rbp)          # 1-byte Spill
	je	.LBB28_11
# BB#10:                                # %lor.rhs
	cmpq	$10, -24(%rbp)
	sete	%al
	movb	%al, -25(%rbp)          # 1-byte Spill
.LBB28_11:                              # %lor.end
	movb	-25(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movb	%al, -1(%rbp)
.LBB28_12:                              # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	alphabeticp, .Lfunc_end28-alphabeticp
	.cfi_endproc

	.globl	decimalnump
	.align	16, 0x90
	.type	decimalnump,@function
decimalnump:                            # @decimalnump
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp87:
	.cfi_def_cfa_offset 16
.Ltmp88:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp89:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -8(%rbp)
	movq	globals+2512, %rdi
	movl	-8(%rbp), %esi
	callq	CHAR_TABLE_REF
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %esi
	andl	$-5, %esi
	cmpl	$2, %esi
	je	.LBB29_2
# BB#1:                                 # %if.then
	movb	$0, -1(%rbp)
	jmp	.LBB29_3
.LBB29_2:                               # %if.end
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -24(%rbp)
	cmpq	$9, -24(%rbp)
	sete	%cl
	andb	$1, %cl
	movb	%cl, -1(%rbp)
.LBB29_3:                               # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	decimalnump, .Lfunc_end29-decimalnump
	.cfi_endproc

	.globl	graphicp
	.align	16, 0x90
	.type	graphicp,@function
graphicp:                               # @graphicp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp90:
	.cfi_def_cfa_offset 16
.Ltmp91:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp92:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -8(%rbp)
	movq	globals+2512, %rdi
	movl	-8(%rbp), %esi
	callq	CHAR_TABLE_REF
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %esi
	andl	$-5, %esi
	cmpl	$2, %esi
	je	.LBB30_2
# BB#1:                                 # %if.then
	movb	$0, -1(%rbp)
	jmp	.LBB30_9
.LBB30_2:                               # %if.end
	movb	$1, %al
	movq	-16(%rbp), %rcx
	sarq	$2, %rcx
	movq	%rcx, -24(%rbp)
	cmpq	$23, -24(%rbp)
	movb	%al, -25(%rbp)          # 1-byte Spill
	je	.LBB30_8
# BB#3:                                 # %lor.lhs.false
	movb	$1, %al
	cmpq	$24, -24(%rbp)
	movb	%al, -25(%rbp)          # 1-byte Spill
	je	.LBB30_8
# BB#4:                                 # %lor.lhs.false.7
	movb	$1, %al
	cmpq	$25, -24(%rbp)
	movb	%al, -25(%rbp)          # 1-byte Spill
	je	.LBB30_8
# BB#5:                                 # %lor.lhs.false.10
	movb	$1, %al
	cmpq	$26, -24(%rbp)
	movb	%al, -25(%rbp)          # 1-byte Spill
	je	.LBB30_8
# BB#6:                                 # %lor.lhs.false.13
	movb	$1, %al
	cmpq	$28, -24(%rbp)
	movb	%al, -25(%rbp)          # 1-byte Spill
	je	.LBB30_8
# BB#7:                                 # %lor.rhs
	cmpq	$30, -24(%rbp)
	sete	%al
	movb	%al, -25(%rbp)          # 1-byte Spill
.LBB30_8:                               # %lor.end
	movb	-25(%rbp), %al          # 1-byte Reload
	xorb	$-1, %al
	andb	$1, %al
	movb	%al, -1(%rbp)
.LBB30_9:                               # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	graphicp, .Lfunc_end30-graphicp
	.cfi_endproc

	.globl	printablep
	.align	16, 0x90
	.type	printablep,@function
printablep:                             # @printablep
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp93:
	.cfi_def_cfa_offset 16
.Ltmp94:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp95:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -8(%rbp)
	movq	globals+2512, %rdi
	movl	-8(%rbp), %esi
	callq	CHAR_TABLE_REF
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %esi
	andl	$-5, %esi
	cmpl	$2, %esi
	je	.LBB31_2
# BB#1:                                 # %if.then
	movb	$0, -1(%rbp)
	jmp	.LBB31_6
.LBB31_2:                               # %if.end
	movb	$1, %al
	movq	-16(%rbp), %rcx
	sarq	$2, %rcx
	movq	%rcx, -24(%rbp)
	cmpq	$26, -24(%rbp)
	movb	%al, -25(%rbp)          # 1-byte Spill
	je	.LBB31_5
# BB#3:                                 # %lor.lhs.false
	movb	$1, %al
	cmpq	$28, -24(%rbp)
	movb	%al, -25(%rbp)          # 1-byte Spill
	je	.LBB31_5
# BB#4:                                 # %lor.rhs
	cmpq	$30, -24(%rbp)
	sete	%al
	movb	%al, -25(%rbp)          # 1-byte Spill
.LBB31_5:                               # %lor.end
	movb	-25(%rbp), %al          # 1-byte Reload
	xorb	$-1, %al
	andb	$1, %al
	movb	%al, -1(%rbp)
.LBB31_6:                               # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	printablep, .Lfunc_end31-printablep
	.cfi_endproc

	.globl	syms_of_character
	.align	16, 0x90
	.type	syms_of_character,@function
syms_of_character:                      # @syms_of_character
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp96:
	.cfi_def_cfa_offset 16
.Ltmp97:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp98:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movabsq	$Vchar_unify_table, %rdi
	callq	staticpro
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$Smax_char, %rdi
	movq	%rax, Vchar_unify_table
	callq	defsubr
	movabsq	$Scharacterp, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sunibyte_char_to_multibyte, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Smultibyte_char_to_unibyte, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Schar_width, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sstring_width, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sstring, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sunibyte_string, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Schar_resolve_modifiers, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sget_byte, %rax
	movq	%rax, %rdi
	callq	defsubr
# BB#1:                                 # %do.body
	movabsq	$syms_of_character.o_fwd, %rdi
	movabsq	$.L.str.4, %rsi
	movabsq	$globals, %rax
	addq	$2464, %rax             # imm = 0x9A0
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#2:                                 # %do.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movl	$66, %edi
                                        # kill: RDI<def> EDI<kill>
	movq	%rax, %rsi
	callq	Fmake_vector
	movq	%rax, globals+2464
# BB#3:                                 # %do.body.3
	movabsq	$syms_of_character.o_fwd.5, %rdi
	movabsq	$.L.str.6, %rsi
	movabsq	$globals, %rax
	addq	$56, %rax
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#4:                                 # %do.end.4
	movl	$186, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -8(%rbp)          # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movq	%rax, %rsi
	callq	Fmake_char_table
	movl	$901, %edi              # imm = 0x385
	movq	%rax, globals+56
	movq	globals+56, %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$32, %esi
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	CHAR_TABLE_SET
	movl	$901, %edi              # imm = 0x385
	movq	globals+56, %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$10, %esi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	CHAR_TABLE_SET
# BB#5:                                 # %do.body.10
	movabsq	$syms_of_character.o_fwd.7, %rdi
	movabsq	$.L.str.8, %rsi
	movabsq	$globals, %rax
	addq	$224, %rax
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#6:                                 # %do.end.11
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movl	$6, %edi
	movl	%edi, %esi
	movq	%rax, %rdi
	callq	Fmake_char_table
	movl	$128, %esi
	movl	$159, %edx
	movl	$18, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, globals+224
	movq	globals+224, %rdi
	callq	char_table_set_range
	movl	$4194176, %esi          # imm = 0x3FFF80
	movl	$4194303, %edx          # imm = 0x3FFFFF
	movl	$18, %r8d
	movl	%r8d, %ecx
	movq	globals+224, %rdi
	callq	char_table_set_range
# BB#7:                                 # %do.body.14
	movabsq	$syms_of_character.o_fwd.9, %rdi
	movabsq	$.L.str.10, %rsi
	movabsq	$globals, %rax
	addq	$1880, %rax             # imm = 0x758
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#8:                                 # %do.end.15
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fmake_char_table
	movl	$130, %ecx
	movl	%ecx, %edi
	movl	$506, %ecx              # imm = 0x1FA
	movl	%ecx, %esi
	movq	%rax, globals+1880
	movq	globals+1880, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	Fcons
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	Fset_char_table_range
	movl	$642, %ecx              # imm = 0x282
	movl	%ecx, %edi
	movl	$16776702, %ecx         # imm = 0xFFFDFE
	movl	%ecx, %esi
	movq	globals+1880, %rdx
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	callq	Fcons
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	Fset_char_table_range
	movq	%rax, -80(%rbp)         # 8-byte Spill
# BB#9:                                 # %do.body.25
	movabsq	$syms_of_character.o_fwd.11, %rdi
	movabsq	$.L.str.12, %rsi
	movabsq	$globals, %rax
	addq	$216, %rax
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#10:                                # %do.end.26
	movl	$256, %edi              # imm = 0x100
	callq	builtin_lisp_symbol
	movl	$258, %edi              # imm = 0x102
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$6, %edi
	movl	%edi, %edx
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fput
	movl	$256, %edi              # imm = 0x100
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fmake_char_table
	movq	%rax, globals+216
# BB#11:                                # %do.body.33
	movabsq	$syms_of_character.o_fwd.13, %rdi
	movabsq	$.L.str.14, %rsi
	movabsq	$globals, %rax
	addq	$2080, %rax             # imm = 0x820
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#12:                                # %do.end.34
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+2080
# BB#13:                                # %do.body.36
	movabsq	$syms_of_character.o_fwd.15, %rdi
	movabsq	$.L.str.16, %rsi
	movabsq	$globals, %rax
	addq	$2512, %rax             # imm = 0x9D0
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#14:                                # %do.end.37
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+2512
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	syms_of_character, .Lfunc_end32-syms_of_character
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Invalid character: %x"
	.size	.L.str, 22

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Not a unibyte character: %d"
	.size	.L.str.1, 28

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"\\%03o"
	.size	.L.str.2, 6

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Not an ASCII nor an 8-bit character: %d"
	.size	.L.str.3, 40

	.type	Vchar_unify_table,@object # @Vchar_unify_table
	.comm	Vchar_unify_table,8,8
	.type	Smax_char,@object       # @Smax_char
	.data
	.align	8
Smax_char:
	.quad	167772160               # 0xa000000
	.quad	Fmax_char
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.17
	.quad	0
	.quad	0
	.size	Smax_char, 48

	.type	syms_of_character.o_fwd,@object # @syms_of_character.o_fwd
	.local	syms_of_character.o_fwd
	.comm	syms_of_character.o_fwd,16,8
	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"translation-table-vector"
	.size	.L.str.4, 25

	.type	syms_of_character.o_fwd.5,@object # @syms_of_character.o_fwd.5
	.local	syms_of_character.o_fwd.5
	.comm	syms_of_character.o_fwd.5,16,8
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"auto-fill-chars"
	.size	.L.str.6, 16

	.type	syms_of_character.o_fwd.7,@object # @syms_of_character.o_fwd.7
	.local	syms_of_character.o_fwd.7
	.comm	syms_of_character.o_fwd.7,16,8
	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"char-width-table"
	.size	.L.str.8, 17

	.type	syms_of_character.o_fwd.9,@object # @syms_of_character.o_fwd.9
	.local	syms_of_character.o_fwd.9
	.comm	syms_of_character.o_fwd.9,16,8
	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"printable-chars"
	.size	.L.str.10, 16

	.type	syms_of_character.o_fwd.11,@object # @syms_of_character.o_fwd.11
	.local	syms_of_character.o_fwd.11
	.comm	syms_of_character.o_fwd.11,16,8
	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"char-script-table"
	.size	.L.str.12, 18

	.type	syms_of_character.o_fwd.13,@object # @syms_of_character.o_fwd.13
	.local	syms_of_character.o_fwd.13
	.comm	syms_of_character.o_fwd.13,16,8
	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"script-representative-chars"
	.size	.L.str.14, 28

	.type	syms_of_character.o_fwd.15,@object # @syms_of_character.o_fwd.15
	.local	syms_of_character.o_fwd.15
	.comm	syms_of_character.o_fwd.15,16,8
	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"unicode-category-table"
	.size	.L.str.16, 23

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"max-char"
	.size	.L.str.17, 9

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"characterp"
	.size	.L.str.18, 11

	.type	Scharacterp,@object     # @Scharacterp
	.data
	.align	8
Scharacterp:
	.quad	167772160               # 0xa000000
	.quad	Fcharacterp
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.18
	.quad	0
	.quad	0
	.size	Scharacterp, 48

	.type	.L.str.19,@object       # @.str.19
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.19:
	.asciz	"unibyte-char-to-multibyte"
	.size	.L.str.19, 26

	.type	Sunibyte_char_to_multibyte,@object # @Sunibyte_char_to_multibyte
	.data
	.align	8
Sunibyte_char_to_multibyte:
	.quad	167772160               # 0xa000000
	.quad	Funibyte_char_to_multibyte
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.19
	.quad	0
	.quad	0
	.size	Sunibyte_char_to_multibyte, 48

	.type	.L.str.20,@object       # @.str.20
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.20:
	.asciz	"multibyte-char-to-unibyte"
	.size	.L.str.20, 26

	.type	Smultibyte_char_to_unibyte,@object # @Smultibyte_char_to_unibyte
	.data
	.align	8
Smultibyte_char_to_unibyte:
	.quad	167772160               # 0xa000000
	.quad	Fmultibyte_char_to_unibyte
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.20
	.quad	0
	.quad	0
	.size	Smultibyte_char_to_unibyte, 48

	.type	.L.str.21,@object       # @.str.21
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.21:
	.asciz	"char-width"
	.size	.L.str.21, 11

	.type	Schar_width,@object     # @Schar_width
	.data
	.align	8
Schar_width:
	.quad	167772160               # 0xa000000
	.quad	Fchar_width
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.21
	.quad	0
	.quad	0
	.size	Schar_width, 48

	.type	.L.str.22,@object       # @.str.22
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.22:
	.asciz	"string-width"
	.size	.L.str.22, 13

	.type	Sstring_width,@object   # @Sstring_width
	.data
	.align	8
Sstring_width:
	.quad	167772160               # 0xa000000
	.quad	Fstring_width
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.22
	.quad	0
	.quad	0
	.size	Sstring_width, 48

	.type	.L.str.23,@object       # @.str.23
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.23:
	.asciz	"string"
	.size	.L.str.23, 7

	.type	Sstring,@object         # @Sstring
	.data
	.align	8
Sstring:
	.quad	167772160               # 0xa000000
	.quad	Fstring
	.short	0                       # 0x0
	.short	65534                   # 0xfffe
	.zero	4
	.quad	.L.str.23
	.quad	0
	.quad	0
	.size	Sstring, 48

	.type	.L.str.24,@object       # @.str.24
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.24:
	.asciz	"unibyte-string"
	.size	.L.str.24, 15

	.type	Sunibyte_string,@object # @Sunibyte_string
	.data
	.align	8
Sunibyte_string:
	.quad	167772160               # 0xa000000
	.quad	Funibyte_string
	.short	0                       # 0x0
	.short	65534                   # 0xfffe
	.zero	4
	.quad	.L.str.24
	.quad	0
	.quad	0
	.size	Sunibyte_string, 48

	.type	.L.str.25,@object       # @.str.25
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.25:
	.asciz	"char-resolve-modifiers"
	.size	.L.str.25, 23

	.type	Schar_resolve_modifiers,@object # @Schar_resolve_modifiers
	.data
	.align	8
Schar_resolve_modifiers:
	.quad	167772160               # 0xa000000
	.quad	Fchar_resolve_modifiers
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.25
	.quad	0
	.quad	0
	.size	Schar_resolve_modifiers, 48

	.type	.L.str.26,@object       # @.str.26
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.26:
	.asciz	"get-byte"
	.size	.L.str.26, 9

	.type	Sget_byte,@object       # @Sget_byte
	.data
	.align	8
Sget_byte:
	.quad	167772160               # 0xa000000
	.quad	Fget_byte
	.short	0                       # 0x0
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.26
	.quad	0
	.quad	0
	.size	Sget_byte, 48


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
