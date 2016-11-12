	.text
	.file	"list_window.bc"
	.globl	display_windows
	.align	16, 0x90
	.type	display_windows,@function
display_windows:                        # @display_windows
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
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	flayer, %rdx
	cmpl	$10, 8(%rdx)
	jl	.LBB0_2
# BB#1:                                 # %lor.lhs.false
	movq	flayer, %rax
	cmpl	$6, 12(%rax)
	jge	.LBB0_3
.LBB0_2:                                # %if.then
	xorl	%edi, %edi
	movabsq	$.L.str, %rsi
	movb	$0, %al
	callq	LMsg
	jmp	.LBB0_33
.LBB0_3:                                # %if.end
	cmpq	$0, -16(%rbp)
	je	.LBB0_5
# BB#4:                                 # %if.then.2
	movl	$0, -4(%rbp)
.LBB0_5:                                # %if.end.3
	cmpl	$0, -4(%rbp)
	je	.LBB0_18
# BB#6:                                 # %if.then.5
	jmp	.LBB0_7
.LBB0_7:                                # %do.body
	jmp	.LBB0_8
.LBB0_8:                                # %do.end
	cmpq	$0, display
	jne	.LBB0_10
# BB#9:                                 # %if.then.7
	xorl	%edi, %edi
	movabsq	$.L.str.1, %rsi
	movb	$0, %al
	callq	LMsg
	jmp	.LBB0_33
