	.text
	.file	"read.bc"
	.globl	plain_print_postscript
	.align	16, 0x90
	.type	plain_print_postscript,@function
plain_print_postscript:                 # @plain_print_postscript
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB0_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	leaq	-20(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	plain_getc
	movl	%eax, -24(%rbp)
	cmpl	$-1, %eax
	je	.LBB0_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rdi
	movl	-24(%rbp), %esi
	movl	-20(%rbp), %edx
	callq	ps_print_char
	jmp	.LBB0_1
.LBB0_3:                                # %while.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	plain_print_postscript, .Lfunc_end0-plain_print_postscript
	.cfi_endproc

	.align	16, 0x90
	.type	plain_getc,@function
plain_getc:                             # @plain_getc
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	88(%rsi), %rsi
	movq	-16(%rbp), %rdi
	cmpq	80(%rdi), %rsi
	jb	.LBB1_4
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	buffer_get
	movq	-16(%rbp), %rdi
	movq	64(%rdi), %rdi
	movl	%edi, %eax
	movq	job, %rdi
	movq	1632(%rdi), %rdi
	movq	40(%rdi), %rdi
	subq	$1, %rdi
	movq	job, %rcx
	movq	1632(%rcx), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rdi,8), %rcx
	movl	%eax, 136(%rcx)
	movq	-16(%rbp), %rcx
	cmpq	$0, 80(%rcx)
	jne	.LBB1_3
# BB#2:                                 # %if.then.6
	movl	$-1, -4(%rbp)
	jmp	.LBB1_74
.LBB1_3:                                # %if.end
	jmp	.LBB1_4
