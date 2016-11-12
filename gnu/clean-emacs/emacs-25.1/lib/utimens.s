	.text
	.file	"utimens.bc"
	.globl	fdutimens
	.align	16, 0x90
	.type	fdutimens,@function
fdutimens:                              # @fdutimens
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
	subq	$432, %rsp              # imm = 0x1B0
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB0_2
# BB#1:                                 # %cond.true
	leaq	-64(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	jmp	.LBB0_3
.LBB0_2:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -392(%rbp)        # 8-byte Spill
	jmp	.LBB0_3
.LBB0_3:                                # %cond.end
	movq	-392(%rbp), %rax        # 8-byte Reload
	movq	%rax, -72(%rbp)
	movl	$0, -76(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB0_5
# BB#4:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -64(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rcx
	movq	%rcx, -48(%rbp)
	movq	24(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-72(%rbp), %rdi
	callq	validate_timespec
	movl	%eax, -76(%rbp)
.LBB0_5:                                # %if.end
	cmpl	$0, -76(%rbp)
	jge	.LBB0_7
# BB#6:                                 # %if.then.5
	movl	$-1, -4(%rbp)
	jmp	.LBB0_73
.LBB0_7:                                # %if.end.6
	cmpl	$0, -8(%rbp)
	jge	.LBB0_10
# BB#8:                                 # %land.lhs.true
	cmpq	$0, -16(%rbp)
	jne	.LBB0_10
# BB#9:                                 # %if.then.9
	callq	__errno_location
	movl	$9, (%rax)
	movl	$-1, -4(%rbp)
	jmp	.LBB0_73
.LBB0_10:                               # %if.end.11
	xorl	%eax, %eax
	cmpl	utimensat_works_really, %eax
	jg	.LBB0_37
# BB#11:                                # %if.then.13
	cmpl	$2, -76(%rbp)
	jne	.LBB0_22
# BB#12:                                # %if.then.15
	cmpl	$0, -8(%rbp)
	jge	.LBB0_14
# BB#13:                                # %cond.true.17
	leaq	-224(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	stat
	cmpl	$0, %eax
	jne	.LBB0_15
	jmp	.LBB0_16
.LBB0_14:                               # %cond.false.20
	leaq	-224(%rbp), %rsi
	movl	-8(%rbp), %edi
	callq	fstat
	cmpl	$0, %eax
	je	.LBB0_16
.LBB0_15:                               # %if.then.23
	movl	$-1, -4(%rbp)
	jmp	.LBB0_73
.LBB0_16:                               # %if.end.24
	movq	-72(%rbp), %rax
	cmpq	$1073741822, 8(%rax)    # imm = 0x3FFFFFFE
	jne	.LBB0_18
# BB#17:                                # %if.then.27
	leaq	-224(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	get_stat_atime
	movq	%rax, -248(%rbp)
	movq	%rdx, -240(%rbp)
	movq	-248(%rbp), %rax
	movq	-400(%rbp), %rdx        # 8-byte Reload
	movq	%rax, (%rdx)
	movq	-240(%rbp), %rax
	movq	%rax, 8(%rdx)
	jmp	.LBB0_21
.LBB0_18:                               # %if.else
	movq	-72(%rbp), %rax
	cmpq	$1073741822, 24(%rax)   # imm = 0x3FFFFFFE
	jne	.LBB0_20
# BB#19:                                # %if.then.33
	leaq	-224(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	get_stat_mtime
	movq	%rax, -264(%rbp)
	movq	%rdx, -256(%rbp)
	movq	-264(%rbp), %rax
	movq	-408(%rbp), %rdx        # 8-byte Reload
	movq	%rax, 16(%rdx)
	movq	-256(%rbp), %rax
	movq	%rax, 24(%rdx)
.LBB0_20:                               # %if.end.37
	jmp	.LBB0_21
.LBB0_21:                               # %if.end.38
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
.LBB0_22:                               # %if.end.39
	cmpl	$0, -8(%rbp)
	jge	.LBB0_29
# BB#23:                                # %if.then.41
	movl	$4294967196, %edi       # imm = 0xFFFFFF9C
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rsi
	movq	-72(%rbp), %rdx
	callq	utimensat
	xorl	%ecx, %ecx
	movl	%eax, -228(%rbp)
	cmpl	-228(%rbp), %ecx
	jge	.LBB0_25
# BB#24:                                # %if.then.44
	callq	__errno_location
	movl	$38, (%rax)
.LBB0_25:                               # %if.end.46
	cmpl	$0, -228(%rbp)
	je	.LBB0_27
# BB#26:                                # %lor.lhs.false
	callq	__errno_location
	cmpl	$38, (%rax)
	je	.LBB0_28
.LBB0_27:                               # %if.then.50
	movl	$1, utimensat_works_really
	movl	-228(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_73
.LBB0_28:                               # %if.end.51
	jmp	.LBB0_29
.LBB0_29:                               # %if.end.52
	xorl	%eax, %eax
	cmpl	-8(%rbp), %eax
	jg	.LBB0_36
# BB#30:                                # %if.then.54
	movl	-8(%rbp), %edi
	movq	-72(%rbp), %rsi
	callq	futimens
	xorl	%edi, %edi
	movl	%eax, -228(%rbp)
	cmpl	-228(%rbp), %edi
	jge	.LBB0_32
# BB#31:                                # %if.then.57
	callq	__errno_location
	movl	$38, (%rax)
.LBB0_32:                               # %if.end.59
	cmpl	$0, -228(%rbp)
	je	.LBB0_34
# BB#33:                                # %lor.lhs.false.61
	callq	__errno_location
	cmpl	$38, (%rax)
	je	.LBB0_35
.LBB0_34:                               # %if.then.64
	movl	$1, utimensat_works_really
	movl	-228(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_73
.LBB0_35:                               # %if.end.65
	jmp	.LBB0_36
.LBB0_36:                               # %if.end.66
	jmp	.LBB0_37
.LBB0_37:                               # %if.end.67
	movl	$-1, utimensat_works_really
	movl	$-1, lutimensat_works_really
	cmpl	$0, -76(%rbp)
	je	.LBB0_47
# BB#38:                                # %if.then.69
	cmpl	$3, -76(%rbp)
	je	.LBB0_43
# BB#39:                                # %land.lhs.true.71
	cmpl	$0, -8(%rbp)
	jge	.LBB0_41
# BB#40:                                # %cond.true.73
	leaq	-224(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	stat
	cmpl	$0, %eax
	jne	.LBB0_42
	jmp	.LBB0_43
.LBB0_41:                               # %cond.false.76
	leaq	-224(%rbp), %rsi
	movl	-8(%rbp), %edi
	callq	fstat
	cmpl	$0, %eax
	je	.LBB0_43
.LBB0_42:                               # %if.then.79
	movl	$-1, -4(%rbp)
	jmp	.LBB0_73
.LBB0_43:                               # %if.end.80
	cmpq	$0, -72(%rbp)
	je	.LBB0_46
# BB#44:                                # %land.lhs.true.82
	leaq	-224(%rbp), %rdi
	leaq	-72(%rbp), %rsi
	callq	update_timespec
	testb	$1, %al
	jne	.LBB0_45
	jmp	.LBB0_46
.LBB0_45:                               # %if.then.84
	movl	$0, -4(%rbp)
	jmp	.LBB0_73
.LBB0_46:                               # %if.end.85
	jmp	.LBB0_47
.LBB0_47:                               # %if.end.86
	cmpq	$0, -72(%rbp)
	je	.LBB0_49
# BB#48:                                # %if.then.88
	leaq	-304(%rbp), %rax
	movl	$1000, %ecx             # imm = 0x3E8
	movl	%ecx, %edx
	movq	-72(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -304(%rbp)
	movq	-72(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rax, -416(%rbp)        # 8-byte Spill
	movq	%rsi, %rax
	movq	%rdx, -424(%rbp)        # 8-byte Spill
	cqto
	movq	-424(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	%rax, -296(%rbp)
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -288(%rbp)
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	cqto
	idivq	%rsi
	movq	%rax, -280(%rbp)
	movq	-416(%rbp), %rax        # 8-byte Reload
	movq	%rax, -312(%rbp)
	jmp	.LBB0_50
.LBB0_49:                               # %if.else.105
	movq	$0, -312(%rbp)
.LBB0_50:                               # %if.end.106
	cmpl	$0, -8(%rbp)
	jge	.LBB0_52
# BB#51:                                # %if.then.108
	movl	$4294967196, %edi       # imm = 0xFFFFFF9C
	movq	-16(%rbp), %rsi
	movq	-312(%rbp), %rdx
	callq	futimesat
	movl	%eax, -4(%rbp)
	jmp	.LBB0_73
.LBB0_52:                               # %if.else.110
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	-8(%rbp), %edi
	movq	-312(%rbp), %rdx
	callq	futimesat
	cmpl	$0, %eax
	jne	.LBB0_69
# BB#53:                                # %if.then.113
	cmpq	$0, -312(%rbp)
	je	.LBB0_68
# BB#54:                                # %if.then.115
	movl	$500000, %eax           # imm = 0x7A120
	movl	%eax, %ecx
	movq	-312(%rbp), %rdx
	cmpq	8(%rdx), %rcx
	setle	%sil
	andb	$1, %sil
	movb	%sil, -313(%rbp)
	movq	-312(%rbp), %rdx
	cmpq	24(%rdx), %rcx
	setle	%sil
	andb	$1, %sil
	movb	%sil, -314(%rbp)
	movb	-313(%rbp), %sil
	andb	$1, %sil
	movzbl	%sil, %eax
	movb	-314(%rbp), %sil
	andb	$1, %sil
	movzbl	%sil, %edi
	orl	%edi, %eax
	cmpl	$0, %eax
	je	.LBB0_67
# BB#55:                                # %land.lhs.true.127
	leaq	-224(%rbp), %rsi
	movl	-8(%rbp), %edi
	callq	fstat
	cmpl	$0, %eax
	jne	.LBB0_67
# BB#56:                                # %if.then.131
	movq	-152(%rbp), %rax
	movq	-312(%rbp), %rcx
	subq	(%rcx), %rax
	movq	%rax, -328(%rbp)
	movq	-136(%rbp), %rax
	movq	-312(%rbp), %rcx
	subq	16(%rcx), %rax
	movq	%rax, -336(%rbp)
	movq	$0, -344(%rbp)
	movq	-312(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -384(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -376(%rbp)
	movq	-312(%rbp), %rax
	movq	16(%rax), %rcx
	movq	%rcx, -368(%rbp)
	movq	24(%rax), %rax
	movq	%rax, -360(%rbp)
	testb	$1, -313(%rbp)
	je	.LBB0_60
# BB#57:                                # %land.lhs.true.145
	cmpq	$1, -328(%rbp)
	jne	.LBB0_60
# BB#58:                                # %land.lhs.true.148
	leaq	-224(%rbp), %rdi
	callq	get_stat_atime_ns
	cmpq	$0, %rax
	jne	.LBB0_60
# BB#59:                                # %if.then.152
	leaq	-384(%rbp), %rax
	movq	%rax, -344(%rbp)
	movq	-344(%rbp), %rax
	movq	$0, 8(%rax)
.LBB0_60:                               # %if.end.156
	testb	$1, -314(%rbp)
	je	.LBB0_64
# BB#61:                                # %land.lhs.true.159
	cmpq	$1, -336(%rbp)
	jne	.LBB0_64
# BB#62:                                # %land.lhs.true.162
	leaq	-224(%rbp), %rdi
	callq	get_stat_mtime_ns
	cmpq	$0, %rax
	jne	.LBB0_64
# BB#63:                                # %if.then.166
	leaq	-384(%rbp), %rax
	movq	%rax, -344(%rbp)
	movq	-344(%rbp), %rax
	movq	$0, 24(%rax)
.LBB0_64:                               # %if.end.170
	cmpq	$0, -344(%rbp)
	je	.LBB0_66
# BB#65:                                # %if.then.172
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	-8(%rbp), %edi
	movq	-344(%rbp), %rdx
	callq	futimesat
	movl	%eax, -428(%rbp)        # 4-byte Spill
.LBB0_66:                               # %if.end.174
	jmp	.LBB0_67
.LBB0_67:                               # %if.end.175
	jmp	.LBB0_68
.LBB0_68:                               # %if.end.176
	movl	$0, -4(%rbp)
	jmp	.LBB0_73
.LBB0_69:                               # %if.end.177
	jmp	.LBB0_70
.LBB0_70:                               # %if.end.178
	cmpq	$0, -16(%rbp)
	jne	.LBB0_72
# BB#71:                                # %if.then.180
	movl	$-1, -4(%rbp)
	jmp	.LBB0_73
.LBB0_72:                               # %if.end.181
	movq	-16(%rbp), %rdi
	movq	-312(%rbp), %rsi
	callq	utimes
	movl	%eax, -4(%rbp)
.LBB0_73:                               # %return
	movl	-4(%rbp), %eax
	addq	$432, %rsp              # imm = 0x1B0
	popq	%rbp
	retq
.Lfunc_end0:
	.size	fdutimens, .Lfunc_end0-fdutimens
	.cfi_endproc

	.align	16, 0x90
	.type	validate_timespec,@function
validate_timespec:                      # @validate_timespec
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
	movq	%rdi, -16(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
	movq	-16(%rbp), %rdi
	cmpq	$1073741823, 8(%rdi)    # imm = 0x3FFFFFFF
	je	.LBB1_4
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	cmpq	$1073741822, 8(%rax)    # imm = 0x3FFFFFFE
	je	.LBB1_4
# BB#2:                                 # %land.lhs.true.4
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	cmpq	8(%rdx), %rcx
	jg	.LBB1_8
# BB#3:                                 # %land.lhs.true.8
	movq	-16(%rbp), %rax
	cmpq	$1000000000, 8(%rax)    # imm = 0x3B9ACA00
	jge	.LBB1_8
.LBB1_4:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	cmpq	$1073741823, 24(%rax)   # imm = 0x3FFFFFFF
	je	.LBB1_9
# BB#5:                                 # %land.lhs.true.15
	movq	-16(%rbp), %rax
	cmpq	$1073741822, 24(%rax)   # imm = 0x3FFFFFFE
	je	.LBB1_9
# BB#6:                                 # %land.lhs.true.19
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	cmpq	24(%rdx), %rcx
	jg	.LBB1_8
# BB#7:                                 # %land.lhs.true.23
	movq	-16(%rbp), %rax
	cmpq	$1000000000, 24(%rax)   # imm = 0x3B9ACA00
	jl	.LBB1_9
.LBB1_8:                                # %if.then
	callq	__errno_location
	movl	$22, (%rax)
	movl	$-1, -4(%rbp)
	jmp	.LBB1_20
.LBB1_9:                                # %if.end
	movq	-16(%rbp), %rax
	cmpq	$1073741823, 8(%rax)    # imm = 0x3FFFFFFF
	je	.LBB1_11
# BB#10:                                # %lor.lhs.false.30
	movq	-16(%rbp), %rax
	cmpq	$1073741822, 8(%rax)    # imm = 0x3FFFFFFE
	jne	.LBB1_14
.LBB1_11:                               # %if.then.34
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	movl	$1, -20(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$1073741822, 8(%rax)    # imm = 0x3FFFFFFE
	jne	.LBB1_13
# BB#12:                                # %if.then.39
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
.LBB1_13:                               # %if.end.40
	jmp	.LBB1_14
.LBB1_14:                               # %if.end.41
	movq	-16(%rbp), %rax
	cmpq	$1073741823, 24(%rax)   # imm = 0x3FFFFFFF
	je	.LBB1_16
# BB#15:                                # %lor.lhs.false.45
	movq	-16(%rbp), %rax
	cmpq	$1073741822, 24(%rax)   # imm = 0x3FFFFFFE
	jne	.LBB1_19
.LBB1_16:                               # %if.then.49
	movq	-16(%rbp), %rax
	movq	$0, 16(%rax)
	movl	$1, -20(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$1073741822, 24(%rax)   # imm = 0x3FFFFFFE
	jne	.LBB1_18
# BB#17:                                # %if.then.55
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
.LBB1_18:                               # %if.end.57
	jmp	.LBB1_19
.LBB1_19:                               # %if.end.58
	movl	-20(%rbp), %eax
	cmpl	$1, -24(%rbp)
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	addl	%edx, %eax
	movl	%eax, -4(%rbp)
.LBB1_20:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	validate_timespec, .Lfunc_end1-validate_timespec
	.cfi_endproc

	.align	16, 0x90
	.type	update_timespec,@function
update_timespec:                        # @update_timespec
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rsi
	cmpq	$1073741822, 8(%rsi)    # imm = 0x3FFFFFFE
	jne	.LBB2_3
# BB#1:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	cmpq	$1073741822, 24(%rax)   # imm = 0x3FFFFFFE
	jne	.LBB2_3
# BB#2:                                 # %if.then
	movb	$1, -1(%rbp)
	jmp	.LBB2_17
.LBB2_3:                                # %if.end
	movq	-32(%rbp), %rax
	cmpq	$1073741823, 8(%rax)    # imm = 0x3FFFFFFF
	jne	.LBB2_6
# BB#4:                                 # %land.lhs.true.7
	movq	-32(%rbp), %rax
	cmpq	$1073741823, 24(%rax)   # imm = 0x3FFFFFFF
	jne	.LBB2_6
# BB#5:                                 # %if.then.11
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	movb	$0, -1(%rbp)
	jmp	.LBB2_17
.LBB2_6:                                # %if.end.12
	movq	-32(%rbp), %rax
	cmpq	$1073741822, 8(%rax)    # imm = 0x3FFFFFFE
	jne	.LBB2_8
# BB#7:                                 # %if.then.16
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	get_stat_atime
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movq	%rax, (%rdx)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rdx)
	jmp	.LBB2_11
.LBB2_8:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$1073741823, 8(%rax)    # imm = 0x3FFFFFFF
	jne	.LBB2_10
# BB#9:                                 # %if.then.21
	movq	-32(%rbp), %rdi
	callq	gettime
.LBB2_10:                               # %if.end.23
	jmp	.LBB2_11
.LBB2_11:                               # %if.end.24
	movq	-32(%rbp), %rax
	cmpq	$1073741822, 24(%rax)   # imm = 0x3FFFFFFE
	jne	.LBB2_13
# BB#12:                                # %if.then.28
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	get_stat_mtime
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-64(%rbp), %rax
	movq	-80(%rbp), %rdx         # 8-byte Reload
	movq	%rax, 16(%rdx)
	movq	-56(%rbp), %rax
	movq	%rax, 24(%rdx)
	jmp	.LBB2_16
.LBB2_13:                               # %if.else.32
	movq	-32(%rbp), %rax
	cmpq	$1073741823, 24(%rax)   # imm = 0x3FFFFFFF
	jne	.LBB2_15
# BB#14:                                # %if.then.36
	movq	-32(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	callq	gettime
.LBB2_15:                               # %if.end.38
	jmp	.LBB2_16
.LBB2_16:                               # %if.end.39
	movb	$0, -1(%rbp)
.LBB2_17:                               # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	update_timespec, .Lfunc_end2-update_timespec
	.cfi_endproc

	.globl	utimens
	.align	16, 0x90
	.type	utimens,@function
utimens:                                # @utimens
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
	subq	$16, %rsp
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movl	%eax, %edi
	callq	fdutimens
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	utimens, .Lfunc_end3-utimens
	.cfi_endproc

	.globl	lutimens
	.align	16, 0x90
	.type	lutimens,@function
lutimens:                               # @lutimens
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
	subq	$288, %rsp              # imm = 0x120
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB4_2
# BB#1:                                 # %cond.true
	leaq	-64(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	jmp	.LBB4_3
.LBB4_2:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -272(%rbp)        # 8-byte Spill
	jmp	.LBB4_3
.LBB4_3:                                # %cond.end
	movq	-272(%rbp), %rax        # 8-byte Reload
	movq	%rax, -72(%rbp)
	movl	$0, -76(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB4_5
# BB#4:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -64(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rcx
	movq	%rcx, -48(%rbp)
	movq	24(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-72(%rbp), %rdi
	callq	validate_timespec
	movl	%eax, -76(%rbp)
.LBB4_5:                                # %if.end
	cmpl	$0, -76(%rbp)
	jge	.LBB4_7
# BB#6:                                 # %if.then.5
	movl	$-1, -4(%rbp)
	jmp	.LBB4_37
.LBB4_7:                                # %if.end.6
	xorl	%eax, %eax
	cmpl	lutimensat_works_really, %eax
	jg	.LBB4_23
# BB#8:                                 # %if.then.8
	cmpl	$2, -76(%rbp)
	jne	.LBB4_17
# BB#9:                                 # %if.then.10
	leaq	-224(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	lstat
	cmpl	$0, %eax
	je	.LBB4_11
# BB#10:                                # %if.then.13
	movl	$-1, -4(%rbp)
	jmp	.LBB4_37
.LBB4_11:                               # %if.end.14
	movq	-72(%rbp), %rax
	cmpq	$1073741822, 8(%rax)    # imm = 0x3FFFFFFE
	jne	.LBB4_13
# BB#12:                                # %if.then.17
	leaq	-224(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	get_stat_atime
	movq	%rax, -248(%rbp)
	movq	%rdx, -240(%rbp)
	movq	-248(%rbp), %rax
	movq	-280(%rbp), %rdx        # 8-byte Reload
	movq	%rax, (%rdx)
	movq	-240(%rbp), %rax
	movq	%rax, 8(%rdx)
	jmp	.LBB4_16
.LBB4_13:                               # %if.else
	movq	-72(%rbp), %rax
	cmpq	$1073741822, 24(%rax)   # imm = 0x3FFFFFFE
	jne	.LBB4_15
# BB#14:                                # %if.then.23
	leaq	-224(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	get_stat_mtime
	movq	%rax, -264(%rbp)
	movq	%rdx, -256(%rbp)
	movq	-264(%rbp), %rax
	movq	-288(%rbp), %rdx        # 8-byte Reload
	movq	%rax, 16(%rdx)
	movq	-256(%rbp), %rax
	movq	%rax, 24(%rdx)
.LBB4_15:                               # %if.end.27
	jmp	.LBB4_16
.LBB4_16:                               # %if.end.28
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
.LBB4_17:                               # %if.end.29
	movl	$4294967196, %edi       # imm = 0xFFFFFF9C
	movl	$256, %ecx              # imm = 0x100
	movq	-16(%rbp), %rsi
	movq	-72(%rbp), %rdx
	callq	utimensat
	xorl	%ecx, %ecx
	movl	%eax, -228(%rbp)
	cmpl	-228(%rbp), %ecx
	jge	.LBB4_19
# BB#18:                                # %if.then.32
	callq	__errno_location
	movl	$38, (%rax)
.LBB4_19:                               # %if.end.34
	cmpl	$0, -228(%rbp)
	je	.LBB4_21
# BB#20:                                # %lor.lhs.false
	callq	__errno_location
	cmpl	$38, (%rax)
	je	.LBB4_22
.LBB4_21:                               # %if.then.38
	movl	$1, utimensat_works_really
	movl	$1, lutimensat_works_really
	movl	-228(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB4_37
.LBB4_22:                               # %if.end.39
	jmp	.LBB4_23
.LBB4_23:                               # %if.end.40
	movl	$-1, lutimensat_works_really
	cmpl	$0, -76(%rbp)
	je	.LBB4_31
# BB#24:                                # %if.then.42
	cmpl	$3, -76(%rbp)
	je	.LBB4_27
# BB#25:                                # %land.lhs.true
	leaq	-224(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	lstat
	cmpl	$0, %eax
	je	.LBB4_27
# BB#26:                                # %if.then.46
	movl	$-1, -4(%rbp)
	jmp	.LBB4_37
.LBB4_27:                               # %if.end.47
	cmpq	$0, -72(%rbp)
	je	.LBB4_30
# BB#28:                                # %land.lhs.true.49
	leaq	-224(%rbp), %rdi
	leaq	-72(%rbp), %rsi
	callq	update_timespec
	testb	$1, %al
	jne	.LBB4_29
	jmp	.LBB4_30
.LBB4_29:                               # %if.then.51
	movl	$0, -4(%rbp)
	jmp	.LBB4_37
.LBB4_30:                               # %if.end.52
	jmp	.LBB4_31
.LBB4_31:                               # %if.end.53
	cmpl	$0, -76(%rbp)
	jne	.LBB4_34
# BB#32:                                # %land.lhs.true.55
	leaq	-224(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	lstat
	cmpl	$0, %eax
	je	.LBB4_34
# BB#33:                                # %if.then.58
	movl	$-1, -4(%rbp)
	jmp	.LBB4_37
.LBB4_34:                               # %if.end.59
	movl	-200(%rbp), %eax
	andl	$61440, %eax            # imm = 0xF000
	cmpl	$40960, %eax            # imm = 0xA000
	je	.LBB4_36
# BB#35:                                # %if.then.61
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	movq	-16(%rbp), %rsi
	movq	-72(%rbp), %rdx
	callq	fdutimens
	movl	%eax, -4(%rbp)
	jmp	.LBB4_37
.LBB4_36:                               # %if.end.63
	callq	__errno_location
	movl	$38, (%rax)
	movl	$-1, -4(%rbp)
.LBB4_37:                               # %return
	movl	-4(%rbp), %eax
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end4:
	.size	lutimens, .Lfunc_end4-lutimens
	.cfi_endproc

	.type	utimensat_works_really,@object # @utimensat_works_really
	.local	utimensat_works_really
	.comm	utimensat_works_really,4,4
	.type	lutimensat_works_really,@object # @lutimensat_works_really
	.local	lutimensat_works_really
	.comm	lutimensat_works_really,4,4

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
