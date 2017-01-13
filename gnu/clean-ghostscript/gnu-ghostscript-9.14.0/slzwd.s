	.text
	.file	"slzwd.bc"
	.align	16, 0x90
	.type	s_LZWD_init,@function
s_LZWD_init:                            # @s_LZWD_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	8(%rbx), %rdi
	movl	$4097, %esi             # imm = 0x1001
	movl	$st_lzw_decode, %edx
	movl	$.L.str, %ecx
	callq	*104(%rdi)
	movl	$-2, %ecx
	testq	%rax, %rax
	je	.LBB0_3
# BB#1:                                 # %if.end
	movq	%rax, 136(%rbx)
	movl	$1, 24(%rbx)
	movl	108(%rbx), %ecx
	movl	$1, %edx
	shll	%cl, %edx
	movl	$0, 128(%rbx)
	movl	$0, 132(%rbx)
	leal	2(%rdx), %esi
	movl	%esi, 144(%rbx)
	incl	%ecx
	movl	%ecx, 148(%rbx)
	movl	$-1, 152(%rbx)
	movl	$-1, 160(%rbx)
	movb	$-1, 1(%rax,%rdx,4)
	leal	1(%rdx), %esi
	movb	$-1, 1(%rax,%rsi,4)
	xorl	%ecx, %ecx
	xorl	%edi, %edi
	.align	16, 0x90
.LBB0_2:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movb	%dil, (%rax,%rdi,4)
	movb	$1, 1(%rax,%rdi,4)
	movw	%si, 2(%rax,%rdi,4)
	incq	%rdi
	cmpl	%edx, %edi
	jb	.LBB0_2
.LBB0_3:                                # %cleanup
	movl	%ecx, %eax
	popq	%rbx
	retq
.Lfunc_end0:
	.size	s_LZWD_init, .Lfunc_end0-s_LZWD_init
	.cfi_endproc

	.align	16, 0x90
	.type	s_LZWD_process,@function
s_LZWD_process:                         # @s_LZWD_process
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp2:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp3:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp4:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp5:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp6:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp7:
	.cfi_def_cfa_offset 56
.Ltmp8:
	.cfi_offset %rbx, -56
.Ltmp9:
	.cfi_offset %r12, -48
.Ltmp10:
	.cfi_offset %r13, -40
.Ltmp11:
	.cfi_offset %r14, -32
.Ltmp12:
	.cfi_offset %r15, -24
.Ltmp13:
	.cfi_offset %rbp, -16
	movl	%ecx, -124(%rsp)        # 4-byte Spill
	movq	%rsi, -24(%rsp)         # 8-byte Spill
	movq	(%rsi), %r8
	movq	8(%rsi), %r10
	movq	8(%rdx), %r9
	movq	16(%rdx), %rax
	movq	%rax, -8(%rsp)          # 8-byte Spill
	movl	160(%rdi), %esi
	movl	152(%rdi), %eax
	movl	%eax, -28(%rsp)         # 4-byte Spill
	movl	156(%rdi), %eax
	movq	%rax, -40(%rsp)         # 8-byte Spill
	movl	148(%rdi), %r13d
	movb	108(%rdi), %cl
	movl	$1, %ebp
	movl	$1, %ebx
	shll	%cl, %ebx
	movb	%r13b, %cl
	shll	%cl, %ebp
	movl	%ebp, %eax
	subl	120(%rdi), %eax
	movl	%eax, -68(%rsp)         # 4-byte Spill
	cmpl	$0, 116(%rdi)
	movb	124(%rdi), %al
	movq	%rax, -64(%rsp)         # 8-byte Spill
	movl	128(%rdi), %r11d
	movslq	144(%rdi), %r12
	movq	136(%rdi), %r15
	movl	112(%rdi), %eax
	movl	%eax, -112(%rsp)        # 4-byte Spill
	je	.LBB1_1
# BB#2:                                 # %select.mid
	movq	%r10, -80(%rsp)         # 8-byte Spill
	movl	132(%rdi), %r14d
	jmp	.LBB1_3
.LBB1_1:
	movl	$2, %eax
	subl	%r8d, %eax
	movl	%r10d, %r14d
	movq	%r10, -80(%rsp)         # 8-byte Spill
	addl	%eax, %r14d