.LBB1_4:                                # %if.end.7
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
	movq	-16(%rbp), %rax
	movq	88(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 88(%rax)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movb	(%rax,%rcx), %sil
	movb	%sil, -25(%rbp)
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	40(%rcx), %rcx
	movzbl	(%rcx,%rax), %edi
	cmpl	$8, %edi
	jne	.LBB1_73
# BB#5:                                 # %if.then.17
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	-16(%rbp), %rcx
	addq	88(%rcx), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	movzbl	-25(%rbp), %edx
	movq	-40(%rbp), %rax
	movzbl	(%rax), %esi
	cmpl	%esi, %edx
	jne	.LBB1_13
# BB#6:                                 # %land.lhs.true
	movl	$8, %eax
	movq	-40(%rbp), %rcx
	movzbl	1(%rcx), %edx
	cmpl	%edx, %eax
	jne	.LBB1_13
# BB#7:                                 # %land.lhs.true.30
	movzbl	-25(%rbp), %eax
	movq	-40(%rbp), %rcx
	movzbl	2(%rcx), %edx
	cmpl	%edx, %eax
	jne	.LBB1_13
# BB#8:                                 # %land.lhs.true.36
	movl	$8, %eax
	movq	-40(%rbp), %rcx
	movzbl	3(%rcx), %edx
	cmpl	%edx, %eax
	jne	.LBB1_13
# BB#9:                                 # %land.lhs.true.41
	movzbl	-25(%rbp), %eax
	movq	-40(%rbp), %rcx
	movzbl	4(%rcx), %edx
	cmpl	%edx, %eax
	jne	.LBB1_13
# BB#10:                                # %land.lhs.true.47
	movl	$8, %eax
	movq	-40(%rbp), %rcx
	movzbl	5(%rcx), %edx
	cmpl	%edx, %eax
	jne	.LBB1_13
# BB#11:                                # %land.lhs.true.52
	movzbl	-25(%rbp), %eax
	movq	-40(%rbp), %rcx
	movzbl	6(%rcx), %edx
	cmpl	%edx, %eax
	jne	.LBB1_13
# BB#12:                                # %if.then.58
	movq	-24(%rbp), %rax
	movl	$4, (%rax)
	movq	-16(%rbp), %rax
	movq	88(%rax), %rcx
	addq	$8, %rcx
	movq	%rcx, 88(%rax)
	jmp	.LBB1_72
.LBB1_13:                               # %if.else
	movzbl	-25(%rbp), %eax
	movq	-40(%rbp), %rcx
	movzbl	(%rcx), %edx
	cmpl	%edx, %eax
	jne	.LBB1_19
# BB#14:                                # %land.lhs.true.65
	movl	$8, %eax
	movq	-40(%rbp), %rcx
	movzbl	1(%rcx), %edx
	cmpl	%edx, %eax
	jne	.LBB1_19
# BB#15:                                # %land.lhs.true.70
	movzbl	-25(%rbp), %eax
	movq	-40(%rbp), %rcx
	movzbl	2(%rcx), %edx
	cmpl	%edx, %eax
	jne	.LBB1_19
# BB#16:                                # %land.lhs.true.76
	movl	$8, %eax
	movq	-40(%rbp), %rcx
	movzbl	3(%rcx), %edx
	cmpl	%edx, %eax
	jne	.LBB1_19
# BB#17:                                # %land.lhs.true.81
	movzbl	-25(%rbp), %eax
	movq	-40(%rbp), %rcx
	movzbl	4(%rcx), %edx
	cmpl	%edx, %eax
	jne	.LBB1_19
# BB#18:                                # %if.then.87
	movq	-24(%rbp), %rax
	movl	$2, (%rax)
	movq	-16(%rbp), %rax
	movq	88(%rax), %rcx
	addq	$6, %rcx
	movq	%rcx, 88(%rax)
	jmp	.LBB1_71
.LBB1_19:                               # %if.else.90
	movzbl	-25(%rbp), %eax
	movq	-40(%rbp), %rcx
	movzbl	(%rcx), %edx
	cmpl	%edx, %eax
	jne	.LBB1_23
# BB#20:                                # %land.lhs.true.96
	movl	$8, %eax
	movq	-40(%rbp), %rcx
	movzbl	1(%rcx), %edx
	cmpl	%edx, %eax
	jne	.LBB1_23
# BB#21:                                # %land.lhs.true.101
	movzbl	-25(%rbp), %eax
	movq	-40(%rbp), %rcx
	movzbl	2(%rcx), %edx
	cmpl	%edx, %eax
	jne	.LBB1_23
# BB#22:                                # %if.then.107
	movq	-24(%rbp), %rax
	movl	$2, (%rax)
	movq	-16(%rbp), %rax
	movq	88(%rax), %rcx
	addq	$4, %rcx
	movq	%rcx, 88(%rax)
	jmp	.LBB1_70
.LBB1_23:                               # %if.else.110
	movzbl	-25(%rbp), %eax
	movq	-40(%rbp), %rcx
	movzbl	(%rcx), %edx
	cmpl	%edx, %eax
	jne	.LBB1_25
# BB#24:                                # %if.then.116
	movq	-24(%rbp), %rax
	movl	$2, (%rax)
	movq	-16(%rbp), %rax
	movq	88(%rax), %rcx
	addq	$2, %rcx
	movq	%rcx, 88(%rax)
	jmp	.LBB1_69
.LBB1_25:                               # %if.else.119
	movzbl	-25(%rbp), %eax
	cmpl	$95, %eax
	jne	.LBB1_35
# BB#26:                                # %if.then.123
	movl	$8, %eax
	movq	-40(%rbp), %rcx
	movb	(%rcx), %dl
	movb	%dl, -41(%rbp)
	movq	-40(%rbp), %rcx
	movzbl	1(%rcx), %esi
	cmpl	%esi, %eax
	jne	.LBB1_33
# BB#27:                                # %land.lhs.true.129
	movsbl	-41(%rbp), %eax
	movq	-40(%rbp), %rcx
	movzbl	2(%rcx), %edx
	cmpl	%edx, %eax
	jne	.LBB1_33
# BB#28:                                # %land.lhs.true.135
	movl	$8, %eax
	movq	-40(%rbp), %rcx
	movzbl	3(%rcx), %edx
	cmpl	%edx, %eax
	jne	.LBB1_33
# BB#29:                                # %land.lhs.true.140
	movsbl	-41(%rbp), %eax
	movq	-40(%rbp), %rcx
	movzbl	4(%rcx), %edx
	cmpl	%edx, %eax
	jne	.LBB1_33
# BB#30:                                # %land.lhs.true.146
	movl	$8, %eax
	movq	-40(%rbp), %rcx
	movzbl	5(%rcx), %edx
	cmpl	%edx, %eax
	jne	.LBB1_33
# BB#31:                                # %land.lhs.true.151
	movsbl	-41(%rbp), %eax
	movq	-40(%rbp), %rcx
	movzbl	6(%rcx), %edx
	cmpl	%edx, %eax
	jne	.LBB1_33
# BB#32:                                # %if.then.157
	movq	-24(%rbp), %rax
	movl	$4, (%rax)
	movb	-41(%rbp), %cl
	movb	%cl, -25(%rbp)
	movq	-16(%rbp), %rax
	movq	88(%rax), %rdx
	addq	$8, %rdx
	movq	%rdx, 88(%rax)
	jmp	.LBB1_34
.LBB1_33:                               # %if.else.160
	movq	-24(%rbp), %rax
	movl	$1, (%rax)
	movq	-40(%rbp), %rax
	movb	(%rax), %cl
	movb	%cl, -25(%rbp)
	movq	-16(%rbp), %rax
	movq	88(%rax), %rdx
	addq	$2, %rdx
	movq	%rdx, 88(%rax)
.LBB1_34:                               # %if.end.164
	jmp	.LBB1_68
.LBB1_35:                               # %if.else.165
	movl	$111, %eax
	movzbl	-25(%rbp), %ecx
	cmpl	%ecx, %eax
	jne	.LBB1_37
# BB#36:                                # %land.lhs.true.169
	movl	$43, %eax
	movq	-40(%rbp), %rcx
	movzbl	(%rcx), %edx
	cmpl	%edx, %eax
	je	.LBB1_39
.LBB1_37:                               # %lor.lhs.false
	movl	$43, %eax
	movzbl	-25(%rbp), %ecx
	cmpl	%ecx, %eax
	jne	.LBB1_40
# BB#38:                                # %land.lhs.true.177
	movl	$111, %eax
	movq	-40(%rbp), %rcx
	movzbl	(%rcx), %edx
	cmpl	%edx, %eax
	jne	.LBB1_40
.LBB1_39:                               # %if.then.182
	movq	-24(%rbp), %rax
	movl	$6, (%rax)
	movq	-16(%rbp), %rax
	movq	88(%rax), %rcx
	addq	$2, %rcx
	movq	%rcx, 88(%rax)
	movb	$-59, -25(%rbp)
	jmp	.LBB1_67
.LBB1_40:                               # %if.else.185
	movl	$99, %eax
	movzbl	-25(%rbp), %ecx
	cmpl	%ecx, %eax
	jne	.LBB1_43
# BB#41:                                # %land.lhs.true.189
	movl	$79, %eax
	movq	-40(%rbp), %rcx
	movzbl	(%rcx), %edx
	cmpl	%edx, %eax
	jne	.LBB1_43
# BB#42:                                # %if.then.194
	movq	-24(%rbp), %rax
	movl	$6, (%rax)
	movq	-16(%rbp), %rax
	movq	88(%rax), %rcx
	addq	$2, %rcx
	movq	%rcx, 88(%rax)
	movb	$-29, -25(%rbp)
	jmp	.LBB1_66
.LBB1_43:                               # %if.else.197
	movl	$43, %eax
	movzbl	-25(%rbp), %ecx
	cmpl	%ecx, %eax
	jne	.LBB1_46
# BB#44:                                # %land.lhs.true.201
	movl	$95, %eax
	movq	-40(%rbp), %rcx
	movzbl	(%rcx), %edx
	cmpl	%edx, %eax
	jne	.LBB1_46
# BB#45:                                # %if.then.206
	movq	-24(%rbp), %rax
	movl	$6, (%rax)
	movq	-16(%rbp), %rax
	movq	88(%rax), %rcx
	addq	$2, %rcx
	movq	%rcx, 88(%rax)
	movb	$-79, -25(%rbp)
	jmp	.LBB1_65
.LBB1_46:                               # %if.else.209
	movl	$126, %eax
	movzbl	-25(%rbp), %ecx
	cmpl	%ecx, %eax
	jne	.LBB1_51
# BB#47:                                # %land.lhs.true.213
	movl	$62, %eax
	movq	-40(%rbp), %rcx
	movzbl	(%rcx), %edx
	cmpl	%edx, %eax
	jne	.LBB1_51
# BB#48:                                # %land.lhs.true.218
	movl	$8, %eax
	movq	-40(%rbp), %rcx
	movzbl	1(%rcx), %edx
	cmpl	%edx, %eax
	jne	.LBB1_51
# BB#49:                                # %land.lhs.true.223
	movl	$95, %eax
	movq	-40(%rbp), %rcx
	movzbl	2(%rcx), %edx
	cmpl	%edx, %eax
	jne	.LBB1_51
# BB#50:                                # %if.then.228
	movq	-24(%rbp), %rax
	movl	$6, (%rax)
	movq	-16(%rbp), %rax
	movq	88(%rax), %rcx
	addq	$4, %rcx
	movq	%rcx, 88(%rax)
	movb	$-77, -25(%rbp)
	jmp	.LBB1_64
.LBB1_51:                               # %if.else.231
	movl	$126, %eax
	movzbl	-25(%rbp), %ecx
	cmpl	%ecx, %eax
	jne	.LBB1_56
# BB#52:                                # %land.lhs.true.235
	movl	$60, %eax
	movq	-40(%rbp), %rcx
	movzbl	(%rcx), %edx
	cmpl	%edx, %eax
	jne	.LBB1_56
# BB#53:                                # %land.lhs.true.240
	movl	$8, %eax
	movq	-40(%rbp), %rcx
	movzbl	1(%rcx), %edx
	cmpl	%edx, %eax
	jne	.LBB1_56
# BB#54:                                # %land.lhs.true.245
	movl	$95, %eax
	movq	-40(%rbp), %rcx
	movzbl	2(%rcx), %edx
	cmpl	%edx, %eax
	jne	.LBB1_56
# BB#55:                                # %if.then.250
	movq	-24(%rbp), %rax
	movl	$6, (%rax)
	movq	-16(%rbp), %rax
	movq	88(%rax), %rcx
	addq	$4, %rcx
	movq	%rcx, 88(%rax)
	movb	$-93, -25(%rbp)
	jmp	.LBB1_63
.LBB1_56:                               # %if.else.253
	movl	$95, %eax
	movq	-40(%rbp), %rcx
	movzbl	(%rcx), %edx
	cmpl	%edx, %eax
	jne	.LBB1_58
# BB#57:                                # %if.then.258
	movq	-24(%rbp), %rax
	movl	$1, (%rax)
	movq	-16(%rbp), %rax
	movq	88(%rax), %rcx
	addq	$2, %rcx
	movq	%rcx, 88(%rax)
	jmp	.LBB1_62
.LBB1_58:                               # %if.else.261
	movl	$66, %eax
	movq	job, %rcx
	movq	1632(%rcx), %rcx
	movq	40(%rcx), %rcx
	subq	$1, %rcx
	movq	job, %rdx
	movq	1632(%rdx), %rdx
	movq	48(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movl	136(%rcx), %esi
	addl	$3, %esi
	movl	%eax, -48(%rbp)         # 4-byte Spill
	movl	%esi, %eax
	cltd
	movl	-48(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	cmpl	$0, %edx
	je	.LBB1_60
# BB#59:                                # %lor.lhs.false.272
	movl	$66, %eax
	movq	job, %rcx
	movq	1632(%rcx), %rcx
	movq	40(%rcx), %rcx
	subq	$1, %rcx
	movq	job, %rdx
	movq	1632(%rdx), %rdx
	movq	48(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movl	136(%rcx), %esi
	subl	$4, %esi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movl	%esi, %eax
	cltd
	movl	-52(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	cmpl	$0, %edx
	jne	.LBB1_61
.LBB1_60:                               # %if.then.284
	movq	-16(%rbp), %rax
	movq	88(%rax), %rcx
	addq	$2, %rcx
	movq	%rcx, 88(%rax)
.LBB1_61:                               # %if.end.287
	jmp	.LBB1_62
.LBB1_62:                               # %if.end.288
	jmp	.LBB1_63
.LBB1_63:                               # %if.end.289
	jmp	.LBB1_64
.LBB1_64:                               # %if.end.290
	jmp	.LBB1_65
.LBB1_65:                               # %if.end.291
	jmp	.LBB1_66
.LBB1_66:                               # %if.end.292
	jmp	.LBB1_67
.LBB1_67:                               # %if.end.293
	jmp	.LBB1_68
.LBB1_68:                               # %if.end.294
	jmp	.LBB1_69
.LBB1_69:                               # %if.end.295
	jmp	.LBB1_70
.LBB1_70:                               # %if.end.296
	jmp	.LBB1_71
.LBB1_71:                               # %if.end.297
	jmp	.LBB1_72
.LBB1_72:                               # %if.end.298
	jmp	.LBB1_73
.LBB1_73:                               # %if.end.299
	movzbl	-25(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB1_74:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	plain_getc, .Lfunc_end1-plain_getc
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
