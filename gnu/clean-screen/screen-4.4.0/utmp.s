	.text
	.file	"utmp.bc"
	.globl	SlotToggle
	.align	16, 0x90
	.type	SlotToggle,@function
SlotToggle:                             # @SlotToggle
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
	movl	%edi, -4(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB0_2
.LBB0_2:                                # %do.end
	movq	fore, %rax
	cmpl	$0, 8(%rax)
	je	.LBB0_4
# BB#3:                                 # %if.then
	xorl	%edi, %edi
	movabsq	$.L.str, %rsi
	movb	$0, %al
	callq	Msg
	jmp	.LBB0_29
.LBB0_4:                                # %if.end
	cmpl	$0, -4(%rbp)
	je	.LBB0_15
# BB#5:                                 # %if.then.1
	jmp	.LBB0_6
.LBB0_6:                                # %do.body.2
	jmp	.LBB0_7
.LBB0_7:                                # %do.end.3
	movq	$-1, %rax
	movq	fore, %rcx
	cmpq	%rax, 11536(%rcx)
	je	.LBB0_9
# BB#8:                                 # %lor.lhs.false
	movq	fore, %rax
	cmpq	$0, 11536(%rax)
	jne	.LBB0_13
.LBB0_9:                                # %if.then.7
	movq	fore, %rdi
	callq	SetUtmp
	cmpl	$0, %eax
	jne	.LBB0_11
# BB#10:                                # %if.then.9
	xorl	%edi, %edi
	movabsq	$.L.str.1, %rsi
	movb	$0, %al
	callq	Msg
	jmp	.LBB0_12
.LBB0_11:                               # %if.else
	xorl	%edi, %edi
	movabsq	$.L.str.2, %rsi
	movb	$0, %al
	callq	Msg
.LBB0_12:                               # %if.end.10
	movl	$102, %esi
	movq	fore, %rdi
	callq	WindowChanged
	jmp	.LBB0_14
.LBB0_13:                               # %if.else.11
	xorl	%edi, %edi
	movabsq	$.L.str.3, %rsi
	movb	$0, %al
	callq	Msg
.LBB0_14:                               # %if.end.12
	jmp	.LBB0_29
.LBB0_15:                               # %if.else.13
	jmp	.LBB0_16
.LBB0_16:                               # %do.body.14
	jmp	.LBB0_17
.LBB0_17:                               # %do.end.15
	movq	$-1, %rax
	movq	fore, %rcx
	cmpq	%rax, 11536(%rcx)
	jne	.LBB0_19
# BB#18:                                # %if.then.18
	xorl	%edi, %edi
	movabsq	$.L.str.4, %rsi
	movb	$0, %al
	callq	Msg
	jmp	.LBB0_28
.LBB0_19:                               # %if.else.19
	movq	fore, %rax
	cmpq	$0, 11536(%rax)
	jne	.LBB0_23
# BB#20:                                # %if.then.22
	jmp	.LBB0_21
.LBB0_21:                               # %do.body.23
	jmp	.LBB0_22
.LBB0_22:                               # %do.end.24
	xorl	%edi, %edi
	movabsq	$.L.str.5, %rsi
	movb	$0, %al
	callq	Msg
	movq	$-1, %rsi
	movq	fore, %rcx
	movq	%rsi, 11536(%rcx)
	jmp	.LBB0_27
.LBB0_23:                               # %if.else.26
	movq	fore, %rdi
	callq	RemoveUtmp
	movq	$-1, %rdi
	movq	fore, %rcx
	cmpq	%rdi, 11536(%rcx)
	movl	%eax, -8(%rbp)          # 4-byte Spill
	je	.LBB0_25
# BB#24:                                # %if.then.30
	xorl	%edi, %edi
	movabsq	$.L.str.6, %rsi
	movb	$0, %al
	callq	Msg
	jmp	.LBB0_26
.LBB0_25:                               # %if.else.31
	xorl	%edi, %edi
	movabsq	$.L.str.7, %rsi
	movb	$0, %al
	callq	Msg
.LBB0_26:                               # %if.end.32
	movl	$102, %esi
	movq	fore, %rdi
	callq	WindowChanged
.LBB0_27:                               # %if.end.33
	jmp	.LBB0_28
.LBB0_28:                               # %if.end.34
	jmp	.LBB0_29
.LBB0_29:                               # %if.end.35
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	SlotToggle, .Lfunc_end0-SlotToggle
	.cfi_endproc

	.globl	SetUtmp
	.align	16, 0x90
	.type	SetUtmp,@function
SetUtmp:                                # @SetUtmp
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
	subq	$784, %rsp              # imm = 0x310
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	$0, 11536(%rdi)
	cmpl	$0, utmpok
	je	.LBB1_2
# BB#1:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	cmpl	$0, 8(%rax)
	je	.LBB1_3
.LBB1_2:                                # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB1_46
.LBB1_3:                                # %if.end
	movq	-16(%rbp), %rax
	addq	$11928, %rax            # imm = 0x2E98
	movq	%rax, %rdi
	callq	TtyNameSlot
	movq	%rax, -24(%rbp)
	cmpq	$0, %rax
	jne	.LBB1_7
# BB#4:                                 # %if.then.2
	jmp	.LBB1_5
.LBB1_5:                                # %do.body
	jmp	.LBB1_6
.LBB1_6:                                # %do.end
	movl	$-1, -4(%rbp)
	jmp	.LBB1_46
.LBB1_7:                                # %if.end.3
	jmp	.LBB1_8
.LBB1_8:                                # %do.body.4
	jmp	.LBB1_9
.LBB1_9:                                # %do.end.5
	movl	$384, %eax              # imm = 0x180
	movl	%eax, %ecx
	leaq	-408(%rbp), %rdx
	xorl	%esi, %esi
	movq	%rdx, %rdi
	movq	%rdx, -712(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	%rcx, -720(%rbp)        # 8-byte Spill
	callq	memset
	movq	-16(%rbp), %rcx
	addq	$11544, %rcx            # imm = 0x2D18
	movq	-712(%rbp), %rdx        # 8-byte Reload
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	-720(%rbp), %rdx        # 8-byte Reload
	callq	bcmp
	movl	%eax, -412(%rbp)
	cmpl	$0, %eax
	je	.LBB1_11
# BB#10:                                # %if.then.8
	movl	$384, %eax              # imm = 0x180
	movl	%eax, %edx
	leaq	-408(%rbp), %rcx
	movq	-16(%rbp), %rsi
	addq	$11544, %rsi            # imm = 0x2D18
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	bcopy
.LBB1_11:                               # %if.end.10
	cmpl	$0, -412(%rbp)
	jne	.LBB1_13
# BB#12:                                # %if.then.12
	movq	-16(%rbp), %rax
	addq	$11928, %rax            # imm = 0x2E98
	movq	%rax, %rdi
	callq	stripdev
	leaq	-408(%rbp), %rdi
	movq	LoginName, %rdx
	movq	-16(%rbp), %rcx
	movl	10992(%rcx), %ecx
	movq	%rax, %rsi
	callq	makeuser
.LBB1_13:                               # %if.end.16
	movb	$0, -448(%rbp)
	cmpq	$0, display
	je	.LBB1_38
# BB#14:                                # %if.then.18
	movl	$256, %eax              # imm = 0x100
	movl	%eax, %edx
	leaq	-704(%rbp), %rdi
	movq	display, %rcx
	addq	$7424, %rcx             # imm = 0x1D00
	addq	$76, %rcx
	movq	%rcx, %rsi
	callq	strncpy
	movq	display, %rcx
	cmpq	$0, 7416(%rcx)
	movq	%rax, -728(%rbp)        # 8-byte Spill
	je	.LBB1_36
# BB#15:                                # %land.lhs.true
	movq	$-1, %rax
	movq	display, %rcx
	cmpq	%rax, 7416(%rcx)
	je	.LBB1_36
# BB#16:                                # %land.lhs.true.25
	movsbl	-704(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB1_36
# BB#17:                                # %if.then.29
	leaq	-704(%rbp), %rax
	movq	%rax, -424(%rbp)
.LBB1_18:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-424(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB1_25
# BB#19:                                # %for.body
                                        #   in Loop: Header=BB1_18 Depth=1
	movq	-424(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$48, %ecx
	jl	.LBB1_21
# BB#20:                                # %lor.lhs.false.35
                                        #   in Loop: Header=BB1_18 Depth=1
	movq	-424(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$57, %ecx
	jle	.LBB1_23
.LBB1_21:                               # %land.lhs.true.39
                                        #   in Loop: Header=BB1_18 Depth=1
	movq	-424(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$46, %ecx
	je	.LBB1_23
# BB#22:                                # %if.then.43
	jmp	.LBB1_25
.LBB1_23:                               # %if.end.44
                                        #   in Loop: Header=BB1_18 Depth=1
	jmp	.LBB1_24
.LBB1_24:                               # %for.inc
                                        #   in Loop: Header=BB1_18 Depth=1
	movq	-424(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -424(%rbp)
	jmp	.LBB1_18
.LBB1_25:                               # %for.end
	movq	-424(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB1_35
# BB#26:                                # %if.then.46
	leaq	-704(%rbp), %rax
	movq	%rax, -424(%rbp)
.LBB1_27:                               # %for.cond.48
                                        # =>This Inner Loop Header: Depth=1
	movq	-424(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB1_34
# BB#28:                                # %for.body.50
                                        #   in Loop: Header=BB1_27 Depth=1
	movq	-424(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$46, %ecx
	je	.LBB1_31
# BB#29:                                # %lor.lhs.false.54
                                        #   in Loop: Header=BB1_27 Depth=1
	movq	-424(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$58, %ecx
	jne	.LBB1_32
# BB#30:                                # %land.lhs.true.58
                                        #   in Loop: Header=BB1_27 Depth=1
	leaq	-704(%rbp), %rax
	movq	-424(%rbp), %rcx
	cmpq	%rax, %rcx
	je	.LBB1_32
.LBB1_31:                               # %if.then.62
	movq	-424(%rbp), %rax
	movb	$0, (%rax)
	jmp	.LBB1_34
.LBB1_32:                               # %if.end.63
                                        #   in Loop: Header=BB1_27 Depth=1
	jmp	.LBB1_33
.LBB1_33:                               # %for.inc.64
                                        #   in Loop: Header=BB1_27 Depth=1
	movq	-424(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -424(%rbp)
	jmp	.LBB1_27
.LBB1_34:                               # %for.end.66
	jmp	.LBB1_35
.LBB1_35:                               # %if.end.67
	jmp	.LBB1_37
.LBB1_36:                               # %if.else
	leaq	-704(%rbp), %rax
	addq	$1, %rax
	movq	display, %rcx
	addq	$804, %rcx              # imm = 0x324
	movq	%rcx, %rdi
	movq	%rax, -736(%rbp)        # 8-byte Spill
	callq	stripdev
	movl	$255, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	-736(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	strncpy
	movb	$58, -704(%rbp)
	movq	%rax, -744(%rbp)        # 8-byte Spill
.LBB1_37:                               # %if.end.73
	jmp	.LBB1_39
.LBB1_38:                               # %if.else.74
	movabsq	$.L.str.10, %rsi
	movl	$256, %eax              # imm = 0x100
	movl	%eax, %edx
	leaq	-704(%rbp), %rdi
	callq	strncpy
	movq	%rax, -752(%rbp)        # 8-byte Spill
.LBB1_39:                               # %if.end.77
	movabsq	$.L.str.11, %rsi
	leaq	-704(%rbp), %rax
	movq	%rax, %rdi
	movq	%rsi, -760(%rbp)        # 8-byte Spill
	movq	%rax, -768(%rbp)        # 8-byte Spill
	callq	strlen
	movq	-768(%rbp), %rsi        # 8-byte Reload
	addq	%rax, %rsi
	movq	-16(%rbp), %rax
	movl	192(%rax), %edx
	movq	%rsi, %rdi
	movq	-760(%rbp), %rsi        # 8-byte Reload
	movb	$0, %al
	callq	sprintf
	movl	%eax, -772(%rbp)        # 4-byte Spill
# BB#40:                                # %do.body.83
	jmp	.LBB1_41
.LBB1_41:                               # %do.end.84
	movl	$256, %eax              # imm = 0x100
	movl	%eax, %edx
	leaq	-704(%rbp), %rsi
	leaq	-408(%rbp), %rcx
	addq	$76, %rcx
	movq	%rcx, %rdi
	callq	strncpy
	leaq	-408(%rbp), %rsi
	leaq	-704(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	%rax, -784(%rbp)        # 8-byte Spill
	callq	pututslot
	cmpl	$0, %eax
	jne	.LBB1_43
# BB#42:                                # %if.then.93
	callq	__errno_location
	movabsq	$.L.str.9, %rsi
	movabsq	$UtmpName, %rdx
	movl	(%rax), %edi
	movb	$0, %al
	callq	Msg
	movl	$-1, -4(%rbp)
	jmp	.LBB1_46
.LBB1_43:                               # %if.end.95
	jmp	.LBB1_44
.LBB1_44:                               # %do.body.96
	jmp	.LBB1_45
.LBB1_45:                               # %do.end.97
	movl	$384, %eax              # imm = 0x180
	movl	%eax, %edx
	leaq	-408(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rsi, 11536(%rdi)
	movq	-16(%rbp), %rsi
	addq	$11544, %rsi            # imm = 0x2D18
	movq	%rcx, %rdi
	callq	bcopy
	movl	$0, -4(%rbp)
.LBB1_46:                               # %return
	movl	-4(%rbp), %eax
	addq	$784, %rsp              # imm = 0x310
	popq	%rbp
	retq
.Lfunc_end1:
	.size	SetUtmp, .Lfunc_end1-SetUtmp
	.cfi_endproc

	.globl	RemoveUtmp
	.align	16, 0x90
	.type	RemoveUtmp,@function
RemoveUtmp:                             # @RemoveUtmp
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
	subq	$432, %rsp              # imm = 0x1B0
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	11536(%rdi), %rdi
	movq	%rdi, -416(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB2_2
.LBB2_2:                                # %do.end
	cmpl	$0, utmpok
	jne	.LBB2_4
# BB#3:                                 # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB2_14
.LBB2_4:                                # %if.end
	cmpq	$0, -416(%rbp)
	je	.LBB2_6
# BB#5:                                 # %lor.lhs.false
	movq	$-1, %rax
	cmpq	%rax, -416(%rbp)
	jne	.LBB2_7
.LBB2_6:                                # %if.then.2
	movq	$-1, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 11536(%rcx)
	movl	$0, -4(%rbp)
	jmp	.LBB2_14
.LBB2_7:                                # %if.end.4
	xorl	%esi, %esi
	movl	$384, %eax              # imm = 0x180
	movl	%eax, %edx
	leaq	-400(%rbp), %rcx
	movq	%rcx, %rdi
	callq	memset
	movq	-416(%rbp), %rdi
	callq	getutslot
	movq	%rax, -408(%rbp)
	cmpq	$0, %rax
	jne	.LBB2_9
# BB#8:                                 # %if.then.6
	xorl	%edi, %edi
	movabsq	$.L.str.12, %rsi
	movb	$0, %al
	callq	Msg
	movl	$-1, -4(%rbp)
	jmp	.LBB2_14
.LBB2_9:                                # %if.end.7
	movl	$384, %eax              # imm = 0x180
	movl	%eax, %edx
	movq	-408(%rbp), %rcx
	movq	-16(%rbp), %rsi
	addq	$11544, %rsi            # imm = 0x2D18
	movq	%rcx, %rdi
	callq	bcopy
	leaq	-400(%rbp), %rcx
	movl	$384, %eax              # imm = 0x180
	movl	%eax, %edx
	movq	-408(%rbp), %rsi
	movq	%rcx, %rdi
	movq	%rcx, -424(%rbp)        # 8-byte Spill
	callq	memcpy
	movq	-424(%rbp), %rdi        # 8-byte Reload
	callq	makedead
	leaq	-400(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-416(%rbp), %rdi
	movq	-16(%rbp), %rcx
	callq	pututslot
	cmpl	$0, %eax
	jne	.LBB2_11
# BB#10:                                # %if.then.10
	callq	__errno_location
	movabsq	$.L.str.9, %rsi
	movabsq	$UtmpName, %rdx
	movl	(%rax), %edi
	movb	$0, %al
	callq	Msg
	movl	$-1, -4(%rbp)
	jmp	.LBB2_14
.LBB2_11:                               # %if.end.12
	jmp	.LBB2_12
.LBB2_12:                               # %do.body.13
	jmp	.LBB2_13
.LBB2_13:                               # %do.end.14
	movq	$-1, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 11536(%rcx)
	movl	$0, -4(%rbp)
.LBB2_14:                               # %return
	movl	-4(%rbp), %eax
	addq	$432, %rsp              # imm = 0x1B0
	popq	%rbp
	retq
.Lfunc_end2:
	.size	RemoveUtmp, .Lfunc_end2-RemoveUtmp
	.cfi_endproc

	.globl	InitUtmp
	.align	16, 0x90
	.type	InitUtmp,@function
InitUtmp:                               # @InitUtmp
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
	jmp	.LBB3_1
.LBB3_1:                                # %do.body
	jmp	.LBB3_2
.LBB3_2:                                # %do.end
	movabsq	$UtmpName, %rdi
	movl	$2, %esi
	movb	$0, %al
	callq	open
	movl	%eax, utmpfd
	cmpl	$-1, %eax
	jne	.LBB3_8
# BB#3:                                 # %if.then
	callq	__errno_location
	cmpl	$13, (%rax)
	je	.LBB3_5
# BB#4:                                 # %if.then.3
	callq	__errno_location
	movabsq	$.L.str.8, %rsi
	movabsq	$UtmpName, %rdx
	movl	(%rax), %edi
	movb	$0, %al
	callq	Msg
.LBB3_5:                                # %if.end
	jmp	.LBB3_6
.LBB3_6:                                # %do.body.5
	jmp	.LBB3_7
.LBB3_7:                                # %do.end.6
	movl	$0, utmpok
	jmp	.LBB3_9
.LBB3_8:                                # %if.end.7
	movl	utmpfd, %edi
	callq	close
	movl	$-1, utmpfd
	movl	$1, utmpok
	movl	%eax, -4(%rbp)          # 4-byte Spill
.LBB3_9:                                # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	InitUtmp, .Lfunc_end3-InitUtmp
	.cfi_endproc

	.globl	RemoveLoginSlot
	.align	16, 0x90
	.type	RemoveLoginSlot,@function
RemoveLoginSlot:                        # @RemoveLoginSlot
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
	subq	$576, %rsp              # imm = 0x240
# BB#1:                                 # %do.body
	jmp	.LBB4_2
.LBB4_2:                                # %do.end
	jmp	.LBB4_3
.LBB4_3:                                # %do.body.1
	jmp	.LBB4_4
.LBB4_4:                                # %do.end.2
	movq	display, %rax
	addq	$804, %rax              # imm = 0x324
	movq	%rax, %rdi
	callq	TtyNameSlot
	movq	display, %rdi
	movq	%rax, 7416(%rdi)
	movq	display, %rax
	cmpq	$0, 7416(%rax)
	je	.LBB4_6
# BB#5:                                 # %lor.lhs.false
	movq	$-1, %rax
	movq	display, %rcx
	cmpq	%rax, 7416(%rcx)
	jne	.LBB4_7
.LBB4_6:                                # %if.then
	jmp	.LBB4_31
.LBB4_7:                                # %if.end
	cmpl	$0, utmpok
	jne	.LBB4_11
# BB#8:                                 # %if.then.6
	movq	display, %rax
	movq	$0, 7416(%rax)
# BB#9:                                 # %do.body.8
	jmp	.LBB4_10
.LBB4_10:                               # %do.end.9
	jmp	.LBB4_19
.LBB4_11:                               # %if.else
	movq	display, %rax
	movq	7416(%rax), %rdi
	callq	getutslot
	movq	%rax, -392(%rbp)
	cmpq	$0, %rax
	jne	.LBB4_15
# BB#12:                                # %if.then.13
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.14
	jmp	.LBB4_14
.LBB4_14:                               # %do.end.15
	movq	display, %rax
	movq	$0, 7416(%rax)
	jmp	.LBB4_18
.LBB4_15:                               # %if.else.17
	leaq	-384(%rbp), %rax
	movl	$384, %ecx              # imm = 0x180
	movl	%ecx, %edx
	movq	display, %rsi
	addq	$7424, %rsi             # imm = 0x1D00
	movq	-392(%rbp), %rdi
	movq	%rdi, -552(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-552(%rbp), %rsi        # 8-byte Reload
	movq	%rdx, -560(%rbp)        # 8-byte Spill
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	memcpy
	movq	-392(%rbp), %rax
	movq	-568(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, %rdi
	movq	%rax, %rsi
	movq	-560(%rbp), %rdx        # 8-byte Reload
	callq	memcpy
	movq	-568(%rbp), %rdi        # 8-byte Reload
	callq	makedead
	leaq	-384(%rbp), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movq	display, %rdx
	movq	7416(%rdx), %rdi
	movq	%rax, %rdx
	movq	%rax, %rcx
	callq	pututslot
	cmpl	$0, %eax
	jne	.LBB4_17
# BB#16:                                # %if.then.21
	movq	display, %rax
	movq	$0, 7416(%rax)
.LBB4_17:                               # %if.end.23
	jmp	.LBB4_18
.LBB4_18:                               # %if.end.24
	jmp	.LBB4_19
.LBB4_19:                               # %if.end.25
	jmp	.LBB4_20
.LBB4_20:                               # %do.body.26
	jmp	.LBB4_21
.LBB4_21:                               # %do.end.27
	movq	display, %rax
	cmpq	$0, 7416(%rax)
	jne	.LBB4_31
# BB#22:                                # %if.then.30
	jmp	.LBB4_23
.LBB4_23:                               # %do.body.31
	jmp	.LBB4_24
.LBB4_24:                               # %do.end.32
	movq	display, %rax
	movl	$0, 7808(%rax)
	movq	display, %rax
	movl	4900(%rax), %edi
	callq	ttyname
	movq	%rax, -544(%rbp)
	cmpq	$0, %rax
	je	.LBB4_30
# BB#25:                                # %land.lhs.true
	leaq	-536(%rbp), %rsi
	movq	-544(%rbp), %rdi
	callq	stat
	cmpl	$0, %eax
	jne	.LBB4_30
# BB#26:                                # %land.lhs.true.37
	movl	-508(%rbp), %eax
	cmpl	real_uid, %eax
	jne	.LBB4_30
# BB#27:                                # %land.lhs.true.39
	movq	-544(%rbp), %rdi
	callq	CheckTtyname
	cmpl	$0, %eax
	jne	.LBB4_30
# BB#28:                                # %land.lhs.true.42
	movl	-512(%rbp), %eax
	andl	$511, %eax              # imm = 0x1FF
	cmpl	$438, %eax              # imm = 0x1B6
	je	.LBB4_30
# BB#29:                                # %if.then.44
	movl	-512(%rbp), %eax
	andl	$511, %eax              # imm = 0x1FF
	movq	display, %rcx
	movl	%eax, 7808(%rcx)
	movq	display, %rcx
	addq	$804, %rcx              # imm = 0x324
	movl	-512(%rbp), %eax
	andl	$384, %eax              # imm = 0x180
	movq	%rcx, %rdi
	movl	%eax, %esi
	callq	chmod
	movl	%eax, -572(%rbp)        # 4-byte Spill
.LBB4_30:                               # %if.end.53
	jmp	.LBB4_31
.LBB4_31:                               # %if.end.54
	addq	$576, %rsp              # imm = 0x240
	popq	%rbp
	retq
.Lfunc_end4:
	.size	RemoveLoginSlot, .Lfunc_end4-RemoveLoginSlot
	.cfi_endproc

	.align	16, 0x90
	.type	TtyNameSlot,@function
TtyNameSlot:                            # @TtyNameSlot
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	stripdev
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	TtyNameSlot, .Lfunc_end5-TtyNameSlot
	.cfi_endproc

	.align	16, 0x90
	.type	getutslot,@function
getutslot:                              # @getutslot
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
	subq	$416, %rsp              # imm = 0x1A0
	movl	$32, %eax
	movl	%eax, %edx
	leaq	-392(%rbp), %rcx
	xorl	%esi, %esi
	movl	$384, %eax              # imm = 0x180
	movl	%eax, %r8d
	movq	%rdi, -8(%rbp)
	movq	%rcx, %rdi
	movq	%rdx, -400(%rbp)        # 8-byte Spill
	movq	%r8, %rdx
	movq	%rcx, -408(%rbp)        # 8-byte Spill
	callq	memset
	movq	-408(%rbp), %rcx        # 8-byte Reload
	addq	$8, %rcx
	movq	-8(%rbp), %rsi
	movq	%rcx, %rdi
	movq	-400(%rbp), %rdx        # 8-byte Reload
	callq	strncpy
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	setutent
	leaq	-392(%rbp), %rdi
	callq	getutline
	addq	$416, %rsp              # imm = 0x1A0
	popq	%rbp
	retq
.Lfunc_end6:
	.size	getutslot, .Lfunc_end6-getutslot
	.cfi_endproc

	.align	16, 0x90
	.type	makedead,@function
makedead:                               # @makedead
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movw	$8, (%rdi)
	movq	-8(%rbp), %rdi
	movw	$0, 332(%rdi)
	movq	-8(%rbp), %rdi
	movw	$0, 334(%rdi)
	movq	-8(%rbp), %rdi
	movb	$0, 44(%rdi)
	popq	%rbp
	retq
.Lfunc_end7:
	.size	makedead, .Lfunc_end7-makedead
	.cfi_endproc

	.align	16, 0x90
	.type	pututslot,@function
pututslot:                              # @pututslot
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	callq	setutent
	movq	-16(%rbp), %rdi
	callq	xpututline
	cmpq	$0, %rax
	setne	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	pututslot, .Lfunc_end8-pututslot
	.cfi_endproc

	.globl	RestoreLoginSlot
	.align	16, 0x90
	.type	RestoreLoginSlot,@function
RestoreLoginSlot:                       # @RestoreLoginSlot
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
# BB#1:                                 # %do.body
	jmp	.LBB9_2
.LBB9_2:                                # %do.end
	jmp	.LBB9_3
.LBB9_3:                                # %do.body.1
	jmp	.LBB9_4
.LBB9_4:                                # %do.end.2
	cmpl	$0, utmpok
	je	.LBB9_12
# BB#5:                                 # %land.lhs.true
	movq	display, %rax
	cmpq	$0, 7416(%rax)
	je	.LBB9_12
# BB#6:                                 # %land.lhs.true.3
	movq	$-1, %rax
	movq	display, %rcx
	cmpq	%rax, 7416(%rcx)
	je	.LBB9_12
# BB#7:                                 # %if.then
	jmp	.LBB9_8
.LBB9_8:                                # %do.body.6
	jmp	.LBB9_9
.LBB9_9:                                # %do.end.7
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	display, %rdx
	movq	7416(%rdx), %rdi
	movq	display, %rdx
	addq	$7424, %rdx             # imm = 0x1D00
	movq	display, %rsi
	addq	$7424, %rsi             # imm = 0x1D00
	addq	$76, %rsi
	movq	%rsi, -16(%rbp)         # 8-byte Spill
	movq	%rdx, %rsi
	movq	-16(%rbp), %rdx         # 8-byte Reload
	callq	pututslot
	cmpl	$0, %eax
	jne	.LBB9_11
# BB#10:                                # %if.then.11
	callq	__errno_location
	movabsq	$.L.str.9, %rsi
	movabsq	$UtmpName, %rdx
	movl	(%rax), %edi
	movb	$0, %al
	callq	Msg
.LBB9_11:                               # %if.end
	jmp	.LBB9_12
.LBB9_12:                               # %if.end.13
	movq	display, %rax
	movq	$0, 7416(%rax)
	movq	display, %rax
	cmpl	$0, 7808(%rax)
	je	.LBB9_16
# BB#13:                                # %land.lhs.true.16
	movq	display, %rax
	movl	4900(%rax), %edi
	callq	ttyname
	movq	%rax, -8(%rbp)
	cmpq	$0, %rax
	je	.LBB9_16
# BB#14:                                # %land.lhs.true.19
	movq	-8(%rbp), %rdi
	callq	CheckTtyname
	cmpl	$0, %eax
	jne	.LBB9_16
# BB#15:                                # %if.then.22
	movq	-8(%rbp), %rdi
	movq	display, %rax
	movl	7808(%rax), %esi
	callq	chmod
	movl	%eax, -20(%rbp)         # 4-byte Spill
.LBB9_16:                               # %if.end.25
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	RestoreLoginSlot, .Lfunc_end9-RestoreLoginSlot
	.cfi_endproc

	.align	16, 0x90
	.type	makeuser,@function
makeuser:                               # @makeuser
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
	subq	$96, %rsp
	movl	$32, %eax
	movl	%eax, %r8d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rdx
	movw	$7, (%rdx)
	movq	-8(%rbp), %rdx
	addq	$44, %rdx
	movq	-24(%rbp), %rsi
	movq	%rdx, %rdi
	movq	%r8, %rdx
	callq	strncpy
	movl	$4, %ecx
	movl	%ecx, %edx
	movq	-8(%rbp), %rsi
	addq	$40, %rsi
	movq	-16(%rbp), %rdi
	addq	$3, %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	strncpy
	movl	$32, %ecx
	movl	%ecx, %edx
	movq	-8(%rbp), %rsi
	addq	$8, %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	strncpy
	leaq	-40(%rbp), %rdi
	movl	-28(%rbp), %ecx
	movq	-8(%rbp), %rdx
	movl	%ecx, 4(%rdx)
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	time
	movq	-40(%rbp), %rdx
	movl	%edx, %ecx
	movq	-8(%rbp), %rdx
	movl	%ecx, 340(%rdx)
	movq	%rax, -88(%rbp)         # 8-byte Spill
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	makeuser, .Lfunc_end10-makeuser
	.cfi_endproc

	.align	16, 0x90
	.type	xpututline,@function
xpututline:                             # @xpututline
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	pututline
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	setutent
	movq	-16(%rbp), %rdi
	callq	getutline
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB11_5
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movswl	(%rax), %ecx
	cmpl	$8, %ecx
	jne	.LBB11_3
# BB#2:                                 # %cond.true
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB11_4
.LBB11_3:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	jmp	.LBB11_4
.LBB11_4:                               # %cond.end
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, -8(%rbp)
	jmp	.LBB11_9
.LBB11_5:                               # %if.end
	movq	-16(%rbp), %rax
	movswl	(%rax), %ecx
	movq	-24(%rbp), %rax
	movswl	(%rax), %edx
	cmpl	%edx, %ecx
	jne	.LBB11_7
# BB#6:                                 # %cond.true.10
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB11_8
.LBB11_7:                               # %cond.false.11
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB11_8
.LBB11_8:                               # %cond.end.12
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, -8(%rbp)
.LBB11_9:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	xpututline, .Lfunc_end11-xpututline
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Can only work with normal windows.\n"
	.size	.L.str, 36

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"This window is now logged in."
	.size	.L.str.1, 30

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"This window should now be logged in."
	.size	.L.str.2, 37

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"This window is already logged in."
	.size	.L.str.3, 34

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"This window is already logged out\n"
	.size	.L.str.4, 35

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"This window is not logged in."
	.size	.L.str.5, 30

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"What? Cannot remove Utmp slot?"
	.size	.L.str.6, 31

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"This window is no longer logged in."
	.size	.L.str.7, 36

	.type	UtmpName,@object        # @UtmpName
	.data
UtmpName:
	.asciz	"/var/run/utmp"
	.size	UtmpName, 14

	.type	utmpfd,@object          # @utmpfd
	.align	4
utmpfd:
	.long	4294967295              # 0xffffffff
	.size	utmpfd, 4

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"%s"
	.size	.L.str.8, 3

	.type	utmpok,@object          # @utmpok
	.local	utmpok
	.comm	utmpok,4,4
	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Could not write %s"
	.size	.L.str.9, 19

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"local"
	.size	.L.str.10, 6

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	":S.%d"
	.size	.L.str.11, 6

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Utmp slot not found -> not removed"
	.size	.L.str.12, 35


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