.LBB1_3:                                # %select.end
	leaq	(%r15,%r12,4), %rax
	movq	%rax, -104(%rsp)        # 8-byte Spill
	leal	1(%rbx), %eax
	movl	%eax, -44(%rsp)         # 4-byte Spill
	decl	%ebp
	testl	%esi, %esi
	js	.LBB1_4
# BB#5:                                 # %if.then.17
	movl	%ebp, -96(%rsp)         # 4-byte Spill
	movq	%rbx, -120(%rsp)        # 8-byte Spill
	movq	-40(%rsp), %r10         # 8-byte Reload
	movl	%r13d, -92(%rsp)        # 4-byte Spill
	movl	168(%rdi), %ebp
	movq	-8(%rsp), %rax          # 8-byte Reload
	subl	%r9d, %eax
	cmpl	%eax, %ebp
	cmovlel	%ebp, %eax
	movl	%ebp, %ebx
	subl	%eax, %ebx
	movl	%ebx, 168(%rdi)
	movl	%esi, -108(%rsp)        # 4-byte Spill
	movl	%esi, %ecx
	je	.LBB1_8
# BB#6:                                 # %while.body.preheader
	movl	%ebp, %esi
	notl	%esi
	movq	-8(%rsp), %rcx          # 8-byte Reload
	subl	%r9d, %ecx
	notl	%ecx
	cmpl	%ecx, %esi
	cmovgel	%esi, %ecx
	subl	%ecx, %esi
	movl	-108(%rsp), %ecx        # 4-byte Reload
	.align	16, 0x90
.LBB1_7:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movslq	%ecx, %rcx
	movzwl	2(%r15,%rcx,4), %ecx
	incl	%esi
	jne	.LBB1_7
.LBB1_8:                                # %while.end
	movl	%eax, %esi
	leaq	(%rsi,%r9), %rsi
	testl	%eax, %eax
	movl	-44(%rsp), %r13d        # 4-byte Reload
	jle	.LBB1_9
# BB#10:                                # %while.body.37.preheader
	notl	%ebp
	movq	-8(%rsp), %rax          # 8-byte Reload
	subl	%r9d, %eax
	notl	%eax
	cmpl	%eax, %ebp
	cmovgel	%ebp, %eax
	negl	%eax
	movq	%rsi, -16(%rsp)         # 8-byte Spill
	.align	16, 0x90
.LBB1_11:                               # %while.body.37
                                        # =>This Inner Loop Header: Depth=1
	movslq	%ecx, %rcx
	movb	(%r15,%rcx,4), %bl
	movb	%bl, (%rsi)
	decq	%rsi
	movzwl	2(%r15,%rcx,4), %ecx
	decl	%eax
	cmpl	$1, %eax
	jg	.LBB1_11
# BB#12:                                # %while.cond.33.while.end.42_crit_edge
	movl	168(%rdi), %ebx
	jmp	.LBB1_13
.LBB1_4:
	movl	%ebp, -96(%rsp)         # 4-byte Spill
	movq	%rbx, -120(%rsp)        # 8-byte Spill
	movq	%r12, -56(%rsp)         # 8-byte Spill
	movq	%rdx, -88(%rsp)         # 8-byte Spill
	movl	%r11d, %r10d
	movl	-68(%rsp), %eax         # 4-byte Reload
	movl	%eax, %ebx
	movq	%r9, -16(%rsp)          # 8-byte Spill
	movq	-80(%rsp), %rdx         # 8-byte Reload
	jmp	.LBB1_18
.LBB1_9:
	movq	%rsi, -16(%rsp)         # 8-byte Spill
.LBB1_13:                               # %while.end.42
	movq	%r10, %r9
	testl	%ebx, %ebx
	movq	%r12, %r10
	je	.LBB1_14
# BB#16:                                # %cleanup
	movq	-16(%rsp), %rax         # 8-byte Reload
	movq	%rax, 8(%rdx)
	movl	$1, %eax
	jmp	.LBB1_17
.LBB1_14:                               # %if.end.47
	movl	$-1, 160(%rdi)
	movl	164(%rdi), %eax
	cmpl	%r13d, %ecx
	jne	.LBB1_78
# BB#15:                                # %if.then.51
	movb	1(%rsi), %bl
	jmp	.LBB1_79
	.align	16, 0x90
.LBB1_78:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ecx, %ebx
	movslq	%ebx, %rcx
	movzwl	2(%r15,%rcx,4), %ecx
	cmpl	%r13d, %ecx
	jne	.LBB1_78
	jmp	.LBB1_79
