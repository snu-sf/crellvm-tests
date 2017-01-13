	.text
	.file	"term.bc"
	.globl	tty_turn_off_insert
	.align	16, 0x90
	.type	tty_turn_off_insert,@function
tty_turn_off_insert:                    # @tty_turn_off_insert
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movb	8776(%rdi), %al
	shrb	$2, %al
	andb	$1, %al
	testb	$1, %al
	je	.LBB0_2
# BB#1:                                 # %if.then
	movabsq	$cmputc, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, current_tty
	movq	-8(%rbp), %rax
	movq	8480(%rax), %rdi
	movq	selected_frame, %rax
	subq	$5, %rax
	movl	284(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	subl	(%rax), %ecx
	movl	%ecx, %esi
	callq	tputs
.LBB0_2:                                # %if.end
	movq	-8(%rbp), %rax
	movb	8776(%rax), %cl
	andb	$-5, %cl
	movb	%cl, 8776(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	tty_turn_off_insert, .Lfunc_end0-tty_turn_off_insert
	.cfi_endproc

	.globl	encode_terminal_code
	.align	16, 0x90
	.type	encode_terminal_code,@function
encode_terminal_code:                   # @encode_terminal_code
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
	subq	$896, %rsp              # imm = 0x380
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movslq	-20(%rbp), %rdi
	imulq	$48, %rdi, %rdi
	addq	%rdi, %rdx
	movq	%rdx, -40(%rbp)
	movq	globals+944, %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB1_1
	jmp	.LBB1_2
.LBB1_1:                                # %cond.true
	movq	globals+944, %rdi
	callq	ASIZE
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB1_3
.LBB1_2:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	jmp	.LBB1_3
.LBB1_3:                                # %cond.end
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	%rax, -80(%rbp)
	movq	globals+944, %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB1_4
	jmp	.LBB1_5
.LBB1_4:                                # %cond.true.3
	movq	globals+944, %rdi
	callq	XVECTOR
	addq	$8, %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB1_6
.LBB1_5:                                # %cond.false.5
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	jmp	.LBB1_6
.LBB1_6:                                # %cond.end.6
	movq	-176(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -88(%rbp)
	testb	$1, %dl
	jne	.LBB1_7
	jmp	.LBB1_86
.LBB1_7:                                # %cond.true.8
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_8
	jmp	.LBB1_47
.LBB1_8:                                # %cond.true.9
	movl	-20(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB1_10
# BB#9:                                 # %cond.true.12
	xorl	%eax, %eax
	movl	-20(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	movl	-20(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -180(%rbp)        # 4-byte Spill
	jmp	.LBB1_11
.LBB1_10:                               # %cond.false.30
	movl	-20(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -180(%rbp)        # 4-byte Spill
.LBB1_11:                               # %cond.end.36
	movl	-180(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB1_13
# BB#12:                                # %land.lhs.true
	movl	-20(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	cmpl	$0, %eax
	jl	.LBB1_39
.LBB1_13:                               # %lor.lhs.false
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_14
	jmp	.LBB1_25
.LBB1_14:                               # %cond.true.44
	movl	-20(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	cmpl	$0, %eax
	jge	.LBB1_19
# BB#15:                                # %cond.true.49
	movl	-20(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	movl	-20(%rbp), %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%eax, -184(%rbp)        # 4-byte Spill
	jge	.LBB1_17
# BB#16:                                # %cond.true.59
	movl	-20(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -188(%rbp)        # 4-byte Spill
	jmp	.LBB1_18
.LBB1_17:                               # %cond.false.69
	movl	-20(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -188(%rbp)        # 4-byte Spill
.LBB1_18:                               # %cond.end.75
	movl	-188(%rbp), %eax        # 4-byte Reload
	movl	$5, %ecx
	cltd
	idivl	%ecx
	movl	-184(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB1_39
	jmp	.LBB1_36
.LBB1_19:                               # %cond.false.79
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_20
	jmp	.LBB1_21
.LBB1_20:                               # %cond.true.80
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_39
	jmp	.LBB1_36
.LBB1_21:                               # %cond.false.81
	movl	-20(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB1_23
# BB#22:                                # %cond.true.89
	xorl	%eax, %eax
	movl	-20(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	movl	-20(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -192(%rbp)        # 4-byte Spill
	jmp	.LBB1_24
.LBB1_23:                               # %cond.false.109
	movl	-20(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -192(%rbp)        # 4-byte Spill
.LBB1_24:                               # %cond.end.115
	movl	-192(%rbp), %eax        # 4-byte Reload
	movl	$5, %ecx
	cltd
	idivl	%ecx
	movl	-20(%rbp), %ecx
	movb	%cl, %sil
	movsbl	%sil, %ecx
	cmpl	%ecx, %eax
	jl	.LBB1_39
	jmp	.LBB1_36
.LBB1_25:                               # %cond.false.122
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_26
	jmp	.LBB1_27
.LBB1_26:                               # %cond.true.123
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_39
	jmp	.LBB1_36
.LBB1_27:                               # %cond.false.124
	movl	-20(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	cmpl	$0, %eax
	jge	.LBB1_32
# BB#28:                                # %cond.true.129
	movl	-20(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	movl	-20(%rbp), %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%eax, -196(%rbp)        # 4-byte Spill
	jge	.LBB1_30
# BB#29:                                # %cond.true.139
	xorl	%eax, %eax
	movl	-20(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	movl	-20(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -200(%rbp)        # 4-byte Spill
	jmp	.LBB1_31
.LBB1_30:                               # %cond.false.159
	movl	-20(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -200(%rbp)        # 4-byte Spill
.LBB1_31:                               # %cond.end.165
	movl	-200(%rbp), %eax        # 4-byte Reload
	movl	$5, %ecx
	cltd
	idivl	%ecx
	movl	-196(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB1_39
	jmp	.LBB1_36
.LBB1_32:                               # %cond.false.170
	movl	-20(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB1_34
# BB#33:                                # %cond.true.178
	movl	-20(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -204(%rbp)        # 4-byte Spill
	jmp	.LBB1_35
.LBB1_34:                               # %cond.false.188
	movl	-20(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -204(%rbp)        # 4-byte Spill
.LBB1_35:                               # %cond.end.194
	movl	-204(%rbp), %eax        # 4-byte Reload
	movl	$5, %ecx
	cltd
	idivl	%ecx
	movl	-20(%rbp), %ecx
	movb	%cl, %sil
	movsbl	%sil, %ecx
	cmpl	%ecx, %eax
	jl	.LBB1_39
.LBB1_36:                               # %lor.lhs.false.201
	movl	-20(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	imull	$5, %eax, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB1_38
# BB#37:                                # %land.lhs.true.209
	movl	-20(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	imull	$5, %eax, %eax
	cmpl	$-128, %eax
	jl	.LBB1_39
.LBB1_38:                               # %lor.lhs.false.215
	movl	$127, %eax
	movl	-20(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	imull	$5, %ecx, %ecx
	cmpl	%ecx, %eax
	jge	.LBB1_43
.LBB1_39:                               # %cond.true.221
	movl	-20(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	imull	$5, %eax, %eax
	cmpl	$127, %eax
	jg	.LBB1_41
# BB#40:                                # %cond.true.227
	movl	-20(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	imull	$5, %eax, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	movl	%eax, -208(%rbp)        # 4-byte Spill
	jmp	.LBB1_42
.LBB1_41:                               # %cond.false.233
	movl	-20(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	imull	$5, %eax, %eax
	subl	$-128, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	addl	$-128, %eax
	movl	%eax, -208(%rbp)        # 4-byte Spill
.LBB1_42:                               # %cond.end.241
	movl	-208(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -72(%rbp)
	testb	$1, %cl
	jne	.LBB1_405
	jmp	.LBB1_406
.LBB1_43:                               # %cond.false.244
	movl	-20(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	imull	$5, %eax, %eax
	cmpl	$127, %eax
	jg	.LBB1_45
# BB#44:                                # %cond.true.250
	movl	-20(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	imull	$5, %eax, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	movl	%eax, -212(%rbp)        # 4-byte Spill
	jmp	.LBB1_46
.LBB1_45:                               # %cond.false.256
	movl	-20(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	imull	$5, %eax, %eax
	subl	$-128, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	addl	$-128, %eax
	movl	%eax, -212(%rbp)        # 4-byte Spill
.LBB1_46:                               # %cond.end.264
	movl	-212(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -72(%rbp)
	testb	$1, %dl
	jne	.LBB1_405
	jmp	.LBB1_406
.LBB1_47:                               # %cond.false.267
	movl	-20(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB1_49
# BB#48:                                # %cond.true.273
	xorl	%eax, %eax
	movl	-20(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	movl	-20(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -216(%rbp)        # 4-byte Spill
	jmp	.LBB1_50
.LBB1_49:                               # %cond.false.289
	movl	-20(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -216(%rbp)        # 4-byte Spill
.LBB1_50:                               # %cond.end.293
	movl	-216(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB1_52
# BB#51:                                # %land.lhs.true.297
	cmpl	$0, -20(%rbp)
	jl	.LBB1_78
.LBB1_52:                               # %lor.lhs.false.300
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_53
	jmp	.LBB1_64
.LBB1_53:                               # %cond.true.301
	cmpl	$0, -20(%rbp)
	jge	.LBB1_58
# BB#54:                                # %cond.true.304
	movl	-20(%rbp), %eax
	movl	-20(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	movl	%eax, -220(%rbp)        # 4-byte Spill
	jge	.LBB1_56
# BB#55:                                # %cond.true.310
	movl	-20(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -224(%rbp)        # 4-byte Spill
	jmp	.LBB1_57
.LBB1_56:                               # %cond.false.318
	movl	-20(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -224(%rbp)        # 4-byte Spill
.LBB1_57:                               # %cond.end.322
	movl	-224(%rbp), %eax        # 4-byte Reload
	movl	$5, %ecx
	cltd
	idivl	%ecx
	movl	-220(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB1_78
	jmp	.LBB1_75
.LBB1_58:                               # %cond.false.327
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_59
	jmp	.LBB1_60
.LBB1_59:                               # %cond.true.328
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_78
	jmp	.LBB1_75
.LBB1_60:                               # %cond.false.329
	movl	-20(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB1_62
# BB#61:                                # %cond.true.335
	xorl	%eax, %eax
	movl	-20(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	movl	-20(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -228(%rbp)        # 4-byte Spill
	jmp	.LBB1_63
.LBB1_62:                               # %cond.false.351
	movl	-20(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -228(%rbp)        # 4-byte Spill
.LBB1_63:                               # %cond.end.355
	movl	-228(%rbp), %eax        # 4-byte Reload
	movl	$5, %ecx
	cltd
	idivl	%ecx
	cmpl	-20(%rbp), %eax
	jl	.LBB1_78
	jmp	.LBB1_75
.LBB1_64:                               # %cond.false.360
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_65
	jmp	.LBB1_66
.LBB1_65:                               # %cond.true.361
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_78
	jmp	.LBB1_75
.LBB1_66:                               # %cond.false.362
	cmpl	$0, -20(%rbp)
	jge	.LBB1_71
# BB#67:                                # %cond.true.365
	movl	-20(%rbp), %eax
	movl	-20(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	movl	%eax, -232(%rbp)        # 4-byte Spill
	jge	.LBB1_69
# BB#68:                                # %cond.true.371
	xorl	%eax, %eax
	movl	-20(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	movl	-20(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -236(%rbp)        # 4-byte Spill
	jmp	.LBB1_70
.LBB1_69:                               # %cond.false.387
	movl	-20(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -236(%rbp)        # 4-byte Spill
.LBB1_70:                               # %cond.end.391
	movl	-236(%rbp), %eax        # 4-byte Reload
	movl	$5, %ecx
	cltd
	idivl	%ecx
	movl	-232(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB1_78
	jmp	.LBB1_75
.LBB1_71:                               # %cond.false.396
	movl	-20(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB1_73
# BB#72:                                # %cond.true.402
	movl	-20(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -240(%rbp)        # 4-byte Spill
	jmp	.LBB1_74
.LBB1_73:                               # %cond.false.410
	movl	-20(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -240(%rbp)        # 4-byte Spill
.LBB1_74:                               # %cond.end.414
	movl	-240(%rbp), %eax        # 4-byte Reload
	movl	$5, %ecx
	cltd
	idivl	%ecx
	cmpl	-20(%rbp), %eax
	jl	.LBB1_78
.LBB1_75:                               # %lor.lhs.false.419
	imull	$5, -20(%rbp), %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB1_77
# BB#76:                                # %land.lhs.true.425
	imull	$5, -20(%rbp), %eax
	cmpl	$-128, %eax
	jl	.LBB1_78
.LBB1_77:                               # %lor.lhs.false.429
	movl	$127, %eax
	imull	$5, -20(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB1_82
.LBB1_78:                               # %cond.true.433
	movl	-20(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	imull	$5, %eax, %eax
	cmpl	$127, %eax
	jg	.LBB1_80
# BB#79:                                # %cond.true.439
	movl	-20(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	imull	$5, %eax, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	movl	%eax, -244(%rbp)        # 4-byte Spill
	jmp	.LBB1_81
.LBB1_80:                               # %cond.false.445
	movl	-20(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	imull	$5, %eax, %eax
	subl	$-128, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	addl	$-128, %eax
	movl	%eax, -244(%rbp)        # 4-byte Spill
.LBB1_81:                               # %cond.end.453
	movl	-244(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -72(%rbp)
	testb	$1, %cl
	jne	.LBB1_405
	jmp	.LBB1_406
.LBB1_82:                               # %cond.false.456
	movl	-20(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	imull	$5, %eax, %eax
	cmpl	$127, %eax
	jg	.LBB1_84
# BB#83:                                # %cond.true.462
	movl	-20(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	imull	$5, %eax, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	movl	%eax, -248(%rbp)        # 4-byte Spill
	jmp	.LBB1_85
.LBB1_84:                               # %cond.false.468
	movl	-20(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	imull	$5, %eax, %eax
	subl	$-128, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	addl	$-128, %eax
	movl	%eax, -248(%rbp)        # 4-byte Spill
.LBB1_85:                               # %cond.end.476
	movl	-248(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -72(%rbp)
	testb	$1, %dl
	jne	.LBB1_405
	jmp	.LBB1_406
.LBB1_86:                               # %cond.false.479
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_87
	jmp	.LBB1_166
.LBB1_87:                               # %cond.true.480
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_88
	jmp	.LBB1_127
.LBB1_88:                               # %cond.true.481
	movl	-20(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB1_90
# BB#89:                                # %cond.true.489
	xorl	%eax, %eax
	movl	-20(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movl	-20(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -252(%rbp)        # 4-byte Spill
	jmp	.LBB1_91
.LBB1_90:                               # %cond.false.509
	movl	-20(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -252(%rbp)        # 4-byte Spill
.LBB1_91:                               # %cond.end.515
	movl	-252(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB1_93
# BB#92:                                # %land.lhs.true.519
	movl	-20(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	cmpl	$0, %eax
	jl	.LBB1_119
.LBB1_93:                               # %lor.lhs.false.524
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_94
	jmp	.LBB1_105
.LBB1_94:                               # %cond.true.525
	movl	-20(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	cmpl	$0, %eax
	jge	.LBB1_99
# BB#95:                                # %cond.true.530
	movl	-20(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	movl	-20(%rbp), %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%eax, -256(%rbp)        # 4-byte Spill
	jge	.LBB1_97
# BB#96:                                # %cond.true.540
	movl	-20(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -260(%rbp)        # 4-byte Spill
	jmp	.LBB1_98
.LBB1_97:                               # %cond.false.550
	movl	-20(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -260(%rbp)        # 4-byte Spill
.LBB1_98:                               # %cond.end.556
	movl	-260(%rbp), %eax        # 4-byte Reload
	movl	$5, %ecx
	cltd
	idivl	%ecx
	movl	-256(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB1_119
	jmp	.LBB1_116
.LBB1_99:                               # %cond.false.561
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_100
	jmp	.LBB1_101
.LBB1_100:                              # %cond.true.562
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_119
	jmp	.LBB1_116
.LBB1_101:                              # %cond.false.563
	movl	-20(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB1_103
# BB#102:                               # %cond.true.571
	xorl	%eax, %eax
	movl	-20(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movl	-20(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -264(%rbp)        # 4-byte Spill
	jmp	.LBB1_104
.LBB1_103:                              # %cond.false.591
	movl	-20(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -264(%rbp)        # 4-byte Spill
.LBB1_104:                              # %cond.end.597
	movl	-264(%rbp), %eax        # 4-byte Reload
	movl	$5, %ecx
	cltd
	idivl	%ecx
	movl	-20(%rbp), %ecx
	movw	%cx, %si
	movswl	%si, %ecx
	cmpl	%ecx, %eax
	jl	.LBB1_119
	jmp	.LBB1_116
.LBB1_105:                              # %cond.false.604
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_106
	jmp	.LBB1_107
.LBB1_106:                              # %cond.true.605
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_119
	jmp	.LBB1_116
.LBB1_107:                              # %cond.false.606
	movl	-20(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	cmpl	$0, %eax
	jge	.LBB1_112
# BB#108:                               # %cond.true.611
	movl	-20(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	movl	-20(%rbp), %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%eax, -268(%rbp)        # 4-byte Spill
	jge	.LBB1_110
# BB#109:                               # %cond.true.621
	xorl	%eax, %eax
	movl	-20(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movl	-20(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -272(%rbp)        # 4-byte Spill
	jmp	.LBB1_111
.LBB1_110:                              # %cond.false.641
	movl	-20(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -272(%rbp)        # 4-byte Spill
.LBB1_111:                              # %cond.end.647
	movl	-272(%rbp), %eax        # 4-byte Reload
	movl	$5, %ecx
	cltd
	idivl	%ecx
	movl	-268(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB1_119
	jmp	.LBB1_116
.LBB1_112:                              # %cond.false.652
	movl	-20(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB1_114
# BB#113:                               # %cond.true.660
	movl	-20(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -276(%rbp)        # 4-byte Spill
	jmp	.LBB1_115
.LBB1_114:                              # %cond.false.670
	movl	-20(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -276(%rbp)        # 4-byte Spill
.LBB1_115:                              # %cond.end.676
	movl	-276(%rbp), %eax        # 4-byte Reload
	movl	$5, %ecx
	cltd
	idivl	%ecx
	movl	-20(%rbp), %ecx
	movw	%cx, %si
	movswl	%si, %ecx
	cmpl	%ecx, %eax
	jl	.LBB1_119
.LBB1_116:                              # %lor.lhs.false.683
	movl	-20(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	imull	$5, %eax, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB1_118
# BB#117:                               # %land.lhs.true.691
	movl	-20(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	imull	$5, %eax, %eax
	cmpl	$-32768, %eax           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB1_119
.LBB1_118:                              # %lor.lhs.false.697
	movl	$32767, %eax            # imm = 0x7FFF
	movl	-20(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	imull	$5, %ecx, %ecx
	cmpl	%ecx, %eax
	jge	.LBB1_123
.LBB1_119:                              # %cond.true.703
	movl	-20(%rbp), %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	imull	$5, %eax, %eax
	cmpl	$32767, %eax            # imm = 0x7FFF
	jg	.LBB1_121
# BB#120:                               # %cond.true.709
	movl	-20(%rbp), %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	imull	$5, %eax, %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	movl	%eax, -280(%rbp)        # 4-byte Spill
	jmp	.LBB1_122
.LBB1_121:                              # %cond.false.715
	movl	-20(%rbp), %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	imull	$5, %eax, %eax
	subl	$-32768, %eax           # imm = 0xFFFFFFFFFFFF8000
	movw	%ax, %cx
	movswl	%cx, %eax
	addl	$-32768, %eax           # imm = 0xFFFFFFFFFFFF8000
	movl	%eax, -280(%rbp)        # 4-byte Spill
.LBB1_122:                              # %cond.end.723
	movl	-280(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -72(%rbp)
	testb	$1, %cl
	jne	.LBB1_405
	jmp	.LBB1_406
.LBB1_123:                              # %cond.false.726
	movl	-20(%rbp), %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	imull	$5, %eax, %eax
	cmpl	$32767, %eax            # imm = 0x7FFF
	jg	.LBB1_125
# BB#124:                               # %cond.true.732
	movl	-20(%rbp), %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	imull	$5, %eax, %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	movl	%eax, -284(%rbp)        # 4-byte Spill
	jmp	.LBB1_126
.LBB1_125:                              # %cond.false.738
	movl	-20(%rbp), %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	imull	$5, %eax, %eax
	subl	$-32768, %eax           # imm = 0xFFFFFFFFFFFF8000
	movw	%ax, %cx
	movswl	%cx, %eax
	addl	$-32768, %eax           # imm = 0xFFFFFFFFFFFF8000
	movl	%eax, -284(%rbp)        # 4-byte Spill
.LBB1_126:                              # %cond.end.746
	movl	-284(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -72(%rbp)
	testb	$1, %dl
	jne	.LBB1_405
	jmp	.LBB1_406
.LBB1_127:                              # %cond.false.749
	movl	-20(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB1_129
# BB#128:                               # %cond.true.755
	xorl	%eax, %eax
	movl	-20(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	movl	-20(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -288(%rbp)        # 4-byte Spill
	jmp	.LBB1_130
.LBB1_129:                              # %cond.false.771
	movl	-20(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -288(%rbp)        # 4-byte Spill
.LBB1_130:                              # %cond.end.775
	movl	-288(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB1_132
# BB#131:                               # %land.lhs.true.779
	cmpl	$0, -20(%rbp)
	jl	.LBB1_158
.LBB1_132:                              # %lor.lhs.false.782
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_133
	jmp	.LBB1_144
.LBB1_133:                              # %cond.true.783
	cmpl	$0, -20(%rbp)
	jge	.LBB1_138
# BB#134:                               # %cond.true.786
	movl	-20(%rbp), %eax
	movl	-20(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	movl	%eax, -292(%rbp)        # 4-byte Spill
	jge	.LBB1_136
# BB#135:                               # %cond.true.792
	movl	-20(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -296(%rbp)        # 4-byte Spill
	jmp	.LBB1_137
.LBB1_136:                              # %cond.false.800
	movl	-20(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -296(%rbp)        # 4-byte Spill
.LBB1_137:                              # %cond.end.804
	movl	-296(%rbp), %eax        # 4-byte Reload
	movl	$5, %ecx
	cltd
	idivl	%ecx
	movl	-292(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB1_158
	jmp	.LBB1_155
.LBB1_138:                              # %cond.false.809
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_139
	jmp	.LBB1_140
.LBB1_139:                              # %cond.true.810
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_158
	jmp	.LBB1_155
.LBB1_140:                              # %cond.false.811
	movl	-20(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB1_142
# BB#141:                               # %cond.true.817
	xorl	%eax, %eax
	movl	-20(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	movl	-20(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -300(%rbp)        # 4-byte Spill
	jmp	.LBB1_143
.LBB1_142:                              # %cond.false.833
	movl	-20(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -300(%rbp)        # 4-byte Spill
.LBB1_143:                              # %cond.end.837
	movl	-300(%rbp), %eax        # 4-byte Reload
	movl	$5, %ecx
	cltd
	idivl	%ecx
	cmpl	-20(%rbp), %eax
	jl	.LBB1_158
	jmp	.LBB1_155
.LBB1_144:                              # %cond.false.842
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_145
	jmp	.LBB1_146
.LBB1_145:                              # %cond.true.843
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_158
	jmp	.LBB1_155
.LBB1_146:                              # %cond.false.844
	cmpl	$0, -20(%rbp)
	jge	.LBB1_151
# BB#147:                               # %cond.true.847
	movl	-20(%rbp), %eax
	movl	-20(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	movl	%eax, -304(%rbp)        # 4-byte Spill
	jge	.LBB1_149
# BB#148:                               # %cond.true.853
	xorl	%eax, %eax
	movl	-20(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	movl	-20(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -308(%rbp)        # 4-byte Spill
	jmp	.LBB1_150
.LBB1_149:                              # %cond.false.869
	movl	-20(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -308(%rbp)        # 4-byte Spill
.LBB1_150:                              # %cond.end.873
	movl	-308(%rbp), %eax        # 4-byte Reload
	movl	$5, %ecx
	cltd
	idivl	%ecx
	movl	-304(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB1_158
	jmp	.LBB1_155
.LBB1_151:                              # %cond.false.878
	movl	-20(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB1_153
# BB#152:                               # %cond.true.884
	movl	-20(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -312(%rbp)        # 4-byte Spill
	jmp	.LBB1_154
.LBB1_153:                              # %cond.false.892
	movl	-20(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -312(%rbp)        # 4-byte Spill
.LBB1_154:                              # %cond.end.896
	movl	-312(%rbp), %eax        # 4-byte Reload
	movl	$5, %ecx
	cltd
	idivl	%ecx
	cmpl	-20(%rbp), %eax
	jl	.LBB1_158
.LBB1_155:                              # %lor.lhs.false.901
	imull	$5, -20(%rbp), %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB1_157
# BB#156:                               # %land.lhs.true.907
	imull	$5, -20(%rbp), %eax
	cmpl	$-32768, %eax           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB1_158
.LBB1_157:                              # %lor.lhs.false.911
	movl	$32767, %eax            # imm = 0x7FFF
	imull	$5, -20(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB1_162
.LBB1_158:                              # %cond.true.915
	movl	-20(%rbp), %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	imull	$5, %eax, %eax
	cmpl	$32767, %eax            # imm = 0x7FFF
	jg	.LBB1_160
# BB#159:                               # %cond.true.921
	movl	-20(%rbp), %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	imull	$5, %eax, %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	movl	%eax, -316(%rbp)        # 4-byte Spill
	jmp	.LBB1_161
.LBB1_160:                              # %cond.false.927
	movl	-20(%rbp), %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	imull	$5, %eax, %eax
	subl	$-32768, %eax           # imm = 0xFFFFFFFFFFFF8000
	movw	%ax, %cx
	movswl	%cx, %eax
	addl	$-32768, %eax           # imm = 0xFFFFFFFFFFFF8000
	movl	%eax, -316(%rbp)        # 4-byte Spill
.LBB1_161:                              # %cond.end.935
	movl	-316(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -72(%rbp)
	testb	$1, %cl
	jne	.LBB1_405
	jmp	.LBB1_406
.LBB1_162:                              # %cond.false.938
	movl	-20(%rbp), %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	imull	$5, %eax, %eax
	cmpl	$32767, %eax            # imm = 0x7FFF
	jg	.LBB1_164
# BB#163:                               # %cond.true.944
	movl	-20(%rbp), %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	imull	$5, %eax, %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	movl	%eax, -320(%rbp)        # 4-byte Spill
	jmp	.LBB1_165
.LBB1_164:                              # %cond.false.950
	movl	-20(%rbp), %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	imull	$5, %eax, %eax
	subl	$-32768, %eax           # imm = 0xFFFFFFFFFFFF8000
	movw	%ax, %cx
	movswl	%cx, %eax
	addl	$-32768, %eax           # imm = 0xFFFFFFFFFFFF8000
	movl	%eax, -320(%rbp)        # 4-byte Spill
.LBB1_165:                              # %cond.end.958
	movl	-320(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -72(%rbp)
	testb	$1, %dl
	jne	.LBB1_405
	jmp	.LBB1_406
.LBB1_166:                              # %cond.false.961
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_167
	jmp	.LBB1_246
.LBB1_167:                              # %cond.true.962
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_168
	jmp	.LBB1_207
.LBB1_168:                              # %cond.true.963
	movl	-20(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB1_170
# BB#169:                               # %cond.true.969
	xorl	%eax, %eax
	movl	-20(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	movl	-20(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -324(%rbp)        # 4-byte Spill
	jmp	.LBB1_171
.LBB1_170:                              # %cond.false.985
	movl	-20(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -324(%rbp)        # 4-byte Spill
.LBB1_171:                              # %cond.end.989
	movl	-324(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB1_173
# BB#172:                               # %land.lhs.true.993
	cmpl	$0, -20(%rbp)
	jl	.LBB1_199
.LBB1_173:                              # %lor.lhs.false.996
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_174
	jmp	.LBB1_185
.LBB1_174:                              # %cond.true.997
	cmpl	$0, -20(%rbp)
	jge	.LBB1_179
# BB#175:                               # %cond.true.1000
	movl	-20(%rbp), %eax
	movl	-20(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	movl	%eax, -328(%rbp)        # 4-byte Spill
	jge	.LBB1_177
# BB#176:                               # %cond.true.1006
	movl	-20(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -332(%rbp)        # 4-byte Spill
	jmp	.LBB1_178
.LBB1_177:                              # %cond.false.1014
	movl	-20(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -332(%rbp)        # 4-byte Spill
.LBB1_178:                              # %cond.end.1018
	movl	-332(%rbp), %eax        # 4-byte Reload
	movl	$5, %ecx
	cltd
	idivl	%ecx
	movl	-328(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB1_199
	jmp	.LBB1_196
.LBB1_179:                              # %cond.false.1023
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_180
	jmp	.LBB1_181
.LBB1_180:                              # %cond.true.1024
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_199
	jmp	.LBB1_196
.LBB1_181:                              # %cond.false.1025
	movl	-20(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB1_183
# BB#182:                               # %cond.true.1031
	xorl	%eax, %eax
	movl	-20(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	movl	-20(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -336(%rbp)        # 4-byte Spill
	jmp	.LBB1_184
.LBB1_183:                              # %cond.false.1047
	movl	-20(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -336(%rbp)        # 4-byte Spill
.LBB1_184:                              # %cond.end.1051
	movl	-336(%rbp), %eax        # 4-byte Reload
	movl	$5, %ecx
	cltd
	idivl	%ecx
	cmpl	-20(%rbp), %eax
	jl	.LBB1_199
	jmp	.LBB1_196
.LBB1_185:                              # %cond.false.1056
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_186
	jmp	.LBB1_187
.LBB1_186:                              # %cond.true.1057
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_199
	jmp	.LBB1_196
.LBB1_187:                              # %cond.false.1058
	cmpl	$0, -20(%rbp)
	jge	.LBB1_192
# BB#188:                               # %cond.true.1061
	movl	-20(%rbp), %eax
	movl	-20(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	movl	%eax, -340(%rbp)        # 4-byte Spill
	jge	.LBB1_190
# BB#189:                               # %cond.true.1067
	xorl	%eax, %eax
	movl	-20(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	movl	-20(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -344(%rbp)        # 4-byte Spill
	jmp	.LBB1_191
.LBB1_190:                              # %cond.false.1083
	movl	-20(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -344(%rbp)        # 4-byte Spill
.LBB1_191:                              # %cond.end.1087
	movl	-344(%rbp), %eax        # 4-byte Reload
	movl	$5, %ecx
	cltd
	idivl	%ecx
	movl	-340(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB1_199
	jmp	.LBB1_196
.LBB1_192:                              # %cond.false.1092
	movl	-20(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB1_194
# BB#193:                               # %cond.true.1098
	movl	-20(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -348(%rbp)        # 4-byte Spill
	jmp	.LBB1_195
.LBB1_194:                              # %cond.false.1106
	movl	-20(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -348(%rbp)        # 4-byte Spill
.LBB1_195:                              # %cond.end.1110
	movl	-348(%rbp), %eax        # 4-byte Reload
	movl	$5, %ecx
	cltd
	idivl	%ecx
	cmpl	-20(%rbp), %eax
	jl	.LBB1_199
.LBB1_196:                              # %lor.lhs.false.1115
	imull	$5, -20(%rbp), %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB1_198
# BB#197:                               # %land.lhs.true.1121
	imull	$5, -20(%rbp), %eax
	cmpl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	jl	.LBB1_199
.LBB1_198:                              # %lor.lhs.false.1125
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	imull	$5, -20(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB1_203
.LBB1_199:                              # %cond.true.1129
	imull	$5, -20(%rbp), %eax
	cmpl	$2147483647, %eax       # imm = 0x7FFFFFFF
	ja	.LBB1_201
# BB#200:                               # %cond.true.1133
	imull	$5, -20(%rbp), %eax
	movl	%eax, -352(%rbp)        # 4-byte Spill
	jmp	.LBB1_202
.LBB1_201:                              # %cond.false.1135
	imull	$5, -20(%rbp), %eax
	subl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	movl	%eax, -352(%rbp)        # 4-byte Spill
.LBB1_202:                              # %cond.end.1139
	movl	-352(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -72(%rbp)
	testb	$1, %cl
	jne	.LBB1_405
	jmp	.LBB1_406
.LBB1_203:                              # %cond.false.1142
	imull	$5, -20(%rbp), %eax
	cmpl	$2147483647, %eax       # imm = 0x7FFFFFFF
	ja	.LBB1_205
# BB#204:                               # %cond.true.1146
	imull	$5, -20(%rbp), %eax
	movl	%eax, -356(%rbp)        # 4-byte Spill
	jmp	.LBB1_206
.LBB1_205:                              # %cond.false.1148
	imull	$5, -20(%rbp), %eax
	subl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	movl	%eax, -356(%rbp)        # 4-byte Spill
.LBB1_206:                              # %cond.end.1152
	movl	-356(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -72(%rbp)
	testb	$1, %dl
	jne	.LBB1_405
	jmp	.LBB1_406
.LBB1_207:                              # %cond.false.1155
	movl	-20(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB1_209
# BB#208:                               # %cond.true.1161
	xorl	%eax, %eax
	movl	-20(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	movl	-20(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -360(%rbp)        # 4-byte Spill
	jmp	.LBB1_210
.LBB1_209:                              # %cond.false.1177
	movl	-20(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -360(%rbp)        # 4-byte Spill
.LBB1_210:                              # %cond.end.1181
	movl	-360(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB1_212
# BB#211:                               # %land.lhs.true.1185
	cmpl	$0, -20(%rbp)
	jl	.LBB1_238
.LBB1_212:                              # %lor.lhs.false.1188
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_213
	jmp	.LBB1_224
.LBB1_213:                              # %cond.true.1189
	cmpl	$0, -20(%rbp)
	jge	.LBB1_218
# BB#214:                               # %cond.true.1192
	movl	-20(%rbp), %eax
	movl	-20(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	movl	%eax, -364(%rbp)        # 4-byte Spill
	jge	.LBB1_216
# BB#215:                               # %cond.true.1198
	movl	-20(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -368(%rbp)        # 4-byte Spill
	jmp	.LBB1_217
.LBB1_216:                              # %cond.false.1206
	movl	-20(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -368(%rbp)        # 4-byte Spill
.LBB1_217:                              # %cond.end.1210
	movl	-368(%rbp), %eax        # 4-byte Reload
	movl	$5, %ecx
	cltd
	idivl	%ecx
	movl	-364(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB1_238
	jmp	.LBB1_235
.LBB1_218:                              # %cond.false.1215
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_219
	jmp	.LBB1_220
.LBB1_219:                              # %cond.true.1216
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_238
	jmp	.LBB1_235
.LBB1_220:                              # %cond.false.1217
	movl	-20(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB1_222
# BB#221:                               # %cond.true.1223
	xorl	%eax, %eax
	movl	-20(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	movl	-20(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -372(%rbp)        # 4-byte Spill
	jmp	.LBB1_223
.LBB1_222:                              # %cond.false.1239
	movl	-20(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -372(%rbp)        # 4-byte Spill
.LBB1_223:                              # %cond.end.1243
	movl	-372(%rbp), %eax        # 4-byte Reload
	movl	$5, %ecx
	cltd
	idivl	%ecx
	cmpl	-20(%rbp), %eax
	jl	.LBB1_238
	jmp	.LBB1_235
.LBB1_224:                              # %cond.false.1248
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_225
	jmp	.LBB1_226
.LBB1_225:                              # %cond.true.1249
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_238
	jmp	.LBB1_235
.LBB1_226:                              # %cond.false.1250
	cmpl	$0, -20(%rbp)
	jge	.LBB1_231
# BB#227:                               # %cond.true.1253
	movl	-20(%rbp), %eax
	movl	-20(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	movl	%eax, -376(%rbp)        # 4-byte Spill
	jge	.LBB1_229
# BB#228:                               # %cond.true.1259
	xorl	%eax, %eax
	movl	-20(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	movl	-20(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -380(%rbp)        # 4-byte Spill
	jmp	.LBB1_230
.LBB1_229:                              # %cond.false.1275
	movl	-20(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -380(%rbp)        # 4-byte Spill
.LBB1_230:                              # %cond.end.1279
	movl	-380(%rbp), %eax        # 4-byte Reload
	movl	$5, %ecx
	cltd
	idivl	%ecx
	movl	-376(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB1_238
	jmp	.LBB1_235
.LBB1_231:                              # %cond.false.1284
	movl	-20(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB1_233
# BB#232:                               # %cond.true.1290
	movl	-20(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -384(%rbp)        # 4-byte Spill
	jmp	.LBB1_234
.LBB1_233:                              # %cond.false.1298
	movl	-20(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -384(%rbp)        # 4-byte Spill
.LBB1_234:                              # %cond.end.1302
	movl	-384(%rbp), %eax        # 4-byte Reload
	movl	$5, %ecx
	cltd
	idivl	%ecx
	cmpl	-20(%rbp), %eax
	jl	.LBB1_238
.LBB1_235:                              # %lor.lhs.false.1307
	imull	$5, -20(%rbp), %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB1_237
# BB#236:                               # %land.lhs.true.1313
	imull	$5, -20(%rbp), %eax
	cmpl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	jl	.LBB1_238
.LBB1_237:                              # %lor.lhs.false.1317
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	imull	$5, -20(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB1_242
.LBB1_238:                              # %cond.true.1321
	imull	$5, -20(%rbp), %eax
	cmpl	$2147483647, %eax       # imm = 0x7FFFFFFF
	ja	.LBB1_240
# BB#239:                               # %cond.true.1325
	imull	$5, -20(%rbp), %eax
	movl	%eax, -388(%rbp)        # 4-byte Spill
	jmp	.LBB1_241
.LBB1_240:                              # %cond.false.1327
	imull	$5, -20(%rbp), %eax
	subl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	movl	%eax, -388(%rbp)        # 4-byte Spill
.LBB1_241:                              # %cond.end.1331
	movl	-388(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -72(%rbp)
	testb	$1, %cl
	jne	.LBB1_405
	jmp	.LBB1_406
.LBB1_242:                              # %cond.false.1334
	imull	$5, -20(%rbp), %eax
	cmpl	$2147483647, %eax       # imm = 0x7FFFFFFF
	ja	.LBB1_244
# BB#243:                               # %cond.true.1338
	imull	$5, -20(%rbp), %eax
	movl	%eax, -392(%rbp)        # 4-byte Spill
	jmp	.LBB1_245
.LBB1_244:                              # %cond.false.1340
	imull	$5, -20(%rbp), %eax
	subl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	movl	%eax, -392(%rbp)        # 4-byte Spill
.LBB1_245:                              # %cond.end.1344
	movl	-392(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -72(%rbp)
	testb	$1, %dl
	jne	.LBB1_405
	jmp	.LBB1_406
.LBB1_246:                              # %cond.false.1347
	movb	$1, %al
	testb	$1, %al
	jne	.LBB1_247
	jmp	.LBB1_326
.LBB1_247:                              # %cond.true.1348
	movb	$1, %al
	testb	$1, %al
	jne	.LBB1_248
	jmp	.LBB1_287
.LBB1_248:                              # %cond.true.1349
	movslq	-20(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB1_250
# BB#249:                               # %cond.true.1356
	xorl	%eax, %eax
	movslq	-20(%rbp), %rcx
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
	movslq	-20(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -400(%rbp)        # 8-byte Spill
	jmp	.LBB1_251
.LBB1_250:                              # %cond.false.1375
	movslq	-20(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
.LBB1_251:                              # %cond.end.1380
	movq	-400(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB1_253
# BB#252:                               # %land.lhs.true.1384
	movslq	-20(%rbp), %rax
	cmpq	$0, %rax
	jl	.LBB1_279
.LBB1_253:                              # %lor.lhs.false.1388
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_254
	jmp	.LBB1_265
.LBB1_254:                              # %cond.true.1389
	movslq	-20(%rbp), %rax
	cmpq	$0, %rax
	jge	.LBB1_259
# BB#255:                               # %cond.true.1393
	movslq	-20(%rbp), %rax
	movslq	-20(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -408(%rbp)        # 8-byte Spill
	jge	.LBB1_257
# BB#256:                               # %cond.true.1401
	movslq	-20(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	jmp	.LBB1_258
.LBB1_257:                              # %cond.false.1410
	movslq	-20(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
.LBB1_258:                              # %cond.end.1415
	movq	-416(%rbp), %rax        # 8-byte Reload
	movl	$5, %ecx
	movl	%ecx, %edx
	movq	%rdx, -424(%rbp)        # 8-byte Spill
	cqto
	movq	-424(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-408(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB1_279
	jmp	.LBB1_276
.LBB1_259:                              # %cond.false.1420
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_260
	jmp	.LBB1_261
.LBB1_260:                              # %cond.true.1421
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_279
	jmp	.LBB1_276
.LBB1_261:                              # %cond.false.1422
	movslq	-20(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB1_263
# BB#262:                               # %cond.true.1429
	xorl	%eax, %eax
	movslq	-20(%rbp), %rcx
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
	movslq	-20(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -432(%rbp)        # 8-byte Spill
	jmp	.LBB1_264
.LBB1_263:                              # %cond.false.1448
	movslq	-20(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
.LBB1_264:                              # %cond.end.1453
	movq	-432(%rbp), %rax        # 8-byte Reload
	movl	$5, %ecx
	movl	%ecx, %edx
	movq	%rdx, -440(%rbp)        # 8-byte Spill
	cqto
	movq	-440(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movslq	-20(%rbp), %rdi
	cmpq	%rdi, %rax
	jl	.LBB1_279
	jmp	.LBB1_276
.LBB1_265:                              # %cond.false.1459
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_266
	jmp	.LBB1_267
.LBB1_266:                              # %cond.true.1460
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_279
	jmp	.LBB1_276
.LBB1_267:                              # %cond.false.1461
	movslq	-20(%rbp), %rax
	cmpq	$0, %rax
	jge	.LBB1_272
# BB#268:                               # %cond.true.1465
	movslq	-20(%rbp), %rax
	movslq	-20(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -448(%rbp)        # 8-byte Spill
	jge	.LBB1_270
# BB#269:                               # %cond.true.1473
	xorl	%eax, %eax
	movslq	-20(%rbp), %rcx
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
	movslq	-20(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -456(%rbp)        # 8-byte Spill
	jmp	.LBB1_271
.LBB1_270:                              # %cond.false.1492
	movslq	-20(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
.LBB1_271:                              # %cond.end.1497
	movq	-456(%rbp), %rax        # 8-byte Reload
	movl	$5, %ecx
	movl	%ecx, %edx
	movq	%rdx, -464(%rbp)        # 8-byte Spill
	cqto
	movq	-464(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-448(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB1_279
	jmp	.LBB1_276
.LBB1_272:                              # %cond.false.1502
	movslq	-20(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB1_274
# BB#273:                               # %cond.true.1509
	movslq	-20(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	jmp	.LBB1_275
.LBB1_274:                              # %cond.false.1518
	movslq	-20(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
.LBB1_275:                              # %cond.end.1523
	movq	-472(%rbp), %rax        # 8-byte Reload
	movl	$5, %ecx
	movl	%ecx, %edx
	movq	%rdx, -480(%rbp)        # 8-byte Spill
	cqto
	movq	-480(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movslq	-20(%rbp), %rdi
	cmpq	%rdi, %rax
	jl	.LBB1_279
.LBB1_276:                              # %lor.lhs.false.1529
	movslq	-20(%rbp), %rax
	imulq	$5, %rax, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB1_278
# BB#277:                               # %land.lhs.true.1536
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movslq	-20(%rbp), %rcx
	imulq	$5, %rcx, %rcx
	cmpq	%rax, %rcx
	jl	.LBB1_279
.LBB1_278:                              # %lor.lhs.false.1541
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movslq	-20(%rbp), %rcx
	imulq	$5, %rcx, %rcx
	cmpq	%rcx, %rax
	jge	.LBB1_283
.LBB1_279:                              # %cond.true.1546
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movslq	-20(%rbp), %rcx
	imulq	$5, %rcx, %rcx
	cmpq	%rax, %rcx
	ja	.LBB1_281
# BB#280:                               # %cond.true.1551
	movslq	-20(%rbp), %rax
	imulq	$5, %rax, %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	jmp	.LBB1_282
.LBB1_281:                              # %cond.false.1554
	movslq	-20(%rbp), %rax
	imulq	$5, %rax, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
.LBB1_282:                              # %cond.end.1559
	movq	-488(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -72(%rbp)
	testb	$1, %cl
	jne	.LBB1_405
	jmp	.LBB1_406
.LBB1_283:                              # %cond.false.1561
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movslq	-20(%rbp), %rcx
	imulq	$5, %rcx, %rcx
	cmpq	%rax, %rcx
	ja	.LBB1_285
# BB#284:                               # %cond.true.1566
	movslq	-20(%rbp), %rax
	imulq	$5, %rax, %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	jmp	.LBB1_286
.LBB1_285:                              # %cond.false.1569
	movslq	-20(%rbp), %rax
	imulq	$5, %rax, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
.LBB1_286:                              # %cond.end.1574
	movq	-496(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -72(%rbp)
	testb	$1, %dl
	jne	.LBB1_405
	jmp	.LBB1_406
.LBB1_287:                              # %cond.false.1576
	movl	-20(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB1_289
# BB#288:                               # %cond.true.1582
	xorl	%eax, %eax
	movl	-20(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	movl	-20(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -500(%rbp)        # 4-byte Spill
	jmp	.LBB1_290
.LBB1_289:                              # %cond.false.1598
	movl	-20(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -500(%rbp)        # 4-byte Spill
.LBB1_290:                              # %cond.end.1602
	movl	-500(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB1_292
# BB#291:                               # %land.lhs.true.1606
	cmpl	$0, -20(%rbp)
	jl	.LBB1_318
.LBB1_292:                              # %lor.lhs.false.1609
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_293
	jmp	.LBB1_304
.LBB1_293:                              # %cond.true.1610
	cmpl	$0, -20(%rbp)
	jge	.LBB1_298
# BB#294:                               # %cond.true.1613
	movl	-20(%rbp), %eax
	movl	-20(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	movl	%eax, -504(%rbp)        # 4-byte Spill
	jge	.LBB1_296
# BB#295:                               # %cond.true.1619
	movl	-20(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -508(%rbp)        # 4-byte Spill
	jmp	.LBB1_297
.LBB1_296:                              # %cond.false.1627
	movl	-20(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -508(%rbp)        # 4-byte Spill
.LBB1_297:                              # %cond.end.1631
	movl	-508(%rbp), %eax        # 4-byte Reload
	movl	$5, %ecx
	cltd
	idivl	%ecx
	movl	-504(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB1_318
	jmp	.LBB1_315
.LBB1_298:                              # %cond.false.1636
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_299
	jmp	.LBB1_300
.LBB1_299:                              # %cond.true.1637
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_318
	jmp	.LBB1_315
.LBB1_300:                              # %cond.false.1638
	movl	-20(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB1_302
# BB#301:                               # %cond.true.1644
	xorl	%eax, %eax
	movl	-20(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	movl	-20(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -512(%rbp)        # 4-byte Spill
	jmp	.LBB1_303
.LBB1_302:                              # %cond.false.1660
	movl	-20(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -512(%rbp)        # 4-byte Spill
.LBB1_303:                              # %cond.end.1664
	movl	-512(%rbp), %eax        # 4-byte Reload
	movl	$5, %ecx
	cltd
	idivl	%ecx
	cmpl	-20(%rbp), %eax
	jl	.LBB1_318
	jmp	.LBB1_315
.LBB1_304:                              # %cond.false.1669
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_305
	jmp	.LBB1_306
.LBB1_305:                              # %cond.true.1670
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_318
	jmp	.LBB1_315
.LBB1_306:                              # %cond.false.1671
	cmpl	$0, -20(%rbp)
	jge	.LBB1_311
# BB#307:                               # %cond.true.1674
	movl	-20(%rbp), %eax
	movl	-20(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	movl	%eax, -516(%rbp)        # 4-byte Spill
	jge	.LBB1_309
# BB#308:                               # %cond.true.1680
	xorl	%eax, %eax
	movl	-20(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	movl	-20(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -520(%rbp)        # 4-byte Spill
	jmp	.LBB1_310
.LBB1_309:                              # %cond.false.1696
	movl	-20(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -520(%rbp)        # 4-byte Spill
.LBB1_310:                              # %cond.end.1700
	movl	-520(%rbp), %eax        # 4-byte Reload
	movl	$5, %ecx
	cltd
	idivl	%ecx
	movl	-516(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB1_318
	jmp	.LBB1_315
.LBB1_311:                              # %cond.false.1705
	movl	-20(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB1_313
# BB#312:                               # %cond.true.1711
	movl	-20(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -524(%rbp)        # 4-byte Spill
	jmp	.LBB1_314
.LBB1_313:                              # %cond.false.1719
	movl	-20(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -524(%rbp)        # 4-byte Spill
.LBB1_314:                              # %cond.end.1723
	movl	-524(%rbp), %eax        # 4-byte Reload
	movl	$5, %ecx
	cltd
	idivl	%ecx
	cmpl	-20(%rbp), %eax
	jl	.LBB1_318
.LBB1_315:                              # %lor.lhs.false.1728
	imull	$5, -20(%rbp), %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB1_317
# BB#316:                               # %land.lhs.true.1734
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	imull	$5, -20(%rbp), %ecx
	movslq	%ecx, %rdx
	cmpq	%rax, %rdx
	jl	.LBB1_318
.LBB1_317:                              # %lor.lhs.false.1739
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	imull	$5, -20(%rbp), %ecx
	movslq	%ecx, %rdx
	cmpq	%rdx, %rax
	jge	.LBB1_322
.LBB1_318:                              # %cond.true.1744
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movslq	-20(%rbp), %rcx
	imulq	$5, %rcx, %rcx
	cmpq	%rax, %rcx
	ja	.LBB1_320
# BB#319:                               # %cond.true.1749
	movslq	-20(%rbp), %rax
	imulq	$5, %rax, %rax
	movq	%rax, -536(%rbp)        # 8-byte Spill
	jmp	.LBB1_321
.LBB1_320:                              # %cond.false.1752
	movslq	-20(%rbp), %rax
	imulq	$5, %rax, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -536(%rbp)        # 8-byte Spill
.LBB1_321:                              # %cond.end.1757
	movq	-536(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -72(%rbp)
	testb	$1, %cl
	jne	.LBB1_405
	jmp	.LBB1_406
.LBB1_322:                              # %cond.false.1759
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movslq	-20(%rbp), %rcx
	imulq	$5, %rcx, %rcx
	cmpq	%rax, %rcx
	ja	.LBB1_324
# BB#323:                               # %cond.true.1764
	movslq	-20(%rbp), %rax
	imulq	$5, %rax, %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	jmp	.LBB1_325
.LBB1_324:                              # %cond.false.1767
	movslq	-20(%rbp), %rax
	imulq	$5, %rax, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
.LBB1_325:                              # %cond.end.1772
	movq	-544(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -72(%rbp)
	testb	$1, %dl
	jne	.LBB1_405
	jmp	.LBB1_406
.LBB1_326:                              # %cond.false.1774
	movb	$1, %al
	testb	$1, %al
	jne	.LBB1_327
	jmp	.LBB1_366
.LBB1_327:                              # %cond.true.1775
	movslq	-20(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB1_329
# BB#328:                               # %cond.true.1782
	xorl	%eax, %eax
	movslq	-20(%rbp), %rcx
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
	movslq	-20(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -552(%rbp)        # 8-byte Spill
	jmp	.LBB1_330
.LBB1_329:                              # %cond.false.1801
	movslq	-20(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
.LBB1_330:                              # %cond.end.1806
	movq	-552(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB1_332
# BB#331:                               # %land.lhs.true.1810
	movslq	-20(%rbp), %rax
	cmpq	$0, %rax
	jl	.LBB1_358
.LBB1_332:                              # %lor.lhs.false.1814
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_333
	jmp	.LBB1_344
.LBB1_333:                              # %cond.true.1815
	movslq	-20(%rbp), %rax
	cmpq	$0, %rax
	jge	.LBB1_338
# BB#334:                               # %cond.true.1819
	movslq	-20(%rbp), %rax
	movslq	-20(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -560(%rbp)        # 8-byte Spill
	jge	.LBB1_336
# BB#335:                               # %cond.true.1827
	movslq	-20(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
	jmp	.LBB1_337
.LBB1_336:                              # %cond.false.1836
	movslq	-20(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
.LBB1_337:                              # %cond.end.1841
	movq	-568(%rbp), %rax        # 8-byte Reload
	movl	$5, %ecx
	movl	%ecx, %edx
	movq	%rdx, -576(%rbp)        # 8-byte Spill
	cqto
	movq	-576(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-560(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB1_358
	jmp	.LBB1_355
.LBB1_338:                              # %cond.false.1846
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_339
	jmp	.LBB1_340
.LBB1_339:                              # %cond.true.1847
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_358
	jmp	.LBB1_355
.LBB1_340:                              # %cond.false.1848
	movslq	-20(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB1_342
# BB#341:                               # %cond.true.1855
	xorl	%eax, %eax
	movslq	-20(%rbp), %rcx
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
	movslq	-20(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -584(%rbp)        # 8-byte Spill
	jmp	.LBB1_343
.LBB1_342:                              # %cond.false.1874
	movslq	-20(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
.LBB1_343:                              # %cond.end.1879
	movq	-584(%rbp), %rax        # 8-byte Reload
	movl	$5, %ecx
	movl	%ecx, %edx
	movq	%rdx, -592(%rbp)        # 8-byte Spill
	cqto
	movq	-592(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movslq	-20(%rbp), %rdi
	cmpq	%rdi, %rax
	jl	.LBB1_358
	jmp	.LBB1_355
.LBB1_344:                              # %cond.false.1885
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_345
	jmp	.LBB1_346
.LBB1_345:                              # %cond.true.1886
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_358
	jmp	.LBB1_355
.LBB1_346:                              # %cond.false.1887
	movslq	-20(%rbp), %rax
	cmpq	$0, %rax
	jge	.LBB1_351
# BB#347:                               # %cond.true.1891
	movslq	-20(%rbp), %rax
	movslq	-20(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -600(%rbp)        # 8-byte Spill
	jge	.LBB1_349
# BB#348:                               # %cond.true.1899
	xorl	%eax, %eax
	movslq	-20(%rbp), %rcx
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
	movslq	-20(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -608(%rbp)        # 8-byte Spill
	jmp	.LBB1_350
.LBB1_349:                              # %cond.false.1918
	movslq	-20(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -608(%rbp)        # 8-byte Spill
.LBB1_350:                              # %cond.end.1923
	movq	-608(%rbp), %rax        # 8-byte Reload
	movl	$5, %ecx
	movl	%ecx, %edx
	movq	%rdx, -616(%rbp)        # 8-byte Spill
	cqto
	movq	-616(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-600(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB1_358
	jmp	.LBB1_355
.LBB1_351:                              # %cond.false.1928
	movslq	-20(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB1_353
# BB#352:                               # %cond.true.1935
	movslq	-20(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
	jmp	.LBB1_354
.LBB1_353:                              # %cond.false.1944
	movslq	-20(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
.LBB1_354:                              # %cond.end.1949
	movq	-624(%rbp), %rax        # 8-byte Reload
	movl	$5, %ecx
	movl	%ecx, %edx
	movq	%rdx, -632(%rbp)        # 8-byte Spill
	cqto
	movq	-632(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movslq	-20(%rbp), %rdi
	cmpq	%rdi, %rax
	jl	.LBB1_358
.LBB1_355:                              # %lor.lhs.false.1955
	movslq	-20(%rbp), %rax
	imulq	$5, %rax, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB1_357
# BB#356:                               # %land.lhs.true.1962
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movslq	-20(%rbp), %rcx
	imulq	$5, %rcx, %rcx
	cmpq	%rax, %rcx
	jl	.LBB1_358
.LBB1_357:                              # %lor.lhs.false.1967
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movslq	-20(%rbp), %rcx
	imulq	$5, %rcx, %rcx
	cmpq	%rcx, %rax
	jge	.LBB1_362
.LBB1_358:                              # %cond.true.1972
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movslq	-20(%rbp), %rcx
	imulq	$5, %rcx, %rcx
	cmpq	%rax, %rcx
	ja	.LBB1_360
# BB#359:                               # %cond.true.1977
	movslq	-20(%rbp), %rax
	imulq	$5, %rax, %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
	jmp	.LBB1_361
.LBB1_360:                              # %cond.false.1980
	movslq	-20(%rbp), %rax
	imulq	$5, %rax, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
.LBB1_361:                              # %cond.end.1985
	movq	-640(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -72(%rbp)
	testb	$1, %cl
	jne	.LBB1_405
	jmp	.LBB1_406
.LBB1_362:                              # %cond.false.1987
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movslq	-20(%rbp), %rcx
	imulq	$5, %rcx, %rcx
	cmpq	%rax, %rcx
	ja	.LBB1_364
# BB#363:                               # %cond.true.1992
	movslq	-20(%rbp), %rax
	imulq	$5, %rax, %rax
	movq	%rax, -648(%rbp)        # 8-byte Spill
	jmp	.LBB1_365
.LBB1_364:                              # %cond.false.1995
	movslq	-20(%rbp), %rax
	imulq	$5, %rax, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -648(%rbp)        # 8-byte Spill
.LBB1_365:                              # %cond.end.2000
	movq	-648(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -72(%rbp)
	testb	$1, %dl
	jne	.LBB1_405
	jmp	.LBB1_406
.LBB1_366:                              # %cond.false.2002
	movl	-20(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB1_368
# BB#367:                               # %cond.true.2008
	xorl	%eax, %eax
	movl	-20(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	movl	-20(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -652(%rbp)        # 4-byte Spill
	jmp	.LBB1_369
.LBB1_368:                              # %cond.false.2024
	movl	-20(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -652(%rbp)        # 4-byte Spill
.LBB1_369:                              # %cond.end.2028
	movl	-652(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB1_371
# BB#370:                               # %land.lhs.true.2032
	cmpl	$0, -20(%rbp)
	jl	.LBB1_397
.LBB1_371:                              # %lor.lhs.false.2035
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_372
	jmp	.LBB1_383
.LBB1_372:                              # %cond.true.2036
	cmpl	$0, -20(%rbp)
	jge	.LBB1_377
# BB#373:                               # %cond.true.2039
	movl	-20(%rbp), %eax
	movl	-20(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	movl	%eax, -656(%rbp)        # 4-byte Spill
	jge	.LBB1_375
# BB#374:                               # %cond.true.2045
	movl	-20(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -660(%rbp)        # 4-byte Spill
	jmp	.LBB1_376
.LBB1_375:                              # %cond.false.2053
	movl	-20(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -660(%rbp)        # 4-byte Spill
.LBB1_376:                              # %cond.end.2057
	movl	-660(%rbp), %eax        # 4-byte Reload
	movl	$5, %ecx
	cltd
	idivl	%ecx
	movl	-656(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB1_397
	jmp	.LBB1_394
.LBB1_377:                              # %cond.false.2062
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_378
	jmp	.LBB1_379
.LBB1_378:                              # %cond.true.2063
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_397
	jmp	.LBB1_394
.LBB1_379:                              # %cond.false.2064
	movl	-20(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB1_381
# BB#380:                               # %cond.true.2070
	xorl	%eax, %eax
	movl	-20(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	movl	-20(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -664(%rbp)        # 4-byte Spill
	jmp	.LBB1_382
.LBB1_381:                              # %cond.false.2086
	movl	-20(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -664(%rbp)        # 4-byte Spill
.LBB1_382:                              # %cond.end.2090
	movl	-664(%rbp), %eax        # 4-byte Reload
	movl	$5, %ecx
	cltd
	idivl	%ecx
	cmpl	-20(%rbp), %eax
	jl	.LBB1_397
	jmp	.LBB1_394
.LBB1_383:                              # %cond.false.2095
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_384
	jmp	.LBB1_385
.LBB1_384:                              # %cond.true.2096
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_397
	jmp	.LBB1_394
.LBB1_385:                              # %cond.false.2097
	cmpl	$0, -20(%rbp)
	jge	.LBB1_390
# BB#386:                               # %cond.true.2100
	movl	-20(%rbp), %eax
	movl	-20(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	movl	%eax, -668(%rbp)        # 4-byte Spill
	jge	.LBB1_388
# BB#387:                               # %cond.true.2106
	xorl	%eax, %eax
	movl	-20(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	movl	-20(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -672(%rbp)        # 4-byte Spill
	jmp	.LBB1_389
.LBB1_388:                              # %cond.false.2122
	movl	-20(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -672(%rbp)        # 4-byte Spill
.LBB1_389:                              # %cond.end.2126
	movl	-672(%rbp), %eax        # 4-byte Reload
	movl	$5, %ecx
	cltd
	idivl	%ecx
	movl	-668(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB1_397
	jmp	.LBB1_394
.LBB1_390:                              # %cond.false.2131
	movl	-20(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB1_392
# BB#391:                               # %cond.true.2137
	movl	-20(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -676(%rbp)        # 4-byte Spill
	jmp	.LBB1_393
.LBB1_392:                              # %cond.false.2145
	movl	-20(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -676(%rbp)        # 4-byte Spill
.LBB1_393:                              # %cond.end.2149
	movl	-676(%rbp), %eax        # 4-byte Reload
	movl	$5, %ecx
	cltd
	idivl	%ecx
	cmpl	-20(%rbp), %eax
	jl	.LBB1_397
.LBB1_394:                              # %lor.lhs.false.2154
	imull	$5, -20(%rbp), %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB1_396
# BB#395:                               # %land.lhs.true.2160
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	imull	$5, -20(%rbp), %ecx
	movslq	%ecx, %rdx
	cmpq	%rax, %rdx
	jl	.LBB1_397
.LBB1_396:                              # %lor.lhs.false.2165
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	imull	$5, -20(%rbp), %ecx
	movslq	%ecx, %rdx
	cmpq	%rdx, %rax
	jge	.LBB1_401
.LBB1_397:                              # %cond.true.2170
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movslq	-20(%rbp), %rcx
	imulq	$5, %rcx, %rcx
	cmpq	%rax, %rcx
	ja	.LBB1_399
# BB#398:                               # %cond.true.2175
	movslq	-20(%rbp), %rax
	imulq	$5, %rax, %rax
	movq	%rax, -688(%rbp)        # 8-byte Spill
	jmp	.LBB1_400
.LBB1_399:                              # %cond.false.2178
	movslq	-20(%rbp), %rax
	imulq	$5, %rax, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -688(%rbp)        # 8-byte Spill
.LBB1_400:                              # %cond.end.2183
	movq	-688(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -72(%rbp)
	testb	$1, %cl
	jne	.LBB1_405
	jmp	.LBB1_406
.LBB1_401:                              # %cond.false.2185
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movslq	-20(%rbp), %rcx
	imulq	$5, %rcx, %rcx
	cmpq	%rax, %rcx
	ja	.LBB1_403
# BB#402:                               # %cond.true.2190
	movslq	-20(%rbp), %rax
	imulq	$5, %rax, %rax
	movq	%rax, -696(%rbp)        # 8-byte Spill
	jmp	.LBB1_404
.LBB1_403:                              # %cond.false.2193
	movslq	-20(%rbp), %rax
	imulq	$5, %rax, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -696(%rbp)        # 8-byte Spill
.LBB1_404:                              # %cond.end.2198
	movq	-696(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -72(%rbp)
	testb	$1, %dl
	jne	.LBB1_405
	jmp	.LBB1_406
.LBB1_405:                              # %if.then
	movq	$-1, %rdi
	callq	memory_full
.LBB1_406:                              # %if.end
	movq	encode_terminal_src_size, %rax
	cmpq	-72(%rbp), %rax
	jge	.LBB1_408
# BB#407:                               # %if.then.2202
	movabsq	$encode_terminal_src_size, %rsi
	movq	$-1, %rcx
	movl	$1, %eax
	movl	%eax, %r8d
	movq	encode_terminal_src, %rdi
	movq	-72(%rbp), %rdx
	subq	encode_terminal_src_size, %rdx
	callq	xpalloc
	movq	%rax, encode_terminal_src
.LBB1_408:                              # %if.end.2205
	movq	-32(%rbp), %rdi
	callq	coding_charset_list
	movq	%rax, -96(%rbp)
	movq	encode_terminal_src, %rax
	movq	%rax, -48(%rbp)
	movq	$0, -56(%rbp)
.LBB1_409:                              # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_440 Depth 2
                                        #     Child Loop BB1_418 Depth 2
                                        #     Child Loop BB1_505 Depth 2
                                        #     Child Loop BB1_541 Depth 2
	movq	-16(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jae	.LBB1_555
# BB#410:                               # %while.body
                                        #   in Loop: Header=BB1_409 Depth=1
	movq	-16(%rbp), %rax
	movl	24(%rax), %ecx
	andl	$7, %ecx
	cmpl	$1, %ecx
	jne	.LBB1_492
# BB#411:                               # %if.then.2211
                                        #   in Loop: Header=BB1_409 Depth=1
	movq	-48(%rbp), %rax
	movq	encode_terminal_src, %rcx
	subq	%rcx, %rax
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	movl	40(%rax), %edx
	andl	$1, %edx
	testl	$1, %edx
	je	.LBB1_413
# BB#412:                               # %if.then.2216
                                        #   in Loop: Header=BB1_409 Depth=1
	movq	-16(%rbp), %rax
	movl	40(%rax), %ecx
	shrl	$1, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edi
	callq	composition_gstring_from_id
	movq	%rax, -112(%rbp)
	movq	-16(%rbp), %rax
	movl	36(%rax), %ecx
	movq	-16(%rbp), %rax
	subl	32(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB1_414
.LBB1_413:                              # %if.else
                                        #   in Loop: Header=BB1_409 Depth=1
	movq	-16(%rbp), %rax
	movl	40(%rax), %ecx
	shrl	$1, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movq	composition_table, %rdx
	movq	(%rdx,%rax,8), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movslq	(%rax), %rax
	movq	%rax, -72(%rbp)
	imulq	$5, -72(%rbp), %rax
	movq	%rax, -72(%rbp)
.LBB1_414:                              # %if.end.2234
                                        #   in Loop: Header=BB1_409 Depth=1
	movq	encode_terminal_src_size, %rax
	subq	-64(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jge	.LBB1_416
# BB#415:                               # %if.then.2238
                                        #   in Loop: Header=BB1_409 Depth=1
	movabsq	$encode_terminal_src_size, %rsi
	movq	$-1, %rcx
	movl	$1, %eax
	movl	%eax, %r8d
	movq	encode_terminal_src, %rdi
	movq	-72(%rbp), %rdx
	movq	encode_terminal_src_size, %r9
	subq	-64(%rbp), %r9
	subq	%r9, %rdx
	callq	xpalloc
	movq	%rax, encode_terminal_src
	movq	encode_terminal_src, %rax
	addq	-64(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB1_416:                              # %if.end.2243
                                        #   in Loop: Header=BB1_409 Depth=1
	movq	-16(%rbp), %rax
	movl	40(%rax), %ecx
	andl	$1, %ecx
	testl	$1, %ecx
	je	.LBB1_439
# BB#417:                               # %if.then.2249
                                        #   in Loop: Header=BB1_409 Depth=1
	movq	-16(%rbp), %rax
	movl	32(%rax), %ecx
	movl	%ecx, -116(%rbp)
.LBB1_418:                              # %for.cond
                                        #   Parent Loop BB1_409 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-116(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	36(%rcx), %eax
	jg	.LBB1_438
# BB#419:                               # %for.body
                                        #   in Loop: Header=BB1_418 Depth=2
	movq	-112(%rbp), %rdi
	movl	-116(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rsi
	callq	AREF
	movl	$2, %ecx
	movl	%ecx, %esi
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rdi
	callq	AREF
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -132(%rbp)
	movl	-132(%rbp), %edi
	movq	-96(%rbp), %rsi
	callq	char_charset
	cmpq	$0, %rax
	jne	.LBB1_421
# BB#420:                               # %if.then.2264
                                        #   in Loop: Header=BB1_418 Depth=2
	movl	$63, -132(%rbp)
.LBB1_421:                              # %if.end.2265
                                        #   in Loop: Header=BB1_418 Depth=2
	movb	$1, %al
	testb	$1, %al
	jne	.LBB1_422
	jmp	.LBB1_423
.LBB1_422:                              # %cond.true.2266
                                        #   in Loop: Header=BB1_418 Depth=2
	movl	-132(%rbp), %eax
	addl	$0, %eax
	cmpl	$127, %eax
	jbe	.LBB1_424
	jmp	.LBB1_425
.LBB1_423:                              # %cond.false.2270
                                        #   in Loop: Header=BB1_418 Depth=2
	movslq	-132(%rbp), %rax
	addq	$0, %rax
	cmpq	$127, %rax
	ja	.LBB1_425
.LBB1_424:                              # %cond.true.2275
                                        #   in Loop: Header=BB1_418 Depth=2
	movl	$1, %eax
	movl	-132(%rbp), %ecx
	movb	%cl, %dl
	movq	-48(%rbp), %rsi
	movb	%dl, (%rsi)
	movl	%eax, -700(%rbp)        # 4-byte Spill
	jmp	.LBB1_436
.LBB1_425:                              # %cond.false.2278
                                        #   in Loop: Header=BB1_418 Depth=2
	movb	$1, %al
	testb	$1, %al
	jne	.LBB1_426
	jmp	.LBB1_427
.LBB1_426:                              # %cond.true.2279
                                        #   in Loop: Header=BB1_418 Depth=2
	movl	-132(%rbp), %eax
	addl	$0, %eax
	cmpl	$2047, %eax             # imm = 0x7FF
	jbe	.LBB1_428
	jmp	.LBB1_429
.LBB1_427:                              # %cond.false.2283
                                        #   in Loop: Header=BB1_418 Depth=2
	movslq	-132(%rbp), %rax
	addq	$0, %rax
	cmpq	$2047, %rax             # imm = 0x7FF
	ja	.LBB1_429
.LBB1_428:                              # %cond.true.2288
                                        #   in Loop: Header=BB1_418 Depth=2
	movl	$2, %eax
	movl	-132(%rbp), %ecx
	sarl	$6, %ecx
	orl	$192, %ecx
	movb	%cl, %dl
	movq	-48(%rbp), %rsi
	movb	%dl, (%rsi)
	movl	-132(%rbp), %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movq	-48(%rbp), %rsi
	movb	%dl, 1(%rsi)
	movl	%eax, -704(%rbp)        # 4-byte Spill
	jmp	.LBB1_435
.LBB1_429:                              # %cond.false.2295
                                        #   in Loop: Header=BB1_418 Depth=2
	movb	$1, %al
	testb	$1, %al
	jne	.LBB1_430
	jmp	.LBB1_431
.LBB1_430:                              # %cond.true.2296
                                        #   in Loop: Header=BB1_418 Depth=2
	movl	-132(%rbp), %eax
	addl	$0, %eax
	cmpl	$65535, %eax            # imm = 0xFFFF
	jbe	.LBB1_432
	jmp	.LBB1_433
.LBB1_431:                              # %cond.false.2300
                                        #   in Loop: Header=BB1_418 Depth=2
	movslq	-132(%rbp), %rax
	addq	$0, %rax
	cmpq	$65535, %rax            # imm = 0xFFFF
	ja	.LBB1_433
.LBB1_432:                              # %cond.true.2305
                                        #   in Loop: Header=BB1_418 Depth=2
	movl	$3, %eax
	movl	-132(%rbp), %ecx
	sarl	$12, %ecx
	orl	$224, %ecx
	movb	%cl, %dl
	movq	-48(%rbp), %rsi
	movb	%dl, (%rsi)
	movl	-132(%rbp), %ecx
	sarl	$6, %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movq	-48(%rbp), %rsi
	movb	%dl, 1(%rsi)
	movl	-132(%rbp), %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movq	-48(%rbp), %rsi
	movb	%dl, 2(%rsi)
	movl	%eax, -708(%rbp)        # 4-byte Spill
	jmp	.LBB1_434
.LBB1_433:                              # %cond.false.2319
                                        #   in Loop: Header=BB1_418 Depth=2
	movl	-132(%rbp), %edi
	movq	-48(%rbp), %rsi
	callq	char_string
	movl	%eax, -708(%rbp)        # 4-byte Spill
.LBB1_434:                              # %cond.end.2321
                                        #   in Loop: Header=BB1_418 Depth=2
	movl	-708(%rbp), %eax        # 4-byte Reload
	movl	%eax, -704(%rbp)        # 4-byte Spill
.LBB1_435:                              # %cond.end.2323
                                        #   in Loop: Header=BB1_418 Depth=2
	movl	-704(%rbp), %eax        # 4-byte Reload
	movl	%eax, -700(%rbp)        # 4-byte Spill
.LBB1_436:                              # %cond.end.2325
                                        #   in Loop: Header=BB1_418 Depth=2
	movl	-700(%rbp), %eax        # 4-byte Reload
	movq	-48(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -48(%rbp)
	movq	-56(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
# BB#437:                               # %for.inc
                                        #   in Loop: Header=BB1_418 Depth=2
	movl	-116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -116(%rbp)
	jmp	.LBB1_418
.LBB1_438:                              # %for.end
                                        #   in Loop: Header=BB1_409 Depth=1
	jmp	.LBB1_491
.LBB1_439:                              # %if.else.2330
                                        #   in Loop: Header=BB1_409 Depth=1
	movl	$0, -116(%rbp)
.LBB1_440:                              # %for.cond.2331
                                        #   Parent Loop BB1_409 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-116(%rbp), %eax
	movq	-104(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB1_490
# BB#441:                               # %for.body.2335
                                        #   in Loop: Header=BB1_440 Depth=2
	movq	-104(%rbp), %rax
	cmpl	$3, 20(%rax)
	jne	.LBB1_443
# BB#442:                               # %cond.true.2339
                                        #   in Loop: Header=BB1_440 Depth=2
	movl	-116(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -712(%rbp)        # 4-byte Spill
	jmp	.LBB1_444
.LBB1_443:                              # %cond.false.2341
                                        #   in Loop: Header=BB1_440 Depth=2
	movl	-116(%rbp), %eax
	movl	%eax, -712(%rbp)        # 4-byte Spill
.LBB1_444:                              # %cond.end.2342
                                        #   in Loop: Header=BB1_440 Depth=2
	movl	-712(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-104(%rbp), %rdx
	movq	24(%rdx), %rdx
	shlq	$1, %rdx
	movq	composition_hash_table, %rdi
	movq	%rcx, -720(%rbp)        # 8-byte Spill
	movq	%rdx, -728(%rbp)        # 8-byte Spill
	callq	XHASH_TABLE
	movq	72(%rax), %rdi
	callq	XVECTOR
	movq	-728(%rbp), %rcx        # 8-byte Reload
	movq	8(%rax,%rcx,8), %rdi
	callq	XVECTOR
	movq	-720(%rbp), %rcx        # 8-byte Reload
	movq	8(%rax,%rcx,8), %rax
	sarq	$2, %rax
	movl	%eax, %esi
	movl	%esi, -136(%rbp)
	cmpl	$9, -136(%rbp)
	jne	.LBB1_446
# BB#445:                               # %if.then.2357
                                        #   in Loop: Header=BB1_440 Depth=2
	jmp	.LBB1_489
.LBB1_446:                              # %if.end.2358
                                        #   in Loop: Header=BB1_440 Depth=2
	xorl	%eax, %eax
	movl	%eax, %edx
	movl	-136(%rbp), %edi
	movq	-96(%rbp), %rsi
	callq	char_charset
	cmpq	$0, %rax
	je	.LBB1_472
# BB#447:                               # %if.then.2361
                                        #   in Loop: Header=BB1_440 Depth=2
	movb	$1, %al
	testb	$1, %al
	jne	.LBB1_448
	jmp	.LBB1_449
.LBB1_448:                              # %cond.true.2362
                                        #   in Loop: Header=BB1_440 Depth=2
	movl	-136(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB1_450
	jmp	.LBB1_463
.LBB1_449:                              # %cond.false.2366
                                        #   in Loop: Header=BB1_440 Depth=2
	movslq	-136(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB1_463
.LBB1_450:                              # %cond.true.2371
                                        #   in Loop: Header=BB1_440 Depth=2
	cmpl	$32, -136(%rbp)
	jge	.LBB1_458
# BB#451:                               # %cond.true.2374
                                        #   in Loop: Header=BB1_440 Depth=2
	cmpl	$9, -136(%rbp)
	jne	.LBB1_453
# BB#452:                               # %cond.true.2377
                                        #   in Loop: Header=BB1_440 Depth=2
	movq	current_buffer, %rax
	movq	152(%rax), %rax
	sarq	$2, %rax
	movq	%rax, %rdi
	callq	sanitize_tab_width
	movl	%eax, -732(%rbp)        # 4-byte Spill
	jmp	.LBB1_457
.LBB1_453:                              # %cond.false.2380
                                        #   in Loop: Header=BB1_440 Depth=2
	cmpl	$10, -136(%rbp)
	jne	.LBB1_455
# BB#454:                               # %cond.true.2383
                                        #   in Loop: Header=BB1_440 Depth=2
	xorl	%eax, %eax
	movl	%eax, -736(%rbp)        # 4-byte Spill
	jmp	.LBB1_456
.LBB1_455:                              # %cond.false.2384
                                        #   in Loop: Header=BB1_440 Depth=2
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	232(%rax), %rax
	movq	%rax, -744(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$2, %edi
	movl	$4, %ecx
	movq	-744(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	cmovel	%ecx, %edi
	movl	%edi, -736(%rbp)        # 4-byte Spill
.LBB1_456:                              # %cond.end.2389
                                        #   in Loop: Header=BB1_440 Depth=2
	movl	-736(%rbp), %eax        # 4-byte Reload
	movl	%eax, -732(%rbp)        # 4-byte Spill
.LBB1_457:                              # %cond.end.2391
                                        #   in Loop: Header=BB1_440 Depth=2
	movl	-732(%rbp), %eax        # 4-byte Reload
	movl	%eax, -748(%rbp)        # 4-byte Spill
	jmp	.LBB1_462
.LBB1_458:                              # %cond.false.2393
                                        #   in Loop: Header=BB1_440 Depth=2
	cmpl	$127, -136(%rbp)
	jge	.LBB1_460
# BB#459:                               # %cond.true.2396
                                        #   in Loop: Header=BB1_440 Depth=2
	movl	$1, %eax
	movl	%eax, -752(%rbp)        # 4-byte Spill
	jmp	.LBB1_461
.LBB1_460:                              # %cond.false.2397
                                        #   in Loop: Header=BB1_440 Depth=2
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	232(%rax), %rax
	movq	%rax, -760(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$2, %edi
	movl	$4, %ecx
	movq	-760(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	cmovel	%ecx, %edi
	movl	%edi, -752(%rbp)        # 4-byte Spill
.LBB1_461:                              # %cond.end.2403
                                        #   in Loop: Header=BB1_440 Depth=2
	movl	-752(%rbp), %eax        # 4-byte Reload
	movl	%eax, -748(%rbp)        # 4-byte Spill
.LBB1_462:                              # %cond.end.2405
                                        #   in Loop: Header=BB1_440 Depth=2
	movl	-748(%rbp), %eax        # 4-byte Reload
	movl	%eax, -764(%rbp)        # 4-byte Spill
	jmp	.LBB1_464
.LBB1_463:                              # %cond.false.2407
                                        #   in Loop: Header=BB1_440 Depth=2
	movq	globals+224, %rdi
	movl	-136(%rbp), %esi
	callq	CHAR_TABLE_REF
	sarq	$2, %rax
	movq	%rax, %rdi
	callq	sanitize_char_width
	movl	%eax, -764(%rbp)        # 4-byte Spill
.LBB1_464:                              # %cond.end.2411
                                        #   in Loop: Header=BB1_440 Depth=2
	movl	-764(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB1_471
# BB#465:                               # %land.lhs.true.2415
                                        #   in Loop: Header=BB1_440 Depth=2
	cmpl	$0, -116(%rbp)
	jle	.LBB1_471
# BB#466:                               # %land.lhs.true.2418
                                        #   in Loop: Header=BB1_440 Depth=2
	movq	-104(%rbp), %rax
	cmpl	$3, 20(%rax)
	jne	.LBB1_468
# BB#467:                               # %cond.true.2422
                                        #   in Loop: Header=BB1_440 Depth=2
	movl	-116(%rbp), %eax
	subl	$1, %eax
	shll	$1, %eax
	movl	%eax, -768(%rbp)        # 4-byte Spill
	jmp	.LBB1_469
.LBB1_468:                              # %cond.false.2425
                                        #   in Loop: Header=BB1_440 Depth=2
	movl	-116(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -768(%rbp)        # 4-byte Spill
.LBB1_469:                              # %cond.end.2427
                                        #   in Loop: Header=BB1_440 Depth=2
	movl	-768(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-104(%rbp), %rdx
	movq	24(%rdx), %rdx
	shlq	$1, %rdx
	movq	composition_hash_table, %rdi
	movq	%rcx, -776(%rbp)        # 8-byte Spill
	movq	%rdx, -784(%rbp)        # 8-byte Spill
	callq	XHASH_TABLE
	movq	72(%rax), %rdi
	callq	XVECTOR
	movq	-784(%rbp), %rcx        # 8-byte Reload
	movq	8(%rax,%rcx,8), %rdi
	callq	XVECTOR
	movq	-776(%rbp), %rcx        # 8-byte Reload
	movq	8(%rax,%rcx,8), %rax
	sarq	$2, %rax
	cmpq	$9, %rax
	jne	.LBB1_471
# BB#470:                               # %if.then.2443
                                        #   in Loop: Header=BB1_440 Depth=2
	movq	-48(%rbp), %rax
	movb	$32, (%rax)
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
.LBB1_471:                              # %if.end.2447
                                        #   in Loop: Header=BB1_440 Depth=2
	jmp	.LBB1_473
.LBB1_472:                              # %if.else.2448
                                        #   in Loop: Header=BB1_440 Depth=2
	movl	$63, -136(%rbp)
.LBB1_473:                              # %if.end.2449
                                        #   in Loop: Header=BB1_440 Depth=2
	movb	$1, %al
	testb	$1, %al
	jne	.LBB1_474
	jmp	.LBB1_475
.LBB1_474:                              # %cond.true.2450
                                        #   in Loop: Header=BB1_440 Depth=2
	movl	-136(%rbp), %eax
	addl	$0, %eax
	cmpl	$127, %eax
	jbe	.LBB1_476
	jmp	.LBB1_477
.LBB1_475:                              # %cond.false.2454
                                        #   in Loop: Header=BB1_440 Depth=2
	movslq	-136(%rbp), %rax
	addq	$0, %rax
	cmpq	$127, %rax
	ja	.LBB1_477
.LBB1_476:                              # %cond.true.2459
                                        #   in Loop: Header=BB1_440 Depth=2
	movl	$1, %eax
	movl	-136(%rbp), %ecx
	movb	%cl, %dl
	movq	-48(%rbp), %rsi
	movb	%dl, (%rsi)
	movl	%eax, -788(%rbp)        # 4-byte Spill
	jmp	.LBB1_488
.LBB1_477:                              # %cond.false.2462
                                        #   in Loop: Header=BB1_440 Depth=2
	movb	$1, %al
	testb	$1, %al
	jne	.LBB1_478
	jmp	.LBB1_479
.LBB1_478:                              # %cond.true.2463
                                        #   in Loop: Header=BB1_440 Depth=2
	movl	-136(%rbp), %eax
	addl	$0, %eax
	cmpl	$2047, %eax             # imm = 0x7FF
	jbe	.LBB1_480
	jmp	.LBB1_481
.LBB1_479:                              # %cond.false.2467
                                        #   in Loop: Header=BB1_440 Depth=2
	movslq	-136(%rbp), %rax
	addq	$0, %rax
	cmpq	$2047, %rax             # imm = 0x7FF
	ja	.LBB1_481
.LBB1_480:                              # %cond.true.2472
                                        #   in Loop: Header=BB1_440 Depth=2
	movl	$2, %eax
	movl	-136(%rbp), %ecx
	sarl	$6, %ecx
	orl	$192, %ecx
	movb	%cl, %dl
	movq	-48(%rbp), %rsi
	movb	%dl, (%rsi)
	movl	-136(%rbp), %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movq	-48(%rbp), %rsi
	movb	%dl, 1(%rsi)
	movl	%eax, -792(%rbp)        # 4-byte Spill
	jmp	.LBB1_487
.LBB1_481:                              # %cond.false.2481
                                        #   in Loop: Header=BB1_440 Depth=2
	movb	$1, %al
	testb	$1, %al
	jne	.LBB1_482
	jmp	.LBB1_483
.LBB1_482:                              # %cond.true.2482
                                        #   in Loop: Header=BB1_440 Depth=2
	movl	-136(%rbp), %eax
	addl	$0, %eax
	cmpl	$65535, %eax            # imm = 0xFFFF
	jbe	.LBB1_484
	jmp	.LBB1_485
.LBB1_483:                              # %cond.false.2486
                                        #   in Loop: Header=BB1_440 Depth=2
	movslq	-136(%rbp), %rax
	addq	$0, %rax
	cmpq	$65535, %rax            # imm = 0xFFFF
	ja	.LBB1_485
.LBB1_484:                              # %cond.true.2491
                                        #   in Loop: Header=BB1_440 Depth=2
	movl	$3, %eax
	movl	-136(%rbp), %ecx
	sarl	$12, %ecx
	orl	$224, %ecx
	movb	%cl, %dl
	movq	-48(%rbp), %rsi
	movb	%dl, (%rsi)
	movl	-136(%rbp), %ecx
	sarl	$6, %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movq	-48(%rbp), %rsi
	movb	%dl, 1(%rsi)
	movl	-136(%rbp), %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movq	-48(%rbp), %rsi
	movb	%dl, 2(%rsi)
	movl	%eax, -796(%rbp)        # 4-byte Spill
	jmp	.LBB1_486
.LBB1_485:                              # %cond.false.2505
                                        #   in Loop: Header=BB1_440 Depth=2
	movl	-136(%rbp), %edi
	movq	-48(%rbp), %rsi
	callq	char_string
	movl	%eax, -796(%rbp)        # 4-byte Spill
.LBB1_486:                              # %cond.end.2507
                                        #   in Loop: Header=BB1_440 Depth=2
	movl	-796(%rbp), %eax        # 4-byte Reload
	movl	%eax, -792(%rbp)        # 4-byte Spill
.LBB1_487:                              # %cond.end.2509
                                        #   in Loop: Header=BB1_440 Depth=2
	movl	-792(%rbp), %eax        # 4-byte Reload
	movl	%eax, -788(%rbp)        # 4-byte Spill
.LBB1_488:                              # %cond.end.2511
                                        #   in Loop: Header=BB1_440 Depth=2
	movl	-788(%rbp), %eax        # 4-byte Reload
	movq	-48(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -48(%rbp)
	movq	-56(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
.LBB1_489:                              # %for.inc.2516
                                        #   in Loop: Header=BB1_440 Depth=2
	movl	-116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -116(%rbp)
	jmp	.LBB1_440
.LBB1_490:                              # %for.end.2518
                                        #   in Loop: Header=BB1_409 Depth=1
	jmp	.LBB1_491
.LBB1_491:                              # %if.end.2519
                                        #   in Loop: Header=BB1_409 Depth=1
	jmp	.LBB1_554
.LBB1_492:                              # %if.else.2520
                                        #   in Loop: Header=BB1_409 Depth=1
	movq	-16(%rbp), %rax
	movl	24(%rax), %ecx
	shrl	$7, %ecx
	andl	$1, %ecx
	testl	$1, %ecx
	jne	.LBB1_553
# BB#493:                               # %if.then.2525
                                        #   in Loop: Header=BB1_409 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -160(%rbp)
# BB#494:                               # %do.body
                                        #   in Loop: Header=BB1_409 Depth=1
	movq	-16(%rbp), %rax
	cmpl	$256, 40(%rax)          # imm = 0x100
	jae	.LBB1_496
# BB#495:                               # %if.then.2533
                                        #   in Loop: Header=BB1_409 Depth=1
	movq	-16(%rbp), %rax
	movl	40(%rax), %ecx
	movl	%ecx, -144(%rbp)
	movq	-16(%rbp), %rax
	movl	28(%rax), %ecx
	andl	$1048575, %ecx          # imm = 0xFFFFF
	movl	%ecx, -140(%rbp)
	jmp	.LBB1_497
.LBB1_496:                              # %if.else.2542
                                        #   in Loop: Header=BB1_409 Depth=1
	movl	$-1, -144(%rbp)
	movl	$0, -140(%rbp)
.LBB1_497:                              # %if.end.2545
                                        #   in Loop: Header=BB1_409 Depth=1
	jmp	.LBB1_498
.LBB1_498:                              # %do.end
                                        #   in Loop: Header=BB1_409 Depth=1
	movq	-144(%rbp), %rdi
	callq	GLYPH_CHAR
	cmpl	$0, %eax
	jl	.LBB1_502
# BB#499:                               # %lor.lhs.false.2549
                                        #   in Loop: Header=BB1_409 Depth=1
	movq	-144(%rbp), %rdi
	callq	GLYPH_FACE
	cmpl	$0, %eax
	jne	.LBB1_502
# BB#500:                               # %lor.lhs.false.2553
                                        #   in Loop: Header=BB1_409 Depth=1
	movq	-144(%rbp), %rdi
	callq	GLYPH_CHAR
	movslq	%eax, %rdi
	cmpq	-80(%rbp), %rdi
	jge	.LBB1_502
# BB#501:                               # %lor.lhs.false.2558
                                        #   in Loop: Header=BB1_409 Depth=1
	movq	-144(%rbp), %rdi
	callq	GLYPH_CHAR
	movslq	%eax, %rdi
	movq	-88(%rbp), %rcx
	movq	(%rcx,%rdi,8), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB1_503
.LBB1_502:                              # %if.then.2563
                                        #   in Loop: Header=BB1_409 Depth=1
	movq	-16(%rbp), %rax
	movl	40(%rax), %ecx
	movl	%ecx, -148(%rbp)
	jmp	.LBB1_519
.LBB1_503:                              # %if.else.2566
                                        #   in Loop: Header=BB1_409 Depth=1
	jmp	.LBB1_504
.LBB1_504:                              # %do.body.2567
                                        #   in Loop: Header=BB1_409 Depth=1
	jmp	.LBB1_505
.LBB1_505:                              # %while.cond.2568
                                        #   Parent Loop BB1_409 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-144(%rbp), %rdi
	callq	GLYPH_FACE
	xorl	%ecx, %ecx
	movb	%cl, %dl
	cmpl	$0, %eax
	movb	%dl, -797(%rbp)         # 1-byte Spill
	jne	.LBB1_508
# BB#506:                               # %land.lhs.true.2572
                                        #   in Loop: Header=BB1_505 Depth=2
	movq	-144(%rbp), %rdi
	callq	GLYPH_CHAR
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rdi
	cmpq	-80(%rbp), %rdi
	movb	%dl, -797(%rbp)         # 1-byte Spill
	jge	.LBB1_508
# BB#507:                               # %land.rhs
                                        #   in Loop: Header=BB1_505 Depth=2
	movq	-144(%rbp), %rdi
	callq	GLYPH_CHAR
	movslq	%eax, %rdi
	movq	-88(%rbp), %rcx
	movq	(%rcx,%rdi,8), %rcx
	andq	$7, %rcx
	movl	%ecx, %eax
	andl	$-5, %eax
	cmpl	$2, %eax
	sete	%dl
	movb	%dl, -797(%rbp)         # 1-byte Spill
.LBB1_508:                              # %land.end
                                        #   in Loop: Header=BB1_505 Depth=2
	movb	-797(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB1_509
	jmp	.LBB1_510
.LBB1_509:                              # %while.body.2585
                                        #   in Loop: Header=BB1_505 Depth=2
	movq	-144(%rbp), %rdi
	callq	GLYPH_CHAR
	movslq	%eax, %rdi
	movq	-88(%rbp), %rcx
	movq	(%rcx,%rdi,8), %rcx
	sarq	$2, %rcx
	movl	%ecx, %eax
	movl	%eax, -144(%rbp)
	jmp	.LBB1_505
.LBB1_510:                              # %while.end
                                        #   in Loop: Header=BB1_409 Depth=1
	movq	-144(%rbp), %rdi
	callq	GLYPH_CHAR_VALID_P
	testb	$1, %al
	jne	.LBB1_512
# BB#511:                               # %if.then.2593
                                        #   in Loop: Header=BB1_409 Depth=1
	movl	$32, -144(%rbp)
.LBB1_512:                              # %if.end.2595
                                        #   in Loop: Header=BB1_409 Depth=1
	jmp	.LBB1_513
.LBB1_513:                              # %do.end.2596
                                        #   in Loop: Header=BB1_409 Depth=1
	movq	-144(%rbp), %rdi
	callq	GLYPH_FACE
	cmpl	$0, %eax
	jne	.LBB1_516
# BB#514:                               # %lor.lhs.false.2600
                                        #   in Loop: Header=BB1_409 Depth=1
	movq	-144(%rbp), %rdi
	callq	GLYPH_CHAR
	movslq	%eax, %rdi
	cmpq	-80(%rbp), %rdi
	jge	.LBB1_516
# BB#515:                               # %lor.lhs.false.2605
                                        #   in Loop: Header=BB1_409 Depth=1
	movq	-144(%rbp), %rdi
	callq	GLYPH_CHAR
	movslq	%eax, %rdi
	movq	-88(%rbp), %rcx
	movq	(%rcx,%rdi,8), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB1_517
.LBB1_516:                              # %if.then.2610
                                        #   in Loop: Header=BB1_409 Depth=1
	movq	-144(%rbp), %rdi
	callq	GLYPH_CHAR
	movl	%eax, -148(%rbp)
	jmp	.LBB1_518
.LBB1_517:                              # %if.else.2612
                                        #   in Loop: Header=BB1_409 Depth=1
	movq	-144(%rbp), %rdi
	callq	GLYPH_CHAR
	movslq	%eax, %rdi
	movq	-88(%rbp), %rcx
	movq	(%rcx,%rdi,8), %rcx
	movq	%rcx, -160(%rbp)
.LBB1_518:                              # %if.end.2616
                                        #   in Loop: Header=BB1_409 Depth=1
	jmp	.LBB1_519
.LBB1_519:                              # %if.end.2617
                                        #   in Loop: Header=BB1_409 Depth=1
	xorl	%edi, %edi
	movq	-160(%rbp), %rax
	movq	%rax, -808(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-808(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB1_547
# BB#520:                               # %if.then.2621
                                        #   in Loop: Header=BB1_409 Depth=1
	movq	-48(%rbp), %rax
	movq	encode_terminal_src, %rcx
	subq	%rcx, %rax
	movq	%rax, -64(%rbp)
	movq	encode_terminal_src_size, %rax
	subq	-64(%rbp), %rax
	cmpq	$5, %rax
	jge	.LBB1_522
# BB#521:                               # %if.then.2628
                                        #   in Loop: Header=BB1_409 Depth=1
	movabsq	$encode_terminal_src_size, %rsi
	movl	$5, %eax
	movl	%eax, %edx
	movq	$-1, %rcx
	movl	$1, %eax
	movl	%eax, %r8d
	movq	encode_terminal_src, %rdi
	callq	xpalloc
	movq	%rax, encode_terminal_src
	movq	encode_terminal_src, %rax
	addq	-64(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB1_522:                              # %if.end.2631
                                        #   in Loop: Header=BB1_409 Depth=1
	cmpl	$4194175, -148(%rbp)    # imm = 0x3FFF7F
	jg	.LBB1_524
# BB#523:                               # %lor.lhs.false.2634
                                        #   in Loop: Header=BB1_409 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edx
	movl	-148(%rbp), %edi
	movq	-96(%rbp), %rsi
	callq	char_charset
	cmpq	$0, %rax
	je	.LBB1_540
.LBB1_524:                              # %if.then.2637
                                        #   in Loop: Header=BB1_409 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB1_525
	jmp	.LBB1_526
.LBB1_525:                              # %cond.true.2638
                                        #   in Loop: Header=BB1_409 Depth=1
	movl	-148(%rbp), %eax
	addl	$0, %eax
	cmpl	$127, %eax
	jbe	.LBB1_527
	jmp	.LBB1_528
.LBB1_526:                              # %cond.false.2642
                                        #   in Loop: Header=BB1_409 Depth=1
	movslq	-148(%rbp), %rax
	addq	$0, %rax
	cmpq	$127, %rax
	ja	.LBB1_528
.LBB1_527:                              # %cond.true.2647
                                        #   in Loop: Header=BB1_409 Depth=1
	movl	$1, %eax
	movl	-148(%rbp), %ecx
	movb	%cl, %dl
	movq	-48(%rbp), %rsi
	movb	%dl, (%rsi)
	movl	%eax, -812(%rbp)        # 4-byte Spill
	jmp	.LBB1_539
.LBB1_528:                              # %cond.false.2650
                                        #   in Loop: Header=BB1_409 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB1_529
	jmp	.LBB1_530
.LBB1_529:                              # %cond.true.2651
                                        #   in Loop: Header=BB1_409 Depth=1
	movl	-148(%rbp), %eax
	addl	$0, %eax
	cmpl	$2047, %eax             # imm = 0x7FF
	jbe	.LBB1_531
	jmp	.LBB1_532
.LBB1_530:                              # %cond.false.2655
                                        #   in Loop: Header=BB1_409 Depth=1
	movslq	-148(%rbp), %rax
	addq	$0, %rax
	cmpq	$2047, %rax             # imm = 0x7FF
	ja	.LBB1_532
.LBB1_531:                              # %cond.true.2660
                                        #   in Loop: Header=BB1_409 Depth=1
	movl	$2, %eax
	movl	-148(%rbp), %ecx
	sarl	$6, %ecx
	orl	$192, %ecx
	movb	%cl, %dl
	movq	-48(%rbp), %rsi
	movb	%dl, (%rsi)
	movl	-148(%rbp), %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movq	-48(%rbp), %rsi
	movb	%dl, 1(%rsi)
	movl	%eax, -816(%rbp)        # 4-byte Spill
	jmp	.LBB1_538
.LBB1_532:                              # %cond.false.2669
                                        #   in Loop: Header=BB1_409 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB1_533
	jmp	.LBB1_534
.LBB1_533:                              # %cond.true.2670
                                        #   in Loop: Header=BB1_409 Depth=1
	movl	-148(%rbp), %eax
	addl	$0, %eax
	cmpl	$65535, %eax            # imm = 0xFFFF
	jbe	.LBB1_535
	jmp	.LBB1_536
.LBB1_534:                              # %cond.false.2674
                                        #   in Loop: Header=BB1_409 Depth=1
	movslq	-148(%rbp), %rax
	addq	$0, %rax
	cmpq	$65535, %rax            # imm = 0xFFFF
	ja	.LBB1_536
.LBB1_535:                              # %cond.true.2679
                                        #   in Loop: Header=BB1_409 Depth=1
	movl	$3, %eax
	movl	-148(%rbp), %ecx
	sarl	$12, %ecx
	orl	$224, %ecx
	movb	%cl, %dl
	movq	-48(%rbp), %rsi
	movb	%dl, (%rsi)
	movl	-148(%rbp), %ecx
	sarl	$6, %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movq	-48(%rbp), %rsi
	movb	%dl, 1(%rsi)
	movl	-148(%rbp), %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movq	-48(%rbp), %rsi
	movb	%dl, 2(%rsi)
	movl	%eax, -820(%rbp)        # 4-byte Spill
	jmp	.LBB1_537
.LBB1_536:                              # %cond.false.2693
                                        #   in Loop: Header=BB1_409 Depth=1
	movl	-148(%rbp), %edi
	movq	-48(%rbp), %rsi
	callq	char_string
	movl	%eax, -820(%rbp)        # 4-byte Spill
.LBB1_537:                              # %cond.end.2695
                                        #   in Loop: Header=BB1_409 Depth=1
	movl	-820(%rbp), %eax        # 4-byte Reload
	movl	%eax, -816(%rbp)        # 4-byte Spill
.LBB1_538:                              # %cond.end.2697
                                        #   in Loop: Header=BB1_409 Depth=1
	movl	-816(%rbp), %eax        # 4-byte Reload
	movl	%eax, -812(%rbp)        # 4-byte Spill
.LBB1_539:                              # %cond.end.2699
                                        #   in Loop: Header=BB1_409 Depth=1
	movl	-812(%rbp), %eax        # 4-byte Reload
	movq	-48(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -48(%rbp)
	movq	-56(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	jmp	.LBB1_546
.LBB1_540:                              # %if.else.2704
                                        #   in Loop: Header=BB1_409 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	movb	$63, (%rax)
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
.LBB1_541:                              # %while.cond.2706
                                        #   Parent Loop BB1_409 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	addq	$48, %rdx
	cmpq	-40(%rbp), %rdx
	movb	%cl, -821(%rbp)         # 1-byte Spill
	jae	.LBB1_543
# BB#542:                               # %land.rhs.2710
                                        #   in Loop: Header=BB1_541 Depth=2
	movq	-16(%rbp), %rax
	movl	72(%rax), %ecx
	shrl	$7, %ecx
	andl	$1, %ecx
	movb	%cl, %dl
	movb	%dl, -821(%rbp)         # 1-byte Spill
.LBB1_543:                              # %land.end.2718
                                        #   in Loop: Header=BB1_541 Depth=2
	movb	-821(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB1_544
	jmp	.LBB1_545
.LBB1_544:                              # %while.body.2719
                                        #   in Loop: Header=BB1_541 Depth=2
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	movb	$63, (%rax)
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	addq	$48, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB1_541
.LBB1_545:                              # %while.end.2723
                                        #   in Loop: Header=BB1_409 Depth=1
	jmp	.LBB1_546
.LBB1_546:                              # %if.end.2724
                                        #   in Loop: Header=BB1_409 Depth=1
	jmp	.LBB1_552
.LBB1_547:                              # %if.else.2725
                                        #   in Loop: Header=BB1_409 Depth=1
	movq	-160(%rbp), %rdi
	callq	STRING_MULTIBYTE
	testb	$1, %al
	jne	.LBB1_549
# BB#548:                               # %if.then.2727
                                        #   in Loop: Header=BB1_409 Depth=1
	movq	-160(%rbp), %rdi
	callq	string_to_multibyte
	movq	%rax, -160(%rbp)
.LBB1_549:                              # %if.end.2729
                                        #   in Loop: Header=BB1_409 Depth=1
	movq	-48(%rbp), %rax
	movq	encode_terminal_src, %rcx
	subq	%rcx, %rax
	movq	%rax, -64(%rbp)
	movq	encode_terminal_src_size, %rax
	subq	-64(%rbp), %rax
	movq	-160(%rbp), %rdi
	movq	%rax, -832(%rbp)        # 8-byte Spill
	callq	SBYTES
	movq	-832(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jge	.LBB1_551
# BB#550:                               # %if.then.2737
                                        #   in Loop: Header=BB1_409 Depth=1
	movq	encode_terminal_src, %rdi
	movq	-160(%rbp), %rax
	movq	%rdi, -840(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	SBYTES
	movabsq	$encode_terminal_src_size, %rsi
	movq	$-1, %rcx
	movl	$1, %edx
	movl	%edx, %r8d
	movq	encode_terminal_src_size, %rdi
	subq	-64(%rbp), %rdi
	subq	%rdi, %rax
	movq	-840(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	xpalloc
	movq	%rax, encode_terminal_src
	movq	encode_terminal_src, %rax
	addq	-64(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB1_551:                              # %if.end.2743
                                        #   in Loop: Header=BB1_409 Depth=1
	movq	-48(%rbp), %rdi
	movq	-160(%rbp), %rax
	movq	%rdi, -848(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	SDATA
	movq	-160(%rbp), %rdi
	movq	%rax, -856(%rbp)        # 8-byte Spill
	callq	SBYTES
	movq	-848(%rbp), %rdi        # 8-byte Reload
	movq	-856(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	memcpy
	movq	-160(%rbp), %rdi
	callq	SBYTES
	addq	-48(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-160(%rbp), %rdi
	callq	SCHARS
	addq	-56(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB1_552:                              # %if.end.2750
                                        #   in Loop: Header=BB1_409 Depth=1
	jmp	.LBB1_553
.LBB1_553:                              # %if.end.2751
                                        #   in Loop: Header=BB1_409 Depth=1
	jmp	.LBB1_554
.LBB1_554:                              # %if.end.2752
                                        #   in Loop: Header=BB1_409 Depth=1
	movq	-16(%rbp), %rax
	addq	$48, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB1_409
.LBB1_555:                              # %while.end.2754
	cmpq	$0, -56(%rbp)
	jne	.LBB1_557
# BB#556:                               # %if.then.2757
	movq	-32(%rbp), %rax
	movq	$0, 384(%rax)
	movq	$0, -8(%rbp)
	jmp	.LBB1_560
.LBB1_557:                              # %if.end.2758
	movq	-48(%rbp), %rax
	movq	encode_terminal_src, %rcx
	subq	%rcx, %rax
	movq	%rax, -64(%rbp)
	movq	encode_terminal_src, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 456(%rcx)
	cmpq	$0, encode_terminal_dst_size
	jne	.LBB1_559
# BB#558:                               # %if.then.2764
	movq	encode_terminal_dst, %rdi
	movq	encode_terminal_src_size, %rsi
	callq	xrealloc
	movq	%rax, encode_terminal_dst
	movq	encode_terminal_src_size, %rax
	movq	%rax, encode_terminal_dst_size
.LBB1_559:                              # %if.end.2766
	xorl	%edi, %edi
	movq	encode_terminal_dst, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 496(%rcx)
	movq	encode_terminal_dst_size, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 480(%rcx)
	movq	-32(%rbp), %rax
	movq	%rax, -864(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-56(%rbp), %r8
	movq	-64(%rbp), %r9
	movq	%rax, -872(%rbp)        # 8-byte Spill
	movq	%r9, -880(%rbp)         # 8-byte Spill
	movq	%r8, -888(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %ecx
	movq	-864(%rbp), %rdi        # 8-byte Reload
	movq	-872(%rbp), %rsi        # 8-byte Reload
	movq	%rcx, %rdx
	movq	-888(%rbp), %r8         # 8-byte Reload
	movq	-880(%rbp), %r9         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	encode_coding_object
	movq	-32(%rbp), %rax
	movq	496(%rax), %rax
	movq	%rax, encode_terminal_dst
	movq	-32(%rbp), %rax
	movq	480(%rax), %rax
	movq	%rax, encode_terminal_dst_size
	movq	encode_terminal_dst, %rax
	movq	%rax, -8(%rbp)
.LBB1_560:                              # %return
	movq	-8(%rbp), %rax
	addq	$896, %rsp              # imm = 0x380
	popq	%rbp
	retq
.Lfunc_end1:
	.size	encode_terminal_code, .Lfunc_end1-encode_terminal_code
	.cfi_endproc

	.globl	string_cost
	.align	16, 0x90
	.type	string_cost,@function
string_cost:                            # @string_cost
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
	movl	$0, cost
	cmpq	$0, -8(%rbp)
	je	.LBB2_2
# BB#1:                                 # %if.then
	xorl	%esi, %esi
	movabsq	$evalcost, %rdx
	movq	-8(%rbp), %rdi
	callq	tputs
.LBB2_2:                                # %if.end
	movl	cost, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	string_cost, .Lfunc_end2-string_cost
	.cfi_endproc

	.globl	per_line_cost
	.align	16, 0x90
	.type	per_line_cost,@function
per_line_cost:                          # @per_line_cost
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
	movq	%rdi, -8(%rbp)
	movl	$0, cost
	cmpq	$0, -8(%rbp)
	je	.LBB3_2
# BB#1:                                 # %if.then
	xorl	%esi, %esi
	movabsq	$evalcost, %rdx
	movq	-8(%rbp), %rdi
	callq	tputs
.LBB3_2:                                # %if.end
	xorl	%eax, %eax
	subl	cost, %eax
	movl	%eax, cost
	cmpq	$0, -8(%rbp)
	je	.LBB3_4
# BB#3:                                 # %if.then.2
	movl	$10, %esi
	movabsq	$evalcost, %rdx
	movq	-8(%rbp), %rdi
	callq	tputs
.LBB3_4:                                # %if.end.3
	movl	cost, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	per_line_cost, .Lfunc_end3-per_line_cost
	.cfi_endproc

	.globl	calculate_costs
	.align	16, 0x90
	.type	calculate_costs,@function
calculate_costs:                        # @calculate_costs
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	globals+3048, %rdi
	movl	%edi, %eax
	movq	-8(%rbp), %rdi
	movl	%eax, 436(%rdi)
	movq	-8(%rbp), %rdi
	movq	208(%rdi), %rdi
	shrq	$23, %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$1, %eax
	jne	.LBB4_31
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	je	.LBB4_3
# BB#2:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB4_4
.LBB4_3:                                # %cond.true
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB4_5
.LBB4_4:                                # %cond.false
	callq	emacs_abort
.LBB4_5:                                # %cond.end
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rcx
	cmpq	$0, 8416(%rcx)
	je	.LBB4_7
# BB#6:                                 # %cond.true.17
	movq	-16(%rbp), %rax
	movq	8416(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB4_8
.LBB4_7:                                # %cond.false.19
	movq	-16(%rbp), %rax
	movq	8424(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB4_8:                                # %cond.end.20
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	string_cost
	movq	-8(%rbp), %rdi
	movq	208(%rdi), %rdi
	shrq	$23, %rdi
	andq	$7, %rdi
	movl	%edi, %ecx
	cmpl	$1, %ecx
	movl	%eax, -44(%rbp)         # 4-byte Spill
	je	.LBB4_10
# BB#9:                                 # %lor.lhs.false.29
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB4_11
.LBB4_10:                               # %cond.true.37
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB4_12
.LBB4_11:                               # %cond.false.41
	callq	emacs_abort
.LBB4_12:                               # %cond.end.42
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	-44(%rbp), %ecx         # 4-byte Reload
	movl	%ecx, 8792(%rax)
	movq	-16(%rbp), %rdx
	movb	8776(%rdx), %sil
	andb	$-3, %sil
	orb	$2, %sil
	movb	%sil, 8776(%rdx)
	movl	max_frame_cols, %edi
	movq	-8(%rbp), %rdx
	cmpl	272(%rdx), %edi
	jle	.LBB4_14
# BB#13:                                # %cond.true.48
	movl	max_frame_cols, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB4_15
.LBB4_14:                               # %cond.false.49
	movq	-8(%rbp), %rax
	movl	272(%rax), %ecx
	movl	%ecx, -60(%rbp)         # 4-byte Spill
.LBB4_15:                               # %cond.end.51
	movl	-60(%rbp), %eax         # 4-byte Reload
	movabsq	$1152921504606846975, %rcx # imm = 0xFFFFFFFFFFFFFFF
	movl	%eax, max_frame_cols
	movslq	max_frame_cols, %rdx
	cmpq	%rdx, %rcx
	jae	.LBB4_17
# BB#16:                                # %if.then.56
	movq	$-1, %rdi
	callq	memory_full
.LBB4_17:                               # %if.end
	movq	char_ins_del_vector, %rax
	movslq	max_frame_cols, %rcx
	shlq	$3, %rcx
	addq	$4, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	xrealloc
	xorl	%esi, %esi
	movq	%rax, char_ins_del_vector
	movq	char_ins_del_vector, %rax
	movslq	max_frame_cols, %rcx
	shlq	$3, %rcx
	addq	$4, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	memset
	cmpq	$0, -24(%rbp)
	je	.LBB4_21
# BB#18:                                # %land.lhs.true
	movq	-16(%rbp), %rax
	cmpq	$0, 8368(%rax)
	jne	.LBB4_21
# BB#19:                                # %land.lhs.true.64
	movq	-16(%rbp), %rax
	cmpq	$0, 8448(%rax)
	jne	.LBB4_21
# BB#20:                                # %if.then.66
	movl	$1, %eax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	8576(%rcx), %rsi
	movq	-16(%rbp), %rcx
	movq	8376(%rcx), %rdx
	movq	-16(%rbp), %rcx
	movq	8560(%rcx), %rcx
	movq	-16(%rbp), %r8
	movq	8456(%r8), %r8
	movq	-24(%rbp), %r9
	movq	-24(%rbp), %r10
	movq	%r10, (%rsp)
	movl	$1, 8(%rsp)
	movl	%eax, -64(%rbp)         # 4-byte Spill
	callq	do_line_insertion_deletion_costs
	jmp	.LBB4_22
.LBB4_21:                               # %if.else
	xorl	%eax, %eax
	movl	%eax, %r9d
	movl	$1, %eax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	8368(%rcx), %rsi
	movq	-16(%rbp), %rcx
	movq	8376(%rcx), %rdx
	movq	-16(%rbp), %rcx
	movq	8448(%rcx), %rcx
	movq	-16(%rbp), %r8
	movq	8456(%r8), %r8
	movq	$0, (%rsp)
	movl	$1, 8(%rsp)
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	do_line_insertion_deletion_costs
.LBB4_22:                               # %if.end.71
	movq	-8(%rbp), %rdi
	callq	calculate_ins_del_char_costs
	movq	-16(%rbp), %rdi
	cmpq	$0, 8544(%rdi)
	je	.LBB4_25
# BB#23:                                # %land.lhs.true.73
	movq	-16(%rbp), %rax
	movq	8544(%rax), %rdi
	callq	per_line_cost
	movslq	%eax, %rdi
	imulq	globals+3048, %rdi
	cmpq	$9000, %rdi             # imm = 0x2328
	jge	.LBB4_25
# BB#24:                                # %if.then.80
	movq	-16(%rbp), %rax
	movq	8544(%rax), %rdi
	callq	string_cost
	movq	-16(%rbp), %rdi
	movl	%eax, 8772(%rdi)
	jmp	.LBB4_26
.LBB4_25:                               # %if.else.83
	movq	-8(%rbp), %rax
	movl	272(%rax), %ecx
	shll	$1, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 8772(%rax)
.LBB4_26:                               # %if.end.87
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	je	.LBB4_28
# BB#27:                                # %lor.lhs.false.95
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB4_29
.LBB4_28:                               # %cond.true.103
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	88(%rax), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	jmp	.LBB4_30
.LBB4_29:                               # %cond.false.107
	callq	emacs_abort
.LBB4_30:                               # %cond.end.108
	movq	-80(%rbp), %rdi         # 8-byte Reload
	callq	cmcostinit
.LBB4_31:                               # %if.end.110
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	calculate_costs, .Lfunc_end4-calculate_costs
	.cfi_endproc

	.align	16, 0x90
	.type	calculate_ins_del_char_costs,@function
calculate_ins_del_char_costs:           # @calculate_ins_del_char_costs
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	208(%rdi), %rdi
	shrq	$23, %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$1, %eax
	je	.LBB5_2
# BB#1:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB5_3
.LBB5_2:                                # %cond.true
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB5_4
.LBB5_3:                                # %cond.false
	callq	emacs_abort
.LBB5_4:                                # %cond.end
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rcx
	cmpq	$0, 8496(%rcx)
	je	.LBB5_6
# BB#5:                                 # %if.then
	movl	$0, -28(%rbp)
	movq	-16(%rbp), %rax
	movq	8496(%rax), %rdi
	callq	string_cost_one_line
	movl	%eax, -20(%rbp)
	jmp	.LBB5_13
.LBB5_6:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, 8488(%rax)
	jne	.LBB5_10
# BB#7:                                 # %lor.lhs.false.10
	movq	-16(%rbp), %rax
	cmpq	$0, 8512(%rax)
	jne	.LBB5_10
# BB#8:                                 # %lor.lhs.false.12
	movq	-16(%rbp), %rax
	cmpq	$0, 8504(%rax)
	je	.LBB5_11
# BB#9:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	cmpq	$0, 8480(%rax)
	je	.LBB5_11
.LBB5_10:                               # %if.then.15
	movq	-16(%rbp), %rax
	movq	8504(%rax), %rdi
	callq	string_cost
	movq	-16(%rbp), %rdi
	movq	8480(%rdi), %rdi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	string_cost
	movl	$100, %ecx
	movl	-60(%rbp), %edx         # 4-byte Reload
	addl	%eax, %edx
	imull	$30, %edx, %eax
	cltd
	idivl	%ecx
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rdi
	movq	8488(%rdi), %rdi
	callq	string_cost_one_line
	movq	-16(%rbp), %rdi
	movq	8512(%rdi), %rdi
	movl	%eax, -64(%rbp)         # 4-byte Spill
	callq	string_cost_one_line
	movl	-64(%rbp), %ecx         # 4-byte Reload
	addl	%eax, %ecx
	movl	%ecx, -28(%rbp)
	jmp	.LBB5_12
.LBB5_11:                               # %if.else.25
	movl	$9999, -20(%rbp)        # imm = 0x270F
	movl	$0, -28(%rbp)
.LBB5_12:                               # %if.end
	jmp	.LBB5_13
.LBB5_13:                               # %if.end.26
	movq	-16(%rbp), %rax
	cmpq	$0, 8440(%rax)
	je	.LBB5_15
# BB#14:                                # %if.then.28
	movl	$0, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	8440(%rax), %rdi
	callq	string_cost_one_line
	movl	%eax, -24(%rbp)
	jmp	.LBB5_21
.LBB5_15:                               # %if.else.31
	movq	-16(%rbp), %rax
	cmpq	$0, 8432(%rax)
	je	.LBB5_19
# BB#16:                                # %if.then.33
	movq	-16(%rbp), %rax
	movq	8464(%rax), %rdi
	callq	string_cost
	movq	-16(%rbp), %rdi
	movq	8472(%rdi), %rdi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	string_cost
	movl	-68(%rbp), %ecx         # 4-byte Reload
	addl	%eax, %ecx
	movl	%ecx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movb	8776(%rdi), %dl
	andb	$1, %dl
	testb	$1, %dl
	je	.LBB5_18
# BB#17:                                # %if.then.40
	movl	$2, %eax
	movl	-24(%rbp), %ecx
	movl	%eax, -72(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-72(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movl	%eax, -24(%rbp)
.LBB5_18:                               # %if.end.42
	movq	-16(%rbp), %rax
	movq	8432(%rax), %rdi
	callq	string_cost_one_line
	movl	%eax, -32(%rbp)
	jmp	.LBB5_20
.LBB5_19:                               # %if.else.45
	movl	$9999, -24(%rbp)        # imm = 0x270F
	movl	$0, -32(%rbp)
.LBB5_20:                               # %if.end.46
	jmp	.LBB5_21
.LBB5_21:                               # %if.end.47
	movq	-8(%rbp), %rax
	movslq	272(%rax), %rax
	shlq	$2, %rax
	addq	char_ins_del_vector, %rax
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movl	272(%rax), %ecx
	movl	%ecx, -36(%rbp)
.LBB5_22:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -36(%rbp)
	cmpl	$0, %eax
	jl	.LBB5_24
# BB#23:                                # %for.body
                                        #   in Loop: Header=BB5_22 Depth=1
	movl	-32(%rbp), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$-4, %rdx
	movq	%rdx, -48(%rbp)
	movl	%eax, -4(%rcx)
	jmp	.LBB5_22
.LBB5_24:                               # %for.end
	movq	-8(%rbp), %rax
	movslq	272(%rax), %rax
	shlq	$2, %rax
	addq	char_ins_del_vector, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$4, %rcx
	movq	%rcx, -48(%rbp)
	movl	$0, (%rax)
	movq	-8(%rbp), %rax
	movl	272(%rax), %edx
	movl	%edx, -36(%rbp)
.LBB5_25:                               # %for.cond.58
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -36(%rbp)
	cmpl	$0, %eax
	jl	.LBB5_27
# BB#26:                                # %for.body.61
                                        #   in Loop: Header=BB5_25 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, -20(%rbp)
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$4, %rdx
	movq	%rdx, -48(%rbp)
	movl	%eax, (%rcx)
	jmp	.LBB5_25
.LBB5_27:                               # %for.end.64
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	calculate_ins_del_char_costs, .Lfunc_end5-calculate_ins_del_char_costs
	.cfi_endproc

	.globl	tty_append_glyph
	.align	16, 0x90
	.type	tty_append_glyph,@function
tty_append_glyph:                       # @tty_append_glyph
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	append_glyph
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	tty_append_glyph, .Lfunc_end6-tty_append_glyph
	.cfi_endproc

	.align	16, 0x90
	.type	append_glyph,@function
append_glyph:                           # @append_glyph
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movslq	2360(%rdi), %rdi
	movq	-8(%rbp), %rax
	movq	2352(%rax), %rax
	movq	(%rax,%rdi,8), %rax
	movq	-8(%rbp), %rdi
	movslq	2360(%rdi), %rdi
	movq	-8(%rbp), %rcx
	movq	2352(%rcx), %rcx
	movswl	32(%rcx,%rdi,2), %edx
	movslq	%edx, %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	2360(%rax), %edx
	addl	$1, %edx
	movslq	%edx, %rax
	movq	-8(%rbp), %rcx
	movq	2352(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	2352(%rax), %rax
	movq	236(%rax), %rax
	shrq	$34, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB7_9
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	cmpl	$1, 2360(%rax)
	jne	.LBB7_9
# BB#2:                                 # %if.then
	movl	$48, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movl	2368(%rdx), %eax
	movl	%eax, -44(%rbp)
	movslq	-44(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdi
	subq	%rdi, %rsi
	movq	%rsi, %rax
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	cqto
	idivq	%rcx
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jle	.LBB7_4
# BB#3:                                 # %if.then.17
	movl	$48, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	subq	%rsi, %rdx
	movq	%rdx, %rax
	cqto
	idivq	%rcx
	movl	%eax, %edi
	movl	%edi, -44(%rbp)
.LBB7_4:                                # %if.end
	movq	-16(%rbp), %rax
	addq	$-48, %rax
	movq	%rax, -40(%rbp)
.LBB7_5:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	movslq	2360(%rcx), %rcx
	movq	-8(%rbp), %rdx
	movq	2352(%rdx), %rdx
	cmpq	(%rdx,%rcx,8), %rax
	jb	.LBB7_8
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB7_5 Depth=1
	movl	$48, %eax
	movl	%eax, %edx
	movslq	-44(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	-40(%rbp), %rcx
	movq	-40(%rbp), %rsi
	movq	%rcx, %rdi
	callq	memcpy
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB7_5 Depth=1
	movq	-40(%rbp), %rax
	addq	$-48, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB7_5
.LBB7_8:                                # %for.end
	movq	-8(%rbp), %rax
	movslq	2360(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	2352(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movslq	-44(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -24(%rbp)
.LBB7_9:                                # %if.end.40
	movl	$0, -28(%rbp)
.LBB7_10:                               # %for.cond.41
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rdx
	cmpl	2368(%rdx), %eax
	movb	%cl, -57(%rbp)          # 1-byte Spill
	jge	.LBB7_12
# BB#11:                                # %land.rhs
                                        #   in Loop: Header=BB7_10 Depth=1
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	setb	%cl
	movb	%cl, -57(%rbp)          # 1-byte Spill
.LBB7_12:                               # %land.end
                                        #   in Loop: Header=BB7_10 Depth=1
	movb	-57(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB7_13
	jmp	.LBB7_18
.LBB7_13:                               # %for.body.47
                                        #   in Loop: Header=BB7_10 Depth=1
	movq	-16(%rbp), %rax
	movl	24(%rax), %ecx
	andl	$-8, %ecx
	movl	%ecx, 24(%rax)
	movq	-16(%rbp), %rax
	movw	$1, 16(%rax)
	movq	-8(%rbp), %rax
	movl	2208(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 40(%rax)
	movq	-8(%rbp), %rax
	movl	2108(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	28(%rax), %edx
	andl	$1048575, %ecx          # imm = 0xFFFFF
	andl	$-1048576, %edx         # imm = 0xFFFFFFFFFFF00000
	orl	%ecx, %edx
	movl	%edx, 28(%rax)
	cmpl	$0, -28(%rbp)
	setg	%sil
	movq	-16(%rbp), %rax
	andb	$1, %sil
	movzbl	%sil, %ecx
	movl	24(%rax), %edx
	shll	$7, %ecx
	andl	$-129, %edx
	orl	%ecx, %edx
	movl	%edx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	2296(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-8(%rbp), %rax
	movq	2288(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, 8(%rdi)
	movq	-8(%rbp), %rax
	movl	2456(%rax), %ecx
	shrl	$20, %ecx
	andl	$1, %ecx
	testl	$1, %ecx
	je	.LBB7_15
# BB#14:                                # %if.then.65
                                        #   in Loop: Header=BB7_10 Depth=1
	movq	-8(%rbp), %rax
	movsbl	2516(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	24(%rax), %edx
	andl	$127, %ecx
	shll	$10, %ecx
	andl	$-130049, %edx          # imm = 0xFFFFFFFFFFFE03FF
	orl	%ecx, %edx
	movl	%edx, 24(%rax)
	movq	-8(%rbp), %rax
	movl	2504(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	24(%rax), %edx
	andl	$7, %ecx
	shll	$17, %ecx
	andl	$-917505, %edx          # imm = 0xFFFFFFFFFFF1FFFF
	orl	%ecx, %edx
	movl	%edx, 24(%rax)
	jmp	.LBB7_16
.LBB7_15:                               # %if.else
                                        #   in Loop: Header=BB7_10 Depth=1
	movq	-16(%rbp), %rax
	movl	24(%rax), %ecx
	andl	$-130049, %ecx          # imm = 0xFFFFFFFFFFFE03FF
	movl	%ecx, 24(%rax)
	movq	-16(%rbp), %rax
	movl	24(%rax), %ecx
	andl	$-917505, %ecx          # imm = 0xFFFFFFFFFFF1FFFF
	movl	%ecx, 24(%rax)
.LBB7_16:                               # %if.end.86
                                        #   in Loop: Header=BB7_10 Depth=1
	movq	-8(%rbp), %rax
	movslq	2360(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	2352(%rcx), %rcx
	movw	32(%rcx,%rax,2), %dx
	addw	$1, %dx
	movw	%dx, 32(%rcx,%rax,2)
	movq	-16(%rbp), %rax
	addq	$48, %rax
	movq	%rax, -16(%rbp)
# BB#17:                                # %for.inc.93
                                        #   in Loop: Header=BB7_10 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB7_10
.LBB7_18:                               # %for.end.95
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	append_glyph, .Lfunc_end7-append_glyph
	.cfi_endproc

	.globl	produce_glyphs
	.align	16, 0x90
	.type	produce_glyphs,@function
produce_glyphs:                         # @produce_glyphs
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$4, 2104(%rdi)
	jne	.LBB8_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	produce_stretch_glyph
	jmp	.LBB8_51
.LBB8_2:                                # %if.end
	movq	-8(%rbp), %rax
	cmpl	$1, 2104(%rax)
	jne	.LBB8_4
# BB#3:                                 # %if.then.3
	movq	-8(%rbp), %rdi
	callq	produce_composite_glyph
	jmp	.LBB8_51
.LBB8_4:                                # %if.end.4
	movq	-8(%rbp), %rax
	cmpl	$2, 2104(%rax)
	jne	.LBB8_6
# BB#5:                                 # %if.then.7
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	produce_glyphless_glyph
	jmp	.LBB8_51
.LBB8_6:                                # %if.end.8
	movq	-8(%rbp), %rax
	cmpl	$32, 2208(%rax)
	jl	.LBB8_11
# BB#7:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	cmpl	$127, 2208(%rax)
	jge	.LBB8_11
# BB#8:                                 # %if.then.12
	movq	-8(%rbp), %rax
	movl	$1, 2364(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 2368(%rax)
	movq	-8(%rbp), %rax
	cmpq	$0, 2352(%rax)
	je	.LBB8_10
# BB#9:                                 # %if.then.13
	movq	-8(%rbp), %rdi
	callq	append_glyph
.LBB8_10:                               # %if.end.14
	jmp	.LBB8_50
.LBB8_11:                               # %if.else
	movq	-8(%rbp), %rax
	cmpl	$10, 2208(%rax)
	jne	.LBB8_13
# BB#12:                                # %if.then.17
	movq	-8(%rbp), %rax
	movl	$0, 2364(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 2368(%rax)
	jmp	.LBB8_49
.LBB8_13:                               # %if.else.20
	movq	-8(%rbp), %rax
	cmpl	$9, 2208(%rax)
	jne	.LBB8_20
# BB#14:                                # %if.then.23
	movq	-8(%rbp), %rax
	movl	2404(%rax), %ecx
	movq	-8(%rbp), %rax
	addl	2408(%rax), %ecx
	movl	%ecx, -12(%rbp)
	movl	-12(%rbp), %ecx
	addl	$1, %ecx
	movq	-8(%rbp), %rax
	movswl	2274(%rax), %edx
	addl	%edx, %ecx
	subl	$1, %ecx
	movq	-8(%rbp), %rax
	movswl	2274(%rax), %edx
	movl	%ecx, %eax
	movl	%edx, -52(%rbp)         # 4-byte Spill
	cltd
	movl	-52(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movq	-8(%rbp), %rsi
	movswl	2274(%rsi), %edi
	imull	%edi, %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	subl	-12(%rbp), %eax
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rsi
	cmpq	$0, 2352(%rsi)
	je	.LBB8_19
# BB#15:                                # %if.then.33
	movl	-20(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-8(%rbp), %rcx
	movl	$32, 2208(%rcx)
	movq	-8(%rbp), %rcx
	movl	$1, 2128(%rcx)
	movq	-8(%rbp), %rcx
	movl	$1, 2368(%rcx)
.LBB8_16:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -24(%rbp)
	cmpl	$0, %eax
	je	.LBB8_18
# BB#17:                                # %while.body
                                        #   in Loop: Header=BB8_16 Depth=1
	movq	-8(%rbp), %rdi
	callq	append_glyph
	jmp	.LBB8_16
.LBB8_18:                               # %while.end
	jmp	.LBB8_19
.LBB8_19:                               # %if.end.37
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 2368(%rcx)
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 2364(%rcx)
	jmp	.LBB8_48
.LBB8_20:                               # %if.else.40
	movq	-8(%rbp), %rax
	cmpl	$4194175, 2208(%rax)    # imm = 0x3FFF7F
	jle	.LBB8_24
# BB#21:                                # %if.then.44
	movq	-8(%rbp), %rax
	movl	$1, 2364(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 2368(%rax)
	movq	-8(%rbp), %rax
	cmpq	$0, 2352(%rax)
	je	.LBB8_23
# BB#22:                                # %if.then.49
	movq	-8(%rbp), %rdi
	callq	append_glyph
.LBB8_23:                               # %if.end.50
	jmp	.LBB8_47
.LBB8_24:                               # %if.else.51
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	376(%rcx), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	movl	2208(%rcx), %edi
	movq	-32(%rbp), %rsi
	callq	char_charset
	cmpq	$0, %rax
	je	.LBB8_45
# BB#25:                                # %if.then.56
	movb	$1, %al
	testb	$1, %al
	jne	.LBB8_26
	jmp	.LBB8_27
.LBB8_26:                               # %cond.true
	movq	-8(%rbp), %rax
	movl	2208(%rax), %ecx
	addl	$0, %ecx
	cmpl	$128, %ecx
	jb	.LBB8_28
	jmp	.LBB8_41
.LBB8_27:                               # %cond.false
	movq	-8(%rbp), %rax
	movslq	2208(%rax), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB8_41
.LBB8_28:                               # %cond.true.66
	movq	-8(%rbp), %rax
	cmpl	$32, 2208(%rax)
	jge	.LBB8_36
# BB#29:                                # %cond.true.70
	movq	-8(%rbp), %rax
	cmpl	$9, 2208(%rax)
	jne	.LBB8_31
# BB#30:                                # %cond.true.74
	movq	current_buffer, %rax
	movq	152(%rax), %rax
	sarq	$2, %rax
	movq	%rax, %rdi
	callq	sanitize_tab_width
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB8_35
.LBB8_31:                               # %cond.false.76
	movq	-8(%rbp), %rax
	cmpl	$10, 2208(%rax)
	jne	.LBB8_33
# BB#32:                                # %cond.true.80
	xorl	%eax, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB8_34
.LBB8_33:                               # %cond.false.81
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	232(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$2, %edi
	movl	$4, %ecx
	movq	-72(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	cmovel	%ecx, %edi
	movl	%edi, -60(%rbp)         # 4-byte Spill
.LBB8_34:                               # %cond.end
	movl	-60(%rbp), %eax         # 4-byte Reload
	movl	%eax, -56(%rbp)         # 4-byte Spill
.LBB8_35:                               # %cond.end.86
	movl	-56(%rbp), %eax         # 4-byte Reload
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB8_40
.LBB8_36:                               # %cond.false.88
	movq	-8(%rbp), %rax
	cmpl	$127, 2208(%rax)
	jge	.LBB8_38
# BB#37:                                # %cond.true.92
	movl	$1, %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	jmp	.LBB8_39
.LBB8_38:                               # %cond.false.93
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	232(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$2, %edi
	movl	$4, %ecx
	movq	-88(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	cmovel	%ecx, %edi
	movl	%edi, -80(%rbp)         # 4-byte Spill
.LBB8_39:                               # %cond.end.99
	movl	-80(%rbp), %eax         # 4-byte Reload
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB8_40:                               # %cond.end.101
	movl	-76(%rbp), %eax         # 4-byte Reload
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB8_42
.LBB8_41:                               # %cond.false.103
	movq	globals+224, %rdi
	movq	-8(%rbp), %rax
	movl	2208(%rax), %esi
	callq	CHAR_TABLE_REF
	sarq	$2, %rax
	movq	%rax, %rdi
	callq	sanitize_char_width
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB8_42:                               # %cond.end.108
	movl	-92(%rbp), %eax         # 4-byte Reload
	movq	-8(%rbp), %rcx
	movl	%eax, 2368(%rcx)
	movq	-8(%rbp), %rcx
	movl	2368(%rcx), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 2364(%rcx)
	movq	-8(%rbp), %rcx
	cmpq	$0, 2352(%rcx)
	je	.LBB8_44
# BB#43:                                # %if.then.115
	movq	-8(%rbp), %rdi
	callq	append_glyph
.LBB8_44:                               # %if.end.116
	jmp	.LBB8_46
.LBB8_45:                               # %if.else.117
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	movq	-8(%rbp), %rsi
	callq	lookup_glyphless_char_display
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	produce_glyphless_glyph
.LBB8_46:                               # %if.end.119
	jmp	.LBB8_47
.LBB8_47:                               # %if.end.120
	jmp	.LBB8_48
.LBB8_48:                               # %if.end.121
	jmp	.LBB8_49
.LBB8_49:                               # %if.end.122
	jmp	.LBB8_50
.LBB8_50:                               # %if.end.123
	jmp	.LBB8_51
.LBB8_51:                               # %done
	movq	-8(%rbp), %rax
	cmpl	$1, 2360(%rax)
	jne	.LBB8_53
# BB#52:                                # %if.then.126
	movq	-8(%rbp), %rax
	movl	2368(%rax), %ecx
	movq	-8(%rbp), %rax
	addl	2404(%rax), %ecx
	movl	%ecx, 2404(%rax)
.LBB8_53:                               # %if.end.130
	movq	-8(%rbp), %rax
	movl	$0, 2396(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 2388(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 2380(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 2372(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 2400(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 2392(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 2384(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 2376(%rax)
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	produce_glyphs, .Lfunc_end8-produce_glyphs
	.cfi_endproc

	.align	16, 0x90
	.type	produce_composite_glyph,@function
produce_composite_glyph:                # @produce_composite_glyph
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$0, 2152(%rdi)
	jge	.LBB9_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	2144(%rax), %rax
	movq	composition_table, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	16(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 2368(%rax)
	jmp	.LBB9_3
.LBB9_2:                                # %if.else
	movq	-8(%rbp), %rax
	movq	2144(%rax), %rdi
	callq	composition_gstring_from_id
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rax
	movslq	2192(%rax), %rsi
	movq	-8(%rbp), %rax
	movslq	2196(%rax), %rdx
	callq	composition_gstring_width
	movq	-8(%rbp), %rcx
	movl	%eax, 2368(%rcx)
.LBB9_3:                                # %if.end
	movq	-8(%rbp), %rax
	movl	$1, 2364(%rax)
	movq	-8(%rbp), %rax
	cmpq	$0, 2352(%rax)
	je	.LBB9_5
# BB#4:                                 # %if.then.10
	movq	-8(%rbp), %rdi
	callq	append_composite_glyph
.LBB9_5:                                # %if.end.11
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	produce_composite_glyph, .Lfunc_end9-produce_composite_glyph
	.cfi_endproc

	.align	16, 0x90
	.type	produce_glyphless_glyph,@function
produce_glyphless_glyph:                # @produce_glyphless_glyph
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	merge_glyphless_glyph_face
	movabsq	$.L.str.116, %rsi
	movl	%eax, -24(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-8(%rbp), %rsi
	cmpl	$0, 2212(%rsi)
	jne	.LBB10_2
# BB#1:                                 # %if.then
	movl	$1, -20(%rbp)
	jmp	.LBB10_49
.LBB10_2:                               # %if.else
	movq	-8(%rbp), %rax
	cmpl	$1, 2212(%rax)
	jne	.LBB10_26
# BB#3:                                 # %if.then.3
	movb	$1, %al
	testb	$1, %al
	jne	.LBB10_4
	jmp	.LBB10_5
.LBB10_4:                               # %cond.true
	movq	-8(%rbp), %rax
	movl	2124(%rax), %ecx
	addl	$0, %ecx
	cmpl	$128, %ecx
	jb	.LBB10_6
	jmp	.LBB10_19
.LBB10_5:                               # %cond.false
	movq	-8(%rbp), %rax
	movslq	2124(%rax), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB10_19
.LBB10_6:                               # %cond.true.9
	movq	-8(%rbp), %rax
	cmpl	$32, 2124(%rax)
	jge	.LBB10_14
# BB#7:                                 # %cond.true.13
	movq	-8(%rbp), %rax
	cmpl	$9, 2124(%rax)
	jne	.LBB10_9
# BB#8:                                 # %cond.true.17
	movq	current_buffer, %rax
	movq	152(%rax), %rax
	sarq	$2, %rax
	movq	%rax, %rdi
	callq	sanitize_tab_width
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB10_13
.LBB10_9:                               # %cond.false.19
	movq	-8(%rbp), %rax
	cmpl	$10, 2124(%rax)
	jne	.LBB10_11
# BB#10:                                # %cond.true.23
	xorl	%eax, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB10_12
.LBB10_11:                              # %cond.false.24
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
.LBB10_12:                              # %cond.end
	movl	-56(%rbp), %eax         # 4-byte Reload
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB10_13:                              # %cond.end.29
	movl	-52(%rbp), %eax         # 4-byte Reload
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB10_18
.LBB10_14:                              # %cond.false.31
	movq	-8(%rbp), %rax
	cmpl	$127, 2124(%rax)
	jge	.LBB10_16
# BB#15:                                # %cond.true.35
	movl	$1, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jmp	.LBB10_17
.LBB10_16:                              # %cond.false.36
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
.LBB10_17:                              # %cond.end.42
	movl	-72(%rbp), %eax         # 4-byte Reload
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB10_18:                              # %cond.end.44
	movl	-68(%rbp), %eax         # 4-byte Reload
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jmp	.LBB10_20
.LBB10_19:                              # %cond.false.46
	movq	globals+224, %rdi
	movq	-8(%rbp), %rax
	movl	2124(%rax), %esi
	callq	CHAR_TABLE_REF
	sarq	$2, %rax
	movq	%rax, %rdi
	callq	sanitize_char_width
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB10_20:                              # %cond.end.51
	movl	-84(%rbp), %eax         # 4-byte Reload
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.LBB10_22
# BB#21:                                # %if.then.55
	movl	$1, -20(%rbp)
	jmp	.LBB10_25
.LBB10_22:                              # %if.else.56
	cmpl	$4, -20(%rbp)
	jle	.LBB10_24
# BB#23:                                # %if.then.59
	movl	$4, -20(%rbp)
.LBB10_24:                              # %if.end
	jmp	.LBB10_25
.LBB10_25:                              # %if.end.60
	movabsq	$.L.str.117, %rsi
	leaq	-35(%rbp), %rdi
	movl	-20(%rbp), %edx
	movq	-48(%rbp), %rcx
	movb	$0, %al
	callq	sprintf
	leaq	-35(%rbp), %rcx
	movl	%eax, -20(%rbp)
	movq	%rcx, -48(%rbp)
	jmp	.LBB10_48
.LBB10_26:                              # %if.else.63
	movq	-8(%rbp), %rax
	cmpl	$2, 2212(%rax)
	jne	.LBB10_43
# BB#27:                                # %if.then.67
	movq	-16(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB10_30
# BB#28:                                # %land.lhs.true
	movq	globals+952, %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB10_29
	jmp	.LBB10_30
.LBB10_29:                              # %if.then.71
	movq	globals+952, %rdi
	movq	-8(%rbp), %rax
	movl	2124(%rax), %esi
	callq	CHAR_TABLE_REF
	movq	%rax, -16(%rbp)
.LBB10_30:                              # %if.end.74
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB10_32
# BB#31:                                # %if.then.78
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
.LBB10_32:                              # %if.end.79
	movb	$91, -35(%rbp)
	movq	-16(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB10_33
	jmp	.LBB10_34
.LBB10_33:                              # %cond.true.82
	movq	-16(%rbp), %rdi
	callq	SSDATA
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB10_35
.LBB10_34:                              # %cond.false.84
	movabsq	$.L.str.11, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB10_35
.LBB10_35:                              # %cond.end.85
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -48(%rbp)
	movl	$0, -20(%rbp)
.LBB10_36:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$6, -20(%rbp)
	movb	%cl, -97(%rbp)          # 1-byte Spill
	jge	.LBB10_39
# BB#37:                                # %land.lhs.true.89
                                        #   in Loop: Header=BB10_36 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movslq	-20(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movsbl	(%rsi,%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -97(%rbp)          # 1-byte Spill
	je	.LBB10_39
# BB#38:                                # %land.rhs
                                        #   in Loop: Header=BB10_36 Depth=1
	movslq	-20(%rbp), %rax
	movq	-48(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	addl	$0, %edx
	cmpl	$128, %edx
	setb	%sil
	movb	%sil, -97(%rbp)         # 1-byte Spill
.LBB10_39:                              # %land.end
                                        #   in Loop: Header=BB10_36 Depth=1
	movb	-97(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB10_40
	jmp	.LBB10_42
.LBB10_40:                              # %for.body
                                        #   in Loop: Header=BB10_36 Depth=1
	movslq	-20(%rbp), %rax
	movq	-48(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movl	-20(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rax
	movb	%dl, -35(%rbp,%rax)
# BB#41:                                # %for.inc
                                        #   in Loop: Header=BB10_36 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB10_36
.LBB10_42:                              # %for.end
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movb	$93, -35(%rbp,%rcx)
	movl	-20(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB10_47
.LBB10_43:                              # %if.else.107
	leaq	-35(%rbp), %rdi
	movq	-8(%rbp), %rax
	cmpl	$65536, 2124(%rax)      # imm = 0x10000
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	jge	.LBB10_45
# BB#44:                                # %cond.true.112
	movabsq	$.L.str.118, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB10_46
.LBB10_45:                              # %cond.false.113
	movabsq	$.L.str.120, %rax
	movabsq	$.L.str.119, %rcx
	movq	-8(%rbp), %rdx
	cmpl	$1114111, 2124(%rdx)    # imm = 0x10FFFF
	cmovleq	%rcx, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB10_46:                              # %cond.end.118
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx
	movl	2124(%rcx), %edx
	addl	$0, %edx
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	sprintf
	movl	%eax, -20(%rbp)
.LBB10_47:                              # %if.end.123
	leaq	-35(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB10_48:                              # %if.end.125
	jmp	.LBB10_49
.LBB10_49:                              # %if.end.126
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 2368(%rcx)
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 2364(%rcx)
	movq	-8(%rbp), %rcx
	cmpq	$0, 2352(%rcx)
	je	.LBB10_51
# BB#50:                                # %if.then.128
	movq	-8(%rbp), %rdi
	movl	-24(%rbp), %esi
	movq	-48(%rbp), %rdx
	callq	append_glyphless_glyph
.LBB10_51:                              # %if.end.129
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	produce_glyphless_glyph, .Lfunc_end10-produce_glyphless_glyph
	.cfi_endproc

	.globl	tty_capable_p
	.align	16, 0x90
	.type	tty_capable_p,@function
tty_capable_p:                          # @tty_capable_p
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
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	-20(%rbp), %esi
	andl	$1, %esi
	cmpl	$0, %esi
	je	.LBB11_6
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	cmpq	$0, 8568(%rax)
	je	.LBB11_5
# BB#2:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	cmpl	$0, 8716(%rax)
	jle	.LBB11_4
# BB#3:                                 # %cond.true
	movq	-16(%rbp), %rax
	movl	8712(%rax), %ecx
	andl	$4, %ecx
	cmpl	$0, %ecx
	je	.LBB11_6
	jmp	.LBB11_5
.LBB11_4:                               # %cond.false
	movb	$1, %al
	testb	$1, %al
	jne	.LBB11_6
	jmp	.LBB11_5
.LBB11_5:                               # %if.then
	movb	$0, -1(%rbp)
	jmp	.LBB11_31
.LBB11_6:                               # %if.end
	movl	-20(%rbp), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	.LBB11_12
# BB#7:                                 # %land.lhs.true.6
	movq	-16(%rbp), %rax
	cmpq	$0, 8680(%rax)
	je	.LBB11_11
# BB#8:                                 # %lor.lhs.false.8
	movq	-16(%rbp), %rax
	cmpl	$0, 8716(%rax)
	jle	.LBB11_10
# BB#9:                                 # %cond.true.11
	movq	-16(%rbp), %rax
	movl	8712(%rax), %ecx
	andl	$2, %ecx
	cmpl	$0, %ecx
	je	.LBB11_12
	jmp	.LBB11_11
.LBB11_10:                              # %cond.false.15
	movb	$1, %al
	testb	$1, %al
	jne	.LBB11_12
	jmp	.LBB11_11
.LBB11_11:                              # %if.then.16
	movb	$0, -1(%rbp)
	jmp	.LBB11_31
.LBB11_12:                              # %if.end.17
	movl	-20(%rbp), %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB11_18
# BB#13:                                # %land.lhs.true.20
	movq	-16(%rbp), %rax
	cmpq	$0, 8640(%rax)
	je	.LBB11_17
# BB#14:                                # %lor.lhs.false.22
	movq	-16(%rbp), %rax
	cmpl	$0, 8716(%rax)
	jle	.LBB11_16
# BB#15:                                # %cond.true.25
	movq	-16(%rbp), %rax
	movl	8712(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	je	.LBB11_18
	jmp	.LBB11_17
.LBB11_16:                              # %cond.false.29
	movb	$1, %al
	testb	$1, %al
	jne	.LBB11_18
	jmp	.LBB11_17
.LBB11_17:                              # %if.then.30
	movb	$0, -1(%rbp)
	jmp	.LBB11_31
.LBB11_18:                              # %if.end.31
	movl	-20(%rbp), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB11_24
# BB#19:                                # %land.lhs.true.34
	movq	-16(%rbp), %rax
	cmpq	$0, 8656(%rax)
	je	.LBB11_23
# BB#20:                                # %lor.lhs.false.36
	movq	-16(%rbp), %rax
	cmpl	$0, 8716(%rax)
	jle	.LBB11_22
# BB#21:                                # %cond.true.39
	movq	-16(%rbp), %rax
	movl	8712(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	je	.LBB11_24
	jmp	.LBB11_23
.LBB11_22:                              # %cond.false.43
	movb	$1, %al
	testb	$1, %al
	jne	.LBB11_24
	jmp	.LBB11_23
.LBB11_23:                              # %if.then.44
	movb	$0, -1(%rbp)
	jmp	.LBB11_31
.LBB11_24:                              # %if.end.45
	movl	-20(%rbp), %eax
	andl	$16, %eax
	cmpl	$0, %eax
	je	.LBB11_30
# BB#25:                                # %land.lhs.true.48
	movq	-16(%rbp), %rax
	cmpq	$0, 8648(%rax)
	je	.LBB11_29
# BB#26:                                # %lor.lhs.false.50
	movq	-16(%rbp), %rax
	cmpl	$0, 8716(%rax)
	jle	.LBB11_28
# BB#27:                                # %cond.true.53
	movq	-16(%rbp), %rax
	movl	8712(%rax), %ecx
	andl	$8, %ecx
	cmpl	$0, %ecx
	je	.LBB11_30
	jmp	.LBB11_29
.LBB11_28:                              # %cond.false.57
	movb	$1, %al
	testb	$1, %al
	jne	.LBB11_30
	jmp	.LBB11_29
.LBB11_29:                              # %if.then.58
	movb	$0, -1(%rbp)
	jmp	.LBB11_31
.LBB11_30:                              # %if.end.59
	movb	$1, -1(%rbp)
.LBB11_31:                              # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end11:
	.size	tty_capable_p, .Lfunc_end11-tty_capable_p
	.cfi_endproc

	.globl	Ftty_display_color_p
	.align	16, 0x90
	.type	Ftty_display_color_p,@function
Ftty_display_color_p:                   # @Ftty_display_color_p
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_tty_terminal
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB12_3
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	cmpl	$0, 8716(%rax)
	jle	.LBB12_3
# BB#2:                                 # %cond.true
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB12_4
.LBB12_3:                               # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB12_4:                               # %cond.end
	movq	-24(%rbp), %rax         # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	Ftty_display_color_p, .Lfunc_end12-Ftty_display_color_p
	.cfi_endproc

	.globl	Ftty_display_color_cells
	.align	16, 0x90
	.type	Ftty_display_color_cells,@function
Ftty_display_color_cells:               # @Ftty_display_color_cells
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
	callq	decode_tty_terminal
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB13_2
# BB#1:                                 # %cond.true
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	movl	8716(%rax), %ecx
	movl	%ecx, -20(%rbp)         # 4-byte Spill
	jmp	.LBB13_3
.LBB13_2:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, -20(%rbp)         # 4-byte Spill
	jmp	.LBB13_3
.LBB13_3:                               # %cond.end
	movl	-20(%rbp), %eax         # 4-byte Reload
	movslq	%eax, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	Ftty_display_color_cells, .Lfunc_end13-Ftty_display_color_cells
	.cfi_endproc

	.globl	set_tty_color_mode
	.align	16, 0x90
	.type	set_tty_color_mode,@function
set_tty_color_mode:                     # @set_tty_color_mode
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
	subq	$112, %rsp
	movabsq	$.L.str, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rax, %rdi
	callq	build_string
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fintern_soft
	movl	$942, %edi              # imm = 0x3AE
	movq	%rax, -56(%rbp)
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	64(%rsi), %rsi
	movq	%rax, %rdi
	callq	assq_no_quit
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB14_2
# BB#1:                                 # %cond.true
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB14_3
.LBB14_2:                               # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB14_3:                               # %cond.end
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB14_5
# BB#4:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB14_12
.LBB14_5:                               # %if.else
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB14_10
# BB#6:                                 # %if.then.16
	movq	-32(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	Fsymbol_value
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fassq
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB14_8
# BB#7:                                 # %cond.true.23
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB14_9
.LBB14_8:                               # %cond.false.27
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB14_9:                               # %cond.end.29
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB14_11
.LBB14_10:                              # %if.else.31
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -40(%rbp)
.LBB14_11:                              # %if.end
	jmp	.LBB14_12
.LBB14_12:                              # %if.end.33
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB14_18
# BB#13:                                # %land.lhs.true
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB14_15
	jmp	.LBB14_14
.LBB14_14:                              # %cond.true.39
	movq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	movq	-40(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jle	.LBB14_16
	jmp	.LBB14_18
.LBB14_15:                              # %cond.false.42
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	sarq	$2, %rdx
	cmpq	%rdx, %rcx
	jg	.LBB14_18
.LBB14_16:                              # %land.lhs.true.46
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	jg	.LBB14_18
# BB#17:                                # %cond.true.50
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB14_19
.LBB14_18:                              # %cond.false.52
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB14_19
.LBB14_19:                              # %cond.end.53
	movq	-96(%rbp), %rax         # 8-byte Reload
	movl	%eax, %ecx
	movl	%ecx, -44(%rbp)
	movl	-44(%rbp), %ecx
	movq	-8(%rbp), %rax
	cmpl	96(%rax), %ecx
	je	.LBB14_21
# BB#20:                                # %if.then.58
	movl	-44(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 96(%rcx)
	movq	-8(%rbp), %rdi
	movl	-44(%rbp), %esi
	callq	tty_setup_colors
	movabsq	$.L.str.1, %rdi
	callq	intern
	movl	$1, %esi
	movl	%esi, %edi
	movq	%rax, %rsi
	movb	$0, %al
	callq	safe_call
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB14_21:                              # %if.end.62
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	set_tty_color_mode, .Lfunc_end14-set_tty_color_mode
	.cfi_endproc

	.align	16, 0x90
	.type	tty_setup_colors,@function
tty_setup_colors:                       # @tty_setup_colors
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$-1, -12(%rbp)
	jge	.LBB15_2
# BB#1:                                 # %if.then
	movl	$-1, -12(%rbp)
.LBB15_2:                               # %if.end
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	subl	$-1, %ecx
	movl	%eax, -16(%rbp)         # 4-byte Spill
	movl	%ecx, -20(%rbp)         # 4-byte Spill
	je	.LBB15_3
	jmp	.LBB15_8
.LBB15_8:                               # %if.end
	movl	-16(%rbp), %eax         # 4-byte Reload
	testl	%eax, %eax
	je	.LBB15_4
	jmp	.LBB15_9
.LBB15_9:                               # %if.end
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$8, %eax
	movl	%eax, -24(%rbp)         # 4-byte Spill
	je	.LBB15_6
	jmp	.LBB15_5
.LBB15_3:                               # %sw.bb
	movq	-8(%rbp), %rax
	movl	$0, 8716(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 8720(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 8712(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8728(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8744(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8736(%rax)
	jmp	.LBB15_7
.LBB15_4:                               # %sw.bb.1
	jmp	.LBB15_5
.LBB15_5:                               # %sw.default
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	callq	tty_default_color_capabilities
	jmp	.LBB15_7
.LBB15_6:                               # %sw.bb.2
	movabsq	$.L.str.123, %rax
	movabsq	$.L.str.122, %rcx
	movabsq	$.L.str.121, %rdx
	movq	-8(%rbp), %rsi
	movq	%rdx, 8728(%rsi)
	movq	-8(%rbp), %rdx
	movq	%rcx, 8736(%rdx)
	movq	-8(%rbp), %rcx
	movq	%rax, 8744(%rcx)
	movq	-8(%rbp), %rax
	movl	$8, 8716(%rax)
	movq	-8(%rbp), %rax
	movl	$64, 8720(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 8712(%rax)
.LBB15_7:                               # %sw.epilog
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	tty_setup_colors, .Lfunc_end15-tty_setup_colors
	.cfi_endproc

	.globl	Ftty_type
	.align	16, 0x90
	.type	Ftty_type,@function
Ftty_type:                              # @Ftty_type
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_tty_terminal
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB16_3
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	cmpq	$0, 16(%rax)
	je	.LBB16_3
# BB#2:                                 # %cond.true
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	movq	16(%rax), %rdi
	callq	build_string
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB16_4
.LBB16_3:                               # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB16_4:                               # %cond.end
	movq	-24(%rbp), %rax         # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	Ftty_type, .Lfunc_end16-Ftty_type
	.cfi_endproc

	.globl	Fcontrolling_tty_p
	.align	16, 0x90
	.type	Fcontrolling_tty_p,@function
Fcontrolling_tty_p:                     # @Fcontrolling_tty_p
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_tty_terminal
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB17_3
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.2, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB17_3
# BB#2:                                 # %cond.true
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB17_4
.LBB17_3:                               # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB17_4:                               # %cond.end
	movq	-24(%rbp), %rax         # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	Fcontrolling_tty_p, .Lfunc_end17-Fcontrolling_tty_p
	.cfi_endproc

	.globl	Ftty_no_underline
	.align	16, 0x90
	.type	Ftty_no_underline,@function
Ftty_no_underline:                      # @Ftty_no_underline
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_live_terminal
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$1, 56(%rax)
	jne	.LBB18_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	movq	$0, 8680(%rax)
.LBB18_2:                               # %if.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	Ftty_no_underline, .Lfunc_end18-Ftty_no_underline
	.cfi_endproc

	.globl	Ftty_top_frame
	.align	16, 0x90
	.type	Ftty_top_frame,@function
Ftty_top_frame:                         # @Ftty_top_frame
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	decode_live_terminal
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$1, 56(%rax)
	jne	.LBB19_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	movq	80(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB19_3
.LBB19_2:                               # %if.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB19_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	Ftty_top_frame, .Lfunc_end19-Ftty_top_frame
	.cfi_endproc

	.globl	Fsuspend_tty
	.align	16, 0x90
	.type	Fsuspend_tty,@function
Fsuspend_tty:                           # @Fsuspend_tty
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_tty_terminal
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB20_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.3, %rdi
	movb	$0, %al
	callq	error
.LBB20_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB20_8
# BB#3:                                 # %if.then.3
	movl	$5, %esi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movabsq	$.L.str.4, %rdi
	movq	%rax, -32(%rbp)
	callq	intern
	movl	$2, %esi
	movl	%esi, %edi
	leaq	-48(%rbp), %rsi
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	Frun_hook_with_args
	movq	-16(%rbp), %rsi
	movq	88(%rsi), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	reset_sys_modes
	movq	-24(%rbp), %rdi
	callq	fileno
	movl	%eax, %edi
	callq	delete_keyboard_wait_descriptor
	movq	-24(%rbp), %rdi
	callq	fclose
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	88(%rdi), %rdi
	cmpq	32(%rdi), %rsi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	je	.LBB20_5
# BB#4:                                 # %if.then.13
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	movq	32(%rax), %rdi
	callq	fclose
	movl	%eax, -64(%rbp)         # 4-byte Spill
.LBB20_5:                               # %if.end.18
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	movq	$0, 24(%rax)
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	movq	$0, 32(%rax)
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	movq	80(%rax), %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB20_6
	jmp	.LBB20_7
.LBB20_6:                               # %if.then.28
	xorl	%esi, %esi
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	movq	80(%rax), %rax
	subq	$5, %rax
	movq	%rax, %rdi
	callq	SET_FRAME_VISIBLE
.LBB20_7:                               # %if.end.32
	jmp	.LBB20_8
.LBB20_8:                               # %if.end.33
	movq	-16(%rbp), %rdi
	callq	clear_tty_hooks
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	Fsuspend_tty, .Lfunc_end20-Fsuspend_tty
	.cfi_endproc

	.align	16, 0x90
	.type	clear_tty_hooks,@function
clear_tty_hooks:                        # @clear_tty_hooks
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
	movabsq	$delete_tty, %rax
	movabsq	$tty_free_frame_resources, %rcx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	$0, 112(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 120(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 128(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 136(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 144(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 152(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 160(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 168(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 176(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 184(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 192(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 208(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 216(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 224(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 232(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 240(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 248(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 256(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 264(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 272(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 280(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 296(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 304(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 312(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 320(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 328(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 336(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 344(%rdi)
	movq	-8(%rbp), %rdi
	movq	%rcx, 352(%rdi)
	movq	-8(%rbp), %rcx
	movq	%rax, 360(%rcx)
	popq	%rbp
	retq
.Lfunc_end21:
	.size	clear_tty_hooks, .Lfunc_end21-clear_tty_hooks
	.cfi_endproc

	.globl	Fresume_tty
	.align	16, 0x90
	.type	Fresume_tty,@function
Fresume_tty:                            # @Fresume_tty
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_tty_terminal
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB22_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.5, %rdi
	movb	$0, %al
	callq	error
.LBB22_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	cmpq	$0, 24(%rax)
	jne	.LBB22_18
# BB#3:                                 # %if.then.3
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	movq	8(%rax), %rdi
	callq	get_named_terminal
	cmpq	$0, %rax
	je	.LBB22_5
# BB#4:                                 # %if.then.8
	movabsq	$.L.str.6, %rdi
	movb	$0, %al
	callq	error
.LBB22_5:                               # %if.end.9
	movl	$258, %esi              # imm = 0x102
	xorl	%edx, %edx
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	movq	8(%rax), %rdi
	callq	emacs_open
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jge	.LBB22_7
# BB#6:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB22_8
.LBB22_7:                               # %cond.false
	movabsq	$.L.str.7, %rsi
	movl	-20(%rbp), %edi
	callq	fdopen
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB22_8:                               # %cond.end
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	-16(%rbp), %rcx
	movq	88(%rcx), %rcx
	movq	%rax, 32(%rcx)
	movq	-16(%rbp), %rcx
	movq	88(%rcx), %rcx
	movq	%rax, 24(%rcx)
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	cmpq	$0, 24(%rax)
	jne	.LBB22_10
# BB#9:                                 # %if.then.24
	callq	__errno_location
	movl	(%rax), %ecx
	movl	%ecx, -24(%rbp)
	movl	-20(%rbp), %edi
	callq	emacs_close
	movq	-16(%rbp), %rdx
	movq	88(%rdx), %rdx
	movq	8(%rdx), %rdi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	build_string
	movabsq	$.L.str.8, %rdi
	movl	-24(%rbp), %edx
	movq	%rax, %rsi
	callq	report_file_errno
.LBB22_10:                              # %if.end.31
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.2, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB22_12
# BB#11:                                # %if.then.37
	movl	-20(%rbp), %edi
	callq	dissociate_if_controlling_tty
.LBB22_12:                              # %if.end.38
	movl	-20(%rbp), %edi
	callq	add_keyboard_wait_descriptor
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	movq	80(%rax), %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB22_13
	jmp	.LBB22_17
.LBB22_13:                              # %if.then.42
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	movq	80(%rax), %rax
	subq	$5, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	272(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movq	-32(%rbp), %rax
	movl	284(%rax), %ecx
	movl	%ecx, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	movq	24(%rax), %rdi
	callq	fileno
	leaq	-36(%rbp), %rsi
	leaq	-40(%rbp), %rdx
	movl	%eax, %edi
	callq	get_tty_size
	movl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jne	.LBB22_15
# BB#14:                                # %lor.lhs.false
	movl	-40(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.LBB22_16
.LBB22_15:                              # %if.then.52
	xorl	%eax, %eax
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %ecx
	movq	-32(%rbp), %rdx
	subl	356(%rdx), %ecx
	movl	%ecx, %edx
	movl	%eax, %ecx
	movl	%eax, %r8d
	movl	%eax, %r9d
	movl	$0, (%rsp)
	callq	change_frame_size
.LBB22_16:                              # %if.end.54
	movl	$1, %esi
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	movq	80(%rax), %rax
	subq	$5, %rax
	movq	%rax, %rdi
	callq	SET_FRAME_VISIBLE
.LBB22_17:                              # %if.end.59
	movq	-16(%rbp), %rdi
	callq	set_tty_hooks
	movq	-16(%rbp), %rdi
	movq	88(%rdi), %rdi
	callq	init_sys_modes
	movl	$5, %esi
	movq	-16(%rbp), %rdi
	callq	make_lisp_ptr
	movabsq	$.L.str.9, %rdi
	movq	%rax, -56(%rbp)
	callq	intern
	movl	$2, %esi
	movl	%esi, %edi
	leaq	-72(%rbp), %rsi
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	Frun_hook_with_args
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB22_18:                              # %if.end.65
	movq	-16(%rbp), %rdi
	callq	set_tty_hooks
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	Fresume_tty, .Lfunc_end22-Fresume_tty
	.cfi_endproc

	.align	16, 0x90
	.type	dissociate_if_controlling_tty,@function
dissociate_if_controlling_tty:          # @dissociate_if_controlling_tty
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
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	tcgetpgrp
	cmpl	$0, %eax
	jl	.LBB23_3
# BB#1:                                 # %land.lhs.true
	callq	setsid
	cmpl	$0, %eax
	jge	.LBB23_3
# BB#2:                                 # %if.then
	jmp	.LBB23_3
.LBB23_3:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	dissociate_if_controlling_tty, .Lfunc_end23-dissociate_if_controlling_tty
	.cfi_endproc

	.align	16, 0x90
	.type	set_tty_hooks,@function
set_tty_hooks:                          # @set_tty_hooks
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
.Ltmp75:
	.cfi_offset %rbx, -56
.Ltmp76:
	.cfi_offset %r12, -48
.Ltmp77:
	.cfi_offset %r13, -40
.Ltmp78:
	.cfi_offset %r14, -32
.Ltmp79:
	.cfi_offset %r15, -24
	movabsq	$delete_tty, %rax
	movabsq	$tty_free_frame_resources, %rcx
	movabsq	$tty_read_avail_input, %rdx
	movabsq	$tty_set_terminal_window, %rsi
	movabsq	$tty_menu_show, %r8
	movabsq	$tty_update_end, %r9
	movabsq	$tty_set_terminal_modes, %r10
	movabsq	$tty_reset_terminal_modes, %r11
	movabsq	$tty_ring_bell, %rbx
	movabsq	$tty_delete_glyphs, %r14
	movabsq	$tty_write_glyphs, %r15
	movabsq	$tty_insert_glyphs, %r12
	movabsq	$tty_ins_del_lines, %r13
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movabsq	$tty_clear_end_of_line, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movabsq	$tty_clear_frame, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movabsq	$tty_clear_to_end, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movabsq	$tty_raw_cursor_to, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movabsq	$tty_cursor_to, %rax
	movq	%rdi, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	%rax, 120(%rdi)
	movq	-48(%rbp), %rax
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rdi, 128(%rax)
	movq	-48(%rbp), %rax
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rdi, 136(%rax)
	movq	-48(%rbp), %rax
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rdi, 144(%rax)
	movq	-48(%rbp), %rax
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rdi, 152(%rax)
	movq	-48(%rbp), %rax
	movq	%r13, 160(%rax)
	movq	-48(%rbp), %rax
	movq	%r12, 168(%rax)
	movq	-48(%rbp), %rax
	movq	%r15, 176(%rax)
	movq	-48(%rbp), %rax
	movq	%r14, 184(%rax)
	movq	-48(%rbp), %rax
	movq	%rbx, 192(%rax)
	movq	-48(%rbp), %rax
	movq	%r11, 208(%rax)
	movq	-48(%rbp), %rax
	movq	%r10, 216(%rax)
	movq	-48(%rbp), %rax
	movq	%r9, 232(%rax)
	movq	-48(%rbp), %rax
	movq	%r8, 280(%rax)
	movq	-48(%rbp), %rax
	movq	%rsi, 240(%rax)
	movq	-48(%rbp), %rax
	movq	%rdx, 336(%rax)
	movq	-48(%rbp), %rax
	movq	%rcx, 352(%rax)
	movq	-48(%rbp), %rax
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, 360(%rax)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end24:
	.size	set_tty_hooks, .Lfunc_end24-set_tty_hooks
	.cfi_endproc

	.globl	tty_menu_show
	.align	16, 0x90
	.type	tty_menu_show,@function
tty_menu_show:                          # @tty_menu_show
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp80:
	.cfi_def_cfa_offset 16
.Ltmp81:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp82:
	.cfi_def_cfa_register %rbp
	subq	$608, %rsp              # imm = 0x260
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	$0, (%rdi)
	cmpl	$0, menu_items_n_panes
	jne	.LBB25_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB25_116
.LBB25_2:                               # %if.end
	cmpl	$3, menu_items_used
	jg	.LBB25_4
# BB#3:                                 # %if.then.3
	xorl	%edi, %edi
	movabsq	$.L.str.10, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB25_116
.LBB25_4:                               # %if.end.5
	callq	tty_menu_create
	movq	%rax, -56(%rbp)
	callq	inhibit_garbage_collection
	movq	%rax, -160(%rbp)
	movq	-16(%rbp), %rdi
	callq	temporarily_switch_to_single_kboard
	movq	-16(%rbp), %rax
	movl	304(%rax), %ecx
	addl	-20(%rbp), %ecx
	movl	%ecx, -20(%rbp)
	movl	%ecx, -116(%rbp)
	movq	-16(%rbp), %rax
	movl	308(%rax), %ecx
	addl	-24(%rbp), %ecx
	movl	%ecx, -24(%rbp)
	movl	%ecx, -120(%rbp)
	movq	$16384, -168(%rbp)      # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -176(%rbp)
	movb	$0, -177(%rbp)
	movl	$0, -132(%rbp)
	movl	$0, -140(%rbp)
	movl	$0, -144(%rbp)
	movl	$0, -148(%rbp)
	movl	$-1, -68(%rbp)
.LBB25_5:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_19 Depth 2
                                        #     Child Loop BB25_38 Depth 2
	movl	-132(%rbp), %eax
	cmpl	menu_items_used, %eax
	jge	.LBB25_49
# BB#6:                                 # %while.body
                                        #   in Loop: Header=BB25_5 Depth=1
	movq	menu_items, %rdi
	movslq	-132(%rbp), %rsi
	callq	AREF
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-272(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB25_28
# BB#7:                                 # %if.then.15
                                        #   in Loop: Header=BB25_5 Depth=1
	movl	-144(%rbp), %eax
	cmpl	-140(%rbp), %eax
	jle	.LBB25_9
# BB#8:                                 # %cond.true
                                        #   in Loop: Header=BB25_5 Depth=1
	movl	-144(%rbp), %eax
	movl	%eax, -276(%rbp)        # 4-byte Spill
	jmp	.LBB25_10
.LBB25_9:                               # %cond.false
                                        #   in Loop: Header=BB25_5 Depth=1
	movl	-140(%rbp), %eax
	movl	%eax, -276(%rbp)        # 4-byte Spill
.LBB25_10:                              # %cond.end
                                        #   in Loop: Header=BB25_5 Depth=1
	movl	-276(%rbp), %eax        # 4-byte Reload
	movl	%eax, -144(%rbp)
	movl	$0, -140(%rbp)
	movq	menu_items, %rdi
	movl	-132(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rsi
	callq	AREF
	movq	%rax, -192(%rbp)
	movq	menu_items, %rdi
	movl	-132(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rsi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -200(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-288(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB25_12
# BB#11:                                # %cond.true.27
                                        #   in Loop: Header=BB25_5 Depth=1
	movabsq	$.L.str.11, %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	jmp	.LBB25_13
.LBB25_12:                              # %cond.false.28
                                        #   in Loop: Header=BB25_5 Depth=1
	movq	-192(%rbp), %rdi
	callq	SSDATA
	movq	%rax, -296(%rbp)        # 8-byte Spill
.LBB25_13:                              # %cond.end.30
                                        #   in Loop: Header=BB25_5 Depth=1
	movq	-296(%rbp), %rax        # 8-byte Reload
	movq	%rax, -208(%rbp)
	movl	-28(%rbp), %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	je	.LBB25_16
# BB#14:                                # %land.lhs.true
                                        #   in Loop: Header=BB25_5 Depth=1
	xorl	%edi, %edi
	movq	-200(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-304(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB25_16
# BB#15:                                # %if.then.35
                                        #   in Loop: Header=BB25_5 Depth=1
	movq	-208(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -208(%rbp)
.LBB25_16:                              # %if.end.36
                                        #   in Loop: Header=BB25_5 Depth=1
	movq	-56(%rbp), %rdi
	movq	-208(%rbp), %rsi
	callq	tty_menu_add_pane
	movl	%eax, -68(%rbp)
	cmpl	$-1, -68(%rbp)
	jne	.LBB25_18
# BB#17:                                # %if.then.40
	movq	-56(%rbp), %rdi
	callq	tty_menu_destroy
	xorl	%edi, %edi
	movabsq	$.L.str.12, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	callq	builtin_lisp_symbol
	movq	%rax, -80(%rbp)
	jmp	.LBB25_111
.LBB25_18:                              # %if.end.42
                                        #   in Loop: Header=BB25_5 Depth=1
	movl	-132(%rbp), %eax
	addl	$3, %eax
	movl	%eax, -132(%rbp)
	movl	-132(%rbp), %eax
	movl	%eax, -136(%rbp)
.LBB25_19:                              # %while.cond.44
                                        #   Parent Loop BB25_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-136(%rbp), %eax
	cmpl	menu_items_used, %eax
	jge	.LBB25_27
# BB#20:                                # %while.body.47
                                        #   in Loop: Header=BB25_19 Depth=2
	movq	menu_items, %rdi
	movslq	-136(%rbp), %rsi
	callq	AREF
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-312(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB25_22
# BB#21:                                # %if.then.53
                                        #   in Loop: Header=BB25_5 Depth=1
	jmp	.LBB25_27
.LBB25_22:                              # %if.end.54
                                        #   in Loop: Header=BB25_19 Depth=2
	xorl	%edi, %edi
	movq	-216(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-320(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB25_24
# BB#23:                                # %if.then.58
                                        #   in Loop: Header=BB25_19 Depth=2
	movl	-136(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -136(%rbp)
	jmp	.LBB25_19
.LBB25_24:                              # %if.end.59
                                        #   in Loop: Header=BB25_19 Depth=2
	movq	-216(%rbp), %rdi
	callq	SBYTES
	movl	%eax, %ecx
	movl	%ecx, -108(%rbp)
	movl	-108(%rbp), %ecx
	cmpl	-148(%rbp), %ecx
	jle	.LBB25_26
# BB#25:                                # %if.then.64
                                        #   in Loop: Header=BB25_19 Depth=2
	movl	-108(%rbp), %eax
	movl	%eax, -148(%rbp)
.LBB25_26:                              # %if.end.65
                                        #   in Loop: Header=BB25_19 Depth=2
	movl	-136(%rbp), %eax
	addl	$8, %eax
	movl	%eax, -136(%rbp)
	jmp	.LBB25_19
.LBB25_27:                              # %while.end
                                        #   in Loop: Header=BB25_5 Depth=1
	jmp	.LBB25_48
.LBB25_28:                              # %if.else
                                        #   in Loop: Header=BB25_5 Depth=1
	movq	menu_items, %rdi
	movslq	-132(%rbp), %rsi
	callq	AREF
	movl	$783, %edi              # imm = 0x30F
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-328(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB25_30
# BB#29:                                # %if.then.72
                                        #   in Loop: Header=BB25_5 Depth=1
	movl	-132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -132(%rbp)
	jmp	.LBB25_47
.LBB25_30:                              # %if.else.74
                                        #   in Loop: Header=BB25_5 Depth=1
	movq	menu_items, %rdi
	movl	-132(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rsi
	callq	AREF
	movq	%rax, -224(%rbp)
	movq	menu_items, %rdi
	movl	-132(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rsi
	callq	AREF
	movq	%rax, -232(%rbp)
	movq	menu_items, %rdi
	movl	-132(%rbp), %ecx
	addl	$3, %ecx
	movslq	%ecx, %rsi
	callq	AREF
	movq	%rax, -240(%rbp)
	movq	menu_items, %rdi
	movl	-132(%rbp), %ecx
	addl	$7, %ecx
	movslq	%ecx, %rsi
	callq	AREF
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB25_31
	jmp	.LBB25_32
.LBB25_31:                              # %cond.true.89
                                        #   in Loop: Header=BB25_5 Depth=1
	movq	-248(%rbp), %rdi
	callq	SSDATA
	movq	%rax, -336(%rbp)        # 8-byte Spill
	jmp	.LBB25_33
.LBB25_32:                              # %cond.false.91
                                        #   in Loop: Header=BB25_5 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -336(%rbp)        # 8-byte Spill
	jmp	.LBB25_33
.LBB25_33:                              # %cond.end.92
                                        #   in Loop: Header=BB25_5 Depth=1
	movq	-336(%rbp), %rax        # 8-byte Reload
	xorl	%edi, %edi
	movq	%rax, -264(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-344(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB25_42
# BB#34:                                # %if.then.97
                                        #   in Loop: Header=BB25_5 Depth=1
	movslq	-148(%rbp), %rax
	movq	-240(%rbp), %rdi
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	SBYTES
	movq	-352(%rbp), %rdi        # 8-byte Reload
	addq	%rax, %rdi
	addq	$1, %rdi
	cmpq	-168(%rbp), %rdi
	jg	.LBB25_36
# BB#35:                                # %cond.true.104
                                        #   in Loop: Header=BB25_5 Depth=1
	movslq	-148(%rbp), %rax
	movq	-240(%rbp), %rdi
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	SBYTES
	movq	-360(%rbp), %rdi        # 8-byte Reload
	leaq	1(%rdi,%rax), %rax
	movq	-168(%rbp), %rdi
	subq	%rax, %rdi
	movq	%rdi, -168(%rbp)
	movslq	-148(%rbp), %rax
	movq	-240(%rbp), %rdi
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	SBYTES
	movq	-368(%rbp), %rdi        # 8-byte Reload
	leaq	16(%rdi,%rax), %rax
	andq	$-16, %rax
	movq	%rsp, %rdi
	subq	%rax, %rdi
	movq	%rdi, %rsp
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	jmp	.LBB25_37
.LBB25_36:                              # %cond.false.113
                                        #   in Loop: Header=BB25_5 Depth=1
	movb	$1, -177(%rbp)
	movslq	-148(%rbp), %rax
	movq	-240(%rbp), %rdi
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	SBYTES
	movq	-384(%rbp), %rdi        # 8-byte Reload
	addq	%rax, %rdi
	addq	$1, %rdi
	callq	record_xmalloc
	movq	%rax, -376(%rbp)        # 8-byte Spill
.LBB25_37:                              # %cond.end.119
                                        #   in Loop: Header=BB25_5 Depth=1
	movq	-376(%rbp), %rax        # 8-byte Reload
	movq	%rax, -256(%rbp)
	movq	-256(%rbp), %rdi
	movq	-224(%rbp), %rax
	movq	%rdi, -392(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	SSDATA
	movq	-224(%rbp), %rdi
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	SBYTES
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	-400(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	memcpy
	movq	-224(%rbp), %rdi
	callq	SCHARS
	movl	%eax, %ecx
	movl	%ecx, -136(%rbp)
.LBB25_38:                              # %for.cond
                                        #   Parent Loop BB25_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-136(%rbp), %eax
	cmpl	-148(%rbp), %eax
	jge	.LBB25_41
# BB#39:                                # %for.body
                                        #   in Loop: Header=BB25_38 Depth=2
	movslq	-136(%rbp), %rax
	movq	-256(%rbp), %rcx
	movb	$32, (%rcx,%rax)
# BB#40:                                # %for.inc
                                        #   in Loop: Header=BB25_38 Depth=2
	movl	-136(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -136(%rbp)
	jmp	.LBB25_38
.LBB25_41:                              # %for.end
                                        #   in Loop: Header=BB25_5 Depth=1
	movq	-256(%rbp), %rax
	movslq	-136(%rbp), %rcx
	addq	%rcx, %rax
	movq	-240(%rbp), %rdi
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	SSDATA
	movq	-240(%rbp), %rdi
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	SBYTES
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	-416(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	memcpy
	movslq	-136(%rbp), %rax
	movq	-240(%rbp), %rdi
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	SBYTES
	movq	-424(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	movq	-256(%rbp), %rax
	movb	$0, (%rax,%rcx)
	jmp	.LBB25_43
.LBB25_42:                              # %if.else.134
                                        #   in Loop: Header=BB25_5 Depth=1
	movq	-224(%rbp), %rdi
	callq	SSDATA
	movq	%rax, -256(%rbp)
.LBB25_43:                              # %if.end.136
                                        #   in Loop: Header=BB25_5 Depth=1
	cmpl	$-1, -68(%rbp)
	je	.LBB25_45
# BB#44:                                # %lor.lhs.false
                                        #   in Loop: Header=BB25_5 Depth=1
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movl	-68(%rbp), %esi
	movq	-256(%rbp), %rdx
	movq	-232(%rbp), %rcx
	movq	%rcx, -432(%rbp)        # 8-byte Spill
	movq	%rax, -440(%rbp)        # 8-byte Spill
	movl	%esi, -444(%rbp)        # 4-byte Spill
	movq	%rdx, -456(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-432(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%r8b
	xorb	$-1, %r8b
	movq	-264(%rbp), %rax
	movzbl	%r8b, %esi
	andl	$1, %esi
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movl	-444(%rbp), %r9d        # 4-byte Reload
	movl	%esi, -460(%rbp)        # 4-byte Spill
	movl	%r9d, %esi
	movq	-456(%rbp), %rdx        # 8-byte Reload
	movl	-460(%rbp), %ecx        # 4-byte Reload
	movq	%rax, %r8
	callq	tty_menu_add_selection
	testb	$1, %al
	jne	.LBB25_46
.LBB25_45:                              # %if.then.143
	movq	-56(%rbp), %rdi
	callq	tty_menu_destroy
	xorl	%edi, %edi
	movabsq	$.L.str.13, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	callq	builtin_lisp_symbol
	movq	%rax, -80(%rbp)
	jmp	.LBB25_111
.LBB25_46:                              # %if.end.145
                                        #   in Loop: Header=BB25_5 Depth=1
	movl	-132(%rbp), %eax
	addl	$8, %eax
	movl	%eax, -132(%rbp)
	movl	-140(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -140(%rbp)
.LBB25_47:                              # %if.end.148
                                        #   in Loop: Header=BB25_5 Depth=1
	jmp	.LBB25_48
.LBB25_48:                              # %if.end.149
                                        #   in Loop: Header=BB25_5 Depth=1
	jmp	.LBB25_5
.LBB25_49:                              # %while.end.150
	movl	-144(%rbp), %eax
	cmpl	-140(%rbp), %eax
	jle	.LBB25_51
# BB#50:                                # %cond.true.153
	movl	-144(%rbp), %eax
	movl	%eax, -464(%rbp)        # 4-byte Spill
	jmp	.LBB25_52
.LBB25_51:                              # %cond.false.154
	movl	-140(%rbp), %eax
	movl	%eax, -464(%rbp)        # 4-byte Spill
.LBB25_52:                              # %cond.end.155
	movl	-464(%rbp), %eax        # 4-byte Reload
	movl	%eax, -144(%rbp)
	movq	-16(%rbp), %rcx
	movl	272(%rcx), %eax
	movl	%eax, -124(%rbp)
	movq	-16(%rbp), %rcx
	movl	276(%rcx), %eax
	movl	%eax, -128(%rbp)
	movl	-20(%rbp), %eax
	cmpl	-124(%rbp), %eax
	jge	.LBB25_54
# BB#53:                                # %cond.true.159
	movl	-20(%rbp), %eax
	movl	%eax, -468(%rbp)        # 4-byte Spill
	jmp	.LBB25_55
.LBB25_54:                              # %cond.false.160
	movl	-124(%rbp), %eax
	movl	%eax, -468(%rbp)        # 4-byte Spill
.LBB25_55:                              # %cond.end.161
	movl	-468(%rbp), %eax        # 4-byte Reload
	movl	%eax, -20(%rbp)
	movl	-24(%rbp), %eax
	cmpl	-128(%rbp), %eax
	jge	.LBB25_57
# BB#56:                                # %cond.true.165
	movl	-24(%rbp), %eax
	movl	%eax, -472(%rbp)        # 4-byte Spill
	jmp	.LBB25_58
.LBB25_57:                              # %cond.false.166
	movl	-128(%rbp), %eax
	movl	%eax, -472(%rbp)        # 4-byte Spill
.LBB25_58:                              # %cond.end.167
	movl	-472(%rbp), %eax        # 4-byte Reload
	movl	%eax, -24(%rbp)
	cmpl	$1, -20(%rbp)
	jle	.LBB25_60
# BB#59:                                # %cond.true.171
	movl	-20(%rbp), %eax
	movl	%eax, -476(%rbp)        # 4-byte Spill
	jmp	.LBB25_61
.LBB25_60:                              # %cond.false.172
	movl	$1, %eax
	movl	%eax, -476(%rbp)        # 4-byte Spill
	jmp	.LBB25_61
.LBB25_61:                              # %cond.end.173
	movl	-476(%rbp), %eax        # 4-byte Reload
	movl	%eax, -20(%rbp)
	cmpl	$1, -24(%rbp)
	jle	.LBB25_63
# BB#62:                                # %cond.true.177
	movl	-24(%rbp), %eax
	movl	%eax, -480(%rbp)        # 4-byte Spill
	jmp	.LBB25_64
.LBB25_63:                              # %cond.false.178
	movl	$1, %eax
	movl	%eax, -480(%rbp)        # 4-byte Spill
	jmp	.LBB25_64
.LBB25_64:                              # %cond.end.179
	movl	-480(%rbp), %eax        # 4-byte Reload
	leaq	-100(%rbp), %rcx
	leaq	-104(%rbp), %r8
	leaq	-108(%rbp), %r9
	leaq	-112(%rbp), %rdx
	movl	%eax, -24(%rbp)
	movq	-56(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %eax
	subq	$16, %rsp
	movq	%rdx, -488(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movq	-488(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	callq	tty_menu_locate
	addq	$16, %rsp
	movl	-100(%rbp), %eax
	addl	-108(%rbp), %eax
	cmpl	-124(%rbp), %eax
	jle	.LBB25_66
# BB#65:                                # %if.then.184
	movl	-100(%rbp), %eax
	addl	-108(%rbp), %eax
	subl	-124(%rbp), %eax
	movl	-20(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -20(%rbp)
	movl	-124(%rbp), %eax
	subl	-108(%rbp), %eax
	movl	%eax, -100(%rbp)
.LBB25_66:                              # %if.end.189
	movl	-104(%rbp), %eax
	addl	-112(%rbp), %eax
	cmpl	-128(%rbp), %eax
	jle	.LBB25_68
# BB#67:                                # %if.then.193
	movl	-104(%rbp), %eax
	addl	-112(%rbp), %eax
	subl	-128(%rbp), %eax
	movl	-24(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -24(%rbp)
	movl	-128(%rbp), %eax
	subl	-112(%rbp), %eax
	movl	%eax, -104(%rbp)
.LBB25_68:                              # %if.end.198
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB25_69
	jmp	.LBB25_76
.LBB25_69:                              # %land.lhs.true.201
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdi
	callq	XWINDOW
	movq	8(%rax), %rax
	subq	$5, %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB25_76
# BB#70:                                # %land.lhs.true.207
	movl	-104(%rbp), %eax
	addl	-112(%rbp), %eax
	movl	-128(%rbp), %ecx
	subl	$2, %ecx
	cmpl	%ecx, %eax
	jle	.LBB25_76
# BB#71:                                # %if.then.212
	movq	echo_area_buffer, %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB25_72
	jmp	.LBB25_74
.LBB25_72:                              # %land.lhs.true.215
	movq	echo_area_window, %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB25_73
	jmp	.LBB25_74
.LBB25_73:                              # %if.then.218
	movq	echo_area_window, %rdi
	callq	XWINDOW
	movl	268(%rax), %ecx
	addl	$1, %ecx
	movl	-24(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -24(%rbp)
	movq	echo_area_window, %rdi
	callq	XWINDOW
	movl	268(%rax), %ecx
	addl	$1, %ecx
	movl	-104(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -104(%rbp)
	jmp	.LBB25_75
.LBB25_74:                              # %if.else.226
	movl	-24(%rbp), %eax
	subl	$2, %eax
	movl	%eax, -24(%rbp)
	movl	-104(%rbp), %eax
	subl	$2, %eax
	movl	%eax, -104(%rbp)
.LBB25_75:                              # %if.end.229
	jmp	.LBB25_76
.LBB25_76:                              # %if.end.230
	cmpl	$0, -100(%rbp)
	jge	.LBB25_78
# BB#77:                                # %if.then.233
	movl	-100(%rbp), %eax
	movl	-20(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -20(%rbp)
.LBB25_78:                              # %if.end.235
	cmpl	$0, -104(%rbp)
	jge	.LBB25_80
# BB#79:                                # %if.then.238
	movl	-104(%rbp), %eax
	movl	-24(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -24(%rbp)
.LBB25_80:                              # %if.end.240
	movl	$0, -64(%rbp)
	movl	$0, -60(%rbp)
	movq	-56(%rbp), %rdi
	movq	current_buffer(%rip), %rsi
	callq	make_save_ptr_ptr
	movl	$tty_pop_down_menu, %ecx
	movl	%ecx, %edi
	movq	%rax, %rsi
	callq	record_unwind_protect
	movl	$735, %edi              # imm = 0x2DF
	callq	builtin_lisp_symbol
	movl	$947, %edi              # imm = 0x3B3
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	Fsymbol_value
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
	movq	-56(%rbp), %rdi
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r8d
	movl	-28(%rbp), %edx
	andl	$4, %edx
	shrl	$2, %edx
	subq	$16, %rsp
	movq	%rsp, %rax
	movl	%edx, 8(%rax)
	movq	$tty_menu_help_callback, (%rax)
	leaq	-60(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	leaq	-96(%rbp), %r9
	callq	tty_menu_activate
	addq	$16, %rsp
	movl	%eax, -72(%rbp)
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -88(%rbp)
	movq	%rax, -80(%rbp)
	movl	-72(%rbp), %ecx
	incl	%ecx
	movl	%ecx, %eax
	subl	$6, %ecx
	movq	%rax, -504(%rbp)        # 8-byte Spill
	movl	%ecx, -508(%rbp)        # 4-byte Spill
	ja	.LBB25_110
# BB#117:                               # %if.end.240
	movq	-504(%rbp), %rax        # 8-byte Reload
	movq	.LJTI25_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB25_81:                              # %sw.bb
	movl	$0, -132(%rbp)
.LBB25_82:                              # %while.cond.249
                                        # =>This Inner Loop Header: Depth=1
	movl	-132(%rbp), %eax
	cmpl	menu_items_used, %eax
	jge	.LBB25_97
# BB#83:                                # %while.body.252
                                        #   in Loop: Header=BB25_82 Depth=1
	movq	menu_items, %rdi
	movslq	-132(%rbp), %rsi
	callq	AREF
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-520(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB25_87
# BB#84:                                # %if.then.258
                                        #   in Loop: Header=BB25_82 Depth=1
	cmpl	$0, -60(%rbp)
	jne	.LBB25_86
# BB#85:                                # %if.then.261
                                        #   in Loop: Header=BB25_82 Depth=1
	movq	menu_items, %rdi
	movl	-132(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rsi
	callq	AREF
	movq	%rax, -88(%rbp)
.LBB25_86:                              # %if.end.265
                                        #   in Loop: Header=BB25_82 Depth=1
	movl	-60(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -60(%rbp)
	movl	-132(%rbp), %eax
	addl	$3, %eax
	movl	%eax, -132(%rbp)
	jmp	.LBB25_96
.LBB25_87:                              # %if.else.267
                                        #   in Loop: Header=BB25_82 Depth=1
	cmpl	$-1, -60(%rbp)
	jne	.LBB25_95
# BB#88:                                # %if.then.270
                                        #   in Loop: Header=BB25_82 Depth=1
	cmpl	$0, -64(%rbp)
	jne	.LBB25_94
# BB#89:                                # %if.then.273
	movq	menu_items, %rdi
	movl	-132(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rsi
	callq	AREF
	movq	%rax, -80(%rbp)
	movl	-28(%rbp), %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	je	.LBB25_93
# BB#90:                                # %if.then.279
	xorl	%edi, %edi
	movq	-80(%rbp), %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	xorl	%edi, %edi
	movq	%rax, -80(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-536(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB25_92
# BB#91:                                # %if.then.285
	movq	-88(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	Fcons
	movq	%rax, -80(%rbp)
.LBB25_92:                              # %if.end.287
	jmp	.LBB25_93
.LBB25_93:                              # %if.end.288
	jmp	.LBB25_97
.LBB25_94:                              # %if.end.289
                                        #   in Loop: Header=BB25_82 Depth=1
	movl	-64(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -64(%rbp)
.LBB25_95:                              # %if.end.291
                                        #   in Loop: Header=BB25_82 Depth=1
	movl	-132(%rbp), %eax
	addl	$8, %eax
	movl	%eax, -132(%rbp)
.LBB25_96:                              # %if.end.293
                                        #   in Loop: Header=BB25_82 Depth=1
	jmp	.LBB25_82
.LBB25_97:                              # %while.end.294
	jmp	.LBB25_110
.LBB25_98:                              # %sw.bb.295
	leaq	-116(%rbp), %rdx
	leaq	-120(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movl	-72(%rbp), %esi
	callq	tty_menu_new_item_coords
	movslq	-116(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movslq	-120(%rbp), %rdx
	shlq	$2, %rdx
	addq	$2, %rdx
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	callq	Fcons
	movq	%rax, -80(%rbp)
	jmp	.LBB25_110
.LBB25_99:                              # %sw.bb.302
	movabsq	$.L.str.14, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB25_100:                             # %sw.bb.303
	jmp	.LBB25_110
.LBB25_101:                             # %sw.bb.304
	movq	-16(%rbp), %rax
	movq	selected_frame, %rdi
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB25_102
	jmp	.LBB25_104
.LBB25_102:                             # %land.lhs.true.307
	movq	selected_frame, %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB25_104
# BB#103:                               # %cond.true.311
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
	jmp	.LBB25_105
.LBB25_104:                             # %cond.false.313
	callq	emacs_abort
.LBB25_105:                             # %cond.end.314
	movq	-544(%rbp), %rax        # 8-byte Reload
	movq	-552(%rbp), %rcx        # 8-byte Reload
	cmpq	%rcx, %rax
	je	.LBB25_107
# BB#106:                               # %if.then.318
	callq	Ftop_level
	movq	%rax, -560(%rbp)        # 8-byte Spill
.LBB25_107:                             # %if.end.319
	movl	-28(%rbp), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	jne	.LBB25_109
# BB#108:                               # %if.then.322
	movl	$782, %edi              # imm = 0x30E
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fsignal
	movq	%rax, -576(%rbp)        # 8-byte Spill
.LBB25_109:                             # %if.end.326
	jmp	.LBB25_110
.LBB25_110:                             # %sw.epilog
	jmp	.LBB25_111
.LBB25_111:                             # %tty_menu_end
	jmp	.LBB25_112
.LBB25_112:                             # %do.body
	testb	$1, -177(%rbp)
	je	.LBB25_114
# BB#113:                               # %if.then.328
	xorl	%edi, %edi
	movb	$0, -177(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-584(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -592(%rbp)        # 8-byte Spill
.LBB25_114:                             # %if.end.331
	jmp	.LBB25_115
.LBB25_115:                             # %do.end
	xorl	%edi, %edi
	movq	-160(%rbp), %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-600(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	-80(%rbp), %rsi
	movq	%rsi, -8(%rbp)
	movq	%rax, -608(%rbp)        # 8-byte Spill
.LBB25_116:                             # %return
	movq	-8(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	tty_menu_show, .Lfunc_end25-tty_menu_show
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI25_0:
	.quad	.LBB25_99
	.quad	.LBB25_110
	.quad	.LBB25_81
	.quad	.LBB25_101
	.quad	.LBB25_100
	.quad	.LBB25_98
	.quad	.LBB25_98

	.text
	.align	16, 0x90
	.type	tty_menu_create,@function
tty_menu_create:                        # @tty_menu_create
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp83:
	.cfi_def_cfa_offset 16
.Ltmp84:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp85:
	.cfi_def_cfa_register %rbp
	movl	$56, %eax
	movl	%eax, %edi
	callq	xzalloc
	popq	%rbp
	retq
.Lfunc_end26:
	.size	tty_menu_create, .Lfunc_end26-tty_menu_create
	.cfi_endproc

	.align	16, 0x90
	.type	tty_menu_add_pane,@function
tty_menu_add_pane:                      # @tty_menu_add_pane
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp86:
	.cfi_def_cfa_offset 16
.Ltmp87:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp88:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	tty_menu_make_room
	callq	tty_menu_create
	movq	-8(%rbp), %rsi
	movslq	(%rsi), %rsi
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	%rax, (%rdi,%rsi,8)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rsi
	movslq	(%rsi), %rsi
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rax, (%rdi,%rsi,8)
	movq	-8(%rbp), %rax
	movl	40(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 40(%rax)
	movq	-8(%rbp), %rax
	movslq	(%rax), %rax
	movq	-8(%rbp), %rsi
	movq	24(%rsi), %rsi
	movl	%ecx, (%rsi,%rax,4)
	movq	-8(%rbp), %rax
	movslq	(%rax), %rax
	movq	-8(%rbp), %rsi
	movq	48(%rsi), %rsi
	movq	$0, (%rsi,%rax,8)
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rdi
	callq	menu_item_width
	movl	%eax, %ecx
	movl	%ecx, -20(%rbp)
	movl	-20(%rbp), %ecx
	movq	-8(%rbp), %rax
	cmpl	44(%rax), %ecx
	jle	.LBB27_2
# BB#1:                                 # %if.then
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 44(%rcx)
.LBB27_2:                               # %if.end
	movq	-8(%rbp), %rax
	movl	40(%rax), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	tty_menu_add_pane, .Lfunc_end27-tty_menu_add_pane
	.cfi_endproc

	.align	16, 0x90
	.type	tty_menu_destroy,@function
tty_menu_destroy:                       # @tty_menu_destroy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp89:
	.cfi_def_cfa_offset 16
.Ltmp90:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp91:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 32(%rdi)
	je	.LBB28_8
# BB#1:                                 # %if.then
	movl	$0, -12(%rbp)
.LBB28_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB28_7
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB28_2 Depth=1
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB28_5
# BB#4:                                 # %if.then.2
                                        #   in Loop: Header=BB28_2 Depth=1
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	tty_menu_destroy
.LBB28_5:                               # %if.end
                                        #   in Loop: Header=BB28_2 Depth=1
	jmp	.LBB28_6
.LBB28_6:                               # %for.inc
                                        #   in Loop: Header=BB28_2 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB28_2
.LBB28_7:                               # %for.end
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	xfree
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	callq	xfree
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	callq	xfree
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	callq	xfree
.LBB28_8:                               # %if.end.7
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
	movq	$0, prev_menu_help_message
	movq	$0, menu_help_message
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	tty_menu_destroy, .Lfunc_end28-tty_menu_destroy
	.cfi_endproc

	.align	16, 0x90
	.type	tty_menu_add_selection,@function
tty_menu_add_selection:                 # @tty_menu_add_selection
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp92:
	.cfi_def_cfa_offset 16
.Ltmp93:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp94:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movb	%cl, %al
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	andb	$1, %al
	movb	%al, -33(%rbp)
	movq	%r8, -48(%rbp)
	cmpl	$0, -20(%rbp)
	je	.LBB29_4
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	tty_menu_search_pane
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB29_3
# BB#2:                                 # %if.then.2
	movb	$0, -1(%rbp)
	jmp	.LBB29_7
.LBB29_3:                               # %if.end
	jmp	.LBB29_4
.LBB29_4:                               # %if.end.3
	movq	-16(%rbp), %rdi
	callq	tty_menu_make_room
	movq	-16(%rbp), %rdi
	movslq	(%rdi), %rdi
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	$0, (%rax,%rdi,8)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdi
	movslq	(%rdi), %rdi
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rax, (%rcx,%rdi,8)
	movb	-33(%rbp), %dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movq	-16(%rbp), %rax
	movslq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	24(%rcx), %rcx
	movl	%esi, (%rcx,%rax,4)
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	(%rcx), %rcx
	movq	-16(%rbp), %rdi
	movq	48(%rdi), %rdi
	movq	%rax, (%rdi,%rcx,8)
	movq	-16(%rbp), %rax
	movl	(%rax), %esi
	addl	$1, %esi
	movl	%esi, (%rax)
	movq	-32(%rbp), %rdi
	callq	menu_item_width
	movl	%eax, %esi
	movl	%esi, -52(%rbp)
	movl	-52(%rbp), %esi
	movq	-16(%rbp), %rax
	cmpl	44(%rax), %esi
	jle	.LBB29_6
# BB#5:                                 # %if.then.19
	movl	-52(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 44(%rcx)
.LBB29_6:                               # %if.end.21
	movb	$1, -1(%rbp)
.LBB29_7:                               # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	tty_menu_add_selection, .Lfunc_end29-tty_menu_add_selection
	.cfi_endproc

	.align	16, 0x90
	.type	tty_menu_locate,@function
tty_menu_locate:                        # @tty_menu_locate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp95:
	.cfi_def_cfa_offset 16
.Ltmp96:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp97:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	16(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	tty_menu_calc_size
	movl	-12(%rbp), %r10d
	addl	$1, %r10d
	movq	-24(%rbp), %rax
	movl	%r10d, (%rax)
	movl	-16(%rbp), %r10d
	movq	-32(%rbp), %rax
	movl	%r10d, (%rax)
	movq	-40(%rbp), %rax
	movl	(%rax), %r10d
	addl	$2, %r10d
	movl	%r10d, (%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	tty_menu_locate, .Lfunc_end30-tty_menu_locate
	.cfi_endproc

	.align	16, 0x90
	.type	tty_pop_down_menu,@function
tty_pop_down_menu:                      # @tty_pop_down_menu
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp98:
	.cfi_def_cfa_offset 16
.Ltmp99:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp100:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%esi, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	XSAVE_POINTER
	movl	$1, %esi
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	XSAVE_POINTER
	movq	%rax, -24(%rbp)
	callq	block_input
	movq	-16(%rbp), %rdi
	callq	tty_menu_destroy
	movq	-24(%rbp), %rdi
	callq	set_buffer_internal
	callq	unblock_input
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	tty_pop_down_menu, .Lfunc_end31-tty_pop_down_menu
	.cfi_endproc

	.align	16, 0x90
	.type	tty_menu_activate,@function
tty_menu_activate:                      # @tty_menu_activate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp101:
	.cfi_def_cfa_offset 16
.Ltmp102:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp103:
	.cfi_def_cfa_register %rbp
	subq	$368, %rsp              # imm = 0x170
	movb	24(%rbp), %al
	movq	16(%rbp), %r10
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movq	%r9, -40(%rbp)
	movq	%r10, -48(%rbp)
	andb	$1, %al
	movb	%al, -49(%rbp)
	movl	$0, -132(%rbp)
	movq	selected_frame, %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB32_1
	jmp	.LBB32_3
.LBB32_1:                               # %land.lhs.true
	movq	selected_frame, %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB32_3
# BB#2:                                 # %cond.true
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	jmp	.LBB32_4
.LBB32_3:                               # %cond.false
	callq	emacs_abort
.LBB32_4:                               # %cond.end
	movq	-240(%rbp), %rax        # 8-byte Reload
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rcx
	movq	208(%rcx), %rcx
	shrq	$23, %rcx
	andq	$7, %rcx
	movl	%ecx, %edx
	cmpl	$1, %edx
	je	.LBB32_6
# BB#5:                                 # %lor.lhs.false
	movq	-144(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB32_7
.LBB32_6:                               # %cond.true.9
	movq	-144(%rbp), %rax
	movq	376(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	jmp	.LBB32_8
.LBB32_7:                               # %cond.false.12
	callq	emacs_abort
.LBB32_8:                               # %cond.end.13
	movq	-248(%rbp), %rax        # 8-byte Reload
	movq	%rax, -152(%rbp)
	movl	$0, -172(%rbp)
	movq	globals+1120, %rcx
	movq	%rcx, -192(%rbp)
	movq	$16384, -200(%rbp)      # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -208(%rbp)
	movb	$0, -209(%rbp)
	cmpl	$0, -28(%rbp)
	jg	.LBB32_10
# BB#9:                                 # %if.then
	movl	$1, -28(%rbp)
.LBB32_10:                              # %if.end
	cmpl	$0, -32(%rbp)
	jg	.LBB32_12
# BB#11:                                # %if.then.18
	movl	$1, -32(%rbp)
.LBB32_12:                              # %if.end.19
	jmp	.LBB32_13
.LBB32_13:                              # %do.body
	movq	-8(%rbp), %rax
	movslq	40(%rax), %rax
	movq	-200(%rbp), %rcx
	shrq	$5, %rcx
	shrq	$0, %rcx
	cmpq	%rcx, %rax
	ja	.LBB32_15
# BB#14:                                # %if.then.23
	movq	-8(%rbp), %rax
	movslq	40(%rax), %rax
	shlq	$5, %rax
	movq	-200(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -200(%rbp)
	movq	-8(%rbp), %rax
	movslq	40(%rax), %rax
	shlq	$5, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -64(%rbp)
	jmp	.LBB32_16
.LBB32_15:                              # %if.else
	movl	$32, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movslq	40(%rcx), %rdi
	callq	xnmalloc
	movabsq	$xfree, %rdi
	movq	%rax, -64(%rbp)
	movb	$1, -209(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	callq	record_unwind_protect_ptr
.LBB32_16:                              # %if.end.33
	jmp	.LBB32_17
.LBB32_17:                              # %do.end
	movabsq	$.L.str.124, %rdi
	xorl	%esi, %esi
	movl	$32, %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rcx
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	memset
	movq	-144(%rbp), %rdi
	movq	-256(%rbp), %rcx        # 8-byte Reload
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	intern
	xorl	%edx, %edx
	movl	$1, %ecx
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	lookup_derived_face
	movabsq	$.L.str.125, %rdi
	movl	%eax, -128(%rbp)
	movq	-144(%rbp), %rsi
	movq	%rsi, -272(%rbp)        # 8-byte Spill
	callq	intern
	xorl	%edx, %edx
	movl	$1, %ecx
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	lookup_derived_face
	movabsq	$.L.str.126, %rdi
	movl	%eax, -124(%rbp)
	callq	intern
	movl	$1, %ecx
	movq	%rax, -168(%rbp)
	movq	-144(%rbp), %rdi
	movq	-168(%rbp), %rsi
	movl	-128(%rbp), %edx
	callq	lookup_derived_face
	movl	$1, %ecx
	movl	%eax, -120(%rbp)
	movq	-144(%rbp), %rdi
	movq	-168(%rbp), %rsi
	movl	-124(%rbp), %edx
	callq	lookup_derived_face
	movl	%eax, -116(%rbp)
	movl	$0, -80(%rbp)
.LBB32_18:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -80(%rbp)
	jge	.LBB32_21
# BB#19:                                # %for.body
                                        #   in Loop: Header=BB32_18 Depth=1
	movl	-116(%rbp), %eax
	movslq	-80(%rbp), %rcx
	movl	%eax, -112(%rbp,%rcx,4)
# BB#20:                                # %for.inc
                                        #   in Loop: Header=BB32_18 Depth=1
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB32_18
.LBB32_21:                              # %for.end
	movabsq	$.L.str.127, %rsi
	movl	$9, %eax
	movl	%eax, %edx
	movl	$1, -68(%rbp)
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx), %rdi
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB32_23
# BB#22:                                # %if.then.54
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movb	$0, 7(%rax)
	movl	$1, -132(%rbp)
.LBB32_23:                              # %if.end.58
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	movq	%rax, globals+1120
	movq	-144(%rbp), %rax
	movl	%edi, -276(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	movl	-276(%rbp), %esi        # 4-byte Reload
	movl	-276(%rbp), %edx        # 4-byte Reload
	callq	update_frame_with_menu
	movq	-8(%rbp), %rax
	movq	-64(%rbp), %rdi
	movq	%rax, 8(%rdi)
	movq	-144(%rbp), %rdi
	callq	save_and_enable_current_matrix
	movl	$1, %ecx
	xorl	%edx, %edx
	leaq	-112(%rbp), %r8
	movq	-64(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-8(%rbp), %rdi
	movl	-28(%rbp), %esi
	subl	$1, %esi
	movl	-32(%rbp), %r9d
	subl	$1, %r9d
	movl	-28(%rbp), %r10d
	subl	$1, %r10d
	movl	-32(%rbp), %r11d
	subl	$1, %r11d
	subq	$32, %rsp
	movl	%edx, -280(%rbp)        # 4-byte Spill
	movl	%r9d, %edx
	movl	%r10d, %r9d
	movl	%r11d, (%rsp)
	movl	$0, 8(%rsp)
	movl	$0, 16(%rsp)
	callq	tty_menu_display
	addq	$32, %rsp
	movq	-152(%rbp), %rax
	movq	72(%rax), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -176(%rbp)
	movq	-152(%rbp), %rax
	movq	72(%rax), %rax
	movl	(%rax), %ecx
	movl	%ecx, -180(%rbp)
	movq	-152(%rbp), %rdi
	callq	tty_hide_cursor
	cmpl	$0, -132(%rbp)
	je	.LBB32_25
# BB#24:                                # %if.then.69
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movb	$32, 7(%rax)
.LBB32_25:                              # %if.end.73
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	cmpl	$1, (%rdx)
	movb	%cl, -281(%rbp)         # 1-byte Spill
	jne	.LBB32_27
# BB#26:                                # %land.rhs
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$0, (%rax)
	setne	%cl
	movb	%cl, -281(%rbp)         # 1-byte Spill
.LBB32_27:                              # %land.end
	movb	-281(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -82(%rbp)
	testb	$1, -82(%rbp)
	je	.LBB32_29
# BB#28:                                # %if.then.80
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	44(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 44(%rax)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	%rax, 8(%rdx)
	jmp	.LBB32_30
.LBB32_29:                              # %if.else.88
	movq	-8(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, 8(%rcx)
.LBB32_30:                              # %if.end.91
	movl	-28(%rbp), %eax
	subl	$1, %eax
	movq	-64(%rbp), %rcx
	movl	%eax, 20(%rcx)
	movl	-32(%rbp), %eax
	movq	-64(%rbp), %rcx
	movl	%eax, 24(%rcx)
	movb	-82(%rbp), %dl
	andb	$1, %dl
	movzbl	%dl, %eax
	movq	-64(%rbp), %rcx
	movl	%eax, 16(%rcx)
	movq	-64(%rbp), %rcx
	movl	20(%rcx), %eax
	movl	%eax, -72(%rbp)
	movq	-64(%rbp), %rcx
	movl	24(%rcx), %eax
	movl	%eax, -76(%rbp)
	movb	$1, -153(%rbp)
	movb	$0, -81(%rbp)
.LBB32_31:                              # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB32_59 Depth 2
                                        #       Child Loop BB32_72 Depth 3
	movb	-81(%rbp), %al
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB32_32
	jmp	.LBB32_88
.LBB32_32:                              # %while.body
                                        #   in Loop: Header=BB32_31 Depth=1
	movq	-64(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, -220(%rbp)
	movl	-220(%rbp), %ecx
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addl	(%rax), %ecx
	movq	-144(%rbp), %rax
	movl	284(%rax), %edx
	subl	$1, %edx
	cmpl	%edx, %ecx
	jge	.LBB32_34
# BB#33:                                # %cond.true.114
                                        #   in Loop: Header=BB32_31 Depth=1
	movl	-220(%rbp), %eax
	movq	-64(%rbp), %rcx
	movq	8(%rcx), %rcx
	addl	(%rcx), %eax
	movl	%eax, -288(%rbp)        # 4-byte Spill
	jmp	.LBB32_35
.LBB32_34:                              # %cond.false.119
                                        #   in Loop: Header=BB32_31 Depth=1
	movq	-144(%rbp), %rax
	movl	284(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, -288(%rbp)        # 4-byte Spill
.LBB32_35:                              # %cond.end.122
                                        #   in Loop: Header=BB32_31 Depth=1
	movl	-288(%rbp), %eax        # 4-byte Reload
	leaq	-72(%rbp), %rsi
	leaq	-76(%rbp), %rdx
	leaq	-153(%rbp), %r9
	subl	$1, %eax
	movl	%eax, -224(%rbp)
	movq	-144(%rbp), %rdi
	movl	-220(%rbp), %ecx
	movl	-224(%rbp), %r8d
	callq	read_menu_input
	movl	%eax, -216(%rbp)
	cmpl	$0, -216(%rbp)
	je	.LBB32_56
# BB#36:                                # %if.then.127
                                        #   in Loop: Header=BB32_31 Depth=1
	movb	$1, -81(%rbp)
	movl	-216(%rbp), %eax
	incl	%eax
	movl	%eax, %ecx
	subl	$6, %eax
	movq	%rcx, -296(%rbp)        # 8-byte Spill
	movl	%eax, -300(%rbp)        # 4-byte Spill
	ja	.LBB32_54
# BB#98:                                # %if.then.127
                                        #   in Loop: Header=BB32_31 Depth=1
	movq	-296(%rbp), %rax        # 8-byte Reload
	movq	.LJTI32_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB32_37:                              # %sw.bb
                                        #   in Loop: Header=BB32_31 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	-320(%rbp), %rsi        # 8-byte Reload
	movq	-328(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	show_help_echo
	movl	$2, -88(%rbp)
	jmp	.LBB32_55
.LBB32_38:                              # %sw.bb.132
                                        #   in Loop: Header=BB32_31 Depth=1
	testb	$1, -49(%rbp)
	je	.LBB32_40
# BB#39:                                # %if.then.134
                                        #   in Loop: Header=BB32_31 Depth=1
	movl	$4, -88(%rbp)
	jmp	.LBB32_41
.LBB32_40:                              # %if.else.135
                                        #   in Loop: Header=BB32_31 Depth=1
	movb	$0, -81(%rbp)
.LBB32_41:                              # %if.end.136
                                        #   in Loop: Header=BB32_31 Depth=1
	jmp	.LBB32_55
.LBB32_42:                              # %sw.bb.137
                                        #   in Loop: Header=BB32_31 Depth=1
	testb	$1, -49(%rbp)
	je	.LBB32_44
# BB#43:                                # %if.then.139
                                        #   in Loop: Header=BB32_31 Depth=1
	movl	$5, -88(%rbp)
	jmp	.LBB32_45
.LBB32_44:                              # %if.else.140
                                        #   in Loop: Header=BB32_31 Depth=1
	movb	$0, -81(%rbp)
.LBB32_45:                              # %if.end.141
                                        #   in Loop: Header=BB32_31 Depth=1
	jmp	.LBB32_55
.LBB32_46:                              # %sw.bb.142
                                        #   in Loop: Header=BB32_31 Depth=1
	movl	-76(%rbp), %eax
	subl	-220(%rbp), %eax
	movq	-64(%rbp), %rcx
	movq	8(%rcx), %rcx
	movl	(%rcx), %edx
	subl	$1, %edx
	subl	-172(%rbp), %edx
	cmpl	%edx, %eax
	jne	.LBB32_48
# BB#47:                                # %if.then.151
                                        #   in Loop: Header=BB32_31 Depth=1
	movl	-220(%rbp), %eax
	movl	%eax, -76(%rbp)
	movl	$0, -172(%rbp)
	jmp	.LBB32_49
.LBB32_48:                              # %if.else.152
                                        #   in Loop: Header=BB32_31 Depth=1
	movl	-172(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -172(%rbp)
.LBB32_49:                              # %if.end.154
                                        #   in Loop: Header=BB32_31 Depth=1
	movb	$0, -81(%rbp)
	jmp	.LBB32_55
.LBB32_50:                              # %sw.bb.155
                                        #   in Loop: Header=BB32_31 Depth=1
	cmpl	$0, -172(%rbp)
	jne	.LBB32_52
# BB#51:                                # %if.then.158
                                        #   in Loop: Header=BB32_31 Depth=1
	movl	-224(%rbp), %eax
	movl	%eax, -76(%rbp)
	movq	-64(%rbp), %rcx
	movq	8(%rcx), %rcx
	movl	(%rcx), %eax
	subl	$1, %eax
	movl	-76(%rbp), %edx
	subl	-220(%rbp), %edx
	subl	%edx, %eax
	movl	%eax, -172(%rbp)
	jmp	.LBB32_53
.LBB32_52:                              # %if.else.165
                                        #   in Loop: Header=BB32_31 Depth=1
	movl	-172(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -172(%rbp)
.LBB32_53:                              # %if.end.166
                                        #   in Loop: Header=BB32_31 Depth=1
	movb	$0, -81(%rbp)
	jmp	.LBB32_55
.LBB32_54:                              # %sw.default
                                        #   in Loop: Header=BB32_31 Depth=1
	jmp	.LBB32_55
.LBB32_55:                              # %sw.epilog
                                        #   in Loop: Header=BB32_31 Depth=1
	jmp	.LBB32_56
.LBB32_56:                              # %if.end.167
                                        #   in Loop: Header=BB32_31 Depth=1
	movq	-144(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$20, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB32_83
# BB#57:                                # %land.lhs.true.173
                                        #   in Loop: Header=BB32_31 Depth=1
	cmpl	$-1, -216(%rbp)
	je	.LBB32_83
# BB#58:                                # %if.then.176
                                        #   in Loop: Header=BB32_31 Depth=1
	movq	-144(%rbp), %rax
	movq	208(%rax), %rcx
	andq	$-1048577, %rcx         # imm = 0xFFFFFFFFFFEFFFFF
	movq	%rcx, 208(%rax)
	movl	$3, -88(%rbp)
	movl	$0, -80(%rbp)
.LBB32_59:                              # %for.cond.180
                                        #   Parent Loop BB32_31 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB32_72 Depth 3
	movl	-80(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jge	.LBB32_82
# BB#60:                                # %for.body.183
                                        #   in Loop: Header=BB32_59 Depth=2
	movslq	-80(%rbp), %rax
	shlq	$5, %rax
	addq	-64(%rbp), %rax
	movl	20(%rax), %ecx
	cmpl	-72(%rbp), %ecx
	jg	.LBB32_80
# BB#61:                                # %land.lhs.true.189
                                        #   in Loop: Header=BB32_59 Depth=2
	movl	-72(%rbp), %eax
	movslq	-80(%rbp), %rcx
	shlq	$5, %rcx
	addq	-64(%rbp), %rcx
	movl	20(%rcx), %edx
	movslq	-80(%rbp), %rcx
	shlq	$5, %rcx
	addq	-64(%rbp), %rcx
	movq	8(%rcx), %rcx
	addl	44(%rcx), %edx
	addl	$2, %edx
	cmpl	%edx, %eax
	jge	.LBB32_80
# BB#62:                                # %if.then.201
                                        #   in Loop: Header=BB32_59 Depth=2
	xorl	%eax, %eax
	movl	-76(%rbp), %ecx
	movslq	-80(%rbp), %rdx
	shlq	$5, %rdx
	addq	-64(%rbp), %rdx
	subl	24(%rdx), %ecx
	addl	-172(%rbp), %ecx
	movl	%ecx, -228(%rbp)
	cmpl	-228(%rbp), %eax
	jg	.LBB32_79
# BB#63:                                # %land.lhs.true.209
                                        #   in Loop: Header=BB32_59 Depth=2
	movl	-228(%rbp), %eax
	movslq	-80(%rbp), %rcx
	shlq	$5, %rcx
	addq	-64(%rbp), %rcx
	movq	8(%rcx), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB32_79
# BB#64:                                # %if.then.216
                                        #   in Loop: Header=BB32_59 Depth=2
	movslq	-228(%rbp), %rax
	movslq	-80(%rbp), %rcx
	shlq	$5, %rcx
	addq	-64(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	16(%rcx), %rcx
	cmpq	$0, (%rcx,%rax,8)
	jne	.LBB32_69
# BB#65:                                # %if.then.224
                                        #   in Loop: Header=BB32_59 Depth=2
	movslq	-228(%rbp), %rax
	movslq	-80(%rbp), %rcx
	shlq	$5, %rcx
	addq	-64(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	24(%rcx), %rcx
	cmpl	$0, (%rcx,%rax,4)
	je	.LBB32_67
# BB#66:                                # %if.then.231
                                        #   in Loop: Header=BB32_59 Depth=2
	movl	$1, -88(%rbp)
	jmp	.LBB32_68
.LBB32_67:                              # %if.else.232
                                        #   in Loop: Header=BB32_59 Depth=2
	movl	$3, -88(%rbp)
.LBB32_68:                              # %if.end.233
                                        #   in Loop: Header=BB32_59 Depth=2
	jmp	.LBB32_69
.LBB32_69:                              # %if.end.234
                                        #   in Loop: Header=BB32_59 Depth=2
	movslq	-80(%rbp), %rax
	shlq	$5, %rax
	addq	-64(%rbp), %rax
	movl	16(%rax), %ecx
	subl	$1, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
	movl	-228(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
	movl	-80(%rbp), %ecx
	movl	-68(%rbp), %edx
	subl	$2, %edx
	cmpl	%edx, %ecx
	jne	.LBB32_71
# BB#70:                                # %lor.lhs.false.242
                                        #   in Loop: Header=BB32_59 Depth=2
	movslq	-228(%rbp), %rax
	movslq	-80(%rbp), %rcx
	shlq	$5, %rcx
	addq	-64(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	16(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movl	-80(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rcx
	shlq	$5, %rcx
	addq	-64(%rbp), %rcx
	cmpq	8(%rcx), %rax
	je	.LBB32_75
.LBB32_71:                              # %if.then.255
                                        #   in Loop: Header=BB32_59 Depth=2
	jmp	.LBB32_72
.LBB32_72:                              # %while.cond.256
                                        #   Parent Loop BB32_31 Depth=1
                                        #     Parent Loop BB32_59 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-80(%rbp), %eax
	movl	-68(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	je	.LBB32_74
# BB#73:                                # %while.body.260
                                        #   in Loop: Header=BB32_72 Depth=3
	movl	-68(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -68(%rbp)
	movq	-144(%rbp), %rdi
	movslq	-68(%rbp), %rcx
	shlq	$5, %rcx
	addq	-64(%rbp), %rcx
	movq	(%rcx), %rsi
	callq	screen_update
	movslq	-68(%rbp), %rcx
	shlq	$5, %rcx
	addq	-64(%rbp), %rcx
	movq	$0, (%rcx)
	jmp	.LBB32_72
.LBB32_74:                              # %while.end
                                        #   in Loop: Header=BB32_59 Depth=2
	jmp	.LBB32_75
.LBB32_75:                              # %if.end.268
                                        #   in Loop: Header=BB32_59 Depth=2
	movl	-80(%rbp), %eax
	movl	-68(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.LBB32_78
# BB#76:                                # %land.lhs.true.272
                                        #   in Loop: Header=BB32_59 Depth=2
	movslq	-228(%rbp), %rax
	movslq	-80(%rbp), %rcx
	shlq	$5, %rcx
	addq	-64(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	16(%rcx), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB32_78
# BB#77:                                # %if.then.280
                                        #   in Loop: Header=BB32_59 Depth=2
	movl	$1, %eax
	leaq	-128(%rbp), %r8
	movslq	-80(%rbp), %rcx
	shlq	$5, %rcx
	addq	-64(%rbp), %rcx
	movq	8(%rcx), %rdi
	movslq	-80(%rbp), %rcx
	shlq	$5, %rcx
	addq	-64(%rbp), %rcx
	movl	20(%rcx), %esi
	movslq	-80(%rbp), %rcx
	shlq	$5, %rcx
	addq	-64(%rbp), %rcx
	movl	24(%rcx), %edx
	movslq	-80(%rbp), %rcx
	shlq	$5, %rcx
	addq	-64(%rbp), %rcx
	movl	16(%rcx), %ecx
	movl	-72(%rbp), %r9d
	movl	-76(%rbp), %r10d
	movl	-172(%rbp), %r11d
	subq	$32, %rsp
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	%eax, -332(%rbp)        # 4-byte Spill
	callq	tty_menu_display
	addq	$32, %rsp
	movslq	-228(%rbp), %rdi
	movslq	-80(%rbp), %r8
	shlq	$5, %r8
	addq	-64(%rbp), %r8
	movq	8(%r8), %r8
	movq	16(%r8), %r8
	movq	(%r8,%rdi,8), %rdi
	movslq	-68(%rbp), %r8
	shlq	$5, %r8
	addq	-64(%rbp), %r8
	movq	%rdi, 8(%r8)
	movslq	-228(%rbp), %rdi
	movslq	-80(%rbp), %r8
	shlq	$5, %r8
	addq	-64(%rbp), %r8
	movq	8(%r8), %r8
	movq	24(%r8), %r8
	movl	(%r8,%rdi,4), %eax
	movslq	-68(%rbp), %rdi
	shlq	$5, %rdi
	addq	-64(%rbp), %rdi
	movl	%eax, 16(%rdi)
	movq	-144(%rbp), %rdi
	callq	save_and_enable_current_matrix
	movslq	-68(%rbp), %rdi
	shlq	$5, %rdi
	addq	-64(%rbp), %rdi
	movq	%rax, (%rdi)
	movslq	-80(%rbp), %rax
	shlq	$5, %rax
	addq	-64(%rbp), %rax
	movl	20(%rax), %ecx
	movslq	-80(%rbp), %rax
	shlq	$5, %rax
	addq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addl	44(%rax), %ecx
	addl	$2, %ecx
	movslq	-68(%rbp), %rax
	shlq	$5, %rax
	addq	-64(%rbp), %rax
	movl	%ecx, 20(%rax)
	movl	-76(%rbp), %ecx
	movslq	-68(%rbp), %rax
	shlq	$5, %rax
	addq	-64(%rbp), %rax
	movl	%ecx, 24(%rax)
	movl	-68(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -68(%rbp)
.LBB32_78:                              # %if.end.332
                                        #   in Loop: Header=BB32_59 Depth=2
	jmp	.LBB32_79
.LBB32_79:                              # %if.end.333
                                        #   in Loop: Header=BB32_59 Depth=2
	jmp	.LBB32_80
.LBB32_80:                              # %if.end.334
                                        #   in Loop: Header=BB32_59 Depth=2
	jmp	.LBB32_81
.LBB32_81:                              # %for.inc.335
                                        #   in Loop: Header=BB32_59 Depth=2
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB32_59
.LBB32_82:                              # %for.end.337
                                        #   in Loop: Header=BB32_31 Depth=1
	movl	$1, %eax
	leaq	-128(%rbp), %r8
	movl	-68(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	shlq	$5, %rdx
	addq	-64(%rbp), %rdx
	movq	8(%rdx), %rdi
	movl	-68(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	shlq	$5, %rdx
	addq	-64(%rbp), %rdx
	movl	20(%rdx), %esi
	movl	-68(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	shlq	$5, %rdx
	addq	-64(%rbp), %rdx
	movl	24(%rdx), %edx
	movl	-68(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %r9
	shlq	$5, %r9
	addq	-64(%rbp), %r9
	movl	16(%r9), %ecx
	movl	-72(%rbp), %r9d
	movl	-76(%rbp), %r10d
	movl	-172(%rbp), %r11d
	subq	$32, %rsp
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	%eax, -336(%rbp)        # 4-byte Spill
	callq	tty_menu_display
	addq	$32, %rsp
	movq	-152(%rbp), %rdi
	movq	72(%rdi), %rdi
	movl	4(%rdi), %eax
	movl	%eax, -176(%rbp)
	movq	-152(%rbp), %rdi
	movq	72(%rdi), %rdi
	movl	(%rdi), %eax
	movl	%eax, -180(%rbp)
.LBB32_83:                              # %if.end.359
                                        #   in Loop: Header=BB32_31 Depth=1
	cmpq	$0, menu_help_message
	jne	.LBB32_85
# BB#84:                                # %lor.lhs.false.361
                                        #   in Loop: Header=BB32_31 Depth=1
	cmpq	$0, prev_menu_help_message
	je	.LBB32_87
.LBB32_85:                              # %land.lhs.true.363
                                        #   in Loop: Header=BB32_31 Depth=1
	movq	menu_help_message, %rax
	cmpq	prev_menu_help_message, %rax
	je	.LBB32_87
# BB#86:                                # %if.then.366
                                        #   in Loop: Header=BB32_31 Depth=1
	movq	-48(%rbp), %rax
	movq	menu_help_message, %rdi
	movl	menu_help_paneno, %esi
	movl	menu_help_itemno, %edx
	callq	*%rax
	movq	-144(%rbp), %rdi
	movl	-180(%rbp), %esi
	movl	-176(%rbp), %edx
	callq	cursor_to
	movq	menu_help_message, %rax
	movq	%rax, prev_menu_help_message
.LBB32_87:                              # %if.end.367
                                        #   in Loop: Header=BB32_31 Depth=1
	movq	-152(%rbp), %rdi
	callq	tty_hide_cursor
	movq	-152(%rbp), %rdi
	movq	32(%rdi), %rdi
	callq	fflush
	movl	%eax, -340(%rbp)        # 4-byte Spill
	jmp	.LBB32_31
.LBB32_88:                              # %while.end.369
	movq	-144(%rbp), %rax
	movq	208(%rax), %rcx
	andq	$-1048577, %rcx         # imm = 0xFFFFFFFFFFEFFFFF
	movq	%rcx, 208(%rax)
	movq	-144(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	(%rax), %rsi
	callq	screen_update
.LBB32_89:                              # %while.cond.375
                                        # =>This Inner Loop Header: Depth=1
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -68(%rbp)
	cmpl	$0, %eax
	je	.LBB32_91
# BB#90:                                # %while.body.378
                                        #   in Loop: Header=BB32_89 Depth=1
	movslq	-68(%rbp), %rax
	shlq	$5, %rax
	addq	-64(%rbp), %rax
	movq	(%rax), %rdi
	callq	free_saved_screen
	jmp	.LBB32_89
.LBB32_91:                              # %while.end.382
	movq	-152(%rbp), %rdi
	callq	tty_show_cursor
	movq	-152(%rbp), %rdi
	movq	32(%rdi), %rdi
	callq	fflush
	movl	%eax, -344(%rbp)        # 4-byte Spill
	callq	discard_mouse_events
	callq	kbd_buffer_events_waiting
	testb	$1, %al
	jne	.LBB32_93
# BB#92:                                # %if.then.386
	callq	clear_input_pending
.LBB32_93:                              # %if.end.387
	jmp	.LBB32_94
.LBB32_94:                              # %do.body.388
	testb	$1, -209(%rbp)
	je	.LBB32_96
# BB#95:                                # %if.then.390
	xorl	%edi, %edi
	movb	$0, -209(%rbp)
	movq	-208(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -360(%rbp)        # 8-byte Spill
.LBB32_96:                              # %if.end.393
	jmp	.LBB32_97
.LBB32_97:                              # %do.end.394
	movq	-192(%rbp), %rax
	movq	%rax, globals+1120
	movl	-88(%rbp), %eax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	tty_menu_activate, .Lfunc_end32-tty_menu_activate
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI32_0:
	.quad	.LBB32_37
	.quad	.LBB32_54
	.quad	.LBB32_54
	.quad	.LBB32_38
	.quad	.LBB32_42
	.quad	.LBB32_46
	.quad	.LBB32_50

	.text
	.align	16, 0x90
	.type	tty_menu_help_callback,@function
tty_menu_help_callback:                 # @tty_menu_help_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp104:
	.cfi_def_cfa_offset 16
.Ltmp105:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp106:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	menu_items, %rdi
	callq	XVECTOR
	movl	$901, %edi              # imm = 0x385
	addq	$8, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB33_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB33_6
.LBB33_2:                               # %if.else
	movl	$783, %edi              # imm = 0x30F
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB33_4
# BB#3:                                 # %if.then.6
	movq	empty_unibyte_string, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB33_5
.LBB33_4:                               # %if.else.7
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB33_5:                               # %if.end
	jmp	.LBB33_6
.LBB33_6:                               # %if.end.9
	movl	$657, %edi              # imm = 0x291
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi
	movslq	-12(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	list3
	movq	%rax, -40(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB33_8
# BB#7:                                 # %cond.true
	movq	-8(%rbp), %rdi
	callq	build_string
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB33_9
.LBB33_8:                               # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB33_9:                               # %cond.end
	movq	-64(%rbp), %rax         # 8-byte Reload
	xorl	%edi, %edi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rdx
	movslq	-16(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	show_help_echo
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	tty_menu_help_callback, .Lfunc_end33-tty_menu_help_callback
	.cfi_endproc

	.align	16, 0x90
	.type	tty_menu_new_item_coords,@function
tty_menu_new_item_coords:               # @tty_menu_new_item_coords
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp107:
	.cfi_def_cfa_offset 16
.Ltmp108:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp109:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	208(%rcx), %rcx
	shrq	$23, %rcx
	andq	$7, %rcx
	movl	%ecx, %esi
	cmpl	$1, %esi
	jne	.LBB34_21
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	cmpq	$0, 376(%rax)
	je	.LBB34_21
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	callq	tty_menu_last_menubar_item
	movl	%eax, -44(%rbp)
	movl	$0, -48(%rbp)
	movl	$-1, -52(%rbp)
.LBB34_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-48(%rbp), %rax
	movq	-40(%rbp), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	ASIZE
	movq	-88(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	jge	.LBB34_20
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB34_3 Depth=1
	movq	-40(%rbp), %rdi
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rsi
	callq	AREF
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rdi
	movl	-48(%rbp), %ecx
	addl	$3, %ecx
	movslq	%ecx, %rsi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB34_6
# BB#5:                                 # %if.then.13
	jmp	.LBB34_21
.LBB34_6:                               # %if.end
                                        #   in Loop: Header=BB34_3 Depth=1
	movq	-64(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -76(%rbp)
	movl	-76(%rbp), %ecx
	movq	-24(%rbp), %rax
	cmpl	(%rax), %ecx
	jg	.LBB34_18
# BB#7:                                 # %land.lhs.true.17
                                        #   in Loop: Header=BB34_3 Depth=1
	movq	-24(%rbp), %rax
	movslq	(%rax), %rax
	movslq	-76(%rbp), %rcx
	movq	-72(%rbp), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	callq	SDATA
	movq	%rax, %rdi
	callq	menu_item_width
	movq	-112(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	movq	-104(%rbp), %rax        # 8-byte Reload
	cmpq	%rcx, %rax
	jg	.LBB34_18
# BB#8:                                 # %if.then.25
	cmpl	$4, -12(%rbp)
	jne	.LBB34_13
# BB#9:                                 # %if.then.28
	movl	-48(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB34_11
# BB#10:                                # %if.then.31
	movq	-40(%rbp), %rdi
	movl	-48(%rbp), %eax
	addl	$4, %eax
	addl	$3, %eax
	movslq	%eax, %rsi
	callq	AREF
	sarq	$2, %rax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
	jmp	.LBB34_12
.LBB34_11:                              # %if.else
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
.LBB34_12:                              # %if.end.38
	jmp	.LBB34_17
.LBB34_13:                              # %if.else.39
	cmpl	$0, -52(%rbp)
	jge	.LBB34_15
# BB#14:                                # %if.then.42
	movq	-40(%rbp), %rdi
	movl	-44(%rbp), %eax
	addl	$3, %eax
	movslq	%eax, %rsi
	callq	AREF
	sarq	$2, %rax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
	jmp	.LBB34_16
.LBB34_15:                              # %if.else.48
	movl	-52(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB34_16:                              # %if.end.49
	jmp	.LBB34_17
.LBB34_17:                              # %if.end.50
	jmp	.LBB34_21
.LBB34_18:                              # %if.end.51
                                        #   in Loop: Header=BB34_3 Depth=1
	movl	-76(%rbp), %eax
	movl	%eax, -52(%rbp)
# BB#19:                                # %for.inc
                                        #   in Loop: Header=BB34_3 Depth=1
	movl	-48(%rbp), %eax
	addl	$4, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB34_3
.LBB34_20:                              # %for.end
	jmp	.LBB34_21
.LBB34_21:                              # %if.end.53
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	tty_menu_new_item_coords, .Lfunc_end34-tty_menu_new_item_coords
	.cfi_endproc

	.globl	create_tty_output
	.align	16, 0x90
	.type	create_tty_output,@function
create_tty_output:                      # @create_tty_output
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp110:
	.cfi_def_cfa_offset 16
.Ltmp111:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp112:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$8, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rcx, %rdi
	callq	xzalloc
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	88(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 384(%rcx)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	create_tty_output, .Lfunc_end35-create_tty_output
	.cfi_endproc

	.globl	init_tty
	.align	16, 0x90
	.type	init_tty,@function
init_tty:                               # @init_tty
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp113:
	.cfi_def_cfa_offset 16
.Ltmp114:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp115:
	.cfi_def_cfa_register %rbp
	subq	$272, %rsp              # imm = 0x110
	movb	%dl, %al
	leaq	-40(%rbp), %rcx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	andb	$1, %al
	movb	%al, -25(%rbp)
	movq	%rcx, -48(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movb	$0, -201(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB36_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %esi
	movabsq	$.L.str.15, %rcx
	movb	-25(%rbp), %dl
	andb	$1, %dl
	movzbl	%dl, %edi
	movq	%rcx, %rdx
	movb	$0, %al
	callq	maybe_fatal
.LBB36_2:                               # %if.end
	cmpq	$0, -16(%rbp)
	jne	.LBB36_4
# BB#3:                                 # %if.then.2
	movabsq	$.L.str.2, %rax
	movq	%rax, -16(%rbp)
.LBB36_4:                               # %if.end.3
	movq	-16(%rbp), %rdi
	movl	$.L.str.2, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB36_6
# BB#5:                                 # %if.then.5
	movb	$1, -201(%rbp)
.LBB36_6:                               # %if.end.6
	movq	-16(%rbp), %rdi
	callq	get_named_terminal
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB36_8
# BB#7:                                 # %if.then.9
	movq	-72(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB36_103
.LBB36_8:                               # %if.end.10
	movl	$1, %edi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	create_terminal
	movl	$8800, %edi             # imm = 0x2260
                                        # kill: RDI<def> EDI<kill>
	movq	%rax, -72(%rbp)
	callq	xzalloc
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)
	callq	builtin_lisp_symbol
	movl	$200, %edi
                                        # kill: RDI<def> EDI<kill>
	movq	-64(%rbp), %rsi
	movq	%rax, 80(%rsi)
	movq	tty_list, %rax
	movq	-64(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-64(%rbp), %rax
	movq	%rax, tty_list
	movq	-64(%rbp), %rax
	movq	-72(%rbp), %rsi
	movq	%rax, 88(%rsi)
	movq	-72(%rbp), %rax
	movq	-64(%rbp), %rsi
	movq	%rax, 64(%rsi)
	callq	xmalloc
	movq	-64(%rbp), %rsi
	movq	%rax, 72(%rsi)
	movq	-64(%rbp), %rdi
	callq	Wcm_clear
	movq	$0, encode_terminal_src_size
	movq	$0, encode_terminal_dst_size
	movq	-72(%rbp), %rdi
	callq	set_tty_hooks
	xorl	%ecx, %ecx
	movb	-201(%rbp), %dl
	testb	$1, %dl
	movl	%ecx, %r8d
	cmovnel	%r8d, %r8d
	orl	$258, %r8d              # imm = 0x102
	movl	%r8d, -208(%rbp)
	movq	-16(%rbp), %rdi
	movl	-208(%rbp), %esi
	movl	%ecx, %edx
	callq	emacs_open
	movl	%eax, -212(%rbp)
	cmpl	$0, -212(%rbp)
	jl	.LBB36_10
# BB#9:                                 # %lor.lhs.false
	movl	-212(%rbp), %edi
	callq	isatty
	cmpl	$0, %eax
	jne	.LBB36_11
.LBB36_10:                              # %cond.true
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -248(%rbp)        # 8-byte Spill
	jmp	.LBB36_12
.LBB36_11:                              # %cond.false
	movabsq	$.L.str.7, %rsi
	movl	-212(%rbp), %edi
	callq	fdopen
	movq	%rax, -248(%rbp)        # 8-byte Spill
.LBB36_12:                              # %cond.end
	movq	-248(%rbp), %rax        # 8-byte Reload
	movq	-64(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-64(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-64(%rbp), %rax
	cmpq	$0, 24(%rax)
	jne	.LBB36_14
# BB#13:                                # %if.then.26
	movabsq	$.L.str.17, %rax
	movabsq	$.L.str.16, %rcx
	cmpl	$0, -212(%rbp)
	cmovlq	%rcx, %rax
	movq	%rax, -224(%rbp)
	movl	-212(%rbp), %edi
	callq	emacs_close
	movb	-25(%rbp), %dl
	movq	-72(%rbp), %rsi
	movq	-224(%rbp), %rcx
	movq	-224(%rbp), %r8
	movq	-16(%rbp), %r9
	andb	$1, %dl
	movzbl	%dl, %edi
	movq	%rcx, %rdx
	movq	%r8, %rcx
	movq	%r9, %r8
	movl	%eax, -252(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	maybe_fatal
.LBB36_14:                              # %if.end.31
	movq	-16(%rbp), %rdi
	callq	xstrdup
	movq	-64(%rbp), %rdi
	movq	%rax, 8(%rdi)
	movq	-16(%rbp), %rdi
	callq	xstrdup
	movq	-72(%rbp), %rdi
	movq	%rax, 64(%rdi)
	testb	$1, -201(%rbp)
	jne	.LBB36_16
# BB#15:                                # %if.then.37
	movl	-212(%rbp), %edi
	callq	dissociate_if_controlling_tty
.LBB36_16:                              # %if.end.38
	movq	-24(%rbp), %rdi
	callq	xstrdup
	movq	-64(%rbp), %rdi
	movq	%rax, 16(%rdi)
	movq	-64(%rbp), %rax
	movq	24(%rax), %rdi
	callq	fileno
	movl	%eax, %edi
	callq	add_keyboard_wait_descriptor
	movq	-64(%rbp), %rdi
	callq	Wcm_clear
	leaq	-200(%rbp), %rdi
	callq	block_tty_out_signal
	movq	-64(%rbp), %rdi
	addq	$176, %rdi
	movq	-24(%rbp), %rsi
	callq	tgetent
	movl	%eax, -52(%rbp)
	movq	-64(%rbp), %rsi
	cmpb	$0, 4271(%rsi)
	je	.LBB36_18
# BB#17:                                # %if.then.45
	callq	emacs_abort
.LBB36_18:                              # %if.end.46
	leaq	-200(%rbp), %rdi
	callq	unblock_tty_out_signal
	cmpl	$0, -52(%rbp)
	jge	.LBB36_20
# BB#19:                                # %if.then.48
	movabsq	$.L.str.18, %rax
	movb	-25(%rbp), %cl
	movq	-72(%rbp), %rsi
	andb	$1, %cl
	movzbl	%cl, %edi
	movq	%rax, %rdx
	movq	%rax, %rcx
	movb	$0, %al
	callq	maybe_fatal
.LBB36_20:                              # %if.end.50
	cmpl	$0, -52(%rbp)
	jne	.LBB36_22
# BB#21:                                # %if.then.52
	movabsq	$.L.str.19, %rdx
	movabsq	$.L.str.20, %rcx
	movb	-25(%rbp), %al
	movq	-72(%rbp), %rsi
	movq	-24(%rbp), %r8
	andb	$1, %al
	movzbl	%al, %edi
	movb	$0, %al
	callq	maybe_fatal
.LBB36_22:                              # %if.end.54
	movabsq	$.L.str.21, %rdi
	movq	-64(%rbp), %rax
	addq	$4272, %rax             # imm = 0x10B0
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rsi
	callq	tgetstr
	movabsq	$.L.str.22, %rdi
	movq	-64(%rbp), %rsi
	movq	%rax, 8368(%rsi)
	movq	-48(%rbp), %rsi
	callq	tgetstr
	movabsq	$.L.str.23, %rdi
	movq	-64(%rbp), %rsi
	movq	%rax, 8376(%rsi)
	movq	-48(%rbp), %rsi
	callq	tgetstr
	movabsq	$.L.str.24, %rdi
	movq	-64(%rbp), %rsi
	movq	%rax, 8384(%rsi)
	movq	-48(%rbp), %rsi
	callq	tgetstr
	movabsq	$.L.str.25, %rdi
	movq	-64(%rbp), %rsi
	movq	72(%rsi), %rsi
	movq	%rax, 72(%rsi)
	movq	-48(%rbp), %rsi
	callq	tgetstr
	movabsq	$.L.str.26, %rdi
	movq	-64(%rbp), %rsi
	movq	%rax, 8392(%rsi)
	movq	-48(%rbp), %rsi
	callq	tgetstr
	movabsq	$.L.str.27, %rdi
	movq	-64(%rbp), %rsi
	movq	%rax, 8400(%rsi)
	movq	-48(%rbp), %rsi
	callq	tgetstr
	movabsq	$.L.str.28, %rdi
	movq	-64(%rbp), %rsi
	movq	%rax, 8408(%rsi)
	movq	-64(%rbp), %rax
	movq	72(%rax), %rax
	movq	$0, 88(%rax)
	movq	-48(%rbp), %rsi
	callq	tgetstr
	movabsq	$.L.str.29, %rdi
	movq	-64(%rbp), %rsi
	movq	72(%rsi), %rsi
	movq	%rax, 80(%rsi)
	movq	-48(%rbp), %rsi
	callq	tgetstr
	movabsq	$.L.str.30, %rdi
	movq	-64(%rbp), %rsi
	movq	72(%rsi), %rsi
	movq	%rax, 48(%rsi)
	movq	-48(%rbp), %rsi
	callq	tgetstr
	movabsq	$.L.str.31, %rdi
	movq	-64(%rbp), %rsi
	movq	%rax, 8416(%rsi)
	movq	-48(%rbp), %rsi
	callq	tgetstr
	movabsq	$.L.str.32, %rdi
	movq	-64(%rbp), %rsi
	movq	%rax, 8424(%rsi)
	movq	-48(%rbp), %rsi
	callq	tgetstr
	movabsq	$.L.str.33, %rdi
	movq	-64(%rbp), %rsi
	movq	72(%rsi), %rsi
	movq	%rax, 96(%rsi)
	movq	-48(%rbp), %rsi
	callq	tgetstr
	movabsq	$.L.str.34, %rdi
	movq	-64(%rbp), %rsi
	movq	%rax, 8432(%rsi)
	movq	-48(%rbp), %rsi
	callq	tgetstr
	movabsq	$.L.str.35, %rdi
	movq	-64(%rbp), %rsi
	movq	%rax, 8440(%rsi)
	movq	-48(%rbp), %rsi
	callq	tgetstr
	movabsq	$.L.str.36, %rdi
	movq	-64(%rbp), %rsi
	movq	%rax, 8448(%rsi)
	movq	-48(%rbp), %rsi
	callq	tgetstr
	movabsq	$.L.str.37, %rdi
	movq	-64(%rbp), %rsi
	movq	%rax, 8456(%rsi)
	movq	-48(%rbp), %rsi
	callq	tgetstr
	movabsq	$.L.str.38, %rdi
	movq	-64(%rbp), %rsi
	movq	%rax, 8464(%rsi)
	movq	-48(%rbp), %rsi
	callq	tgetstr
	movabsq	$.L.str.39, %rdi
	movq	-64(%rbp), %rsi
	movq	%rax, 8472(%rsi)
	movq	-48(%rbp), %rsi
	callq	tgetstr
	movabsq	$.L.str.40, %rdi
	movq	-64(%rbp), %rsi
	movq	%rax, 8480(%rsi)
	movq	-48(%rbp), %rsi
	callq	tgetstr
	movabsq	$.L.str.41, %rdi
	movq	-64(%rbp), %rsi
	movq	72(%rsi), %rsi
	movq	%rax, 40(%rsi)
	movq	-48(%rbp), %rsi
	callq	tgetstr
	movabsq	$.L.str.42, %rdi
	movq	-64(%rbp), %rsi
	movq	%rax, 8488(%rsi)
	movq	-48(%rbp), %rsi
	callq	tgetstr
	movabsq	$.L.str.43, %rdi
	movq	-64(%rbp), %rsi
	movq	%rax, 8496(%rsi)
	movq	-48(%rbp), %rsi
	callq	tgetstr
	movabsq	$.L.str.44, %rdi
	movq	-64(%rbp), %rsi
	movq	%rax, 8504(%rsi)
	movq	-48(%rbp), %rsi
	callq	tgetstr
	movabsq	$.L.str.45, %rdi
	movq	-64(%rbp), %rsi
	movq	%rax, 8512(%rsi)
	movq	-48(%rbp), %rsi
	callq	tgetstr
	movabsq	$.L.str.46, %rdi
	movq	-64(%rbp), %rsi
	movq	%rax, 8520(%rsi)
	movq	-48(%rbp), %rsi
	callq	tgetstr
	movabsq	$.L.str.47, %rdi
	movq	-64(%rbp), %rsi
	movq	%rax, 8528(%rsi)
	movq	-48(%rbp), %rsi
	callq	tgetstr
	movabsq	$.L.str.48, %rdi
	movq	-64(%rbp), %rsi
	movq	72(%rsi), %rsi
	movq	%rax, 56(%rsi)
	movq	-48(%rbp), %rsi
	callq	tgetstr
	movabsq	$.L.str.49, %rdi
	movq	-64(%rbp), %rsi
	movq	72(%rsi), %rsi
	movq	%rax, 32(%rsi)
	movq	-48(%rbp), %rsi
	callq	tgetstr
	movq	-64(%rbp), %rsi
	movq	72(%rsi), %rsi
	movq	%rax, 16(%rsi)
	movq	-64(%rbp), %rax
	movq	72(%rax), %rax
	cmpq	$0, 16(%rax)
	jne	.LBB36_24
# BB#23:                                # %if.then.97
	movabsq	$.L.str.50, %rdi
	movq	-48(%rbp), %rsi
	callq	tgetstr
	movq	-64(%rbp), %rsi
	movq	72(%rsi), %rsi
	movq	%rax, 16(%rsi)
.LBB36_24:                              # %if.end.101
	movabsq	$.L.str.51, %rdi
	callq	tgetflag
	cmpl	$0, %eax
	je	.LBB36_26
# BB#25:                                # %if.then.104
	movabsq	$.L.str.52, %rax
	movq	-64(%rbp), %rcx
	movq	72(%rcx), %rcx
	movq	%rax, 24(%rcx)
	jmp	.LBB36_27
.LBB36_26:                              # %if.else
	movabsq	$.L.str.53, %rdi
	movq	-48(%rbp), %rsi
	callq	tgetstr
	movq	-64(%rbp), %rsi
	movq	72(%rsi), %rsi
	movq	%rax, 24(%rsi)
.LBB36_27:                              # %if.end.109
	movq	-64(%rbp), %rax
	movq	72(%rax), %rax
	cmpq	$0, 24(%rax)
	jne	.LBB36_29
# BB#28:                                # %if.then.113
	movabsq	$.L.str.54, %rdi
	movq	-48(%rbp), %rsi
	callq	tgetstr
	movq	-64(%rbp), %rsi
	movq	72(%rsi), %rsi
	movq	%rax, 24(%rsi)
.LBB36_29:                              # %if.end.117
	movabsq	$.L.str.55, %rdi
	movq	-48(%rbp), %rsi
	callq	tgetstr
	movabsq	$.L.str.56, %rdi
	movq	-64(%rbp), %rsi
	movq	%rax, 8536(%rsi)
	movq	-48(%rbp), %rsi
	callq	tgetstr
	movabsq	$.L.str.57, %rdi
	movq	-64(%rbp), %rsi
	movq	%rax, 8544(%rsi)
	movq	-48(%rbp), %rsi
	callq	tgetstr
	movabsq	$.L.str.58, %rdi
	movq	-64(%rbp), %rsi
	movq	%rax, 8552(%rsi)
	movq	-48(%rbp), %rsi
	callq	tgetstr
	movabsq	$.L.str.59, %rdi
	movq	-64(%rbp), %rsi
	movq	%rax, 8560(%rsi)
	movq	-48(%rbp), %rsi
	callq	tgetstr
	movabsq	$.L.str.60, %rdi
	movq	-64(%rbp), %rsi
	movq	%rax, 8568(%rsi)
	movq	-48(%rbp), %rsi
	callq	tgetstr
	movabsq	$.L.str.61, %rdi
	movq	-64(%rbp), %rsi
	movq	%rax, 8576(%rsi)
	movq	-48(%rbp), %rsi
	callq	tgetstr
	movabsq	$.L.str.62, %rdi
	movq	-64(%rbp), %rsi
	movq	72(%rsi), %rsi
	movq	%rax, 64(%rsi)
	movq	-48(%rbp), %rsi
	callq	tgetstr
	movabsq	$.L.str.63, %rdi
	movq	-64(%rbp), %rsi
	movq	%rax, 8584(%rsi)
	movq	-48(%rbp), %rsi
	callq	tgetstr
	movabsq	$.L.str.64, %rdi
	movq	-64(%rbp), %rsi
	movq	%rax, 8592(%rsi)
	movq	-48(%rbp), %rsi
	callq	tgetstr
	movabsq	$.L.str.65, %rdi
	movq	-64(%rbp), %rsi
	movq	72(%rsi), %rsi
	movq	%rax, 8(%rsi)
	movq	-48(%rbp), %rsi
	callq	tgetstr
	movabsq	$.L.str.66, %rdi
	movq	-64(%rbp), %rsi
	movq	%rax, 8600(%rsi)
	movq	-48(%rbp), %rsi
	callq	tgetstr
	movabsq	$.L.str.67, %rdi
	movq	-64(%rbp), %rsi
	movq	%rax, 8608(%rsi)
	movq	-48(%rbp), %rsi
	callq	tgetstr
	movabsq	$.L.str.68, %rdi
	movq	-64(%rbp), %rsi
	movq	%rax, 8616(%rsi)
	movq	-48(%rbp), %rsi
	callq	tgetstr
	movabsq	$.L.str.69, %rdi
	movq	-64(%rbp), %rsi
	movq	%rax, 8624(%rsi)
	movq	-48(%rbp), %rsi
	callq	tgetstr
	movabsq	$.L.str.70, %rdi
	movq	-64(%rbp), %rsi
	movq	%rax, 8632(%rsi)
	movq	-48(%rbp), %rsi
	callq	tgetstr
	movabsq	$.L.str.71, %rdi
	movq	-64(%rbp), %rsi
	movq	%rax, 8680(%rsi)
	movq	-48(%rbp), %rsi
	callq	tgetstr
	movabsq	$.L.str.72, %rdi
	movq	-64(%rbp), %rsi
	movq	%rax, 8672(%rsi)
	movq	-48(%rbp), %rsi
	callq	tgetstr
	movabsq	$.L.str.73, %rdi
	movq	-64(%rbp), %rsi
	movq	%rax, 8640(%rsi)
	movq	-48(%rbp), %rsi
	callq	tgetstr
	movabsq	$.L.str.74, %rdi
	movq	-64(%rbp), %rsi
	movq	%rax, 8648(%rsi)
	movq	-48(%rbp), %rsi
	callq	tgetstr
	movabsq	$.L.str.75, %rdi
	movq	-64(%rbp), %rsi
	movq	%rax, 8656(%rsi)
	movq	-48(%rbp), %rsi
	callq	tgetstr
	movabsq	$.L.str.76, %rdi
	movq	-64(%rbp), %rsi
	movq	%rax, 8664(%rsi)
	movq	-48(%rbp), %rsi
	callq	tgetstr
	movabsq	$.L.str.77, %rdi
	movq	-64(%rbp), %rsi
	movq	%rax, 8688(%rsi)
	movq	-48(%rbp), %rsi
	callq	tgetstr
	movabsq	$.L.str.78, %rdi
	movq	-64(%rbp), %rsi
	movq	%rax, 8696(%rsi)
	movq	-48(%rbp), %rsi
	callq	tgetstr
	movabsq	$.L.str.79, %rdi
	movq	-64(%rbp), %rsi
	movq	%rax, 8704(%rsi)
	movq	-48(%rbp), %rsi
	callq	tgetstr
	movabsq	$.L.str.80, %rdi
	movq	-64(%rbp), %rsi
	movq	72(%rsi), %rsi
	movq	%rax, 104(%rsi)
	movq	-48(%rbp), %rsi
	callq	tgetstr
	movabsq	$.L.str.81, %rdi
	movq	-64(%rbp), %rsi
	movq	72(%rsi), %rsi
	movq	%rax, 112(%rsi)
	movq	-48(%rbp), %rsi
	callq	tgetstr
	movabsq	$.L.str.82, %rdi
	movq	-64(%rbp), %rsi
	movq	72(%rsi), %rsi
	movq	%rax, 120(%rsi)
	movq	-48(%rbp), %rsi
	callq	tgetstr
	movabsq	$.L.str.83, %rdi
	movq	-64(%rbp), %rsi
	movq	72(%rsi), %rsi
	movq	%rax, 128(%rsi)
	movq	-48(%rbp), %rsi
	callq	tgetstr
	movq	-64(%rbp), %rsi
	movq	%rax, 8728(%rsi)
	movq	-64(%rbp), %rax
	cmpq	$0, 8728(%rax)
	je	.LBB36_35
# BB#30:                                # %if.then.155
	movabsq	$.L.str.84, %rdi
	movq	-48(%rbp), %rsi
	callq	tgetstr
	movabsq	$.L.str.85, %rdi
	movq	-64(%rbp), %rsi
	movq	%rax, 8736(%rsi)
	movq	-48(%rbp), %rsi
	callq	tgetstr
	movq	-64(%rbp), %rsi
	movq	%rax, 8744(%rsi)
	movq	-64(%rbp), %rax
	cmpq	$0, 8736(%rax)
	jne	.LBB36_32
# BB#31:                                # %if.then.160
	movabsq	$.L.str.86, %rdi
	movq	-48(%rbp), %rsi
	callq	tgetstr
	movabsq	$.L.str.87, %rdi
	movq	-64(%rbp), %rsi
	movq	%rax, 8736(%rsi)
	movq	-48(%rbp), %rsi
	callq	tgetstr
	movq	-64(%rbp), %rsi
	movq	%rax, 8744(%rsi)
.LBB36_32:                              # %if.end.165
	movabsq	$.L.str.88, %rdi
	callq	tgetnum
	movabsq	$.L.str.89, %rdi
	movq	-64(%rbp), %rcx
	movl	%eax, 8716(%rcx)
	callq	tgetnum
	movabsq	$.L.str.90, %rdi
	movq	-64(%rbp), %rcx
	movl	%eax, 8720(%rcx)
	callq	tgetnum
	movq	-64(%rbp), %rcx
	movl	%eax, 8712(%rcx)
	movq	-64(%rbp), %rcx
	cmpl	$-1, 8712(%rcx)
	jne	.LBB36_34
# BB#33:                                # %if.then.171
	movq	-64(%rbp), %rax
	movl	$0, 8712(%rax)
.LBB36_34:                              # %if.end.173
	jmp	.LBB36_35
.LBB36_35:                              # %if.end.174
	movl	$1, %esi
	movq	-64(%rbp), %rdi
	callq	tty_default_color_capabilities
	movabsq	$.L.str.91, %rdi
	callq	tgetflag
	movb	$1, %cl
	cmpl	$0, %eax
	setne	%dl
	movq	-64(%rbp), %rdi
	movq	72(%rdi), %rdi
	andb	$1, %dl
	movb	148(%rdi), %r8b
	shlb	$1, %dl
	andb	$-3, %r8b
	orb	%dl, %r8b
	movb	%r8b, 148(%rdi)
	movq	-64(%rbp), %rdi
	movq	72(%rdi), %rdi
	movb	148(%rdi), %dl
	shrb	$1, %dl
	andb	$1, %dl
	testb	$1, %dl
	movb	%cl, -253(%rbp)         # 1-byte Spill
	jne	.LBB36_37
# BB#36:                                # %lor.rhs
	movabsq	$.L.str.92, %rdi
	callq	tgetflag
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -253(%rbp)         # 1-byte Spill
.LBB36_37:                              # %lor.end
	movb	-253(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.93, %rdi
	movq	-64(%rbp), %rcx
	movq	72(%rcx), %rcx
	andb	$1, %al
	movb	148(%rcx), %dl
	andb	$-2, %dl
	orb	%al, %dl
	movb	%dl, 148(%rcx)
	callq	tgetflag
	movabsq	$.L.str.94, %rdi
	cmpl	$0, %eax
	setne	%dl
	movq	-64(%rbp), %rcx
	andb	$1, %dl
	movb	8788(%rcx), %sil
	shlb	$7, %dl
	andb	$127, %sil
	orb	%dl, %sil
	movb	%sil, 8788(%rcx)
	callq	tgetflag
	movabsq	$.L.str.95, %rdi
	movq	-64(%rbp), %rcx
	movl	%eax, 8752(%rcx)
	callq	tgetflag
	movabsq	$.L.str.96, %rdi
	cmpl	$0, %eax
	setne	%dl
	movq	-64(%rbp), %rcx
	andb	$1, %dl
	movb	8788(%rcx), %sil
	shlb	$3, %dl
	andb	$-9, %sil
	orb	%dl, %sil
	movb	%sil, 8788(%rcx)
	callq	tgetflag
	movb	$1, %dl
	cmpl	$0, %eax
	movb	%dl, -254(%rbp)         # 1-byte Spill
	jne	.LBB36_39
# BB#38:                                # %lor.rhs.207
	movabsq	$.L.str.97, %rdi
	callq	tgetflag
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -254(%rbp)         # 1-byte Spill
.LBB36_39:                              # %lor.end.210
	movb	-254(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.98, %rdi
	andb	$1, %al
	movzbl	%al, %ecx
	movq	-64(%rbp), %rdx
	movl	%ecx, 8780(%rdx)
	callq	tgetflag
	movabsq	$.L.str.99, %rdi
	movq	-64(%rbp), %rdx
	movl	%eax, 8756(%rdx)
	callq	tgetflag
	movabsq	$.L.str.100, %rdi
	movq	-64(%rbp), %rdx
	movl	%eax, 8760(%rdx)
	callq	tgetflag
	movabsq	$.L.str.101, %rdi
	movq	-64(%rbp), %rdx
	movl	%eax, 8764(%rdx)
	callq	tgetflag
	xorl	%edi, %edi
	movq	-64(%rbp), %rdx
	movl	%eax, 8768(%rdx)
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	allocate_kboard
	movq	-72(%rbp), %rdx
	movq	%rax, 72(%rdx)
	movq	-72(%rbp), %rax
	movq	72(%rax), %rax
	movl	168(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 168(%rax)
	movq	current_kboard, %rax
	cmpq	initial_kboard, %rax
	jne	.LBB36_41
# BB#40:                                # %if.then.219
	movq	-72(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, current_kboard
.LBB36_41:                              # %if.end.221
	movq	-48(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	72(%rax), %rsi
	callq	term_get_fkeys
	movq	-64(%rbp), %rax
	movq	24(%rax), %rdi
	callq	fileno
	leaq	-232(%rbp), %rsi
	leaq	-228(%rbp), %rdx
	movl	%eax, %edi
	callq	get_tty_size
	movl	-232(%rbp), %eax
	movq	-64(%rbp), %rdx
	movq	72(%rdx), %rdx
	movl	%eax, 136(%rdx)
	movl	-228(%rbp), %eax
	movq	-64(%rbp), %rdx
	movq	72(%rdx), %rdx
	movl	%eax, 140(%rdx)
	movq	-64(%rbp), %rdx
	movq	72(%rdx), %rdx
	cmpl	$0, 136(%rdx)
	jg	.LBB36_43
# BB#42:                                # %if.then.230
	movabsq	$.L.str.102, %rdi
	callq	tgetnum
	movq	-64(%rbp), %rdi
	movq	72(%rdi), %rdi
	movl	%eax, 136(%rdi)
.LBB36_43:                              # %if.end.234
	movq	-64(%rbp), %rax
	movq	72(%rax), %rax
	cmpl	$0, 140(%rax)
	jg	.LBB36_45
# BB#44:                                # %if.then.238
	movabsq	$.L.str.103, %rdi
	callq	tgetnum
	movq	-64(%rbp), %rdi
	movq	72(%rdi), %rdi
	movl	%eax, 140(%rdi)
.LBB36_45:                              # %if.end.242
	movq	-64(%rbp), %rax
	movq	72(%rax), %rax
	cmpl	$3, 140(%rax)
	jl	.LBB36_47
# BB#46:                                # %lor.lhs.false.246
	movq	-64(%rbp), %rax
	movq	72(%rax), %rax
	cmpl	$3, 136(%rax)
	jge	.LBB36_48
.LBB36_47:                              # %if.then.250
	movabsq	$.L.str.104, %rax
	movb	-25(%rbp), %cl
	movq	-72(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movq	72(%rdx), %rdx
	movl	136(%rdx), %r8d
	movq	-64(%rbp), %rdx
	movq	72(%rdx), %rdx
	movl	140(%rdx), %r9d
	andb	$1, %cl
	movzbl	%cl, %edi
	movq	%rax, %rdx
	movq	%rax, %rcx
	movb	$0, %al
	callq	maybe_fatal
.LBB36_48:                              # %if.end.256
	movabsq	$.L.str.105, %rdi
	callq	tgetnum
	movq	-64(%rbp), %rdi
	movq	72(%rdi), %rdi
	movl	%eax, 144(%rdi)
	movq	-64(%rbp), %rdi
	cmpq	$0, 8384(%rdi)
	jne	.LBB36_50
# BB#49:                                # %if.then.261
	movabsq	$.L.str.106, %rax
	movq	-64(%rbp), %rcx
	movq	%rax, 8384(%rcx)
.LBB36_50:                              # %if.end.263
	movq	-64(%rbp), %rax
	cmpq	$0, 8560(%rax)
	jne	.LBB36_52
# BB#51:                                # %if.then.266
	movq	-64(%rbp), %rax
	movq	72(%rax), %rax
	movq	16(%rax), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, 8560(%rcx)
.LBB36_52:                              # %if.end.270
	movq	-64(%rbp), %rax
	cmpq	$0, 8536(%rax)
	je	.LBB36_54
# BB#53:                                # %cond.true.273
	movq	-64(%rbp), %rax
	movq	8536(%rax), %rax
	movsbl	(%rax), %ecx
	movl	%ecx, -260(%rbp)        # 4-byte Spill
	jmp	.LBB36_55
.LBB36_54:                              # %cond.false.275
	xorl	%eax, %eax
	movl	%eax, -260(%rbp)        # 4-byte Spill
	jmp	.LBB36_55
.LBB36_55:                              # %cond.end.276
	movl	-260(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movb	%cl, PC
	movq	-64(%rbp), %rdx
	movq	72(%rdx), %rdx
	cmpl	$0, 144(%rdx)
	jge	.LBB36_57
# BB#56:                                # %if.then.283
	movq	-64(%rbp), %rax
	movq	72(%rax), %rax
	movl	$8, 144(%rax)
.LBB36_57:                              # %if.end.286
	movq	-64(%rbp), %rax
	cmpq	$0, 8568(%rax)
	je	.LBB36_60
# BB#58:                                # %land.lhs.true
	movabsq	$.L.str.107, %rdi
	callq	tgetnum
	cmpl	$0, %eax
	jl	.LBB36_60
# BB#59:                                # %if.then.292
	movq	-64(%rbp), %rax
	movq	$0, 8568(%rax)
	movq	-64(%rbp), %rax
	movq	$0, 8552(%rax)
.LBB36_60:                              # %if.end.295
	movq	-64(%rbp), %rax
	cmpq	$0, 8680(%rax)
	je	.LBB36_63
# BB#61:                                # %land.lhs.true.298
	movabsq	$.L.str.108, %rdi
	callq	tgetnum
	cmpl	$0, %eax
	jl	.LBB36_63
# BB#62:                                # %if.then.302
	movq	-64(%rbp), %rax
	movq	$0, 8680(%rax)
	movq	-64(%rbp), %rax
	movq	$0, 8672(%rax)
.LBB36_63:                              # %if.end.305
	movq	-64(%rbp), %rax
	cmpq	$0, 8568(%rax)
	jne	.LBB36_65
# BB#64:                                # %if.then.309
	movq	-64(%rbp), %rax
	movq	8680(%rax), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, 8568(%rcx)
	movq	-64(%rbp), %rax
	movq	8672(%rax), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, 8552(%rcx)
.LBB36_65:                              # %if.end.314
	movq	-64(%rbp), %rax
	cmpq	$0, 8552(%rax)
	jne	.LBB36_70
# BB#66:                                # %if.then.318
	movabsq	$.L.str.78, %rdi
	movq	-48(%rbp), %rsi
	callq	tgetstr
	movq	%rax, -240(%rbp)
	cmpq	$0, -240(%rbp)
	je	.LBB36_68
# BB#67:                                # %if.then.322
	movq	-240(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, 8552(%rcx)
	jmp	.LBB36_69
.LBB36_68:                              # %if.else.324
	movq	-64(%rbp), %rax
	movq	$0, 8568(%rax)
.LBB36_69:                              # %if.end.326
	jmp	.LBB36_70
.LBB36_70:                              # %if.end.327
	movq	-64(%rbp), %rax
	cmpl	$0, 8768(%rax)
	je	.LBB36_72
# BB#71:                                # %if.then.330
	movq	-64(%rbp), %rax
	movq	72(%rax), %rax
	movq	$0, 64(%rax)
	movq	-64(%rbp), %rax
	movq	$0, 8568(%rax)
	movq	-64(%rbp), %rax
	movq	72(%rax), %rax
	movq	$0, 48(%rax)
	movq	-64(%rbp), %rax
	movq	72(%rax), %rax
	movq	$0, 16(%rax)
.LBB36_72:                              # %if.end.338
	movq	-64(%rbp), %rax
	movq	72(%rax), %rax
	movl	140(%rax), %ecx
	movq	-64(%rbp), %rax
	movl	%ecx, 8784(%rax)
	movq	-64(%rbp), %rdi
	callq	Wcm_init
	cmpl	$-1, %eax
	jne	.LBB36_74
# BB#73:                                # %if.then.344
	movabsq	$.L.str.109, %rdx
	movabsq	$.L.str.110, %rcx
	movb	-25(%rbp), %al
	movq	-72(%rbp), %rsi
	movq	-24(%rbp), %r8
	andb	$1, %al
	movzbl	%al, %edi
	movb	$0, %al
	callq	maybe_fatal
.LBB36_74:                              # %if.end.346
	movq	-64(%rbp), %rax
	movq	72(%rax), %rax
	cmpl	$0, 140(%rax)
	jle	.LBB36_76
# BB#75:                                # %lor.lhs.false.351
	movq	-64(%rbp), %rax
	movq	72(%rax), %rax
	cmpl	$0, 136(%rax)
	jg	.LBB36_77
.LBB36_76:                              # %if.then.356
	movabsq	$.L.str.111, %rax
	movb	-25(%rbp), %cl
	movq	-72(%rbp), %rsi
	andb	$1, %cl
	movzbl	%cl, %edi
	movq	%rax, %rdx
	movq	%rax, %rcx
	movb	$0, %al
	callq	maybe_fatal
.LBB36_77:                              # %if.end.358
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-64(%rbp), %rdx
	cmpq	$0, 8464(%rdx)
	movb	%cl, -261(%rbp)         # 1-byte Spill
	je	.LBB36_80
# BB#78:                                # %land.lhs.true.361
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-64(%rbp), %rdx
	cmpq	$0, 8504(%rdx)
	movb	%cl, -261(%rbp)         # 1-byte Spill
	je	.LBB36_80
# BB#79:                                # %land.rhs
	movq	-64(%rbp), %rax
	movq	8464(%rax), %rdi
	movq	-64(%rbp), %rax
	movq	8504(%rax), %rsi
	callq	strcmp
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	movb	%cl, -261(%rbp)         # 1-byte Spill
.LBB36_80:                              # %land.end
	movb	-261(%rbp), %al         # 1-byte Reload
	movq	-64(%rbp), %rcx
	andb	$1, %al
	movb	8776(%rcx), %dl
	andb	$-2, %dl
	orb	%al, %dl
	movb	%dl, 8776(%rcx)
	movq	-64(%rbp), %rcx
	movq	24(%rcx), %rdi
	callq	fileno
	movl	%eax, %edi
	callq	tabs_safe_p
	xorl	%edi, %edi
	movb	%dil, %dl
	testb	$1, %al
	movb	%dl, -262(%rbp)         # 1-byte Spill
	jne	.LBB36_81
	jmp	.LBB36_82
.LBB36_81:                              # %land.rhs.376
	movq	-64(%rbp), %rax
	movq	72(%rax), %rax
	cmpl	$8, 144(%rax)
	sete	%cl
	movb	%cl, -262(%rbp)         # 1-byte Spill
.LBB36_82:                              # %land.end.381
	movb	-262(%rbp), %al         # 1-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	-64(%rbp), %rsi
	movq	72(%rsi), %rsi
	andb	$1, %al
	movb	148(%rsi), %dil
	shlb	$2, %al
	andb	$-5, %dil
	orb	%al, %dil
	movb	%dil, 148(%rsi)
	movq	-64(%rbp), %rsi
	movq	72(%rsi), %rsi
	cmpq	$0, 80(%rsi)
	movb	%dl, -263(%rbp)         # 1-byte Spill
	je	.LBB36_87
# BB#83:                                # %land.rhs.391
	movb	$1, %al
	movq	-64(%rbp), %rcx
	cmpq	$0, 8632(%rcx)
	movb	%al, -264(%rbp)         # 1-byte Spill
	jne	.LBB36_86
# BB#84:                                # %lor.lhs.false.394
	movb	$1, %al
	movq	-64(%rbp), %rcx
	cmpq	$0, 8416(%rcx)
	movb	%al, -264(%rbp)         # 1-byte Spill
	jne	.LBB36_86
# BB#85:                                # %lor.rhs.397
	movq	-64(%rbp), %rax
	cmpq	$0, 8424(%rax)
	setne	%cl
	movb	%cl, -264(%rbp)         # 1-byte Spill
.LBB36_86:                              # %lor.end.400
	movb	-264(%rbp), %al         # 1-byte Reload
	movb	%al, -263(%rbp)         # 1-byte Spill
.LBB36_87:                              # %land.end.402
	movb	-263(%rbp), %al         # 1-byte Reload
	movq	-64(%rbp), %rcx
	andb	$1, %al
	movb	8788(%rcx), %dl
	shlb	$6, %al
	andb	$-65, %dl
	orb	%al, %dl
	movb	%dl, 8788(%rcx)
	movq	-64(%rbp), %rcx
	cmpq	$0, 8368(%rcx)
	jne	.LBB36_89
# BB#88:                                # %lor.lhs.false.410
	movq	-64(%rbp), %rax
	cmpq	$0, 8376(%rax)
	je	.LBB36_91
.LBB36_89:                              # %land.lhs.true.413
	movb	$1, %al
	movq	-64(%rbp), %rcx
	cmpq	$0, 8448(%rcx)
	movb	%al, -265(%rbp)         # 1-byte Spill
	jne	.LBB36_95
# BB#90:                                # %lor.lhs.false.416
	movb	$1, %al
	movq	-64(%rbp), %rcx
	cmpq	$0, 8456(%rcx)
	movb	%al, -265(%rbp)         # 1-byte Spill
	jne	.LBB36_95
.LBB36_91:                              # %lor.rhs.419
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-64(%rbp), %rdx
	movb	8788(%rdx), %sil
	shrb	$6, %sil
	andb	$1, %sil
	testb	$1, %sil
	movb	%cl, -266(%rbp)         # 1-byte Spill
	je	.LBB36_94
# BB#92:                                # %land.lhs.true.426
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-64(%rbp), %rdx
	cmpq	$0, 8560(%rdx)
	movb	%cl, -266(%rbp)         # 1-byte Spill
	je	.LBB36_94
# BB#93:                                # %land.rhs.429
	movq	-64(%rbp), %rax
	cmpq	$0, 8576(%rax)
	setne	%cl
	movb	%cl, -266(%rbp)         # 1-byte Spill
.LBB36_94:                              # %land.end.432
	movb	-266(%rbp), %al         # 1-byte Reload
	movb	%al, -265(%rbp)         # 1-byte Spill
.LBB36_95:                              # %lor.end.433
	movb	-265(%rbp), %al         # 1-byte Reload
	movq	-64(%rbp), %rcx
	andb	$1, %al
	movb	8788(%rcx), %dl
	shlb	$4, %al
	andb	$-17, %dl
	orb	%al, %dl
	movb	%dl, 8788(%rcx)
	movq	-64(%rbp), %rcx
	cmpq	$0, 8488(%rcx)
	jne	.LBB36_99
# BB#96:                                # %lor.lhs.false.442
	movq	-64(%rbp), %rax
	cmpq	$0, 8504(%rax)
	jne	.LBB36_99
# BB#97:                                # %lor.lhs.false.445
	movq	-64(%rbp), %rax
	cmpq	$0, 8512(%rax)
	jne	.LBB36_99
# BB#98:                                # %lor.lhs.false.448
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-64(%rbp), %rdx
	cmpq	$0, 8496(%rdx)
	movb	%cl, -267(%rbp)         # 1-byte Spill
	je	.LBB36_102
.LBB36_99:                              # %land.rhs.451
	movb	$1, %al
	movq	-64(%rbp), %rcx
	cmpq	$0, 8432(%rcx)
	movb	%al, -268(%rbp)         # 1-byte Spill
	jne	.LBB36_101
# BB#100:                               # %lor.rhs.454
	movq	-64(%rbp), %rax
	cmpq	$0, 8440(%rax)
	setne	%cl
	movb	%cl, -268(%rbp)         # 1-byte Spill
.LBB36_101:                             # %lor.end.457
	movb	-268(%rbp), %al         # 1-byte Reload
	movb	%al, -267(%rbp)         # 1-byte Spill
.LBB36_102:                             # %land.end.459
	movb	-267(%rbp), %al         # 1-byte Reload
	movq	-64(%rbp), %rcx
	andb	$1, %al
	movb	8788(%rcx), %dl
	shlb	$5, %al
	andb	$-33, %dl
	orb	%al, %dl
	movb	%dl, 8788(%rcx)
	movq	-64(%rbp), %rcx
	movq	24(%rcx), %rdi
	callq	fileno
	movl	%eax, %edi
	callq	init_baud_rate
	movq	-64(%rbp), %rdi
	callq	init_sys_modes
	movq	-72(%rbp), %rcx
	movq	%rcx, -8(%rbp)
.LBB36_103:                             # %return
	movq	-8(%rbp), %rax
	addq	$272, %rsp              # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end36:
	.size	init_tty, .Lfunc_end36-init_tty
	.cfi_endproc

	.align	16, 0x90
	.type	maybe_fatal,@function
maybe_fatal:                            # @maybe_fatal
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp116:
	.cfi_def_cfa_offset 16
.Ltmp117:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp118:
	.cfi_def_cfa_register %rbp
	subq	$416, %rsp              # imm = 0x1A0
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
	movq	%rsi, -416(%rbp)        # 8-byte Spill
	je	.LBB37_6
# BB#5:                                 # %entry
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
.LBB37_6:                               # %entry
	movq	-384(%rbp), %rax        # 8-byte Reload
	movq	%rax, -200(%rbp)
	movq	-392(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -208(%rbp)
	movl	-372(%rbp), %edx        # 4-byte Reload
	movb	%dl, %sil
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	-408(%rbp), %r8         # 8-byte Reload
	movq	-416(%rbp), %r9         # 8-byte Reload
	leaq	-64(%rbp), %r10
	andb	$1, %sil
	movb	%sil, -1(%rbp)
	movq	%r9, -16(%rbp)
	movq	%r8, -24(%rbp)
	movq	%rdi, -32(%rbp)
	leaq	-240(%rbp), %rdi
	movq	%rdi, 16(%r10)
	leaq	16(%rbp), %rdi
	movq	%rdi, 8(%r10)
	movl	$48, 4(%r10)
	movl	$32, (%r10)
	cmpq	$0, -16(%rbp)
	je	.LBB37_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	delete_tty
.LBB37_2:                               # %if.end
	testb	$1, -1(%rbp)
	je	.LBB37_4
# BB#3:                                 # %if.then.3
	leaq	-64(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	vfatal
.LBB37_4:                               # %if.else
	leaq	-64(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	verror
.Lfunc_end37:
	.size	maybe_fatal, .Lfunc_end37-maybe_fatal
	.cfi_endproc

	.align	16, 0x90
	.type	tty_default_color_capabilities,@function
tty_default_color_capabilities:         # @tty_default_color_capabilities
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp119:
	.cfi_def_cfa_offset 16
.Ltmp120:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp121:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	andb	$1, %al
	movb	%al, -9(%rbp)
	testb	$1, -9(%rbp)
	je	.LBB38_2
# BB#1:                                 # %if.then
	movabsq	$default_orig_pair, %rdi
	movq	-8(%rbp), %rax
	movq	8728(%rax), %rsi
	callq	dupstring
	movabsq	$default_set_foreground, %rdi
	movq	-8(%rbp), %rax
	movq	8736(%rax), %rsi
	callq	dupstring
	movabsq	$default_set_background, %rdi
	movq	-8(%rbp), %rax
	movq	8744(%rax), %rsi
	callq	dupstring
	movq	-8(%rbp), %rax
	movl	8716(%rax), %ecx
	movl	%ecx, default_max_colors
	movq	-8(%rbp), %rax
	movl	8720(%rax), %ecx
	movl	%ecx, default_max_pairs
	movq	-8(%rbp), %rax
	movl	8712(%rax), %ecx
	movl	%ecx, default_no_color_video
	jmp	.LBB38_3
.LBB38_2:                               # %if.else
	movq	default_orig_pair, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 8728(%rcx)
	movq	default_set_foreground, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 8736(%rcx)
	movq	default_set_background, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 8744(%rcx)
	movl	default_max_colors, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 8716(%rax)
	movl	default_max_pairs, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 8720(%rax)
	movl	default_no_color_video, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 8712(%rax)
.LBB38_3:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	tty_default_color_capabilities, .Lfunc_end38-tty_default_color_capabilities
	.cfi_endproc

	.align	16, 0x90
	.type	term_get_fkeys,@function
term_get_fkeys:                         # @term_get_fkeys
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp122:
	.cfi_def_cfa_offset 16
.Ltmp123:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp124:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$372, %eax              # imm = 0x174
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, term_get_fkeys_address
	movq	-16(%rbp), %rsi
	movq	%rsi, term_get_fkeys_kboard
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movabsq	$term_get_fkeys_1, %rdi
	movabsq	$Fidentity, %rdx
	movq	%rax, %rsi
	callq	internal_condition_case
	movq	%rax, -24(%rbp)         # 8-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	term_get_fkeys, .Lfunc_end39-term_get_fkeys
	.cfi_endproc

	.globl	fatal
	.align	16, 0x90
	.type	fatal,@function
fatal:                                  # @fatal
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp125:
	.cfi_def_cfa_offset 16
.Ltmp126:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp127:
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
	je	.LBB40_2
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
.LBB40_2:                               # %entry
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
	leaq	-32(%rbp), %r9
	movq	%r8, -8(%rbp)
	movq	%r9, %r8
	leaq	-208(%rbp), %r10
	movq	%r10, 16(%r8)
	leaq	16(%rbp), %r10
	movq	%r10, 8(%r8)
	movl	$48, 4(%r8)
	movl	$8, (%r8)
	movq	-8(%rbp), %rdi
	movq	%r9, %rsi
	callq	vfatal
.Lfunc_end40:
	.size	fatal, .Lfunc_end40-fatal
	.cfi_endproc

	.align	16, 0x90
	.type	vfatal,@function
vfatal:                                 # @vfatal
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp128:
	.cfi_def_cfa_offset 16
.Ltmp129:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp130:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movabsq	$.L.str.252, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	stderr, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	fprintf
	movq	stderr, %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movl	%eax, -20(%rbp)         # 4-byte Spill
	callq	vfprintf
	movq	-8(%rbp), %rdi
	movl	%eax, -24(%rbp)         # 4-byte Spill
	callq	strlen
	cmpq	$0, %rax
	jbe	.LBB41_2
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rdi
	callq	strlen
	subq	$1, %rax
	movq	-8(%rbp), %rdi
	movsbl	(%rdi,%rax), %ecx
	cmpl	$10, %ecx
	je	.LBB41_3
.LBB41_2:                               # %if.then
	movabsq	$.L.str.253, %rsi
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB41_3:                               # %if.end
	movq	stderr, %rdi
	callq	fflush
	movl	$1, %edi
	movl	%eax, -32(%rbp)         # 4-byte Spill
	callq	exit
.Lfunc_end41:
	.size	vfatal, .Lfunc_end41-vfatal
	.cfi_endproc

	.globl	syms_of_term
	.align	16, 0x90
	.type	syms_of_term,@function
syms_of_term:                           # @syms_of_term
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp131:
	.cfi_def_cfa_offset 16
.Ltmp132:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp133:
	.cfi_def_cfa_register %rbp
	jmp	.LBB42_1
.LBB42_1:                               # %do.body
	movabsq	$syms_of_term.b_fwd, %rdi
	movabsq	$.L.str.112, %rsi
	movabsq	$globals, %rax
	addq	$3429, %rax             # imm = 0xD65
	movq	%rax, %rdx
	callq	defvar_bool
# BB#2:                                 # %do.end
	movb	$1, globals+3429
# BB#3:                                 # %do.body.1
	movabsq	$syms_of_term.o_fwd, %rdi
	movabsq	$.L.str.4, %rsi
	movabsq	$globals, %rax
	addq	$2240, %rax             # imm = 0x8C0
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#4:                                 # %do.end.2
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+2240
# BB#5:                                 # %do.body.3
	movabsq	$syms_of_term.o_fwd.113, %rdi
	movabsq	$.L.str.9, %rsi
	movabsq	$globals, %rax
	addq	$2048, %rax             # imm = 0x800
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#6:                                 # %do.end.4
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+2048
# BB#7:                                 # %do.body.6
	movabsq	$syms_of_term.b_fwd.114, %rdi
	movabsq	$.L.str.115, %rsi
	movabsq	$globals, %rax
	addq	$3437, %rax             # imm = 0xD6D
	movq	%rax, %rdx
	callq	defvar_bool
# BB#8:                                 # %do.end.7
	movabsq	$Stty_display_color_p, %rax
	movb	$1, globals+3437
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Stty_display_color_cells, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Stty_no_underline, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Stty_type, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Scontrolling_tty_p, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Stty_top_frame, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Ssuspend_tty, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sresume_tty, %rax
	movq	%rax, %rdi
	callq	defsubr
	movq	$0, default_orig_pair
	movq	$0, default_set_foreground
	movq	$0, default_set_background
	movq	$0, encode_terminal_src
	movq	$0, encode_terminal_dst
	popq	%rbp
	retq
.Lfunc_end42:
	.size	syms_of_term, .Lfunc_end42-syms_of_term
	.cfi_endproc

	.align	16, 0x90
	.type	string_cost_one_line,@function
string_cost_one_line:                   # @string_cost_one_line
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp134:
	.cfi_def_cfa_offset 16
.Ltmp135:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp136:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, cost
	cmpq	$0, -8(%rbp)
	je	.LBB43_2
# BB#1:                                 # %if.then
	movl	$1, %esi
	movabsq	$evalcost, %rdx
	movq	-8(%rbp), %rdi
	callq	tputs
.LBB43_2:                               # %if.end
	movl	cost, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end43:
	.size	string_cost_one_line, .Lfunc_end43-string_cost_one_line
	.cfi_endproc

	.align	16, 0x90
	.type	append_composite_glyph,@function
append_composite_glyph:                 # @append_composite_glyph
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp137:
	.cfi_def_cfa_offset 16
.Ltmp138:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp139:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movslq	2360(%rdi), %rdi
	movq	-8(%rbp), %rax
	movq	2352(%rax), %rax
	movq	(%rax,%rdi,8), %rax
	movq	-8(%rbp), %rdi
	movslq	2360(%rdi), %rdi
	movq	-8(%rbp), %rcx
	movq	2352(%rcx), %rcx
	movswl	32(%rcx,%rdi,2), %edx
	movslq	%edx, %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	2360(%rcx), %edx
	addl	$1, %edx
	movslq	%edx, %rcx
	movq	-8(%rbp), %rdi
	movq	2352(%rdi), %rdi
	cmpq	(%rdi,%rcx,8), %rax
	jae	.LBB44_15
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	2352(%rax), %rax
	movq	236(%rax), %rax
	shrq	$34, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB44_8
# BB#2:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	cmpl	$1, 2360(%rax)
	jne	.LBB44_8
# BB#3:                                 # %if.then.16
	movq	-16(%rbp), %rax
	addq	$-48, %rax
	movq	%rax, -24(%rbp)
.LBB44_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movslq	2360(%rcx), %rcx
	movq	-8(%rbp), %rdx
	movq	2352(%rdx), %rdx
	cmpq	(%rdx,%rcx,8), %rax
	jb	.LBB44_7
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB44_4 Depth=1
	movl	$48, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rcx
	addq	$48, %rcx
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	memcpy
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB44_4 Depth=1
	movq	-24(%rbp), %rax
	addq	$-48, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB44_4
.LBB44_7:                               # %for.end
	movq	-8(%rbp), %rax
	movslq	2360(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	2352(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -16(%rbp)
.LBB44_8:                               # %if.end
	movq	-16(%rbp), %rax
	movl	24(%rax), %ecx
	andl	$-8, %ecx
	orl	$1, %ecx
	movl	%ecx, 24(%rax)
	movq	-8(%rbp), %rax
	movl	2368(%rax), %ecx
	movw	%cx, %dx
	movq	-16(%rbp), %rax
	movw	%dx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	2144(%rax), %rax
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	40(%rax), %esi
	andl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	shll	$1, %ecx
	andl	$1, %esi
	orl	%ecx, %esi
	movl	%esi, 40(%rax)
	movq	-8(%rbp), %rax
	cmpl	$0, 2152(%rax)
	jge	.LBB44_10
# BB#9:                                 # %if.then.43
	movq	-16(%rbp), %rax
	movl	40(%rax), %ecx
	andl	$-2, %ecx
	movl	%ecx, 40(%rax)
	movq	-8(%rbp), %rax
	movq	2144(%rax), %rax
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	40(%rax), %edx
	andl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	shll	$1, %ecx
	andl	$1, %edx
	orl	%ecx, %edx
	movl	%edx, 40(%rax)
	jmp	.LBB44_11
.LBB44_10:                              # %if.else
	movq	-16(%rbp), %rax
	movl	40(%rax), %ecx
	andl	$-2, %ecx
	orl	$1, %ecx
	movl	%ecx, 40(%rax)
	movq	-8(%rbp), %rax
	movq	2144(%rax), %rax
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	40(%rax), %edx
	andl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	shll	$1, %ecx
	andl	$1, %edx
	orl	%ecx, %edx
	movl	%edx, 40(%rax)
	movq	-8(%rbp), %rax
	movl	2192(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 32(%rax)
	movq	-8(%rbp), %rax
	movl	2196(%rax), %ecx
	subl	$1, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 36(%rax)
.LBB44_11:                              # %if.end.80
	movq	-8(%rbp), %rax
	movl	2108(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	28(%rax), %edx
	andl	$1048575, %ecx          # imm = 0xFFFFF
	andl	$-1048576, %edx         # imm = 0xFFFFFFFFFFF00000
	orl	%ecx, %edx
	movl	%edx, 28(%rax)
	movq	-16(%rbp), %rax
	movl	24(%rax), %ecx
	andl	$-129, %ecx
	movl	%ecx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	2296(%rax), %rax
	movq	-16(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-8(%rbp), %rax
	movq	2288(%rax), %rax
	movq	-16(%rbp), %rsi
	movq	%rax, 8(%rsi)
	movq	-8(%rbp), %rax
	movl	2456(%rax), %ecx
	shrl	$20, %ecx
	andl	$1, %ecx
	testl	$1, %ecx
	je	.LBB44_13
# BB#12:                                # %if.then.94
	movq	-8(%rbp), %rax
	movsbl	2516(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	24(%rax), %edx
	andl	$127, %ecx
	shll	$10, %ecx
	andl	$-130049, %edx          # imm = 0xFFFFFFFFFFFE03FF
	orl	%ecx, %edx
	movl	%edx, 24(%rax)
	movq	-8(%rbp), %rax
	movl	2504(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	24(%rax), %edx
	andl	$7, %ecx
	shll	$17, %ecx
	andl	$-917505, %edx          # imm = 0xFFFFFFFFFFF1FFFF
	orl	%ecx, %edx
	movl	%edx, 24(%rax)
	jmp	.LBB44_14
.LBB44_13:                              # %if.else.109
	movq	-16(%rbp), %rax
	movl	24(%rax), %ecx
	andl	$-130049, %ecx          # imm = 0xFFFFFFFFFFFE03FF
	movl	%ecx, 24(%rax)
	movq	-16(%rbp), %rax
	movl	24(%rax), %ecx
	andl	$-917505, %ecx          # imm = 0xFFFFFFFFFFF1FFFF
	movl	%ecx, 24(%rax)
.LBB44_14:                              # %if.end.116
	movq	-8(%rbp), %rax
	movslq	2360(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	2352(%rcx), %rcx
	movw	32(%rcx,%rax,2), %dx
	addw	$1, %dx
	movw	%dx, 32(%rcx,%rax,2)
	movq	-16(%rbp), %rax
	addq	$48, %rax
	movq	%rax, -16(%rbp)
.LBB44_15:                              # %if.end.123
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end44:
	.size	append_composite_glyph, .Lfunc_end44-append_composite_glyph
	.cfi_endproc

	.align	16, 0x90
	.type	append_glyphless_glyph,@function
append_glyphless_glyph:                 # @append_glyphless_glyph
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp140:
	.cfi_def_cfa_offset 16
.Ltmp141:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp142:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movslq	2360(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	2352(%rdi), %rdi
	movq	(%rdi,%rdx,8), %rdx
	movq	-8(%rbp), %rdi
	movslq	2360(%rdi), %rdi
	movq	-8(%rbp), %rax
	movq	2352(%rax), %rax
	movswl	32(%rax,%rdi,2), %esi
	movslq	%esi, %rax
	imulq	$48, %rax, %rax
	addq	%rax, %rdx
	movq	%rdx, -32(%rbp)
	movq	-8(%rbp), %rax
	movl	2360(%rax), %esi
	addl	$1, %esi
	movslq	%esi, %rax
	movq	-8(%rbp), %rdx
	movq	2352(%rdx), %rdx
	movq	(%rdx,%rax,8), %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	2352(%rax), %rax
	movq	236(%rax), %rax
	shrq	$34, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB45_9
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	cmpl	$1, 2360(%rax)
	jne	.LBB45_9
# BB#2:                                 # %if.then
	movl	$48, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movl	2368(%rdx), %eax
	movl	%eax, -60(%rbp)
	movslq	-60(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rdi
	subq	%rdi, %rsi
	movq	%rsi, %rax
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	cqto
	idivq	%rcx
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jle	.LBB45_4
# BB#3:                                 # %if.then.17
	movl	$48, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	subq	%rsi, %rdx
	movq	%rdx, %rax
	cqto
	idivq	%rcx
	movl	%eax, %edi
	movl	%edi, -60(%rbp)
.LBB45_4:                               # %if.end
	movq	-32(%rbp), %rax
	addq	$-48, %rax
	movq	%rax, -56(%rbp)
.LBB45_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rcx
	movslq	2360(%rcx), %rcx
	movq	-8(%rbp), %rdx
	movq	2352(%rdx), %rdx
	cmpq	(%rdx,%rcx,8), %rax
	jb	.LBB45_8
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB45_5 Depth=1
	movl	$48, %eax
	movl	%eax, %edx
	movslq	-60(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	-56(%rbp), %rcx
	movq	-56(%rbp), %rsi
	movq	%rcx, %rdi
	callq	memcpy
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB45_5 Depth=1
	movq	-56(%rbp), %rax
	addq	$-48, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB45_5
.LBB45_8:                               # %for.end
	movq	-8(%rbp), %rax
	movslq	2360(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	2352(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movslq	-60(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -40(%rbp)
.LBB45_9:                               # %if.end.40
	movq	-32(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.LBB45_11
# BB#10:                                # %if.then.43
	jmp	.LBB45_22
.LBB45_11:                              # %if.end.44
	movq	-32(%rbp), %rax
	movl	24(%rax), %ecx
	andl	$-8, %ecx
	movl	%ecx, 24(%rax)
	movq	-32(%rbp), %rax
	movw	$1, 16(%rax)
	movl	-12(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	28(%rax), %edx
	andl	$1048575, %ecx          # imm = 0xFFFFF
	andl	$-1048576, %edx         # imm = 0xFFFFFFFFFFF00000
	orl	%ecx, %edx
	movl	%edx, 28(%rax)
	movq	-32(%rbp), %rax
	movl	24(%rax), %ecx
	andl	$-129, %ecx
	movl	%ecx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	2296(%rax), %rax
	movq	-32(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-8(%rbp), %rax
	movq	2288(%rax), %rax
	movq	-32(%rbp), %rsi
	movq	%rax, 8(%rsi)
	movq	-8(%rbp), %rax
	movl	2456(%rax), %ecx
	shrl	$20, %ecx
	andl	$1, %ecx
	testl	$1, %ecx
	je	.LBB45_13
# BB#12:                                # %if.then.59
	movq	-8(%rbp), %rax
	movsbl	2516(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	24(%rax), %edx
	andl	$127, %ecx
	shll	$10, %ecx
	andl	$-130049, %edx          # imm = 0xFFFFFFFFFFFE03FF
	orl	%ecx, %edx
	movl	%edx, 24(%rax)
	movq	-8(%rbp), %rax
	movl	2504(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	24(%rax), %edx
	andl	$7, %ecx
	shll	$17, %ecx
	andl	$-917505, %edx          # imm = 0xFFFFFFFFFFF1FFFF
	orl	%ecx, %edx
	movl	%edx, 24(%rax)
	jmp	.LBB45_14
.LBB45_13:                              # %if.else
	movq	-32(%rbp), %rax
	movl	24(%rax), %ecx
	andl	$-130049, %ecx          # imm = 0xFFFFFFFFFFFE03FF
	movl	%ecx, 24(%rax)
	movq	-32(%rbp), %rax
	movl	24(%rax), %ecx
	andl	$-917505, %ecx          # imm = 0xFFFFFFFFFFF1FFFF
	movl	%ecx, 24(%rax)
.LBB45_14:                              # %if.end.79
	movl	$0, -44(%rbp)
.LBB45_15:                              # %for.cond.80
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-44(%rbp), %eax
	movq	-8(%rbp), %rdx
	cmpl	2364(%rdx), %eax
	movb	%cl, -73(%rbp)          # 1-byte Spill
	jge	.LBB45_17
# BB#16:                                # %land.rhs
                                        #   in Loop: Header=BB45_15 Depth=1
	movq	-32(%rbp), %rax
	cmpq	-40(%rbp), %rax
	setb	%cl
	movb	%cl, -73(%rbp)          # 1-byte Spill
.LBB45_17:                              # %land.end
                                        #   in Loop: Header=BB45_15 Depth=1
	movb	-73(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB45_18
	jmp	.LBB45_22
.LBB45_18:                              # %for.body.85
                                        #   in Loop: Header=BB45_15 Depth=1
	cmpl	$0, -44(%rbp)
	jle	.LBB45_20
# BB#19:                                # %if.then.88
                                        #   in Loop: Header=BB45_15 Depth=1
	movl	$48, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rcx
	movq	-32(%rbp), %rsi
	addq	$-48, %rsi
	movq	%rcx, %rdi
	callq	memcpy
.LBB45_20:                              # %if.end.91
                                        #   in Loop: Header=BB45_15 Depth=1
	movslq	-44(%rbp), %rax
	movq	-24(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, 40(%rax)
	movq	-8(%rbp), %rax
	movslq	2360(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	2352(%rcx), %rcx
	movw	32(%rcx,%rax,2), %si
	addw	$1, %si
	movw	%si, 32(%rcx,%rax,2)
	movq	-32(%rbp), %rax
	addq	$48, %rax
	movq	%rax, -32(%rbp)
# BB#21:                                # %for.inc.101
                                        #   in Loop: Header=BB45_15 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB45_15
.LBB45_22:                              # %for.end.103
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end45:
	.size	append_glyphless_glyph, .Lfunc_end45-append_glyphless_glyph
	.cfi_endproc

	.align	16, 0x90
	.type	tty_menu_make_room,@function
tty_menu_make_room:                     # @tty_menu_make_room
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp143:
	.cfi_def_cfa_offset 16
.Ltmp144:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp145:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	-8(%rbp), %rax
	movslq	(%rax), %rax
	cmpq	%rax, %rdi
	jne	.LBB46_2
# BB#1:                                 # %if.then
	leaq	-16(%rbp), %rsi
	movl	$1, %eax
	movl	%eax, %edx
	movq	$-1, %rcx
	movl	$8, %eax
	movl	%eax, %r8d
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	callq	xpalloc
	movq	-8(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	shlq	$3, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	xrealloc
	movq	-8(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rcx
	shlq	$3, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	xrealloc
	movq	-8(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	-16(%rbp), %rcx
	shlq	$2, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	xrealloc
	movq	-8(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	-16(%rbp), %rcx
	shlq	$3, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	xrealloc
	movq	-8(%rbp), %rcx
	movq	%rax, 48(%rcx)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 32(%rcx)
.LBB46_2:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end46:
	.size	tty_menu_make_room, .Lfunc_end46-tty_menu_make_room
	.cfi_endproc

	.align	16, 0x90
	.type	tty_menu_search_pane,@function
tty_menu_search_pane:                   # @tty_menu_search_pane
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp146:
	.cfi_def_cfa_offset 16
.Ltmp147:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp148:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	$0, -24(%rbp)
.LBB47_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB47_10
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB47_1 Depth=1
	movslq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB47_8
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB47_1 Depth=1
	movl	-20(%rbp), %eax
	movslq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	24(%rdx), %rdx
	cmpl	(%rdx,%rcx,4), %eax
	jne	.LBB47_5
# BB#4:                                 # %if.then.4
	movslq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB47_11
.LBB47_5:                               # %if.end
                                        #   in Loop: Header=BB47_1 Depth=1
	movslq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	(%rcx,%rax,8), %rdi
	movl	-20(%rbp), %esi
	callq	tty_menu_search_pane
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB47_7
# BB#6:                                 # %if.then.12
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB47_11
.LBB47_7:                               # %if.end.13
                                        #   in Loop: Header=BB47_1 Depth=1
	jmp	.LBB47_8
.LBB47_8:                               # %if.end.14
                                        #   in Loop: Header=BB47_1 Depth=1
	jmp	.LBB47_9
.LBB47_9:                               # %for.inc
                                        #   in Loop: Header=BB47_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB47_1
.LBB47_10:                              # %for.end
	movq	$0, -8(%rbp)
.LBB47_11:                              # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end47:
	.size	tty_menu_search_pane, .Lfunc_end47-tty_menu_search_pane
	.cfi_endproc

	.align	16, 0x90
	.type	tty_menu_calc_size,@function
tty_menu_calc_size:                     # @tty_menu_calc_size
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp149:
	.cfi_def_cfa_offset 16
.Ltmp150:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp151:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movl	44(%rdx), %eax
	movl	%eax, -40(%rbp)
	movq	-8(%rbp), %rdx
	movl	(%rdx), %eax
	movl	%eax, -44(%rbp)
	movl	$0, -28(%rbp)
.LBB48_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB48_10
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB48_1 Depth=1
	movslq	-28(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB48_8
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB48_1 Depth=1
	leaq	-36(%rbp), %rsi
	leaq	-32(%rbp), %rdx
	movslq	-28(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	tty_menu_calc_size
	movl	-36(%rbp), %r8d
	cmpl	-40(%rbp), %r8d
	jle	.LBB48_5
# BB#4:                                 # %if.then.7
                                        #   in Loop: Header=BB48_1 Depth=1
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
.LBB48_5:                               # %if.end
                                        #   in Loop: Header=BB48_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-32(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jle	.LBB48_7
# BB#6:                                 # %if.then.9
                                        #   in Loop: Header=BB48_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -44(%rbp)
.LBB48_7:                               # %if.end.11
                                        #   in Loop: Header=BB48_1 Depth=1
	jmp	.LBB48_8
.LBB48_8:                               # %if.end.12
                                        #   in Loop: Header=BB48_1 Depth=1
	jmp	.LBB48_9
.LBB48_9:                               # %for.inc
                                        #   in Loop: Header=BB48_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB48_1
.LBB48_10:                              # %for.end
	movl	-40(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-44(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end48:
	.size	tty_menu_calc_size, .Lfunc_end48-tty_menu_calc_size
	.cfi_endproc

	.align	16, 0x90
	.type	save_and_enable_current_matrix,@function
save_and_enable_current_matrix:         # @save_and_enable_current_matrix
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp152:
	.cfi_def_cfa_offset 16
.Ltmp153:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp154:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$104, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rcx, %rdi
	callq	xzalloc
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	200(%rax), %rax
	movl	24(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 24(%rax)
	movq	-24(%rbp), %rax
	movslq	24(%rax), %rax
	shlq	$8, %rax
	movq	%rax, %rdi
	callq	xzalloc
	movq	-24(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movl	$0, -12(%rbp)
.LBB49_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	24(%rcx), %eax
	jge	.LBB49_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB49_1 Depth=1
	movq	-8(%rbp), %rax
	movq	200(%rax), %rax
	movq	8(%rax), %rax
	movslq	-12(%rbp), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-12(%rbp), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movswq	34(%rax), %rax
	imulq	$48, %rax, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	xmalloc
	movq	-40(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	memcpy
	movq	-32(%rbp), %rax
	movw	34(%rax), %r8w
	movq	-40(%rbp), %rax
	movw	%r8w, 34(%rax)
	movq	-40(%rbp), %rax
	movq	236(%rax), %rcx
	andq	$-1025, %rcx            # imm = 0xFFFFFFFFFFFFFBFF
	orq	$1024, %rcx             # imm = 0x400
	movq	%rcx, 236(%rax)
	movq	-32(%rbp), %rax
	movl	40(%rax), %r9d
	movq	-40(%rbp), %rax
	movl	%r9d, 40(%rax)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB49_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB49_1
.LBB49_4:                               # %for.end
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end49:
	.size	save_and_enable_current_matrix, .Lfunc_end49-save_and_enable_current_matrix
	.cfi_endproc

	.align	16, 0x90
	.type	tty_menu_display,@function
tty_menu_display:                       # @tty_menu_display
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp155:
	.cfi_def_cfa_offset 16
.Ltmp156:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp157:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movb	32(%rbp), %al
	movl	24(%rbp), %r10d
	movl	16(%rbp), %r11d
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	movl	%r9d, -36(%rbp)
	movl	%r11d, -40(%rbp)
	movl	%r10d, -44(%rbp)
	andb	$1, %al
	movb	%al, -45(%rbp)
	movq	selected_frame, %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB50_1
	jmp	.LBB50_3
.LBB50_1:                               # %land.lhs.true
	movq	selected_frame, %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB50_3
# BB#2:                                 # %cond.true
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB50_4
.LBB50_3:                               # %cond.false
	callq	emacs_abort
.LBB50_4:                               # %cond.end
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rcx
	movq	208(%rcx), %rcx
	shrq	$23, %rcx
	andq	$7, %rcx
	movl	%ecx, %edx
	cmpl	$1, %edx
	je	.LBB50_6
# BB#5:                                 # %lor.lhs.false
	movq	-88(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB50_7
.LBB50_6:                               # %cond.true.9
	movq	-88(%rbp), %rax
	movq	376(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB50_8
.LBB50_7:                               # %cond.false.12
	callq	emacs_abort
.LBB50_8:                               # %cond.end.13
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, -96(%rbp)
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edx
	subl	-44(%rbp), %edx
	movq	-88(%rbp), %rcx
	movl	284(%rcx), %esi
	subl	$1, %esi
	subl	-16(%rbp), %esi
	cmpl	%esi, %edx
	jge	.LBB50_10
# BB#9:                                 # %cond.true.19
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	subl	-44(%rbp), %ecx
	movl	%ecx, -132(%rbp)        # 4-byte Spill
	jmp	.LBB50_11
.LBB50_10:                              # %cond.false.22
	movq	-88(%rbp), %rax
	movl	284(%rax), %ecx
	subl	$1, %ecx
	subl	-16(%rbp), %ecx
	movl	%ecx, -132(%rbp)        # 4-byte Spill
.LBB50_11:                              # %cond.end.26
	movl	-132(%rbp), %eax        # 4-byte Reload
	movl	%eax, -100(%rbp)
	movq	$0, menu_help_message
	movq	-8(%rbp), %rcx
	movl	44(%rcx), %eax
	movl	%eax, -60(%rbp)
	movq	-96(%rbp), %rcx
	movq	72(%rcx), %rcx
	movl	4(%rcx), %eax
	movl	%eax, -76(%rbp)
	movq	-96(%rbp), %rcx
	movq	72(%rcx), %rcx
	movl	(%rcx), %eax
	movl	%eax, -72(%rbp)
	movl	$0, -52(%rbp)
.LBB50_12:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jge	.LBB50_28
# BB#13:                                # %for.body
                                        #   in Loop: Header=BB50_12 Depth=1
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -104(%rbp)
	movl	-52(%rbp), %eax
	addl	-44(%rbp), %eax
	movl	%eax, -108(%rbp)
	movslq	-108(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	16(%rdx), %rdx
	cmpq	$0, (%rdx,%rcx,8)
	je	.LBB50_15
# BB#14:                                # %if.then
                                        #   in Loop: Header=BB50_12 Depth=1
	movl	-104(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -104(%rbp)
.LBB50_15:                              # %if.end
                                        #   in Loop: Header=BB50_12 Depth=1
	movslq	-108(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rcx
	cmpq	$0, (%rcx,%rax,8)
	jne	.LBB50_17
# BB#16:                                # %land.lhs.true.37
                                        #   in Loop: Header=BB50_12 Depth=1
	movb	$1, %al
	movslq	-108(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	24(%rdx), %rdx
	cmpl	$0, (%rdx,%rcx,4)
	movb	%al, -133(%rbp)         # 1-byte Spill
	jne	.LBB50_18
.LBB50_17:                              # %lor.rhs
                                        #   in Loop: Header=BB50_12 Depth=1
	movslq	-108(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rcx
	cmpq	$0, (%rcx,%rax,8)
	setne	%dl
	movb	%dl, -133(%rbp)         # 1-byte Spill
.LBB50_18:                              # %lor.end
                                        #   in Loop: Header=BB50_12 Depth=1
	movb	-133(%rbp), %al         # 1-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -64(%rbp)
	movl	-16(%rbp), %ecx
	addl	-52(%rbp), %ecx
	cmpl	-40(%rbp), %ecx
	movb	%dl, -134(%rbp)         # 1-byte Spill
	jne	.LBB50_21
# BB#19:                                # %land.lhs.true.47
                                        #   in Loop: Header=BB50_12 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-12(%rbp), %eax
	cmpl	-36(%rbp), %eax
	movb	%cl, -134(%rbp)         # 1-byte Spill
	jg	.LBB50_21
# BB#20:                                # %land.rhs
                                        #   in Loop: Header=BB50_12 Depth=1
	movl	-36(%rbp), %eax
	movl	-12(%rbp), %ecx
	addl	-104(%rbp), %ecx
	cmpl	%ecx, %eax
	setl	%dl
	movb	%dl, -134(%rbp)         # 1-byte Spill
.LBB50_21:                              # %land.end
                                        #   in Loop: Header=BB50_12 Depth=1
	movb	-134(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -68(%rbp)
	movl	-64(%rbp), %ecx
	movl	-68(%rbp), %edx
	shll	$1, %edx
	addl	%edx, %ecx
	movslq	%ecx, %rsi
	movq	-32(%rbp), %rdi
	movl	(%rdi,%rsi,4), %ecx
	movl	%ecx, -56(%rbp)
	testb	$1, -45(%rbp)
	je	.LBB50_24
# BB#22:                                # %land.lhs.true.55
                                        #   in Loop: Header=BB50_12 Depth=1
	movl	-64(%rbp), %eax
	movl	-68(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	cmpl	$2, %eax
	jl	.LBB50_24
# BB#23:                                # %if.then.59
                                        #   in Loop: Header=BB50_12 Depth=1
	movslq	-108(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, menu_help_message
	movl	-20(%rbp), %edx
	subl	$1, %edx
	movl	%edx, menu_help_paneno
	movl	-108(%rbp), %edx
	movl	%edx, menu_help_itemno
.LBB50_24:                              # %if.end.63
                                        #   in Loop: Header=BB50_12 Depth=1
	cmpl	$0, -68(%rbp)
	je	.LBB50_26
# BB#25:                                # %if.then.65
                                        #   in Loop: Header=BB50_12 Depth=1
	movl	-16(%rbp), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -72(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -76(%rbp)
.LBB50_26:                              # %if.end.67
                                        #   in Loop: Header=BB50_12 Depth=1
	movslq	-108(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx,%rax,8), %rdi
	movl	-104(%rbp), %esi
	movl	-56(%rbp), %edx
	movl	-12(%rbp), %ecx
	movl	-16(%rbp), %r8d
	addl	-52(%rbp), %r8d
	movslq	-108(%rbp), %rax
	movq	-8(%rbp), %r9
	movq	16(%r9), %r9
	cmpq	$0, (%r9,%rax,8)
	setne	%r10b
	movzbl	%r10b, %r11d
	andl	$1, %r11d
	movl	%r11d, %r9d
	callq	display_tty_menu_item
# BB#27:                                # %for.inc
                                        #   in Loop: Header=BB50_12 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB50_12
.LBB50_28:                              # %for.end
	movq	-88(%rbp), %rdi
	movl	-72(%rbp), %esi
	movl	-76(%rbp), %edx
	callq	update_frame_with_menu
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end50:
	.size	tty_menu_display, .Lfunc_end50-tty_menu_display
	.cfi_endproc

	.align	16, 0x90
	.type	tty_hide_cursor,@function
tty_hide_cursor:                        # @tty_hide_cursor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp158:
	.cfi_def_cfa_offset 16
.Ltmp159:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp160:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movb	8788(%rdi), %al
	andb	$1, %al
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	jne	.LBB51_6
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movb	8788(%rax), %cl
	andb	$-2, %cl
	orb	$1, %cl
	movb	%cl, 8788(%rax)
# BB#2:                                 # %do.body
	movq	-8(%rbp), %rax
	cmpq	$0, 8624(%rax)
	je	.LBB51_4
# BB#3:                                 # %if.then.5
	movabsq	$cmputc, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, current_tty
	movq	-8(%rbp), %rax
	movq	8624(%rax), %rdi
	movq	selected_frame, %rax
	subq	$5, %rax
	movl	284(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	subl	(%rax), %ecx
	movl	%ecx, %esi
	callq	tputs
.LBB51_4:                               # %if.end
	jmp	.LBB51_5
.LBB51_5:                               # %do.end
	jmp	.LBB51_6
.LBB51_6:                               # %if.end.8
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end51:
	.size	tty_hide_cursor, .Lfunc_end51-tty_hide_cursor
	.cfi_endproc

	.align	16, 0x90
	.type	read_menu_input,@function
read_menu_input:                        # @read_menu_input
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp161:
	.cfi_def_cfa_offset 16
.Ltmp162:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp163:
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	%r8d, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-48(%rbp), %rdx
	testb	$1, (%rdx)
	je	.LBB52_2
# BB#1:                                 # %if.then
	movq	-48(%rbp), %rax
	movb	$0, (%rax)
	movq	-16(%rbp), %rax
	movq	208(%rax), %rcx
	andq	$-1048577, %rcx         # imm = 0xFFFFFFFFFFEFFFFF
	orq	$1048576, %rcx          # imm = 0x100000
	movq	%rcx, 208(%rax)
	jmp	.LBB52_46
.LBB52_2:                               # %if.else
	movb	$1, -57(%rbp)
	movl	$0, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	je	.LBB52_4
# BB#3:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB52_5
.LBB52_4:                               # %cond.true
	movq	-16(%rbp), %rax
	movq	376(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB52_6
.LBB52_5:                               # %cond.false
	callq	emacs_abort
.LBB52_6:                               # %cond.end
	movl	$901, %edi              # imm = 0x385
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -72(%rbp)
	movq	globals+2944, %rcx
	movq	%rcx, -80(%rbp)
	movq	-72(%rbp), %rcx
	movb	8788(%rcx), %dl
	andb	$-5, %dl
	orb	$4, %dl
	movb	%dl, 8788(%rcx)
	callq	builtin_lisp_symbol
	movq	%rax, globals+2944
.LBB52_7:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	callq	read_menu_command
	movq	%rax, -56(%rbp)
# BB#8:                                 # %do.cond
                                        #   in Loop: Header=BB52_7 Depth=1
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB52_7
# BB#9:                                 # %do.end
	movl	$901, %edi              # imm = 0x385
	movq	-72(%rbp), %rax
	movb	8788(%rax), %cl
	andb	$-5, %cl
	movb	%cl, 8788(%rax)
	movq	-80(%rbp), %rax
	movq	%rax, globals+2944
	movq	-56(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB52_16
# BB#10:                                # %lor.lhs.false.21
	movl	$944, %edi              # imm = 0x3B0
	movq	-56(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB52_16
# BB#11:                                # %lor.lhs.false.24
	movq	-16(%rbp), %rax
	movq	selected_frame, %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB52_12
	jmp	.LBB52_14
.LBB52_12:                              # %land.lhs.true
	movq	selected_frame, %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB52_14
# BB#13:                                # %cond.true.28
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB52_15
.LBB52_14:                              # %cond.false.30
	callq	emacs_abort
.LBB52_15:                              # %cond.end.31
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rcx, %rax
	je	.LBB52_17
.LBB52_16:                              # %if.then.34
	movl	$-1, -4(%rbp)
	jmp	.LBB52_47
.LBB52_17:                              # %if.end
	movl	$946, %edi              # imm = 0x3B2
	movq	-56(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB52_19
# BB#18:                                # %if.then.37
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	mouse_get_xy
	jmp	.LBB52_43
.LBB52_19:                              # %if.else.38
	movl	$949, %edi              # imm = 0x3B5
	movq	-56(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB52_21
# BB#20:                                # %if.then.41
	movb	$0, -57(%rbp)
	movl	$2, -64(%rbp)
	jmp	.LBB52_42
.LBB52_21:                              # %if.else.42
	movl	$951, %edi              # imm = 0x3B7
	movq	-56(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB52_23
# BB#22:                                # %if.then.45
	movb	$0, -57(%rbp)
	movl	$3, -64(%rbp)
	jmp	.LBB52_41
.LBB52_23:                              # %if.else.46
	movl	$948, %edi              # imm = 0x3B4
	movq	-56(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB52_28
# BB#24:                                # %if.then.49
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	-40(%rbp), %ecx
	jge	.LBB52_26
# BB#25:                                # %if.then.51
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	jmp	.LBB52_27
.LBB52_26:                              # %if.else.52
	movl	$4, -64(%rbp)
.LBB52_27:                              # %if.end.53
	jmp	.LBB52_40
.LBB52_28:                              # %if.else.54
	movl	$950, %edi              # imm = 0x3B6
	movq	-56(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB52_33
# BB#29:                                # %if.then.57
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	-36(%rbp), %ecx
	jle	.LBB52_31
# BB#30:                                # %if.then.59
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, (%rax)
	jmp	.LBB52_32
.LBB52_31:                              # %if.else.61
	movl	$5, -64(%rbp)
.LBB52_32:                              # %if.end.62
	jmp	.LBB52_39
.LBB52_33:                              # %if.else.63
	movl	$952, %edi              # imm = 0x3B8
	movq	-56(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB52_35
# BB#34:                                # %if.then.66
	movl	$1, -64(%rbp)
	jmp	.LBB52_38
.LBB52_35:                              # %if.else.67
	movl	$945, %edi              # imm = 0x3B1
	movq	-56(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB52_37
# BB#36:                                # %if.then.70
	movb	$0, -57(%rbp)
.LBB52_37:                              # %if.end.71
	jmp	.LBB52_38
.LBB52_38:                              # %if.end.72
	jmp	.LBB52_39
.LBB52_39:                              # %if.end.73
	jmp	.LBB52_40
.LBB52_40:                              # %if.end.74
	jmp	.LBB52_41
.LBB52_41:                              # %if.end.75
	jmp	.LBB52_42
.LBB52_42:                              # %if.end.76
	jmp	.LBB52_43
.LBB52_43:                              # %if.end.77
	testb	$1, -57(%rbp)
	je	.LBB52_45
# BB#44:                                # %if.then.79
	movq	-16(%rbp), %rax
	movq	208(%rax), %rcx
	andq	$-1048577, %rcx         # imm = 0xFFFFFFFFFFEFFFFF
	orq	$1048576, %rcx          # imm = 0x100000
	movq	%rcx, 208(%rax)
.LBB52_45:                              # %if.end.84
	movl	-64(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB52_47
.LBB52_46:                              # %if.end.85
	movl	$0, -4(%rbp)
.LBB52_47:                              # %return
	movl	-4(%rbp), %eax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end52:
	.size	read_menu_input, .Lfunc_end52-read_menu_input
	.cfi_endproc

	.align	16, 0x90
	.type	screen_update,@function
screen_update:                          # @screen_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp164:
	.cfi_def_cfa_offset 16
.Ltmp165:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp166:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	restore_desired_matrix
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movq	-8(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	update_frame_with_menu
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end53:
	.size	screen_update, .Lfunc_end53-screen_update
	.cfi_endproc

	.align	16, 0x90
	.type	free_saved_screen,@function
free_saved_screen:                      # @free_saved_screen
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp167:
	.cfi_def_cfa_offset 16
.Ltmp168:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp169:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB54_2
# BB#1:                                 # %if.then
	jmp	.LBB54_7
.LBB54_2:                               # %if.end
	movl	$0, -12(%rbp)
.LBB54_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	24(%rcx), %eax
	jge	.LBB54_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB54_3 Depth=1
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-12(%rbp), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	xfree
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB54_3 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB54_3
.LBB54_6:                               # %for.end
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	xfree
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
.LBB54_7:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end54:
	.size	free_saved_screen, .Lfunc_end54-free_saved_screen
	.cfi_endproc

	.align	16, 0x90
	.type	tty_show_cursor,@function
tty_show_cursor:                        # @tty_show_cursor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp170:
	.cfi_def_cfa_offset 16
.Ltmp171:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp172:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movb	8788(%rdi), %al
	andb	$1, %al
	testb	$1, %al
	je	.LBB55_12
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movb	8788(%rax), %cl
	andb	$-2, %cl
	movb	%cl, 8788(%rax)
# BB#2:                                 # %do.body
	movq	-8(%rbp), %rax
	cmpq	$0, 8608(%rax)
	je	.LBB55_4
# BB#3:                                 # %if.then.4
	movabsq	$cmputc, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, current_tty
	movq	-8(%rbp), %rax
	movq	8608(%rax), %rdi
	movq	selected_frame, %rax
	subq	$5, %rax
	movl	284(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	subl	(%rax), %ecx
	movl	%ecx, %esi
	callq	tputs
.LBB55_4:                               # %if.end
	jmp	.LBB55_5
.LBB55_5:                               # %do.end
	testb	$1, globals+3437
	je	.LBB55_11
# BB#6:                                 # %if.then.8
	jmp	.LBB55_7
.LBB55_7:                               # %do.body.9
	movq	-8(%rbp), %rax
	cmpq	$0, 8616(%rax)
	je	.LBB55_9
# BB#8:                                 # %if.then.11
	movabsq	$cmputc, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, current_tty
	movq	-8(%rbp), %rax
	movq	8616(%rax), %rdi
	movq	selected_frame, %rax
	subq	$5, %rax
	movl	284(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	subl	(%rax), %ecx
	movl	%ecx, %esi
	callq	tputs
.LBB55_9:                               # %if.end.18
	jmp	.LBB55_10
.LBB55_10:                              # %do.end.19
	jmp	.LBB55_11
.LBB55_11:                              # %if.end.20
	jmp	.LBB55_12
.LBB55_12:                              # %if.end.21
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end55:
	.size	tty_show_cursor, .Lfunc_end55-tty_show_cursor
	.cfi_endproc

	.align	16, 0x90
	.type	mouse_get_xy,@function
mouse_get_xy:                           # @mouse_get_xy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp173:
	.cfi_def_cfa_offset 16
.Ltmp174:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp175:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	selected_frame, %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB56_1
	jmp	.LBB56_3
.LBB56_1:                               # %land.lhs.true
	movq	selected_frame, %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB56_3
# BB#2:                                 # %cond.true
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB56_4
.LBB56_3:                               # %cond.false
	callq	emacs_abort
.LBB56_4:                               # %cond.end
	xorl	%edi, %edi
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	376(%rax), %rax
	cmpq	$0, 248(%rax)
	je	.LBB56_6
# BB#5:                                 # %if.then
	leaq	-24(%rbp), %rdi
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	leaq	-48(%rbp), %rdx
	leaq	-52(%rbp), %rcx
	leaq	-32(%rbp), %r8
	leaq	-40(%rbp), %r9
	leaq	-64(%rbp), %rax
	movq	-24(%rbp), %r10
	movq	376(%r10), %r10
	movq	%rax, (%rsp)
	callq	*248(%r10)
.LBB56_6:                               # %if.end
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB56_8
# BB#7:                                 # %if.then.9
	movq	-32(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
.LBB56_8:                               # %if.end.12
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end56:
	.size	mouse_get_xy, .Lfunc_end56-mouse_get_xy
	.cfi_endproc

	.align	16, 0x90
	.type	restore_desired_matrix,@function
restore_desired_matrix:                 # @restore_desired_matrix
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp176:
	.cfi_def_cfa_offset 16
.Ltmp177:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp178:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB57_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	24(%rcx), %eax
	jge	.LBB57_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB57_1 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-20(%rbp), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	movslq	-20(%rbp), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movswq	34(%rax), %rax
	imulq	$48, %rax, %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	memcpy
	movq	-32(%rbp), %rax
	movw	34(%rax), %r8w
	movq	-40(%rbp), %rax
	movw	%r8w, 34(%rax)
	movq	-32(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$10, %rax
	andq	$1, %rax
	movb	%al, %r9b
	movq	-40(%rbp), %rax
	andb	$1, %r9b
	movzbl	%r9b, %r10d
	movl	%r10d, %ecx
	movq	236(%rax), %rdx
	shlq	$10, %rcx
	andq	$-1025, %rdx            # imm = 0xFFFFFFFFFFFFFBFF
	orq	%rcx, %rdx
	movq	%rdx, 236(%rax)
	movq	-32(%rbp), %rax
	movl	40(%rax), %r10d
	movq	-40(%rbp), %rax
	movl	%r10d, 40(%rax)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB57_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB57_1
.LBB57_4:                               # %for.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end57:
	.size	restore_desired_matrix, .Lfunc_end57-restore_desired_matrix
	.cfi_endproc

	.align	16, 0x90
	.type	tty_menu_last_menubar_item,@function
tty_menu_last_menubar_item:             # @tty_menu_last_menubar_item
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp179:
	.cfi_def_cfa_offset 16
.Ltmp180:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp181:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	208(%rdi), %rdi
	shrq	$23, %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$1, %eax
	jne	.LBB58_8
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	cmpq	$0, 376(%rax)
	je	.LBB58_8
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB58_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-12(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	ASIZE
	movq	-40(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	jge	.LBB58_7
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB58_3 Depth=1
	movq	-24(%rbp), %rdi
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rsi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB58_6
# BB#5:                                 # %if.then.9
	jmp	.LBB58_7
.LBB58_6:                               # %if.end
                                        #   in Loop: Header=BB58_3 Depth=1
	movl	-12(%rbp), %eax
	addl	$4, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB58_3
.LBB58_7:                               # %while.end
	movl	-12(%rbp), %eax
	subl	$4, %eax
	movl	%eax, -12(%rbp)
.LBB58_8:                               # %if.end.11
	movl	-12(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end58:
	.size	tty_menu_last_menubar_item, .Lfunc_end58-tty_menu_last_menubar_item
	.cfi_endproc

	.align	16, 0x90
	.type	tty_free_frame_resources,@function
tty_free_frame_resources:               # @tty_free_frame_resources
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp182:
	.cfi_def_cfa_offset 16
.Ltmp183:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp184:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	free_frame_faces
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	callq	xfree
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end59:
	.size	tty_free_frame_resources, .Lfunc_end59-tty_free_frame_resources
	.cfi_endproc

	.align	16, 0x90
	.type	delete_tty,@function
delete_tty:                             # @delete_tty
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp185:
	.cfi_def_cfa_offset 16
.Ltmp186:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp187:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 64(%rdi)
	jne	.LBB60_2
# BB#1:                                 # %if.then
	jmp	.LBB60_24
.LBB60_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	tty_list, %rax
	jne	.LBB60_4
# BB#3:                                 # %if.then.2
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, tty_list
	jmp	.LBB60_13
.LBB60_4:                               # %if.else
	movq	tty_list, %rax
	movq	%rax, -24(%rbp)
.LBB60_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -24(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	je	.LBB60_7
# BB#6:                                 # %land.rhs
                                        #   in Loop: Header=BB60_5 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-16(%rbp), %rax
	setne	%cl
	movb	%cl, -25(%rbp)          # 1-byte Spill
.LBB60_7:                               # %land.end
                                        #   in Loop: Header=BB60_5 Depth=1
	movb	-25(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB60_8
	jmp	.LBB60_10
.LBB60_8:                               # %for.body
                                        #   in Loop: Header=BB60_5 Depth=1
	jmp	.LBB60_9
.LBB60_9:                               # %for.inc
                                        #   in Loop: Header=BB60_5 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB60_5
.LBB60_10:                              # %for.end
	cmpq	$0, -24(%rbp)
	jne	.LBB60_12
# BB#11:                                # %if.then.8
	callq	emacs_abort
.LBB60_12:                              # %if.end.9
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
.LBB60_13:                              # %if.end.13
	movq	-16(%rbp), %rdi
	callq	reset_sys_modes
	movq	-8(%rbp), %rdi
	callq	delete_terminal
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rdi
	callq	xfree
	movq	-16(%rbp), %rdi
	movq	16(%rdi), %rdi
	callq	xfree
	movq	-16(%rbp), %rdi
	cmpq	$0, 24(%rdi)
	je	.LBB60_17
# BB#14:                                # %if.then.16
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	callq	fileno
	movl	%eax, %edi
	callq	delete_keyboard_wait_descriptor
	movq	-16(%rbp), %rcx
	movq	24(%rcx), %rcx
	cmpq	stdin, %rcx
	je	.LBB60_16
# BB#15:                                # %if.then.20
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	callq	fclose
	movl	%eax, -32(%rbp)         # 4-byte Spill
.LBB60_16:                              # %if.end.23
	jmp	.LBB60_17
.LBB60_17:                              # %if.end.24
	movq	-16(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB60_21
# BB#18:                                # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	stdout, %rax
	je	.LBB60_21
# BB#19:                                # %land.lhs.true.28
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	24(%rcx), %rax
	je	.LBB60_21
# BB#20:                                # %if.then.32
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	fclose
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB60_21:                              # %if.end.35
	movq	-16(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB60_23
# BB#22:                                # %if.then.37
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	callq	fclose
	movl	%eax, -40(%rbp)         # 4-byte Spill
.LBB60_23:                              # %if.end.40
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	callq	xfree
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	callq	xfree
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
.LBB60_24:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end60:
	.size	delete_tty, .Lfunc_end60-delete_tty
	.cfi_endproc

	.align	16, 0x90
	.type	tty_cursor_to,@function
tty_cursor_to:                          # @tty_cursor_to
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp188:
	.cfi_def_cfa_offset 16
.Ltmp189:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp190:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	208(%rdi), %rdi
	shrq	$23, %rdi
	andq	$7, %rdi
	movl	%edi, %edx
	cmpl	$1, %edx
	je	.LBB61_2
# BB#1:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB61_3
.LBB61_2:                               # %cond.true
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB61_4
.LBB61_3:                               # %cond.false
	callq	emacs_abort
.LBB61_4:                               # %cond.end
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rcx
	movb	8776(%rcx), %dl
	shrb	$1, %dl
	andb	$1, %dl
	testb	$1, %dl
	jne	.LBB61_6
# BB#5:                                 # %if.then
	jmp	.LBB61_14
.LBB61_6:                               # %if.end
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movl	(%rax), %ecx
	cmpl	-12(%rbp), %ecx
	jne	.LBB61_9
# BB#7:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movl	4(%rax), %ecx
	cmpl	-16(%rbp), %ecx
	jne	.LBB61_9
# BB#8:                                 # %if.then.15
	jmp	.LBB61_14
.LBB61_9:                               # %if.end.16
	movq	-24(%rbp), %rax
	cmpl	$0, 8760(%rax)
	jne	.LBB61_11
# BB#10:                                # %if.then.17
	movq	-24(%rbp), %rdi
	callq	tty_background_highlight
.LBB61_11:                              # %if.end.18
	movq	-24(%rbp), %rax
	cmpl	$0, 8756(%rax)
	jne	.LBB61_13
# BB#12:                                # %if.then.20
	movq	-24(%rbp), %rdi
	callq	tty_turn_off_insert
.LBB61_13:                              # %if.end.21
	movq	-24(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	callq	cmgoto
.LBB61_14:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end61:
	.size	tty_cursor_to, .Lfunc_end61-tty_cursor_to
	.cfi_endproc

	.align	16, 0x90
	.type	tty_raw_cursor_to,@function
tty_raw_cursor_to:                      # @tty_raw_cursor_to
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp191:
	.cfi_def_cfa_offset 16
.Ltmp192:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp193:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	208(%rdi), %rdi
	shrq	$23, %rdi
	andq	$7, %rdi
	movl	%edi, %edx
	cmpl	$1, %edx
	je	.LBB62_2
# BB#1:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB62_3
.LBB62_2:                               # %cond.true
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB62_4
.LBB62_3:                               # %cond.false
	callq	emacs_abort
.LBB62_4:                               # %cond.end
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rcx
	movq	72(%rcx), %rcx
	movl	(%rcx), %edx
	cmpl	-12(%rbp), %edx
	jne	.LBB62_7
# BB#5:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movl	4(%rax), %ecx
	cmpl	-16(%rbp), %ecx
	jne	.LBB62_7
# BB#6:                                 # %if.then
	jmp	.LBB62_12
.LBB62_7:                               # %if.end
	movq	-24(%rbp), %rax
	cmpl	$0, 8760(%rax)
	jne	.LBB62_9
# BB#8:                                 # %if.then.11
	movq	-24(%rbp), %rdi
	callq	tty_background_highlight
.LBB62_9:                               # %if.end.12
	movq	-24(%rbp), %rax
	cmpl	$0, 8756(%rax)
	jne	.LBB62_11
# BB#10:                                # %if.then.14
	movq	-24(%rbp), %rdi
	callq	tty_turn_off_insert
.LBB62_11:                              # %if.end.15
	movq	-24(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	callq	cmgoto
.LBB62_12:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end62:
	.size	tty_raw_cursor_to, .Lfunc_end62-tty_raw_cursor_to
	.cfi_endproc

	.align	16, 0x90
	.type	tty_clear_to_end,@function
tty_clear_to_end:                       # @tty_clear_to_end
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp194:
	.cfi_def_cfa_offset 16
.Ltmp195:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp196:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	208(%rdi), %rdi
	shrq	$23, %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$1, %eax
	je	.LBB63_2
# BB#1:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB63_3
.LBB63_2:                               # %cond.true
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB63_4
.LBB63_3:                               # %cond.false
	callq	emacs_abort
.LBB63_4:                               # %cond.end
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rcx
	cmpq	$0, 8392(%rcx)
	je	.LBB63_6
# BB#5:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	tty_background_highlight
	movabsq	$cmputc, %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, current_tty
	movq	-24(%rbp), %rdi
	movq	8392(%rdi), %rdi
	movq	selected_frame, %rax
	subq	$5, %rax
	movl	284(%rax), %ecx
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	subl	(%rax), %ecx
	movl	%ecx, %esi
	callq	tputs
	jmp	.LBB63_11
.LBB63_6:                               # %if.else
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movl	(%rax), %ecx
	movl	%ecx, -12(%rbp)
.LBB63_7:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	284(%rcx), %eax
	jge	.LBB63_10
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB63_7 Depth=1
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	cursor_to
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	272(%rax), %esi
	callq	clear_end_of_line
# BB#9:                                 # %for.inc
                                        #   in Loop: Header=BB63_7 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB63_7
.LBB63_10:                              # %for.end
	jmp	.LBB63_11
.LBB63_11:                              # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end63:
	.size	tty_clear_to_end, .Lfunc_end63-tty_clear_to_end
	.cfi_endproc

	.align	16, 0x90
	.type	tty_clear_frame,@function
tty_clear_frame:                        # @tty_clear_frame
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp197:
	.cfi_def_cfa_offset 16
.Ltmp198:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp199:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	208(%rdi), %rdi
	shrq	$23, %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$1, %eax
	je	.LBB64_2
# BB#1:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB64_3
.LBB64_2:                               # %cond.true
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB64_4
.LBB64_3:                               # %cond.false
	callq	emacs_abort
.LBB64_4:                               # %cond.end
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rcx
	cmpq	$0, 8408(%rcx)
	je	.LBB64_6
# BB#5:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	tty_background_highlight
	movabsq	$cmputc, %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, current_tty
	movq	-16(%rbp), %rdi
	movq	8408(%rdi), %rdi
	movq	selected_frame, %rax
	subq	$5, %rax
	movl	284(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	subl	(%rax), %ecx
	movl	%ecx, %esi
	callq	tputs
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	movl	$0, (%rax)
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	movl	$0, 4(%rax)
	jmp	.LBB64_7
.LBB64_6:                               # %if.else
	xorl	%eax, %eax
	movq	-8(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	cursor_to
	movq	-8(%rbp), %rdi
	callq	clear_to_end
.LBB64_7:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end64:
	.size	tty_clear_frame, .Lfunc_end64-tty_clear_frame
	.cfi_endproc

	.align	16, 0x90
	.type	tty_clear_end_of_line,@function
tty_clear_end_of_line:                  # @tty_clear_end_of_line
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp200:
	.cfi_def_cfa_offset 16
.Ltmp201:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp202:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	208(%rdi), %rdi
	shrq	$23, %rdi
	andq	$7, %rdi
	movl	%edi, %esi
	cmpl	$1, %esi
	je	.LBB65_2
# BB#1:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB65_3
.LBB65_2:                               # %cond.true
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB65_4
.LBB65_3:                               # %cond.false
	callq	emacs_abort
.LBB65_4:                               # %cond.end
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rcx
	movb	8776(%rcx), %dl
	shrb	$1, %dl
	andb	$1, %dl
	testb	$1, %dl
	jne	.LBB65_6
# BB#5:                                 # %if.then
	jmp	.LBB65_30
.LBB65_6:                               # %if.end
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movl	4(%rax), %ecx
	cmpl	-12(%rbp), %ecx
	jl	.LBB65_8
# BB#7:                                 # %if.then.13
	jmp	.LBB65_30
.LBB65_8:                               # %if.end.14
	movq	-24(%rbp), %rdi
	callq	tty_background_highlight
	movq	-24(%rbp), %rdi
	cmpq	$0, 8400(%rdi)
	je	.LBB65_10
# BB#9:                                 # %if.then.15
	movl	$1, %esi
	movabsq	$cmputc, %rdx
	movq	-24(%rbp), %rax
	movq	%rax, current_tty
	movq	-24(%rbp), %rax
	movq	8400(%rax), %rdi
	callq	tputs
	jmp	.LBB65_30
.LBB65_10:                              # %if.else
	movq	-24(%rbp), %rdi
	callq	tty_turn_off_insert
	movq	-24(%rbp), %rdi
	movq	72(%rdi), %rdi
	movb	148(%rdi), %al
	andb	$1, %al
	testb	$1, %al
	je	.LBB65_14
# BB#11:                                # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movl	(%rax), %ecx
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movl	140(%rax), %edx
	subl	$1, %edx
	cmpl	%edx, %ecx
	jne	.LBB65_14
# BB#12:                                # %land.lhs.true.24
	movl	-12(%rbp), %eax
	movq	-24(%rbp), %rcx
	movq	72(%rcx), %rcx
	cmpl	136(%rcx), %eax
	jne	.LBB65_14
# BB#13:                                # %if.then.27
	movl	-12(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -12(%rbp)
.LBB65_14:                              # %if.end.28
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -16(%rbp)
.LBB65_15:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB65_20
# BB#16:                                # %for.body
                                        #   in Loop: Header=BB65_15 Depth=1
	movq	-24(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB65_18
# BB#17:                                # %if.then.33
                                        #   in Loop: Header=BB65_15 Depth=1
	movl	$32, %edi
	movq	-24(%rbp), %rax
	movq	40(%rax), %rsi
	callq	fputc
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB65_18:                              # %if.end.35
                                        #   in Loop: Header=BB65_15 Depth=1
	movl	$32, %edi
	movq	-24(%rbp), %rax
	movq	32(%rax), %rsi
	callq	fputc
	movl	%eax, -40(%rbp)         # 4-byte Spill
# BB#19:                                # %for.inc
                                        #   in Loop: Header=BB65_15 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB65_15
.LBB65_20:                              # %for.end
	movl	-12(%rbp), %eax
	movq	-24(%rbp), %rcx
	movq	72(%rcx), %rcx
	subl	4(%rcx), %eax
	movq	-24(%rbp), %rcx
	movq	72(%rcx), %rcx
	addl	4(%rcx), %eax
	movl	%eax, 4(%rcx)
	movq	-24(%rbp), %rcx
	movq	72(%rcx), %rcx
	cmpl	136(%rcx), %eax
	jl	.LBB65_29
# BB#21:                                # %land.lhs.true.45
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movb	148(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB65_29
# BB#22:                                # %if.then.51
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movb	148(%rax), %cl
	shrb	$3, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB65_24
# BB#23:                                # %if.then.57
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movl	$-1, 4(%rax)
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movl	$-1, (%rax)
	jmp	.LBB65_28
.LBB65_24:                              # %if.else.62
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movb	148(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB65_26
# BB#25:                                # %if.then.68
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movl	$0, 4(%rax)
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	jmp	.LBB65_27
.LBB65_26:                              # %if.else.74
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movl	4(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 4(%rax)
.LBB65_27:                              # %if.end.78
	jmp	.LBB65_28
.LBB65_28:                              # %if.end.79
	jmp	.LBB65_29
.LBB65_29:                              # %if.end.80
	jmp	.LBB65_30
.LBB65_30:                              # %if.end.81
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end65:
	.size	tty_clear_end_of_line, .Lfunc_end65-tty_clear_end_of_line
	.cfi_endproc

	.align	16, 0x90
	.type	tty_ins_del_lines,@function
tty_ins_del_lines:                      # @tty_ins_del_lines
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp203:
	.cfi_def_cfa_offset 16
.Ltmp204:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp205:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	208(%rdi), %rdi
	shrq	$23, %rdi
	andq	$7, %rdi
	movl	%edi, %edx
	cmpl	$1, %edx
	je	.LBB66_2
# BB#1:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB66_3
.LBB66_2:                               # %cond.true
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB66_4
.LBB66_3:                               # %cond.false
	callq	emacs_abort
.LBB66_4:                               # %cond.end
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	cmpl	$0, -16(%rbp)
	jle	.LBB66_6
# BB#5:                                 # %cond.true.9
	movq	-24(%rbp), %rax
	movq	8376(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB66_7
.LBB66_6:                               # %cond.false.10
	movq	-24(%rbp), %rax
	movq	8456(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB66_7:                               # %cond.end.11
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	cmpl	$0, -16(%rbp)
	jle	.LBB66_9
# BB#8:                                 # %cond.true.14
	movq	-24(%rbp), %rax
	movq	8368(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB66_10
.LBB66_9:                               # %cond.false.15
	movq	-24(%rbp), %rax
	movq	8448(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB66_10:                              # %cond.end.16
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	cmpl	$0, -16(%rbp)
	jle	.LBB66_12
# BB#11:                                # %cond.true.19
	movq	-24(%rbp), %rax
	movq	8576(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB66_13
.LBB66_12:                              # %cond.false.20
	movq	-24(%rbp), %rax
	movq	8560(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB66_13:                              # %cond.end.21
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -48(%rbp)
	cmpl	$0, -16(%rbp)
	jge	.LBB66_15
# BB#14:                                # %cond.true.24
	xorl	%eax, %eax
	subl	-16(%rbp), %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB66_16
.LBB66_15:                              # %cond.false.25
	movl	-16(%rbp), %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB66_16:                              # %cond.end.26
	movl	-100(%rbp), %eax        # 4-byte Reload
	movl	%eax, -52(%rbp)
	movq	-8(%rbp), %rcx
	movq	208(%rcx), %rcx
	shrq	$23, %rcx
	andq	$7, %rcx
	movl	%ecx, %eax
	cmpl	$1, %eax
	je	.LBB66_18
# BB#17:                                # %lor.lhs.false.34
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB66_19
.LBB66_18:                              # %cond.true.41
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB66_20
.LBB66_19:                              # %cond.false.45
	callq	emacs_abort
.LBB66_20:                              # %cond.end.46
	movq	-112(%rbp), %rax        # 8-byte Reload
	movb	8788(%rax), %cl
	shrb	$6, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB66_23
# BB#21:                                # %land.lhs.true
	movl	-12(%rbp), %eax
	addl	-52(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	8784(%rcx), %eax
	jl	.LBB66_23
# BB#22:                                # %if.then
	jmp	.LBB66_59
.LBB66_23:                              # %if.end
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	je	.LBB66_25
# BB#24:                                # %lor.lhs.false.59
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB66_26
.LBB66_25:                              # %cond.true.66
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB66_27
.LBB66_26:                              # %cond.false.70
	callq	emacs_abort
.LBB66_27:                              # %cond.end.71
	movq	-120(%rbp), %rax        # 8-byte Reload
	movb	8788(%rax), %cl
	shrb	$7, %cl
	testb	$1, %cl
	jne	.LBB66_30
# BB#28:                                # %land.lhs.true.76
	movl	-12(%rbp), %eax
	addl	-52(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	284(%rcx), %eax
	jl	.LBB66_30
# BB#29:                                # %if.then.79
	jmp	.LBB66_59
.LBB66_30:                              # %if.end.80
	cmpq	$0, -32(%rbp)
	je	.LBB66_32
# BB#31:                                # %if.then.81
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	raw_cursor_to
	movq	-24(%rbp), %rdi
	callq	tty_background_highlight
	xorl	%edx, %edx
	movl	%edx, %esi
	xorl	%edx, %edx
	movq	-32(%rbp), %rdi
	movl	-52(%rbp), %ecx
	movl	%edx, -124(%rbp)        # 4-byte Spill
	movl	-124(%rbp), %r8d        # 4-byte Reload
	movl	-124(%rbp), %r9d        # 4-byte Reload
	movl	$0, (%rsp)
	callq	tparam
	movabsq	$cmputc, %rdx
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, current_tty
	movq	-64(%rbp), %rdi
	movq	selected_frame, %rax
	subq	$5, %rax
	movl	284(%rax), %ecx
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	subl	(%rax), %ecx
	movl	%ecx, %esi
	callq	tputs
	movq	-64(%rbp), %rdi
	callq	xfree
	jmp	.LBB66_47
.LBB66_32:                              # %if.else
	cmpq	$0, -40(%rbp)
	je	.LBB66_39
# BB#33:                                # %if.then.86
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	raw_cursor_to
	movq	-24(%rbp), %rdi
	callq	tty_background_highlight
.LBB66_34:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -52(%rbp)
	cmpl	$0, %eax
	jl	.LBB66_36
# BB#35:                                # %while.body
                                        #   in Loop: Header=BB66_34 Depth=1
	movabsq	$cmputc, %rdx
	movq	-24(%rbp), %rax
	movq	%rax, current_tty
	movq	-40(%rbp), %rdi
	movq	selected_frame, %rax
	subq	$5, %rax
	movl	284(%rax), %ecx
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	subl	(%rax), %ecx
	movl	%ecx, %esi
	callq	tputs
	jmp	.LBB66_34
.LBB66_36:                              # %while.end
	movq	-24(%rbp), %rax
	cmpl	$0, 8768(%rax)
	je	.LBB66_38
# BB#37:                                # %if.then.94
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movl	$0, 4(%rax)
.LBB66_38:                              # %if.end.96
	jmp	.LBB66_46
.LBB66_39:                              # %if.else.97
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rax
	movl	8784(%rax), %edx
	callq	tty_set_scroll_region
	cmpl	$0, -16(%rbp)
	jge	.LBB66_41
# BB#40:                                # %if.then.100
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	8784(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, %esi
	callq	raw_cursor_to
	jmp	.LBB66_42
.LBB66_41:                              # %if.else.103
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	raw_cursor_to
.LBB66_42:                              # %if.end.104
	movq	-24(%rbp), %rdi
	callq	tty_background_highlight
.LBB66_43:                              # %while.cond.105
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -52(%rbp)
	cmpl	$0, %eax
	jl	.LBB66_45
# BB#44:                                # %while.body.108
                                        #   in Loop: Header=BB66_43 Depth=1
	movabsq	$cmputc, %rdx
	movq	-24(%rbp), %rax
	movq	%rax, current_tty
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	8784(%rax), %ecx
	subl	-12(%rbp), %ecx
	movl	%ecx, %esi
	callq	tputs
	jmp	.LBB66_43
.LBB66_45:                              # %while.end.111
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	8784(%rax), %edx
	callq	tty_set_scroll_region
.LBB66_46:                              # %if.end.113
	jmp	.LBB66_47
.LBB66_47:                              # %if.end.114
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	je	.LBB66_49
# BB#48:                                # %lor.lhs.false.121
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB66_50
.LBB66_49:                              # %cond.true.128
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB66_51
.LBB66_50:                              # %cond.false.132
	callq	emacs_abort
.LBB66_51:                              # %cond.end.133
	movq	-136(%rbp), %rax        # 8-byte Reload
	movb	8788(%rax), %cl
	shrb	$6, %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB66_59
# BB#52:                                # %land.lhs.true.140
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	je	.LBB66_54
# BB#53:                                # %lor.lhs.false.147
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB66_55
.LBB66_54:                              # %cond.true.154
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB66_56
.LBB66_55:                              # %cond.false.158
	callq	emacs_abort
.LBB66_56:                              # %cond.end.159
	movq	-144(%rbp), %rax        # 8-byte Reload
	movb	8788(%rax), %cl
	shrb	$7, %cl
	testb	$1, %cl
	je	.LBB66_59
# BB#57:                                # %land.lhs.true.165
	cmpl	$0, -16(%rbp)
	jge	.LBB66_59
# BB#58:                                # %if.then.167
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	284(%rax), %ecx
	addl	-16(%rbp), %ecx
	movl	%ecx, %esi
	callq	cursor_to
	movq	-8(%rbp), %rdi
	callq	clear_to_end
.LBB66_59:                              # %if.end.170
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end66:
	.size	tty_ins_del_lines, .Lfunc_end66-tty_ins_del_lines
	.cfi_endproc

	.align	16, 0x90
	.type	tty_insert_glyphs,@function
tty_insert_glyphs:                      # @tty_insert_glyphs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp206:
	.cfi_def_cfa_offset 16
.Ltmp207:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp208:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	$0, -40(%rbp)
	movq	-8(%rbp), %rsi
	movq	208(%rsi), %rsi
	shrq	$23, %rsi
	andq	$7, %rsi
	movl	%esi, %edx
	cmpl	$1, %edx
	je	.LBB67_2
# BB#1:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB67_3
.LBB67_2:                               # %cond.true
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB67_4
.LBB67_3:                               # %cond.false
	callq	emacs_abort
.LBB67_4:                               # %cond.end
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rcx
	cmpq	$0, 8496(%rcx)
	je	.LBB67_8
# BB#5:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %esi
	xorl	%eax, %eax
	movq	-72(%rbp), %rcx
	movq	8496(%rcx), %rdi
	movl	-20(%rbp), %ecx
	movl	%eax, %edx
	movl	%eax, %r8d
	movl	%eax, %r9d
	movl	$0, (%rsp)
	callq	tparam
	movl	$1, %esi
	movabsq	$cmputc, %rdx
	movq	%rax, -32(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, current_tty
	movq	-32(%rbp), %rdi
	callq	tputs
	movq	-32(%rbp), %rdi
	callq	xfree
	cmpq	$0, -16(%rbp)
	je	.LBB67_7
# BB#6:                                 # %if.then.10
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	callq	write_glyphs
.LBB67_7:                               # %if.end
	jmp	.LBB67_56
.LBB67_8:                               # %if.end.11
	movq	-72(%rbp), %rdi
	callq	tty_turn_on_insert
	movl	-20(%rbp), %eax
	movq	-72(%rbp), %rdi
	movq	72(%rdi), %rdi
	addl	4(%rdi), %eax
	movl	%eax, 4(%rdi)
	movq	-72(%rbp), %rdi
	movq	72(%rdi), %rdi
	cmpl	136(%rdi), %eax
	jl	.LBB67_17
# BB#9:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	72(%rax), %rax
	movb	148(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB67_17
# BB#10:                                # %if.then.19
	movq	-72(%rbp), %rax
	movq	72(%rax), %rax
	movb	148(%rax), %cl
	shrb	$3, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB67_12
# BB#11:                                # %if.then.25
	movq	-72(%rbp), %rax
	movq	72(%rax), %rax
	movl	$-1, 4(%rax)
	movq	-72(%rbp), %rax
	movq	72(%rax), %rax
	movl	$-1, (%rax)
	jmp	.LBB67_16
.LBB67_12:                              # %if.else
	movq	-72(%rbp), %rax
	movq	72(%rax), %rax
	movb	148(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB67_14
# BB#13:                                # %if.then.33
	movq	-72(%rbp), %rax
	movq	72(%rax), %rax
	movl	$0, 4(%rax)
	movq	-72(%rbp), %rax
	movq	72(%rax), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	jmp	.LBB67_15
.LBB67_14:                              # %if.else.38
	movq	-72(%rbp), %rax
	movq	72(%rax), %rax
	movl	4(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 4(%rax)
.LBB67_15:                              # %if.end.41
	jmp	.LBB67_16
.LBB67_16:                              # %if.end.42
	jmp	.LBB67_17
.LBB67_17:                              # %if.end.43
	cmpq	$0, -16(%rbp)
	jne	.LBB67_19
# BB#18:                                # %if.then.45
	movb	$32, -49(%rbp)
.LBB67_19:                              # %if.end.46
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	96(%rax), %rax
	movl	8(%rax), %ecx
	andl	$16383, %ecx            # imm = 0x3FFF
	andl	$2048, %ecx             # imm = 0x800
	cmpl	$0, %ecx
	je	.LBB67_21
# BB#20:                                # %cond.true.51
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	96(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB67_22
.LBB67_21:                              # %cond.false.54
	movabsq	$safe_terminal_coding, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB67_22
.LBB67_22:                              # %cond.end.55
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movl	8(%rax), %ecx
	shrl	$14, %ecx
	andl	$31, %ecx
	andl	$-2, %ecx
	movl	8(%rax), %edx
	andl	$31, %ecx
	shll	$14, %ecx
	andl	$-507905, %edx          # imm = 0xFFFFFFFFFFF83FFF
	orl	%ecx, %edx
	movl	%edx, 8(%rax)
.LBB67_23:                              # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB67_31 Depth 2
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -20(%rbp)
	cmpl	$0, %eax
	jle	.LBB67_55
# BB#24:                                # %while.body
                                        #   in Loop: Header=BB67_23 Depth=1
	jmp	.LBB67_25
.LBB67_25:                              # %do.body
                                        #   in Loop: Header=BB67_23 Depth=1
	movq	-72(%rbp), %rax
	cmpq	$0, 8488(%rax)
	je	.LBB67_27
# BB#26:                                # %if.then.66
                                        #   in Loop: Header=BB67_23 Depth=1
	movl	$1, %esi
	movabsq	$cmputc, %rdx
	movq	-72(%rbp), %rax
	movq	%rax, current_tty
	movq	-72(%rbp), %rax
	movq	8488(%rax), %rdi
	callq	tputs
.LBB67_27:                              # %if.end.68
                                        #   in Loop: Header=BB67_23 Depth=1
	jmp	.LBB67_28
.LBB67_28:                              # %do.end
                                        #   in Loop: Header=BB67_23 Depth=1
	cmpq	$0, -16(%rbp)
	jne	.LBB67_30
# BB#29:                                # %if.then.70
                                        #   in Loop: Header=BB67_23 Depth=1
	leaq	-49(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-64(%rbp), %rax
	movq	$1, 384(%rax)
	jmp	.LBB67_42
.LBB67_30:                              # %if.else.71
                                        #   in Loop: Header=BB67_23 Depth=1
	movq	-72(%rbp), %rdi
	callq	tty_highlight_if_desired
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	28(%rax), %ecx
	andl	$1048575, %ecx          # imm = 0xFFFFF
	movl	%ecx, %esi
	callq	turn_on_face
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	addq	$48, %rax
	movq	%rax, -16(%rbp)
.LBB67_31:                              # %while.cond.74
                                        #   Parent Loop BB67_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -20(%rbp)
	movb	%cl, -89(%rbp)          # 1-byte Spill
	je	.LBB67_33
# BB#32:                                # %land.rhs
                                        #   in Loop: Header=BB67_31 Depth=2
	movq	-16(%rbp), %rax
	movl	24(%rax), %ecx
	shrl	$7, %ecx
	andl	$1, %ecx
	movb	%cl, %dl
	movb	%dl, -89(%rbp)          # 1-byte Spill
.LBB67_33:                              # %land.end
                                        #   in Loop: Header=BB67_31 Depth=2
	movb	-89(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB67_34
	jmp	.LBB67_39
.LBB67_34:                              # %while.body.80
                                        #   in Loop: Header=BB67_31 Depth=2
	jmp	.LBB67_35
.LBB67_35:                              # %do.body.81
                                        #   in Loop: Header=BB67_31 Depth=2
	movq	-72(%rbp), %rax
	cmpq	$0, 8488(%rax)
	je	.LBB67_37
# BB#36:                                # %if.then.84
                                        #   in Loop: Header=BB67_31 Depth=2
	movl	$1, %esi
	movabsq	$cmputc, %rdx
	movq	-72(%rbp), %rax
	movq	%rax, current_tty
	movq	-72(%rbp), %rax
	movq	8488(%rax), %rdi
	callq	tputs
.LBB67_37:                              # %if.end.86
                                        #   in Loop: Header=BB67_31 Depth=2
	jmp	.LBB67_38
.LBB67_38:                              # %do.end.87
                                        #   in Loop: Header=BB67_31 Depth=2
	movq	-16(%rbp), %rax
	addq	$48, %rax
	movq	%rax, -16(%rbp)
	movl	-20(%rbp), %ecx
	addl	$-1, %ecx
	movl	%ecx, -20(%rbp)
	jmp	.LBB67_31
.LBB67_39:                              # %while.end
                                        #   in Loop: Header=BB67_23 Depth=1
	cmpl	$0, -20(%rbp)
	jg	.LBB67_41
# BB#40:                                # %if.then.91
                                        #   in Loop: Header=BB67_23 Depth=1
	movq	-64(%rbp), %rax
	movl	8(%rax), %ecx
	shrl	$14, %ecx
	andl	$31, %ecx
	orl	$1, %ecx
	movl	8(%rax), %edx
	andl	$31, %ecx
	shll	$14, %ecx
	andl	$-507905, %edx          # imm = 0xFFFFFFFFFFF83FFF
	orl	%ecx, %edx
	movl	%edx, 8(%rax)
.LBB67_41:                              # %if.end.101
                                        #   in Loop: Header=BB67_23 Depth=1
	movl	$1, %esi
	movq	-40(%rbp), %rdi
	movq	-64(%rbp), %rdx
	callq	encode_terminal_code
	movq	%rax, -48(%rbp)
.LBB67_42:                              # %if.end.103
                                        #   in Loop: Header=BB67_23 Depth=1
	movq	-64(%rbp), %rax
	cmpq	$0, 384(%rax)
	jle	.LBB67_48
# BB#43:                                # %if.then.106
                                        #   in Loop: Header=BB67_23 Depth=1
	callq	block_input
	movl	$1, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movq	384(%rcx), %rdx
	movq	-72(%rbp), %rcx
	movq	32(%rcx), %rcx
	callq	fwrite
	movq	-72(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	ferror
	cmpl	$0, %eax
	je	.LBB67_45
# BB#44:                                # %if.then.112
                                        #   in Loop: Header=BB67_23 Depth=1
	movq	-72(%rbp), %rax
	movq	32(%rax), %rdi
	callq	clearerr
.LBB67_45:                              # %if.end.114
                                        #   in Loop: Header=BB67_23 Depth=1
	movq	-72(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB67_47
# BB#46:                                # %if.then.116
                                        #   in Loop: Header=BB67_23 Depth=1
	movl	$1, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movq	384(%rcx), %rdx
	movq	-72(%rbp), %rcx
	movq	40(%rcx), %rcx
	callq	fwrite
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB67_47:                              # %if.end.120
                                        #   in Loop: Header=BB67_23 Depth=1
	callq	unblock_input
.LBB67_48:                              # %if.end.121
                                        #   in Loop: Header=BB67_23 Depth=1
	jmp	.LBB67_49
.LBB67_49:                              # %do.body.122
                                        #   in Loop: Header=BB67_23 Depth=1
	movq	-72(%rbp), %rax
	cmpq	$0, 8512(%rax)
	je	.LBB67_51
# BB#50:                                # %if.then.124
                                        #   in Loop: Header=BB67_23 Depth=1
	movl	$1, %esi
	movabsq	$cmputc, %rdx
	movq	-72(%rbp), %rax
	movq	%rax, current_tty
	movq	-72(%rbp), %rax
	movq	8512(%rax), %rdi
	callq	tputs
.LBB67_51:                              # %if.end.126
                                        #   in Loop: Header=BB67_23 Depth=1
	jmp	.LBB67_52
.LBB67_52:                              # %do.end.127
                                        #   in Loop: Header=BB67_23 Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB67_54
# BB#53:                                # %if.then.129
                                        #   in Loop: Header=BB67_23 Depth=1
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	28(%rax), %ecx
	andl	$1048575, %ecx          # imm = 0xFFFFF
	movl	%ecx, %esi
	callq	turn_off_face
	movq	-72(%rbp), %rdi
	callq	tty_turn_off_highlight
.LBB67_54:                              # %if.end.133
                                        #   in Loop: Header=BB67_23 Depth=1
	jmp	.LBB67_23
.LBB67_55:                              # %while.end.134
	movq	-72(%rbp), %rdi
	callq	cmcheckmagic
.LBB67_56:                              # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end67:
	.size	tty_insert_glyphs, .Lfunc_end67-tty_insert_glyphs
	.cfi_endproc

	.align	16, 0x90
	.type	tty_write_glyphs,@function
tty_write_glyphs:                       # @tty_write_glyphs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp209:
	.cfi_def_cfa_offset 16
.Ltmp210:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp211:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rsi
	movq	208(%rsi), %rsi
	shrq	$23, %rsi
	andq	$7, %rsi
	movl	%esi, %edx
	cmpl	$1, %edx
	je	.LBB68_2
# BB#1:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB68_3
.LBB68_2:                               # %cond.true
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB68_4
.LBB68_3:                               # %cond.false
	callq	emacs_abort
.LBB68_4:                               # %cond.end
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	tty_turn_off_insert
	movq	-56(%rbp), %rdi
	callq	tty_hide_cursor
	movq	-56(%rbp), %rax
	movq	72(%rax), %rax
	movb	148(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB68_8
# BB#5:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	72(%rax), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movq	-8(%rbp), %rax
	cmpl	284(%rax), %ecx
	jne	.LBB68_8
# BB#6:                                 # %land.lhs.true.13
	movq	-56(%rbp), %rax
	movq	72(%rax), %rax
	movl	4(%rax), %ecx
	addl	-20(%rbp), %ecx
	movq	-8(%rbp), %rax
	cmpl	272(%rax), %ecx
	jne	.LBB68_8
# BB#7:                                 # %if.then
	movl	-20(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -20(%rbp)
.LBB68_8:                               # %if.end
	cmpl	$0, -20(%rbp)
	jg	.LBB68_10
# BB#9:                                 # %if.then.18
	jmp	.LBB68_41
.LBB68_10:                              # %if.end.19
	movl	-20(%rbp), %eax
	movq	-56(%rbp), %rcx
	movq	72(%rcx), %rcx
	addl	4(%rcx), %eax
	movl	%eax, 4(%rcx)
	movq	-56(%rbp), %rcx
	movq	72(%rcx), %rcx
	cmpl	136(%rcx), %eax
	jl	.LBB68_19
# BB#11:                                # %land.lhs.true.25
	movq	-56(%rbp), %rax
	movq	72(%rax), %rax
	movb	148(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB68_19
# BB#12:                                # %if.then.31
	movq	-56(%rbp), %rax
	movq	72(%rax), %rax
	movb	148(%rax), %cl
	shrb	$3, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB68_14
# BB#13:                                # %if.then.37
	movq	-56(%rbp), %rax
	movq	72(%rax), %rax
	movl	$-1, 4(%rax)
	movq	-56(%rbp), %rax
	movq	72(%rax), %rax
	movl	$-1, (%rax)
	jmp	.LBB68_18
.LBB68_14:                              # %if.else
	movq	-56(%rbp), %rax
	movq	72(%rax), %rax
	movb	148(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB68_16
# BB#15:                                # %if.then.47
	movq	-56(%rbp), %rax
	movq	72(%rax), %rax
	movl	$0, 4(%rax)
	movq	-56(%rbp), %rax
	movq	72(%rax), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	jmp	.LBB68_17
.LBB68_16:                              # %if.else.52
	movq	-56(%rbp), %rax
	movq	72(%rax), %rax
	movl	4(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 4(%rax)
.LBB68_17:                              # %if.end.56
	jmp	.LBB68_18
.LBB68_18:                              # %if.end.57
	jmp	.LBB68_19
.LBB68_19:                              # %if.end.58
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	96(%rax), %rax
	movl	8(%rax), %ecx
	andl	$16383, %ecx            # imm = 0x3FFF
	andl	$2048, %ecx             # imm = 0x800
	cmpl	$0, %ecx
	je	.LBB68_21
# BB#20:                                # %cond.true.62
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	96(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB68_22
.LBB68_21:                              # %cond.false.65
	movabsq	$safe_terminal_coding, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB68_22
.LBB68_22:                              # %cond.end.66
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	8(%rax), %ecx
	shrl	$14, %ecx
	andl	$31, %ecx
	andl	$-2, %ecx
	movl	8(%rax), %edx
	andl	$31, %ecx
	shll	$14, %ecx
	andl	$-507905, %edx          # imm = 0xFFFFFFFFFFF83FFF
	orl	%ecx, %edx
	movl	%edx, 8(%rax)
	movl	-20(%rbp), %ecx
	movl	%ecx, -48(%rbp)
.LBB68_23:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB68_25 Depth 2
	cmpl	$0, -48(%rbp)
	je	.LBB68_40
# BB#24:                                # %for.body
                                        #   in Loop: Header=BB68_23 Depth=1
	movq	-16(%rbp), %rax
	movl	28(%rax), %ecx
	andl	$1048575, %ecx          # imm = 0xFFFFF
	movl	%ecx, -60(%rbp)
	movl	$1, -44(%rbp)
.LBB68_25:                              # %for.cond.78
                                        #   Parent Loop BB68_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB68_30
# BB#26:                                # %for.body.80
                                        #   in Loop: Header=BB68_25 Depth=2
	movslq	-44(%rbp), %rax
	imulq	$48, %rax, %rax
	addq	-16(%rbp), %rax
	movl	28(%rax), %ecx
	andl	$1048575, %ecx          # imm = 0xFFFFF
	cmpl	-60(%rbp), %ecx
	je	.LBB68_28
# BB#27:                                # %if.then.85
                                        #   in Loop: Header=BB68_23 Depth=1
	jmp	.LBB68_30
.LBB68_28:                              # %if.end.86
                                        #   in Loop: Header=BB68_25 Depth=2
	jmp	.LBB68_29
.LBB68_29:                              # %for.inc
                                        #   in Loop: Header=BB68_25 Depth=2
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB68_25
.LBB68_30:                              # %for.end
                                        #   in Loop: Header=BB68_23 Depth=1
	movq	-56(%rbp), %rdi
	callq	tty_highlight_if_desired
	movq	-8(%rbp), %rdi
	movl	-60(%rbp), %esi
	callq	turn_on_face
	movl	-44(%rbp), %esi
	cmpl	-48(%rbp), %esi
	jne	.LBB68_32
# BB#31:                                # %if.then.89
                                        #   in Loop: Header=BB68_23 Depth=1
	movq	-40(%rbp), %rax
	movl	8(%rax), %ecx
	shrl	$14, %ecx
	andl	$31, %ecx
	orl	$1, %ecx
	movl	8(%rax), %edx
	andl	$31, %ecx
	shll	$14, %ecx
	andl	$-507905, %edx          # imm = 0xFFFFFFFFFFF83FFF
	orl	%ecx, %edx
	movl	%edx, 8(%rax)
.LBB68_32:                              # %if.end.99
                                        #   in Loop: Header=BB68_23 Depth=1
	movq	-16(%rbp), %rdi
	movl	-44(%rbp), %esi
	movq	-40(%rbp), %rdx
	callq	encode_terminal_code
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, 384(%rax)
	jle	.LBB68_38
# BB#33:                                # %if.then.101
                                        #   in Loop: Header=BB68_23 Depth=1
	callq	block_input
	movl	$1, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	384(%rcx), %rdx
	movq	-56(%rbp), %rcx
	movq	32(%rcx), %rcx
	callq	fwrite
	movq	-56(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	ferror
	cmpl	$0, %eax
	je	.LBB68_35
# BB#34:                                # %if.then.107
                                        #   in Loop: Header=BB68_23 Depth=1
	movq	-56(%rbp), %rax
	movq	32(%rax), %rdi
	callq	clearerr
.LBB68_35:                              # %if.end.109
                                        #   in Loop: Header=BB68_23 Depth=1
	movq	-56(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB68_37
# BB#36:                                # %if.then.111
                                        #   in Loop: Header=BB68_23 Depth=1
	movl	$1, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	384(%rcx), %rdx
	movq	-56(%rbp), %rcx
	movq	40(%rcx), %rcx
	callq	fwrite
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB68_37:                              # %if.end.115
                                        #   in Loop: Header=BB68_23 Depth=1
	callq	unblock_input
.LBB68_38:                              # %if.end.116
                                        #   in Loop: Header=BB68_23 Depth=1
	movl	-44(%rbp), %eax
	movq	-16(%rbp), %rcx
	movslq	%eax, %rdx
	imulq	$48, %rdx, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movl	-60(%rbp), %esi
	callq	turn_off_face
	movq	-56(%rbp), %rdi
	callq	tty_turn_off_highlight
# BB#39:                                # %for.inc.117
                                        #   in Loop: Header=BB68_23 Depth=1
	movl	-44(%rbp), %eax
	movl	-48(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -48(%rbp)
	jmp	.LBB68_23
.LBB68_40:                              # %for.end.118
	movq	-56(%rbp), %rdi
	callq	cmcheckmagic
.LBB68_41:                              # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end68:
	.size	tty_write_glyphs, .Lfunc_end68-tty_write_glyphs
	.cfi_endproc

	.align	16, 0x90
	.type	tty_delete_glyphs,@function
tty_delete_glyphs:                      # @tty_delete_glyphs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp212:
	.cfi_def_cfa_offset 16
.Ltmp213:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp214:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	208(%rdi), %rdi
	shrq	$23, %rdi
	andq	$7, %rdi
	movl	%edi, %esi
	cmpl	$1, %esi
	je	.LBB69_2
# BB#1:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB69_3
.LBB69_2:                               # %cond.true
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB69_4
.LBB69_3:                               # %cond.false
	callq	emacs_abort
.LBB69_4:                               # %cond.end
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rcx
	movb	8776(%rcx), %dl
	andb	$1, %dl
	testb	$1, %dl
	je	.LBB69_6
# BB#5:                                 # %if.then
	movq	-40(%rbp), %rdi
	callq	tty_turn_on_insert
	jmp	.LBB69_11
.LBB69_6:                               # %if.else
	movq	-40(%rbp), %rdi
	callq	tty_turn_off_insert
# BB#7:                                 # %do.body
	movq	-40(%rbp), %rax
	cmpq	$0, 8464(%rax)
	je	.LBB69_9
# BB#8:                                 # %if.then.11
	movabsq	$cmputc, %rdx
	movq	-40(%rbp), %rax
	movq	%rax, current_tty
	movq	-40(%rbp), %rax
	movq	8464(%rax), %rdi
	movq	selected_frame, %rax
	subq	$5, %rax
	movl	284(%rax), %ecx
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	subl	(%rax), %ecx
	movl	%ecx, %esi
	callq	tputs
.LBB69_9:                               # %if.end
	jmp	.LBB69_10
.LBB69_10:                              # %do.end
	jmp	.LBB69_11
.LBB69_11:                              # %if.end.14
	movq	-40(%rbp), %rax
	cmpq	$0, 8440(%rax)
	je	.LBB69_13
# BB#12:                                # %if.then.16
	xorl	%eax, %eax
	movl	%eax, %esi
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	movq	8440(%rcx), %rdi
	movl	-12(%rbp), %ecx
	movl	%eax, %edx
	movl	%eax, %r8d
	movl	%eax, %r9d
	movl	$0, (%rsp)
	callq	tparam
	movl	$1, %esi
	movabsq	$cmputc, %rdx
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, current_tty
	movq	-24(%rbp), %rdi
	callq	tputs
	movq	-24(%rbp), %rdi
	callq	xfree
	jmp	.LBB69_18
.LBB69_13:                              # %if.else.18
	movl	$0, -28(%rbp)
.LBB69_14:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB69_17
# BB#15:                                # %for.body
                                        #   in Loop: Header=BB69_14 Depth=1
	movl	$1, %esi
	movabsq	$cmputc, %rdx
	movq	-40(%rbp), %rax
	movq	%rax, current_tty
	movq	-40(%rbp), %rax
	movq	8432(%rax), %rdi
	callq	tputs
# BB#16:                                # %for.inc
                                        #   in Loop: Header=BB69_14 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB69_14
.LBB69_17:                              # %for.end
	jmp	.LBB69_18
.LBB69_18:                              # %if.end.20
	movq	-40(%rbp), %rax
	movb	8776(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB69_24
# BB#19:                                # %if.then.25
	jmp	.LBB69_20
.LBB69_20:                              # %do.body.26
	movq	-40(%rbp), %rax
	cmpq	$0, 8472(%rax)
	je	.LBB69_22
# BB#21:                                # %if.then.28
	movabsq	$cmputc, %rdx
	movq	-40(%rbp), %rax
	movq	%rax, current_tty
	movq	-40(%rbp), %rax
	movq	8472(%rax), %rdi
	movq	selected_frame, %rax
	subq	$5, %rax
	movl	284(%rax), %ecx
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	subl	(%rax), %ecx
	movl	%ecx, %esi
	callq	tputs
.LBB69_22:                              # %if.end.35
	jmp	.LBB69_23
.LBB69_23:                              # %do.end.36
	jmp	.LBB69_24
.LBB69_24:                              # %if.end.37
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end69:
	.size	tty_delete_glyphs, .Lfunc_end69-tty_delete_glyphs
	.cfi_endproc

	.align	16, 0x90
	.type	tty_ring_bell,@function
tty_ring_bell:                          # @tty_ring_bell
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp215:
	.cfi_def_cfa_offset 16
.Ltmp216:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp217:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	208(%rdi), %rdi
	shrq	$23, %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$1, %eax
	je	.LBB70_2
# BB#1:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB70_3
.LBB70_2:                               # %cond.true
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB70_4
.LBB70_3:                               # %cond.false
	callq	emacs_abort
.LBB70_4:                               # %cond.end
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rcx
	cmpq	$0, 32(%rcx)
	je	.LBB70_10
# BB#5:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, current_tty
	movq	-16(%rbp), %rax
	cmpq	$0, 8600(%rax)
	je	.LBB70_8
# BB#6:                                 # %land.lhs.true
	testb	$1, globals+3436
	je	.LBB70_8
# BB#7:                                 # %cond.true.10
	movq	-16(%rbp), %rax
	movq	8600(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB70_9
.LBB70_8:                               # %cond.false.12
	movq	-16(%rbp), %rax
	movq	8384(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB70_9:                               # %cond.end.13
	movq	-32(%rbp), %rax         # 8-byte Reload
	movabsq	$cmputc, %rdx
	movq	selected_frame, %rcx
	subq	$5, %rcx
	movl	284(%rcx), %esi
	movq	-16(%rbp), %rcx
	movq	72(%rcx), %rcx
	subl	(%rcx), %esi
	movq	%rax, %rdi
	callq	tputs
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	fflush
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB70_10:                              # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end70:
	.size	tty_ring_bell, .Lfunc_end70-tty_ring_bell
	.cfi_endproc

	.align	16, 0x90
	.type	tty_reset_terminal_modes,@function
tty_reset_terminal_modes:               # @tty_reset_terminal_modes
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp218:
	.cfi_def_cfa_offset 16
.Ltmp219:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp220:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	88(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	cmpq	$0, 32(%rdi)
	je	.LBB71_18
# BB#1:                                 # %if.then
	movl	$953, %edi              # imm = 0x3B9
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	tty_send_additional_strings
	movq	-16(%rbp), %rdi
	callq	tty_turn_off_highlight
	movq	-16(%rbp), %rdi
	callq	tty_turn_off_insert
# BB#2:                                 # %do.body
	movq	-16(%rbp), %rax
	cmpq	$0, 8520(%rax)
	je	.LBB71_4
# BB#3:                                 # %if.then.3
	movabsq	$cmputc, %rdx
	movq	-16(%rbp), %rax
	movq	%rax, current_tty
	movq	-16(%rbp), %rax
	movq	8520(%rax), %rdi
	movq	selected_frame, %rax
	subq	$5, %rax
	movl	284(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	subl	(%rax), %ecx
	movl	%ecx, %esi
	callq	tputs
.LBB71_4:                               # %if.end
	jmp	.LBB71_5
.LBB71_5:                               # %do.end
	jmp	.LBB71_6
.LBB71_6:                               # %do.body.6
	movq	-16(%rbp), %rax
	cmpq	$0, 8608(%rax)
	je	.LBB71_8
# BB#7:                                 # %if.then.8
	movabsq	$cmputc, %rdx
	movq	-16(%rbp), %rax
	movq	%rax, current_tty
	movq	-16(%rbp), %rax
	movq	8608(%rax), %rdi
	movq	selected_frame, %rax
	subq	$5, %rax
	movl	284(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	subl	(%rax), %ecx
	movl	%ecx, %esi
	callq	tputs
.LBB71_8:                               # %if.end.15
	jmp	.LBB71_9
.LBB71_9:                               # %do.end.16
	jmp	.LBB71_10
.LBB71_10:                              # %do.body.17
	movq	-16(%rbp), %rax
	cmpq	$0, 8584(%rax)
	je	.LBB71_12
# BB#11:                                # %if.then.19
	movabsq	$cmputc, %rdx
	movq	-16(%rbp), %rax
	movq	%rax, current_tty
	movq	-16(%rbp), %rax
	movq	8584(%rax), %rdi
	movq	selected_frame, %rax
	subq	$5, %rax
	movl	284(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	subl	(%rax), %ecx
	movl	%ecx, %esi
	callq	tputs
.LBB71_12:                              # %if.end.26
	jmp	.LBB71_13
.LBB71_13:                              # %do.end.27
	jmp	.LBB71_14
.LBB71_14:                              # %do.body.28
	movq	-16(%rbp), %rax
	cmpq	$0, 8728(%rax)
	je	.LBB71_16
# BB#15:                                # %if.then.30
	movabsq	$cmputc, %rdx
	movq	-16(%rbp), %rax
	movq	%rax, current_tty
	movq	-16(%rbp), %rax
	movq	8728(%rax), %rdi
	movq	selected_frame, %rax
	subq	$5, %rax
	movl	284(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	subl	(%rax), %ecx
	movl	%ecx, %esi
	callq	tputs
.LBB71_16:                              # %if.end.37
	jmp	.LBB71_17
.LBB71_17:                              # %do.end.38
	movl	$13, %edi
	movq	-16(%rbp), %rax
	movq	%rax, current_tty
	callq	cmputc
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rdi
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	fflush
	movl	%eax, -32(%rbp)         # 4-byte Spill
.LBB71_18:                              # %if.end.42
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end71:
	.size	tty_reset_terminal_modes, .Lfunc_end71-tty_reset_terminal_modes
	.cfi_endproc

	.align	16, 0x90
	.type	tty_set_terminal_modes,@function
tty_set_terminal_modes:                 # @tty_set_terminal_modes
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp221:
	.cfi_def_cfa_offset 16
.Ltmp222:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp223:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	88(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	cmpq	$0, 32(%rdi)
	je	.LBB72_22
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	cmpq	$0, 8592(%rax)
	je	.LBB72_3
# BB#2:                                 # %if.then.3
	movabsq	$cmputc, %rdx
	movq	-16(%rbp), %rax
	movq	%rax, current_tty
	movq	-16(%rbp), %rax
	movq	8592(%rax), %rdi
	movq	selected_frame, %rax
	subq	$5, %rax
	movl	284(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	subl	(%rax), %ecx
	movl	%ecx, %esi
	callq	tputs
	jmp	.LBB72_8
.LBB72_3:                               # %if.else
	movq	-16(%rbp), %rax
	movq	%rax, current_tty
	movl	$0, -20(%rbp)
.LBB72_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movq	selected_frame, %rcx
	subq	$5, %rcx
	cmpl	284(%rcx), %eax
	jge	.LBB72_7
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB72_4 Depth=1
	movl	$10, %edi
	callq	cmputc
	movl	%eax, -24(%rbp)         # 4-byte Spill
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB72_4 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB72_4
.LBB72_7:                               # %for.end
	jmp	.LBB72_8
.LBB72_8:                               # %if.end
	jmp	.LBB72_9
.LBB72_9:                               # %do.body
	testb	$1, globals+3437
	je	.LBB72_11
# BB#10:                                # %cond.true
	movq	-16(%rbp), %rax
	cmpq	$0, 8616(%rax)
	jne	.LBB72_12
	jmp	.LBB72_16
.LBB72_11:                              # %cond.false
	movq	-16(%rbp), %rax
	cmpq	$0, 8608(%rax)
	je	.LBB72_16
.LBB72_12:                              # %if.then.11
	movq	-16(%rbp), %rax
	movq	%rax, current_tty
	testb	$1, globals+3437
	je	.LBB72_14
# BB#13:                                # %cond.true.13
	movq	-16(%rbp), %rax
	movq	8616(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB72_15
.LBB72_14:                              # %cond.false.15
	movq	-16(%rbp), %rax
	movq	8608(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB72_15:                              # %cond.end
	movq	-32(%rbp), %rax         # 8-byte Reload
	movabsq	$cmputc, %rdx
	movq	selected_frame, %rcx
	subq	$5, %rcx
	movl	284(%rcx), %esi
	movq	-16(%rbp), %rcx
	movq	72(%rcx), %rcx
	subl	(%rcx), %esi
	movq	%rax, %rdi
	callq	tputs
.LBB72_16:                              # %if.end.22
	jmp	.LBB72_17
.LBB72_17:                              # %do.end
	jmp	.LBB72_18
.LBB72_18:                              # %do.body.23
	movq	-16(%rbp), %rax
	cmpq	$0, 8528(%rax)
	je	.LBB72_20
# BB#19:                                # %if.then.25
	movabsq	$cmputc, %rdx
	movq	-16(%rbp), %rax
	movq	%rax, current_tty
	movq	-16(%rbp), %rax
	movq	8528(%rax), %rdi
	movq	selected_frame, %rax
	subq	$5, %rax
	movl	284(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	subl	(%rax), %ecx
	movl	%ecx, %esi
	callq	tputs
.LBB72_20:                              # %if.end.32
	jmp	.LBB72_21
.LBB72_21:                              # %do.end.33
	movl	$954, %edi              # imm = 0x3BA
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	movl	$-1, 4(%rax)
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	movl	$-1, (%rax)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	tty_send_additional_strings
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	fflush
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB72_22:                              # %if.end.40
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end72:
	.size	tty_set_terminal_modes, .Lfunc_end72-tty_set_terminal_modes
	.cfi_endproc

	.align	16, 0x90
	.type	tty_update_end,@function
tty_update_end:                         # @tty_update_end
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp224:
	.cfi_def_cfa_offset 16
.Ltmp225:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp226:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	208(%rdi), %rdi
	shrq	$23, %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$1, %eax
	je	.LBB73_2
# BB#1:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB73_3
.LBB73_2:                               # %cond.true
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB73_4
.LBB73_3:                               # %cond.false
	callq	emacs_abort
.LBB73_4:                               # %cond.end
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	%rax, -16(%rbp)
	movq	selected_window, %rdi
	callq	XWINDOW
	movw	468(%rax), %cx
	shrw	$8, %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB73_6
# BB#5:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	tty_show_cursor
.LBB73_6:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	tty_turn_off_insert
	movq	-16(%rbp), %rdi
	callq	tty_background_highlight
	movq	-16(%rbp), %rdi
	movq	32(%rdi), %rdi
	callq	fflush
	movl	%eax, -28(%rbp)         # 4-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end73:
	.size	tty_update_end, .Lfunc_end73-tty_update_end
	.cfi_endproc

	.align	16, 0x90
	.type	tty_set_terminal_window,@function
tty_set_terminal_window:                # @tty_set_terminal_window
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp227:
	.cfi_def_cfa_offset 16
.Ltmp228:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp229:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	208(%rdi), %rdi
	shrq	$23, %rdi
	andq	$7, %rdi
	movl	%edi, %esi
	cmpl	$1, %esi
	je	.LBB74_2
# BB#1:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB74_3
.LBB74_2:                               # %cond.true
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB74_4
.LBB74_3:                               # %cond.false
	callq	emacs_abort
.LBB74_4:                               # %cond.end
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	cmpl	$0, -12(%rbp)
	je	.LBB74_6
# BB#5:                                 # %cond.true.8
	movl	-12(%rbp), %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jmp	.LBB74_7
.LBB74_6:                               # %cond.false.9
	movq	-8(%rbp), %rax
	movl	284(%rax), %ecx
	movl	%ecx, -36(%rbp)         # 4-byte Spill
.LBB74_7:                               # %cond.end.10
	movl	-36(%rbp), %eax         # 4-byte Reload
	movq	-24(%rbp), %rcx
	movl	%eax, 8784(%rcx)
	movq	-8(%rbp), %rcx
	movq	208(%rcx), %rcx
	shrq	$23, %rcx
	andq	$7, %rcx
	movl	%ecx, %eax
	cmpl	$1, %eax
	je	.LBB74_9
# BB#8:                                 # %lor.lhs.false.18
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB74_10
.LBB74_9:                               # %cond.true.25
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB74_11
.LBB74_10:                              # %cond.false.29
	callq	emacs_abort
.LBB74_11:                              # %cond.end.30
	movq	-48(%rbp), %rax         # 8-byte Reload
	movb	8788(%rax), %cl
	shrb	$6, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB74_13
# BB#12:                                # %if.then
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	8784(%rax), %edx
	callq	tty_set_scroll_region
.LBB74_13:                              # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end74:
	.size	tty_set_terminal_window, .Lfunc_end74-tty_set_terminal_window
	.cfi_endproc

	.align	16, 0x90
	.type	tty_background_highlight,@function
tty_background_highlight:               # @tty_background_highlight
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp230:
	.cfi_def_cfa_offset 16
.Ltmp231:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp232:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	testb	$1, globals+3402
	je	.LBB75_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	tty_turn_on_highlight
	jmp	.LBB75_3
.LBB75_2:                               # %if.else
	movq	-8(%rbp), %rdi
	callq	tty_turn_off_highlight
.LBB75_3:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end75:
	.size	tty_background_highlight, .Lfunc_end75-tty_background_highlight
	.cfi_endproc

	.align	16, 0x90
	.type	tty_turn_on_highlight,@function
tty_turn_on_highlight:                  # @tty_turn_on_highlight
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp233:
	.cfi_def_cfa_offset 16
.Ltmp234:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp235:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movb	8776(%rdi), %al
	shrb	$3, %al
	andb	$1, %al
	testb	$1, %al
	jne	.LBB76_6
# BB#1:                                 # %if.then
	jmp	.LBB76_2
.LBB76_2:                               # %do.body
	movq	-8(%rbp), %rax
	cmpq	$0, 8568(%rax)
	je	.LBB76_4
# BB#3:                                 # %if.then.1
	movabsq	$cmputc, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, current_tty
	movq	-8(%rbp), %rax
	movq	8568(%rax), %rdi
	movq	selected_frame, %rax
	subq	$5, %rax
	movl	284(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	subl	(%rax), %ecx
	movl	%ecx, %esi
	callq	tputs
.LBB76_4:                               # %if.end
	jmp	.LBB76_5
.LBB76_5:                               # %do.end
	jmp	.LBB76_6
.LBB76_6:                               # %if.end.4
	movq	-8(%rbp), %rax
	movb	8776(%rax), %cl
	andb	$-9, %cl
	orb	$8, %cl
	movb	%cl, 8776(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end76:
	.size	tty_turn_on_highlight, .Lfunc_end76-tty_turn_on_highlight
	.cfi_endproc

	.align	16, 0x90
	.type	tty_turn_off_highlight,@function
tty_turn_off_highlight:                 # @tty_turn_off_highlight
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp236:
	.cfi_def_cfa_offset 16
.Ltmp237:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp238:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movb	8776(%rdi), %al
	shrb	$3, %al
	andb	$1, %al
	testb	$1, %al
	je	.LBB77_6
# BB#1:                                 # %if.then
	jmp	.LBB77_2
.LBB77_2:                               # %do.body
	movq	-8(%rbp), %rax
	cmpq	$0, 8552(%rax)
	je	.LBB77_4
# BB#3:                                 # %if.then.1
	movabsq	$cmputc, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, current_tty
	movq	-8(%rbp), %rax
	movq	8552(%rax), %rdi
	movq	selected_frame, %rax
	subq	$5, %rax
	movl	284(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	subl	(%rax), %ecx
	movl	%ecx, %esi
	callq	tputs
.LBB77_4:                               # %if.end
	jmp	.LBB77_5
.LBB77_5:                               # %do.end
	jmp	.LBB77_6
.LBB77_6:                               # %if.end.4
	movq	-8(%rbp), %rax
	movb	8776(%rax), %cl
	andb	$-9, %cl
	movb	%cl, 8776(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end77:
	.size	tty_turn_off_highlight, .Lfunc_end77-tty_turn_off_highlight
	.cfi_endproc

	.align	16, 0x90
	.type	tty_set_scroll_region,@function
tty_set_scroll_region:                  # @tty_set_scroll_region
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp239:
	.cfi_def_cfa_offset 16
.Ltmp240:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp241:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	208(%rdi), %rdi
	shrq	$23, %rdi
	andq	$7, %rdi
	movl	%edi, %edx
	cmpl	$1, %edx
	je	.LBB78_2
# BB#1:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB78_3
.LBB78_2:                               # %cond.true
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB78_4
.LBB78_3:                               # %cond.false
	callq	emacs_abort
.LBB78_4:                               # %cond.end
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rcx
	cmpq	$0, 8416(%rcx)
	je	.LBB78_6
# BB#5:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %esi
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	movq	8416(%rcx), %rdi
	movl	-12(%rbp), %ecx
	movl	-16(%rbp), %edx
	subl	$1, %edx
	movl	%edx, -44(%rbp)         # 4-byte Spill
	movl	%eax, %edx
	movl	-44(%rbp), %r8d         # 4-byte Reload
	movl	%eax, %r9d
	movl	$0, (%rsp)
	callq	tparam
	movq	%rax, -24(%rbp)
	jmp	.LBB78_10
.LBB78_6:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, 8424(%rax)
	je	.LBB78_8
# BB#7:                                 # %if.then.10
	xorl	%eax, %eax
	movl	%eax, %esi
	xorl	%edx, %edx
	movq	-32(%rbp), %rcx
	movq	8424(%rcx), %rdi
	movq	-8(%rbp), %rcx
	movl	284(%rcx), %ecx
	movl	-12(%rbp), %r8d
	movq	-8(%rbp), %r9
	movl	284(%r9), %eax
	subl	-16(%rbp), %eax
	movq	-8(%rbp), %r9
	movl	284(%r9), %r10d
	movl	%eax, %r9d
	movl	%r10d, (%rsp)
	callq	tparam
	movq	%rax, -24(%rbp)
	jmp	.LBB78_9
.LBB78_8:                               # %if.else.16
	xorl	%eax, %eax
	movl	%eax, %esi
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	movq	8632(%rcx), %rdi
	movl	-12(%rbp), %ecx
	movl	-16(%rbp), %r9d
	movq	-8(%rbp), %rdx
	movl	272(%rdx), %r8d
	movl	%eax, %edx
	movl	%r8d, -48(%rbp)         # 4-byte Spill
	movl	%eax, %r8d
	movl	-48(%rbp), %eax         # 4-byte Reload
	movl	%eax, (%rsp)
	callq	tparam
	movq	%rax, -24(%rbp)
.LBB78_9:                               # %if.end
	jmp	.LBB78_10
.LBB78_10:                              # %if.end.18
	movabsq	$cmputc, %rdx
	movq	-32(%rbp), %rax
	movq	%rax, current_tty
	movq	-24(%rbp), %rdi
	movq	selected_frame, %rax
	subq	$5, %rax
	movl	284(%rax), %ecx
	movq	-32(%rbp), %rax
	movq	72(%rax), %rax
	subl	(%rax), %ecx
	movl	%ecx, %esi
	callq	tputs
	movq	-24(%rbp), %rdi
	callq	xfree
	movq	-32(%rbp), %rax
	movq	72(%rax), %rax
	movl	$-1, 4(%rax)
	movq	-32(%rbp), %rax
	movq	72(%rax), %rax
	movl	$-1, (%rax)
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end78:
	.size	tty_set_scroll_region, .Lfunc_end78-tty_set_scroll_region
	.cfi_endproc

	.align	16, 0x90
	.type	tty_turn_on_insert,@function
tty_turn_on_insert:                     # @tty_turn_on_insert
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp242:
	.cfi_def_cfa_offset 16
.Ltmp243:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp244:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movb	8776(%rdi), %al
	shrb	$2, %al
	andb	$1, %al
	testb	$1, %al
	jne	.LBB79_2
# BB#1:                                 # %if.then
	movabsq	$cmputc, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, current_tty
	movq	-8(%rbp), %rax
	movq	8504(%rax), %rdi
	movq	selected_frame, %rax
	subq	$5, %rax
	movl	284(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	subl	(%rax), %ecx
	movl	%ecx, %esi
	callq	tputs
.LBB79_2:                               # %if.end
	movq	-8(%rbp), %rax
	movb	8776(%rax), %cl
	andb	$-5, %cl
	orb	$4, %cl
	movb	%cl, 8776(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end79:
	.size	tty_turn_on_insert, .Lfunc_end79-tty_turn_on_insert
	.cfi_endproc

	.align	16, 0x90
	.type	tty_highlight_if_desired,@function
tty_highlight_if_desired:               # @tty_highlight_if_desired
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp245:
	.cfi_def_cfa_offset 16
.Ltmp246:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp247:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	testb	$1, globals+3402
	je	.LBB80_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	tty_turn_on_highlight
	jmp	.LBB80_3
.LBB80_2:                               # %if.else
	movq	-8(%rbp), %rdi
	callq	tty_turn_off_highlight
.LBB80_3:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end80:
	.size	tty_highlight_if_desired, .Lfunc_end80-tty_highlight_if_desired
	.cfi_endproc

	.align	16, 0x90
	.type	turn_on_face,@function
turn_on_face:                           # @turn_on_face
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp248:
	.cfi_def_cfa_offset 16
.Ltmp249:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp250:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movb	$1, %al
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	testb	$1, %al
	jne	.LBB81_1
	jmp	.LBB81_2
.LBB81_1:                               # %cond.true
	movl	-12(%rbp), %eax
	addl	$0, %eax
	movq	-8(%rbp), %rcx
	movq	160(%rcx), %rcx
	movl	32(%rcx), %edx
	addl	$0, %edx
	cmpl	%edx, %eax
	jb	.LBB81_3
	jmp	.LBB81_4
.LBB81_2:                               # %cond.false
	movslq	-12(%rbp), %rax
	addq	$0, %rax
	movq	-8(%rbp), %rcx
	movq	160(%rcx), %rcx
	movslq	32(%rcx), %rcx
	addq	$0, %rcx
	cmpq	%rcx, %rax
	jae	.LBB81_4
.LBB81_3:                               # %cond.true.9
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	160(%rcx), %rcx
	movq	16(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB81_5
.LBB81_4:                               # %cond.false.11
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	jmp	.LBB81_5
.LBB81_5:                               # %cond.end
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	je	.LBB81_7
# BB#6:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB81_8
.LBB81_7:                               # %cond.true.21
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB81_9
.LBB81_8:                               # %cond.false.23
	callq	emacs_abort
.LBB81_9:                               # %cond.end.24
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rcx
	cmpl	$0, 8716(%rcx)
	jle	.LBB81_11
# BB#10:                                # %cond.true.28
	movq	-48(%rbp), %rax
	movl	8712(%rax), %ecx
	andl	$4, %ecx
	cmpl	$0, %ecx
	je	.LBB81_12
	jmp	.LBB81_18
.LBB81_11:                              # %cond.false.31
	movb	$1, %al
	testb	$1, %al
	jne	.LBB81_12
	jmp	.LBB81_18
.LBB81_12:                              # %land.lhs.true
	testb	$1, globals+3402
	je	.LBB81_15
# BB#13:                                # %cond.true.33
	cmpq	$-2, -32(%rbp)
	je	.LBB81_17
# BB#14:                                # %lor.lhs.false.36
	cmpq	$-3, -40(%rbp)
	je	.LBB81_17
	jmp	.LBB81_18
.LBB81_15:                              # %cond.false.39
	cmpq	$-3, -32(%rbp)
	je	.LBB81_17
# BB#16:                                # %lor.lhs.false.42
	cmpq	$-2, -40(%rbp)
	jne	.LBB81_18
.LBB81_17:                              # %if.then
	movq	-48(%rbp), %rdi
	callq	tty_toggle_highlight
.LBB81_18:                              # %if.end
	movq	-24(%rbp), %rax
	movl	240(%rax), %ecx
	shrl	$13, %ecx
	andl	$1, %ecx
	testl	$1, %ecx
	je	.LBB81_27
# BB#19:                                # %land.lhs.true.50
	movq	-48(%rbp), %rax
	cmpl	$0, 8716(%rax)
	jle	.LBB81_21
# BB#20:                                # %cond.true.54
	movq	-48(%rbp), %rax
	movl	8712(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	je	.LBB81_22
	jmp	.LBB81_27
.LBB81_21:                              # %cond.false.59
	movb	$1, %al
	testb	$1, %al
	jne	.LBB81_22
	jmp	.LBB81_27
.LBB81_22:                              # %if.then.60
	jmp	.LBB81_23
.LBB81_23:                              # %do.body
	movq	-48(%rbp), %rax
	cmpq	$0, 8640(%rax)
	je	.LBB81_25
# BB#24:                                # %if.then.62
	movl	$1, %esi
	movabsq	$cmputc, %rdx
	movq	-48(%rbp), %rax
	movq	%rax, current_tty
	movq	-48(%rbp), %rax
	movq	8640(%rax), %rdi
	callq	tputs
.LBB81_25:                              # %if.end.64
	jmp	.LBB81_26
.LBB81_26:                              # %do.end
	jmp	.LBB81_27
.LBB81_27:                              # %if.end.65
	movq	-24(%rbp), %rax
	movl	240(%rax), %ecx
	shrl	$14, %ecx
	andl	$1, %ecx
	testl	$1, %ecx
	je	.LBB81_35
# BB#28:                                # %land.lhs.true.71
	movq	-48(%rbp), %rax
	cmpl	$0, 8716(%rax)
	jle	.LBB81_30
# BB#29:                                # %cond.true.75
	movq	-48(%rbp), %rax
	movl	8712(%rax), %ecx
	andl	$8, %ecx
	cmpl	$0, %ecx
	je	.LBB81_31
	jmp	.LBB81_35
.LBB81_30:                              # %cond.false.80
	movb	$1, %al
	testb	$1, %al
	jne	.LBB81_31
	jmp	.LBB81_35
.LBB81_31:                              # %if.then.81
	movq	-48(%rbp), %rax
	cmpq	$0, 8648(%rax)
	je	.LBB81_33
# BB#32:                                # %if.then.83
	movl	$1, %esi
	movabsq	$cmputc, %rdx
	movq	-48(%rbp), %rax
	movq	%rax, current_tty
	movq	-48(%rbp), %rax
	movq	8648(%rax), %rdi
	callq	tputs
	jmp	.LBB81_34
.LBB81_33:                              # %if.else
	movl	$1, %esi
	movabsq	$cmputc, %rdx
	movq	-48(%rbp), %rax
	movq	%rax, current_tty
	movq	-48(%rbp), %rax
	movq	8656(%rax), %rdi
	callq	tputs
.LBB81_34:                              # %if.end.85
	jmp	.LBB81_35
.LBB81_35:                              # %if.end.86
	movq	-24(%rbp), %rax
	movl	240(%rax), %ecx
	shrl	$15, %ecx
	andl	$1, %ecx
	testl	$1, %ecx
	je	.LBB81_44
# BB#36:                                # %land.lhs.true.92
	movq	-48(%rbp), %rax
	cmpl	$0, 8716(%rax)
	jle	.LBB81_38
# BB#37:                                # %cond.true.96
	movq	-48(%rbp), %rax
	movl	8712(%rax), %ecx
	andl	$2, %ecx
	cmpl	$0, %ecx
	je	.LBB81_39
	jmp	.LBB81_44
.LBB81_38:                              # %cond.false.101
	movb	$1, %al
	testb	$1, %al
	jne	.LBB81_39
	jmp	.LBB81_44
.LBB81_39:                              # %if.then.102
	jmp	.LBB81_40
.LBB81_40:                              # %do.body.103
	movq	-48(%rbp), %rax
	cmpq	$0, 8680(%rax)
	je	.LBB81_42
# BB#41:                                # %if.then.105
	movl	$1, %esi
	movabsq	$cmputc, %rdx
	movq	-48(%rbp), %rax
	movq	%rax, current_tty
	movq	-48(%rbp), %rax
	movq	8680(%rax), %rdi
	callq	tputs
.LBB81_42:                              # %if.end.107
	jmp	.LBB81_43
.LBB81_43:                              # %do.end.108
	jmp	.LBB81_44
.LBB81_44:                              # %if.end.109
	movq	-48(%rbp), %rax
	cmpl	$0, 8716(%rax)
	jle	.LBB81_58
# BB#45:                                # %if.then.113
	movq	-48(%rbp), %rax
	movb	8776(%rax), %cl
	shrb	$3, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB81_47
# BB#46:                                # %cond.true.119
	movq	-48(%rbp), %rax
	movq	8744(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB81_48
.LBB81_47:                              # %cond.false.120
	movq	-48(%rbp), %rax
	movq	8736(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB81_48:                              # %cond.end.121
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rdi
	callq	face_tty_specified_color
	testb	$1, %al
	jne	.LBB81_49
	jmp	.LBB81_51
.LBB81_49:                              # %land.lhs.true.124
	cmpq	$0, -56(%rbp)
	je	.LBB81_51
# BB#50:                                # %if.then.126
	xorl	%eax, %eax
	movl	%eax, %esi
	xorl	%eax, %eax
	movq	-56(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movl	%ecx, %edx
	movl	%edx, -92(%rbp)         # 4-byte Spill
	movl	%eax, %edx
	movl	-92(%rbp), %ecx         # 4-byte Reload
	movl	%eax, %r8d
	movl	%eax, %r9d
	movl	$0, (%rsp)
	callq	tparam
	movabsq	$cmputc, %rdx
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, current_tty
	movq	-64(%rbp), %rdi
	movq	selected_frame, %rax
	subq	$5, %rax
	movl	284(%rax), %ecx
	movq	-48(%rbp), %rax
	movq	72(%rax), %rax
	subl	(%rax), %ecx
	movl	%ecx, %esi
	callq	tputs
	movq	-64(%rbp), %rdi
	callq	xfree
.LBB81_51:                              # %if.end.130
	movq	-48(%rbp), %rax
	movb	8776(%rax), %cl
	shrb	$3, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB81_53
# BB#52:                                # %cond.true.137
	movq	-48(%rbp), %rax
	movq	8736(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB81_54
.LBB81_53:                              # %cond.false.139
	movq	-48(%rbp), %rax
	movq	8744(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB81_54:                              # %cond.end.141
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rdi
	callq	face_tty_specified_color
	testb	$1, %al
	jne	.LBB81_55
	jmp	.LBB81_57
.LBB81_55:                              # %land.lhs.true.145
	cmpq	$0, -56(%rbp)
	je	.LBB81_57
# BB#56:                                # %if.then.147
	xorl	%eax, %eax
	movl	%eax, %esi
	xorl	%eax, %eax
	movq	-56(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movl	%ecx, %edx
	movl	%edx, -108(%rbp)        # 4-byte Spill
	movl	%eax, %edx
	movl	-108(%rbp), %ecx        # 4-byte Reload
	movl	%eax, %r8d
	movl	%eax, %r9d
	movl	$0, (%rsp)
	callq	tparam
	movabsq	$cmputc, %rdx
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, current_tty
	movq	-64(%rbp), %rdi
	movq	selected_frame, %rax
	subq	$5, %rax
	movl	284(%rax), %ecx
	movq	-48(%rbp), %rax
	movq	72(%rax), %rax
	subl	(%rax), %ecx
	movl	%ecx, %esi
	callq	tputs
	movq	-64(%rbp), %rdi
	callq	xfree
.LBB81_57:                              # %if.end.155
	jmp	.LBB81_58
.LBB81_58:                              # %if.end.156
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end81:
	.size	turn_on_face, .Lfunc_end81-turn_on_face
	.cfi_endproc

	.align	16, 0x90
	.type	turn_off_face,@function
turn_off_face:                          # @turn_off_face
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp251:
	.cfi_def_cfa_offset 16
.Ltmp252:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp253:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movb	$1, %al
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	testb	$1, %al
	jne	.LBB82_1
	jmp	.LBB82_2
.LBB82_1:                               # %cond.true
	movl	-12(%rbp), %eax
	addl	$0, %eax
	movq	-8(%rbp), %rcx
	movq	160(%rcx), %rcx
	movl	32(%rcx), %edx
	addl	$0, %edx
	cmpl	%edx, %eax
	jb	.LBB82_3
	jmp	.LBB82_4
.LBB82_2:                               # %cond.false
	movslq	-12(%rbp), %rax
	addq	$0, %rax
	movq	-8(%rbp), %rcx
	movq	160(%rcx), %rcx
	movslq	32(%rcx), %rcx
	addq	$0, %rcx
	cmpq	%rcx, %rax
	jae	.LBB82_4
.LBB82_3:                               # %cond.true.9
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	160(%rcx), %rcx
	movq	16(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB82_5
.LBB82_4:                               # %cond.false.11
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	jmp	.LBB82_5
.LBB82_5:                               # %cond.end
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	je	.LBB82_7
# BB#6:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB82_8
.LBB82_7:                               # %cond.true.21
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB82_9
.LBB82_8:                               # %cond.false.23
	callq	emacs_abort
.LBB82_9:                               # %cond.end.24
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rcx
	cmpq	$0, 8704(%rcx)
	je	.LBB82_22
# BB#10:                                # %if.then
	movq	-24(%rbp), %rax
	movl	240(%rax), %ecx
	shrl	$13, %ecx
	andl	$1, %ecx
	testl	$1, %ecx
	jne	.LBB82_14
# BB#11:                                # %lor.lhs.false.31
	movq	-24(%rbp), %rax
	movl	240(%rax), %ecx
	shrl	$14, %ecx
	andl	$1, %ecx
	testl	$1, %ecx
	jne	.LBB82_14
# BB#12:                                # %lor.lhs.false.37
	movq	-24(%rbp), %rax
	movl	240(%rax), %ecx
	shrl	$16, %ecx
	andl	$1, %ecx
	testl	$1, %ecx
	jne	.LBB82_14
# BB#13:                                # %lor.lhs.false.43
	movq	-24(%rbp), %rax
	movl	240(%rax), %ecx
	shrl	$15, %ecx
	andl	$1, %ecx
	testl	$1, %ecx
	je	.LBB82_21
.LBB82_14:                              # %if.then.49
	jmp	.LBB82_15
.LBB82_15:                              # %do.body
	movq	-32(%rbp), %rax
	cmpq	$0, 8704(%rax)
	je	.LBB82_17
# BB#16:                                # %if.then.52
	movl	$1, %esi
	movabsq	$cmputc, %rdx
	movq	-32(%rbp), %rax
	movq	%rax, current_tty
	movq	-32(%rbp), %rax
	movq	8704(%rax), %rdi
	callq	tputs
.LBB82_17:                              # %if.end
	jmp	.LBB82_18
.LBB82_18:                              # %do.end
	movq	-32(%rbp), %rax
	movq	8704(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	8552(%rax), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB82_20
# BB#19:                                # %if.then.57
	movq	-32(%rbp), %rax
	movb	8776(%rax), %cl
	andb	$-9, %cl
	movb	%cl, 8776(%rax)
.LBB82_20:                              # %if.end.60
	jmp	.LBB82_21
.LBB82_21:                              # %if.end.61
	jmp	.LBB82_29
.LBB82_22:                              # %if.else
	movq	-24(%rbp), %rax
	movl	240(%rax), %ecx
	shrl	$15, %ecx
	andl	$1, %ecx
	testl	$1, %ecx
	je	.LBB82_28
# BB#23:                                # %if.then.67
	jmp	.LBB82_24
.LBB82_24:                              # %do.body.68
	movq	-32(%rbp), %rax
	cmpq	$0, 8672(%rax)
	je	.LBB82_26
# BB#25:                                # %if.then.70
	movabsq	$cmputc, %rdx
	movq	-32(%rbp), %rax
	movq	%rax, current_tty
	movq	-32(%rbp), %rax
	movq	8672(%rax), %rdi
	movq	selected_frame, %rax
	subq	$5, %rax
	movl	284(%rax), %ecx
	movq	-32(%rbp), %rax
	movq	72(%rax), %rax
	subl	(%rax), %ecx
	movl	%ecx, %esi
	callq	tputs
.LBB82_26:                              # %if.end.73
	jmp	.LBB82_27
.LBB82_27:                              # %do.end.74
	jmp	.LBB82_28
.LBB82_28:                              # %if.end.75
	jmp	.LBB82_29
.LBB82_29:                              # %if.end.76
	movq	-32(%rbp), %rax
	cmpl	$0, 8716(%rax)
	jle	.LBB82_39
# BB#30:                                # %land.lhs.true
	movq	-24(%rbp), %rax
	cmpq	$-1, 176(%rax)
	je	.LBB82_32
# BB#31:                                # %land.lhs.true.81
	movq	-24(%rbp), %rax
	cmpq	$-2, 176(%rax)
	jne	.LBB82_34
.LBB82_32:                              # %lor.lhs.false.85
	movq	-24(%rbp), %rax
	cmpq	$-1, 184(%rax)
	je	.LBB82_39
# BB#33:                                # %land.lhs.true.88
	movq	-24(%rbp), %rax
	cmpq	$-3, 184(%rax)
	je	.LBB82_39
.LBB82_34:                              # %if.then.92
	jmp	.LBB82_35
.LBB82_35:                              # %do.body.93
	movq	-32(%rbp), %rax
	cmpq	$0, 8728(%rax)
	je	.LBB82_37
# BB#36:                                # %if.then.95
	movl	$1, %esi
	movabsq	$cmputc, %rdx
	movq	-32(%rbp), %rax
	movq	%rax, current_tty
	movq	-32(%rbp), %rax
	movq	8728(%rax), %rdi
	callq	tputs
.LBB82_37:                              # %if.end.97
	jmp	.LBB82_38
.LBB82_38:                              # %do.end.98
	jmp	.LBB82_39
.LBB82_39:                              # %if.end.99
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end82:
	.size	turn_off_face, .Lfunc_end82-turn_off_face
	.cfi_endproc

	.align	16, 0x90
	.type	tty_toggle_highlight,@function
tty_toggle_highlight:                   # @tty_toggle_highlight
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp254:
	.cfi_def_cfa_offset 16
.Ltmp255:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp256:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movb	8776(%rdi), %al
	shrb	$3, %al
	andb	$1, %al
	testb	$1, %al
	je	.LBB83_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	tty_turn_off_highlight
	jmp	.LBB83_3
.LBB83_2:                               # %if.else
	movq	-8(%rbp), %rdi
	callq	tty_turn_on_highlight
.LBB83_3:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end83:
	.size	tty_toggle_highlight, .Lfunc_end83-tty_toggle_highlight
	.cfi_endproc

	.align	16, 0x90
	.type	tty_send_additional_strings,@function
tty_send_additional_strings:            # @tty_send_additional_strings
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp257:
	.cfi_def_cfa_offset 16
.Ltmp258:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp259:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movl	$5, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	88(%rsi), %rsi
	movq	%rsi, -40(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	movl	%eax, %esi
	callq	make_lisp_ptr
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	Fterminal_parameter
	movq	%rax, -32(%rbp)
.LBB84_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB84_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB84_1 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB84_3
	jmp	.LBB84_6
.LBB84_3:                               # %if.then
                                        #   in Loop: Header=BB84_1 Depth=1
	movq	-48(%rbp), %rdi
	callq	SDATA
	movq	-48(%rbp), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	SBYTES
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	-40(%rbp), %rdi
	movq	32(%rdi), %rcx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	fwrite
	movq	-40(%rbp), %rcx
	cmpq	$0, 40(%rcx)
	movq	%rax, -64(%rbp)         # 8-byte Spill
	je	.LBB84_5
# BB#4:                                 # %if.then.8
                                        #   in Loop: Header=BB84_1 Depth=1
	movq	-48(%rbp), %rdi
	callq	SDATA
	movq	-48(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	SBYTES
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	-40(%rbp), %rdi
	movq	40(%rdi), %rcx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	fwrite
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB84_5:                               # %if.end
                                        #   in Loop: Header=BB84_1 Depth=1
	jmp	.LBB84_6
.LBB84_6:                               # %if.end.13
                                        #   in Loop: Header=BB84_1 Depth=1
	jmp	.LBB84_7
.LBB84_7:                               # %for.inc
                                        #   in Loop: Header=BB84_1 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB84_1
.LBB84_8:                               # %for.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end84:
	.size	tty_send_additional_strings, .Lfunc_end84-tty_send_additional_strings
	.cfi_endproc

	.align	16, 0x90
	.type	term_get_fkeys_1,@function
term_get_fkeys_1:                       # @term_get_fkeys_1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp260:
	.cfi_def_cfa_offset 16
.Ltmp261:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp262:
	.cfi_def_cfa_register %rbp
	subq	$352, %rsp              # imm = 0x160
	xorl	%eax, %eax
	movq	term_get_fkeys_address, %rcx
	movq	%rcx, -16(%rbp)
	movq	term_get_fkeys_kboard, %rcx
	movq	%rcx, -24(%rbp)
	movq	-24(%rbp), %rcx
	movq	152(%rcx), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	get_keymap
	xorl	%edi, %edi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB85_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	Fmake_sparse_keymap
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	kset_input_decode_map
.LBB85_2:                               # %if.end
	movl	$0, -4(%rbp)
.LBB85_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-4(%rbp), %rax
	cmpq	$58, %rax
	jae	.LBB85_8
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB85_3 Depth=1
	movabsq	$keys, %rax
	movslq	-4(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	tgetstr
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB85_6
# BB#5:                                 # %if.then.7
                                        #   in Loop: Header=BB85_3 Depth=1
	movq	-24(%rbp), %rax
	movq	152(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	build_string
	movabsq	$keys, %rdi
	movslq	-4(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rdi
	movq	8(%rdi), %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	intern
	movl	$6, %edx
	movl	%edx, %edi
	movq	%rax, %rsi
	callq	Fmake_vector
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	-136(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fdefine_key
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB85_6:                               # %if.end.15
                                        #   in Loop: Header=BB85_3 Depth=1
	jmp	.LBB85_7
.LBB85_7:                               # %for.inc
                                        #   in Loop: Header=BB85_3 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB85_3
.LBB85_8:                               # %for.end
	movabsq	$.L.str.128, %rdi
	movq	-16(%rbp), %rsi
	callq	tgetstr
	movabsq	$.L.str.129, %rdi
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rsi
	callq	tgetstr
	movabsq	$.L.str.130, %rsi
	movq	%rax, -48(%rbp)
	movq	%rsi, -56(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB85_12
# BB#9:                                 # %if.then.19
	cmpq	$0, -48(%rbp)
	je	.LBB85_11
# BB#10:                                # %if.then.21
	movq	-24(%rbp), %rax
	movq	152(%rax), %rdi
	movq	-48(%rbp), %rax
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	build_string
	movabsq	$.L.str.131, %rdi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	intern
	movl	$6, %ecx
	movl	%ecx, %edi
	movq	%rax, %rsi
	callq	Fmake_vector
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	-160(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fdefine_key
	movq	%rax, -168(%rbp)        # 8-byte Spill
.LBB85_11:                              # %if.end.27
	movq	-24(%rbp), %rax
	movq	152(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	build_string
	movabsq	$.L.str.130, %rdi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	intern
	movl	$6, %ecx
	movl	%ecx, %edi
	movq	%rax, %rsi
	callq	Fmake_vector
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	-184(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fdefine_key
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jmp	.LBB85_15
.LBB85_12:                              # %if.else
	cmpq	$0, -48(%rbp)
	je	.LBB85_14
# BB#13:                                # %if.then.34
	movq	-24(%rbp), %rax
	movq	152(%rax), %rdi
	movq	-48(%rbp), %rax
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	build_string
	movq	-56(%rbp), %rdi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	intern
	movl	$6, %ecx
	movl	%ecx, %edi
	movq	%rax, %rsi
	callq	Fmake_vector
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	-208(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fdefine_key
	movq	%rax, -216(%rbp)        # 8-byte Spill
.LBB85_14:                              # %if.end.40
	jmp	.LBB85_15
.LBB85_15:                              # %if.end.41
	movb	$70, -59(%rbp)
	movb	$0, -57(%rbp)
	movl	$11, -4(%rbp)
.LBB85_16:                              # %for.cond.44
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$64, -4(%rbp)
	jge	.LBB85_27
# BB#17:                                # %for.body.47
                                        #   in Loop: Header=BB85_16 Depth=1
	cmpl	$19, -4(%rbp)
	jg	.LBB85_19
# BB#18:                                # %if.then.50
                                        #   in Loop: Header=BB85_16 Depth=1
	movl	-4(%rbp), %eax
	addl	$49, %eax
	subl	$11, %eax
	movb	%al, %cl
	movb	%cl, -58(%rbp)
	jmp	.LBB85_23
.LBB85_19:                              # %if.else.53
                                        #   in Loop: Header=BB85_16 Depth=1
	cmpl	$45, -4(%rbp)
	jg	.LBB85_21
# BB#20:                                # %if.then.56
                                        #   in Loop: Header=BB85_16 Depth=1
	movl	-4(%rbp), %eax
	addl	$65, %eax
	subl	$20, %eax
	movb	%al, %cl
	movb	%cl, -58(%rbp)
	jmp	.LBB85_22
.LBB85_21:                              # %if.else.61
                                        #   in Loop: Header=BB85_16 Depth=1
	movl	-4(%rbp), %eax
	addl	$97, %eax
	subl	$46, %eax
	movb	%al, %cl
	movb	%cl, -58(%rbp)
.LBB85_22:                              # %if.end.66
                                        #   in Loop: Header=BB85_16 Depth=1
	jmp	.LBB85_23
.LBB85_23:                              # %if.end.67
                                        #   in Loop: Header=BB85_16 Depth=1
	leaq	-59(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	tgetstr
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB85_25
# BB#24:                                # %if.then.71
                                        #   in Loop: Header=BB85_16 Depth=1
	movabsq	$.L.str.132, %rsi
	leaq	-63(%rbp), %rdi
	movl	-4(%rbp), %edx
	movb	$0, %al
	callq	sprintf
	movq	-24(%rbp), %rsi
	movq	152(%rsi), %rdi
	movq	-72(%rbp), %rsi
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movl	%eax, -228(%rbp)        # 4-byte Spill
	callq	build_string
	leaq	-63(%rbp), %rdi
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	intern
	movl	$6, %edx
	movl	%edx, %edi
	movq	%rax, %rsi
	callq	Fmake_vector
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	-240(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fdefine_key
	movq	%rax, -248(%rbp)        # 8-byte Spill
.LBB85_25:                              # %if.end.80
                                        #   in Loop: Header=BB85_16 Depth=1
	jmp	.LBB85_26
.LBB85_26:                              # %for.inc.81
                                        #   in Loop: Header=BB85_16 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB85_16
.LBB85_27:                              # %for.end.83
	movabsq	$.L.str.133, %rdi
	movq	-16(%rbp), %rsi
	callq	tgetstr
	cmpq	$0, %rax
	jne	.LBB85_31
# BB#28:                                # %if.then.86
	movabsq	$.L.str.134, %rdi
	movq	-16(%rbp), %rsi
	callq	tgetstr
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB85_30
# BB#29:                                # %if.then.90
	movq	-24(%rbp), %rax
	movq	152(%rax), %rdi
	movq	-80(%rbp), %rax
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	build_string
	movabsq	$.L.str.135, %rdi
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	intern
	movl	$6, %ecx
	movl	%ecx, %edi
	movq	%rax, %rsi
	callq	Fmake_vector
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	-264(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fdefine_key
	movq	%rax, -272(%rbp)        # 8-byte Spill
.LBB85_30:                              # %if.end.96
	jmp	.LBB85_31
.LBB85_31:                              # %if.end.97
	movabsq	$.L.str.136, %rdi
	movq	-16(%rbp), %rsi
	callq	tgetstr
	cmpq	$0, %rax
	jne	.LBB85_35
# BB#32:                                # %if.then.100
	movabsq	$.L.str.137, %rdi
	movq	-16(%rbp), %rsi
	callq	tgetstr
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB85_34
# BB#33:                                # %if.then.104
	movq	-24(%rbp), %rax
	movq	152(%rax), %rdi
	movq	-88(%rbp), %rax
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	build_string
	movabsq	$.L.str.138, %rdi
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	intern
	movl	$6, %ecx
	movl	%ecx, %edi
	movq	%rax, %rsi
	callq	Fmake_vector
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	-288(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fdefine_key
	movq	%rax, -296(%rbp)        # 8-byte Spill
.LBB85_34:                              # %if.end.110
	jmp	.LBB85_35
.LBB85_35:                              # %if.end.111
	movabsq	$.L.str.139, %rdi
	movq	-16(%rbp), %rsi
	callq	tgetstr
	cmpq	$0, %rax
	jne	.LBB85_39
# BB#36:                                # %if.then.114
	movabsq	$.L.str.140, %rdi
	movq	-16(%rbp), %rsi
	callq	tgetstr
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	je	.LBB85_38
# BB#37:                                # %if.then.118
	movq	-24(%rbp), %rax
	movq	152(%rax), %rdi
	movq	-96(%rbp), %rax
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	build_string
	movabsq	$.L.str.141, %rdi
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	intern
	movl	$6, %ecx
	movl	%ecx, %edi
	movq	%rax, %rsi
	callq	Fmake_vector
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	-312(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fdefine_key
	movq	%rax, -320(%rbp)        # 8-byte Spill
.LBB85_38:                              # %if.end.124
	jmp	.LBB85_39
.LBB85_39:                              # %if.end.125
	movabsq	$.L.str.142, %rdi
	movq	-16(%rbp), %rsi
	callq	tgetstr
	cmpq	$0, %rax
	jne	.LBB85_43
# BB#40:                                # %if.then.128
	movabsq	$.L.str.143, %rdi
	movq	-16(%rbp), %rsi
	callq	tgetstr
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	je	.LBB85_42
# BB#41:                                # %if.then.132
	movq	-24(%rbp), %rax
	movq	152(%rax), %rdi
	movq	-104(%rbp), %rax
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	build_string
	movabsq	$.L.str.144, %rdi
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	intern
	movl	$6, %ecx
	movl	%ecx, %edi
	movq	%rax, %rsi
	callq	Fmake_vector
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	-336(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fdefine_key
	movq	%rax, -344(%rbp)        # 8-byte Spill
.LBB85_42:                              # %if.end.138
	jmp	.LBB85_43
.LBB85_43:                              # %if.end.139
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$352, %rsp              # imm = 0x160
	popq	%rbp
	retq
.Lfunc_end85:
	.size	term_get_fkeys_1, .Lfunc_end85-term_get_fkeys_1
	.cfi_endproc

	.type	encode_terminal_src_size,@object # @encode_terminal_src_size
	.local	encode_terminal_src_size
	.comm	encode_terminal_src_size,8,8
	.type	encode_terminal_src,@object # @encode_terminal_src
	.local	encode_terminal_src
	.comm	encode_terminal_src,8,8
	.type	encode_terminal_dst_size,@object # @encode_terminal_dst_size
	.local	encode_terminal_dst_size
	.comm	encode_terminal_dst_size,8,8
	.type	encode_terminal_dst,@object # @encode_terminal_dst
	.local	encode_terminal_dst
	.comm	encode_terminal_dst,8,8
	.type	max_frame_cols,@object  # @max_frame_cols
	.local	max_frame_cols
	.comm	max_frame_cols,4,4
	.type	char_ins_del_vector,@object # @char_ins_del_vector
	.comm	char_ins_del_vector,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"tty-color-mode-alist"
	.size	.L.str, 21

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"tty-set-up-initial-frame-faces"
	.size	.L.str.1, 31

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"/dev/tty"
	.size	.L.str.2, 9

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Attempt to suspend a non-text terminal device"
	.size	.L.str.3, 46

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"suspend-tty-functions"
	.size	.L.str.4, 22

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Attempt to resume a non-text terminal device"
	.size	.L.str.5, 45

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Cannot resume display while another display is active on the same device"
	.size	.L.str.6, 73

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"w+"
	.size	.L.str.7, 3

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Cannot reopen tty device"
	.size	.L.str.8, 25

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"resume-tty-functions"
	.size	.L.str.9, 21

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Empty menu"
	.size	.L.str.10, 11

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.zero	1
	.size	.L.str.11, 1

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Can't create pane"
	.size	.L.str.12, 18

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Can't add selection to menu"
	.size	.L.str.13, 28

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Can't activate menu"
	.size	.L.str.14, 20

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Unknown terminal type"
	.size	.L.str.15, 22

	.type	tty_list,@object        # @tty_list
	.comm	tty_list,8,8
	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Could not open file: %s"
	.size	.L.str.16, 24

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Not a tty device: %s"
	.size	.L.str.17, 21

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Cannot open terminfo database file"
	.size	.L.str.18, 35

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Terminal type %s is not defined"
	.size	.L.str.19, 32

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Terminal type %s is not defined.\nIf that is not the actual type of terminal you have,\nuse the Bourne shell command 'TERM=...; export TERM' (C-shell:\n'setenv TERM ...') to specify the correct type.  It may be necessary\nto do 'unset TERMINFO' (C-shell: 'unsetenv TERMINFO') as well."
	.size	.L.str.20, 281

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"al"
	.size	.L.str.21, 3

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"AL"
	.size	.L.str.22, 3

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"bl"
	.size	.L.str.23, 3

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"bt"
	.size	.L.str.24, 3

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"cd"
	.size	.L.str.25, 3

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"ce"
	.size	.L.str.26, 3

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"cl"
	.size	.L.str.27, 3

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"cm"
	.size	.L.str.28, 3

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"cr"
	.size	.L.str.29, 3

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"cs"
	.size	.L.str.30, 3

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"cS"
	.size	.L.str.31, 3

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"cv"
	.size	.L.str.32, 3

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"dc"
	.size	.L.str.33, 3

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"DC"
	.size	.L.str.34, 3

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"dl"
	.size	.L.str.35, 3

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"DL"
	.size	.L.str.36, 3

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"dm"
	.size	.L.str.37, 3

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"ed"
	.size	.L.str.38, 3

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"ei"
	.size	.L.str.39, 3

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"ho"
	.size	.L.str.40, 3

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"ic"
	.size	.L.str.41, 3

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"IC"
	.size	.L.str.42, 3

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"im"
	.size	.L.str.43, 3

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"ip"
	.size	.L.str.44, 3

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"ke"
	.size	.L.str.45, 3

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"ks"
	.size	.L.str.46, 3

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"ll"
	.size	.L.str.47, 3

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"nd"
	.size	.L.str.48, 3

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"do"
	.size	.L.str.49, 3

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"nl"
	.size	.L.str.50, 3

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"bs"
	.size	.L.str.51, 3

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"\b"
	.size	.L.str.52, 2

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"le"
	.size	.L.str.53, 3

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"bc"
	.size	.L.str.54, 3

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"pc"
	.size	.L.str.55, 3

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"rp"
	.size	.L.str.56, 3

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"se"
	.size	.L.str.57, 3

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"sf"
	.size	.L.str.58, 3

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"so"
	.size	.L.str.59, 3

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"sr"
	.size	.L.str.60, 3

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"ta"
	.size	.L.str.61, 3

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"te"
	.size	.L.str.62, 3

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"ti"
	.size	.L.str.63, 3

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"up"
	.size	.L.str.64, 3

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"vb"
	.size	.L.str.65, 3

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"ve"
	.size	.L.str.66, 3

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"vs"
	.size	.L.str.67, 3

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"vi"
	.size	.L.str.68, 3

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"wi"
	.size	.L.str.69, 3

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"us"
	.size	.L.str.70, 3

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"ue"
	.size	.L.str.71, 3

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"md"
	.size	.L.str.72, 3

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"ZH"
	.size	.L.str.73, 3

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"mh"
	.size	.L.str.74, 3

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"mr"
	.size	.L.str.75, 3

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"as"
	.size	.L.str.76, 3

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"ae"
	.size	.L.str.77, 3

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"me"
	.size	.L.str.78, 3

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"UP"
	.size	.L.str.79, 3

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"DO"
	.size	.L.str.80, 3

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"LE"
	.size	.L.str.81, 3

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"RI"
	.size	.L.str.82, 3

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"op"
	.size	.L.str.83, 3

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"AF"
	.size	.L.str.84, 3

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"AB"
	.size	.L.str.85, 3

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"Sf"
	.size	.L.str.86, 3

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"Sb"
	.size	.L.str.87, 3

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"Co"
	.size	.L.str.88, 3

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"pa"
	.size	.L.str.89, 3

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"NC"
	.size	.L.str.90, 3

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"xn"
	.size	.L.str.91, 3

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"am"
	.size	.L.str.92, 3

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"db"
	.size	.L.str.93, 3

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"hz"
	.size	.L.str.94, 3

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"in"
	.size	.L.str.95, 3

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"km"
	.size	.L.str.96, 3

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"MT"
	.size	.L.str.97, 3

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"mi"
	.size	.L.str.98, 3

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"ms"
	.size	.L.str.99, 3

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"ul"
	.size	.L.str.100, 3

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"xt"
	.size	.L.str.101, 3

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"co"
	.size	.L.str.102, 3

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"li"
	.size	.L.str.103, 3

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"Screen size %dx%d is too small"
	.size	.L.str.104, 31

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"tw"
	.size	.L.str.105, 3

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"\007"
	.size	.L.str.106, 2

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"sg"
	.size	.L.str.107, 3

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"ug"
	.size	.L.str.108, 3

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"Terminal type \"%s\" is not powerful enough to run Emacs"
	.size	.L.str.109, 55

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"Terminal type \"%s\" is not powerful enough to run Emacs.\nIt lacks the ability to position the cursor.\nIf that is not the actual type of terminal you have,\nuse the Bourne shell command 'TERM=...; export TERM' (C-shell:\n'setenv TERM ...') to specify the correct type.  It may be necessary\nto do 'unset TERMINFO' (C-shell: 'unsetenv TERMINFO') as well."
	.size	.L.str.110, 349

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"Could not determine the frame size"
	.size	.L.str.111, 35

	.type	syms_of_term.b_fwd,@object # @syms_of_term.b_fwd
	.local	syms_of_term.b_fwd
	.comm	syms_of_term.b_fwd,16,8
	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"system-uses-terminfo"
	.size	.L.str.112, 21

	.type	syms_of_term.o_fwd,@object # @syms_of_term.o_fwd
	.local	syms_of_term.o_fwd
	.comm	syms_of_term.o_fwd,16,8
	.type	syms_of_term.o_fwd.113,@object # @syms_of_term.o_fwd.113
	.local	syms_of_term.o_fwd.113
	.comm	syms_of_term.o_fwd.113,16,8
	.type	syms_of_term.b_fwd.114,@object # @syms_of_term.b_fwd.114
	.local	syms_of_term.b_fwd.114
	.comm	syms_of_term.b_fwd.114,16,8
	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"visible-cursor"
	.size	.L.str.115, 15

	.type	default_orig_pair,@object # @default_orig_pair
	.local	default_orig_pair
	.comm	default_orig_pair,8,8
	.type	default_set_foreground,@object # @default_set_foreground
	.local	default_set_foreground
	.comm	default_set_foreground,8,8
	.type	default_set_background,@object # @default_set_background
	.local	default_set_background
	.comm	default_set_background,8,8
	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"    "
	.size	.L.str.116, 5

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"[%.*s]"
	.size	.L.str.117, 7

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"\\u%04X"
	.size	.L.str.118, 7

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"\\U%06X"
	.size	.L.str.119, 7

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"\\x%06X"
	.size	.L.str.120, 7

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"\033[0m"
	.size	.L.str.121, 5

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"\033[3%p1%dm"
	.size	.L.str.122, 10

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"\033[4%p1%dm"
	.size	.L.str.123, 10

	.type	prev_menu_help_message,@object # @prev_menu_help_message
	.local	prev_menu_help_message
	.comm	prev_menu_help_message,8,8
	.type	menu_help_message,@object # @menu_help_message
	.local	menu_help_message
	.comm	menu_help_message,8,8
	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"tty-menu-disabled-face"
	.size	.L.str.124, 23

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"tty-menu-enabled-face"
	.size	.L.str.125, 22

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"tty-menu-selected-face"
	.size	.L.str.126, 23

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"Buffers 1"
	.size	.L.str.127, 10

	.type	menu_help_paneno,@object # @menu_help_paneno
	.local	menu_help_paneno
	.comm	menu_help_paneno,4,4
	.type	menu_help_itemno,@object # @menu_help_itemno
	.local	menu_help_itemno
	.comm	menu_help_itemno,4,4
	.type	default_max_colors,@object # @default_max_colors
	.local	default_max_colors
	.comm	default_max_colors,4,4
	.type	default_max_pairs,@object # @default_max_pairs
	.local	default_max_pairs
	.comm	default_max_pairs,4,4
	.type	default_no_color_video,@object # @default_no_color_video
	.local	default_no_color_video
	.comm	default_no_color_video,4,4
	.type	term_get_fkeys_address,@object # @term_get_fkeys_address
	.local	term_get_fkeys_address
	.comm	term_get_fkeys_address,8,8
	.type	term_get_fkeys_kboard,@object # @term_get_fkeys_kboard
	.local	term_get_fkeys_kboard
	.comm	term_get_fkeys_kboard,8,8
	.type	keys,@object            # @keys
	.section	.rodata,"a",@progbits
	.align	16
keys:
	.quad	.L.str.145
	.quad	.L.str.146
	.quad	.L.str.147
	.quad	.L.str.148
	.quad	.L.str.149
	.quad	.L.str.64
	.quad	.L.str.150
	.quad	.L.str.151
	.quad	.L.str.152
	.quad	.L.str.153
	.quad	.L.str.136
	.quad	.L.str.138
	.quad	.L.str.133
	.quad	.L.str.135
	.quad	.L.str.142
	.quad	.L.str.144
	.quad	.L.str.154
	.quad	.L.str.155
	.quad	.L.str.156
	.quad	.L.str.157
	.quad	.L.str.158
	.quad	.L.str.159
	.quad	.L.str.160
	.quad	.L.str.161
	.quad	.L.str.162
	.quad	.L.str.163
	.quad	.L.str.164
	.quad	.L.str.165
	.quad	.L.str.166
	.quad	.L.str.167
	.quad	.L.str.168
	.quad	.L.str.169
	.quad	.L.str.170
	.quad	.L.str.171
	.quad	.L.str.172
	.quad	.L.str.173
	.quad	.L.str.174
	.quad	.L.str.175
	.quad	.L.str.176
	.quad	.L.str.177
	.quad	.L.str.178
	.quad	.L.str.179
	.quad	.L.str.180
	.quad	.L.str.181
	.quad	.L.str.140
	.quad	.L.str.182
	.quad	.L.str.139
	.quad	.L.str.183
	.quad	.L.str.184
	.quad	.L.str.185
	.quad	.L.str.186
	.quad	.L.str.187
	.quad	.L.str.188
	.quad	.L.str.189
	.quad	.L.str.190
	.quad	.L.str.191
	.quad	.L.str.192
	.quad	.L.str.193
	.quad	.L.str.194
	.quad	.L.str.195
	.quad	.L.str.196
	.quad	.L.str.197
	.quad	.L.str.198
	.quad	.L.str.199
	.quad	.L.str.200
	.quad	.L.str.201
	.quad	.L.str.202
	.quad	.L.str.203
	.quad	.L.str.204
	.quad	.L.str.205
	.quad	.L.str.206
	.quad	.L.str.207
	.quad	.L.str.208
	.quad	.L.str.209
	.quad	.L.str.210
	.quad	.L.str.211
	.quad	.L.str.212
	.quad	.L.str.213
	.quad	.L.str.214
	.quad	.L.str.215
	.quad	.L.str.216
	.quad	.L.str.217
	.quad	.L.str.218
	.quad	.L.str.219
	.quad	.L.str.220
	.quad	.L.str.221
	.quad	.L.str.222
	.quad	.L.str.223
	.quad	.L.str.224
	.quad	.L.str.225
	.quad	.L.str.226
	.quad	.L.str.227
	.quad	.L.str.228
	.quad	.L.str.229
	.quad	.L.str.230
	.quad	.L.str.231
	.quad	.L.str.232
	.quad	.L.str.233
	.quad	.L.str.234
	.quad	.L.str.235
	.quad	.L.str.236
	.quad	.L.str.237
	.quad	.L.str.238
	.quad	.L.str.239
	.quad	.L.str.240
	.quad	.L.str.241
	.quad	.L.str.242
	.quad	.L.str.243
	.quad	.L.str.244
	.quad	.L.str.245
	.quad	.L.str.246
	.quad	.L.str.247
	.quad	.L.str.248
	.quad	.L.str.249
	.quad	.L.str.250
	.quad	.L.str.251
	.size	keys, 928

	.type	.L.str.128,@object      # @.str.128
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.128:
	.asciz	"k;"
	.size	.L.str.128, 3

	.type	.L.str.129,@object      # @.str.129
.L.str.129:
	.asciz	"k0"
	.size	.L.str.129, 3

	.type	.L.str.130,@object      # @.str.130
.L.str.130:
	.asciz	"f10"
	.size	.L.str.130, 4

	.type	.L.str.131,@object      # @.str.131
.L.str.131:
	.asciz	"f0"
	.size	.L.str.131, 3

	.type	.L.str.132,@object      # @.str.132
.L.str.132:
	.asciz	"f%d"
	.size	.L.str.132, 4

	.type	.L.str.133,@object      # @.str.133
.L.str.133:
	.asciz	"%5"
	.size	.L.str.133, 3

	.type	.L.str.134,@object      # @.str.134
.L.str.134:
	.asciz	"kN"
	.size	.L.str.134, 3

	.type	.L.str.135,@object      # @.str.135
.L.str.135:
	.asciz	"next"
	.size	.L.str.135, 5

	.type	.L.str.136,@object      # @.str.136
.L.str.136:
	.asciz	"%8"
	.size	.L.str.136, 3

	.type	.L.str.137,@object      # @.str.137
.L.str.137:
	.asciz	"kP"
	.size	.L.str.137, 3

	.type	.L.str.138,@object      # @.str.138
.L.str.138:
	.asciz	"prior"
	.size	.L.str.138, 6

	.type	.L.str.139,@object      # @.str.139
.L.str.139:
	.asciz	"kD"
	.size	.L.str.139, 3

	.type	.L.str.140,@object      # @.str.140
.L.str.140:
	.asciz	"kI"
	.size	.L.str.140, 3

	.type	.L.str.141,@object      # @.str.141
.L.str.141:
	.asciz	"insert"
	.size	.L.str.141, 7

	.type	.L.str.142,@object      # @.str.142
.L.str.142:
	.asciz	"@7"
	.size	.L.str.142, 3

	.type	.L.str.143,@object      # @.str.143
.L.str.143:
	.asciz	"kH"
	.size	.L.str.143, 3

	.type	.L.str.144,@object      # @.str.144
.L.str.144:
	.asciz	"end"
	.size	.L.str.144, 4

	.type	.L.str.145,@object      # @.str.145
.L.str.145:
	.asciz	"kh"
	.size	.L.str.145, 3

	.type	.L.str.146,@object      # @.str.146
.L.str.146:
	.asciz	"home"
	.size	.L.str.146, 5

	.type	.L.str.147,@object      # @.str.147
.L.str.147:
	.asciz	"kl"
	.size	.L.str.147, 3

	.type	.L.str.148,@object      # @.str.148
.L.str.148:
	.asciz	"left"
	.size	.L.str.148, 5

	.type	.L.str.149,@object      # @.str.149
.L.str.149:
	.asciz	"ku"
	.size	.L.str.149, 3

	.type	.L.str.150,@object      # @.str.150
.L.str.150:
	.asciz	"kr"
	.size	.L.str.150, 3

	.type	.L.str.151,@object      # @.str.151
.L.str.151:
	.asciz	"right"
	.size	.L.str.151, 6

	.type	.L.str.152,@object      # @.str.152
.L.str.152:
	.asciz	"kd"
	.size	.L.str.152, 3

	.type	.L.str.153,@object      # @.str.153
.L.str.153:
	.asciz	"down"
	.size	.L.str.153, 5

	.type	.L.str.154,@object      # @.str.154
.L.str.154:
	.asciz	"@1"
	.size	.L.str.154, 3

	.type	.L.str.155,@object      # @.str.155
.L.str.155:
	.asciz	"begin"
	.size	.L.str.155, 6

	.type	.L.str.156,@object      # @.str.156
.L.str.156:
	.asciz	"*6"
	.size	.L.str.156, 3

	.type	.L.str.157,@object      # @.str.157
.L.str.157:
	.asciz	"select"
	.size	.L.str.157, 7

	.type	.L.str.158,@object      # @.str.158
.L.str.158:
	.asciz	"%9"
	.size	.L.str.158, 3

	.type	.L.str.159,@object      # @.str.159
.L.str.159:
	.asciz	"print"
	.size	.L.str.159, 6

	.type	.L.str.160,@object      # @.str.160
.L.str.160:
	.asciz	"@4"
	.size	.L.str.160, 3

	.type	.L.str.161,@object      # @.str.161
.L.str.161:
	.asciz	"execute"
	.size	.L.str.161, 8

	.type	.L.str.162,@object      # @.str.162
.L.str.162:
	.asciz	"&8"
	.size	.L.str.162, 3

	.type	.L.str.163,@object      # @.str.163
.L.str.163:
	.asciz	"undo"
	.size	.L.str.163, 5

	.type	.L.str.164,@object      # @.str.164
.L.str.164:
	.asciz	"%0"
	.size	.L.str.164, 3

	.type	.L.str.165,@object      # @.str.165
.L.str.165:
	.asciz	"redo"
	.size	.L.str.165, 5

	.type	.L.str.166,@object      # @.str.166
.L.str.166:
	.asciz	"%7"
	.size	.L.str.166, 3

	.type	.L.str.167,@object      # @.str.167
.L.str.167:
	.asciz	"menu"
	.size	.L.str.167, 5

	.type	.L.str.168,@object      # @.str.168
.L.str.168:
	.asciz	"@0"
	.size	.L.str.168, 3

	.type	.L.str.169,@object      # @.str.169
.L.str.169:
	.asciz	"find"
	.size	.L.str.169, 5

	.type	.L.str.170,@object      # @.str.170
.L.str.170:
	.asciz	"@2"
	.size	.L.str.170, 3

	.type	.L.str.171,@object      # @.str.171
.L.str.171:
	.asciz	"cancel"
	.size	.L.str.171, 7

	.type	.L.str.172,@object      # @.str.172
.L.str.172:
	.asciz	"%1"
	.size	.L.str.172, 3

	.type	.L.str.173,@object      # @.str.173
.L.str.173:
	.asciz	"help"
	.size	.L.str.173, 5

	.type	.L.str.174,@object      # @.str.174
.L.str.174:
	.asciz	"&4"
	.size	.L.str.174, 3

	.type	.L.str.175,@object      # @.str.175
.L.str.175:
	.asciz	"reset"
	.size	.L.str.175, 6

	.type	.L.str.176,@object      # @.str.176
.L.str.176:
	.asciz	"kE"
	.size	.L.str.176, 3

	.type	.L.str.177,@object      # @.str.177
.L.str.177:
	.asciz	"clearline"
	.size	.L.str.177, 10

	.type	.L.str.178,@object      # @.str.178
.L.str.178:
	.asciz	"kA"
	.size	.L.str.178, 3

	.type	.L.str.179,@object      # @.str.179
.L.str.179:
	.asciz	"insertline"
	.size	.L.str.179, 11

	.type	.L.str.180,@object      # @.str.180
.L.str.180:
	.asciz	"kL"
	.size	.L.str.180, 3

	.type	.L.str.181,@object      # @.str.181
.L.str.181:
	.asciz	"deleteline"
	.size	.L.str.181, 11

	.type	.L.str.182,@object      # @.str.182
.L.str.182:
	.asciz	"insertchar"
	.size	.L.str.182, 11

	.type	.L.str.183,@object      # @.str.183
.L.str.183:
	.asciz	"deletechar"
	.size	.L.str.183, 11

	.type	.L.str.184,@object      # @.str.184
.L.str.184:
	.asciz	"kB"
	.size	.L.str.184, 3

	.type	.L.str.185,@object      # @.str.185
.L.str.185:
	.asciz	"backtab"
	.size	.L.str.185, 8

	.type	.L.str.186,@object      # @.str.186
.L.str.186:
	.asciz	"@8"
	.size	.L.str.186, 3

	.type	.L.str.187,@object      # @.str.187
.L.str.187:
	.asciz	"kp-enter"
	.size	.L.str.187, 9

	.type	.L.str.188,@object      # @.str.188
.L.str.188:
	.asciz	"K4"
	.size	.L.str.188, 3

	.type	.L.str.189,@object      # @.str.189
.L.str.189:
	.asciz	"kp-1"
	.size	.L.str.189, 5

	.type	.L.str.190,@object      # @.str.190
.L.str.190:
	.asciz	"K5"
	.size	.L.str.190, 3

	.type	.L.str.191,@object      # @.str.191
.L.str.191:
	.asciz	"kp-3"
	.size	.L.str.191, 5

	.type	.L.str.192,@object      # @.str.192
.L.str.192:
	.asciz	"K2"
	.size	.L.str.192, 3

	.type	.L.str.193,@object      # @.str.193
.L.str.193:
	.asciz	"kp-5"
	.size	.L.str.193, 5

	.type	.L.str.194,@object      # @.str.194
.L.str.194:
	.asciz	"K1"
	.size	.L.str.194, 3

	.type	.L.str.195,@object      # @.str.195
.L.str.195:
	.asciz	"kp-7"
	.size	.L.str.195, 5

	.type	.L.str.196,@object      # @.str.196
.L.str.196:
	.asciz	"K3"
	.size	.L.str.196, 3

	.type	.L.str.197,@object      # @.str.197
.L.str.197:
	.asciz	"kp-9"
	.size	.L.str.197, 5

	.type	.L.str.198,@object      # @.str.198
.L.str.198:
	.asciz	"k1"
	.size	.L.str.198, 3

	.type	.L.str.199,@object      # @.str.199
.L.str.199:
	.asciz	"f1"
	.size	.L.str.199, 3

	.type	.L.str.200,@object      # @.str.200
.L.str.200:
	.asciz	"k2"
	.size	.L.str.200, 3

	.type	.L.str.201,@object      # @.str.201
.L.str.201:
	.asciz	"f2"
	.size	.L.str.201, 3

	.type	.L.str.202,@object      # @.str.202
.L.str.202:
	.asciz	"k3"
	.size	.L.str.202, 3

	.type	.L.str.203,@object      # @.str.203
.L.str.203:
	.asciz	"f3"
	.size	.L.str.203, 3

	.type	.L.str.204,@object      # @.str.204
.L.str.204:
	.asciz	"k4"
	.size	.L.str.204, 3

	.type	.L.str.205,@object      # @.str.205
.L.str.205:
	.asciz	"f4"
	.size	.L.str.205, 3

	.type	.L.str.206,@object      # @.str.206
.L.str.206:
	.asciz	"k5"
	.size	.L.str.206, 3

	.type	.L.str.207,@object      # @.str.207
.L.str.207:
	.asciz	"f5"
	.size	.L.str.207, 3

	.type	.L.str.208,@object      # @.str.208
.L.str.208:
	.asciz	"k6"
	.size	.L.str.208, 3

	.type	.L.str.209,@object      # @.str.209
.L.str.209:
	.asciz	"f6"
	.size	.L.str.209, 3

	.type	.L.str.210,@object      # @.str.210
.L.str.210:
	.asciz	"k7"
	.size	.L.str.210, 3

	.type	.L.str.211,@object      # @.str.211
.L.str.211:
	.asciz	"f7"
	.size	.L.str.211, 3

	.type	.L.str.212,@object      # @.str.212
.L.str.212:
	.asciz	"k8"
	.size	.L.str.212, 3

	.type	.L.str.213,@object      # @.str.213
.L.str.213:
	.asciz	"f8"
	.size	.L.str.213, 3

	.type	.L.str.214,@object      # @.str.214
.L.str.214:
	.asciz	"k9"
	.size	.L.str.214, 3

	.type	.L.str.215,@object      # @.str.215
.L.str.215:
	.asciz	"f9"
	.size	.L.str.215, 3

	.type	.L.str.216,@object      # @.str.216
.L.str.216:
	.asciz	"&0"
	.size	.L.str.216, 3

	.type	.L.str.217,@object      # @.str.217
.L.str.217:
	.asciz	"S-cancel"
	.size	.L.str.217, 9

	.type	.L.str.218,@object      # @.str.218
.L.str.218:
	.asciz	"&9"
	.size	.L.str.218, 3

	.type	.L.str.219,@object      # @.str.219
.L.str.219:
	.asciz	"S-begin"
	.size	.L.str.219, 8

	.type	.L.str.220,@object      # @.str.220
.L.str.220:
	.asciz	"*0"
	.size	.L.str.220, 3

	.type	.L.str.221,@object      # @.str.221
.L.str.221:
	.asciz	"S-find"
	.size	.L.str.221, 7

	.type	.L.str.222,@object      # @.str.222
.L.str.222:
	.asciz	"*1"
	.size	.L.str.222, 3

	.type	.L.str.223,@object      # @.str.223
.L.str.223:
	.asciz	"S-execute"
	.size	.L.str.223, 10

	.type	.L.str.224,@object      # @.str.224
.L.str.224:
	.asciz	"*4"
	.size	.L.str.224, 3

	.type	.L.str.225,@object      # @.str.225
.L.str.225:
	.asciz	"S-delete"
	.size	.L.str.225, 9

	.type	.L.str.226,@object      # @.str.226
.L.str.226:
	.asciz	"*7"
	.size	.L.str.226, 3

	.type	.L.str.227,@object      # @.str.227
.L.str.227:
	.asciz	"S-end"
	.size	.L.str.227, 6

	.type	.L.str.228,@object      # @.str.228
.L.str.228:
	.asciz	"*8"
	.size	.L.str.228, 3

	.type	.L.str.229,@object      # @.str.229
.L.str.229:
	.asciz	"S-clearline"
	.size	.L.str.229, 12

	.type	.L.str.230,@object      # @.str.230
.L.str.230:
	.asciz	"#1"
	.size	.L.str.230, 3

	.type	.L.str.231,@object      # @.str.231
.L.str.231:
	.asciz	"S-help"
	.size	.L.str.231, 7

	.type	.L.str.232,@object      # @.str.232
.L.str.232:
	.asciz	"#2"
	.size	.L.str.232, 3

	.type	.L.str.233,@object      # @.str.233
.L.str.233:
	.asciz	"S-home"
	.size	.L.str.233, 7

	.type	.L.str.234,@object      # @.str.234
.L.str.234:
	.asciz	"#3"
	.size	.L.str.234, 3

	.type	.L.str.235,@object      # @.str.235
.L.str.235:
	.asciz	"S-insert"
	.size	.L.str.235, 9

	.type	.L.str.236,@object      # @.str.236
.L.str.236:
	.asciz	"#4"
	.size	.L.str.236, 3

	.type	.L.str.237,@object      # @.str.237
.L.str.237:
	.asciz	"S-left"
	.size	.L.str.237, 7

	.type	.L.str.238,@object      # @.str.238
.L.str.238:
	.asciz	"%d"
	.size	.L.str.238, 3

	.type	.L.str.239,@object      # @.str.239
.L.str.239:
	.asciz	"S-menu"
	.size	.L.str.239, 7

	.type	.L.str.240,@object      # @.str.240
.L.str.240:
	.asciz	"%c"
	.size	.L.str.240, 3

	.type	.L.str.241,@object      # @.str.241
.L.str.241:
	.asciz	"S-next"
	.size	.L.str.241, 7

	.type	.L.str.242,@object      # @.str.242
.L.str.242:
	.asciz	"%e"
	.size	.L.str.242, 3

	.type	.L.str.243,@object      # @.str.243
.L.str.243:
	.asciz	"S-prior"
	.size	.L.str.243, 8

	.type	.L.str.244,@object      # @.str.244
.L.str.244:
	.asciz	"%f"
	.size	.L.str.244, 3

	.type	.L.str.245,@object      # @.str.245
.L.str.245:
	.asciz	"S-print"
	.size	.L.str.245, 8

	.type	.L.str.246,@object      # @.str.246
.L.str.246:
	.asciz	"%g"
	.size	.L.str.246, 3

	.type	.L.str.247,@object      # @.str.247
.L.str.247:
	.asciz	"S-redo"
	.size	.L.str.247, 7

	.type	.L.str.248,@object      # @.str.248
.L.str.248:
	.asciz	"%i"
	.size	.L.str.248, 3

	.type	.L.str.249,@object      # @.str.249
.L.str.249:
	.asciz	"S-right"
	.size	.L.str.249, 8

	.type	.L.str.250,@object      # @.str.250
.L.str.250:
	.asciz	"!3"
	.size	.L.str.250, 3

	.type	.L.str.251,@object      # @.str.251
.L.str.251:
	.asciz	"S-undo"
	.size	.L.str.251, 7

	.type	.L.str.252,@object      # @.str.252
.L.str.252:
	.asciz	"emacs: "
	.size	.L.str.252, 8

	.type	.L.str.253,@object      # @.str.253
.L.str.253:
	.asciz	"\n"
	.size	.L.str.253, 2

	.type	.L.str.254,@object      # @.str.254
.L.str.254:
	.asciz	"tty-display-color-p"
	.size	.L.str.254, 20

	.type	Stty_display_color_p,@object # @Stty_display_color_p
	.data
	.align	8
Stty_display_color_p:
	.quad	167772160               # 0xa000000
	.quad	Ftty_display_color_p
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.254
	.quad	0
	.quad	0
	.size	Stty_display_color_p, 48

	.type	.L.str.255,@object      # @.str.255
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.255:
	.asciz	"tty-display-color-cells"
	.size	.L.str.255, 24

	.type	Stty_display_color_cells,@object # @Stty_display_color_cells
	.data
	.align	8
Stty_display_color_cells:
	.quad	167772160               # 0xa000000
	.quad	Ftty_display_color_cells
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.255
	.quad	0
	.quad	0
	.size	Stty_display_color_cells, 48

	.type	.L.str.256,@object      # @.str.256
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.256:
	.asciz	"tty-no-underline"
	.size	.L.str.256, 17

	.type	Stty_no_underline,@object # @Stty_no_underline
	.data
	.align	8
Stty_no_underline:
	.quad	167772160               # 0xa000000
	.quad	Ftty_no_underline
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.256
	.quad	0
	.quad	0
	.size	Stty_no_underline, 48

	.type	.L.str.257,@object      # @.str.257
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.257:
	.asciz	"tty-type"
	.size	.L.str.257, 9

	.type	Stty_type,@object       # @Stty_type
	.data
	.align	8
Stty_type:
	.quad	167772160               # 0xa000000
	.quad	Ftty_type
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.257
	.quad	0
	.quad	0
	.size	Stty_type, 48

	.type	.L.str.258,@object      # @.str.258
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.258:
	.asciz	"controlling-tty-p"
	.size	.L.str.258, 18

	.type	Scontrolling_tty_p,@object # @Scontrolling_tty_p
	.data
	.align	8
Scontrolling_tty_p:
	.quad	167772160               # 0xa000000
	.quad	Fcontrolling_tty_p
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.258
	.quad	0
	.quad	0
	.size	Scontrolling_tty_p, 48

	.type	.L.str.259,@object      # @.str.259
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.259:
	.asciz	"tty-top-frame"
	.size	.L.str.259, 14

	.type	Stty_top_frame,@object  # @Stty_top_frame
	.data
	.align	8
Stty_top_frame:
	.quad	167772160               # 0xa000000
	.quad	Ftty_top_frame
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.259
	.quad	0
	.quad	0
	.size	Stty_top_frame, 48

	.type	.L.str.260,@object      # @.str.260
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.260:
	.asciz	"suspend-tty"
	.size	.L.str.260, 12

	.type	Ssuspend_tty,@object    # @Ssuspend_tty
	.data
	.align	8
Ssuspend_tty:
	.quad	167772160               # 0xa000000
	.quad	Fsuspend_tty
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.260
	.quad	0
	.quad	0
	.size	Ssuspend_tty, 48

	.type	.L.str.261,@object      # @.str.261
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.261:
	.asciz	"resume-tty"
	.size	.L.str.261, 11

	.type	Sresume_tty,@object     # @Sresume_tty
	.data
	.align	8
Sresume_tty:
	.quad	167772160               # 0xa000000
	.quad	Fresume_tty
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.261
	.quad	0
	.quad	0
	.size	Sresume_tty, 48


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