.LBB0_10:                               # %if.end.8
	movq	display, %rax
	movq	376(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB0_14
# BB#11:                                # %if.then.10
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	SetForeWindow
	movq	-24(%rbp), %rdi
	cmpq	$0, 9528(%rdi)
	je	.LBB0_13
# BB#12:                                # %if.then.12
	movq	-24(%rbp), %rax
	movq	9528(%rax), %rax
	movq	display, %rcx
	movq	%rax, 376(%rcx)
	movq	-24(%rbp), %rax
	movq	9528(%rax), %rax
	movq	flayer, %rcx
	movq	%rax, 40(%rcx)
.LBB0_13:                               # %if.end.16
	xorl	%edi, %edi
	callq	Activate
.LBB0_14:                               # %if.end.17
	movq	flayer, %rax
	cmpl	$10, 8(%rax)
	jl	.LBB0_16
# BB#15:                                # %lor.lhs.false.20
	movq	flayer, %rax
	cmpl	$6, 12(%rax)
	jge	.LBB0_17
.LBB0_16:                               # %if.then.23
	xorl	%edi, %edi
	movabsq	$.L.str, %rsi
	movb	$0, %al
	callq	LMsg
	jmp	.LBB0_33
.LBB0_17:                               # %if.end.24
	jmp	.LBB0_19
.LBB0_18:                               # %if.else
	movq	flayer, %rax
	movq	56(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB0_19:                               # %if.end.26
	cmpq	$0, -16(%rbp)
	jne	.LBB0_22
# BB#20:                                # %land.lhs.true
	cmpq	$0, -24(%rbp)
	je	.LBB0_22
# BB#21:                                # %if.then.29
	movq	-24(%rbp), %rax
	movq	9528(%rax), %rax
	movq	%rax, -16(%rbp)
.LBB0_22:                               # %if.end.31
	movabsq	$gl_Window, %rdi
	movabsq	$ListID, %rsi
	callq	glist_display
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB0_27
# BB#23:                                # %if.then.33
	cmpl	$0, -4(%rbp)
	je	.LBB0_26
# BB#24:                                # %land.lhs.true.35
	cmpq	$0, -24(%rbp)
	je	.LBB0_26
# BB#25:                                # %if.then.37
	movq	-24(%rbp), %rdi
	callq	SetForeWindow
	movl	$1, %edi
	callq	Activate
.LBB0_26:                               # %if.end.38
	jmp	.LBB0_33
.LBB0_27:                               # %if.end.39
	movl	$1, %eax
	movl	%eax, %edi
	movl	$32, %eax
	movl	%eax, %esi
	callq	calloc
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movl	-8(%rbp), %ecx
	andl	$-3, %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 8(%rax)
	movl	-8(%rbp), %ecx
	andl	$2, %ecx
	cmpl	$0, %ecx
	setne	%dl
	xorb	$-1, %dl
	xorb	$-1, %dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 16(%rax)
	movl	-4(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 12(%rax)
	movq	windows, %rax
	movq	-40(%rbp), %rsi
	movq	%rax, 24(%rsi)
.LBB0_28:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	cmpq	$0, 24(%rdx)
	movb	%cl, -41(%rbp)          # 1-byte Spill
	je	.LBB0_30
# BB#29:                                # %land.rhs
                                        #   in Loop: Header=BB0_28 Depth=1
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	9528(%rax), %rax
	cmpq	-16(%rbp), %rax
	setne	%cl
	movb	%cl, -41(%rbp)          # 1-byte Spill
.LBB0_30:                               # %land.end
                                        #   in Loop: Header=BB0_28 Depth=1
	movb	-41(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_31
	jmp	.LBB0_32
.LBB0_31:                               # %while.body
                                        #   in Loop: Header=BB0_28 Depth=1
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 24(%rcx)
	jmp	.LBB0_28
.LBB0_32:                               # %while.end
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 48(%rcx)
	movq	-32(%rbp), %rdi
	callq	gl_Window_rebuild
.LBB0_33:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	display_windows, .Lfunc_end0-display_windows
	.cfi_endproc

	.align	16, 0x90
	.type	gl_Window_rebuild,@function
gl_Window_rebuild:                      # @gl_Window_rebuild
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
	movq	%rdi, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	48(%rdi), %rdi
	movq	%rdi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rax
	cmpl	$1, 8(%rax)
	jne	.LBB1_14
# BB#2:                                 # %if.then
	movq	windows, %rax
	movq	%rax, -40(%rbp)
.LBB1_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB1_13
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	9528(%rax), %rax
	movq	-24(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB1_6
# BB#5:                                 # %if.then.2
                                        #   in Loop: Header=BB1_3 Depth=1
	jmp	.LBB1_12
.LBB1_6:                                # %if.end
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	callq	glist_add_row
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	cmpq	24(%rdx), %rax
	jne	.LBB1_8
# BB#7:                                 # %if.then.4
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 16(%rcx)
.LBB1_8:                                # %if.end.5
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	-32(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB1_11
# BB#9:                                 # %land.lhs.true
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	-24(%rbp), %rax
	cmpl	$0, 16(%rax)
	je	.LBB1_11
# BB#10:                                # %if.then.8
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gl_Window_add_group
	movq	%rax, -16(%rbp)
.LBB1_11:                               # %if.end.10
                                        #   in Loop: Header=BB1_3 Depth=1
	jmp	.LBB1_12
.LBB1_12:                               # %for.inc
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB1_3
.LBB1_13:                               # %for.end
	jmp	.LBB1_30
.LBB1_14:                               # %if.else
	movq	wtab, %rax
	movq	%rax, -48(%rbp)
	movq	windows, %rax
	movq	%rax, -56(%rbp)
.LBB1_15:                               # %for.cond.12
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -56(%rbp)
	movb	%cl, -57(%rbp)          # 1-byte Spill
	je	.LBB1_17
# BB#16:                                # %land.rhs
                                        #   in Loop: Header=BB1_15 Depth=1
	movq	-48(%rbp), %rax
	movq	wtab, %rcx
	subq	%rcx, %rax
	sarq	$3, %rax
	movslq	maxwin, %rcx
	cmpq	%rcx, %rax
	setl	%dl
	movb	%dl, -57(%rbp)          # 1-byte Spill
.LBB1_17:                               # %land.end
                                        #   in Loop: Header=BB1_15 Depth=1
	movb	-57(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB1_18
	jmp	.LBB1_29
.LBB1_18:                               # %for.body.16
                                        #   in Loop: Header=BB1_15 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, %rax
	jne	.LBB1_20
# BB#19:                                # %if.then.18
                                        #   in Loop: Header=BB1_15 Depth=1
	jmp	.LBB1_28
.LBB1_20:                               # %if.end.19
                                        #   in Loop: Header=BB1_15 Depth=1
	movq	-32(%rbp), %rax
	movq	9528(%rax), %rax
	movq	-24(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB1_22
# BB#21:                                # %if.then.24
                                        #   in Loop: Header=BB1_15 Depth=1
	jmp	.LBB1_28
.LBB1_22:                               # %if.end.25
                                        #   in Loop: Header=BB1_15 Depth=1
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	callq	glist_add_row
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	cmpq	24(%rdx), %rax
	jne	.LBB1_24
# BB#23:                                # %if.then.30
                                        #   in Loop: Header=BB1_15 Depth=1
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 16(%rcx)
.LBB1_24:                               # %if.end.32
                                        #   in Loop: Header=BB1_15 Depth=1
	movq	-32(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB1_27
# BB#25:                                # %land.lhs.true.36
                                        #   in Loop: Header=BB1_15 Depth=1
	movq	-24(%rbp), %rax
	cmpl	$0, 16(%rax)
	je	.LBB1_27
# BB#26:                                # %if.then.39
                                        #   in Loop: Header=BB1_15 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gl_Window_add_group
	movq	%rax, -16(%rbp)
.LBB1_27:                               # %if.end.41
                                        #   in Loop: Header=BB1_15 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
.LBB1_28:                               # %for.inc.43
                                        #   in Loop: Header=BB1_15 Depth=1
	movq	-48(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB1_15
.LBB1_29:                               # %for.end.44
	jmp	.LBB1_30
.LBB1_30:                               # %if.end.45
	jmp	.LBB1_31
.LBB1_31:                               # %do.end
	movq	-8(%rbp), %rdi
	callq	glist_display_all
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gl_Window_rebuild, .Lfunc_end1-gl_Window_rebuild
	.cfi_endproc

	.globl	WListUpdatecv
	.align	16, 0x90
	.type	WListUpdatecv,@function
WListUpdatecv:                          # @WListUpdatecv
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
	movabsq	$ListLf, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	64(%rsi), %rsi
	cmpq	%rax, 32(%rsi)
	je	.LBB2_2
# BB#1:                                 # %if.then
	jmp	.LBB2_5
.LBB2_2:                                # %if.end
	movabsq	$ListID, %rax
	movq	-8(%rbp), %rcx
	movq	64(%rcx), %rcx
	movq	40(%rcx), %rcx
	movq	%rcx, -24(%rbp)
	movq	-24(%rbp), %rcx
	cmpq	%rax, (%rcx)
	je	.LBB2_4
# BB#3:                                 # %if.then.3
	jmp	.LBB2_5
.LBB2_4:                                # %if.end.4
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	display, %rax
	movq	%rax, -40(%rbp)
	movq	flayer, %rax
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, flayer
	movq	-8(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	$0, 72(%rax)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	WListUpdate
	movq	-48(%rbp), %rax
	movq	%rax, flayer
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-72(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 72(%rcx)
	movq	-40(%rbp), %rax
	movq	%rax, display
.LBB2_5:                                # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	WListUpdatecv, .Lfunc_end2-WListUpdatecv
	.cfi_endproc

	.align	16, 0x90
	.type	WListUpdate,@function
WListUpdate:                            # @WListUpdate
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	48(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	movl	$0, -52(%rbp)
	movl	$0, -56(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB3_4
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB3_3
# BB#2:                                 # %if.then.2
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 24(%rcx)
.LBB3_3:                                # %if.end
	movq	-16(%rbp), %rdi
	callq	glist_remove_rows
	movq	-16(%rbp), %rdi
	callq	gl_Window_rebuild
	jmp	.LBB3_55
.LBB3_4:                                # %if.end.5
	movl	$1, -52(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$0, 8(%rax)
	je	.LBB3_6
# BB#5:                                 # %lor.lhs.false
	movq	-24(%rbp), %rax
	cmpl	$1, 8(%rax)
	jne	.LBB3_12
.LBB3_6:                                # %if.then.8
	movq	-8(%rbp), %rax
	movq	9528(%rax), %rax
	movq	-24(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB3_11
# BB#7:                                 # %if.then.10
	movq	-24(%rbp), %rax
	cmpl	$0, 16(%rax)
	jne	.LBB3_9
# BB#8:                                 # %if.then.12
	movl	$0, -52(%rbp)
	jmp	.LBB3_10
.LBB3_9:                                # %if.else
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movq	-8(%rbp), %rsi
	callq	window_ancestor
	movl	%eax, -52(%rbp)
.LBB3_10:                               # %if.end.14
	jmp	.LBB3_11
.LBB3_11:                               # %if.end.15
	jmp	.LBB3_12
.LBB3_12:                               # %if.end.16
	cmpl	$0, -52(%rbp)
	jne	.LBB3_16
# BB#13:                                # %if.then.18
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	gl_Window_remove
	cmpl	$0, %eax
	je	.LBB3_15
# BB#14:                                # %if.then.21
	movq	-16(%rbp), %rdi
	callq	glist_display_all
.LBB3_15:                               # %if.end.22
	jmp	.LBB3_55
.LBB3_16:                               # %if.end.23
	movq	$0, -48(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$1, 8(%rax)
	jne	.LBB3_26
# BB#17:                                # %if.then.26
	movq	windows, %rax
	cmpq	-8(%rbp), %rax
	je	.LBB3_25
# BB#18:                                # %if.then.28
	movq	windows, %rax
	movq	%rax, -48(%rbp)
.LBB3_19:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB3_24
# BB#20:                                # %for.body
                                        #   in Loop: Header=BB3_19 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB3_22
# BB#21:                                # %if.then.31
	jmp	.LBB3_24
.LBB3_22:                               # %if.end.32
                                        #   in Loop: Header=BB3_19 Depth=1
	jmp	.LBB3_23
.LBB3_23:                               # %for.inc
                                        #   in Loop: Header=BB3_19 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB3_19
.LBB3_24:                               # %for.end
	jmp	.LBB3_25
.LBB3_25:                               # %if.end.34
	jmp	.LBB3_38
.LBB3_26:                               # %if.else.35
	movq	-24(%rbp), %rax
	cmpl	$0, 8(%rax)
	jne	.LBB3_37
# BB#27:                                # %if.then.38
	movq	-8(%rbp), %rax
	cmpl	$0, 192(%rax)
	je	.LBB3_36
# BB#28:                                # %if.then.40
	movq	wtab, %rax
	movq	-8(%rbp), %rcx
	movslq	192(%rcx), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	addq	$-8, %rax
	movq	%rax, -64(%rbp)
.LBB3_29:                               # %for.cond.43
                                        # =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rax
	cmpq	wtab, %rax
	jb	.LBB3_35
# BB#30:                                # %for.body.45
                                        #   in Loop: Header=BB3_29 Depth=1
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_33
# BB#31:                                # %land.lhs.true
                                        #   in Loop: Header=BB3_29 Depth=1
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	9528(%rax), %rax
	movq	-24(%rbp), %rcx
	cmpq	(%rcx), %rax
	jne	.LBB3_33
# BB#32:                                # %if.then.50
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB3_35
.LBB3_33:                               # %if.end.51
                                        #   in Loop: Header=BB3_29 Depth=1
	jmp	.LBB3_34
.LBB3_34:                               # %for.inc.52
                                        #   in Loop: Header=BB3_29 Depth=1
	movq	-64(%rbp), %rax
	addq	$-8, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB3_29
.LBB3_35:                               # %for.end.53
	jmp	.LBB3_36
.LBB3_36:                               # %if.end.54
	jmp	.LBB3_37
.LBB3_37:                               # %if.end.55
	jmp	.LBB3_38
.LBB3_38:                               # %if.end.56
	cmpq	$0, -48(%rbp)
	je	.LBB3_40
# BB#39:                                # %if.then.58
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gl_Window_findrow
	movq	%rax, -40(%rbp)
	jmp	.LBB3_45
.LBB3_40:                               # %if.else.60
	movq	-24(%rbp), %rax
	cmpl	$0, 16(%rax)
	je	.LBB3_43
# BB#41:                                # %land.lhs.true.63
	movq	-8(%rbp), %rax
	cmpq	$0, 9528(%rax)
	je	.LBB3_43
# BB#42:                                # %if.then.66
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	9528(%rax), %rsi
	callq	gl_Window_findrow
	movq	%rax, -40(%rbp)
	jmp	.LBB3_44
.LBB3_43:                               # %if.else.69
	movq	$0, -40(%rbp)
.LBB3_44:                               # %if.end.70
	jmp	.LBB3_45
.LBB3_45:                               # %if.end.71
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	gl_Window_findrow
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB3_50
# BB#46:                                # %if.then.74
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	-40(%rbp), %rax
	je	.LBB3_48
# BB#47:                                # %if.then.76
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movl	%esi, -56(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	gl_Window_remove
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB3_49
.LBB3_48:                               # %if.else.81
	movq	$0, -8(%rbp)
.LBB3_49:                               # %if.end.82
	jmp	.LBB3_50
.LBB3_50:                               # %if.end.83
	cmpq	$0, -8(%rbp)
	je	.LBB3_54
# BB#51:                                # %if.then.85
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, %rsi
	callq	glist_add_row
	movq	%rax, -32(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB3_53
# BB#52:                                # %if.then.88
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 16(%rcx)
.LBB3_53:                               # %if.end.90
	jmp	.LBB3_54
.LBB3_54:                               # %if.end.91
	movq	-16(%rbp), %rdi
	callq	glist_display_all
.LBB3_55:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	WListUpdate, .Lfunc_end3-WListUpdate
	.cfi_endproc

	.globl	WListLinkChanged
	.align	16, 0x90
	.type	WListLinkChanged,@function
WListLinkChanged:                       # @WListLinkChanged
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
	subq	$80, %rsp
	movq	display, %rax
	movq	%rax, -8(%rbp)
	movq	displays, %rax
	movq	%rax, display
.LBB4_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_3 Depth 2
	cmpq	$0, display
	je	.LBB4_15
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	display, %rax
	movq	328(%rax), %rax
	movq	%rax, -16(%rbp)
.LBB4_3:                                # %for.cond.1
                                        #   Parent Loop BB4_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -16(%rbp)
	je	.LBB4_13
# BB#4:                                 # %for.body.3
                                        #   in Loop: Header=BB4_3 Depth=2
	movq	-16(%rbp), %rax
	cmpq	$0, 64(%rax)
	je	.LBB4_6
# BB#5:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB4_3 Depth=2
	movabsq	$ListLf, %rax
	movq	-16(%rbp), %rcx
	movq	64(%rcx), %rcx
	cmpq	%rax, 32(%rcx)
	je	.LBB4_7
.LBB4_6:                                # %if.then
                                        #   in Loop: Header=BB4_3 Depth=2
	jmp	.LBB4_12
.LBB4_7:                                # %if.end
                                        #   in Loop: Header=BB4_3 Depth=2
	movabsq	$ListID, %rax
	movq	-16(%rbp), %rcx
	movq	64(%rcx), %rcx
	movq	40(%rcx), %rcx
	movq	%rcx, -24(%rbp)
	movq	-24(%rbp), %rcx
	cmpq	%rax, (%rcx)
	je	.LBB4_9
# BB#8:                                 # %if.then.8
                                        #   in Loop: Header=BB4_3 Depth=2
	jmp	.LBB4_12
.LBB4_9:                                # %if.end.9
                                        #   in Loop: Header=BB4_3 Depth=2
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	8(%rax), %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	jne	.LBB4_11
# BB#10:                                # %if.then.11
                                        #   in Loop: Header=BB4_3 Depth=2
	jmp	.LBB4_12
.LBB4_11:                               # %if.end.12
                                        #   in Loop: Header=BB4_3 Depth=2
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	display, %rcx
	movq	%rcx, -40(%rbp)
	movq	flayer, %rcx
	movq	%rcx, -48(%rbp)
	movq	-16(%rbp), %rcx
	movq	64(%rcx), %rcx
	movq	%rcx, -56(%rbp)
	movq	-56(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -64(%rbp)
	movq	-16(%rbp), %rcx
	movq	72(%rcx), %rcx
	movq	%rcx, -72(%rbp)
	movq	-56(%rbp), %rcx
	movq	%rcx, flayer
	movq	-16(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	%rcx, (%rdx)
	movq	-16(%rbp), %rcx
	movq	$0, 72(%rcx)
	movq	-24(%rbp), %rsi
	callq	WListUpdate
	movq	-48(%rbp), %rcx
	movq	%rcx, flayer
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	%rcx, (%rdx)
	movq	-72(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, 72(%rdx)
	movq	-40(%rbp), %rcx
	movq	%rcx, display
.LBB4_12:                               # %for.inc
                                        #   in Loop: Header=BB4_3 Depth=2
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB4_3
.LBB4_13:                               # %for.end
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_14
.LBB4_14:                               # %for.inc.19
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	display, %rax
	movq	(%rax), %rax
	movq	%rax, display
	jmp	.LBB4_1
.LBB4_15:                               # %for.end.20
	movq	-8(%rbp), %rax
	movq	%rax, display
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	WListLinkChanged, .Lfunc_end4-WListLinkChanged
	.cfi_endproc

	.align	16, 0x90
	.type	gl_Window_header,@function
gl_Window_header:                       # @gl_Window_header
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	48(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	cmpq	$0, (%rdi)
	setne	%al
	movb	%al, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -28(%rbp)
	testb	$1, %al
	jne	.LBB5_1
	jmp	.LBB5_2
.LBB5_1:                                # %if.then
	movabsq	$.L.str.2, %rsi
	movl	$7, %edx
	movabsq	$mchar_blank, %rcx
	xorl	%eax, %eax
	movq	flayer, %rdi
	movl	%eax, %r8d
	movl	%eax, %r9d
	callq	LPutWinMsg
	movabsq	$mchar_blank, %rcx
	movl	$7, %r8d
	xorl	%r9d, %r9d
	movq	flayer, %rdi
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	8736(%rsi), %rsi
	movq	-24(%rbp), %r10
	movq	(%r10), %r10
	movq	8736(%r10), %r10
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%r10, %rdi
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movl	%r8d, -52(%rbp)         # 4-byte Spill
	movl	%r9d, -56(%rbp)         # 4-byte Spill
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	strlen
	movl	%eax, %edx
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movl	-52(%rbp), %r8d         # 4-byte Reload
	movl	-56(%rbp), %r9d         # 4-byte Reload
	callq	LPutWinMsg
.LBB5_2:                                # %if.end
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	$37, %edx
	xorl	%r9d, %r9d
	movq	$0, display
	movq	wlisttit, %rdi
	movq	flayer, %rsi
	movl	8(%rsi), %eax
	movq	%rcx, %rsi
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movl	%eax, %ecx
	movq	-72(%rbp), %r8          # 8-byte Reload
	callq	MakeWinMsgEv
	movabsq	$mchar_blank, %rcx
	xorl	%r8d, %r8d
	movq	%rax, -16(%rbp)
	movq	flayer, %rdi
	movq	-16(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	callq	strlen
	movl	%eax, %edx
	movl	-28(%rbp), %r9d
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movl	-84(%rbp), %r8d         # 4-byte Reload
	callq	LPutWinMsg
	movl	-28(%rbp), %edx
	addl	$2, %edx
	movl	%edx, %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gl_Window_header, .Lfunc_end5-gl_Window_header
	.cfi_endproc

	.align	16, 0x90
	.type	gl_Window_footer,@function
gl_Window_footer:                       # @gl_Window_footer
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
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gl_Window_footer, .Lfunc_end6-gl_Window_footer
	.cfi_endproc

	.align	16, 0x90
	.type	gl_Window_row,@function
gl_Window_row:                          # @gl_Window_row
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	mchar_blank, %eax
	movl	%eax, -64(%rbp)
	movw	mchar_blank+4, %cx
	movw	%cx, -60(%rbp)
	movq	-8(%rbp), %rsi
	movq	48(%rsi), %rsi
	movq	%rsi, -72(%rbp)
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -32(%rbp)
	movl	$0, -44(%rbp)
	movq	-32(%rbp), %rsi
	movq	9528(%rsi), %rsi
	movq	%rsi, -40(%rbp)
.LBB7_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	movq	-72(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB7_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -44(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-40(%rbp), %rax
	movq	9528(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB7_1
.LBB7_4:                                # %for.end
	movq	flayer, %rax
	movq	56(%rax), %rax
	movq	40(%rax), %rax
	cmpq	$0, %rax
	je	.LBB7_6
# BB#5:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB7_10
.LBB7_6:                                # %cond.false
	movq	flayer, %rax
	cmpq	$0, (%rax)
	je	.LBB7_8
# BB#7:                                 # %cond.true.4
	movq	flayer, %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB7_9
.LBB7_8:                                # %cond.false.6
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	jmp	.LBB7_9
.LBB7_9:                                # %cond.end
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB7_10:                               # %cond.end.7
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	$37, %edx
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, display
	movq	wliststr, %rdi
	movq	-32(%rbp), %rsi
	movq	flayer, %rax
	movl	8(%rax), %ecx
	subl	-44(%rbp), %ecx
	callq	MakeWinMsgEv
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB7_12
# BB#11:                                # %if.then
	movabsq	$mchar_so, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB7_27
.LBB7_12:                               # %if.else
	movq	-32(%rbp), %rax
	cmpl	$3, 10836(%rax)
	jne	.LBB7_15
# BB#13:                                # %land.lhs.true
	cmpl	$-1, renditions+4
	je	.LBB7_15
# BB#14:                                # %if.then.12
	leaq	-64(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	renditions+4, %edi
	movq	-56(%rbp), %rsi
	callq	ApplyAttrColor
	jmp	.LBB7_26
.LBB7_15:                               # %if.else.13
	movq	-32(%rbp), %rax
	cmpl	$2, 10816(%rax)
	je	.LBB7_17
# BB#16:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	cmpl	$1, 10816(%rax)
	jne	.LBB7_19
.LBB7_17:                               # %land.lhs.true.17
	cmpl	$-1, renditions
	je	.LBB7_19
# BB#18:                                # %if.then.19
	leaq	-64(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	renditions, %edi
	movq	-56(%rbp), %rsi
	callq	ApplyAttrColor
	jmp	.LBB7_25
.LBB7_19:                               # %if.else.20
	movq	-32(%rbp), %rax
	cmpl	$2, 10844(%rax)
	je	.LBB7_21
# BB#20:                                # %lor.lhs.false.22
	movq	-32(%rbp), %rax
	cmpl	$3, 10844(%rax)
	jne	.LBB7_23
.LBB7_21:                               # %land.lhs.true.25
	cmpl	$-1, renditions+8
	je	.LBB7_23
# BB#22:                                # %if.then.27
	leaq	-64(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	renditions+8, %edi
	movq	-56(%rbp), %rsi
	callq	ApplyAttrColor
	jmp	.LBB7_24
.LBB7_23:                               # %if.else.28
	movabsq	$mchar_blank, %rax
	movq	%rax, -56(%rbp)
.LBB7_24:                               # %if.end
	jmp	.LBB7_25
.LBB7_25:                               # %if.end.29
	jmp	.LBB7_26
.LBB7_26:                               # %if.end.30
	jmp	.LBB7_27
.LBB7_27:                               # %if.end.31
	movq	flayer, %rdi
	movq	-24(%rbp), %rsi
	movq	flayer, %rax
	movl	8(%rax), %edx
	movq	-56(%rbp), %rcx
	movl	-44(%rbp), %r8d
	movq	-16(%rbp), %rax
	movl	24(%rax), %r9d
	callq	LPutWinMsg
	cmpl	$0, -44(%rbp)
	je	.LBB7_29
# BB#28:                                # %if.then.34
	movabsq	$.L.str.3, %rsi
	xorl	%r8d, %r8d
	movq	flayer, %rdi
	movl	-44(%rbp), %edx
	movq	-56(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	24(%rax), %r9d
	callq	LPutWinMsg
.LBB7_29:                               # %if.end.36
	movl	$1, %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gl_Window_row, .Lfunc_end7-gl_Window_row
	.cfi_endproc

	.align	16, 0x90
	.type	gl_Window_input,@function
gl_Window_input:                        # @gl_Window_input
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
	subq	$1008, %rsp             # imm = 0x3F0
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	display, %rdx
	movq	%rdx, -56(%rbp)
	movq	-16(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	%rdx, -64(%rbp)
	movq	-16(%rbp), %rdx
	cmpq	$0, 16(%rdx)
	jne	.LBB8_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB8_71
.LBB8_2:                                # %if.end
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movb	(%rax), %cl
	movb	%cl, -41(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	incq	%rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movl	(%rax), %esi
	decl	%esi
	movl	%esi, (%rax)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movzbl	-41(%rbp), %esi
	movl	%esi, %edi
	subl	$7, %edi
	movl	%esi, -916(%rbp)        # 4-byte Spill
	movl	%edi, -920(%rbp)        # 4-byte Spill
	je	.LBB8_44
	jmp	.LBB8_72
.LBB8_72:                               # %if.end
	movl	-916(%rbp), %eax        # 4-byte Reload
	subl	$8, %eax
	movl	%eax, -924(%rbp)        # 4-byte Spill
	je	.LBB8_25
	jmp	.LBB8_73
.LBB8_73:                               # %if.end
	movl	-916(%rbp), %eax        # 4-byte Reload
	subl	$10, %eax
	movl	%eax, -928(%rbp)        # 4-byte Spill
	je	.LBB8_3
	jmp	.LBB8_74
.LBB8_74:                               # %if.end
	movl	-916(%rbp), %eax        # 4-byte Reload
	subl	$13, %eax
	movl	%eax, -932(%rbp)        # 4-byte Spill
	je	.LBB8_3
	jmp	.LBB8_75
.LBB8_75:                               # %if.end
	movl	-916(%rbp), %eax        # 4-byte Reload
	subl	$27, %eax
	movl	%eax, -936(%rbp)        # 4-byte Spill
	je	.LBB8_44
	jmp	.LBB8_76
.LBB8_76:                               # %if.end
	movl	-916(%rbp), %eax        # 4-byte Reload
	subl	$32, %eax
	movl	%eax, -940(%rbp)        # 4-byte Spill
	je	.LBB8_3
	jmp	.LBB8_77
.LBB8_77:                               # %if.end
	movl	-916(%rbp), %eax        # 4-byte Reload
	subl	$44, %eax
	movl	%eax, -944(%rbp)        # 4-byte Spill
	je	.LBB8_31
	jmp	.LBB8_78
.LBB8_78:                               # %if.end
	movl	-916(%rbp), %eax        # 4-byte Reload
	subl	$46, %eax
	movl	%eax, -948(%rbp)        # 4-byte Spill
	je	.LBB8_37
	jmp	.LBB8_79
.LBB8_79:                               # %if.end
	movl	-916(%rbp), %eax        # 4-byte Reload
	subl	$75, %eax
	movl	%eax, -952(%rbp)        # 4-byte Spill
	je	.LBB8_43
	jmp	.LBB8_80
.LBB8_80:                               # %if.end
	movl	-916(%rbp), %eax        # 4-byte Reload
	subl	$97, %eax
	movl	%eax, -956(%rbp)        # 4-byte Spill
	je	.LBB8_19
	jmp	.LBB8_81
.LBB8_81:                               # %if.end
	movl	-916(%rbp), %eax        # 4-byte Reload
	subl	$103, %eax
	movl	%eax, -960(%rbp)        # 4-byte Spill
	je	.LBB8_18
	jmp	.LBB8_82
.LBB8_82:                               # %if.end
	movl	-916(%rbp), %eax        # 4-byte Reload
	subl	$109, %eax
	movl	%eax, -964(%rbp)        # 4-byte Spill
	je	.LBB8_17
	jmp	.LBB8_83
.LBB8_83:                               # %if.end
	movl	-916(%rbp), %eax        # 4-byte Reload
	subl	$127, %eax
	movl	%eax, -968(%rbp)        # 4-byte Spill
	je	.LBB8_25
	jmp	.LBB8_55
.LBB8_3:                                # %sw.bb
	cmpq	$0, -40(%rbp)
	jne	.LBB8_5
# BB#4:                                 # %if.then.4
	jmp	.LBB8_70
.LBB8_5:                                # %if.end.5
	cmpq	$0, display
	je	.LBB8_8
# BB#6:                                 # %land.lhs.true
	movl	$2, %esi
	movq	display, %rax
	movq	8(%rax), %rdi
	movq	-40(%rbp), %rdx
	callq	AclCheckPermWin
	cmpl	$0, %eax
	je	.LBB8_8
# BB#7:                                 # %if.then.8
	movl	$0, -4(%rbp)
	jmp	.LBB8_71
.LBB8_8:                                # %if.end.9
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_13
# BB#9:                                 # %land.lhs.true.11
	movq	-64(%rbp), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB8_13
# BB#10:                                # %land.lhs.true.13
	movq	flayer, %rax
	movq	56(%rax), %rax
	movq	40(%rax), %rax
	cmpq	$0, %rax
	je	.LBB8_13
# BB#11:                                # %land.lhs.true.15
	movq	flayer, %rax
	movq	56(%rax), %rax
	movq	40(%rax), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB8_13
# BB#12:                                # %if.then.19
	movq	-40(%rbp), %rax
	movl	192(%rax), %edi
	callq	SwitchWindow
	jmp	.LBB8_16
.LBB8_13:                               # %if.else
	callq	glist_abort
	movq	-56(%rbp), %rax
	movq	%rax, display
	movq	display, %rax
	movq	376(%rax), %rax
	cmpq	-40(%rbp), %rax
	je	.LBB8_15
# BB#14:                                # %if.then.22
	movq	-40(%rbp), %rax
	movl	192(%rax), %edi
	callq	SwitchWindow
.LBB8_15:                               # %if.end.24
	jmp	.LBB8_16
.LBB8_16:                               # %if.end.25
	movq	-32(%rbp), %rax
	movl	$0, (%rax)
	jmp	.LBB8_70
.LBB8_17:                               # %sw.bb.26
	movl	$1, %eax
	xorl	%ecx, %ecx
	movq	-64(%rbp), %rdx
	cmpl	$1, 8(%rdx)
	cmovel	%ecx, %eax
	movq	-64(%rbp), %rdx
	movl	%eax, 8(%rdx)
	movq	-16(%rbp), %rdi
	callq	glist_remove_rows
	movq	-16(%rbp), %rdi
	callq	gl_Window_rebuild
	jmp	.LBB8_70
.LBB8_18:                               # %sw.bb.30
	movq	-64(%rbp), %rax
	cmpl	$0, 16(%rax)
	setne	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movq	-64(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-16(%rbp), %rdi
	callq	glist_remove_rows
	movq	-16(%rbp), %rdi
	callq	gl_Window_rebuild
	jmp	.LBB8_70
.LBB8_19:                               # %sw.bb.33
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_21
# BB#20:                                # %if.then.36
	xorl	%eax, %eax
	movl	$2, %ecx
	movq	-64(%rbp), %rdx
	movl	8(%rdx), %esi
	movq	-64(%rbp), %rdx
	cmpl	$0, 16(%rdx)
	cmovnel	%ecx, %eax
	orl	%eax, %esi
	movl	%esi, -68(%rbp)
	callq	glist_abort
	movl	$1, %edi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %r8
	movq	%r8, display
	movl	-68(%rbp), %esi
	callq	display_windows
	movq	-32(%rbp), %rdx
	movl	$0, (%rdx)
	jmp	.LBB8_24
.LBB8_21:                               # %if.else.42
	movq	-64(%rbp), %rax
	cmpl	$0, 16(%rax)
	jne	.LBB8_23
# BB#22:                                # %if.then.45
	movq	-64(%rbp), %rax
	movl	$1, 16(%rax)
	movq	-16(%rbp), %rdi
	callq	glist_remove_rows
	movq	-16(%rbp), %rdi
	callq	gl_Window_rebuild
.LBB8_23:                               # %if.end.47
	jmp	.LBB8_24
.LBB8_24:                               # %if.end.48
	jmp	.LBB8_70
.LBB8_25:                               # %sw.bb.49
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB8_27
# BB#26:                                # %if.then.52
	jmp	.LBB8_70
.LBB8_27:                               # %if.end.53
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$0, 9528(%rax)
	je	.LBB8_29
# BB#28:                                # %if.then.56
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	9528(%rax), %rax
	movq	%rax, -80(%rbp)
	callq	glist_abort
	movq	-56(%rbp), %rax
	movq	%rax, display
	movq	-80(%rbp), %rdi
	callq	SetForeWindow
	movq	-32(%rbp), %rax
	movl	$0, (%rax)
	jmp	.LBB8_30
.LBB8_29:                               # %if.else.59
	xorl	%eax, %eax
	movl	$2, %ecx
	movq	-64(%rbp), %rdx
	movl	8(%rdx), %esi
	movq	-64(%rbp), %rdx
	cmpl	$0, 16(%rdx)
	cmovnel	%ecx, %eax
	orl	%eax, %esi
	movl	%esi, -84(%rbp)
	callq	glist_abort
	movl	$1, %edi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %r8
	movq	%r8, display
	movl	-84(%rbp), %esi
	callq	display_windows
	movq	-32(%rbp), %rdx
	movl	$0, (%rdx)
.LBB8_30:                               # %if.end.66
	jmp	.LBB8_70
.LBB8_31:                               # %sw.bb.67
	movq	-64(%rbp), %rax
	cmpl	$0, 8(%rax)
	jne	.LBB8_36
# BB#32:                                # %land.lhs.true.71
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$0, 16(%rax)
	je	.LBB8_36
# BB#33:                                # %if.then.74
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-40(%rbp), %rax
	movq	9528(%rax), %rax
	movq	-96(%rbp), %rcx
	cmpq	9528(%rcx), %rax
	je	.LBB8_35
# BB#34:                                # %if.then.82
	jmp	.LBB8_70
.LBB8_35:                               # %if.end.83
	movq	-40(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-40(%rbp), %rax
	movl	192(%rax), %edi
	movq	-96(%rbp), %rax
	movl	192(%rax), %esi
	callq	WindowChangeNumber
	movl	%eax, -972(%rbp)        # 4-byte Spill
.LBB8_36:                               # %if.end.87
	jmp	.LBB8_70
.LBB8_37:                               # %sw.bb.88
	movq	-64(%rbp), %rax
	cmpl	$0, 8(%rax)
	jne	.LBB8_42
# BB#38:                                # %land.lhs.true.92
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB8_42
# BB#39:                                # %if.then.95
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-40(%rbp), %rax
	movq	9528(%rax), %rax
	movq	-104(%rbp), %rcx
	cmpq	9528(%rcx), %rax
	je	.LBB8_41
# BB#40:                                # %if.then.103
	jmp	.LBB8_70
.LBB8_41:                               # %if.end.104
	movq	-40(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-40(%rbp), %rax
	movl	192(%rax), %edi
	movq	-104(%rbp), %rax
	movl	192(%rax), %esi
	callq	WindowChangeNumber
	movl	%eax, -976(%rbp)        # 4-byte Spill
.LBB8_42:                               # %if.end.109
	jmp	.LBB8_70
.LBB8_43:                               # %sw.bb.110
	movl	$767, %eax              # imm = 0x2FF
	movl	%eax, %esi
	movabsq	$.L.str.4, %rdx
	leaq	-880(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movl	192(%rcx), %ecx
	movq	-40(%rbp), %r8
	movq	8736(%r8), %r8
	movb	$0, %al
	callq	snprintf
	movl	$1, %esi
	movl	$2, %edx
	movabsq	$window_kill_confirm, %rcx
	xorl	%r9d, %r9d
	leaq	-880(%rbp), %rdi
	movq	-40(%rbp), %r8
	movl	%eax, -980(%rbp)        # 4-byte Spill
	callq	Input
	jmp	.LBB8_70
.LBB8_44:                               # %sw.bb.114
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_48
# BB#45:                                # %land.lhs.true.117
	movq	-64(%rbp), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB8_48
# BB#46:                                # %land.lhs.true.120
	movq	flayer, %rax
	movq	56(%rax), %rax
	movq	40(%rax), %rax
	cmpq	$0, %rax
	je	.LBB8_48
# BB#47:                                # %land.lhs.true.124
	movq	flayer, %rax
	movq	56(%rax), %rax
	movq	40(%rax), %rax
	cmpl	$3, 8(%rax)
	je	.LBB8_54
.LBB8_48:                               # %if.then.130
	movq	-64(%rbp), %rax
	cmpl	$0, 12(%rax)
	je	.LBB8_50
# BB#49:                                # %cond.true
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movl	192(%rax), %ecx
	movl	%ecx, -984(%rbp)        # 4-byte Spill
	jmp	.LBB8_51
.LBB8_50:                               # %cond.false
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -984(%rbp)        # 4-byte Spill
	jmp	.LBB8_51
.LBB8_51:                               # %cond.end
	movl	-984(%rbp), %eax        # 4-byte Reload
	movl	%eax, -884(%rbp)
	callq	glist_abort
	movq	-56(%rbp), %rcx
	movq	%rcx, display
	cmpl	$0, -884(%rbp)
	jl	.LBB8_53
# BB#52:                                # %if.then.138
	movl	-884(%rbp), %edi
	callq	SwitchWindow
.LBB8_53:                               # %if.end.139
	movq	-32(%rbp), %rax
	movl	$0, (%rax)
.LBB8_54:                               # %if.end.140
	jmp	.LBB8_70
.LBB8_55:                               # %sw.default
	movzbl	-41(%rbp), %eax
	cmpl	$48, %eax
	jl	.LBB8_69
# BB#56:                                # %land.lhs.true.144
	movzbl	-41(%rbp), %eax
	cmpl	$57, %eax
	jg	.LBB8_69
# BB#57:                                # %if.then.148
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -896(%rbp)
.LBB8_58:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -896(%rbp)
	je	.LBB8_68
# BB#59:                                # %for.body
                                        #   in Loop: Header=BB8_58 Depth=1
	movq	-896(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -904(%rbp)
	movq	-904(%rbp), %rax
	movl	192(%rax), %ecx
	movzbl	-41(%rbp), %edx
	subl	$48, %edx
	cmpl	%edx, %ecx
	jne	.LBB8_66
# BB#60:                                # %if.then.155
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -912(%rbp)
	movq	-912(%rbp), %rax
	cmpq	-896(%rbp), %rax
	jne	.LBB8_62
# BB#61:                                # %if.then.159
	jmp	.LBB8_68
.LBB8_62:                               # %if.end.160
	movq	-896(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	cmpl	$-1, 24(%rax)
	jne	.LBB8_64
# BB#63:                                # %if.then.165
	movq	-896(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-16(%rbp), %rdi
	callq	glist_display_all
	jmp	.LBB8_65
.LBB8_64:                               # %if.else.166
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-912(%rbp), %rsi
	callq	*%rax
	movq	-16(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	16(%rsi), %rsi
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rsi, -992(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	movq	-992(%rbp), %rcx        # 8-byte Reload
	movl	%eax, -996(%rbp)        # 4-byte Spill
	callq	*%rcx
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rcx
	movl	24(%rcx), %edx
	movq	flayer, %rcx
	movl	%edx, 20(%rcx)
	movq	flayer, %rdi
	movq	flayer, %rcx
	movl	16(%rcx), %esi
	movq	flayer, %rcx
	movl	20(%rcx), %edx
	movl	%eax, -1000(%rbp)       # 4-byte Spill
	callq	LGotoPos
.LBB8_65:                               # %if.end.175
	jmp	.LBB8_68
.LBB8_66:                               # %if.end.176
                                        #   in Loop: Header=BB8_58 Depth=1
	jmp	.LBB8_67
.LBB8_67:                               # %for.inc
                                        #   in Loop: Header=BB8_58 Depth=1
	movq	-896(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -896(%rbp)
	jmp	.LBB8_58
.LBB8_68:                               # %for.end
	jmp	.LBB8_70
.LBB8_69:                               # %if.end.178
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	addq	$-1, %rcx
	movq	%rcx, (%rax)
	movq	-32(%rbp), %rax
	movl	(%rax), %edx
	addl	$1, %edx
	movl	%edx, (%rax)
	movl	$0, -4(%rbp)
	jmp	.LBB8_71
.LBB8_70:                               # %sw.epilog
	movl	$1, -4(%rbp)
.LBB8_71:                               # %return
	movl	-4(%rbp), %eax
	addq	$1008, %rsp             # imm = 0x3F0
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gl_Window_input, .Lfunc_end8-gl_Window_input
	.cfi_endproc

	.align	16, 0x90
	.type	gl_Window_freerow,@function
gl_Window_freerow:                      # @gl_Window_freerow
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
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gl_Window_freerow, .Lfunc_end9-gl_Window_freerow
	.cfi_endproc

	.align	16, 0x90
	.type	gl_Window_free,@function
gl_Window_free:                         # @gl_Window_free
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 48(%rdi)
	jne	.LBB10_2
# BB#1:                                 # %if.then
	callq	abort
.LBB10_2:                               # %if.else
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	free
# BB#3:                                 # %if.end
	xorl	%eax, %eax
	movq	-8(%rbp), %rcx
	movq	$0, 48(%rcx)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gl_Window_free, .Lfunc_end10-gl_Window_free
	.cfi_endproc

	.align	16, 0x90
	.type	gl_Window_match,@function
gl_Window_match:                        # @gl_Window_match
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
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rdx
	movq	8736(%rdx), %rdi
	movq	-32(%rbp), %rsi
	callq	InStr
	cmpq	$0, %rax
	je	.LBB11_2
# BB#1:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB11_3
.LBB11_2:                               # %if.end
	movl	$0, -4(%rbp)
.LBB11_3:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gl_Window_match, .Lfunc_end11-gl_Window_match
	.cfi_endproc

	.align	16, 0x90
	.type	window_kill_confirm,@function
window_kill_confirm:                    # @window_kill_confirm
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	windows, %rdx
	movq	%rdx, -32(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.LBB12_3
# BB#1:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$121, %ecx
	je	.LBB12_4
# BB#2:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$89, %ecx
	je	.LBB12_4
.LBB12_3:                               # %if.then
	movq	-8(%rbp), %rax
	movb	$0, (%rax)
	jmp	.LBB12_13
.LBB12_4:                               # %if.end
	jmp	.LBB12_5
.LBB12_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB12_10
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB12_5 Depth=1
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB12_8
# BB#7:                                 # %if.then.8
	jmp	.LBB12_10
.LBB12_8:                               # %if.end.9
                                        #   in Loop: Header=BB12_5 Depth=1
	jmp	.LBB12_9
.LBB12_9:                               # %for.inc
                                        #   in Loop: Header=BB12_5 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB12_5
.LBB12_10:                              # %for.end
	cmpq	$0, -32(%rbp)
	jne	.LBB12_12
# BB#11:                                # %if.then.11
	jmp	.LBB12_13
.LBB12_12:                              # %if.end.12
	leaq	-64(%rbp), %rdi
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movabsq	$noargs, %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, fore
	movl	$94, -64(%rbp)
	movq	%rax, -56(%rbp)
	movq	$0, -48(%rbp)
	movl	$0, -40(%rbp)
	callq	DoAction
.LBB12_13:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	window_kill_confirm, .Lfunc_end12-window_kill_confirm
	.cfi_endproc

	.align	16, 0x90
	.type	gl_Window_add_group,@function
gl_Window_add_group:                    # @gl_Window_add_group
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	48(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -32(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -48(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB13_2
.LBB13_2:                               # %do.end
	jmp	.LBB13_3
.LBB13_3:                               # %do.body.2
	movq	-24(%rbp), %rax
	cmpl	$1, 8(%rax)
	jne	.LBB13_15
# BB#4:                                 # %if.then
	movq	windows, %rax
	movq	%rax, -56(%rbp)
.LBB13_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB13_14
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB13_5 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	9528(%rax), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB13_8
# BB#7:                                 # %if.then.4
                                        #   in Loop: Header=BB13_5 Depth=1
	jmp	.LBB13_13
.LBB13_8:                               # %if.end
                                        #   in Loop: Header=BB13_5 Depth=1
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rsi
	callq	glist_add_row
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	cmpq	24(%rdx), %rax
	jne	.LBB13_10
# BB#9:                                 # %if.then.6
                                        #   in Loop: Header=BB13_5 Depth=1
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 16(%rcx)
.LBB13_10:                              # %if.end.7
                                        #   in Loop: Header=BB13_5 Depth=1
	movq	-40(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB13_12
# BB#11:                                # %if.then.9
                                        #   in Loop: Header=BB13_5 Depth=1
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gl_Window_add_group
	movq	%rax, -48(%rbp)
.LBB13_12:                              # %if.end.11
                                        #   in Loop: Header=BB13_5 Depth=1
	jmp	.LBB13_13
.LBB13_13:                              # %for.inc
                                        #   in Loop: Header=BB13_5 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB13_5
.LBB13_14:                              # %for.end
	jmp	.LBB13_30
.LBB13_15:                              # %if.else
	movq	wtab, %rax
	movq	%rax, -64(%rbp)
	movq	windows, %rax
	movq	%rax, -72(%rbp)
.LBB13_16:                              # %for.cond.13
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -72(%rbp)
	movb	%cl, -73(%rbp)          # 1-byte Spill
	je	.LBB13_18
# BB#17:                                # %land.rhs
                                        #   in Loop: Header=BB13_16 Depth=1
	movq	-64(%rbp), %rax
	movq	wtab, %rcx
	subq	%rcx, %rax
	sarq	$3, %rax
	movslq	maxwin, %rcx
	cmpq	%rcx, %rax
	setl	%dl
	movb	%dl, -73(%rbp)          # 1-byte Spill
.LBB13_18:                              # %land.end
                                        #   in Loop: Header=BB13_16 Depth=1
	movb	-73(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB13_19
	jmp	.LBB13_29
.LBB13_19:                              # %for.body.17
                                        #   in Loop: Header=BB13_16 Depth=1
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, %rax
	jne	.LBB13_21
# BB#20:                                # %if.then.19
                                        #   in Loop: Header=BB13_16 Depth=1
	jmp	.LBB13_28
.LBB13_21:                              # %if.end.20
                                        #   in Loop: Header=BB13_16 Depth=1
	movq	-40(%rbp), %rax
	movq	9528(%rax), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB13_23
# BB#22:                                # %if.then.24
                                        #   in Loop: Header=BB13_16 Depth=1
	jmp	.LBB13_28
.LBB13_23:                              # %if.end.25
                                        #   in Loop: Header=BB13_16 Depth=1
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rsi
	callq	glist_add_row
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	cmpq	24(%rdx), %rax
	jne	.LBB13_25
# BB#24:                                # %if.then.30
                                        #   in Loop: Header=BB13_16 Depth=1
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 16(%rcx)
.LBB13_25:                              # %if.end.32
                                        #   in Loop: Header=BB13_16 Depth=1
	movq	-40(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB13_27
# BB#26:                                # %if.then.36
                                        #   in Loop: Header=BB13_16 Depth=1
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gl_Window_add_group
	movq	%rax, -48(%rbp)
.LBB13_27:                              # %if.end.38
                                        #   in Loop: Header=BB13_16 Depth=1
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
.LBB13_28:                              # %for.inc.40
                                        #   in Loop: Header=BB13_16 Depth=1
	movq	-64(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB13_16
.LBB13_29:                              # %for.end.41
	jmp	.LBB13_30
.LBB13_30:                              # %if.end.42
	jmp	.LBB13_31
.LBB13_31:                              # %do.end.43
	movq	-48(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gl_Window_add_group, .Lfunc_end13-gl_Window_add_group
	.cfi_endproc

	.align	16, 0x90
	.type	window_ancestor,@function
window_ancestor:                        # @window_ancestor
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB14_2
# BB#1:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB14_9
.LBB14_2:                               # %if.end
	jmp	.LBB14_3
.LBB14_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB14_8
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB14_3 Depth=1
	movq	-24(%rbp), %rax
	movq	9528(%rax), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB14_6
# BB#5:                                 # %if.then.2
	movl	$1, -4(%rbp)
	jmp	.LBB14_9
.LBB14_6:                               # %if.end.3
                                        #   in Loop: Header=BB14_3 Depth=1
	jmp	.LBB14_7
.LBB14_7:                               # %for.inc
                                        #   in Loop: Header=BB14_3 Depth=1
	movq	-24(%rbp), %rax
	movq	9528(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB14_3
.LBB14_8:                               # %for.end
	movl	$0, -4(%rbp)
.LBB14_9:                               # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end14:
	.size	window_ancestor, .Lfunc_end14-window_ancestor
	.cfi_endproc

	.align	16, 0x90
	.type	gl_Window_remove,@function
gl_Window_remove:                       # @gl_Window_remove
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gl_Window_findrow
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB15_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB15_19
.LBB15_2:                               # %if.end
	movq	-32(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB15_4
# BB#3:                                 # %if.then.2
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rax, 16(%rcx)
.LBB15_4:                               # %if.end.5
	movq	-32(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB15_6
# BB#5:                                 # %if.then.8
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rax, 8(%rcx)
.LBB15_6:                               # %if.end.12
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB15_11
# BB#7:                                 # %if.then.13
	movq	-32(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB15_9
# BB#8:                                 # %cond.true
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB15_10
.LBB15_9:                               # %cond.false
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB15_10:                              # %cond.end
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	-16(%rbp), %rcx
	movq	%rax, 16(%rcx)
.LBB15_11:                              # %if.end.19
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB15_16
# BB#12:                                # %if.then.21
	movq	-32(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB15_14
# BB#13:                                # %cond.true.24
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB15_15
.LBB15_14:                              # %cond.false.26
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB15_15:                              # %cond.end.28
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	-16(%rbp), %rcx
	movq	%rax, 24(%rcx)
.LBB15_16:                              # %if.end.31
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB15_18
# BB#17:                                # %if.then.33
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 8(%rcx)
.LBB15_18:                              # %if.end.36
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	*%rax
	movq	-32(%rbp), %rsi
	movq	%rsi, %rdi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	free
	movl	$1, -4(%rbp)
.LBB15_19:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gl_Window_remove, .Lfunc_end15-gl_Window_remove
	.cfi_endproc

	.align	16, 0x90
	.type	gl_Window_findrow,@function
gl_Window_findrow:                      # @gl_Window_findrow
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rsi, -24(%rbp)
.LBB16_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB16_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB16_4
# BB#3:                                 # %if.then
	jmp	.LBB16_6
.LBB16_4:                               # %if.end
                                        #   in Loop: Header=BB16_1 Depth=1
	jmp	.LBB16_5
.LBB16_5:                               # %for.inc
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB16_1
.LBB16_6:                               # %for.end
	movq	-24(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gl_Window_findrow, .Lfunc_end16-gl_Window_findrow
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Window size too small for window list page"
	.size	.L.str, 43

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"windowlist -b: display required"
	.size	.L.str.1, 32

	.type	gl_Window,@object       # @gl_Window
	.data
	.align	8
gl_Window:
	.quad	gl_Window_header
	.quad	gl_Window_footer
	.quad	gl_Window_row
	.quad	gl_Window_input
	.quad	gl_Window_freerow
	.quad	gl_Window_free
	.quad	gl_Window_match
	.size	gl_Window, 56

	.type	ListID,@object          # @ListID
ListID:
	.asciz	"window"
	.size	ListID, 7

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"Group: "
	.size	.L.str.2, 8

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.zero	1
	.size	.L.str.3, 1

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Really kill window %d (%s) [y/n]"
	.size	.L.str.4, 33


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