.LBB1_17:                               # %cleanup.436
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.align	16, 0x90
.LBB1_18:                               # %top
                                        # =>This Inner Loop Header: Depth=1
	movl	%r10d, %r11d
	subl	%r13d, %r11d
	jge	.LBB1_44
# BB#19:                                # %if.then.66
                                        #   in Loop: Header=BB1_18 Depth=1
	testl	%r14d, %r14d
	jne	.LBB1_24
# BB#20:                                # %if.then.69
                                        #   in Loop: Header=BB1_18 Depth=1
	xorl	%r14d, %r14d
	cmpq	%r8, %rdx
	je	.LBB1_21
# BB#22:                                # %if.end.73
                                        #   in Loop: Header=BB1_18 Depth=1
	movzbl	1(%r8), %r14d
	incq	%r8
	testl	%r14d, %r14d
	movl	$-1, %eax
	jne	.LBB1_18
	jmp	.LBB1_23
.LBB1_44:                               # %if.else.166
	cmpl	$0, -112(%rsp)          # 4-byte Folded Reload
	je	.LBB1_46
# BB#45:                                # %if.then.168
	movq	-64(%rsp), %rax         # 8-byte Reload
	movzbl	%al, %eax
	movl	$8, %ecx
	subl	%r10d, %ecx
	shrl	%cl, %eax
	movl	%eax, %ecx
	jmp	.LBB1_47
.LBB1_24:                               # %if.end.83
	movq	-64(%rsp), %rax         # 8-byte Reload
	movzbl	%al, %r11d
	movl	$8, %ecx
	subl	%r10d, %ecx
	movl	%r11d, %eax
	shrl	%cl, %eax
	movl	%r13d, %ecx
	subl	%r10d, %ecx
	shll	%cl, %r11d
	cmpl	$0, -112(%rsp)          # 4-byte Folded Reload
	cmovnel	%eax, %r11d
	leal	8(%r10), %esi
	cmpl	%r13d, %esi
	jge	.LBB1_37
# BB#25:                                # %if.then.96
	movq	%rdx, %rcx
	subq	%r8, %rcx
	cmpl	$1, %r14d
	movq	-40(%rsp), %r9          # 8-byte Reload
	jne	.LBB1_31
# BB#26:                                # %if.then.99
	cmpq	$3, %rcx
	jge	.LBB1_28
# BB#27:
	xorl	%eax, %eax
	movl	$1, %r14d
	movq	-24(%rsp), %r12         # 8-byte Reload
	jmp	.LBB1_103
.LBB1_21:
	xorl	%eax, %eax
	movq	%rdx, %r8
.LBB1_23:
	movq	-40(%rsp), %r9          # 8-byte Reload
	movq	-24(%rsp), %r12         # 8-byte Reload
	jmp	.LBB1_103
.LBB1_37:                               # %if.else.144
	xorl	%eax, %eax
	cmpq	%rdx, %r8
	movq	-40(%rsp), %r9          # 8-byte Reload
	je	.LBB1_38
# BB#39:                                # %if.end.148
	incq	%r8
	decl	%r14d
	movl	%r10d, %esi
	jmp	.LBB1_40
.LBB1_46:                               # %if.else.173
	subl	%r13d, %r10d
	movq	-64(%rsp), %rax         # 8-byte Reload
	movzbl	%al, %eax
	movb	%r10b, %cl
	shrl	%cl, %eax
	movl	%eax, %ecx
	movl	%r10d, %r11d
.LBB1_47:                               # %if.end.178
	movq	-56(%rsp), %rdx         # 8-byte Reload
	movq	-8(%rsp), %rsi          # 8-byte Reload
	movl	-96(%rsp), %ebp         # 4-byte Reload
	movq	-40(%rsp), %r9          # 8-byte Reload
	movq	-24(%rsp), %r12         # 8-byte Reload
	jmp	.LBB1_48
.LBB1_31:                               # %if.else.118
	xorl	%eax, %eax
	cmpq	$2, %rcx
	jge	.LBB1_33
# BB#32:
	movq	-24(%rsp), %r12         # 8-byte Reload
	jmp	.LBB1_103
.LBB1_38:
	movq	%rdx, %r8
	movq	-24(%rsp), %r12         # 8-byte Reload
	jmp	.LBB1_103
.LBB1_28:                               # %if.end.106
	movzbl	2(%r8), %r14d
	testl	%r14d, %r14d
	movl	$-1, %eax
	je	.LBB1_29
