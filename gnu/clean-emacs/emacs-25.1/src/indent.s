	.text
	.file	"indent.bc"
	.globl	buffer_display_table
	.align	16, 0x90
	.type	buffer_display_table,@function
buffer_display_table:                   # @buffer_display_table
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
	movq	current_buffer, %rax
	movq	296(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB0_1
	jmp	.LBB0_4
.LBB0_1:                                # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	XCHAR_TABLE
	movl	$346, %edi              # imm = 0x15A
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB0_4
# BB#2:                                 # %land.lhs.true.3
	movq	-16(%rbp), %rdi
	callq	XCHAR_TABLE
	movq	%rax, %rdi
	callq	CHAR_TABLE_EXTRA_SLOTS
	cmpl	$6, %eax
	jne	.LBB0_4
# BB#3:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	XCHAR_TABLE
	movq	%rax, -8(%rbp)
	jmp	.LBB0_9
.LBB0_4:                                # %if.end
	movq	globals+2200, %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB0_5
	jmp	.LBB0_8
.LBB0_5:                                # %land.lhs.true.9
	movq	globals+2200, %rdi
	callq	XCHAR_TABLE
	movl	$346, %edi              # imm = 0x15A
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB0_8
# BB#6:                                 # %land.lhs.true.14
	movq	globals+2200, %rdi
	callq	XCHAR_TABLE
	movq	%rax, %rdi
	callq	CHAR_TABLE_EXTRA_SLOTS
	cmpl	$6, %eax
	jne	.LBB0_8
# BB#7:                                 # %if.then.18
	movq	globals+2200, %rdi
	callq	XCHAR_TABLE
	movq	%rax, -8(%rbp)
	jmp	.LBB0_9
.LBB0_8:                                # %if.end.20
	movq	$0, -8(%rbp)
.LBB0_9:                                # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	buffer_display_table, .Lfunc_end0-buffer_display_table
	.cfi_endproc

	.globl	disptab_matches_widthtab
	.align	16, 0x90
	.type	disptab_matches_widthtab,@function
disptab_matches_widthtab:               # @disptab_matches_widthtab
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
	movq	%rsi, -24(%rbp)
	movl	$0, -28(%rbp)
.LBB1_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -28(%rbp)         # imm = 0x100
	jge	.LBB1_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-28(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	character_width
	movslq	%eax, %rsi
	movslq	-28(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	8(%rdx,%rcx,8), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rsi
	je	.LBB1_4
# BB#3:                                 # %if.then
	movb	$0, -1(%rbp)
	jmp	.LBB1_7
.LBB1_4:                                # %if.end
                                        #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_5
.LBB1_5:                                # %for.inc
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB1_1
.LBB1_6:                                # %for.end
	movb	$1, -1(%rbp)
.LBB1_7:                                # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	disptab_matches_widthtab, .Lfunc_end1-disptab_matches_widthtab
	.cfi_endproc

	.align	16, 0x90
	.type	character_width,@function
character_width:                        # @character_width
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
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB2_14
# BB#1:                                 # %land.lhs.true
	movb	$1, %al
	testb	$1, %al
	jne	.LBB2_2
	jmp	.LBB2_3
.LBB2_2:                                # %cond.true
	movl	-8(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB2_4
	jmp	.LBB2_11
.LBB2_3:                                # %cond.false
	movslq	-8(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB2_11
.LBB2_4:                                # %cond.true.4
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB2_6
# BB#5:                                 # %cond.true.7
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB2_10
.LBB2_6:                                # %cond.false.8
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	SUB_CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB2_7
	jmp	.LBB2_8
.LBB2_7:                                # %cond.true.12
	movslq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	XSUB_CHAR_TABLE
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	16(%rax,%rcx,8), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB2_9
.LBB2_8:                                # %cond.false.15
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB2_9:                                # %cond.end
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB2_10:                               # %cond.end.17
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB2_12
.LBB2_11:                               # %cond.false.19
	movq	-16(%rbp), %rdi
	movl	-8(%rbp), %esi
	callq	disp_char_vector
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB2_12:                               # %cond.end.21
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB2_13
	jmp	.LBB2_14
.LBB2_13:                               # %if.then
	movq	-24(%rbp), %rdi
	callq	ASIZE
	movl	%eax, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB2_22
.LBB2_14:                               # %if.end
	cmpl	$10, -8(%rbp)
	je	.LBB2_17
# BB#15:                                # %lor.lhs.false
	cmpl	$9, -8(%rbp)
	je	.LBB2_17
# BB#16:                                # %lor.lhs.false.31
	cmpl	$13, -8(%rbp)
	jne	.LBB2_18
.LBB2_17:                               # %if.then.34
	movl	$0, -4(%rbp)
	jmp	.LBB2_22
.LBB2_18:                               # %if.else
	cmpl	$32, -8(%rbp)
	jl	.LBB2_21
# BB#19:                                # %land.lhs.true.37
	cmpl	$127, -8(%rbp)
	jge	.LBB2_21
# BB#20:                                # %if.then.40
	movl	$1, -4(%rbp)
	jmp	.LBB2_22
.LBB2_21:                               # %if.else.41
	movl	$0, -4(%rbp)
.LBB2_22:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	character_width, .Lfunc_end2-character_width
	.cfi_endproc

	.globl	recompute_width_table
	.align	16, 0x90
	.type	recompute_width_table,@function
recompute_width_table:                  # @recompute_width_table
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	352(%rsi), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movl	$256, %eax              # imm = 0x100
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	callq	make_uninit_vector
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_width_table
.LBB3_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	352(%rax), %rdi
	callq	XVECTOR
	movq	%rax, -32(%rbp)
	movl	$0, -20(%rbp)
.LBB3_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -20(%rbp)         # imm = 0x100
	jge	.LBB3_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB3_3 Depth=1
	movl	-20(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	character_width
	movslq	%eax, %rdi
	callq	make_natnum
	movslq	-20(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movq	%rax, 8(%rdi,%rsi,8)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB3_3 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB3_3
.LBB3_6:                                # %for.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	recompute_width_table, .Lfunc_end3-recompute_width_table
	.cfi_endproc

	.globl	skip_invisible
	.align	16, 0x90
	.type	skip_invisible,@function
skip_invisible:                         # @skip_invisible
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
	subq	$208, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	make_natnum
	movl	$5, %esi
	movq	%rax, -56(%rbp)
	movq	current_buffer, %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -80(%rbp)
	movq	current_buffer, %rdi
	movq	-16(%rbp), %rsi
	callq	recenter_overlay_lists
	movq	-56(%rbp), %rdi
	callq	Fnext_overlay_change
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	-80(%rbp), %rsi
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fnext_property_change
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	sarq	$2, %rax
	movq	-72(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jge	.LBB4_2
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
.LBB4_2:                                # %if.end
	movq	-72(%rbp), %rax
	sarq	$2, %rax
	movq	-16(%rbp), %rcx
	addq	$100, %rcx
	cmpq	%rcx, %rax
	jg	.LBB4_4
# BB#3:                                 # %lor.lhs.false
	movq	-72(%rbp), %rax
	sarq	$2, %rax
	cmpq	-32(%rbp), %rax
	jl	.LBB4_5
.LBB4_4:                                # %if.then.12
	movq	-72(%rbp), %rax
	sarq	$2, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB4_11
.LBB4_5:                                # %if.else
	movq	-16(%rbp), %rax
	addq	$100, %rax
	cmpq	-32(%rbp), %rax
	jge	.LBB4_7
# BB#6:                                 # %cond.true
	movq	-16(%rbp), %rax
	addq	$100, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB4_8
.LBB4_7:                                # %cond.false
	movq	-32(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB4_8:                                # %cond.end
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	sarq	$2, %rax
	movq	-72(%rbp), %rdi
	sarq	$2, %rdi
	cmpq	%rdi, %rax
	jge	.LBB4_10
# BB#9:                                 # %if.then.21
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
.LBB4_10:                               # %if.end.22
	movl	$574, %edi              # imm = 0x23E
	movq	-56(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fnext_single_property_change
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB4_11:                               # %if.end.26
	movl	$574, %edi              # imm = 0x23E
	movq	-56(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-40(%rbp), %rcx
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB4_14
# BB#12:                                # %land.lhs.true
	movq	-40(%rbp), %rdi
	callq	XWINDOW
	movq	80(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB4_14
# BB#13:                                # %cond.true.32
	movq	-40(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB4_15
.LBB4_14:                               # %cond.false.33
	movq	-80(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
.LBB4_15:                               # %cond.end.34
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	-152(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fget_char_property
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -48(%rbp)
	movq	current_buffer, %rax
	movq	400(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB4_17
# BB#16:                                # %cond.true.39
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	andb	$1, %dl
	movzbl	%dl, %edi
	movl	%edi, -188(%rbp)        # 4-byte Spill
	jmp	.LBB4_18
.LBB4_17:                               # %cond.false.42
	movq	-48(%rbp), %rdi
	movq	current_buffer, %rax
	movq	400(%rax), %rsi
	callq	invisible_prop
	movl	%eax, -188(%rbp)        # 4-byte Spill
.LBB4_18:                               # %cond.end.45
	movl	-188(%rbp), %eax        # 4-byte Reload
	xorl	%edi, %edi
	movl	%eax, -100(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-200(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB4_20
# BB#19:                                # %cond.true.49
	cmpl	$1, -100(%rbp)
	je	.LBB4_21
	jmp	.LBB4_22
.LBB4_20:                               # %cond.false.51
	cmpl	$0, -100(%rbp)
	je	.LBB4_22
.LBB4_21:                               # %if.then.52
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB4_23
.LBB4_22:                               # %if.end.53
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB4_23:                               # %return
	movq	-8(%rbp), %rax
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	skip_invisible, .Lfunc_end4-skip_invisible
	.cfi_endproc

	.globl	Fcurrent_column
	.align	16, 0x90
	.type	Fcurrent_column,@function
Fcurrent_column:                        # @Fcurrent_column
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
	callq	current_column
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	Fcurrent_column, .Lfunc_end5-Fcurrent_column
	.cfi_endproc

	.globl	current_column
	.align	16, 0x90
	.type	current_column,@function
current_column:                         # @current_column
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
	subq	$256, %rsp              # imm = 0x100
	movq	current_buffer, %rax
	movq	152(%rax), %rax
	sarq	$2, %rax
	movq	%rax, %rdi
	callq	sanitize_tab_width
	xorl	%edi, %edi
	movl	%eax, -56(%rbp)
	movq	current_buffer, %rcx
	movq	232(%rcx), %rcx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	andb	$1, %dl
	movb	%dl, -57(%rbp)
	callq	buffer_display_table
	movq	%rax, -72(%rbp)
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	cmpq	last_known_column_point, %rax
	jne	.LBB6_3
# BB#1:                                 # %land.lhs.true
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	48(%rax), %rax
	cmpq	last_known_column_modified, %rax
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movq	last_known_column, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB6_92
.LBB6_3:                                # %if.end
	movq	current_buffer, %rdi
	callq	buffer_intervals
	cmpq	$0, %rax
	jne	.LBB6_6
# BB#4:                                 # %lor.lhs.false
	callq	buffer_has_overlays
	testb	$1, %al
	jne	.LBB6_6
# BB#5:                                 # %lor.lhs.false.7
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	16(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	32(%rcx), %rax
	je	.LBB6_7
.LBB6_6:                                # %if.then.11
	callq	current_column_1
	movq	%rax, -8(%rbp)
	jmp	.LBB6_92
.LBB6_7:                                # %if.end.13
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	subq	$1, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB6_9
# BB#8:                                 # %cond.true
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB6_10
.LBB6_9:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB6_10
.LBB6_10:                               # %cond.end
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	current_buffer, %rcx
	movq	744(%rcx), %rcx
	addq	$0, %rcx
	subq	$1, %rcx
	addq	%rcx, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	current_buffer, %rcx
	cmpq	752(%rcx), %rax
	jne	.LBB6_12
# BB#11:                                # %if.then.28
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB6_20
.LBB6_12:                               # %if.else
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	8(%rcx), %rax
	jle	.LBB6_14
# BB#13:                                # %lor.lhs.false.33
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	8(%rcx), %rax
	jle	.LBB6_18
.LBB6_14:                               # %if.then.38
	movq	current_buffer, %rax
	movq	760(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB6_16
# BB#15:                                # %cond.true.42
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB6_17
.LBB6_16:                               # %cond.false.45
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB6_17
.LBB6_17:                               # %cond.end.46
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	current_buffer, %rcx
	addq	760(%rcx), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB6_19
.LBB6_18:                               # %if.else.54
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	24(%rcx), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	40(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -32(%rbp)
.LBB6_19:                               # %if.end.64
	jmp	.LBB6_20
.LBB6_20:                               # %if.end.65
	movq	$0, -16(%rbp)
	movb	$0, -33(%rbp)
	movq	$0, -48(%rbp)
.LBB6_21:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_60 Depth 2
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB6_33
# BB#22:                                # %if.then.67
                                        #   in Loop: Header=BB6_21 Depth=1
	movq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	movq	760(%rcx), %rcx
	movq	current_buffer, %rdx
	movq	720(%rdx), %rdx
	cmpq	24(%rdx), %rcx
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jl	.LBB6_24
# BB#23:                                # %cond.true.72
                                        #   in Loop: Header=BB6_21 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB6_25
.LBB6_24:                               # %cond.false.75
                                        #   in Loop: Header=BB6_21 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB6_25
.LBB6_25:                               # %cond.end.76
                                        #   in Loop: Header=BB6_21 Depth=1
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	current_buffer, %rcx
	addq	760(%rcx), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB6_27
# BB#26:                                # %if.then.85
	jmp	.LBB6_88
.LBB6_27:                               # %if.end.86
                                        #   in Loop: Header=BB6_21 Depth=1
	movq	current_buffer, %rax
	movq	760(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB6_29
# BB#28:                                # %cond.true.91
                                        #   in Loop: Header=BB6_21 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jmp	.LBB6_30
.LBB6_29:                               # %cond.false.94
                                        #   in Loop: Header=BB6_21 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	jmp	.LBB6_30
.LBB6_30:                               # %cond.end.95
                                        #   in Loop: Header=BB6_21 Depth=1
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	current_buffer, %rcx
	addq	760(%rcx), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -32(%rbp)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	24(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -24(%rbp)
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	8(%rcx), %rax
	jl	.LBB6_32
# BB#31:                                # %if.then.113
	jmp	.LBB6_88
.LBB6_32:                               # %if.end.114
                                        #   in Loop: Header=BB6_21 Depth=1
	jmp	.LBB6_33
.LBB6_33:                               # %if.end.115
                                        #   in Loop: Header=BB6_21 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -24(%rbp)
	movzbl	-1(%rax), %edx
	movl	%edx, -52(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB6_58
# BB#34:                                # %land.lhs.true.117
                                        #   in Loop: Header=BB6_21 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB6_35
	jmp	.LBB6_36
.LBB6_35:                               # %cond.true.118
                                        #   in Loop: Header=BB6_21 Depth=1
	movl	-52(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB6_37
	jmp	.LBB6_44
.LBB6_36:                               # %cond.false.122
                                        #   in Loop: Header=BB6_21 Depth=1
	movslq	-52(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB6_44
.LBB6_37:                               # %cond.true.127
                                        #   in Loop: Header=BB6_21 Depth=1
	xorl	%edi, %edi
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB6_39
# BB#38:                                # %cond.true.131
                                        #   in Loop: Header=BB6_21 Depth=1
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB6_43
.LBB6_39:                               # %cond.false.132
                                        #   in Loop: Header=BB6_21 Depth=1
	movq	-72(%rbp), %rax
	movq	32(%rax), %rdi
	callq	SUB_CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB6_40
	jmp	.LBB6_41
.LBB6_40:                               # %cond.true.136
                                        #   in Loop: Header=BB6_21 Depth=1
	movslq	-52(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	XSUB_CHAR_TABLE
	movq	-176(%rbp), %rcx        # 8-byte Reload
	movq	16(%rax,%rcx,8), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB6_42
.LBB6_41:                               # %cond.false.139
                                        #   in Loop: Header=BB6_21 Depth=1
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
.LBB6_42:                               # %cond.end.141
                                        #   in Loop: Header=BB6_21 Depth=1
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, -168(%rbp)        # 8-byte Spill
.LBB6_43:                               # %cond.end.143
                                        #   in Loop: Header=BB6_21 Depth=1
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jmp	.LBB6_45
.LBB6_44:                               # %cond.false.145
                                        #   in Loop: Header=BB6_21 Depth=1
	movq	-72(%rbp), %rdi
	movl	-52(%rbp), %esi
	callq	disp_char_vector
	movq	%rax, -192(%rbp)        # 8-byte Spill
.LBB6_45:                               # %cond.end.147
                                        #   in Loop: Header=BB6_21 Depth=1
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB6_46
	jmp	.LBB6_58
.LBB6_46:                               # %if.then.151
                                        #   in Loop: Header=BB6_21 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB6_47
	jmp	.LBB6_48
.LBB6_47:                               # %cond.true.152
                                        #   in Loop: Header=BB6_21 Depth=1
	movl	-52(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB6_49
	jmp	.LBB6_56
.LBB6_48:                               # %cond.false.156
                                        #   in Loop: Header=BB6_21 Depth=1
	movslq	-52(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB6_56
.LBB6_49:                               # %cond.true.161
                                        #   in Loop: Header=BB6_21 Depth=1
	xorl	%edi, %edi
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-200(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB6_51
# BB#50:                                # %cond.true.166
                                        #   in Loop: Header=BB6_21 Depth=1
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	jmp	.LBB6_55
.LBB6_51:                               # %cond.false.168
                                        #   in Loop: Header=BB6_21 Depth=1
	movq	-72(%rbp), %rax
	movq	32(%rax), %rdi
	callq	SUB_CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB6_52
	jmp	.LBB6_53
.LBB6_52:                               # %cond.true.172
                                        #   in Loop: Header=BB6_21 Depth=1
	movslq	-52(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	XSUB_CHAR_TABLE
	movq	-216(%rbp), %rcx        # 8-byte Reload
	movq	16(%rax,%rcx,8), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	jmp	.LBB6_54
.LBB6_53:                               # %cond.false.178
                                        #   in Loop: Header=BB6_21 Depth=1
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
.LBB6_54:                               # %cond.end.180
                                        #   in Loop: Header=BB6_21 Depth=1
	movq	-224(%rbp), %rax        # 8-byte Reload
	movq	%rax, -208(%rbp)        # 8-byte Spill
.LBB6_55:                               # %cond.end.182
                                        #   in Loop: Header=BB6_21 Depth=1
	movq	-208(%rbp), %rax        # 8-byte Reload
	movq	%rax, -232(%rbp)        # 8-byte Spill
	jmp	.LBB6_57
.LBB6_56:                               # %cond.false.184
                                        #   in Loop: Header=BB6_21 Depth=1
	movq	-72(%rbp), %rdi
	movl	-52(%rbp), %esi
	callq	disp_char_vector
	movq	%rax, -232(%rbp)        # 8-byte Spill
.LBB6_57:                               # %cond.end.186
                                        #   in Loop: Header=BB6_21 Depth=1
	movq	-232(%rbp), %rax        # 8-byte Reload
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	callq	ASIZE
	movq	%rax, -88(%rbp)
	jmp	.LBB6_59
.LBB6_58:                               # %if.else.189
                                        #   in Loop: Header=BB6_21 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -96(%rbp)
	movq	$1, -88(%rbp)
.LBB6_59:                               # %if.end.191
                                        #   in Loop: Header=BB6_21 Depth=1
	movq	-88(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -80(%rbp)
.LBB6_60:                               # %for.cond
                                        #   Parent Loop BB6_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -80(%rbp)
	jl	.LBB6_87
# BB#61:                                # %for.body
                                        #   in Loop: Header=BB6_60 Depth=2
	movq	-96(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB6_62
	jmp	.LBB6_66
.LBB6_62:                               # %if.then.196
                                        #   in Loop: Header=BB6_60 Depth=2
	movq	-96(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	AREF
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rdi
	callq	GLYPH_CODE_P
	testb	$1, %al
	jne	.LBB6_63
	jmp	.LBB6_64
.LBB6_63:                               # %if.then.200
                                        #   in Loop: Header=BB6_60 Depth=2
	movq	-104(%rbp), %rdi
	callq	GLYPH_CODE_CHAR
	movl	%eax, -52(%rbp)
	jmp	.LBB6_65
.LBB6_64:                               # %if.else.202
                                        #   in Loop: Header=BB6_60 Depth=2
	movl	$32, -52(%rbp)
.LBB6_65:                               # %if.end.203
                                        #   in Loop: Header=BB6_60 Depth=2
	jmp	.LBB6_66
.LBB6_66:                               # %if.end.204
                                        #   in Loop: Header=BB6_60 Depth=2
	cmpl	$32, -52(%rbp)
	jl	.LBB6_69
# BB#67:                                # %land.lhs.true.207
                                        #   in Loop: Header=BB6_60 Depth=2
	cmpl	$127, -52(%rbp)
	jge	.LBB6_69
# BB#68:                                # %if.then.210
                                        #   in Loop: Header=BB6_60 Depth=2
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB6_85
.LBB6_69:                               # %if.else.211
                                        #   in Loop: Header=BB6_60 Depth=2
	cmpl	$10, -52(%rbp)
	je	.LBB6_72
# BB#70:                                # %lor.lhs.false.214
                                        #   in Loop: Header=BB6_60 Depth=2
	cmpl	$13, -52(%rbp)
	jne	.LBB6_73
# BB#71:                                # %land.lhs.true.217
                                        #   in Loop: Header=BB6_60 Depth=2
	movl	$901, %edi              # imm = 0x385
	movq	current_buffer, %rax
	movq	256(%rax), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-240(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB6_73
.LBB6_72:                               # %if.then.221
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB6_89
.LBB6_73:                               # %if.else.223
                                        #   in Loop: Header=BB6_60 Depth=2
	cmpl	$9, -52(%rbp)
	jne	.LBB6_77
# BB#74:                                # %if.then.226
                                        #   in Loop: Header=BB6_60 Depth=2
	testb	$1, -33(%rbp)
	je	.LBB6_76
# BB#75:                                # %if.then.228
                                        #   in Loop: Header=BB6_60 Depth=2
	movq	-16(%rbp), %rax
	movslq	-56(%rbp), %rcx
	addq	%rcx, %rax
	movslq	-56(%rbp), %rcx
	cqto
	idivq	%rcx
	movslq	-56(%rbp), %rcx
	imulq	%rcx, %rax
	movq	%rax, -16(%rbp)
.LBB6_76:                               # %if.end.233
                                        #   in Loop: Header=BB6_60 Depth=2
	movq	-16(%rbp), %rax
	addq	-48(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	$0, -16(%rbp)
	movb	$1, -33(%rbp)
	jmp	.LBB6_83
.LBB6_77:                               # %if.else.235
                                        #   in Loop: Header=BB6_60 Depth=2
	movq	-96(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB6_78
	jmp	.LBB6_79
.LBB6_78:                               # %if.then.237
                                        #   in Loop: Header=BB6_60 Depth=2
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB6_82
.LBB6_79:                               # %if.else.239
                                        #   in Loop: Header=BB6_60 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, -57(%rbp)
	movb	%cl, -241(%rbp)         # 1-byte Spill
	je	.LBB6_81
# BB#80:                                # %land.rhs
                                        #   in Loop: Header=BB6_60 Depth=2
	cmpl	$128, -52(%rbp)
	setl	%al
	movb	%al, -241(%rbp)         # 1-byte Spill
.LBB6_81:                               # %land.end
                                        #   in Loop: Header=BB6_60 Depth=2
	movb	-241(%rbp), %al         # 1-byte Reload
	movl	$4, %ecx
	movl	$2, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movslq	%ecx, %rsi
	addq	-16(%rbp), %rsi
	movq	%rsi, -16(%rbp)
.LBB6_82:                               # %if.end.247
                                        #   in Loop: Header=BB6_60 Depth=2
	jmp	.LBB6_83
.LBB6_83:                               # %if.end.248
                                        #   in Loop: Header=BB6_60 Depth=2
	jmp	.LBB6_84
.LBB6_84:                               # %if.end.249
                                        #   in Loop: Header=BB6_60 Depth=2
	jmp	.LBB6_85
.LBB6_85:                               # %if.end.250
                                        #   in Loop: Header=BB6_60 Depth=2
	jmp	.LBB6_86
.LBB6_86:                               # %for.inc
                                        #   in Loop: Header=BB6_60 Depth=2
	movq	-80(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB6_60
.LBB6_87:                               # %for.end
                                        #   in Loop: Header=BB6_21 Depth=1
	jmp	.LBB6_21
.LBB6_88:                               # %while.end
	jmp	.LBB6_89
.LBB6_89:                               # %start_of_line_found
	testb	$1, -33(%rbp)
	je	.LBB6_91
# BB#90:                                # %if.then.252
	movq	-16(%rbp), %rax
	movslq	-56(%rbp), %rcx
	addq	%rcx, %rax
	movslq	-56(%rbp), %rcx
	cqto
	idivq	%rcx
	movslq	-56(%rbp), %rcx
	imulq	%rcx, %rax
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	addq	-16(%rbp), %rax
	movq	%rax, -16(%rbp)
.LBB6_91:                               # %if.end.260
	movq	-16(%rbp), %rax
	movq	%rax, last_known_column
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, last_known_column_point
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	48(%rax), %rax
	movq	%rax, last_known_column_modified
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB6_92:                               # %return
	movq	-8(%rbp), %rax
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end6:
	.size	current_column, .Lfunc_end6-current_column
	.cfi_endproc

	.globl	invalidate_current_column
	.align	16, 0x90
	.type	invalidate_current_column,@function
invalidate_current_column:              # @invalidate_current_column
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
	movq	$0, last_known_column_point
	popq	%rbp
	retq
.Lfunc_end7:
	.size	invalidate_current_column, .Lfunc_end7-invalidate_current_column
	.cfi_endproc

	.align	16, 0x90
	.type	current_column_1,@function
current_column_1:                       # @current_column_1
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
	leaq	-16(%rbp), %rdi
	leaq	-8(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movabsq	$2305843009213693951, %rcx # imm = 0x1FFFFFFFFFFFFFFF
	movq	%rcx, -8(%rbp)
	movq	current_buffer, %rcx
	movq	736(%rcx), %rcx
	addq	$0, %rcx
	movq	%rcx, -16(%rbp)
	callq	scan_for_column
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	current_column_1, .Lfunc_end8-current_column_1
	.cfi_endproc

	.globl	Findent_to
	.align	16, 0x90
	.type	Findent_to,@function
Findent_to:                             # @Findent_to
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	current_buffer, %rsi
	movq	152(%rsi), %rsi
	sarq	$2, %rsi
	movq	%rsi, %rdi
	callq	sanitize_tab_width
	movl	%eax, -44(%rbp)
	movq	-16(%rbp), %rsi
	andq	$7, %rsi
	movl	%esi, %eax
	andl	$-5, %eax
	cmpl	$2, %eax
	jne	.LBB9_2
# BB#1:                                 # %cond.true
	jmp	.LBB9_3
.LBB9_2:                                # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB9_3:                                # %cond.end
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB9_5
# BB#4:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	make_natnum
	movq	%rax, -24(%rbp)
.LBB9_5:                                # %if.end
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB9_7
# BB#6:                                 # %cond.true.13
	jmp	.LBB9_8
.LBB9_7:                                # %cond.false.14
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB9_8:                                # %cond.end.16
	callq	current_column
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	sarq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jge	.LBB9_10
# BB#9:                                 # %if.then.22
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -32(%rbp)
.LBB9_10:                               # %if.end.24
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB9_12
# BB#11:                                # %if.then.27
	movq	-32(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB9_17
.LBB9_12:                               # %if.end.29
	testb	$1, globals+3386
	je	.LBB9_16
# BB#13:                                # %if.then.30
	movq	-32(%rbp), %rax
	movslq	-44(%rbp), %rcx
	cqto
	idivq	%rcx
	movq	-40(%rbp), %rcx
	movslq	-44(%rbp), %rsi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rcx, %rax
	cqto
	idivq	%rsi
	movq	-88(%rbp), %rcx         # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, %rdi
	callq	make_natnum
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	je	.LBB9_15
# BB#14:                                # %if.then.38
	movl	$901, %edi              # imm = 0x385
	movq	-56(%rbp), %rsi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$38, %edi
                                        # kill: RDI<def> EDI<kill>
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	Finsert_char
	movq	-32(%rbp), %rdx
	movslq	-44(%rbp), %rsi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%rdx, %rax
	cqto
	idivq	%rsi
	movslq	-44(%rbp), %rsi
	imulq	%rsi, %rax
	movq	%rax, -40(%rbp)
.LBB9_15:                               # %if.end.44
	jmp	.LBB9_16
.LBB9_16:                               # %if.end.45
	movq	-32(%rbp), %rax
	subq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	make_natnum
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$130, %edi
                                        # kill: RDI<def> EDI<kill>
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Finsert_char
	movq	-32(%rbp), %rdx
	movq	%rdx, last_known_column
	movq	current_buffer, %rdx
	movq	736(%rdx), %rdx
	addq	$0, %rdx
	movq	%rdx, last_known_column_point
	movq	current_buffer, %rdx
	movq	720(%rdx), %rdx
	movq	48(%rdx), %rdx
	movq	%rdx, last_known_column_modified
	movq	-32(%rbp), %rdx
	shlq	$2, %rdx
	addq	$2, %rdx
	movq	%rdx, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -8(%rbp)
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB9_17:                               # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	Findent_to, .Lfunc_end9-Findent_to
	.cfi_endproc

	.globl	Fcurrent_indentation
	.align	16, 0x90
	.type	Fcurrent_indentation,@function
Fcurrent_indentation:                   # @Fcurrent_indentation
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
	subq	$64, %rsp
	movq	$-1, %r8
	xorl	%eax, %eax
	movl	%eax, %r9d
	leaq	-8(%rbp), %rcx
	movl	$1, %eax
	movq	current_buffer, %rdx
	movq	736(%rdx), %rdx
	addq	$0, %rdx
	movq	current_buffer, %rsi
	movq	744(%rsi), %rsi
	addq	$0, %rsi
	movq	current_buffer, %rdi
	movq	752(%rdi), %rdi
	movq	current_buffer, %r10
	movq	760(%r10), %r10
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movq	%rcx, -24(%rbp)         # 8-byte Spill
	movq	%r10, %rcx
	movq	-24(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movl	$1, 8(%rsp)
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	find_newline
	movq	-8(%rbp), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	position_indentation
	shlq	$2, %rax
	addq	$2, %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	Fcurrent_indentation, .Lfunc_end10-Fcurrent_indentation
	.cfi_endproc

	.align	16, 0x90
	.type	position_indentation,@function
position_indentation:                   # @position_indentation
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
	subq	$288, %rsp              # imm = 0x120
	movq	%rdi, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	current_buffer, %rdi
	movq	152(%rdi), %rdi
	sarq	$2, %rdi
	callq	sanitize_tab_width
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -64(%rbp)
	movq	-64(%rbp), %rdi
	movq	%rdi, -72(%rbp)
	movq	-16(%rbp), %rdi
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rdi
	jl	.LBB11_2
# BB#1:                                 # %cond.true
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB11_3
.LBB11_2:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB11_3
.LBB11_3:                               # %cond.end
	movq	-120(%rbp), %rax        # 8-byte Reload
	addq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB11_4:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_5 Depth 2
	jmp	.LBB11_5
.LBB11_5:                               # %while.cond.4
                                        #   Parent Loop BB11_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB11_31
# BB#6:                                 # %while.body.6
                                        #   in Loop: Header=BB11_5 Depth=2
	movq	-40(%rbp), %rax
	cmpq	-56(%rbp), %rax
	je	.LBB11_11
# BB#7:                                 # %if.then
                                        #   in Loop: Header=BB11_5 Depth=2
	movq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movq	current_buffer, %rdx
	movq	720(%rdx), %rdx
	movq	(%rdx), %rdx
	subq	%rdx, %rcx
	movq	current_buffer, %rdx
	movq	720(%rdx), %rdx
	movq	24(%rdx), %rdx
	subq	$1, %rdx
	cmpq	%rdx, %rcx
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jg	.LBB11_9
# BB#8:                                 # %cond.true.18
                                        #   in Loop: Header=BB11_5 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	jmp	.LBB11_10
.LBB11_9:                               # %cond.false.19
                                        #   in Loop: Header=BB11_5 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB11_10:                              # %cond.end.22
                                        #   in Loop: Header=BB11_5 Depth=2
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	-128(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
.LBB11_11:                              # %if.end
                                        #   in Loop: Header=BB11_5 Depth=2
	movq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	cmpq	776(%rcx), %rax
	jne	.LBB11_13
# BB#12:                                # %if.then.27
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB11_67
.LBB11_13:                              # %if.end.28
                                        #   in Loop: Header=BB11_5 Depth=2
	movq	-16(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB11_15
# BB#14:                                # %if.then.30
                                        #   in Loop: Header=BB11_5 Depth=2
	movq	current_buffer, %rdi
	movq	-16(%rbp), %rsi
	callq	buf_bytepos_to_charpos
	xorl	%edi, %edi
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	current_buffer, %rsi
	movq	768(%rsi), %rdx
	movq	%rdx, -144(%rbp)        # 8-byte Spill
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	leaq	-88(%rbp), %rsi
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	-144(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	skip_invisible
	movq	%rax, -96(%rbp)
	movq	current_buffer, %rdi
	movq	-96(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -16(%rbp)
	movq	current_buffer, %rdi
	movq	-88(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -64(%rbp)
.LBB11_15:                              # %if.end.36
                                        #   in Loop: Header=BB11_5 Depth=2
	movq	-16(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jl	.LBB11_21
# BB#16:                                # %if.then.38
                                        #   in Loop: Header=BB11_5 Depth=2
	movq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jge	.LBB11_19
# BB#17:                                # %land.lhs.true
                                        #   in Loop: Header=BB11_5 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	8(%rax), %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	jge	.LBB11_19
# BB#18:                                # %cond.true.45
                                        #   in Loop: Header=BB11_5 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB11_20
.LBB11_19:                              # %cond.false.48
                                        #   in Loop: Header=BB11_5 Depth=2
	movq	current_buffer, %rax
	movq	776(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
.LBB11_20:                              # %cond.end.50
                                        #   in Loop: Header=BB11_5 Depth=2
	movq	-160(%rbp), %rax        # 8-byte Reload
	subq	$1, %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
.LBB11_21:                              # %if.end.54
                                        #   in Loop: Header=BB11_5 Depth=2
	movq	-72(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jge	.LBB11_23
# BB#22:                                # %cond.true.56
                                        #   in Loop: Header=BB11_5 Depth=2
	movq	-72(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB11_24
.LBB11_23:                              # %cond.false.57
                                        #   in Loop: Header=BB11_5 Depth=2
	movq	-64(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
.LBB11_24:                              # %cond.end.58
                                        #   in Loop: Header=BB11_5 Depth=2
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	subq	$1, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB11_26
# BB#25:                                # %cond.true.64
                                        #   in Loop: Header=BB11_5 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB11_27
.LBB11_26:                              # %cond.false.67
                                        #   in Loop: Header=BB11_5 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	jmp	.LBB11_27
.LBB11_27:                              # %cond.end.68
                                        #   in Loop: Header=BB11_5 Depth=2
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	-80(%rbp), %rcx
	subq	$1, %rcx
	addq	%rcx, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB11_29
# BB#28:                                # %cond.true.80
                                        #   in Loop: Header=BB11_5 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB11_30
.LBB11_29:                              # %cond.false.83
                                        #   in Loop: Header=BB11_5 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	jmp	.LBB11_30
.LBB11_30:                              # %cond.end.84
                                        #   in Loop: Header=BB11_5 Depth=2
	movq	-184(%rbp), %rax        # 8-byte Reload
	addq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB11_5
.LBB11_31:                              # %while.end
                                        #   in Loop: Header=BB11_4 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	incq	%rcx
	movq	%rcx, -40(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, %esi
	subl	$9, %esi
	movl	%edx, -188(%rbp)        # 4-byte Spill
	movl	%esi, -192(%rbp)        # 4-byte Spill
	je	.LBB11_36
	jmp	.LBB11_68
.LBB11_68:                              # %while.end
                                        #   in Loop: Header=BB11_4 Depth=1
	movl	-188(%rbp), %eax        # 4-byte Reload
	subl	$32, %eax
	movl	%eax, -196(%rbp)        # 4-byte Spill
	je	.LBB11_35
	jmp	.LBB11_69
.LBB11_69:                              # %while.end
                                        #   in Loop: Header=BB11_4 Depth=1
	movl	-188(%rbp), %eax        # 4-byte Reload
	subl	$160, %eax
	movl	%eax, -200(%rbp)        # 4-byte Spill
	jne	.LBB11_37
	jmp	.LBB11_32
.LBB11_32:                              # %sw.bb
                                        #   in Loop: Header=BB11_4 Depth=1
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB11_34
# BB#33:                                # %if.then.94
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB11_67
.LBB11_34:                              # %if.end.95
                                        #   in Loop: Header=BB11_4 Depth=1
	jmp	.LBB11_35
.LBB11_35:                              # %sw.bb.96
                                        #   in Loop: Header=BB11_4 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB11_66
.LBB11_36:                              # %sw.bb.97
                                        #   in Loop: Header=BB11_4 Depth=1
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	movslq	-28(%rbp), %rdx
	movq	%rax, -216(%rbp)        # 8-byte Spill
	movq	%rcx, %rax
	movq	%rdx, -224(%rbp)        # 8-byte Spill
	cqto
	movq	-224(%rbp), %rcx        # 8-byte Reload
	idivq	%rcx
	movq	-216(%rbp), %rsi        # 8-byte Reload
	subq	%rdx, %rsi
	addq	-24(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	jmp	.LBB11_66
.LBB11_37:                              # %sw.default
                                        #   in Loop: Header=BB11_4 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB11_38
	jmp	.LBB11_39
.LBB11_38:                              # %cond.true.102
                                        #   in Loop: Header=BB11_4 Depth=1
	movq	-40(%rbp), %rax
	movzbl	-1(%rax), %ecx
	addl	$0, %ecx
	cmpl	$128, %ecx
	jb	.LBB11_41
	jmp	.LBB11_40
.LBB11_39:                              # %cond.false.107
                                        #   in Loop: Header=BB11_4 Depth=1
	movq	-40(%rbp), %rax
	movzbl	-1(%rax), %ecx
	movl	%ecx, %eax
	addq	$0, %rax
	cmpq	$128, %rax
	jb	.LBB11_41
.LBB11_40:                              # %lor.lhs.false
                                        #   in Loop: Header=BB11_4 Depth=1
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-232(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB11_42
.LBB11_41:                              # %if.then.117
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB11_67
.LBB11_42:                              # %if.end.118
                                        #   in Loop: Header=BB11_4 Depth=1
	movq	-40(%rbp), %rax
	addq	$-1, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	addq	$-1, %rcx
	movq	current_buffer, %rdx
	movq	720(%rdx), %rdx
	movq	(%rdx), %rdx
	subq	%rdx, %rcx
	movq	current_buffer, %rdx
	movq	720(%rdx), %rdx
	movq	24(%rdx), %rdx
	subq	$1, %rdx
	cmpq	%rdx, %rcx
	movq	%rax, -240(%rbp)        # 8-byte Spill
	jg	.LBB11_44
# BB#43:                                # %cond.true.136
                                        #   in Loop: Header=BB11_4 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -248(%rbp)        # 8-byte Spill
	jmp	.LBB11_45
.LBB11_44:                              # %cond.false.137
                                        #   in Loop: Header=BB11_4 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
.LBB11_45:                              # %cond.end.140
                                        #   in Loop: Header=BB11_4 Depth=1
	movq	-248(%rbp), %rax        # 8-byte Reload
	movq	-240(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	FETCH_MULTIBYTE_CHAR
	movl	$32, %esi
	movl	%eax, -100(%rbp)
	movl	-100(%rbp), %edi
	callq	CHAR_HAS_CATEGORY
	testb	$1, %al
	jne	.LBB11_46
	jmp	.LBB11_64
.LBB11_46:                              # %if.then.146
                                        #   in Loop: Header=BB11_4 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
# BB#47:                                # %do.body
                                        #   in Loop: Header=BB11_4 Depth=1
	movq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB11_49
# BB#48:                                # %cond.true.152
                                        #   in Loop: Header=BB11_4 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	jmp	.LBB11_50
.LBB11_49:                              # %cond.false.155
                                        #   in Loop: Header=BB11_4 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	jmp	.LBB11_50
.LBB11_50:                              # %cond.end.156
                                        #   in Loop: Header=BB11_4 Depth=1
	movq	-256(%rbp), %rax        # 8-byte Reload
	addq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movzbl	(%rax), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	jne	.LBB11_52
# BB#51:                                # %cond.true.164
                                        #   in Loop: Header=BB11_4 Depth=1
	movl	$1, %eax
	movl	%eax, -260(%rbp)        # 4-byte Spill
	jmp	.LBB11_59
.LBB11_52:                              # %cond.false.165
                                        #   in Loop: Header=BB11_4 Depth=1
	movq	-112(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB11_54
# BB#53:                                # %cond.true.169
                                        #   in Loop: Header=BB11_4 Depth=1
	movl	$2, %eax
	movl	%eax, -264(%rbp)        # 4-byte Spill
	jmp	.LBB11_58
.LBB11_54:                              # %cond.false.170
                                        #   in Loop: Header=BB11_4 Depth=1
	movq	-112(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB11_56
# BB#55:                                # %cond.true.174
                                        #   in Loop: Header=BB11_4 Depth=1
	movl	$3, %eax
	movl	%eax, -268(%rbp)        # 4-byte Spill
	jmp	.LBB11_57
.LBB11_56:                              # %cond.false.175
                                        #   in Loop: Header=BB11_4 Depth=1
	movl	$5, %eax
	movl	$4, %ecx
	movq	-112(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$8, %esi
	cmpl	$0, %esi
	setne	%dil
	xorb	$-1, %dil
	testb	$1, %dil
	cmovnel	%ecx, %eax
	movl	%eax, -268(%rbp)        # 4-byte Spill
.LBB11_57:                              # %cond.end.180
                                        #   in Loop: Header=BB11_4 Depth=1
	movl	-268(%rbp), %eax        # 4-byte Reload
	movl	%eax, -264(%rbp)        # 4-byte Spill
.LBB11_58:                              # %cond.end.182
                                        #   in Loop: Header=BB11_4 Depth=1
	movl	-264(%rbp), %eax        # 4-byte Reload
	movl	%eax, -260(%rbp)        # 4-byte Spill
.LBB11_59:                              # %cond.end.184
                                        #   in Loop: Header=BB11_4 Depth=1
	movl	-260(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	addq	-16(%rbp), %rcx
	movq	%rcx, -16(%rbp)
# BB#60:                                # %do.end
                                        #   in Loop: Header=BB11_4 Depth=1
	movq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB11_62
# BB#61:                                # %cond.true.192
                                        #   in Loop: Header=BB11_4 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	jmp	.LBB11_63
.LBB11_62:                              # %cond.false.195
                                        #   in Loop: Header=BB11_4 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -280(%rbp)        # 8-byte Spill
	jmp	.LBB11_63
.LBB11_63:                              # %cond.end.196
                                        #   in Loop: Header=BB11_4 Depth=1
	movq	-280(%rbp), %rax        # 8-byte Reload
	addq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB11_65
.LBB11_64:                              # %if.else
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB11_67
.LBB11_65:                              # %if.end.203
                                        #   in Loop: Header=BB11_4 Depth=1
	jmp	.LBB11_66
.LBB11_66:                              # %sw.epilog
                                        #   in Loop: Header=BB11_4 Depth=1
	jmp	.LBB11_4
.LBB11_67:                              # %return
	movq	-8(%rbp), %rax
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end11:
	.size	position_indentation, .Lfunc_end11-position_indentation
	.cfi_endproc

	.globl	indented_beyond_p
	.align	16, 0x90
	.type	indented_beyond_p,@function
indented_beyond_p:                      # @indented_beyond_p
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
.LBB12_1:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_15 Depth 2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movq	current_buffer, %rsi
	cmpq	752(%rsi), %rdx
	movb	%cl, -33(%rbp)          # 1-byte Spill
	jle	.LBB12_6
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB12_4
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB12_5
.LBB12_4:                               # %cond.false
                                        #   in Loop: Header=BB12_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB12_5
.LBB12_5:                               # %cond.end
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	addq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	cmpl	$10, %edx
	sete	%sil
	movb	%sil, -33(%rbp)         # 1-byte Spill
.LBB12_6:                               # %land.end
                                        #   in Loop: Header=BB12_1 Depth=1
	movb	-33(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB12_7
	jmp	.LBB12_21
.LBB12_7:                               # %while.body
                                        #   in Loop: Header=BB12_1 Depth=1
	jmp	.LBB12_8
.LBB12_8:                               # %do.body
                                        #   in Loop: Header=BB12_1 Depth=1
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -8(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB12_10
# BB#9:                                 # %if.then
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB12_19
.LBB12_10:                              # %if.else
                                        #   in Loop: Header=BB12_1 Depth=1
	jmp	.LBB12_11
.LBB12_11:                              # %do.body.10
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jge	.LBB12_13
# BB#12:                                # %if.then.16
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	addq	-16(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB12_14
.LBB12_13:                              # %if.else.21
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	40(%rcx), %rax
	addq	-16(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -32(%rbp)
.LBB12_14:                              # %if.end
                                        #   in Loop: Header=BB12_1 Depth=1
	jmp	.LBB12_15
.LBB12_15:                              # %while.cond.29
                                        #   Parent Loop BB12_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	setne	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB12_16
	jmp	.LBB12_17
.LBB12_16:                              # %while.body.33
                                        #   in Loop: Header=BB12_15 Depth=2
	movq	-32(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB12_15
.LBB12_17:                              # %while.end
                                        #   in Loop: Header=BB12_1 Depth=1
	jmp	.LBB12_18
.LBB12_18:                              # %do.end
                                        #   in Loop: Header=BB12_1 Depth=1
	jmp	.LBB12_19
.LBB12_19:                              # %if.end.35
                                        #   in Loop: Header=BB12_1 Depth=1
	jmp	.LBB12_20
.LBB12_20:                              # %do.end.36
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	$-1, %r8
	xorl	%eax, %eax
	movl	%eax, %r9d
	leaq	-16(%rbp), %rcx
	xorl	%eax, %eax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	current_buffer, %rdx
	movq	752(%rdx), %rdx
	movq	current_buffer, %r10
	movq	760(%r10), %r10
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%r10, %rcx
	movq	-64(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movl	$0, 8(%rsp)
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	find_newline
	movq	%rax, -8(%rbp)
	jmp	.LBB12_1
.LBB12_21:                              # %while.end.39
	movq	-16(%rbp), %rdi
	callq	position_indentation
	cmpq	-24(%rbp), %rax
	setge	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	indented_beyond_p, .Lfunc_end12-indented_beyond_p
	.cfi_endproc

	.globl	Fmove_to_column
	.align	16, 0x90
	.type	Fmove_to_column,@function
Fmove_to_column:                        # @Fmove_to_column
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_NATNUM
	leaq	-24(%rbp), %rdi
	leaq	-40(%rbp), %rsi
	leaq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	%rax, -24(%rbp)
	callq	scan_for_column
	movq	-24(%rbp), %rdi
	callq	set_point
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB13_20
# BB#1:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jle	.LBB13_20
# BB#2:                                 # %if.then
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	movq	%rax, -64(%rbp)
# BB#3:                                 # %do.body
	movq	-64(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jge	.LBB13_5
# BB#4:                                 # %if.then.3
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	addq	-64(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB13_6
.LBB13_5:                               # %if.else
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	40(%rcx), %rax
	addq	-64(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -72(%rbp)
.LBB13_6:                               # %if.end
	jmp	.LBB13_7
.LBB13_7:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-72(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	setne	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB13_8
	jmp	.LBB13_9
.LBB13_8:                               # %while.body
                                        #   in Loop: Header=BB13_7 Depth=1
	movq	-72(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB13_7
.LBB13_9:                               # %while.end
	jmp	.LBB13_10
.LBB13_10:                              # %do.end
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB13_12
# BB#11:                                # %cond.true
	movq	-64(%rbp), %rdi
	callq	FETCH_MULTIBYTE_CHAR
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB13_16
.LBB13_12:                              # %cond.false
	movq	-64(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB13_14
# BB#13:                                # %cond.true.23
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB13_15
.LBB13_14:                              # %cond.false.26
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB13_15
.LBB13_15:                              # %cond.end
	movq	-120(%rbp), %rax        # 8-byte Reload
	addq	-64(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, -108(%rbp)        # 4-byte Spill
.LBB13_16:                              # %cond.end.33
	movl	-108(%rbp), %eax        # 4-byte Reload
	movl	%eax, -52(%rbp)
	cmpl	$9, -52(%rbp)
	jne	.LBB13_19
# BB#17:                                # %land.lhs.true.37
	movq	-32(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jge	.LBB13_19
# BB#18:                                # %if.then.40
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	subq	$1, %rax
	movq	current_buffer, %rcx
	movq	744(%rcx), %rcx
	addq	$0, %rcx
	subq	$1, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	set_point_both
	movl	$901, %edi              # imm = 0x385
	movq	-48(%rbp), %rax
	subq	-32(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$130, %edi
                                        # kill: RDI<def> EDI<kill>
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Finsert_char
	movq	current_buffer, %rcx
	movq	736(%rcx), %rcx
	addq	$0, %rcx
	movq	current_buffer, %rdx
	movq	736(%rdx), %rdx
	addq	$0, %rdx
	addq	$1, %rdx
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	del_range
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, -80(%rbp)
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	movq	%rax, -88(%rbp)
	movq	-40(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Findent_to
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	set_point_both
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB13_19:                              # %if.end.62
	jmp	.LBB13_20
.LBB13_20:                              # %if.end.63
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jge	.LBB13_23
# BB#21:                                # %land.lhs.true.66
	movl	$901, %edi              # imm = 0x385
	movq	-16(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB13_23
# BB#22:                                # %if.then.70
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Findent_to
	movq	%rax, -176(%rbp)        # 8-byte Spill
.LBB13_23:                              # %if.end.75
	movq	-40(%rbp), %rax
	movq	%rax, last_known_column
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, last_known_column_point
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	48(%rax), %rax
	movq	%rax, last_known_column_modified
	movq	-40(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	Fmove_to_column, .Lfunc_end13-Fmove_to_column
	.cfi_endproc

	.align	16, 0x90
	.type	scan_for_column,@function
scan_for_column:                        # @scan_for_column
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
	subq	$768, %rsp              # imm = 0x300
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	current_buffer, %rdx
	movq	152(%rdx), %rdx
	sarq	$2, %rdx
	movq	%rdx, %rdi
	callq	sanitize_tab_width
	xorl	%edi, %edi
	movl	%eax, -28(%rbp)
	movq	current_buffer, %rdx
	movq	232(%rdx), %rdx
	movq	%rdx, -288(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-288(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	sete	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movb	%cl, -29(%rbp)
	callq	buffer_display_table
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-296(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	sete	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movb	%cl, -41(%rbp)
	movq	$0, -144(%rbp)
	movq	$0, -152(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB14_2
# BB#1:                                 # %cond.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	jmp	.LBB14_3
.LBB14_2:                               # %cond.false
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	movq	%rax, -304(%rbp)        # 8-byte Spill
	jmp	.LBB14_3
.LBB14_3:                               # %cond.end
	movq	-304(%rbp), %rax        # 8-byte Reload
	movq	%rax, -160(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB14_5
# BB#4:                                 # %cond.true.8
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	jmp	.LBB14_6
.LBB14_5:                               # %cond.false.9
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
.LBB14_6:                               # %cond.end.10
	movq	-312(%rbp), %rax        # 8-byte Reload
	movq	$-1, %r8
	xorl	%ecx, %ecx
	movl	%ecx, %r9d
	leaq	-184(%rbp), %rdx
	movl	$1, %ecx
	movq	%rax, -168(%rbp)
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	current_buffer, %rsi
	movq	744(%rsi), %rsi
	addq	$0, %rsi
	movq	current_buffer, %rdi
	movq	752(%rdi), %rdi
	movq	current_buffer, %r10
	movq	760(%r10), %r10
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-320(%rbp), %rax        # 8-byte Reload
	movq	%rdx, -328(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movl	%ecx, -332(%rbp)        # 4-byte Spill
	movq	%r10, %rcx
	movq	-328(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movl	$1, 8(%rsp)
	callq	find_newline
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	callq	Fcurrent_buffer
	xorl	%edi, %edi
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget_buffer_window
	xorl	%edi, %edi
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-352(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB14_8
# BB#7:                                 # %cond.true.21
	movq	-128(%rbp), %rdi
	callq	XWINDOW
	movq	%rax, -360(%rbp)        # 8-byte Spill
	jmp	.LBB14_9
.LBB14_8:                               # %cond.false.23
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -360(%rbp)        # 8-byte Spill
	jmp	.LBB14_9
.LBB14_9:                               # %cond.end.24
	movq	-360(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movl	$72, %edx
                                        # kill: RDX<def> EDX<kill>
	leaq	-120(%rbp), %rsi
	movq	%rax, -136(%rbp)
	movq	%rsi, %rdi
	movl	%ecx, %esi
	movl	%ecx, -364(%rbp)        # 4-byte Spill
	callq	memset
	movq	$-1, -112(%rbp)
	movq	-176(%rbp), %rsi
	movq	-184(%rbp), %rdx
	movq	-168(%rbp), %rcx
	movl	-364(%rbp), %edi        # 4-byte Reload
	movq	%rsi, -376(%rbp)        # 8-byte Spill
	movq	%rdx, -384(%rbp)        # 8-byte Spill
	movq	%rcx, -392(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	leaq	-120(%rbp), %rdi
	movq	-376(%rbp), %rsi        # 8-byte Reload
	movq	-384(%rbp), %rdx        # 8-byte Reload
	movq	-392(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	callq	composition_compute_stop_pos
.LBB14_10:                              # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_12 Depth 2
                                        #     Child Loop BB14_65 Depth 2
	movq	-176(%rbp), %rax
	cmpq	-168(%rbp), %rax
	jge	.LBB14_172
# BB#11:                                # %while.body
                                        #   in Loop: Header=BB14_10 Depth=1
	jmp	.LBB14_12
.LBB14_12:                              # %while.cond.28
                                        #   Parent Loop BB14_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-176(%rbp), %rax
	cmpq	-192(%rbp), %rax
	jne	.LBB14_18
# BB#13:                                # %while.body.30
                                        #   in Loop: Header=BB14_12 Depth=2
	xorl	%edi, %edi
	movq	-176(%rbp), %rax
	movq	%rax, -208(%rbp)
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rdx, -400(%rbp)        # 8-byte Spill
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	leaq	-192(%rbp), %rsi
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	-400(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	skip_invisible
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	cmpq	-208(%rbp), %rax
	je	.LBB14_15
# BB#14:                                # %if.then
                                        #   in Loop: Header=BB14_12 Depth=2
	movq	current_buffer, %rdi
	movq	-176(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -184(%rbp)
.LBB14_15:                              # %if.end
                                        #   in Loop: Header=BB14_12 Depth=2
	movq	-176(%rbp), %rax
	cmpq	-168(%rbp), %rax
	jl	.LBB14_17
# BB#16:                                # %if.then.36
	jmp	.LBB14_173
.LBB14_17:                              # %if.end.37
                                        #   in Loop: Header=BB14_12 Depth=2
	jmp	.LBB14_12
.LBB14_18:                              # %while.end
                                        #   in Loop: Header=BB14_10 Depth=1
	movq	-144(%rbp), %rax
	cmpq	-160(%rbp), %rax
	jl	.LBB14_20
# BB#19:                                # %if.then.39
	jmp	.LBB14_172
.LBB14_20:                              # %if.end.40
                                        #   in Loop: Header=BB14_10 Depth=1
	leaq	-216(%rbp), %rdx
	movq	-144(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	-176(%rbp), %rdi
	movq	-144(%rbp), %rsi
	callq	check_display_width
	movl	%eax, -220(%rbp)
	cmpl	$0, -220(%rbp)
	jl	.LBB14_24
# BB#21:                                # %if.then.43
                                        #   in Loop: Header=BB14_10 Depth=1
	movslq	-220(%rbp), %rax
	addq	-144(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-216(%rbp), %rax
	cmpq	-176(%rbp), %rax
	jle	.LBB14_23
# BB#22:                                # %if.then.47
                                        #   in Loop: Header=BB14_10 Depth=1
	movq	-216(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	current_buffer, %rdi
	movq	-176(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -184(%rbp)
	jmp	.LBB14_10
.LBB14_23:                              # %if.end.49
                                        #   in Loop: Header=BB14_10 Depth=1
	jmp	.LBB14_24
.LBB14_24:                              # %if.end.50
                                        #   in Loop: Header=BB14_10 Depth=1
	cmpq	$0, -112(%rbp)
	jge	.LBB14_27
# BB#25:                                # %lor.lhs.false
                                        #   in Loop: Header=BB14_10 Depth=1
	movq	-176(%rbp), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB14_28
# BB#26:                                # %land.lhs.true
                                        #   in Loop: Header=BB14_10 Depth=1
	xorl	%edi, %edi
	movq	-176(%rbp), %rsi
	movq	-184(%rbp), %rdx
	movq	-168(%rbp), %rcx
	movq	-136(%rbp), %r8
	movq	%r8, -416(%rbp)         # 8-byte Spill
	movq	%rsi, -424(%rbp)        # 8-byte Spill
	movq	%rdx, -432(%rbp)        # 8-byte Spill
	movq	%rcx, -440(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	leaq	-120(%rbp), %rdi
	xorl	%r9d, %r9d
                                        # kill: R9<def> R9D<kill>
	movq	-424(%rbp), %rsi        # 8-byte Reload
	movq	-432(%rbp), %rdx        # 8-byte Reload
	movq	-440(%rbp), %rcx        # 8-byte Reload
	movq	-416(%rbp), %r8         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	composition_reseat_it
	testb	$1, %al
	jne	.LBB14_27
	jmp	.LBB14_28
.LBB14_27:                              # %if.then.59
                                        #   in Loop: Header=BB14_10 Depth=1
	xorl	%edi, %edi
	movq	-176(%rbp), %rsi
	movq	-184(%rbp), %rdx
	movq	%rdx, -448(%rbp)        # 8-byte Spill
	movq	%rsi, -456(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	leaq	-120(%rbp), %rdi
	movq	-456(%rbp), %rsi        # 8-byte Reload
	movq	-448(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	composition_update_it
	movl	%eax, -460(%rbp)        # 4-byte Spill
.LBB14_28:                              # %if.end.62
                                        #   in Loop: Header=BB14_10 Depth=1
	cmpq	$0, -112(%rbp)
	jl	.LBB14_35
# BB#29:                                # %if.then.66
                                        #   in Loop: Header=BB14_10 Depth=1
	movslq	-72(%rbp), %rax
	addq	-176(%rbp), %rax
	movq	%rax, -176(%rbp)
	movslq	-68(%rbp), %rax
	addq	-184(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	-176(%rbp), %rax
	cmpq	-168(%rbp), %rax
	jg	.LBB14_31
# BB#30:                                # %if.then.73
                                        #   in Loop: Header=BB14_10 Depth=1
	movslq	-56(%rbp), %rax
	addq	-144(%rbp), %rax
	movq	%rax, -144(%rbp)
.LBB14_31:                              # %if.end.77
                                        #   in Loop: Header=BB14_10 Depth=1
	movl	-60(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jne	.LBB14_33
# BB#32:                                # %if.then.80
                                        #   in Loop: Header=BB14_10 Depth=1
	xorl	%edi, %edi
	movq	$-1, -112(%rbp)
	movq	-176(%rbp), %rsi
	movq	-184(%rbp), %rdx
	movq	-168(%rbp), %rcx
	movq	%rcx, -472(%rbp)        # 8-byte Spill
	movq	%rsi, -480(%rbp)        # 8-byte Spill
	movq	%rdx, -488(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	leaq	-120(%rbp), %rdi
	movq	-480(%rbp), %rsi        # 8-byte Reload
	movq	-488(%rbp), %rdx        # 8-byte Reload
	movq	-472(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	callq	composition_compute_stop_pos
	jmp	.LBB14_34
.LBB14_33:                              # %if.else
                                        #   in Loop: Header=BB14_10 Depth=1
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
.LBB14_34:                              # %if.end.84
                                        #   in Loop: Header=BB14_10 Depth=1
	jmp	.LBB14_10
.LBB14_35:                              # %if.end.85
                                        #   in Loop: Header=BB14_10 Depth=1
	movq	-184(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB14_37
# BB#36:                                # %cond.true.88
                                        #   in Loop: Header=BB14_10 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	jmp	.LBB14_38
.LBB14_37:                              # %cond.false.90
                                        #   in Loop: Header=BB14_10 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -496(%rbp)        # 8-byte Spill
	jmp	.LBB14_38
.LBB14_38:                              # %cond.end.91
                                        #   in Loop: Header=BB14_10 Depth=1
	movq	-496(%rbp), %rax        # 8-byte Reload
	addq	-184(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, -196(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB14_80
# BB#39:                                # %land.lhs.true.99
                                        #   in Loop: Header=BB14_10 Depth=1
	testb	$1, -41(%rbp)
	je	.LBB14_41
# BB#40:                                # %land.lhs.true.102
                                        #   in Loop: Header=BB14_10 Depth=1
	movl	-196(%rbp), %eax
	andl	$192, %eax
	cmpl	$192, %eax
	je	.LBB14_80
.LBB14_41:                              # %land.lhs.true.105
                                        #   in Loop: Header=BB14_10 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB14_42
	jmp	.LBB14_43
.LBB14_42:                              # %cond.true.106
                                        #   in Loop: Header=BB14_10 Depth=1
	movl	-196(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB14_44
	jmp	.LBB14_51
.LBB14_43:                              # %cond.false.110
                                        #   in Loop: Header=BB14_10 Depth=1
	movslq	-196(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB14_51
.LBB14_44:                              # %cond.true.115
                                        #   in Loop: Header=BB14_10 Depth=1
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-504(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB14_46
# BB#45:                                # %cond.true.119
                                        #   in Loop: Header=BB14_10 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	jmp	.LBB14_50
.LBB14_46:                              # %cond.false.120
                                        #   in Loop: Header=BB14_10 Depth=1
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdi
	callq	SUB_CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB14_47
	jmp	.LBB14_48
.LBB14_47:                              # %cond.true.124
                                        #   in Loop: Header=BB14_10 Depth=1
	movslq	-196(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	XSUB_CHAR_TABLE
	movq	-520(%rbp), %rcx        # 8-byte Reload
	movq	16(%rax,%rcx,8), %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	jmp	.LBB14_49
.LBB14_48:                              # %cond.false.127
                                        #   in Loop: Header=BB14_10 Depth=1
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
.LBB14_49:                              # %cond.end.129
                                        #   in Loop: Header=BB14_10 Depth=1
	movq	-528(%rbp), %rax        # 8-byte Reload
	movq	%rax, -512(%rbp)        # 8-byte Spill
.LBB14_50:                              # %cond.end.131
                                        #   in Loop: Header=BB14_10 Depth=1
	movq	-512(%rbp), %rax        # 8-byte Reload
	movq	%rax, -536(%rbp)        # 8-byte Spill
	jmp	.LBB14_52
.LBB14_51:                              # %cond.false.133
                                        #   in Loop: Header=BB14_10 Depth=1
	movq	-40(%rbp), %rdi
	movl	-196(%rbp), %esi
	callq	disp_char_vector
	movq	%rax, -536(%rbp)        # 8-byte Spill
.LBB14_52:                              # %cond.end.135
                                        #   in Loop: Header=BB14_10 Depth=1
	movq	-536(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB14_53
	jmp	.LBB14_80
.LBB14_53:                              # %if.then.139
                                        #   in Loop: Header=BB14_10 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB14_54
	jmp	.LBB14_55
.LBB14_54:                              # %cond.true.140
                                        #   in Loop: Header=BB14_10 Depth=1
	movl	-196(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB14_56
	jmp	.LBB14_63
.LBB14_55:                              # %cond.false.144
                                        #   in Loop: Header=BB14_10 Depth=1
	movslq	-196(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB14_63
.LBB14_56:                              # %cond.true.149
                                        #   in Loop: Header=BB14_10 Depth=1
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-544(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB14_58
# BB#57:                                # %cond.true.154
                                        #   in Loop: Header=BB14_10 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
	jmp	.LBB14_62
.LBB14_58:                              # %cond.false.156
                                        #   in Loop: Header=BB14_10 Depth=1
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdi
	callq	SUB_CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB14_59
	jmp	.LBB14_60
.LBB14_59:                              # %cond.true.160
                                        #   in Loop: Header=BB14_10 Depth=1
	movslq	-196(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	XSUB_CHAR_TABLE
	movq	-560(%rbp), %rcx        # 8-byte Reload
	movq	16(%rax,%rcx,8), %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
	jmp	.LBB14_61
.LBB14_60:                              # %cond.false.166
                                        #   in Loop: Header=BB14_10 Depth=1
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
.LBB14_61:                              # %cond.end.168
                                        #   in Loop: Header=BB14_10 Depth=1
	movq	-568(%rbp), %rax        # 8-byte Reload
	movq	%rax, -552(%rbp)        # 8-byte Spill
.LBB14_62:                              # %cond.end.170
                                        #   in Loop: Header=BB14_10 Depth=1
	movq	-552(%rbp), %rax        # 8-byte Reload
	movq	%rax, -576(%rbp)        # 8-byte Spill
	jmp	.LBB14_64
.LBB14_63:                              # %cond.false.172
                                        #   in Loop: Header=BB14_10 Depth=1
	movq	-40(%rbp), %rdi
	movl	-196(%rbp), %esi
	callq	disp_char_vector
	movq	%rax, -576(%rbp)        # 8-byte Spill
.LBB14_64:                              # %cond.end.174
                                        #   in Loop: Header=BB14_10 Depth=1
	movq	-576(%rbp), %rax        # 8-byte Reload
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rdi
	callq	ASIZE
	movq	%rax, -248(%rbp)
	movq	$0, -240(%rbp)
.LBB14_65:                              # %for.cond
                                        #   Parent Loop BB14_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-240(%rbp), %rax
	cmpq	-248(%rbp), %rax
	jge	.LBB14_79
# BB#66:                                # %for.body
                                        #   in Loop: Header=BB14_65 Depth=2
	movq	-232(%rbp), %rdi
	movq	-240(%rbp), %rsi
	callq	AREF
	movq	%rax, -256(%rbp)
	movq	-256(%rbp), %rdi
	callq	GLYPH_CODE_P
	testb	$1, %al
	jne	.LBB14_67
	jmp	.LBB14_68
.LBB14_67:                              # %if.then.182
                                        #   in Loop: Header=BB14_65 Depth=2
	movq	-256(%rbp), %rdi
	callq	GLYPH_CODE_CHAR
	movl	%eax, -196(%rbp)
	jmp	.LBB14_69
.LBB14_68:                              # %if.else.184
                                        #   in Loop: Header=BB14_65 Depth=2
	movl	$32, -196(%rbp)
.LBB14_69:                              # %if.end.185
                                        #   in Loop: Header=BB14_65 Depth=2
	cmpl	$10, -196(%rbp)
	jne	.LBB14_71
# BB#70:                                # %if.then.188
	jmp	.LBB14_173
.LBB14_71:                              # %if.end.189
                                        #   in Loop: Header=BB14_65 Depth=2
	cmpl	$13, -196(%rbp)
	jne	.LBB14_74
# BB#72:                                # %land.lhs.true.192
                                        #   in Loop: Header=BB14_65 Depth=2
	movl	$901, %edi              # imm = 0x385
	movq	current_buffer, %rax
	movq	256(%rax), %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-584(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB14_74
# BB#73:                                # %if.then.196
	jmp	.LBB14_173
.LBB14_74:                              # %if.end.197
                                        #   in Loop: Header=BB14_65 Depth=2
	cmpl	$9, -196(%rbp)
	jne	.LBB14_76
# BB#75:                                # %if.then.200
                                        #   in Loop: Header=BB14_65 Depth=2
	movslq	-28(%rbp), %rax
	addq	-144(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movslq	-28(%rbp), %rcx
	cqto
	idivq	%rcx
	movslq	-28(%rbp), %rcx
	imulq	%rcx, %rax
	movq	%rax, -144(%rbp)
	jmp	.LBB14_77
.LBB14_76:                              # %if.else.205
                                        #   in Loop: Header=BB14_65 Depth=2
	movq	-144(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -144(%rbp)
.LBB14_77:                              # %if.end.206
                                        #   in Loop: Header=BB14_65 Depth=2
	jmp	.LBB14_78
.LBB14_78:                              # %for.inc
                                        #   in Loop: Header=BB14_65 Depth=2
	movq	-240(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -240(%rbp)
	jmp	.LBB14_65
.LBB14_79:                              # %for.end
                                        #   in Loop: Header=BB14_10 Depth=1
	jmp	.LBB14_171
.LBB14_80:                              # %if.else.208
                                        #   in Loop: Header=BB14_10 Depth=1
	cmpl	$10, -196(%rbp)
	jne	.LBB14_82
# BB#81:                                # %if.then.211
	jmp	.LBB14_173
.LBB14_82:                              # %if.end.212
                                        #   in Loop: Header=BB14_10 Depth=1
	cmpl	$13, -196(%rbp)
	jne	.LBB14_85
# BB#83:                                # %land.lhs.true.215
                                        #   in Loop: Header=BB14_10 Depth=1
	movl	$901, %edi              # imm = 0x385
	movq	current_buffer, %rax
	movq	256(%rax), %rax
	movq	%rax, -592(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-592(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB14_85
# BB#84:                                # %if.then.220
	jmp	.LBB14_173
.LBB14_85:                              # %if.end.221
                                        #   in Loop: Header=BB14_10 Depth=1
	cmpl	$9, -196(%rbp)
	jne	.LBB14_87
# BB#86:                                # %if.then.224
                                        #   in Loop: Header=BB14_10 Depth=1
	movslq	-28(%rbp), %rax
	addq	-144(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movslq	-28(%rbp), %rcx
	cqto
	idivq	%rcx
	movslq	-28(%rbp), %rcx
	imulq	%rcx, %rax
	movq	%rax, -144(%rbp)
	jmp	.LBB14_170
.LBB14_87:                              # %if.else.231
                                        #   in Loop: Header=BB14_10 Depth=1
	testb	$1, -41(%rbp)
	je	.LBB14_159
# BB#88:                                # %land.lhs.true.234
                                        #   in Loop: Header=BB14_10 Depth=1
	movl	-196(%rbp), %eax
	andl	$192, %eax
	cmpl	$192, %eax
	jne	.LBB14_159
# BB#89:                                # %if.then.238
                                        #   in Loop: Header=BB14_10 Depth=1
	movq	-184(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB14_91
# BB#90:                                # %cond.true.244
                                        #   in Loop: Header=BB14_10 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
	jmp	.LBB14_92
.LBB14_91:                              # %cond.false.247
                                        #   in Loop: Header=BB14_10 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -600(%rbp)        # 8-byte Spill
	jmp	.LBB14_92
.LBB14_92:                              # %cond.end.248
                                        #   in Loop: Header=BB14_10 Depth=1
	movq	-600(%rbp), %rax        # 8-byte Reload
	addq	-184(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -264(%rbp)
# BB#93:                                # %do.body
                                        #   in Loop: Header=BB14_10 Depth=1
	movq	-264(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB14_95
# BB#94:                                # %cond.true.259
                                        #   in Loop: Header=BB14_10 Depth=1
	movl	$1, -268(%rbp)
	movq	-264(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -604(%rbp)        # 4-byte Spill
	jmp	.LBB14_102
.LBB14_95:                              # %cond.false.262
                                        #   in Loop: Header=BB14_10 Depth=1
	movq	-264(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB14_97
# BB#96:                                # %cond.true.267
                                        #   in Loop: Header=BB14_10 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -268(%rbp)
	movq	-264(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-264(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-264(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -608(%rbp)        # 4-byte Spill
	jmp	.LBB14_101
.LBB14_97:                              # %cond.false.280
                                        #   in Loop: Header=BB14_10 Depth=1
	movq	-264(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB14_99
# BB#98:                                # %cond.true.285
                                        #   in Loop: Header=BB14_10 Depth=1
	movl	$3, -268(%rbp)
	movq	-264(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-264(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-264(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -612(%rbp)        # 4-byte Spill
	jmp	.LBB14_100
.LBB14_99:                              # %cond.false.299
                                        #   in Loop: Header=BB14_10 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-268(%rbp), %rdx
	movq	-264(%rbp), %rdi
	callq	string_char
	movl	%eax, -612(%rbp)        # 4-byte Spill
.LBB14_100:                             # %cond.end.301
                                        #   in Loop: Header=BB14_10 Depth=1
	movl	-612(%rbp), %eax        # 4-byte Reload
	movl	%eax, -608(%rbp)        # 4-byte Spill
.LBB14_101:                             # %cond.end.303
                                        #   in Loop: Header=BB14_10 Depth=1
	movl	-608(%rbp), %eax        # 4-byte Reload
	movl	%eax, -604(%rbp)        # 4-byte Spill
.LBB14_102:                             # %cond.end.305
                                        #   in Loop: Header=BB14_10 Depth=1
	movl	-604(%rbp), %eax        # 4-byte Reload
	movl	%eax, -276(%rbp)
	movq	-264(%rbp), %rcx
	movzbl	(%rcx), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	jne	.LBB14_104
# BB#103:                               # %cond.true.310
                                        #   in Loop: Header=BB14_10 Depth=1
	movl	$1, %eax
	movl	%eax, -616(%rbp)        # 4-byte Spill
	jmp	.LBB14_111
.LBB14_104:                             # %cond.false.311
                                        #   in Loop: Header=BB14_10 Depth=1
	movq	-264(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB14_106
# BB#105:                               # %cond.true.315
                                        #   in Loop: Header=BB14_10 Depth=1
	movl	$2, %eax
	movl	%eax, -620(%rbp)        # 4-byte Spill
	jmp	.LBB14_110
.LBB14_106:                             # %cond.false.316
                                        #   in Loop: Header=BB14_10 Depth=1
	movq	-264(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB14_108
# BB#107:                               # %cond.true.320
                                        #   in Loop: Header=BB14_10 Depth=1
	movl	$3, %eax
	movl	%eax, -624(%rbp)        # 4-byte Spill
	jmp	.LBB14_109
.LBB14_108:                             # %cond.false.321
                                        #   in Loop: Header=BB14_10 Depth=1
	movl	$5, %eax
	movl	$4, %ecx
	movq	-264(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$8, %esi
	cmpl	$0, %esi
	setne	%dil
	xorb	$-1, %dil
	testb	$1, %dil
	cmovnel	%ecx, %eax
	movl	%eax, -624(%rbp)        # 4-byte Spill
.LBB14_109:                             # %cond.end.327
                                        #   in Loop: Header=BB14_10 Depth=1
	movl	-624(%rbp), %eax        # 4-byte Reload
	movl	%eax, -620(%rbp)        # 4-byte Spill
.LBB14_110:                             # %cond.end.329
                                        #   in Loop: Header=BB14_10 Depth=1
	movl	-620(%rbp), %eax        # 4-byte Reload
	movl	%eax, -616(%rbp)        # 4-byte Spill
.LBB14_111:                             # %cond.end.331
                                        #   in Loop: Header=BB14_10 Depth=1
	movl	-616(%rbp), %eax        # 4-byte Reload
	cmpl	-268(%rbp), %eax
	je	.LBB14_113
# BB#112:                               # %if.then.335
                                        #   in Loop: Header=BB14_10 Depth=1
	movl	-268(%rbp), %eax
	shll	$2, %eax
	movl	%eax, -272(%rbp)
	jmp	.LBB14_157
.LBB14_113:                             # %if.else.337
                                        #   in Loop: Header=BB14_10 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB14_138
# BB#114:                               # %land.lhs.true.340
                                        #   in Loop: Header=BB14_10 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB14_115
	jmp	.LBB14_116
.LBB14_115:                             # %cond.true.341
                                        #   in Loop: Header=BB14_10 Depth=1
	movl	-276(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB14_117
	jmp	.LBB14_124
.LBB14_116:                             # %cond.false.345
                                        #   in Loop: Header=BB14_10 Depth=1
	movslq	-276(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB14_124
.LBB14_117:                             # %cond.true.350
                                        #   in Loop: Header=BB14_10 Depth=1
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -632(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-632(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB14_119
# BB#118:                               # %cond.true.355
                                        #   in Loop: Header=BB14_10 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
	jmp	.LBB14_123
.LBB14_119:                             # %cond.false.357
                                        #   in Loop: Header=BB14_10 Depth=1
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdi
	callq	SUB_CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB14_120
	jmp	.LBB14_121
.LBB14_120:                             # %cond.true.361
                                        #   in Loop: Header=BB14_10 Depth=1
	movslq	-276(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	%rax, -648(%rbp)        # 8-byte Spill
	callq	XSUB_CHAR_TABLE
	movq	-648(%rbp), %rcx        # 8-byte Reload
	movq	16(%rax,%rcx,8), %rax
	movq	%rax, -656(%rbp)        # 8-byte Spill
	jmp	.LBB14_122
.LBB14_121:                             # %cond.false.367
                                        #   in Loop: Header=BB14_10 Depth=1
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -656(%rbp)        # 8-byte Spill
.LBB14_122:                             # %cond.end.369
                                        #   in Loop: Header=BB14_10 Depth=1
	movq	-656(%rbp), %rax        # 8-byte Reload
	movq	%rax, -640(%rbp)        # 8-byte Spill
.LBB14_123:                             # %cond.end.371
                                        #   in Loop: Header=BB14_10 Depth=1
	movq	-640(%rbp), %rax        # 8-byte Reload
	movq	%rax, -664(%rbp)        # 8-byte Spill
	jmp	.LBB14_125
.LBB14_124:                             # %cond.false.373
                                        #   in Loop: Header=BB14_10 Depth=1
	movq	-40(%rbp), %rdi
	movl	-276(%rbp), %esi
	callq	disp_char_vector
	movq	%rax, -664(%rbp)        # 8-byte Spill
.LBB14_125:                             # %cond.end.375
                                        #   in Loop: Header=BB14_10 Depth=1
	movq	-664(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB14_126
	jmp	.LBB14_138
.LBB14_126:                             # %if.then.379
                                        #   in Loop: Header=BB14_10 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB14_127
	jmp	.LBB14_128
.LBB14_127:                             # %cond.true.380
                                        #   in Loop: Header=BB14_10 Depth=1
	movl	-276(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB14_129
	jmp	.LBB14_136
.LBB14_128:                             # %cond.false.384
                                        #   in Loop: Header=BB14_10 Depth=1
	movslq	-276(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB14_136
.LBB14_129:                             # %cond.true.389
                                        #   in Loop: Header=BB14_10 Depth=1
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -672(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-672(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB14_131
# BB#130:                               # %cond.true.394
                                        #   in Loop: Header=BB14_10 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -680(%rbp)        # 8-byte Spill
	jmp	.LBB14_135
.LBB14_131:                             # %cond.false.396
                                        #   in Loop: Header=BB14_10 Depth=1
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdi
	callq	SUB_CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB14_132
	jmp	.LBB14_133
.LBB14_132:                             # %cond.true.400
                                        #   in Loop: Header=BB14_10 Depth=1
	movslq	-276(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	%rax, -688(%rbp)        # 8-byte Spill
	callq	XSUB_CHAR_TABLE
	movq	-688(%rbp), %rcx        # 8-byte Reload
	movq	16(%rax,%rcx,8), %rax
	movq	%rax, -696(%rbp)        # 8-byte Spill
	jmp	.LBB14_134
.LBB14_133:                             # %cond.false.406
                                        #   in Loop: Header=BB14_10 Depth=1
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -696(%rbp)        # 8-byte Spill
.LBB14_134:                             # %cond.end.408
                                        #   in Loop: Header=BB14_10 Depth=1
	movq	-696(%rbp), %rax        # 8-byte Reload
	movq	%rax, -680(%rbp)        # 8-byte Spill
.LBB14_135:                             # %cond.end.410
                                        #   in Loop: Header=BB14_10 Depth=1
	movq	-680(%rbp), %rax        # 8-byte Reload
	movq	%rax, -704(%rbp)        # 8-byte Spill
	jmp	.LBB14_137
.LBB14_136:                             # %cond.false.412
                                        #   in Loop: Header=BB14_10 Depth=1
	movq	-40(%rbp), %rdi
	movl	-276(%rbp), %esi
	callq	disp_char_vector
	movq	%rax, -704(%rbp)        # 8-byte Spill
.LBB14_137:                             # %cond.end.414
                                        #   in Loop: Header=BB14_10 Depth=1
	movq	-704(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rdi
	callq	ASIZE
	movq	%rax, %rdi
	callq	sanitize_char_width
	movl	%eax, -272(%rbp)
	jmp	.LBB14_156
.LBB14_138:                             # %if.else.418
                                        #   in Loop: Header=BB14_10 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB14_139
	jmp	.LBB14_140
.LBB14_139:                             # %cond.true.419
                                        #   in Loop: Header=BB14_10 Depth=1
	movl	-276(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB14_141
	jmp	.LBB14_154
.LBB14_140:                             # %cond.false.423
                                        #   in Loop: Header=BB14_10 Depth=1
	movslq	-276(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB14_154
.LBB14_141:                             # %cond.true.428
                                        #   in Loop: Header=BB14_10 Depth=1
	cmpl	$32, -276(%rbp)
	jge	.LBB14_149
# BB#142:                               # %cond.true.431
                                        #   in Loop: Header=BB14_10 Depth=1
	cmpl	$9, -276(%rbp)
	jne	.LBB14_144
# BB#143:                               # %cond.true.434
                                        #   in Loop: Header=BB14_10 Depth=1
	movq	current_buffer, %rax
	movq	152(%rax), %rax
	sarq	$2, %rax
	movq	%rax, %rdi
	callq	sanitize_tab_width
	movl	%eax, -708(%rbp)        # 4-byte Spill
	jmp	.LBB14_148
.LBB14_144:                             # %cond.false.438
                                        #   in Loop: Header=BB14_10 Depth=1
	cmpl	$10, -276(%rbp)
	jne	.LBB14_146
# BB#145:                               # %cond.true.441
                                        #   in Loop: Header=BB14_10 Depth=1
	xorl	%eax, %eax
	movl	%eax, -712(%rbp)        # 4-byte Spill
	jmp	.LBB14_147
.LBB14_146:                             # %cond.false.442
                                        #   in Loop: Header=BB14_10 Depth=1
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	232(%rax), %rax
	movq	%rax, -720(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$2, %edi
	movl	$4, %ecx
	movq	-720(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	cmovel	%ecx, %edi
	movl	%edi, -712(%rbp)        # 4-byte Spill
.LBB14_147:                             # %cond.end.448
                                        #   in Loop: Header=BB14_10 Depth=1
	movl	-712(%rbp), %eax        # 4-byte Reload
	movl	%eax, -708(%rbp)        # 4-byte Spill
.LBB14_148:                             # %cond.end.450
                                        #   in Loop: Header=BB14_10 Depth=1
	movl	-708(%rbp), %eax        # 4-byte Reload
	movl	%eax, -724(%rbp)        # 4-byte Spill
	jmp	.LBB14_153
.LBB14_149:                             # %cond.false.452
                                        #   in Loop: Header=BB14_10 Depth=1
	cmpl	$127, -276(%rbp)
	jge	.LBB14_151
# BB#150:                               # %cond.true.455
                                        #   in Loop: Header=BB14_10 Depth=1
	movl	$1, %eax
	movl	%eax, -728(%rbp)        # 4-byte Spill
	jmp	.LBB14_152
.LBB14_151:                             # %cond.false.456
                                        #   in Loop: Header=BB14_10 Depth=1
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	232(%rax), %rax
	movq	%rax, -736(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$2, %edi
	movl	$4, %ecx
	movq	-736(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	cmovel	%ecx, %edi
	movl	%edi, -728(%rbp)        # 4-byte Spill
.LBB14_152:                             # %cond.end.462
                                        #   in Loop: Header=BB14_10 Depth=1
	movl	-728(%rbp), %eax        # 4-byte Reload
	movl	%eax, -724(%rbp)        # 4-byte Spill
.LBB14_153:                             # %cond.end.464
                                        #   in Loop: Header=BB14_10 Depth=1
	movl	-724(%rbp), %eax        # 4-byte Reload
	movl	%eax, -740(%rbp)        # 4-byte Spill
	jmp	.LBB14_155
.LBB14_154:                             # %cond.false.466
                                        #   in Loop: Header=BB14_10 Depth=1
	movq	globals+224, %rdi
	movl	-276(%rbp), %esi
	callq	CHAR_TABLE_REF
	sarq	$2, %rax
	movq	%rax, %rdi
	callq	sanitize_char_width
	movl	%eax, -740(%rbp)        # 4-byte Spill
.LBB14_155:                             # %cond.end.470
                                        #   in Loop: Header=BB14_10 Depth=1
	movl	-740(%rbp), %eax        # 4-byte Reload
	movl	%eax, -272(%rbp)
.LBB14_156:                             # %if.end.472
                                        #   in Loop: Header=BB14_10 Depth=1
	jmp	.LBB14_157
.LBB14_157:                             # %if.end.473
                                        #   in Loop: Header=BB14_10 Depth=1
	jmp	.LBB14_158
.LBB14_158:                             # %do.end
                                        #   in Loop: Header=BB14_10 Depth=1
	movl	-268(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	addq	-184(%rbp), %rcx
	movq	%rcx, -184(%rbp)
	movslq	-272(%rbp), %rcx
	addq	-144(%rbp), %rcx
	movq	%rcx, -144(%rbp)
	jmp	.LBB14_169
.LBB14_159:                             # %if.else.478
                                        #   in Loop: Header=BB14_10 Depth=1
	testb	$1, -29(%rbp)
	je	.LBB14_163
# BB#160:                               # %land.lhs.true.481
                                        #   in Loop: Header=BB14_10 Depth=1
	cmpl	$32, -196(%rbp)
	jl	.LBB14_162
# BB#161:                               # %lor.lhs.false.484
                                        #   in Loop: Header=BB14_10 Depth=1
	cmpl	$127, -196(%rbp)
	jne	.LBB14_163
.LBB14_162:                             # %if.then.487
                                        #   in Loop: Header=BB14_10 Depth=1
	movq	-144(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -144(%rbp)
	jmp	.LBB14_168
.LBB14_163:                             # %if.else.489
                                        #   in Loop: Header=BB14_10 Depth=1
	cmpl	$32, -196(%rbp)
	jl	.LBB14_165
# BB#164:                               # %lor.lhs.false.492
                                        #   in Loop: Header=BB14_10 Depth=1
	cmpl	$127, -196(%rbp)
	jl	.LBB14_166
.LBB14_165:                             # %if.then.495
                                        #   in Loop: Header=BB14_10 Depth=1
	movq	-144(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -144(%rbp)
	jmp	.LBB14_167
.LBB14_166:                             # %if.else.497
                                        #   in Loop: Header=BB14_10 Depth=1
	movq	-144(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -144(%rbp)
.LBB14_167:                             # %if.end.499
                                        #   in Loop: Header=BB14_10 Depth=1
	jmp	.LBB14_168
.LBB14_168:                             # %if.end.500
                                        #   in Loop: Header=BB14_10 Depth=1
	jmp	.LBB14_169
.LBB14_169:                             # %if.end.501
                                        #   in Loop: Header=BB14_10 Depth=1
	jmp	.LBB14_170
.LBB14_170:                             # %if.end.502
                                        #   in Loop: Header=BB14_10 Depth=1
	jmp	.LBB14_171
.LBB14_171:                             # %if.end.503
                                        #   in Loop: Header=BB14_10 Depth=1
	movq	-176(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -176(%rbp)
	movq	-184(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -184(%rbp)
	jmp	.LBB14_10
.LBB14_172:                             # %while.end.506
	jmp	.LBB14_173
.LBB14_173:                             # %endloop
	movq	-144(%rbp), %rax
	movq	%rax, last_known_column
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, last_known_column_point
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	48(%rax), %rax
	movq	%rax, last_known_column_modified
	cmpq	$0, -16(%rbp)
	je	.LBB14_175
# BB#174:                               # %if.then.511
	movq	-144(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB14_175:                             # %if.end.512
	cmpq	$0, -8(%rbp)
	je	.LBB14_177
# BB#176:                               # %if.then.514
	movq	-176(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB14_177:                             # %if.end.515
	cmpq	$0, -24(%rbp)
	je	.LBB14_179
# BB#178:                               # %if.then.517
	movq	-152(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB14_179:                             # %if.end.518
	addq	$768, %rsp              # imm = 0x300
	popq	%rbp
	retq
.Lfunc_end14:
	.size	scan_for_column, .Lfunc_end14-scan_for_column
	.cfi_endproc

	.globl	compute_motion
	.align	16, 0x90
	.type	compute_motion,@function
compute_motion:                         # @compute_motion
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$1088, %rsp             # imm = 0x440
.Ltmp48:
	.cfi_offset %rbx, -48
.Ltmp49:
	.cfi_offset %r12, -40
.Ltmp50:
	.cfi_offset %r14, -32
.Ltmp51:
	.cfi_offset %r15, -24
	movb	%r8b, %al
	movq	56(%rbp), %r10
	movl	48(%rbp), %r8d
	movq	40(%rbp), %r11
	movq	32(%rbp), %rbx
	movq	24(%rbp), %r14
	movq	16(%rbp), %r15
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	andb	$1, %al
	movb	%al, -65(%rbp)
	movq	%r9, -80(%rbp)
	movq	%r15, -88(%rbp)
	movq	%r14, -96(%rbp)
	movq	%rbx, -104(%rbp)
	movq	%r11, -112(%rbp)
	movl	%r8d, -116(%rbp)
	movq	%r10, -128(%rbp)
	movq	-64(%rbp), %rcx
	movq	%rcx, -136(%rbp)
	movq	-56(%rbp), %rcx
	movq	%rcx, -144(%rbp)
	movl	$0, -164(%rbp)
	movq	current_buffer, %rcx
	movq	152(%rcx), %rcx
	sarq	$2, %rcx
	movq	%rcx, %rdi
	callq	sanitize_tab_width
	xorl	%edi, %edi
	movl	%eax, -168(%rbp)
	movq	current_buffer, %rcx
	movq	232(%rcx), %rcx
	movq	%rcx, -568(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-568(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%r12b
	xorb	$-1, %r12b
	andb	$1, %r12b
	movb	%r12b, -169(%rbp)
	movq	-128(%rbp), %rdi
	callq	window_display_table
	movq	%rax, -184(%rbp)
	movq	current_buffer, %rax
	movq	256(%rax), %rax
	andq	$7, %rax
	movl	%eax, %r8d
	andl	$-5, %r8d
	cmpl	$2, %r8d
	jne	.LBB15_2
# BB#1:                                 # %cond.true
	movq	current_buffer, %rax
	movq	256(%rax), %rax
	sarq	$2, %rax
	movq	%rax, -576(%rbp)        # 8-byte Spill
	jmp	.LBB15_3
.LBB15_2:                               # %cond.false
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	256(%rax), %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	-584(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	sete	%sil
	xorb	$-1, %sil
	testb	$1, %sil
	cmovnel	%ecx, %edi
	movslq	%edi, %rax
	movq	%rax, -576(%rbp)        # 8-byte Spill
.LBB15_3:                               # %cond.end
	movq	-576(%rbp), %rax        # 8-byte Reload
	movq	%rax, -192(%rbp)
	cmpq	$0, -192(%rbp)
	je	.LBB15_7
# BB#4:                                 # %land.lhs.true
	cmpq	$0, -184(%rbp)
	je	.LBB15_7
# BB#5:                                 # %land.lhs.true.17
	movq	-184(%rbp), %rax
	movq	584(%rax), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB15_6
	jmp	.LBB15_7
.LBB15_6:                               # %cond.true.20
	movq	-184(%rbp), %rax
	movq	584(%rax), %rdi
	callq	ASIZE
	movq	%rax, -592(%rbp)        # 8-byte Spill
	jmp	.LBB15_8
.LBB15_7:                               # %cond.false.24
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -592(%rbp)        # 8-byte Spill
	jmp	.LBB15_8
.LBB15_8:                               # %cond.end.25
	movq	-592(%rbp), %rax        # 8-byte Reload
	xorl	%edi, %edi
	movq	%rax, -200(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -208(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -216(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -224(%rbp)
	movq	$0, -232(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -248(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$5, %esi
	movq	-600(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	andb	$1, %dl
	movb	%dl, -257(%rbp)
	movq	$0, -272(%rbp)
	movq	$0, -296(%rbp)
	movq	$0, -304(%rbp)
	movq	current_buffer, %rax
	movq	%rax, -328(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -256(%rbp)
	movq	-328(%rbp), %rax
	cmpq	$0, 784(%rax)
	je	.LBB15_10
# BB#9:                                 # %if.then
	movq	-328(%rbp), %rax
	movq	784(%rax), %rax
	movq	%rax, -328(%rbp)
.LBB15_10:                              # %if.end
	callq	width_run_cache_on_off
	movq	%rax, -336(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	buffer_display_table
	movq	-608(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB15_15
# BB#11:                                # %if.then.39
	movq	current_buffer, %rax
	movq	352(%rax), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB15_12
	jmp	.LBB15_13
.LBB15_12:                              # %cond.true.42
	movq	current_buffer, %rax
	movq	352(%rax), %rdi
	callq	XVECTOR
	addq	$8, %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
	jmp	.LBB15_14
.LBB15_13:                              # %cond.false.45
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -616(%rbp)        # 8-byte Spill
	jmp	.LBB15_14
.LBB15_14:                              # %cond.end.46
	movq	-616(%rbp), %rax        # 8-byte Reload
	movq	%rax, -240(%rbp)
	jmp	.LBB15_16
.LBB15_15:                              # %if.else
	movq	$0, -240(%rbp)
.LBB15_16:                              # %if.end.48
	cmpq	$0, -104(%rbp)
	jge	.LBB15_20
# BB#17:                                # %if.then.51
	xorl	%esi, %esi
	movq	-128(%rbp), %rdi
	callq	window_body_width
	movslq	%eax, %rdi
	movq	%rdi, -104(%rbp)
	movq	-128(%rbp), %rdi
	movq	8(%rdi), %rdi
	subq	$5, %rdi
	movq	208(%rdi), %rdi
	shrq	$23, %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$2, %eax
	je	.LBB15_19
# BB#18:                                # %if.then.56
	movq	-104(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -104(%rbp)
.LBB15_19:                              # %if.end.58
	jmp	.LBB15_20
.LBB15_20:                              # %if.end.59
	movl	$1, -320(%rbp)
	movq	-128(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	.LBB15_22
# BB#21:                                # %if.then.69
	movl	$0, -320(%rbp)
.LBB15_22:                              # %if.end.70
	movb	$1, immediate_quit
# BB#23:                                # %do.body
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-624(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB15_26
# BB#24:                                # %land.lhs.true.74
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -632(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-632(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB15_26
# BB#25:                                # %if.then.78
	callq	process_quit_flag
	jmp	.LBB15_29
.LBB15_26:                              # %if.else.79
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB15_28
# BB#27:                                # %if.then.81
	callq	process_pending_signals
.LBB15_28:                              # %if.end.82
	jmp	.LBB15_29
.LBB15_29:                              # %if.end.83
	jmp	.LBB15_30
.LBB15_30:                              # %do.end
	xorl	%eax, %eax
	movl	$72, %ecx
	movl	%ecx, %edx
	leaq	-408(%rbp), %rsi
	movq	-40(%rbp), %rdi
	movq	%rdi, -280(%rbp)
	movq	%rdi, -152(%rbp)
	movq	-48(%rbp), %rdi
	movq	%rdi, -288(%rbp)
	movq	%rdi, -160(%rbp)
	movq	$0, -312(%rbp)
	movl	-116(%rbp), %ecx
	movl	%ecx, -316(%rbp)
	movq	%rsi, %rdi
	movl	%eax, %esi
	movl	%eax, -636(%rbp)        # 4-byte Spill
	callq	memset
	movq	$-1, -400(%rbp)
	movq	-152(%rbp), %rsi
	movq	-160(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movl	-636(%rbp), %edi        # 4-byte Reload
	movq	%rsi, -648(%rbp)        # 8-byte Spill
	movq	%rdx, -656(%rbp)        # 8-byte Spill
	movq	%rcx, -664(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	leaq	-408(%rbp), %rdi
	movq	-648(%rbp), %rsi        # 8-byte Reload
	movq	-656(%rbp), %rdx        # 8-byte Reload
	movq	-664(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	callq	composition_compute_stop_pos
.LBB15_31:                              # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_32 Depth 2
                                        #     Child Loop BB15_164 Depth 2
                                        #       Child Loop BB15_182 Depth 3
                                        #       Child Loop BB15_219 Depth 3
	jmp	.LBB15_32
.LBB15_32:                              # %while.cond.85
                                        #   Parent Loop BB15_31 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-152(%rbp), %rax
	cmpq	-208(%rbp), %rax
	jne	.LBB15_59
# BB#33:                                # %while.body.88
                                        #   in Loop: Header=BB15_32 Depth=2
	movq	-152(%rbp), %rax
	movq	%rax, -416(%rbp)
	movq	-144(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jg	.LBB15_36
# BB#34:                                # %lor.lhs.false
                                        #   in Loop: Header=BB15_32 Depth=2
	movq	-144(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB15_43
# BB#35:                                # %land.lhs.true.93
                                        #   in Loop: Header=BB15_32 Depth=2
	movq	-136(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jl	.LBB15_43
.LBB15_36:                              # %if.then.96
                                        #   in Loop: Header=BB15_31 Depth=1
	cmpq	$0, -312(%rbp)
	je	.LBB15_42
# BB#37:                                # %land.lhs.true.98
                                        #   in Loop: Header=BB15_31 Depth=1
	cmpq	$0, -296(%rbp)
	jne	.LBB15_42
# BB#38:                                # %land.lhs.true.101
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-136(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jle	.LBB15_42
# BB#39:                                # %land.lhs.true.104
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-312(%rbp), %rax
	cmpq	-104(%rbp), %rax
	je	.LBB15_41
# BB#40:                                # %lor.lhs.false.107
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-272(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jle	.LBB15_42
.LBB15_41:                              # %if.then.110
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-280(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	-288(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-296(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-304(%rbp), %rax
	movq	%rax, -144(%rbp)
	movl	-316(%rbp), %ecx
	movl	%ecx, -116(%rbp)
.LBB15_42:                              # %if.end.111
                                        #   in Loop: Header=BB15_31 Depth=1
	jmp	.LBB15_59
.LBB15_43:                              # %if.end.112
                                        #   in Loop: Header=BB15_32 Depth=2
	testb	$1, -65(%rbp)
	jne	.LBB15_49
# BB#44:                                # %if.then.114
                                        #   in Loop: Header=BB15_32 Depth=2
	leaq	-432(%rbp), %rdx
	movq	-152(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	overlay_strings
	movq	%rax, -440(%rbp)
	testb	$1, -257(%rbp)
	je	.LBB15_47
# BB#45:                                # %land.lhs.true.118
                                        #   in Loop: Header=BB15_32 Depth=2
	cmpq	$0, -440(%rbp)
	jle	.LBB15_47
# BB#46:                                # %cond.true.121
                                        #   in Loop: Header=BB15_32 Depth=2
	movq	-432(%rbp), %rdi
	movq	-440(%rbp), %rsi
	callq	strwidth
	movq	%rax, -672(%rbp)        # 8-byte Spill
	jmp	.LBB15_48
.LBB15_47:                              # %cond.false.123
                                        #   in Loop: Header=BB15_32 Depth=2
	movq	-440(%rbp), %rax
	movq	%rax, -672(%rbp)        # 8-byte Spill
.LBB15_48:                              # %cond.end.124
                                        #   in Loop: Header=BB15_32 Depth=2
	movq	-672(%rbp), %rax        # 8-byte Reload
	addq	-136(%rbp), %rax
	movq	%rax, -136(%rbp)
.LBB15_49:                              # %if.end.126
                                        #   in Loop: Header=BB15_32 Depth=2
	movb	$0, -65(%rbp)
	movq	-152(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jl	.LBB15_51
# BB#50:                                # %if.then.129
                                        #   in Loop: Header=BB15_31 Depth=1
	jmp	.LBB15_59
.LBB15_51:                              # %if.end.130
                                        #   in Loop: Header=BB15_32 Depth=2
	leaq	-208(%rbp), %rsi
	movq	-152(%rbp), %rdi
	movq	-80(%rbp), %rdx
	movq	-256(%rbp), %rcx
	callq	skip_invisible
	movq	%rax, -424(%rbp)
	movq	-424(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jl	.LBB15_56
# BB#52:                                # %if.then.134
	movq	-80(%rbp), %rax
	cmpq	-424(%rbp), %rax
	jge	.LBB15_54
# BB#53:                                # %cond.true.137
	movq	-80(%rbp), %rax
	movq	%rax, -680(%rbp)        # 8-byte Spill
	jmp	.LBB15_55
.LBB15_54:                              # %cond.false.138
	movq	-424(%rbp), %rax
	movq	%rax, -680(%rbp)        # 8-byte Spill
.LBB15_55:                              # %cond.end.139
	movq	-680(%rbp), %rax        # 8-byte Reload
	movq	%rax, -152(%rbp)
	movq	current_buffer, %rdi
	movq	-152(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -160(%rbp)
	jmp	.LBB15_340
.LBB15_56:                              # %if.end.142
                                        #   in Loop: Header=BB15_32 Depth=2
	movq	-424(%rbp), %rax
	cmpq	-416(%rbp), %rax
	je	.LBB15_58
# BB#57:                                # %if.then.145
                                        #   in Loop: Header=BB15_32 Depth=2
	movq	-424(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	current_buffer, %rdi
	movq	-152(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -160(%rbp)
.LBB15_58:                              # %if.end.147
                                        #   in Loop: Header=BB15_32 Depth=2
	jmp	.LBB15_32
.LBB15_59:                              # %while.end
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-136(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jle	.LBB15_79
# BB#60:                                # %if.then.150
                                        #   in Loop: Header=BB15_31 Depth=1
	xorl	%edi, %edi
	movq	-104(%rbp), %rax
	movslq	-320(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -448(%rbp)
	movb	$0, -449(%rbp)
	movq	globals+2472, %rax
	movq	%rax, -688(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-688(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB15_66
# BB#61:                                # %land.lhs.true.156
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-448(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	$5, %rcx
	movslq	272(%rcx), %rcx
	cmpq	%rcx, %rax
	jge	.LBB15_66
# BB#62:                                # %if.then.162
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	globals+2472, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB15_64
# BB#63:                                # %if.then.168
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-448(%rbp), %rax
	movq	globals+2472, %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	setl	%dl
	andb	$1, %dl
	movb	%dl, -449(%rbp)
	jmp	.LBB15_65
.LBB15_64:                              # %if.else.173
                                        #   in Loop: Header=BB15_31 Depth=1
	movb	$1, -449(%rbp)
.LBB15_65:                              # %if.end.174
                                        #   in Loop: Header=BB15_31 Depth=1
	jmp	.LBB15_66
.LBB15_66:                              # %if.end.175
                                        #   in Loop: Header=BB15_31 Depth=1
	cmpq	$0, -112(%rbp)
	jne	.LBB15_69
# BB#67:                                # %lor.lhs.false.177
                                        #   in Loop: Header=BB15_31 Depth=1
	testb	$1, -449(%rbp)
	jne	.LBB15_69
# BB#68:                                # %lor.lhs.false.180
                                        #   in Loop: Header=BB15_31 Depth=1
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	216(%rax), %rax
	movq	%rax, -696(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-696(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB15_74
.LBB15_69:                              # %if.then.184
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-152(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jg	.LBB15_73
# BB#70:                                # %if.then.187
                                        #   in Loop: Header=BB15_31 Depth=1
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-160(%rbp), %rcx
	movq	-152(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	find_before_next_newline
	movq	%rax, -152(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-152(%rbp), %rax
	cmpq	-208(%rbp), %rax
	jl	.LBB15_72
# BB#71:                                # %if.then.191
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-152(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -208(%rbp)
.LBB15_72:                              # %if.end.193
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-104(%rbp), %rax
	movq	%rax, -296(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -304(%rbp)
	movl	-116(%rbp), %ecx
	movl	%ecx, -316(%rbp)
.LBB15_73:                              # %if.end.194
                                        #   in Loop: Header=BB15_31 Depth=1
	jmp	.LBB15_78
.LBB15_74:                              # %if.else.195
                                        #   in Loop: Header=BB15_31 Depth=1
	movl	-116(%rbp), %eax
	movl	%eax, -316(%rbp)
	movq	-272(%rbp), %rcx
	cmpq	-104(%rbp), %rcx
	jle	.LBB15_76
# BB#75:                                # %if.then.198
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-296(%rbp), %rax
	movq	-136(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -136(%rbp)
	movq	-296(%rbp), %rax
	movslq	-116(%rbp), %rcx
	addq	%rax, %rcx
	movl	%ecx, %edx
	movl	%edx, -116(%rbp)
	jmp	.LBB15_77
.LBB15_76:                              # %if.else.203
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-104(%rbp), %rax
	movslq	-116(%rbp), %rcx
	addq	%rax, %rcx
	movl	%ecx, %edx
	movl	%edx, -116(%rbp)
	movq	-104(%rbp), %rax
	movq	-136(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -136(%rbp)
.LBB15_77:                              # %if.end.208
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-144(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -144(%rbp)
	movq	-296(%rbp), %rax
	movq	%rax, -312(%rbp)
	movq	$0, -296(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -304(%rbp)
.LBB15_78:                              # %if.end.209
                                        #   in Loop: Header=BB15_31 Depth=1
	jmp	.LBB15_79
.LBB15_79:                              # %if.end.210
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-152(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jle	.LBB15_86
# BB#80:                                # %if.then.213
	movq	-280(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	-288(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-296(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-304(%rbp), %rax
	movq	%rax, -144(%rbp)
	movl	-316(%rbp), %ecx
	movl	%ecx, -116(%rbp)
	cmpq	$0, -312(%rbp)
	je	.LBB15_85
# BB#81:                                # %land.lhs.true.215
	cmpq	$0, -296(%rbp)
	jne	.LBB15_85
# BB#82:                                # %land.lhs.true.218
	movq	-312(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jge	.LBB15_85
# BB#83:                                # %land.lhs.true.221
	cmpq	$0, -272(%rbp)
	jne	.LBB15_85
# BB#84:                                # %if.then.223
	movq	-312(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-144(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -144(%rbp)
.LBB15_85:                              # %if.end.225
	jmp	.LBB15_339
.LBB15_86:                              # %if.end.226
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-144(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jg	.LBB15_89
# BB#87:                                # %lor.lhs.false.229
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-144(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB15_96
# BB#88:                                # %land.lhs.true.232
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-136(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jl	.LBB15_96
.LBB15_89:                              # %if.then.235
	cmpq	$0, -312(%rbp)
	je	.LBB15_95
# BB#90:                                # %land.lhs.true.237
	cmpq	$0, -296(%rbp)
	jne	.LBB15_95
# BB#91:                                # %land.lhs.true.240
	movq	-136(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jle	.LBB15_95
# BB#92:                                # %land.lhs.true.243
	movq	-312(%rbp), %rax
	cmpq	-104(%rbp), %rax
	je	.LBB15_94
# BB#93:                                # %lor.lhs.false.246
	movq	-272(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jle	.LBB15_95
.LBB15_94:                              # %if.then.249
	movq	-280(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	-288(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-296(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-304(%rbp), %rax
	movq	%rax, -144(%rbp)
	movl	-316(%rbp), %ecx
	movl	%ecx, -116(%rbp)
.LBB15_95:                              # %if.end.250
	jmp	.LBB15_339
.LBB15_96:                              # %if.end.251
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-152(%rbp), %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	jne	.LBB15_98
# BB#97:                                # %if.then.254
	jmp	.LBB15_339
.LBB15_98:                              # %if.end.255
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-136(%rbp), %rax
	movq	%rax, -296(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -304(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -280(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -288(%rbp)
	movq	$0, -272(%rbp)
	cmpq	$0, -336(%rbp)
	je	.LBB15_114
# BB#99:                                # %land.lhs.true.257
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-152(%rbp), %rax
	cmpq	-248(%rbp), %rax
	jl	.LBB15_114
# BB#100:                               # %if.then.260
                                        #   in Loop: Header=BB15_31 Depth=1
	leaq	-464(%rbp), %rcx
	movq	-328(%rbp), %rdi
	movq	-336(%rbp), %rsi
	movq	-152(%rbp), %rdx
	callq	region_cache_forward
	movl	%eax, -468(%rbp)
	cmpl	$0, -468(%rbp)
	je	.LBB15_113
# BB#101:                               # %if.then.264
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-464(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jle	.LBB15_103
# BB#102:                               # %if.then.267
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-80(%rbp), %rax
	movq	%rax, -464(%rbp)
.LBB15_103:                             # %if.end.268
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-136(%rbp), %rax
	movq	-464(%rbp), %rcx
	subq	-152(%rbp), %rcx
	movslq	-468(%rbp), %rdx
	imulq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -480(%rbp)
	movq	-144(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB15_106
# BB#104:                               # %land.lhs.true.274
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-480(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jle	.LBB15_106
# BB#105:                               # %if.then.277
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-152(%rbp), %rax
	movq	-96(%rbp), %rcx
	subq	-136(%rbp), %rcx
	movslq	-468(%rbp), %rdx
	movq	%rax, -704(%rbp)        # 8-byte Spill
	movq	%rcx, %rax
	movq	%rdx, -712(%rbp)        # 8-byte Spill
	cqto
	movq	-712(%rbp), %rcx        # 8-byte Reload
	idivq	%rcx
	movq	-704(%rbp), %rsi        # 8-byte Reload
	addq	%rax, %rsi
	movq	%rsi, -464(%rbp)
	movq	-136(%rbp), %rax
	movq	-464(%rbp), %rsi
	subq	-152(%rbp), %rsi
	movslq	-468(%rbp), %rdi
	imulq	%rdi, %rsi
	addq	%rsi, %rax
	movq	%rax, -480(%rbp)
.LBB15_106:                             # %if.end.285
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-480(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jl	.LBB15_108
# BB#107:                               # %if.then.288
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-152(%rbp), %rax
	movq	-104(%rbp), %rcx
	subq	-136(%rbp), %rcx
	movslq	-468(%rbp), %rdx
	movq	%rax, -720(%rbp)        # 8-byte Spill
	movq	%rcx, %rax
	movq	%rdx, -728(%rbp)        # 8-byte Spill
	cqto
	movq	-728(%rbp), %rcx        # 8-byte Reload
	idivq	%rcx
	movq	-720(%rbp), %rsi        # 8-byte Reload
	addq	%rax, %rsi
	movq	%rsi, -464(%rbp)
	movq	-136(%rbp), %rax
	movq	-464(%rbp), %rsi
	subq	-152(%rbp), %rsi
	movslq	-468(%rbp), %rdi
	imulq	%rdi, %rsi
	addq	%rsi, %rax
	movq	%rax, -480(%rbp)
.LBB15_108:                             # %if.end.297
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-480(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-464(%rbp), %rax
	cmpq	-152(%rbp), %rax
	jle	.LBB15_110
# BB#109:                               # %if.then.300
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-136(%rbp), %rax
	movslq	-468(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -296(%rbp)
.LBB15_110:                             # %if.end.303
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-152(%rbp), %rax
	cmpq	-464(%rbp), %rax
	je	.LBB15_112
# BB#111:                               # %if.then.306
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-464(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	current_buffer, %rdi
	movq	-152(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -160(%rbp)
.LBB15_112:                             # %if.end.308
                                        #   in Loop: Header=BB15_31 Depth=1
	jmp	.LBB15_113
.LBB15_113:                             # %if.end.309
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-464(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -248(%rbp)
	jmp	.LBB15_338
.LBB15_114:                             # %if.else.311
                                        #   in Loop: Header=BB15_31 Depth=1
	cmpq	$0, -400(%rbp)
	jge	.LBB15_117
# BB#115:                               # %lor.lhs.false.315
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-152(%rbp), %rax
	cmpq	-408(%rbp), %rax
	jne	.LBB15_118
# BB#116:                               # %land.lhs.true.318
                                        #   in Loop: Header=BB15_31 Depth=1
	xorl	%edi, %edi
	movq	-152(%rbp), %rsi
	movq	-160(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	-128(%rbp), %r8
	movq	%r8, -736(%rbp)         # 8-byte Spill
	movq	%rsi, -744(%rbp)        # 8-byte Spill
	movq	%rdx, -752(%rbp)        # 8-byte Spill
	movq	%rcx, -760(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	leaq	-408(%rbp), %rdi
	xorl	%r9d, %r9d
                                        # kill: R9<def> R9D<kill>
	movq	-744(%rbp), %rsi        # 8-byte Reload
	movq	-752(%rbp), %rdx        # 8-byte Reload
	movq	-760(%rbp), %rcx        # 8-byte Reload
	movq	-736(%rbp), %r8         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	composition_reseat_it
	testb	$1, %al
	jne	.LBB15_117
	jmp	.LBB15_118
.LBB15_117:                             # %if.then.322
                                        #   in Loop: Header=BB15_31 Depth=1
	xorl	%edi, %edi
	movq	-152(%rbp), %rsi
	movq	-160(%rbp), %rdx
	movq	%rdx, -768(%rbp)        # 8-byte Spill
	movq	%rsi, -776(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	leaq	-408(%rbp), %rdi
	movq	-776(%rbp), %rsi        # 8-byte Reload
	movq	-768(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	composition_update_it
	movl	%eax, -780(%rbp)        # 4-byte Spill
.LBB15_118:                             # %if.end.325
                                        #   in Loop: Header=BB15_31 Depth=1
	cmpq	$0, -400(%rbp)
	jl	.LBB15_123
# BB#119:                               # %if.then.329
                                        #   in Loop: Header=BB15_31 Depth=1
	movslq	-360(%rbp), %rax
	addq	-152(%rbp), %rax
	movq	%rax, -152(%rbp)
	movslq	-356(%rbp), %rax
	addq	-160(%rbp), %rax
	movq	%rax, -160(%rbp)
	movslq	-344(%rbp), %rax
	addq	-136(%rbp), %rax
	movq	%rax, -136(%rbp)
	movl	-348(%rbp), %ecx
	cmpl	-376(%rbp), %ecx
	jne	.LBB15_121
# BB#120:                               # %if.then.340
                                        #   in Loop: Header=BB15_31 Depth=1
	xorl	%edi, %edi
	movq	$-1, -400(%rbp)
	movq	-152(%rbp), %rsi
	movq	-160(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	%rcx, -792(%rbp)        # 8-byte Spill
	movq	%rsi, -800(%rbp)        # 8-byte Spill
	movq	%rdx, -808(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	leaq	-408(%rbp), %rdi
	movq	-800(%rbp), %rsi        # 8-byte Reload
	movq	-808(%rbp), %rdx        # 8-byte Reload
	movq	-792(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	callq	composition_compute_stop_pos
	jmp	.LBB15_122
.LBB15_121:                             # %if.else.343
                                        #   in Loop: Header=BB15_31 Depth=1
	movl	-348(%rbp), %eax
	movl	%eax, -352(%rbp)
.LBB15_122:                             # %if.end.346
                                        #   in Loop: Header=BB15_31 Depth=1
	jmp	.LBB15_31
.LBB15_123:                             # %if.end.347
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-160(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB15_125
# BB#124:                               # %cond.true.350
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -816(%rbp)        # 8-byte Spill
	jmp	.LBB15_126
.LBB15_125:                             # %cond.false.352
                                        #   in Loop: Header=BB15_31 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -816(%rbp)        # 8-byte Spill
	jmp	.LBB15_126
.LBB15_126:                             # %cond.end.353
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-816(%rbp), %rax        # 8-byte Reload
	addq	-160(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, -164(%rbp)
	movq	-152(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -152(%rbp)
	movq	-160(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -160(%rbp)
	cmpq	$0, -336(%rbp)
	je	.LBB15_135
# BB#127:                               # %if.then.362
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-152(%rbp), %rax
	subq	$1, %rax
	cmpq	-224(%rbp), %rax
	jne	.LBB15_130
# BB#128:                               # %land.lhs.true.366
                                        #   in Loop: Header=BB15_31 Depth=1
	movslq	-164(%rbp), %rax
	movq	-240(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	sarq	$2, %rax
	cmpq	-232(%rbp), %rax
	jne	.LBB15_130
# BB#129:                               # %if.then.371
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-152(%rbp), %rax
	movq	%rax, -224(%rbp)
	jmp	.LBB15_134
.LBB15_130:                             # %if.else.372
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-216(%rbp), %rax
	cmpq	-224(%rbp), %rax
	jge	.LBB15_133
# BB#131:                               # %land.lhs.true.375
                                        #   in Loop: Header=BB15_31 Depth=1
	cmpq	$1, -232(%rbp)
	jne	.LBB15_133
# BB#132:                               # %if.then.378
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-328(%rbp), %rdi
	movq	-336(%rbp), %rsi
	movq	-216(%rbp), %rdx
	movq	-224(%rbp), %rcx
	callq	know_region_cache
.LBB15_133:                             # %if.end.379
                                        #   in Loop: Header=BB15_31 Depth=1
	movslq	-164(%rbp), %rax
	movq	-240(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	sarq	$2, %rax
	movq	%rax, -232(%rbp)
	movq	-152(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -216(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -224(%rbp)
.LBB15_134:                             # %if.end.384
                                        #   in Loop: Header=BB15_31 Depth=1
	jmp	.LBB15_135
.LBB15_135:                             # %if.end.385
                                        #   in Loop: Header=BB15_31 Depth=1
	cmpq	$0, -184(%rbp)
	je	.LBB15_162
# BB#136:                               # %land.lhs.true.388
                                        #   in Loop: Header=BB15_31 Depth=1
	testb	$1, -257(%rbp)
	je	.LBB15_138
# BB#137:                               # %land.lhs.true.391
                                        #   in Loop: Header=BB15_31 Depth=1
	movl	-164(%rbp), %eax
	andl	$192, %eax
	cmpl	$192, %eax
	je	.LBB15_162
.LBB15_138:                             # %land.lhs.true.395
                                        #   in Loop: Header=BB15_31 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB15_139
	jmp	.LBB15_140
.LBB15_139:                             # %cond.true.396
                                        #   in Loop: Header=BB15_31 Depth=1
	movl	-164(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB15_141
	jmp	.LBB15_148
.LBB15_140:                             # %cond.false.400
                                        #   in Loop: Header=BB15_31 Depth=1
	movslq	-164(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB15_148
.LBB15_141:                             # %cond.true.405
                                        #   in Loop: Header=BB15_31 Depth=1
	xorl	%edi, %edi
	movq	-184(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -824(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-824(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB15_143
# BB#142:                               # %cond.true.409
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-184(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -832(%rbp)        # 8-byte Spill
	jmp	.LBB15_147
.LBB15_143:                             # %cond.false.410
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-184(%rbp), %rax
	movq	32(%rax), %rdi
	callq	SUB_CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB15_144
	jmp	.LBB15_145
.LBB15_144:                             # %cond.true.414
                                        #   in Loop: Header=BB15_31 Depth=1
	movslq	-164(%rbp), %rax
	movq	-184(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	%rax, -840(%rbp)        # 8-byte Spill
	callq	XSUB_CHAR_TABLE
	movq	-840(%rbp), %rcx        # 8-byte Reload
	movq	16(%rax,%rcx,8), %rax
	movq	%rax, -848(%rbp)        # 8-byte Spill
	jmp	.LBB15_146
.LBB15_145:                             # %cond.false.420
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-184(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -848(%rbp)        # 8-byte Spill
.LBB15_146:                             # %cond.end.422
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-848(%rbp), %rax        # 8-byte Reload
	movq	%rax, -832(%rbp)        # 8-byte Spill
.LBB15_147:                             # %cond.end.424
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-832(%rbp), %rax        # 8-byte Reload
	movq	%rax, -856(%rbp)        # 8-byte Spill
	jmp	.LBB15_149
.LBB15_148:                             # %cond.false.426
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-184(%rbp), %rdi
	movl	-164(%rbp), %esi
	callq	disp_char_vector
	movq	%rax, -856(%rbp)        # 8-byte Spill
.LBB15_149:                             # %cond.end.428
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-856(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB15_150
	jmp	.LBB15_162
.LBB15_150:                             # %if.then.432
                                        #   in Loop: Header=BB15_31 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB15_151
	jmp	.LBB15_152
.LBB15_151:                             # %cond.true.433
                                        #   in Loop: Header=BB15_31 Depth=1
	movl	-164(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB15_153
	jmp	.LBB15_160
.LBB15_152:                             # %cond.false.437
                                        #   in Loop: Header=BB15_31 Depth=1
	movslq	-164(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB15_160
.LBB15_153:                             # %cond.true.442
                                        #   in Loop: Header=BB15_31 Depth=1
	xorl	%edi, %edi
	movq	-184(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -864(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-864(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB15_155
# BB#154:                               # %cond.true.447
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-184(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -872(%rbp)        # 8-byte Spill
	jmp	.LBB15_159
.LBB15_155:                             # %cond.false.449
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-184(%rbp), %rax
	movq	32(%rax), %rdi
	callq	SUB_CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB15_156
	jmp	.LBB15_157
.LBB15_156:                             # %cond.true.453
                                        #   in Loop: Header=BB15_31 Depth=1
	movslq	-164(%rbp), %rax
	movq	-184(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	%rax, -880(%rbp)        # 8-byte Spill
	callq	XSUB_CHAR_TABLE
	movq	-880(%rbp), %rcx        # 8-byte Reload
	movq	16(%rax,%rcx,8), %rax
	movq	%rax, -888(%rbp)        # 8-byte Spill
	jmp	.LBB15_158
.LBB15_157:                             # %cond.false.459
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-184(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -888(%rbp)        # 8-byte Spill
.LBB15_158:                             # %cond.end.461
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-888(%rbp), %rax        # 8-byte Reload
	movq	%rax, -872(%rbp)        # 8-byte Spill
.LBB15_159:                             # %cond.end.463
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-872(%rbp), %rax        # 8-byte Reload
	movq	%rax, -896(%rbp)        # 8-byte Spill
	jmp	.LBB15_161
.LBB15_160:                             # %cond.false.465
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-184(%rbp), %rdi
	movl	-164(%rbp), %esi
	callq	disp_char_vector
	movq	%rax, -896(%rbp)        # 8-byte Spill
.LBB15_161:                             # %cond.end.467
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-896(%rbp), %rax        # 8-byte Reload
	movq	%rax, -504(%rbp)
	movq	-504(%rbp), %rdi
	callq	ASIZE
	movq	%rax, -496(%rbp)
	jmp	.LBB15_163
.LBB15_162:                             # %if.else.470
                                        #   in Loop: Header=BB15_31 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -504(%rbp)
	movq	$1, -496(%rbp)
.LBB15_163:                             # %if.end.472
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	$0, -488(%rbp)
.LBB15_164:                             # %for.cond
                                        #   Parent Loop BB15_31 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB15_182 Depth 3
                                        #       Child Loop BB15_219 Depth 3
	movq	-488(%rbp), %rax
	cmpq	-496(%rbp), %rax
	jge	.LBB15_337
# BB#165:                               # %for.body
                                        #   in Loop: Header=BB15_164 Depth=2
	movq	-504(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB15_166
	jmp	.LBB15_170
.LBB15_166:                             # %if.then.476
                                        #   in Loop: Header=BB15_164 Depth=2
	movq	-504(%rbp), %rdi
	movq	-488(%rbp), %rsi
	callq	AREF
	movq	%rax, -512(%rbp)
	movq	-512(%rbp), %rdi
	callq	GLYPH_CODE_P
	testb	$1, %al
	jne	.LBB15_167
	jmp	.LBB15_168
.LBB15_167:                             # %if.then.480
                                        #   in Loop: Header=BB15_164 Depth=2
	movq	-512(%rbp), %rdi
	callq	GLYPH_CODE_CHAR
	movl	%eax, -164(%rbp)
	jmp	.LBB15_169
.LBB15_168:                             # %if.else.482
                                        #   in Loop: Header=BB15_164 Depth=2
	movl	$32, -164(%rbp)
.LBB15_169:                             # %if.end.483
                                        #   in Loop: Header=BB15_164 Depth=2
	jmp	.LBB15_170
.LBB15_170:                             # %if.end.484
                                        #   in Loop: Header=BB15_164 Depth=2
	cmpl	$32, -164(%rbp)
	jl	.LBB15_173
# BB#171:                               # %land.lhs.true.487
                                        #   in Loop: Header=BB15_164 Depth=2
	cmpl	$127, -164(%rbp)
	jge	.LBB15_173
# BB#172:                               # %if.then.490
                                        #   in Loop: Header=BB15_164 Depth=2
	movq	-136(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -136(%rbp)
	jmp	.LBB15_335
.LBB15_173:                             # %if.else.492
                                        #   in Loop: Header=BB15_164 Depth=2
	cmpl	$9, -164(%rbp)
	jne	.LBB15_177
# BB#174:                               # %if.then.495
                                        #   in Loop: Header=BB15_164 Depth=2
	movq	-136(%rbp), %rax
	movslq	-116(%rbp), %rcx
	addq	%rcx, %rax
	addq	-112(%rbp), %rax
	cmpq	$0, -112(%rbp)
	setg	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rcx
	subq	%rcx, %rax
	movslq	-168(%rbp), %rcx
	cqto
	idivq	%rcx
	movl	%edx, %esi
	movl	%esi, -516(%rbp)
	cmpl	$0, -516(%rbp)
	jge	.LBB15_176
# BB#175:                               # %if.then.507
                                        #   in Loop: Header=BB15_164 Depth=2
	movl	-168(%rbp), %eax
	addl	-516(%rbp), %eax
	movl	%eax, -516(%rbp)
.LBB15_176:                             # %if.end.509
                                        #   in Loop: Header=BB15_164 Depth=2
	movl	-168(%rbp), %eax
	subl	-516(%rbp), %eax
	movslq	%eax, %rcx
	addq	-136(%rbp), %rcx
	movq	%rcx, -136(%rbp)
	jmp	.LBB15_334
.LBB15_177:                             # %if.else.513
                                        #   in Loop: Header=BB15_164 Depth=2
	cmpl	$10, -164(%rbp)
	jne	.LBB15_230
# BB#178:                               # %if.then.516
                                        #   in Loop: Header=BB15_164 Depth=2
	cmpq	$0, -192(%rbp)
	jle	.LBB15_226
# BB#179:                               # %land.lhs.true.519
                                        #   in Loop: Header=BB15_164 Depth=2
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %rsi
	movq	-192(%rbp), %rdx
	callq	indented_beyond_p
	testb	$1, %al
	jne	.LBB15_180
	jmp	.LBB15_226
.LBB15_180:                             # %if.then.522
                                        #   in Loop: Header=BB15_164 Depth=2
	movq	-152(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jge	.LBB15_225
# BB#181:                               # %if.then.525
                                        #   in Loop: Header=BB15_164 Depth=2
	jmp	.LBB15_182
.LBB15_182:                             # %do.body.526
                                        #   Parent Loop BB15_31 Depth=1
                                        #     Parent Loop BB15_164 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-160(%rbp), %rcx
	movq	-152(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	find_before_next_newline
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jge	.LBB15_203
# BB#183:                               # %if.then.530
                                        #   in Loop: Header=BB15_182 Depth=3
	jmp	.LBB15_184
.LBB15_184:                             # %do.body.531
                                        #   in Loop: Header=BB15_182 Depth=3
	xorl	%edi, %edi
	movq	-152(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -152(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -904(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-904(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB15_186
# BB#185:                               # %if.then.537
                                        #   in Loop: Header=BB15_182 Depth=3
	movq	-160(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -160(%rbp)
	jmp	.LBB15_201
.LBB15_186:                             # %if.else.539
                                        #   in Loop: Header=BB15_182 Depth=3
	jmp	.LBB15_187
.LBB15_187:                             # %do.body.540
                                        #   in Loop: Header=BB15_182 Depth=3
	movq	-160(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB15_189
# BB#188:                               # %cond.true.545
                                        #   in Loop: Header=BB15_182 Depth=3
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -912(%rbp)        # 8-byte Spill
	jmp	.LBB15_190
.LBB15_189:                             # %cond.false.548
                                        #   in Loop: Header=BB15_182 Depth=3
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -912(%rbp)        # 8-byte Spill
	jmp	.LBB15_190
.LBB15_190:                             # %cond.end.549
                                        #   in Loop: Header=BB15_182 Depth=3
	movq	-912(%rbp), %rax        # 8-byte Reload
	addq	-160(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -528(%rbp)
	movq	-528(%rbp), %rax
	movzbl	(%rax), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	jne	.LBB15_192
# BB#191:                               # %cond.true.559
                                        #   in Loop: Header=BB15_182 Depth=3
	movl	$1, %eax
	movl	%eax, -916(%rbp)        # 4-byte Spill
	jmp	.LBB15_199
.LBB15_192:                             # %cond.false.560
                                        #   in Loop: Header=BB15_182 Depth=3
	movq	-528(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB15_194
# BB#193:                               # %cond.true.564
                                        #   in Loop: Header=BB15_182 Depth=3
	movl	$2, %eax
	movl	%eax, -920(%rbp)        # 4-byte Spill
	jmp	.LBB15_198
.LBB15_194:                             # %cond.false.565
                                        #   in Loop: Header=BB15_182 Depth=3
	movq	-528(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB15_196
# BB#195:                               # %cond.true.569
                                        #   in Loop: Header=BB15_182 Depth=3
	movl	$3, %eax
	movl	%eax, -924(%rbp)        # 4-byte Spill
	jmp	.LBB15_197
.LBB15_196:                             # %cond.false.570
                                        #   in Loop: Header=BB15_182 Depth=3
	movl	$5, %eax
	movl	$4, %ecx
	movq	-528(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$8, %esi
	cmpl	$0, %esi
	setne	%dil
	xorb	$-1, %dil
	testb	$1, %dil
	cmovnel	%ecx, %eax
	movl	%eax, -924(%rbp)        # 4-byte Spill
.LBB15_197:                             # %cond.end.576
                                        #   in Loop: Header=BB15_182 Depth=3
	movl	-924(%rbp), %eax        # 4-byte Reload
	movl	%eax, -920(%rbp)        # 4-byte Spill
.LBB15_198:                             # %cond.end.578
                                        #   in Loop: Header=BB15_182 Depth=3
	movl	-920(%rbp), %eax        # 4-byte Reload
	movl	%eax, -916(%rbp)        # 4-byte Spill
.LBB15_199:                             # %cond.end.580
                                        #   in Loop: Header=BB15_182 Depth=3
	movl	-916(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	addq	-160(%rbp), %rcx
	movq	%rcx, -160(%rbp)
# BB#200:                               # %do.end.584
                                        #   in Loop: Header=BB15_182 Depth=3
	jmp	.LBB15_201
.LBB15_201:                             # %if.end.585
                                        #   in Loop: Header=BB15_182 Depth=3
	jmp	.LBB15_202
.LBB15_202:                             # %do.end.586
                                        #   in Loop: Header=BB15_182 Depth=3
	jmp	.LBB15_203
.LBB15_203:                             # %if.end.587
                                        #   in Loop: Header=BB15_182 Depth=3
	jmp	.LBB15_204
.LBB15_204:                             # %do.cond
                                        #   in Loop: Header=BB15_182 Depth=3
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-152(%rbp), %rdx
	cmpq	-80(%rbp), %rdx
	movb	%cl, -925(%rbp)         # 1-byte Spill
	jge	.LBB15_206
# BB#205:                               # %land.rhs
                                        #   in Loop: Header=BB15_182 Depth=3
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %rsi
	movq	-192(%rbp), %rdx
	callq	indented_beyond_p
	movb	%al, -925(%rbp)         # 1-byte Spill
.LBB15_206:                             # %land.end
                                        #   in Loop: Header=BB15_182 Depth=3
	movb	-925(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB15_182
# BB#207:                               # %do.end.592
                                        #   in Loop: Header=BB15_164 Depth=2
	cmpq	$0, -200(%rbp)
	je	.LBB15_211
# BB#208:                               # %if.then.594
                                        #   in Loop: Header=BB15_164 Depth=2
	movq	-200(%rbp), %rax
	addq	-136(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jl	.LBB15_210
# BB#209:                               # %if.then.598
                                        #   in Loop: Header=BB15_164 Depth=2
	movq	-104(%rbp), %rax
	movq	%rax, -136(%rbp)
.LBB15_210:                             # %if.end.599
                                        #   in Loop: Header=BB15_164 Depth=2
	jmp	.LBB15_211
.LBB15_211:                             # %if.end.600
                                        #   in Loop: Header=BB15_164 Depth=2
	jmp	.LBB15_212
.LBB15_212:                             # %do.body.601
                                        #   in Loop: Header=BB15_164 Depth=2
	xorl	%edi, %edi
	movq	-152(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -152(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -936(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-936(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB15_214
# BB#213:                               # %if.then.606
                                        #   in Loop: Header=BB15_164 Depth=2
	movq	-160(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -160(%rbp)
	jmp	.LBB15_223
.LBB15_214:                             # %if.else.608
                                        #   in Loop: Header=BB15_164 Depth=2
	jmp	.LBB15_215
.LBB15_215:                             # %do.body.609
                                        #   in Loop: Header=BB15_164 Depth=2
	movq	-160(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jge	.LBB15_217
# BB#216:                               # %if.then.616
                                        #   in Loop: Header=BB15_164 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	addq	-160(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -536(%rbp)
	jmp	.LBB15_218
.LBB15_217:                             # %if.else.621
                                        #   in Loop: Header=BB15_164 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	40(%rcx), %rax
	addq	-160(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -536(%rbp)
.LBB15_218:                             # %if.end.629
                                        #   in Loop: Header=BB15_164 Depth=2
	jmp	.LBB15_219
.LBB15_219:                             # %while.cond.630
                                        #   Parent Loop BB15_31 Depth=1
                                        #     Parent Loop BB15_164 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-536(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	setne	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB15_220
	jmp	.LBB15_221
.LBB15_220:                             # %while.body.636
                                        #   in Loop: Header=BB15_219 Depth=3
	movq	-536(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -536(%rbp)
	movq	-160(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -160(%rbp)
	jmp	.LBB15_219
.LBB15_221:                             # %while.end.638
                                        #   in Loop: Header=BB15_164 Depth=2
	jmp	.LBB15_222
.LBB15_222:                             # %do.end.640
                                        #   in Loop: Header=BB15_164 Depth=2
	jmp	.LBB15_223
.LBB15_223:                             # %if.end.641
                                        #   in Loop: Header=BB15_164 Depth=2
	jmp	.LBB15_224
.LBB15_224:                             # %do.end.643
                                        #   in Loop: Header=BB15_164 Depth=2
	jmp	.LBB15_225
.LBB15_225:                             # %if.end.644
                                        #   in Loop: Header=BB15_164 Depth=2
	jmp	.LBB15_229
.LBB15_226:                             # %if.else.645
                                        #   in Loop: Header=BB15_164 Depth=2
	movq	-144(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -144(%rbp)
	movq	$0, -136(%rbp)
	movq	-112(%rbp), %rax
	movq	-136(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -136(%rbp)
	cmpq	$0, -112(%rbp)
	jle	.LBB15_228
# BB#227:                               # %if.then.650
                                        #   in Loop: Header=BB15_164 Depth=2
	movslq	-320(%rbp), %rax
	addq	-136(%rbp), %rax
	movq	%rax, -136(%rbp)
.LBB15_228:                             # %if.end.653
                                        #   in Loop: Header=BB15_164 Depth=2
	movl	$0, -116(%rbp)
.LBB15_229:                             # %if.end.654
                                        #   in Loop: Header=BB15_164 Depth=2
	movq	$0, -312(%rbp)
	jmp	.LBB15_333
.LBB15_230:                             # %if.else.655
                                        #   in Loop: Header=BB15_164 Depth=2
	cmpl	$13, -164(%rbp)
	jne	.LBB15_241
# BB#231:                               # %land.lhs.true.658
                                        #   in Loop: Header=BB15_164 Depth=2
	cmpq	$0, -192(%rbp)
	jge	.LBB15_241
# BB#232:                               # %if.then.661
                                        #   in Loop: Header=BB15_164 Depth=2
	movq	-152(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jge	.LBB15_234
# BB#233:                               # %if.then.664
                                        #   in Loop: Header=BB15_164 Depth=2
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-160(%rbp), %rcx
	movq	-152(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	find_before_next_newline
	movq	%rax, -152(%rbp)
.LBB15_234:                             # %if.end.666
                                        #   in Loop: Header=BB15_164 Depth=2
	movq	-152(%rbp), %rax
	cmpq	-208(%rbp), %rax
	jle	.LBB15_236
# BB#235:                               # %if.then.669
                                        #   in Loop: Header=BB15_164 Depth=2
	movq	-152(%rbp), %rax
	movq	%rax, -208(%rbp)
.LBB15_236:                             # %if.end.670
                                        #   in Loop: Header=BB15_164 Depth=2
	cmpq	$0, -200(%rbp)
	je	.LBB15_240
# BB#237:                               # %if.then.672
                                        #   in Loop: Header=BB15_164 Depth=2
	movq	-200(%rbp), %rax
	addq	-136(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jl	.LBB15_239
# BB#238:                               # %if.then.676
                                        #   in Loop: Header=BB15_164 Depth=2
	movq	-104(%rbp), %rax
	movq	%rax, -136(%rbp)
.LBB15_239:                             # %if.end.677
                                        #   in Loop: Header=BB15_164 Depth=2
	jmp	.LBB15_240
.LBB15_240:                             # %if.end.678
                                        #   in Loop: Header=BB15_164 Depth=2
	jmp	.LBB15_332
.LBB15_241:                             # %if.else.679
                                        #   in Loop: Header=BB15_164 Depth=2
	testb	$1, -257(%rbp)
	je	.LBB15_325
# BB#242:                               # %land.lhs.true.682
                                        #   in Loop: Header=BB15_164 Depth=2
	movl	-164(%rbp), %eax
	andl	$192, %eax
	cmpl	$192, %eax
	jne	.LBB15_325
# BB#243:                               # %if.then.686
                                        #   in Loop: Header=BB15_164 Depth=2
	movq	-160(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB15_245
# BB#244:                               # %cond.true.692
                                        #   in Loop: Header=BB15_164 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -944(%rbp)        # 8-byte Spill
	jmp	.LBB15_246
.LBB15_245:                             # %cond.false.695
                                        #   in Loop: Header=BB15_164 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -944(%rbp)        # 8-byte Spill
	jmp	.LBB15_246
.LBB15_246:                             # %cond.end.696
                                        #   in Loop: Header=BB15_164 Depth=2
	movq	-944(%rbp), %rax        # 8-byte Reload
	addq	-160(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -544(%rbp)
# BB#247:                               # %do.body.703
                                        #   in Loop: Header=BB15_164 Depth=2
	movq	-544(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB15_249
# BB#248:                               # %cond.true.708
                                        #   in Loop: Header=BB15_164 Depth=2
	movl	$1, -548(%rbp)
	movq	-544(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -948(%rbp)        # 4-byte Spill
	jmp	.LBB15_256
.LBB15_249:                             # %cond.false.711
                                        #   in Loop: Header=BB15_164 Depth=2
	movq	-544(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB15_251
# BB#250:                               # %cond.true.716
                                        #   in Loop: Header=BB15_164 Depth=2
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -548(%rbp)
	movq	-544(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-544(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-544(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -952(%rbp)        # 4-byte Spill
	jmp	.LBB15_255
.LBB15_251:                             # %cond.false.729
                                        #   in Loop: Header=BB15_164 Depth=2
	movq	-544(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB15_253
# BB#252:                               # %cond.true.734
                                        #   in Loop: Header=BB15_164 Depth=2
	movl	$3, -548(%rbp)
	movq	-544(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-544(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-544(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -956(%rbp)        # 4-byte Spill
	jmp	.LBB15_254
.LBB15_253:                             # %cond.false.748
                                        #   in Loop: Header=BB15_164 Depth=2
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-548(%rbp), %rdx
	movq	-544(%rbp), %rdi
	callq	string_char
	movl	%eax, -956(%rbp)        # 4-byte Spill
.LBB15_254:                             # %cond.end.750
                                        #   in Loop: Header=BB15_164 Depth=2
	movl	-956(%rbp), %eax        # 4-byte Reload
	movl	%eax, -952(%rbp)        # 4-byte Spill
.LBB15_255:                             # %cond.end.752
                                        #   in Loop: Header=BB15_164 Depth=2
	movl	-952(%rbp), %eax        # 4-byte Reload
	movl	%eax, -948(%rbp)        # 4-byte Spill
.LBB15_256:                             # %cond.end.754
                                        #   in Loop: Header=BB15_164 Depth=2
	movl	-948(%rbp), %eax        # 4-byte Reload
	movl	%eax, -556(%rbp)
	movq	-544(%rbp), %rcx
	movzbl	(%rcx), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	jne	.LBB15_258
# BB#257:                               # %cond.true.759
                                        #   in Loop: Header=BB15_164 Depth=2
	movl	$1, %eax
	movl	%eax, -960(%rbp)        # 4-byte Spill
	jmp	.LBB15_265
.LBB15_258:                             # %cond.false.760
                                        #   in Loop: Header=BB15_164 Depth=2
	movq	-544(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB15_260
# BB#259:                               # %cond.true.764
                                        #   in Loop: Header=BB15_164 Depth=2
	movl	$2, %eax
	movl	%eax, -964(%rbp)        # 4-byte Spill
	jmp	.LBB15_264
.LBB15_260:                             # %cond.false.765
                                        #   in Loop: Header=BB15_164 Depth=2
	movq	-544(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB15_262
# BB#261:                               # %cond.true.769
                                        #   in Loop: Header=BB15_164 Depth=2
	movl	$3, %eax
	movl	%eax, -968(%rbp)        # 4-byte Spill
	jmp	.LBB15_263
.LBB15_262:                             # %cond.false.770
                                        #   in Loop: Header=BB15_164 Depth=2
	movl	$5, %eax
	movl	$4, %ecx
	movq	-544(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$8, %esi
	cmpl	$0, %esi
	setne	%dil
	xorb	$-1, %dil
	testb	$1, %dil
	cmovnel	%ecx, %eax
	movl	%eax, -968(%rbp)        # 4-byte Spill
.LBB15_263:                             # %cond.end.776
                                        #   in Loop: Header=BB15_164 Depth=2
	movl	-968(%rbp), %eax        # 4-byte Reload
	movl	%eax, -964(%rbp)        # 4-byte Spill
.LBB15_264:                             # %cond.end.778
                                        #   in Loop: Header=BB15_164 Depth=2
	movl	-964(%rbp), %eax        # 4-byte Reload
	movl	%eax, -960(%rbp)        # 4-byte Spill
.LBB15_265:                             # %cond.end.780
                                        #   in Loop: Header=BB15_164 Depth=2
	movl	-960(%rbp), %eax        # 4-byte Reload
	cmpl	-548(%rbp), %eax
	je	.LBB15_267
# BB#266:                               # %if.then.784
                                        #   in Loop: Header=BB15_164 Depth=2
	movl	-548(%rbp), %eax
	shll	$2, %eax
	movl	%eax, -552(%rbp)
	jmp	.LBB15_311
.LBB15_267:                             # %if.else.786
                                        #   in Loop: Header=BB15_164 Depth=2
	cmpq	$0, -184(%rbp)
	je	.LBB15_292
# BB#268:                               # %land.lhs.true.789
                                        #   in Loop: Header=BB15_164 Depth=2
	movb	$1, %al
	testb	$1, %al
	jne	.LBB15_269
	jmp	.LBB15_270
.LBB15_269:                             # %cond.true.790
                                        #   in Loop: Header=BB15_164 Depth=2
	movl	-556(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB15_271
	jmp	.LBB15_278
.LBB15_270:                             # %cond.false.794
                                        #   in Loop: Header=BB15_164 Depth=2
	movslq	-556(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB15_278
.LBB15_271:                             # %cond.true.799
                                        #   in Loop: Header=BB15_164 Depth=2
	xorl	%edi, %edi
	movq	-184(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -976(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-976(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB15_273
# BB#272:                               # %cond.true.804
                                        #   in Loop: Header=BB15_164 Depth=2
	movq	-184(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -984(%rbp)        # 8-byte Spill
	jmp	.LBB15_277
.LBB15_273:                             # %cond.false.806
                                        #   in Loop: Header=BB15_164 Depth=2
	movq	-184(%rbp), %rax
	movq	32(%rax), %rdi
	callq	SUB_CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB15_274
	jmp	.LBB15_275
.LBB15_274:                             # %cond.true.810
                                        #   in Loop: Header=BB15_164 Depth=2
	movslq	-556(%rbp), %rax
	movq	-184(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	%rax, -992(%rbp)        # 8-byte Spill
	callq	XSUB_CHAR_TABLE
	movq	-992(%rbp), %rcx        # 8-byte Reload
	movq	16(%rax,%rcx,8), %rax
	movq	%rax, -1000(%rbp)       # 8-byte Spill
	jmp	.LBB15_276
.LBB15_275:                             # %cond.false.816
                                        #   in Loop: Header=BB15_164 Depth=2
	movq	-184(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -1000(%rbp)       # 8-byte Spill
.LBB15_276:                             # %cond.end.818
                                        #   in Loop: Header=BB15_164 Depth=2
	movq	-1000(%rbp), %rax       # 8-byte Reload
	movq	%rax, -984(%rbp)        # 8-byte Spill
.LBB15_277:                             # %cond.end.820
                                        #   in Loop: Header=BB15_164 Depth=2
	movq	-984(%rbp), %rax        # 8-byte Reload
	movq	%rax, -1008(%rbp)       # 8-byte Spill
	jmp	.LBB15_279
.LBB15_278:                             # %cond.false.822
                                        #   in Loop: Header=BB15_164 Depth=2
	movq	-184(%rbp), %rdi
	movl	-556(%rbp), %esi
	callq	disp_char_vector
	movq	%rax, -1008(%rbp)       # 8-byte Spill
.LBB15_279:                             # %cond.end.824
                                        #   in Loop: Header=BB15_164 Depth=2
	movq	-1008(%rbp), %rax       # 8-byte Reload
	movq	%rax, %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB15_280
	jmp	.LBB15_292
.LBB15_280:                             # %if.then.828
                                        #   in Loop: Header=BB15_164 Depth=2
	movb	$1, %al
	testb	$1, %al
	jne	.LBB15_281
	jmp	.LBB15_282
.LBB15_281:                             # %cond.true.829
                                        #   in Loop: Header=BB15_164 Depth=2
	movl	-556(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB15_283
	jmp	.LBB15_290
.LBB15_282:                             # %cond.false.833
                                        #   in Loop: Header=BB15_164 Depth=2
	movslq	-556(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB15_290
.LBB15_283:                             # %cond.true.838
                                        #   in Loop: Header=BB15_164 Depth=2
	xorl	%edi, %edi
	movq	-184(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -1016(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1016(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB15_285
# BB#284:                               # %cond.true.843
                                        #   in Loop: Header=BB15_164 Depth=2
	movq	-184(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -1024(%rbp)       # 8-byte Spill
	jmp	.LBB15_289
.LBB15_285:                             # %cond.false.845
                                        #   in Loop: Header=BB15_164 Depth=2
	movq	-184(%rbp), %rax
	movq	32(%rax), %rdi
	callq	SUB_CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB15_286
	jmp	.LBB15_287
.LBB15_286:                             # %cond.true.849
                                        #   in Loop: Header=BB15_164 Depth=2
	movslq	-556(%rbp), %rax
	movq	-184(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	%rax, -1032(%rbp)       # 8-byte Spill
	callq	XSUB_CHAR_TABLE
	movq	-1032(%rbp), %rcx       # 8-byte Reload
	movq	16(%rax,%rcx,8), %rax
	movq	%rax, -1040(%rbp)       # 8-byte Spill
	jmp	.LBB15_288
.LBB15_287:                             # %cond.false.855
                                        #   in Loop: Header=BB15_164 Depth=2
	movq	-184(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -1040(%rbp)       # 8-byte Spill
.LBB15_288:                             # %cond.end.857
                                        #   in Loop: Header=BB15_164 Depth=2
	movq	-1040(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1024(%rbp)       # 8-byte Spill
.LBB15_289:                             # %cond.end.859
                                        #   in Loop: Header=BB15_164 Depth=2
	movq	-1024(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1048(%rbp)       # 8-byte Spill
	jmp	.LBB15_291
.LBB15_290:                             # %cond.false.861
                                        #   in Loop: Header=BB15_164 Depth=2
	movq	-184(%rbp), %rdi
	movl	-556(%rbp), %esi
	callq	disp_char_vector
	movq	%rax, -1048(%rbp)       # 8-byte Spill
.LBB15_291:                             # %cond.end.863
                                        #   in Loop: Header=BB15_164 Depth=2
	movq	-1048(%rbp), %rax       # 8-byte Reload
	movq	%rax, %rdi
	callq	ASIZE
	movq	%rax, %rdi
	callq	sanitize_char_width
	movl	%eax, -552(%rbp)
	jmp	.LBB15_310
.LBB15_292:                             # %if.else.867
                                        #   in Loop: Header=BB15_164 Depth=2
	movb	$1, %al
	testb	$1, %al
	jne	.LBB15_293
	jmp	.LBB15_294
.LBB15_293:                             # %cond.true.868
                                        #   in Loop: Header=BB15_164 Depth=2
	movl	-556(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB15_295
	jmp	.LBB15_308
.LBB15_294:                             # %cond.false.872
                                        #   in Loop: Header=BB15_164 Depth=2
	movslq	-556(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB15_308
.LBB15_295:                             # %cond.true.877
                                        #   in Loop: Header=BB15_164 Depth=2
	cmpl	$32, -556(%rbp)
	jge	.LBB15_303
# BB#296:                               # %cond.true.880
                                        #   in Loop: Header=BB15_164 Depth=2
	cmpl	$9, -556(%rbp)
	jne	.LBB15_298
# BB#297:                               # %cond.true.883
                                        #   in Loop: Header=BB15_164 Depth=2
	movq	current_buffer, %rax
	movq	152(%rax), %rax
	sarq	$2, %rax
	movq	%rax, %rdi
	callq	sanitize_tab_width
	movl	%eax, -1052(%rbp)       # 4-byte Spill
	jmp	.LBB15_302
.LBB15_298:                             # %cond.false.887
                                        #   in Loop: Header=BB15_164 Depth=2
	cmpl	$10, -556(%rbp)
	jne	.LBB15_300
# BB#299:                               # %cond.true.890
                                        #   in Loop: Header=BB15_164 Depth=2
	xorl	%eax, %eax
	movl	%eax, -1056(%rbp)       # 4-byte Spill
	jmp	.LBB15_301
.LBB15_300:                             # %cond.false.891
                                        #   in Loop: Header=BB15_164 Depth=2
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	232(%rax), %rax
	movq	%rax, -1064(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$2, %edi
	movl	$4, %ecx
	movq	-1064(%rbp), %rdx       # 8-byte Reload
	cmpq	%rax, %rdx
	cmovel	%ecx, %edi
	movl	%edi, -1056(%rbp)       # 4-byte Spill
.LBB15_301:                             # %cond.end.897
                                        #   in Loop: Header=BB15_164 Depth=2
	movl	-1056(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1052(%rbp)       # 4-byte Spill
.LBB15_302:                             # %cond.end.899
                                        #   in Loop: Header=BB15_164 Depth=2
	movl	-1052(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1068(%rbp)       # 4-byte Spill
	jmp	.LBB15_307
.LBB15_303:                             # %cond.false.901
                                        #   in Loop: Header=BB15_164 Depth=2
	cmpl	$127, -556(%rbp)
	jge	.LBB15_305
# BB#304:                               # %cond.true.904
                                        #   in Loop: Header=BB15_164 Depth=2
	movl	$1, %eax
	movl	%eax, -1072(%rbp)       # 4-byte Spill
	jmp	.LBB15_306
.LBB15_305:                             # %cond.false.905
                                        #   in Loop: Header=BB15_164 Depth=2
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	232(%rax), %rax
	movq	%rax, -1080(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$2, %edi
	movl	$4, %ecx
	movq	-1080(%rbp), %rdx       # 8-byte Reload
	cmpq	%rax, %rdx
	cmovel	%ecx, %edi
	movl	%edi, -1072(%rbp)       # 4-byte Spill
.LBB15_306:                             # %cond.end.911
                                        #   in Loop: Header=BB15_164 Depth=2
	movl	-1072(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1068(%rbp)       # 4-byte Spill
.LBB15_307:                             # %cond.end.913
                                        #   in Loop: Header=BB15_164 Depth=2
	movl	-1068(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1084(%rbp)       # 4-byte Spill
	jmp	.LBB15_309
.LBB15_308:                             # %cond.false.915
                                        #   in Loop: Header=BB15_164 Depth=2
	movq	globals+224, %rdi
	movl	-556(%rbp), %esi
	callq	CHAR_TABLE_REF
	sarq	$2, %rax
	movq	%rax, %rdi
	callq	sanitize_char_width
	movl	%eax, -1084(%rbp)       # 4-byte Spill
.LBB15_309:                             # %cond.end.919
                                        #   in Loop: Header=BB15_164 Depth=2
	movl	-1084(%rbp), %eax       # 4-byte Reload
	movl	%eax, -552(%rbp)
.LBB15_310:                             # %if.end.921
                                        #   in Loop: Header=BB15_164 Depth=2
	jmp	.LBB15_311
.LBB15_311:                             # %if.end.922
                                        #   in Loop: Header=BB15_164 Depth=2
	jmp	.LBB15_312
.LBB15_312:                             # %do.end.924
                                        #   in Loop: Header=BB15_164 Depth=2
	movslq	-548(%rbp), %rax
	addq	-160(%rbp), %rax
	movq	%rax, -160(%rbp)
	cmpl	$1, -552(%rbp)
	jle	.LBB15_324
# BB#313:                               # %land.lhs.true.929
                                        #   in Loop: Header=BB15_164 Depth=2
	movq	-544(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB15_315
# BB#314:                               # %cond.true.933
                                        #   in Loop: Header=BB15_164 Depth=2
	movl	$1, %eax
	movl	%eax, -1088(%rbp)       # 4-byte Spill
	jmp	.LBB15_322
.LBB15_315:                             # %cond.false.934
                                        #   in Loop: Header=BB15_164 Depth=2
	movq	-544(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB15_317
# BB#316:                               # %cond.true.938
                                        #   in Loop: Header=BB15_164 Depth=2
	movl	$2, %eax
	movl	%eax, -1092(%rbp)       # 4-byte Spill
	jmp	.LBB15_321
.LBB15_317:                             # %cond.false.939
                                        #   in Loop: Header=BB15_164 Depth=2
	movq	-544(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB15_319
# BB#318:                               # %cond.true.943
                                        #   in Loop: Header=BB15_164 Depth=2
	movl	$3, %eax
	movl	%eax, -1096(%rbp)       # 4-byte Spill
	jmp	.LBB15_320
.LBB15_319:                             # %cond.false.944
                                        #   in Loop: Header=BB15_164 Depth=2
	movl	$5, %eax
	movl	$4, %ecx
	movq	-544(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$8, %esi
	cmpl	$0, %esi
	setne	%dil
	xorb	$-1, %dil
	testb	$1, %dil
	cmovnel	%ecx, %eax
	movl	%eax, -1096(%rbp)       # 4-byte Spill
.LBB15_320:                             # %cond.end.950
                                        #   in Loop: Header=BB15_164 Depth=2
	movl	-1096(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1092(%rbp)       # 4-byte Spill
.LBB15_321:                             # %cond.end.952
                                        #   in Loop: Header=BB15_164 Depth=2
	movl	-1092(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1088(%rbp)       # 4-byte Spill
.LBB15_322:                             # %cond.end.954
                                        #   in Loop: Header=BB15_164 Depth=2
	movl	-1088(%rbp), %eax       # 4-byte Reload
	cmpl	-548(%rbp), %eax
	jne	.LBB15_324
# BB#323:                               # %if.then.958
                                        #   in Loop: Header=BB15_164 Depth=2
	movq	-136(%rbp), %rax
	movslq	-552(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -272(%rbp)
.LBB15_324:                             # %if.end.961
                                        #   in Loop: Header=BB15_164 Depth=2
	movslq	-552(%rbp), %rax
	addq	-136(%rbp), %rax
	movq	%rax, -136(%rbp)
	jmp	.LBB15_331
.LBB15_325:                             # %if.else.964
                                        #   in Loop: Header=BB15_164 Depth=2
	movq	-504(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB15_326
	jmp	.LBB15_327
.LBB15_326:                             # %if.then.966
                                        #   in Loop: Header=BB15_164 Depth=2
	movq	-136(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -136(%rbp)
	jmp	.LBB15_330
.LBB15_327:                             # %if.else.968
                                        #   in Loop: Header=BB15_164 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, -169(%rbp)
	movb	%cl, -1097(%rbp)        # 1-byte Spill
	je	.LBB15_329
# BB#328:                               # %land.rhs.971
                                        #   in Loop: Header=BB15_164 Depth=2
	cmpl	$128, -164(%rbp)
	setl	%al
	movb	%al, -1097(%rbp)        # 1-byte Spill
.LBB15_329:                             # %land.end.974
                                        #   in Loop: Header=BB15_164 Depth=2
	movb	-1097(%rbp), %al        # 1-byte Reload
	movl	$4, %ecx
	movl	$2, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movslq	%ecx, %rsi
	addq	-136(%rbp), %rsi
	movq	%rsi, -136(%rbp)
.LBB15_330:                             # %if.end.978
                                        #   in Loop: Header=BB15_164 Depth=2
	jmp	.LBB15_331
.LBB15_331:                             # %if.end.979
                                        #   in Loop: Header=BB15_164 Depth=2
	jmp	.LBB15_332
.LBB15_332:                             # %if.end.980
                                        #   in Loop: Header=BB15_164 Depth=2
	jmp	.LBB15_333
.LBB15_333:                             # %if.end.981
                                        #   in Loop: Header=BB15_164 Depth=2
	jmp	.LBB15_334
.LBB15_334:                             # %if.end.982
                                        #   in Loop: Header=BB15_164 Depth=2
	jmp	.LBB15_335
.LBB15_335:                             # %if.end.983
                                        #   in Loop: Header=BB15_164 Depth=2
	jmp	.LBB15_336
.LBB15_336:                             # %for.inc
                                        #   in Loop: Header=BB15_164 Depth=2
	movq	-488(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -488(%rbp)
	jmp	.LBB15_164
.LBB15_337:                             # %for.end
                                        #   in Loop: Header=BB15_31 Depth=1
	jmp	.LBB15_338
.LBB15_338:                             # %if.end.985
                                        #   in Loop: Header=BB15_31 Depth=1
	jmp	.LBB15_31
.LBB15_339:                             # %while.end.986
	jmp	.LBB15_340
.LBB15_340:                             # %after_loop
	cmpq	$0, -336(%rbp)
	je	.LBB15_344
# BB#341:                               # %land.lhs.true.988
	cmpq	$1, -232(%rbp)
	jne	.LBB15_344
# BB#342:                               # %land.lhs.true.991
	movq	-216(%rbp), %rax
	cmpq	-224(%rbp), %rax
	jge	.LBB15_344
# BB#343:                               # %if.then.994
	movq	-328(%rbp), %rdi
	movq	-336(%rbp), %rsi
	movq	-216(%rbp), %rdx
	movq	-224(%rbp), %rcx
	callq	know_region_cache
.LBB15_344:                             # %if.end.995
	movq	-152(%rbp), %rax
	movq	%rax, val_compute_motion
	movq	-160(%rbp), %rax
	movq	%rax, val_compute_motion+8
	movq	-136(%rbp), %rax
	movq	%rax, val_compute_motion+16
	movq	-144(%rbp), %rax
	movq	%rax, val_compute_motion+24
	cmpq	$0, -312(%rbp)
	je	.LBB15_347
# BB#345:                               # %land.lhs.true.997
	cmpq	$0, -296(%rbp)
	jne	.LBB15_347
# BB#346:                               # %if.then.1000
	movq	-312(%rbp), %rax
	movq	%rax, val_compute_motion+32
	jmp	.LBB15_348
.LBB15_347:                             # %if.else.1001
	movq	-296(%rbp), %rax
	movq	%rax, val_compute_motion+32
.LBB15_348:                             # %if.end.1002
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -312(%rbp)
	movb	%cl, -1098(%rbp)        # 1-byte Spill
	je	.LBB15_350
# BB#349:                               # %land.rhs.1004
	cmpq	$0, -296(%rbp)
	sete	%al
	movb	%al, -1098(%rbp)        # 1-byte Spill
.LBB15_350:                             # %land.end.1007
	movb	-1098(%rbp), %al        # 1-byte Reload
	movabsq	$val_compute_motion, %rcx
	andb	$1, %al
	movzbl	%al, %edx
	movl	%edx, val_compute_motion+40
	movb	$0, immediate_quit
	movq	%rcx, %rax
	addq	$1088, %rsp             # imm = 0x440
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	compute_motion, .Lfunc_end15-compute_motion
	.cfi_endproc

	.align	16, 0x90
	.type	width_run_cache_on_off,@function
width_run_cache_on_off:                 # @width_run_cache_on_off
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp52:
	.cfi_def_cfa_offset 16
.Ltmp53:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp54:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	current_buffer, %rax
	movq	%rax, -16(%rbp)
	movb	$0, -17(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 784(%rax)
	je	.LBB16_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	784(%rax), %rax
	movq	%rax, -16(%rbp)
	movb	$1, -17(%rbp)
.LBB16_2:                               # %if.end
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	344(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB16_4
# BB#3:                                 # %lor.lhs.false
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB16_11
.LBB16_4:                               # %if.then.4
	testb	$1, -17(%rbp)
	je	.LBB16_7
# BB#5:                                 # %lor.lhs.false.6
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	344(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB16_7
# BB#6:                                 # %lor.lhs.false.10
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	312(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB16_10
.LBB16_7:                               # %if.then.14
	movq	-16(%rbp), %rax
	cmpq	$0, 920(%rax)
	je	.LBB16_9
# BB#8:                                 # %if.then.16
	movq	-16(%rbp), %rax
	movq	920(%rax), %rdi
	callq	free_region_cache
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	$0, 920(%rax)
	movq	current_buffer, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_width_table
.LBB16_9:                               # %if.end.20
	jmp	.LBB16_10
.LBB16_10:                              # %if.end.21
	movq	$0, -8(%rbp)
	jmp	.LBB16_18
.LBB16_11:                              # %if.else
	testb	$1, -17(%rbp)
	je	.LBB16_14
# BB#12:                                # %lor.lhs.false.23
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	344(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB16_17
# BB#13:                                # %land.lhs.true
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	312(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB16_17
.LBB16_14:                              # %if.then.30
	movq	-16(%rbp), %rax
	cmpq	$0, 920(%rax)
	jne	.LBB16_16
# BB#15:                                # %if.then.33
	callq	new_region_cache
	movq	-16(%rbp), %rcx
	movq	%rax, 920(%rcx)
	movq	current_buffer, %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	buffer_display_table
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	recompute_width_table
.LBB16_16:                              # %if.end.37
	jmp	.LBB16_17
.LBB16_17:                              # %if.end.38
	movq	-16(%rbp), %rax
	movq	920(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB16_18:                              # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	width_run_cache_on_off, .Lfunc_end16-width_run_cache_on_off
	.cfi_endproc

	.globl	Fcompute_motion
	.align	16, 0x90
	.type	Fcompute_motion,@function
Fcompute_motion:                        # @Fcompute_motion
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp55:
	.cfi_def_cfa_offset 16
.Ltmp56:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp57:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$392, %rsp              # imm = 0x188
.Ltmp58:
	.cfi_offset %rbx, -40
.Ltmp59:
	.cfi_offset %r14, -32
.Ltmp60:
	.cfi_offset %r15, -24
	movq	16(%rbp), %rax
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movq	%r8, -64(%rbp)
	movq	%r9, -72(%rbp)
	movq	%rax, -80(%rbp)
# BB#1:                                 # %do.body
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB17_4
# BB#2:                                 # %land.lhs.true
	movq	-32(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB17_4
# BB#3:                                 # %if.then
	movq	-32(%rbp), %rdi
	callq	marker_position
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -32(%rbp)
	jmp	.LBB17_8
.LBB17_4:                               # %if.else
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB17_6
# BB#5:                                 # %cond.true
	jmp	.LBB17_7
.LBB17_6:                               # %cond.false
	movl	$558, %edi              # imm = 0x22E
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -152(%rbp)        # 8-byte Spill
.LBB17_7:                               # %cond.end
	jmp	.LBB17_8
.LBB17_8:                               # %if.end
	jmp	.LBB17_9
.LBB17_9:                               # %do.end
	movq	-40(%rbp), %rdi
	callq	CHECK_CONS
	movq	-40(%rbp), %rdi
	callq	CHECK_NUMBER_CAR
	movq	-40(%rbp), %rdi
	callq	CHECK_NUMBER_CDR
# BB#10:                                # %do.body.12
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB17_13
# BB#11:                                # %land.lhs.true.17
	movq	-48(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB17_13
# BB#12:                                # %if.then.21
	movq	-48(%rbp), %rdi
	callq	marker_position
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -48(%rbp)
	jmp	.LBB17_17
.LBB17_13:                              # %if.else.24
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB17_15
# BB#14:                                # %cond.true.30
	jmp	.LBB17_16
.LBB17_15:                              # %cond.false.31
	movl	$558, %edi              # imm = 0x22E
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -160(%rbp)        # 8-byte Spill
.LBB17_16:                              # %cond.end.33
	jmp	.LBB17_17
.LBB17_17:                              # %if.end.34
	jmp	.LBB17_18
.LBB17_18:                              # %do.end.35
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB17_20
# BB#19:                                # %if.then.39
	movq	-56(%rbp), %rdi
	callq	CHECK_CONS
	movq	-56(%rbp), %rdi
	callq	CHECK_NUMBER_CAR
	movq	-56(%rbp), %rdi
	callq	CHECK_NUMBER_CDR
.LBB17_20:                              # %if.end.40
	xorl	%edi, %edi
	movq	-64(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB17_25
# BB#21:                                # %if.then.44
	movq	-64(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB17_23
# BB#22:                                # %cond.true.50
	jmp	.LBB17_24
.LBB17_23:                              # %cond.false.51
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -184(%rbp)        # 8-byte Spill
.LBB17_24:                              # %cond.end.53
	jmp	.LBB17_25
.LBB17_25:                              # %if.end.54
	xorl	%edi, %edi
	movq	-72(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB17_32
# BB#26:                                # %if.then.58
	movq	-72(%rbp), %rdi
	callq	CHECK_CONS
	movq	-72(%rbp), %rdi
	callq	CHECK_NUMBER_CAR
	movq	-72(%rbp), %rdi
	callq	CHECK_NUMBER_CDR
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	-72(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rdi
	jg	.LBB17_30
# BB#27:                                # %land.lhs.true.61
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-72(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	sarq	$2, %rcx
	cmpq	%rax, %rcx
	jg	.LBB17_30
# BB#28:                                # %land.lhs.true.67
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-72(%rbp), %rdx
	subq	$3, %rdx
	movq	8(%rdx), %rdx
	sarq	$2, %rdx
	cmpq	%rdx, %rcx
	jg	.LBB17_30
# BB#29:                                # %land.lhs.true.72
	movq	-72(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	sarq	$2, %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	jle	.LBB17_31
.LBB17_30:                              # %if.then.79
	movq	-72(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	movq	-72(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rsi
	callq	args_out_of_range
.LBB17_31:                              # %if.end.85
	movq	-72(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	movq	%rax, -136(%rbp)
	movq	-72(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -140(%rbp)
	jmp	.LBB17_33
.LBB17_32:                              # %if.else.94
	movl	$0, -140(%rbp)
	movq	$0, -136(%rbp)
.LBB17_33:                              # %if.end.95
	movq	-80(%rbp), %rdi
	callq	decode_live_window
	movq	%rax, -88(%rbp)
	movq	-32(%rbp), %rax
	sarq	$2, %rax
	movq	current_buffer, %rdi
	cmpq	752(%rdi), %rax
	jl	.LBB17_35
# BB#34:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	sarq	$2, %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	jle	.LBB17_36
.LBB17_35:                              # %if.then.103
	movq	-32(%rbp), %rdi
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
.LBB17_36:                              # %if.end.108
	movq	-48(%rbp), %rax
	sarq	$2, %rax
	movq	current_buffer, %rcx
	cmpq	752(%rcx), %rax
	jl	.LBB17_38
# BB#37:                                # %lor.lhs.false.113
	movq	-48(%rbp), %rax
	sarq	$2, %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	jle	.LBB17_39
.LBB17_38:                              # %if.then.118
	movq	-48(%rbp), %rdi
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
.LBB17_39:                              # %if.end.125
	movq	-32(%rbp), %rax
	sarq	$2, %rax
	movq	current_buffer, %rdi
	movq	-32(%rbp), %rcx
	sarq	$2, %rcx
	movq	%rcx, %rsi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	buf_charpos_to_bytepos
	xorl	%edi, %edi
	movq	-40(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rcx
	sarq	$2, %rcx
	movq	-40(%rbp), %rsi
	subq	$3, %rsi
	movq	(%rsi), %rsi
	sarq	$2, %rsi
	movq	-48(%rbp), %rdx
	sarq	$2, %rdx
	movq	-56(%rbp), %r8
	movq	%rax, -208(%rbp)        # 8-byte Spill
	movq	%r8, -216(%rbp)         # 8-byte Spill
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	movq	%rsi, -232(%rbp)        # 8-byte Spill
	movq	%rdx, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB17_41
# BB#40:                                # %cond.true.140
	movq	-88(%rbp), %rdi
	callq	window_internal_height
	movslq	%eax, %rdi
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	jmp	.LBB17_42
.LBB17_41:                              # %cond.false.143
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	sarq	$2, %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
.LBB17_42:                              # %cond.end.148
	movq	-248(%rbp), %rax        # 8-byte Reload
	xorl	%edi, %edi
	movq	-56(%rbp), %rcx
	movq	%rax, -256(%rbp)        # 8-byte Spill
	movq	%rcx, -264(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-264(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB17_44
# BB#43:                                # %cond.true.152
	xorl	%esi, %esi
	movq	-88(%rbp), %rdi
	callq	window_body_width
	movl	$1, %esi
	xorl	%ecx, %ecx
	movq	-88(%rbp), %rdi
	movq	8(%rdi), %rdi
	subq	$5, %rdi
	movq	208(%rdi), %rdi
	shrq	$23, %rdi
	andq	$7, %rdi
	movl	%edi, %edx
	cmpl	$2, %edx
	cmovel	%ecx, %esi
	subl	%esi, %eax
	movslq	%eax, %rdi
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	jmp	.LBB17_45
.LBB17_44:                              # %cond.false.160
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
.LBB17_45:                              # %cond.end.164
	movq	-272(%rbp), %rax        # 8-byte Reload
	xorl	%edi, %edi
	movq	-64(%rbp), %rcx
	movq	%rax, -280(%rbp)        # 8-byte Spill
	movq	%rcx, -288(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-288(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB17_47
# BB#46:                                # %cond.true.169
	movq	$-1, %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	jmp	.LBB17_48
.LBB17_47:                              # %cond.false.170
	movq	-64(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
.LBB17_48:                              # %cond.end.172
	movq	-296(%rbp), %rax        # 8-byte Reload
	xorl	%r8d, %r8d
	movq	-136(%rbp), %rcx
	movl	-140(%rbp), %edx
	movq	-88(%rbp), %rsi
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	-208(%rbp), %r9         # 8-byte Reload
	movq	%rsi, -304(%rbp)        # 8-byte Spill
	movq	%r9, %rsi
	movq	-224(%rbp), %r10        # 8-byte Reload
	movl	%edx, -308(%rbp)        # 4-byte Spill
	movq	%r10, %rdx
	movq	-232(%rbp), %r11        # 8-byte Reload
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	movq	%r11, %rcx
	movq	-240(%rbp), %r9         # 8-byte Reload
	movq	-256(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, (%rsp)
	movq	-280(%rbp), %r14        # 8-byte Reload
	movq	%r14, 8(%rsp)
	movq	%rax, 16(%rsp)
	movq	-320(%rbp), %rax        # 8-byte Reload
	movq	%rax, 24(%rsp)
	movl	-308(%rbp), %r15d       # 4-byte Reload
	movl	%r15d, 32(%rsp)
	movq	-304(%rbp), %rax        # 8-byte Reload
	movq	%rax, 40(%rsp)
	callq	compute_motion
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	(%rax), %rdi
	callq	make_natnum
	movq	%rax, -96(%rbp)
	movq	-128(%rbp), %rax
	movq	16(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -104(%rbp)
	movq	-128(%rbp), %rax
	movq	24(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -112(%rbp)
	movq	-128(%rbp), %rax
	movq	32(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -120(%rbp)
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	movq	-112(%rbp), %rdx
	movq	-120(%rbp), %rcx
	movq	-128(%rbp), %rax
	cmpl	$0, 40(%rax)
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	movq	%rsi, -336(%rbp)        # 8-byte Spill
	movq	%rdx, -344(%rbp)        # 8-byte Spill
	movq	%rcx, -352(%rbp)        # 8-byte Spill
	je	.LBB17_50
# BB#49:                                # %cond.true.186
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -360(%rbp)        # 8-byte Spill
	jmp	.LBB17_51
.LBB17_50:                              # %cond.false.188
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -360(%rbp)        # 8-byte Spill
.LBB17_51:                              # %cond.end.190
	movq	-360(%rbp), %rax        # 8-byte Reload
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	-336(%rbp), %rsi        # 8-byte Reload
	movq	-344(%rbp), %rdx        # 8-byte Reload
	movq	-352(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	callq	list5
	addq	$392, %rsp              # imm = 0x188
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end17:
	.size	Fcompute_motion, .Lfunc_end17-Fcompute_motion
	.cfi_endproc

	.globl	vmotion
	.align	16, 0x90
	.type	vmotion,@function
vmotion:                                # @vmotion
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp61:
	.cfi_def_cfa_offset 16
.Ltmp62:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp63:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$472, %rsp              # imm = 0x1D8
.Ltmp64:
	.cfi_offset %rbx, -40
.Ltmp65:
	.cfi_offset %r14, -32
.Ltmp66:
	.cfi_offset %r15, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	-64(%rbp), %rcx
	movq	272(%rcx), %rcx
	movq	%rcx, -72(%rbp)
	movq	$0, -128(%rbp)
	cmpq	$0, -72(%rbp)
	jle	.LBB18_2
# BB#1:                                 # %cond.true
	movl	$1, %eax
	movl	%eax, %ecx
	subq	-72(%rbp), %rcx
	movq	%rcx, -248(%rbp)        # 8-byte Spill
	jmp	.LBB18_3
.LBB18_2:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -248(%rbp)        # 8-byte Spill
	jmp	.LBB18_3
.LBB18_3:                               # %cond.end
	movq	-248(%rbp), %rax        # 8-byte Reload
	movq	%rax, -152(%rbp)
	movq	current_buffer, %rax
	movq	256(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB18_5
# BB#4:                                 # %cond.true.5
	movq	$-1, %rdi
	movabsq	$9223372036854775807, %rdx # imm = 0x7FFFFFFFFFFFFFFF
	movq	current_buffer, %rax
	movq	256(%rax), %rax
	sarq	$2, %rax
	movq	%rax, %rsi
	callq	clip_to_bounds
	movq	%rax, -256(%rbp)        # 8-byte Spill
	jmp	.LBB18_6
.LBB18_5:                               # %cond.false.7
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	256(%rax), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	-264(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	sete	%sil
	xorb	$-1, %sil
	testb	$1, %sil
	cmovnel	%ecx, %edi
	movslq	%edi, %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
.LBB18_6:                               # %cond.end.14
	movq	-256(%rbp), %rax        # 8-byte Reload
	movl	$5, %esi
	movq	%rax, -160(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -168(%rbp)
	movq	-64(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	Fcurrent_buffer
	movq	-272(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jne	.LBB18_8
# BB#7:                                 # %if.then
	movq	-168(%rbp), %rax
	movq	%rax, -184(%rbp)
	jmp	.LBB18_9
.LBB18_8:                               # %if.else
	callq	Fcurrent_buffer
	movq	%rax, -184(%rbp)
.LBB18_9:                               # %if.end
	movq	-128(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jl	.LBB18_56
# BB#10:                                # %if.then.23
	movq	$1, -144(%rbp)
.LBB18_11:                              # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_23 Depth 2
                                        #     Child Loop BB18_29 Depth 2
                                        #       Child Loop BB18_46 Depth 3
	movq	-128(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jg	.LBB18_13
# BB#12:                                # %lor.lhs.false
                                        #   in Loop: Header=BB18_11 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -144(%rbp)
	movb	%cl, -273(%rbp)         # 1-byte Spill
	je	.LBB18_14
.LBB18_13:                              # %land.rhs
                                        #   in Loop: Header=BB18_11 Depth=1
	movq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	cmpq	752(%rcx), %rax
	setg	%dl
	movb	%dl, -273(%rbp)         # 1-byte Spill
.LBB18_14:                              # %land.end
                                        #   in Loop: Header=BB18_11 Depth=1
	movb	-273(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB18_15
	jmp	.LBB18_53
.LBB18_15:                              # %while.body
                                        #   in Loop: Header=BB18_11 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -136(%rbp)
# BB#16:                                # %do.body
                                        #   in Loop: Header=BB18_11 Depth=1
	xorl	%edi, %edi
	movq	-136(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -136(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-288(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB18_18
# BB#17:                                # %if.then.31
                                        #   in Loop: Header=BB18_11 Depth=1
	movq	-192(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -192(%rbp)
	jmp	.LBB18_27
.LBB18_18:                              # %if.else.33
                                        #   in Loop: Header=BB18_11 Depth=1
	jmp	.LBB18_19
.LBB18_19:                              # %do.body.34
                                        #   in Loop: Header=BB18_11 Depth=1
	movq	-192(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jge	.LBB18_21
# BB#20:                                # %if.then.38
                                        #   in Loop: Header=BB18_11 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	addq	-192(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -208(%rbp)
	jmp	.LBB18_22
.LBB18_21:                              # %if.else.41
                                        #   in Loop: Header=BB18_11 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	40(%rcx), %rax
	addq	-192(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -208(%rbp)
.LBB18_22:                              # %if.end.48
                                        #   in Loop: Header=BB18_11 Depth=1
	jmp	.LBB18_23
.LBB18_23:                              # %while.cond.49
                                        #   Parent Loop BB18_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-208(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	setne	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB18_24
	jmp	.LBB18_25
.LBB18_24:                              # %while.body.55
                                        #   in Loop: Header=BB18_23 Depth=2
	movq	-208(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -208(%rbp)
	movq	-192(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -192(%rbp)
	jmp	.LBB18_23
.LBB18_25:                              # %while.end
                                        #   in Loop: Header=BB18_11 Depth=1
	jmp	.LBB18_26
.LBB18_26:                              # %do.end
                                        #   in Loop: Header=BB18_11 Depth=1
	jmp	.LBB18_27
.LBB18_27:                              # %if.end.57
                                        #   in Loop: Header=BB18_11 Depth=1
	jmp	.LBB18_28
.LBB18_28:                              # %do.end.58
                                        #   in Loop: Header=BB18_11 Depth=1
	movq	$-1, %rdx
	leaq	-192(%rbp), %rcx
	movq	-136(%rbp), %rdi
	movq	-192(%rbp), %rsi
	callq	find_newline_no_quit
	movq	%rax, -136(%rbp)
.LBB18_29:                              # %while.cond.60
                                        #   Parent Loop BB18_11 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB18_46 Depth 3
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-136(%rbp), %rdx
	movq	current_buffer, %rsi
	cmpq	752(%rsi), %rdx
	movb	%cl, -289(%rbp)         # 1-byte Spill
	jle	.LBB18_37
# BB#30:                                # %land.rhs.64
                                        #   in Loop: Header=BB18_29 Depth=2
	cmpq	$0, -160(%rbp)
	jle	.LBB18_32
# BB#31:                                # %land.lhs.true
                                        #   in Loop: Header=BB18_29 Depth=2
	movq	-136(%rbp), %rdi
	movq	-192(%rbp), %rsi
	movq	-160(%rbp), %rdx
	callq	indented_beyond_p
	movb	$1, %cl
	testb	$1, %al
	movb	%cl, -290(%rbp)         # 1-byte Spill
	jne	.LBB18_36
.LBB18_32:                              # %lor.rhs
                                        #   in Loop: Header=BB18_29 Depth=2
	movl	$574, %edi              # imm = 0x23E
	movq	-136(%rbp), %rax
	subq	$1, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rdx
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget_char_property
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -200(%rbp)
	movq	current_buffer, %rax
	movq	400(%rax), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-312(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB18_34
# BB#33:                                # %cond.true.75
                                        #   in Loop: Header=BB18_29 Depth=2
	xorl	%edi, %edi
	movq	-200(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-320(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	andb	$1, %dl
	movzbl	%dl, %edi
	movl	%edi, -324(%rbp)        # 4-byte Spill
	jmp	.LBB18_35
.LBB18_34:                              # %cond.false.80
                                        #   in Loop: Header=BB18_29 Depth=2
	movq	-200(%rbp), %rdi
	movq	current_buffer, %rax
	movq	400(%rax), %rsi
	callq	invisible_prop
	movl	%eax, -324(%rbp)        # 4-byte Spill
.LBB18_35:                              # %cond.end.83
                                        #   in Loop: Header=BB18_29 Depth=2
	movl	-324(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -290(%rbp)         # 1-byte Spill
.LBB18_36:                              # %lor.end
                                        #   in Loop: Header=BB18_29 Depth=2
	movb	-290(%rbp), %al         # 1-byte Reload
	movb	%al, -289(%rbp)         # 1-byte Spill
.LBB18_37:                              # %land.end.86
                                        #   in Loop: Header=BB18_29 Depth=2
	movb	-289(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB18_38
	jmp	.LBB18_52
.LBB18_38:                              # %while.body.87
                                        #   in Loop: Header=BB18_29 Depth=2
	jmp	.LBB18_39
.LBB18_39:                              # %do.body.88
                                        #   in Loop: Header=BB18_29 Depth=2
	xorl	%edi, %edi
	movq	-136(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -136(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-336(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB18_41
# BB#40:                                # %if.then.94
                                        #   in Loop: Header=BB18_29 Depth=2
	movq	-192(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -192(%rbp)
	jmp	.LBB18_50
.LBB18_41:                              # %if.else.96
                                        #   in Loop: Header=BB18_29 Depth=2
	jmp	.LBB18_42
.LBB18_42:                              # %do.body.97
                                        #   in Loop: Header=BB18_29 Depth=2
	movq	-192(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jge	.LBB18_44
# BB#43:                                # %if.then.104
                                        #   in Loop: Header=BB18_29 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	addq	-192(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -216(%rbp)
	jmp	.LBB18_45
.LBB18_44:                              # %if.else.109
                                        #   in Loop: Header=BB18_29 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	40(%rcx), %rax
	addq	-192(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -216(%rbp)
.LBB18_45:                              # %if.end.117
                                        #   in Loop: Header=BB18_29 Depth=2
	jmp	.LBB18_46
.LBB18_46:                              # %while.cond.118
                                        #   Parent Loop BB18_11 Depth=1
                                        #     Parent Loop BB18_29 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-216(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	setne	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB18_47
	jmp	.LBB18_48
.LBB18_47:                              # %while.body.125
                                        #   in Loop: Header=BB18_46 Depth=3
	movq	-216(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -216(%rbp)
	movq	-192(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -192(%rbp)
	jmp	.LBB18_46
.LBB18_48:                              # %while.end.128
                                        #   in Loop: Header=BB18_29 Depth=2
	jmp	.LBB18_49
.LBB18_49:                              # %do.end.129
                                        #   in Loop: Header=BB18_29 Depth=2
	jmp	.LBB18_50
.LBB18_50:                              # %if.end.130
                                        #   in Loop: Header=BB18_29 Depth=2
	jmp	.LBB18_51
.LBB18_51:                              # %do.end.131
                                        #   in Loop: Header=BB18_29 Depth=2
	movq	$-1, %rdx
	leaq	-192(%rbp), %rcx
	movq	-136(%rbp), %rdi
	movq	-192(%rbp), %rsi
	callq	find_newline_no_quit
	movq	%rax, -136(%rbp)
	jmp	.LBB18_29
.LBB18_52:                              # %while.end.133
                                        #   in Loop: Header=BB18_11 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edx
	xorl	%r8d, %r8d
	movl	$32768, %eax            # imm = 0x8000
	movl	%eax, %ecx
	movq	$-1, %rsi
	movq	-136(%rbp), %rdi
	movq	-192(%rbp), %r9
	movq	-152(%rbp), %r10
	movq	-40(%rbp), %r11
	movq	-72(%rbp), %rbx
	movq	-64(%rbp), %r14
	movq	%rsi, -344(%rbp)        # 8-byte Spill
	movq	%r9, %rsi
	movq	%rcx, -352(%rbp)        # 8-byte Spill
	movq	%r10, %rcx
	movq	%r11, %r9
	movq	$32768, (%rsp)          # imm = 0x8000
	movq	$32768, 8(%rsp)         # imm = 0x8000
	movq	$-1, 16(%rsp)
	movq	%rbx, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r14, 40(%rsp)
	callq	compute_motion
	movl	$48, %r8d
	movl	%r8d, %edx
	leaq	-120(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	memcpy
	movq	-96(%rbp), %rax
	movq	-128(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -128(%rbp)
	movq	$0, -144(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB18_11
.LBB18_53:                              # %while.end.137
	movq	-128(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jl	.LBB18_55
# BB#54:                                # %if.then.140
	movabsq	$val_vmotion, %rax
	movq	-40(%rbp), %rcx
	movq	%rcx, val_vmotion
	movq	-48(%rbp), %rcx
	movq	%rcx, val_vmotion+8
	movq	-128(%rbp), %rcx
	movq	%rcx, val_vmotion+24
	movq	-152(%rbp), %rcx
	movq	%rcx, val_vmotion+16
	movl	$0, val_vmotion+40
	movq	$0, val_vmotion+32
	movq	%rax, -32(%rbp)
	jmp	.LBB18_88
.LBB18_55:                              # %if.end.141
	jmp	.LBB18_56
.LBB18_56:                              # %if.end.142
	movq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	cmpq	752(%rcx), %rax
	jle	.LBB18_86
# BB#57:                                # %land.lhs.true.146
	movq	-48(%rbp), %rax
	subq	$1, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB18_59
# BB#58:                                # %cond.true.152
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	jmp	.LBB18_60
.LBB18_59:                              # %cond.false.155
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -360(%rbp)        # 8-byte Spill
	jmp	.LBB18_60
.LBB18_60:                              # %cond.end.156
	movq	-360(%rbp), %rax        # 8-byte Reload
	movq	-48(%rbp), %rcx
	subq	$1, %rcx
	addq	%rcx, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	cmpl	$10, %edx
	je	.LBB18_86
# BB#61:                                # %if.then.167
	movq	$-1, %rdx
	leaq	-224(%rbp), %rcx
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	find_newline_no_quit
	movq	%rax, -136(%rbp)
.LBB18_62:                              # %while.cond.171
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_79 Depth 2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-136(%rbp), %rdx
	movq	current_buffer, %rsi
	cmpq	752(%rsi), %rdx
	movb	%cl, -361(%rbp)         # 1-byte Spill
	jle	.LBB18_70
# BB#63:                                # %land.rhs.175
                                        #   in Loop: Header=BB18_62 Depth=1
	cmpq	$0, -160(%rbp)
	jle	.LBB18_65
# BB#64:                                # %land.lhs.true.178
                                        #   in Loop: Header=BB18_62 Depth=1
	movq	-136(%rbp), %rdi
	movq	-224(%rbp), %rsi
	movq	-160(%rbp), %rdx
	callq	indented_beyond_p
	movb	$1, %cl
	testb	$1, %al
	movb	%cl, -362(%rbp)         # 1-byte Spill
	jne	.LBB18_69
.LBB18_65:                              # %lor.rhs.181
                                        #   in Loop: Header=BB18_62 Depth=1
	movl	$574, %edi              # imm = 0x23E
	movq	-136(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rdx
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget_char_property
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -232(%rbp)
	movq	current_buffer, %rax
	movq	400(%rax), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-384(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB18_67
# BB#66:                                # %cond.true.190
                                        #   in Loop: Header=BB18_62 Depth=1
	xorl	%edi, %edi
	movq	-232(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-392(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	andb	$1, %dl
	movzbl	%dl, %edi
	movl	%edi, -396(%rbp)        # 4-byte Spill
	jmp	.LBB18_68
.LBB18_67:                              # %cond.false.196
                                        #   in Loop: Header=BB18_62 Depth=1
	movq	-232(%rbp), %rdi
	movq	current_buffer, %rax
	movq	400(%rax), %rsi
	callq	invisible_prop
	movl	%eax, -396(%rbp)        # 4-byte Spill
.LBB18_68:                              # %cond.end.199
                                        #   in Loop: Header=BB18_62 Depth=1
	movl	-396(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -362(%rbp)         # 1-byte Spill
.LBB18_69:                              # %lor.end.202
                                        #   in Loop: Header=BB18_62 Depth=1
	movb	-362(%rbp), %al         # 1-byte Reload
	movb	%al, -361(%rbp)         # 1-byte Spill
.LBB18_70:                              # %land.end.203
                                        #   in Loop: Header=BB18_62 Depth=1
	movb	-361(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB18_71
	jmp	.LBB18_85
.LBB18_71:                              # %while.body.204
                                        #   in Loop: Header=BB18_62 Depth=1
	jmp	.LBB18_72
.LBB18_72:                              # %do.body.205
                                        #   in Loop: Header=BB18_62 Depth=1
	xorl	%edi, %edi
	movq	-136(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -136(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-408(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB18_74
# BB#73:                                # %if.then.211
                                        #   in Loop: Header=BB18_62 Depth=1
	movq	-224(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -224(%rbp)
	jmp	.LBB18_83
.LBB18_74:                              # %if.else.213
                                        #   in Loop: Header=BB18_62 Depth=1
	jmp	.LBB18_75
.LBB18_75:                              # %do.body.214
                                        #   in Loop: Header=BB18_62 Depth=1
	movq	-224(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jge	.LBB18_77
# BB#76:                                # %if.then.221
                                        #   in Loop: Header=BB18_62 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	addq	-224(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -240(%rbp)
	jmp	.LBB18_78
.LBB18_77:                              # %if.else.226
                                        #   in Loop: Header=BB18_62 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	40(%rcx), %rax
	addq	-224(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -240(%rbp)
.LBB18_78:                              # %if.end.234
                                        #   in Loop: Header=BB18_62 Depth=1
	jmp	.LBB18_79
.LBB18_79:                              # %while.cond.235
                                        #   Parent Loop BB18_62 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-240(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	setne	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB18_80
	jmp	.LBB18_81
.LBB18_80:                              # %while.body.242
                                        #   in Loop: Header=BB18_79 Depth=2
	movq	-240(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -240(%rbp)
	movq	-224(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -224(%rbp)
	jmp	.LBB18_79
.LBB18_81:                              # %while.end.245
                                        #   in Loop: Header=BB18_62 Depth=1
	jmp	.LBB18_82
.LBB18_82:                              # %do.end.246
                                        #   in Loop: Header=BB18_62 Depth=1
	jmp	.LBB18_83
.LBB18_83:                              # %if.end.247
                                        #   in Loop: Header=BB18_62 Depth=1
	jmp	.LBB18_84
.LBB18_84:                              # %do.end.248
                                        #   in Loop: Header=BB18_62 Depth=1
	movq	$-1, %rdx
	leaq	-224(%rbp), %rcx
	movq	-136(%rbp), %rdi
	movq	-224(%rbp), %rsi
	callq	find_newline_no_quit
	movq	%rax, -136(%rbp)
	jmp	.LBB18_62
.LBB18_85:                              # %while.end.250
	xorl	%eax, %eax
	movl	%eax, %edx
	xorl	%r8d, %r8d
	movl	$32768, %eax            # imm = 0x8000
	movl	%eax, %ecx
	movq	$-1, %rsi
	movq	-136(%rbp), %rdi
	movq	-224(%rbp), %r9
	movq	-152(%rbp), %r10
	movq	-40(%rbp), %r11
	movq	-72(%rbp), %rbx
	movq	-64(%rbp), %r14
	movq	%rsi, -416(%rbp)        # 8-byte Spill
	movq	%r9, %rsi
	movq	%rcx, -424(%rbp)        # 8-byte Spill
	movq	%r10, %rcx
	movq	%r11, %r9
	movq	$32768, (%rsp)          # imm = 0x8000
	movq	$32768, 8(%rsp)         # imm = 0x8000
	movq	$-1, 16(%rsp)
	movq	%rbx, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r14, 40(%rsp)
	callq	compute_motion
	movl	$48, %r8d
	movl	%r8d, %edx
	leaq	-120(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	memcpy
	movb	$1, -169(%rbp)
	jmp	.LBB18_87
.LBB18_86:                              # %if.else.252
	movq	-152(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	$0, -96(%rbp)
	movb	$0, -169(%rbp)
.LBB18_87:                              # %if.end.254
	movq	$-32768, %rax           # imm = 0xFFFFFFFFFFFF8000
	movq	$-1, %rcx
	xorl	%edx, %edx
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-128(%rbp), %r8
	movq	-104(%rbp), %r9
	movb	-169(%rbp), %r10b
	movq	current_buffer, %r11
	movq	768(%r11), %r11
	movq	-56(%rbp), %rbx
	movq	-72(%rbp), %r14
	movq	-64(%rbp), %r15
	andb	$1, %r10b
	movl	%edx, -428(%rbp)        # 4-byte Spill
	movq	%r8, %rdx
	movq	%rcx, -440(%rbp)        # 8-byte Spill
	movq	%r9, %rcx
	movzbl	%r10b, %r8d
	movq	%r11, %r9
	movq	%rbx, (%rsp)
	movq	$-32768, 8(%rsp)        # imm = 0xFFFFFFFFFFFF8000
	movq	$-1, 16(%rsp)
	movq	%r14, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r15, 40(%rsp)
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	compute_motion
	movq	%rax, -32(%rbp)
.LBB18_88:                              # %return
	movq	-32(%rbp), %rax
	addq	$472, %rsp              # imm = 0x1D8
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end18:
	.size	vmotion, .Lfunc_end18-vmotion
	.cfi_endproc

	.globl	Fvertical_motion
	.align	16, 0x90
	.type	Fvertical_motion,@function
Fvertical_motion:                       # @Fvertical_motion
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp67:
	.cfi_def_cfa_offset 16
.Ltmp68:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp69:
	.cfi_def_cfa_register %rbp
	subq	$5264, %rsp             # imm = 0x1490
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	$0, -4888(%rbp)
	movq	-8(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	sete	%cl
	andb	$1, %cl
	movb	%cl, -4889(%rbp)
	testb	$1, -4889(%rbp)
	je	.LBB19_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -4880(%rbp)
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB19_2:                               # %if.end
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB19_4
# BB#3:                                 # %cond.true
	jmp	.LBB19_5
.LBB19_4:                               # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -5032(%rbp)       # 8-byte Spill
.LBB19_5:                               # %cond.end
	movq	-16(%rbp), %rdi
	callq	decode_live_window
	xorl	%edi, %edi
	movq	%rax, -4848(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -4856(%rbp)
	movq	-4848(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	cmpq	current_buffer, %rax
	je	.LBB19_19
# BB#6:                                 # %if.then.13
	movq	-4848(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -4856(%rbp)
	movq	-4848(%rbp), %rax
	movq	96(%rax), %rdi
	callq	marker_position
	movq	%rax, -4864(%rbp)
	movq	-4848(%rbp), %rax
	movq	96(%rax), %rdi
	callq	marker_byte_position
	movq	%rax, -4872(%rbp)
	movq	-4848(%rbp), %rdi
	movq	%rdi, -5040(%rbp)       # 8-byte Spill
	callq	Fcurrent_buffer
	movq	-5040(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	wset_buffer
	movq	-4848(%rbp), %rax
	movq	96(%rax), %rdi
	movq	-4848(%rbp), %rax
	movq	80(%rax), %rsi
	movq	current_buffer, %rax
	cmpq	current_buffer, %rax
	movq	%rdi, -5048(%rbp)       # 8-byte Spill
	movq	%rsi, -5056(%rbp)       # 8-byte Spill
	jne	.LBB19_8
# BB#7:                                 # %cond.true.23
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, -5064(%rbp)       # 8-byte Spill
	jmp	.LBB19_12
.LBB19_8:                               # %cond.false.25
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	360(%rax), %rax
	movq	%rax, -5072(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-5072(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB19_10
# BB#9:                                 # %cond.true.29
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	movq	%rax, -5080(%rbp)       # 8-byte Spill
	jmp	.LBB19_11
.LBB19_10:                              # %cond.false.31
	movq	current_buffer, %rax
	movq	360(%rax), %rdi
	callq	marker_position
	movq	%rax, -5080(%rbp)       # 8-byte Spill
.LBB19_11:                              # %cond.end.34
	movq	-5080(%rbp), %rax       # 8-byte Reload
	movq	%rax, -5064(%rbp)       # 8-byte Spill
.LBB19_12:                              # %cond.end.35
	movq	-5064(%rbp), %rax       # 8-byte Reload
	movq	current_buffer, %rcx
	cmpq	current_buffer, %rcx
	movq	%rax, -5088(%rbp)       # 8-byte Spill
	jne	.LBB19_14
# BB#13:                                # %cond.true.39
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	movq	%rax, -5096(%rbp)       # 8-byte Spill
	jmp	.LBB19_18
.LBB19_14:                              # %cond.false.41
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	360(%rax), %rax
	movq	%rax, -5104(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-5104(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB19_16
# BB#15:                                # %cond.true.46
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	movq	%rax, -5112(%rbp)       # 8-byte Spill
	jmp	.LBB19_17
.LBB19_16:                              # %cond.false.48
	movq	current_buffer, %rax
	movq	360(%rax), %rdi
	callq	marker_byte_position
	movq	%rax, -5112(%rbp)       # 8-byte Spill
.LBB19_17:                              # %cond.end.51
	movq	-5112(%rbp), %rax       # 8-byte Reload
	movq	%rax, -5096(%rbp)       # 8-byte Spill
.LBB19_18:                              # %cond.end.53
	movq	-5096(%rbp), %rax       # 8-byte Reload
	movq	-5048(%rbp), %rdi       # 8-byte Reload
	movq	-5056(%rbp), %rsi       # 8-byte Reload
	movq	-5088(%rbp), %rdx       # 8-byte Reload
	movq	%rax, %rcx
	callq	set_marker_both
	movq	%rax, -5120(%rbp)       # 8-byte Spill
.LBB19_19:                              # %if.end.56
	testb	$1, noninteractive
	je	.LBB19_21
# BB#20:                                # %if.then.58
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	current_buffer, %rcx
	movq	744(%rcx), %rcx
	addq	$0, %rcx
	movq	-8(%rbp), %rdx
	sarq	$2, %rdx
	movq	-4848(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rsi, -5128(%rbp)       # 8-byte Spill
	movq	%rcx, %rsi
	movq	-5128(%rbp), %rcx       # 8-byte Reload
	callq	vmotion
	movl	$48, %r8d
	movl	%r8d, %edx
	leaq	-4944(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	memcpy
	movq	-4944(%rbp), %rdi
	movq	-4936(%rbp), %rsi
	callq	set_point_both
	movq	-4920(%rbp), %rax
	movl	%eax, %r8d
	movl	%r8d, -2384(%rbp)
	jmp	.LBB19_133
.LBB19_21:                              # %if.else
	xorl	%edi, %edi
	movq	$0, -4960(%rbp)
	movb	$0, -4965(%rbp)
	movb	$0, -4966(%rbp)
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -4976(%rbp)
	movl	$0, -4980(%rbp)
	movl	$-1, -5000(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -5136(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-5136(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	andb	$1, %dl
	movb	%dl, -5001(%rbp)
	testb	$1, -5001(%rbp)
	je	.LBB19_23
# BB#22:                                # %if.then.72
	movq	-24(%rbp), %rdi
	callq	extract_float
	movsd	%xmm0, -4992(%rbp)
	movq	-4848(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movsd	-4992(%rbp), %xmm0      # xmm0 = mem[0],zero
	movq	-24(%rbp), %rdx
	callq	window_column_x
	movl	%eax, -4996(%rbp)
.LBB19_23:                              # %if.end.75
	callq	bidi_shelve_cache
	leaq	-4824(%rbp), %rdi
	movq	%rax, -4888(%rbp)
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, -4840(%rbp)
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	movq	%rax, -4832(%rbp)
	movq	-4848(%rbp), %rsi
	movq	-4840(%rbp), %rdx
	movq	-4832(%rbp), %rcx
	callq	start_display
	movl	-2508(%rbp), %r8d
	movl	%r8d, -4964(%rbp)
	movq	-4512(%rbp), %rax
	movq	%rax, -4952(%rbp)
	cmpq	$0, -2680(%rbp)
	jl	.LBB19_25
# BB#24:                                # %if.then.86
	movq	$0, -4960(%rbp)
	jmp	.LBB19_43
.LBB19_25:                              # %if.else.87
	cmpl	$2, -4800(%rbp)
	jne	.LBB19_39
# BB#26:                                # %if.then.90
	movq	-4192(%rbp), %rdi
	callq	SSDATA
	movq	%rax, -5016(%rbp)
	movq	-5016(%rbp), %rax
	movq	-4192(%rbp), %rdi
	movq	%rax, -5144(%rbp)       # 8-byte Spill
	callq	SBYTES
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	-5144(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	movq	%rdi, -5024(%rbp)
	cmpl	$1, -2464(%rbp)
	movb	%dl, -5145(%rbp)        # 1-byte Spill
	jne	.LBB19_31
# BB#27:                                # %land.lhs.true
	xorl	%eax, %eax
	movb	%al, %cl
	movb	-4736(%rbp), %dl
	shrb	$2, %dl
	andb	$1, %dl
	testb	$1, %dl
	movb	%cl, -5145(%rbp)        # 1-byte Spill
	je	.LBB19_31
# BB#28:                                # %land.rhs
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -2736(%rbp)
	movb	%cl, -5146(%rbp)        # 1-byte Spill
	jle	.LBB19_30
# BB#29:                                # %land.rhs.99
	leaq	-4824(%rbp), %rax
	movl	-2736(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	addq	$648, %rax              # imm = 0x288
	imulq	$288, %rdx, %rdx        # imm = 0x120
	addq	%rdx, %rax
	cmpl	$0, 252(%rax)
	sete	%sil
	movb	%sil, -5146(%rbp)       # 1-byte Spill
.LBB19_30:                              # %land.end
	movb	-5146(%rbp), %al        # 1-byte Reload
	movb	%al, -5145(%rbp)        # 1-byte Spill
.LBB19_31:                              # %land.end.105
	movb	-5145(%rbp), %al        # 1-byte Reload
	andb	$1, %al
	movb	%al, -4966(%rbp)
.LBB19_32:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-5016(%rbp), %rax
	cmpq	-5024(%rbp), %rax
	jae	.LBB19_36
# BB#33:                                # %while.body
                                        #   in Loop: Header=BB19_32 Depth=1
	movq	-5016(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -5016(%rbp)
	movsbl	(%rax), %edx
	cmpl	$10, %edx
	jne	.LBB19_35
# BB#34:                                # %if.then.112
                                        #   in Loop: Header=BB19_32 Depth=1
	movq	-4960(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -4960(%rbp)
.LBB19_35:                              # %if.end.113
                                        #   in Loop: Header=BB19_32 Depth=1
	jmp	.LBB19_32
.LBB19_36:                              # %while.end
	cmpq	$0, -4960(%rbp)
	jne	.LBB19_38
# BB#37:                                # %if.then.115
	movq	$-1, -4960(%rbp)
.LBB19_38:                              # %if.end.116
	jmp	.LBB19_42
.LBB19_39:                              # %if.else.117
	movb	$1, %al
	cmpl	$4, -4800(%rbp)
	movb	%al, -5147(%rbp)        # 1-byte Spill
	je	.LBB19_41
# BB#40:                                # %lor.rhs
	cmpl	$5, -4800(%rbp)
	sete	%al
	movb	%al, -5147(%rbp)        # 1-byte Spill
.LBB19_41:                              # %lor.end
	movb	-5147(%rbp), %al        # 1-byte Reload
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %ecx
	movslq	%ecx, %rdx
	movq	%rdx, -4960(%rbp)
.LBB19_42:                              # %if.end.126
	jmp	.LBB19_43
.LBB19_43:                              # %if.end.127
	testb	$1, -5001(%rbp)
	je	.LBB19_45
# BB#44:                                # %if.then.129
	cvttsd2si	-4992(%rbp), %eax
	movl	%eax, -2380(%rbp)
	movl	-4996(%rbp), %eax
	movl	%eax, -2420(%rbp)
	jmp	.LBB19_46
.LBB19_45:                              # %if.else.131
	leaq	-4824(%rbp), %rdi
	callq	reseat_at_previous_visible_line_start
	movl	$0, -2380(%rbp)
	movl	$0, -2420(%rbp)
.LBB19_46:                              # %if.end.134
	movq	-4512(%rbp), %rax
	movq	current_buffer, %rcx
	movq	736(%rcx), %rcx
	addq	$0, %rcx
	cmpq	%rcx, %rax
	je	.LBB19_55
# BB#47:                                # %if.then.142
	testb	$1, -4966(%rbp)
	je	.LBB19_52
# BB#48:                                # %lor.lhs.false
	movq	-4504(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB19_50
# BB#49:                                # %cond.true.149
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -5160(%rbp)       # 8-byte Spill
	jmp	.LBB19_51
.LBB19_50:                              # %cond.false.151
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -5160(%rbp)       # 8-byte Spill
	jmp	.LBB19_51
.LBB19_51:                              # %cond.end.152
	movq	-5160(%rbp), %rax       # 8-byte Reload
	addq	-4504(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	cmpl	$10, %edx
	jne	.LBB19_53
.LBB19_52:                              # %cond.true.164
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, -5168(%rbp)       # 8-byte Spill
	jmp	.LBB19_54
.LBB19_53:                              # %cond.false.167
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	subq	$1, %rax
	movq	%rax, -5168(%rbp)       # 8-byte Spill
.LBB19_54:                              # %cond.end.171
	movq	-5168(%rbp), %rax       # 8-byte Reload
	leaq	-4824(%rbp), %rdi
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$8, %r9d
	movq	%rax, %rsi
	movl	%ecx, %edx
	movl	%ecx, -5172(%rbp)       # 4-byte Spill
	movl	-5172(%rbp), %r8d       # 4-byte Reload
	callq	move_it_to
	movl	%eax, -5176(%rbp)       # 4-byte Spill
.LBB19_55:                              # %if.end.174
	movq	-4512(%rbp), %rax
	cmpq	-4952(%rbp), %rax
	jle	.LBB19_76
# BB#56:                                # %if.then.180
	cmpq	$0, -4960(%rbp)
	jge	.LBB19_60
# BB#57:                                # %land.lhs.true.183
	cmpl	$0, -4800(%rbp)
	jne	.LBB19_60
# BB#58:                                # %land.lhs.true.187
	cmpl	$10, -2700(%rbp)
	jne	.LBB19_60
# BB#59:                                # %if.then.190
	movq	$1, -4960(%rbp)
	jmp	.LBB19_69
.LBB19_60:                              # %if.else.191
	cmpq	$1, -4960(%rbp)
	jne	.LBB19_64
# BB#61:                                # %land.lhs.true.194
	cmpl	$0, -2384(%rbp)
	jne	.LBB19_64
# BB#62:                                # %land.lhs.true.198
	movl	-2420(%rbp), %eax
	cmpl	-2504(%rbp), %eax
	jge	.LBB19_64
# BB#63:                                # %if.then.202
	movq	$0, -4960(%rbp)
	jmp	.LBB19_68
.LBB19_64:                              # %if.else.203
	testb	$1, -4966(%rbp)
	je	.LBB19_67
# BB#65:                                # %land.lhs.true.206
	cmpl	$0, -2384(%rbp)
	jle	.LBB19_67
# BB#66:                                # %if.then.210
	movslq	-2384(%rbp), %rax
	movq	%rax, -4960(%rbp)
.LBB19_67:                              # %if.end.213
	jmp	.LBB19_68
.LBB19_68:                              # %if.end.214
	jmp	.LBB19_69
.LBB19_69:                              # %if.end.215
	cmpl	$0, -2708(%rbp)
	jne	.LBB19_73
# BB#70:                                # %land.lhs.true.218
	movl	-2420(%rbp), %eax
	cmpl	-2504(%rbp), %eax
	jl	.LBB19_73
# BB#71:                                # %land.lhs.true.223
	cmpq	$0, -4960(%rbp)
	jne	.LBB19_73
# BB#72:                                # %if.then.226
	movq	$1, -4960(%rbp)
.LBB19_73:                              # %if.end.227
	cmpq	$0, -4960(%rbp)
	jle	.LBB19_75
# BB#74:                                # %if.then.230
	leaq	-4824(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %ecx
	subq	-4960(%rbp), %rcx
	movq	%rcx, %rsi
	callq	move_it_by_lines
.LBB19_75:                              # %if.end.232
	movb	$1, -4965(%rbp)
	jmp	.LBB19_84
.LBB19_76:                              # %if.else.233
	movq	-4512(%rbp), %rax
	movq	current_buffer, %rcx
	movq	736(%rcx), %rcx
	addq	$0, %rcx
	subq	$1, %rcx
	cmpq	%rcx, %rax
	jne	.LBB19_83
# BB#77:                                # %land.lhs.true.242
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	subq	$1, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB19_79
# BB#78:                                # %cond.true.250
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -5184(%rbp)       # 8-byte Spill
	jmp	.LBB19_80
.LBB19_79:                              # %cond.false.253
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -5184(%rbp)       # 8-byte Spill
	jmp	.LBB19_80
.LBB19_80:                              # %cond.end.254
	movq	-5184(%rbp), %rax       # 8-byte Reload
	movq	current_buffer, %rcx
	movq	744(%rcx), %rcx
	addq	$0, %rcx
	subq	$1, %rcx
	addq	%rcx, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	cmpl	$10, %edx
	jne	.LBB19_83
# BB#81:                                # %land.lhs.true.267
	cmpq	$0, -4976(%rbp)
	jg	.LBB19_83
# BB#82:                                # %if.then.270
	movq	-4976(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -4976(%rbp)
	movl	$-1, -4980(%rbp)
	movb	$1, -4965(%rbp)
.LBB19_83:                              # %if.end.272
	jmp	.LBB19_84
.LBB19_84:                              # %if.end.273
	testb	$1, -4889(%rbp)
	je	.LBB19_86
# BB#85:                                # %if.then.275
	movq	-4848(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-4880(%rbp), %rax
	movq	%rdi, -5192(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -5200(%rbp)       # 8-byte Spill
	callq	extract_float
	movq	-4880(%rbp), %rdx
	movq	-5192(%rbp), %rdi       # 8-byte Reload
	movq	-5200(%rbp), %rsi       # 8-byte Reload
	callq	window_column_x
	movl	%eax, -5000(%rbp)
.LBB19_86:                              # %if.end.278
	cmpq	$0, -4976(%rbp)
	jg	.LBB19_97
# BB#87:                                # %if.then.281
	movl	-4980(%rbp), %eax
	movl	%eax, -2384(%rbp)
	cmpq	$0, -4976(%rbp)
	jge	.LBB19_89
# BB#88:                                # %land.lhs.true.285
	cmpq	$0, -4512(%rbp)
	jg	.LBB19_92
.LBB19_89:                              # %lor.lhs.false.291
	cmpq	$0, -4976(%rbp)
	jne	.LBB19_96
# BB#90:                                # %land.lhs.true.294
	testb	$1, -5001(%rbp)
	je	.LBB19_92
# BB#91:                                # %land.lhs.true.297
	movl	-4996(%rbp), %eax
	cmpl	-5000(%rbp), %eax
	jle	.LBB19_96
.LBB19_92:                              # %if.then.300
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	cmpq	-4976(%rbp), %rax
	jle	.LBB19_94
# BB#93:                                # %cond.true.303
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	%rax, -5208(%rbp)       # 8-byte Spill
	jmp	.LBB19_95
.LBB19_94:                              # %cond.false.304
	movq	-4976(%rbp), %rax
	movq	%rax, -5208(%rbp)       # 8-byte Spill
.LBB19_95:                              # %cond.end.305
	movq	-5208(%rbp), %rax       # 8-byte Reload
	leaq	-4824(%rbp), %rdi
	movq	%rax, %rsi
	callq	move_it_by_lines
.LBB19_96:                              # %if.end.307
	jmp	.LBB19_121
.LBB19_97:                              # %if.else.308
	testb	$1, -4965(%rbp)
	je	.LBB19_102
# BB#98:                                # %if.then.310
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movl	-4980(%rbp), %ecx
	movl	%ecx, -2384(%rbp)
	cmpq	-4976(%rbp), %rax
	jge	.LBB19_100
# BB#99:                                # %cond.true.314
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	%rax, -5216(%rbp)       # 8-byte Spill
	jmp	.LBB19_101
.LBB19_100:                             # %cond.false.315
	movq	-4976(%rbp), %rax
	movq	%rax, -5216(%rbp)       # 8-byte Spill
.LBB19_101:                             # %cond.end.316
	movq	-5216(%rbp), %rax       # 8-byte Reload
	leaq	-4824(%rbp), %rdi
	movq	%rax, %rsi
	callq	move_it_by_lines
	jmp	.LBB19_120
.LBB19_102:                             # %if.else.318
	movq	-4952(%rbp), %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	jge	.LBB19_112
# BB#103:                               # %if.then.321
	jmp	.LBB19_104
.LBB19_104:                             # %while.cond.322
                                        # =>This Inner Loop Header: Depth=1
	movq	-4512(%rbp), %rax
	cmpq	-4952(%rbp), %rax
	jg	.LBB19_106
# BB#105:                               # %while.body.328
                                        #   in Loop: Header=BB19_104 Depth=1
	leaq	-4824(%rbp), %rdi
	movl	$1, %eax
	movl	%eax, %esi
	movl	$0, -2384(%rbp)
	callq	move_it_by_lines
	jmp	.LBB19_104
.LBB19_106:                             # %while.end.330
	cmpq	$1, -4976(%rbp)
	jle	.LBB19_111
# BB#107:                               # %if.then.333
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-4976(%rbp), %rcx
	subq	$1, %rcx
	cmpq	%rcx, %rax
	jge	.LBB19_109
# BB#108:                               # %cond.true.337
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	%rax, -5224(%rbp)       # 8-byte Spill
	jmp	.LBB19_110
.LBB19_109:                             # %cond.false.338
	movq	-4976(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -5224(%rbp)       # 8-byte Spill
.LBB19_110:                             # %cond.end.340
	movq	-5224(%rbp), %rax       # 8-byte Reload
	leaq	-4824(%rbp), %rdi
	movq	%rax, %rsi
	callq	move_it_by_lines
.LBB19_111:                             # %if.end.342
	jmp	.LBB19_119
.LBB19_112:                             # %if.else.343
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movl	$0, -2384(%rbp)
	cmpq	-4976(%rbp), %rax
	jge	.LBB19_114
# BB#113:                               # %cond.true.347
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	%rax, -5232(%rbp)       # 8-byte Spill
	jmp	.LBB19_115
.LBB19_114:                             # %cond.false.348
	movq	-4976(%rbp), %rax
	movq	%rax, -5232(%rbp)       # 8-byte Spill
.LBB19_115:                             # %cond.end.349
	movq	-5232(%rbp), %rax       # 8-byte Reload
	leaq	-4824(%rbp), %rdi
	movq	%rax, %rsi
	callq	move_it_by_lines
	movq	-4512(%rbp), %rax
	cmpq	-4840(%rbp), %rax
	jne	.LBB19_118
# BB#116:                               # %land.lhs.true.357
	movq	-4840(%rbp), %rax
	cmpq	-4952(%rbp), %rax
	jne	.LBB19_118
# BB#117:                               # %if.then.361
	movl	$0, -2384(%rbp)
.LBB19_118:                             # %if.end.363
	jmp	.LBB19_119
.LBB19_119:                             # %if.end.364
	jmp	.LBB19_120
.LBB19_120:                             # %if.end.365
	jmp	.LBB19_121
.LBB19_121:                             # %if.end.366
	testb	$1, -4889(%rbp)
	je	.LBB19_132
# BB#122:                               # %if.then.368
	leaq	-4824(%rbp), %rdi
	movl	$1, %ecx
	movq	current_buffer, %rax
	movq	768(%rax), %rsi
	movl	-4964(%rbp), %edx
	addl	-5000(%rbp), %edx
	callq	move_it_in_display_line
	cmpq	$0, -4976(%rbp)
	jle	.LBB19_131
# BB#123:                               # %land.lhs.true.373
	cmpl	$1, -2464(%rbp)
	jne	.LBB19_131
# BB#124:                               # %if.then.377
	jmp	.LBB19_125
.LBB19_125:                             # %while.cond.378
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$2, -4800(%rbp)
	movb	%cl, -5233(%rbp)        # 1-byte Spill
	jne	.LBB19_128
# BB#126:                               # %land.lhs.true.382
                                        #   in Loop: Header=BB19_125 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movb	-4736(%rbp), %dl
	shrb	$2, %dl
	andb	$1, %dl
	testb	$1, %dl
	movb	%cl, -5233(%rbp)        # 1-byte Spill
	jne	.LBB19_128
# BB#127:                               # %land.rhs.388
                                        #   in Loop: Header=BB19_125 Depth=1
	movq	-4192(%rbp), %rdi
	callq	SSDATA
	addq	-4480(%rbp), %rax
	movq	-4192(%rbp), %rdi
	movq	%rax, -5248(%rbp)       # 8-byte Spill
	callq	SBYTES
	subq	-4480(%rbp), %rax
	movl	$10, %esi
	movq	-5248(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rdx
	callq	memchr
	cmpq	$0, %rax
	setne	%cl
	movb	%cl, -5233(%rbp)        # 1-byte Spill
.LBB19_128:                             # %land.end.402
                                        #   in Loop: Header=BB19_125 Depth=1
	movb	-5233(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB19_129
	jmp	.LBB19_130
.LBB19_129:                             # %while.body.403
                                        #   in Loop: Header=BB19_125 Depth=1
	leaq	-4824(%rbp), %rdi
	movl	$1, %eax
	movl	%eax, %esi
	callq	move_it_by_lines
	leaq	-4824(%rbp), %rdi
	movl	$1, %ecx
	movq	current_buffer, %rsi
	movq	768(%rsi), %rsi
	movl	-4964(%rbp), %eax
	addl	-5000(%rbp), %eax
	movl	%eax, %edx
	callq	move_it_in_display_line
	jmp	.LBB19_125
.LBB19_130:                             # %while.end.406
	jmp	.LBB19_131
.LBB19_131:                             # %if.end.407
	jmp	.LBB19_132
.LBB19_132:                             # %if.end.408
	movq	-4512(%rbp), %rdi
	movq	-4504(%rbp), %rsi
	callq	set_point_both
	xorl	%esi, %esi
	movq	-4888(%rbp), %rdi
	callq	bidi_unshelve_cache
.LBB19_133:                             # %if.end.415
	movq	-4856(%rbp), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB19_134
	jmp	.LBB19_135
.LBB19_134:                             # %if.then.417
	movq	-4848(%rbp), %rdi
	movq	-4856(%rbp), %rsi
	callq	wset_buffer
	movq	-4848(%rbp), %rsi
	movq	96(%rsi), %rdi
	movq	-4848(%rbp), %rsi
	movq	80(%rsi), %rsi
	movq	-4864(%rbp), %rdx
	movq	-4872(%rbp), %rcx
	callq	set_marker_both
	movq	%rax, -5256(%rbp)       # 8-byte Spill
.LBB19_135:                             # %if.end.421
	movslq	-2384(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	addq	$5264, %rsp             # imm = 0x1490
	popq	%rbp
	retq
.Lfunc_end19:
	.size	Fvertical_motion, .Lfunc_end19-Fvertical_motion
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI20_0:
	.quad	-4476578029606273024    # double -2147483648
.LCPI20_1:
	.quad	4602678819172646912     # double 0.5
.LCPI20_2:
	.quad	4746794007244308480     # double 2147483647
	.text
	.align	16, 0x90
	.type	window_column_x,@function
window_column_x:                        # @window_column_x
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp70:
	.cfi_def_cfa_offset 16
.Ltmp71:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp72:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movsd	.LCPI20_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI20_1, %xmm2        # xmm2 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdx
	movq	8(%rdx), %rdx
	subq	$5, %rdx
	cvtsi2sdl	364(%rdx), %xmm3
	mulsd	%xmm3, %xmm0
	addsd	%xmm2, %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jb	.LBB20_2
# BB#1:                                 # %land.lhs.true
	movsd	.LCPI20_2, %xmm0        # xmm0 = mem[0],zero
	ucomisd	-40(%rbp), %xmm0
	jae	.LBB20_3
.LBB20_2:                               # %if.then
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	args_out_of_range
.LBB20_3:                               # %if.end
	cvttsd2si	-40(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	window_column_x, .Lfunc_end20-window_column_x
	.cfi_endproc

	.globl	syms_of_indent
	.align	16, 0x90
	.type	syms_of_indent,@function
syms_of_indent:                         # @syms_of_indent
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp73:
	.cfi_def_cfa_offset 16
.Ltmp74:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp75:
	.cfi_def_cfa_register %rbp
	jmp	.LBB21_1
.LBB21_1:                               # %do.body
	movabsq	$syms_of_indent.b_fwd, %rdi
	movabsq	$.L.str, %rsi
	movabsq	$globals, %rax
	addq	$3386, %rax             # imm = 0xD3A
	movq	%rax, %rdx
	callq	defvar_bool
# BB#2:                                 # %do.end
	movabsq	$Scurrent_indentation, %rdi
	movb	$1, globals+3386
	callq	defsubr
	movabsq	$Sindent_to, %rdi
	callq	defsubr
	movabsq	$Scurrent_column, %rdi
	callq	defsubr
	movabsq	$Smove_to_column, %rdi
	callq	defsubr
	movabsq	$Svertical_motion, %rdi
	callq	defsubr
	movabsq	$Scompute_motion, %rdi
	callq	defsubr
	popq	%rbp
	retq
.Lfunc_end21:
	.size	syms_of_indent, .Lfunc_end21-syms_of_indent
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI22_0:
	.quad	4746794007244308480     # double 2147483647
.LCPI22_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	check_display_width,@function
check_display_width:                    # @check_display_width
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp76:
	.cfi_def_cfa_offset 16
.Ltmp77:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp78:
	.cfi_def_cfa_register %rbp
	subq	$400, %rsp              # imm = 0x190
	movl	$344, %eax              # imm = 0x158
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	shlq	$2, %rdx
	addq	$2, %rdx
	movl	%eax, %edi
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	leaq	-48(%rbp), %rcx
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	get_char_property_and_overlay
	movq	%rax, -40(%rbp)
	andq	$7, %rax
	movl	%eax, %r8d
	cmpl	$3, %r8d
	jne	.LBB22_103
# BB#1:                                 # %land.lhs.true
	movl	$868, %edi              # imm = 0x364
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx
	subq	$3, %rcx
	cmpq	(%rcx), %rax
	jne	.LBB22_103
# BB#2:                                 # %if.then
	movabsq	$2305843007066210304, %rax # imm = 0x1FFFFFFF80000000
	movq	-40(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -56(%rbp)
	movl	$-1, -68(%rbp)
	cmpq	%rax, -24(%rbp)
	jge	.LBB22_4
# BB#3:                                 # %cond.true
	movq	-24(%rbp), %rax
	addq	$2147483647, %rax       # imm = 0x7FFFFFFF
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB22_5
.LBB22_4:                               # %cond.false
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB22_5
.LBB22_5:                               # %cond.end
	movq	-136(%rbp), %rax        # 8-byte Reload
	movl	$139, %edi
	movq	%rax, -80(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	movl	%ecx, %edx
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rsi
	callq	RANGED_INTEGERP
	testb	$1, %al
	jne	.LBB22_7
# BB#6:                                 # %lor.lhs.false
	movl	$106, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	movl	%ecx, %edx
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rsi
	callq	RANGED_INTEGERP
	testb	$1, %al
	jne	.LBB22_7
	jmp	.LBB22_8
.LBB22_7:                               # %if.then.19
	movq	-64(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -68(%rbp)
	jmp	.LBB22_21
.LBB22_8:                               # %if.else
	movq	-64(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$7, %ecx
	jne	.LBB22_12
# BB#9:                                 # %land.lhs.true.25
	movq	-64(%rbp), %rdi
	callq	XFLOAT_DATA
	xorps	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.LBB22_12
# BB#10:                                # %land.lhs.true.29
	movq	-64(%rbp), %rdi
	callq	XFLOAT_DATA
	movsd	.LCPI22_0, %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB22_12
# BB#11:                                # %if.then.33
	movq	-64(%rbp), %rdi
	callq	XFLOAT_DATA
	movsd	.LCPI22_1, %xmm1        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB22_20
.LBB22_12:                              # %if.else.37
	movl	$7, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-80(%rbp), %rdx
	callq	RANGED_INTEGERP
	testb	$1, %al
	jne	.LBB22_13
	jmp	.LBB22_14
.LBB22_13:                              # %if.then.41
	movq	-64(%rbp), %rax
	sarq	$2, %rax
	subq	-24(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -68(%rbp)
	jmp	.LBB22_19
.LBB22_14:                              # %if.else.45
	movq	-64(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$7, %ecx
	jne	.LBB22_18
# BB#15:                                # %land.lhs.true.50
	cvtsi2sdq	-24(%rbp), %xmm0
	movq	-64(%rbp), %rdi
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
	callq	XFLOAT_DATA
	movsd	-168(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jb	.LBB22_18
# BB#16:                                # %land.lhs.true.55
	movq	-64(%rbp), %rdi
	callq	XFLOAT_DATA
	cvtsi2sdq	-80(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jb	.LBB22_18
# BB#17:                                # %if.then.60
	movq	-64(%rbp), %rdi
	callq	XFLOAT_DATA
	movsd	.LCPI22_1, %xmm1        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movslq	%eax, %rdi
	subq	-24(%rbp), %rdi
	movl	%edi, %eax
	movl	%eax, -68(%rbp)
.LBB22_18:                              # %if.end
	jmp	.LBB22_19
.LBB22_19:                              # %if.end.67
	jmp	.LBB22_20
.LBB22_20:                              # %if.end.68
	jmp	.LBB22_21
.LBB22_21:                              # %if.end.69
	cmpl	$0, -68(%rbp)
	jl	.LBB22_102
# BB#22:                                # %if.then.72
	movq	-48(%rbp), %rdi
	callq	OVERLAYP
	testb	$1, %al
	jne	.LBB22_23
	jmp	.LBB22_28
.LBB22_23:                              # %if.then.74
	movq	-48(%rbp), %rdi
	callq	XOVERLAY
	movq	24(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB22_26
# BB#24:                                # %land.lhs.true.80
	movq	-48(%rbp), %rdi
	callq	XOVERLAY
	movq	24(%rax), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB22_26
# BB#25:                                # %cond.true.86
	movq	-48(%rbp), %rdi
	callq	XOVERLAY
	movq	24(%rax), %rdi
	callq	marker_position
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB22_27
.LBB22_26:                              # %cond.false.90
	callq	emacs_abort
.LBB22_27:                              # %cond.end.91
	movq	-32(%rbp), %rax
	movq	-176(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, (%rax)
	jmp	.LBB22_29
.LBB22_28:                              # %if.else.93
	movl	$344, %edi              # imm = 0x158
	movq	-16(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-32(%rbp), %r8
	movq	%rax, -192(%rbp)        # 8-byte Spill
	movq	%r8, -200(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	leaq	-40(%rbp), %rdx
	leaq	-88(%rbp), %rcx
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	-192(%rbp), %rsi        # 8-byte Reload
	movq	-200(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	callq	get_property_and_range
	movb	%al, -201(%rbp)         # 1-byte Spill
.LBB22_29:                              # %if.end.97
	movl	$106, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	xorl	%edi, %edi
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB22_101
# BB#30:                                # %land.lhs.true.103
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-232(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB22_101
# BB#31:                                # %if.then.107
	movq	current_buffer, %rdi
	movq	-16(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	movq	current_buffer, %rsi
	movq	720(%rsi), %rsi
	cmpq	24(%rsi), %rax
	jl	.LBB22_33
# BB#32:                                # %cond.true.111
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	jmp	.LBB22_34
.LBB22_33:                              # %cond.false.113
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	jmp	.LBB22_34
.LBB22_34:                              # %cond.end.114
	movq	-240(%rbp), %rax        # 8-byte Reload
	movq	current_buffer, %rdi
	movq	-16(%rbp), %rsi
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	buf_charpos_to_bytepos
	movq	-248(%rbp), %rsi        # 8-byte Reload
	addq	%rax, %rsi
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	addq	(%rax), %rsi
	addq	$-1, %rsi
	movq	%rsi, -104(%rbp)
# BB#35:                                # %do.body
	movq	-104(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB22_37
# BB#36:                                # %cond.true.122
	movl	$1, -92(%rbp)
	movq	-104(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -252(%rbp)        # 4-byte Spill
	jmp	.LBB22_44
.LBB22_37:                              # %cond.false.125
	movq	-104(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB22_39
# BB#38:                                # %cond.true.130
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -92(%rbp)
	movq	-104(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-104(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-104(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -256(%rbp)        # 4-byte Spill
	jmp	.LBB22_43
.LBB22_39:                              # %cond.false.144
	movq	-104(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB22_41
# BB#40:                                # %cond.true.149
	movl	$3, -92(%rbp)
	movq	-104(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-104(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-104(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -260(%rbp)        # 4-byte Spill
	jmp	.LBB22_42
.LBB22_41:                              # %cond.false.163
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-92(%rbp), %rdx
	movq	-104(%rbp), %rdi
	callq	string_char
	movl	%eax, -260(%rbp)        # 4-byte Spill
.LBB22_42:                              # %cond.end.165
	movl	-260(%rbp), %eax        # 4-byte Reload
	movl	%eax, -256(%rbp)        # 4-byte Spill
.LBB22_43:                              # %cond.end.167
	movl	-256(%rbp), %eax        # 4-byte Reload
	movl	%eax, -252(%rbp)        # 4-byte Spill
.LBB22_44:                              # %cond.end.169
	movl	-252(%rbp), %eax        # 4-byte Reload
	movl	%eax, -108(%rbp)
	movq	-104(%rbp), %rcx
	movzbl	(%rcx), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	jne	.LBB22_46
# BB#45:                                # %cond.true.174
	movl	$1, %eax
	movl	%eax, -264(%rbp)        # 4-byte Spill
	jmp	.LBB22_53
.LBB22_46:                              # %cond.false.175
	movq	-104(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB22_48
# BB#47:                                # %cond.true.179
	movl	$2, %eax
	movl	%eax, -268(%rbp)        # 4-byte Spill
	jmp	.LBB22_52
.LBB22_48:                              # %cond.false.180
	movq	-104(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB22_50
# BB#49:                                # %cond.true.184
	movl	$3, %eax
	movl	%eax, -272(%rbp)        # 4-byte Spill
	jmp	.LBB22_51
.LBB22_50:                              # %cond.false.185
	movl	$5, %eax
	movl	$4, %ecx
	movq	-104(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$8, %esi
	cmpl	$0, %esi
	setne	%dil
	xorb	$-1, %dil
	testb	$1, %dil
	cmovnel	%ecx, %eax
	movl	%eax, -272(%rbp)        # 4-byte Spill
.LBB22_51:                              # %cond.end.190
	movl	-272(%rbp), %eax        # 4-byte Reload
	movl	%eax, -268(%rbp)        # 4-byte Spill
.LBB22_52:                              # %cond.end.192
	movl	-268(%rbp), %eax        # 4-byte Reload
	movl	%eax, -264(%rbp)        # 4-byte Spill
.LBB22_53:                              # %cond.end.194
	movl	-264(%rbp), %eax        # 4-byte Reload
	cmpl	-92(%rbp), %eax
	je	.LBB22_55
# BB#54:                                # %if.then.198
	movl	-92(%rbp), %eax
	shll	$2, %eax
	movl	%eax, -96(%rbp)
	jmp	.LBB22_99
.LBB22_55:                              # %if.else.199
	callq	buffer_display_table
	cmpq	$0, %rax
	je	.LBB22_80
# BB#56:                                # %land.lhs.true.203
	movb	$1, %al
	testb	$1, %al
	jne	.LBB22_57
	jmp	.LBB22_58
.LBB22_57:                              # %cond.true.204
	movl	-108(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB22_59
	jmp	.LBB22_66
.LBB22_58:                              # %cond.false.208
	movslq	-108(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB22_66
.LBB22_59:                              # %cond.true.213
	callq	buffer_display_table
	xorl	%edi, %edi
	movq	32(%rax), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-280(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB22_61
# BB#60:                                # %cond.true.218
	callq	buffer_display_table
	movq	8(%rax), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	jmp	.LBB22_65
.LBB22_61:                              # %cond.false.220
	callq	buffer_display_table
	movq	32(%rax), %rdi
	callq	SUB_CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB22_62
	jmp	.LBB22_63
.LBB22_62:                              # %cond.true.225
	movslq	-108(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	buffer_display_table
	movq	32(%rax), %rdi
	callq	XSUB_CHAR_TABLE
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	16(%rax,%rdi,8), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	jmp	.LBB22_64
.LBB22_63:                              # %cond.false.230
	callq	buffer_display_table
	movq	32(%rax), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
.LBB22_64:                              # %cond.end.233
	movq	-304(%rbp), %rax        # 8-byte Reload
	movq	%rax, -288(%rbp)        # 8-byte Spill
.LBB22_65:                              # %cond.end.235
	movq	-288(%rbp), %rax        # 8-byte Reload
	movq	%rax, -312(%rbp)        # 8-byte Spill
	jmp	.LBB22_67
.LBB22_66:                              # %cond.false.237
	callq	buffer_display_table
	movl	-108(%rbp), %esi
	movq	%rax, %rdi
	callq	disp_char_vector
	movq	%rax, -312(%rbp)        # 8-byte Spill
.LBB22_67:                              # %cond.end.240
	movq	-312(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB22_68
	jmp	.LBB22_80
.LBB22_68:                              # %if.then.244
	movb	$1, %al
	testb	$1, %al
	jne	.LBB22_69
	jmp	.LBB22_70
.LBB22_69:                              # %cond.true.245
	movl	-108(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB22_71
	jmp	.LBB22_78
.LBB22_70:                              # %cond.false.249
	movslq	-108(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB22_78
.LBB22_71:                              # %cond.true.254
	callq	buffer_display_table
	xorl	%edi, %edi
	movq	32(%rax), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-320(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB22_73
# BB#72:                                # %cond.true.260
	callq	buffer_display_table
	movq	8(%rax), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	jmp	.LBB22_77
.LBB22_73:                              # %cond.false.263
	callq	buffer_display_table
	movq	32(%rax), %rdi
	callq	SUB_CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB22_74
	jmp	.LBB22_75
.LBB22_74:                              # %cond.true.268
	movslq	-108(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	buffer_display_table
	movq	32(%rax), %rdi
	callq	XSUB_CHAR_TABLE
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	16(%rax,%rdi,8), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	jmp	.LBB22_76
.LBB22_75:                              # %cond.false.275
	callq	buffer_display_table
	movq	32(%rax), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
.LBB22_76:                              # %cond.end.278
	movq	-344(%rbp), %rax        # 8-byte Reload
	movq	%rax, -328(%rbp)        # 8-byte Spill
.LBB22_77:                              # %cond.end.280
	movq	-328(%rbp), %rax        # 8-byte Reload
	movq	%rax, -352(%rbp)        # 8-byte Spill
	jmp	.LBB22_79
.LBB22_78:                              # %cond.false.282
	callq	buffer_display_table
	movl	-108(%rbp), %esi
	movq	%rax, %rdi
	callq	disp_char_vector
	movq	%rax, -352(%rbp)        # 8-byte Spill
.LBB22_79:                              # %cond.end.285
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rdi
	callq	ASIZE
	movq	%rax, %rdi
	callq	sanitize_char_width
	movl	%eax, -96(%rbp)
	jmp	.LBB22_98
.LBB22_80:                              # %if.else.289
	movb	$1, %al
	testb	$1, %al
	jne	.LBB22_81
	jmp	.LBB22_82
.LBB22_81:                              # %cond.true.290
	movl	-108(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB22_83
	jmp	.LBB22_96
.LBB22_82:                              # %cond.false.294
	movslq	-108(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB22_96
.LBB22_83:                              # %cond.true.299
	cmpl	$32, -108(%rbp)
	jge	.LBB22_91
# BB#84:                                # %cond.true.302
	cmpl	$9, -108(%rbp)
	jne	.LBB22_86
# BB#85:                                # %cond.true.305
	movq	current_buffer, %rax
	movq	152(%rax), %rax
	sarq	$2, %rax
	movq	%rax, %rdi
	callq	sanitize_tab_width
	movl	%eax, -356(%rbp)        # 4-byte Spill
	jmp	.LBB22_90
.LBB22_86:                              # %cond.false.308
	cmpl	$10, -108(%rbp)
	jne	.LBB22_88
# BB#87:                                # %cond.true.311
	xorl	%eax, %eax
	movl	%eax, -360(%rbp)        # 4-byte Spill
	jmp	.LBB22_89
.LBB22_88:                              # %cond.false.312
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	232(%rax), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$2, %edi
	movl	$4, %ecx
	movq	-368(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	cmovel	%ecx, %edi
	movl	%edi, -360(%rbp)        # 4-byte Spill
.LBB22_89:                              # %cond.end.317
	movl	-360(%rbp), %eax        # 4-byte Reload
	movl	%eax, -356(%rbp)        # 4-byte Spill
.LBB22_90:                              # %cond.end.319
	movl	-356(%rbp), %eax        # 4-byte Reload
	movl	%eax, -372(%rbp)        # 4-byte Spill
	jmp	.LBB22_95
.LBB22_91:                              # %cond.false.321
	cmpl	$127, -108(%rbp)
	jge	.LBB22_93
# BB#92:                                # %cond.true.324
	movl	$1, %eax
	movl	%eax, -376(%rbp)        # 4-byte Spill
	jmp	.LBB22_94
.LBB22_93:                              # %cond.false.325
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	232(%rax), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$2, %edi
	movl	$4, %ecx
	movq	-384(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	cmovel	%ecx, %edi
	movl	%edi, -376(%rbp)        # 4-byte Spill
.LBB22_94:                              # %cond.end.331
	movl	-376(%rbp), %eax        # 4-byte Reload
	movl	%eax, -372(%rbp)        # 4-byte Spill
.LBB22_95:                              # %cond.end.333
	movl	-372(%rbp), %eax        # 4-byte Reload
	movl	%eax, -388(%rbp)        # 4-byte Spill
	jmp	.LBB22_97
.LBB22_96:                              # %cond.false.335
	movq	globals+224, %rdi
	movl	-108(%rbp), %esi
	callq	CHAR_TABLE_REF
	sarq	$2, %rax
	movq	%rax, %rdi
	callq	sanitize_char_width
	movl	%eax, -388(%rbp)        # 4-byte Spill
.LBB22_97:                              # %cond.end.339
	movl	-388(%rbp), %eax        # 4-byte Reload
	movl	%eax, -96(%rbp)
.LBB22_98:                              # %if.end.341
	jmp	.LBB22_99
.LBB22_99:                              # %if.end.342
	jmp	.LBB22_100
.LBB22_100:                             # %do.end
	movl	-96(%rbp), %eax
	imull	-68(%rbp), %eax
	movl	%eax, -68(%rbp)
.LBB22_101:                             # %if.end.344
	movl	-68(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB22_104
.LBB22_102:                             # %if.end.345
	jmp	.LBB22_103
.LBB22_103:                             # %if.end.346
	movl	$-1, -4(%rbp)
.LBB22_104:                             # %return
	movl	-4(%rbp), %eax
	addq	$400, %rsp              # imm = 0x190
	popq	%rbp
	retq
.Lfunc_end22:
	.size	check_display_width, .Lfunc_end22-check_display_width
	.cfi_endproc

	.type	last_known_column_point,@object # @last_known_column_point
	.comm	last_known_column_point,8,8
	.type	last_known_column_modified,@object # @last_known_column_modified
	.local	last_known_column_modified
	.comm	last_known_column_modified,8,8
	.type	last_known_column,@object # @last_known_column
	.local	last_known_column
	.comm	last_known_column,8,8
	.type	val_compute_motion,@object # @val_compute_motion
	.local	val_compute_motion
	.comm	val_compute_motion,48,8
	.type	val_vmotion,@object     # @val_vmotion
	.local	val_vmotion
	.comm	val_vmotion,48,8
	.type	syms_of_indent.b_fwd,@object # @syms_of_indent.b_fwd
	.local	syms_of_indent.b_fwd
	.comm	syms_of_indent.b_fwd,16,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"indent-tabs-mode"
	.size	.L.str, 17

	.type	Scurrent_indentation,@object # @Scurrent_indentation
	.data
	.align	8
Scurrent_indentation:
	.quad	167772160               # 0xa000000
	.quad	Fcurrent_indentation
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.1
	.quad	0
	.quad	0
	.size	Scurrent_indentation, 48

	.type	Scurrent_column,@object # @Scurrent_column
	.align	8
Scurrent_column:
	.quad	167772160               # 0xa000000
	.quad	Fcurrent_column
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.4
	.quad	0
	.quad	0
	.size	Scurrent_column, 48

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"current-indentation"
	.size	.L.str.1, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"indent-to"
	.size	.L.str.2, 10

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"NIndent to column: "
	.size	.L.str.3, 20

	.type	Sindent_to,@object      # @Sindent_to
	.data
	.align	8
Sindent_to:
	.quad	167772160               # 0xa000000
	.quad	Findent_to
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.2
	.quad	.L.str.3
	.quad	0
	.size	Sindent_to, 48

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"current-column"
	.size	.L.str.4, 15

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"move-to-column"
	.size	.L.str.5, 15

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"NMove to column: "
	.size	.L.str.6, 18

	.type	Smove_to_column,@object # @Smove_to_column
	.data
	.align	8
Smove_to_column:
	.quad	167772160               # 0xa000000
	.quad	Fmove_to_column
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.5
	.quad	.L.str.6
	.quad	0
	.size	Smove_to_column, 48

	.type	.L.str.7,@object        # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"vertical-motion"
	.size	.L.str.7, 16

	.type	Svertical_motion,@object # @Svertical_motion
	.data
	.align	8
Svertical_motion:
	.quad	167772160               # 0xa000000
	.quad	Fvertical_motion
	.short	1                       # 0x1
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.7
	.quad	0
	.quad	0
	.size	Svertical_motion, 48

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"compute-motion"
	.size	.L.str.8, 15

	.type	Scompute_motion,@object # @Scompute_motion
	.data
	.align	8
Scompute_motion:
	.quad	167772160               # 0xa000000
	.quad	Fcompute_motion
	.short	7                       # 0x7
	.short	7                       # 0x7
	.zero	4
	.quad	.L.str.8
	.quad	0
	.quad	0
	.size	Scompute_motion, 48


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
