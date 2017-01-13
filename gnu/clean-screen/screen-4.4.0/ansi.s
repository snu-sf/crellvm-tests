	.text
	.file	"ansi.bc"
	.globl	ResetAnsiState
	.align	16, 0x90
	.type	ResetAnsiState,@function
ResetAnsiState:                         # @ResetAnsiState
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	$0, 9856(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 9860(%rdi)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	ResetAnsiState, .Lfunc_end0-ResetAnsiState
	.cfi_endproc

	.globl	ResetWindow
	.align	16, 0x90
	.type	ResetWindow,@function
ResetWindow:                            # @ResetWindow
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
	subq	$16, %rsp
	xorl	%esi, %esi
	movq	%rdi, -8(%rbp)
	movl	nwin_default+68, %eax
	movq	-8(%rbp), %rdi
	movl	%eax, 9964(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 9968(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 9972(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 9984(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 10852(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 9988(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 9992(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 9996(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 9976(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 9980(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 9956(%rdi)
	movq	-8(%rbp), %rdi
	movl	36(%rdi), %eax
	subl	$1, %eax
	movq	-8(%rbp), %rdi
	movl	%eax, 9960(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 9912(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 44(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 40(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 9856(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 9860(%rdi)
	movq	-8(%rbp), %rdi
	movq	10808(%rdi), %rdi
	movq	-8(%rbp), %rcx
	movslq	32(%rcx), %rdx
	callq	memset
	movl	$8, -12(%rbp)
.LBB1_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	32(%rcx), %eax
	jge	.LBB1_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB1_1 Depth=1
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	10808(%rcx), %rcx
	movb	$1, (%rcx,%rax)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$8, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB1_1
.LBB1_4:                                # %for.end
	movq	-8(%rbp), %rax
	movl	mchar_null, %ecx
	movl	%ecx, 9872(%rax)
	movw	mchar_null+4, %dx
	movw	%dx, 9876(%rax)
	movq	-8(%rbp), %rdi
	callq	ResetCharsets
	movl	nwin_default+88, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 10016(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	ResetWindow, .Lfunc_end1-ResetWindow
	.cfi_endproc

	.globl	ResetCharsets
	.align	16, 0x90
	.type	ResetCharsets,@function
ResetCharsets:                          # @ResetCharsets
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
	movabsq	$.L.str.1, %rsi
	movq	%rdi, -8(%rbp)
	movl	nwin_default+80, %eax
	movq	-8(%rbp), %rdi
	movl	%eax, 10008(%rdi)
	movl	nwin_default+84, %eax
	movq	-8(%rbp), %rdi
	movl	%eax, 10012(%rdi)
	movq	-8(%rbp), %rdi
	callq	SetCharsets
	cmpq	$0, nwin_default+104
	je	.LBB2_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	nwin_default+104, %rsi
	callq	SetCharsets
.LBB2_2:                                # %if.end
	movq	-8(%rbp), %rdi
	callq	ResetEncoding
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	ResetCharsets, .Lfunc_end2-ResetCharsets
	.cfi_endproc

	.globl	GetAnsiStatus
	.align	16, 0x90
	.type	GetAnsiStatus,@function
GetAnsiStatus:                          # @GetAnsiStatus
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	movq	-16(%rbp), %rsi
	cmpl	$0, 9856(%rsi)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB3_10
.LBB3_2:                                # %if.end
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	9856(%rax), %ecx
	movl	%ecx, %eax
	movq	state_t_string(,%rax,8), %rsi
	callq	strcpy
	movq	-32(%rbp), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	strlen
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 9536(%rax)
	je	.LBB3_6
# BB#3:                                 # %if.then.3
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movb	$45, (%rax)
	movq	-16(%rbp), %rax
	cmpl	$255, 9536(%rax)
	jle	.LBB3_5
# BB#4:                                 # %if.then.6
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	9536(%rax), %ecx
	sarl	$8, %ecx
	movl	%ecx, %esi
	callq	AddXChar
	movq	-32(%rbp), %rdi
	movslq	%eax, %rdx
	addq	%rdx, %rdi
	movq	%rdi, -32(%rbp)
.LBB3_5:                                # %if.end.10
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	9536(%rax), %ecx
	andl	$255, %ecx
	movl	%ecx, %esi
	callq	AddXChar
	movq	-32(%rbp), %rdi
	movslq	%eax, %rdx
	addq	%rdx, %rdi
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rdx
	movb	$0, (%rdx)
.LBB3_6:                                # %if.end.15
	movq	-16(%rbp), %rax
	cmpl	$2, 9856(%rax)
	je	.LBB3_8
# BB#7:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	cmpl	$3, 9856(%rax)
	jne	.LBB3_9
.LBB3_8:                                # %if.then.20
	movabsq	$.L.str, %rsi
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	9860(%rax), %ecx
	movl	%ecx, %eax
	movq	string_t_string(,%rax,8), %rdx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB3_9:                                # %if.end.24
	movq	-32(%rbp), %rdi
	callq	strlen
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdi
	subq	%rdi, %rax
	movl	%eax, %ecx
	movl	%ecx, -4(%rbp)
.LBB3_10:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	GetAnsiStatus, .Lfunc_end3-GetAnsiStatus
	.cfi_endproc

	.globl	SetCharsets
	.align	16, 0x90
	.type	SetCharsets,@function
SetCharsets:                            # @SetCharsets
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB4_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$4, -20(%rbp)
	movb	%cl, -21(%rbp)          # 1-byte Spill
	jge	.LBB4_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	setne	%dl
	movb	%dl, -21(%rbp)          # 1-byte Spill
.LBB4_3:                                # %land.end
                                        #   in Loop: Header=BB4_1 Depth=1
	movb	-21(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB4_4
	jmp	.LBB4_11
.LBB4_4:                                # %for.body
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$46, %ecx
	je	.LBB4_9
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$66, %ecx
	jne	.LBB4_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB4_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
	jmp	.LBB4_8
.LBB4_7:                                # %cond.false
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	movl	%ecx, -28(%rbp)         # 4-byte Spill
.LBB4_8:                                # %cond.end
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-28(%rbp), %eax         # 4-byte Reload
	movslq	-20(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movl	%eax, 9892(%rdx,%rcx,4)
.LBB4_9:                                # %if.end
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_10
.LBB4_10:                               # %for.inc
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	jmp	.LBB4_1
.LBB4_11:                               # %for.end
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB4_14
# BB#12:                                # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movsbl	(%rax), %edx
	cmpl	$46, %edx
	je	.LBB4_14
# BB#13:                                # %if.then.14
	movq	-16(%rbp), %rax
	movsbl	-1(%rax), %ecx
	subl	$48, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 9884(%rax)
.LBB4_14:                               # %if.end.17
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB4_17
# BB#15:                                # %land.lhs.true.20
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$46, %ecx
	je	.LBB4_17
# BB#16:                                # %if.then.24
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	subl	$48, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 9888(%rax)
.LBB4_17:                               # %if.end.27
	movq	-8(%rbp), %rax
	movl	$0, 9908(%rax)
	movq	-8(%rbp), %rax
	movslq	9884(%rax), %rax
	movq	-8(%rbp), %rcx
	movl	9892(%rcx,%rax,4), %edx
	movb	%dl, %sil
	movq	-8(%rbp), %rax
	movb	%sil, 9878(%rax)
	movq	-8(%rbp), %rax
	movslq	9888(%rax), %rax
	movq	-8(%rbp), %rcx
	movl	9892(%rcx,%rax,4), %edx
	movb	%dl, %sil
	movq	-8(%rbp), %rax
	movb	%sil, 9879(%rax)
	popq	%rbp
	retq
.Lfunc_end4:
	.size	SetCharsets, .Lfunc_end4-SetCharsets
	.cfi_endproc

	.globl	WriteString
	.align	16, 0x90
	.type	WriteString,@function
WriteString:                            # @WriteString
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
	subq	$224, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.LBB5_2
# BB#1:                                 # %if.then
	jmp	.LBB5_349
.LBB5_2:                                # %if.end
	movq	-8(%rbp), %rax
	cmpq	$0, 10824(%rax)
	je	.LBB5_4
# BB#3:                                 # %if.then.2
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	callq	WLogString
.LBB5_4:                                # %if.end.3
	movq	-8(%rbp), %rax
	movq	%rax, curr
	movq	curr, %rax
	movl	32(%rax), %ecx
	movl	%ecx, cols
	movq	curr, %rax
	movl	36(%rax), %ecx
	movl	%ecx, rows
	movq	curr, %rax
	cmpl	$0, 10844(%rax)
	je	.LBB5_6
# BB#5:                                 # %if.then.6
	movq	curr, %rax
	addq	$360, %rax              # imm = 0x168
	movq	curr, %rcx
	imull	$1000, 10840(%rcx), %esi # imm = 0x3E8
	movq	%rax, %rdi
	callq	SetTimeout
.LBB5_6:                                # %if.end.7
	movq	curr, %rax
	cmpl	$1, 10836(%rax)
	jne	.LBB5_10
# BB#7:                                 # %if.then.8
	jmp	.LBB5_8
.LBB5_8:                                # %do.body
	jmp	.LBB5_9
.LBB5_9:                                # %do.end
	movq	curr, %rax
	movl	$2, 10836(%rax)
.LBB5_10:                               # %if.end.10
	cmpl	$0, cols
	jle	.LBB5_346
# BB#11:                                # %land.lhs.true
	cmpl	$0, rows
	jle	.LBB5_346
# BB#12:                                # %if.then.13
	jmp	.LBB5_13
.LBB5_13:                               # %do.body.14
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_32 Depth 2
                                        #     Child Loop BB5_59 Depth 2
                                        #     Child Loop BB5_96 Depth 2
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -24(%rbp)
	movq	curr, %rax
	cmpl	$0, 10024(%rax)
	jne	.LBB5_15
# BB#14:                                # %if.then.16
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	curr, %rax
	movb	9878(%rax), %cl
	movq	curr, %rax
	movb	%cl, 9874(%rax)
.LBB5_15:                               # %if.end.18
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	curr, %rax
	cmpl	$0, 9856(%rax)
	jne	.LBB5_48
# BB#16:                                # %land.lhs.true.21
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	curr, %rax
	cmpl	$8, 48(%rax)
	je	.LBB5_48
# BB#17:                                # %land.lhs.true.25
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	curr, %rax
	movzbl	9874(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB5_19
# BB#18:                                # %land.lhs.true.30
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	curr, %rax
	movzbl	9874(%rax), %ecx
	andl	$96, %ecx
	cmpl	$0, %ecx
	je	.LBB5_48
.LBB5_19:                               # %land.lhs.true.36
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	curr, %rax
	movzbl	9874(%rax), %ecx
	cmpl	$73, %ecx
	je	.LBB5_48
# BB#20:                                # %land.lhs.true.42
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	curr, %rax
	cmpl	$0, 10024(%rax)
	jne	.LBB5_48
# BB#21:                                # %land.lhs.true.45
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	curr, %rax
	movzbl	9874(%rax), %ecx
	cmpl	$60, %ecx
	je	.LBB5_48
# BB#22:                                # %land.lhs.true.51
                                        #   in Loop: Header=BB5_13 Depth=1
	cmpl	$32, -24(%rbp)
	jl	.LBB5_48
# BB#23:                                # %land.lhs.true.54
                                        #   in Loop: Header=BB5_13 Depth=1
	cmpl	$127, -24(%rbp)
	je	.LBB5_48
# BB#24:                                # %land.lhs.true.57
                                        #   in Loop: Header=BB5_13 Depth=1
	movl	-24(%rbp), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	je	.LBB5_28
# BB#25:                                # %lor.lhs.false
                                        #   in Loop: Header=BB5_13 Depth=1
	cmpl	$160, -24(%rbp)
	jge	.LBB5_27
# BB#26:                                # %lor.lhs.false.63
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	curr, %rax
	cmpl	$0, 10012(%rax)
	jne	.LBB5_48
.LBB5_27:                               # %land.lhs.true.65
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	curr, %rax
	cmpl	$0, 10008(%rax)
	jne	.LBB5_48
.LBB5_28:                               # %land.lhs.true.67
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	curr, %rax
	cmpl	$0, 9908(%rax)
	jne	.LBB5_48
# BB#29:                                # %land.lhs.true.69
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	curr, %rax
	cmpl	$0, 9972(%rax)
	jne	.LBB5_48
# BB#30:                                # %land.lhs.true.71
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	curr, %rax
	movl	40(%rax), %ecx
	movl	cols, %edx
	subl	$1, %edx
	cmpl	%edx, %ecx
	jge	.LBB5_48
# BB#31:                                # %if.then.75
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	curr, %rax
	movl	40(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movq	-16(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -56(%rbp)
.LBB5_32:                               # %while.cond
                                        #   Parent Loop BB5_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %eax
	movl	cols, %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB5_43
# BB#33:                                # %while.body
                                        #   in Loop: Header=BB5_32 Depth=2
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	movl	-20(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -20(%rbp)
	cmpl	$0, %eax
	jne	.LBB5_35
# BB#34:                                # %if.then.83
                                        #   in Loop: Header=BB5_13 Depth=1
	jmp	.LBB5_43
.LBB5_35:                               # %if.end.84
                                        #   in Loop: Header=BB5_32 Depth=2
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -24(%rbp)
	cmpl	$32, -24(%rbp)
	jl	.LBB5_41
# BB#36:                                # %lor.lhs.false.89
                                        #   in Loop: Header=BB5_32 Depth=2
	cmpl	$127, -24(%rbp)
	je	.LBB5_41
# BB#37:                                # %lor.lhs.false.92
                                        #   in Loop: Header=BB5_32 Depth=2
	movl	-24(%rbp), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	je	.LBB5_42
# BB#38:                                # %land.lhs.true.95
                                        #   in Loop: Header=BB5_32 Depth=2
	cmpl	$160, -24(%rbp)
	jge	.LBB5_40
# BB#39:                                # %land.lhs.true.98
                                        #   in Loop: Header=BB5_32 Depth=2
	movq	curr, %rax
	cmpl	$0, 10012(%rax)
	jne	.LBB5_41
.LBB5_40:                               # %lor.lhs.false.101
                                        #   in Loop: Header=BB5_32 Depth=2
	movq	curr, %rax
	cmpl	$0, 10008(%rax)
	je	.LBB5_42
.LBB5_41:                               # %if.then.104
                                        #   in Loop: Header=BB5_13 Depth=1
	jmp	.LBB5_43
.LBB5_42:                               # %if.end.105
                                        #   in Loop: Header=BB5_32 Depth=2
	jmp	.LBB5_32
.LBB5_43:                               # %while.end
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	curr, %rax
	movl	40(%rax), %ecx
	movl	-44(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jle	.LBB5_45
# BB#44:                                # %if.then.111
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	curr, %rdi
	movq	-56(%rbp), %rsi
	movl	-44(%rbp), %edx
	movq	curr, %rax
	addq	$9872, %rax             # imm = 0x2690
	movq	curr, %rcx
	movl	40(%rcx), %r8d
	movq	curr, %rcx
	movl	44(%rcx), %r9d
	movq	%rax, %rcx
	callq	MPutStr
	movq	curr, %rax
	addq	$24, %rax
	movq	-56(%rbp), %rsi
	movl	-44(%rbp), %edx
	movq	curr, %rcx
	addq	$9872, %rcx             # imm = 0x2690
	movq	curr, %rdi
	movl	40(%rdi), %r8d
	movq	curr, %rdi
	movl	44(%rdi), %r9d
	movq	%rax, %rdi
	callq	LPutStr
	movl	-44(%rbp), %edx
	movq	curr, %rax
	addl	40(%rax), %edx
	movl	%edx, 40(%rax)
.LBB5_45:                               # %if.end.124
                                        #   in Loop: Header=BB5_13 Depth=1
	cmpl	$0, -20(%rbp)
	jne	.LBB5_47
# BB#46:                                # %if.then.127
	jmp	.LBB5_345
.LBB5_47:                               # %if.end.128
                                        #   in Loop: Header=BB5_13 Depth=1
	jmp	.LBB5_48
.LBB5_48:                               # %if.end.129
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	curr, %rax
	cmpl	$8, 48(%rax)
	jne	.LBB5_58
# BB#49:                                # %if.then.134
                                        #   in Loop: Header=BB5_13 Depth=1
	movl	-24(%rbp), %edi
	movq	curr, %rax
	addq	$10020, %rax            # imm = 0x2724
	movq	%rax, %rsi
	callq	FromUtf8
	movl	%eax, -24(%rbp)
	cmpl	$-1, -24(%rbp)
	jne	.LBB5_51
# BB#50:                                # %if.then.137
                                        #   in Loop: Header=BB5_13 Depth=1
	jmp	.LBB5_344
.LBB5_51:                               # %if.end.138
                                        #   in Loop: Header=BB5_13 Depth=1
	cmpl	$-2, -24(%rbp)
	jne	.LBB5_53
# BB#52:                                # %if.then.141
                                        #   in Loop: Header=BB5_13 Depth=1
	movl	$65533, -24(%rbp)       # imm = 0xFFFD
	movq	-16(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -16(%rbp)
	movl	-20(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -20(%rbp)
.LBB5_53:                               # %if.end.144
                                        #   in Loop: Header=BB5_13 Depth=1
	cmpl	$255, -24(%rbp)
	jle	.LBB5_57
# BB#54:                                # %if.then.147
                                        #   in Loop: Header=BB5_13 Depth=1
	jmp	.LBB5_55
.LBB5_55:                               # %do.body.148
                                        #   in Loop: Header=BB5_13 Depth=1
	jmp	.LBB5_56
.LBB5_56:                               # %do.end.149
                                        #   in Loop: Header=BB5_13 Depth=1
	jmp	.LBB5_57
.LBB5_57:                               # %if.end.150
                                        #   in Loop: Header=BB5_13 Depth=1
	jmp	.LBB5_58
.LBB5_58:                               # %if.end.151
                                        #   in Loop: Header=BB5_13 Depth=1
	jmp	.LBB5_59
.LBB5_59:                               # %tryagain
                                        #   Parent Loop BB5_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	curr(%rip), %rax
	movl	9856(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, %rdx
	subq	$8, %rdx
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	ja	.LBB5_168
# BB#350:                               # %tryagain
                                        #   in Loop: Header=BB5_59 Depth=2
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	.LJTI5_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB5_60:                               # %sw.bb
                                        #   in Loop: Header=BB5_13 Depth=1
	movl	-24(%rbp), %eax
	subl	$27, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jne	.LBB5_62
	jmp	.LBB5_61
.LBB5_61:                               # %sw.bb.153
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	curr, %rax
	movl	$6, 9856(%rax)
	jmp	.LBB5_63
.LBB5_62:                               # %sw.default
                                        #   in Loop: Header=BB5_13 Depth=1
	movl	-24(%rbp), %edi
	callq	PrintChar
.LBB5_63:                               # %sw.epilog
                                        #   in Loop: Header=BB5_13 Depth=1
	jmp	.LBB5_343
.LBB5_64:                               # %sw.bb.155
                                        #   in Loop: Header=BB5_13 Depth=1
	movl	-24(%rbp), %eax
	subl	$91, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jne	.LBB5_66
	jmp	.LBB5_65
.LBB5_65:                               # %sw.bb.156
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	curr, %rax
	movl	$7, 9856(%rax)
	jmp	.LBB5_67
.LBB5_66:                               # %sw.default.158
                                        #   in Loop: Header=BB5_13 Depth=1
	movl	$27, %edi
	callq	PrintChar
	movl	-24(%rbp), %edi
	callq	PrintChar
	movq	curr, %rax
	movl	$5, 9856(%rax)
.LBB5_67:                               # %sw.epilog.160
                                        #   in Loop: Header=BB5_13 Depth=1
	jmp	.LBB5_343
.LBB5_68:                               # %sw.bb.161
                                        #   in Loop: Header=BB5_13 Depth=1
	movl	-24(%rbp), %eax
	subl	$52, %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jne	.LBB5_70
	jmp	.LBB5_69
.LBB5_69:                               # %sw.bb.162
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	curr, %rax
	movl	$8, 9856(%rax)
	jmp	.LBB5_71
.LBB5_70:                               # %sw.default.164
                                        #   in Loop: Header=BB5_13 Depth=1
	movl	$27, %edi
	callq	PrintChar
	movl	$91, %edi
	callq	PrintChar
	movl	-24(%rbp), %edi
	callq	PrintChar
	movq	curr, %rax
	movl	$5, 9856(%rax)
.LBB5_71:                               # %sw.epilog.166
                                        #   in Loop: Header=BB5_13 Depth=1
	jmp	.LBB5_343
.LBB5_72:                               # %sw.bb.167
                                        #   in Loop: Header=BB5_13 Depth=1
	movl	-24(%rbp), %eax
	subl	$105, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	jne	.LBB5_77
	jmp	.LBB5_73
.LBB5_73:                               # %sw.bb.168
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	curr, %rax
	movl	$0, 9856(%rax)
	callq	PrintFlush
	movq	curr, %rax
	cmpq	$0, 176(%rax)
	je	.LBB5_76
# BB#74:                                # %land.lhs.true.171
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	curr, %rax
	movq	176(%rax), %rax
	cmpl	$0, 7408(%rax)
	jl	.LBB5_76
# BB#75:                                # %if.then.175
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	curr, %rax
	movq	176(%rax), %rax
	movl	7408(%rax), %edi
	callq	close
	movq	curr, %rcx
	movq	176(%rcx), %rcx
	movl	$-1, 7408(%rcx)
	movl	%eax, -132(%rbp)        # 4-byte Spill
.LBB5_76:                               # %if.end.181
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	curr, %rax
	movq	$0, 176(%rax)
	jmp	.LBB5_78
.LBB5_77:                               # %sw.default.183
                                        #   in Loop: Header=BB5_13 Depth=1
	movl	$27, %edi
	callq	PrintChar
	movl	$91, %edi
	callq	PrintChar
	movl	$52, %edi
	callq	PrintChar
	movl	-24(%rbp), %edi
	callq	PrintChar
	movq	curr, %rax
	movl	$5, 9856(%rax)
.LBB5_78:                               # %sw.epilog.185
                                        #   in Loop: Header=BB5_13 Depth=1
	jmp	.LBB5_343
.LBB5_79:                               # %sw.bb.186
                                        #   in Loop: Header=BB5_13 Depth=1
	cmpl	$0, -24(%rbp)
	jne	.LBB5_81
# BB#80:                                # %if.then.189
                                        #   in Loop: Header=BB5_13 Depth=1
	jmp	.LBB5_343
.LBB5_81:                               # %if.end.190
                                        #   in Loop: Header=BB5_13 Depth=1
	cmpl	$27, -24(%rbp)
	jne	.LBB5_83
# BB#82:                                # %if.then.193
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	curr, %rax
	movl	$3, 9856(%rax)
	jmp	.LBB5_343
.LBB5_83:                               # %if.end.195
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	curr, %rax
	cmpl	$2, 9860(%rax)
	jne	.LBB5_86
# BB#84:                                # %land.lhs.true.198
                                        #   in Loop: Header=BB5_13 Depth=1
	cmpl	$32, -24(%rbp)
	jge	.LBB5_86
# BB#85:                                # %land.lhs.true.201
                                        #   in Loop: Header=BB5_13 Depth=1
	cmpl	$5, -24(%rbp)
	jne	.LBB5_90
.LBB5_86:                               # %if.then.204
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	curr, %rax
	cmpl	$0, 10012(%rax)
	je	.LBB5_88
# BB#87:                                # %lor.lhs.false.207
                                        #   in Loop: Header=BB5_13 Depth=1
	cmpl	$156, -24(%rbp)
	je	.LBB5_89
.LBB5_88:                               # %if.then.210
                                        #   in Loop: Header=BB5_13 Depth=1
	movl	-24(%rbp), %edi
	callq	StringChar
	jmp	.LBB5_343
.LBB5_89:                               # %if.end.211
                                        #   in Loop: Header=BB5_13 Depth=1
	jmp	.LBB5_90
.LBB5_90:                               # %if.end.212
                                        #   in Loop: Header=BB5_13 Depth=1
	movl	$92, -24(%rbp)
.LBB5_91:                               # %sw.bb.213
                                        #   in Loop: Header=BB5_13 Depth=1
	movl	-24(%rbp), %eax
	movl	%eax, %ecx
	subl	$27, %ecx
	movl	%eax, -136(%rbp)        # 4-byte Spill
	movl	%ecx, -140(%rbp)        # 4-byte Spill
	je	.LBB5_106
	jmp	.LBB5_359
.LBB5_359:                              # %sw.bb.213
                                        #   in Loop: Header=BB5_13 Depth=1
	movl	-136(%rbp), %eax        # 4-byte Reload
	subl	$92, %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
	jne	.LBB5_107
	jmp	.LBB5_92
.LBB5_92:                               # %sw.bb.214
                                        #   in Loop: Header=BB5_13 Depth=1
	callq	StringEnd
	cmpl	$0, %eax
	je	.LBB5_94
# BB#93:                                # %lor.lhs.false.218
                                        #   in Loop: Header=BB5_13 Depth=1
	cmpl	$1, -20(%rbp)
	jg	.LBB5_95
.LBB5_94:                               # %if.then.221
                                        #   in Loop: Header=BB5_13 Depth=1
	jmp	.LBB5_108
.LBB5_95:                               # %if.end.222
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	curr, %rax
	movq	24(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB5_96:                               # %for.cond
                                        #   Parent Loop BB5_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -40(%rbp)
	je	.LBB5_101
# BB#97:                                # %for.body
                                        #   in Loop: Header=BB5_96 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, display
	movq	display, %rax
	cmpl	$1, 576(%rax)
	jne	.LBB5_99
# BB#98:                                # %if.then.227
                                        #   in Loop: Header=BB5_13 Depth=1
	jmp	.LBB5_101
.LBB5_99:                               # %if.end.228
                                        #   in Loop: Header=BB5_96 Depth=2
	jmp	.LBB5_100
.LBB5_100:                              # %for.inc
                                        #   in Loop: Header=BB5_96 Depth=2
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB5_96
.LBB5_101:                              # %for.end
                                        #   in Loop: Header=BB5_13 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB5_105
# BB#102:                               # %if.then.230
	cmpl	$4097, -20(%rbp)        # imm = 0x1001
	jle	.LBB5_104
# BB#103:                               # %if.then.233
	movl	$4097, -20(%rbp)        # imm = 0x1001
.LBB5_104:                              # %if.end.234
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movq	curr, %rcx
	movl	%eax, 8724(%rcx)
	movq	-16(%rbp), %rdi
	movq	curr, %rcx
	addq	$4628, %rcx             # imm = 0x1214
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rdx
	movq	%rcx, %rsi
	callq	bcopy
	jmp	.LBB5_349
.LBB5_105:                              # %if.end.238
                                        #   in Loop: Header=BB5_13 Depth=1
	jmp	.LBB5_108
.LBB5_106:                              # %sw.bb.239
                                        #   in Loop: Header=BB5_13 Depth=1
	movl	$27, %edi
	callq	StringChar
	jmp	.LBB5_108
.LBB5_107:                              # %sw.default.240
                                        #   in Loop: Header=BB5_13 Depth=1
	movl	$27, %edi
	movq	curr, %rax
	movl	$2, 9856(%rax)
	callq	StringChar
	movl	-24(%rbp), %edi
	callq	StringChar
.LBB5_108:                              # %sw.epilog.242
                                        #   in Loop: Header=BB5_13 Depth=1
	jmp	.LBB5_343
.LBB5_109:                              # %sw.bb.243
                                        #   in Loop: Header=BB5_59 Depth=2
	movl	-24(%rbp), %eax
	movl	%eax, %ecx
	subl	$33, %ecx
	movl	%eax, -148(%rbp)        # 4-byte Spill
	movl	%ecx, -152(%rbp)        # 4-byte Spill
	je	.LBB5_115
	jmp	.LBB5_352
.LBB5_352:                              # %sw.bb.243
                                        #   in Loop: Header=BB5_59 Depth=2
	movl	-148(%rbp), %eax        # 4-byte Reload
	subl	$34, %eax
	movl	%eax, -156(%rbp)        # 4-byte Spill
	je	.LBB5_116
	jmp	.LBB5_353
.LBB5_353:                              # %sw.bb.243
                                        #   in Loop: Header=BB5_59 Depth=2
	movl	-148(%rbp), %eax        # 4-byte Reload
	subl	$80, %eax
	movl	%eax, -160(%rbp)        # 4-byte Spill
	je	.LBB5_113
	jmp	.LBB5_354
.LBB5_354:                              # %sw.bb.243
                                        #   in Loop: Header=BB5_59 Depth=2
	movl	-148(%rbp), %eax        # 4-byte Reload
	subl	$91, %eax
	movl	%eax, -164(%rbp)        # 4-byte Spill
	je	.LBB5_110
	jmp	.LBB5_355
.LBB5_355:                              # %sw.bb.243
                                        #   in Loop: Header=BB5_59 Depth=2
	movl	-148(%rbp), %eax        # 4-byte Reload
	subl	$93, %eax
	movl	%eax, -168(%rbp)        # 4-byte Spill
	je	.LBB5_111
	jmp	.LBB5_356
.LBB5_356:                              # %sw.bb.243
                                        #   in Loop: Header=BB5_59 Depth=2
	movl	-148(%rbp), %eax        # 4-byte Reload
	subl	$94, %eax
	movl	%eax, -172(%rbp)        # 4-byte Spill
	je	.LBB5_114
	jmp	.LBB5_357
.LBB5_357:                              # %sw.bb.243
                                        #   in Loop: Header=BB5_59 Depth=2
	movl	-148(%rbp), %eax        # 4-byte Reload
	subl	$95, %eax
	movl	%eax, -176(%rbp)        # 4-byte Spill
	je	.LBB5_112
	jmp	.LBB5_358
.LBB5_358:                              # %sw.bb.243
                                        #   in Loop: Header=BB5_59 Depth=2
	movl	-148(%rbp), %eax        # 4-byte Reload
	subl	$107, %eax
	movl	%eax, -180(%rbp)        # 4-byte Spill
	je	.LBB5_116
	jmp	.LBB5_117
.LBB5_110:                              # %sw.bb.244
                                        #   in Loop: Header=BB5_13 Depth=1
	xorl	%esi, %esi
	movl	$256, %eax              # imm = 0x100
	movl	%eax, %edx
	movq	curr, %rcx
	movl	$0, 9796(%rcx)
	movq	curr, %rcx
	movl	$0, 9536(%rcx)
	movq	curr, %rcx
	addq	$9540, %rcx             # imm = 0x2544
	movq	%rcx, %rdi
	callq	memset
	movq	curr, %rcx
	movl	$4, 9856(%rcx)
	jmp	.LBB5_135
.LBB5_111:                              # %sw.bb.247
                                        #   in Loop: Header=BB5_13 Depth=1
	movl	$2, %edi
	callq	StringStart
	jmp	.LBB5_135
.LBB5_112:                              # %sw.bb.248
                                        #   in Loop: Header=BB5_13 Depth=1
	movl	$3, %edi
	callq	StringStart
	jmp	.LBB5_135
.LBB5_113:                              # %sw.bb.249
                                        #   in Loop: Header=BB5_13 Depth=1
	movl	$1, %edi
	callq	StringStart
	jmp	.LBB5_135
.LBB5_114:                              # %sw.bb.250
                                        #   in Loop: Header=BB5_13 Depth=1
	movl	$4, %edi
	callq	StringStart
	jmp	.LBB5_135
.LBB5_115:                              # %sw.bb.251
                                        #   in Loop: Header=BB5_13 Depth=1
	movl	$6, %edi
	callq	StringStart
	jmp	.LBB5_135
.LBB5_116:                              # %sw.bb.252
                                        #   in Loop: Header=BB5_13 Depth=1
	movl	$5, %edi
	callq	StringStart
	jmp	.LBB5_135
.LBB5_117:                              # %sw.default.253
                                        #   in Loop: Header=BB5_59 Depth=2
	movl	-24(%rbp), %edi
	callq	Special
	cmpl	$0, %eax
	je	.LBB5_119
# BB#118:                               # %if.then.256
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	curr, %rax
	movl	$0, 9856(%rax)
	jmp	.LBB5_135
.LBB5_119:                              # %if.end.258
                                        #   in Loop: Header=BB5_59 Depth=2
	jmp	.LBB5_120
.LBB5_120:                              # %do.body.259
                                        #   in Loop: Header=BB5_59 Depth=2
	jmp	.LBB5_121
.LBB5_121:                              # %do.end.260
                                        #   in Loop: Header=BB5_59 Depth=2
	cmpl	$32, -24(%rbp)
	jl	.LBB5_129
# BB#122:                               # %land.lhs.true.263
                                        #   in Loop: Header=BB5_59 Depth=2
	cmpl	$47, -24(%rbp)
	jg	.LBB5_129
# BB#123:                               # %if.then.266
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	curr, %rax
	cmpl	$0, 9536(%rax)
	je	.LBB5_128
# BB#124:                               # %if.then.269
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	curr, %rax
	cmpl	$36, 9536(%rax)
	jne	.LBB5_126
# BB#125:                               # %if.then.273
                                        #   in Loop: Header=BB5_13 Depth=1
	movl	-24(%rbp), %eax
	orl	$9216, %eax             # imm = 0x2400
	movl	%eax, -24(%rbp)
	jmp	.LBB5_127
.LBB5_126:                              # %if.else
                                        #   in Loop: Header=BB5_13 Depth=1
	movl	$-1, -24(%rbp)
.LBB5_127:                              # %if.end.274
                                        #   in Loop: Header=BB5_13 Depth=1
	jmp	.LBB5_128
.LBB5_128:                              # %if.end.275
                                        #   in Loop: Header=BB5_13 Depth=1
	movl	-24(%rbp), %eax
	movq	curr, %rcx
	movl	%eax, 9536(%rcx)
	jmp	.LBB5_134
.LBB5_129:                              # %if.else.277
                                        #   in Loop: Header=BB5_59 Depth=2
	cmpl	$48, -24(%rbp)
	jl	.LBB5_132
# BB#130:                               # %land.lhs.true.280
                                        #   in Loop: Header=BB5_59 Depth=2
	cmpl	$126, -24(%rbp)
	jg	.LBB5_132
# BB#131:                               # %if.then.283
                                        #   in Loop: Header=BB5_13 Depth=1
	movl	-24(%rbp), %edi
	movq	curr, %rax
	movl	9536(%rax), %esi
	callq	DoESC
	movq	curr, %rax
	movl	$0, 9856(%rax)
	jmp	.LBB5_133
.LBB5_132:                              # %if.else.286
                                        #   in Loop: Header=BB5_59 Depth=2
	movq	curr, %rax
	movl	$0, 9856(%rax)
	jmp	.LBB5_59
.LBB5_133:                              # %if.end.288
                                        #   in Loop: Header=BB5_13 Depth=1
	jmp	.LBB5_134
.LBB5_134:                              # %if.end.289
                                        #   in Loop: Header=BB5_13 Depth=1
	jmp	.LBB5_135
.LBB5_135:                              # %sw.epilog.290
                                        #   in Loop: Header=BB5_13 Depth=1
	jmp	.LBB5_343
.LBB5_136:                              # %sw.bb.291
                                        #   in Loop: Header=BB5_59 Depth=2
	movl	-24(%rbp), %eax
	movl	%eax, %ecx
	addl	$-48, %ecx
	subl	$10, %ecx
	movl	%eax, -184(%rbp)        # 4-byte Spill
	movl	%ecx, -188(%rbp)        # 4-byte Spill
	jb	.LBB5_137
	jmp	.LBB5_351
.LBB5_351:                              # %sw.bb.291
                                        #   in Loop: Header=BB5_59 Depth=2
	movl	-184(%rbp), %eax        # 4-byte Reload
	addl	$-58, %eax
	subl	$2, %eax
	movl	%eax, -192(%rbp)        # 4-byte Spill
	jb	.LBB5_143
	jmp	.LBB5_146
.LBB5_137:                              # %sw.bb.292
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	curr, %rax
	cmpl	$0, 9796(%rax)
	jl	.LBB5_142
# BB#138:                               # %land.lhs.true.296
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	curr, %rax
	cmpl	$64, 9796(%rax)
	jge	.LBB5_142
# BB#139:                               # %if.then.300
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	curr, %rax
	movslq	9796(%rax), %rax
	movq	curr, %rcx
	cmpl	$100000000, 9540(%rcx,%rax,4) # imm = 0x5F5E100
	jge	.LBB5_141
# BB#140:                               # %if.then.305
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	curr, %rax
	movslq	9796(%rax), %rax
	movq	curr, %rcx
	imull	$10, 9540(%rcx,%rax,4), %edx
	movl	-24(%rbp), %esi
	subl	$48, %esi
	addl	%esi, %edx
	movq	curr, %rax
	movslq	9796(%rax), %rax
	movq	curr, %rcx
	movl	%edx, 9540(%rcx,%rax,4)
.LBB5_141:                              # %if.end.317
                                        #   in Loop: Header=BB5_13 Depth=1
	jmp	.LBB5_142
.LBB5_142:                              # %if.end.318
                                        #   in Loop: Header=BB5_13 Depth=1
	jmp	.LBB5_166
.LBB5_143:                              # %sw.bb.319
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	curr, %rax
	cmpl	$64, 9796(%rax)
	jge	.LBB5_145
# BB#144:                               # %if.then.323
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	curr, %rax
	movl	9796(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 9796(%rax)
.LBB5_145:                              # %if.end.326
                                        #   in Loop: Header=BB5_13 Depth=1
	jmp	.LBB5_166
.LBB5_146:                              # %sw.default.327
                                        #   in Loop: Header=BB5_59 Depth=2
	movl	-24(%rbp), %edi
	callq	Special
	cmpl	$0, %eax
	je	.LBB5_148
# BB#147:                               # %if.then.330
                                        #   in Loop: Header=BB5_13 Depth=1
	jmp	.LBB5_166
.LBB5_148:                              # %if.end.331
                                        #   in Loop: Header=BB5_59 Depth=2
	cmpl	$64, -24(%rbp)
	jl	.LBB5_155
# BB#149:                               # %land.lhs.true.334
                                        #   in Loop: Header=BB5_59 Depth=2
	cmpl	$126, -24(%rbp)
	jg	.LBB5_155
# BB#150:                               # %if.then.337
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	curr, %rax
	cmpl	$64, 9796(%rax)
	jge	.LBB5_152
# BB#151:                               # %if.then.341
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	curr, %rax
	movl	9796(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 9796(%rax)
.LBB5_152:                              # %if.end.344
                                        #   in Loop: Header=BB5_13 Depth=1
	movl	-24(%rbp), %edi
	movq	curr, %rax
	movl	9536(%rax), %esi
	callq	DoCSI
	movq	curr, %rax
	cmpl	$5, 9856(%rax)
	je	.LBB5_154
# BB#153:                               # %if.then.349
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	curr, %rax
	movl	$0, 9856(%rax)
.LBB5_154:                              # %if.end.351
                                        #   in Loop: Header=BB5_13 Depth=1
	jmp	.LBB5_165
.LBB5_155:                              # %if.else.352
                                        #   in Loop: Header=BB5_59 Depth=2
	cmpl	$32, -24(%rbp)
	jl	.LBB5_157
# BB#156:                               # %land.lhs.true.355
                                        #   in Loop: Header=BB5_59 Depth=2
	cmpl	$47, -24(%rbp)
	jle	.LBB5_159
.LBB5_157:                              # %lor.lhs.false.358
                                        #   in Loop: Header=BB5_59 Depth=2
	cmpl	$60, -24(%rbp)
	jl	.LBB5_163
# BB#158:                               # %land.lhs.true.361
                                        #   in Loop: Header=BB5_59 Depth=2
	cmpl	$63, -24(%rbp)
	jg	.LBB5_163
.LBB5_159:                              # %if.then.364
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	curr, %rax
	cmpl	$0, 9536(%rax)
	je	.LBB5_161
# BB#160:                               # %cond.true
                                        #   in Loop: Header=BB5_13 Depth=1
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -196(%rbp)        # 4-byte Spill
	jmp	.LBB5_162
.LBB5_161:                              # %cond.false
                                        #   in Loop: Header=BB5_13 Depth=1
	movl	-24(%rbp), %eax
	movl	%eax, -196(%rbp)        # 4-byte Spill
.LBB5_162:                              # %cond.end
                                        #   in Loop: Header=BB5_13 Depth=1
	movl	-196(%rbp), %eax        # 4-byte Reload
	movq	curr, %rcx
	movl	%eax, 9536(%rcx)
	jmp	.LBB5_164
.LBB5_163:                              # %if.else.368
                                        #   in Loop: Header=BB5_59 Depth=2
	movq	curr, %rax
	movl	$0, 9856(%rax)
	jmp	.LBB5_59
.LBB5_164:                              # %if.end.370
                                        #   in Loop: Header=BB5_13 Depth=1
	jmp	.LBB5_165
.LBB5_165:                              # %if.end.371
                                        #   in Loop: Header=BB5_13 Depth=1
	jmp	.LBB5_166
.LBB5_166:                              # %sw.epilog.372
                                        #   in Loop: Header=BB5_13 Depth=1
	jmp	.LBB5_343
.LBB5_167:                              # %sw.bb.373
                                        #   in Loop: Header=BB5_59 Depth=2
	jmp	.LBB5_168
.LBB5_168:                              # %sw.default.374
                                        #   in Loop: Header=BB5_59 Depth=2
	movq	curr, %rax
	cmpl	$0, 10024(%rax)
	je	.LBB5_176
# BB#169:                               # %if.then.377
                                        #   in Loop: Header=BB5_59 Depth=2
	cmpl	$32, -24(%rbp)
	jle	.LBB5_174
# BB#170:                               # %lor.lhs.false.380
                                        #   in Loop: Header=BB5_59 Depth=2
	cmpl	$127, -24(%rbp)
	je	.LBB5_174
# BB#171:                               # %lor.lhs.false.383
                                        #   in Loop: Header=BB5_59 Depth=2
	cmpl	$128, -24(%rbp)
	jl	.LBB5_175
# BB#172:                               # %land.lhs.true.386
                                        #   in Loop: Header=BB5_59 Depth=2
	cmpl	$160, -24(%rbp)
	jge	.LBB5_175
# BB#173:                               # %land.lhs.true.389
                                        #   in Loop: Header=BB5_59 Depth=2
	movq	curr, %rax
	cmpl	$0, 10012(%rax)
	je	.LBB5_175
.LBB5_174:                              # %if.then.392
                                        #   in Loop: Header=BB5_59 Depth=2
	movq	curr, %rax
	movl	$0, 10024(%rax)
.LBB5_175:                              # %if.end.394
                                        #   in Loop: Header=BB5_59 Depth=2
	jmp	.LBB5_176
.LBB5_176:                              # %if.end.395
                                        #   in Loop: Header=BB5_59 Depth=2
	cmpl	$32, -24(%rbp)
	jge	.LBB5_183
# BB#177:                               # %if.then.398
                                        #   in Loop: Header=BB5_13 Depth=1
	cmpl	$27, -24(%rbp)
	jne	.LBB5_181
# BB#178:                               # %if.then.401
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	curr, %rax
	movl	$0, 9536(%rax)
	movq	curr, %rax
	movl	$1, 9856(%rax)
	movq	curr, %rax
	cmpl	$0, 9520(%rax)
	jge	.LBB5_180
# BB#179:                               # %if.then.406
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	curr, %rax
	movl	$0, 9520(%rax)
.LBB5_180:                              # %if.end.408
                                        #   in Loop: Header=BB5_13 Depth=1
	jmp	.LBB5_182
.LBB5_181:                              # %if.else.409
                                        #   in Loop: Header=BB5_13 Depth=1
	movl	-24(%rbp), %edi
	callq	Special
	movl	%eax, -200(%rbp)        # 4-byte Spill
.LBB5_182:                              # %if.end.411
                                        #   in Loop: Header=BB5_13 Depth=1
	jmp	.LBB5_343
.LBB5_183:                              # %if.end.412
                                        #   in Loop: Header=BB5_59 Depth=2
	cmpl	$128, -24(%rbp)
	jl	.LBB5_197
# BB#184:                               # %land.lhs.true.415
                                        #   in Loop: Header=BB5_59 Depth=2
	cmpl	$160, -24(%rbp)
	jge	.LBB5_197
# BB#185:                               # %land.lhs.true.418
                                        #   in Loop: Header=BB5_59 Depth=2
	movq	curr, %rax
	cmpl	$0, 10012(%rax)
	je	.LBB5_197
# BB#186:                               # %if.then.421
                                        #   in Loop: Header=BB5_59 Depth=2
	movq	curr, %rax
	movsbl	9879(%rax), %ecx
	andl	$240, %ecx
	cmpl	$32, %ecx
	jne	.LBB5_188
# BB#187:                               # %lor.lhs.false.426
                                        #   in Loop: Header=BB5_59 Depth=2
	movq	curr, %rax
	cmpl	$8, 48(%rax)
	jne	.LBB5_196
.LBB5_188:                              # %if.then.431
                                        #   in Loop: Header=BB5_13 Depth=1
	movl	-24(%rbp), %eax
	movl	%eax, %ecx
	addl	$-132, %ecx
	subl	$2, %ecx
	movl	%eax, -204(%rbp)        # 4-byte Spill
	movl	%ecx, -208(%rbp)        # 4-byte Spill
	jb	.LBB5_189
	jmp	.LBB5_360
.LBB5_360:                              # %if.then.431
                                        #   in Loop: Header=BB5_13 Depth=1
	movl	-204(%rbp), %eax        # 4-byte Reload
	subl	$136, %eax
	movl	%eax, -212(%rbp)        # 4-byte Spill
	je	.LBB5_189
	jmp	.LBB5_361
.LBB5_361:                              # %if.then.431
                                        #   in Loop: Header=BB5_13 Depth=1
	movl	-204(%rbp), %eax        # 4-byte Reload
	addl	$-141, %eax
	subl	$3, %eax
	movl	%eax, -216(%rbp)        # 4-byte Spill
	jb	.LBB5_189
	jmp	.LBB5_362
.LBB5_362:                              # %if.then.431
                                        #   in Loop: Header=BB5_13 Depth=1
	movl	-204(%rbp), %eax        # 4-byte Reload
	subl	$144, %eax
	movl	%eax, -220(%rbp)        # 4-byte Spill
	je	.LBB5_193
	jmp	.LBB5_363
.LBB5_363:                              # %if.then.431
                                        #   in Loop: Header=BB5_13 Depth=1
	movl	-204(%rbp), %eax        # 4-byte Reload
	subl	$155, %eax
	movl	%eax, -224(%rbp)        # 4-byte Spill
	je	.LBB5_190
	jmp	.LBB5_194
.LBB5_189:                              # %sw.bb.432
                                        #   in Loop: Header=BB5_13 Depth=1
	xorl	%esi, %esi
	movl	-24(%rbp), %eax
	xorl	$192, %eax
	movl	%eax, %edi
	callq	DoESC
	jmp	.LBB5_195
.LBB5_190:                              # %sw.bb.433
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	curr, %rax
	cmpl	$0, 9520(%rax)
	jge	.LBB5_192
# BB#191:                               # %if.then.437
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	curr, %rax
	movl	$0, 9520(%rax)
.LBB5_192:                              # %if.end.439
                                        #   in Loop: Header=BB5_13 Depth=1
	xorl	%esi, %esi
	movl	$256, %eax              # imm = 0x100
	movl	%eax, %edx
	movq	curr, %rcx
	movl	$0, 9796(%rcx)
	movq	curr, %rcx
	movl	$0, 9536(%rcx)
	movq	curr, %rcx
	addq	$9540, %rcx             # imm = 0x2544
	movq	%rcx, %rdi
	callq	memset
	movq	curr, %rcx
	movl	$4, 9856(%rcx)
	jmp	.LBB5_195
.LBB5_193:                              # %sw.bb.445
                                        #   in Loop: Header=BB5_13 Depth=1
	movl	$1, %edi
	callq	StringStart
	jmp	.LBB5_195
.LBB5_194:                              # %sw.default.446
                                        #   in Loop: Header=BB5_13 Depth=1
	jmp	.LBB5_195
.LBB5_195:                              # %sw.epilog.447
                                        #   in Loop: Header=BB5_13 Depth=1
	jmp	.LBB5_343
.LBB5_196:                              # %if.end.448
                                        #   in Loop: Header=BB5_59 Depth=2
	jmp	.LBB5_197
.LBB5_197:                              # %if.end.449
                                        #   in Loop: Header=BB5_59 Depth=2
	movq	curr, %rax
	cmpl	$0, 10024(%rax)
	jne	.LBB5_207
# BB#198:                               # %if.then.452
                                        #   in Loop: Header=BB5_59 Depth=2
	cmpl	$128, -24(%rbp)
	jl	.LBB5_200
# BB#199:                               # %lor.lhs.false.455
                                        #   in Loop: Header=BB5_59 Depth=2
	movq	curr, %rax
	cmpl	$0, 10008(%rax)
	jne	.LBB5_201
.LBB5_200:                              # %if.then.459
                                        #   in Loop: Header=BB5_59 Depth=2
	movq	curr, %rax
	movb	9878(%rax), %cl
	movq	curr, %rax
	movb	%cl, 9874(%rax)
	jmp	.LBB5_206
.LBB5_201:                              # %if.else.463
                                        #   in Loop: Header=BB5_59 Depth=2
	movq	curr, %rax
	cmpl	$2, 10008(%rax)
	jne	.LBB5_204
# BB#202:                               # %land.lhs.true.467
                                        #   in Loop: Header=BB5_59 Depth=2
	movq	curr, %rax
	cmpl	$0, 9908(%rax)
	jne	.LBB5_204
# BB#203:                               # %if.then.470
                                        #   in Loop: Header=BB5_59 Depth=2
	movq	curr, %rax
	movb	9880(%rax), %cl
	movq	curr, %rax
	movb	%cl, 9874(%rax)
	jmp	.LBB5_205
.LBB5_204:                              # %if.else.473
                                        #   in Loop: Header=BB5_59 Depth=2
	movq	curr, %rax
	movb	9879(%rax), %cl
	movq	curr, %rax
	movb	%cl, 9874(%rax)
.LBB5_205:                              # %if.end.477
                                        #   in Loop: Header=BB5_59 Depth=2
	jmp	.LBB5_206
.LBB5_206:                              # %if.end.478
                                        #   in Loop: Header=BB5_59 Depth=2
	jmp	.LBB5_207
.LBB5_207:                              # %if.end.479
                                        #   in Loop: Header=BB5_59 Depth=2
	movq	curr, %rax
	cmpl	$8, 48(%rax)
	jne	.LBB5_215
# BB#208:                               # %if.then.484
                                        #   in Loop: Header=BB5_59 Depth=2
	movq	curr, %rax
	movzbl	9874(%rax), %ecx
	cmpl	$48, %ecx
	jne	.LBB5_214
# BB#209:                               # %if.then.490
                                        #   in Loop: Header=BB5_59 Depth=2
	jmp	.LBB5_210
.LBB5_210:                              # %do.body.491
                                        #   in Loop: Header=BB5_59 Depth=2
	jmp	.LBB5_211
.LBB5_211:                              # %do.end.492
                                        #   in Loop: Header=BB5_59 Depth=2
	leaq	-64(%rbp), %rdi
	xorl	%esi, %esi
	movl	$8, %edx
	movl	-24(%rbp), %eax
	movb	%al, %cl
	movb	%cl, -64(%rbp)
	movb	$0, -59(%rbp)
	movb	$48, -62(%rbp)
	movb	$0, -61(%rbp)
	callq	recode_mchar
	movq	%rax, -72(%rbp)
# BB#212:                               # %do.body.496
                                        #   in Loop: Header=BB5_59 Depth=2
	jmp	.LBB5_213
.LBB5_213:                              # %do.end.497
                                        #   in Loop: Header=BB5_59 Depth=2
	movq	-72(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-72(%rbp), %rax
	movzbl	2(%rax), %edx
	shll	$8, %edx
	orl	%edx, %ecx
	movl	%ecx, -24(%rbp)
.LBB5_214:                              # %if.end.503
                                        #   in Loop: Header=BB5_59 Depth=2
	movq	curr, %rax
	movb	$0, 9874(%rax)
.LBB5_215:                              # %if.end.506
                                        #   in Loop: Header=BB5_59 Depth=2
	movq	curr, %rax
	cmpl	$8, 48(%rax)
	jne	.LBB5_218
# BB#216:                               # %land.lhs.true.511
                                        #   in Loop: Header=BB5_59 Depth=2
	movl	-24(%rbp), %edi
	callq	utf8_isdouble
	cmpl	$0, %eax
	je	.LBB5_218
# BB#217:                               # %if.then.514
                                        #   in Loop: Header=BB5_59 Depth=2
	movq	curr, %rax
	movl	$255, 10024(%rax)
.LBB5_218:                              # %if.end.516
                                        #   in Loop: Header=BB5_59 Depth=2
	movq	curr, %rax
	cmpl	$8, 48(%rax)
	jne	.LBB5_240
# BB#219:                               # %land.lhs.true.521
                                        #   in Loop: Header=BB5_59 Depth=2
	cmpl	$768, -24(%rbp)         # imm = 0x300
	jl	.LBB5_240
# BB#220:                               # %land.lhs.true.524
                                        #   in Loop: Header=BB5_59 Depth=2
	movl	-24(%rbp), %edi
	callq	utf8_iscomb
	cmpl	$0, %eax
	je	.LBB5_240
# BB#221:                               # %if.then.527
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	curr, %rax
	movl	40(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, -76(%rbp)
	movq	curr, %rax
	movl	44(%rax), %ecx
	movl	%ecx, -80(%rbp)
	cmpl	$0, -76(%rbp)
	jge	.LBB5_223
# BB#222:                               # %if.then.535
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	curr, %rax
	movl	32(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, -76(%rbp)
	movl	-80(%rbp), %ecx
	addl	$-1, %ecx
	movl	%ecx, -80(%rbp)
.LBB5_223:                              # %if.end.540
                                        #   in Loop: Header=BB5_13 Depth=1
	cmpl	$0, -80(%rbp)
	jge	.LBB5_225
# BB#224:                               # %if.then.543
                                        #   in Loop: Header=BB5_13 Depth=1
	movl	$0, -80(%rbp)
.LBB5_225:                              # %if.end.544
                                        #   in Loop: Header=BB5_13 Depth=1
	jmp	.LBB5_226
.LBB5_226:                              # %do.body.545
                                        #   in Loop: Header=BB5_13 Depth=1
	movslq	-76(%rbp), %rax
	movslq	-80(%rbp), %rcx
	movq	curr, %rdx
	imulq	$40, %rcx, %rcx
	addq	9864(%rdx), %rcx
	movq	(%rcx), %rcx
	movb	(%rcx,%rax), %sil
	movb	%sil, -88(%rbp)
	movslq	-76(%rbp), %rax
	movslq	-80(%rbp), %rcx
	movq	curr, %rdx
	imulq	$40, %rcx, %rcx
	addq	9864(%rdx), %rcx
	movq	8(%rcx), %rcx
	movb	(%rcx,%rax), %sil
	movb	%sil, -87(%rbp)
	movslq	-76(%rbp), %rax
	movslq	-80(%rbp), %rcx
	movq	curr, %rdx
	imulq	$40, %rcx, %rcx
	addq	9864(%rdx), %rcx
	movq	16(%rcx), %rcx
	movb	(%rcx,%rax), %sil
	movb	%sil, -86(%rbp)
	movslq	-76(%rbp), %rax
	movslq	-80(%rbp), %rcx
	movq	curr, %rdx
	imulq	$40, %rcx, %rcx
	addq	9864(%rdx), %rcx
	movq	24(%rcx), %rcx
	movb	(%rcx,%rax), %sil
	movb	%sil, -85(%rbp)
	movslq	-76(%rbp), %rax
	movslq	-80(%rbp), %rcx
	movq	curr, %rdx
	imulq	$40, %rcx, %rcx
	addq	9864(%rdx), %rcx
	movq	32(%rcx), %rcx
	movb	(%rcx,%rax), %sil
	movb	%sil, -84(%rbp)
	movb	$0, -83(%rbp)
# BB#227:                               # %do.end.579
                                        #   in Loop: Header=BB5_13 Depth=1
	movzbl	-88(%rbp), %eax
	cmpl	$255, %eax
	jne	.LBB5_235
# BB#228:                               # %land.lhs.true.584
                                        #   in Loop: Header=BB5_13 Depth=1
	movzbl	-86(%rbp), %eax
	cmpl	$255, %eax
	jne	.LBB5_235
# BB#229:                               # %land.lhs.true.589
                                        #   in Loop: Header=BB5_13 Depth=1
	movzbl	-85(%rbp), %eax
	cmpl	$0, %eax
	jne	.LBB5_235
# BB#230:                               # %if.then.594
                                        #   in Loop: Header=BB5_13 Depth=1
	movl	-76(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -76(%rbp)
	cmpl	$0, -76(%rbp)
	jl	.LBB5_234
# BB#231:                               # %if.then.598
                                        #   in Loop: Header=BB5_13 Depth=1
	jmp	.LBB5_232
.LBB5_232:                              # %do.body.599
                                        #   in Loop: Header=BB5_13 Depth=1
	movslq	-76(%rbp), %rax
	movslq	-80(%rbp), %rcx
	movq	curr, %rdx
	imulq	$40, %rcx, %rcx
	addq	9864(%rdx), %rcx
	movq	(%rcx), %rcx
	movb	(%rcx,%rax), %sil
	movb	%sil, -88(%rbp)
	movslq	-76(%rbp), %rax
	movslq	-80(%rbp), %rcx
	movq	curr, %rdx
	imulq	$40, %rcx, %rcx
	addq	9864(%rdx), %rcx
	movq	8(%rcx), %rcx
	movb	(%rcx,%rax), %sil
	movb	%sil, -87(%rbp)
	movslq	-76(%rbp), %rax
	movslq	-80(%rbp), %rcx
	movq	curr, %rdx
	imulq	$40, %rcx, %rcx
	addq	9864(%rdx), %rcx
	movq	16(%rcx), %rcx
	movb	(%rcx,%rax), %sil
	movb	%sil, -86(%rbp)
	movslq	-76(%rbp), %rax
	movslq	-80(%rbp), %rcx
	movq	curr, %rdx
	imulq	$40, %rcx, %rcx
	addq	9864(%rdx), %rcx
	movq	24(%rcx), %rcx
	movb	(%rcx,%rax), %sil
	movb	%sil, -85(%rbp)
	movslq	-76(%rbp), %rax
	movslq	-80(%rbp), %rcx
	movq	curr, %rdx
	imulq	$40, %rcx, %rcx
	addq	9864(%rdx), %rcx
	movq	32(%rcx), %rcx
	movb	(%rcx,%rax), %sil
	movb	%sil, -84(%rbp)
	movb	$0, -83(%rbp)
# BB#233:                               # %do.end.636
                                        #   in Loop: Header=BB5_13 Depth=1
	movb	$-1, -83(%rbp)
.LBB5_234:                              # %if.end.638
                                        #   in Loop: Header=BB5_13 Depth=1
	jmp	.LBB5_235
.LBB5_235:                              # %if.end.639
                                        #   in Loop: Header=BB5_13 Depth=1
	cmpl	$0, -76(%rbp)
	jl	.LBB5_239
# BB#236:                               # %if.then.642
                                        #   in Loop: Header=BB5_13 Depth=1
	leaq	-88(%rbp), %rsi
	movl	-24(%rbp), %edi
	callq	utf8_handle_comb
	leaq	-88(%rbp), %rdx
	movq	curr, %rdi
	movl	-80(%rbp), %esi
	callq	MFixLine
# BB#237:                               # %do.body.643
                                        #   in Loop: Header=BB5_13 Depth=1
	movb	-88(%rbp), %al
	movslq	-76(%rbp), %rcx
	movslq	-80(%rbp), %rdx
	movq	curr, %rsi
	imulq	$40, %rdx, %rdx
	addq	9864(%rsi), %rdx
	movq	(%rdx), %rdx
	movb	%al, (%rdx,%rcx)
	movb	-87(%rbp), %al
	movslq	-76(%rbp), %rcx
	movslq	-80(%rbp), %rdx
	movq	curr, %rsi
	imulq	$40, %rdx, %rdx
	addq	9864(%rsi), %rdx
	movq	8(%rdx), %rdx
	movb	%al, (%rdx,%rcx)
	movb	-86(%rbp), %al
	movslq	-76(%rbp), %rcx
	movslq	-80(%rbp), %rdx
	movq	curr, %rsi
	imulq	$40, %rdx, %rdx
	addq	9864(%rsi), %rdx
	movq	16(%rdx), %rdx
	movb	%al, (%rdx,%rcx)
	movb	-85(%rbp), %al
	movslq	-76(%rbp), %rcx
	movslq	-80(%rbp), %rdx
	movq	curr, %rsi
	imulq	$40, %rdx, %rdx
	addq	9864(%rsi), %rdx
	movq	24(%rdx), %rdx
	movb	%al, (%rdx,%rcx)
	movb	-84(%rbp), %al
	movslq	-76(%rbp), %rcx
	movslq	-80(%rbp), %rdx
	movq	curr, %rsi
	imulq	$40, %rdx, %rdx
	addq	9864(%rsi), %rdx
	movq	32(%rdx), %rdx
	movb	%al, (%rdx,%rcx)
# BB#238:                               # %do.end.679
                                        #   in Loop: Header=BB5_13 Depth=1
	leaq	-88(%rbp), %rsi
	movq	curr, %rax
	addq	$24, %rax
	movl	-76(%rbp), %edx
	movl	-80(%rbp), %ecx
	movq	%rax, %rdi
	callq	LPutChar
	movq	curr, %rax
	addq	$24, %rax
	movq	curr, %rsi
	movl	40(%rsi), %esi
	movq	curr, %rdi
	movl	44(%rdi), %edx
	movq	%rax, %rdi
	callq	LGotoPos
.LBB5_239:                              # %if.end.686
                                        #   in Loop: Header=BB5_13 Depth=1
	jmp	.LBB5_343
.LBB5_240:                              # %if.end.687
                                        #   in Loop: Header=BB5_59 Depth=2
	movq	curr, %rax
	movzbl	9874(%rax), %ecx
	movl	%ecx, -28(%rbp)
	cmpl	$73, -28(%rbp)
	jne	.LBB5_253
# BB#241:                               # %land.lhs.true.693
                                        #   in Loop: Header=BB5_59 Depth=2
	movq	curr, %rax
	cmpl	$2, 48(%rax)
	jne	.LBB5_253
# BB#242:                               # %land.lhs.true.698
                                        #   in Loop: Header=BB5_59 Depth=2
	movq	curr, %rax
	cmpl	$0, 10024(%rax)
	jne	.LBB5_253
# BB#243:                               # %if.then.702
                                        #   in Loop: Header=BB5_59 Depth=2
	jmp	.LBB5_244
.LBB5_244:                              # %do.body.703
                                        #   in Loop: Header=BB5_59 Depth=2
	jmp	.LBB5_245
.LBB5_245:                              # %do.end.704
                                        #   in Loop: Header=BB5_59 Depth=2
	movl	$129, %eax
	cmpl	-24(%rbp), %eax
	jg	.LBB5_247
# BB#246:                               # %land.lhs.true.707
                                        #   in Loop: Header=BB5_59 Depth=2
	cmpl	$159, -24(%rbp)
	jle	.LBB5_249
.LBB5_247:                              # %lor.lhs.false.710
                                        #   in Loop: Header=BB5_59 Depth=2
	movl	$224, %eax
	cmpl	-24(%rbp), %eax
	jg	.LBB5_252
# BB#248:                               # %land.lhs.true.713
                                        #   in Loop: Header=BB5_59 Depth=2
	cmpl	$239, -24(%rbp)
	jg	.LBB5_252
.LBB5_249:                              # %if.then.716
                                        #   in Loop: Header=BB5_13 Depth=1
	jmp	.LBB5_250
.LBB5_250:                              # %do.body.717
                                        #   in Loop: Header=BB5_13 Depth=1
	jmp	.LBB5_251
.LBB5_251:                              # %do.end.718
                                        #   in Loop: Header=BB5_13 Depth=1
	movl	-24(%rbp), %eax
	movq	curr, %rcx
	movl	%eax, 10024(%rcx)
	jmp	.LBB5_343
.LBB5_252:                              # %if.end.720
                                        #   in Loop: Header=BB5_59 Depth=2
	jmp	.LBB5_253
.LBB5_253:                              # %if.end.721
                                        #   in Loop: Header=BB5_59 Depth=2
	cmpl	$25, -28(%rbp)
	jne	.LBB5_257
# BB#254:                               # %land.lhs.true.724
                                        #   in Loop: Header=BB5_59 Depth=2
	cmpl	$128, -24(%rbp)
	jne	.LBB5_257
# BB#255:                               # %land.lhs.true.727
                                        #   in Loop: Header=BB5_59 Depth=2
	movq	curr, %rax
	cmpl	$0, 10024(%rax)
	jne	.LBB5_257
# BB#256:                               # %if.then.730
                                        #   in Loop: Header=BB5_59 Depth=2
	movq	curr, %rax
	movb	$0, 9874(%rax)
	movl	$0, -28(%rbp)
.LBB5_257:                              # %if.end.733
                                        #   in Loop: Header=BB5_59 Depth=2
	cmpl	$0, -28(%rbp)
	je	.LBB5_261
# BB#258:                               # %land.lhs.true.735
                                        #   in Loop: Header=BB5_59 Depth=2
	movl	-28(%rbp), %eax
	andl	$96, %eax
	cmpl	$0, %eax
	jne	.LBB5_261
# BB#259:                               # %land.lhs.true.739
                                        #   in Loop: Header=BB5_59 Depth=2
	cmpl	$32, -24(%rbp)
	jne	.LBB5_261
# BB#260:                               # %if.then.742
                                        #   in Loop: Header=BB5_59 Depth=2
	movq	curr, %rax
	movb	$0, 9874(%rax)
	movl	$0, -28(%rbp)
.LBB5_261:                              # %if.end.745
                                        #   in Loop: Header=BB5_59 Depth=2
	cmpl	$0, -28(%rbp)
	je	.LBB5_263
# BB#262:                               # %land.lhs.true.747
                                        #   in Loop: Header=BB5_59 Depth=2
	movl	-28(%rbp), %eax
	andl	$96, %eax
	cmpl	$0, %eax
	je	.LBB5_264
.LBB5_263:                              # %lor.lhs.false.751
                                        #   in Loop: Header=BB5_59 Depth=2
	movq	curr, %rax
	cmpl	$0, 10024(%rax)
	je	.LBB5_303
.LBB5_264:                              # %if.then.754
                                        #   in Loop: Header=BB5_59 Depth=2
	movl	-24(%rbp), %eax
	movl	%eax, -92(%rbp)
	movq	curr, %rcx
	cmpl	$0, 10024(%rcx)
	jne	.LBB5_266
# BB#265:                               # %if.then.758
                                        #   in Loop: Header=BB5_13 Depth=1
	movl	-24(%rbp), %eax
	movq	curr, %rcx
	movl	%eax, 10024(%rcx)
	jmp	.LBB5_343
.LBB5_266:                              # %if.end.760
                                        #   in Loop: Header=BB5_59 Depth=2
	movq	curr, %rax
	movl	40(%rax), %ecx
	movl	cols, %edx
	subl	$1, %edx
	cmpl	%edx, %ecx
	jne	.LBB5_270
# BB#267:                               # %if.then.766
                                        #   in Loop: Header=BB5_59 Depth=2
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	$1, %ecx
	movq	curr, %rdx
	cmpl	$0, 9964(%rdx)
	cmovnel	%ecx, %eax
	movq	curr, %rdx
	addl	40(%rdx), %eax
	movl	%eax, 40(%rdx)
# BB#268:                               # %do.body.772
                                        #   in Loop: Header=BB5_59 Depth=2
	jmp	.LBB5_269
.LBB5_269:                              # %do.end.773
                                        #   in Loop: Header=BB5_59 Depth=2
	jmp	.LBB5_270
.LBB5_270:                              # %if.end.774
                                        #   in Loop: Header=BB5_59 Depth=2
	movq	curr, %rax
	cmpl	$8, 48(%rax)
	je	.LBB5_302
# BB#271:                               # %if.then.779
                                        #   in Loop: Header=BB5_59 Depth=2
	movq	curr, %rax
	movl	10024(%rax), %ecx
	movl	%ecx, -24(%rbp)
	cmpl	$73, -28(%rbp)
	jne	.LBB5_292
# BB#272:                               # %land.lhs.true.783
                                        #   in Loop: Header=BB5_59 Depth=2
	movq	curr, %rax
	cmpl	$2, 48(%rax)
	jne	.LBB5_292
# BB#273:                               # %if.then.788
                                        #   in Loop: Header=BB5_59 Depth=2
	jmp	.LBB5_274
.LBB5_274:                              # %do.body.789
                                        #   in Loop: Header=BB5_59 Depth=2
	jmp	.LBB5_275
.LBB5_275:                              # %do.end.790
                                        #   in Loop: Header=BB5_59 Depth=2
	movl	$64, %eax
	cmpl	-92(%rbp), %eax
	jg	.LBB5_288
# BB#276:                               # %land.lhs.true.793
                                        #   in Loop: Header=BB5_59 Depth=2
	cmpl	$252, -92(%rbp)
	jg	.LBB5_288
# BB#277:                               # %land.lhs.true.796
                                        #   in Loop: Header=BB5_59 Depth=2
	cmpl	$127, -92(%rbp)
	je	.LBB5_288
# BB#278:                               # %if.then.799
                                        #   in Loop: Header=BB5_59 Depth=2
	cmpl	$159, -24(%rbp)
	jg	.LBB5_280
# BB#279:                               # %if.then.802
                                        #   in Loop: Header=BB5_59 Depth=2
	movl	-24(%rbp), %eax
	subl	$129, %eax
	shll	$1, %eax
	addl	$33, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB5_281
.LBB5_280:                              # %if.else.806
                                        #   in Loop: Header=BB5_59 Depth=2
	movl	-24(%rbp), %eax
	subl	$193, %eax
	shll	$1, %eax
	addl	$33, %eax
	movl	%eax, -24(%rbp)
.LBB5_281:                              # %if.end.810
                                        #   in Loop: Header=BB5_59 Depth=2
	cmpl	$126, -92(%rbp)
	jg	.LBB5_283
# BB#282:                               # %if.then.813
                                        #   in Loop: Header=BB5_59 Depth=2
	movl	-92(%rbp), %eax
	subl	$31, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB5_287
.LBB5_283:                              # %if.else.815
                                        #   in Loop: Header=BB5_59 Depth=2
	cmpl	$158, -92(%rbp)
	jg	.LBB5_285
# BB#284:                               # %if.then.818
                                        #   in Loop: Header=BB5_59 Depth=2
	movl	-92(%rbp), %eax
	subl	$32, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB5_286
.LBB5_285:                              # %if.else.820
                                        #   in Loop: Header=BB5_59 Depth=2
	movl	-92(%rbp), %eax
	subl	$126, %eax
	movl	%eax, -92(%rbp)
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
.LBB5_286:                              # %if.end.823
                                        #   in Loop: Header=BB5_59 Depth=2
	jmp	.LBB5_287
.LBB5_287:                              # %if.end.824
                                        #   in Loop: Header=BB5_59 Depth=2
	movq	curr, %rax
	movb	$2, 9874(%rax)
	jmp	.LBB5_289
.LBB5_288:                              # %if.else.827
                                        #   in Loop: Header=BB5_59 Depth=2
	movl	-92(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	$0, -92(%rbp)
.LBB5_289:                              # %if.end.828
                                        #   in Loop: Header=BB5_59 Depth=2
	jmp	.LBB5_290
.LBB5_290:                              # %do.body.829
                                        #   in Loop: Header=BB5_59 Depth=2
	jmp	.LBB5_291
.LBB5_291:                              # %do.end.830
                                        #   in Loop: Header=BB5_59 Depth=2
	jmp	.LBB5_292
.LBB5_292:                              # %if.end.831
                                        #   in Loop: Header=BB5_59 Depth=2
	cmpl	$0, -92(%rbp)
	je	.LBB5_299
# BB#293:                               # %land.lhs.true.833
                                        #   in Loop: Header=BB5_59 Depth=2
	movq	curr, %rax
	cmpl	$0, 10008(%rax)
	je	.LBB5_299
# BB#294:                               # %land.lhs.true.836
                                        #   in Loop: Header=BB5_59 Depth=2
	cmpl	$24, -28(%rbp)
	je	.LBB5_299
# BB#295:                               # %land.lhs.true.839
                                        #   in Loop: Header=BB5_59 Depth=2
	cmpl	$25, -28(%rbp)
	je	.LBB5_299
# BB#296:                               # %if.then.842
                                        #   in Loop: Header=BB5_59 Depth=2
	movl	-92(%rbp), %eax
	andl	$127, %eax
	movl	%eax, -92(%rbp)
	cmpl	$32, -92(%rbp)
	jge	.LBB5_298
# BB#297:                               # %if.then.846
                                        #   in Loop: Header=BB5_59 Depth=2
	jmp	.LBB5_59
.LBB5_298:                              # %if.end.847
                                        #   in Loop: Header=BB5_59 Depth=2
	jmp	.LBB5_299
.LBB5_299:                              # %if.end.848
                                        #   in Loop: Header=BB5_59 Depth=2
	cmpl	$127, -92(%rbp)
	jne	.LBB5_301
# BB#300:                               # %if.then.851
                                        #   in Loop: Header=BB5_13 Depth=1
	jmp	.LBB5_343
.LBB5_301:                              # %if.end.852
                                        #   in Loop: Header=BB5_59 Depth=2
	movl	-92(%rbp), %eax
	movq	curr, %rcx
	movl	%eax, 10024(%rcx)
.LBB5_302:                              # %if.end.854
                                        #   in Loop: Header=BB5_59 Depth=2
	jmp	.LBB5_303
.LBB5_303:                              # %if.end.855
                                        #   in Loop: Header=BB5_59 Depth=2
	cmpl	$60, -28(%rbp)
	jne	.LBB5_306
# BB#304:                               # %land.lhs.true.858
                                        #   in Loop: Header=BB5_59 Depth=2
	cmpl	$32, -24(%rbp)
	jl	.LBB5_306
# BB#305:                               # %if.then.861
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	curr, %rax
	movb	$0, 9874(%rax)
	movl	$0, -28(%rbp)
	movl	-24(%rbp), %ecx
	orl	$128, %ecx
	movl	%ecx, -24(%rbp)
	jmp	.LBB5_318
.LBB5_306:                              # %if.else.865
                                        #   in Loop: Header=BB5_59 Depth=2
	movq	curr, %rax
	cmpl	$0, 10008(%rax)
	je	.LBB5_317
# BB#307:                               # %land.lhs.true.868
                                        #   in Loop: Header=BB5_59 Depth=2
	movq	curr, %rax
	cmpl	$8, 48(%rax)
	je	.LBB5_317
# BB#308:                               # %if.then.873
                                        #   in Loop: Header=BB5_59 Depth=2
	cmpl	$128, -24(%rbp)
	jne	.LBB5_312
# BB#309:                               # %land.lhs.true.876
                                        #   in Loop: Header=BB5_59 Depth=2
	cmpl	$0, -28(%rbp)
	jne	.LBB5_312
# BB#310:                               # %land.lhs.true.879
                                        #   in Loop: Header=BB5_59 Depth=2
	movq	curr, %rax
	cmpl	$20, 48(%rax)
	jne	.LBB5_312
# BB#311:                               # %if.then.884
                                        #   in Loop: Header=BB5_59 Depth=2
	movl	$164, -24(%rbp)
	jmp	.LBB5_313
.LBB5_312:                              # %if.else.885
                                        #   in Loop: Header=BB5_59 Depth=2
	movl	-24(%rbp), %eax
	andl	$127, %eax
	movl	%eax, -24(%rbp)
.LBB5_313:                              # %if.end.887
                                        #   in Loop: Header=BB5_59 Depth=2
	cmpl	$32, -24(%rbp)
	jge	.LBB5_316
# BB#314:                               # %land.lhs.true.890
                                        #   in Loop: Header=BB5_59 Depth=2
	cmpl	$25, -28(%rbp)
	je	.LBB5_316
# BB#315:                               # %if.then.893
                                        #   in Loop: Header=BB5_59 Depth=2
	jmp	.LBB5_59
.LBB5_316:                              # %if.end.894
                                        #   in Loop: Header=BB5_13 Depth=1
	jmp	.LBB5_317
.LBB5_317:                              # %if.end.895
                                        #   in Loop: Header=BB5_13 Depth=1
	jmp	.LBB5_318
.LBB5_318:                              # %if.end.896
                                        #   in Loop: Header=BB5_13 Depth=1
	cmpl	$127, -24(%rbp)
	jne	.LBB5_320
# BB#319:                               # %if.then.899
                                        #   in Loop: Header=BB5_13 Depth=1
	jmp	.LBB5_343
.LBB5_320:                              # %if.end.900
                                        #   in Loop: Header=BB5_13 Depth=1
	movl	-24(%rbp), %eax
	movb	%al, %cl
	movq	curr, %rdx
	movb	%cl, 9872(%rdx)
	movq	curr, %rdx
	cmpl	$8, 48(%rdx)
	jne	.LBB5_322
# BB#321:                               # %if.then.908
                                        #   in Loop: Header=BB5_13 Depth=1
	movl	-24(%rbp), %eax
	sarl	$8, %eax
	movb	%al, %cl
	movq	curr, %rdx
	movb	%cl, 9874(%rdx)
	movl	-24(%rbp), %eax
	sarl	$16, %eax
	movb	%al, %cl
	movq	curr, %rdx
	movb	%cl, 9875(%rdx)
.LBB5_322:                              # %if.end.916
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	curr, %rax
	movl	10024(%rax), %ecx
	movb	%cl, %dl
	movq	curr, %rax
	movb	%dl, 9877(%rax)
	movq	curr, %rax
	movl	40(%rax), %ecx
	movl	cols, %esi
	subl	$1, %esi
	cmpl	%esi, %ecx
	jge	.LBB5_329
# BB#323:                               # %if.then.926
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	curr, %rax
	cmpl	$0, 9972(%rax)
	je	.LBB5_327
# BB#324:                               # %if.then.929
                                        #   in Loop: Header=BB5_13 Depth=1
	jmp	.LBB5_325
.LBB5_325:                              # %do.body.930
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	curr, %rax
	movslq	44(%rax), %rax
	movq	curr, %rcx
	imulq	$40, %rax, %rax
	addq	9864(%rcx), %rax
	movq	(%rax), %rdi
	movq	mline_old, %rsi
	movslq	cols, %rdx
	callq	bcopy
	movq	curr, %rax
	movslq	44(%rax), %rax
	movq	curr, %rcx
	imulq	$40, %rax, %rax
	addq	9864(%rcx), %rax
	movq	8(%rax), %rdi
	movq	mline_old+8, %rsi
	movslq	cols, %rdx
	callq	bcopy
	movq	curr, %rax
	movslq	44(%rax), %rax
	movq	curr, %rcx
	imulq	$40, %rax, %rax
	addq	9864(%rcx), %rax
	movq	16(%rax), %rdi
	movq	mline_old+16, %rsi
	movslq	cols, %rdx
	callq	bcopy
	movq	curr, %rax
	movslq	44(%rax), %rax
	movq	curr, %rcx
	imulq	$40, %rax, %rax
	addq	9864(%rcx), %rax
	movq	24(%rax), %rdi
	movq	mline_old+24, %rsi
	movslq	cols, %rdx
	callq	bcopy
	movq	curr, %rax
	movslq	44(%rax), %rax
	movq	curr, %rcx
	imulq	$40, %rax, %rax
	addq	9864(%rcx), %rax
	movq	32(%rax), %rdi
	movq	mline_old+32, %rsi
	movslq	cols, %rdx
	callq	bcopy
# BB#326:                               # %do.end.966
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	curr, %rdi
	movq	curr, %rax
	addq	$9872, %rax             # imm = 0x2690
	movq	curr, %rcx
	movl	40(%rcx), %edx
	movq	curr, %rcx
	movl	44(%rcx), %ecx
	movq	%rax, %rsi
	callq	MInsChar
	movabsq	$mline_old, %r8
	movq	curr, %rax
	addq	$24, %rax
	movq	curr, %rsi
	addq	$9872, %rsi             # imm = 0x2690
	movq	curr, %rdi
	movl	40(%rdi), %edx
	movq	curr, %rdi
	movl	44(%rdi), %ecx
	movq	%rax, %rdi
	callq	LInsChar
	movq	curr, %rax
	movl	40(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 40(%rax)
	jmp	.LBB5_328
.LBB5_327:                              # %if.else.981
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	curr, %rdi
	movq	curr, %rax
	addq	$9872, %rax             # imm = 0x2690
	movq	curr, %rcx
	movl	40(%rcx), %edx
	movq	curr, %rcx
	movl	44(%rcx), %ecx
	movq	%rax, %rsi
	callq	MPutChar
	movq	curr, %rax
	addq	$24, %rax
	movq	curr, %rsi
	addq	$9872, %rsi             # imm = 0x2690
	movq	curr, %rdi
	movl	40(%rdi), %edx
	movq	curr, %rdi
	movl	44(%rdi), %ecx
	movq	%rax, %rdi
	callq	LPutChar
	movq	curr, %rax
	movl	40(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 40(%rax)
.LBB5_328:                              # %if.end.996
                                        #   in Loop: Header=BB5_13 Depth=1
	jmp	.LBB5_338
.LBB5_329:                              # %if.else.997
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	curr, %rax
	movl	40(%rax), %ecx
	movl	cols, %edx
	subl	$1, %edx
	cmpl	%edx, %ecx
	jne	.LBB5_333
# BB#330:                               # %if.then.1003
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	curr, %rdi
	movq	curr, %rax
	addq	$9872, %rax             # imm = 0x2690
	movq	curr, %rcx
	movl	40(%rcx), %edx
	movq	curr, %rcx
	movl	44(%rcx), %ecx
	movq	%rax, %rsi
	callq	MPutChar
	movq	curr, %rax
	addq	$24, %rax
	movq	curr, %rsi
	addq	$9872, %rsi             # imm = 0x2690
	movq	curr, %rdi
	movl	40(%rdi), %edx
	movq	curr, %rdi
	movl	44(%rdi), %ecx
	movq	%rax, %rdi
	callq	LPutChar
	movq	curr, %rax
	cmpl	$0, 9964(%rax)
	je	.LBB5_332
# BB#331:                               # %if.then.1017
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	curr, %rax
	movl	40(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 40(%rax)
.LBB5_332:                              # %if.end.1021
                                        #   in Loop: Header=BB5_13 Depth=1
	jmp	.LBB5_337
.LBB5_333:                              # %if.else.1022
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	curr, %rdi
	movq	curr, %rax
	addq	$9872, %rax             # imm = 0x2690
	movq	curr, %rcx
	movl	44(%rcx), %edx
	movq	curr, %rcx
	movl	9956(%rcx), %ecx
	movq	curr, %rsi
	movl	9960(%rsi), %r8d
	movq	curr, %rsi
	movl	9972(%rsi), %r9d
	movq	%rax, %rsi
	callq	MWrapChar
	movq	curr, %rax
	addq	$24, %rax
	movq	curr, %rsi
	addq	$9872, %rsi             # imm = 0x2690
	movq	curr, %rdi
	movl	44(%rdi), %edx
	movq	curr, %rdi
	movl	9956(%rdi), %ecx
	movq	curr, %rdi
	movl	9960(%rdi), %r8d
	movq	curr, %rdi
	movl	9972(%rdi), %r9d
	movq	%rax, %rdi
	callq	LWrapChar
	movq	curr, %rax
	movl	44(%rax), %ecx
	movq	curr, %rax
	cmpl	9960(%rax), %ecx
	je	.LBB5_336
# BB#334:                               # %land.lhs.true.1039
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	curr, %rax
	movl	44(%rax), %ecx
	movq	curr, %rax
	movl	36(%rax), %edx
	subl	$1, %edx
	cmpl	%edx, %ecx
	je	.LBB5_336
# BB#335:                               # %if.then.1047
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	curr, %rax
	movl	44(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 44(%rax)
.LBB5_336:                              # %if.end.1051
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	curr, %rax
	movl	$1, 40(%rax)
.LBB5_337:                              # %if.end.1054
                                        #   in Loop: Header=BB5_13 Depth=1
	jmp	.LBB5_338
.LBB5_338:                              # %if.end.1055
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	curr, %rax
	cmpl	$0, 10024(%rax)
	je	.LBB5_340
# BB#339:                               # %if.then.1058
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	curr, %rax
	movl	$0, 10024(%rax)
	movq	curr, %rax
	movb	$0, 9877(%rax)
	movq	curr, %rax
	movl	40(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 40(%rax)
.LBB5_340:                              # %if.end.1065
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	curr, %rax
	cmpl	$0, 9908(%rax)
	je	.LBB5_342
# BB#341:                               # %if.then.1068
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	curr, %rax
	movslq	9884(%rax), %rax
	movq	curr, %rcx
	movl	9892(%rcx,%rax,4), %edx
	movb	%dl, %sil
	movq	curr, %rax
	movb	%sil, 9878(%rax)
	movq	curr, %rax
	movslq	9888(%rax), %rax
	movq	curr, %rcx
	movl	9892(%rcx,%rax,4), %edx
	movb	%dl, %sil
	movq	curr, %rax
	movb	%sil, 9879(%rax)
	movq	curr, %rax
	movb	9878(%rax), %sil
	movq	curr, %rax
	movb	%sil, 9874(%rax)
	movq	curr, %rax
	addq	$24, %rax
	movq	curr, %rcx
	addq	$9872, %rcx             # imm = 0x2690
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	LSetRendition
	movq	curr, %rax
	movl	$0, 9908(%rax)
.LBB5_342:                              # %if.end.1084
                                        #   in Loop: Header=BB5_13 Depth=1
	jmp	.LBB5_343
.LBB5_343:                              # %sw.epilog.1085
                                        #   in Loop: Header=BB5_13 Depth=1
	jmp	.LBB5_344
.LBB5_344:                              # %do.cond
                                        #   in Loop: Header=BB5_13 Depth=1
	movl	-20(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -20(%rbp)
	cmpl	$0, %eax
	jne	.LBB5_13
.LBB5_345:                              # %do.end.1088
	jmp	.LBB5_346
.LBB5_346:                              # %if.end.1089
	cmpq	$0, printcmd
	jne	.LBB5_349
# BB#347:                               # %land.lhs.true.1091
	movq	curr, %rax
	cmpl	$5, 9856(%rax)
	jne	.LBB5_349
# BB#348:                               # %if.then.1095
	callq	PrintFlush
.LBB5_349:                              # %if.end.1096
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	WriteString, .Lfunc_end5-WriteString
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI5_0:
	.quad	.LBB5_167
	.quad	.LBB5_109
	.quad	.LBB5_79
	.quad	.LBB5_91
	.quad	.LBB5_136
	.quad	.LBB5_60
	.quad	.LBB5_64
	.quad	.LBB5_68
	.quad	.LBB5_72

	.text
	.align	16, 0x90
	.type	WLogString,@function
WLogString:                             # @WLogString
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rsi
	cmpq	$0, 10824(%rsi)
	jne	.LBB6_2
# BB#1:                                 # %if.then
	jmp	.LBB6_9
.LBB6_2:                                # %if.end
	cmpl	$0, logtstamp_on
	je	.LBB6_5
# BB#3:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movl	10832(%rax), %ecx
	movl	logtstamp_after, %edx
	shll	$1, %edx
	cmpl	%edx, %ecx
	jl	.LBB6_5
# BB#4:                                 # %if.then.2
	movl	$37, %edx
	movq	logtstamp_string, %rdi
	movq	-8(%rbp), %rsi
	callq	MakeWinMsg
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	10824(%rax), %rdi
	movq	-32(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	strlen
	movl	%eax, %edx
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	callq	logfwrite
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB6_5:                                # %if.end.6
	movq	-8(%rbp), %rax
	movl	$0, 10832(%rax)
	movq	-8(%rbp), %rax
	movq	10824(%rax), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	callq	logfwrite
	cmpl	$1, %eax
	jge	.LBB6_7
# BB#6:                                 # %if.then.12
	movq	-8(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	__errno_location
	movabsq	$.L.str.20, %rdx
	movl	(%rax), %esi
	movq	-64(%rbp), %rdi         # 8-byte Reload
	callq	WMsg
	movq	-8(%rbp), %rax
	movq	10824(%rax), %rdi
	callq	logfclose
	movq	-8(%rbp), %rdx
	movq	$0, 10824(%rdx)
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB6_7:                                # %if.end.17
	cmpl	$0, log_flush
	jne	.LBB6_9
# BB#8:                                 # %if.then.19
	movq	-8(%rbp), %rax
	movq	10824(%rax), %rdi
	callq	logfflush
	movl	%eax, -72(%rbp)         # 4-byte Spill
.LBB6_9:                                # %if.end.22
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	WLogString, .Lfunc_end6-WLogString
	.cfi_endproc

	.align	16, 0x90
	.type	MPutStr,@function
MPutStr:                                # @MPutStr
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
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movl	%r9d, -40(%rbp)
	cmpl	$0, -20(%rbp)
	jg	.LBB7_2
# BB#1:                                 # %if.then
	jmp	.LBB7_43
.LBB7_2:                                # %if.end
	movq	-8(%rbp), %rdi
	movl	-40(%rbp), %esi
	movq	-32(%rbp), %rdx
	callq	MFixLine
	movslq	-40(%rbp), %rdx
	movq	-8(%rbp), %rdi
	imulq	$40, %rdx, %rdx
	addq	9864(%rdi), %rdx
	movq	%rdx, -48(%rbp)
	movq	-8(%rbp), %rdx
	cmpl	$8, 48(%rdx)
	jne	.LBB7_5
# BB#3:                                 # %cond.true
	movslq	-36(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	16(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$255, %edx
	jne	.LBB7_13
# BB#4:                                 # %land.lhs.true
	movslq	-36(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$255, %edx
	je	.LBB7_6
	jmp	.LBB7_13
.LBB7_5:                                # %cond.false
	movslq	-36(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	16(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	andl	$224, %edx
	cmpl	$128, %edx
	jne	.LBB7_13
.LBB7_6:                                # %if.then.17
	cmpl	$0, -36(%rbp)
	jle	.LBB7_10
# BB#7:                                 # %if.then.20
	jmp	.LBB7_8
.LBB7_8:                                # %do.body
	movb	mchar_blank, %al
	movl	-36(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-48(%rbp), %rsi
	movq	(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
	movb	mchar_blank+1, %al
	movl	-36(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-48(%rbp), %rsi
	movq	8(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
	movb	mchar_blank+2, %al
	movl	-36(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-48(%rbp), %rsi
	movq	16(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
	movb	mchar_blank+3, %al
	movl	-36(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-48(%rbp), %rsi
	movq	24(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
	movb	mchar_blank+4, %al
	movl	-36(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-48(%rbp), %rsi
	movq	32(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
# BB#9:                                 # %do.end
	jmp	.LBB7_10
.LBB7_10:                               # %if.end.37
	jmp	.LBB7_11
.LBB7_11:                               # %do.body.38
	movb	mchar_blank, %al
	movslq	-36(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	(%rdx), %rdx
	movb	%al, (%rdx,%rcx)
	movb	mchar_blank+1, %al
	movslq	-36(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	8(%rdx), %rdx
	movb	%al, (%rdx,%rcx)
	movb	mchar_blank+2, %al
	movslq	-36(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	16(%rdx), %rdx
	movb	%al, (%rdx,%rcx)
	movb	mchar_blank+3, %al
	movslq	-36(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	24(%rdx), %rdx
	movb	%al, (%rdx,%rcx)
	movb	mchar_blank+4, %al
	movslq	-36(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	32(%rdx), %rdx
	movb	%al, (%rdx,%rcx)
# BB#12:                                # %do.end.54
	jmp	.LBB7_13
.LBB7_13:                               # %if.end.55
	movq	-8(%rbp), %rax
	cmpl	$8, 48(%rax)
	jne	.LBB7_16
# BB#14:                                # %cond.true.60
	movl	-36(%rbp), %eax
	addl	-20(%rbp), %eax
	subl	$1, %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdx
	movq	16(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$255, %eax
	jne	.LBB7_23
# BB#15:                                # %land.lhs.true.69
	movl	-36(%rbp), %eax
	addl	-20(%rbp), %eax
	subl	$1, %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdx
	movq	(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$255, %eax
	je	.LBB7_18
	jmp	.LBB7_23
.LBB7_16:                               # %cond.false.79
	movl	-36(%rbp), %eax
	addl	-20(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdx
	movq	16(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	andl	$31, %eax
	cmpl	$0, %eax
	je	.LBB7_23
# BB#17:                                # %land.lhs.true.89
	movl	-36(%rbp), %eax
	addl	-20(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdx
	movq	16(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	andl	$224, %eax
	cmpl	$0, %eax
	jne	.LBB7_23
.LBB7_18:                               # %if.then.99
	jmp	.LBB7_19
.LBB7_19:                               # %do.body.100
	movb	mchar_blank, %al
	movl	-36(%rbp), %ecx
	addl	-20(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-48(%rbp), %rsi
	movq	(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
	movb	mchar_blank+1, %al
	movl	-36(%rbp), %ecx
	addl	-20(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-48(%rbp), %rsi
	movq	8(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
	movb	mchar_blank+2, %al
	movl	-36(%rbp), %ecx
	addl	-20(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-48(%rbp), %rsi
	movq	16(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
	movb	mchar_blank+3, %al
	movl	-36(%rbp), %ecx
	addl	-20(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-48(%rbp), %rsi
	movq	24(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
	movb	mchar_blank+4, %al
	movl	-36(%rbp), %ecx
	addl	-20(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-48(%rbp), %rsi
	movq	32(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
# BB#20:                                # %do.end.126
	jmp	.LBB7_21
.LBB7_21:                               # %do.body.127
	movb	mchar_blank, %al
	movl	-36(%rbp), %ecx
	addl	-20(%rbp), %ecx
	subl	$1, %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-48(%rbp), %rsi
	movq	(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
	movb	mchar_blank+1, %al
	movl	-36(%rbp), %ecx
	addl	-20(%rbp), %ecx
	subl	$1, %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-48(%rbp), %rsi
	movq	8(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
	movb	mchar_blank+2, %al
	movl	-36(%rbp), %ecx
	addl	-20(%rbp), %ecx
	subl	$1, %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-48(%rbp), %rsi
	movq	16(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
	movb	mchar_blank+3, %al
	movl	-36(%rbp), %ecx
	addl	-20(%rbp), %ecx
	subl	$1, %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-48(%rbp), %rsi
	movq	24(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
	movb	mchar_blank+4, %al
	movl	-36(%rbp), %ecx
	addl	-20(%rbp), %ecx
	subl	$1, %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-48(%rbp), %rsi
	movq	32(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
# BB#22:                                # %do.end.158
	jmp	.LBB7_23
.LBB7_23:                               # %if.end.159
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movslq	-36(%rbp), %rcx
	addq	%rcx, %rax
	movslq	-20(%rbp), %rdx
	movq	%rax, %rsi
	callq	bcopy
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	null, %rax
	je	.LBB7_28
# BB#24:                                # %if.then.165
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-36(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -64(%rbp)
	movl	-20(%rbp), %edx
	movl	%edx, -52(%rbp)
.LBB7_25:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -52(%rbp)
	cmpl	$0, %eax
	jle	.LBB7_27
# BB#26:                                # %for.body
                                        #   in Loop: Header=BB7_25 Depth=1
	movq	-32(%rbp), %rax
	movb	1(%rax), %cl
	movq	-64(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -64(%rbp)
	movb	%cl, (%rax)
	jmp	.LBB7_25
.LBB7_27:                               # %for.end
	jmp	.LBB7_28
.LBB7_28:                               # %if.end.172
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	null, %rax
	je	.LBB7_33
# BB#29:                                # %if.then.176
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movslq	-36(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -64(%rbp)
	movl	-20(%rbp), %edx
	movl	%edx, -52(%rbp)
.LBB7_30:                               # %for.cond.180
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -52(%rbp)
	cmpl	$0, %eax
	jle	.LBB7_32
# BB#31:                                # %for.body.184
                                        #   in Loop: Header=BB7_30 Depth=1
	movq	-32(%rbp), %rax
	movb	2(%rax), %cl
	movq	-64(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -64(%rbp)
	movb	%cl, (%rax)
	jmp	.LBB7_30
.LBB7_32:                               # %for.end.187
	jmp	.LBB7_33
.LBB7_33:                               # %if.end.188
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	null, %rax
	je	.LBB7_38
# BB#34:                                # %if.then.192
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-36(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -64(%rbp)
	movl	-20(%rbp), %edx
	movl	%edx, -52(%rbp)
.LBB7_35:                               # %for.cond.196
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -52(%rbp)
	cmpl	$0, %eax
	jle	.LBB7_37
# BB#36:                                # %for.body.200
                                        #   in Loop: Header=BB7_35 Depth=1
	movq	-32(%rbp), %rax
	movb	3(%rax), %cl
	movq	-64(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -64(%rbp)
	movb	%cl, (%rax)
	jmp	.LBB7_35
.LBB7_37:                               # %for.end.203
	jmp	.LBB7_38
.LBB7_38:                               # %if.end.204
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	null, %rax
	je	.LBB7_43
# BB#39:                                # %if.then.208
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movslq	-36(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -64(%rbp)
	movl	-20(%rbp), %edx
	movl	%edx, -52(%rbp)
.LBB7_40:                               # %for.cond.212
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -52(%rbp)
	cmpl	$0, %eax
	jle	.LBB7_42
# BB#41:                                # %for.body.216
                                        #   in Loop: Header=BB7_40 Depth=1
	movq	-32(%rbp), %rax
	movb	4(%rax), %cl
	movq	-64(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -64(%rbp)
	movb	%cl, (%rax)
	jmp	.LBB7_40
.LBB7_42:                               # %for.end.219
	jmp	.LBB7_43
.LBB7_43:                               # %if.end.220
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	MPutStr, .Lfunc_end7-MPutStr
	.cfi_endproc

	.align	16, 0x90
	.type	PrintChar,@function
PrintChar:                              # @PrintChar
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
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	curr, %rax
	movq	10800(%rax), %rax
	movq	curr, %rcx
	addq	$10028, %rcx            # imm = 0x272C
	addq	$768, %rcx              # imm = 0x300
	addq	$-1, %rcx
	cmpq	%rcx, %rax
	jb	.LBB8_2
# BB#1:                                 # %if.then
	callq	PrintFlush
.LBB8_2:                                # %if.end
	movl	-4(%rbp), %eax
	movb	%al, %cl
	movq	curr, %rdx
	movq	10800(%rdx), %rsi
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, 10800(%rdx)
	movb	%cl, (%rsi)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	PrintChar, .Lfunc_end8-PrintChar
	.cfi_endproc

	.align	16, 0x90
	.type	PrintFlush,@function
PrintFlush:                             # @PrintFlush
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
	subq	$48, %rsp
	movq	curr, %rax
	movq	176(%rax), %rax
	movq	%rax, display
	cmpq	$0, display
	je	.LBB9_10
# BB#1:                                 # %land.lhs.true
	cmpq	$0, printcmd
	je	.LBB9_10
# BB#2:                                 # %if.then
	movq	curr, %rax
	addq	$10028, %rax            # imm = 0x272C
	movq	%rax, -8(%rbp)
	movq	curr, %rax
	movq	10800(%rax), %rax
	movq	curr, %rcx
	addq	$10028, %rcx            # imm = 0x272C
	subq	%rcx, %rax
	movl	%eax, %edx
	movl	%edx, -12(%rbp)
.LBB9_3:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -12(%rbp)
	movb	%cl, -17(%rbp)          # 1-byte Spill
	je	.LBB9_5
# BB#4:                                 # %land.rhs
                                        #   in Loop: Header=BB9_3 Depth=1
	movq	display, %rax
	cmpl	$0, 7408(%rax)
	setge	%cl
	movb	%cl, -17(%rbp)          # 1-byte Spill
.LBB9_5:                                # %land.end
                                        #   in Loop: Header=BB9_3 Depth=1
	movb	-17(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB9_6
	jmp	.LBB9_9
.LBB9_6:                                # %while.body
                                        #   in Loop: Header=BB9_3 Depth=1
	movq	display, %rax
	movl	7408(%rax), %edi
	movq	-8(%rbp), %rsi
	movslq	-12(%rbp), %rdx
	callq	write
	movl	%eax, %edi
	movl	%edi, -16(%rbp)
	cmpl	$0, -16(%rbp)
	jg	.LBB9_8
# BB#7:                                 # %if.then.11
	movq	curr, %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	__errno_location
	movabsq	$.L.str.31, %rdx
	movl	(%rax), %esi
	movq	-32(%rbp), %rdi         # 8-byte Reload
	callq	WMsg
	movq	display, %rax
	movl	7408(%rax), %edi
	callq	close
	movq	display, %rdx
	movl	$-1, 7408(%rdx)
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jmp	.LBB9_9
.LBB9_8:                                # %if.end
                                        #   in Loop: Header=BB9_3 Depth=1
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -8(%rbp)
	movl	-16(%rbp), %eax
	movl	-12(%rbp), %esi
	subl	%eax, %esi
	movl	%esi, -12(%rbp)
	jmp	.LBB9_3
.LBB9_9:                                # %while.end
	jmp	.LBB9_14
.LBB9_10:                               # %if.else
	cmpq	$0, display
	je	.LBB9_13
# BB#11:                                # %land.lhs.true.17
	movq	curr, %rax
	movq	10800(%rax), %rax
	movq	curr, %rcx
	addq	$10028, %rcx            # imm = 0x272C
	cmpq	%rcx, %rax
	jbe	.LBB9_13
# BB#12:                                # %if.then.23
	movq	display, %rax
	movq	6024(%rax), %rdi
	callq	AddCStr
	movq	curr, %rax
	addq	$10028, %rax            # imm = 0x272C
	movq	curr, %rdi
	movq	10800(%rdi), %rdi
	movq	curr, %rcx
	addq	$10028, %rcx            # imm = 0x272C
	subq	%rcx, %rdi
	movl	%edi, %edx
	movq	%rax, %rdi
	movl	%edx, %esi
	callq	AddStrn
	movq	display, %rax
	movq	6032(%rax), %rdi
	callq	AddCStr
	movl	$3, %edi
	callq	Flush
.LBB9_13:                               # %if.end.36
	jmp	.LBB9_14
.LBB9_14:                               # %if.end.37
	movq	curr, %rax
	addq	$10028, %rax            # imm = 0x272C
	movq	curr, %rcx
	movq	%rax, 10800(%rcx)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	PrintFlush, .Lfunc_end9-PrintFlush
	.cfi_endproc

	.align	16, 0x90
	.type	StringChar,@function
StringChar:                             # @StringChar
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
	movl	%edi, -4(%rbp)
	movq	curr, %rax
	movq	10800(%rax), %rax
	movq	curr, %rcx
	addq	$10028, %rcx            # imm = 0x272C
	addq	$768, %rcx              # imm = 0x300
	addq	$-1, %rcx
	cmpq	%rcx, %rax
	jb	.LBB10_2
# BB#1:                                 # %if.then
	movq	curr, %rax
	movl	$0, 9856(%rax)
	jmp	.LBB10_3
.LBB10_2:                               # %if.else
	movl	-4(%rbp), %eax
	movb	%al, %cl
	movq	curr, %rdx
	movq	10800(%rdx), %rsi
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, 10800(%rdx)
	movb	%cl, (%rsi)
.LBB10_3:                               # %if.end
	popq	%rbp
	retq
.Lfunc_end10:
	.size	StringChar, .Lfunc_end10-StringChar
	.cfi_endproc

	.align	16, 0x90
	.type	StringEnd,@function
StringEnd:                              # @StringEnd
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
	subq	$864, %rsp              # imm = 0x360
	movq	curr(%rip), %rax
	movl	$0, 9856(%rax)
	movq	curr(%rip), %rax
	movq	10800(%rax), %rax
	movb	$0, (%rax)
	movq	curr(%rip), %rax
	movl	9860(%rax), %ecx
	decl	%ecx
	movl	%ecx, %eax
	subl	$5, %ecx
	movq	%rax, -832(%rbp)        # 8-byte Spill
	movl	%ecx, -836(%rbp)        # 4-byte Spill
	ja	.LBB11_71
# BB#74:                                # %entry
	movq	-832(%rbp), %rax        # 8-byte Reload
	movq	.LJTI11_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB11_1:                               # %sw.bb
	movq	curr, %rax
	movsbl	10028(%rax), %ecx
	cmpl	$59, %ecx
	je	.LBB11_3
# BB#2:                                 # %lor.lhs.false
	movl	$59, %esi
	movq	curr, %rax
	addq	$10028, %rax            # imm = 0x272C
	movq	%rax, %rdi
	callq	index
	movq	%rax, -24(%rbp)
	cmpq	$0, %rax
	jne	.LBB11_4
.LBB11_3:                               # %if.then
	jmp	.LBB11_72
.LBB11_4:                               # %if.end
	movq	curr, %rax
	addq	$10028, %rax            # imm = 0x272C
	movq	%rax, %rdi
	callq	atoi
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rdi
	addq	$1, %rdi
	movq	%rdi, -24(%rbp)
	cmpl	$83, -28(%rbp)
	jne	.LBB11_23
# BB#5:                                 # %if.then.10
	movabsq	$.L.str.30, %rdi
	callq	FindUserPtr
	movq	(%rax), %rax
	movq	%rax, -808(%rbp)
	cmpq	$0, -808(%rbp)
	je	.LBB11_22
# BB#6:                                 # %land.lhs.true
	leaq	-800(%rbp), %rcx
	leaq	-544(%rbp), %rdx
	movl	$768, %eax              # imm = 0x300
	movl	%eax, %esi
	movq	-24(%rbp), %rdi
	movq	-24(%rbp), %r8
	movq	curr, %r9
	addq	$10028, %r9             # imm = 0x272C
	subq	%r9, %r8
	subq	%r8, %rsi
	movl	%esi, %eax
	movl	%eax, %esi
	callq	Parse
	cmpl	$0, %eax
	je	.LBB11_22
# BB#7:                                 # %if.then.19
	movq	displays, %rax
	movq	%rax, display
.LBB11_8:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, display
	je	.LBB11_13
# BB#9:                                 # %for.body
                                        #   in Loop: Header=BB11_8 Depth=1
	movq	display, %rax
	movq	336(%rax), %rax
	movq	64(%rax), %rax
	movq	56(%rax), %rax
	movq	curr, %rcx
	addq	$24, %rcx
	cmpq	%rcx, %rax
	jne	.LBB11_11
# BB#10:                                # %if.then.23
	jmp	.LBB11_13
.LBB11_11:                              # %if.end.24
                                        #   in Loop: Header=BB11_8 Depth=1
	jmp	.LBB11_12
.LBB11_12:                              # %for.inc
                                        #   in Loop: Header=BB11_8 Depth=1
	movq	display, %rax
	movq	(%rax), %rax
	movq	%rax, display
	jmp	.LBB11_8
.LBB11_13:                              # %for.end
	cmpq	$0, display
	jne	.LBB11_16
# BB#14:                                # %land.lhs.true.27
	movq	curr, %rax
	cmpq	$0, 24(%rax)
	je	.LBB11_16
# BB#15:                                # %if.then.30
	movq	curr, %rax
	movq	24(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, display
.LBB11_16:                              # %if.end.33
	cmpq	$0, display
	jne	.LBB11_18
# BB#17:                                # %if.then.36
	movq	displays, %rax
	movq	%rax, display
.LBB11_18:                              # %if.end.37
	movq	-808(%rbp), %rax
	movq	%rax, EffectiveAclUser
	movq	curr, %rax
	movq	%rax, fore
	movq	fore, %rax
	cmpq	$0, 152(%rax)
	je	.LBB11_20
# BB#19:                                # %cond.true
	movq	fore, %rax
	movq	152(%rax), %rax
	movq	%rax, -848(%rbp)        # 8-byte Spill
	jmp	.LBB11_21
.LBB11_20:                              # %cond.false
	movq	fore, %rax
	addq	$24, %rax
	movq	%rax, -848(%rbp)        # 8-byte Spill
.LBB11_21:                              # %cond.end
	movq	-848(%rbp), %rax        # 8-byte Reload
	leaq	-800(%rbp), %rsi
	leaq	-544(%rbp), %rdi
	movq	%rax, flayer
	callq	DoCommand
	movq	$0, EffectiveAclUser
	movq	$0, fore
	movq	$0, flayer
.LBB11_22:                              # %if.end.43
	jmp	.LBB11_72
.LBB11_23:                              # %if.end.44
	cmpl	$0, -28(%rbp)
	jl	.LBB11_25
# BB#24:                                # %lor.lhs.false.47
	cmpl	$2, -28(%rbp)
	jle	.LBB11_26
.LBB11_25:                              # %if.then.50
	jmp	.LBB11_72
.LBB11_26:                              # %if.end.51
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movq	curr, %rsi
	addq	$10028, %rsi            # imm = 0x272C
	subq	%rsi, %rdx
	movq	curr, %rsi
	movq	10800(%rsi), %rdi
	subq	%rdx, %rcx
	addq	%rcx, %rdi
	movq	%rdi, 10800(%rsi)
	movq	curr, %rcx
	movq	10800(%rcx), %rcx
	movq	curr, %rdx
	addq	$10028, %rdx            # imm = 0x272C
	cmpq	%rdx, %rcx
	jbe	.LBB11_28
# BB#27:                                # %if.then.63
	movq	-24(%rbp), %rdi
	movq	curr, %rax
	addq	$10028, %rax            # imm = 0x272C
	movq	curr, %rcx
	movq	10800(%rcx), %rcx
	movq	curr, %rdx
	addq	$10028, %rdx            # imm = 0x272C
	subq	%rdx, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	bcopy
.LBB11_28:                              # %if.end.72
	movq	curr, %rax
	movq	10800(%rax), %rax
	movb	$0, (%rax)
.LBB11_29:                              # %sw.bb.74
	movq	curr, %rax
	cmpq	$0, 10000(%rax)
	je	.LBB11_33
# BB#30:                                # %if.then.76
	movq	curr, %rax
	movq	10000(%rax), %rdi
	movq	curr, %rax
	addq	$10028, %rax            # imm = 0x272C
	movq	%rax, %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB11_32
# BB#31:                                # %if.then.83
	jmp	.LBB11_72
.LBB11_32:                              # %if.end.84
	movq	curr, %rax
	movq	10000(%rax), %rdi
	callq	free
	movq	curr, %rax
	movq	$0, 10000(%rax)
.LBB11_33:                              # %if.end.87
	movq	curr, %rax
	addq	$10028, %rax            # imm = 0x272C
	movq	curr, %rcx
	cmpq	10800(%rcx), %rax
	je	.LBB11_35
# BB#34:                                # %if.then.93
	movq	curr, %rax
	addq	$10028, %rax            # imm = 0x272C
	movq	%rax, %rdi
	callq	SaveStr
	movq	curr, %rdi
	movq	%rax, 10000(%rdi)
.LBB11_35:                              # %if.end.98
	movl	$104, %esi
	movq	curr, %rdi
	callq	WindowChanged
	jmp	.LBB11_72
.LBB11_36:                              # %sw.bb.99
	movq	displays, %rax
	movq	%rax, display
.LBB11_37:                              # %for.cond.100
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_39 Depth 2
	cmpq	$0, display
	je	.LBB11_49
# BB#38:                                # %for.body.102
                                        #   in Loop: Header=BB11_37 Depth=1
	movq	display, %rax
	movq	328(%rax), %rax
	movq	%rax, -16(%rbp)
.LBB11_39:                              # %for.cond.103
                                        #   Parent Loop BB11_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -16(%rbp)
	je	.LBB11_44
# BB#40:                                # %for.body.105
                                        #   in Loop: Header=BB11_39 Depth=2
	movq	-16(%rbp), %rax
	movq	64(%rax), %rax
	movq	56(%rax), %rax
	movq	curr, %rcx
	addq	$24, %rcx
	cmpq	%rcx, %rax
	jne	.LBB11_42
# BB#41:                                # %if.then.111
                                        #   in Loop: Header=BB11_37 Depth=1
	jmp	.LBB11_44
.LBB11_42:                              # %if.end.112
                                        #   in Loop: Header=BB11_39 Depth=2
	jmp	.LBB11_43
.LBB11_43:                              # %for.inc.113
                                        #   in Loop: Header=BB11_39 Depth=2
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB11_39
.LBB11_44:                              # %for.end.114
                                        #   in Loop: Header=BB11_37 Depth=1
	cmpq	$0, -16(%rbp)
	jne	.LBB11_46
# BB#45:                                # %lor.lhs.false.116
                                        #   in Loop: Header=BB11_37 Depth=1
	movq	curr, %rax
	cmpl	$6, 9860(%rax)
	jne	.LBB11_47
.LBB11_46:                              # %if.then.120
                                        #   in Loop: Header=BB11_37 Depth=1
	movq	curr, %rax
	addq	$10028, %rax            # imm = 0x272C
	movq	%rax, %rdi
	callq	MakeStatus
.LBB11_47:                              # %if.end.123
                                        #   in Loop: Header=BB11_37 Depth=1
	jmp	.LBB11_48
.LBB11_48:                              # %for.inc.124
                                        #   in Loop: Header=BB11_37 Depth=1
	movq	display, %rax
	movq	(%rax), %rax
	movq	%rax, display
	jmp	.LBB11_37
.LBB11_49:                              # %for.end.126
	movl	$-1, -4(%rbp)
	jmp	.LBB11_73
.LBB11_50:                              # %sw.bb.127
	jmp	.LBB11_51
.LBB11_51:                              # %do.body
	movq	display, %rax
	movq	%rax, -816(%rbp)
	movq	displays, %rax
	movq	%rax, display
.LBB11_52:                              # %for.cond.129
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_54 Depth 2
	cmpq	$0, display
	je	.LBB11_63
# BB#53:                                # %for.body.131
                                        #   in Loop: Header=BB11_52 Depth=1
	movq	display, %rax
	movq	328(%rax), %rax
	movq	%rax, -824(%rbp)
.LBB11_54:                              # %for.cond.133
                                        #   Parent Loop BB11_52 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -824(%rbp)
	je	.LBB11_59
# BB#55:                                # %for.body.135
                                        #   in Loop: Header=BB11_54 Depth=2
	movq	-824(%rbp), %rax
	movq	64(%rax), %rax
	movq	curr, %rcx
	addq	$24, %rcx
	cmpq	%rcx, %rax
	jne	.LBB11_57
# BB#56:                                # %if.then.140
                                        #   in Loop: Header=BB11_52 Depth=1
	jmp	.LBB11_59
.LBB11_57:                              # %if.end.141
                                        #   in Loop: Header=BB11_54 Depth=2
	jmp	.LBB11_58
.LBB11_58:                              # %for.inc.142
                                        #   in Loop: Header=BB11_54 Depth=2
	movq	-824(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -824(%rbp)
	jmp	.LBB11_54
.LBB11_59:                              # %for.end.144
                                        #   in Loop: Header=BB11_52 Depth=1
	cmpq	$0, -824(%rbp)
	jne	.LBB11_61
# BB#60:                                # %if.then.147
                                        #   in Loop: Header=BB11_52 Depth=1
	jmp	.LBB11_62
.LBB11_61:                              # %if.end.148
                                        #   in Loop: Header=BB11_52 Depth=1
	movq	curr, %rax
	addq	$10028, %rax            # imm = 0x272C
	movq	%rax, %rdi
	callq	AddStr
.LBB11_62:                              # %for.inc.151
                                        #   in Loop: Header=BB11_52 Depth=1
	movq	display, %rax
	movq	(%rax), %rax
	movq	%rax, display
	jmp	.LBB11_52
.LBB11_63:                              # %for.end.153
	movq	-816(%rbp), %rax
	movq	%rax, display
# BB#64:                                # %do.end
	jmp	.LBB11_72
.LBB11_65:                              # %sw.bb.154
	movq	curr, %rax
	movq	8736(%rax), %rax
	movq	curr, %rcx
	addq	$8752, %rcx             # imm = 0x2230
	cmpq	%rcx, %rax
	jne	.LBB11_68
# BB#66:                                # %land.lhs.true.158
	movq	curr, %rax
	cmpb	$0, 10028(%rax)
	jne	.LBB11_68
# BB#67:                                # %if.then.162
	jmp	.LBB11_72
.LBB11_68:                              # %if.end.163
	movq	curr, %rdi
	movq	curr, %rax
	addq	$10028, %rax            # imm = 0x272C
	movq	curr, %rcx
	addq	$10028, %rcx            # imm = 0x272C
	movq	%rdi, -856(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -864(%rbp)        # 8-byte Spill
	callq	strlen
	movl	%eax, %edx
	movq	-856(%rbp), %rdi        # 8-byte Reload
	movq	-864(%rbp), %rsi        # 8-byte Reload
	callq	ChangeAKA
	movq	curr, %rax
	cmpb	$0, 10028(%rax)
	jne	.LBB11_70
# BB#69:                                # %if.then.173
	movq	curr, %rax
	movl	44(%rax), %ecx
	addl	$1, %ecx
	movq	curr, %rax
	movl	%ecx, 9520(%rax)
.LBB11_70:                              # %if.end.175
	jmp	.LBB11_72
.LBB11_71:                              # %sw.default
	jmp	.LBB11_72
.LBB11_72:                              # %sw.epilog
	movl	$0, -4(%rbp)
.LBB11_73:                              # %return
	movl	-4(%rbp), %eax
	addq	$864, %rsp              # imm = 0x360
	popq	%rbp
	retq
.Lfunc_end11:
	.size	StringEnd, .Lfunc_end11-StringEnd
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI11_0:
	.quad	.LBB11_50
	.quad	.LBB11_1
	.quad	.LBB11_29
	.quad	.LBB11_36
	.quad	.LBB11_65
	.quad	.LBB11_36

	.text
	.align	16, 0x90
	.type	StringStart,@function
StringStart:                            # @StringStart
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
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	movq	curr, %rax
	movl	%edi, 9860(%rax)
	movq	curr, %rax
	addq	$10028, %rax            # imm = 0x272C
	movq	curr, %rcx
	movq	%rax, 10800(%rcx)
	movq	curr, %rax
	movl	$2, 9856(%rax)
	popq	%rbp
	retq
.Lfunc_end12:
	.size	StringStart, .Lfunc_end12-StringStart
	.cfi_endproc

	.align	16, 0x90
	.type	Special,@function
Special:                                # @Special
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
	movl	%edi, -8(%rbp)
	addl	$-7, %edi
	movl	%edi, %eax
	subl	$8, %edi
	movq	%rax, -16(%rbp)         # 8-byte Spill
	movl	%edi, -20(%rbp)         # 4-byte Spill
	ja	.LBB13_11
# BB#13:                                # %entry
	movq	-16(%rbp), %rax         # 8-byte Reload
	movq	.LJTI13_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB13_1:                               # %sw.bb
	callq	BackSpace
	movl	$1, -4(%rbp)
	jmp	.LBB13_12
.LBB13_2:                               # %sw.bb.1
	callq	Return
	movl	$1, -4(%rbp)
	jmp	.LBB13_12
.LBB13_3:                               # %sw.bb.2
	movq	curr, %rax
	cmpl	$0, 9520(%rax)
	je	.LBB13_5
# BB#4:                                 # %if.then
	callq	FindAKA
.LBB13_5:                               # %if.end
	jmp	.LBB13_6
.LBB13_6:                               # %sw.bb.3
	xorl	%edi, %edi
	callq	LineFeed
	movl	$1, -4(%rbp)
	jmp	.LBB13_12
.LBB13_7:                               # %sw.bb.4
	movq	curr, %rdi
	movl	visual_bell, %esi
	callq	WBell
	movl	$1, -4(%rbp)
	jmp	.LBB13_12
.LBB13_8:                               # %sw.bb.5
	callq	ForwardTab
	movl	$1, -4(%rbp)
	jmp	.LBB13_12
.LBB13_9:                               # %sw.bb.6
	xorl	%edi, %edi
	callq	MapCharset
	movl	$1, -4(%rbp)
	jmp	.LBB13_12
.LBB13_10:                              # %sw.bb.7
	movl	$1, %edi
	callq	MapCharset
	movl	$1, -4(%rbp)
	jmp	.LBB13_12
.LBB13_11:                              # %sw.epilog
	movl	$0, -4(%rbp)
.LBB13_12:                              # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	Special, .Lfunc_end13-Special
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI13_0:
	.quad	.LBB13_7
	.quad	.LBB13_1
	.quad	.LBB13_8
	.quad	.LBB13_3
	.quad	.LBB13_6
	.quad	.LBB13_11
	.quad	.LBB13_2
	.quad	.LBB13_10
	.quad	.LBB13_9

	.text
	.align	16, 0x90
	.type	DoESC,@function
DoESC:                                  # @DoESC
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
	subq	$144, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB14_2
.LBB14_2:                               # %do.end
	movl	-8(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -12(%rbp)         # 4-byte Spill
	je	.LBB14_3
	jmp	.LBB14_43
.LBB14_43:                              # %do.end
	movl	-12(%rbp), %eax         # 4-byte Reload
	subl	$35, %eax
	movl	%eax, -16(%rbp)         # 4-byte Spill
	je	.LBB14_31
	jmp	.LBB14_44
.LBB14_44:                              # %do.end
	movl	-12(%rbp), %eax         # 4-byte Reload
	subl	$36, %eax
	movl	%eax, -20(%rbp)         # 4-byte Spill
	je	.LBB14_38
	jmp	.LBB14_45
.LBB14_45:                              # %do.end
	movl	-12(%rbp), %eax         # 4-byte Reload
	subl	$40, %eax
	movl	%eax, -24(%rbp)         # 4-byte Spill
	je	.LBB14_34
	jmp	.LBB14_46
.LBB14_46:                              # %do.end
	movl	-12(%rbp), %eax         # 4-byte Reload
	subl	$41, %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
	je	.LBB14_35
	jmp	.LBB14_47
.LBB14_47:                              # %do.end
	movl	-12(%rbp), %eax         # 4-byte Reload
	subl	$42, %eax
	movl	%eax, -32(%rbp)         # 4-byte Spill
	je	.LBB14_36
	jmp	.LBB14_48
.LBB14_48:                              # %do.end
	movl	-12(%rbp), %eax         # 4-byte Reload
	subl	$43, %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	je	.LBB14_37
	jmp	.LBB14_49
.LBB14_49:                              # %do.end
	movl	-12(%rbp), %eax         # 4-byte Reload
	subl	$9256, %eax             # imm = 0x2428
	movl	%eax, -40(%rbp)         # 4-byte Spill
	je	.LBB14_38
	jmp	.LBB14_50
.LBB14_50:                              # %do.end
	movl	-12(%rbp), %eax         # 4-byte Reload
	subl	$9257, %eax             # imm = 0x2429
	movl	%eax, -44(%rbp)         # 4-byte Spill
	je	.LBB14_39
	jmp	.LBB14_51
.LBB14_51:                              # %do.end
	movl	-12(%rbp), %eax         # 4-byte Reload
	subl	$9258, %eax             # imm = 0x242A
	movl	%eax, -48(%rbp)         # 4-byte Spill
	je	.LBB14_40
	jmp	.LBB14_52
.LBB14_52:                              # %do.end
	movl	-12(%rbp), %eax         # 4-byte Reload
	subl	$9259, %eax             # imm = 0x242B
	movl	%eax, -52(%rbp)         # 4-byte Spill
	je	.LBB14_41
	jmp	.LBB14_42
.LBB14_3:                               # %sw.bb
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	subl	$55, %ecx
	movl	%eax, -56(%rbp)         # 4-byte Spill
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	je	.LBB14_9
	jmp	.LBB14_53
.LBB14_53:                              # %sw.bb
	movl	-56(%rbp), %eax         # 4-byte Reload
	subl	$56, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	je	.LBB14_10
	jmp	.LBB14_54
.LBB14_54:                              # %sw.bb
	movl	-56(%rbp), %eax         # 4-byte Reload
	subl	$61, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	je	.LBB14_12
	jmp	.LBB14_55
.LBB14_55:                              # %sw.bb
	movl	-56(%rbp), %eax         # 4-byte Reload
	subl	$62, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	je	.LBB14_13
	jmp	.LBB14_56
.LBB14_56:                              # %sw.bb
	movl	-56(%rbp), %eax         # 4-byte Reload
	subl	$68, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	je	.LBB14_5
	jmp	.LBB14_57
.LBB14_57:                              # %sw.bb
	movl	-56(%rbp), %eax         # 4-byte Reload
	subl	$69, %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	je	.LBB14_4
	jmp	.LBB14_58
.LBB14_58:                              # %sw.bb
	movl	-56(%rbp), %eax         # 4-byte Reload
	subl	$72, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB14_7
	jmp	.LBB14_59
.LBB14_59:                              # %sw.bb
	movl	-56(%rbp), %eax         # 4-byte Reload
	subl	$77, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB14_6
	jmp	.LBB14_60
.LBB14_60:                              # %sw.bb
	movl	-56(%rbp), %eax         # 4-byte Reload
	subl	$78, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB14_19
	jmp	.LBB14_61
.LBB14_61:                              # %sw.bb
	movl	-56(%rbp), %eax         # 4-byte Reload
	subl	$79, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	je	.LBB14_24
	jmp	.LBB14_62
.LBB14_62:                              # %sw.bb
	movl	-56(%rbp), %eax         # 4-byte Reload
	subl	$90, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB14_8
	jmp	.LBB14_63
.LBB14_63:                              # %sw.bb
	movl	-56(%rbp), %eax         # 4-byte Reload
	subl	$99, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	je	.LBB14_11
	jmp	.LBB14_64
.LBB14_64:                              # %sw.bb
	movl	-56(%rbp), %eax         # 4-byte Reload
	subl	$103, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	je	.LBB14_29
	jmp	.LBB14_65
.LBB14_65:                              # %sw.bb
	movl	-56(%rbp), %eax         # 4-byte Reload
	subl	$110, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	je	.LBB14_14
	jmp	.LBB14_66
.LBB14_66:                              # %sw.bb
	movl	-56(%rbp), %eax         # 4-byte Reload
	subl	$111, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	je	.LBB14_15
	jmp	.LBB14_67
.LBB14_67:                              # %sw.bb
	movl	-56(%rbp), %eax         # 4-byte Reload
	subl	$124, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	je	.LBB14_18
	jmp	.LBB14_68
.LBB14_68:                              # %sw.bb
	movl	-56(%rbp), %eax         # 4-byte Reload
	subl	$125, %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	je	.LBB14_17
	jmp	.LBB14_69
.LBB14_69:                              # %sw.bb
	movl	-56(%rbp), %eax         # 4-byte Reload
	subl	$126, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	je	.LBB14_16
	jmp	.LBB14_30
.LBB14_4:                               # %sw.bb.1
	movl	$1, %edi
	callq	LineFeed
	jmp	.LBB14_30
.LBB14_5:                               # %sw.bb.2
	xorl	%edi, %edi
	callq	LineFeed
	jmp	.LBB14_30
.LBB14_6:                               # %sw.bb.3
	callq	ReverseLineFeed
	jmp	.LBB14_30
.LBB14_7:                               # %sw.bb.4
	movq	curr, %rax
	movslq	40(%rax), %rax
	movq	curr, %rcx
	movq	10808(%rcx), %rcx
	movb	$1, (%rcx,%rax)
	jmp	.LBB14_30
.LBB14_8:                               # %sw.bb.5
	movabsq	$.L.str.21, %rdi
	movl	$1, %esi
	movl	$2, %edx
	callq	Report
	jmp	.LBB14_30
.LBB14_9:                               # %sw.bb.6
	movq	curr, %rax
	addq	$9912, %rax             # imm = 0x26B8
	movq	%rax, %rdi
	callq	SaveCursor
	jmp	.LBB14_30
.LBB14_10:                              # %sw.bb.7
	movq	curr, %rax
	addq	$9912, %rax             # imm = 0x26B8
	movq	%rax, %rdi
	callq	RestoreCursor
	jmp	.LBB14_30
.LBB14_11:                              # %sw.bb.9
	callq	ClearScreen
	movq	curr, %rdi
	callq	ResetWindow
	xorl	%esi, %esi
	movq	curr, %rdi
	addq	$24, %rdi
	callq	LKeypadMode
	xorl	%esi, %esi
	movq	curr, %rdi
	addq	$24, %rdi
	callq	LCursorkeysMode
	movq	curr, %rdi
	addq	$24, %rdi
	movq	curr, %rax
	movl	40(%rax), %esi
	movq	curr, %rax
	movl	44(%rax), %edx
	callq	LGotoPos
	jmp	.LBB14_30
.LBB14_12:                              # %sw.bb.16
	movl	$1, %esi
	movq	curr, %rax
	addq	$24, %rax
	movq	curr, %rcx
	movl	$1, 9976(%rcx)
	movq	%rax, %rdi
	callq	LKeypadMode
	jmp	.LBB14_30
.LBB14_13:                              # %sw.bb.18
	xorl	%esi, %esi
	movq	curr, %rax
	addq	$24, %rax
	movq	curr, %rcx
	movl	$0, 9976(%rcx)
	movq	%rax, %rdi
	callq	LKeypadMode
	jmp	.LBB14_30
.LBB14_14:                              # %sw.bb.21
	movl	$2, %edi
	callq	MapCharset
	jmp	.LBB14_30
.LBB14_15:                              # %sw.bb.22
	movl	$3, %edi
	callq	MapCharset
	jmp	.LBB14_30
.LBB14_16:                              # %sw.bb.23
	movl	$1, %edi
	callq	MapCharsetR
	jmp	.LBB14_30
.LBB14_17:                              # %sw.bb.24
	movl	$2, %edi
	callq	MapCharsetR
	jmp	.LBB14_30
.LBB14_18:                              # %sw.bb.25
	movl	$3, %edi
	callq	MapCharsetR
	jmp	.LBB14_30
.LBB14_19:                              # %sw.bb.26
	movq	curr, %rax
	movslq	9884(%rax), %rax
	movq	curr, %rcx
	movl	9892(%rcx,%rax,4), %edx
	movq	curr, %rax
	cmpl	9900(%rax), %edx
	jne	.LBB14_21
# BB#20:                                # %lor.lhs.false
	movq	curr, %rax
	movslq	9888(%rax), %rax
	movq	curr, %rcx
	movl	9892(%rcx,%rax,4), %edx
	movq	curr, %rax
	cmpl	9900(%rax), %edx
	je	.LBB14_22
.LBB14_21:                              # %if.then
	movq	curr, %rax
	movl	$2, 9908(%rax)
	movq	curr, %rax
	movl	9900(%rax), %ecx
	movb	%cl, %dl
	movq	curr, %rax
	movb	%dl, 9878(%rax)
	movq	curr, %rax
	movb	%dl, 9879(%rax)
	jmp	.LBB14_23
.LBB14_22:                              # %if.else
	movq	curr, %rax
	movl	$0, 9908(%rax)
.LBB14_23:                              # %if.end
	jmp	.LBB14_30
.LBB14_24:                              # %sw.bb.40
	movq	curr, %rax
	movslq	9884(%rax), %rax
	movq	curr, %rcx
	movl	9892(%rcx,%rax,4), %edx
	movq	curr, %rax
	cmpl	9904(%rax), %edx
	jne	.LBB14_26
# BB#25:                                # %lor.lhs.false.49
	movq	curr, %rax
	movslq	9888(%rax), %rax
	movq	curr, %rcx
	movl	9892(%rcx,%rax,4), %edx
	movq	curr, %rax
	cmpl	9904(%rax), %edx
	je	.LBB14_27
.LBB14_26:                              # %if.then.58
	movq	curr, %rax
	movl	$3, 9908(%rax)
	movq	curr, %rax
	movl	9904(%rax), %ecx
	movb	%cl, %dl
	movq	curr, %rax
	movb	%dl, 9878(%rax)
	movq	curr, %rax
	movb	%dl, 9879(%rax)
	jmp	.LBB14_28
.LBB14_27:                              # %if.else.65
	movq	curr, %rax
	movl	$0, 9908(%rax)
.LBB14_28:                              # %if.end.67
	jmp	.LBB14_30
.LBB14_29:                              # %sw.bb.68
	movl	$1, %esi
	movq	curr, %rdi
	callq	WBell
.LBB14_30:                              # %sw.epilog
	jmp	.LBB14_42
.LBB14_31:                              # %sw.bb.69
	movl	-4(%rbp), %eax
	subl	$56, %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jne	.LBB14_33
	jmp	.LBB14_32
.LBB14_32:                              # %sw.bb.70
	callq	FillWithEs
.LBB14_33:                              # %sw.epilog.71
	jmp	.LBB14_42
.LBB14_34:                              # %sw.bb.72
	xorl	%esi, %esi
	movl	-4(%rbp), %edi
	callq	DesignateCharset
	jmp	.LBB14_42
.LBB14_35:                              # %sw.bb.73
	movl	$1, %esi
	movl	-4(%rbp), %edi
	callq	DesignateCharset
	jmp	.LBB14_42
.LBB14_36:                              # %sw.bb.74
	movl	$2, %esi
	movl	-4(%rbp), %edi
	callq	DesignateCharset
	jmp	.LBB14_42
.LBB14_37:                              # %sw.bb.75
	movl	$3, %esi
	movl	-4(%rbp), %edi
	callq	DesignateCharset
	jmp	.LBB14_42
.LBB14_38:                              # %sw.bb.76
	xorl	%esi, %esi
	movl	-4(%rbp), %eax
	andl	$31, %eax
	movl	%eax, %edi
	callq	DesignateCharset
	jmp	.LBB14_42
.LBB14_39:                              # %sw.bb.77
	movl	$1, %esi
	movl	-4(%rbp), %eax
	andl	$31, %eax
	movl	%eax, %edi
	callq	DesignateCharset
	jmp	.LBB14_42
.LBB14_40:                              # %sw.bb.79
	movl	$2, %esi
	movl	-4(%rbp), %eax
	andl	$31, %eax
	movl	%eax, %edi
	callq	DesignateCharset
	jmp	.LBB14_42
.LBB14_41:                              # %sw.bb.81
	movl	$3, %esi
	movl	-4(%rbp), %eax
	andl	$31, %eax
	movl	%eax, %edi
	callq	DesignateCharset
.LBB14_42:                              # %sw.epilog.83
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	DoESC, .Lfunc_end14-DoESC
	.cfi_endproc

	.align	16, 0x90
	.type	DoCSI,@function
DoCSI:                                  # @DoCSI
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
	subq	$272, %rsp              # imm = 0x110
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	curr, %rax
	movl	9540(%rax), %esi
	movl	%esi, -16(%rbp)
	movq	curr, %rax
	movl	9544(%rax), %esi
	movl	%esi, -20(%rbp)
	movq	curr, %rax
	cmpl	$64, 9796(%rax)
	jle	.LBB15_2
# BB#1:                                 # %if.then
	movq	curr, %rax
	movl	$64, 9796(%rax)
.LBB15_2:                               # %if.end
	movl	-8(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -24(%rbp)         # 4-byte Spill
	je	.LBB15_3
	jmp	.LBB15_239
.LBB15_239:                             # %if.end
	movl	-24(%rbp), %eax         # 4-byte Reload
	subl	$62, %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
	je	.LBB15_233
	jmp	.LBB15_240
.LBB15_240:                             # %if.end
	movl	-24(%rbp), %eax         # 4-byte Reload
	subl	$63, %eax
	movl	%eax, -32(%rbp)         # 4-byte Spill
	je	.LBB15_178
	jmp	.LBB15_238
.LBB15_3:                               # %sw.bb
	movl	-4(%rbp), %eax
	addl	$-64, %eax
	movl	%eax, %ecx
	subl	$56, %eax
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	movl	%eax, -44(%rbp)         # 4-byte Spill
	ja	.LBB15_177
# BB#253:                               # %sw.bb
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	.LJTI15_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB15_4:                               # %sw.bb.4
	cmpl	$1, -16(%rbp)
	jge	.LBB15_6
# BB#5:                                 # %if.then.6
	movl	$1, -16(%rbp)
.LBB15_6:                               # %if.end.7
	movq	curr, %rax
	cmpl	$0, 9968(%rax)
	je	.LBB15_8
# BB#7:                                 # %if.then.8
	movq	curr, %rax
	movl	9956(%rax), %ecx
	addl	-16(%rbp), %ecx
	movl	%ecx, -16(%rbp)
.LBB15_8:                               # %if.end.9
	movl	-16(%rbp), %eax
	cmpl	rows, %eax
	jle	.LBB15_10
# BB#9:                                 # %if.then.11
	movl	rows, %eax
	movl	%eax, -16(%rbp)
.LBB15_10:                              # %if.end.12
	cmpl	$1, -20(%rbp)
	jge	.LBB15_12
# BB#11:                                # %if.then.14
	movl	$1, -20(%rbp)
.LBB15_12:                              # %if.end.15
	movl	-20(%rbp), %eax
	cmpl	cols, %eax
	jle	.LBB15_14
# BB#13:                                # %if.then.17
	movl	cols, %eax
	movl	%eax, -20(%rbp)
.LBB15_14:                              # %if.end.18
	movq	curr, %rax
	addq	$24, %rax
	movl	-20(%rbp), %ecx
	addl	$-1, %ecx
	movl	%ecx, -20(%rbp)
	movl	-16(%rbp), %edx
	addl	$-1, %edx
	movl	%edx, -16(%rbp)
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	LGotoPos
	movl	-20(%rbp), %ecx
	movq	curr, %rax
	movl	%ecx, 40(%rax)
	movl	-16(%rbp), %ecx
	movq	curr, %rax
	movl	%ecx, 44(%rax)
	movq	curr, %rax
	cmpl	$0, 9520(%rax)
	je	.LBB15_16
# BB#15:                                # %if.then.23
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movq	curr, %rcx
	movl	%eax, 9520(%rcx)
.LBB15_16:                              # %if.end.26
	jmp	.LBB15_177
.LBB15_17:                              # %sw.bb.27
	cmpl	$0, -16(%rbp)
	jl	.LBB15_19
# BB#18:                                # %lor.lhs.false
	cmpl	$2, -16(%rbp)
	jle	.LBB15_20
.LBB15_19:                              # %if.then.30
	movl	$0, -16(%rbp)
.LBB15_20:                              # %if.end.31
	movl	-16(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	je	.LBB15_21
	jmp	.LBB15_259
.LBB15_259:                             # %if.end.31
	movl	-48(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	je	.LBB15_22
	jmp	.LBB15_260
.LBB15_260:                             # %if.end.31
	movl	-48(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	je	.LBB15_23
	jmp	.LBB15_24
.LBB15_21:                              # %sw.bb.32
	callq	ClearToEOS
	jmp	.LBB15_24
.LBB15_22:                              # %sw.bb.33
	callq	ClearFromBOS
	jmp	.LBB15_24
.LBB15_23:                              # %sw.bb.34
	callq	ClearScreen
	movq	curr, %rax
	addq	$24, %rax
	movq	curr, %rcx
	movl	40(%rcx), %esi
	movq	curr, %rcx
	movl	44(%rcx), %edx
	movq	%rax, %rdi
	callq	LGotoPos
.LBB15_24:                              # %sw.epilog
	jmp	.LBB15_177
.LBB15_25:                              # %sw.bb.40
	cmpl	$0, -16(%rbp)
	jl	.LBB15_27
# BB#26:                                # %lor.lhs.false.42
	cmpl	$2, -16(%rbp)
	jle	.LBB15_28
.LBB15_27:                              # %if.then.44
	movl	$3, %eax
	movl	-16(%rbp), %ecx
	movl	%eax, -60(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-60(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movl	%edx, -16(%rbp)
.LBB15_28:                              # %if.end.45
	movl	-16(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	je	.LBB15_29
	jmp	.LBB15_257
.LBB15_257:                             # %if.end.45
	movl	-64(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	je	.LBB15_30
	jmp	.LBB15_258
.LBB15_258:                             # %if.end.45
	movl	-64(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	je	.LBB15_31
	jmp	.LBB15_32
.LBB15_29:                              # %sw.bb.46
	movq	curr, %rax
	movl	40(%rax), %edi
	movl	cols, %ecx
	subl	$1, %ecx
	movl	%ecx, %esi
	callq	ClearLineRegion
	jmp	.LBB15_32
.LBB15_30:                              # %sw.bb.49
	xorl	%edi, %edi
	movq	curr, %rax
	movl	40(%rax), %esi
	callq	ClearLineRegion
	jmp	.LBB15_32
.LBB15_31:                              # %sw.bb.52
	xorl	%edi, %edi
	movl	cols, %eax
	subl	$1, %eax
	movl	%eax, %esi
	callq	ClearLineRegion
.LBB15_32:                              # %sw.epilog.54
	jmp	.LBB15_177
.LBB15_33:                              # %sw.bb.55
	movq	curr, %rax
	movl	40(%rax), %ecx
	cmpl	$0, -16(%rbp)
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	je	.LBB15_35
# BB#34:                                # %cond.true
	movl	-16(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	jmp	.LBB15_36
.LBB15_35:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	jmp	.LBB15_36
.LBB15_36:                              # %cond.end
	movl	-80(%rbp), %eax         # 4-byte Reload
	movl	-76(%rbp), %ecx         # 4-byte Reload
	addl	%eax, %ecx
	movl	%ecx, -16(%rbp)
	movq	curr, %rdx
	movl	40(%rdx), %edi
	movl	-16(%rbp), %eax
	cmpl	cols, %eax
	movl	%edi, -84(%rbp)         # 4-byte Spill
	jge	.LBB15_38
# BB#37:                                # %cond.true.64
	movl	-16(%rbp), %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	jmp	.LBB15_39
.LBB15_38:                              # %cond.false.65
	movl	cols, %eax
	subl	$1, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
.LBB15_39:                              # %cond.end.67
	movl	-88(%rbp), %eax         # 4-byte Reload
	movl	-84(%rbp), %edi         # 4-byte Reload
	movl	%eax, %esi
	callq	ClearLineRegion
	jmp	.LBB15_177
.LBB15_40:                              # %sw.bb.69
	cmpl	$0, -16(%rbp)
	je	.LBB15_42
# BB#41:                                # %cond.true.71
	movl	-16(%rbp), %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB15_43
.LBB15_42:                              # %cond.false.72
	movl	$1, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB15_43
.LBB15_43:                              # %cond.end.73
	movl	-92(%rbp), %eax         # 4-byte Reload
	movl	%eax, %edi
	callq	CursorUp
	jmp	.LBB15_177
.LBB15_44:                              # %sw.bb.75
	cmpl	$0, -16(%rbp)
	je	.LBB15_46
# BB#45:                                # %cond.true.77
	movl	-16(%rbp), %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jmp	.LBB15_47
.LBB15_46:                              # %cond.false.78
	movl	$1, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jmp	.LBB15_47
.LBB15_47:                              # %cond.end.79
	movl	-96(%rbp), %eax         # 4-byte Reload
	movl	%eax, %edi
	callq	CursorDown
	jmp	.LBB15_177
.LBB15_48:                              # %sw.bb.81
	cmpl	$0, -16(%rbp)
	je	.LBB15_50
# BB#49:                                # %cond.true.83
	movl	-16(%rbp), %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB15_51
.LBB15_50:                              # %cond.false.84
	movl	$1, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB15_51
.LBB15_51:                              # %cond.end.85
	movl	-100(%rbp), %eax        # 4-byte Reload
	movl	%eax, %edi
	callq	CursorRight
	jmp	.LBB15_177
.LBB15_52:                              # %sw.bb.87
	cmpl	$0, -16(%rbp)
	je	.LBB15_54
# BB#53:                                # %cond.true.89
	movl	-16(%rbp), %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB15_55
.LBB15_54:                              # %cond.false.90
	movl	$1, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB15_55
.LBB15_55:                              # %cond.end.91
	movl	-104(%rbp), %eax        # 4-byte Reload
	movl	%eax, %edi
	callq	CursorLeft
	jmp	.LBB15_177
.LBB15_56:                              # %sw.bb.93
	movq	curr, %rax
	movl	$0, 40(%rax)
	cmpl	$0, -16(%rbp)
	je	.LBB15_58
# BB#57:                                # %cond.true.97
	movl	-16(%rbp), %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB15_59
.LBB15_58:                              # %cond.false.98
	movl	$1, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB15_59
.LBB15_59:                              # %cond.end.99
	movl	-108(%rbp), %eax        # 4-byte Reload
	movl	%eax, %edi
	callq	CursorDown
	jmp	.LBB15_177
.LBB15_60:                              # %sw.bb.101
	movq	curr, %rax
	movl	$0, 40(%rax)
	cmpl	$0, -16(%rbp)
	je	.LBB15_62
# BB#61:                                # %cond.true.105
	movl	-16(%rbp), %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB15_63
.LBB15_62:                              # %cond.false.106
	movl	$1, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB15_63
.LBB15_63:                              # %cond.end.107
	movl	-112(%rbp), %eax        # 4-byte Reload
	movl	%eax, %edi
	callq	CursorUp
	jmp	.LBB15_177
.LBB15_64:                              # %sw.bb.109
	cmpl	$0, -16(%rbp)
	je	.LBB15_66
# BB#65:                                # %cond.true.111
	movl	-16(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB15_67
.LBB15_66:                              # %cond.false.113
	xorl	%eax, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB15_67
.LBB15_67:                              # %cond.end.114
	movl	-116(%rbp), %eax        # 4-byte Reload
	movq	curr, %rcx
	movl	%eax, 40(%rcx)
	movq	curr, %rcx
	movl	40(%rcx), %eax
	cmpl	cols, %eax
	jl	.LBB15_69
# BB#68:                                # %if.then.121
	movl	cols, %eax
	subl	$1, %eax
	movq	curr, %rcx
	movl	%eax, 40(%rcx)
.LBB15_69:                              # %if.end.125
	movq	curr, %rax
	addq	$24, %rax
	movq	curr, %rcx
	movl	40(%rcx), %esi
	movq	curr, %rcx
	movl	44(%rcx), %edx
	movq	%rax, %rdi
	callq	LGotoPos
	jmp	.LBB15_177
.LBB15_70:                              # %sw.bb.131
	cmpl	$0, -16(%rbp)
	je	.LBB15_72
# BB#71:                                # %cond.true.133
	movl	-16(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB15_73
.LBB15_72:                              # %cond.false.135
	xorl	%eax, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB15_73
.LBB15_73:                              # %cond.end.136
	movl	-120(%rbp), %eax        # 4-byte Reload
	movq	curr, %rcx
	movl	%eax, 44(%rcx)
	movq	curr, %rcx
	movl	44(%rcx), %eax
	cmpl	rows, %eax
	jl	.LBB15_75
# BB#74:                                # %if.then.143
	movl	rows, %eax
	subl	$1, %eax
	movq	curr, %rcx
	movl	%eax, 44(%rcx)
.LBB15_75:                              # %if.end.147
	movq	curr, %rax
	addq	$24, %rax
	movq	curr, %rcx
	movl	40(%rcx), %esi
	movq	curr, %rcx
	movl	44(%rcx), %edx
	movq	%rax, %rdi
	callq	LGotoPos
	jmp	.LBB15_177
.LBB15_76:                              # %sw.bb.153
	callq	SelectRendition
	jmp	.LBB15_177
.LBB15_77:                              # %sw.bb.154
	cmpl	$0, -16(%rbp)
	jne	.LBB15_79
# BB#78:                                # %if.then.156
	movq	curr, %rax
	movslq	40(%rax), %rax
	movq	curr, %rcx
	movq	10808(%rcx), %rcx
	movb	$0, (%rcx,%rax)
	jmp	.LBB15_82
.LBB15_79:                              # %if.else
	cmpl	$3, -16(%rbp)
	jne	.LBB15_81
# BB#80:                                # %if.then.161
	xorl	%esi, %esi
	movq	curr, %rax
	movq	10808(%rax), %rdi
	movslq	cols, %rdx
	callq	memset
.LBB15_81:                              # %if.end.163
	jmp	.LBB15_82
.LBB15_82:                              # %if.end.164
	jmp	.LBB15_177
.LBB15_83:                              # %sw.bb.165
	cmpl	$0, -16(%rbp)
	jne	.LBB15_85
# BB#84:                                # %if.then.167
	movl	$1, -16(%rbp)
.LBB15_85:                              # %if.end.168
	cmpl	$0, -20(%rbp)
	jne	.LBB15_87
# BB#86:                                # %if.then.170
	movl	rows, %eax
	movl	%eax, -20(%rbp)
.LBB15_87:                              # %if.end.171
	cmpl	$1, -16(%rbp)
	jl	.LBB15_90
# BB#88:                                # %lor.lhs.false.174
	movl	-20(%rbp), %eax
	cmpl	rows, %eax
	jg	.LBB15_90
# BB#89:                                # %lor.lhs.false.177
	movl	-16(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.LBB15_91
.LBB15_90:                              # %if.then.180
	jmp	.LBB15_177
.LBB15_91:                              # %if.end.181
	movl	-16(%rbp), %eax
	subl	$1, %eax
	movq	curr, %rcx
	movl	%eax, 9956(%rcx)
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movq	curr, %rcx
	movl	%eax, 9960(%rcx)
	movq	curr, %rcx
	cmpl	$0, 9968(%rcx)
	je	.LBB15_93
# BB#92:                                # %if.then.187
	movq	curr, %rax
	movl	9956(%rax), %ecx
	movq	curr, %rax
	movl	%ecx, 44(%rax)
	movq	curr, %rax
	movl	$0, 40(%rax)
	jmp	.LBB15_94
.LBB15_93:                              # %if.else.193
	movq	curr, %rax
	movl	$0, 40(%rax)
	movq	curr, %rax
	movl	$0, 44(%rax)
.LBB15_94:                              # %if.end.198
	movq	curr, %rax
	addq	$24, %rax
	movq	curr, %rcx
	movl	40(%rcx), %esi
	movq	curr, %rcx
	movl	44(%rcx), %edx
	movq	%rax, %rdi
	callq	LGotoPos
	jmp	.LBB15_177
.LBB15_95:                              # %sw.bb.204
	movq	curr, %rax
	addq	$9912, %rax             # imm = 0x26B8
	movq	%rax, %rdi
	callq	SaveCursor
	jmp	.LBB15_177
.LBB15_96:                              # %sw.bb.205
	movl	-16(%rbp), %eax
	movl	%eax, %ecx
	subl	$7, %ecx
	movl	%eax, -124(%rbp)        # 4-byte Spill
	movl	%ecx, -128(%rbp)        # 4-byte Spill
	je	.LBB15_101
	jmp	.LBB15_254
.LBB15_254:                             # %sw.bb.205
	movl	-124(%rbp), %eax        # 4-byte Reload
	subl	$8, %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	je	.LBB15_105
	jmp	.LBB15_255
.LBB15_255:                             # %sw.bb.205
	movl	-124(%rbp), %eax        # 4-byte Reload
	subl	$11, %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	je	.LBB15_97
	jmp	.LBB15_256
.LBB15_256:                             # %sw.bb.205
	movl	-124(%rbp), %eax        # 4-byte Reload
	subl	$21, %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
	je	.LBB15_102
	jmp	.LBB15_113
.LBB15_97:                              # %sw.bb.206
	movq	curr, %rax
	cmpq	$0, 24(%rax)
	je	.LBB15_99
# BB#98:                                # %if.then.209
	movabsq	$.L.str.22, %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	%eax, %edx
	callq	Report
	jmp	.LBB15_100
.LBB15_99:                              # %if.else.210
	movabsq	$.L.str.23, %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	%eax, %edx
	callq	Report
.LBB15_100:                             # %if.end.211
	jmp	.LBB15_114
.LBB15_101:                             # %sw.bb.212
	xorl	%esi, %esi
	movq	curr, %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	LRefreshAll
	jmp	.LBB15_114
.LBB15_102:                             # %sw.bb.214
	movq	curr, %rax
	movq	8736(%rax), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -16(%rbp)
	movq	curr, %rax
	movl	4624(%rax), %ecx
	addl	$5, %ecx
	addl	-16(%rbp), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %eax
	cmpq	$4096, %rax             # imm = 0x1000
	ja	.LBB15_104
# BB#103:                               # %if.then.221
	movabsq	$.L.str.24, %rdi
	movl	$3, %eax
	movl	%eax, %edx
	movq	curr, %rcx
	addq	$528, %rcx              # imm = 0x210
	movq	curr, %rsi
	movslq	4624(%rsi), %rsi
	addq	%rsi, %rcx
	movq	%rcx, %rsi
	callq	bcopy
	movq	curr, %rcx
	movq	8736(%rcx), %rdi
	movq	curr, %rcx
	addq	$528, %rcx              # imm = 0x210
	movq	curr, %rdx
	movslq	4624(%rdx), %rdx
	addq	%rdx, %rcx
	addq	$3, %rcx
	movslq	-16(%rbp), %rdx
	movq	%rcx, %rsi
	callq	bcopy
	movabsq	$.L.str.25, %rdi
	movl	$2, %eax
	movl	%eax, %edx
	movq	curr, %rcx
	addq	$528, %rcx              # imm = 0x210
	movq	curr, %rsi
	movslq	4624(%rsi), %rsi
	addq	%rsi, %rcx
	addq	$3, %rcx
	movslq	-16(%rbp), %rsi
	addq	%rsi, %rcx
	movq	%rcx, %rsi
	callq	bcopy
	movl	-16(%rbp), %eax
	addl	$5, %eax
	movq	curr, %rcx
	addl	4624(%rcx), %eax
	movl	%eax, 4624(%rcx)
.LBB15_104:                             # %if.end.242
	jmp	.LBB15_114
.LBB15_105:                             # %sw.bb.243
	movq	curr, %rax
	movl	9548(%rax), %ecx
	movl	%ecx, -16(%rbp)
	cmpl	$1, -16(%rbp)
	jge	.LBB15_107
# BB#106:                               # %if.then.248
	movq	curr, %rax
	movl	32(%rax), %ecx
	movl	%ecx, -16(%rbp)
.LBB15_107:                             # %if.end.250
	cmpl	$1, -20(%rbp)
	jge	.LBB15_109
# BB#108:                               # %if.then.253
	movq	curr, %rax
	movl	36(%rax), %ecx
	movl	%ecx, -20(%rbp)
.LBB15_109:                             # %if.end.255
	cmpl	$10000, -16(%rbp)       # imm = 0x2710
	jg	.LBB15_111
# BB#110:                               # %lor.lhs.false.258
	cmpl	$10000, -20(%rbp)       # imm = 0x2710
	jle	.LBB15_112
.LBB15_111:                             # %if.then.261
	jmp	.LBB15_114
.LBB15_112:                             # %if.end.262
	movq	curr, %rdi
	movl	-16(%rbp), %esi
	movl	-20(%rbp), %edx
	callq	WChangeSize
	movq	curr, %rdi
	movl	32(%rdi), %edx
	movl	%edx, cols
	movq	curr, %rdi
	movl	36(%rdi), %edx
	movl	%edx, rows
	jmp	.LBB15_114
.LBB15_113:                             # %sw.default
	jmp	.LBB15_114
.LBB15_114:                             # %sw.epilog.267
	jmp	.LBB15_177
.LBB15_115:                             # %sw.bb.268
	movq	curr, %rax
	addq	$9912, %rax             # imm = 0x26B8
	movq	%rax, %rdi
	callq	RestoreCursor
	jmp	.LBB15_177
.LBB15_116:                             # %sw.bb.270
	cmpl	$0, -16(%rbp)
	jne	.LBB15_118
# BB#117:                               # %if.then.272
	movl	$1, -16(%rbp)
.LBB15_118:                             # %if.end.273
	jmp	.LBB15_119
.LBB15_119:                             # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -16(%rbp)
	cmpl	$0, %eax
	je	.LBB15_121
# BB#120:                               # %while.body
                                        #   in Loop: Header=BB15_119 Depth=1
	callq	ForwardTab
	jmp	.LBB15_119
.LBB15_121:                             # %while.end
	jmp	.LBB15_177
.LBB15_122:                             # %sw.bb.276
	cmpl	$0, -16(%rbp)
	jne	.LBB15_124
# BB#123:                               # %if.then.278
	movl	$1, -16(%rbp)
.LBB15_124:                             # %if.end.279
	jmp	.LBB15_125
.LBB15_125:                             # %while.cond.280
                                        # =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -16(%rbp)
	cmpl	$0, %eax
	je	.LBB15_127
# BB#126:                               # %while.body.283
                                        #   in Loop: Header=BB15_125 Depth=1
	callq	BackwardTab
	jmp	.LBB15_125
.LBB15_127:                             # %while.end.284
	jmp	.LBB15_177
.LBB15_128:                             # %sw.bb.285
	cmpl	$0, -16(%rbp)
	je	.LBB15_130
# BB#129:                               # %cond.true.287
	movl	-16(%rbp), %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
	jmp	.LBB15_131
.LBB15_130:                             # %cond.false.288
	movl	$1, %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
	jmp	.LBB15_131
.LBB15_131:                             # %cond.end.289
	movl	-144(%rbp), %eax        # 4-byte Reload
	movl	%eax, %edi
	callq	InsertLine
	jmp	.LBB15_177
.LBB15_132:                             # %sw.bb.291
	cmpl	$0, -16(%rbp)
	je	.LBB15_134
# BB#133:                               # %cond.true.293
	movl	-16(%rbp), %eax
	movl	%eax, -148(%rbp)        # 4-byte Spill
	jmp	.LBB15_135
.LBB15_134:                             # %cond.false.294
	movl	$1, %eax
	movl	%eax, -148(%rbp)        # 4-byte Spill
	jmp	.LBB15_135
.LBB15_135:                             # %cond.end.295
	movl	-148(%rbp), %eax        # 4-byte Reload
	movl	%eax, %edi
	callq	DeleteLine
	jmp	.LBB15_177
.LBB15_136:                             # %sw.bb.297
	cmpl	$0, -16(%rbp)
	je	.LBB15_138
# BB#137:                               # %cond.true.299
	movl	-16(%rbp), %eax
	movl	%eax, -152(%rbp)        # 4-byte Spill
	jmp	.LBB15_139
.LBB15_138:                             # %cond.false.300
	movl	$1, %eax
	movl	%eax, -152(%rbp)        # 4-byte Spill
	jmp	.LBB15_139
.LBB15_139:                             # %cond.end.301
	movl	-152(%rbp), %eax        # 4-byte Reload
	movl	%eax, %edi
	callq	DeleteChar
	jmp	.LBB15_177
.LBB15_140:                             # %sw.bb.303
	cmpl	$0, -16(%rbp)
	je	.LBB15_142
# BB#141:                               # %cond.true.305
	movl	-16(%rbp), %eax
	movl	%eax, -156(%rbp)        # 4-byte Spill
	jmp	.LBB15_143
.LBB15_142:                             # %cond.false.306
	movl	$1, %eax
	movl	%eax, -156(%rbp)        # 4-byte Spill
	jmp	.LBB15_143
.LBB15_143:                             # %cond.end.307
	movl	-156(%rbp), %eax        # 4-byte Reload
	movl	%eax, %edi
	callq	InsertChar
	jmp	.LBB15_177
.LBB15_144:                             # %sw.bb.309
	movl	$1, %edi
	callq	ASetMode
	jmp	.LBB15_177
.LBB15_145:                             # %sw.bb.310
	xorl	%edi, %edi
	callq	ASetMode
	jmp	.LBB15_177
.LBB15_146:                             # %sw.bb.311
	cmpl	$5, -16(%rbp)
	jne	.LBB15_148
# BB#147:                               # %if.then.314
	callq	PrintStart
.LBB15_148:                             # %if.end.315
	jmp	.LBB15_177
.LBB15_149:                             # %sw.bb.316
	cmpl	$5, -16(%rbp)
	jne	.LBB15_151
# BB#150:                               # %if.then.319
	movabsq	$.L.str.26, %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	%eax, %edx
	callq	Report
	jmp	.LBB15_154
.LBB15_151:                             # %if.else.320
	cmpl	$6, -16(%rbp)
	jne	.LBB15_153
# BB#152:                               # %if.then.323
	movabsq	$.L.str.27, %rdi
	movq	curr, %rax
	movl	44(%rax), %ecx
	addl	$1, %ecx
	movq	curr, %rax
	movl	40(%rax), %edx
	addl	$1, %edx
	movl	%ecx, %esi
	callq	Report
.LBB15_153:                             # %if.end.330
	jmp	.LBB15_154
.LBB15_154:                             # %if.end.331
	jmp	.LBB15_177
.LBB15_155:                             # %sw.bb.332
	cmpl	$0, -16(%rbp)
	jne	.LBB15_157
# BB#156:                               # %if.then.335
	movabsq	$.L.str.21, %rdi
	movl	$1, %esi
	movl	$2, %edx
	callq	Report
.LBB15_157:                             # %if.end.336
	jmp	.LBB15_177
.LBB15_158:                             # %sw.bb.337
	cmpl	$0, -16(%rbp)
	je	.LBB15_160
# BB#159:                               # %lor.lhs.false.340
	cmpl	$1, -16(%rbp)
	jne	.LBB15_161
.LBB15_160:                             # %if.then.343
	movabsq	$.L.str.28, %rdi
	xorl	%edx, %edx
	movl	-16(%rbp), %eax
	addl	$2, %eax
	movl	%eax, %esi
	callq	Report
.LBB15_161:                             # %if.end.345
	jmp	.LBB15_177
.LBB15_162:                             # %sw.bb.346
	cmpl	$6, -16(%rbp)
	je	.LBB15_164
# BB#163:                               # %lor.lhs.false.349
	cmpl	$7, -16(%rbp)
	jne	.LBB15_168
.LBB15_164:                             # %if.then.352
	movl	$7, %eax
	subl	-16(%rbp), %eax
	movq	curr, %rcx
	movl	%eax, 9988(%rcx)
	movq	curr, %rcx
	addq	$24, %rcx
	movq	curr, %rdx
	cmpl	$0, 9988(%rdx)
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	je	.LBB15_166
# BB#165:                               # %cond.true.357
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -172(%rbp)        # 4-byte Spill
	jmp	.LBB15_167
.LBB15_166:                             # %cond.false.358
	movq	curr, %rax
	movl	9992(%rax), %ecx
	movl	%ecx, -172(%rbp)        # 4-byte Spill
.LBB15_167:                             # %cond.end.359
	movl	-172(%rbp), %eax        # 4-byte Reload
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	LCursorVisibility
.LBB15_168:                             # %if.end.361
	jmp	.LBB15_177
.LBB15_169:                             # %sw.bb.362
	cmpl	$0, -16(%rbp)
	je	.LBB15_171
# BB#170:                               # %cond.true.364
	movl	-16(%rbp), %eax
	movl	%eax, -176(%rbp)        # 4-byte Spill
	jmp	.LBB15_172
.LBB15_171:                             # %cond.false.365
	movl	$1, %eax
	movl	%eax, -176(%rbp)        # 4-byte Spill
	jmp	.LBB15_172
.LBB15_172:                             # %cond.end.366
	movl	-176(%rbp), %eax        # 4-byte Reload
	movl	%eax, %edi
	callq	ScrollRegion
	jmp	.LBB15_177
.LBB15_173:                             # %sw.bb.368
	cmpl	$0, -16(%rbp)
	je	.LBB15_175
# BB#174:                               # %cond.true.370
	xorl	%eax, %eax
	subl	-16(%rbp), %eax
	movl	%eax, -180(%rbp)        # 4-byte Spill
	jmp	.LBB15_176
.LBB15_175:                             # %cond.false.372
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -180(%rbp)        # 4-byte Spill
	jmp	.LBB15_176
.LBB15_176:                             # %cond.end.373
	movl	-180(%rbp), %eax        # 4-byte Reload
	movl	%eax, %edi
	callq	ScrollRegion
.LBB15_177:                             # %sw.epilog.375
	jmp	.LBB15_238
.LBB15_178:                             # %sw.bb.376
	movl	$0, -20(%rbp)
.LBB15_179:                             # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movq	curr, %rcx
	cmpl	9796(%rcx), %eax
	jge	.LBB15_232
# BB#180:                               # %for.body
                                        #   in Loop: Header=BB15_179 Depth=1
	movslq	-20(%rbp), %rax
	movq	curr, %rcx
	movl	9540(%rcx,%rax,4), %edx
	movl	%edx, -16(%rbp)
# BB#181:                               # %do.body
                                        #   in Loop: Header=BB15_179 Depth=1
	jmp	.LBB15_182
.LBB15_182:                             # %do.end
                                        #   in Loop: Header=BB15_179 Depth=1
	cmpl	$104, -4(%rbp)
	je	.LBB15_185
# BB#183:                               # %land.lhs.true
                                        #   in Loop: Header=BB15_179 Depth=1
	cmpl	$108, -4(%rbp)
	je	.LBB15_185
# BB#184:                               # %if.then.387
	jmp	.LBB15_232
.LBB15_185:                             # %if.end.388
                                        #   in Loop: Header=BB15_179 Depth=1
	movl	-4(%rbp), %eax
	subl	$104, %eax
	sete	%cl
	movzbl	%cl, %edx
	movl	%edx, -12(%rbp)
	movl	-16(%rbp), %edx
	movl	%edx, %esi
	subl	$1, %esi
	movl	%eax, -184(%rbp)        # 4-byte Spill
	movl	%edx, -188(%rbp)        # 4-byte Spill
	movl	%esi, -192(%rbp)        # 4-byte Spill
	je	.LBB15_186
	jmp	.LBB15_241
.LBB15_241:                             # %if.end.388
                                        #   in Loop: Header=BB15_179 Depth=1
	movl	-188(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -196(%rbp)        # 4-byte Spill
	je	.LBB15_187
	jmp	.LBB15_242
.LBB15_242:                             # %if.end.388
                                        #   in Loop: Header=BB15_179 Depth=1
	movl	-188(%rbp), %eax        # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -200(%rbp)        # 4-byte Spill
	je	.LBB15_192
	jmp	.LBB15_243
.LBB15_243:                             # %if.end.388
                                        #   in Loop: Header=BB15_179 Depth=1
	movl	-188(%rbp), %eax        # 4-byte Reload
	subl	$5, %eax
	movl	%eax, -204(%rbp)        # 4-byte Spill
	je	.LBB15_196
	jmp	.LBB15_244
.LBB15_244:                             # %if.end.388
                                        #   in Loop: Header=BB15_179 Depth=1
	movl	-188(%rbp), %eax        # 4-byte Reload
	subl	$6, %eax
	movl	%eax, -208(%rbp)        # 4-byte Spill
	je	.LBB15_199
	jmp	.LBB15_245
.LBB15_245:                             # %if.end.388
                                        #   in Loop: Header=BB15_179 Depth=1
	movl	-188(%rbp), %eax        # 4-byte Reload
	subl	$7, %eax
	movl	%eax, -212(%rbp)        # 4-byte Spill
	je	.LBB15_203
	jmp	.LBB15_246
.LBB15_246:                             # %if.end.388
                                        #   in Loop: Header=BB15_179 Depth=1
	movl	-188(%rbp), %eax        # 4-byte Reload
	subl	$9, %eax
	movl	%eax, -216(%rbp)        # 4-byte Spill
	je	.LBB15_204
	jmp	.LBB15_247
.LBB15_247:                             # %if.end.388
                                        #   in Loop: Header=BB15_179 Depth=1
	movl	-188(%rbp), %eax        # 4-byte Reload
	subl	$25, %eax
	movl	%eax, -220(%rbp)        # 4-byte Spill
	je	.LBB15_205
	jmp	.LBB15_248
.LBB15_248:                             # %if.end.388
                                        #   in Loop: Header=BB15_179 Depth=1
	movl	-188(%rbp), %eax        # 4-byte Reload
	subl	$47, %eax
	movl	%eax, -224(%rbp)        # 4-byte Spill
	je	.LBB15_209
	jmp	.LBB15_249
.LBB15_249:                             # %if.end.388
                                        #   in Loop: Header=BB15_179 Depth=1
	movl	-188(%rbp), %eax        # 4-byte Reload
	addl	$-1000, %eax            # imm = 0xFFFFFFFFFFFFFC18
	subl	$4, %eax
	movl	%eax, -228(%rbp)        # 4-byte Spill
	jb	.LBB15_226
	jmp	.LBB15_250
.LBB15_250:                             # %if.end.388
                                        #   in Loop: Header=BB15_179 Depth=1
	movl	-188(%rbp), %eax        # 4-byte Reload
	subl	$1047, %eax             # imm = 0x417
	movl	%eax, -232(%rbp)        # 4-byte Spill
	je	.LBB15_209
	jmp	.LBB15_251
.LBB15_251:                             # %if.end.388
                                        #   in Loop: Header=BB15_179 Depth=1
	movl	-188(%rbp), %eax        # 4-byte Reload
	subl	$1048, %eax             # imm = 0x418
	movl	%eax, -236(%rbp)        # 4-byte Spill
	je	.LBB15_222
	jmp	.LBB15_252
.LBB15_252:                             # %if.end.388
                                        #   in Loop: Header=BB15_179 Depth=1
	movl	-188(%rbp), %eax        # 4-byte Reload
	subl	$1049, %eax             # imm = 0x419
	movl	%eax, -240(%rbp)        # 4-byte Spill
	je	.LBB15_209
	jmp	.LBB15_230
.LBB15_186:                             # %sw.bb.391
                                        #   in Loop: Header=BB15_179 Depth=1
	movq	curr, %rax
	addq	$24, %rax
	movl	-12(%rbp), %ecx
	movq	curr, %rdx
	movl	%ecx, 9980(%rdx)
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	LCursorkeysMode
	jmp	.LBB15_230
.LBB15_187:                             # %sw.bb.393
                                        #   in Loop: Header=BB15_179 Depth=1
	cmpl	$0, -12(%rbp)
	je	.LBB15_191
# BB#188:                               # %if.then.395
                                        #   in Loop: Header=BB15_179 Depth=1
	movq	curr, %rax
	cmpl	$0, 48(%rax)
	je	.LBB15_190
# BB#189:                               # %if.then.398
                                        #   in Loop: Header=BB15_179 Depth=1
	jmp	.LBB15_230
.LBB15_190:                             # %if.end.399
                                        #   in Loop: Header=BB15_179 Depth=1
	movq	curr, %rax
	movb	$0, 9879(%rax)
	movq	curr, %rax
	movb	$0, 9878(%rax)
	movq	curr, %rax
	movl	$0, 9904(%rax)
	movq	curr, %rax
	movl	$0, 9900(%rax)
	movq	curr, %rax
	movl	$0, 9896(%rax)
	movq	curr, %rax
	movl	$0, 9892(%rax)
	movq	curr, %rax
	movl	$0, 9884(%rax)
	movq	curr, %rax
	movl	$2, 9888(%rax)
	movq	curr, %rax
	movl	$0, 9908(%rax)
.LBB15_191:                             # %if.end.407
                                        #   in Loop: Header=BB15_179 Depth=1
	jmp	.LBB15_230
.LBB15_192:                             # %sw.bb.408
                                        #   in Loop: Header=BB15_179 Depth=1
	cmpl	$0, -12(%rbp)
	je	.LBB15_194
# BB#193:                               # %cond.true.410
                                        #   in Loop: Header=BB15_179 Depth=1
	movl	Z0width, %eax
	movl	%eax, -244(%rbp)        # 4-byte Spill
	jmp	.LBB15_195
.LBB15_194:                             # %cond.false.411
                                        #   in Loop: Header=BB15_179 Depth=1
	movl	Z1width, %eax
	movl	%eax, -244(%rbp)        # 4-byte Spill
.LBB15_195:                             # %cond.end.412
                                        #   in Loop: Header=BB15_179 Depth=1
	movl	-244(%rbp), %eax        # 4-byte Reload
	movl	%eax, -12(%rbp)
	callq	ClearScreen
	movq	curr, %rcx
	movl	$0, 40(%rcx)
	movq	curr, %rcx
	movl	$0, 44(%rcx)
	movq	curr, %rdi
	movl	-12(%rbp), %esi
	movq	curr, %rcx
	movl	36(%rcx), %edx
	callq	WChangeSize
	movq	curr, %rcx
	movl	32(%rcx), %eax
	movl	%eax, cols
	movq	curr, %rcx
	movl	36(%rcx), %eax
	movl	%eax, rows
	jmp	.LBB15_230
.LBB15_196:                             # %sw.bb.424
                                        #   in Loop: Header=BB15_179 Depth=1
	movl	-12(%rbp), %eax
	movq	curr, %rcx
	cmpl	9984(%rcx), %eax
	je	.LBB15_198
# BB#197:                               # %if.then.427
                                        #   in Loop: Header=BB15_179 Depth=1
	movq	curr, %rdi
	movl	-12(%rbp), %esi
	callq	WReverseVideo
.LBB15_198:                             # %if.end.428
                                        #   in Loop: Header=BB15_179 Depth=1
	movl	-12(%rbp), %eax
	movq	curr, %rcx
	movl	%eax, 9984(%rcx)
	jmp	.LBB15_230
.LBB15_199:                             # %sw.bb.430
                                        #   in Loop: Header=BB15_179 Depth=1
	movl	-12(%rbp), %eax
	movq	curr, %rcx
	movl	%eax, 9968(%rcx)
	cmpl	$0, %eax
	je	.LBB15_201
# BB#200:                               # %if.then.434
                                        #   in Loop: Header=BB15_179 Depth=1
	movq	curr, %rax
	movl	9956(%rax), %ecx
	movq	curr, %rax
	movl	%ecx, 44(%rax)
	movq	curr, %rax
	movl	$0, 40(%rax)
	jmp	.LBB15_202
.LBB15_201:                             # %if.else.440
                                        #   in Loop: Header=BB15_179 Depth=1
	movq	curr, %rax
	movl	$0, 40(%rax)
	movq	curr, %rax
	movl	$0, 44(%rax)
.LBB15_202:                             # %if.end.445
                                        #   in Loop: Header=BB15_179 Depth=1
	movq	curr, %rax
	addq	$24, %rax
	movq	curr, %rcx
	movl	40(%rcx), %esi
	movq	curr, %rcx
	movl	44(%rcx), %edx
	movq	%rax, %rdi
	callq	LGotoPos
	jmp	.LBB15_230
.LBB15_203:                             # %sw.bb.451
                                        #   in Loop: Header=BB15_179 Depth=1
	movl	-12(%rbp), %eax
	movq	curr, %rcx
	movl	%eax, 9964(%rcx)
	jmp	.LBB15_230
.LBB15_204:                             # %sw.bb.452
                                        #   in Loop: Header=BB15_179 Depth=1
	xorl	%eax, %eax
	movl	$9, %ecx
	cmpl	$0, -12(%rbp)
	cmovnel	%ecx, %eax
	movq	curr, %rdx
	movl	%eax, 10852(%rdx)
	movq	curr, %rdx
	addq	$24, %rdx
	movq	curr, %rsi
	movl	10852(%rsi), %esi
	movq	%rdx, %rdi
	callq	LMouseMode
	jmp	.LBB15_230
.LBB15_205:                             # %sw.bb.457
                                        #   in Loop: Header=BB15_179 Depth=1
	cmpl	$0, -12(%rbp)
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %ecx
	movq	curr, %rdx
	movl	%ecx, 9988(%rdx)
	movq	curr, %rdx
	addq	$24, %rdx
	movq	curr, %rsi
	cmpl	$0, 9988(%rsi)
	movq	%rdx, -256(%rbp)        # 8-byte Spill
	je	.LBB15_207
# BB#206:                               # %cond.true.463
                                        #   in Loop: Header=BB15_179 Depth=1
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -260(%rbp)        # 4-byte Spill
	jmp	.LBB15_208
.LBB15_207:                             # %cond.false.464
                                        #   in Loop: Header=BB15_179 Depth=1
	movq	curr, %rax
	movl	9992(%rax), %ecx
	movl	%ecx, -260(%rbp)        # 4-byte Spill
.LBB15_208:                             # %cond.end.466
                                        #   in Loop: Header=BB15_179 Depth=1
	movl	-260(%rbp), %eax        # 4-byte Reload
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	LCursorVisibility
	jmp	.LBB15_230
.LBB15_209:                             # %sw.bb.468
                                        #   in Loop: Header=BB15_179 Depth=1
	cmpl	$0, use_altscreen
	je	.LBB15_221
# BB#210:                               # %if.then.470
                                        #   in Loop: Header=BB15_179 Depth=1
	cmpl	$0, -12(%rbp)
	je	.LBB15_214
# BB#211:                               # %if.then.472
                                        #   in Loop: Header=BB15_179 Depth=1
	movq	curr, %rax
	cmpl	$0, 12712(%rax)
	jne	.LBB15_213
# BB#212:                               # %if.then.474
                                        #   in Loop: Header=BB15_179 Depth=1
	movq	curr, %rax
	addq	$12712, %rax            # imm = 0x31A8
	addq	$44, %rax
	movq	%rax, %rdi
	callq	SaveCursor
	movq	curr, %rdi
	callq	EnterAltScreen
.LBB15_213:                             # %if.end.476
                                        #   in Loop: Header=BB15_179 Depth=1
	jmp	.LBB15_217
.LBB15_214:                             # %if.else.477
                                        #   in Loop: Header=BB15_179 Depth=1
	movq	curr, %rax
	cmpl	$0, 12712(%rax)
	je	.LBB15_216
# BB#215:                               # %if.then.481
                                        #   in Loop: Header=BB15_179 Depth=1
	movq	curr, %rax
	addq	$12712, %rax            # imm = 0x31A8
	addq	$44, %rax
	movq	%rax, %rdi
	callq	RestoreCursor
	movq	curr, %rdi
	callq	LeaveAltScreen
.LBB15_216:                             # %if.end.484
                                        #   in Loop: Header=BB15_179 Depth=1
	jmp	.LBB15_217
.LBB15_217:                             # %if.end.485
                                        #   in Loop: Header=BB15_179 Depth=1
	cmpl	$47, -16(%rbp)
	jne	.LBB15_220
# BB#218:                               # %land.lhs.true.488
                                        #   in Loop: Header=BB15_179 Depth=1
	cmpl	$0, -12(%rbp)
	jne	.LBB15_220
# BB#219:                               # %if.then.490
                                        #   in Loop: Header=BB15_179 Depth=1
	movq	curr, %rax
	movl	$0, 9912(%rax)
.LBB15_220:                             # %if.end.493
                                        #   in Loop: Header=BB15_179 Depth=1
	xorl	%esi, %esi
	movq	curr, %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	LRefreshAll
	movq	curr, %rax
	addq	$24, %rax
	movq	curr, %rdi
	movl	40(%rdi), %esi
	movq	curr, %rdi
	movl	44(%rdi), %edx
	movq	%rax, %rdi
	callq	LGotoPos
.LBB15_221:                             # %if.end.500
                                        #   in Loop: Header=BB15_179 Depth=1
	jmp	.LBB15_230
.LBB15_222:                             # %sw.bb.501
                                        #   in Loop: Header=BB15_179 Depth=1
	cmpl	$0, -12(%rbp)
	je	.LBB15_224
# BB#223:                               # %if.then.503
                                        #   in Loop: Header=BB15_179 Depth=1
	movq	curr, %rax
	addq	$9912, %rax             # imm = 0x26B8
	movq	%rax, %rdi
	callq	SaveCursor
	jmp	.LBB15_225
.LBB15_224:                             # %if.else.505
                                        #   in Loop: Header=BB15_179 Depth=1
	movq	curr, %rax
	addq	$9912, %rax             # imm = 0x26B8
	movq	%rax, %rdi
	callq	RestoreCursor
.LBB15_225:                             # %if.end.507
                                        #   in Loop: Header=BB15_179 Depth=1
	jmp	.LBB15_230
.LBB15_226:                             # %sw.bb.508
                                        #   in Loop: Header=BB15_179 Depth=1
	cmpl	$0, -12(%rbp)
	je	.LBB15_228
# BB#227:                               # %cond.true.510
                                        #   in Loop: Header=BB15_179 Depth=1
	movl	-16(%rbp), %eax
	movl	%eax, -264(%rbp)        # 4-byte Spill
	jmp	.LBB15_229
.LBB15_228:                             # %cond.false.511
                                        #   in Loop: Header=BB15_179 Depth=1
	xorl	%eax, %eax
	movl	%eax, -264(%rbp)        # 4-byte Spill
	jmp	.LBB15_229
.LBB15_229:                             # %cond.end.512
                                        #   in Loop: Header=BB15_179 Depth=1
	movl	-264(%rbp), %eax        # 4-byte Reload
	movq	curr, %rcx
	movl	%eax, 10852(%rcx)
	movq	curr, %rcx
	addq	$24, %rcx
	movq	curr, %rdx
	movl	10852(%rdx), %esi
	movq	%rcx, %rdi
	callq	LMouseMode
.LBB15_230:                             # %sw.epilog.517
                                        #   in Loop: Header=BB15_179 Depth=1
	jmp	.LBB15_231
.LBB15_231:                             # %for.inc
                                        #   in Loop: Header=BB15_179 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB15_179
.LBB15_232:                             # %for.end
	jmp	.LBB15_238
.LBB15_233:                             # %sw.bb.518
	movl	-4(%rbp), %eax
	subl	$99, %eax
	movl	%eax, -268(%rbp)        # 4-byte Spill
	jne	.LBB15_237
	jmp	.LBB15_234
.LBB15_234:                             # %sw.bb.519
	cmpl	$0, -16(%rbp)
	jne	.LBB15_236
# BB#235:                               # %if.then.522
	movabsq	$.L.str.29, %rdi
	movl	$83, %esi
	movl	nversion, %edx
	callq	Report
.LBB15_236:                             # %if.end.523
	jmp	.LBB15_237
.LBB15_237:                             # %sw.epilog.524
	jmp	.LBB15_238
.LBB15_238:                             # %sw.epilog.525
	addq	$272, %rsp              # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end15:
	.size	DoCSI, .Lfunc_end15-DoCSI
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI15_0:
	.quad	.LBB15_140
	.quad	.LBB15_40
	.quad	.LBB15_44
	.quad	.LBB15_48
	.quad	.LBB15_52
	.quad	.LBB15_56
	.quad	.LBB15_60
	.quad	.LBB15_64
	.quad	.LBB15_4
	.quad	.LBB15_116
	.quad	.LBB15_17
	.quad	.LBB15_25
	.quad	.LBB15_128
	.quad	.LBB15_132
	.quad	.LBB15_177
	.quad	.LBB15_177
	.quad	.LBB15_136
	.quad	.LBB15_177
	.quad	.LBB15_177
	.quad	.LBB15_169
	.quad	.LBB15_173
	.quad	.LBB15_177
	.quad	.LBB15_177
	.quad	.LBB15_177
	.quad	.LBB15_33
	.quad	.LBB15_177
	.quad	.LBB15_122
	.quad	.LBB15_177
	.quad	.LBB15_177
	.quad	.LBB15_177
	.quad	.LBB15_173
	.quad	.LBB15_177
	.quad	.LBB15_64
	.quad	.LBB15_177
	.quad	.LBB15_177
	.quad	.LBB15_155
	.quad	.LBB15_70
	.quad	.LBB15_177
	.quad	.LBB15_4
	.quad	.LBB15_77
	.quad	.LBB15_144
	.quad	.LBB15_146
	.quad	.LBB15_177
	.quad	.LBB15_177
	.quad	.LBB15_145
	.quad	.LBB15_76
	.quad	.LBB15_149
	.quad	.LBB15_177
	.quad	.LBB15_162
	.quad	.LBB15_177
	.quad	.LBB15_83
	.quad	.LBB15_95
	.quad	.LBB15_96
	.quad	.LBB15_115
	.quad	.LBB15_177
	.quad	.LBB15_177
	.quad	.LBB15_158

	.text
	.align	16, 0x90
	.type	MFixLine,@function
MFixLine:                               # @MFixLine
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movslq	-12(%rbp), %rdx
	movq	-8(%rbp), %rdi
	imulq	$40, %rdx, %rdx
	addq	9864(%rdi), %rdx
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movzbl	1(%rdx), %esi
	cmpl	$0, %esi
	je	.LBB16_5
# BB#1:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	null, %rax
	jne	.LBB16_5
# BB#2:                                 # %if.then
	movl	$1, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movl	32(%rcx), %eax
	addl	$1, %eax
	movslq	%eax, %rdi
	callq	calloc
	movq	-32(%rbp), %rcx
	movq	%rax, 8(%rcx)
	cmpq	$0, %rax
	jne	.LBB16_4
# BB#3:                                 # %if.then.7
	xorl	%esi, %esi
	movabsq	$.L.str.32, %rdx
	movq	null, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-8(%rbp), %rax
	movb	$0, 9873(%rax)
	movq	-24(%rbp), %rax
	movb	$0, 1(%rax)
	movq	-8(%rbp), %rdi
	callq	WMsg
.LBB16_4:                               # %if.end
	jmp	.LBB16_5
.LBB16_5:                               # %if.end.11
	movq	-24(%rbp), %rax
	movzbl	2(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB16_16
# BB#6:                                 # %land.lhs.true.14
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	null, %rax
	jne	.LBB16_16
# BB#7:                                 # %if.then.18
	movl	$1, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movl	32(%rcx), %eax
	addl	$1, %eax
	movslq	%eax, %rdi
	callq	calloc
	movq	-32(%rbp), %rcx
	movq	%rax, 16(%rcx)
	cmpq	$0, %rax
	jne	.LBB16_15
# BB#8:                                 # %if.then.27
	movq	null, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-8(%rbp), %rax
	cmpl	$0, 9908(%rax)
	je	.LBB16_10
# BB#9:                                 # %cond.true
	movq	-8(%rbp), %rax
	movl	9908(%rax), %ecx
	movl	%ecx, -36(%rbp)         # 4-byte Spill
	jmp	.LBB16_11
.LBB16_10:                              # %cond.false
	movq	-8(%rbp), %rax
	movl	9884(%rax), %ecx
	movl	%ecx, -36(%rbp)         # 4-byte Spill
.LBB16_11:                              # %cond.end
	movl	-36(%rbp), %eax         # 4-byte Reload
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movl	$0, 9892(%rdx,%rcx,4)
	movq	-8(%rbp), %rcx
	movb	$0, 9878(%rcx)
	movq	-8(%rbp), %rcx
	cmpl	$0, 9908(%rcx)
	je	.LBB16_13
# BB#12:                                # %cond.true.35
	movq	-8(%rbp), %rax
	movl	9908(%rax), %ecx
	movl	%ecx, -40(%rbp)         # 4-byte Spill
	jmp	.LBB16_14
.LBB16_13:                              # %cond.false.37
	movq	-8(%rbp), %rax
	movl	9888(%rax), %ecx
	movl	%ecx, -40(%rbp)         # 4-byte Spill
.LBB16_14:                              # %cond.end.38
	movl	-40(%rbp), %eax         # 4-byte Reload
	xorl	%esi, %esi
	movabsq	$.L.str.33, %rdx
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdi
	movl	$0, 9892(%rdi,%rcx,4)
	movq	-8(%rbp), %rcx
	movb	$0, 9879(%rcx)
	movq	-8(%rbp), %rcx
	movb	$0, 9874(%rcx)
	movq	-24(%rbp), %rcx
	movb	$0, 3(%rcx)
	movq	-24(%rbp), %rcx
	movb	$0, 2(%rcx)
	movq	-8(%rbp), %rdi
	callq	WMsg
.LBB16_15:                              # %if.end.46
	jmp	.LBB16_16
.LBB16_16:                              # %if.end.47
	movq	-24(%rbp), %rax
	movzbl	3(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB16_21
# BB#17:                                # %land.lhs.true.51
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	null, %rax
	jne	.LBB16_21
# BB#18:                                # %if.then.55
	movl	$1, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movl	32(%rcx), %eax
	addl	$1, %eax
	movslq	%eax, %rdi
	callq	calloc
	movq	-32(%rbp), %rcx
	movq	%rax, 24(%rcx)
	cmpq	$0, %rax
	jne	.LBB16_20
# BB#19:                                # %if.then.64
	movq	null, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-24(%rbp), %rax
	movb	$0, 3(%rax)
.LBB16_20:                              # %if.end.67
	jmp	.LBB16_21
.LBB16_21:                              # %if.end.68
	movq	-24(%rbp), %rax
	movzbl	4(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB16_26
# BB#22:                                # %land.lhs.true.71
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	null, %rax
	jne	.LBB16_26
# BB#23:                                # %if.then.75
	movl	$1, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movl	32(%rcx), %eax
	addl	$1, %eax
	movslq	%eax, %rdi
	callq	calloc
	movq	-32(%rbp), %rcx
	movq	%rax, 32(%rcx)
	cmpq	$0, %rax
	jne	.LBB16_25
# BB#24:                                # %if.then.84
	xorl	%esi, %esi
	movabsq	$.L.str.34, %rdx
	movq	null, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-8(%rbp), %rax
	movb	$0, 9876(%rax)
	movq	-24(%rbp), %rax
	movb	$0, 4(%rax)
	movq	-8(%rbp), %rdi
	callq	WMsg
.LBB16_25:                              # %if.end.89
	jmp	.LBB16_26
.LBB16_26:                              # %if.end.90
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	MFixLine, .Lfunc_end16-MFixLine
	.cfi_endproc

	.align	16, 0x90
	.type	MInsChar,@function
MInsChar:                               # @MInsChar
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB17_2
.LBB17_2:                               # %do.end
	movq	-8(%rbp), %rdi
	movl	-24(%rbp), %esi
	movq	-16(%rbp), %rdx
	callq	MFixLine
	movq	-8(%rbp), %rdx
	movq	9864(%rdx), %rdx
	movslq	-24(%rbp), %rdi
	imulq	$40, %rdi, %rdi
	addq	%rdi, %rdx
	movq	%rdx, -40(%rbp)
	movq	-8(%rbp), %rdx
	movl	32(%rdx), %esi
	subl	-20(%rbp), %esi
	subl	$1, %esi
	movl	%esi, -28(%rbp)
	movq	-8(%rbp), %rdx
	cmpl	$8, 48(%rdx)
	jne	.LBB17_5
# BB#3:                                 # %cond.true
	movslq	-20(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	16(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$255, %edx
	jne	.LBB17_13
# BB#4:                                 # %land.lhs.true
	movslq	-20(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$255, %edx
	je	.LBB17_6
	jmp	.LBB17_13
.LBB17_5:                               # %cond.false
	movslq	-20(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	16(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	andl	$224, %edx
	cmpl	$128, %edx
	jne	.LBB17_13
.LBB17_6:                               # %if.then
	cmpl	$0, -20(%rbp)
	jle	.LBB17_10
# BB#7:                                 # %if.then.18
	jmp	.LBB17_8
.LBB17_8:                               # %do.body.19
	movb	mchar_blank, %al
	movl	-20(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-40(%rbp), %rsi
	movq	(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
	movb	mchar_blank+1, %al
	movl	-20(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-40(%rbp), %rsi
	movq	8(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
	movb	mchar_blank+2, %al
	movl	-20(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-40(%rbp), %rsi
	movq	16(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
	movb	mchar_blank+3, %al
	movl	-20(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-40(%rbp), %rsi
	movq	24(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
	movb	mchar_blank+4, %al
	movl	-20(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-40(%rbp), %rsi
	movq	32(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
# BB#9:                                 # %do.end.37
	jmp	.LBB17_10
.LBB17_10:                              # %if.end
	jmp	.LBB17_11
.LBB17_11:                              # %do.body.38
	movb	mchar_blank, %al
	movslq	-20(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	(%rdx), %rdx
	movb	%al, (%rdx,%rcx)
	movb	mchar_blank+1, %al
	movslq	-20(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	8(%rdx), %rdx
	movb	%al, (%rdx,%rcx)
	movb	mchar_blank+2, %al
	movslq	-20(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	16(%rdx), %rdx
	movb	%al, (%rdx,%rcx)
	movb	mchar_blank+3, %al
	movslq	-20(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	24(%rdx), %rdx
	movb	%al, (%rdx,%rcx)
	movb	mchar_blank+4, %al
	movslq	-20(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	32(%rdx), %rdx
	movb	%al, (%rdx,%rcx)
# BB#12:                                # %do.end.54
	jmp	.LBB17_13
.LBB17_13:                              # %if.end.55
	cmpl	$0, -28(%rbp)
	jle	.LBB17_28
# BB#14:                                # %if.then.58
	movq	-8(%rbp), %rax
	cmpl	$8, 48(%rax)
	jne	.LBB17_17
# BB#15:                                # %cond.true.63
	movq	-8(%rbp), %rax
	movl	32(%rax), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	movq	-40(%rbp), %rdx
	movq	16(%rdx), %rdx
	movzbl	(%rdx,%rax), %ecx
	cmpl	$255, %ecx
	jne	.LBB17_25
# BB#16:                                # %land.lhs.true.73
	movq	-8(%rbp), %rax
	movl	32(%rax), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	movq	-40(%rbp), %rdx
	movq	(%rdx), %rdx
	movzbl	(%rdx,%rax), %ecx
	cmpl	$255, %ecx
	je	.LBB17_18
	jmp	.LBB17_25
.LBB17_17:                              # %cond.false.83
	movq	-8(%rbp), %rax
	movl	32(%rax), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	movq	-40(%rbp), %rdx
	movq	16(%rdx), %rdx
	movzbl	(%rdx,%rax), %ecx
	andl	$224, %ecx
	cmpl	$128, %ecx
	jne	.LBB17_25
.LBB17_18:                              # %if.then.94
	movq	-8(%rbp), %rax
	movl	32(%rax), %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jle	.LBB17_22
# BB#19:                                # %if.then.100
	jmp	.LBB17_20
.LBB17_20:                              # %do.body.101
	movb	mchar_blank, %al
	movq	-8(%rbp), %rcx
	movl	32(%rcx), %edx
	subl	$1, %edx
	subl	$1, %edx
	movslq	%edx, %rcx
	movq	-40(%rbp), %rsi
	movq	(%rsi), %rsi
	movb	%al, (%rsi,%rcx)
	movb	mchar_blank+1, %al
	movq	-8(%rbp), %rcx
	movl	32(%rcx), %edx
	subl	$1, %edx
	subl	$1, %edx
	movslq	%edx, %rcx
	movq	-40(%rbp), %rsi
	movq	8(%rsi), %rsi
	movb	%al, (%rsi,%rcx)
	movb	mchar_blank+2, %al
	movq	-8(%rbp), %rcx
	movl	32(%rcx), %edx
	subl	$1, %edx
	subl	$1, %edx
	movslq	%edx, %rcx
	movq	-40(%rbp), %rsi
	movq	16(%rsi), %rsi
	movb	%al, (%rsi,%rcx)
	movb	mchar_blank+3, %al
	movq	-8(%rbp), %rcx
	movl	32(%rcx), %edx
	subl	$1, %edx
	subl	$1, %edx
	movslq	%edx, %rcx
	movq	-40(%rbp), %rsi
	movq	24(%rsi), %rsi
	movb	%al, (%rsi,%rcx)
	movb	mchar_blank+4, %al
	movq	-8(%rbp), %rcx
	movl	32(%rcx), %edx
	subl	$1, %edx
	subl	$1, %edx
	movslq	%edx, %rcx
	movq	-40(%rbp), %rsi
	movq	32(%rsi), %rsi
	movb	%al, (%rsi,%rcx)
# BB#21:                                # %do.end.137
	jmp	.LBB17_22
.LBB17_22:                              # %if.end.138
	jmp	.LBB17_23
.LBB17_23:                              # %do.body.139
	movb	mchar_blank, %al
	movq	-8(%rbp), %rcx
	movl	32(%rcx), %edx
	subl	$1, %edx
	movslq	%edx, %rcx
	movq	-40(%rbp), %rsi
	movq	(%rsi), %rsi
	movb	%al, (%rsi,%rcx)
	movb	mchar_blank+1, %al
	movq	-8(%rbp), %rcx
	movl	32(%rcx), %edx
	subl	$1, %edx
	movslq	%edx, %rcx
	movq	-40(%rbp), %rsi
	movq	8(%rsi), %rsi
	movb	%al, (%rsi,%rcx)
	movb	mchar_blank+2, %al
	movq	-8(%rbp), %rcx
	movl	32(%rcx), %edx
	subl	$1, %edx
	movslq	%edx, %rcx
	movq	-40(%rbp), %rsi
	movq	16(%rsi), %rsi
	movb	%al, (%rsi,%rcx)
	movb	mchar_blank+3, %al
	movq	-8(%rbp), %rcx
	movl	32(%rcx), %edx
	subl	$1, %edx
	movslq	%edx, %rcx
	movq	-40(%rbp), %rsi
	movq	24(%rsi), %rsi
	movb	%al, (%rsi,%rcx)
	movb	mchar_blank+4, %al
	movq	-8(%rbp), %rcx
	movl	32(%rcx), %edx
	subl	$1, %edx
	movslq	%edx, %rcx
	movq	-40(%rbp), %rsi
	movq	32(%rsi), %rsi
	movb	%al, (%rsi,%rcx)
# BB#24:                                # %do.end.170
	jmp	.LBB17_25
.LBB17_25:                              # %if.end.171
	jmp	.LBB17_26
.LBB17_26:                              # %do.body.172
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movslq	-20(%rbp), %rcx
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	-20(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rsi
	addq	%rsi, %rcx
	movslq	-28(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	bcopy
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-20(%rbp), %rcx
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	movl	-20(%rbp), %r8d
	addl	$1, %r8d
	movslq	%r8d, %rdx
	addq	%rdx, %rcx
	movslq	-28(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	bcopy
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movslq	-20(%rbp), %rcx
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movq	16(%rcx), %rcx
	movl	-20(%rbp), %r8d
	addl	$1, %r8d
	movslq	%r8d, %rdx
	addq	%rdx, %rcx
	movslq	-28(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	bcopy
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-20(%rbp), %rcx
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movq	24(%rcx), %rcx
	movl	-20(%rbp), %r8d
	addl	$1, %r8d
	movslq	%r8d, %rdx
	addq	%rdx, %rcx
	movslq	-28(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	bcopy
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movslq	-20(%rbp), %rcx
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movq	32(%rcx), %rcx
	movl	-20(%rbp), %r8d
	addl	$1, %r8d
	movslq	%r8d, %rdx
	addq	%rdx, %rcx
	movslq	-28(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	bcopy
# BB#27:                                # %do.end.212
	jmp	.LBB17_28
.LBB17_28:                              # %if.end.213
	jmp	.LBB17_29
.LBB17_29:                              # %do.body.214
	movq	-16(%rbp), %rax
	movb	(%rax), %cl
	movslq	-20(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	(%rdx), %rdx
	movb	%cl, (%rdx,%rax)
	movq	-16(%rbp), %rax
	movb	1(%rax), %cl
	movslq	-20(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	8(%rdx), %rdx
	movb	%cl, (%rdx,%rax)
	movq	-16(%rbp), %rax
	movb	2(%rax), %cl
	movslq	-20(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	16(%rdx), %rdx
	movb	%cl, (%rdx,%rax)
	movq	-16(%rbp), %rax
	movb	3(%rax), %cl
	movslq	-20(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	24(%rdx), %rdx
	movb	%cl, (%rdx,%rax)
	movq	-16(%rbp), %rax
	movb	4(%rax), %cl
	movslq	-20(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	32(%rdx), %rdx
	movb	%cl, (%rdx,%rax)
# BB#30:                                # %do.end.235
	movq	-16(%rbp), %rax
	cmpb	$0, 5(%rax)
	je	.LBB17_55
# BB#31:                                # %if.then.236
	movl	-28(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -28(%rbp)
	cmpl	$0, %eax
	jle	.LBB17_46
# BB#32:                                # %if.then.239
	movq	-8(%rbp), %rax
	cmpl	$8, 48(%rax)
	jne	.LBB17_35
# BB#33:                                # %cond.true.244
	movq	-8(%rbp), %rax
	movl	32(%rax), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	movq	-40(%rbp), %rdx
	movq	16(%rdx), %rdx
	movzbl	(%rdx,%rax), %ecx
	cmpl	$255, %ecx
	jne	.LBB17_43
# BB#34:                                # %land.lhs.true.254
	movq	-8(%rbp), %rax
	movl	32(%rax), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	movq	-40(%rbp), %rdx
	movq	(%rdx), %rdx
	movzbl	(%rdx,%rax), %ecx
	cmpl	$255, %ecx
	je	.LBB17_36
	jmp	.LBB17_43
.LBB17_35:                              # %cond.false.264
	movq	-8(%rbp), %rax
	movl	32(%rax), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	movq	-40(%rbp), %rdx
	movq	16(%rdx), %rdx
	movzbl	(%rdx,%rax), %ecx
	andl	$224, %ecx
	cmpl	$128, %ecx
	jne	.LBB17_43
.LBB17_36:                              # %if.then.275
	movq	-8(%rbp), %rax
	movl	32(%rax), %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jle	.LBB17_40
# BB#37:                                # %if.then.281
	jmp	.LBB17_38
.LBB17_38:                              # %do.body.282
	movb	mchar_blank, %al
	movq	-8(%rbp), %rcx
	movl	32(%rcx), %edx
	subl	$1, %edx
	subl	$1, %edx
	movslq	%edx, %rcx
	movq	-40(%rbp), %rsi
	movq	(%rsi), %rsi
	movb	%al, (%rsi,%rcx)
	movb	mchar_blank+1, %al
	movq	-8(%rbp), %rcx
	movl	32(%rcx), %edx
	subl	$1, %edx
	subl	$1, %edx
	movslq	%edx, %rcx
	movq	-40(%rbp), %rsi
	movq	8(%rsi), %rsi
	movb	%al, (%rsi,%rcx)
	movb	mchar_blank+2, %al
	movq	-8(%rbp), %rcx
	movl	32(%rcx), %edx
	subl	$1, %edx
	subl	$1, %edx
	movslq	%edx, %rcx
	movq	-40(%rbp), %rsi
	movq	16(%rsi), %rsi
	movb	%al, (%rsi,%rcx)
	movb	mchar_blank+3, %al
	movq	-8(%rbp), %rcx
	movl	32(%rcx), %edx
	subl	$1, %edx
	subl	$1, %edx
	movslq	%edx, %rcx
	movq	-40(%rbp), %rsi
	movq	24(%rsi), %rsi
	movb	%al, (%rsi,%rcx)
	movb	mchar_blank+4, %al
	movq	-8(%rbp), %rcx
	movl	32(%rcx), %edx
	subl	$1, %edx
	subl	$1, %edx
	movslq	%edx, %rcx
	movq	-40(%rbp), %rsi
	movq	32(%rsi), %rsi
	movb	%al, (%rsi,%rcx)
# BB#39:                                # %do.end.318
	jmp	.LBB17_40
.LBB17_40:                              # %if.end.319
	jmp	.LBB17_41
.LBB17_41:                              # %do.body.320
	movb	mchar_blank, %al
	movq	-8(%rbp), %rcx
	movl	32(%rcx), %edx
	subl	$1, %edx
	movslq	%edx, %rcx
	movq	-40(%rbp), %rsi
	movq	(%rsi), %rsi
	movb	%al, (%rsi,%rcx)
	movb	mchar_blank+1, %al
	movq	-8(%rbp), %rcx
	movl	32(%rcx), %edx
	subl	$1, %edx
	movslq	%edx, %rcx
	movq	-40(%rbp), %rsi
	movq	8(%rsi), %rsi
	movb	%al, (%rsi,%rcx)
	movb	mchar_blank+2, %al
	movq	-8(%rbp), %rcx
	movl	32(%rcx), %edx
	subl	$1, %edx
	movslq	%edx, %rcx
	movq	-40(%rbp), %rsi
	movq	16(%rsi), %rsi
	movb	%al, (%rsi,%rcx)
	movb	mchar_blank+3, %al
	movq	-8(%rbp), %rcx
	movl	32(%rcx), %edx
	subl	$1, %edx
	movslq	%edx, %rcx
	movq	-40(%rbp), %rsi
	movq	24(%rsi), %rsi
	movb	%al, (%rsi,%rcx)
	movb	mchar_blank+4, %al
	movq	-8(%rbp), %rcx
	movl	32(%rcx), %edx
	subl	$1, %edx
	movslq	%edx, %rcx
	movq	-40(%rbp), %rsi
	movq	32(%rsi), %rsi
	movb	%al, (%rsi,%rcx)
# BB#42:                                # %do.end.351
	jmp	.LBB17_43
.LBB17_43:                              # %if.end.352
	jmp	.LBB17_44
.LBB17_44:                              # %do.body.353
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	-40(%rbp), %rdx
	movq	(%rdx), %rdx
	movl	-20(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movslq	-28(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	%rdx, %rsi
	movq	-48(%rbp), %rdx         # 8-byte Reload
	callq	bcopy
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movl	-20(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	-40(%rbp), %rdx
	movq	8(%rdx), %rdx
	movl	-20(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movslq	-28(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rdx, %rsi
	movq	-56(%rbp), %rdx         # 8-byte Reload
	callq	bcopy
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-20(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	-40(%rbp), %rdx
	movq	16(%rdx), %rdx
	movl	-20(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movslq	-28(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%rdx, %rsi
	movq	-64(%rbp), %rdx         # 8-byte Reload
	callq	bcopy
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	-20(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	-40(%rbp), %rdx
	movq	24(%rdx), %rdx
	movl	-20(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movslq	-28(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movq	%rdx, %rsi
	movq	-72(%rbp), %rdx         # 8-byte Reload
	callq	bcopy
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movl	-20(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	-40(%rbp), %rdx
	movq	32(%rdx), %rdx
	movl	-20(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movslq	-28(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movq	%rdx, %rsi
	movq	-80(%rbp), %rdx         # 8-byte Reload
	callq	bcopy
# BB#45:                                # %do.end.399
	jmp	.LBB17_46
.LBB17_46:                              # %if.end.400
	jmp	.LBB17_47
.LBB17_47:                              # %do.body.401
	movq	-16(%rbp), %rax
	movb	(%rax), %cl
	movl	-20(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rax
	movq	-40(%rbp), %rsi
	movq	(%rsi), %rsi
	movb	%cl, (%rsi,%rax)
	movq	-16(%rbp), %rax
	movb	1(%rax), %cl
	movl	-20(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rax
	movq	-40(%rbp), %rsi
	movq	8(%rsi), %rsi
	movb	%cl, (%rsi,%rax)
	movq	-16(%rbp), %rax
	movb	2(%rax), %cl
	movl	-20(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rax
	movq	-40(%rbp), %rsi
	movq	16(%rsi), %rsi
	movb	%cl, (%rsi,%rax)
	movq	-16(%rbp), %rax
	movb	3(%rax), %cl
	movl	-20(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rax
	movq	-40(%rbp), %rsi
	movq	24(%rsi), %rsi
	movb	%cl, (%rsi,%rax)
	movq	-16(%rbp), %rax
	movb	4(%rax), %cl
	movl	-20(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rax
	movq	-40(%rbp), %rsi
	movq	32(%rsi), %rsi
	movb	%cl, (%rsi,%rax)
# BB#48:                                # %do.end.427
	movq	-16(%rbp), %rax
	movb	5(%rax), %cl
	movl	-20(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rax
	movq	-40(%rbp), %rsi
	movq	(%rsi), %rsi
	movb	%cl, (%rsi,%rax)
	movq	-8(%rbp), %rax
	cmpl	$8, 48(%rax)
	je	.LBB17_50
# BB#49:                                # %if.then.437
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdx
	movq	16(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	orl	$128, %eax
	movb	%al, %sil
	movb	%sil, (%rdx,%rcx)
	jmp	.LBB17_54
.LBB17_50:                              # %if.else
	movq	-8(%rbp), %rax
	cmpl	$8, 48(%rax)
	jne	.LBB17_53
# BB#51:                                # %land.lhs.true.448
	movq	-16(%rbp), %rax
	movzbl	5(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB17_53
# BB#52:                                # %if.then.452
	movq	-16(%rbp), %rax
	movb	5(%rax), %cl
	movl	-20(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rax
	movq	-40(%rbp), %rsi
	movq	16(%rsi), %rsi
	movb	%cl, (%rsi,%rax)
	movl	-20(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rax
	movq	-40(%rbp), %rsi
	movq	24(%rsi), %rsi
	movb	$0, (%rsi,%rax)
.LBB17_53:                              # %if.end.462
	jmp	.LBB17_54
.LBB17_54:                              # %if.end.463
	jmp	.LBB17_55
.LBB17_55:                              # %if.end.464
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	MInsChar, .Lfunc_end17-MInsChar
	.cfi_endproc

	.align	16, 0x90
	.type	MPutChar,@function
MPutChar:                               # @MPutChar
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movl	-24(%rbp), %esi
	movq	-16(%rbp), %rdx
	callq	MFixLine
	movslq	-24(%rbp), %rdx
	movq	-8(%rbp), %rdi
	imulq	$40, %rdx, %rdx
	addq	9864(%rdi), %rdx
	movq	%rdx, -32(%rbp)
	movq	-8(%rbp), %rdx
	cmpl	$8, 48(%rdx)
	jne	.LBB18_3
# BB#1:                                 # %cond.true
	movslq	-20(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	16(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$255, %edx
	jne	.LBB18_11
# BB#2:                                 # %land.lhs.true
	movslq	-20(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$255, %edx
	je	.LBB18_4
	jmp	.LBB18_11
.LBB18_3:                               # %cond.false
	movslq	-20(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	16(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	andl	$224, %edx
	cmpl	$128, %edx
	jne	.LBB18_11
.LBB18_4:                               # %if.then
	cmpl	$0, -20(%rbp)
	jle	.LBB18_8
# BB#5:                                 # %if.then.18
	jmp	.LBB18_6
.LBB18_6:                               # %do.body
	movb	mchar_blank, %al
	movl	-20(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
	movb	mchar_blank+1, %al
	movl	-20(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-32(%rbp), %rsi
	movq	8(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
	movb	mchar_blank+2, %al
	movl	-20(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-32(%rbp), %rsi
	movq	16(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
	movb	mchar_blank+3, %al
	movl	-20(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-32(%rbp), %rsi
	movq	24(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
	movb	mchar_blank+4, %al
	movl	-20(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-32(%rbp), %rsi
	movq	32(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
# BB#7:                                 # %do.end
	jmp	.LBB18_8
.LBB18_8:                               # %if.end
	jmp	.LBB18_9
.LBB18_9:                               # %do.body.35
	movb	mchar_blank, %al
	movslq	-20(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	(%rdx), %rdx
	movb	%al, (%rdx,%rcx)
	movb	mchar_blank+1, %al
	movslq	-20(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	8(%rdx), %rdx
	movb	%al, (%rdx,%rcx)
	movb	mchar_blank+2, %al
	movslq	-20(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	16(%rdx), %rdx
	movb	%al, (%rdx,%rcx)
	movb	mchar_blank+3, %al
	movslq	-20(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	24(%rdx), %rdx
	movb	%al, (%rdx,%rcx)
	movb	mchar_blank+4, %al
	movslq	-20(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	32(%rdx), %rdx
	movb	%al, (%rdx,%rcx)
# BB#10:                                # %do.end.51
	jmp	.LBB18_11
.LBB18_11:                              # %if.end.52
	movq	-8(%rbp), %rax
	cmpl	$8, 48(%rax)
	jne	.LBB18_14
# BB#12:                                # %cond.true.57
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	movq	16(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$255, %eax
	jne	.LBB18_21
# BB#13:                                # %land.lhs.true.64
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	movq	(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$255, %eax
	je	.LBB18_16
	jmp	.LBB18_21
.LBB18_14:                              # %cond.false.72
	movslq	-20(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	16(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	andl	$31, %edx
	cmpl	$0, %edx
	je	.LBB18_21
# BB#15:                                # %land.lhs.true.80
	movslq	-20(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	16(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	andl	$224, %edx
	cmpl	$0, %edx
	jne	.LBB18_21
.LBB18_16:                              # %if.then.88
	jmp	.LBB18_17
.LBB18_17:                              # %do.body.89
	movb	mchar_blank, %al
	movslq	-20(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	(%rdx), %rdx
	movb	%al, (%rdx,%rcx)
	movb	mchar_blank+1, %al
	movslq	-20(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	8(%rdx), %rdx
	movb	%al, (%rdx,%rcx)
	movb	mchar_blank+2, %al
	movslq	-20(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	16(%rdx), %rdx
	movb	%al, (%rdx,%rcx)
	movb	mchar_blank+3, %al
	movslq	-20(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	24(%rdx), %rdx
	movb	%al, (%rdx,%rcx)
	movb	mchar_blank+4, %al
	movslq	-20(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	32(%rdx), %rdx
	movb	%al, (%rdx,%rcx)
# BB#18:                                # %do.end.105
	jmp	.LBB18_19
.LBB18_19:                              # %do.body.106
	movb	mchar_blank, %al
	movl	-20(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
	movb	mchar_blank+1, %al
	movl	-20(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-32(%rbp), %rsi
	movq	8(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
	movb	mchar_blank+2, %al
	movl	-20(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-32(%rbp), %rsi
	movq	16(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
	movb	mchar_blank+3, %al
	movl	-20(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-32(%rbp), %rsi
	movq	24(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
	movb	mchar_blank+4, %al
	movl	-20(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-32(%rbp), %rsi
	movq	32(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
# BB#20:                                # %do.end.127
	jmp	.LBB18_21
.LBB18_21:                              # %if.end.128
	jmp	.LBB18_22
.LBB18_22:                              # %do.body.129
	movq	-16(%rbp), %rax
	movb	(%rax), %cl
	movslq	-20(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	(%rdx), %rdx
	movb	%cl, (%rdx,%rax)
	movq	-16(%rbp), %rax
	movb	1(%rax), %cl
	movslq	-20(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	8(%rdx), %rdx
	movb	%cl, (%rdx,%rax)
	movq	-16(%rbp), %rax
	movb	2(%rax), %cl
	movslq	-20(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	16(%rdx), %rdx
	movb	%cl, (%rdx,%rax)
	movq	-16(%rbp), %rax
	movb	3(%rax), %cl
	movslq	-20(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	24(%rdx), %rdx
	movb	%cl, (%rdx,%rax)
	movq	-16(%rbp), %rax
	movb	4(%rax), %cl
	movslq	-20(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	32(%rdx), %rdx
	movb	%cl, (%rdx,%rax)
# BB#23:                                # %do.end.150
	movq	-16(%rbp), %rax
	cmpb	$0, 5(%rax)
	je	.LBB18_43
# BB#24:                                # %if.then.151
	movq	-8(%rbp), %rax
	cmpl	$8, 48(%rax)
	jne	.LBB18_27
# BB#25:                                # %cond.true.156
	movl	-20(%rbp), %eax
	addl	$1, %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	movq	16(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$255, %eax
	jne	.LBB18_34
# BB#26:                                # %land.lhs.true.165
	movl	-20(%rbp), %eax
	addl	$1, %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	movq	(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$255, %eax
	je	.LBB18_29
	jmp	.LBB18_34
.LBB18_27:                              # %cond.false.174
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	movq	16(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	andl	$31, %eax
	cmpl	$0, %eax
	je	.LBB18_34
# BB#28:                                # %land.lhs.true.183
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	movq	16(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	andl	$224, %eax
	cmpl	$0, %eax
	jne	.LBB18_34
.LBB18_29:                              # %if.then.192
	jmp	.LBB18_30
.LBB18_30:                              # %do.body.193
	movb	mchar_blank, %al
	movl	-20(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
	movb	mchar_blank+1, %al
	movl	-20(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-32(%rbp), %rsi
	movq	8(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
	movb	mchar_blank+2, %al
	movl	-20(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-32(%rbp), %rsi
	movq	16(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
	movb	mchar_blank+3, %al
	movl	-20(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-32(%rbp), %rsi
	movq	24(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
	movb	mchar_blank+4, %al
	movl	-20(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-32(%rbp), %rsi
	movq	32(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
# BB#31:                                # %do.end.214
	jmp	.LBB18_32
.LBB18_32:                              # %do.body.215
	movb	mchar_blank, %al
	movl	-20(%rbp), %ecx
	addl	$1, %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
	movb	mchar_blank+1, %al
	movl	-20(%rbp), %ecx
	addl	$1, %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-32(%rbp), %rsi
	movq	8(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
	movb	mchar_blank+2, %al
	movl	-20(%rbp), %ecx
	addl	$1, %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-32(%rbp), %rsi
	movq	16(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
	movb	mchar_blank+3, %al
	movl	-20(%rbp), %ecx
	addl	$1, %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-32(%rbp), %rsi
	movq	24(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
	movb	mchar_blank+4, %al
	movl	-20(%rbp), %ecx
	addl	$1, %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-32(%rbp), %rsi
	movq	32(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
# BB#33:                                # %do.end.241
	jmp	.LBB18_34
.LBB18_34:                              # %if.end.242
	jmp	.LBB18_35
.LBB18_35:                              # %do.body.243
	movq	-16(%rbp), %rax
	movb	(%rax), %cl
	movl	-20(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rax
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	movb	%cl, (%rsi,%rax)
	movq	-16(%rbp), %rax
	movb	1(%rax), %cl
	movl	-20(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rax
	movq	-32(%rbp), %rsi
	movq	8(%rsi), %rsi
	movb	%cl, (%rsi,%rax)
	movq	-16(%rbp), %rax
	movb	2(%rax), %cl
	movl	-20(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rax
	movq	-32(%rbp), %rsi
	movq	16(%rsi), %rsi
	movb	%cl, (%rsi,%rax)
	movq	-16(%rbp), %rax
	movb	3(%rax), %cl
	movl	-20(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rax
	movq	-32(%rbp), %rsi
	movq	24(%rsi), %rsi
	movb	%cl, (%rsi,%rax)
	movq	-16(%rbp), %rax
	movb	4(%rax), %cl
	movl	-20(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rax
	movq	-32(%rbp), %rsi
	movq	32(%rsi), %rsi
	movb	%cl, (%rsi,%rax)
# BB#36:                                # %do.end.269
	movq	-16(%rbp), %rax
	movb	5(%rax), %cl
	movl	-20(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rax
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	movb	%cl, (%rsi,%rax)
	movq	-8(%rbp), %rax
	cmpl	$8, 48(%rax)
	je	.LBB18_38
# BB#37:                                # %if.then.279
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	movq	16(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	orl	$128, %eax
	movb	%al, %sil
	movb	%sil, (%rdx,%rcx)
	jmp	.LBB18_42
.LBB18_38:                              # %if.else
	movq	-8(%rbp), %rax
	cmpl	$8, 48(%rax)
	jne	.LBB18_41
# BB#39:                                # %land.lhs.true.290
	movq	-16(%rbp), %rax
	movzbl	5(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB18_41
# BB#40:                                # %if.then.294
	movq	-16(%rbp), %rax
	movb	5(%rax), %cl
	movl	-20(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rax
	movq	-32(%rbp), %rsi
	movq	16(%rsi), %rsi
	movb	%cl, (%rsi,%rax)
	movl	-20(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rax
	movq	-32(%rbp), %rsi
	movq	24(%rsi), %rsi
	movb	$0, (%rsi,%rax)
.LBB18_41:                              # %if.end.304
	jmp	.LBB18_42
.LBB18_42:                              # %if.end.305
	jmp	.LBB18_43
.LBB18_43:                              # %if.end.306
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	MPutChar, .Lfunc_end18-MPutChar
	.cfi_endproc

	.align	16, 0x90
	.type	MWrapChar,@function
MWrapChar:                              # @MWrapChar
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
	subq	$48, %rsp
	xorl	%eax, %eax
	movl	$256, %r10d             # imm = 0x100
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	movq	-16(%rbp), %rsi
	movzbl	4(%rsi), %ecx
	andl	$240, %ecx
	sarl	$4, %ecx
	movq	-16(%rbp), %rsi
	movzbl	1(%rsi), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	cmovnel	%r10d, %eax
	orl	%eax, %ecx
	movl	%ecx, -44(%rbp)
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	movq	-16(%rbp), %rdx
	callq	MFixLine
	movslq	-20(%rbp), %rdx
	movq	-8(%rbp), %rdi
	imulq	$40, %rdx, %rdx
	addq	9864(%rdi), %rdx
	movq	%rdx, -40(%rbp)
# BB#1:                                 # %do.body
	movb	mchar_null, %al
	movq	-8(%rbp), %rcx
	movslq	32(%rcx), %rcx
	movq	-40(%rbp), %rdx
	movq	(%rdx), %rdx
	movb	%al, (%rdx,%rcx)
	movb	mchar_null+1, %al
	movq	-8(%rbp), %rcx
	movslq	32(%rcx), %rcx
	movq	-40(%rbp), %rdx
	movq	8(%rdx), %rdx
	movb	%al, (%rdx,%rcx)
	movb	mchar_null+2, %al
	movq	-8(%rbp), %rcx
	movslq	32(%rcx), %rcx
	movq	-40(%rbp), %rdx
	movq	16(%rdx), %rdx
	movb	%al, (%rdx,%rcx)
	movb	mchar_null+3, %al
	movq	-8(%rbp), %rcx
	movslq	32(%rcx), %rcx
	movq	-40(%rbp), %rdx
	movq	24(%rdx), %rdx
	movb	%al, (%rdx,%rcx)
	movb	mchar_null+4, %al
	movq	-8(%rbp), %rcx
	movslq	32(%rcx), %rcx
	movq	-40(%rbp), %rdx
	movq	32(%rdx), %rdx
	movb	%al, (%rdx,%rcx)
# BB#2:                                 # %do.end
	movl	-20(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jne	.LBB19_4
# BB#3:                                 # %if.then
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %ecx
	movl	-44(%rbp), %r8d
	callq	MScrollV
	jmp	.LBB19_7
.LBB19_4:                               # %if.else
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	36(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jge	.LBB19_6
# BB#5:                                 # %if.then.27
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
.LBB19_6:                               # %if.end
	jmp	.LBB19_7
.LBB19_7:                               # %if.end.28
	cmpl	$0, -32(%rbp)
	je	.LBB19_9
# BB#8:                                 # %if.then.30
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %ecx
	callq	MInsChar
	jmp	.LBB19_10
.LBB19_9:                               # %if.else.31
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %ecx
	callq	MPutChar
.LBB19_10:                              # %if.end.32
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	MWrapChar, .Lfunc_end19-MWrapChar
	.cfi_endproc

	.globl	WNewAutoFlow
	.align	16, 0x90
	.type	WNewAutoFlow,@function
WNewAutoFlow:                           # @WNewAutoFlow
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB20_2
.LBB20_2:                               # %do.end
	movq	-8(%rbp), %rax
	movl	10820(%rax), %ecx
	andl	$4, %ecx
	cmpl	$0, %ecx
	je	.LBB20_4
# BB#3:                                 # %if.then
	imull	$3, -12(%rbp), %eax
	orl	$4, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 10820(%rcx)
	jmp	.LBB20_5
.LBB20_4:                               # %if.else
	movq	-8(%rbp), %rax
	movl	10820(%rax), %ecx
	andl	$-3, %ecx
	movl	-12(%rbp), %edx
	shll	$1, %edx
	orl	%edx, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 10820(%rax)
.LBB20_5:                               # %if.end
	movq	-8(%rbp), %rax
	addq	$24, %rax
	movq	-8(%rbp), %rcx
	movl	10820(%rcx), %edx
	andl	$1, %edx
	movq	%rax, %rdi
	movl	%edx, %esi
	callq	LSetFlow
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	WNewAutoFlow, .Lfunc_end20-WNewAutoFlow
	.cfi_endproc

	.globl	ChangeAKA
	.align	16, 0x90
	.type	ChangeAKA,@function
ChangeAKA:                              # @ChangeAKA
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	$0, -24(%rbp)
.LBB21_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -20(%rbp)
	jle	.LBB21_14
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB21_1 Depth=1
	movq	-8(%rbp), %rax
	movq	8744(%rax), %rax
	movslq	-24(%rbp), %rcx
	addq	%rcx, %rax
	movq	-8(%rbp), %rcx
	addq	$8752, %rcx             # imm = 0x2230
	addq	$768, %rcx              # imm = 0x300
	addq	$-1, %rcx
	cmpq	%rcx, %rax
	jne	.LBB21_4
# BB#3:                                 # %if.then
	jmp	.LBB21_14
.LBB21_4:                               # %if.end
                                        #   in Loop: Header=BB21_1 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.LBB21_6
# BB#5:                                 # %if.then.6
	jmp	.LBB21_14
.LBB21_6:                               # %if.end.7
                                        #   in Loop: Header=BB21_1 Depth=1
	cmpl	$32, -28(%rbp)
	jl	.LBB21_11
# BB#7:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB21_1 Depth=1
	cmpl	$127, -28(%rbp)
	je	.LBB21_11
# BB#8:                                 # %lor.lhs.false.12
                                        #   in Loop: Header=BB21_1 Depth=1
	cmpl	$128, -28(%rbp)
	jl	.LBB21_12
# BB#9:                                 # %land.lhs.true
                                        #   in Loop: Header=BB21_1 Depth=1
	cmpl	$160, -28(%rbp)
	jge	.LBB21_12
# BB#10:                                # %land.lhs.true.17
                                        #   in Loop: Header=BB21_1 Depth=1
	movq	-8(%rbp), %rax
	cmpl	$0, 10012(%rax)
	je	.LBB21_12
.LBB21_11:                              # %if.then.18
                                        #   in Loop: Header=BB21_1 Depth=1
	jmp	.LBB21_13
.LBB21_12:                              # %if.end.19
                                        #   in Loop: Header=BB21_1 Depth=1
	movl	-28(%rbp), %eax
	movb	%al, %cl
	movl	-24(%rbp), %eax
	movl	%eax, %edx
	addl	$1, %edx
	movl	%edx, -24(%rbp)
	movslq	%eax, %rsi
	movq	-8(%rbp), %rdi
	movq	8744(%rdi), %rdi
	movb	%cl, (%rdi,%rsi)
.LBB21_13:                              # %for.inc
                                        #   in Loop: Header=BB21_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB21_1
.LBB21_14:                              # %for.end
	movslq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	8744(%rcx), %rcx
	movb	$0, (%rcx,%rax)
	movq	-8(%rbp), %rax
	movq	8744(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 8736(%rcx)
	movq	-8(%rbp), %rax
	movq	8744(%rax), %rax
	movq	-8(%rbp), %rcx
	addq	$8752, %rcx             # imm = 0x2230
	cmpq	%rcx, %rax
	je	.LBB21_19
# BB#15:                                # %if.then.31
	movq	-8(%rbp), %rax
	movq	8744(%rax), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB21_17
# BB#16:                                # %lor.lhs.false.37
	movq	-8(%rbp), %rax
	movq	8744(%rax), %rax
	movsbl	-1(%rax), %ecx
	cmpl	$58, %ecx
	jne	.LBB21_18
.LBB21_17:                              # %if.then.43
	movq	-8(%rbp), %rax
	addq	$8752, %rax             # imm = 0x2230
	movq	-8(%rbp), %rcx
	addq	$8752, %rcx             # imm = 0x2230
	movq	%rcx, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	strlen
	movq	-40(%rbp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	addq	$1, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 8736(%rax)
.LBB21_18:                              # %if.end.51
	jmp	.LBB21_19
.LBB21_19:                              # %if.end.52
	movl	$116, %esi
	movq	-8(%rbp), %rdi
	callq	WindowChanged
	xorl	%esi, %esi
	movl	%esi, %edi
	movl	$119, %esi
	callq	WindowChanged
	xorl	%esi, %esi
	movl	%esi, %edi
	movl	$87, %esi
	callq	WindowChanged
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	ChangeAKA, .Lfunc_end21-ChangeAKA
	.cfi_endproc

	.globl	WindowChanged
	.align	16, 0x90
	.type	WindowChanged,@function
WindowChanged:                          # @WindowChanged
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -32(%rbp)
	movl	$0, -36(%rbp)
	movq	display, %rdi
	movq	%rdi, -56(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -16(%rbp)
	cmpl	$102, -12(%rbp)
	jne	.LBB22_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	$375, %esi              # imm = 0x177
	callq	WindowChanged
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	$343, %esi              # imm = 0x157
	callq	WindowChanged
.LBB22_2:                               # %if.end
	cmpl	$0, -12(%rbp)
	je	.LBB22_4
# BB#3:                                 # %if.then.1
	leaq	-28(%rbp), %rdx
	movq	captionstring, %rdi
	movl	-12(%rbp), %esi
	callq	WindowChangedCheck
	leaq	-32(%rbp), %rdx
	movl	%eax, -16(%rbp)
	movq	hstatusstring, %rdi
	movl	-12(%rbp), %esi
	callq	WindowChangedCheck
	leaq	-36(%rbp), %rdx
	movl	%eax, -20(%rbp)
	movq	wliststr, %rdi
	movl	-12(%rbp), %esi
	callq	WindowChangedCheck
	movl	%eax, -24(%rbp)
	jmp	.LBB22_5
.LBB22_4:                               # %if.else
	movl	$0, -20(%rbp)
	movl	$0, -16(%rbp)
	movl	$1, -24(%rbp)
.LBB22_5:                               # %if.end.4
	cmpq	$0, -8(%rbp)
	jne	.LBB22_41
# BB#6:                                 # %if.then.6
	movq	displays, %rax
	movq	%rax, display
.LBB22_7:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_9 Depth 2
	cmpq	$0, display
	je	.LBB22_40
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB22_7 Depth=1
	movq	display, %rax
	movl	468(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movq	display, %rax
	movl	472(%rax), %ecx
	movl	%ecx, -48(%rbp)
	movq	display, %rax
	movq	328(%rax), %rax
	movq	%rax, -64(%rbp)
.LBB22_9:                               # %for.cond.8
                                        #   Parent Loop BB22_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -64(%rbp)
	je	.LBB22_28
# BB#10:                                # %for.body.10
                                        #   in Loop: Header=BB22_9 Depth=2
	cmpl	$0, -24(%rbp)
	jne	.LBB22_16
# BB#11:                                # %lor.lhs.false
                                        #   in Loop: Header=BB22_9 Depth=2
	cmpl	$0, -36(%rbp)
	je	.LBB22_17
# BB#12:                                # %land.lhs.true
                                        #   in Loop: Header=BB22_9 Depth=2
	cmpq	$0, -8(%rbp)
	je	.LBB22_17
# BB#13:                                # %land.lhs.true.14
                                        #   in Loop: Header=BB22_9 Depth=2
	movq	-8(%rbp), %rax
	cmpq	$0, 10000(%rax)
	je	.LBB22_17
# BB#14:                                # %land.lhs.true.16
                                        #   in Loop: Header=BB22_9 Depth=2
	movq	-8(%rbp), %rax
	movq	10000(%rax), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB22_17
# BB#15:                                # %land.lhs.true.19
                                        #   in Loop: Header=BB22_9 Depth=2
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movq	10000(%rcx), %rdi
	movl	-12(%rbp), %esi
	callq	WindowChangedCheck
	cmpl	$0, %eax
	je	.LBB22_17
.LBB22_16:                              # %if.then.23
                                        #   in Loop: Header=BB22_9 Depth=2
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-64(%rbp), %rdi
	callq	WListUpdatecv
.LBB22_17:                              # %if.end.24
                                        #   in Loop: Header=BB22_9 Depth=2
	movq	-64(%rbp), %rax
	movq	64(%rax), %rax
	movq	56(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpl	$0, -16(%rbp)
	jne	.LBB22_23
# BB#18:                                # %lor.lhs.false.26
                                        #   in Loop: Header=BB22_9 Depth=2
	cmpl	$0, -28(%rbp)
	je	.LBB22_26
# BB#19:                                # %land.lhs.true.28
                                        #   in Loop: Header=BB22_9 Depth=2
	cmpq	$0, -8(%rbp)
	je	.LBB22_26
# BB#20:                                # %land.lhs.true.30
                                        #   in Loop: Header=BB22_9 Depth=2
	movq	-8(%rbp), %rax
	cmpq	$0, 10000(%rax)
	je	.LBB22_26
# BB#21:                                # %land.lhs.true.33
                                        #   in Loop: Header=BB22_9 Depth=2
	movq	-8(%rbp), %rax
	movq	10000(%rax), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB22_26
# BB#22:                                # %land.lhs.true.37
                                        #   in Loop: Header=BB22_9 Depth=2
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movq	10000(%rcx), %rdi
	movl	-12(%rbp), %esi
	callq	WindowChangedCheck
	cmpl	$0, %eax
	je	.LBB22_26
.LBB22_23:                              # %if.then.41
                                        #   in Loop: Header=BB22_9 Depth=2
	movq	-64(%rbp), %rax
	movl	228(%rax), %ecx
	addl	$1, %ecx
	movq	display, %rax
	cmpl	448(%rax), %ecx
	jge	.LBB22_25
# BB#24:                                # %if.then.44
                                        #   in Loop: Header=BB22_9 Depth=2
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx
	movl	228(%rcx), %edx
	addl	$1, %edx
	movq	display, %rcx
	movl	444(%rcx), %esi
	subl	$1, %esi
	movl	%edx, %edi
	movl	%esi, -68(%rbp)         # 4-byte Spill
	movl	%eax, %esi
	movl	-68(%rbp), %edx         # 4-byte Reload
	movl	%eax, %ecx
	callq	RefreshLine
.LBB22_25:                              # %if.end.47
                                        #   in Loop: Header=BB22_9 Depth=2
	jmp	.LBB22_26
.LBB22_26:                              # %if.end.48
                                        #   in Loop: Header=BB22_9 Depth=2
	jmp	.LBB22_27
.LBB22_27:                              # %for.inc
                                        #   in Loop: Header=BB22_9 Depth=2
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB22_9
.LBB22_28:                              # %for.end
                                        #   in Loop: Header=BB22_7 Depth=1
	movq	display, %rax
	movq	376(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.LBB22_34
# BB#29:                                # %lor.lhs.false.50
                                        #   in Loop: Header=BB22_7 Depth=1
	cmpl	$0, -32(%rbp)
	je	.LBB22_35
# BB#30:                                # %land.lhs.true.52
                                        #   in Loop: Header=BB22_7 Depth=1
	cmpq	$0, -8(%rbp)
	je	.LBB22_35
# BB#31:                                # %land.lhs.true.54
                                        #   in Loop: Header=BB22_7 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 10000(%rax)
	je	.LBB22_35
# BB#32:                                # %land.lhs.true.57
                                        #   in Loop: Header=BB22_7 Depth=1
	movq	-8(%rbp), %rax
	movq	10000(%rax), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB22_35
# BB#33:                                # %land.lhs.true.61
                                        #   in Loop: Header=BB22_7 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movq	10000(%rcx), %rdi
	movl	-12(%rbp), %esi
	callq	WindowChangedCheck
	cmpl	$0, %eax
	je	.LBB22_35
.LBB22_34:                              # %if.then.65
                                        #   in Loop: Header=BB22_7 Depth=1
	callq	RefreshHStatus
.LBB22_35:                              # %if.end.66
                                        #   in Loop: Header=BB22_7 Depth=1
	cmpl	$-1, -44(%rbp)
	je	.LBB22_38
# BB#36:                                # %land.lhs.true.69
                                        #   in Loop: Header=BB22_7 Depth=1
	cmpl	$-1, -48(%rbp)
	je	.LBB22_38
# BB#37:                                # %if.then.72
                                        #   in Loop: Header=BB22_7 Depth=1
	movl	-44(%rbp), %edi
	movl	-48(%rbp), %esi
	callq	GotoPos
.LBB22_38:                              # %if.end.73
                                        #   in Loop: Header=BB22_7 Depth=1
	jmp	.LBB22_39
.LBB22_39:                              # %for.inc.74
                                        #   in Loop: Header=BB22_7 Depth=1
	movq	display, %rax
	movq	(%rax), %rax
	movq	%rax, display
	jmp	.LBB22_7
.LBB22_40:                              # %for.end.75
	movq	-56(%rbp), %rax
	movq	%rax, display
	jmp	.LBB22_75
.LBB22_41:                              # %if.end.76
	movq	-8(%rbp), %rax
	cmpq	$0, 10000(%rax)
	je	.LBB22_48
# BB#42:                                # %land.lhs.true.79
	movq	-8(%rbp), %rax
	movq	10000(%rax), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB22_48
# BB#43:                                # %land.lhs.true.83
	cmpl	$0, -28(%rbp)
	jne	.LBB22_46
# BB#44:                                # %lor.lhs.false.85
	cmpl	$0, -32(%rbp)
	jne	.LBB22_46
# BB#45:                                # %lor.lhs.false.87
	cmpl	$0, -36(%rbp)
	je	.LBB22_48
.LBB22_46:                              # %land.lhs.true.89
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movq	10000(%rcx), %rdi
	movl	-12(%rbp), %esi
	callq	WindowChangedCheck
	cmpl	$0, %eax
	je	.LBB22_48
# BB#47:                                # %if.then.93
	movl	-28(%rbp), %eax
	orl	-16(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-32(%rbp), %eax
	orl	-20(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-36(%rbp), %eax
	orl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
.LBB22_48:                              # %if.end.96
	cmpl	$0, -16(%rbp)
	jne	.LBB22_52
# BB#49:                                # %land.lhs.true.98
	cmpl	$0, -20(%rbp)
	jne	.LBB22_52
# BB#50:                                # %land.lhs.true.100
	cmpl	$0, -24(%rbp)
	jne	.LBB22_52
# BB#51:                                # %if.then.102
	jmp	.LBB22_75
.LBB22_52:                              # %if.end.103
	movq	displays, %rax
	movq	%rax, display
.LBB22_53:                              # %for.cond.104
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_55 Depth 2
	cmpq	$0, display
	je	.LBB22_74
# BB#54:                                # %for.body.106
                                        #   in Loop: Header=BB22_53 Depth=1
	movl	$0, -40(%rbp)
	movq	display, %rax
	movl	468(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movq	display, %rax
	movl	472(%rax), %ecx
	movl	%ecx, -48(%rbp)
	movq	display, %rax
	movq	328(%rax), %rax
	movq	%rax, -64(%rbp)
.LBB22_55:                              # %for.cond.110
                                        #   Parent Loop BB22_53 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -64(%rbp)
	je	.LBB22_65
# BB#56:                                # %for.body.112
                                        #   in Loop: Header=BB22_55 Depth=2
	cmpl	$0, -24(%rbp)
	je	.LBB22_58
# BB#57:                                # %if.then.114
                                        #   in Loop: Header=BB22_55 Depth=2
	movq	-64(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	WListUpdatecv
.LBB22_58:                              # %if.end.115
                                        #   in Loop: Header=BB22_55 Depth=2
	movq	-64(%rbp), %rax
	movq	64(%rax), %rax
	movq	56(%rax), %rax
	movq	40(%rax), %rax
	cmpq	-8(%rbp), %rax
	je	.LBB22_60
# BB#59:                                # %if.then.121
                                        #   in Loop: Header=BB22_55 Depth=2
	jmp	.LBB22_64
.LBB22_60:                              # %if.end.122
                                        #   in Loop: Header=BB22_55 Depth=2
	movl	$1, -40(%rbp)
	cmpl	$0, -16(%rbp)
	je	.LBB22_63
# BB#61:                                # %land.lhs.true.124
                                        #   in Loop: Header=BB22_55 Depth=2
	movq	-64(%rbp), %rax
	movl	228(%rax), %ecx
	addl	$1, %ecx
	movq	display, %rax
	cmpl	448(%rax), %ecx
	jge	.LBB22_63
# BB#62:                                # %if.then.130
                                        #   in Loop: Header=BB22_55 Depth=2
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx
	movl	228(%rcx), %edx
	addl	$1, %edx
	movq	display, %rcx
	movl	444(%rcx), %esi
	subl	$1, %esi
	movl	%edx, %edi
	movl	%esi, -72(%rbp)         # 4-byte Spill
	movl	%eax, %esi
	movl	-72(%rbp), %edx         # 4-byte Reload
	movl	%eax, %ecx
	callq	RefreshLine
.LBB22_63:                              # %if.end.135
                                        #   in Loop: Header=BB22_55 Depth=2
	jmp	.LBB22_64
.LBB22_64:                              # %for.inc.136
                                        #   in Loop: Header=BB22_55 Depth=2
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB22_55
.LBB22_65:                              # %for.end.138
                                        #   in Loop: Header=BB22_53 Depth=1
	cmpl	$0, -40(%rbp)
	je	.LBB22_69
# BB#66:                                # %land.lhs.true.140
                                        #   in Loop: Header=BB22_53 Depth=1
	cmpl	$0, -20(%rbp)
	je	.LBB22_69
# BB#67:                                # %land.lhs.true.142
                                        #   in Loop: Header=BB22_53 Depth=1
	movq	-8(%rbp), %rax
	movq	display, %rcx
	cmpq	376(%rcx), %rax
	jne	.LBB22_69
# BB#68:                                # %if.then.146
                                        #   in Loop: Header=BB22_53 Depth=1
	callq	RefreshHStatus
.LBB22_69:                              # %if.end.147
                                        #   in Loop: Header=BB22_53 Depth=1
	cmpl	$-1, -44(%rbp)
	je	.LBB22_72
# BB#70:                                # %land.lhs.true.150
                                        #   in Loop: Header=BB22_53 Depth=1
	cmpl	$-1, -48(%rbp)
	je	.LBB22_72
# BB#71:                                # %if.then.153
                                        #   in Loop: Header=BB22_53 Depth=1
	movl	-44(%rbp), %edi
	movl	-48(%rbp), %esi
	callq	GotoPos
.LBB22_72:                              # %if.end.154
                                        #   in Loop: Header=BB22_53 Depth=1
	jmp	.LBB22_73
.LBB22_73:                              # %for.inc.155
                                        #   in Loop: Header=BB22_53 Depth=1
	movq	display, %rax
	movq	(%rax), %rax
	movq	%rax, display
	jmp	.LBB22_53
.LBB22_74:                              # %for.end.157
	movq	-56(%rbp), %rax
	movq	%rax, display
.LBB22_75:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	WindowChanged, .Lfunc_end22-WindowChanged
	.cfi_endproc

	.globl	MFindUsedLine
	.align	16, 0x90
	.type	MFindUsedLine,@function
MFindUsedLine:                          # @MFindUsedLine
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	9864(%rdi), %rdi
	movslq	-12(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	%rax, %rdi
	movq	%rdi, -32(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB23_2
.LBB23_2:                               # %do.end
	movl	-12(%rbp), %eax
	movl	%eax, -20(%rbp)
.LBB23_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jl	.LBB23_22
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB23_3 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	movq	blank, %rsi
	movq	-8(%rbp), %rax
	movslq	32(%rax), %rdx
	callq	bcmp
	cmpl	$0, %eax
	je	.LBB23_6
# BB#5:                                 # %if.then
	jmp	.LBB23_22
.LBB23_6:                               # %if.end
                                        #   in Loop: Header=BB23_3 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	null, %rax
	je	.LBB23_9
# BB#7:                                 # %land.lhs.true
                                        #   in Loop: Header=BB23_3 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	movq	null, %rsi
	movq	-8(%rbp), %rax
	movslq	32(%rax), %rdx
	callq	bcmp
	cmpl	$0, %eax
	je	.LBB23_9
# BB#8:                                 # %if.then.9
	jmp	.LBB23_22
.LBB23_9:                               # %if.end.10
                                        #   in Loop: Header=BB23_3 Depth=1
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	null, %rax
	je	.LBB23_12
# BB#10:                                # %land.lhs.true.13
                                        #   in Loop: Header=BB23_3 Depth=1
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdi
	movq	null, %rsi
	movq	-8(%rbp), %rax
	movslq	32(%rax), %rdx
	callq	bcmp
	cmpl	$0, %eax
	je	.LBB23_12
# BB#11:                                # %if.then.20
	jmp	.LBB23_22
.LBB23_12:                              # %if.end.21
                                        #   in Loop: Header=BB23_3 Depth=1
	movq	-8(%rbp), %rax
	cmpl	$8, 48(%rax)
	jne	.LBB23_20
# BB#13:                                # %if.then.25
                                        #   in Loop: Header=BB23_3 Depth=1
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	null, %rax
	je	.LBB23_16
# BB#14:                                # %land.lhs.true.28
                                        #   in Loop: Header=BB23_3 Depth=1
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	movq	null, %rsi
	movq	-8(%rbp), %rax
	movslq	32(%rax), %rdx
	callq	bcmp
	cmpl	$0, %eax
	je	.LBB23_16
# BB#15:                                # %if.then.35
	jmp	.LBB23_22
.LBB23_16:                              # %if.end.36
                                        #   in Loop: Header=BB23_3 Depth=1
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	null, %rax
	je	.LBB23_19
# BB#17:                                # %land.lhs.true.39
                                        #   in Loop: Header=BB23_3 Depth=1
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdi
	movq	null, %rsi
	movq	-8(%rbp), %rax
	movslq	32(%rax), %rdx
	callq	bcmp
	cmpl	$0, %eax
	je	.LBB23_19
# BB#18:                                # %if.then.46
	jmp	.LBB23_22
.LBB23_19:                              # %if.end.47
                                        #   in Loop: Header=BB23_3 Depth=1
	jmp	.LBB23_20
.LBB23_20:                              # %if.end.48
                                        #   in Loop: Header=BB23_3 Depth=1
	jmp	.LBB23_21
.LBB23_21:                              # %for.inc
                                        #   in Loop: Header=BB23_3 Depth=1
	movl	-20(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -20(%rbp)
	movq	-32(%rbp), %rcx
	addq	$-40, %rcx
	movq	%rcx, -32(%rbp)
	jmp	.LBB23_3
.LBB23_22:                              # %for.end
	jmp	.LBB23_23
.LBB23_23:                              # %do.body.49
	jmp	.LBB23_24
.LBB23_24:                              # %do.end.50
	movl	-20(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	MFindUsedLine, .Lfunc_end23-MFindUsedLine
	.cfi_endproc

	.globl	WBell
	.align	16, 0x90
	.type	WBell,@function
WBell:                                  # @WBell
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpq	$0, displays
	jne	.LBB24_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	$2, 10816(%rax)
.LBB24_2:                               # %if.end
	movq	displays, %rax
	movq	%rax, display
.LBB24_3:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_5 Depth 2
	cmpq	$0, display
	je	.LBB24_20
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB24_3 Depth=1
	movq	display, %rax
	movq	328(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB24_5:                               # %for.cond.1
                                        #   Parent Loop BB24_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -24(%rbp)
	je	.LBB24_10
# BB#6:                                 # %for.body.3
                                        #   in Loop: Header=BB24_5 Depth=2
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	56(%rax), %rax
	movq	-8(%rbp), %rcx
	addq	$24, %rcx
	cmpq	%rcx, %rax
	jne	.LBB24_8
# BB#7:                                 # %if.then.5
                                        #   in Loop: Header=BB24_3 Depth=1
	jmp	.LBB24_10
.LBB24_8:                               # %if.end.6
                                        #   in Loop: Header=BB24_5 Depth=2
	jmp	.LBB24_9
.LBB24_9:                               # %for.inc
                                        #   in Loop: Header=BB24_5 Depth=2
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB24_5
.LBB24_10:                              # %for.end
                                        #   in Loop: Header=BB24_3 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB24_13
# BB#11:                                # %land.lhs.true
                                        #   in Loop: Header=BB24_3 Depth=1
	cmpl	$0, -12(%rbp)
	jne	.LBB24_13
# BB#12:                                # %if.then.9
                                        #   in Loop: Header=BB24_3 Depth=1
	movq	display, %rax
	movq	5776(%rax), %rdi
	callq	AddCStr
	jmp	.LBB24_18
.LBB24_13:                              # %if.else
                                        #   in Loop: Header=BB24_3 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB24_16
# BB#14:                                # %land.lhs.true.11
                                        #   in Loop: Header=BB24_3 Depth=1
	movq	display, %rax
	cmpq	$0, 5784(%rax)
	je	.LBB24_16
# BB#15:                                # %if.then.16
                                        #   in Loop: Header=BB24_3 Depth=1
	movq	display, %rax
	movq	5784(%rax), %rdi
	callq	AddCStr
	jmp	.LBB24_17
.LBB24_16:                              # %if.else.20
                                        #   in Loop: Header=BB24_3 Depth=1
	movl	$1, %eax
	movl	$3, %ecx
	cmpl	$0, -12(%rbp)
	cmovnel	%ecx, %eax
	movq	-8(%rbp), %rdx
	movl	%eax, 10816(%rdx)
.LBB24_17:                              # %if.end.23
                                        #   in Loop: Header=BB24_3 Depth=1
	jmp	.LBB24_18
.LBB24_18:                              # %if.end.24
                                        #   in Loop: Header=BB24_3 Depth=1
	jmp	.LBB24_19
.LBB24_19:                              # %for.inc.25
                                        #   in Loop: Header=BB24_3 Depth=1
	movq	display, %rax
	movq	(%rax), %rax
	movq	%rax, display
	jmp	.LBB24_3
.LBB24_20:                              # %for.end.26
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	WBell, .Lfunc_end24-WBell
	.cfi_endproc

	.globl	WMsg
	.align	16, 0x90
	.type	WMsg,@function
WMsg:                                   # @WMsg
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
	subq	$32, %rsp
	movabsq	$.L.str.2, %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	flayer, %rdx
	movq	%rdx, -32(%rbp)
	movq	-8(%rbp), %rdx
	addq	$24, %rdx
	movq	%rdx, flayer
	movl	-12(%rbp), %edi
	movq	-24(%rbp), %rdx
	movq	%rax, %rsi
	movb	$0, %al
	callq	LMsg
	movq	-32(%rbp), %rdx
	movq	%rdx, flayer
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	WMsg, .Lfunc_end25-WMsg
	.cfi_endproc

	.globl	WChangeSize
	.align	16, 0x90
	.type	WChangeSize,@function
WChangeSize:                            # @WChangeSize
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	$0, -20(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 24(%rdi)
	jne	.LBB26_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	10860(%rax), %ecx
	callq	ChangeWindowSize
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jmp	.LBB26_37
.LBB26_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB26_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB26_14
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB26_3 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, display
	movq	-8(%rbp), %rax
	movq	display, %rcx
	cmpq	376(%rcx), %rax
	je	.LBB26_6
# BB#5:                                 # %if.then.4
                                        #   in Loop: Header=BB26_3 Depth=1
	jmp	.LBB26_13
.LBB26_6:                               # %if.end.5
                                        #   in Loop: Header=BB26_3 Depth=1
	movq	display, %rax
	cmpq	$0, 5792(%rax)
	je	.LBB26_8
# BB#7:                                 # %if.then.7
	jmp	.LBB26_14
.LBB26_8:                               # %if.end.8
                                        #   in Loop: Header=BB26_3 Depth=1
	movq	display, %rax
	cmpq	$0, 5800(%rax)
	je	.LBB26_12
# BB#9:                                 # %land.lhs.true
                                        #   in Loop: Header=BB26_3 Depth=1
	movl	-12(%rbp), %eax
	cmpl	Z0width, %eax
	je	.LBB26_11
# BB#10:                                # %lor.lhs.false
                                        #   in Loop: Header=BB26_3 Depth=1
	movl	-12(%rbp), %eax
	cmpl	Z1width, %eax
	jne	.LBB26_12
.LBB26_11:                              # %if.then.15
                                        #   in Loop: Header=BB26_3 Depth=1
	movl	$1, -20(%rbp)
.LBB26_12:                              # %if.end.16
                                        #   in Loop: Header=BB26_3 Depth=1
	jmp	.LBB26_13
.LBB26_13:                              # %for.inc
                                        #   in Loop: Header=BB26_3 Depth=1
	movq	-32(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB26_3
.LBB26_14:                              # %for.end
	cmpq	$0, -32(%rbp)
	jne	.LBB26_17
# BB#15:                                # %land.lhs.true.18
	cmpl	$0, -20(%rbp)
	jne	.LBB26_17
# BB#16:                                # %if.then.20
	jmp	.LBB26_37
.LBB26_17:                              # %if.end.21
	movq	display, %rax
	cmpq	$0, 5792(%rax)
	jne	.LBB26_19
# BB#18:                                # %if.then.26
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	movl	%ecx, -16(%rbp)
.LBB26_19:                              # %if.end.28
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	10860(%rax), %ecx
	callq	ChangeWindowSize
	movq	displays, %rdi
	movq	%rdi, display
	movl	%eax, -40(%rbp)         # 4-byte Spill
.LBB26_20:                              # %for.cond.31
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB26_28 Depth 2
	cmpq	$0, display
	je	.LBB26_37
# BB#21:                                # %for.body.33
                                        #   in Loop: Header=BB26_20 Depth=1
	movq	-8(%rbp), %rax
	movq	display, %rcx
	cmpq	376(%rcx), %rax
	jne	.LBB26_27
# BB#22:                                # %if.then.36
                                        #   in Loop: Header=BB26_20 Depth=1
	movq	display, %rax
	cmpq	$0, 328(%rax)
	je	.LBB26_25
# BB#23:                                # %land.lhs.true.38
                                        #   in Loop: Header=BB26_20 Depth=1
	movq	display, %rax
	movq	328(%rax), %rax
	cmpq	$0, (%rax)
	jne	.LBB26_25
# BB#24:                                # %if.then.41
                                        #   in Loop: Header=BB26_20 Depth=1
	movl	-12(%rbp), %edi
	movl	-16(%rbp), %esi
	callq	ResizeDisplay
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB26_26
.LBB26_25:                              # %if.else
                                        #   in Loop: Header=BB26_20 Depth=1
	movl	-12(%rbp), %edi
	movq	display, %rax
	movl	448(%rax), %esi
	callq	ResizeDisplay
	movl	%eax, -48(%rbp)         # 4-byte Spill
.LBB26_26:                              # %if.end.44
                                        #   in Loop: Header=BB26_20 Depth=1
	callq	ResizeLayersToCanvases
	jmp	.LBB26_36
.LBB26_27:                              # %if.end.45
                                        #   in Loop: Header=BB26_20 Depth=1
	movq	display, %rax
	movq	328(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB26_28:                              # %for.cond.47
                                        #   Parent Loop BB26_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -32(%rbp)
	je	.LBB26_33
# BB#29:                                # %for.body.49
                                        #   in Loop: Header=BB26_28 Depth=2
	movq	-32(%rbp), %rax
	movq	64(%rax), %rax
	movq	56(%rax), %rax
	movq	-8(%rbp), %rcx
	addq	$24, %rcx
	cmpq	%rcx, %rax
	jne	.LBB26_31
# BB#30:                                # %if.then.52
                                        #   in Loop: Header=BB26_20 Depth=1
	jmp	.LBB26_33
.LBB26_31:                              # %if.end.53
                                        #   in Loop: Header=BB26_28 Depth=2
	jmp	.LBB26_32
.LBB26_32:                              # %for.inc.54
                                        #   in Loop: Header=BB26_28 Depth=2
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB26_28
.LBB26_33:                              # %for.end.56
                                        #   in Loop: Header=BB26_20 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB26_35
# BB#34:                                # %if.then.58
                                        #   in Loop: Header=BB26_20 Depth=1
	xorl	%edi, %edi
	callq	Redisplay
.LBB26_35:                              # %if.end.59
                                        #   in Loop: Header=BB26_20 Depth=1
	jmp	.LBB26_36
.LBB26_36:                              # %for.inc.60
                                        #   in Loop: Header=BB26_20 Depth=1
	movq	display, %rax
	movq	(%rax), %rax
	movq	%rax, display
	jmp	.LBB26_20
.LBB26_37:                              # %for.end.61
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	WChangeSize, .Lfunc_end26-WChangeSize
	.cfi_endproc

	.align	16, 0x90
	.type	WindowChangedCheck,@function
WindowChangedCheck:                     # @WindowChangedCheck
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$0, -28(%rbp)
.LBB27_1:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB27_5 Depth 2
	movq	-8(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB27_20
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB27_1 Depth=1
	movl	$5, %eax
	movl	$37, %ecx
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -8(%rbp)
	movsbl	(%rdx), %edi
	cmpq	$0, -24(%rbp)
	cmovnel	%ecx, %eax
	cmpl	%eax, %edi
	je	.LBB27_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB27_1 Depth=1
	jmp	.LBB27_1
.LBB27_4:                               # %if.end
                                        #   in Loop: Header=BB27_1 Depth=1
	movl	$0, -32(%rbp)
	movq	-8(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$43, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	movq	-8(%rbp), %rax
	movslq	%ecx, %rsi
	addq	%rsi, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$45, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	movq	-8(%rbp), %rax
	movslq	%ecx, %rsi
	addq	%rsi, %rax
	movq	%rax, -8(%rbp)
.LBB27_5:                               # %while.cond.11
                                        #   Parent Loop BB27_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$48, %eax
	movb	%cl, -33(%rbp)          # 1-byte Spill
	jl	.LBB27_7
# BB#6:                                 # %land.rhs
                                        #   in Loop: Header=BB27_5 Depth=2
	movq	-8(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$57, %ecx
	setle	%dl
	movb	%dl, -33(%rbp)          # 1-byte Spill
.LBB27_7:                               # %land.end
                                        #   in Loop: Header=BB27_5 Depth=2
	movb	-33(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB27_8
	jmp	.LBB27_9
.LBB27_8:                               # %while.body.18
                                        #   in Loop: Header=BB27_5 Depth=2
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB27_5
.LBB27_9:                               # %while.end
                                        #   in Loop: Header=BB27_1 Depth=1
	movq	-8(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$76, %ecx
	jne	.LBB27_11
# BB#10:                                # %if.then.23
                                        #   in Loop: Header=BB27_1 Depth=1
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	movl	$256, -32(%rbp)         # imm = 0x100
.LBB27_11:                              # %if.end.25
                                        #   in Loop: Header=BB27_1 Depth=1
	movq	-8(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$104, %ecx
	jne	.LBB27_13
# BB#12:                                # %if.then.29
                                        #   in Loop: Header=BB27_1 Depth=1
	movl	$1, -28(%rbp)
.LBB27_13:                              # %if.end.30
                                        #   in Loop: Header=BB27_1 Depth=1
	movq	-8(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	-12(%rbp), %ecx
	je	.LBB27_16
# BB#14:                                # %lor.lhs.false
                                        #   in Loop: Header=BB27_1 Depth=1
	movq	-8(%rbp), %rax
	movsbl	(%rax), %ecx
	orl	-32(%rbp), %ecx
	cmpl	-12(%rbp), %ecx
	je	.LBB27_16
# BB#15:                                # %lor.lhs.false.37
                                        #   in Loop: Header=BB27_1 Depth=1
	cmpl	$100, -12(%rbp)
	jne	.LBB27_17
.LBB27_16:                              # %if.then.40
	jmp	.LBB27_20
.LBB27_17:                              # %if.end.41
                                        #   in Loop: Header=BB27_1 Depth=1
	movq	-8(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB27_19
# BB#18:                                # %if.then.43
                                        #   in Loop: Header=BB27_1 Depth=1
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
.LBB27_19:                              # %if.end.45
                                        #   in Loop: Header=BB27_1 Depth=1
	jmp	.LBB27_1
.LBB27_20:                              # %while.end.46
	cmpq	$0, -24(%rbp)
	je	.LBB27_22
# BB#21:                                # %if.then.48
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB27_22:                              # %if.end.49
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-8(%rbp), %rdx
	movsbl	(%rdx), %esi
	cmpl	$0, %esi
	cmovnel	%ecx, %eax
	popq	%rbp
	retq
.Lfunc_end27:
	.size	WindowChangedCheck, .Lfunc_end27-WindowChangedCheck
	.cfi_endproc

	.align	16, 0x90
	.type	BackSpace,@function
BackSpace:                              # @BackSpace
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
	movq	curr, %rax
	cmpl	$0, 40(%rax)
	jle	.LBB28_2
# BB#1:                                 # %if.then
	movq	curr, %rax
	movl	40(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 40(%rax)
	jmp	.LBB28_6
.LBB28_2:                               # %if.else
	movq	curr, %rax
	cmpl	$0, 9964(%rax)
	je	.LBB28_5
# BB#3:                                 # %land.lhs.true
	movq	curr, %rax
	cmpl	$0, 44(%rax)
	jle	.LBB28_5
# BB#4:                                 # %if.then.5
	movl	cols, %eax
	subl	$1, %eax
	movq	curr, %rcx
	movl	%eax, 40(%rcx)
	movq	curr, %rcx
	movl	44(%rcx), %eax
	addl	$-1, %eax
	movl	%eax, 44(%rcx)
.LBB28_5:                               # %if.end
	jmp	.LBB28_6
.LBB28_6:                               # %if.end.11
	movq	curr, %rax
	addq	$24, %rax
	movq	curr, %rcx
	movl	40(%rcx), %esi
	movq	curr, %rcx
	movl	44(%rcx), %edx
	movq	%rax, %rdi
	callq	LGotoPos
	popq	%rbp
	retq
.Lfunc_end28:
	.size	BackSpace, .Lfunc_end28-BackSpace
	.cfi_endproc

	.align	16, 0x90
	.type	Return,@function
Return:                                 # @Return
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
	movq	curr, %rax
	cmpl	$0, 40(%rax)
	jne	.LBB29_2
# BB#1:                                 # %if.then
	jmp	.LBB29_3
.LBB29_2:                               # %if.end
	movq	curr, %rax
	movl	$0, 40(%rax)
	movq	curr, %rax
	addq	$24, %rax
	movq	curr, %rcx
	movl	40(%rcx), %esi
	movq	curr, %rcx
	movl	44(%rcx), %edx
	movq	%rax, %rdi
	callq	LGotoPos
.LBB29_3:                               # %return
	popq	%rbp
	retq
.Lfunc_end29:
	.size	Return, .Lfunc_end29-Return
	.cfi_endproc

	.align	16, 0x90
	.type	FindAKA,@function
FindAKA:                                # @FindAKA
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
	subq	$48, %rsp
	movq	curr, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$8752, %rax             # imm = 0x2230
	movq	%rax, %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -28(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$0, 9520(%rax)
	jle	.LBB30_3
# BB#1:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movl	9520(%rax), %ecx
	movq	-24(%rbp), %rax
	cmpl	36(%rax), %ecx
	jg	.LBB30_3
# BB#2:                                 # %cond.true
	movq	-24(%rbp), %rax
	movl	9520(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, -36(%rbp)         # 4-byte Spill
	jmp	.LBB30_4
.LBB30_3:                               # %cond.false
	movq	-24(%rbp), %rax
	movl	44(%rax), %ecx
	movl	%ecx, -36(%rbp)         # 4-byte Spill
.LBB30_4:                               # %cond.end
	movl	-36(%rbp), %eax         # 4-byte Reload
	movl	%eax, -32(%rbp)
	movq	-24(%rbp), %rcx
	movl	32(%rcx), %eax
	movl	%eax, cols
.LBB30_5:                               # %try_line
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB30_8 Depth 2
	movslq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	imulq	$40, %rax, %rax
	addq	9864(%rcx), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$0, 9520(%rax)
	jle	.LBB30_17
# BB#6:                                 # %land.lhs.true.11
                                        #   in Loop: Header=BB30_5 Depth=1
	movq	-24(%rbp), %rax
	movsbl	8752(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB30_17
# BB#7:                                 # %if.then
                                        #   in Loop: Header=BB30_5 Depth=1
	jmp	.LBB30_8
.LBB30_8:                               # %for.cond
                                        #   Parent Loop BB30_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	subq	%rcx, %rax
	movl	cols, %edx
	subl	-28(%rbp), %edx
	movslq	%edx, %rcx
	cmpq	%rcx, %rax
	jl	.LBB30_13
# BB#9:                                 # %if.then.21
                                        #   in Loop: Header=BB30_5 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	movq	-24(%rbp), %rcx
	cmpl	9520(%rcx), %eax
	jne	.LBB30_12
# BB#10:                                # %land.lhs.true.25
                                        #   in Loop: Header=BB30_5 Depth=1
	movl	-32(%rbp), %eax
	cmpl	rows, %eax
	jge	.LBB30_12
# BB#11:                                # %if.then.28
                                        #   in Loop: Header=BB30_5 Depth=1
	jmp	.LBB30_5
.LBB30_12:                              # %if.end
	jmp	.LBB30_39
.LBB30_13:                              # %if.end.29
                                        #   in Loop: Header=BB30_8 Depth=2
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$8752, %rax             # imm = 0x2230
	movslq	-28(%rbp), %rdx
	movq	%rax, %rsi
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB30_15
# BB#14:                                # %if.then.36
	jmp	.LBB30_16
.LBB30_15:                              # %if.end.37
                                        #   in Loop: Header=BB30_8 Depth=2
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB30_8
.LBB30_16:                              # %for.end
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -8(%rbp)
.LBB30_17:                              # %if.end.38
	movslq	cols, %rax
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	subq	%rdx, %rcx
	subq	%rcx, %rax
	movl	%eax, %esi
	movl	%esi, -28(%rbp)
.LBB30_18:                              # %for.cond.45
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -28(%rbp)
	movb	%cl, -37(%rbp)          # 1-byte Spill
	je	.LBB30_20
# BB#19:                                # %land.rhs
                                        #   in Loop: Header=BB30_18 Depth=1
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$32, %ecx
	sete	%dl
	movb	%dl, -37(%rbp)          # 1-byte Spill
.LBB30_20:                              # %land.end
                                        #   in Loop: Header=BB30_18 Depth=1
	movb	-37(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB30_21
	jmp	.LBB30_23
.LBB30_21:                              # %for.body
                                        #   in Loop: Header=BB30_18 Depth=1
	jmp	.LBB30_22
.LBB30_22:                              # %for.inc
                                        #   in Loop: Header=BB30_18 Depth=1
	movl	-28(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -28(%rbp)
	movq	-8(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -8(%rbp)
	jmp	.LBB30_18
.LBB30_23:                              # %for.end.50
	cmpl	$0, -28(%rbp)
	je	.LBB30_38
# BB#24:                                # %if.then.52
	movq	-24(%rbp), %rax
	cmpl	$0, 9520(%rax)
	jle	.LBB30_29
# BB#25:                                # %land.lhs.true.56
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$33, %ecx
	je	.LBB30_28
# BB#26:                                # %lor.lhs.false
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$37, %ecx
	je	.LBB30_28
# BB#27:                                # %lor.lhs.false.63
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$94, %ecx
	jne	.LBB30_29
.LBB30_28:                              # %if.then.67
	movq	-24(%rbp), %rax
	movl	$-1, 9520(%rax)
	jmp	.LBB30_30
.LBB30_29:                              # %if.else
	movq	-24(%rbp), %rax
	movl	$0, 9520(%rax)
.LBB30_30:                              # %if.end.70
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
.LBB30_31:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -28(%rbp)
	movb	%cl, -38(%rbp)          # 1-byte Spill
	je	.LBB30_33
# BB#32:                                # %land.rhs.72
                                        #   in Loop: Header=BB30_31 Depth=1
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$32, %ecx
	setne	%dl
	movb	%dl, -38(%rbp)          # 1-byte Spill
.LBB30_33:                              # %land.end.76
                                        #   in Loop: Header=BB30_31 Depth=1
	movb	-38(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB30_34
	jmp	.LBB30_37
.LBB30_34:                              # %while.body
                                        #   in Loop: Header=BB30_31 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -8(%rbp)
	movzbl	(%rax), %edx
	cmpl	$47, %edx
	jne	.LBB30_36
# BB#35:                                # %if.then.81
                                        #   in Loop: Header=BB30_31 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
.LBB30_36:                              # %if.end.82
                                        #   in Loop: Header=BB30_31 Depth=1
	movl	-28(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB30_31
.LBB30_37:                              # %while.end
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	callq	ChangeAKA
	jmp	.LBB30_39
.LBB30_38:                              # %if.else.88
	movq	-24(%rbp), %rax
	movl	$0, 9520(%rax)
.LBB30_39:                              # %if.end.90
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	FindAKA, .Lfunc_end30-FindAKA
	.cfi_endproc

	.align	16, 0x90
	.type	LineFeed,@function
LineFeed:                               # @LineFeed
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
	subq	$64, %rsp
	movl	%edi, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.LBB31_2
# BB#1:                                 # %if.then
	movq	curr, %rax
	movl	$0, 40(%rax)
.LBB31_2:                               # %if.end
	movq	curr, %rax
	movl	44(%rax), %ecx
	movq	curr, %rax
	cmpl	9960(%rax), %ecx
	je	.LBB31_6
# BB#3:                                 # %if.then.2
	movq	curr, %rax
	movl	44(%rax), %ecx
	movl	rows, %edx
	subl	$1, %edx
	cmpl	%edx, %ecx
	jge	.LBB31_5
# BB#4:                                 # %if.then.6
	movq	curr, %rax
	movl	44(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 44(%rax)
.LBB31_5:                               # %if.end.9
	movq	curr, %rax
	addq	$24, %rax
	movq	curr, %rcx
	movl	40(%rcx), %esi
	movq	curr, %rcx
	movl	44(%rcx), %edx
	movq	%rax, %rdi
	callq	LGotoPos
	jmp	.LBB31_15
.LBB31_6:                               # %if.end.15
	movq	curr, %rax
	cmpl	$1, 9520(%rax)
	jle	.LBB31_8
# BB#7:                                 # %if.then.17
	movq	curr, %rax
	movl	9520(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 9520(%rax)
.LBB31_8:                               # %if.end.19
	movq	curr, %rdi
	movq	curr, %rax
	movl	9956(%rax), %edx
	movq	curr, %rax
	movl	9960(%rax), %ecx
	movq	curr, %rax
	cmpl	$0, 10016(%rax)
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movl	%edx, -20(%rbp)         # 4-byte Spill
	movl	%ecx, -24(%rbp)         # 4-byte Spill
	je	.LBB31_10
# BB#9:                                 # %cond.true
	xorl	%eax, %eax
	movl	$256, %ecx              # imm = 0x100
	movq	curr, %rdx
	movzbl	9876(%rdx), %esi
	andl	$240, %esi
	sarl	$4, %esi
	movq	curr, %rdx
	movzbl	9873(%rdx), %edi
	andl	$128, %edi
	cmpl	$0, %edi
	cmovnel	%ecx, %eax
	orl	%eax, %esi
	movl	%esi, -28(%rbp)         # 4-byte Spill
	jmp	.LBB31_11
.LBB31_10:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
	jmp	.LBB31_11
.LBB31_11:                              # %cond.end
	movl	-28(%rbp), %eax         # 4-byte Reload
	movl	$1, %esi
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	-20(%rbp), %edx         # 4-byte Reload
	movl	-24(%rbp), %ecx         # 4-byte Reload
	movl	%eax, %r8d
	callq	MScrollV
	movq	curr, %rdi
	addq	$24, %rdi
	movq	curr, %r9
	movl	9956(%r9), %edx
	movq	curr, %r9
	movl	9960(%r9), %ecx
	movq	curr, %r9
	cmpl	$0, 10016(%r9)
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movl	%edx, -44(%rbp)         # 4-byte Spill
	movl	%ecx, -48(%rbp)         # 4-byte Spill
	je	.LBB31_13
# BB#12:                                # %cond.true.32
	xorl	%eax, %eax
	movl	$256, %ecx              # imm = 0x100
	movq	curr, %rdx
	movzbl	9876(%rdx), %esi
	andl	$240, %esi
	sarl	$4, %esi
	movq	curr, %rdx
	movzbl	9873(%rdx), %edi
	andl	$128, %edi
	cmpl	$0, %edi
	cmovnel	%ecx, %eax
	orl	%eax, %esi
	movl	%esi, -52(%rbp)         # 4-byte Spill
	jmp	.LBB31_14
.LBB31_13:                              # %cond.false.45
	xorl	%eax, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB31_14
.LBB31_14:                              # %cond.end.46
	movl	-52(%rbp), %eax         # 4-byte Reload
	movl	$1, %esi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movl	-44(%rbp), %edx         # 4-byte Reload
	movl	-48(%rbp), %ecx         # 4-byte Reload
	movl	%eax, %r8d
	callq	LScrollV
	movq	curr, %rdi
	addq	$24, %rdi
	movq	curr, %r9
	movl	40(%r9), %esi
	movq	curr, %r9
	movl	44(%r9), %edx
	callq	LGotoPos
.LBB31_15:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	LineFeed, .Lfunc_end31-LineFeed
	.cfi_endproc

	.align	16, 0x90
	.type	ForwardTab,@function
ForwardTab:                             # @ForwardTab
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
	subq	$16, %rsp
	movq	curr, %rax
	movl	40(%rax), %ecx
	movl	%ecx, -4(%rbp)
	movl	-4(%rbp), %ecx
	cmpl	cols, %ecx
	jne	.LBB32_2
# BB#1:                                 # %if.then
	movl	$1, %edi
	callq	LineFeed
	movl	$0, -4(%rbp)
.LBB32_2:                               # %if.end
	movslq	-4(%rbp), %rax
	movq	curr, %rcx
	movq	10808(%rcx), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$0, %edx
	je	.LBB32_5
# BB#3:                                 # %land.lhs.true
	movl	-4(%rbp), %eax
	movl	cols, %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB32_5
# BB#4:                                 # %if.then.3
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
.LBB32_5:                               # %if.end.4
	jmp	.LBB32_6
.LBB32_6:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-4(%rbp), %eax
	movl	cols, %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	movb	%cl, -5(%rbp)           # 1-byte Spill
	jge	.LBB32_8
# BB#7:                                 # %land.rhs
                                        #   in Loop: Header=BB32_6 Depth=1
	movslq	-4(%rbp), %rax
	movq	curr, %rcx
	movq	10808(%rcx), %rcx
	cmpb	$0, (%rcx,%rax)
	setne	%dl
	xorb	$-1, %dl
	movb	%dl, -5(%rbp)           # 1-byte Spill
.LBB32_8:                               # %land.end
                                        #   in Loop: Header=BB32_6 Depth=1
	movb	-5(%rbp), %al           # 1-byte Reload
	testb	$1, %al
	jne	.LBB32_9
	jmp	.LBB32_10
.LBB32_9:                               # %while.body
                                        #   in Loop: Header=BB32_6 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB32_6
.LBB32_10:                              # %while.end
	movl	-4(%rbp), %eax
	movq	curr, %rcx
	movl	%eax, 40(%rcx)
	movq	curr, %rcx
	addq	$24, %rcx
	movq	curr, %rdx
	movl	40(%rdx), %esi
	movq	curr, %rdx
	movl	44(%rdx), %edx
	movq	%rcx, %rdi
	callq	LGotoPos
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	ForwardTab, .Lfunc_end32-ForwardTab
	.cfi_endproc

	.align	16, 0x90
	.type	MapCharset,@function
MapCharset:                             # @MapCharset
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp99:
	.cfi_def_cfa_offset 16
.Ltmp100:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp101:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	curr, %rax
	movl	$0, 9908(%rax)
	movq	curr, %rax
	movl	9884(%rax), %edi
	cmpl	-4(%rbp), %edi
	je	.LBB33_2
# BB#1:                                 # %if.then
	movl	-4(%rbp), %eax
	movq	curr, %rcx
	movl	%eax, 9884(%rcx)
	movslq	-4(%rbp), %rcx
	movq	curr, %rdx
	movl	9892(%rdx,%rcx,4), %eax
	movb	%al, %sil
	movq	curr, %rcx
	movb	%sil, 9878(%rcx)
	movq	curr, %rcx
	movb	9878(%rcx), %sil
	movq	curr, %rcx
	movb	%sil, 9874(%rcx)
	movq	curr, %rcx
	addq	$24, %rcx
	movq	curr, %rdx
	addq	$9872, %rdx             # imm = 0x2690
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	callq	LSetRendition
.LBB33_2:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	MapCharset, .Lfunc_end33-MapCharset
	.cfi_endproc

	.align	16, 0x90
	.type	MScrollV,@function
MScrollV:                               # @MScrollV
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp102:
	.cfi_def_cfa_offset 16
.Ltmp103:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp104:
	.cfi_def_cfa_register %rbp
	subq	$10304, %rsp            # imm = 0x2840
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.LBB34_2
# BB#1:                                 # %if.then
	jmp	.LBB34_55
.LBB34_2:                               # %if.end
	cmpl	$0, -12(%rbp)
	jle	.LBB34_33
# BB#3:                                 # %if.then.3
	movl	-20(%rbp), %eax
	subl	-16(%rbp), %eax
	addl	$1, %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB34_5
# BB#4:                                 # %if.then.5
	movl	-20(%rbp), %eax
	subl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
.LBB34_5:                               # %if.end.8
	cmpl	$256, -12(%rbp)         # imm = 0x100
	jle	.LBB34_7
# BB#6:                                 # %if.then.10
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %eax
	subl	$256, %eax              # imm = 0x100
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r8d
	movl	%eax, %esi
	callq	MScrollV
	movl	$256, -12(%rbp)         # imm = 0x100
.LBB34_7:                               # %if.end.12
	cmpl	$0, compacthist
	je	.LBB34_13
# BB#8:                                 # %if.then.13
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-16(%rbp), %edx
	callq	MFindUsedLine
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	subl	-16(%rbp), %eax
	addl	$1, %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB34_10
# BB#9:                                 # %if.then.17
	movl	-20(%rbp), %eax
	subl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
.LBB34_10:                              # %if.end.20
	cmpl	$0, -12(%rbp)
	jg	.LBB34_12
# BB#11:                                # %if.then.22
	jmp	.LBB34_55
.LBB34_12:                              # %if.end.23
	jmp	.LBB34_13
.LBB34_13:                              # %if.end.24
	movq	-8(%rbp), %rax
	movq	9864(%rax), %rax
	movslq	-16(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -10296(%rbp)
	movl	-16(%rbp), %edx
	movl	%edx, -28(%rbp)
.LBB34_14:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movl	-16(%rbp), %ecx
	addl	-12(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB34_29
# BB#15:                                # %for.body
                                        #   in Loop: Header=BB34_14 Depth=1
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	9956(%rcx), %eax
	jne	.LBB34_17
# BB#16:                                # %if.then.28
                                        #   in Loop: Header=BB34_14 Depth=1
	movq	-8(%rbp), %rdi
	movq	-10296(%rbp), %rsi
	callq	WAddLineToHist
.LBB34_17:                              # %if.end.29
                                        #   in Loop: Header=BB34_14 Depth=1
	movq	-10296(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	null, %rax
	je	.LBB34_19
# BB#18:                                # %if.then.31
                                        #   in Loop: Header=BB34_14 Depth=1
	movq	-10296(%rbp), %rax
	movq	8(%rax), %rdi
	callq	free
.LBB34_19:                              # %if.end.33
                                        #   in Loop: Header=BB34_14 Depth=1
	movq	null, %rax
	movq	-10296(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-10296(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	null, %rax
	je	.LBB34_21
# BB#20:                                # %if.then.36
                                        #   in Loop: Header=BB34_14 Depth=1
	movq	-10296(%rbp), %rax
	movq	16(%rax), %rdi
	callq	free
.LBB34_21:                              # %if.end.38
                                        #   in Loop: Header=BB34_14 Depth=1
	movq	null, %rax
	movq	-10296(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-10296(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	null, %rax
	je	.LBB34_23
# BB#22:                                # %if.then.41
                                        #   in Loop: Header=BB34_14 Depth=1
	movq	-10296(%rbp), %rax
	movq	24(%rax), %rdi
	callq	free
.LBB34_23:                              # %if.end.43
                                        #   in Loop: Header=BB34_14 Depth=1
	movq	null, %rax
	movq	-10296(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-10296(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	null, %rax
	je	.LBB34_25
# BB#24:                                # %if.then.46
                                        #   in Loop: Header=BB34_14 Depth=1
	movq	-10296(%rbp), %rax
	movq	32(%rax), %rdi
	callq	free
.LBB34_25:                              # %if.end.48
                                        #   in Loop: Header=BB34_14 Depth=1
	movq	null, %rax
	movq	-10296(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-10296(%rbp), %rax
	movq	(%rax), %rdi
	movq	-8(%rbp), %rax
	movl	32(%rax), %edx
	addl	$1, %edx
	movl	%edx, %esi
	callq	bclear
	cmpl	$0, -24(%rbp)
	je	.LBB34_27
# BB#26:                                # %if.then.52
                                        #   in Loop: Header=BB34_14 Depth=1
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	movl	-28(%rbp), %esi
	movq	-8(%rbp), %rax
	movl	32(%rax), %ecx
	movl	-24(%rbp), %r8d
	callq	MBceLine
.LBB34_27:                              # %if.end.55
                                        #   in Loop: Header=BB34_14 Depth=1
	jmp	.LBB34_28
.LBB34_28:                              # %for.inc
                                        #   in Loop: Header=BB34_14 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	movq	-10296(%rbp), %rcx
	addq	$40, %rcx
	movq	%rcx, -10296(%rbp)
	jmp	.LBB34_14
.LBB34_29:                              # %for.end
	movslq	-12(%rbp), %rax
	imulq	$40, %rax, %rax
	movl	%eax, %ecx
	movl	%ecx, -32(%rbp)
	movl	-20(%rbp), %ecx
	subl	-16(%rbp), %ecx
	addl	$1, %ecx
	subl	-12(%rbp), %ecx
	movslq	%ecx, %rax
	imulq	$40, %rax, %rax
	movl	%eax, %ecx
	movl	%ecx, -36(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB34_32
# BB#30:                                # %land.lhs.true
	cmpl	$0, -36(%rbp)
	je	.LBB34_32
# BB#31:                                # %if.then.65
	leaq	-10288(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	9864(%rcx), %rcx
	movslq	-16(%rbp), %rdx
	imulq	$40, %rdx, %rdx
	addq	%rdx, %rcx
	movl	-32(%rbp), %esi
	movl	-36(%rbp), %edx
	movq	%rcx, %rdi
	movq	%rax, %rcx
	callq	Scroll
.LBB34_32:                              # %if.end.69
	jmp	.LBB34_55
.LBB34_33:                              # %if.else
	xorl	%eax, %eax
	subl	-12(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-20(%rbp), %eax
	subl	-16(%rbp), %eax
	addl	$1, %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB34_35
# BB#34:                                # %if.then.75
	movl	-20(%rbp), %eax
	subl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
.LBB34_35:                              # %if.end.78
	cmpl	$256, -12(%rbp)         # imm = 0x100
	jle	.LBB34_37
# BB#36:                                # %if.then.81
	xorl	%eax, %eax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %ecx
	subl	$256, %ecx              # imm = 0x100
	subl	%ecx, %eax
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r8d
	movl	%eax, %esi
	callq	MScrollV
	movl	$256, -12(%rbp)         # imm = 0x100
.LBB34_37:                              # %if.end.84
	movq	-8(%rbp), %rax
	movq	9864(%rax), %rax
	movslq	-20(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -10296(%rbp)
	movl	-20(%rbp), %edx
	movl	%edx, -28(%rbp)
.LBB34_38:                              # %for.cond.88
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movl	-20(%rbp), %ecx
	subl	-12(%rbp), %ecx
	cmpl	%ecx, %eax
	jle	.LBB34_51
# BB#39:                                # %for.body.92
                                        #   in Loop: Header=BB34_38 Depth=1
	movq	-10296(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	null, %rax
	je	.LBB34_41
# BB#40:                                # %if.then.96
                                        #   in Loop: Header=BB34_38 Depth=1
	movq	-10296(%rbp), %rax
	movq	8(%rax), %rdi
	callq	free
.LBB34_41:                              # %if.end.98
                                        #   in Loop: Header=BB34_38 Depth=1
	movq	null, %rax
	movq	-10296(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-10296(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	null, %rax
	je	.LBB34_43
# BB#42:                                # %if.then.103
                                        #   in Loop: Header=BB34_38 Depth=1
	movq	-10296(%rbp), %rax
	movq	16(%rax), %rdi
	callq	free
.LBB34_43:                              # %if.end.105
                                        #   in Loop: Header=BB34_38 Depth=1
	movq	null, %rax
	movq	-10296(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-10296(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	null, %rax
	je	.LBB34_45
# BB#44:                                # %if.then.110
                                        #   in Loop: Header=BB34_38 Depth=1
	movq	-10296(%rbp), %rax
	movq	24(%rax), %rdi
	callq	free
.LBB34_45:                              # %if.end.112
                                        #   in Loop: Header=BB34_38 Depth=1
	movq	null, %rax
	movq	-10296(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-10296(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	null, %rax
	je	.LBB34_47
# BB#46:                                # %if.then.117
                                        #   in Loop: Header=BB34_38 Depth=1
	movq	-10296(%rbp), %rax
	movq	32(%rax), %rdi
	callq	free
.LBB34_47:                              # %if.end.119
                                        #   in Loop: Header=BB34_38 Depth=1
	movq	null, %rax
	movq	-10296(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-10296(%rbp), %rax
	movq	(%rax), %rdi
	movq	-8(%rbp), %rax
	movl	32(%rax), %edx
	addl	$1, %edx
	movl	%edx, %esi
	callq	bclear
	cmpl	$0, -24(%rbp)
	je	.LBB34_49
# BB#48:                                # %if.then.126
                                        #   in Loop: Header=BB34_38 Depth=1
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	movl	-28(%rbp), %esi
	movq	-8(%rbp), %rax
	movl	32(%rax), %ecx
	movl	-24(%rbp), %r8d
	callq	MBceLine
.LBB34_49:                              # %if.end.129
                                        #   in Loop: Header=BB34_38 Depth=1
	jmp	.LBB34_50
.LBB34_50:                              # %for.inc.130
                                        #   in Loop: Header=BB34_38 Depth=1
	movl	-28(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -28(%rbp)
	movq	-10296(%rbp), %rcx
	addq	$-40, %rcx
	movq	%rcx, -10296(%rbp)
	jmp	.LBB34_38
.LBB34_51:                              # %for.end.132
	movslq	-12(%rbp), %rax
	imulq	$40, %rax, %rax
	movl	%eax, %ecx
	movl	%ecx, -32(%rbp)
	movl	-20(%rbp), %ecx
	subl	-16(%rbp), %ecx
	addl	$1, %ecx
	subl	-12(%rbp), %ecx
	movslq	%ecx, %rax
	imulq	$40, %rax, %rax
	movl	%eax, %ecx
	movl	%ecx, -36(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB34_54
# BB#52:                                # %land.lhs.true.143
	cmpl	$0, -36(%rbp)
	je	.LBB34_54
# BB#53:                                # %if.then.145
	leaq	-10288(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	9864(%rcx), %rcx
	movslq	-16(%rbp), %rdx
	imulq	$40, %rdx, %rdx
	addq	%rdx, %rcx
	movl	-36(%rbp), %esi
	movl	-32(%rbp), %edx
	movq	%rcx, %rdi
	movq	%rax, %rcx
	callq	Scroll
.LBB34_54:                              # %if.end.150
	jmp	.LBB34_55
.LBB34_55:                              # %if.end.151
	addq	$10304, %rsp            # imm = 0x2840
	popq	%rbp
	retq
.Lfunc_end34:
	.size	MScrollV, .Lfunc_end34-MScrollV
	.cfi_endproc

	.align	16, 0x90
	.type	WAddLineToHist,@function
WAddLineToHist:                         # @WAddLineToHist
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp105:
	.cfi_def_cfa_offset 16
.Ltmp106:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp107:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	cmpl	$0, 10860(%rsi)
	jne	.LBB35_2
# BB#1:                                 # %if.then
	jmp	.LBB35_12
.LBB35_2:                               # %if.end
	movq	-8(%rbp), %rax
	movslq	10864(%rax), %rax
	movq	-8(%rbp), %rcx
	imulq	$40, %rax, %rax
	addq	10872(%rcx), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	null, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-32(%rbp), %rax
	cmpq	null, %rax
	je	.LBB35_4
# BB#3:                                 # %if.then.8
	movq	-32(%rbp), %rdi
	callq	free
.LBB35_4:                               # %if.end.9
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	null, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-32(%rbp), %rax
	cmpq	null, %rax
	je	.LBB35_6
# BB#5:                                 # %if.then.14
	movq	-32(%rbp), %rdi
	callq	free
.LBB35_6:                               # %if.end.15
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	null, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-32(%rbp), %rax
	cmpq	null, %rax
	je	.LBB35_8
# BB#7:                                 # %if.then.20
	movq	-32(%rbp), %rdi
	callq	free
.LBB35_8:                               # %if.end.21
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	null, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-32(%rbp), %rax
	cmpq	null, %rax
	je	.LBB35_10
# BB#9:                                 # %if.then.26
	movq	-32(%rbp), %rdi
	callq	free
.LBB35_10:                              # %if.end.27
	movq	-8(%rbp), %rax
	movl	10864(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 10864(%rax)
	movq	-8(%rbp), %rax
	cmpl	10860(%rax), %ecx
	jl	.LBB35_12
# BB#11:                                # %if.then.31
	movq	-8(%rbp), %rax
	movl	$0, 10864(%rax)
.LBB35_12:                              # %if.end.33
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	WAddLineToHist, .Lfunc_end35-WAddLineToHist
	.cfi_endproc

	.align	16, 0x90
	.type	MBceLine,@function
MBceLine:                               # @MBceLine
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp108:
	.cfi_def_cfa_offset 16
.Ltmp109:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp110:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$56, %rsp
.Ltmp111:
	.cfi_offset %rbx, -24
	leaq	-40(%rbp), %rax
	movl	$128, %r9d
	xorl	%r10d, %r10d
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movl	mchar_null, %ecx
	movl	%ecx, -40(%rbp)
	movw	mchar_null+4, %r11w
	movw	%r11w, -36(%rbp)
	movzbl	-36(%rbp), %ecx
	andl	$15, %ecx
	movl	-32(%rbp), %edx
	shll	$4, %edx
	andl	$240, %edx
	orl	%edx, %ecx
	movb	%cl, %bl
	movb	%bl, -36(%rbp)
	movzbl	-39(%rbp), %ecx
	orl	$128, %ecx
	movl	-32(%rbp), %edx
	andl	$256, %edx              # imm = 0x100
	cmpl	$0, %edx
	cmovnel	%r10d, %r9d
	xorl	%r9d, %ecx
	movb	%cl, %bl
	movb	%bl, -39(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movq	%rax, %rdx
	callq	MFixLine
	movq	-16(%rbp), %rax
	movq	9864(%rax), %rax
	movslq	-20(%rbp), %rdx
	imulq	$40, %rdx, %rdx
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	cmpb	$0, -39(%rbp)
	je	.LBB36_6
# BB#1:                                 # %if.then
	movl	-24(%rbp), %eax
	movl	%eax, -52(%rbp)
.LBB36_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jg	.LBB36_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB36_2 Depth=1
	movb	-39(%rbp), %al
	movslq	-52(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	8(%rdx), %rdx
	movb	%al, (%rdx,%rcx)
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB36_2 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB36_2
.LBB36_5:                               # %for.end
	jmp	.LBB36_6
.LBB36_6:                               # %if.end
	cmpb	$0, -36(%rbp)
	je	.LBB36_12
# BB#7:                                 # %if.then.16
	movl	-24(%rbp), %eax
	movl	%eax, -52(%rbp)
.LBB36_8:                               # %for.cond.17
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jg	.LBB36_11
# BB#9:                                 # %for.body.20
                                        #   in Loop: Header=BB36_8 Depth=1
	movb	-36(%rbp), %al
	movslq	-52(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	32(%rdx), %rdx
	movb	%al, (%rdx,%rcx)
# BB#10:                                # %for.inc.25
                                        #   in Loop: Header=BB36_8 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB36_8
.LBB36_11:                              # %for.end.27
	jmp	.LBB36_12
.LBB36_12:                              # %if.end.28
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end36:
	.size	MBceLine, .Lfunc_end36-MBceLine
	.cfi_endproc

	.align	16, 0x90
	.type	Scroll,@function
Scroll:                                 # @Scroll
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp112:
	.cfi_def_cfa_offset 16
.Ltmp113:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp114:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	cmpl	$0, -12(%rbp)
	je	.LBB37_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$0, -16(%rbp)
	jne	.LBB37_3
.LBB37_2:                               # %if.then
	jmp	.LBB37_6
.LBB37_3:                               # %if.end
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jg	.LBB37_5
# BB#4:                                 # %if.then.2
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movslq	-12(%rbp), %rdx
	callq	bcopy
	movq	-8(%rbp), %rdx
	movslq	-12(%rbp), %rsi
	addq	%rsi, %rdx
	movq	-8(%rbp), %rsi
	movslq	-16(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	-32(%rbp), %rdx         # 8-byte Reload
	callq	bcopy
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movslq	-16(%rbp), %rsi
	addq	%rsi, %rdx
	movslq	-12(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rdx, %rsi
	movq	-40(%rbp), %rdx         # 8-byte Reload
	callq	bcopy
	jmp	.LBB37_6
.LBB37_5:                               # %if.else
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	addq	%rcx, %rax
	movq	-24(%rbp), %rsi
	movslq	-16(%rbp), %rdx
	movq	%rax, %rdi
	callq	bcopy
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movslq	-16(%rbp), %rcx
	addq	%rcx, %rax
	movslq	-12(%rbp), %rdx
	movq	%rax, %rsi
	callq	bcopy
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movslq	-16(%rbp), %rdx
	callq	bcopy
.LBB37_6:                               # %if.end.14
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	Scroll, .Lfunc_end37-Scroll
	.cfi_endproc

	.align	16, 0x90
	.type	ReverseLineFeed,@function
ReverseLineFeed:                        # @ReverseLineFeed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp115:
	.cfi_def_cfa_offset 16
.Ltmp116:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp117:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	curr, %rax
	movl	44(%rax), %ecx
	movq	curr, %rax
	cmpl	9956(%rax), %ecx
	jne	.LBB38_8
# BB#1:                                 # %if.then
	movq	curr, %rdi
	movq	curr, %rax
	movl	9956(%rax), %edx
	movq	curr, %rax
	movl	9960(%rax), %ecx
	movq	curr, %rax
	cmpl	$0, 10016(%rax)
	movq	%rdi, -8(%rbp)          # 8-byte Spill
	movl	%edx, -12(%rbp)         # 4-byte Spill
	movl	%ecx, -16(%rbp)         # 4-byte Spill
	je	.LBB38_3
# BB#2:                                 # %cond.true
	xorl	%eax, %eax
	movl	$256, %ecx              # imm = 0x100
	movq	curr, %rdx
	movzbl	9876(%rdx), %esi
	andl	$240, %esi
	sarl	$4, %esi
	movq	curr, %rdx
	movzbl	9873(%rdx), %edi
	andl	$128, %edi
	cmpl	$0, %edi
	cmovnel	%ecx, %eax
	orl	%eax, %esi
	movl	%esi, -20(%rbp)         # 4-byte Spill
	jmp	.LBB38_4
.LBB38_3:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, -20(%rbp)         # 4-byte Spill
	jmp	.LBB38_4
.LBB38_4:                               # %cond.end
	movl	-20(%rbp), %eax         # 4-byte Reload
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	-12(%rbp), %edx         # 4-byte Reload
	movl	-16(%rbp), %ecx         # 4-byte Reload
	movl	%eax, %r8d
	callq	MScrollV
	movq	curr, %rdi
	addq	$24, %rdi
	movq	curr, %r9
	movl	9956(%r9), %edx
	movq	curr, %r9
	movl	9960(%r9), %ecx
	movq	curr, %r9
	cmpl	$0, 10016(%r9)
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movl	%edx, -36(%rbp)         # 4-byte Spill
	movl	%ecx, -40(%rbp)         # 4-byte Spill
	je	.LBB38_6
# BB#5:                                 # %cond.true.12
	xorl	%eax, %eax
	movl	$256, %ecx              # imm = 0x100
	movq	curr, %rdx
	movzbl	9876(%rdx), %esi
	andl	$240, %esi
	sarl	$4, %esi
	movq	curr, %rdx
	movzbl	9873(%rdx), %edi
	andl	$128, %edi
	cmpl	$0, %edi
	cmovnel	%ecx, %eax
	orl	%eax, %esi
	movl	%esi, -44(%rbp)         # 4-byte Spill
	jmp	.LBB38_7
.LBB38_6:                               # %cond.false.25
	xorl	%eax, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB38_7
.LBB38_7:                               # %cond.end.26
	movl	-44(%rbp), %eax         # 4-byte Reload
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movl	-36(%rbp), %edx         # 4-byte Reload
	movl	-40(%rbp), %ecx         # 4-byte Reload
	movl	%eax, %r8d
	callq	LScrollV
	movq	curr, %rdi
	addq	$24, %rdi
	movq	curr, %r9
	movl	40(%r9), %esi
	movq	curr, %r9
	movl	44(%r9), %edx
	callq	LGotoPos
	jmp	.LBB38_11
.LBB38_8:                               # %if.else
	movq	curr, %rax
	cmpl	$0, 44(%rax)
	jle	.LBB38_10
# BB#9:                                 # %if.then.36
	movl	$1, %edi
	callq	CursorUp
.LBB38_10:                              # %if.end
	jmp	.LBB38_11
.LBB38_11:                              # %if.end.37
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	ReverseLineFeed, .Lfunc_end38-ReverseLineFeed
	.cfi_endproc

	.align	16, 0x90
	.type	Report,@function
Report:                                 # @Report
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp118:
	.cfi_def_cfa_offset 16
.Ltmp119:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp120:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	leaq	-64(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rsi
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	sprintf
	leaq	-64(%rbp), %rdi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -20(%rbp)
	movq	curr, %rax
	cmpq	$0, 168(%rax)
	je	.LBB39_5
# BB#1:                                 # %land.lhs.true
	movq	curr, %rax
	movq	168(%rax), %rax
	movl	(%rax), %ecx
	andl	$4096, %ecx             # imm = 0x1000
	cmpl	$0, %ecx
	je	.LBB39_5
# BB#2:                                 # %if.then
	movq	curr, %rax
	movq	168(%rax), %rax
	movl	5808(%rax), %ecx
	addl	-20(%rbp), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %eax
	cmpq	$4096, %rax             # imm = 0x1000
	ja	.LBB39_4
# BB#3:                                 # %if.then.8
	leaq	-64(%rbp), %rdi
	movq	curr, %rax
	movq	168(%rax), %rax
	addq	$1712, %rax             # imm = 0x6B0
	movq	curr, %rcx
	movq	168(%rcx), %rcx
	movslq	5808(%rcx), %rcx
	addq	%rcx, %rax
	movslq	-20(%rbp), %rdx
	movq	%rax, %rsi
	callq	bcopy
	movl	-20(%rbp), %r8d
	movq	curr, %rax
	movq	168(%rax), %rax
	addl	5808(%rax), %r8d
	movl	%r8d, 5808(%rax)
.LBB39_4:                               # %if.end
	jmp	.LBB39_8
.LBB39_5:                               # %if.else
	movq	curr, %rax
	movl	4624(%rax), %ecx
	addl	-20(%rbp), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %eax
	cmpq	$4096, %rax             # imm = 0x1000
	ja	.LBB39_7
# BB#6:                                 # %if.then.22
	leaq	-64(%rbp), %rdi
	movq	curr, %rax
	addq	$528, %rax              # imm = 0x210
	movq	curr, %rcx
	movslq	4624(%rcx), %rcx
	addq	%rcx, %rax
	movslq	-20(%rbp), %rdx
	movq	%rax, %rsi
	callq	bcopy
	movl	-20(%rbp), %r8d
	movq	curr, %rax
	addl	4624(%rax), %r8d
	movl	%r8d, 4624(%rax)
.LBB39_7:                               # %if.end.31
	jmp	.LBB39_8
.LBB39_8:                               # %if.end.32
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	Report, .Lfunc_end39-Report
	.cfi_endproc

	.align	16, 0x90
	.type	SaveCursor,@function
SaveCursor:                             # @SaveCursor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp121:
	.cfi_def_cfa_offset 16
.Ltmp122:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp123:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$16, %eax
	movl	%eax, %edx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	$1, (%rdi)
	movq	curr, %rdi
	movl	40(%rdi), %eax
	movq	-8(%rbp), %rdi
	movl	%eax, 4(%rdi)
	movq	curr, %rdi
	movl	44(%rdi), %eax
	movq	-8(%rbp), %rdi
	movl	%eax, 8(%rdi)
	movq	-8(%rbp), %rdi
	movq	curr, %rcx
	movl	9872(%rcx), %eax
	movl	%eax, 12(%rdi)
	movw	9876(%rcx), %si
	movw	%si, 16(%rdi)
	movq	curr, %rcx
	movl	9884(%rcx), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 20(%rcx)
	movq	curr, %rcx
	movl	9888(%rcx), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 24(%rcx)
	movq	curr, %rcx
	addq	$9892, %rcx             # imm = 0x26A4
	movq	-8(%rbp), %rdi
	addq	$28, %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	-16(%rbp), %rsi         # 8-byte Reload
	callq	bcopy
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	SaveCursor, .Lfunc_end40-SaveCursor
	.cfi_endproc

	.align	16, 0x90
	.type	RestoreCursor,@function
RestoreCursor:                          # @RestoreCursor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp124:
	.cfi_def_cfa_offset 16
.Ltmp125:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp126:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$0, (%rdi)
	jne	.LBB41_2
# BB#1:                                 # %if.then
	jmp	.LBB41_3
.LBB41_2:                               # %if.end
	movq	curr, %rax
	addq	$24, %rax
	movq	-8(%rbp), %rcx
	movl	4(%rcx), %esi
	movq	-8(%rbp), %rcx
	movl	8(%rcx), %edx
	movq	%rax, %rdi
	callq	LGotoPos
	movl	$16, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	-8(%rbp), %rax
	movl	4(%rax), %esi
	movq	curr, %rax
	movl	%esi, 40(%rax)
	movq	-8(%rbp), %rax
	movl	8(%rax), %esi
	movq	curr, %rax
	movl	%esi, 44(%rax)
	movq	curr, %rax
	movq	-8(%rbp), %rcx
	movl	12(%rcx), %esi
	movl	%esi, 9872(%rax)
	movw	16(%rcx), %r8w
	movw	%r8w, 9876(%rax)
	movq	-8(%rbp), %rax
	addq	$28, %rax
	movq	curr, %rcx
	addq	$9892, %rcx             # imm = 0x26A4
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	bcopy
	movq	-8(%rbp), %rax
	movl	20(%rax), %r9d
	movq	curr, %rax
	movl	%r9d, 9884(%rax)
	movq	-8(%rbp), %rax
	movl	24(%rax), %r9d
	movq	curr, %rax
	movl	%r9d, 9888(%rax)
	movq	curr, %rax
	movl	$0, 9908(%rax)
	movq	curr, %rax
	movslq	9884(%rax), %rax
	movq	curr, %rcx
	movl	9892(%rcx,%rax,4), %r9d
	movb	%r9b, %r10b
	movq	curr, %rax
	movb	%r10b, 9878(%rax)
	movq	curr, %rax
	movslq	9888(%rax), %rax
	movq	curr, %rcx
	movl	9892(%rcx,%rax,4), %r9d
	movb	%r9b, %r10b
	movq	curr, %rax
	movb	%r10b, 9879(%rax)
	movq	curr, %rax
	addq	$24, %rax
	movq	curr, %rcx
	addq	$9872, %rcx             # imm = 0x2690
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	LSetRendition
.LBB41_3:                               # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	RestoreCursor, .Lfunc_end41-RestoreCursor
	.cfi_endproc

	.align	16, 0x90
	.type	ClearScreen,@function
ClearScreen:                            # @ClearScreen
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp127:
	.cfi_def_cfa_offset 16
.Ltmp128:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp129:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	curr, %rax
	addq	$24, %rax
	movq	curr, %rcx
	movl	32(%rcx), %edx
	subl	$1, %edx
	movq	curr, %rcx
	movl	36(%rcx), %esi
	subl	$1, %esi
	movq	curr, %rcx
	cmpl	$0, 10016(%rcx)
	movq	%rax, -8(%rbp)          # 8-byte Spill
	movl	%edx, -12(%rbp)         # 4-byte Spill
	movl	%esi, -16(%rbp)         # 4-byte Spill
	je	.LBB42_2
# BB#1:                                 # %cond.true
	xorl	%eax, %eax
	movl	$256, %ecx              # imm = 0x100
	movq	curr, %rdx
	movzbl	9876(%rdx), %esi
	andl	$240, %esi
	sarl	$4, %esi
	movq	curr, %rdx
	movzbl	9873(%rdx), %edi
	andl	$128, %edi
	cmpl	$0, %edi
	cmovnel	%ecx, %eax
	orl	%eax, %esi
	movl	%esi, -20(%rbp)         # 4-byte Spill
	jmp	.LBB42_3
.LBB42_2:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, -20(%rbp)         # 4-byte Spill
	jmp	.LBB42_3
.LBB42_3:                               # %cond.end
	movl	-20(%rbp), %eax         # 4-byte Reload
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	%ecx, %esi
	movl	%edx, -24(%rbp)         # 4-byte Spill
	movl	%ecx, %edx
	movl	-12(%rbp), %ecx         # 4-byte Reload
	movl	-16(%rbp), %r8d         # 4-byte Reload
	movl	%eax, %r9d
	movl	$1, (%rsp)
	callq	LClearArea
	movq	curr, %rdi
	movq	curr, %r10
	movl	36(%r10), %esi
	movq	curr, %r10
	movl	36(%r10), %eax
	subl	$1, %eax
	movq	curr, %r10
	cmpl	$0, 10016(%r10)
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movl	%esi, -36(%rbp)         # 4-byte Spill
	movl	%eax, -40(%rbp)         # 4-byte Spill
	je	.LBB42_5
# BB#4:                                 # %cond.true.16
	xorl	%eax, %eax
	movl	$256, %ecx              # imm = 0x100
	movq	curr, %rdx
	movzbl	9876(%rdx), %esi
	andl	$240, %esi
	sarl	$4, %esi
	movq	curr, %rdx
	movzbl	9873(%rdx), %edi
	andl	$128, %edi
	cmpl	$0, %edi
	cmovnel	%ecx, %eax
	orl	%eax, %esi
	movl	%esi, -44(%rbp)         # 4-byte Spill
	jmp	.LBB42_6
.LBB42_5:                               # %cond.false.29
	xorl	%eax, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB42_6
.LBB42_6:                               # %cond.end.30
	movl	-44(%rbp), %eax         # 4-byte Reload
	xorl	%edx, %edx
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movl	-36(%rbp), %esi         # 4-byte Reload
	movl	-40(%rbp), %ecx         # 4-byte Reload
	movl	%eax, %r8d
	callq	MScrollV
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end42:
	.size	ClearScreen, .Lfunc_end42-ClearScreen
	.cfi_endproc

	.align	16, 0x90
	.type	MapCharsetR,@function
MapCharsetR:                            # @MapCharsetR
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp130:
	.cfi_def_cfa_offset 16
.Ltmp131:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp132:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movq	curr, %rax
	movl	$0, 9908(%rax)
	movq	curr, %rax
	movl	9888(%rax), %edi
	cmpl	-4(%rbp), %edi
	je	.LBB43_2
# BB#1:                                 # %if.then
	movl	-4(%rbp), %eax
	movq	curr, %rcx
	movl	%eax, 9888(%rcx)
	movslq	-4(%rbp), %rcx
	movq	curr, %rdx
	movl	9892(%rdx,%rcx,4), %eax
	movb	%al, %sil
	movq	curr, %rcx
	movb	%sil, 9879(%rcx)
.LBB43_2:                               # %if.end
	movq	curr, %rax
	movl	$1, 10008(%rax)
	popq	%rbp
	retq
.Lfunc_end43:
	.size	MapCharsetR, .Lfunc_end43-MapCharsetR
	.cfi_endproc

	.align	16, 0x90
	.type	FillWithEs,@function
FillWithEs:                             # @FillWithEs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp133:
	.cfi_def_cfa_offset 16
.Ltmp134:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp135:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$1, %esi
	movq	curr, %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	LClearAll
	movq	curr, %rax
	movl	$0, 40(%rax)
	movq	curr, %rax
	movl	$0, 44(%rax)
	movl	$0, -4(%rbp)
.LBB44_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB44_13 Depth 2
	movl	-4(%rbp), %eax
	cmpl	rows, %eax
	jge	.LBB44_17
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB44_1 Depth=1
	jmp	.LBB44_3
.LBB44_3:                               # %do.body
                                        #   in Loop: Header=BB44_1 Depth=1
	movslq	-4(%rbp), %rax
	movq	curr, %rcx
	imulq	$40, %rax, %rax
	addq	9864(%rcx), %rax
	movq	(%rax), %rdi
	movl	cols, %edx
	addl	$1, %edx
	movl	%edx, %esi
	callq	bclear
	movslq	-4(%rbp), %rax
	movq	curr, %rcx
	imulq	$40, %rax, %rax
	addq	9864(%rcx), %rax
	movq	8(%rax), %rax
	cmpq	null, %rax
	je	.LBB44_5
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB44_1 Depth=1
	xorl	%esi, %esi
	movslq	-4(%rbp), %rax
	movq	curr, %rcx
	imulq	$40, %rax, %rax
	addq	9864(%rcx), %rax
	movq	8(%rax), %rdi
	movl	cols, %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	callq	memset
.LBB44_5:                               # %if.end
                                        #   in Loop: Header=BB44_1 Depth=1
	movslq	-4(%rbp), %rax
	movq	curr, %rcx
	imulq	$40, %rax, %rax
	addq	9864(%rcx), %rax
	movq	16(%rax), %rax
	cmpq	null, %rax
	je	.LBB44_7
# BB#6:                                 # %if.then.18
                                        #   in Loop: Header=BB44_1 Depth=1
	xorl	%esi, %esi
	movslq	-4(%rbp), %rax
	movq	curr, %rcx
	imulq	$40, %rax, %rax
	addq	9864(%rcx), %rax
	movq	16(%rax), %rdi
	movl	cols, %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	callq	memset
.LBB44_7:                               # %if.end.26
                                        #   in Loop: Header=BB44_1 Depth=1
	movslq	-4(%rbp), %rax
	movq	curr, %rcx
	imulq	$40, %rax, %rax
	addq	9864(%rcx), %rax
	movq	24(%rax), %rax
	cmpq	null, %rax
	je	.LBB44_9
# BB#8:                                 # %if.then.32
                                        #   in Loop: Header=BB44_1 Depth=1
	xorl	%esi, %esi
	movslq	-4(%rbp), %rax
	movq	curr, %rcx
	imulq	$40, %rax, %rax
	addq	9864(%rcx), %rax
	movq	24(%rax), %rdi
	movl	cols, %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	callq	memset
.LBB44_9:                               # %if.end.40
                                        #   in Loop: Header=BB44_1 Depth=1
	movslq	-4(%rbp), %rax
	movq	curr, %rcx
	imulq	$40, %rax, %rax
	addq	9864(%rcx), %rax
	movq	32(%rax), %rax
	cmpq	null, %rax
	je	.LBB44_11
# BB#10:                                # %if.then.46
                                        #   in Loop: Header=BB44_1 Depth=1
	xorl	%esi, %esi
	movslq	-4(%rbp), %rax
	movq	curr, %rcx
	imulq	$40, %rax, %rax
	addq	9864(%rcx), %rax
	movq	32(%rax), %rdi
	movl	cols, %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	callq	memset
.LBB44_11:                              # %if.end.54
                                        #   in Loop: Header=BB44_1 Depth=1
	jmp	.LBB44_12
.LBB44_12:                              # %do.end
                                        #   in Loop: Header=BB44_1 Depth=1
	movslq	-4(%rbp), %rax
	movq	curr, %rcx
	imulq	$40, %rax, %rax
	addq	9864(%rcx), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movslq	cols, %rcx
	addq	%rcx, %rax
	movq	%rax, -24(%rbp)
.LBB44_13:                              # %while.cond
                                        #   Parent Loop BB44_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jae	.LBB44_15
# BB#14:                                # %while.body
                                        #   in Loop: Header=BB44_13 Depth=2
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	$69, (%rax)
	jmp	.LBB44_13
.LBB44_15:                              # %while.end
                                        #   in Loop: Header=BB44_1 Depth=1
	jmp	.LBB44_16
.LBB44_16:                              # %for.inc
                                        #   in Loop: Header=BB44_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB44_1
.LBB44_17:                              # %for.end
	movl	$1, %esi
	movq	curr, %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	LRefreshAll
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end44:
	.size	FillWithEs, .Lfunc_end44-FillWithEs
	.cfi_endproc

	.align	16, 0x90
	.type	DesignateCharset,@function
DesignateCharset:                       # @DesignateCharset
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp136:
	.cfi_def_cfa_offset 16
.Ltmp137:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp138:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	curr, %rax
	movl	$0, 9908(%rax)
	cmpl	$0, -4(%rbp)
	jne	.LBB45_2
# BB#1:                                 # %if.then
	movl	$2, -4(%rbp)
.LBB45_2:                               # %if.end
	cmpl	$66, -4(%rbp)
	jne	.LBB45_4
# BB#3:                                 # %if.then.2
	movl	$0, -4(%rbp)
.LBB45_4:                               # %if.end.3
	movslq	-8(%rbp), %rax
	movq	curr, %rcx
	movl	9892(%rcx,%rax,4), %edx
	cmpl	-4(%rbp), %edx
	je	.LBB45_10
# BB#5:                                 # %if.then.5
	movl	-4(%rbp), %eax
	movslq	-8(%rbp), %rcx
	movq	curr, %rdx
	movl	%eax, 9892(%rdx,%rcx,4)
	movq	curr, %rcx
	movl	9884(%rcx), %eax
	cmpl	-8(%rbp), %eax
	jne	.LBB45_7
# BB#6:                                 # %if.then.10
	movl	-4(%rbp), %eax
	movb	%al, %cl
	movq	curr, %rdx
	movb	%cl, 9878(%rdx)
	movq	curr, %rdx
	movb	9878(%rdx), %cl
	movq	curr, %rdx
	movb	%cl, 9874(%rdx)
	movq	curr, %rdx
	addq	$24, %rdx
	movq	curr, %rsi
	addq	$9872, %rsi             # imm = 0x2690
	movq	%rdx, %rdi
	callq	LSetRendition
.LBB45_7:                               # %if.end.13
	movq	curr, %rax
	movl	9888(%rax), %ecx
	cmpl	-8(%rbp), %ecx
	jne	.LBB45_9
# BB#8:                                 # %if.then.16
	movl	-4(%rbp), %eax
	movb	%al, %cl
	movq	curr, %rdx
	movb	%cl, 9879(%rdx)
.LBB45_9:                               # %if.end.18
	jmp	.LBB45_10
.LBB45_10:                              # %if.end.19
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end45:
	.size	DesignateCharset, .Lfunc_end45-DesignateCharset
	.cfi_endproc

	.align	16, 0x90
	.type	CursorUp,@function
CursorUp:                               # @CursorUp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp139:
	.cfi_def_cfa_offset 16
.Ltmp140:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp141:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	curr, %rax
	movl	44(%rax), %edi
	movq	curr, %rax
	cmpl	9956(%rax), %edi
	jge	.LBB46_4
# BB#1:                                 # %if.then
	movl	-4(%rbp), %eax
	movq	curr, %rcx
	movl	44(%rcx), %edx
	subl	%eax, %edx
	movl	%edx, 44(%rcx)
	cmpl	$0, %edx
	jge	.LBB46_3
# BB#2:                                 # %if.then.4
	movq	curr, %rax
	movl	$0, 44(%rax)
.LBB46_3:                               # %if.end
	jmp	.LBB46_7
.LBB46_4:                               # %if.else
	movl	-4(%rbp), %eax
	movq	curr, %rcx
	movl	44(%rcx), %edx
	subl	%eax, %edx
	movl	%edx, 44(%rcx)
	movq	curr, %rcx
	cmpl	9956(%rcx), %edx
	jge	.LBB46_6
# BB#5:                                 # %if.then.12
	movq	curr, %rax
	movl	9956(%rax), %ecx
	movq	curr, %rax
	movl	%ecx, 44(%rax)
.LBB46_6:                               # %if.end.16
	jmp	.LBB46_7
.LBB46_7:                               # %if.end.17
	movq	curr, %rax
	addq	$24, %rax
	movq	curr, %rcx
	movl	40(%rcx), %esi
	movq	curr, %rcx
	movl	44(%rcx), %edx
	movq	%rax, %rdi
	callq	LGotoPos
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end46:
	.size	CursorUp, .Lfunc_end46-CursorUp
	.cfi_endproc

	.align	16, 0x90
	.type	ClearToEOS,@function
ClearToEOS:                             # @ClearToEOS
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp142:
	.cfi_def_cfa_offset 16
.Ltmp143:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp144:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	curr, %rax
	movl	44(%rax), %ecx
	movl	%ecx, -4(%rbp)
	movq	curr, %rax
	movl	40(%rax), %ecx
	movl	%ecx, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jne	.LBB47_3
# BB#1:                                 # %land.lhs.true
	cmpl	$0, -4(%rbp)
	jne	.LBB47_3
# BB#2:                                 # %if.then
	callq	ClearScreen
	callq	RestorePosRendition
	jmp	.LBB47_10
.LBB47_3:                               # %if.end
	movq	curr, %rax
	addq	$24, %rax
	movl	-8(%rbp), %esi
	movl	-4(%rbp), %edx
	movl	cols, %ecx
	subl	$1, %ecx
	movl	rows, %edi
	subl	$1, %edi
	movq	curr, %r8
	cmpl	$0, 10016(%r8)
	movq	%rax, -16(%rbp)         # 8-byte Spill
	movl	%esi, -20(%rbp)         # 4-byte Spill
	movl	%edx, -24(%rbp)         # 4-byte Spill
	movl	%ecx, -28(%rbp)         # 4-byte Spill
	movl	%edi, -32(%rbp)         # 4-byte Spill
	je	.LBB47_5
# BB#4:                                 # %cond.true
	xorl	%eax, %eax
	movl	$256, %ecx              # imm = 0x100
	movq	curr, %rdx
	movzbl	9876(%rdx), %esi
	andl	$240, %esi
	sarl	$4, %esi
	movq	curr, %rdx
	movzbl	9873(%rdx), %edi
	andl	$128, %edi
	cmpl	$0, %edi
	cmovnel	%ecx, %eax
	orl	%eax, %esi
	movl	%esi, -36(%rbp)         # 4-byte Spill
	jmp	.LBB47_6
.LBB47_5:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jmp	.LBB47_6
.LBB47_6:                               # %cond.end
	movl	-36(%rbp), %eax         # 4-byte Reload
	movl	$1, %ecx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	-20(%rbp), %esi         # 4-byte Reload
	movl	-24(%rbp), %edx         # 4-byte Reload
	movl	-28(%rbp), %r8d         # 4-byte Reload
	movl	%ecx, -40(%rbp)         # 4-byte Spill
	movl	%r8d, %ecx
	movl	-32(%rbp), %r8d         # 4-byte Reload
	movl	%eax, %r9d
	movl	$1, (%rsp)
	callq	LClearArea
	movq	curr, %rdi
	movl	-8(%rbp), %esi
	movl	-4(%rbp), %edx
	movl	cols, %eax
	subl	$1, %eax
	movl	rows, %ecx
	subl	$1, %ecx
	movq	curr, %r10
	cmpl	$0, 10016(%r10)
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movl	%esi, -52(%rbp)         # 4-byte Spill
	movl	%edx, -56(%rbp)         # 4-byte Spill
	movl	%eax, -60(%rbp)         # 4-byte Spill
	movl	%ecx, -64(%rbp)         # 4-byte Spill
	je	.LBB47_8
# BB#7:                                 # %cond.true.14
	xorl	%eax, %eax
	movl	$256, %ecx              # imm = 0x100
	movq	curr, %rdx
	movzbl	9876(%rdx), %esi
	andl	$240, %esi
	sarl	$4, %esi
	movq	curr, %rdx
	movzbl	9873(%rdx), %edi
	andl	$128, %edi
	cmpl	$0, %edi
	cmovnel	%ecx, %eax
	orl	%eax, %esi
	movl	%esi, -68(%rbp)         # 4-byte Spill
	jmp	.LBB47_9
.LBB47_8:                               # %cond.false.27
	xorl	%eax, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB47_9
.LBB47_9:                               # %cond.end.28
	movl	-68(%rbp), %eax         # 4-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	-52(%rbp), %esi         # 4-byte Reload
	movl	-56(%rbp), %edx         # 4-byte Reload
	movl	-60(%rbp), %ecx         # 4-byte Reload
	movl	-64(%rbp), %r8d         # 4-byte Reload
	movl	%eax, %r9d
	callq	MClearArea
	callq	RestorePosRendition
.LBB47_10:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end47:
	.size	ClearToEOS, .Lfunc_end47-ClearToEOS
	.cfi_endproc

	.align	16, 0x90
	.type	ClearFromBOS,@function
ClearFromBOS:                           # @ClearFromBOS
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp145:
	.cfi_def_cfa_offset 16
.Ltmp146:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp147:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	curr, %rax
	movl	44(%rax), %ecx
	movl	%ecx, -4(%rbp)
	movq	curr, %rax
	movl	40(%rax), %ecx
	movl	%ecx, -8(%rbp)
	movq	curr, %rax
	addq	$24, %rax
	movl	-8(%rbp), %ecx
	movl	-4(%rbp), %r8d
	movq	curr, %rdx
	cmpl	$0, 10016(%rdx)
	movq	%rax, -16(%rbp)         # 8-byte Spill
	movl	%ecx, -20(%rbp)         # 4-byte Spill
	movl	%r8d, -24(%rbp)         # 4-byte Spill
	je	.LBB48_2
# BB#1:                                 # %cond.true
	xorl	%eax, %eax
	movl	$256, %ecx              # imm = 0x100
	movq	curr, %rdx
	movzbl	9876(%rdx), %esi
	andl	$240, %esi
	sarl	$4, %esi
	movq	curr, %rdx
	movzbl	9873(%rdx), %edi
	andl	$128, %edi
	cmpl	$0, %edi
	cmovnel	%ecx, %eax
	orl	%eax, %esi
	movl	%esi, -28(%rbp)         # 4-byte Spill
	jmp	.LBB48_3
.LBB48_2:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
	jmp	.LBB48_3
.LBB48_3:                               # %cond.end
	movl	-28(%rbp), %eax         # 4-byte Reload
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	%ecx, %esi
	movl	%edx, -32(%rbp)         # 4-byte Spill
	movl	%ecx, %edx
	movl	-20(%rbp), %ecx         # 4-byte Reload
	movl	-24(%rbp), %r8d         # 4-byte Reload
	movl	%eax, %r9d
	movl	$1, (%rsp)
	callq	LClearArea
	movq	curr, %rdi
	movl	-8(%rbp), %ecx
	movl	-4(%rbp), %r8d
	movq	curr, %r10
	cmpl	$0, 10016(%r10)
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	movl	%r8d, -48(%rbp)         # 4-byte Spill
	je	.LBB48_5
# BB#4:                                 # %cond.true.10
	xorl	%eax, %eax
	movl	$256, %ecx              # imm = 0x100
	movq	curr, %rdx
	movzbl	9876(%rdx), %esi
	andl	$240, %esi
	sarl	$4, %esi
	movq	curr, %rdx
	movzbl	9873(%rdx), %edi
	andl	$128, %edi
	cmpl	$0, %edi
	cmovnel	%ecx, %eax
	orl	%eax, %esi
	movl	%esi, -52(%rbp)         # 4-byte Spill
	jmp	.LBB48_6
.LBB48_5:                               # %cond.false.23
	xorl	%eax, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB48_6
.LBB48_6:                               # %cond.end.24
	movl	-52(%rbp), %eax         # 4-byte Reload
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movl	-44(%rbp), %ecx         # 4-byte Reload
	movl	-48(%rbp), %r8d         # 4-byte Reload
	movl	%eax, %r9d
	callq	MClearArea
	callq	RestorePosRendition
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end48:
	.size	ClearFromBOS, .Lfunc_end48-ClearFromBOS
	.cfi_endproc

	.align	16, 0x90
	.type	ClearLineRegion,@function
ClearLineRegion:                        # @ClearLineRegion
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp148:
	.cfi_def_cfa_offset 16
.Ltmp149:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp150:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	curr, %rax
	movl	44(%rax), %esi
	movl	%esi, -12(%rbp)
	movq	curr, %rax
	addq	$24, %rax
	movl	-4(%rbp), %esi
	movl	-12(%rbp), %edx
	movl	-8(%rbp), %ecx
	movl	-12(%rbp), %r8d
	movq	curr, %r9
	cmpl	$0, 10016(%r9)
	movq	%rax, -24(%rbp)         # 8-byte Spill
	movl	%esi, -28(%rbp)         # 4-byte Spill
	movl	%edx, -32(%rbp)         # 4-byte Spill
	movl	%ecx, -36(%rbp)         # 4-byte Spill
	movl	%r8d, -40(%rbp)         # 4-byte Spill
	je	.LBB49_2
# BB#1:                                 # %cond.true
	xorl	%eax, %eax
	movl	$256, %ecx              # imm = 0x100
	movq	curr, %rdx
	movzbl	9876(%rdx), %esi
	andl	$240, %esi
	sarl	$4, %esi
	movq	curr, %rdx
	movzbl	9873(%rdx), %edi
	andl	$128, %edi
	cmpl	$0, %edi
	cmovnel	%ecx, %eax
	orl	%eax, %esi
	movl	%esi, -44(%rbp)         # 4-byte Spill
	jmp	.LBB49_3
.LBB49_2:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB49_3
.LBB49_3:                               # %cond.end
	movl	-44(%rbp), %eax         # 4-byte Reload
	movl	$1, %ecx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	-28(%rbp), %esi         # 4-byte Reload
	movl	-32(%rbp), %edx         # 4-byte Reload
	movl	-36(%rbp), %r8d         # 4-byte Reload
	movl	%ecx, -48(%rbp)         # 4-byte Spill
	movl	%r8d, %ecx
	movl	-40(%rbp), %r8d         # 4-byte Reload
	movl	%eax, %r9d
	movl	$1, (%rsp)
	callq	LClearArea
	movq	curr, %rdi
	movl	-4(%rbp), %esi
	movl	-12(%rbp), %edx
	movl	-8(%rbp), %ecx
	movl	-12(%rbp), %r8d
	movq	curr, %r10
	cmpl	$0, 10016(%r10)
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movl	%esi, -60(%rbp)         # 4-byte Spill
	movl	%edx, -64(%rbp)         # 4-byte Spill
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	movl	%r8d, -72(%rbp)         # 4-byte Spill
	je	.LBB49_5
# BB#4:                                 # %cond.true.9
	xorl	%eax, %eax
	movl	$256, %ecx              # imm = 0x100
	movq	curr, %rdx
	movzbl	9876(%rdx), %esi
	andl	$240, %esi
	sarl	$4, %esi
	movq	curr, %rdx
	movzbl	9873(%rdx), %edi
	andl	$128, %edi
	cmpl	$0, %edi
	cmovnel	%ecx, %eax
	orl	%eax, %esi
	movl	%esi, -76(%rbp)         # 4-byte Spill
	jmp	.LBB49_6
.LBB49_5:                               # %cond.false.22
	xorl	%eax, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB49_6
.LBB49_6:                               # %cond.end.23
	movl	-76(%rbp), %eax         # 4-byte Reload
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	-60(%rbp), %esi         # 4-byte Reload
	movl	-64(%rbp), %edx         # 4-byte Reload
	movl	-68(%rbp), %ecx         # 4-byte Reload
	movl	-72(%rbp), %r8d         # 4-byte Reload
	movl	%eax, %r9d
	callq	MClearArea
	callq	RestorePosRendition
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end49:
	.size	ClearLineRegion, .Lfunc_end49-ClearLineRegion
	.cfi_endproc

	.align	16, 0x90
	.type	CursorDown,@function
CursorDown:                             # @CursorDown
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp151:
	.cfi_def_cfa_offset 16
.Ltmp152:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp153:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	curr, %rax
	movl	44(%rax), %edi
	movq	curr, %rax
	cmpl	9960(%rax), %edi
	jle	.LBB50_4
# BB#1:                                 # %if.then
	movl	-4(%rbp), %eax
	movq	curr, %rcx
	addl	44(%rcx), %eax
	movl	%eax, 44(%rcx)
	movl	rows, %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jle	.LBB50_3
# BB#2:                                 # %if.then.4
	movl	rows, %eax
	subl	$1, %eax
	movq	curr, %rcx
	movl	%eax, 44(%rcx)
.LBB50_3:                               # %if.end
	jmp	.LBB50_7
.LBB50_4:                               # %if.else
	movl	-4(%rbp), %eax
	movq	curr, %rcx
	addl	44(%rcx), %eax
	movl	%eax, 44(%rcx)
	movq	curr, %rcx
	cmpl	9960(%rcx), %eax
	jle	.LBB50_6
# BB#5:                                 # %if.then.13
	movq	curr, %rax
	movl	9960(%rax), %ecx
	movq	curr, %rax
	movl	%ecx, 44(%rax)
.LBB50_6:                               # %if.end.17
	jmp	.LBB50_7
.LBB50_7:                               # %if.end.18
	movq	curr, %rax
	addq	$24, %rax
	movq	curr, %rcx
	movl	40(%rcx), %esi
	movq	curr, %rcx
	movl	44(%rcx), %edx
	movq	%rax, %rdi
	callq	LGotoPos
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end50:
	.size	CursorDown, .Lfunc_end50-CursorDown
	.cfi_endproc

	.align	16, 0x90
	.type	CursorRight,@function
CursorRight:                            # @CursorRight
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp154:
	.cfi_def_cfa_offset 16
.Ltmp155:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp156:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	curr, %rax
	movl	40(%rax), %edi
	movl	%edi, -8(%rbp)
	movl	-8(%rbp), %edi
	cmpl	cols, %edi
	jne	.LBB51_2
# BB#1:                                 # %if.then
	movl	$1, %edi
	callq	LineFeed
	movl	$0, -8(%rbp)
.LBB51_2:                               # %if.end
	movl	-4(%rbp), %eax
	movq	curr, %rcx
	addl	40(%rcx), %eax
	movl	%eax, 40(%rcx)
	cmpl	cols, %eax
	jl	.LBB51_4
# BB#3:                                 # %if.then.4
	movl	cols, %eax
	subl	$1, %eax
	movq	curr, %rcx
	movl	%eax, 40(%rcx)
.LBB51_4:                               # %if.end.7
	movq	curr, %rax
	addq	$24, %rax
	movq	curr, %rcx
	movl	40(%rcx), %esi
	movq	curr, %rcx
	movl	44(%rcx), %edx
	movq	%rax, %rdi
	callq	LGotoPos
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end51:
	.size	CursorRight, .Lfunc_end51-CursorRight
	.cfi_endproc

	.align	16, 0x90
	.type	CursorLeft,@function
CursorLeft:                             # @CursorLeft
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp157:
	.cfi_def_cfa_offset 16
.Ltmp158:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp159:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	movq	curr, %rax
	movl	40(%rax), %ecx
	subl	%edi, %ecx
	movl	%ecx, 40(%rax)
	cmpl	$0, %ecx
	jge	.LBB52_2
# BB#1:                                 # %if.then
	movq	curr, %rax
	movl	$0, 40(%rax)
.LBB52_2:                               # %if.end
	movq	curr, %rax
	addq	$24, %rax
	movq	curr, %rcx
	movl	40(%rcx), %esi
	movq	curr, %rcx
	movl	44(%rcx), %edx
	movq	%rax, %rdi
	callq	LGotoPos
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end52:
	.size	CursorLeft, .Lfunc_end52-CursorLeft
	.cfi_endproc

	.align	16, 0x90
	.type	SelectRendition,@function
SelectRendition:                        # @SelectRendition
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp160:
	.cfi_def_cfa_offset 16
.Ltmp161:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp162:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$0, -8(%rbp)
	movq	curr, %rax
	movzbl	9873(%rax), %ecx
	movl	%ecx, -12(%rbp)
	movq	curr, %rax
	movzbl	9876(%rax), %ecx
	movl	%ecx, -16(%rbp)
.LBB53_1:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movslq	-8(%rbp), %rax
	movq	curr, %rcx
	movl	9540(%rcx,%rax,4), %edx
	movl	%edx, -4(%rbp)
	cmpl	$38, -4(%rbp)
	je	.LBB53_3
# BB#2:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB53_1 Depth=1
	cmpl	$48, -4(%rbp)
	jne	.LBB53_14
.LBB53_3:                               # %land.lhs.true
                                        #   in Loop: Header=BB53_1 Depth=1
	movl	-8(%rbp), %eax
	addl	$2, %eax
	movq	curr, %rcx
	cmpl	9796(%rcx), %eax
	jge	.LBB53_14
# BB#4:                                 # %land.lhs.true.8
                                        #   in Loop: Header=BB53_1 Depth=1
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	curr, %rdx
	cmpl	$5, 9540(%rdx,%rcx,4)
	jne	.LBB53_14
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB53_1 Depth=1
	movl	-8(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -8(%rbp)
	movslq	-8(%rbp), %rcx
	movq	curr, %rdx
	movl	9540(%rdx,%rcx,4), %eax
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jl	.LBB53_7
# BB#6:                                 # %lor.lhs.false.21
                                        #   in Loop: Header=BB53_1 Depth=1
	cmpl	$255, -20(%rbp)
	jle	.LBB53_8
.LBB53_7:                               # %if.then.24
                                        #   in Loop: Header=BB53_1 Depth=1
	jmp	.LBB53_54
.LBB53_8:                               # %if.end
                                        #   in Loop: Header=BB53_1 Depth=1
	movl	-20(%rbp), %edi
	callq	color256to16
	addl	$30, %eax
	movl	%eax, -20(%rbp)
	cmpl	$38, -20(%rbp)
	jl	.LBB53_10
# BB#9:                                 # %if.then.28
                                        #   in Loop: Header=BB53_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$52, %eax
	movl	%eax, -20(%rbp)
.LBB53_10:                              # %if.end.30
                                        #   in Loop: Header=BB53_1 Depth=1
	cmpl	$38, -4(%rbp)
	jne	.LBB53_12
# BB#11:                                # %cond.true
                                        #   in Loop: Header=BB53_1 Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, -24(%rbp)         # 4-byte Spill
	jmp	.LBB53_13
.LBB53_12:                              # %cond.false
                                        #   in Loop: Header=BB53_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$10, %eax
	movl	%eax, -24(%rbp)         # 4-byte Spill
.LBB53_13:                              # %cond.end
                                        #   in Loop: Header=BB53_1 Depth=1
	movl	-24(%rbp), %eax         # 4-byte Reload
	movl	%eax, -4(%rbp)
.LBB53_14:                              # %if.end.34
                                        #   in Loop: Header=BB53_1 Depth=1
	cmpl	$0, -4(%rbp)
	je	.LBB53_18
# BB#15:                                # %lor.lhs.false.37
                                        #   in Loop: Header=BB53_1 Depth=1
	cmpl	$30, -4(%rbp)
	jl	.LBB53_19
# BB#16:                                # %land.lhs.true.40
                                        #   in Loop: Header=BB53_1 Depth=1
	cmpl	$39, -4(%rbp)
	jg	.LBB53_19
# BB#17:                                # %land.lhs.true.43
                                        #   in Loop: Header=BB53_1 Depth=1
	cmpl	$38, -4(%rbp)
	je	.LBB53_19
.LBB53_18:                              # %if.then.46
                                        #   in Loop: Header=BB53_1 Depth=1
	movl	-12(%rbp), %eax
	andl	$191, %eax
	movl	%eax, -12(%rbp)
.LBB53_19:                              # %if.end.47
                                        #   in Loop: Header=BB53_1 Depth=1
	cmpl	$0, -4(%rbp)
	je	.LBB53_23
# BB#20:                                # %lor.lhs.false.50
                                        #   in Loop: Header=BB53_1 Depth=1
	cmpl	$40, -4(%rbp)
	jl	.LBB53_24
# BB#21:                                # %land.lhs.true.53
                                        #   in Loop: Header=BB53_1 Depth=1
	cmpl	$49, -4(%rbp)
	jg	.LBB53_24
# BB#22:                                # %land.lhs.true.56
                                        #   in Loop: Header=BB53_1 Depth=1
	cmpl	$48, -4(%rbp)
	je	.LBB53_24
.LBB53_23:                              # %if.then.59
                                        #   in Loop: Header=BB53_1 Depth=1
	movl	-12(%rbp), %eax
	andl	$127, %eax
	movl	%eax, -12(%rbp)
.LBB53_24:                              # %if.end.61
                                        #   in Loop: Header=BB53_1 Depth=1
	cmpl	$90, -4(%rbp)
	jl	.LBB53_27
# BB#25:                                # %land.lhs.true.64
                                        #   in Loop: Header=BB53_1 Depth=1
	cmpl	$97, -4(%rbp)
	jg	.LBB53_27
# BB#26:                                # %if.then.67
                                        #   in Loop: Header=BB53_1 Depth=1
	movl	-12(%rbp), %eax
	orl	$64, %eax
	movl	%eax, -12(%rbp)
.LBB53_27:                              # %if.end.68
                                        #   in Loop: Header=BB53_1 Depth=1
	cmpl	$100, -4(%rbp)
	jl	.LBB53_30
# BB#28:                                # %land.lhs.true.71
                                        #   in Loop: Header=BB53_1 Depth=1
	cmpl	$107, -4(%rbp)
	jg	.LBB53_30
# BB#29:                                # %if.then.74
                                        #   in Loop: Header=BB53_1 Depth=1
	movl	-12(%rbp), %eax
	orl	$128, %eax
	movl	%eax, -12(%rbp)
.LBB53_30:                              # %if.end.76
                                        #   in Loop: Header=BB53_1 Depth=1
	cmpl	$90, -4(%rbp)
	jl	.LBB53_33
# BB#31:                                # %land.lhs.true.79
                                        #   in Loop: Header=BB53_1 Depth=1
	cmpl	$97, -4(%rbp)
	jg	.LBB53_33
# BB#32:                                # %if.then.82
                                        #   in Loop: Header=BB53_1 Depth=1
	movl	-4(%rbp), %eax
	subl	$60, %eax
	movl	%eax, -4(%rbp)
.LBB53_33:                              # %if.end.83
                                        #   in Loop: Header=BB53_1 Depth=1
	cmpl	$100, -4(%rbp)
	jl	.LBB53_36
# BB#34:                                # %land.lhs.true.86
                                        #   in Loop: Header=BB53_1 Depth=1
	cmpl	$107, -4(%rbp)
	jg	.LBB53_36
# BB#35:                                # %if.then.89
                                        #   in Loop: Header=BB53_1 Depth=1
	movl	-4(%rbp), %eax
	subl	$60, %eax
	movl	%eax, -4(%rbp)
.LBB53_36:                              # %if.end.91
                                        #   in Loop: Header=BB53_1 Depth=1
	cmpl	$30, -4(%rbp)
	jl	.LBB53_40
# BB#37:                                # %land.lhs.true.94
                                        #   in Loop: Header=BB53_1 Depth=1
	cmpl	$39, -4(%rbp)
	jg	.LBB53_40
# BB#38:                                # %land.lhs.true.97
                                        #   in Loop: Header=BB53_1 Depth=1
	cmpl	$38, -4(%rbp)
	je	.LBB53_40
# BB#39:                                # %if.then.100
                                        #   in Loop: Header=BB53_1 Depth=1
	movl	-16(%rbp), %eax
	andl	$240, %eax
	movl	-4(%rbp), %ecx
	subl	$30, %ecx
	xorl	$9, %ecx
	orl	%ecx, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB53_45
.LBB53_40:                              # %if.else
                                        #   in Loop: Header=BB53_1 Depth=1
	cmpl	$40, -4(%rbp)
	jl	.LBB53_44
# BB#41:                                # %land.lhs.true.106
                                        #   in Loop: Header=BB53_1 Depth=1
	cmpl	$49, -4(%rbp)
	jg	.LBB53_44
# BB#42:                                # %land.lhs.true.109
                                        #   in Loop: Header=BB53_1 Depth=1
	cmpl	$48, -4(%rbp)
	je	.LBB53_44
# BB#43:                                # %if.then.112
                                        #   in Loop: Header=BB53_1 Depth=1
	movl	-16(%rbp), %eax
	andl	$15, %eax
	movl	-4(%rbp), %ecx
	subl	$40, %ecx
	xorl	$9, %ecx
	shll	$4, %ecx
	orl	%ecx, %eax
	movl	%eax, -16(%rbp)
.LBB53_44:                              # %if.end.117
                                        #   in Loop: Header=BB53_1 Depth=1
	jmp	.LBB53_45
.LBB53_45:                              # %if.end.118
                                        #   in Loop: Header=BB53_1 Depth=1
	cmpl	$0, -4(%rbp)
	jne	.LBB53_47
# BB#46:                                # %if.then.121
                                        #   in Loop: Header=BB53_1 Depth=1
	movl	$0, -16(%rbp)
.LBB53_47:                              # %if.end.122
                                        #   in Loop: Header=BB53_1 Depth=1
	cmpl	$0, -4(%rbp)
	jl	.LBB53_49
# BB#48:                                # %lor.lhs.false.125
                                        #   in Loop: Header=BB53_1 Depth=1
	cmpl	$28, -4(%rbp)
	jl	.LBB53_50
.LBB53_49:                              # %if.then.128
                                        #   in Loop: Header=BB53_1 Depth=1
	jmp	.LBB53_54
.LBB53_50:                              # %if.end.129
                                        #   in Loop: Header=BB53_1 Depth=1
	movslq	-4(%rbp), %rax
	movsbl	rendlist(,%rax), %ecx
	movl	%ecx, -4(%rbp)
	movl	-4(%rbp), %ecx
	andl	$64, %ecx
	cmpl	$0, %ecx
	je	.LBB53_52
# BB#51:                                # %if.then.134
                                        #   in Loop: Header=BB53_1 Depth=1
	movl	-4(%rbp), %eax
	andl	-12(%rbp), %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB53_53
.LBB53_52:                              # %if.else.136
                                        #   in Loop: Header=BB53_1 Depth=1
	movl	-4(%rbp), %eax
	orl	-12(%rbp), %eax
	movl	%eax, -12(%rbp)
.LBB53_53:                              # %if.end.138
                                        #   in Loop: Header=BB53_1 Depth=1
	jmp	.LBB53_54
.LBB53_54:                              # %do.cond
                                        #   in Loop: Header=BB53_1 Depth=1
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	movq	curr, %rcx
	cmpl	9796(%rcx), %eax
	jl	.LBB53_1
# BB#55:                                # %do.end
	movl	-12(%rbp), %eax
	movb	%al, %cl
	movq	curr, %rdx
	movb	%cl, 9873(%rdx)
	movl	-16(%rbp), %eax
	movb	%al, %cl
	movq	curr, %rdx
	movb	%cl, 9876(%rdx)
	movq	curr, %rdx
	addq	$24, %rdx
	movq	curr, %rsi
	addq	$9872, %rsi             # imm = 0x2690
	movq	%rdx, %rdi
	callq	LSetRendition
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end53:
	.size	SelectRendition, .Lfunc_end53-SelectRendition
	.cfi_endproc

	.align	16, 0x90
	.type	BackwardTab,@function
BackwardTab:                            # @BackwardTab
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp163:
	.cfi_def_cfa_offset 16
.Ltmp164:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp165:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	curr, %rax
	movl	40(%rax), %ecx
	movl	%ecx, -4(%rbp)
	movslq	-4(%rbp), %rax
	movq	curr, %rdx
	movq	10808(%rdx), %rdx
	movsbl	(%rdx,%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB54_3
# BB#1:                                 # %land.lhs.true
	cmpl	$0, -4(%rbp)
	jle	.LBB54_3
# BB#2:                                 # %if.then
	movl	-4(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -4(%rbp)
.LBB54_3:                               # %if.end
	jmp	.LBB54_4
.LBB54_4:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -4(%rbp)
	movb	%cl, -5(%rbp)           # 1-byte Spill
	jle	.LBB54_6
# BB#5:                                 # %land.rhs
                                        #   in Loop: Header=BB54_4 Depth=1
	movslq	-4(%rbp), %rax
	movq	curr, %rcx
	movq	10808(%rcx), %rcx
	cmpb	$0, (%rcx,%rax)
	setne	%dl
	xorb	$-1, %dl
	movb	%dl, -5(%rbp)           # 1-byte Spill
.LBB54_6:                               # %land.end
                                        #   in Loop: Header=BB54_4 Depth=1
	movb	-5(%rbp), %al           # 1-byte Reload
	testb	$1, %al
	jne	.LBB54_7
	jmp	.LBB54_8
.LBB54_7:                               # %while.body
                                        #   in Loop: Header=BB54_4 Depth=1
	movl	-4(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB54_4
.LBB54_8:                               # %while.end
	movl	-4(%rbp), %eax
	movq	curr, %rcx
	movl	%eax, 40(%rcx)
	movq	curr, %rcx
	addq	$24, %rcx
	movq	curr, %rdx
	movl	40(%rdx), %esi
	movq	curr, %rdx
	movl	44(%rdx), %edx
	movq	%rcx, %rdi
	callq	LGotoPos
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end54:
	.size	BackwardTab, .Lfunc_end54-BackwardTab
	.cfi_endproc

	.align	16, 0x90
	.type	InsertLine,@function
InsertLine:                             # @InsertLine
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp166:
	.cfi_def_cfa_offset 16
.Ltmp167:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp168:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	%edi, -4(%rbp)
	movq	curr, %rax
	movl	44(%rax), %edi
	movq	curr, %rax
	cmpl	9956(%rax), %edi
	jl	.LBB55_2
# BB#1:                                 # %lor.lhs.false
	movq	curr, %rax
	movl	44(%rax), %ecx
	movq	curr, %rax
	cmpl	9960(%rax), %ecx
	jle	.LBB55_3
.LBB55_2:                               # %if.then
	jmp	.LBB55_12
.LBB55_3:                               # %if.end
	movl	-4(%rbp), %eax
	movq	curr, %rcx
	movl	9960(%rcx), %edx
	movq	curr, %rcx
	subl	44(%rcx), %edx
	addl	$1, %edx
	cmpl	%edx, %eax
	jle	.LBB55_5
# BB#4:                                 # %if.then.8
	movq	curr, %rax
	movl	9960(%rax), %ecx
	movq	curr, %rax
	subl	44(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, -4(%rbp)
.LBB55_5:                               # %if.end.14
	xorl	%eax, %eax
	movq	curr, %rdi
	subl	-4(%rbp), %eax
	movq	curr, %rcx
	movl	44(%rcx), %edx
	movq	curr, %rcx
	movl	9960(%rcx), %ecx
	movq	curr, %rsi
	cmpl	$0, 10016(%rsi)
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movl	%eax, -20(%rbp)         # 4-byte Spill
	movl	%edx, -24(%rbp)         # 4-byte Spill
	movl	%ecx, -28(%rbp)         # 4-byte Spill
	je	.LBB55_7
# BB#6:                                 # %cond.true
	xorl	%eax, %eax
	movl	$256, %ecx              # imm = 0x100
	movq	curr, %rdx
	movzbl	9876(%rdx), %esi
	andl	$240, %esi
	sarl	$4, %esi
	movq	curr, %rdx
	movzbl	9873(%rdx), %edi
	andl	$128, %edi
	cmpl	$0, %edi
	cmovnel	%ecx, %eax
	orl	%eax, %esi
	movl	%esi, -32(%rbp)         # 4-byte Spill
	jmp	.LBB55_8
.LBB55_7:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, -32(%rbp)         # 4-byte Spill
	jmp	.LBB55_8
.LBB55_8:                               # %cond.end
	movl	-32(%rbp), %eax         # 4-byte Reload
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	-20(%rbp), %esi         # 4-byte Reload
	movl	-24(%rbp), %edx         # 4-byte Reload
	movl	-28(%rbp), %ecx         # 4-byte Reload
	movl	%eax, %r8d
	callq	MScrollV
	xorl	%eax, %eax
	movq	curr, %rdi
	addq	$24, %rdi
	subl	-4(%rbp), %eax
	movq	curr, %r9
	movl	44(%r9), %edx
	movq	curr, %r9
	movl	9960(%r9), %ecx
	movq	curr, %r9
	cmpl	$0, 10016(%r9)
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movl	%edx, -48(%rbp)         # 4-byte Spill
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	je	.LBB55_10
# BB#9:                                 # %cond.true.31
	xorl	%eax, %eax
	movl	$256, %ecx              # imm = 0x100
	movq	curr, %rdx
	movzbl	9876(%rdx), %esi
	andl	$240, %esi
	sarl	$4, %esi
	movq	curr, %rdx
	movzbl	9873(%rdx), %edi
	andl	$128, %edi
	cmpl	$0, %edi
	cmovnel	%ecx, %eax
	orl	%eax, %esi
	movl	%esi, -56(%rbp)         # 4-byte Spill
	jmp	.LBB55_11
.LBB55_10:                              # %cond.false.44
	xorl	%eax, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB55_11
.LBB55_11:                              # %cond.end.45
	movl	-56(%rbp), %eax         # 4-byte Reload
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movl	-44(%rbp), %esi         # 4-byte Reload
	movl	-48(%rbp), %edx         # 4-byte Reload
	movl	-52(%rbp), %ecx         # 4-byte Reload
	movl	%eax, %r8d
	callq	LScrollV
	movq	curr, %rdi
	addq	$24, %rdi
	movq	curr, %r9
	movl	40(%r9), %esi
	movq	curr, %r9
	movl	44(%r9), %edx
	callq	LGotoPos
.LBB55_12:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end55:
	.size	InsertLine, .Lfunc_end55-InsertLine
	.cfi_endproc

	.align	16, 0x90
	.type	DeleteLine,@function
DeleteLine:                             # @DeleteLine
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp169:
	.cfi_def_cfa_offset 16
.Ltmp170:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp171:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	%edi, -4(%rbp)
	movq	curr, %rax
	movl	44(%rax), %edi
	movq	curr, %rax
	cmpl	9956(%rax), %edi
	jl	.LBB56_2
# BB#1:                                 # %lor.lhs.false
	movq	curr, %rax
	movl	44(%rax), %ecx
	movq	curr, %rax
	cmpl	9960(%rax), %ecx
	jle	.LBB56_3
.LBB56_2:                               # %if.then
	jmp	.LBB56_12
.LBB56_3:                               # %if.end
	movl	-4(%rbp), %eax
	movq	curr, %rcx
	movl	9960(%rcx), %edx
	movq	curr, %rcx
	subl	44(%rcx), %edx
	addl	$1, %edx
	cmpl	%edx, %eax
	jle	.LBB56_5
# BB#4:                                 # %if.then.8
	movq	curr, %rax
	movl	9960(%rax), %ecx
	movq	curr, %rax
	subl	44(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, -4(%rbp)
.LBB56_5:                               # %if.end.14
	movq	curr, %rdi
	movl	-4(%rbp), %esi
	movq	curr, %rax
	movl	44(%rax), %edx
	movq	curr, %rax
	movl	9960(%rax), %ecx
	movq	curr, %rax
	cmpl	$0, 10016(%rax)
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movl	%esi, -20(%rbp)         # 4-byte Spill
	movl	%edx, -24(%rbp)         # 4-byte Spill
	movl	%ecx, -28(%rbp)         # 4-byte Spill
	je	.LBB56_7
# BB#6:                                 # %cond.true
	xorl	%eax, %eax
	movl	$256, %ecx              # imm = 0x100
	movq	curr, %rdx
	movzbl	9876(%rdx), %esi
	andl	$240, %esi
	sarl	$4, %esi
	movq	curr, %rdx
	movzbl	9873(%rdx), %edi
	andl	$128, %edi
	cmpl	$0, %edi
	cmovnel	%ecx, %eax
	orl	%eax, %esi
	movl	%esi, -32(%rbp)         # 4-byte Spill
	jmp	.LBB56_8
.LBB56_7:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, -32(%rbp)         # 4-byte Spill
	jmp	.LBB56_8
.LBB56_8:                               # %cond.end
	movl	-32(%rbp), %eax         # 4-byte Reload
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	-20(%rbp), %esi         # 4-byte Reload
	movl	-24(%rbp), %edx         # 4-byte Reload
	movl	-28(%rbp), %ecx         # 4-byte Reload
	movl	%eax, %r8d
	callq	MScrollV
	movq	curr, %rdi
	addq	$24, %rdi
	movl	-4(%rbp), %esi
	movq	curr, %r9
	movl	44(%r9), %edx
	movq	curr, %r9
	movl	9960(%r9), %ecx
	movq	curr, %r9
	cmpl	$0, 10016(%r9)
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movl	%esi, -44(%rbp)         # 4-byte Spill
	movl	%edx, -48(%rbp)         # 4-byte Spill
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	je	.LBB56_10
# BB#9:                                 # %cond.true.29
	xorl	%eax, %eax
	movl	$256, %ecx              # imm = 0x100
	movq	curr, %rdx
	movzbl	9876(%rdx), %esi
	andl	$240, %esi
	sarl	$4, %esi
	movq	curr, %rdx
	movzbl	9873(%rdx), %edi
	andl	$128, %edi
	cmpl	$0, %edi
	cmovnel	%ecx, %eax
	orl	%eax, %esi
	movl	%esi, -56(%rbp)         # 4-byte Spill
	jmp	.LBB56_11
.LBB56_10:                              # %cond.false.42
	xorl	%eax, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB56_11
.LBB56_11:                              # %cond.end.43
	movl	-56(%rbp), %eax         # 4-byte Reload
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movl	-44(%rbp), %esi         # 4-byte Reload
	movl	-48(%rbp), %edx         # 4-byte Reload
	movl	-52(%rbp), %ecx         # 4-byte Reload
	movl	%eax, %r8d
	callq	LScrollV
	movq	curr, %rdi
	addq	$24, %rdi
	movq	curr, %r9
	movl	40(%r9), %esi
	movq	curr, %r9
	movl	44(%r9), %edx
	callq	LGotoPos
.LBB56_12:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end56:
	.size	DeleteLine, .Lfunc_end56-DeleteLine
	.cfi_endproc

	.align	16, 0x90
	.type	DeleteChar,@function
DeleteChar:                             # @DeleteChar
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp172:
	.cfi_def_cfa_offset 16
.Ltmp173:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp174:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movl	%edi, -4(%rbp)
	movq	curr, %rax
	movl	44(%rax), %edi
	movl	%edi, -8(%rbp)
	movq	curr, %rax
	movl	40(%rax), %edi
	movl	%edi, -12(%rbp)
	movl	-12(%rbp), %edi
	cmpl	cols, %edi
	jne	.LBB57_2
# BB#1:                                 # %if.then
	movl	-12(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -12(%rbp)
.LBB57_2:                               # %if.end
	jmp	.LBB57_3
.LBB57_3:                               # %do.body
	movslq	-8(%rbp), %rax
	movq	curr, %rcx
	imulq	$40, %rax, %rax
	addq	9864(%rcx), %rax
	movq	(%rax), %rdi
	movq	mline_old, %rsi
	movslq	cols, %rdx
	callq	bcopy
	movslq	-8(%rbp), %rax
	movq	curr, %rcx
	imulq	$40, %rax, %rax
	addq	9864(%rcx), %rax
	movq	8(%rax), %rdi
	movq	mline_old+8, %rsi
	movslq	cols, %rdx
	callq	bcopy
	movslq	-8(%rbp), %rax
	movq	curr, %rcx
	imulq	$40, %rax, %rax
	addq	9864(%rcx), %rax
	movq	16(%rax), %rdi
	movq	mline_old+16, %rsi
	movslq	cols, %rdx
	callq	bcopy
	movslq	-8(%rbp), %rax
	movq	curr, %rcx
	imulq	$40, %rax, %rax
	addq	9864(%rcx), %rax
	movq	24(%rax), %rdi
	movq	mline_old+24, %rsi
	movslq	cols, %rdx
	callq	bcopy
	movslq	-8(%rbp), %rax
	movq	curr, %rcx
	imulq	$40, %rax, %rax
	addq	9864(%rcx), %rax
	movq	32(%rax), %rdi
	movq	mline_old+32, %rsi
	movslq	cols, %rdx
	callq	bcopy
# BB#4:                                 # %do.end
	movq	curr, %rdi
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %edx
	movl	-12(%rbp), %ecx
	movq	curr, %rax
	movl	32(%rax), %r8d
	subl	$1, %r8d
	movq	curr, %rax
	cmpl	$0, 10016(%rax)
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movl	%esi, -28(%rbp)         # 4-byte Spill
	movl	%edx, -32(%rbp)         # 4-byte Spill
	movl	%ecx, -36(%rbp)         # 4-byte Spill
	movl	%r8d, -40(%rbp)         # 4-byte Spill
	je	.LBB57_6
# BB#5:                                 # %cond.true
	xorl	%eax, %eax
	movl	$256, %ecx              # imm = 0x100
	movq	curr, %rdx
	movzbl	9876(%rdx), %esi
	andl	$240, %esi
	sarl	$4, %esi
	movq	curr, %rdx
	movzbl	9873(%rdx), %edi
	andl	$128, %edi
	cmpl	$0, %edi
	cmovnel	%ecx, %eax
	orl	%eax, %esi
	movl	%esi, -44(%rbp)         # 4-byte Spill
	jmp	.LBB57_7
.LBB57_6:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB57_7
.LBB57_7:                               # %cond.end
	movl	-44(%rbp), %eax         # 4-byte Reload
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	-28(%rbp), %esi         # 4-byte Reload
	movl	-32(%rbp), %edx         # 4-byte Reload
	movl	-36(%rbp), %ecx         # 4-byte Reload
	movl	-40(%rbp), %r8d         # 4-byte Reload
	movl	%eax, %r9d
	callq	MScrollH
	movq	curr, %rdi
	addq	$24, %rdi
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %edx
	movl	-12(%rbp), %ecx
	movq	curr, %r10
	movl	32(%r10), %eax
	subl	$1, %eax
	movq	curr, %r10
	cmpl	$0, 10016(%r10)
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movl	%esi, -60(%rbp)         # 4-byte Spill
	movl	%edx, -64(%rbp)         # 4-byte Spill
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	movl	%eax, -72(%rbp)         # 4-byte Spill
	je	.LBB57_9
# BB#8:                                 # %cond.true.33
	xorl	%eax, %eax
	movl	$256, %ecx              # imm = 0x100
	movq	curr, %rdx
	movzbl	9876(%rdx), %esi
	andl	$240, %esi
	sarl	$4, %esi
	movq	curr, %rdx
	movzbl	9873(%rdx), %edi
	andl	$128, %edi
	cmpl	$0, %edi
	cmovnel	%ecx, %eax
	orl	%eax, %esi
	movl	%esi, -76(%rbp)         # 4-byte Spill
	jmp	.LBB57_10
.LBB57_9:                               # %cond.false.46
	xorl	%eax, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB57_10
.LBB57_10:                              # %cond.end.47
	movl	-76(%rbp), %eax         # 4-byte Reload
	movabsq	$mline_old, %rcx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	-60(%rbp), %esi         # 4-byte Reload
	movl	-64(%rbp), %edx         # 4-byte Reload
	movl	-68(%rbp), %r8d         # 4-byte Reload
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	movl	%r8d, %ecx
	movl	-72(%rbp), %r8d         # 4-byte Reload
	movl	%eax, %r9d
	movq	-88(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	LScrollH
	movq	curr, %rdi
	addq	$24, %rdi
	movl	-12(%rbp), %esi
	movl	-8(%rbp), %edx
	callq	LGotoPos
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end57:
	.size	DeleteChar, .Lfunc_end57-DeleteChar
	.cfi_endproc

	.align	16, 0x90
	.type	InsertChar,@function
InsertChar:                             # @InsertChar
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp175:
	.cfi_def_cfa_offset 16
.Ltmp176:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp177:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movl	%edi, -4(%rbp)
	movq	curr, %rax
	movl	44(%rax), %edi
	movl	%edi, -8(%rbp)
	movq	curr, %rax
	movl	40(%rax), %edi
	movl	%edi, -12(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.LBB58_2
# BB#1:                                 # %if.then
	jmp	.LBB58_13
.LBB58_2:                               # %if.end
	movl	-12(%rbp), %eax
	cmpl	cols, %eax
	jne	.LBB58_4
# BB#3:                                 # %if.then.3
	movl	-12(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -12(%rbp)
.LBB58_4:                               # %if.end.4
	jmp	.LBB58_5
.LBB58_5:                               # %do.body
	movslq	-8(%rbp), %rax
	movq	curr, %rcx
	imulq	$40, %rax, %rax
	addq	9864(%rcx), %rax
	movq	(%rax), %rdi
	movq	mline_old, %rsi
	movslq	cols, %rdx
	callq	bcopy
	movslq	-8(%rbp), %rax
	movq	curr, %rcx
	imulq	$40, %rax, %rax
	addq	9864(%rcx), %rax
	movq	8(%rax), %rdi
	movq	mline_old+8, %rsi
	movslq	cols, %rdx
	callq	bcopy
	movslq	-8(%rbp), %rax
	movq	curr, %rcx
	imulq	$40, %rax, %rax
	addq	9864(%rcx), %rax
	movq	16(%rax), %rdi
	movq	mline_old+16, %rsi
	movslq	cols, %rdx
	callq	bcopy
	movslq	-8(%rbp), %rax
	movq	curr, %rcx
	imulq	$40, %rax, %rax
	addq	9864(%rcx), %rax
	movq	24(%rax), %rdi
	movq	mline_old+24, %rsi
	movslq	cols, %rdx
	callq	bcopy
	movslq	-8(%rbp), %rax
	movq	curr, %rcx
	imulq	$40, %rax, %rax
	addq	9864(%rcx), %rax
	movq	32(%rax), %rdi
	movq	mline_old+32, %rsi
	movslq	cols, %rdx
	callq	bcopy
# BB#6:                                 # %do.end
	xorl	%eax, %eax
	movq	curr, %rdi
	subl	-4(%rbp), %eax
	movl	-8(%rbp), %edx
	movl	-12(%rbp), %ecx
	movq	curr, %rsi
	movl	32(%rsi), %r8d
	subl	$1, %r8d
	movq	curr, %rsi
	cmpl	$0, 10016(%rsi)
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movl	%eax, -28(%rbp)         # 4-byte Spill
	movl	%edx, -32(%rbp)         # 4-byte Spill
	movl	%ecx, -36(%rbp)         # 4-byte Spill
	movl	%r8d, -40(%rbp)         # 4-byte Spill
	je	.LBB58_8
# BB#7:                                 # %cond.true
	xorl	%eax, %eax
	movl	$256, %ecx              # imm = 0x100
	movq	curr, %rdx
	movzbl	9876(%rdx), %esi
	andl	$240, %esi
	sarl	$4, %esi
	movq	curr, %rdx
	movzbl	9873(%rdx), %edi
	andl	$128, %edi
	cmpl	$0, %edi
	cmovnel	%ecx, %eax
	orl	%eax, %esi
	movl	%esi, -44(%rbp)         # 4-byte Spill
	jmp	.LBB58_9
.LBB58_8:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB58_9
.LBB58_9:                               # %cond.end
	movl	-44(%rbp), %eax         # 4-byte Reload
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	-28(%rbp), %esi         # 4-byte Reload
	movl	-32(%rbp), %edx         # 4-byte Reload
	movl	-36(%rbp), %ecx         # 4-byte Reload
	movl	-40(%rbp), %r8d         # 4-byte Reload
	movl	%eax, %r9d
	callq	MScrollH
	xorl	%eax, %eax
	movq	curr, %rdi
	addq	$24, %rdi
	subl	-4(%rbp), %eax
	movl	-8(%rbp), %edx
	movl	-12(%rbp), %ecx
	movq	curr, %r10
	movl	32(%r10), %esi
	subl	$1, %esi
	movq	curr, %r10
	cmpl	$0, 10016(%r10)
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movl	%eax, -60(%rbp)         # 4-byte Spill
	movl	%edx, -64(%rbp)         # 4-byte Spill
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	movl	%esi, -72(%rbp)         # 4-byte Spill
	je	.LBB58_11
# BB#10:                                # %cond.true.38
	xorl	%eax, %eax
	movl	$256, %ecx              # imm = 0x100
	movq	curr, %rdx
	movzbl	9876(%rdx), %esi
	andl	$240, %esi
	sarl	$4, %esi
	movq	curr, %rdx
	movzbl	9873(%rdx), %edi
	andl	$128, %edi
	cmpl	$0, %edi
	cmovnel	%ecx, %eax
	orl	%eax, %esi
	movl	%esi, -76(%rbp)         # 4-byte Spill
	jmp	.LBB58_12
.LBB58_11:                              # %cond.false.51
	xorl	%eax, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB58_12
.LBB58_12:                              # %cond.end.52
	movl	-76(%rbp), %eax         # 4-byte Reload
	movabsq	$mline_old, %rcx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	-60(%rbp), %esi         # 4-byte Reload
	movl	-64(%rbp), %edx         # 4-byte Reload
	movl	-68(%rbp), %r8d         # 4-byte Reload
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	movl	%r8d, %ecx
	movl	-72(%rbp), %r8d         # 4-byte Reload
	movl	%eax, %r9d
	movq	-88(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	LScrollH
	movq	curr, %rdi
	addq	$24, %rdi
	movl	-12(%rbp), %esi
	movl	-8(%rbp), %edx
	callq	LGotoPos
.LBB58_13:                              # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end58:
	.size	InsertChar, .Lfunc_end58-InsertChar
	.cfi_endproc

	.align	16, 0x90
	.type	ASetMode,@function
ASetMode:                               # @ASetMode
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp178:
	.cfi_def_cfa_offset 16
.Ltmp179:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp180:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	%edi, -4(%rbp)
	movl	$0, -8(%rbp)
.LBB59_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB59_5 Depth 2
                                        #       Child Loop BB59_7 Depth 3
	movl	-8(%rbp), %eax
	movq	curr, %rcx
	cmpl	9796(%rcx), %eax
	jge	.LBB59_26
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB59_1 Depth=1
	movslq	-8(%rbp), %rax
	movq	curr(%rip), %rcx
	movl	9540(%rcx,%rax,4), %edx
	movl	%edx, %esi
	subl	$4, %esi
	movl	%edx, -28(%rbp)         # 4-byte Spill
	movl	%esi, -32(%rbp)         # 4-byte Spill
	je	.LBB59_3
	jmp	.LBB59_27
.LBB59_27:                              # %for.body
                                        #   in Loop: Header=BB59_1 Depth=1
	movl	-28(%rbp), %eax         # 4-byte Reload
	subl	$20, %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	je	.LBB59_18
	jmp	.LBB59_28
.LBB59_28:                              # %for.body
                                        #   in Loop: Header=BB59_1 Depth=1
	movl	-28(%rbp), %eax         # 4-byte Reload
	subl	$34, %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
	je	.LBB59_19
	jmp	.LBB59_23
.LBB59_3:                               # %sw.bb
                                        #   in Loop: Header=BB59_1 Depth=1
	movl	-4(%rbp), %eax
	movq	curr, %rcx
	movl	%eax, 9972(%rcx)
# BB#4:                                 # %do.body
                                        #   in Loop: Header=BB59_1 Depth=1
	movq	display, %rax
	movq	%rax, -16(%rbp)
	movq	displays, %rax
	movq	%rax, display
.LBB59_5:                               # %for.cond.1
                                        #   Parent Loop BB59_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB59_7 Depth 3
	cmpq	$0, display
	je	.LBB59_16
# BB#6:                                 # %for.body.2
                                        #   in Loop: Header=BB59_5 Depth=2
	movq	display, %rax
	movq	328(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB59_7:                               # %for.cond.3
                                        #   Parent Loop BB59_1 Depth=1
                                        #     Parent Loop BB59_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpq	$0, -24(%rbp)
	je	.LBB59_12
# BB#8:                                 # %for.body.5
                                        #   in Loop: Header=BB59_7 Depth=3
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	curr, %rcx
	addq	$24, %rcx
	cmpq	%rcx, %rax
	jne	.LBB59_10
# BB#9:                                 # %if.then
                                        #   in Loop: Header=BB59_5 Depth=2
	jmp	.LBB59_12
.LBB59_10:                              # %if.end
                                        #   in Loop: Header=BB59_7 Depth=3
	jmp	.LBB59_11
.LBB59_11:                              # %for.inc
                                        #   in Loop: Header=BB59_7 Depth=3
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB59_7
.LBB59_12:                              # %for.end
                                        #   in Loop: Header=BB59_5 Depth=2
	cmpq	$0, -24(%rbp)
	jne	.LBB59_14
# BB#13:                                # %if.then.8
                                        #   in Loop: Header=BB59_5 Depth=2
	jmp	.LBB59_15
.LBB59_14:                              # %if.end.9
                                        #   in Loop: Header=BB59_5 Depth=2
	movl	-4(%rbp), %edi
	callq	InsertMode
.LBB59_15:                              # %for.inc.10
                                        #   in Loop: Header=BB59_5 Depth=2
	movq	display, %rax
	movq	(%rax), %rax
	movq	%rax, display
	jmp	.LBB59_5
.LBB59_16:                              # %for.end.11
                                        #   in Loop: Header=BB59_1 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, display
# BB#17:                                # %do.end
                                        #   in Loop: Header=BB59_1 Depth=1
	jmp	.LBB59_24
.LBB59_18:                              # %sw.bb.12
                                        #   in Loop: Header=BB59_1 Depth=1
	movl	-4(%rbp), %eax
	movq	curr, %rcx
	movl	%eax, 9996(%rcx)
	jmp	.LBB59_24
.LBB59_19:                              # %sw.bb.13
                                        #   in Loop: Header=BB59_1 Depth=1
	cmpl	$0, -4(%rbp)
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %ecx
	movq	curr, %rdx
	movl	%ecx, 9992(%rdx)
	movq	curr, %rdx
	addq	$24, %rdx
	movq	curr, %rsi
	cmpl	$0, 9988(%rsi)
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	je	.LBB59_21
# BB#20:                                # %cond.true
                                        #   in Loop: Header=BB59_1 Depth=1
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB59_22
.LBB59_21:                              # %cond.false
                                        #   in Loop: Header=BB59_1 Depth=1
	movq	curr, %rax
	movl	9992(%rax), %ecx
	movl	%ecx, -52(%rbp)         # 4-byte Spill
.LBB59_22:                              # %cond.end
                                        #   in Loop: Header=BB59_1 Depth=1
	movl	-52(%rbp), %eax         # 4-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	callq	LCursorVisibility
	jmp	.LBB59_24
.LBB59_23:                              # %sw.default
                                        #   in Loop: Header=BB59_1 Depth=1
	jmp	.LBB59_24
.LBB59_24:                              # %sw.epilog
                                        #   in Loop: Header=BB59_1 Depth=1
	jmp	.LBB59_25
.LBB59_25:                              # %for.inc.18
                                        #   in Loop: Header=BB59_1 Depth=1
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB59_1
.LBB59_26:                              # %for.end.19
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end59:
	.size	ASetMode, .Lfunc_end59-ASetMode
	.cfi_endproc

	.align	16, 0x90
	.type	PrintStart,@function
PrintStart:                             # @PrintStart
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp181:
	.cfi_def_cfa_offset 16
.Ltmp182:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp183:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	curr, %rax
	movq	$0, 176(%rax)
	movq	curr, %rax
	movq	184(%rax), %rax
	movq	%rax, display
	cmpq	$0, display
	je	.LBB60_4
# BB#1:                                 # %land.lhs.true
	movq	curr, %rax
	movq	display, %rcx
	cmpq	376(%rcx), %rax
	jne	.LBB60_4
# BB#2:                                 # %land.lhs.true.1
	cmpq	$0, printcmd
	jne	.LBB60_13
# BB#3:                                 # %lor.lhs.false
	movq	display, %rax
	cmpq	$0, 6024(%rax)
	jne	.LBB60_13
.LBB60_4:                               # %if.then
	movq	displays, %rax
	movq	%rax, display
.LBB60_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, display
	je	.LBB60_12
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB60_5 Depth=1
	movq	curr, %rax
	movq	display, %rcx
	cmpq	376(%rcx), %rax
	jne	.LBB60_10
# BB#7:                                 # %land.lhs.true.7
                                        #   in Loop: Header=BB60_5 Depth=1
	cmpq	$0, printcmd
	jne	.LBB60_9
# BB#8:                                 # %lor.lhs.false.9
                                        #   in Loop: Header=BB60_5 Depth=1
	movq	display, %rax
	cmpq	$0, 6024(%rax)
	je	.LBB60_10
.LBB60_9:                               # %if.then.14
	jmp	.LBB60_12
.LBB60_10:                              # %if.end
                                        #   in Loop: Header=BB60_5 Depth=1
	jmp	.LBB60_11
.LBB60_11:                              # %for.inc
                                        #   in Loop: Header=BB60_5 Depth=1
	movq	display, %rax
	movq	(%rax), %rax
	movq	%rax, display
	jmp	.LBB60_5
.LBB60_12:                              # %for.end
	jmp	.LBB60_13
.LBB60_13:                              # %if.end.15
	cmpq	$0, display
	jne	.LBB60_29
# BB#14:                                # %if.then.17
	movq	curr, %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB60_15:                              # %for.cond.18
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -8(%rbp)
	je	.LBB60_21
# BB#16:                                # %for.body.20
                                        #   in Loop: Header=BB60_15 Depth=1
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, display
	cmpq	$0, printcmd
	jne	.LBB60_18
# BB#17:                                # %lor.lhs.false.22
                                        #   in Loop: Header=BB60_15 Depth=1
	movq	display, %rax
	cmpq	$0, 6024(%rax)
	je	.LBB60_19
.LBB60_18:                              # %if.then.27
	jmp	.LBB60_21
.LBB60_19:                              # %if.end.28
                                        #   in Loop: Header=BB60_15 Depth=1
	jmp	.LBB60_20
.LBB60_20:                              # %for.inc.29
                                        #   in Loop: Header=BB60_15 Depth=1
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB60_15
.LBB60_21:                              # %for.end.30
	cmpq	$0, -8(%rbp)
	jne	.LBB60_28
# BB#22:                                # %if.then.32
	movq	displays, %rax
	movq	%rax, display
	cmpq	$0, display
	je	.LBB60_26
# BB#23:                                # %lor.lhs.false.34
	movq	display, %rax
	cmpq	$0, (%rax)
	jne	.LBB60_26
# BB#24:                                # %lor.lhs.false.37
	cmpq	$0, printcmd
	jne	.LBB60_27
# BB#25:                                # %lor.lhs.false.39
	movq	display, %rax
	cmpq	$0, 6024(%rax)
	jne	.LBB60_27
.LBB60_26:                              # %if.then.44
	jmp	.LBB60_32
.LBB60_27:                              # %if.end.45
	jmp	.LBB60_28
.LBB60_28:                              # %if.end.46
	jmp	.LBB60_29
.LBB60_29:                              # %if.end.47
	movq	display, %rax
	movq	curr, %rcx
	movq	%rax, 176(%rcx)
	movq	curr, %rax
	addq	$10028, %rax            # imm = 0x272C
	movq	curr, %rcx
	movq	%rax, 10800(%rcx)
	movq	curr, %rax
	movl	$5, 9856(%rax)
	cmpq	$0, printcmd
	je	.LBB60_32
# BB#30:                                # %land.lhs.true.50
	movq	curr, %rax
	movq	176(%rax), %rax
	cmpl	$0, 7408(%rax)
	jge	.LBB60_32
# BB#31:                                # %if.then.53
	movq	curr, %rdi
	movq	printcmd, %rsi
	callq	printpipe
	movq	curr, %rsi
	movq	176(%rsi), %rsi
	movl	%eax, 7408(%rsi)
.LBB60_32:                              # %if.end.56
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end60:
	.size	PrintStart, .Lfunc_end60-PrintStart
	.cfi_endproc

	.align	16, 0x90
	.type	ScrollRegion,@function
ScrollRegion:                           # @ScrollRegion
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp184:
	.cfi_def_cfa_offset 16
.Ltmp185:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp186:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	%edi, -4(%rbp)
	movq	curr, %rdi
	movl	-4(%rbp), %esi
	movq	curr, %rax
	movl	9956(%rax), %edx
	movq	curr, %rax
	movl	9960(%rax), %ecx
	movq	curr, %rax
	cmpl	$0, 10016(%rax)
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movl	%esi, -20(%rbp)         # 4-byte Spill
	movl	%edx, -24(%rbp)         # 4-byte Spill
	movl	%ecx, -28(%rbp)         # 4-byte Spill
	je	.LBB61_2
# BB#1:                                 # %cond.true
	xorl	%eax, %eax
	movl	$256, %ecx              # imm = 0x100
	movq	curr, %rdx
	movzbl	9876(%rdx), %esi
	andl	$240, %esi
	sarl	$4, %esi
	movq	curr, %rdx
	movzbl	9873(%rdx), %edi
	andl	$128, %edi
	cmpl	$0, %edi
	cmovnel	%ecx, %eax
	orl	%eax, %esi
	movl	%esi, -32(%rbp)         # 4-byte Spill
	jmp	.LBB61_3
.LBB61_2:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, -32(%rbp)         # 4-byte Spill
	jmp	.LBB61_3
.LBB61_3:                               # %cond.end
	movl	-32(%rbp), %eax         # 4-byte Reload
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	-20(%rbp), %esi         # 4-byte Reload
	movl	-24(%rbp), %edx         # 4-byte Reload
	movl	-28(%rbp), %ecx         # 4-byte Reload
	movl	%eax, %r8d
	callq	MScrollV
	movq	curr, %rdi
	addq	$24, %rdi
	movl	-4(%rbp), %esi
	movq	curr, %r9
	movl	9956(%r9), %edx
	movq	curr, %r9
	movl	9960(%r9), %ecx
	movq	curr, %r9
	cmpl	$0, 10016(%r9)
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movl	%esi, -44(%rbp)         # 4-byte Spill
	movl	%edx, -48(%rbp)         # 4-byte Spill
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	je	.LBB61_5
# BB#4:                                 # %cond.true.10
	xorl	%eax, %eax
	movl	$256, %ecx              # imm = 0x100
	movq	curr, %rdx
	movzbl	9876(%rdx), %esi
	andl	$240, %esi
	sarl	$4, %esi
	movq	curr, %rdx
	movzbl	9873(%rdx), %edi
	andl	$128, %edi
	cmpl	$0, %edi
	cmovnel	%ecx, %eax
	orl	%eax, %esi
	movl	%esi, -56(%rbp)         # 4-byte Spill
	jmp	.LBB61_6
.LBB61_5:                               # %cond.false.23
	xorl	%eax, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB61_6
.LBB61_6:                               # %cond.end.24
	movl	-56(%rbp), %eax         # 4-byte Reload
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movl	-44(%rbp), %esi         # 4-byte Reload
	movl	-48(%rbp), %edx         # 4-byte Reload
	movl	-52(%rbp), %ecx         # 4-byte Reload
	movl	%eax, %r8d
	callq	LScrollV
	movq	curr, %rdi
	addq	$24, %rdi
	movq	curr, %r9
	movl	40(%r9), %esi
	movq	curr, %r9
	movl	44(%r9), %edx
	callq	LGotoPos
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end61:
	.size	ScrollRegion, .Lfunc_end61-ScrollRegion
	.cfi_endproc

	.align	16, 0x90
	.type	WReverseVideo,@function
WReverseVideo:                          # @WReverseVideo
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp187:
	.cfi_def_cfa_offset 16
.Ltmp188:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp189:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	24(%rdi), %rdi
	movq	%rdi, -24(%rbp)
.LBB62_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB62_13
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB62_1 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, display
	movq	-24(%rbp), %rax
	movq	display, %rcx
	cmpq	336(%rcx), %rax
	je	.LBB62_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB62_1 Depth=1
	jmp	.LBB62_12
.LBB62_4:                               # %if.end
                                        #   in Loop: Header=BB62_1 Depth=1
	movl	-12(%rbp), %edi
	callq	ReverseVideo
	cmpl	$0, -12(%rbp)
	jne	.LBB62_11
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB62_1 Depth=1
	movq	-8(%rbp), %rax
	cmpl	$0, 9984(%rax)
	je	.LBB62_11
# BB#6:                                 # %land.lhs.true.3
                                        #   in Loop: Header=BB62_1 Depth=1
	movq	display, %rax
	cmpq	$0, 6184(%rax)
	jne	.LBB62_11
# BB#7:                                 # %if.then.5
                                        #   in Loop: Header=BB62_1 Depth=1
	movq	display, %rax
	cmpq	$0, 5784(%rax)
	je	.LBB62_9
# BB#8:                                 # %if.then.10
                                        #   in Loop: Header=BB62_1 Depth=1
	movq	display, %rax
	movq	5784(%rax), %rdi
	callq	AddCStr
	jmp	.LBB62_10
.LBB62_9:                               # %if.else
                                        #   in Loop: Header=BB62_1 Depth=1
	movq	-8(%rbp), %rax
	movl	$3, 10816(%rax)
.LBB62_10:                              # %if.end.14
                                        #   in Loop: Header=BB62_1 Depth=1
	jmp	.LBB62_11
.LBB62_11:                              # %if.end.15
                                        #   in Loop: Header=BB62_1 Depth=1
	jmp	.LBB62_12
.LBB62_12:                              # %for.inc
                                        #   in Loop: Header=BB62_1 Depth=1
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB62_1
.LBB62_13:                              # %for.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end62:
	.size	WReverseVideo, .Lfunc_end62-WReverseVideo
	.cfi_endproc

	.align	16, 0x90
	.type	RestorePosRendition,@function
RestorePosRendition:                    # @RestorePosRendition
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp190:
	.cfi_def_cfa_offset 16
.Ltmp191:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp192:
	.cfi_def_cfa_register %rbp
	movq	curr, %rax
	addq	$24, %rax
	movq	curr, %rcx
	movl	40(%rcx), %esi
	movq	curr, %rcx
	movl	44(%rcx), %edx
	movq	%rax, %rdi
	callq	LGotoPos
	movq	curr, %rax
	addq	$24, %rax
	movq	curr, %rcx
	addq	$9872, %rcx             # imm = 0x2690
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	LSetRendition
	popq	%rbp
	retq
.Lfunc_end63:
	.size	RestorePosRendition, .Lfunc_end63-RestorePosRendition
	.cfi_endproc

	.align	16, 0x90
	.type	MClearArea,@function
MClearArea:                             # @MClearArea
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp193:
	.cfi_def_cfa_offset 16
.Ltmp194:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp195:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -28(%rbp)
	cmpl	$0, -16(%rbp)
	jl	.LBB64_2
# BB#1:                                 # %lor.lhs.false
	movl	-24(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB64_3
.LBB64_2:                               # %if.then
	jmp	.LBB64_50
.LBB64_3:                               # %if.end
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	32(%rcx), %eax
	jl	.LBB64_5
# BB#4:                                 # %if.then.3
	movq	-8(%rbp), %rax
	movl	32(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, -12(%rbp)
.LBB64_5:                               # %if.end.6
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	32(%rcx), %eax
	jl	.LBB64_7
# BB#6:                                 # %if.then.10
	movq	-8(%rbp), %rax
	movl	32(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, -20(%rbp)
.LBB64_7:                               # %if.end.14
	movq	-8(%rbp), %rax
	cmpl	$8, 48(%rax)
	jne	.LBB64_10
# BB#8:                                 # %cond.true
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	9864(%rcx), %rcx
	movslq	-16(%rbp), %rdx
	imulq	$40, %rdx, %rdx
	addq	%rdx, %rcx
	movq	16(%rcx), %rcx
	movzbl	(%rcx,%rax), %esi
	cmpl	$255, %esi
	jne	.LBB64_18
# BB#9:                                 # %land.lhs.true
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	9864(%rcx), %rcx
	movslq	-16(%rbp), %rdx
	imulq	$40, %rdx, %rdx
	addq	%rdx, %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx,%rax), %esi
	cmpl	$255, %esi
	je	.LBB64_11
	jmp	.LBB64_18
.LBB64_10:                              # %cond.false
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	9864(%rcx), %rcx
	movslq	-16(%rbp), %rdx
	imulq	$40, %rdx, %rdx
	addq	%rdx, %rcx
	movq	16(%rcx), %rcx
	movzbl	(%rcx,%rax), %esi
	andl	$224, %esi
	cmpl	$128, %esi
	jne	.LBB64_18
.LBB64_11:                              # %if.then.36
	cmpl	$0, -12(%rbp)
	jle	.LBB64_15
# BB#12:                                # %if.then.39
	jmp	.LBB64_13
.LBB64_13:                              # %do.body
	movb	mchar_blank, %al
	movl	-12(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-8(%rbp), %rsi
	movq	9864(%rsi), %rsi
	movslq	-16(%rbp), %rdi
	imulq	$40, %rdi, %rdi
	addq	%rdi, %rsi
	movq	(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
	movb	mchar_blank+1, %al
	movl	-12(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-8(%rbp), %rsi
	movq	9864(%rsi), %rsi
	movslq	-16(%rbp), %rdi
	imulq	$40, %rdi, %rdi
	addq	%rdi, %rsi
	movq	8(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
	movb	mchar_blank+2, %al
	movl	-12(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-8(%rbp), %rsi
	movq	9864(%rsi), %rsi
	movslq	-16(%rbp), %rdi
	imulq	$40, %rdi, %rdi
	addq	%rdi, %rsi
	movq	16(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
	movb	mchar_blank+3, %al
	movl	-12(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-8(%rbp), %rsi
	movq	9864(%rsi), %rsi
	movslq	-16(%rbp), %rdi
	imulq	$40, %rdi, %rdi
	addq	%rdi, %rsi
	movq	24(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
	movb	mchar_blank+4, %al
	movl	-12(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-8(%rbp), %rsi
	movq	9864(%rsi), %rsi
	movslq	-16(%rbp), %rdi
	imulq	$40, %rdi, %rdi
	addq	%rdi, %rsi
	movq	32(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
# BB#14:                                # %do.end
	jmp	.LBB64_15
.LBB64_15:                              # %if.end.72
	jmp	.LBB64_16
.LBB64_16:                              # %do.body.73
	movb	mchar_blank, %al
	movslq	-12(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	9864(%rdx), %rdx
	movslq	-16(%rbp), %rsi
	imulq	$40, %rsi, %rsi
	addq	%rsi, %rdx
	movq	(%rdx), %rdx
	movb	%al, (%rdx,%rcx)
	movb	mchar_blank+1, %al
	movslq	-12(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	9864(%rdx), %rdx
	movslq	-16(%rbp), %rsi
	imulq	$40, %rsi, %rsi
	addq	%rsi, %rdx
	movq	8(%rdx), %rdx
	movb	%al, (%rdx,%rcx)
	movb	mchar_blank+2, %al
	movslq	-12(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	9864(%rdx), %rdx
	movslq	-16(%rbp), %rsi
	imulq	$40, %rsi, %rsi
	addq	%rsi, %rdx
	movq	16(%rdx), %rdx
	movb	%al, (%rdx,%rcx)
	movb	mchar_blank+3, %al
	movslq	-12(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	9864(%rdx), %rdx
	movslq	-16(%rbp), %rsi
	imulq	$40, %rsi, %rsi
	addq	%rsi, %rdx
	movq	24(%rdx), %rdx
	movb	%al, (%rdx,%rcx)
	movb	mchar_blank+4, %al
	movslq	-12(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	9864(%rdx), %rdx
	movslq	-16(%rbp), %rsi
	imulq	$40, %rsi, %rsi
	addq	%rsi, %rdx
	movq	32(%rdx), %rdx
	movb	%al, (%rdx,%rcx)
# BB#17:                                # %do.end.104
	jmp	.LBB64_18
.LBB64_18:                              # %if.end.105
	movq	-8(%rbp), %rax
	cmpl	$8, 48(%rax)
	jne	.LBB64_21
# BB#19:                                # %cond.true.110
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movq	9864(%rdx), %rdx
	movslq	-24(%rbp), %rsi
	imulq	$40, %rsi, %rsi
	addq	%rsi, %rdx
	movq	16(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$255, %eax
	jne	.LBB64_28
# BB#20:                                # %land.lhs.true.120
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movq	9864(%rdx), %rdx
	movslq	-24(%rbp), %rsi
	imulq	$40, %rsi, %rsi
	addq	%rsi, %rdx
	movq	(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$255, %eax
	je	.LBB64_23
	jmp	.LBB64_28
.LBB64_21:                              # %cond.false.131
	movslq	-20(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	9864(%rcx), %rcx
	movslq	-24(%rbp), %rdx
	imulq	$40, %rdx, %rdx
	addq	%rdx, %rcx
	movq	16(%rcx), %rcx
	movzbl	(%rcx,%rax), %esi
	andl	$31, %esi
	cmpl	$0, %esi
	je	.LBB64_28
# BB#22:                                # %land.lhs.true.142
	movslq	-20(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	9864(%rcx), %rcx
	movslq	-24(%rbp), %rdx
	imulq	$40, %rdx, %rdx
	addq	%rdx, %rcx
	movq	16(%rcx), %rcx
	movzbl	(%rcx,%rax), %esi
	andl	$224, %esi
	cmpl	$0, %esi
	jne	.LBB64_28
.LBB64_23:                              # %if.then.153
	jmp	.LBB64_24
.LBB64_24:                              # %do.body.154
	movb	mchar_blank, %al
	movslq	-20(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	9864(%rdx), %rdx
	movslq	-24(%rbp), %rsi
	imulq	$40, %rsi, %rsi
	addq	%rsi, %rdx
	movq	(%rdx), %rdx
	movb	%al, (%rdx,%rcx)
	movb	mchar_blank+1, %al
	movslq	-20(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	9864(%rdx), %rdx
	movslq	-24(%rbp), %rsi
	imulq	$40, %rsi, %rsi
	addq	%rsi, %rdx
	movq	8(%rdx), %rdx
	movb	%al, (%rdx,%rcx)
	movb	mchar_blank+2, %al
	movslq	-20(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	9864(%rdx), %rdx
	movslq	-24(%rbp), %rsi
	imulq	$40, %rsi, %rsi
	addq	%rsi, %rdx
	movq	16(%rdx), %rdx
	movb	%al, (%rdx,%rcx)
	movb	mchar_blank+3, %al
	movslq	-20(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	9864(%rdx), %rdx
	movslq	-24(%rbp), %rsi
	imulq	$40, %rsi, %rsi
	addq	%rsi, %rdx
	movq	24(%rdx), %rdx
	movb	%al, (%rdx,%rcx)
	movb	mchar_blank+4, %al
	movslq	-20(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	9864(%rdx), %rdx
	movslq	-24(%rbp), %rsi
	imulq	$40, %rsi, %rsi
	addq	%rsi, %rdx
	movq	32(%rdx), %rdx
	movb	%al, (%rdx,%rcx)
# BB#25:                                # %do.end.185
	jmp	.LBB64_26
.LBB64_26:                              # %do.body.186
	movb	mchar_blank, %al
	movl	-20(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-8(%rbp), %rsi
	movq	9864(%rsi), %rsi
	movslq	-24(%rbp), %rdi
	imulq	$40, %rdi, %rdi
	addq	%rdi, %rsi
	movq	(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
	movb	mchar_blank+1, %al
	movl	-20(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-8(%rbp), %rsi
	movq	9864(%rsi), %rsi
	movslq	-24(%rbp), %rdi
	imulq	$40, %rdi, %rdi
	addq	%rdi, %rsi
	movq	8(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
	movb	mchar_blank+2, %al
	movl	-20(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-8(%rbp), %rsi
	movq	9864(%rsi), %rsi
	movslq	-24(%rbp), %rdi
	imulq	$40, %rdi, %rdi
	addq	%rdi, %rsi
	movq	16(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
	movb	mchar_blank+3, %al
	movl	-20(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-8(%rbp), %rsi
	movq	9864(%rsi), %rsi
	movslq	-24(%rbp), %rdi
	imulq	$40, %rdi, %rdi
	addq	%rdi, %rsi
	movq	24(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
	movb	mchar_blank+4, %al
	movl	-20(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-8(%rbp), %rsi
	movq	9864(%rsi), %rsi
	movslq	-24(%rbp), %rdi
	imulq	$40, %rdi, %rdi
	addq	%rdi, %rsi
	movq	32(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
# BB#27:                                # %do.end.222
	jmp	.LBB64_28
.LBB64_28:                              # %if.end.223
	movq	-8(%rbp), %rax
	movq	9864(%rax), %rax
	movslq	-16(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -48(%rbp)
	movl	-16(%rbp), %edx
	movl	%edx, -36(%rbp)
.LBB64_29:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jg	.LBB64_50
# BB#30:                                # %for.body
                                        #   in Loop: Header=BB64_29 Depth=1
	movl	-36(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jne	.LBB64_32
# BB#31:                                # %cond.true.231
                                        #   in Loop: Header=BB64_29 Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB64_33
.LBB64_32:                              # %cond.false.232
                                        #   in Loop: Header=BB64_29 Depth=1
	movq	-8(%rbp), %rax
	movl	32(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, -52(%rbp)         # 4-byte Spill
.LBB64_33:                              # %cond.end
                                        #   in Loop: Header=BB64_29 Depth=1
	movl	-52(%rbp), %eax         # 4-byte Reload
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %eax
	subl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	jle	.LBB64_45
# BB#34:                                # %if.then.240
                                        #   in Loop: Header=BB64_29 Depth=1
	jmp	.LBB64_35
.LBB64_35:                              # %do.body.241
                                        #   in Loop: Header=BB64_29 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movslq	-12(%rbp), %rcx
	addq	%rcx, %rax
	movl	-32(%rbp), %esi
	movq	%rax, %rdi
	callq	bclear
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	null, %rax
	je	.LBB64_37
# BB#36:                                # %if.then.248
                                        #   in Loop: Header=BB64_29 Depth=1
	xorl	%esi, %esi
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-12(%rbp), %rcx
	addq	%rcx, %rax
	movslq	-32(%rbp), %rdx
	movq	%rax, %rdi
	callq	memset
.LBB64_37:                              # %if.end.253
                                        #   in Loop: Header=BB64_29 Depth=1
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	null, %rax
	je	.LBB64_39
# BB#38:                                # %if.then.257
                                        #   in Loop: Header=BB64_29 Depth=1
	xorl	%esi, %esi
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movslq	-12(%rbp), %rcx
	addq	%rcx, %rax
	movslq	-32(%rbp), %rdx
	movq	%rax, %rdi
	callq	memset
.LBB64_39:                              # %if.end.262
                                        #   in Loop: Header=BB64_29 Depth=1
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	null, %rax
	je	.LBB64_41
# BB#40:                                # %if.then.266
                                        #   in Loop: Header=BB64_29 Depth=1
	xorl	%esi, %esi
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-12(%rbp), %rcx
	addq	%rcx, %rax
	movslq	-32(%rbp), %rdx
	movq	%rax, %rdi
	callq	memset
.LBB64_41:                              # %if.end.271
                                        #   in Loop: Header=BB64_29 Depth=1
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	null, %rax
	je	.LBB64_43
# BB#42:                                # %if.then.275
                                        #   in Loop: Header=BB64_29 Depth=1
	xorl	%esi, %esi
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movslq	-12(%rbp), %rcx
	addq	%rcx, %rax
	movslq	-32(%rbp), %rdx
	movq	%rax, %rdi
	callq	memset
.LBB64_43:                              # %if.end.280
                                        #   in Loop: Header=BB64_29 Depth=1
	jmp	.LBB64_44
.LBB64_44:                              # %do.end.281
                                        #   in Loop: Header=BB64_29 Depth=1
	jmp	.LBB64_45
.LBB64_45:                              # %if.end.282
                                        #   in Loop: Header=BB64_29 Depth=1
	cmpl	$0, -32(%rbp)
	jle	.LBB64_48
# BB#46:                                # %land.lhs.true.285
                                        #   in Loop: Header=BB64_29 Depth=1
	cmpl	$0, -28(%rbp)
	je	.LBB64_48
# BB#47:                                # %if.then.286
                                        #   in Loop: Header=BB64_29 Depth=1
	movq	-8(%rbp), %rdi
	movl	-36(%rbp), %esi
	movl	-12(%rbp), %edx
	movl	-12(%rbp), %eax
	addl	-32(%rbp), %eax
	subl	$1, %eax
	movl	-28(%rbp), %r8d
	movl	%eax, %ecx
	callq	MBceLine
.LBB64_48:                              # %if.end.289
                                        #   in Loop: Header=BB64_29 Depth=1
	movl	$0, -12(%rbp)
# BB#49:                                # %for.inc
                                        #   in Loop: Header=BB64_29 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	movq	-48(%rbp), %rcx
	addq	$40, %rcx
	movq	%rcx, -48(%rbp)
	jmp	.LBB64_29
.LBB64_50:                              # %for.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end64:
	.size	MClearArea, .Lfunc_end64-MClearArea
	.cfi_endproc

	.align	16, 0x90
	.type	MScrollH,@function
MScrollH:                               # @MScrollH
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp196:
	.cfi_def_cfa_offset 16
.Ltmp197:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp198:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -28(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.LBB65_2
# BB#1:                                 # %if.then
	jmp	.LBB65_81
.LBB65_2:                               # %if.end
	movslq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	imulq	$40, %rax, %rax
	addq	9864(%rcx), %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$8, 48(%rax)
	jne	.LBB65_5
# BB#3:                                 # %cond.true
	movslq	-20(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	16(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$255, %edx
	jne	.LBB65_13
# BB#4:                                 # %land.lhs.true
	movslq	-20(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$255, %edx
	je	.LBB65_6
	jmp	.LBB65_13
.LBB65_5:                               # %cond.false
	movslq	-20(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	16(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	andl	$224, %edx
	cmpl	$128, %edx
	jne	.LBB65_13
.LBB65_6:                               # %if.then.17
	cmpl	$0, -20(%rbp)
	jle	.LBB65_10
# BB#7:                                 # %if.then.20
	jmp	.LBB65_8
.LBB65_8:                               # %do.body
	movb	mchar_blank, %al
	movl	-20(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-40(%rbp), %rsi
	movq	(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
	movb	mchar_blank+1, %al
	movl	-20(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-40(%rbp), %rsi
	movq	8(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
	movb	mchar_blank+2, %al
	movl	-20(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-40(%rbp), %rsi
	movq	16(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
	movb	mchar_blank+3, %al
	movl	-20(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-40(%rbp), %rsi
	movq	24(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
	movb	mchar_blank+4, %al
	movl	-20(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-40(%rbp), %rsi
	movq	32(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
# BB#9:                                 # %do.end
	jmp	.LBB65_10
.LBB65_10:                              # %if.end.37
	jmp	.LBB65_11
.LBB65_11:                              # %do.body.38
	movb	mchar_blank, %al
	movslq	-20(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	(%rdx), %rdx
	movb	%al, (%rdx,%rcx)
	movb	mchar_blank+1, %al
	movslq	-20(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	8(%rdx), %rdx
	movb	%al, (%rdx,%rcx)
	movb	mchar_blank+2, %al
	movslq	-20(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	16(%rdx), %rdx
	movb	%al, (%rdx,%rcx)
	movb	mchar_blank+3, %al
	movslq	-20(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	24(%rdx), %rdx
	movb	%al, (%rdx,%rcx)
	movb	mchar_blank+4, %al
	movslq	-20(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	32(%rdx), %rdx
	movb	%al, (%rdx,%rcx)
# BB#12:                                # %do.end.54
	jmp	.LBB65_13
.LBB65_13:                              # %if.end.55
	movq	-8(%rbp), %rax
	cmpl	$8, 48(%rax)
	jne	.LBB65_16
# BB#14:                                # %cond.true.60
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdx
	movq	16(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$255, %eax
	jne	.LBB65_23
# BB#15:                                # %land.lhs.true.67
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdx
	movq	(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$255, %eax
	je	.LBB65_18
	jmp	.LBB65_23
.LBB65_16:                              # %cond.false.75
	movslq	-24(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	16(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	andl	$31, %edx
	cmpl	$0, %edx
	je	.LBB65_23
# BB#17:                                # %land.lhs.true.83
	movslq	-24(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	16(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	andl	$224, %edx
	cmpl	$0, %edx
	jne	.LBB65_23
.LBB65_18:                              # %if.then.91
	jmp	.LBB65_19
.LBB65_19:                              # %do.body.92
	movb	mchar_blank, %al
	movslq	-24(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	(%rdx), %rdx
	movb	%al, (%rdx,%rcx)
	movb	mchar_blank+1, %al
	movslq	-24(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	8(%rdx), %rdx
	movb	%al, (%rdx,%rcx)
	movb	mchar_blank+2, %al
	movslq	-24(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	16(%rdx), %rdx
	movb	%al, (%rdx,%rcx)
	movb	mchar_blank+3, %al
	movslq	-24(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	24(%rdx), %rdx
	movb	%al, (%rdx,%rcx)
	movb	mchar_blank+4, %al
	movslq	-24(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	32(%rdx), %rdx
	movb	%al, (%rdx,%rcx)
# BB#20:                                # %do.end.108
	jmp	.LBB65_21
.LBB65_21:                              # %do.body.109
	movb	mchar_blank, %al
	movl	-24(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-40(%rbp), %rsi
	movq	(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
	movb	mchar_blank+1, %al
	movl	-24(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-40(%rbp), %rsi
	movq	8(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
	movb	mchar_blank+2, %al
	movl	-24(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-40(%rbp), %rsi
	movq	16(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
	movb	mchar_blank+3, %al
	movl	-24(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-40(%rbp), %rsi
	movq	24(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
	movb	mchar_blank+4, %al
	movl	-24(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-40(%rbp), %rsi
	movq	32(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
# BB#22:                                # %do.end.130
	jmp	.LBB65_23
.LBB65_23:                              # %if.end.131
	cmpl	$0, -12(%rbp)
	jle	.LBB65_53
# BB#24:                                # %if.then.134
	movl	-24(%rbp), %eax
	subl	-20(%rbp), %eax
	addl	$1, %eax
	cmpl	-12(%rbp), %eax
	jle	.LBB65_39
# BB#25:                                # %if.then.139
	movq	-8(%rbp), %rax
	cmpl	$8, 48(%rax)
	jne	.LBB65_28
# BB#26:                                # %cond.true.144
	movl	-20(%rbp), %eax
	addl	-12(%rbp), %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdx
	movq	16(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$255, %eax
	jne	.LBB65_36
# BB#27:                                # %land.lhs.true.152
	movl	-20(%rbp), %eax
	addl	-12(%rbp), %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdx
	movq	(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$255, %eax
	je	.LBB65_29
	jmp	.LBB65_36
.LBB65_28:                              # %cond.false.160
	movl	-20(%rbp), %eax
	addl	-12(%rbp), %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdx
	movq	16(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	andl	$224, %eax
	cmpl	$128, %eax
	jne	.LBB65_36
.LBB65_29:                              # %if.then.169
	movl	-20(%rbp), %eax
	addl	-12(%rbp), %eax
	cmpl	$0, %eax
	jle	.LBB65_33
# BB#30:                                # %if.then.173
	jmp	.LBB65_31
.LBB65_31:                              # %do.body.174
	movb	mchar_blank, %al
	movl	-20(%rbp), %ecx
	addl	-12(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-40(%rbp), %rsi
	movq	(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
	movb	mchar_blank+1, %al
	movl	-20(%rbp), %ecx
	addl	-12(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-40(%rbp), %rsi
	movq	8(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
	movb	mchar_blank+2, %al
	movl	-20(%rbp), %ecx
	addl	-12(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-40(%rbp), %rsi
	movq	16(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
	movb	mchar_blank+3, %al
	movl	-20(%rbp), %ecx
	addl	-12(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-40(%rbp), %rsi
	movq	24(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
	movb	mchar_blank+4, %al
	movl	-20(%rbp), %ecx
	addl	-12(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-40(%rbp), %rsi
	movq	32(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
# BB#32:                                # %do.end.200
	jmp	.LBB65_33
.LBB65_33:                              # %if.end.201
	jmp	.LBB65_34
.LBB65_34:                              # %do.body.202
	movb	mchar_blank, %al
	movl	-20(%rbp), %ecx
	addl	-12(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	-40(%rbp), %rsi
	movq	(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
	movb	mchar_blank+1, %al
	movl	-20(%rbp), %ecx
	addl	-12(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	-40(%rbp), %rsi
	movq	8(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
	movb	mchar_blank+2, %al
	movl	-20(%rbp), %ecx
	addl	-12(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	-40(%rbp), %rsi
	movq	16(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
	movb	mchar_blank+3, %al
	movl	-20(%rbp), %ecx
	addl	-12(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	-40(%rbp), %rsi
	movq	24(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
	movb	mchar_blank+4, %al
	movl	-20(%rbp), %ecx
	addl	-12(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	-40(%rbp), %rsi
	movq	32(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
# BB#35:                                # %do.end.223
	jmp	.LBB65_36
.LBB65_36:                              # %if.end.224
	jmp	.LBB65_37
.LBB65_37:                              # %do.body.225
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %ecx
	addl	-12(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	-40(%rbp), %rdx
	movq	(%rdx), %rdx
	movslq	-20(%rbp), %rsi
	addq	%rsi, %rdx
	movl	-24(%rbp), %ecx
	addl	$1, %ecx
	subl	-20(%rbp), %ecx
	subl	-12(%rbp), %ecx
	movslq	%ecx, %rsi
	movq	%rax, %rdi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	%rdx, %rsi
	movq	-48(%rbp), %rdx         # 8-byte Reload
	callq	bcopy
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movl	-20(%rbp), %ecx
	addl	-12(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	-40(%rbp), %rdx
	movq	8(%rdx), %rdx
	movslq	-20(%rbp), %rsi
	addq	%rsi, %rdx
	movl	-24(%rbp), %ecx
	addl	$1, %ecx
	subl	-20(%rbp), %ecx
	subl	-12(%rbp), %ecx
	movslq	%ecx, %rsi
	movq	%rax, %rdi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rdx, %rsi
	movq	-56(%rbp), %rdx         # 8-byte Reload
	callq	bcopy
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-20(%rbp), %ecx
	addl	-12(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	-40(%rbp), %rdx
	movq	16(%rdx), %rdx
	movslq	-20(%rbp), %rsi
	addq	%rsi, %rdx
	movl	-24(%rbp), %ecx
	addl	$1, %ecx
	subl	-20(%rbp), %ecx
	subl	-12(%rbp), %ecx
	movslq	%ecx, %rsi
	movq	%rax, %rdi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%rdx, %rsi
	movq	-64(%rbp), %rdx         # 8-byte Reload
	callq	bcopy
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	-20(%rbp), %ecx
	addl	-12(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	-40(%rbp), %rdx
	movq	24(%rdx), %rdx
	movslq	-20(%rbp), %rsi
	addq	%rsi, %rdx
	movl	-24(%rbp), %ecx
	addl	$1, %ecx
	subl	-20(%rbp), %ecx
	subl	-12(%rbp), %ecx
	movslq	%ecx, %rsi
	movq	%rax, %rdi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movq	%rdx, %rsi
	movq	-72(%rbp), %rdx         # 8-byte Reload
	callq	bcopy
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movl	-20(%rbp), %ecx
	addl	-12(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	-40(%rbp), %rdx
	movq	32(%rdx), %rdx
	movslq	-20(%rbp), %rsi
	addq	%rsi, %rdx
	movl	-24(%rbp), %ecx
	addl	$1, %ecx
	subl	-20(%rbp), %ecx
	subl	-12(%rbp), %ecx
	movslq	%ecx, %rsi
	movq	%rax, %rdi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movq	%rdx, %rsi
	movq	-80(%rbp), %rdx         # 8-byte Reload
	callq	bcopy
# BB#38:                                # %do.end.279
	jmp	.LBB65_40
.LBB65_39:                              # %if.else
	movl	-24(%rbp), %eax
	subl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
.LBB65_40:                              # %if.end.282
	jmp	.LBB65_41
.LBB65_41:                              # %do.body.283
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	-24(%rbp), %ecx
	addl	$1, %ecx
	subl	-12(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movl	-12(%rbp), %esi
	movq	%rax, %rdi
	callq	bclear
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	null, %rax
	je	.LBB65_43
# BB#42:                                # %if.then.292
	xorl	%esi, %esi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movl	-24(%rbp), %ecx
	addl	$1, %ecx
	subl	-12(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movslq	-12(%rbp), %rdx
	movq	%rax, %rdi
	callq	memset
.LBB65_43:                              # %if.end.299
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	null, %rax
	je	.LBB65_45
# BB#44:                                # %if.then.303
	xorl	%esi, %esi
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-24(%rbp), %ecx
	addl	$1, %ecx
	subl	-12(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movslq	-12(%rbp), %rdx
	movq	%rax, %rdi
	callq	memset
.LBB65_45:                              # %if.end.310
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	null, %rax
	je	.LBB65_47
# BB#46:                                # %if.then.314
	xorl	%esi, %esi
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	-24(%rbp), %ecx
	addl	$1, %ecx
	subl	-12(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movslq	-12(%rbp), %rdx
	movq	%rax, %rdi
	callq	memset
.LBB65_47:                              # %if.end.321
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	null, %rax
	je	.LBB65_49
# BB#48:                                # %if.then.325
	xorl	%esi, %esi
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movl	-24(%rbp), %ecx
	addl	$1, %ecx
	subl	-12(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movslq	-12(%rbp), %rdx
	movq	%rax, %rdi
	callq	memset
.LBB65_49:                              # %if.end.332
	jmp	.LBB65_50
.LBB65_50:                              # %do.end.333
	cmpl	$0, -28(%rbp)
	je	.LBB65_52
# BB#51:                                # %if.then.334
	movq	-8(%rbp), %rdi
	movl	-16(%rbp), %esi
	movl	-24(%rbp), %eax
	addl	$1, %eax
	subl	-12(%rbp), %eax
	movl	-12(%rbp), %ecx
	movl	-28(%rbp), %r8d
	movl	%eax, %edx
	callq	MBceLine
.LBB65_52:                              # %if.end.337
	jmp	.LBB65_81
.LBB65_53:                              # %if.else.338
	xorl	%eax, %eax
	subl	-12(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-24(%rbp), %eax
	subl	-20(%rbp), %eax
	addl	$1, %eax
	cmpl	-12(%rbp), %eax
	jle	.LBB65_67
# BB#54:                                # %if.then.344
	movq	-8(%rbp), %rax
	cmpl	$8, 48(%rax)
	jne	.LBB65_57
# BB#55:                                # %cond.true.349
	movl	-24(%rbp), %eax
	subl	-12(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdx
	movq	16(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$255, %eax
	jne	.LBB65_64
# BB#56:                                # %land.lhs.true.358
	movl	-24(%rbp), %eax
	subl	-12(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdx
	movq	(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$255, %eax
	je	.LBB65_59
	jmp	.LBB65_64
.LBB65_57:                              # %cond.false.367
	movl	-24(%rbp), %eax
	subl	-12(%rbp), %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdx
	movq	16(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	andl	$31, %eax
	cmpl	$0, %eax
	je	.LBB65_64
# BB#58:                                # %land.lhs.true.376
	movl	-24(%rbp), %eax
	subl	-12(%rbp), %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdx
	movq	16(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	andl	$224, %eax
	cmpl	$0, %eax
	jne	.LBB65_64
.LBB65_59:                              # %if.then.385
	jmp	.LBB65_60
.LBB65_60:                              # %do.body.386
	movb	mchar_blank, %al
	movl	-24(%rbp), %ecx
	subl	-12(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	-40(%rbp), %rsi
	movq	(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
	movb	mchar_blank+1, %al
	movl	-24(%rbp), %ecx
	subl	-12(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	-40(%rbp), %rsi
	movq	8(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
	movb	mchar_blank+2, %al
	movl	-24(%rbp), %ecx
	subl	-12(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	-40(%rbp), %rsi
	movq	16(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
	movb	mchar_blank+3, %al
	movl	-24(%rbp), %ecx
	subl	-12(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	-40(%rbp), %rsi
	movq	24(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
	movb	mchar_blank+4, %al
	movl	-24(%rbp), %ecx
	subl	-12(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	-40(%rbp), %rsi
	movq	32(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
# BB#61:                                # %do.end.407
	jmp	.LBB65_62
.LBB65_62:                              # %do.body.408
	movb	mchar_blank, %al
	movl	-24(%rbp), %ecx
	subl	-12(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-40(%rbp), %rsi
	movq	(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
	movb	mchar_blank+1, %al
	movl	-24(%rbp), %ecx
	subl	-12(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-40(%rbp), %rsi
	movq	8(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
	movb	mchar_blank+2, %al
	movl	-24(%rbp), %ecx
	subl	-12(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-40(%rbp), %rsi
	movq	16(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
	movb	mchar_blank+3, %al
	movl	-24(%rbp), %ecx
	subl	-12(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-40(%rbp), %rsi
	movq	24(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
	movb	mchar_blank+4, %al
	movl	-24(%rbp), %ecx
	subl	-12(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-40(%rbp), %rsi
	movq	32(%rsi), %rsi
	movb	%al, (%rsi,%rdx)
# BB#63:                                # %do.end.434
	jmp	.LBB65_64
.LBB65_64:                              # %if.end.435
	jmp	.LBB65_65
.LBB65_65:                              # %do.body.436
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movslq	-20(%rbp), %rcx
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	-20(%rbp), %edx
	addl	-12(%rbp), %edx
	movslq	%edx, %rsi
	addq	%rsi, %rcx
	movl	-24(%rbp), %edx
	addl	$1, %edx
	subl	-20(%rbp), %edx
	subl	-12(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	bcopy
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-20(%rbp), %rcx
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	movl	-20(%rbp), %r8d
	addl	-12(%rbp), %r8d
	movslq	%r8d, %rdx
	addq	%rdx, %rcx
	movl	-24(%rbp), %r8d
	addl	$1, %r8d
	subl	-20(%rbp), %r8d
	subl	-12(%rbp), %r8d
	movslq	%r8d, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	bcopy
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movslq	-20(%rbp), %rcx
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movq	16(%rcx), %rcx
	movl	-20(%rbp), %r8d
	addl	-12(%rbp), %r8d
	movslq	%r8d, %rdx
	addq	%rdx, %rcx
	movl	-24(%rbp), %r8d
	addl	$1, %r8d
	subl	-20(%rbp), %r8d
	subl	-12(%rbp), %r8d
	movslq	%r8d, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	bcopy
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-20(%rbp), %rcx
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movq	24(%rcx), %rcx
	movl	-20(%rbp), %r8d
	addl	-12(%rbp), %r8d
	movslq	%r8d, %rdx
	addq	%rdx, %rcx
	movl	-24(%rbp), %r8d
	addl	$1, %r8d
	subl	-20(%rbp), %r8d
	subl	-12(%rbp), %r8d
	movslq	%r8d, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	bcopy
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movslq	-20(%rbp), %rcx
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movq	32(%rcx), %rcx
	movl	-20(%rbp), %r8d
	addl	-12(%rbp), %r8d
	movslq	%r8d, %rdx
	addq	%rdx, %rcx
	movl	-24(%rbp), %r8d
	addl	$1, %r8d
	subl	-20(%rbp), %r8d
	subl	-12(%rbp), %r8d
	movslq	%r8d, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	bcopy
# BB#66:                                # %do.end.492
	jmp	.LBB65_68
.LBB65_67:                              # %if.else.493
	movl	-24(%rbp), %eax
	subl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
.LBB65_68:                              # %if.end.496
	jmp	.LBB65_69
.LBB65_69:                              # %do.body.497
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movslq	-20(%rbp), %rcx
	addq	%rcx, %rax
	movl	-12(%rbp), %esi
	movq	%rax, %rdi
	callq	bclear
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	null, %rax
	je	.LBB65_71
# BB#70:                                # %if.then.504
	xorl	%esi, %esi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-20(%rbp), %rcx
	addq	%rcx, %rax
	movslq	-12(%rbp), %rdx
	movq	%rax, %rdi
	callq	memset
.LBB65_71:                              # %if.end.509
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	null, %rax
	je	.LBB65_73
# BB#72:                                # %if.then.513
	xorl	%esi, %esi
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movslq	-20(%rbp), %rcx
	addq	%rcx, %rax
	movslq	-12(%rbp), %rdx
	movq	%rax, %rdi
	callq	memset
.LBB65_73:                              # %if.end.518
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	null, %rax
	je	.LBB65_75
# BB#74:                                # %if.then.522
	xorl	%esi, %esi
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-20(%rbp), %rcx
	addq	%rcx, %rax
	movslq	-12(%rbp), %rdx
	movq	%rax, %rdi
	callq	memset
.LBB65_75:                              # %if.end.527
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	null, %rax
	je	.LBB65_77
# BB#76:                                # %if.then.531
	xorl	%esi, %esi
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movslq	-20(%rbp), %rcx
	addq	%rcx, %rax
	movslq	-12(%rbp), %rdx
	movq	%rax, %rdi
	callq	memset
.LBB65_77:                              # %if.end.536
	jmp	.LBB65_78
.LBB65_78:                              # %do.end.537
	cmpl	$0, -28(%rbp)
	je	.LBB65_80
# BB#79:                                # %if.then.539
	movq	-8(%rbp), %rdi
	movl	-16(%rbp), %esi
	movl	-20(%rbp), %edx
	movl	-12(%rbp), %ecx
	movl	-28(%rbp), %r8d
	callq	MBceLine
.LBB65_80:                              # %if.end.540
	jmp	.LBB65_81
.LBB65_81:                              # %if.end.541
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end65:
	.size	MScrollH, .Lfunc_end65-MScrollH
	.cfi_endproc

	.type	visual_bell,@object     # @visual_bell
	.bss
	.globl	visual_bell
	.align	4
visual_bell:
	.long	0                       # 0x0
	.size	visual_bell, 4

	.type	use_hardstatus,@object  # @use_hardstatus
	.data
	.globl	use_hardstatus
	.align	4
use_hardstatus:
	.long	1                       # 0x1
	.size	use_hardstatus, 4

	.type	printcmd,@object        # @printcmd
	.bss
	.globl	printcmd
	.align	8
printcmd:
	.quad	0
	.size	printcmd, 8

	.type	use_altscreen,@object   # @use_altscreen
	.globl	use_altscreen
	.align	4
use_altscreen:
	.long	0                       # 0x0
	.size	use_altscreen, 4

	.type	mchar_blank,@object     # @mchar_blank
	.data
	.globl	mchar_blank
mchar_blank:
	.byte	32                      # 0x20
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.size	mchar_blank, 6

	.type	mchar_so,@object        # @mchar_so
	.globl	mchar_so
mchar_so:
	.byte	32                      # 0x20
	.byte	16                      # 0x10
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.size	mchar_so, 6

	.type	renditions,@object      # @renditions
	.globl	renditions
	.align	4
renditions:
	.long	65529                   # 0xfff9
	.long	65531                   # 0xfffb
	.long	65533                   # 0xfffd
	.size	renditions, 12

	.type	mchar_null,@object      # @mchar_null
	.comm	mchar_null,6,1
	.type	state_t_string,@object  # @state_t_string
	.align	16
state_t_string:
	.quad	.L.str.3
	.quad	.L.str.4
	.quad	.L.str.5
	.quad	.L.str.6
	.quad	.L.str.7
	.quad	.L.str.8
	.quad	.L.str.9
	.quad	.L.str.10
	.quad	.L.str.11
	.size	state_t_string, 72

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"-%s"
	.size	.L.str, 4

	.type	string_t_string,@object # @string_t_string
	.data
	.align	16
string_t_string:
	.quad	.L.str.12
	.quad	.L.str.13
	.quad	.L.str.14
	.quad	.L.str.15
	.quad	.L.str.16
	.quad	.L.str.17
	.quad	.L.str.18
	.quad	.L.str.19
	.size	string_t_string, 64

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"BBBB02"
	.size	.L.str.1, 7

	.type	curr,@object            # @curr
	.local	curr
	.comm	curr,8,8
	.type	cols,@object            # @cols
	.local	cols
	.comm	cols,4,4
	.type	rows,@object            # @rows
	.local	rows
	.comm	rows,4,4
	.type	mline_old,@object       # @mline_old
	.comm	mline_old,40,8
	.type	blank,@object           # @blank
	.comm	blank,8,8
	.type	null,@object            # @null
	.comm	null,8,8
	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"%s"
	.size	.L.str.2, 3

	.type	Z0width,@object         # @Z0width
	.comm	Z0width,4,4
	.type	Z1width,@object         # @Z1width
	.comm	Z1width,4,4
	.type	mline_blank,@object     # @mline_blank
	.comm	mline_blank,40,8
	.type	mline_null,@object      # @mline_null
	.comm	mline_null,40,8
	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"LIT"
	.size	.L.str.3, 4

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"ESC"
	.size	.L.str.4, 4

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"ASTR"
	.size	.L.str.5, 5

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"STRESC"
	.size	.L.str.6, 7

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"CSI"
	.size	.L.str.7, 4

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"PRIN"
	.size	.L.str.8, 5

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"PRINESC"
	.size	.L.str.9, 8

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"PRINCSI"
	.size	.L.str.10, 8

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"PRIN4"
	.size	.L.str.11, 6

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"NONE"
	.size	.L.str.12, 5

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"DCS"
	.size	.L.str.13, 4

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"OSC"
	.size	.L.str.14, 4

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"APC"
	.size	.L.str.15, 4

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"PM"
	.size	.L.str.16, 3

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"AKA"
	.size	.L.str.17, 4

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"GM"
	.size	.L.str.18, 3

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"STATUS"
	.size	.L.str.19, 7

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Error writing logfile"
	.size	.L.str.20, 22

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"\033[?%d;%dc"
	.size	.L.str.21, 10

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"\033[1t"
	.size	.L.str.22, 5

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"\033[2t"
	.size	.L.str.23, 5

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"\033]l"
	.size	.L.str.24, 4

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"\033\\"
	.size	.L.str.25, 3

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"\033[0n"
	.size	.L.str.26, 5

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"\033[%d;%dR"
	.size	.L.str.27, 9

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"\033[%d;1;1;112;112;1;0x"
	.size	.L.str.28, 22

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"\033[>%d;%d;0c"
	.size	.L.str.29, 12

	.type	rendlist,@object        # @rendlist
	.data
	.align	16
rendlist:
	.ascii	"\300\004\001\020\002 \000\b\000\000\000\000\000\000\000\000\000\000\000\000\000\000\352\357\375\337\000\367"
	.size	rendlist, 28

	.type	.L.str.30,@object       # @.str.30
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.30:
	.asciz	":window:"
	.size	.L.str.30, 9

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"printing aborted"
	.size	.L.str.31, 17

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Warning: no space for attr - turned off"
	.size	.L.str.32, 40

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Warning: no space for font - turned off"
	.size	.L.str.33, 40

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Warning: no space for color - turned off"
	.size	.L.str.34, 41


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