# BB#30:                                # %if.end.115
	incl	%r14d
	leaq	1(%r8), %rax
	jmp	.LBB1_34
.LBB1_33:                               # %if.else.118.if.end.127_crit_edge
	movq	%r8, %rax
.LBB1_34:                               # %if.end.127
	cmpl	$0, -112(%rsp)          # 4-byte Folded Reload
	movzbl	1(%r8), %edx
	jne	.LBB1_36
# BB#35:                                # %if.end.127
	movl	$-8, %ecx
	subl	%r10d, %ecx
	addl	%r13d, %ecx
	movb	%cl, %r10b
.LBB1_36:                               # %if.end.127
	movb	%r10b, %cl
	shll	%cl, %edx
	addl	%edx, %r11d
	addq	$2, %rax
	addl	$-2, %r14d
	movq	%rax, %r8
.LBB1_40:                               # %if.end.151
	movb	(%r8), %al
	movq	%rax, -64(%rsp)         # 8-byte Spill
	movzbl	%al, %ecx
	cmpl	$0, -112(%rsp)          # 4-byte Folded Reload
	movq	-56(%rsp), %rdx         # 8-byte Reload
	movl	-96(%rsp), %ebp         # 4-byte Reload
	je	.LBB1_43
# BB#41:                                # %if.then.153
	movl	%ecx, %eax
	movb	%sil, %cl
	shll	%cl, %eax
	movl	%eax, %ecx
	addl	%r11d, %ecx
	movl	$8, %r11d
	subl	%r13d, %r11d
	addl	%esi, %r11d
	jmp	.LBB1_42
.LBB1_43:                               # %if.else.159
	movl	$8, %eax
	subl	%r13d, %eax
	addl	%eax, %esi
	movl	%ecx, %eax
	movb	%sil, %cl
	shrl	%cl, %eax
	movl	%eax, %ecx
	addl	%r11d, %ecx
	movl	%esi, %r11d
.LBB1_42:                               # %if.end.178
	movq	-24(%rsp), %r12         # 8-byte Reload
	movq	-8(%rsp), %rsi          # 8-byte Reload
.LBB1_48:                               # %if.end.178
	andl	%ebp, %ecx
	cmpl	%edx, %ecx
	jge	.LBB1_50
# BB#49:
	movl	%ebp, -96(%rsp)         # 4-byte Spill
	movq	%rdx, -56(%rsp)         # 8-byte Spill
	movl	%ebx, %eax
	movl	%eax, -68(%rsp)         # 4-byte Spill
	jmp	.LBB1_59
.LBB1_50:                               # %if.then.184
	movl	$-2, %eax
	jle	.LBB1_52
# BB#51:
	movq	%rdx, -56(%rsp)         # 8-byte Spill
	movl	%r11d, %r10d
	jmp	.LBB1_103
.LBB1_52:                               # %for.cond.189.preheader
	movq	%rsi, %r10
	movl	%ebp, -96(%rsp)         # 4-byte Spill
	movl	-44(%rsp), %eax         # 4-byte Reload
	cmpl	%eax, -28(%rsp)         # 4-byte Folded Reload
	je	.LBB1_56
# BB#53:
	movl	%ecx, %esi
	movl	-28(%rsp), %ecx         # 4-byte Reload
	movl	-44(%rsp), %ebp         # 4-byte Reload
	.align	16, 0x90
.LBB1_54:                               # %for.body.192
                                        # =>This Inner Loop Header: Depth=1
	movl	%ecx, %eax
	movslq	%eax, %rcx
	movzwl	2(%r15,%rcx,4), %ecx
	cmpl	%ebp, %ecx
	jne	.LBB1_54
# BB#55:                                # %for.cond.189.for.end.200_crit_edge
	movq	-104(%rsp), %rcx        # 8-byte Reload
	movb	%al, (%rcx)
	movl	%esi, %ecx
.LBB1_56:                               # %for.end.200
	movl	%ecx, %esi
	movq	%rdx, -56(%rsp)         # 8-byte Spill
	leal	1(%r9), %eax
	cmpl	$255, %eax
	jb	.LBB1_58
# BB#57:                                # %for.end.200
	movb	$-1, %al
