	.text
	.file	"intervals.bc"
	.globl	create_root_interval
	.align	16, 0x90
	.type	create_root_interval,@function
create_root_interval:                   # @create_root_interval
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
	callq	make_interval
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	XBUFFER
	movq	720(%rax), %rax
	movq	16(%rax), %rax
	subq	$1, %rax
	movq	-16(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-8(%rbp), %rdi
	callq	XBUFFER
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	set_buffer_intervals
	movq	-16(%rbp), %rax
	movq	$1, 8(%rax)
	jmp	.LBB0_6
.LBB0_2:                                # %if.else
	movq	-8(%rbp), %rdi
	callq	XSTRING
	movabsq	$pure, %rdi
	subq	%rdi, %rax
	cmpq	$3000000, %rax          # imm = 0x2DC6C0
	ja	.LBB0_4
# BB#3:                                 # %cond.true
	movq	-8(%rbp), %rdi
	callq	pure_write_error
.LBB0_4:                                # %cond.false
	jmp	.LBB0_5
.LBB0_5:                                # %cond.end
	movq	-8(%rbp), %rdi
	callq	SCHARS
	movq	-16(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	set_string_intervals
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
.LBB0_6:                                # %if.end
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	set_interval_object
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	create_root_interval, .Lfunc_end0-create_root_interval
	.cfi_endproc

	.globl	copy_properties
	.align	16, 0x90
	.type	copy_properties,@function
copy_properties:                        # @copy_properties
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB1_2
# BB#1:                                 # %lor.lhs.false
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB1_5
.LBB1_2:                                # %land.lhs.true
	cmpq	$0, -16(%rbp)
	je	.LBB1_4
# BB#3:                                 # %lor.lhs.false.2
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB1_5
.LBB1_4:                                # %if.then
	jmp	.LBB1_8
.LBB1_5:                                # %if.end
	jmp	.LBB1_6
.LBB1_6:                                # %do.body
	movq	-8(%rbp), %rax
	movb	40(%rax), %cl
	shrb	$2, %cl
	andb	$1, %cl
	movq	-16(%rbp), %rax
	andb	$1, %cl
	movb	40(%rax), %dl
	shlb	$2, %cl
	andb	$-5, %dl
	orb	%cl, %dl
	movb	%dl, 40(%rax)
	movq	-8(%rbp), %rax
	movb	40(%rax), %cl
	shrb	$3, %cl
	andb	$1, %cl
	movq	-16(%rbp), %rax
	andb	$1, %cl
	movb	40(%rax), %dl
	shlb	$3, %cl
	andb	$-9, %dl
	orb	%cl, %dl
	movb	%dl, 40(%rax)
	movq	-8(%rbp), %rax
	movb	40(%rax), %cl
	shrb	$4, %cl
	andb	$1, %cl
	movq	-16(%rbp), %rax
	andb	$1, %cl
	movb	40(%rax), %dl
	shlb	$4, %cl
	andb	$-17, %dl
	orb	%cl, %dl
	movb	%dl, 40(%rax)
	movq	-8(%rbp), %rax
	movb	40(%rax), %cl
	shrb	$5, %cl
	andb	$1, %cl
	movq	-16(%rbp), %rax
	andb	$1, %cl
	movb	40(%rax), %dl
	shlb	$5, %cl
	andb	$-33, %dl
	orb	%cl, %dl
	movb	%dl, 40(%rax)
# BB#7:                                 # %do.end
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	Fcopy_sequence
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	set_interval_plist
.LBB1_8:                                # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	copy_properties, .Lfunc_end1-copy_properties
	.cfi_endproc

	.globl	intervals_equal
	.align	16, 0x90
	.type	intervals_equal,@function
intervals_equal:                        # @intervals_equal
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB2_2
# BB#1:                                 # %lor.lhs.false
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB2_5
.LBB2_2:                                # %land.lhs.true
	cmpq	$0, -24(%rbp)
	je	.LBB2_4
# BB#3:                                 # %lor.lhs.false.2
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB2_5
.LBB2_4:                                # %if.then
	movb	$1, -1(%rbp)
	jmp	.LBB2_35
.LBB2_5:                                # %if.end
	cmpq	$0, -16(%rbp)
	je	.LBB2_9
# BB#6:                                 # %lor.lhs.false.7
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB2_9
# BB#7:                                 # %lor.lhs.false.11
	cmpq	$0, -24(%rbp)
	je	.LBB2_9
# BB#8:                                 # %lor.lhs.false.13
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB2_10
.LBB2_9:                                # %if.then.17
	movb	$0, -1(%rbp)
	jmp	.LBB2_35
.LBB2_10:                               # %if.end.18
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB2_11:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_17 Depth 2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -89(%rbp)          # 1-byte Spill
	jne	.LBB2_13
# BB#12:                                # %land.rhs
                                        #   in Loop: Header=BB2_11 Depth=1
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	sete	%dl
	movb	%dl, -89(%rbp)          # 1-byte Spill
.LBB2_13:                               # %land.end
                                        #   in Loop: Header=BB2_11 Depth=1
	movb	-89(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB2_14
	jmp	.LBB2_32
.LBB2_14:                               # %while.body
                                        #   in Loop: Header=BB2_11 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB2_16
# BB#15:                                # %if.then.32
	movb	$0, -1(%rbp)
	jmp	.LBB2_35
.LBB2_16:                               # %if.end.33
                                        #   in Loop: Header=BB2_11 Depth=1
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -56(%rbp)
.LBB2_17:                               # %while.cond.35
                                        #   Parent Loop BB2_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-56(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -90(%rbp)          # 1-byte Spill
	jne	.LBB2_19
# BB#18:                                # %land.rhs.40
                                        #   in Loop: Header=BB2_17 Depth=2
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	sete	%cl
	xorb	$-1, %cl
	movb	%cl, -90(%rbp)          # 1-byte Spill
.LBB2_19:                               # %land.end.45
                                        #   in Loop: Header=BB2_17 Depth=2
	movb	-90(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB2_20
	jmp	.LBB2_23
.LBB2_20:                               # %while.body.46
                                        #   in Loop: Header=BB2_17 Depth=2
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB2_22
# BB#21:                                # %if.then.54
	movb	$0, -1(%rbp)
	jmp	.LBB2_35
.LBB2_22:                               # %if.end.55
                                        #   in Loop: Header=BB2_17 Depth=2
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB2_17
.LBB2_23:                               # %while.end
                                        #   in Loop: Header=BB2_11 Depth=1
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB2_25
# BB#24:                                # %if.then.62
	movb	$0, -1(%rbp)
	jmp	.LBB2_35
.LBB2_25:                               # %if.end.63
                                        #   in Loop: Header=BB2_11 Depth=1
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB2_28
# BB#26:                                # %lor.lhs.false.68
                                        #   in Loop: Header=BB2_11 Depth=1
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	sete	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB2_28
# BB#27:                                # %lor.lhs.false.77
                                        #   in Loop: Header=BB2_11 Depth=1
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	subq	$3, %rcx
	cmpq	(%rcx), %rax
	je	.LBB2_29
.LBB2_28:                               # %if.then.84
	movb	$0, -1(%rbp)
	jmp	.LBB2_35
.LBB2_29:                               # %if.end.85
                                        #   in Loop: Header=BB2_11 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB2_31
# BB#30:                                # %if.then.96
	movb	$0, -1(%rbp)
	jmp	.LBB2_35
.LBB2_31:                               # %if.end.97
                                        #   in Loop: Header=BB2_11 Depth=1
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB2_11
.LBB2_32:                               # %while.end.101
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movb	%dil, %cl
	movq	-112(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	movb	%cl, -113(%rbp)         # 1-byte Spill
	jne	.LBB2_34
# BB#33:                                # %land.rhs.105
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	movb	%dl, -113(%rbp)         # 1-byte Spill
.LBB2_34:                               # %land.end.109
	movb	-113(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -1(%rbp)
.LBB2_35:                               # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	intervals_equal, .Lfunc_end2-intervals_equal
	.cfi_endproc

	.globl	traverse_intervals_noorder
	.align	16, 0x90
	.type	traverse_intervals_noorder,@function
traverse_intervals_noorder:             # @traverse_intervals_noorder
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
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
.LBB3_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -8(%rbp)
	je	.LBB3_6
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	*%rax
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	jne	.LBB3_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB3_5
.LBB3_4:                                # %if.else
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	traverse_intervals_noorder
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB3_5:                                # %if.end
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_1
.LBB3_6:                                # %while.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	traverse_intervals_noorder, .Lfunc_end3-traverse_intervals_noorder
	.cfi_endproc

	.globl	traverse_intervals
	.align	16, 0x90
	.type	traverse_intervals,@function
traverse_intervals:                     # @traverse_intervals
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
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
.LBB4_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -8(%rbp)
	je	.LBB4_18
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	traverse_intervals
	movq	-8(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB4_4
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB4_5
.LBB4_4:                                # %cond.false
                                        #   in Loop: Header=BB4_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	jmp	.LBB4_5
.LBB4_5:                                # %cond.end
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-40(%rbp), %rax         # 8-byte Reload
	addq	-16(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	*%rax
	cmpq	$0, -8(%rbp)
	jne	.LBB4_7
# BB#6:                                 # %cond.true.5
                                        #   in Loop: Header=BB4_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB4_17
.LBB4_7:                                # %cond.false.6
                                        #   in Loop: Header=BB4_1 Depth=1
	cmpq	$0, -8(%rbp)
	jne	.LBB4_9
# BB#8:                                 # %cond.true.8
                                        #   in Loop: Header=BB4_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB4_10
.LBB4_9:                                # %cond.false.9
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB4_10:                               # %cond.end.11
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	-8(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jne	.LBB4_12
# BB#11:                                # %cond.true.14
                                        #   in Loop: Header=BB4_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	jmp	.LBB4_13
.LBB4_12:                               # %cond.false.15
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB4_13:                               # %cond.end.18
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	-64(%rbp), %rcx         # 8-byte Reload
	subq	%rax, %rcx
	movq	-8(%rbp), %rax
	cmpq	$0, 16(%rax)
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jne	.LBB4_15
# BB#14:                                # %cond.true.22
                                        #   in Loop: Header=BB4_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	jmp	.LBB4_16
.LBB4_15:                               # %cond.false.23
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB4_16:                               # %cond.end.26
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	-80(%rbp), %rcx         # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
.LBB4_17:                               # %cond.end.29
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	addq	-16(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB4_1
.LBB4_18:                               # %while.end
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	traverse_intervals, .Lfunc_end4-traverse_intervals
	.cfi_endproc

	.globl	balance_intervals
	.align	16, 0x90
	.type	balance_intervals,@function
balance_intervals:                      # @balance_intervals
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
	cmpq	$0, -8(%rbp)
	je	.LBB5_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rdi
	callq	balance_intervals_internal
	movq	%rax, -16(%rbp)         # 8-byte Spill
	jmp	.LBB5_3
.LBB5_2:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -16(%rbp)         # 8-byte Spill
	jmp	.LBB5_3
.LBB5_3:                                # %cond.end
	movq	-16(%rbp), %rax         # 8-byte Reload
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	balance_intervals, .Lfunc_end5-balance_intervals
	.cfi_endproc

	.align	16, 0x90
	.type	balance_intervals_internal,@function
balance_intervals_internal:             # @balance_intervals_internal
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
	cmpq	$0, 16(%rdi)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	balance_intervals_internal
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB6_2:                                # %if.end
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB6_4
# BB#3:                                 # %if.then.3
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	callq	balance_intervals_internal
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB6_4:                                # %if.end.6
	movq	-8(%rbp), %rdi
	callq	balance_an_interval
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	balance_intervals_internal, .Lfunc_end6-balance_intervals_internal
	.cfi_endproc

	.globl	split_interval_right
	.align	16, 0x90
	.type	split_interval_right,@function
split_interval_right:                   # @split_interval_right
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	callq	make_interval
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB7_2
# BB#1:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB7_12
.LBB7_2:                                # %cond.false
	cmpq	$0, -8(%rbp)
	jne	.LBB7_4
# BB#3:                                 # %cond.true.3
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB7_5
.LBB7_4:                                # %cond.false.4
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB7_5:                                # %cond.end
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	-8(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jne	.LBB7_7
# BB#6:                                 # %cond.true.6
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	jmp	.LBB7_8
.LBB7_7:                                # %cond.false.7
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB7_8:                                # %cond.end.10
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	-64(%rbp), %rcx         # 8-byte Reload
	subq	%rax, %rcx
	movq	-8(%rbp), %rax
	cmpq	$0, 16(%rax)
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jne	.LBB7_10
# BB#9:                                 # %cond.true.13
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	jmp	.LBB7_11
.LBB7_10:                               # %cond.false.14
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB7_11:                               # %cond.end.17
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	-80(%rbp), %rcx         # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
.LBB7_12:                               # %cond.end.20
	movq	-48(%rbp), %rax         # 8-byte Reload
	subq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	addq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	set_interval_parent
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	jne	.LBB7_14
# BB#13:                                # %if.then
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	set_interval_right
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	%rsi, (%rdi)
	jmp	.LBB7_15
.LBB7_14:                               # %if.else
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	24(%rax), %rsi
	callq	set_interval_right
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	set_interval_parent
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	set_interval_right
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	24(%rsi), %rsi
	addq	(%rsi), %rax
	movq	-24(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-24(%rbp), %rdi
	callq	balance_an_interval
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB7_15:                               # %if.end
	movq	-8(%rbp), %rdi
	callq	balance_possible_root_interval
	movq	-24(%rbp), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%rdi, %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	split_interval_right, .Lfunc_end7-split_interval_right
	.cfi_endproc

	.align	16, 0x90
	.type	set_interval_right,@function
set_interval_right:                     # @set_interval_right
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 24(%rdi)
	popq	%rbp
	retq
.Lfunc_end8:
	.size	set_interval_right, .Lfunc_end8-set_interval_right
	.cfi_endproc

	.align	16, 0x90
	.type	balance_an_interval,@function
balance_an_interval:                    # @balance_an_interval
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
.LBB9_1:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB9_3
# BB#2:                                 # %cond.true
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB9_4
.LBB9_3:                                # %cond.false
                                        #   in Loop: Header=BB9_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	jmp	.LBB9_4
.LBB9_4:                                # %cond.end
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	-8(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -40(%rbp)         # 8-byte Spill
	je	.LBB9_6
# BB#5:                                 # %cond.true.3
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB9_7
.LBB9_6:                                # %cond.false.6
                                        #   in Loop: Header=BB9_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB9_7
.LBB9_7:                                # %cond.end.7
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	-40(%rbp), %rcx         # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jle	.LBB9_20
# BB#8:                                 # %if.then
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rcx
	subq	(%rcx), %rax
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -56(%rbp)         # 8-byte Spill
	je	.LBB9_10
# BB#9:                                 # %cond.true.16
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB9_11
.LBB9_10:                               # %cond.false.20
                                        #   in Loop: Header=BB9_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	jmp	.LBB9_11
.LBB9_11:                               # %cond.end.21
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	-56(%rbp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$0, 16(%rax)
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	je	.LBB9_13
# BB#12:                                # %cond.true.26
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB9_14
.LBB9_13:                               # %cond.false.30
                                        #   in Loop: Header=BB9_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB9_14
.LBB9_14:                               # %cond.end.31
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	-72(%rbp), %rcx         # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jge	.LBB9_16
# BB#15:                                # %cond.true.35
                                        #   in Loop: Header=BB9_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	subq	-24(%rbp), %rcx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	jmp	.LBB9_17
.LBB9_16:                               # %cond.false.37
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB9_17:                               # %cond.end.38
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-88(%rbp), %rax         # 8-byte Reload
	cmpq	-16(%rbp), %rax
	jl	.LBB9_19
# BB#18:                                # %if.then.41
	jmp	.LBB9_36
.LBB9_19:                               # %if.end
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	rotate_right
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	callq	balance_an_interval
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB9_35
.LBB9_20:                               # %if.else
                                        #   in Loop: Header=BB9_1 Depth=1
	cmpq	$0, -16(%rbp)
	jge	.LBB9_33
# BB#21:                                # %if.then.45
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	subq	(%rcx), %rax
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	cmpq	$0, 16(%rcx)
	movq	%rax, -104(%rbp)        # 8-byte Spill
	je	.LBB9_23
# BB#22:                                # %cond.true.53
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB9_24
.LBB9_23:                               # %cond.false.57
                                        #   in Loop: Header=BB9_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB9_24
.LBB9_24:                               # %cond.end.58
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-104(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	$0, 24(%rax)
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	je	.LBB9_26
# BB#25:                                # %cond.true.64
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB9_27
.LBB9_26:                               # %cond.false.68
                                        #   in Loop: Header=BB9_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB9_27
.LBB9_27:                               # %cond.end.69
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	-120(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jge	.LBB9_29
# BB#28:                                # %cond.true.73
                                        #   in Loop: Header=BB9_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	subq	-24(%rbp), %rcx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	jmp	.LBB9_30
.LBB9_29:                               # %cond.false.75
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB9_30:                               # %cond.end.76
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-136(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	subq	-16(%rbp), %rdx
	cmpq	%rdx, %rax
	jl	.LBB9_32
# BB#31:                                # %if.then.80
	jmp	.LBB9_36
.LBB9_32:                               # %if.end.81
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	rotate_left
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	balance_an_interval
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB9_34
.LBB9_33:                               # %if.else.85
	jmp	.LBB9_36
.LBB9_34:                               # %if.end.86
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_35
.LBB9_35:                               # %if.end.87
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_1
.LBB9_36:                               # %while.end
	movq	-8(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	balance_an_interval, .Lfunc_end9-balance_an_interval
	.cfi_endproc

	.align	16, 0x90
	.type	balance_possible_root_interval,@function
balance_possible_root_interval:         # @balance_possible_root_interval
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movb	$0, -25(%rbp)
	movq	-16(%rbp), %rdi
	movb	40(%rdi), %al
	andb	$1, %al
	testb	$1, %al
	je	.LBB10_2
# BB#1:                                 # %if.then
	movb	$1, -25(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB10_6
.LBB10_2:                               # %if.else
	movq	-16(%rbp), %rax
	movb	40(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB10_4
# BB#3:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	cmpq	$0, 32(%rax)
	jne	.LBB10_5
.LBB10_4:                               # %if.then.7
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB10_14
.LBB10_5:                               # %if.end
	jmp	.LBB10_6
.LBB10_6:                               # %if.end.8
	movq	-16(%rbp), %rdi
	callq	balance_an_interval
	movq	%rax, -16(%rbp)
	testb	$1, -25(%rbp)
	je	.LBB10_13
# BB#7:                                 # %if.then.9
	movq	-24(%rbp), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB10_8
	jmp	.LBB10_9
.LBB10_8:                               # %if.then.11
	movq	-24(%rbp), %rdi
	callq	XBUFFER
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	set_buffer_intervals
	jmp	.LBB10_12
.LBB10_9:                               # %if.else.13
	movq	-24(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB10_10
	jmp	.LBB10_11
.LBB10_10:                              # %if.then.15
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	set_string_intervals
.LBB10_11:                              # %if.end.16
	jmp	.LBB10_12
.LBB10_12:                              # %if.end.17
	jmp	.LBB10_13
.LBB10_13:                              # %if.end.18
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB10_14:                              # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	balance_possible_root_interval, .Lfunc_end10-balance_possible_root_interval
	.cfi_endproc

	.globl	split_interval_left
	.align	16, 0x90
	.type	split_interval_left,@function
split_interval_left:                    # @split_interval_left
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	callq	make_interval
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rsi
	movq	%rax, 8(%rsi)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	addq	-16(%rbp), %rax
	movq	-8(%rbp), %rsi
	movq	%rax, 8(%rsi)
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	set_interval_parent
	movq	-8(%rbp), %rax
	cmpq	$0, 16(%rax)
	jne	.LBB11_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	set_interval_left
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	%rsi, (%rdi)
	jmp	.LBB11_3
.LBB11_2:                               # %if.else
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	16(%rax), %rsi
	callq	set_interval_left
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	set_interval_parent
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	set_interval_left
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	16(%rsi), %rsi
	addq	(%rsi), %rax
	movq	-24(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-24(%rbp), %rdi
	callq	balance_an_interval
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB11_3:                               # %if.end
	movq	-8(%rbp), %rdi
	callq	balance_possible_root_interval
	movq	-24(%rbp), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rdi, %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	split_interval_left, .Lfunc_end11-split_interval_left
	.cfi_endproc

	.align	16, 0x90
	.type	set_interval_left,@function
set_interval_left:                      # @set_interval_left
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 16(%rdi)
	popq	%rbp
	retq
.Lfunc_end12:
	.size	set_interval_left, .Lfunc_end12-set_interval_left
	.cfi_endproc

	.globl	find_interval
	.align	16, 0x90
	.type	find_interval,@function
find_interval:                          # @find_interval
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB13_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB13_33
.LBB13_2:                               # %if.end
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movb	40(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB13_6
# BB#3:                                 # %if.then.1
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB13_4
	jmp	.LBB13_5
.LBB13_4:                               # %if.then.2
	movq	-32(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -32(%rbp)
.LBB13_5:                               # %if.end.3
	jmp	.LBB13_6
.LBB13_6:                               # %if.end.4
	movq	-16(%rbp), %rdi
	callq	balance_possible_root_interval
	movq	%rax, -16(%rbp)
.LBB13_7:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	$0, 16(%rcx)
	movq	%rax, -48(%rbp)         # 8-byte Spill
	je	.LBB13_9
# BB#8:                                 # %cond.true
                                        #   in Loop: Header=BB13_7 Depth=1
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB13_10
.LBB13_9:                               # %cond.false
                                        #   in Loop: Header=BB13_7 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB13_10
.LBB13_10:                              # %cond.end
                                        #   in Loop: Header=BB13_7 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jge	.LBB13_12
# BB#11:                                # %if.then.8
                                        #   in Loop: Header=BB13_7 Depth=1
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB13_32
.LBB13_12:                              # %if.else
                                        #   in Loop: Header=BB13_7 Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB13_27
# BB#13:                                # %land.lhs.true
                                        #   in Loop: Header=BB13_7 Depth=1
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jne	.LBB13_15
# BB#14:                                # %cond.true.12
                                        #   in Loop: Header=BB13_7 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	jmp	.LBB13_16
.LBB13_15:                              # %cond.false.13
                                        #   in Loop: Header=BB13_7 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB13_16:                              # %cond.end.15
                                        #   in Loop: Header=BB13_7 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	-16(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -80(%rbp)         # 8-byte Spill
	je	.LBB13_18
# BB#17:                                # %cond.true.19
                                        #   in Loop: Header=BB13_7 Depth=1
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB13_19
.LBB13_18:                              # %cond.false.22
                                        #   in Loop: Header=BB13_7 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	jmp	.LBB13_19
.LBB13_19:                              # %cond.end.23
                                        #   in Loop: Header=BB13_7 Depth=1
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	-80(%rbp), %rcx         # 8-byte Reload
	subq	%rax, %rcx
	movq	-64(%rbp), %rax         # 8-byte Reload
	cmpq	%rcx, %rax
	jl	.LBB13_27
# BB#20:                                # %if.then.27
                                        #   in Loop: Header=BB13_7 Depth=1
	cmpq	$0, -16(%rbp)
	jne	.LBB13_22
# BB#21:                                # %cond.true.29
                                        #   in Loop: Header=BB13_7 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB13_23
.LBB13_22:                              # %cond.false.30
                                        #   in Loop: Header=BB13_7 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB13_23:                              # %cond.end.32
                                        #   in Loop: Header=BB13_7 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-16(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -104(%rbp)        # 8-byte Spill
	je	.LBB13_25
# BB#24:                                # %cond.true.36
                                        #   in Loop: Header=BB13_7 Depth=1
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB13_26
.LBB13_25:                              # %cond.false.39
                                        #   in Loop: Header=BB13_7 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB13_26
.LBB13_26:                              # %cond.end.40
                                        #   in Loop: Header=BB13_7 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-104(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	-32(%rbp), %rax
	subq	%rcx, %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB13_31
.LBB13_27:                              # %if.else.45
	movq	-24(%rbp), %rax
	subq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	$0, 16(%rcx)
	movq	%rax, -120(%rbp)        # 8-byte Spill
	je	.LBB13_29
# BB#28:                                # %cond.true.49
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB13_30
.LBB13_29:                              # %cond.false.52
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB13_30
.LBB13_30:                              # %cond.end.53
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	-120(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 8(%rax)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB13_33
.LBB13_31:                              # %if.end.56
                                        #   in Loop: Header=BB13_7 Depth=1
	jmp	.LBB13_32
.LBB13_32:                              # %if.end.57
                                        #   in Loop: Header=BB13_7 Depth=1
	jmp	.LBB13_7
.LBB13_33:                              # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	find_interval, .Lfunc_end13-find_interval
	.cfi_endproc

	.globl	next_interval
	.align	16, 0x90
	.type	next_interval,@function
next_interval:                          # @next_interval
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
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB14_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB14_29
.LBB14_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$0, -16(%rbp)
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jne	.LBB14_4
# BB#3:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB14_14
.LBB14_4:                               # %cond.false
	cmpq	$0, -16(%rbp)
	jne	.LBB14_6
# BB#5:                                 # %cond.true.2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB14_7
.LBB14_6:                               # %cond.false.3
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB14_7:                               # %cond.end
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	-16(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jne	.LBB14_9
# BB#8:                                 # %cond.true.5
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	jmp	.LBB14_10
.LBB14_9:                               # %cond.false.6
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB14_10:                              # %cond.end.9
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	-64(%rbp), %rcx         # 8-byte Reload
	subq	%rax, %rcx
	movq	-16(%rbp), %rax
	cmpq	$0, 16(%rax)
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jne	.LBB14_12
# BB#11:                                # %cond.true.12
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	jmp	.LBB14_13
.LBB14_12:                              # %cond.false.13
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB14_13:                              # %cond.end.16
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	-80(%rbp), %rcx         # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
.LBB14_14:                              # %cond.end.19
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	-40(%rbp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB14_19
# BB#15:                                # %if.then.23
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB14_16:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	cmpq	$0, 16(%rax)
	sete	%cl
	xorb	$-1, %cl
	testb	$1, %cl
	jne	.LBB14_17
	jmp	.LBB14_18
.LBB14_17:                              # %while.body
                                        #   in Loop: Header=BB14_16 Depth=1
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB14_16
.LBB14_18:                              # %while.end
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB14_29
.LBB14_19:                              # %if.end.29
	jmp	.LBB14_20
.LBB14_20:                              # %while.cond.30
                                        # =>This Inner Loop Header: Depth=1
	movb	$1, %al
	movq	-24(%rbp), %rcx
	movb	40(%rcx), %dl
	andb	$1, %dl
	testb	$1, %dl
	movb	%al, -89(%rbp)          # 1-byte Spill
	jne	.LBB14_22
# BB#21:                                # %lor.rhs
                                        #   in Loop: Header=BB14_20 Depth=1
	movq	-24(%rbp), %rax
	cmpq	$0, 32(%rax)
	sete	%cl
	movb	%cl, -89(%rbp)          # 1-byte Spill
.LBB14_22:                              # %lor.end
                                        #   in Loop: Header=BB14_20 Depth=1
	movb	-89(%rbp), %al          # 1-byte Reload
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB14_23
	jmp	.LBB14_28
.LBB14_23:                              # %while.body.34
                                        #   in Loop: Header=BB14_20 Depth=1
	movq	-24(%rbp), %rax
	movb	40(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB14_27
# BB#24:                                # %lor.lhs.false
                                        #   in Loop: Header=BB14_20 Depth=1
	movq	-24(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB14_27
# BB#25:                                # %land.lhs.true
                                        #   in Loop: Header=BB14_20 Depth=1
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB14_27
# BB#26:                                # %if.then.46
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB14_29
.LBB14_27:                              # %if.end.50
                                        #   in Loop: Header=BB14_20 Depth=1
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB14_20
.LBB14_28:                              # %while.end.53
	movq	$0, -8(%rbp)
.LBB14_29:                              # %return
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end14:
	.size	next_interval, .Lfunc_end14-next_interval
	.cfi_endproc

	.globl	previous_interval
	.align	16, 0x90
	.type	previous_interval,@function
previous_interval:                      # @previous_interval
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
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB15_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB15_41
.LBB15_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB15_19
# BB#3:                                 # %if.then.1
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB15_4:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	cmpq	$0, 24(%rax)
	sete	%cl
	xorb	$-1, %cl
	testb	$1, %cl
	jne	.LBB15_5
	jmp	.LBB15_6
.LBB15_5:                               # %while.body
                                        #   in Loop: Header=BB15_4 Depth=1
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB15_4
.LBB15_6:                               # %while.end
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$0, -24(%rbp)
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jne	.LBB15_8
# BB#7:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	jmp	.LBB15_18
.LBB15_8:                               # %cond.false
	cmpq	$0, -24(%rbp)
	jne	.LBB15_10
# BB#9:                                 # %cond.true.7
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB15_11
.LBB15_10:                              # %cond.false.8
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB15_11:                              # %cond.end
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	-24(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jne	.LBB15_13
# BB#12:                                # %cond.true.11
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	jmp	.LBB15_14
.LBB15_13:                              # %cond.false.12
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB15_14:                              # %cond.end.15
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	-56(%rbp), %rcx         # 8-byte Reload
	subq	%rax, %rcx
	movq	-24(%rbp), %rax
	cmpq	$0, 16(%rax)
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	jne	.LBB15_16
# BB#15:                                # %cond.true.19
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB15_17
.LBB15_16:                              # %cond.false.20
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB15_17:                              # %cond.end.23
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	-72(%rbp), %rcx         # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
.LBB15_18:                              # %cond.end.26
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	-32(%rbp), %rcx         # 8-byte Reload
	subq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB15_41
.LBB15_19:                              # %if.end.30
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB15_20:                              # %while.cond.31
                                        # =>This Inner Loop Header: Depth=1
	movb	$1, %al
	movq	-24(%rbp), %rcx
	movb	40(%rcx), %dl
	andb	$1, %dl
	testb	$1, %dl
	movb	%al, -81(%rbp)          # 1-byte Spill
	jne	.LBB15_22
# BB#21:                                # %lor.rhs
                                        #   in Loop: Header=BB15_20 Depth=1
	movq	-24(%rbp), %rax
	cmpq	$0, 32(%rax)
	sete	%cl
	movb	%cl, -81(%rbp)          # 1-byte Spill
.LBB15_22:                              # %lor.end
                                        #   in Loop: Header=BB15_20 Depth=1
	movb	-81(%rbp), %al          # 1-byte Reload
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB15_23
	jmp	.LBB15_40
.LBB15_23:                              # %while.body.35
                                        #   in Loop: Header=BB15_20 Depth=1
	movq	-24(%rbp), %rax
	movb	40(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB15_39
# BB#24:                                # %lor.lhs.false
                                        #   in Loop: Header=BB15_20 Depth=1
	movq	-24(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB15_39
# BB#25:                                # %land.lhs.true
                                        #   in Loop: Header=BB15_20 Depth=1
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB15_39
# BB#26:                                # %if.then.47
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$0, -24(%rbp)
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jne	.LBB15_28
# BB#27:                                # %cond.true.52
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB15_38
.LBB15_28:                              # %cond.false.53
	cmpq	$0, -24(%rbp)
	jne	.LBB15_30
# BB#29:                                # %cond.true.55
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB15_31
.LBB15_30:                              # %cond.false.56
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB15_31:                              # %cond.end.58
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-24(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jne	.LBB15_33
# BB#32:                                # %cond.true.62
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB15_34
.LBB15_33:                              # %cond.false.63
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB15_34:                              # %cond.end.66
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	-120(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	-24(%rbp), %rax
	cmpq	$0, 16(%rax)
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	jne	.LBB15_36
# BB#35:                                # %cond.true.71
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB15_37
.LBB15_36:                              # %cond.false.72
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB15_37:                              # %cond.end.75
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	-136(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
.LBB15_38:                              # %cond.end.78
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rcx         # 8-byte Reload
	subq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB15_41
.LBB15_39:                              # %if.end.82
                                        #   in Loop: Header=BB15_20 Depth=1
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB15_20
.LBB15_40:                              # %while.end.85
	movq	$0, -8(%rbp)
.LBB15_41:                              # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	previous_interval, .Lfunc_end15-previous_interval
	.cfi_endproc

	.globl	update_interval
	.align	16, 0x90
	.type	update_interval,@function
update_interval:                        # @update_interval
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
	subq	$304, %rsp              # imm = 0x130
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB16_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB16_73
.LBB16_2:                               # %if.end
	jmp	.LBB16_3
.LBB16_3:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jge	.LBB16_21
# BB#4:                                 # %if.then.1
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-16(%rbp), %rdx
	cmpq	$0, 16(%rdx)
	movq	%rax, -32(%rbp)         # 8-byte Spill
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	jne	.LBB16_6
# BB#5:                                 # %cond.true
                                        #   in Loop: Header=BB16_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB16_7
.LBB16_6:                               # %cond.false
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB16_7:                               # %cond.end
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	-40(%rbp), %rcx         # 8-byte Reload
	subq	%rax, %rcx
	movq	-32(%rbp), %rax         # 8-byte Reload
	cmpq	%rcx, %rax
	jl	.LBB16_15
# BB#8:                                 # %if.then.6
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	$0, 16(%rcx)
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jne	.LBB16_10
# BB#9:                                 # %cond.true.10
                                        #   in Loop: Header=BB16_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	jmp	.LBB16_11
.LBB16_10:                              # %cond.false.11
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB16_11:                              # %cond.end.14
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	-56(%rbp), %rcx         # 8-byte Reload
	subq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$0, 16(%rax)
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	je	.LBB16_13
# BB#12:                                # %cond.true.20
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB16_14
.LBB16_13:                              # %cond.false.24
                                        #   in Loop: Header=BB16_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB16_14
.LBB16_14:                              # %cond.end.25
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	-72(%rbp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rcx, 8(%rax)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB16_20
.LBB16_15:                              # %if.else
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	-16(%rbp), %rax
	movb	40(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB16_17
# BB#16:                                # %lor.lhs.false
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, 32(%rax)
	jne	.LBB16_18
.LBB16_17:                              # %if.then.31
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	error
.LBB16_18:                              # %if.else.32
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -16(%rbp)
# BB#19:                                # %if.end.35
                                        #   in Loop: Header=BB16_3 Depth=1
	jmp	.LBB16_20
.LBB16_20:                              # %if.end.36
                                        #   in Loop: Header=BB16_3 Depth=1
	jmp	.LBB16_3
.LBB16_21:                              # %if.else.37
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	cmpq	$0, -16(%rbp)
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jne	.LBB16_23
# BB#22:                                # %cond.true.40
                                        #   in Loop: Header=BB16_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB16_33
.LBB16_23:                              # %cond.false.41
                                        #   in Loop: Header=BB16_3 Depth=1
	cmpq	$0, -16(%rbp)
	jne	.LBB16_25
# BB#24:                                # %cond.true.43
                                        #   in Loop: Header=BB16_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB16_26
.LBB16_25:                              # %cond.false.44
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB16_26:                              # %cond.end.46
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-16(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jne	.LBB16_28
# BB#27:                                # %cond.true.49
                                        #   in Loop: Header=BB16_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB16_29
.LBB16_28:                              # %cond.false.50
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB16_29:                              # %cond.end.53
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	-120(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	-16(%rbp), %rax
	cmpq	$0, 16(%rax)
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	jne	.LBB16_31
# BB#30:                                # %cond.true.58
                                        #   in Loop: Header=BB16_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB16_32
.LBB16_31:                              # %cond.false.59
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB16_32:                              # %cond.end.62
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	-136(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
.LBB16_33:                              # %cond.end.65
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	movq	-88(%rbp), %rax         # 8-byte Reload
	cmpq	%rcx, %rax
	jl	.LBB16_72
# BB#34:                                # %if.then.69
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	cmpq	$0, -16(%rbp)
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	jne	.LBB16_36
# BB#35:                                # %cond.true.72
                                        #   in Loop: Header=BB16_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	jmp	.LBB16_46
.LBB16_36:                              # %cond.false.73
                                        #   in Loop: Header=BB16_3 Depth=1
	cmpq	$0, -16(%rbp)
	jne	.LBB16_38
# BB#37:                                # %cond.true.75
                                        #   in Loop: Header=BB16_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	jmp	.LBB16_39
.LBB16_38:                              # %cond.false.76
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
.LBB16_39:                              # %cond.end.78
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	-16(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jne	.LBB16_41
# BB#40:                                # %cond.true.82
                                        #   in Loop: Header=BB16_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	jmp	.LBB16_42
.LBB16_41:                              # %cond.false.83
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
.LBB16_42:                              # %cond.end.86
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	-184(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	-16(%rbp), %rax
	cmpq	$0, 16(%rax)
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	jne	.LBB16_44
# BB#43:                                # %cond.true.91
                                        #   in Loop: Header=BB16_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	jmp	.LBB16_45
.LBB16_44:                              # %cond.false.92
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
.LBB16_45:                              # %cond.end.95
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	-208(%rbp), %rax        # 8-byte Reload
	movq	-200(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
.LBB16_46:                              # %cond.end.98
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	-160(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	movq	-16(%rbp), %rax
	cmpq	$0, 24(%rax)
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	jne	.LBB16_48
# BB#47:                                # %cond.true.103
                                        #   in Loop: Header=BB16_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	jmp	.LBB16_49
.LBB16_48:                              # %cond.false.104
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
.LBB16_49:                              # %cond.end.107
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	-224(%rbp), %rax        # 8-byte Reload
	movq	-216(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	movq	-152(%rbp), %rax        # 8-byte Reload
	cmpq	%rcx, %rax
	jge	.LBB16_66
# BB#50:                                # %if.then.111
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$0, -16(%rbp)
	movq	%rax, -232(%rbp)        # 8-byte Spill
	jne	.LBB16_52
# BB#51:                                # %cond.true.114
                                        #   in Loop: Header=BB16_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	jmp	.LBB16_62
.LBB16_52:                              # %cond.false.115
                                        #   in Loop: Header=BB16_3 Depth=1
	cmpq	$0, -16(%rbp)
	jne	.LBB16_54
# BB#53:                                # %cond.true.117
                                        #   in Loop: Header=BB16_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -248(%rbp)        # 8-byte Spill
	jmp	.LBB16_55
.LBB16_54:                              # %cond.false.118
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
.LBB16_55:                              # %cond.end.120
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	-248(%rbp), %rax        # 8-byte Reload
	movq	-16(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -256(%rbp)        # 8-byte Spill
	jne	.LBB16_57
# BB#56:                                # %cond.true.124
                                        #   in Loop: Header=BB16_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -264(%rbp)        # 8-byte Spill
	jmp	.LBB16_58
.LBB16_57:                              # %cond.false.125
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
.LBB16_58:                              # %cond.end.128
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	-264(%rbp), %rax        # 8-byte Reload
	movq	-256(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	-16(%rbp), %rax
	cmpq	$0, 16(%rax)
	movq	%rcx, -272(%rbp)        # 8-byte Spill
	jne	.LBB16_60
# BB#59:                                # %cond.true.133
                                        #   in Loop: Header=BB16_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -280(%rbp)        # 8-byte Spill
	jmp	.LBB16_61
.LBB16_60:                              # %cond.false.134
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
.LBB16_61:                              # %cond.end.137
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	-280(%rbp), %rax        # 8-byte Reload
	movq	-272(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -240(%rbp)        # 8-byte Spill
.LBB16_62:                              # %cond.end.140
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	-240(%rbp), %rax        # 8-byte Reload
	movq	-232(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	$0, 16(%rax)
	movq	%rcx, -288(%rbp)        # 8-byte Spill
	je	.LBB16_64
# BB#63:                                # %cond.true.146
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	jmp	.LBB16_65
.LBB16_64:                              # %cond.false.150
                                        #   in Loop: Header=BB16_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -296(%rbp)        # 8-byte Spill
	jmp	.LBB16_65
.LBB16_65:                              # %cond.end.151
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	-296(%rbp), %rax        # 8-byte Reload
	movq	-288(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rcx, 8(%rax)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB16_71
.LBB16_66:                              # %if.else.157
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	-16(%rbp), %rax
	movb	40(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB16_68
# BB#67:                                # %lor.lhs.false.162
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, 32(%rax)
	jne	.LBB16_69
.LBB16_68:                              # %if.then.166
	movabsq	$.L.str.1, %rdi
	movq	-24(%rbp), %rsi
	movb	$0, %al
	callq	error
.LBB16_69:                              # %if.else.167
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -16(%rbp)
# BB#70:                                # %if.end.170
                                        #   in Loop: Header=BB16_3 Depth=1
	jmp	.LBB16_71
.LBB16_71:                              # %if.end.171
                                        #   in Loop: Header=BB16_3 Depth=1
	jmp	.LBB16_3
.LBB16_72:                              # %if.else.172
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB16_73:                              # %return
	movq	-8(%rbp), %rax
	addq	$304, %rsp              # imm = 0x130
	popq	%rbp
	retq
.Lfunc_end16:
	.size	update_interval, .Lfunc_end16-update_interval
	.cfi_endproc

	.globl	offset_intervals
	.align	16, 0x90
	.type	offset_intervals,@function
offset_intervals:                       # @offset_intervals
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
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	buffer_intervals
	cmpq	$0, %rax
	je	.LBB17_2
# BB#1:                                 # %lor.lhs.false
	cmpq	$0, -24(%rbp)
	jne	.LBB17_3
.LBB17_2:                               # %if.then
	jmp	.LBB17_6
.LBB17_3:                               # %if.end
	cmpq	$0, -24(%rbp)
	jle	.LBB17_5
# BB#4:                                 # %if.then.2
	movq	-8(%rbp), %rdi
	callq	buffer_intervals
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	adjust_intervals_for_insertion
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB17_6
.LBB17_5:                               # %if.else
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	subq	-24(%rbp), %rcx
	movq	%rcx, %rdx
	callq	adjust_intervals_for_deletion
.LBB17_6:                               # %if.end.5
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	offset_intervals, .Lfunc_end17-offset_intervals
	.cfi_endproc

	.align	16, 0x90
	.type	adjust_intervals_for_insertion,@function
adjust_intervals_for_insertion:         # @adjust_intervals_for_insertion
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
	subq	$320, %rsp              # imm = 0x140
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movb	$0, -41(%rbp)
	movq	-8(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rdx, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	BUFFERP
	xorl	%ecx, %ecx
	movl	$1, %r8d
	testb	$1, %al
	cmovnel	%r8d, %ecx
	movslq	%ecx, %rdx
	movq	%rdx, -64(%rbp)
	movq	-16(%rbp), %rdx
	cmpq	$0, -8(%rbp)
	movq	%rdx, -192(%rbp)        # 8-byte Spill
	jne	.LBB18_2
# BB#1:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	jmp	.LBB18_3
.LBB18_2:                               # %cond.false
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
.LBB18_3:                               # %cond.end
	movq	-200(%rbp), %rax        # 8-byte Reload
	addq	-64(%rbp), %rax
	movq	-192(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB18_8
# BB#4:                                 # %if.then
	cmpq	$0, -8(%rbp)
	jne	.LBB18_6
# BB#5:                                 # %cond.true.7
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	jmp	.LBB18_7
.LBB18_6:                               # %cond.false.8
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
.LBB18_7:                               # %cond.end.10
	movq	-208(%rbp), %rax        # 8-byte Reload
	addq	-64(%rbp), %rax
	movq	%rax, -16(%rbp)
	movb	$1, -41(%rbp)
.LBB18_8:                               # %if.end
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	find_interval
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rsi
	cmpq	8(%rsi), %rax
	je	.LBB18_34
# BB#9:                                 # %lor.lhs.false
	testb	$1, -41(%rbp)
	jne	.LBB18_34
# BB#10:                                # %if.then.18
	movl	$794, %edi              # imm = 0x31A
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	textget
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB18_13
# BB#11:                                # %land.lhs.true
	xorl	%edi, %edi
	movq	-88(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB18_13
# BB#12:                                # %if.then.28
	jmp	.LBB18_31
.LBB18_13:                              # %if.end.29
	movl	$468, %edi              # imm = 0x1D4
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	textget
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB18_16
# BB#14:                                # %land.lhs.true.37
	xorl	%edi, %edi
	movq	-80(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-240(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB18_16
# BB#15:                                # %if.then.41
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -72(%rbp)
	jmp	.LBB18_31
.LBB18_16:                              # %if.end.43
	jmp	.LBB18_17
.LBB18_17:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-72(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB18_30
# BB#18:                                # %for.body
                                        #   in Loop: Header=BB18_17 Depth=1
	movq	-72(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-80(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB18_21
# BB#19:                                # %land.lhs.true.52
                                        #   in Loop: Header=BB18_17 Depth=1
	movq	-96(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	Fmemq
	xorl	%edi, %edi
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-248(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB18_21
# BB#20:                                # %if.then.57
                                        #   in Loop: Header=BB18_17 Depth=1
	jmp	.LBB18_29
.LBB18_21:                              # %if.end.58
                                        #   in Loop: Header=BB18_17 Depth=1
	movq	-88(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB18_24
# BB#22:                                # %land.lhs.true.63
                                        #   in Loop: Header=BB18_17 Depth=1
	movq	-96(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	Fmemq
	xorl	%edi, %edi
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-256(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB18_24
# BB#23:                                # %if.then.68
	jmp	.LBB18_30
.LBB18_24:                              # %if.end.69
                                        #   in Loop: Header=BB18_17 Depth=1
	movq	-96(%rbp), %rdi
	movq	globals+2328, %rsi
	callq	Fassq
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB18_28
# BB#25:                                # %if.then.75
                                        #   in Loop: Header=BB18_17 Depth=1
	xorl	%edi, %edi
	movq	-104(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-264(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB18_27
# BB#26:                                # %if.then.79
                                        #   in Loop: Header=BB18_17 Depth=1
	jmp	.LBB18_29
.LBB18_27:                              # %if.end.80
	jmp	.LBB18_30
.LBB18_28:                              # %if.end.81
                                        #   in Loop: Header=BB18_17 Depth=1
	jmp	.LBB18_29
.LBB18_29:                              # %for.inc
                                        #   in Loop: Header=BB18_17 Depth=1
	movq	-72(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	Fcdr
	movq	%rax, -72(%rbp)
	jmp	.LBB18_17
.LBB18_30:                              # %for.end
	jmp	.LBB18_31
.LBB18_31:                              # %check_done
	xorl	%edi, %edi
	movq	-72(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-272(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB18_33
# BB#32:                                # %if.then.87
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	subq	8(%rcx), %rax
	movq	%rax, %rsi
	callq	split_interval_right
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	copy_properties
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB18_33:                              # %if.end.91
	jmp	.LBB18_34
.LBB18_34:                              # %if.end.92
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	8(%rcx), %rax
	je	.LBB18_36
# BB#35:                                # %lor.lhs.false.96
	testb	$1, -41(%rbp)
	je	.LBB18_72
.LBB18_36:                              # %if.then.99
	cmpq	$1, -16(%rbp)
	jne	.LBB18_38
# BB#37:                                # %if.then.103
	movq	$0, -112(%rbp)
	jmp	.LBB18_42
.LBB18_38:                              # %if.else
	testb	$1, -41(%rbp)
	je	.LBB18_40
# BB#39:                                # %if.then.105
	movq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	$0, -32(%rbp)
	jmp	.LBB18_41
.LBB18_40:                              # %if.else.106
	movq	-32(%rbp), %rdi
	callq	previous_interval
	movq	%rax, -112(%rbp)
.LBB18_41:                              # %if.end.108
	jmp	.LBB18_42
.LBB18_42:                              # %if.end.109
	cmpq	$0, -112(%rbp)
	je	.LBB18_44
# BB#43:                                # %cond.true.111
	movq	-112(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	jmp	.LBB18_45
.LBB18_44:                              # %cond.false.112
	movq	-32(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
.LBB18_45:                              # %cond.end.113
	movq	-280(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
.LBB18_46:                              # %for.cond.115
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB18_53
# BB#47:                                # %for.body.117
                                        #   in Loop: Header=BB18_46 Depth=1
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rdi
	callq	balance_possible_root_interval
	movq	%rax, -40(%rbp)
# BB#48:                                # %for.inc.121
                                        #   in Loop: Header=BB18_46 Depth=1
	movq	-40(%rbp), %rax
	movb	40(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB18_51
# BB#49:                                # %land.lhs.true.122
                                        #   in Loop: Header=BB18_46 Depth=1
	movq	-40(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB18_51
# BB#50:                                # %cond.true.126
                                        #   in Loop: Header=BB18_46 Depth=1
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	jmp	.LBB18_52
.LBB18_51:                              # %cond.false.129
                                        #   in Loop: Header=BB18_46 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -288(%rbp)        # 8-byte Spill
	jmp	.LBB18_52
.LBB18_52:                              # %cond.end.130
                                        #   in Loop: Header=BB18_46 Depth=1
	movq	-288(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB18_46
.LBB18_53:                              # %for.end.132
	jmp	.LBB18_54
.LBB18_54:                              # %do.body
	leaq	-184(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	$0, -176(%rbp)
	movq	$0, -184(%rbp)
	movq	$0, -160(%rbp)
	movq	$0, -168(%rbp)
	callq	set_interval_parent
	xorl	%edi, %edi
	movb	-144(%rbp), %cl
	andb	$-5, %cl
	movb	%cl, -144(%rbp)
	movb	-144(%rbp), %cl
	andb	$-9, %cl
	movb	%cl, -144(%rbp)
	movb	-144(%rbp), %cl
	andb	$-33, %cl
	movb	%cl, -144(%rbp)
	movb	-144(%rbp), %cl
	andb	$-17, %cl
	movb	%cl, -144(%rbp)
	callq	builtin_lisp_symbol
	leaq	-184(%rbp), %rdi
	movq	%rax, %rsi
	callq	set_interval_plist
# BB#55:                                # %do.end
	cmpq	$0, -112(%rbp)
	je	.LBB18_57
# BB#56:                                # %cond.true.148
	movq	-112(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	jmp	.LBB18_58
.LBB18_57:                              # %cond.false.150
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -296(%rbp)        # 8-byte Spill
.LBB18_58:                              # %cond.end.152
	movq	-296(%rbp), %rax        # 8-byte Reload
	movq	%rax, -120(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB18_60
# BB#59:                                # %cond.true.155
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	jmp	.LBB18_61
.LBB18_60:                              # %cond.false.157
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -304(%rbp)        # 8-byte Spill
.LBB18_61:                              # %cond.end.159
	movq	-304(%rbp), %rax        # 8-byte Reload
	movq	%rax, -128(%rbp)
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	merge_properties_sticky
	leaq	-184(%rbp), %rdi
	movq	%rax, %rsi
	callq	set_interval_plist
	cmpq	$0, -112(%rbp)
	jne	.LBB18_65
# BB#62:                                # %if.then.163
	leaq	-184(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	intervals_equal
	testb	$1, %al
	jne	.LBB18_64
# BB#63:                                # %if.then.165
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	split_interval_left
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	set_interval_plist
.LBB18_64:                              # %if.end.168
	jmp	.LBB18_71
.LBB18_65:                              # %if.else.169
	leaq	-184(%rbp), %rsi
	movq	-112(%rbp), %rdi
	callq	intervals_equal
	testb	$1, %al
	jne	.LBB18_70
# BB#66:                                # %if.then.171
	movq	-112(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-112(%rbp), %rcx
	subq	8(%rcx), %rax
	movq	%rax, %rsi
	callq	split_interval_right
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	set_interval_plist
	cmpq	$0, -32(%rbp)
	je	.LBB18_69
# BB#67:                                # %land.lhs.true.177
	movq	-112(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	intervals_equal
	testb	$1, %al
	jne	.LBB18_68
	jmp	.LBB18_69
.LBB18_68:                              # %if.then.180
	movq	-112(%rbp), %rdi
	callq	merge_interval_right
	movq	%rax, -312(%rbp)        # 8-byte Spill
.LBB18_69:                              # %if.end.182
	jmp	.LBB18_70
.LBB18_70:                              # %if.end.183
	jmp	.LBB18_71
.LBB18_71:                              # %if.end.184
	jmp	.LBB18_81
.LBB18_72:                              # %if.else.185
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB18_73:                              # %for.cond.186
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB18_80
# BB#74:                                # %for.body.188
                                        #   in Loop: Header=BB18_73 Depth=1
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rdi
	callq	balance_possible_root_interval
	movq	%rax, -40(%rbp)
# BB#75:                                # %for.inc.192
                                        #   in Loop: Header=BB18_73 Depth=1
	movq	-40(%rbp), %rax
	movb	40(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB18_78
# BB#76:                                # %land.lhs.true.197
                                        #   in Loop: Header=BB18_73 Depth=1
	movq	-40(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB18_78
# BB#77:                                # %cond.true.202
                                        #   in Loop: Header=BB18_73 Depth=1
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	jmp	.LBB18_79
.LBB18_78:                              # %cond.false.205
                                        #   in Loop: Header=BB18_73 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	jmp	.LBB18_79
.LBB18_79:                              # %cond.end.206
                                        #   in Loop: Header=BB18_73 Depth=1
	movq	-320(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB18_73
.LBB18_80:                              # %for.end.208
	jmp	.LBB18_81
.LBB18_81:                              # %if.end.209
	movq	-8(%rbp), %rax
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	retq
.Lfunc_end18:
	.size	adjust_intervals_for_insertion, .Lfunc_end18-adjust_intervals_for_insertion
	.cfi_endproc

	.align	16, 0x90
	.type	adjust_intervals_for_deletion,@function
adjust_intervals_for_deletion:          # @adjust_intervals_for_deletion
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	buffer_intervals
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	BUFFERP
	xorl	%ecx, %ecx
	movl	$1, %r8d
	testb	$1, %al
	cmovnel	%r8d, %ecx
	movslq	%ecx, %rdx
	movq	%rdx, -56(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB19_2
# BB#1:                                 # %if.then
	jmp	.LBB19_25
.LBB19_2:                               # %if.end
	movq	-24(%rbp), %rax
	cmpq	$0, -40(%rbp)
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jne	.LBB19_4
# BB#3:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	jmp	.LBB19_5
.LBB19_4:                               # %cond.false
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB19_5:                               # %cond.end
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB19_7
# BB#6:                                 # %if.then.6
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	set_buffer_intervals
	jmp	.LBB19_25
.LBB19_7:                               # %if.end.7
	movq	-40(%rbp), %rax
	movb	40(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB19_9
# BB#8:                                 # %lor.lhs.false
	movq	-40(%rbp), %rax
	cmpq	$0, 32(%rax)
	jne	.LBB19_12
.LBB19_9:                               # %land.lhs.true
	movq	-40(%rbp), %rax
	cmpq	$0, 16(%rax)
	jne	.LBB19_12
# BB#10:                                # %land.lhs.true.14
	movq	-40(%rbp), %rax
	cmpq	$0, 24(%rax)
	jne	.LBB19_12
# BB#11:                                # %if.then.17
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rdx
	subq	%rax, %rdx
	movq	%rdx, (%rcx)
	jmp	.LBB19_25
.LBB19_12:                              # %if.end.19
	movq	-16(%rbp), %rax
	movq	-56(%rbp), %rcx
	cmpq	$0, -40(%rbp)
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	jne	.LBB19_14
# BB#13:                                # %cond.true.22
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB19_15
.LBB19_14:                              # %cond.false.23
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB19_15:                              # %cond.end.25
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-88(%rbp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	movq	-80(%rbp), %rax         # 8-byte Reload
	cmpq	%rcx, %rax
	jle	.LBB19_20
# BB#16:                                # %if.then.29
	movq	-56(%rbp), %rax
	cmpq	$0, -40(%rbp)
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jne	.LBB19_18
# BB#17:                                # %cond.true.32
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB19_19
.LBB19_18:                              # %cond.false.33
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB19_19:                              # %cond.end.35
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-104(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	movq	%rcx, -16(%rbp)
.LBB19_20:                              # %if.end.38
	jmp	.LBB19_21
.LBB19_21:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	jle	.LBB19_25
# BB#22:                                # %while.body
                                        #   in Loop: Header=BB19_21 Depth=1
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rax
	subq	-56(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rsi
	callq	interval_deletion_adjustment
	movq	-32(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	buffer_intervals
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rdx
	cmpq	(%rdx), %rax
	jne	.LBB19_24
# BB#23:                                # %if.then.48
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	set_buffer_intervals
	jmp	.LBB19_25
.LBB19_24:                              # %if.end.49
                                        #   in Loop: Header=BB19_21 Depth=1
	jmp	.LBB19_21
.LBB19_25:                              # %while.end
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	adjust_intervals_for_deletion, .Lfunc_end19-adjust_intervals_for_deletion
	.cfi_endproc

	.globl	merge_interval_left
	.align	16, 0x90
	.type	merge_interval_left,@function
merge_interval_left:                    # @merge_interval_left
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
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB20_2
# BB#1:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	jmp	.LBB20_12
.LBB20_2:                               # %cond.false
	cmpq	$0, -16(%rbp)
	jne	.LBB20_4
# BB#3:                                 # %cond.true.2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB20_5
.LBB20_4:                               # %cond.false.3
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB20_5:                               # %cond.end
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	-16(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jne	.LBB20_7
# BB#6:                                 # %cond.true.5
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	jmp	.LBB20_8
.LBB20_7:                               # %cond.false.6
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB20_8:                               # %cond.end.9
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	-56(%rbp), %rcx         # 8-byte Reload
	subq	%rax, %rcx
	movq	-16(%rbp), %rax
	cmpq	$0, 16(%rax)
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	jne	.LBB20_10
# BB#9:                                 # %cond.true.12
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB20_11
.LBB20_10:                              # %cond.false.13
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB20_11:                              # %cond.end.16
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	-72(%rbp), %rcx         # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
.LBB20_12:                              # %cond.end.19
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB20_17
# BB#13:                                # %if.then
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB20_14:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpq	$0, 24(%rax)
	sete	%cl
	xorb	$-1, %cl
	testb	$1, %cl
	jne	.LBB20_15
	jmp	.LBB20_16
.LBB20_15:                              # %while.body
                                        #   in Loop: Header=BB20_14 Depth=1
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB20_14
.LBB20_16:                              # %while.end
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rdi
	callq	delete_interval
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB20_27
.LBB20_17:                              # %if.end
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rdx
	subq	%rax, %rdx
	movq	%rdx, (%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB20_18:                              # %while.cond.32
                                        # =>This Inner Loop Header: Depth=1
	movb	$1, %al
	movq	-32(%rbp), %rcx
	movb	40(%rcx), %dl
	andb	$1, %dl
	testb	$1, %dl
	movb	%al, -81(%rbp)          # 1-byte Spill
	jne	.LBB20_20
# BB#19:                                # %lor.rhs
                                        #   in Loop: Header=BB20_18 Depth=1
	movq	-32(%rbp), %rax
	cmpq	$0, 32(%rax)
	sete	%cl
	movb	%cl, -81(%rbp)          # 1-byte Spill
.LBB20_20:                              # %lor.end
                                        #   in Loop: Header=BB20_18 Depth=1
	movb	-81(%rbp), %al          # 1-byte Reload
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB20_21
	jmp	.LBB20_26
.LBB20_21:                              # %while.body.35
                                        #   in Loop: Header=BB20_18 Depth=1
	movq	-32(%rbp), %rax
	movb	40(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB20_25
# BB#22:                                # %lor.lhs.false
                                        #   in Loop: Header=BB20_18 Depth=1
	movq	-32(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB20_25
# BB#23:                                # %land.lhs.true
                                        #   in Loop: Header=BB20_18 Depth=1
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB20_25
# BB#24:                                # %if.then.47
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	delete_interval
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB20_27
.LBB20_25:                              # %if.end.50
                                        #   in Loop: Header=BB20_18 Depth=1
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rdx
	subq	%rax, %rdx
	movq	%rdx, (%rcx)
	jmp	.LBB20_18
.LBB20_26:                              # %while.end.55
	callq	emacs_abort
.LBB20_27:                              # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	merge_interval_left, .Lfunc_end20-merge_interval_left
	.cfi_endproc

	.align	16, 0x90
	.type	delete_interval,@function
delete_interval:                        # @delete_interval
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB21_2
# BB#1:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	jmp	.LBB21_12
.LBB21_2:                               # %cond.false
	cmpq	$0, -8(%rbp)
	jne	.LBB21_4
# BB#3:                                 # %cond.true.2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB21_5
.LBB21_4:                               # %cond.false.3
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB21_5:                               # %cond.end
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	-8(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jne	.LBB21_7
# BB#6:                                 # %cond.true.5
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	jmp	.LBB21_8
.LBB21_7:                               # %cond.false.6
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB21_8:                               # %cond.end.9
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	-56(%rbp), %rcx         # 8-byte Reload
	subq	%rax, %rcx
	movq	-8(%rbp), %rax
	cmpq	$0, 16(%rax)
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	jne	.LBB21_10
# BB#9:                                 # %cond.true.12
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB21_11
.LBB21_10:                              # %cond.false.13
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB21_11:                              # %cond.end.16
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	-72(%rbp), %rcx         # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
.LBB21_12:                              # %cond.end.19
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movb	40(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB21_14
# BB#13:                                # %lor.lhs.false
	movq	-8(%rbp), %rax
	cmpq	$0, 32(%rax)
	jne	.LBB21_23
.LBB21_14:                              # %if.then
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	delete_node
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB21_16
# BB#15:                                # %if.then.23
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	set_interval_object
.LBB21_16:                              # %if.end
	movq	-32(%rbp), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB21_17
	jmp	.LBB21_18
.LBB21_17:                              # %if.then.25
	movq	-32(%rbp), %rdi
	callq	XBUFFER
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	set_buffer_intervals
	jmp	.LBB21_22
.LBB21_18:                              # %if.else
	movq	-32(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB21_19
	jmp	.LBB21_20
.LBB21_19:                              # %if.then.28
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	set_string_intervals
	jmp	.LBB21_21
.LBB21_20:                              # %if.else.29
	callq	emacs_abort
.LBB21_21:                              # %if.end.30
	jmp	.LBB21_22
.LBB21_22:                              # %if.end.31
	jmp	.LBB21_32
.LBB21_23:                              # %if.end.32
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movb	40(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB21_29
# BB#24:                                # %lor.lhs.false.39
	movq	-8(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB21_29
# BB#25:                                # %land.lhs.true
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB21_29
# BB#26:                                # %if.then.47
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	delete_node
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	set_interval_left
	movq	-16(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB21_28
# BB#27:                                # %if.then.51
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	set_interval_parent
.LBB21_28:                              # %if.end.53
	jmp	.LBB21_32
.LBB21_29:                              # %if.else.54
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	delete_node
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	set_interval_right
	movq	-16(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB21_31
# BB#30:                                # %if.then.58
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	set_interval_parent
.LBB21_31:                              # %if.end.60
	jmp	.LBB21_32
.LBB21_32:                              # %if.end.61
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	delete_interval, .Lfunc_end21-delete_interval
	.cfi_endproc

	.globl	graft_intervals_into_buffer
	.align	16, 0x90
	.type	graft_intervals_into_buffer,@function
graft_intervals_into_buffer:            # @graft_intervals_into_buffer
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
	subq	$480, %rsp              # imm = 0x1E0
	movb	%r8b, %al
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	andb	$1, %al
	movb	%al, -33(%rbp)
	movq	-32(%rbp), %rdi
	callq	buffer_intervals
	movq	%rax, -48(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB22_6
# BB#1:                                 # %if.then
	testb	$1, -33(%rbp)
	jne	.LBB22_5
# BB#2:                                 # %land.lhs.true
	cmpq	$0, -48(%rbp)
	je	.LBB22_5
# BB#3:                                 # %land.lhs.true.3
	cmpq	$0, -24(%rbp)
	jle	.LBB22_5
# BB#4:                                 # %if.then.4
	movl	$5, %esi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	xorl	%edi, %edi
	movq	%rax, -88(%rbp)
	movq	-16(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-16(%rbp), %rcx
	addq	-24(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	callq	find_interval
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movq	-144(%rbp), %rdx        # 8-byte Reload
	movq	-152(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	callq	set_text_properties_1
.LBB22_5:                               # %if.end
	movq	-32(%rbp), %rdi
	callq	buffer_balance_intervals
	jmp	.LBB22_99
.LBB22_6:                               # %if.end.11
	movq	-32(%rbp), %rax
	movq	720(%rax), %rax
	movq	16(%rax), %rax
	subq	$1, %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB22_8
# BB#7:                                 # %if.then.13
	movl	$5, %esi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -96(%rbp)
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	-96(%rbp), %rsi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	reproduce_tree_obj
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	set_buffer_intervals
	movq	-32(%rbp), %rdi
	callq	buffer_intervals
	movq	$1, 8(%rax)
	jmp	.LBB22_99
.LBB22_8:                               # %if.else
	cmpq	$0, -48(%rbp)
	jne	.LBB22_10
# BB#9:                                 # %if.then.20
	movl	$5, %esi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rdi
	callq	create_root_interval
	movq	%rax, -48(%rbp)
.LBB22_10:                              # %if.end.24
	jmp	.LBB22_11
.LBB22_11:                              # %if.end.25
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	find_interval
	movq	%rax, -56(%rbp)
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	interval_start_pos
	movslq	%eax, %rsi
	movq	-168(%rbp), %rdi        # 8-byte Reload
	callq	find_interval
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	-56(%rbp), %rsi
	cmpq	8(%rsi), %rax
	jle	.LBB22_13
# BB#12:                                # %if.then.32
	movq	-72(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-56(%rbp), %rcx
	subq	8(%rcx), %rax
	movq	%rax, %rsi
	callq	split_interval_left
	movq	%rax, -112(%rbp)
	movq	-56(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	copy_properties
	movq	-16(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, 8(%rcx)
	jmp	.LBB22_14
.LBB22_13:                              # %if.else.37
	movq	-56(%rbp), %rdi
	callq	previous_interval
	movq	%rax, -120(%rbp)
.LBB22_14:                              # %if.end.39
	movq	$0, -80(%rbp)
.LBB22_15:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB22_98
# BB#16:                                # %while.body
                                        #   in Loop: Header=BB22_15 Depth=1
	cmpq	$0, -64(%rbp)
	jne	.LBB22_18
# BB#17:                                # %cond.true
                                        #   in Loop: Header=BB22_15 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	jmp	.LBB22_28
.LBB22_18:                              # %cond.false
                                        #   in Loop: Header=BB22_15 Depth=1
	cmpq	$0, -64(%rbp)
	jne	.LBB22_20
# BB#19:                                # %cond.true.45
                                        #   in Loop: Header=BB22_15 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	jmp	.LBB22_21
.LBB22_20:                              # %cond.false.46
                                        #   in Loop: Header=BB22_15 Depth=1
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
.LBB22_21:                              # %cond.end
                                        #   in Loop: Header=BB22_15 Depth=1
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	-64(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jne	.LBB22_23
# BB#22:                                # %cond.true.49
                                        #   in Loop: Header=BB22_15 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	jmp	.LBB22_24
.LBB22_23:                              # %cond.false.50
                                        #   in Loop: Header=BB22_15 Depth=1
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
.LBB22_24:                              # %cond.end.53
                                        #   in Loop: Header=BB22_15 Depth=1
	movq	-200(%rbp), %rax        # 8-byte Reload
	movq	-192(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	-64(%rbp), %rax
	cmpq	$0, 16(%rax)
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	jne	.LBB22_26
# BB#25:                                # %cond.true.58
                                        #   in Loop: Header=BB22_15 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	jmp	.LBB22_27
.LBB22_26:                              # %cond.false.59
                                        #   in Loop: Header=BB22_15 Depth=1
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
.LBB22_27:                              # %cond.end.62
                                        #   in Loop: Header=BB22_15 Depth=1
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	-208(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
.LBB22_28:                              # %cond.end.65
                                        #   in Loop: Header=BB22_15 Depth=1
	movq	-176(%rbp), %rax        # 8-byte Reload
	subq	-80(%rbp), %rax
	cmpq	$0, -56(%rbp)
	movq	%rax, -224(%rbp)        # 8-byte Spill
	jne	.LBB22_30
# BB#29:                                # %cond.true.70
                                        #   in Loop: Header=BB22_15 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	jmp	.LBB22_40
.LBB22_30:                              # %cond.false.71
                                        #   in Loop: Header=BB22_15 Depth=1
	cmpq	$0, -56(%rbp)
	jne	.LBB22_32
# BB#31:                                # %cond.true.74
                                        #   in Loop: Header=BB22_15 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	jmp	.LBB22_33
.LBB22_32:                              # %cond.false.75
                                        #   in Loop: Header=BB22_15 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
.LBB22_33:                              # %cond.end.77
                                        #   in Loop: Header=BB22_15 Depth=1
	movq	-240(%rbp), %rax        # 8-byte Reload
	movq	-56(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -248(%rbp)        # 8-byte Spill
	jne	.LBB22_35
# BB#34:                                # %cond.true.82
                                        #   in Loop: Header=BB22_15 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	jmp	.LBB22_36
.LBB22_35:                              # %cond.false.83
                                        #   in Loop: Header=BB22_15 Depth=1
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
.LBB22_36:                              # %cond.end.86
                                        #   in Loop: Header=BB22_15 Depth=1
	movq	-256(%rbp), %rax        # 8-byte Reload
	movq	-248(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	-56(%rbp), %rax
	cmpq	$0, 16(%rax)
	movq	%rcx, -264(%rbp)        # 8-byte Spill
	jne	.LBB22_38
# BB#37:                                # %cond.true.92
                                        #   in Loop: Header=BB22_15 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -272(%rbp)        # 8-byte Spill
	jmp	.LBB22_39
.LBB22_38:                              # %cond.false.93
                                        #   in Loop: Header=BB22_15 Depth=1
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
.LBB22_39:                              # %cond.end.96
                                        #   in Loop: Header=BB22_15 Depth=1
	movq	-272(%rbp), %rax        # 8-byte Reload
	movq	-264(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -232(%rbp)        # 8-byte Spill
.LBB22_40:                              # %cond.end.99
                                        #   in Loop: Header=BB22_15 Depth=1
	movq	-232(%rbp), %rax        # 8-byte Reload
	movq	-224(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jge	.LBB22_54
# BB#41:                                # %if.then.103
                                        #   in Loop: Header=BB22_15 Depth=1
	movq	-56(%rbp), %rdi
	cmpq	$0, -64(%rbp)
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	jne	.LBB22_43
# BB#42:                                # %cond.true.106
                                        #   in Loop: Header=BB22_15 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -288(%rbp)        # 8-byte Spill
	jmp	.LBB22_53
.LBB22_43:                              # %cond.false.107
                                        #   in Loop: Header=BB22_15 Depth=1
	cmpq	$0, -64(%rbp)
	jne	.LBB22_45
# BB#44:                                # %cond.true.110
                                        #   in Loop: Header=BB22_15 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -296(%rbp)        # 8-byte Spill
	jmp	.LBB22_46
.LBB22_45:                              # %cond.false.111
                                        #   in Loop: Header=BB22_15 Depth=1
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
.LBB22_46:                              # %cond.end.113
                                        #   in Loop: Header=BB22_15 Depth=1
	movq	-296(%rbp), %rax        # 8-byte Reload
	movq	-64(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -304(%rbp)        # 8-byte Spill
	jne	.LBB22_48
# BB#47:                                # %cond.true.118
                                        #   in Loop: Header=BB22_15 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -312(%rbp)        # 8-byte Spill
	jmp	.LBB22_49
.LBB22_48:                              # %cond.false.119
                                        #   in Loop: Header=BB22_15 Depth=1
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
.LBB22_49:                              # %cond.end.122
                                        #   in Loop: Header=BB22_15 Depth=1
	movq	-312(%rbp), %rax        # 8-byte Reload
	movq	-304(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	-64(%rbp), %rax
	cmpq	$0, 16(%rax)
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	jne	.LBB22_51
# BB#50:                                # %cond.true.128
                                        #   in Loop: Header=BB22_15 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -328(%rbp)        # 8-byte Spill
	jmp	.LBB22_52
.LBB22_51:                              # %cond.false.129
                                        #   in Loop: Header=BB22_15 Depth=1
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
.LBB22_52:                              # %cond.end.132
                                        #   in Loop: Header=BB22_15 Depth=1
	movq	-328(%rbp), %rax        # 8-byte Reload
	movq	-320(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -288(%rbp)        # 8-byte Spill
.LBB22_53:                              # %cond.end.135
                                        #   in Loop: Header=BB22_15 Depth=1
	movq	-288(%rbp), %rax        # 8-byte Reload
	subq	-80(%rbp), %rax
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	split_interval_left
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	copy_properties
	jmp	.LBB22_55
.LBB22_54:                              # %if.else.139
                                        #   in Loop: Header=BB22_15 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -72(%rbp)
.LBB22_55:                              # %if.end.140
                                        #   in Loop: Header=BB22_15 Depth=1
	testb	$1, -33(%rbp)
	je	.LBB22_57
# BB#56:                                # %if.then.142
                                        #   in Loop: Header=BB22_15 Depth=1
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	merge_properties
	jmp	.LBB22_58
.LBB22_57:                              # %if.else.143
                                        #   in Loop: Header=BB22_15 Depth=1
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	copy_properties
.LBB22_58:                              # %if.end.144
                                        #   in Loop: Header=BB22_15 Depth=1
	cmpq	$0, -72(%rbp)
	jne	.LBB22_60
# BB#59:                                # %cond.true.147
                                        #   in Loop: Header=BB22_15 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -336(%rbp)        # 8-byte Spill
	jmp	.LBB22_70
.LBB22_60:                              # %cond.false.148
                                        #   in Loop: Header=BB22_15 Depth=1
	cmpq	$0, -72(%rbp)
	jne	.LBB22_62
# BB#61:                                # %cond.true.151
                                        #   in Loop: Header=BB22_15 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -344(%rbp)        # 8-byte Spill
	jmp	.LBB22_63
.LBB22_62:                              # %cond.false.152
                                        #   in Loop: Header=BB22_15 Depth=1
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
.LBB22_63:                              # %cond.end.154
                                        #   in Loop: Header=BB22_15 Depth=1
	movq	-344(%rbp), %rax        # 8-byte Reload
	movq	-72(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -352(%rbp)        # 8-byte Spill
	jne	.LBB22_65
# BB#64:                                # %cond.true.159
                                        #   in Loop: Header=BB22_15 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -360(%rbp)        # 8-byte Spill
	jmp	.LBB22_66
.LBB22_65:                              # %cond.false.160
                                        #   in Loop: Header=BB22_15 Depth=1
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
.LBB22_66:                              # %cond.end.163
                                        #   in Loop: Header=BB22_15 Depth=1
	movq	-360(%rbp), %rax        # 8-byte Reload
	movq	-352(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	-72(%rbp), %rax
	cmpq	$0, 16(%rax)
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	jne	.LBB22_68
# BB#67:                                # %cond.true.169
                                        #   in Loop: Header=BB22_15 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -376(%rbp)        # 8-byte Spill
	jmp	.LBB22_69
.LBB22_68:                              # %cond.false.170
                                        #   in Loop: Header=BB22_15 Depth=1
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
.LBB22_69:                              # %cond.end.173
                                        #   in Loop: Header=BB22_15 Depth=1
	movq	-376(%rbp), %rax        # 8-byte Reload
	movq	-368(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -336(%rbp)        # 8-byte Spill
.LBB22_70:                              # %cond.end.176
                                        #   in Loop: Header=BB22_15 Depth=1
	movq	-336(%rbp), %rax        # 8-byte Reload
	cmpq	$0, -64(%rbp)
	movq	%rax, -384(%rbp)        # 8-byte Spill
	jne	.LBB22_72
# BB#71:                                # %cond.true.180
                                        #   in Loop: Header=BB22_15 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -392(%rbp)        # 8-byte Spill
	jmp	.LBB22_82
.LBB22_72:                              # %cond.false.181
                                        #   in Loop: Header=BB22_15 Depth=1
	cmpq	$0, -64(%rbp)
	jne	.LBB22_74
# BB#73:                                # %cond.true.184
                                        #   in Loop: Header=BB22_15 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -400(%rbp)        # 8-byte Spill
	jmp	.LBB22_75
.LBB22_74:                              # %cond.false.185
                                        #   in Loop: Header=BB22_15 Depth=1
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
.LBB22_75:                              # %cond.end.187
                                        #   in Loop: Header=BB22_15 Depth=1
	movq	-400(%rbp), %rax        # 8-byte Reload
	movq	-64(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -408(%rbp)        # 8-byte Spill
	jne	.LBB22_77
# BB#76:                                # %cond.true.192
                                        #   in Loop: Header=BB22_15 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -416(%rbp)        # 8-byte Spill
	jmp	.LBB22_78
.LBB22_77:                              # %cond.false.193
                                        #   in Loop: Header=BB22_15 Depth=1
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
.LBB22_78:                              # %cond.end.196
                                        #   in Loop: Header=BB22_15 Depth=1
	movq	-416(%rbp), %rax        # 8-byte Reload
	movq	-408(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	-64(%rbp), %rax
	cmpq	$0, 16(%rax)
	movq	%rcx, -424(%rbp)        # 8-byte Spill
	jne	.LBB22_80
# BB#79:                                # %cond.true.202
                                        #   in Loop: Header=BB22_15 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -432(%rbp)        # 8-byte Spill
	jmp	.LBB22_81
.LBB22_80:                              # %cond.false.203
                                        #   in Loop: Header=BB22_15 Depth=1
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
.LBB22_81:                              # %cond.end.206
                                        #   in Loop: Header=BB22_15 Depth=1
	movq	-432(%rbp), %rax        # 8-byte Reload
	movq	-424(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -392(%rbp)        # 8-byte Spill
.LBB22_82:                              # %cond.end.209
                                        #   in Loop: Header=BB22_15 Depth=1
	movq	-392(%rbp), %rax        # 8-byte Reload
	subq	-80(%rbp), %rax
	movq	-384(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB22_84
# BB#83:                                # %if.then.214
                                        #   in Loop: Header=BB22_15 Depth=1
	movq	-64(%rbp), %rdi
	callq	next_interval
	movq	%rax, -64(%rbp)
	movq	$0, -80(%rbp)
	jmp	.LBB22_97
.LBB22_84:                              # %if.else.216
                                        #   in Loop: Header=BB22_15 Depth=1
	cmpq	$0, -72(%rbp)
	jne	.LBB22_86
# BB#85:                                # %cond.true.219
                                        #   in Loop: Header=BB22_15 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -440(%rbp)        # 8-byte Spill
	jmp	.LBB22_96
.LBB22_86:                              # %cond.false.220
                                        #   in Loop: Header=BB22_15 Depth=1
	cmpq	$0, -72(%rbp)
	jne	.LBB22_88
# BB#87:                                # %cond.true.223
                                        #   in Loop: Header=BB22_15 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -448(%rbp)        # 8-byte Spill
	jmp	.LBB22_89
.LBB22_88:                              # %cond.false.224
                                        #   in Loop: Header=BB22_15 Depth=1
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
.LBB22_89:                              # %cond.end.226
                                        #   in Loop: Header=BB22_15 Depth=1
	movq	-448(%rbp), %rax        # 8-byte Reload
	movq	-72(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -456(%rbp)        # 8-byte Spill
	jne	.LBB22_91
# BB#90:                                # %cond.true.231
                                        #   in Loop: Header=BB22_15 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -464(%rbp)        # 8-byte Spill
	jmp	.LBB22_92
.LBB22_91:                              # %cond.false.232
                                        #   in Loop: Header=BB22_15 Depth=1
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
.LBB22_92:                              # %cond.end.235
                                        #   in Loop: Header=BB22_15 Depth=1
	movq	-464(%rbp), %rax        # 8-byte Reload
	movq	-456(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	-72(%rbp), %rax
	cmpq	$0, 16(%rax)
	movq	%rcx, -472(%rbp)        # 8-byte Spill
	jne	.LBB22_94
# BB#93:                                # %cond.true.241
                                        #   in Loop: Header=BB22_15 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -480(%rbp)        # 8-byte Spill
	jmp	.LBB22_95
.LBB22_94:                              # %cond.false.242
                                        #   in Loop: Header=BB22_15 Depth=1
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
.LBB22_95:                              # %cond.end.245
                                        #   in Loop: Header=BB22_15 Depth=1
	movq	-480(%rbp), %rax        # 8-byte Reload
	movq	-472(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -440(%rbp)        # 8-byte Spill
.LBB22_96:                              # %cond.end.248
                                        #   in Loop: Header=BB22_15 Depth=1
	movq	-440(%rbp), %rax        # 8-byte Reload
	addq	-80(%rbp), %rax
	movq	%rax, -80(%rbp)
.LBB22_97:                              # %if.end.251
                                        #   in Loop: Header=BB22_15 Depth=1
	movq	-72(%rbp), %rdi
	callq	next_interval
	movq	%rax, -56(%rbp)
	jmp	.LBB22_15
.LBB22_98:                              # %while.end
	movq	-32(%rbp), %rdi
	callq	buffer_balance_intervals
.LBB22_99:                              # %return
	addq	$480, %rsp              # imm = 0x1E0
	popq	%rbp
	retq
.Lfunc_end22:
	.size	graft_intervals_into_buffer, .Lfunc_end22-graft_intervals_into_buffer
	.cfi_endproc

	.align	16, 0x90
	.type	buffer_balance_intervals,@function
buffer_balance_intervals:               # @buffer_balance_intervals
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
	movq	-8(%rbp), %rdi
	callq	buffer_intervals
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB23_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	balance_an_interval
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	set_buffer_intervals
.LBB23_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	buffer_balance_intervals, .Lfunc_end23-buffer_balance_intervals
	.cfi_endproc

	.align	16, 0x90
	.type	reproduce_tree_obj,@function
reproduce_tree_obj:                     # @reproduce_tree_obj
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
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	reproduce_interval
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	set_interval_object
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	reproduce_tree_obj, .Lfunc_end24-reproduce_tree_obj
	.cfi_endproc

	.align	16, 0x90
	.type	interval_start_pos,@function
interval_start_pos:                     # @interval_start_pos
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
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB25_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB25_7
.LBB25_2:                               # %if.end
	movq	-16(%rbp), %rax
	movb	40(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB25_4
# BB#3:                                 # %if.then.1
	movl	$0, -4(%rbp)
	jmp	.LBB25_7
.LBB25_4:                               # %if.end.2
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB25_5
	jmp	.LBB25_6
.LBB25_5:                               # %if.then.3
	movl	$1, -4(%rbp)
	jmp	.LBB25_7
.LBB25_6:                               # %if.end.4
	movl	$0, -4(%rbp)
.LBB25_7:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	interval_start_pos, .Lfunc_end25-interval_start_pos
	.cfi_endproc

	.align	16, 0x90
	.type	merge_properties,@function
merge_properties:                       # @merge_properties
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB26_2
# BB#1:                                 # %lor.lhs.false
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB26_5
.LBB26_2:                               # %land.lhs.true
	cmpq	$0, -16(%rbp)
	je	.LBB26_4
# BB#3:                                 # %lor.lhs.false.2
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB26_5
.LBB26_4:                               # %if.then
	jmp	.LBB26_27
.LBB26_5:                               # %if.end
	jmp	.LBB26_6
.LBB26_6:                               # %do.body
	movq	-8(%rbp), %rax
	movb	40(%rax), %cl
	shrb	$2, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB26_8
# BB#7:                                 # %if.then.6
	movq	-16(%rbp), %rax
	movb	40(%rax), %cl
	andb	$-5, %cl
	orb	$4, %cl
	movb	%cl, 40(%rax)
.LBB26_8:                               # %if.end.10
	movq	-8(%rbp), %rax
	movb	40(%rax), %cl
	shrb	$3, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB26_10
# BB#9:                                 # %if.then.15
	movq	-16(%rbp), %rax
	movb	40(%rax), %cl
	andb	$-9, %cl
	orb	$8, %cl
	movb	%cl, 40(%rax)
.LBB26_10:                              # %if.end.20
	movq	-8(%rbp), %rax
	movb	40(%rax), %cl
	shrb	$4, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB26_12
# BB#11:                                # %if.then.25
	movq	-16(%rbp), %rax
	movb	40(%rax), %cl
	andb	$-17, %cl
	orb	$16, %cl
	movb	%cl, 40(%rax)
.LBB26_12:                              # %if.end.30
	movq	-8(%rbp), %rax
	movb	40(%rax), %cl
	shrb	$5, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB26_14
# BB#13:                                # %if.then.35
	movq	-16(%rbp), %rax
	movb	40(%rax), %cl
	andb	$-33, %cl
	orb	$32, %cl
	movb	%cl, 40(%rax)
.LBB26_14:                              # %if.end.40
	jmp	.LBB26_15
.LBB26_15:                              # %do.end
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB26_16:                              # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB26_18 Depth 2
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB26_27
# BB#17:                                # %while.body
                                        #   in Loop: Header=BB26_16 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	CHECK_CONS
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB26_18:                              # %while.cond.46
                                        #   Parent Loop BB26_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -57(%rbp)          # 1-byte Spill
	jne	.LBB26_20
# BB#19:                                # %land.rhs
                                        #   in Loop: Header=BB26_18 Depth=2
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	sete	%cl
	xorb	$-1, %cl
	movb	%cl, -57(%rbp)          # 1-byte Spill
.LBB26_20:                              # %land.end
                                        #   in Loop: Header=BB26_18 Depth=2
	movb	-57(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB26_21
	jmp	.LBB26_24
.LBB26_21:                              # %while.body.55
                                        #   in Loop: Header=BB26_18 Depth=2
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB26_23
# BB#22:                                # %if.then.63
                                        #   in Loop: Header=BB26_16 Depth=1
	jmp	.LBB26_24
.LBB26_23:                              # %if.end.64
                                        #   in Loop: Header=BB26_18 Depth=2
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB26_18
.LBB26_24:                              # %while.end
                                        #   in Loop: Header=BB26_16 Depth=1
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB26_26
# BB#25:                                # %if.then.71
                                        #   in Loop: Header=BB26_16 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	48(%rdx), %rsi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	Fcons
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	set_interval_plist
.LBB26_26:                              # %if.end.77
                                        #   in Loop: Header=BB26_16 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB26_16
.LBB26_27:                              # %while.end.81
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	merge_properties, .Lfunc_end26-merge_properties
	.cfi_endproc

	.globl	textget
	.align	16, 0x90
	.type	textget,@function
textget:                                # @textget
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
	subq	$16, %rsp
	movl	$1, %edx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	lookup_char_property
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	textget, .Lfunc_end27-textget
	.cfi_endproc

	.globl	lookup_char_property
	.align	16, 0x90
	.type	lookup_char_property,@function
lookup_char_property:                   # @lookup_char_property
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
	subq	$112, %rsp
	movb	%dl, %al
	xorl	%edx, %edx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	andb	$1, %al
	movb	%al, -25(%rbp)
	movl	%edx, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB28_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB28_10
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB28_1 Depth=1
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB28_4
# BB#3:                                 # %if.then
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	Fcar
	movq	%rax, -8(%rbp)
	jmp	.LBB28_25
.LBB28_4:                               # %if.end
                                        #   in Loop: Header=BB28_1 Depth=1
	movl	$241, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB28_8
# BB#5:                                 # %if.then.9
                                        #   in Loop: Header=BB28_1 Depth=1
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	Fcar
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB28_7
# BB#6:                                 # %if.then.18
                                        #   in Loop: Header=BB28_1 Depth=1
	movq	-56(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	Fget
	movq	%rax, -48(%rbp)
.LBB28_7:                               # %if.end.20
                                        #   in Loop: Header=BB28_1 Depth=1
	jmp	.LBB28_8
.LBB28_8:                               # %if.end.21
                                        #   in Loop: Header=BB28_1 Depth=1
	jmp	.LBB28_9
.LBB28_9:                               # %for.inc
                                        #   in Loop: Header=BB28_1 Depth=1
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	Fcdr
	movq	%rax, -40(%rbp)
	jmp	.LBB28_1
.LBB28_10:                              # %for.end
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB28_12
# BB#11:                                # %if.then.29
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB28_25
.LBB28_12:                              # %if.end.30
	movq	-24(%rbp), %rdi
	movq	globals+208, %rsi
	callq	Fassq
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB28_20
# BB#13:                                # %if.then.35
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB28_14:                              # %for.cond.39
                                        # =>This Inner Loop Header: Depth=1
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movb	%dil, %cl
	movq	-88(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	movb	%cl, -89(%rbp)          # 1-byte Spill
	jne	.LBB28_16
# BB#15:                                # %land.rhs
                                        #   in Loop: Header=BB28_14 Depth=1
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	sete	%dl
	movb	%dl, -89(%rbp)          # 1-byte Spill
.LBB28_16:                              # %land.end
                                        #   in Loop: Header=BB28_14 Depth=1
	movb	-89(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB28_17
	jmp	.LBB28_19
.LBB28_17:                              # %for.body.47
                                        #   in Loop: Header=BB28_14 Depth=1
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rsi
	callq	Fplist_get
	movq	%rax, -48(%rbp)
# BB#18:                                # %for.inc.51
                                        #   in Loop: Header=BB28_14 Depth=1
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB28_14
.LBB28_19:                              # %for.end.55
	jmp	.LBB28_20
.LBB28_20:                              # %if.end.56
	testb	$1, -25(%rbp)
	je	.LBB28_24
# BB#21:                                # %land.lhs.true
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB28_24
# BB#22:                                # %land.lhs.true.61
	movq	globals+504, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB28_24
# BB#23:                                # %if.then.66
	movq	globals+504, %rdi
	movq	-24(%rbp), %rsi
	callq	Fplist_get
	movq	%rax, -48(%rbp)
.LBB28_24:                              # %if.end.68
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB28_25:                              # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	lookup_char_property, .Lfunc_end28-lookup_char_property
	.cfi_endproc

	.globl	temp_set_point_both
	.align	16, 0x90
	.type	temp_set_point_both,@function
temp_set_point_both:                    # @temp_set_point_both
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	%rdx, 736(%rsi)
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	%rdx, 744(%rsi)
	popq	%rbp
	retq
.Lfunc_end29:
	.size	temp_set_point_both, .Lfunc_end29-temp_set_point_both
	.cfi_endproc

	.globl	temp_set_point
	.align	16, 0x90
	.type	temp_set_point,@function
temp_set_point:                         # @temp_set_point
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	callq	buf_charpos_to_bytepos
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	temp_set_point_both
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	temp_set_point, .Lfunc_end30-temp_set_point
	.cfi_endproc

	.globl	set_point
	.align	16, 0x90
	.type	set_point,@function
set_point:                              # @set_point
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	current_buffer, %rax
	movq	-8(%rbp), %rsi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	buf_charpos_to_bytepos
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	set_point_both
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	set_point, .Lfunc_end31-set_point
	.cfi_endproc

	.globl	set_point_both
	.align	16, 0x90
	.type	set_point_both,@function
set_point_both:                         # @set_point_both
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
	subq	$384, %rsp              # imm = 0x180
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	current_buffer, %rsi
	movq	736(%rsi), %rsi
	addq	$0, %rsi
	movq	%rsi, -64(%rbp)
	movq	-8(%rbp), %rsi
	cmpq	-64(%rbp), %rsi
	setl	%cl
	andb	$1, %cl
	movb	%cl, -65(%rbp)
	movq	current_buffer, %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_point_before_scroll
	movq	-8(%rbp), %rax
	movq	current_buffer, %rsi
	movq	736(%rsi), %rsi
	addq	$0, %rsi
	cmpq	%rsi, %rax
	jne	.LBB32_2
# BB#1:                                 # %if.then
	jmp	.LBB32_92
.LBB32_2:                               # %if.end
	callq	buffer_has_overlays
	andb	$1, %al
	movb	%al, -66(%rbp)
	movq	current_buffer, %rdi
	callq	buffer_intervals
	cmpq	$0, %rax
	jne	.LBB32_5
# BB#3:                                 # %land.lhs.true
	testb	$1, -66(%rbp)
	jne	.LBB32_5
# BB#4:                                 # %if.then.8
	movq	current_buffer, %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	callq	temp_set_point_both
	jmp	.LBB32_92
.LBB32_5:                               # %if.end.9
	movq	current_buffer, %rdi
	callq	buffer_intervals
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	find_interval
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	current_buffer, %rsi
	cmpq	752(%rsi), %rax
	jne	.LBB32_7
# BB#6:                                 # %if.then.13
	movq	$0, -40(%rbp)
	jmp	.LBB32_12
.LBB32_7:                               # %if.else
	cmpq	$0, -24(%rbp)
	je	.LBB32_10
# BB#8:                                 # %land.lhs.true.15
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB32_10
# BB#9:                                 # %if.then.17
	movq	-24(%rbp), %rdi
	callq	previous_interval
	movq	%rax, -40(%rbp)
	jmp	.LBB32_11
.LBB32_10:                              # %if.else.19
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB32_11:                              # %if.end.20
	jmp	.LBB32_12
.LBB32_12:                              # %if.end.21
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	jne	.LBB32_14
# BB#13:                                # %cond.true
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	subq	$1, %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB32_15
.LBB32_14:                              # %cond.false
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB32_15:                              # %cond.end
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, -56(%rbp)
	movq	current_buffer, %rdi
	callq	buffer_intervals
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	find_interval
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	current_buffer, %rsi
	cmpq	752(%rsi), %rax
	jne	.LBB32_17
# BB#16:                                # %if.then.32
	movq	$0, -48(%rbp)
	jmp	.LBB32_25
.LBB32_17:                              # %if.else.33
	cmpq	$0, -32(%rbp)
	je	.LBB32_20
# BB#18:                                # %land.lhs.true.35
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	current_buffer, %rcx
	movq	736(%rcx), %rcx
	addq	$0, %rcx
	cmpq	%rcx, %rax
	jne	.LBB32_20
# BB#19:                                # %if.then.40
	movq	-32(%rbp), %rdi
	callq	previous_interval
	movq	%rax, -48(%rbp)
	jmp	.LBB32_24
.LBB32_20:                              # %if.else.42
	movq	-56(%rbp), %rax
	movq	current_buffer, %rcx
	movq	736(%rcx), %rcx
	addq	$0, %rcx
	cmpq	%rcx, %rax
	je	.LBB32_22
# BB#21:                                # %if.then.46
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	$0, -32(%rbp)
	jmp	.LBB32_23
.LBB32_22:                              # %if.else.47
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB32_23:                              # %if.end.48
	jmp	.LBB32_24
.LBB32_24:                              # %if.end.49
	jmp	.LBB32_25
.LBB32_25:                              # %if.end.50
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB32_31
# BB#26:                                # %land.lhs.true.52
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB32_31
# BB#27:                                # %land.lhs.true.54
	cmpq	$0, -24(%rbp)
	je	.LBB32_31
# BB#28:                                # %land.lhs.true.56
	movl	$574, %edi              # imm = 0x23E
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	textget
	xorl	%edi, %edi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB32_31
# BB#29:                                # %land.lhs.true.61
	testb	$1, -66(%rbp)
	jne	.LBB32_31
# BB#30:                                # %if.then.63
	movq	current_buffer, %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	callq	temp_set_point_both
	jmp	.LBB32_92
.LBB32_31:                              # %if.end.64
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	globals+1096, %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB32_55
# BB#32:                                # %land.lhs.true.67
	cmpq	$0, -24(%rbp)
	je	.LBB32_34
# BB#33:                                # %land.lhs.true.69
	cmpq	$0, -40(%rbp)
	jne	.LBB32_35
.LBB32_34:                              # %lor.lhs.false
	testb	$1, -66(%rbp)
	je	.LBB32_55
.LBB32_35:                              # %land.lhs.true.72
	movq	-8(%rbp), %rax
	movq	current_buffer, %rcx
	cmpq	752(%rcx), %rax
	je	.LBB32_55
# BB#36:                                # %land.lhs.true.75
	movq	-8(%rbp), %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	je	.LBB32_55
# BB#37:                                # %if.then.78
	testb	$1, -65(%rbp)
	je	.LBB32_46
# BB#38:                                # %if.then.80
	movq	$-1, %rax
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	movq	%rax, %rdx
	callq	adjust_for_invis_intang
	movl	$556, %edi              # imm = 0x22C
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	-184(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fget_char_property
	xorl	%edi, %edi
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB32_45
# BB#39:                                # %if.then.88
	jmp	.LBB32_40
.LBB32_40:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-88(%rbp), %rdx
	sarq	$2, %rdx
	movq	current_buffer, %rsi
	cmpq	752(%rsi), %rdx
	movb	%cl, -193(%rbp)         # 1-byte Spill
	jle	.LBB32_42
# BB#41:                                # %land.rhs
                                        #   in Loop: Header=BB32_40 Depth=1
	movl	$556, %edi              # imm = 0x22C
	movq	-88(%rbp), %rax
	sarq	$2, %rax
	subq	$1, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	-216(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fget_char_property
	cmpq	-96(%rbp), %rax
	sete	%cl
	movb	%cl, -193(%rbp)         # 1-byte Spill
.LBB32_42:                              # %land.end
                                        #   in Loop: Header=BB32_40 Depth=1
	movb	-193(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB32_43
	jmp	.LBB32_44
.LBB32_43:                              # %while.body
                                        #   in Loop: Header=BB32_40 Depth=1
	xorl	%edi, %edi
	movq	-88(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fprevious_char_property_change
	movq	%rax, -88(%rbp)
	jmp	.LBB32_40
.LBB32_44:                              # %while.end
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	$-1, %rdx
	xorl	%ecx, %ecx
	movq	-88(%rbp), %rdi
	sarq	$2, %rdi
	callq	adjust_for_invis_intang
	movq	%rax, -8(%rbp)
.LBB32_45:                              # %if.end.103
	jmp	.LBB32_54
.LBB32_46:                              # %if.else.104
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	callq	adjust_for_invis_intang
	movl	$556, %edi              # imm = 0x22C
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -88(%rbp)
	movq	-8(%rbp), %rax
	subq	$1, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	-240(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fget_char_property
	xorl	%edi, %edi
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-248(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB32_53
# BB#47:                                # %if.then.116
	jmp	.LBB32_48
.LBB32_48:                              # %while.cond.117
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-88(%rbp), %rdx
	sarq	$2, %rdx
	movq	current_buffer, %rsi
	cmpq	768(%rsi), %rdx
	movb	%cl, -249(%rbp)         # 1-byte Spill
	jge	.LBB32_50
# BB#49:                                # %land.rhs.121
                                        #   in Loop: Header=BB32_48 Depth=1
	movl	$556, %edi              # imm = 0x22C
	movq	-88(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	-272(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fget_char_property
	cmpq	-96(%rbp), %rax
	sete	%cl
	movb	%cl, -249(%rbp)         # 1-byte Spill
.LBB32_50:                              # %land.end.126
                                        #   in Loop: Header=BB32_48 Depth=1
	movb	-249(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB32_51
	jmp	.LBB32_52
.LBB32_51:                              # %while.body.127
                                        #   in Loop: Header=BB32_48 Depth=1
	xorl	%edi, %edi
	movq	-88(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fnext_char_property_change
	movq	%rax, -88(%rbp)
	jmp	.LBB32_48
.LBB32_52:                              # %while.end.130
	movq	$-1, %rsi
	movl	$1, %eax
	movl	%eax, %edx
	xorl	%ecx, %ecx
	movq	-88(%rbp), %rdi
	sarq	$2, %rdi
	callq	adjust_for_invis_intang
	movq	%rax, -8(%rbp)
.LBB32_53:                              # %if.end.133
	jmp	.LBB32_54
.LBB32_54:                              # %if.end.134
	movq	current_buffer, %rdi
	movq	-8(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -16(%rbp)
.LBB32_55:                              # %if.end.136
	movq	-8(%rbp), %rax
	cmpq	-80(%rbp), %rax
	je	.LBB32_64
# BB#56:                                # %if.then.138
	movq	current_buffer, %rdi
	callq	buffer_intervals
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	find_interval
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	current_buffer, %rsi
	cmpq	752(%rsi), %rax
	jne	.LBB32_58
# BB#57:                                # %if.then.143
	movq	$0, -40(%rbp)
	jmp	.LBB32_63
.LBB32_58:                              # %if.else.144
	cmpq	$0, -24(%rbp)
	je	.LBB32_61
# BB#59:                                # %land.lhs.true.146
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB32_61
# BB#60:                                # %if.then.149
	movq	-24(%rbp), %rdi
	callq	previous_interval
	movq	%rax, -40(%rbp)
	jmp	.LBB32_62
.LBB32_61:                              # %if.else.151
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB32_62:                              # %if.end.152
	jmp	.LBB32_63
.LBB32_63:                              # %if.end.153
	jmp	.LBB32_64
.LBB32_64:                              # %if.end.154
	movq	current_buffer, %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	callq	temp_set_point_both
	xorl	%edi, %edi
	movq	globals+1096, %rdx
	movq	%rdx, -288(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-288(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB32_92
# BB#65:                                # %land.lhs.true.157
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	intervals_equal
	testb	$1, %al
	jne	.LBB32_66
	jmp	.LBB32_67
.LBB32_66:                              # %lor.lhs.false.159
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	intervals_equal
	testb	$1, %al
	jne	.LBB32_92
.LBB32_67:                              # %if.then.161
	cmpq	$0, -48(%rbp)
	je	.LBB32_69
# BB#68:                                # %if.then.163
	movl	$756, %edi              # imm = 0x2F4
	movq	-48(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	textget
	movq	%rax, -112(%rbp)
	jmp	.LBB32_70
.LBB32_69:                              # %if.else.167
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -112(%rbp)
.LBB32_70:                              # %if.end.169
	cmpq	$0, -32(%rbp)
	je	.LBB32_72
# BB#71:                                # %if.then.171
	movl	$756, %edi              # imm = 0x2F4
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	textget
	movq	%rax, -104(%rbp)
	jmp	.LBB32_73
.LBB32_72:                              # %if.else.175
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -104(%rbp)
.LBB32_73:                              # %if.end.177
	cmpq	$0, -40(%rbp)
	je	.LBB32_75
# BB#74:                                # %if.then.179
	movl	$755, %edi              # imm = 0x2F3
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	textget
	movq	%rax, -128(%rbp)
	jmp	.LBB32_76
.LBB32_75:                              # %if.else.183
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -128(%rbp)
.LBB32_76:                              # %if.end.185
	cmpq	$0, -24(%rbp)
	je	.LBB32_78
# BB#77:                                # %if.then.187
	movl	$755, %edi              # imm = 0x2F3
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	textget
	movq	%rax, -120(%rbp)
	jmp	.LBB32_79
.LBB32_78:                              # %if.else.191
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -120(%rbp)
.LBB32_79:                              # %if.end.193
	movq	-112(%rbp), %rax
	cmpq	-128(%rbp), %rax
	je	.LBB32_82
# BB#80:                                # %land.lhs.true.195
	xorl	%edi, %edi
	movq	-112(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-328(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB32_82
# BB#81:                                # %if.then.198
	movq	-112(%rbp), %rdi
	movq	-64(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-8(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	call2
	movq	%rax, -336(%rbp)        # 8-byte Spill
.LBB32_82:                              # %if.end.204
	movq	-104(%rbp), %rax
	cmpq	-120(%rbp), %rax
	je	.LBB32_85
# BB#83:                                # %land.lhs.true.206
	xorl	%edi, %edi
	movq	-104(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-344(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB32_85
# BB#84:                                # %if.then.209
	movq	-104(%rbp), %rdi
	movq	-64(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-8(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	call2
	movq	%rax, -352(%rbp)        # 8-byte Spill
.LBB32_85:                              # %if.end.215
	movq	-128(%rbp), %rax
	cmpq	-112(%rbp), %rax
	je	.LBB32_88
# BB#86:                                # %land.lhs.true.217
	xorl	%edi, %edi
	movq	-128(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-360(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB32_88
# BB#87:                                # %if.then.220
	movq	-128(%rbp), %rdi
	movq	-64(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-8(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	call2
	movq	%rax, -368(%rbp)        # 8-byte Spill
.LBB32_88:                              # %if.end.226
	movq	-120(%rbp), %rax
	cmpq	-104(%rbp), %rax
	je	.LBB32_91
# BB#89:                                # %land.lhs.true.228
	xorl	%edi, %edi
	movq	-120(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-376(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB32_91
# BB#90:                                # %if.then.231
	movq	-120(%rbp), %rdi
	movq	-64(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-8(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	call2
	movq	%rax, -384(%rbp)        # 8-byte Spill
.LBB32_91:                              # %if.end.237
	jmp	.LBB32_92
.LBB32_92:                              # %if.end.238
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end32:
	.size	set_point_both, .Lfunc_end32-set_point_both
	.cfi_endproc

	.globl	set_point_from_marker
	.align	16, 0x90
	.type	set_point_from_marker,@function
set_point_from_marker:                  # @set_point_from_marker
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	XMARKER
	movq	8(%rax), %rax
	cmpq	current_buffer, %rax
	je	.LBB33_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.2, %rdi
	movq	-8(%rbp), %rsi
	callq	signal_error
.LBB33_2:                               # %if.end
	movq	current_buffer, %rax
	movq	752(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	marker_position
	movq	current_buffer, %rdi
	movq	768(%rdi), %rdx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	clip_to_bounds
	movq	current_buffer, %rdx
	movq	760(%rdx), %rdi
	movq	-8(%rbp), %rdx
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	marker_byte_position
	movq	current_buffer, %rdx
	movq	776(%rdx), %rdx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	clip_to_bounds
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	set_point_both
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	set_point_from_marker, .Lfunc_end33-set_point_from_marker
	.cfi_endproc

	.align	16, 0x90
	.type	adjust_for_invis_intang,@function
adjust_for_invis_intang:                # @adjust_for_invis_intang
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
	subq	$144, %rsp
	movb	%cl, %al
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	andb	$1, %al
	movb	%al, -33(%rbp)
	cmpq	$0, -32(%rbp)
	jge	.LBB34_2
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	addq	-32(%rbp), %rax
	movq	current_buffer, %rcx
	cmpq	752(%rcx), %rax
	jl	.LBB34_4
.LBB34_2:                               # %lor.lhs.false
	cmpq	$0, -32(%rbp)
	jle	.LBB34_5
# BB#3:                                 # %land.lhs.true.3
	movq	-16(%rbp), %rax
	addq	-32(%rbp), %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	jle	.LBB34_5
.LBB34_4:                               # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB34_17
.LBB34_5:                               # %if.end
	movl	$574, %edi              # imm = 0x23E
	movq	-16(%rbp), %rax
	addq	-24(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	leaq	-56(%rbp), %rcx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	get_char_property_and_overlay
	movq	%rax, -48(%rbp)
	testb	$1, -33(%rbp)
	je	.LBB34_7
# BB#6:                                 # %lor.lhs.false.10
	movl	$556, %edi              # imm = 0x22C
	movq	-64(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	Fget_char_property
	xorl	%edi, %edi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB34_16
.LBB34_7:                               # %land.lhs.true.16
	movl	$901, %edi              # imm = 0x385
	movq	current_buffer, %rax
	movq	400(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB34_9
# BB#8:                                 # %cond.true
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB34_16
	jmp	.LBB34_10
.LBB34_9:                               # %cond.false
	movq	-48(%rbp), %rdi
	movq	current_buffer, %rax
	movq	400(%rax), %rsi
	callq	invisible_prop
	cmpl	$0, %eax
	je	.LBB34_16
.LBB34_10:                              # %land.lhs.true.24
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB34_12
# BB#11:                                # %cond.true.27
	movl	$574, %edi              # imm = 0x23E
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-16(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	-144(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	text_property_stickiness
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movl	$1, %r9d
	cmpq	$0, -24(%rbp)
	cmovel	%r9d, %r8d
	cmpl	%r8d, %eax
	je	.LBB34_15
	jmp	.LBB34_16
.LBB34_12:                              # %cond.false.35
	cmpq	$0, -24(%rbp)
	jne	.LBB34_14
# BB#13:                                # %cond.true.37
	movq	-56(%rbp), %rdi
	callq	XOVERLAY
	movq	16(%rax), %rdi
	callq	XMARKER
	movl	(%rax), %ecx
	shrl	$31, %ecx
	movb	%cl, %dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	cmpl	$0, %ecx
	je	.LBB34_15
	jmp	.LBB34_16
.LBB34_14:                              # %cond.false.42
	movq	-56(%rbp), %rdi
	callq	XOVERLAY
	movq	24(%rax), %rdi
	callq	XMARKER
	movl	(%rax), %ecx
	shrl	$31, %ecx
	movb	%cl, %dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	cmpl	$1, %ecx
	jne	.LBB34_16
.LBB34_15:                              # %if.then.51
	movq	-32(%rbp), %rax
	addq	-16(%rbp), %rax
	movq	%rax, -16(%rbp)
.LBB34_16:                              # %if.end.53
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB34_17:                              # %return
	movq	-8(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	adjust_for_invis_intang, .Lfunc_end34-adjust_for_invis_intang
	.cfi_endproc

	.globl	move_if_not_intangible
	.align	16, 0x90
	.type	move_if_not_intangible,@function
move_if_not_intangible:                 # @move_if_not_intangible
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
	subq	$144, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	shlq	$2, %rdi
	addq	$2, %rdi
	movq	%rdi, -16(%rbp)
	movq	globals+1096, %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB35_2
# BB#1:                                 # %if.then
	jmp	.LBB35_29
.LBB35_2:                               # %if.else
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	cmpq	-8(%rbp), %rax
	jge	.LBB35_12
# BB#3:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	jge	.LBB35_12
# BB#4:                                 # %if.then.4
	movl	$556, %edi              # imm = 0x22C
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	Fget_char_property
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB35_11
# BB#5:                                 # %if.then.10
	jmp	.LBB35_6
.LBB35_6:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	sarq	$2, %rdx
	movq	current_buffer, %rsi
	cmpq	752(%rsi), %rdx
	movb	%cl, -57(%rbp)          # 1-byte Spill
	jle	.LBB35_8
# BB#7:                                 # %land.rhs
                                        #   in Loop: Header=BB35_6 Depth=1
	movl	$556, %edi              # imm = 0x22C
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	subq	$1, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	Fget_char_property
	cmpq	-24(%rbp), %rax
	sete	%cl
	movb	%cl, -57(%rbp)          # 1-byte Spill
.LBB35_8:                               # %land.end
                                        #   in Loop: Header=BB35_6 Depth=1
	movb	-57(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB35_9
	jmp	.LBB35_10
.LBB35_9:                               # %while.body
                                        #   in Loop: Header=BB35_6 Depth=1
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fprevious_char_property_change
	movq	%rax, -16(%rbp)
	jmp	.LBB35_6
.LBB35_10:                              # %while.end
	jmp	.LBB35_11
.LBB35_11:                              # %if.end
	jmp	.LBB35_28
.LBB35_12:                              # %if.else.22
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	current_buffer, %rcx
	cmpq	752(%rcx), %rax
	jle	.LBB35_21
# BB#13:                                # %if.then.26
	movl	$556, %edi              # imm = 0x22C
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	subq	$1, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fget_char_property
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB35_20
# BB#14:                                # %if.then.36
	jmp	.LBB35_15
.LBB35_15:                              # %while.cond.37
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	sarq	$2, %rdx
	movq	current_buffer, %rsi
	cmpq	768(%rsi), %rdx
	movb	%cl, -113(%rbp)         # 1-byte Spill
	jge	.LBB35_17
# BB#16:                                # %land.rhs.41
                                        #   in Loop: Header=BB35_15 Depth=1
	movl	$556, %edi              # imm = 0x22C
	movq	-16(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	-136(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fget_char_property
	cmpq	-24(%rbp), %rax
	sete	%cl
	movb	%cl, -113(%rbp)         # 1-byte Spill
.LBB35_17:                              # %land.end.46
                                        #   in Loop: Header=BB35_15 Depth=1
	movb	-113(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB35_18
	jmp	.LBB35_19
.LBB35_18:                              # %while.body.47
                                        #   in Loop: Header=BB35_15 Depth=1
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fnext_char_property_change
	movq	%rax, -16(%rbp)
	jmp	.LBB35_15
.LBB35_19:                              # %while.end.50
	jmp	.LBB35_20
.LBB35_20:                              # %if.end.51
	jmp	.LBB35_27
.LBB35_21:                              # %if.else.52
	movq	-8(%rbp), %rax
	movq	current_buffer, %rcx
	cmpq	752(%rcx), %rax
	jge	.LBB35_23
# BB#22:                                # %if.then.55
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB35_26
.LBB35_23:                              # %if.else.57
	movq	-8(%rbp), %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	jle	.LBB35_25
# BB#24:                                # %if.then.60
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB35_25:                              # %if.end.62
	jmp	.LBB35_26
.LBB35_26:                              # %if.end.63
	jmp	.LBB35_27
.LBB35_27:                              # %if.end.64
	jmp	.LBB35_28
.LBB35_28:                              # %if.end.65
	jmp	.LBB35_29
.LBB35_29:                              # %if.end.66
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	current_buffer, %rcx
	movq	736(%rcx), %rcx
	addq	$0, %rcx
	cmpq	%rcx, %rax
	je	.LBB35_31
# BB#30:                                # %if.then.71
	movq	-8(%rbp), %rdi
	callq	set_point
.LBB35_31:                              # %if.end.72
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	move_if_not_intangible, .Lfunc_end35-move_if_not_intangible
	.cfi_endproc

	.globl	get_property_and_range
	.align	16, 0x90
	.type	get_property_and_range,@function
get_property_and_range:                 # @get_property_and_range
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
	subq	$240, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	-56(%rbp), %rcx
	movl	%eax, %edi
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB36_2
# BB#1:                                 # %if.then
	movq	current_buffer, %rdi
	callq	buffer_intervals
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	find_interval
	movq	%rax, -64(%rbp)
	jmp	.LBB36_9
.LBB36_2:                               # %if.else
	movq	-56(%rbp), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB36_3
	jmp	.LBB36_4
.LBB36_3:                               # %if.then.4
	movq	-56(%rbp), %rdi
	callq	XBUFFER
	movq	%rax, %rdi
	callq	buffer_intervals
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	find_interval
	movq	%rax, -64(%rbp)
	jmp	.LBB36_8
.LBB36_4:                               # %if.else.8
	movq	-56(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB36_5
	jmp	.LBB36_6
.LBB36_5:                               # %if.then.10
	movq	-56(%rbp), %rdi
	callq	string_intervals
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	find_interval
	movq	%rax, -64(%rbp)
	jmp	.LBB36_7
.LBB36_6:                               # %if.else.13
	callq	emacs_abort
.LBB36_7:                               # %if.end
	jmp	.LBB36_8
.LBB36_8:                               # %if.end.14
	jmp	.LBB36_9
.LBB36_9:                               # %if.end.15
	cmpq	$0, -64(%rbp)
	je	.LBB36_23
# BB#10:                                # %lor.lhs.false
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$0, -64(%rbp)
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jne	.LBB36_12
# BB#11:                                # %cond.true
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB36_22
.LBB36_12:                              # %cond.false
	cmpq	$0, -64(%rbp)
	jne	.LBB36_14
# BB#13:                                # %cond.true.18
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB36_15
.LBB36_14:                              # %cond.false.19
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB36_15:                              # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-64(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jne	.LBB36_17
# BB#16:                                # %cond.true.21
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB36_18
.LBB36_17:                              # %cond.false.22
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB36_18:                              # %cond.end.25
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	-120(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	-64(%rbp), %rax
	cmpq	$0, 16(%rax)
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	jne	.LBB36_20
# BB#19:                                # %cond.true.28
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB36_21
.LBB36_20:                              # %cond.false.29
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB36_21:                              # %cond.end.32
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	-136(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
.LBB36_22:                              # %cond.end.35
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	cmpq	-16(%rbp), %rcx
	jg	.LBB36_24
.LBB36_23:                              # %if.then.38
	movb	$0, -1(%rbp)
	jmp	.LBB36_49
.LBB36_24:                              # %if.end.39
	movq	-64(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	textget
	xorl	%edi, %edi
	movq	-32(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB36_26
# BB#25:                                # %if.then.43
	movb	$0, -1(%rbp)
	jmp	.LBB36_49
.LBB36_26:                              # %if.end.44
	movq	-64(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rdi
	callq	previous_interval
	movq	%rax, -72(%rbp)
.LBB36_27:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -72(%rbp)
	movb	%cl, -153(%rbp)         # 1-byte Spill
	je	.LBB36_29
# BB#28:                                # %land.rhs
                                        #   in Loop: Header=BB36_27 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-72(%rbp), %rcx
	movq	48(%rcx), %rdi
	movq	-24(%rbp), %rsi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	textget
	movq	-168(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	movb	%dl, -153(%rbp)         # 1-byte Spill
.LBB36_29:                              # %land.end
                                        #   in Loop: Header=BB36_27 Depth=1
	movb	-153(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB36_30
	jmp	.LBB36_31
.LBB36_30:                              # %while.body
                                        #   in Loop: Header=BB36_27 Depth=1
	movq	-72(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-72(%rbp), %rdi
	callq	previous_interval
	movq	%rax, -72(%rbp)
	jmp	.LBB36_27
.LBB36_31:                              # %while.end
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-64(%rbp), %rdi
	callq	next_interval
	movq	%rax, -80(%rbp)
.LBB36_32:                              # %while.cond.53
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -80(%rbp)
	movb	%cl, -169(%rbp)         # 1-byte Spill
	je	.LBB36_34
# BB#33:                                # %land.rhs.55
                                        #   in Loop: Header=BB36_32 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-80(%rbp), %rcx
	movq	48(%rcx), %rdi
	movq	-24(%rbp), %rsi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	textget
	movq	-184(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	movb	%dl, -169(%rbp)         # 1-byte Spill
.LBB36_34:                              # %land.end.59
                                        #   in Loop: Header=BB36_32 Depth=1
	movb	-169(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB36_35
	jmp	.LBB36_36
.LBB36_35:                              # %while.body.60
                                        #   in Loop: Header=BB36_32 Depth=1
	movq	-80(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-80(%rbp), %rdi
	callq	next_interval
	movq	%rax, -80(%rbp)
	jmp	.LBB36_32
.LBB36_36:                              # %while.end.62
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$0, -64(%rbp)
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jne	.LBB36_38
# BB#37:                                # %cond.true.65
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	jmp	.LBB36_48
.LBB36_38:                              # %cond.false.66
	cmpq	$0, -64(%rbp)
	jne	.LBB36_40
# BB#39:                                # %cond.true.68
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	jmp	.LBB36_41
.LBB36_40:                              # %cond.false.69
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
.LBB36_41:                              # %cond.end.71
	movq	-208(%rbp), %rax        # 8-byte Reload
	movq	-64(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -216(%rbp)        # 8-byte Spill
	jne	.LBB36_43
# BB#42:                                # %cond.true.75
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	jmp	.LBB36_44
.LBB36_43:                              # %cond.false.76
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
.LBB36_44:                              # %cond.end.79
	movq	-224(%rbp), %rax        # 8-byte Reload
	movq	-216(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	-64(%rbp), %rax
	cmpq	$0, 16(%rax)
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	jne	.LBB36_46
# BB#45:                                # %cond.true.84
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	jmp	.LBB36_47
.LBB36_46:                              # %cond.false.85
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
.LBB36_47:                              # %cond.end.88
	movq	-240(%rbp), %rax        # 8-byte Reload
	movq	-232(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -200(%rbp)        # 8-byte Spill
.LBB36_48:                              # %cond.end.91
	movq	-200(%rbp), %rax        # 8-byte Reload
	movq	-192(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, (%rax)
	movb	$1, -1(%rbp)
.LBB36_49:                              # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	get_property_and_range, .Lfunc_end36-get_property_and_range
	.cfi_endproc

	.globl	get_local_map
	.align	16, 0x90
	.type	get_local_map,@function
get_local_map:                          # @get_local_map
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp111:
	.cfi_def_cfa_offset 16
.Ltmp112:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp113:
	.cfi_def_cfa_register %rbp
	subq	$272, %rsp              # imm = 0x110
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	cmpq	current_buffer, %rdx
	jne	.LBB37_2
# BB#1:                                 # %cond.true
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB37_6
.LBB37_2:                               # %cond.false
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB37_4
# BB#3:                                 # %cond.true.2
	movq	-24(%rbp), %rax
	movq	752(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB37_5
.LBB37_4:                               # %cond.false.4
	movq	-24(%rbp), %rax
	movq	368(%rax), %rdi
	callq	marker_position
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB37_5:                               # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB37_6:                               # %cond.end.7
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rcx
	cmpq	current_buffer, %rcx
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	jne	.LBB37_8
# BB#7:                                 # %cond.true.10
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB37_12
.LBB37_8:                               # %cond.false.11
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	376(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB37_10
# BB#9:                                 # %cond.true.14
	movq	-24(%rbp), %rax
	movq	768(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jmp	.LBB37_11
.LBB37_10:                              # %cond.false.16
	movq	-24(%rbp), %rax
	movq	376(%rax), %rdi
	callq	marker_position
	movq	%rax, -152(%rbp)        # 8-byte Spill
.LBB37_11:                              # %cond.end.19
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB37_12:                              # %cond.end.21
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	clip_to_bounds
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	cmpq	current_buffer, %rax
	jne	.LBB37_14
# BB#13:                                # %cond.true.25
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB37_18
.LBB37_14:                              # %cond.false.27
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB37_16
# BB#15:                                # %cond.true.31
	movq	-24(%rbp), %rax
	movq	752(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB37_17
.LBB37_16:                              # %cond.false.33
	movq	-24(%rbp), %rax
	movq	368(%rax), %rdi
	callq	marker_position
	movq	%rax, -176(%rbp)        # 8-byte Spill
.LBB37_17:                              # %cond.end.36
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, -160(%rbp)        # 8-byte Spill
.LBB37_18:                              # %cond.end.38
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rax
	cmpq	current_buffer, %rax
	jne	.LBB37_20
# BB#19:                                # %cond.true.41
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB37_24
.LBB37_20:                              # %cond.false.43
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	376(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB37_22
# BB#21:                                # %cond.true.47
	movq	-24(%rbp), %rax
	movq	768(%rax), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	jmp	.LBB37_23
.LBB37_22:                              # %cond.false.49
	movq	-24(%rbp), %rax
	movq	376(%rax), %rdi
	callq	marker_position
	movq	%rax, -200(%rbp)        # 8-byte Spill
.LBB37_23:                              # %cond.end.52
	movq	-200(%rbp), %rax        # 8-byte Reload
	movq	%rax, -184(%rbp)        # 8-byte Spill
.LBB37_24:                              # %cond.end.54
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, -72(%rbp)
	movq	-24(%rbp), %rax
	cmpq	current_buffer, %rax
	jne	.LBB37_26
# BB#25:                                # %cond.true.57
	movq	current_buffer, %rax
	movq	760(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	jmp	.LBB37_30
.LBB37_26:                              # %cond.false.58
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB37_28
# BB#27:                                # %cond.true.62
	movq	-24(%rbp), %rax
	movq	760(%rax), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	jmp	.LBB37_29
.LBB37_28:                              # %cond.false.64
	movq	-24(%rbp), %rax
	movq	368(%rax), %rdi
	callq	marker_byte_position
	movq	%rax, -224(%rbp)        # 8-byte Spill
.LBB37_29:                              # %cond.end.67
	movq	-224(%rbp), %rax        # 8-byte Reload
	movq	%rax, -208(%rbp)        # 8-byte Spill
.LBB37_30:                              # %cond.end.69
	movq	-208(%rbp), %rax        # 8-byte Reload
	movq	%rax, -80(%rbp)
	movq	-24(%rbp), %rax
	cmpq	current_buffer, %rax
	jne	.LBB37_32
# BB#31:                                # %cond.true.72
	movq	current_buffer, %rax
	movq	776(%rax), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	jmp	.LBB37_36
.LBB37_32:                              # %cond.false.73
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	376(%rax), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-240(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB37_34
# BB#33:                                # %cond.true.77
	movq	-24(%rbp), %rax
	movq	776(%rax), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	jmp	.LBB37_35
.LBB37_34:                              # %cond.false.79
	movq	-24(%rbp), %rax
	movq	376(%rax), %rdi
	callq	marker_byte_position
	movq	%rax, -248(%rbp)        # 8-byte Spill
.LBB37_35:                              # %cond.end.82
	movq	-248(%rbp), %rax        # 8-byte Reload
	movq	%rax, -232(%rbp)        # 8-byte Spill
.LBB37_36:                              # %cond.end.84
	movq	-232(%rbp), %rax        # 8-byte Reload
	movq	%rax, -88(%rbp)
	movq	-24(%rbp), %rax
	movq	$1, 752(%rax)
	movq	-24(%rbp), %rax
	movq	$1, 760(%rax)
	movq	-24(%rbp), %rax
	movq	720(%rax), %rax
	movq	16(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 768(%rcx)
	movq	-24(%rbp), %rax
	movq	720(%rax), %rax
	movq	32(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 776(%rcx)
	movq	-16(%rbp), %rdi
	callq	make_natnum
	movl	$5, %esi
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-56(%rbp), %rdx
	callq	Fget_char_property
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-256(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB37_38
# BB#37:                                # %if.then
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-56(%rbp), %rdx
	callq	Fget_pos_property
	movq	%rax, -40(%rbp)
.LBB37_38:                              # %if.end
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, 752(%rdx)
	movq	-80(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, 760(%rdx)
	movq	-72(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, 768(%rdx)
	movq	-88(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, 776(%rdx)
	movq	-40(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	get_keymap
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %edx
	cmpl	$3, %edx
	jne	.LBB37_40
# BB#39:                                # %if.then.104
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB37_43
.LBB37_40:                              # %if.end.105
	movl	$589, %edi              # imm = 0x24D
	movq	-32(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-264(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB37_42
# BB#41:                                # %if.then.109
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB37_43
.LBB37_42:                              # %if.else
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB37_43:                              # %return
	movq	-8(%rbp), %rax
	addq	$272, %rsp              # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end37:
	.size	get_local_map, .Lfunc_end37-get_local_map
	.cfi_endproc

	.globl	copy_intervals
	.align	16, 0x90
	.type	copy_intervals,@function
copy_intervals:                         # @copy_intervals
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp114:
	.cfi_def_cfa_offset 16
.Ltmp115:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp116:
	.cfi_def_cfa_register %rbp
	subq	$240, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB38_2
# BB#1:                                 # %lor.lhs.false
	cmpq	$0, -32(%rbp)
	jg	.LBB38_3
.LBB38_2:                               # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB38_47
.LBB38_3:                               # %if.end
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	find_interval
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rsi
	subq	8(%rsi), %rax
	addq	$1, %rax
	addq	-32(%rbp), %rax
	cmpq	$0, -40(%rbp)
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jne	.LBB38_5
# BB#4:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	jmp	.LBB38_15
.LBB38_5:                               # %cond.false
	cmpq	$0, -40(%rbp)
	jne	.LBB38_7
# BB#6:                                 # %cond.true.4
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB38_8
.LBB38_7:                               # %cond.false.5
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB38_8:                               # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-40(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jne	.LBB38_10
# BB#9:                                 # %cond.true.7
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB38_11
.LBB38_10:                              # %cond.false.8
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB38_11:                              # %cond.end.11
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-104(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	-40(%rbp), %rax
	cmpq	$0, 16(%rax)
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jne	.LBB38_13
# BB#12:                                # %cond.true.15
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB38_14
.LBB38_13:                              # %cond.false.16
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB38_14:                              # %cond.end.19
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	-120(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
.LBB38_15:                              # %cond.end.22
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jge	.LBB38_19
# BB#16:                                # %land.lhs.true
	cmpq	$0, -40(%rbp)
	je	.LBB38_18
# BB#17:                                # %lor.lhs.false.26
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB38_19
.LBB38_18:                              # %if.then.29
	movq	$0, -8(%rbp)
	jmp	.LBB38_47
.LBB38_19:                              # %if.end.30
	callq	make_interval
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	$0, 8(%rax)
	cmpq	$0, -40(%rbp)
	jne	.LBB38_21
# BB#20:                                # %cond.true.34
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB38_31
.LBB38_21:                              # %cond.false.35
	cmpq	$0, -40(%rbp)
	jne	.LBB38_23
# BB#22:                                # %cond.true.37
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	jmp	.LBB38_24
.LBB38_23:                              # %cond.false.38
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
.LBB38_24:                              # %cond.end.40
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	-40(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jne	.LBB38_26
# BB#25:                                # %cond.true.44
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	jmp	.LBB38_27
.LBB38_26:                              # %cond.false.45
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
.LBB38_27:                              # %cond.end.48
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	-160(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	-40(%rbp), %rax
	cmpq	$0, 16(%rax)
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	jne	.LBB38_29
# BB#28:                                # %cond.true.53
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	jmp	.LBB38_30
.LBB38_29:                              # %cond.false.54
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
.LBB38_30:                              # %cond.end.57
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	-176(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
.LBB38_31:                              # %cond.end.60
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rdx
	subq	8(%rdx), %rcx
	subq	%rcx, %rax
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	copy_properties
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
.LBB38_32:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jge	.LBB38_46
# BB#33:                                # %while.body
                                        #   in Loop: Header=BB38_32 Depth=1
	movq	-40(%rbp), %rdi
	callq	next_interval
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	split_interval_right
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	copy_properties
	cmpq	$0, -40(%rbp)
	jne	.LBB38_35
# BB#34:                                # %cond.true.70
                                        #   in Loop: Header=BB38_32 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	jmp	.LBB38_45
.LBB38_35:                              # %cond.false.71
                                        #   in Loop: Header=BB38_32 Depth=1
	cmpq	$0, -40(%rbp)
	jne	.LBB38_37
# BB#36:                                # %cond.true.73
                                        #   in Loop: Header=BB38_32 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	jmp	.LBB38_38
.LBB38_37:                              # %cond.false.74
                                        #   in Loop: Header=BB38_32 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
.LBB38_38:                              # %cond.end.76
                                        #   in Loop: Header=BB38_32 Depth=1
	movq	-200(%rbp), %rax        # 8-byte Reload
	movq	-40(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -208(%rbp)        # 8-byte Spill
	jne	.LBB38_40
# BB#39:                                # %cond.true.80
                                        #   in Loop: Header=BB38_32 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	jmp	.LBB38_41
.LBB38_40:                              # %cond.false.81
                                        #   in Loop: Header=BB38_32 Depth=1
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
.LBB38_41:                              # %cond.end.84
                                        #   in Loop: Header=BB38_32 Depth=1
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	-208(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	-40(%rbp), %rax
	cmpq	$0, 16(%rax)
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	jne	.LBB38_43
# BB#42:                                # %cond.true.89
                                        #   in Loop: Header=BB38_32 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	jmp	.LBB38_44
.LBB38_43:                              # %cond.false.90
                                        #   in Loop: Header=BB38_32 Depth=1
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
.LBB38_44:                              # %cond.end.93
                                        #   in Loop: Header=BB38_32 Depth=1
	movq	-232(%rbp), %rax        # 8-byte Reload
	movq	-224(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -192(%rbp)        # 8-byte Spill
.LBB38_45:                              # %cond.end.96
                                        #   in Loop: Header=BB38_32 Depth=1
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	addq	-64(%rbp), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB38_32
.LBB38_46:                              # %while.end
	movq	-48(%rbp), %rdi
	callq	balance_an_interval
	movq	%rax, -8(%rbp)
.LBB38_47:                              # %return
	movq	-8(%rbp), %rax
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	copy_intervals, .Lfunc_end38-copy_intervals
	.cfi_endproc

	.globl	copy_intervals_to_string
	.align	16, 0x90
	.type	copy_intervals_to_string,@function
copy_intervals_to_string:               # @copy_intervals_to_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp117:
	.cfi_def_cfa_offset 16
.Ltmp118:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp119:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	buffer_intervals
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	callq	copy_intervals
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB39_2
# BB#1:                                 # %if.then
	jmp	.LBB39_3
.LBB39_2:                               # %if.end
	movq	-40(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	set_interval_object
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	set_string_intervals
.LBB39_3:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	copy_intervals_to_string, .Lfunc_end39-copy_intervals_to_string
	.cfi_endproc

	.globl	compare_string_intervals
	.align	16, 0x90
	.type	compare_string_intervals,@function
compare_string_intervals:               # @compare_string_intervals
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp120:
	.cfi_def_cfa_offset 16
.Ltmp121:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp122:
	.cfi_def_cfa_register %rbp
	subq	$224, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	$0, -48(%rbp)
	movq	-16(%rbp), %rdi
	callq	SCHARS
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rdi
	callq	string_intervals
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	find_interval
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	string_intervals
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	find_interval
	movq	%rax, -40(%rbp)
.LBB40_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jge	.LBB40_42
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB40_1 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB40_16
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$0, -32(%rbp)
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jne	.LBB40_5
# BB#4:                                 # %cond.true.7
                                        #   in Loop: Header=BB40_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB40_15
.LBB40_5:                               # %cond.false
                                        #   in Loop: Header=BB40_1 Depth=1
	cmpq	$0, -32(%rbp)
	jne	.LBB40_7
# BB#6:                                 # %cond.true.9
                                        #   in Loop: Header=BB40_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB40_8
.LBB40_7:                               # %cond.false.10
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB40_8:                               # %cond.end
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-32(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jne	.LBB40_10
# BB#9:                                 # %cond.true.12
                                        #   in Loop: Header=BB40_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB40_11
.LBB40_10:                              # %cond.false.13
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB40_11:                              # %cond.end.16
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	-112(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	-32(%rbp), %rax
	cmpq	$0, 16(%rax)
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jne	.LBB40_13
# BB#12:                                # %cond.true.19
                                        #   in Loop: Header=BB40_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	jmp	.LBB40_14
.LBB40_13:                              # %cond.false.20
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB40_14:                              # %cond.end.23
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	-128(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
.LBB40_15:                              # %cond.end.26
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-88(%rbp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB40_17
.LBB40_16:                              # %cond.false.28
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB40_17:                              # %cond.end.29
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	-144(%rbp), %rax        # 8-byte Reload
	subq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB40_31
# BB#18:                                # %cond.true.33
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$0, -40(%rbp)
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jne	.LBB40_20
# BB#19:                                # %cond.true.36
                                        #   in Loop: Header=BB40_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	jmp	.LBB40_30
.LBB40_20:                              # %cond.false.37
                                        #   in Loop: Header=BB40_1 Depth=1
	cmpq	$0, -40(%rbp)
	jne	.LBB40_22
# BB#21:                                # %cond.true.39
                                        #   in Loop: Header=BB40_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	jmp	.LBB40_23
.LBB40_22:                              # %cond.false.40
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
.LBB40_23:                              # %cond.end.42
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	-40(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jne	.LBB40_25
# BB#24:                                # %cond.true.46
                                        #   in Loop: Header=BB40_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	jmp	.LBB40_26
.LBB40_25:                              # %cond.false.47
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
.LBB40_26:                              # %cond.end.50
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	-176(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	-40(%rbp), %rax
	cmpq	$0, 16(%rax)
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	jne	.LBB40_28
# BB#27:                                # %cond.true.55
                                        #   in Loop: Header=BB40_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	jmp	.LBB40_29
.LBB40_28:                              # %cond.false.56
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
.LBB40_29:                              # %cond.end.59
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	-200(%rbp), %rax        # 8-byte Reload
	movq	-192(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
.LBB40_30:                              # %cond.end.62
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	-152(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	jmp	.LBB40_32
.LBB40_31:                              # %cond.false.65
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
.LBB40_32:                              # %cond.end.66
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	-208(%rbp), %rax        # 8-byte Reload
	subq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jge	.LBB40_34
# BB#33:                                # %cond.true.70
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	jmp	.LBB40_35
.LBB40_34:                              # %cond.false.71
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	-72(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
.LBB40_35:                              # %cond.end.72
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	%rax, -80(%rbp)
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	intervals_equal
	testb	$1, %al
	jne	.LBB40_37
# BB#36:                                # %if.then
	movb	$0, -1(%rbp)
	jmp	.LBB40_43
.LBB40_37:                              # %if.end
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	-80(%rbp), %rax
	addq	-48(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-64(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB40_39
# BB#38:                                # %if.then.77
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	-32(%rbp), %rdi
	callq	next_interval
	movq	%rax, -32(%rbp)
.LBB40_39:                              # %if.end.79
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	-72(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB40_41
# BB#40:                                # %if.then.81
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	-40(%rbp), %rdi
	callq	next_interval
	movq	%rax, -40(%rbp)
.LBB40_41:                              # %if.end.83
                                        #   in Loop: Header=BB40_1 Depth=1
	jmp	.LBB40_1
.LBB40_42:                              # %while.end
	movb	$1, -1(%rbp)
.LBB40_43:                              # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	compare_string_intervals, .Lfunc_end40-compare_string_intervals
	.cfi_endproc

	.globl	set_intervals_multibyte
	.align	16, 0x90
	.type	set_intervals_multibyte,@function
set_intervals_multibyte:                # @set_intervals_multibyte
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp123:
	.cfi_def_cfa_offset 16
.Ltmp124:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp125:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movb	%dil, %al
	andb	$1, %al
	movb	%al, -1(%rbp)
	movq	current_buffer, %rdi
	callq	buffer_intervals
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB41_2
# BB#1:                                 # %if.then
	movl	$1, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdi
	movb	-1(%rbp), %dl
	movq	current_buffer, %rsi
	movq	720(%rsi), %rsi
	movq	16(%rsi), %r8
	movq	current_buffer, %rsi
	movq	720(%rsi), %rsi
	movq	32(%rsi), %r9
	andb	$1, %dl
	movzbl	%dl, %esi
	movq	%rcx, %rdx
	callq	set_intervals_multibyte_1
.LBB41_2:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	set_intervals_multibyte, .Lfunc_end41-set_intervals_multibyte
	.cfi_endproc

	.align	16, 0x90
	.type	set_intervals_multibyte_1,@function
set_intervals_multibyte_1:              # @set_intervals_multibyte_1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp126:
	.cfi_def_cfa_offset 16
.Ltmp127:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp128:
	.cfi_def_cfa_register %rbp
	subq	$208, %rsp
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	andb	$1, %al
	movb	%al, -9(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	testb	$1, -9(%rbp)
	je	.LBB42_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	subq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB42_3
.LBB42_2:                               # %if.else
	movq	-48(%rbp), %rax
	subq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB42_3:                               # %if.end
	cmpq	$0, -8(%rbp)
	jne	.LBB42_5
# BB#4:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB42_6
.LBB42_5:                               # %cond.false
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB42_6:                               # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB42_8
# BB#7:                                 # %if.then.5
	movq	-8(%rbp), %rdi
	callq	delete_interval
	jmp	.LBB42_52
.LBB42_8:                               # %if.end.6
	movq	-8(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB42_23
# BB#9:                                 # %if.then.8
	testb	$1, -9(%rbp)
	je	.LBB42_18
# BB#10:                                # %if.then.10
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	$0, 16(%rcx)
	movq	%rax, -112(%rbp)        # 8-byte Spill
	je	.LBB42_12
# BB#11:                                # %cond.true.13
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB42_13
.LBB42_12:                              # %cond.false.16
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB42_13
.LBB42_13:                              # %cond.end.17
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	-112(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	movq	%rcx, -64(%rbp)
	movq	current_buffer, %rdi
	movq	-64(%rbp), %rsi
	callq	buf_bytepos_to_charpos
	movq	%rax, -56(%rbp)
	movq	current_buffer, %rdi
	movq	-56(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jle	.LBB42_15
# BB#14:                                # %if.then.21
	movq	-72(%rbp), %rax
	movq	%rax, -64(%rbp)
.LBB42_15:                              # %if.end.22
	movq	-64(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jge	.LBB42_17
# BB#16:                                # %if.then.24
	movq	-56(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -56(%rbp)
	movq	current_buffer, %rdi
	movq	-56(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -64(%rbp)
.LBB42_17:                              # %if.end.26
	jmp	.LBB42_22
.LBB42_18:                              # %if.else.27
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	$0, 16(%rcx)
	movq	%rax, -128(%rbp)        # 8-byte Spill
	je	.LBB42_20
# BB#19:                                # %cond.true.30
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB42_21
.LBB42_20:                              # %cond.false.33
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	jmp	.LBB42_21
.LBB42_21:                              # %cond.end.34
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	-128(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	movq	%rcx, -56(%rbp)
	movq	current_buffer, %rdi
	movq	-56(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -64(%rbp)
.LBB42_22:                              # %if.end.38
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	movb	-9(%rbp), %cl
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	-56(%rbp), %r8
	movq	-64(%rbp), %r9
	andb	$1, %cl
	movzbl	%cl, %esi
	movq	%rax, %rcx
	callq	set_intervals_multibyte_1
.LBB42_23:                              # %if.end.41
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB42_38
# BB#24:                                # %if.then.43
	testb	$1, -9(%rbp)
	je	.LBB42_33
# BB#25:                                # %if.then.45
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -144(%rbp)        # 8-byte Spill
	je	.LBB42_27
# BB#26:                                # %cond.true.49
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jmp	.LBB42_28
.LBB42_27:                              # %cond.false.52
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	jmp	.LBB42_28
.LBB42_28:                              # %cond.end.53
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	-144(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -80(%rbp)
	movq	current_buffer, %rdi
	movq	-80(%rbp), %rsi
	callq	buf_bytepos_to_charpos
	movq	%rax, -88(%rbp)
	movq	current_buffer, %rdi
	movq	-88(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -96(%rbp)
	movq	-80(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jge	.LBB42_30
# BB#29:                                # %if.then.59
	movq	-96(%rbp), %rax
	movq	%rax, -80(%rbp)
.LBB42_30:                              # %if.end.60
	movq	-80(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jle	.LBB42_32
# BB#31:                                # %if.then.62
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -88(%rbp)
	movq	current_buffer, %rdi
	movq	-88(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -80(%rbp)
.LBB42_32:                              # %if.end.64
	jmp	.LBB42_37
.LBB42_33:                              # %if.else.65
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -160(%rbp)        # 8-byte Spill
	je	.LBB42_35
# BB#34:                                # %cond.true.68
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB42_36
.LBB42_35:                              # %cond.false.71
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	jmp	.LBB42_36
.LBB42_36:                              # %cond.end.72
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	-160(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -88(%rbp)
	movq	current_buffer, %rdi
	movq	-88(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -80(%rbp)
.LBB42_37:                              # %if.end.76
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	movb	-9(%rbp), %cl
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	-40(%rbp), %r8
	movq	-48(%rbp), %r9
	andb	$1, %cl
	movzbl	%cl, %esi
	movq	%rax, %rcx
	callq	set_intervals_multibyte_1
.LBB42_38:                              # %if.end.79
	movq	-8(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB42_40
# BB#39:                                # %cond.true.82
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB42_41
.LBB42_40:                              # %cond.false.85
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	jmp	.LBB42_41
.LBB42_41:                              # %cond.end.86
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -184(%rbp)        # 8-byte Spill
	je	.LBB42_43
# BB#42:                                # %cond.true.90
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jmp	.LBB42_44
.LBB42_43:                              # %cond.false.93
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	jmp	.LBB42_44
.LBB42_44:                              # %cond.end.94
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	-184(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	cmpq	$0, -8(%rbp)
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	jne	.LBB42_46
# BB#45:                                # %cond.true.98
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	jmp	.LBB42_47
.LBB42_46:                              # %cond.false.99
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
.LBB42_47:                              # %cond.end.101
	movq	-208(%rbp), %rax        # 8-byte Reload
	movq	-200(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB42_52
# BB#48:                                # %if.then.104
	movq	-8(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB42_50
# BB#49:                                # %if.then.107
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	48(%rax), %rsi
	callq	set_interval_plist
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	delete_interval
	jmp	.LBB42_51
.LBB42_50:                              # %if.else.112
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	48(%rax), %rsi
	callq	set_interval_plist
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	callq	delete_interval
.LBB42_51:                              # %if.end.118
	jmp	.LBB42_52
.LBB42_52:                              # %if.end.119
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end42:
	.size	set_intervals_multibyte_1, .Lfunc_end42-set_intervals_multibyte_1
	.cfi_endproc

	.align	16, 0x90
	.type	rotate_right,@function
rotate_right:                           # @rotate_right
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp129:
	.cfi_def_cfa_offset 16
.Ltmp130:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp131:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	24(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -32(%rbp)
	movq	-8(%rbp), %rdi
	movb	40(%rdi), %al
	andb	$1, %al
	testb	$1, %al
	jne	.LBB43_8
# BB#1:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB43_8
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rax
	movb	40(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB43_6
# BB#3:                                 # %lor.lhs.false.5
	movq	-8(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB43_6
# BB#4:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB43_6
# BB#5:                                 # %if.then.13
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	set_interval_left
	jmp	.LBB43_7
.LBB43_6:                               # %if.else
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	set_interval_right
.LBB43_7:                               # %if.end
	jmp	.LBB43_8
.LBB43_8:                               # %if.end.18
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	copy_interval_parent
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	set_interval_right
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	set_interval_parent
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	set_interval_left
	cmpq	$0, -24(%rbp)
	je	.LBB43_10
# BB#9:                                 # %if.then.19
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	set_interval_parent
.LBB43_10:                              # %if.end.20
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$0, -24(%rbp)
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jne	.LBB43_12
# BB#11:                                # %cond.true
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB43_13
.LBB43_12:                              # %cond.false
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB43_13:                              # %cond.end
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	-40(%rbp), %rcx         # 8-byte Reload
	subq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	subq	%rcx, %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end43:
	.size	rotate_right, .Lfunc_end43-rotate_right
	.cfi_endproc

	.align	16, 0x90
	.type	rotate_left,@function
rotate_left:                            # @rotate_left
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp132:
	.cfi_def_cfa_offset 16
.Ltmp133:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp134:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	24(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -32(%rbp)
	movq	-8(%rbp), %rdi
	movb	40(%rdi), %al
	andb	$1, %al
	testb	$1, %al
	jne	.LBB44_8
# BB#1:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB44_8
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rax
	movb	40(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB44_6
# BB#3:                                 # %lor.lhs.false.5
	movq	-8(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB44_6
# BB#4:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB44_6
# BB#5:                                 # %if.then.13
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	set_interval_left
	jmp	.LBB44_7
.LBB44_6:                               # %if.else
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	set_interval_right
.LBB44_7:                               # %if.end
	jmp	.LBB44_8
.LBB44_8:                               # %if.end.18
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	copy_interval_parent
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	set_interval_left
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	set_interval_parent
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	set_interval_right
	cmpq	$0, -24(%rbp)
	je	.LBB44_10
# BB#9:                                 # %if.then.19
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	set_interval_parent
.LBB44_10:                              # %if.end.20
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$0, -24(%rbp)
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jne	.LBB44_12
# BB#11:                                # %cond.true
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB44_13
.LBB44_12:                              # %cond.false
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB44_13:                              # %cond.end
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	-40(%rbp), %rcx         # 8-byte Reload
	subq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	subq	%rcx, %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end44:
	.size	rotate_left, .Lfunc_end44-rotate_left
	.cfi_endproc

	.align	16, 0x90
	.type	copy_interval_parent,@function
copy_interval_parent:                   # @copy_interval_parent
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp135:
	.cfi_def_cfa_offset 16
.Ltmp136:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp137:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rdi, 32(%rsi)
	movq	-16(%rbp), %rsi
	movb	40(%rsi), %al
	andb	$1, %al
	movq	-8(%rbp), %rsi
	andb	$1, %al
	movb	40(%rsi), %cl
	andb	$-2, %cl
	orb	%al, %cl
	movb	%cl, 40(%rsi)
	popq	%rbp
	retq
.Lfunc_end45:
	.size	copy_interval_parent, .Lfunc_end45-copy_interval_parent
	.cfi_endproc

	.align	16, 0x90
	.type	merge_properties_sticky,@function
merge_properties_sticky:                # @merge_properties_sticky
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp138:
	.cfi_def_cfa_offset 16
.Ltmp139:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp140:
	.cfi_def_cfa_register %rbp
	subq	$576, %rsp              # imm = 0x240
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	callq	builtin_lisp_symbol
	movl	$468, %edi              # imm = 0x1D4
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	textget
	movl	$794, %edi              # imm = 0x31A
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	textget
	movl	$468, %edi              # imm = 0x1D4
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	textget
	movl	$794, %edi              # imm = 0x31A
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	textget
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
.LBB46_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB46_6 Depth 2
	movq	-80(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB46_59
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB46_1 Depth=1
	movl	$794, %edi              # imm = 0x31A
	movq	-80(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB46_4
# BB#3:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB46_1 Depth=1
	movl	$468, %edi              # imm = 0x1D4
	movq	-96(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB46_5
.LBB46_4:                               # %if.then
                                        #   in Loop: Header=BB46_1 Depth=1
	jmp	.LBB46_58
.LBB46_5:                               # %if.end
                                        #   in Loop: Header=BB46_1 Depth=1
	movq	-80(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	Fcar
	movq	%rax, -112(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)
.LBB46_6:                               # %for.cond.20
                                        #   Parent Loop BB46_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-88(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB46_11
# BB#7:                                 # %for.body.25
                                        #   in Loop: Header=BB46_6 Depth=2
	movq	-96(%rbp), %rax
	movq	-88(%rbp), %rcx
	subq	$3, %rcx
	cmpq	(%rcx), %rax
	jne	.LBB46_9
# BB#8:                                 # %if.then.30
                                        #   in Loop: Header=BB46_1 Depth=1
	jmp	.LBB46_11
.LBB46_9:                               # %if.end.31
                                        #   in Loop: Header=BB46_6 Depth=2
	jmp	.LBB46_10
.LBB46_10:                              # %for.inc
                                        #   in Loop: Header=BB46_6 Depth=2
	movq	-88(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	Fcdr
	movq	%rax, -88(%rbp)
	jmp	.LBB46_6
.LBB46_11:                              # %for.end
                                        #   in Loop: Header=BB46_1 Depth=1
	xorl	%edi, %edi
	movq	-88(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-200(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	andb	$1, %dl
	movb	%dl, -123(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB46_13
# BB#12:                                # %cond.true
                                        #   in Loop: Header=BB46_1 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -216(%rbp)        # 8-byte Spill
	jmp	.LBB46_14
.LBB46_13:                              # %cond.false
                                        #   in Loop: Header=BB46_1 Depth=1
	movq	-88(%rbp), %rdi
	callq	Fcdr
	movq	%rax, %rdi
	callq	Fcar
	movq	%rax, -216(%rbp)        # 8-byte Spill
.LBB46_14:                              # %cond.end
                                        #   in Loop: Header=BB46_1 Depth=1
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	%rax, -104(%rbp)
	movq	-96(%rbp), %rdi
	movq	globals+2328, %rsi
	callq	Fassq
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -136(%rbp)
	testb	$1, -123(%rbp)
	movb	%dl, -217(%rbp)         # 1-byte Spill
	je	.LBB46_22
# BB#15:                                # %land.rhs
                                        #   in Loop: Header=BB46_1 Depth=1
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB46_17
# BB#16:                                # %cond.true.51
                                        #   in Loop: Header=BB46_1 Depth=1
	movq	-96(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	Fmemq
	xorl	%edi, %edi
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movb	$1, %cl
	movq	-232(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	movb	%cl, -233(%rbp)         # 1-byte Spill
	je	.LBB46_18
	jmp	.LBB46_21
.LBB46_17:                              # %cond.false.56
                                        #   in Loop: Header=BB46_1 Depth=1
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movb	$1, %cl
	movq	-248(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	movb	%cl, -233(%rbp)         # 1-byte Spill
	jne	.LBB46_21
.LBB46_18:                              # %lor.rhs
                                        #   in Loop: Header=BB46_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-136(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -249(%rbp)         # 1-byte Spill
	jne	.LBB46_20
# BB#19:                                # %land.rhs.64
                                        #   in Loop: Header=BB46_1 Depth=1
	xorl	%edi, %edi
	movq	-136(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-264(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	movb	%dl, -249(%rbp)         # 1-byte Spill
.LBB46_20:                              # %land.end
                                        #   in Loop: Header=BB46_1 Depth=1
	movb	-249(%rbp), %al         # 1-byte Reload
	movb	%al, -233(%rbp)         # 1-byte Spill
.LBB46_21:                              # %lor.end
                                        #   in Loop: Header=BB46_1 Depth=1
	movb	-233(%rbp), %al         # 1-byte Reload
	xorb	$-1, %al
	movb	%al, -217(%rbp)         # 1-byte Spill
.LBB46_22:                              # %land.end.73
                                        #   in Loop: Header=BB46_1 Depth=1
	movb	-217(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -121(%rbp)
	movq	-64(%rbp), %rcx
	andq	$7, %rcx
	movl	%ecx, %edx
	cmpl	$3, %edx
	jne	.LBB46_24
# BB#23:                                # %cond.true.79
                                        #   in Loop: Header=BB46_1 Depth=1
	movq	-96(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	Fmemq
	xorl	%edi, %edi
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movb	$1, %cl
	movq	-272(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	movb	%cl, -273(%rbp)         # 1-byte Spill
	je	.LBB46_25
	jmp	.LBB46_28
.LBB46_24:                              # %cond.false.84
                                        #   in Loop: Header=BB46_1 Depth=1
	xorl	%edi, %edi
	movq	-64(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movb	$1, %cl
	movq	-288(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	movb	%cl, -273(%rbp)         # 1-byte Spill
	jne	.LBB46_28
.LBB46_25:                              # %lor.rhs.88
                                        #   in Loop: Header=BB46_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-136(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -289(%rbp)         # 1-byte Spill
	jne	.LBB46_27
# BB#26:                                # %land.rhs.93
                                        #   in Loop: Header=BB46_1 Depth=1
	xorl	%edi, %edi
	movq	-136(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-304(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	movb	%dl, -289(%rbp)         # 1-byte Spill
.LBB46_27:                              # %land.end.100
                                        #   in Loop: Header=BB46_1 Depth=1
	movb	-289(%rbp), %al         # 1-byte Reload
	movb	%al, -273(%rbp)         # 1-byte Spill
.LBB46_28:                              # %lor.end.101
                                        #   in Loop: Header=BB46_1 Depth=1
	movb	-273(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -122(%rbp)
	testb	$1, -121(%rbp)
	je	.LBB46_36
# BB#29:                                # %land.lhs.true
                                        #   in Loop: Header=BB46_1 Depth=1
	testb	$1, -122(%rbp)
	je	.LBB46_36
# BB#30:                                # %if.then.107
                                        #   in Loop: Header=BB46_1 Depth=1
	xorl	%edi, %edi
	movq	-104(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-312(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB46_32
# BB#31:                                # %if.then.111
                                        #   in Loop: Header=BB46_1 Depth=1
	movb	$0, -121(%rbp)
	jmp	.LBB46_35
.LBB46_32:                              # %if.else
                                        #   in Loop: Header=BB46_1 Depth=1
	xorl	%edi, %edi
	movq	-112(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-320(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB46_34
# BB#33:                                # %if.then.115
                                        #   in Loop: Header=BB46_1 Depth=1
	movb	$0, -122(%rbp)
.LBB46_34:                              # %if.end.116
                                        #   in Loop: Header=BB46_1 Depth=1
	jmp	.LBB46_35
.LBB46_35:                              # %if.end.117
                                        #   in Loop: Header=BB46_1 Depth=1
	jmp	.LBB46_36
.LBB46_36:                              # %if.end.118
                                        #   in Loop: Header=BB46_1 Depth=1
	testb	$1, -121(%rbp)
	je	.LBB46_46
# BB#37:                                # %if.then.120
                                        #   in Loop: Header=BB46_1 Depth=1
	movq	-104(%rbp), %rdi
	movq	-96(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	Fcons
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB46_39
# BB#38:                                # %cond.true.127
                                        #   in Loop: Header=BB46_1 Depth=1
	movq	-96(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	Fmemq
	xorl	%edi, %edi
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-336(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB46_41
	jmp	.LBB46_40
.LBB46_39:                              # %cond.false.132
                                        #   in Loop: Header=BB46_1 Depth=1
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-344(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB46_41
.LBB46_40:                              # %if.then.136
                                        #   in Loop: Header=BB46_1 Depth=1
	movq	-96(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	Fcons
	movq	%rax, -32(%rbp)
.LBB46_41:                              # %if.end.138
                                        #   in Loop: Header=BB46_1 Depth=1
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB46_43
# BB#42:                                # %cond.true.143
                                        #   in Loop: Header=BB46_1 Depth=1
	movq	-96(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	Fmemq
	xorl	%edi, %edi
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-352(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB46_45
	jmp	.LBB46_44
.LBB46_43:                              # %cond.false.148
                                        #   in Loop: Header=BB46_1 Depth=1
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-360(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB46_45
.LBB46_44:                              # %if.then.152
                                        #   in Loop: Header=BB46_1 Depth=1
	movq	-96(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	Fcons
	movq	%rax, -40(%rbp)
.LBB46_45:                              # %if.end.154
                                        #   in Loop: Header=BB46_1 Depth=1
	jmp	.LBB46_57
.LBB46_46:                              # %if.else.155
                                        #   in Loop: Header=BB46_1 Depth=1
	testb	$1, -122(%rbp)
	je	.LBB46_56
# BB#47:                                # %if.then.157
                                        #   in Loop: Header=BB46_1 Depth=1
	movq	-112(%rbp), %rdi
	movq	-96(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	%rdi, -368(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	Fcons
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	%rax, -24(%rbp)
	movq	-64(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB46_49
# BB#48:                                # %cond.true.164
                                        #   in Loop: Header=BB46_1 Depth=1
	movq	-96(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	Fmemq
	xorl	%edi, %edi
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-376(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB46_51
	jmp	.LBB46_50
.LBB46_49:                              # %cond.false.169
                                        #   in Loop: Header=BB46_1 Depth=1
	xorl	%edi, %edi
	movq	-64(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-384(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB46_51
.LBB46_50:                              # %if.then.173
                                        #   in Loop: Header=BB46_1 Depth=1
	movq	-96(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	Fcons
	movq	%rax, -32(%rbp)
.LBB46_51:                              # %if.end.175
                                        #   in Loop: Header=BB46_1 Depth=1
	movq	-72(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB46_53
# BB#52:                                # %cond.true.180
                                        #   in Loop: Header=BB46_1 Depth=1
	movq	-96(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	Fmemq
	xorl	%edi, %edi
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-392(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB46_55
	jmp	.LBB46_54
.LBB46_53:                              # %cond.false.185
                                        #   in Loop: Header=BB46_1 Depth=1
	xorl	%edi, %edi
	movq	-72(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-400(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB46_55
.LBB46_54:                              # %if.then.189
                                        #   in Loop: Header=BB46_1 Depth=1
	movq	-96(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	Fcons
	movq	%rax, -40(%rbp)
.LBB46_55:                              # %if.end.191
                                        #   in Loop: Header=BB46_1 Depth=1
	jmp	.LBB46_56
.LBB46_56:                              # %if.end.192
                                        #   in Loop: Header=BB46_1 Depth=1
	jmp	.LBB46_57
.LBB46_57:                              # %if.end.193
                                        #   in Loop: Header=BB46_1 Depth=1
	jmp	.LBB46_58
.LBB46_58:                              # %for.inc.194
                                        #   in Loop: Header=BB46_1 Depth=1
	movq	-80(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	Fcdr
	movq	%rax, -80(%rbp)
	jmp	.LBB46_1
.LBB46_59:                              # %for.end.199
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)
.LBB46_60:                              # %for.cond.200
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB46_65 Depth 2
	movq	-88(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB46_95
# BB#61:                                # %for.body.205
                                        #   in Loop: Header=BB46_60 Depth=1
	movl	$794, %edi              # imm = 0x31A
	movq	-88(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-408(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB46_63
# BB#62:                                # %lor.lhs.false.213
                                        #   in Loop: Header=BB46_60 Depth=1
	movl	$468, %edi              # imm = 0x1D4
	movq	-96(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-416(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB46_64
.LBB46_63:                              # %if.then.217
                                        #   in Loop: Header=BB46_60 Depth=1
	jmp	.LBB46_94
.LBB46_64:                              # %if.end.218
                                        #   in Loop: Header=BB46_60 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
.LBB46_65:                              # %for.cond.219
                                        #   Parent Loop BB46_60 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-80(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB46_70
# BB#66:                                # %for.body.224
                                        #   in Loop: Header=BB46_65 Depth=2
	movq	-96(%rbp), %rax
	movq	-80(%rbp), %rcx
	subq	$3, %rcx
	cmpq	(%rcx), %rax
	jne	.LBB46_68
# BB#67:                                # %if.then.229
                                        #   in Loop: Header=BB46_60 Depth=1
	jmp	.LBB46_70
.LBB46_68:                              # %if.end.230
                                        #   in Loop: Header=BB46_65 Depth=2
	jmp	.LBB46_69
.LBB46_69:                              # %for.inc.231
                                        #   in Loop: Header=BB46_65 Depth=2
	movq	-80(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	Fcdr
	movq	%rax, -80(%rbp)
	jmp	.LBB46_65
.LBB46_70:                              # %for.end.236
                                        #   in Loop: Header=BB46_60 Depth=1
	xorl	%edi, %edi
	movq	-80(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-424(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB46_72
# BB#71:                                # %if.then.240
                                        #   in Loop: Header=BB46_60 Depth=1
	jmp	.LBB46_94
.LBB46_72:                              # %if.end.241
                                        #   in Loop: Header=BB46_60 Depth=1
	movq	-88(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	Fcar
	movq	%rax, -104(%rbp)
	movq	-96(%rbp), %rdi
	movq	globals+2328, %rsi
	callq	Fassq
	movq	%rax, -144(%rbp)
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB46_74
# BB#73:                                # %cond.true.251
                                        #   in Loop: Header=BB46_60 Depth=1
	movq	-96(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	Fmemq
	xorl	%edi, %edi
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-432(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB46_75
	jmp	.LBB46_82
.LBB46_74:                              # %cond.false.256
                                        #   in Loop: Header=BB46_60 Depth=1
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-440(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB46_82
.LBB46_75:                              # %lor.lhs.false.260
                                        #   in Loop: Header=BB46_60 Depth=1
	movq	-144(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB46_77
# BB#76:                                # %land.lhs.true.265
                                        #   in Loop: Header=BB46_60 Depth=1
	xorl	%edi, %edi
	movq	-144(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-448(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB46_82
.LBB46_77:                              # %if.then.272
                                        #   in Loop: Header=BB46_60 Depth=1
	movq	-104(%rbp), %rdi
	movq	-96(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	%rdi, -456(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	Fcons
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB46_79
# BB#78:                                # %cond.true.279
                                        #   in Loop: Header=BB46_60 Depth=1
	movq	-96(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	Fmemq
	xorl	%edi, %edi
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-464(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB46_81
	jmp	.LBB46_80
.LBB46_79:                              # %cond.false.284
                                        #   in Loop: Header=BB46_60 Depth=1
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-472(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB46_81
.LBB46_80:                              # %if.then.288
                                        #   in Loop: Header=BB46_60 Depth=1
	movq	-96(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	Fcons
	movq	%rax, -32(%rbp)
.LBB46_81:                              # %if.end.290
                                        #   in Loop: Header=BB46_60 Depth=1
	jmp	.LBB46_93
.LBB46_82:                              # %if.else.291
                                        #   in Loop: Header=BB46_60 Depth=1
	movq	-64(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB46_84
# BB#83:                                # %cond.true.296
                                        #   in Loop: Header=BB46_60 Depth=1
	movq	-96(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	Fmemq
	xorl	%edi, %edi
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-480(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB46_85
	jmp	.LBB46_87
.LBB46_84:                              # %cond.false.301
                                        #   in Loop: Header=BB46_60 Depth=1
	xorl	%edi, %edi
	movq	-64(%rbp), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-488(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB46_87
.LBB46_85:                              # %lor.lhs.false.305
                                        #   in Loop: Header=BB46_60 Depth=1
	movq	-144(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB46_92
# BB#86:                                # %land.lhs.true.310
                                        #   in Loop: Header=BB46_60 Depth=1
	xorl	%edi, %edi
	movq	-144(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-496(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB46_92
.LBB46_87:                              # %if.then.317
                                        #   in Loop: Header=BB46_60 Depth=1
	movq	-96(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	Fcons
	movq	%rax, -32(%rbp)
	movq	-72(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB46_89
# BB#88:                                # %cond.true.323
                                        #   in Loop: Header=BB46_60 Depth=1
	movq	-96(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	Fmemq
	xorl	%edi, %edi
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-504(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB46_91
	jmp	.LBB46_90
.LBB46_89:                              # %cond.false.328
                                        #   in Loop: Header=BB46_60 Depth=1
	xorl	%edi, %edi
	movq	-72(%rbp), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-512(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB46_91
.LBB46_90:                              # %if.then.332
                                        #   in Loop: Header=BB46_60 Depth=1
	movq	-96(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	Fcons
	movq	%rax, -40(%rbp)
.LBB46_91:                              # %if.end.334
                                        #   in Loop: Header=BB46_60 Depth=1
	jmp	.LBB46_92
.LBB46_92:                              # %if.end.335
                                        #   in Loop: Header=BB46_60 Depth=1
	jmp	.LBB46_93
.LBB46_93:                              # %if.end.336
                                        #   in Loop: Header=BB46_60 Depth=1
	jmp	.LBB46_94
.LBB46_94:                              # %for.inc.337
                                        #   in Loop: Header=BB46_60 Depth=1
	movq	-88(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	Fcdr
	movq	%rax, -88(%rbp)
	jmp	.LBB46_60
.LBB46_95:                              # %for.end.342
	movq	-24(%rbp), %rdi
	callq	Fnreverse
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-520(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB46_97
# BB#96:                                # %if.then.347
	movl	$794, %edi              # imm = 0x31A
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rdi
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	Fnreverse
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	%rax, -24(%rbp)
.LBB46_97:                              # %if.end.352
	movl	$241, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	textget
	xorl	%edi, %edi
	movq	%rax, -120(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-544(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB46_102
# BB#98:                                # %land.lhs.true.358
	xorl	%edi, %edi
	movq	-120(%rbp), %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-552(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB46_101
# BB#99:                                # %land.lhs.true.362
	movq	-120(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB46_101
# BB#100:                               # %land.lhs.true.367
	movl	$468, %edi              # imm = 0x1D4
	movq	-120(%rbp), %rax
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-560(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-568(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB46_102
.LBB46_101:                             # %if.then.373
	movl	$468, %edi              # imm = 0x1D4
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rdi
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	Fnreverse
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	-576(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	%rax, -24(%rbp)
.LBB46_102:                             # %if.end.378
	movq	-24(%rbp), %rax
	addq	$576, %rsp              # imm = 0x240
	popq	%rbp
	retq
.Lfunc_end46:
	.size	merge_properties_sticky, .Lfunc_end46-merge_properties_sticky
	.cfi_endproc

	.align	16, 0x90
	.type	merge_interval_right,@function
merge_interval_right:                   # @merge_interval_right
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp141:
	.cfi_def_cfa_offset 16
.Ltmp142:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp143:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB47_2
# BB#1:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	jmp	.LBB47_12
.LBB47_2:                               # %cond.false
	cmpq	$0, -16(%rbp)
	jne	.LBB47_4
# BB#3:                                 # %cond.true.2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB47_5
.LBB47_4:                               # %cond.false.3
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB47_5:                               # %cond.end
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	-16(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jne	.LBB47_7
# BB#6:                                 # %cond.true.5
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	jmp	.LBB47_8
.LBB47_7:                               # %cond.false.6
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB47_8:                               # %cond.end.9
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	-56(%rbp), %rcx         # 8-byte Reload
	subq	%rax, %rcx
	movq	-16(%rbp), %rax
	cmpq	$0, 16(%rax)
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	jne	.LBB47_10
# BB#9:                                 # %cond.true.12
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB47_11
.LBB47_10:                              # %cond.false.13
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB47_11:                              # %cond.end.16
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	-72(%rbp), %rcx         # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
.LBB47_12:                              # %cond.end.19
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB47_17
# BB#13:                                # %if.then
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB47_14:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpq	$0, 16(%rax)
	sete	%cl
	xorb	$-1, %cl
	testb	$1, %cl
	jne	.LBB47_15
	jmp	.LBB47_16
.LBB47_15:                              # %while.body
                                        #   in Loop: Header=BB47_14 Depth=1
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB47_14
.LBB47_16:                              # %while.end
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rdi
	callq	delete_interval
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB47_27
.LBB47_17:                              # %if.end
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rdx
	subq	%rax, %rdx
	movq	%rdx, (%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB47_18:                              # %while.cond.32
                                        # =>This Inner Loop Header: Depth=1
	movb	$1, %al
	movq	-32(%rbp), %rcx
	movb	40(%rcx), %dl
	andb	$1, %dl
	testb	$1, %dl
	movb	%al, -81(%rbp)          # 1-byte Spill
	jne	.LBB47_20
# BB#19:                                # %lor.rhs
                                        #   in Loop: Header=BB47_18 Depth=1
	movq	-32(%rbp), %rax
	cmpq	$0, 32(%rax)
	sete	%cl
	movb	%cl, -81(%rbp)          # 1-byte Spill
.LBB47_20:                              # %lor.end
                                        #   in Loop: Header=BB47_18 Depth=1
	movb	-81(%rbp), %al          # 1-byte Reload
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB47_21
	jmp	.LBB47_26
.LBB47_21:                              # %while.body.35
                                        #   in Loop: Header=BB47_18 Depth=1
	movq	-32(%rbp), %rax
	movb	40(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB47_25
# BB#22:                                # %lor.lhs.false
                                        #   in Loop: Header=BB47_18 Depth=1
	movq	-32(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB47_25
# BB#23:                                # %land.lhs.true
                                        #   in Loop: Header=BB47_18 Depth=1
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB47_25
# BB#24:                                # %if.then.47
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	delete_interval
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB47_27
.LBB47_25:                              # %if.end.50
                                        #   in Loop: Header=BB47_18 Depth=1
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rdx
	subq	%rax, %rdx
	movq	%rdx, (%rcx)
	jmp	.LBB47_18
.LBB47_26:                              # %while.end.55
	callq	emacs_abort
.LBB47_27:                              # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end47:
	.size	merge_interval_right, .Lfunc_end47-merge_interval_right
	.cfi_endproc

	.align	16, 0x90
	.type	interval_deletion_adjustment,@function
interval_deletion_adjustment:           # @interval_deletion_adjustment
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp144:
	.cfi_def_cfa_offset 16
.Ltmp145:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp146:
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB48_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB48_38
.LBB48_2:                               # %if.end
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	$0, 16(%rcx)
	movq	%rax, -72(%rbp)         # 8-byte Spill
	je	.LBB48_4
# BB#3:                                 # %cond.true
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB48_5
.LBB48_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB48_5
.LBB48_5:                               # %cond.end
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jge	.LBB48_7
# BB#6:                                 # %if.then.3
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	interval_deletion_adjustment
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rsi
	subq	%rax, %rsi
	movq	%rsi, (%rdx)
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB48_38
.LBB48_7:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, -16(%rbp)
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jne	.LBB48_9
# BB#8:                                 # %cond.true.7
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB48_10
.LBB48_9:                               # %cond.false.8
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB48_10:                              # %cond.end.10
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-16(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -104(%rbp)        # 8-byte Spill
	je	.LBB48_12
# BB#11:                                # %cond.true.13
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB48_13
.LBB48_12:                              # %cond.false.16
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB48_13
.LBB48_13:                              # %cond.end.17
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-104(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	-88(%rbp), %rax         # 8-byte Reload
	cmpq	%rcx, %rax
	jl	.LBB48_18
# BB#14:                                # %if.then.21
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -120(%rbp)        # 8-byte Spill
	je	.LBB48_16
# BB#15:                                # %cond.true.26
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB48_17
.LBB48_16:                              # %cond.false.29
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB48_17
.LBB48_17:                              # %cond.end.30
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	-120(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	-40(%rbp), %rax
	subq	%rcx, %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	interval_deletion_adjustment
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rdx
	subq	%rax, %rdx
	movq	%rdx, (%rcx)
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB48_38
.LBB48_18:                              # %if.else.38
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -136(%rbp)        # 8-byte Spill
	je	.LBB48_20
# BB#19:                                # %cond.true.42
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB48_21
.LBB48_20:                              # %cond.false.45
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB48_21
.LBB48_21:                              # %cond.end.46
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	-136(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	subq	-40(%rbp), %rcx
	movq	%rcx, -64(%rbp)
	movq	-32(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jle	.LBB48_23
# BB#22:                                # %if.then.51
	movq	-64(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB48_23:                              # %if.end.52
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rdx
	subq	%rax, %rdx
	movq	%rdx, (%rcx)
	cmpq	$0, -16(%rbp)
	jne	.LBB48_25
# BB#24:                                # %cond.true.56
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	jmp	.LBB48_35
.LBB48_25:                              # %cond.false.57
	cmpq	$0, -16(%rbp)
	jne	.LBB48_27
# BB#26:                                # %cond.true.59
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	jmp	.LBB48_28
.LBB48_27:                              # %cond.false.60
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
.LBB48_28:                              # %cond.end.62
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	-16(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jne	.LBB48_30
# BB#29:                                # %cond.true.66
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	jmp	.LBB48_31
.LBB48_30:                              # %cond.false.67
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
.LBB48_31:                              # %cond.end.70
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	-168(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	-16(%rbp), %rax
	cmpq	$0, 16(%rax)
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	jne	.LBB48_33
# BB#32:                                # %cond.true.75
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	jmp	.LBB48_34
.LBB48_33:                              # %cond.false.76
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
.LBB48_34:                              # %cond.end.79
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	-184(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
.LBB48_35:                              # %cond.end.82
	movq	-152(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB48_37
# BB#36:                                # %if.then.85
	movq	-16(%rbp), %rdi
	callq	delete_interval
.LBB48_37:                              # %if.end.86
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB48_38:                              # %return
	movq	-8(%rbp), %rax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end48:
	.size	interval_deletion_adjustment, .Lfunc_end48-interval_deletion_adjustment
	.cfi_endproc

	.align	16, 0x90
	.type	delete_node,@function
delete_node:                            # @delete_node
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp147:
	.cfi_def_cfa_offset 16
.Ltmp148:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp149:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	cmpq	$0, 16(%rdi)
	jne	.LBB49_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB49_8
.LBB49_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 24(%rax)
	jne	.LBB49_4
# BB#3:                                 # %if.then.3
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB49_8
.LBB49_4:                               # %if.end.5
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, (%rcx)
.LBB49_5:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB49_7
# BB#6:                                 # %while.body
                                        #   in Loop: Header=BB49_5 Depth=1
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, (%rcx)
	jmp	.LBB49_5
.LBB49_7:                               # %while.end
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	set_interval_left
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	set_interval_parent
	movq	-16(%rbp), %rsi
	movq	24(%rsi), %rsi
	movq	%rsi, -8(%rbp)
.LBB49_8:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end49:
	.size	delete_node, .Lfunc_end49-delete_node
	.cfi_endproc

	.align	16, 0x90
	.type	reproduce_interval,@function
reproduce_interval:                     # @reproduce_interval
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp150:
	.cfi_def_cfa_offset 16
.Ltmp151:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp152:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	callq	make_interval
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, 8(%rdi)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	copy_properties
	movq	-8(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB50_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rsi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	reproduce_tree
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	set_interval_left
.LBB50_2:                               # %if.end
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB50_4
# BB#3:                                 # %if.then.6
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	-16(%rbp), %rsi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	reproduce_tree
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	set_interval_right
.LBB50_4:                               # %if.end.9
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end50:
	.size	reproduce_interval, .Lfunc_end50-reproduce_interval
	.cfi_endproc

	.align	16, 0x90
	.type	reproduce_tree,@function
reproduce_tree:                         # @reproduce_tree
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp153:
	.cfi_def_cfa_offset 16
.Ltmp154:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp155:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	reproduce_interval
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	set_interval_parent
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end51:
	.size	reproduce_tree, .Lfunc_end51-reproduce_tree
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Point before start of properties"
	.size	.L.str, 33

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Point %ld after end of properties"
	.size	.L.str.1, 34

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Marker points into wrong buffer"
	.size	.L.str.2, 32


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