.LBB1_58:                               # %for.end.200
	movq	-104(%rsp), %rcx        # 8-byte Reload
	movb	%al, 1(%rcx)
	movl	-28(%rsp), %eax         # 4-byte Reload
	movw	%ax, 2(%rcx)
	movl	%ebx, %eax
	movl	%eax, -68(%rsp)         # 4-byte Spill
	movl	%esi, %ecx
	movq	%r10, %rsi
	jmp	.LBB1_59
.LBB1_29:
	movq	-24(%rsp), %r12         # 8-byte Reload
	jmp	.LBB1_103
.LBB1_59:                               # %reset
	movq	%r12, -24(%rsp)         # 8-byte Spill
	movl	%r13d, -92(%rsp)        # 4-byte Spill
	movslq	%ecx, %rbx
	movzbl	1(%r15,%rbx,4), %eax
	cmpl	$255, %eax
	movl	-44(%rsp), %r13d        # 4-byte Reload
	jne	.LBB1_66
# BB#60:                                # %if.then.222
	movq	-120(%rsp), %rax        # 8-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB1_62
# BB#61:                                # %do.end.229
	movq	%r9, -40(%rsp)          # 8-byte Spill
	movq	%rsi, -8(%rsp)          # 8-byte Spill
	leal	2(%rax), %eax
	movq	%rax, -56(%rsp)         # 8-byte Spill
	cltq
	leaq	(%r15,%rax,4), %rax
	movq	%rax, -104(%rsp)        # 8-byte Spill
	movl	108(%rdi), %r13d
	incl	%r13d
	movl	$1, %ebx
	movb	%r13b, %cl
	shll	%cl, %ebx
	leal	-1(%rbx), %eax
	movl	%eax, -96(%rsp)         # 4-byte Spill
	subl	120(%rdi), %ebx
	movl	$-1, -28(%rsp)          # 4-byte Folded Spill
	movl	%r11d, %r10d
	movq	-80(%rsp), %rdx         # 8-byte Reload
	jmp	.LBB1_18
.LBB1_62:                               # %if.else.241
	movl	$-1, %eax
	cmpl	%r13d, %ecx
	je	.LBB1_63
# BB#64:
	xorl	%eax, %eax
	movl	%ecx, %edx
	.align	16, 0x90
.LBB1_65:                               # %for.body.250
                                        # =>This Inner Loop Header: Depth=1
	movslq	%edx, %rdx
	movzwl	2(%r15,%rdx,4), %edx
	incl	%eax
	cmpl	%r13d, %edx
	jne	.LBB1_65
.LBB1_66:                               # %if.end.261
	movq	%rsi, %r12
	subq	-16(%rsp), %rsi         # 8-byte Folded Reload
	movl	%eax, %ebp
	cmpq	%rbp, %rsi
	jge	.LBB1_68
# BB#67:                                # %if.then.268
	movl	%ecx, 160(%rdi)
	movl	%eax, 164(%rdi)
	movl	%eax, 168(%rdi)
	movl	$1, %eax
.LBB1_63:
	movl	%r11d, %r10d
	movq	-24(%rsp), %r12         # 8-byte Reload
	movl	-92(%rsp), %r13d        # 4-byte Reload
	jmp	.LBB1_103
.LBB1_68:                               # %if.end.272
	cmpl	$1, %eax
	movq	-88(%rsp), %rdx         # 8-byte Reload
	movq	-56(%rsp), %r10         # 8-byte Reload
	je	.LBB1_69
# BB#70:                                # %if.end.272
	cmpl	$2, %eax
	movq	-16(%rsp), %rsi         # 8-byte Reload
	jne	.LBB1_72
# BB#71:
	movl	%ecx, -108(%rsp)        # 4-byte Spill
	jmp	.LBB1_76
.LBB1_69:
	movq	%r12, -8(%rsp)          # 8-byte Spill
	movq	-16(%rsp), %rsi         # 8-byte Reload
	jmp	.LBB1_77
.LBB1_72:                               # %if.end.272
	cmpl	$3, %eax
	jne	.LBB1_73
# BB#75:                                # %sw.bb
	movl	%ecx, -108(%rsp)        # 4-byte Spill
	movb	(%r15,%rbx,4), %cl
	movb	%cl, 3(%rsi)
	movzwl	2(%r15,%rbx,4), %ebx
.LBB1_76:                               # %sw.bb.295
	movq	%r12, -8(%rsp)          # 8-byte Spill
	movb	(%r15,%rbx,4), %cl
	movb	%cl, 2(%rsi)
	movzwl	2(%r15,%rbx,4), %ebx
	movl	-108(%rsp), %ecx        # 4-byte Reload
.LBB1_77:                               # %sw.bb.301
	movb	(%r15,%rbx,4), %bl
	movb	%bl, 1(%rsi)
	addq	%rbp, %rsi
	movq	%rsi, -16(%rsp)         # 8-byte Spill
	movq	-24(%rsp), %r12         # 8-byte Reload
	jmp	.LBB1_80
.LBB1_73:                               # %sw.default
	movq	%r12, -8(%rsp)          # 8-byte Spill
	addq	%rbp, %rsi
	movq	%rsi, -16(%rsp)         # 8-byte Spill
	movl	%ecx, %ebp
	movl	%ecx, -108(%rsp)        # 4-byte Spill
	movq	%rsi, %rcx
	.align	16, 0x90
.LBB1_74:                               # %do.body.278
                                        # =>This Inner Loop Header: Depth=1
	movslq	%ebp, %rbp
	movb	(%r15,%rbp,4), %bl
	movb	%bl, (%rcx)
	decq	%rcx
	movzwl	2(%r15,%rbp,4), %ebp
	cmpl	%r13d, %ebp
	jne	.LBB1_74
.LBB1_79:                               # %add.306.loopexit259
	movq	-24(%rsp), %r12         # 8-byte Reload
	movl	-108(%rsp), %ecx        # 4-byte Reload
.LBB1_80:                               # %add.306
	cmpl	$0, -28(%rsp)           # 4-byte Folded Reload
	js	.LBB1_81
# BB#84:                                # %if.then.309
	movl	%ecx, %esi
	cmpl	$4096, %r10d            # imm = 0x1000
	jne	.LBB1_104
# BB#85:                                # %if.then.312
	movl	%r13d, -44(%rsp)        # 4-byte Spill
	movl	$-2, %eax
	cmpl	$0, 116(%rdi)
	movl	-92(%rsp), %r13d        # 4-byte Reload
	je	.LBB1_87
# BB#86:
	movl	$4096, %ecx             # imm = 0x1000
	movq	%rcx, -56(%rsp)         # 8-byte Spill
	movq	%rdx, -88(%rsp)         # 8-byte Spill
	movl	%r11d, %r10d
	jmp	.LBB1_103
.LBB1_81:
	movq	%r12, -24(%rsp)         # 8-byte Spill
	movl	%r13d, -44(%rsp)        # 4-byte Spill
	movq	%r10, -56(%rsp)         # 8-byte Spill
	movq	%rdx, -88(%rsp)         # 8-byte Spill
	movl	%ecx, -28(%rsp)         # 4-byte Spill
	movq	%rax, -40(%rsp)         # 8-byte Spill
	movl	%r11d, %r10d
	movl	-68(%rsp), %eax         # 4-byte Reload
	movl	%eax, %ebx
	jmp	.LBB1_82
.LBB1_104:                              # %if.end.387
	movq	-104(%rsp), %rbp        # 8-byte Reload
	movb	%bl, (%rbp)
	cmpl	$254, %r9d
	movl	$254, %ecx
	cmovbl	%r9d, %ecx
	incl	%ecx
	movb	%cl, 1(%rbp)
	movl	-28(%rsp), %ecx         # 4-byte Reload
	movw	%cx, 2(%rbp)
	addq	$4, %rbp
	movq	%rbp, -104(%rsp)        # 8-byte Spill
	incl	%r10d
	movl	-68(%rsp), %ebp         # 4-byte Reload
	cmpl	%ebp, %r10d
	jne	.LBB1_105
# BB#106:                               # %if.end.387
	cmpl	$4094, %r10d            # imm = 0xFFE
	jg	.LBB1_105
# BB#107:                               # %if.then.410
	movq	%r12, -24(%rsp)         # 8-byte Spill
	movl	%r13d, -44(%rsp)        # 4-byte Spill
	movq	%rdx, -88(%rsp)         # 8-byte Spill
	movl	-92(%rsp), %r13d        # 4-byte Reload
	incl	%r13d
	movl	$1, %ebx
	movb	%r13b, %cl
	shll	%cl, %ebx
	leal	-1(%rbx), %ecx
	movl	%ecx, -96(%rsp)         # 4-byte Spill
	subl	120(%rdi), %ebx
	movl	%esi, -28(%rsp)         # 4-byte Spill
	movq	%rax, -40(%rsp)         # 8-byte Spill
	movl	%r11d, %r10d
	movl	%ebp, %eax
	movq	%rax, -56(%rsp)         # 8-byte Spill
	movq	-80(%rsp), %rdx         # 8-byte Reload
	jmp	.LBB1_18
.LBB1_105:
	movq	%r12, -24(%rsp)         # 8-byte Spill
	movl	%r13d, -44(%rsp)        # 4-byte Spill
	movq	%r10, -56(%rsp)         # 8-byte Spill
	movq	%rdx, -88(%rsp)         # 8-byte Spill
	movl	%esi, -28(%rsp)         # 4-byte Spill
	movq	%rax, -40(%rsp)         # 8-byte Spill
	movl	%r11d, %r10d
	movl	%ebp, %ebx
.LBB1_82:                               # %top.preheader
	movl	-92(%rsp), %r13d        # 4-byte Reload
	movq	-80(%rsp), %rdx         # 8-byte Reload
	jmp	.LBB1_18
.LBB1_87:                               # %if.then.315
	movq	%r9, %rcx
	cmpl	$7, %r11d
	movq	-80(%rsp), %r9          # 8-byte Reload
	jg	.LBB1_91
# BB#88:                                # %land.lhs.true
	cmpl	$0, -124(%rsp)          # 4-byte Folded Reload
	je	.LBB1_91
# BB#89:                                # %land.lhs.true
	cmpq	%r9, %r8
	jb	.LBB1_91
# BB#90:
	movl	$4096, %eax             # imm = 0x1000
	movq	%rax, -56(%rsp)         # 8-byte Spill
	movq	%rdx, -88(%rsp)         # 8-byte Spill
	movl	%r11d, %r10d
	xorl	%eax, %eax
	movq	%rcx, %r9
	jmp	.LBB1_103
.LBB1_91:                               # %if.end.323
	movq	%rcx, -40(%rsp)         # 8-byte Spill
	movslq	%r11d, %rcx
	movq	%r9, %rbp
	subq	%r8, %rbp
	leaq	(%rcx,%rbp,8), %rcx
	movslq	%r13d, %rbp
	cmpq	%rbp, %rcx
	jge	.LBB1_93
# BB#92:                                # %if.then.333
	movl	$4096, %eax             # imm = 0x1000
	movq	%rax, -56(%rsp)         # 8-byte Spill
	movq	%rdx, -88(%rsp)         # 8-byte Spill
	movl	-124(%rsp), %ecx        # 4-byte Reload
	testl	%ecx, %ecx
	movl	$-2, %eax
	cmovel	%ecx, %eax
	movl	%r11d, %r10d
	movq	-40(%rsp), %r9          # 8-byte Reload
	jmp	.LBB1_103
.LBB1_93:                               # %if.end.337
	cmpl	$0, -112(%rsp)          # 4-byte Folded Reload
	movq	-64(%rsp), %rcx         # 8-byte Reload
	movzbl	%cl, %ebx
	je	.LBB1_98
# BB#94:                                # %if.then.339
	movq	%rdx, -88(%rsp)         # 8-byte Spill
	movl	$8, %ecx
	subl	%r11d, %ecx
	shrl	%cl, %ebx
	movzbl	1(%r8), %ecx
	movq	%rcx, -64(%rsp)         # 8-byte Spill
	movl	%ecx, %ebp
	movb	%r11b, %cl
	shll	%cl, %ebp
	addl	%ebx, %ebp
	leal	8(%r11), %ecx
	cmpl	%r13d, %ecx
	jge	.LBB1_95
# BB#97:                                # %if.then.350
	movzbl	2(%r8), %edx
	movq	%rdx, -64(%rsp)         # 8-byte Spill
	addq	$2, %r8
	shll	%cl, %edx
	addl	%edx, %ebp
	jmp	.LBB1_96
.LBB1_98:                               # %if.else.357
	movl	$1, %ebp
	movb	%r11b, %cl
	shll	%cl, %ebp
	addl	$255, %ebp
	andl	%ebx, %ebp
	shll	$8, %ebp
	movzbl	1(%r8), %ecx
	movq	%rcx, -64(%rsp)         # 8-byte Spill
	leal	(%rbp,%rcx), %ebp
	leal	8(%r11), %ecx
	cmpl	%r13d, %ecx
	movq	-8(%rsp), %rsi          # 8-byte Reload
	movq	-120(%rsp), %r9         # 8-byte Reload
	jge	.LBB1_99
# BB#100:                               # %if.then.369
	shll	$8, %ebp
	movzbl	2(%r8), %ecx
	movq	%rcx, -64(%rsp)         # 8-byte Spill
	addq	$2, %r8
	orl	%ecx, %ebp
	jmp	.LBB1_101
.LBB1_95:
	incq	%r8
.LBB1_96:                               # %if.end.378
	movq	-8(%rsp), %rsi          # 8-byte Reload
	movq	-120(%rsp), %r9         # 8-byte Reload
	jmp	.LBB1_102
.LBB1_99:
	incq	%r8
.LBB1_101:                              # %if.end.374
	movq	%rdx, -88(%rsp)         # 8-byte Spill
	movl	%r11d, %ecx
	subl	%r13d, %ecx
	andb	$7, %cl
	sarl	%cl, %ebp
.LBB1_102:                              # %if.end.378
	movq	%r9, -120(%rsp)         # 8-byte Spill
	subl	%r13d, %r11d
	andl	$7, %r11d
	movl	$4096, %ecx             # imm = 0x1000
	movq	%rcx, -56(%rsp)         # 8-byte Spill
	cmpl	%r9d, %ebp
	movl	%r9d, %ecx
	movl	%r11d, %r10d
	movq	-40(%rsp), %r9          # 8-byte Reload
	je	.LBB1_59
.LBB1_103:                              # %out
	movq	%r8, (%r12)
	movq	-88(%rsp), %rcx         # 8-byte Reload
	movq	-16(%rsp), %rdx         # 8-byte Reload
	movq	%rdx, 8(%rcx)
	movl	%r13d, 148(%rdi)
	movl	-28(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, 152(%rdi)
	movl	%r9d, 156(%rdi)
	movq	-64(%rsp), %rcx         # 8-byte Reload
	movzbl	%cl, %ecx
	movl	%ecx, 124(%rdi)
	movl	%r10d, 128(%rdi)
	movl	%r14d, 132(%rdi)
	movq	-56(%rsp), %rcx         # 8-byte Reload
	movl	%ecx, 144(%rdi)
	jmp	.LBB1_17
.Lfunc_end1:
	.size	s_LZWD_process, .Lfunc_end1-s_LZWD_process
	.cfi_endproc

	.align	16, 0x90
	.type	s_LZWD_reset,@function
s_LZWD_reset:                           # @s_LZWD_reset
	.cfi_startproc
# BB#0:                                 # %entry
	movq	136(%rdi), %rax
	movl	108(%rdi), %ecx
	movl	$1, %edx
	shll	%cl, %edx
	movl	$0, 128(%rdi)
	movl	$0, 132(%rdi)
	leal	2(%rdx), %esi
	movl	%esi, 144(%rdi)
	incl	%ecx
	movl	%ecx, 148(%rdi)
	movl	$-1, 152(%rdi)
	movl	$-1, 160(%rdi)
	movb	$-1, 1(%rax,%rdx,4)
	leal	1(%rdx), %ecx
	movb	$-1, 1(%rax,%rcx,4)
	xorl	%esi, %esi
	.align	16, 0x90
.LBB2_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movb	%sil, (%rax,%rsi,4)
	movb	$1, 1(%rax,%rsi,4)
	movw	%cx, 2(%rax,%rsi,4)
	incq	%rsi
	cmpl	%edx, %esi
	jb	.LBB2_1
# BB#2:                                 # %for.end
	xorl	%eax, %eax
	retq
.Lfunc_end2:
	.size	s_LZWD_reset, .Lfunc_end2-s_LZWD_reset
	.cfi_endproc

	.type	s_LZWD_template,@object # @s_LZWD_template
	.section	.rodata,"a",@progbits
	.globl	s_LZWD_template
	.align	8
s_LZWD_template:
	.quad	st_LZW_state
	.quad	s_LZWD_init
	.quad	s_LZWD_process
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	s_LZW_release
	.quad	s_LZW_set_defaults
	.quad	s_LZWD_reset
	.size	s_LZWD_template, 56

	.type	st_lzw_decode,@object   # @st_lzw_decode
	.align	8
st_lzw_decode:
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.1
	.quad	0
	.quad	0
	.quad	gs_no_struct_enum_ptrs
	.quad	gs_no_struct_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_lzw_decode, 64

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"LZWDecode(init)"
	.size	.L.str, 16

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"lzw_decode"
	.size	.L.str.1, 11


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
