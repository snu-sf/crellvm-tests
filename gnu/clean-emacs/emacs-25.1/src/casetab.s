	.text
	.file	"casetab.bc"
	.globl	Fcase_table_p
	.align	16, 0x90
	.type	Fcase_table_p,@function
Fcase_table_p:                          # @Fcase_table_p
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB0_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB0_14
.LBB0_2:                                # %if.end
	movq	-16(%rbp), %rdi
	callq	XCHAR_TABLE
	movl	$239, %edi
	movq	24(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB0_4
# BB#3:                                 # %if.then.4
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB0_14
.LBB0_4:                                # %if.end.6
	movq	-16(%rbp), %rdi
	callq	XCHAR_TABLE
	movq	552(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	XCHAR_TABLE
	movq	560(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	XCHAR_TABLE
	xorl	%edi, %edi
	movq	568(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB0_6
# BB#5:                                 # %lor.lhs.false
	movq	-24(%rbp), %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB0_6
	jmp	.LBB0_12
.LBB0_6:                                # %land.lhs.true
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB0_8
# BB#7:                                 # %land.lhs.true.19
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB0_11
.LBB0_8:                                # %lor.lhs.false.22
	movq	-32(%rbp), %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB0_9
	jmp	.LBB0_12
.LBB0_9:                                # %land.lhs.true.24
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB0_11
# BB#10:                                # %lor.lhs.false.27
	movq	-40(%rbp), %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB0_11
	jmp	.LBB0_12
.LBB0_11:                               # %cond.true
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB0_13
.LBB0_12:                               # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB0_13:                               # %cond.end
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -8(%rbp)
.LBB0_14:                               # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	Fcase_table_p, .Lfunc_end0-Fcase_table_p
	.cfi_endproc

	.globl	Fcurrent_case_table
	.align	16, 0x90
	.type	Fcurrent_case_table,@function
Fcurrent_case_table:                    # @Fcurrent_case_table
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
	movq	current_buffer, %rax
	movq	184(%rax), %rax
	popq	%rbp
	retq
.Lfunc_end1:
	.size	Fcurrent_case_table, .Lfunc_end1-Fcurrent_case_table
	.cfi_endproc

	.globl	Fstandard_case_table
	.align	16, 0x90
	.type	Fstandard_case_table,@function
Fstandard_case_table:                   # @Fstandard_case_table
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
	movq	Vascii_downcase_table, %rax
	popq	%rbp
	retq
.Lfunc_end2:
	.size	Fstandard_case_table, .Lfunc_end2-Fstandard_case_table
	.cfi_endproc

	.globl	Fset_case_table
	.align	16, 0x90
	.type	Fset_case_table,@function
Fset_case_table:                        # @Fset_case_table
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
	xorl	%esi, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	set_case_table
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	Fset_case_table, .Lfunc_end3-Fset_case_table
	.cfi_endproc

	.align	16, 0x90
	.type	set_case_table,@function
set_case_table:                         # @set_case_table
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
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	andb	$1, %al
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rdi
	callq	check_case_table
	movq	-8(%rbp), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	XCHAR_TABLE
	movq	552(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	XCHAR_TABLE
	movq	560(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	XCHAR_TABLE
	xorl	%edi, %edi
	movq	568(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movl	$239, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fmake_char_table
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)
	callq	builtin_lisp_symbol
	movabsq	$set_identity, %rdi
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	map_char_table
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$shuffle, %rdi
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	map_char_table
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rdx
	callq	set_char_table_extras
.LBB4_2:                                # %if.end
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB4_4
# BB#3:                                 # %if.then.16
	movl	$239, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fmake_char_table
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rdx
	callq	set_char_table_extras
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$set_canon, %rdi
	movq	-8(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	%rax, %rsi
	callq	map_char_table
.LBB4_4:                                # %if.end.21
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB4_6
# BB#5:                                 # %if.then.24
	movl	$239, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fmake_char_table
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	callq	builtin_lisp_symbol
	movabsq	$set_identity, %rdi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	%rax, %rsi
	callq	map_char_table
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$shuffle, %rdi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	%rax, %rsi
	callq	map_char_table
	movl	$2, %r8d
	movl	%r8d, %esi
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rdx
	callq	set_char_table_extras
.LBB4_6:                                # %if.end.30
	movl	$2, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rdx
	callq	set_char_table_extras
	testb	$1, -9(%rbp)
	je	.LBB4_8
# BB#7:                                 # %if.then.31
	movq	-8(%rbp), %rax
	movq	%rax, Vascii_downcase_table
	movq	-24(%rbp), %rax
	movq	%rax, Vascii_upcase_table
	movq	-32(%rbp), %rax
	movq	%rax, Vascii_canon_table
	movq	-40(%rbp), %rax
	movq	%rax, Vascii_eqv_table
	jmp	.LBB4_9
.LBB4_8:                                # %if.else
	movq	current_buffer, %rdi
	movq	-8(%rbp), %rsi
	callq	bset_downcase_table
	movq	current_buffer, %rdi
	movq	-24(%rbp), %rsi
	callq	bset_upcase_table
	movq	current_buffer, %rdi
	movq	-32(%rbp), %rsi
	callq	bset_case_canon_table
	movq	current_buffer, %rdi
	movq	-40(%rbp), %rsi
	callq	bset_case_eqv_table
.LBB4_9:                                # %if.end.32
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	set_case_table, .Lfunc_end4-set_case_table
	.cfi_endproc

	.globl	Fset_standard_case_table
	.align	16, 0x90
	.type	Fset_standard_case_table,@function
Fset_standard_case_table:               # @Fset_standard_case_table
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
	movl	$1, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	set_case_table
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	Fset_standard_case_table, .Lfunc_end5-Fset_standard_case_table
	.cfi_endproc

	.globl	init_casetab_once
	.align	16, 0x90
	.type	init_casetab_once,@function
init_casetab_once:                      # @init_casetab_once
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
	subq	$144, %rsp
	movl	$239, %edi
	callq	builtin_lisp_symbol
	movl	$258, %edi              # imm = 0x102
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$14, %edi
	movl	%edi, %edx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fput
	movl	$239, %edi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fmake_char_table
	movl	$239, %edi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, Vascii_downcase_table
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	set_char_table_purpose
	movl	$0, -4(%rbp)
.LBB6_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$128, -4(%rbp)
	jge	.LBB6_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	cmpl	$65, -4(%rbp)
	jl	.LBB6_5
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB6_1 Depth=1
	cmpl	$90, -4(%rbp)
	jg	.LBB6_5
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$32, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jmp	.LBB6_6
.LBB6_5:                                # %cond.false
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-4(%rbp), %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB6_6:                                # %cond.end
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-84(%rbp), %eax         # 4-byte Reload
	movl	%eax, -36(%rbp)
	movq	-16(%rbp), %rdi
	movl	-4(%rbp), %esi
	movslq	-36(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, %rdx
	callq	CHAR_TABLE_SET
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB6_1
.LBB6_8:                                # %for.end
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	Fcopy_sequence
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	set_char_table_extras
	movl	$239, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fmake_char_table
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rdx
	callq	set_char_table_extras
	movl	$0, -4(%rbp)
.LBB6_9:                                # %for.cond.14
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$128, -4(%rbp)
	jge	.LBB6_16
# BB#10:                                # %for.body.17
                                        #   in Loop: Header=BB6_9 Depth=1
	cmpl	$97, -4(%rbp)
	jl	.LBB6_13
# BB#11:                                # %land.lhs.true.21
                                        #   in Loop: Header=BB6_9 Depth=1
	cmpl	$122, -4(%rbp)
	jg	.LBB6_13
# BB#12:                                # %cond.true.24
                                        #   in Loop: Header=BB6_9 Depth=1
	movl	-4(%rbp), %eax
	addl	$-32, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB6_14
.LBB6_13:                               # %cond.false.26
                                        #   in Loop: Header=BB6_9 Depth=1
	movl	-4(%rbp), %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB6_14:                               # %cond.end.27
                                        #   in Loop: Header=BB6_9 Depth=1
	movl	-108(%rbp), %eax        # 4-byte Reload
	movl	%eax, -40(%rbp)
	movq	-24(%rbp), %rdi
	movl	-4(%rbp), %esi
	movslq	-40(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, %rdx
	callq	CHAR_TABLE_SET
# BB#15:                                # %for.inc.32
                                        #   in Loop: Header=BB6_9 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB6_9
.LBB6_16:                               # %for.end.34
	movl	$239, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fmake_char_table
	movq	%rax, -32(%rbp)
	movl	$0, -4(%rbp)
.LBB6_17:                               # %for.cond.38
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$128, -4(%rbp)
	jge	.LBB6_28
# BB#18:                                # %for.body.41
                                        #   in Loop: Header=BB6_17 Depth=1
	cmpl	$65, -4(%rbp)
	jl	.LBB6_21
# BB#19:                                # %land.lhs.true.45
                                        #   in Loop: Header=BB6_17 Depth=1
	cmpl	$90, -4(%rbp)
	jg	.LBB6_21
# BB#20:                                # %cond.true.48
                                        #   in Loop: Header=BB6_17 Depth=1
	movl	-4(%rbp), %eax
	addl	$32, %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jmp	.LBB6_26
.LBB6_21:                               # %cond.false.50
                                        #   in Loop: Header=BB6_17 Depth=1
	cmpl	$97, -4(%rbp)
	jl	.LBB6_24
# BB#22:                                # %land.lhs.true.53
                                        #   in Loop: Header=BB6_17 Depth=1
	cmpl	$122, -4(%rbp)
	jg	.LBB6_24
# BB#23:                                # %cond.true.56
                                        #   in Loop: Header=BB6_17 Depth=1
	movl	-4(%rbp), %eax
	addl	$-32, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	jmp	.LBB6_25
.LBB6_24:                               # %cond.false.58
                                        #   in Loop: Header=BB6_17 Depth=1
	movl	-4(%rbp), %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
.LBB6_25:                               # %cond.end.59
                                        #   in Loop: Header=BB6_17 Depth=1
	movl	-128(%rbp), %eax        # 4-byte Reload
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB6_26:                               # %cond.end.61
                                        #   in Loop: Header=BB6_17 Depth=1
	movl	-124(%rbp), %eax        # 4-byte Reload
	movl	%eax, -44(%rbp)
	movq	-32(%rbp), %rdi
	movl	-4(%rbp), %esi
	movslq	-44(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, %rdx
	callq	CHAR_TABLE_SET
# BB#27:                                # %for.inc.66
                                        #   in Loop: Header=BB6_17 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB6_17
.LBB6_28:                               # %for.end.68
	movl	$2, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rdx
	callq	set_char_table_extras
	movl	$1, %esi
	movq	-16(%rbp), %rdi
	callq	set_case_table
	movq	%rax, -136(%rbp)        # 8-byte Spill
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	init_casetab_once, .Lfunc_end6-init_casetab_once
	.cfi_endproc

	.globl	syms_of_casetab
	.align	16, 0x90
	.type	syms_of_casetab,@function
syms_of_casetab:                        # @syms_of_casetab
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
	movabsq	$Vascii_canon_table, %rdi
	callq	staticpro
	movabsq	$Vascii_downcase_table, %rdi
	callq	staticpro
	movabsq	$Vascii_eqv_table, %rdi
	callq	staticpro
	movabsq	$Vascii_upcase_table, %rdi
	callq	staticpro
	movabsq	$Scase_table_p, %rdi
	callq	defsubr
	movabsq	$Scurrent_case_table, %rdi
	callq	defsubr
	movabsq	$Sstandard_case_table, %rdi
	callq	defsubr
	movabsq	$Sset_case_table, %rdi
	callq	defsubr
	movabsq	$Sset_standard_case_table, %rdi
	callq	defsubr
	popq	%rbp
	retq
.Lfunc_end7:
	.size	syms_of_casetab, .Lfunc_end7-syms_of_casetab
	.cfi_endproc

	.align	16, 0x90
	.type	check_case_table,@function
check_case_table:                       # @check_case_table
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
	movq	-8(%rbp), %rdi
	callq	Fcase_table_p
	xorl	%edi, %edi
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB8_2
# BB#1:                                 # %cond.true
	jmp	.LBB8_3
.LBB8_2:                                # %cond.false
	movl	$240, %edi
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB8_3:                                # %cond.end
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	check_case_table, .Lfunc_end8-check_case_table
	.cfi_endproc

	.align	16, 0x90
	.type	set_identity,@function
set_identity:                           # @set_identity
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
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB9_1
	jmp	.LBB9_9
.LBB9_1:                                # %if.then
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB9_3
# BB#2:                                 # %if.then.2
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -28(%rbp)
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -32(%rbp)
	jmp	.LBB9_4
.LBB9_3:                                # %if.else
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -32(%rbp)
	movl	%ecx, -28(%rbp)
.LBB9_4:                                # %if.end
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
.LBB9_5:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB9_8
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB9_5 Depth=1
	movq	-8(%rbp), %rdi
	movl	-28(%rbp), %esi
	movslq	-28(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdx
	callq	CHAR_TABLE_SET
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB9_5 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB9_5
.LBB9_8:                                # %for.end
	jmp	.LBB9_9
.LBB9_9:                                # %if.end.13
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	set_identity, .Lfunc_end9-set_identity
	.cfi_endproc

	.align	16, 0x90
	.type	shuffle,@function
shuffle:                                # @shuffle
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB10_1
	jmp	.LBB10_9
.LBB10_1:                               # %if.then
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB10_3
# BB#2:                                 # %if.then.2
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -28(%rbp)
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -32(%rbp)
	jmp	.LBB10_4
.LBB10_3:                               # %if.else
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -32(%rbp)
	movl	%ecx, -28(%rbp)
.LBB10_4:                               # %if.end
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
.LBB10_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB10_8
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB10_5 Depth=1
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	Faref
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movslq	-28(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdx
	callq	Faset
	movq	-8(%rbp), %rdi
	movslq	-28(%rbp), %rdx
	shlq	$2, %rdx
	addq	$2, %rdx
	movq	-40(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	%rdx, %rsi
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	Faset
	movq	%rax, -64(%rbp)         # 8-byte Spill
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB10_5 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB10_5
.LBB10_8:                               # %for.end
	jmp	.LBB10_9
.LBB10_9:                               # %if.end.19
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	shuffle, .Lfunc_end10-shuffle
	.cfi_endproc

	.align	16, 0x90
	.type	set_canon,@function
set_canon:                              # @set_canon
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	XCHAR_TABLE
	movq	552(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	XCHAR_TABLE
	movq	560(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB11_1
	jmp	.LBB11_2
.LBB11_1:                               # %if.then
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rdx, %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	Faref
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Faref
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	Fset_char_table_range
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB11_2:                               # %if.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	set_canon, .Lfunc_end11-set_canon
	.cfi_endproc

	.type	Vascii_downcase_table,@object # @Vascii_downcase_table
	.comm	Vascii_downcase_table,8,8
	.type	Vascii_canon_table,@object # @Vascii_canon_table
	.comm	Vascii_canon_table,8,8
	.type	Vascii_eqv_table,@object # @Vascii_eqv_table
	.local	Vascii_eqv_table
	.comm	Vascii_eqv_table,8,8
	.type	Vascii_upcase_table,@object # @Vascii_upcase_table
	.local	Vascii_upcase_table
	.comm	Vascii_upcase_table,8,8
	.type	Scurrent_case_table,@object # @Scurrent_case_table
	.data
	.align	8
Scurrent_case_table:
	.quad	167772160               # 0xa000000
	.quad	Fcurrent_case_table
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.1
	.quad	0
	.quad	0
	.size	Scurrent_case_table, 48

	.type	Sstandard_case_table,@object # @Sstandard_case_table
	.align	8
Sstandard_case_table:
	.quad	167772160               # 0xa000000
	.quad	Fstandard_case_table
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.2
	.quad	0
	.quad	0
	.size	Sstandard_case_table, 48

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"case-table-p"
	.size	.L.str, 13

	.type	Scase_table_p,@object   # @Scase_table_p
	.data
	.align	8
Scase_table_p:
	.quad	167772160               # 0xa000000
	.quad	Fcase_table_p
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.size	Scase_table_p, 48

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"current-case-table"
	.size	.L.str.1, 19

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"standard-case-table"
	.size	.L.str.2, 20

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"set-case-table"
	.size	.L.str.3, 15

	.type	Sset_case_table,@object # @Sset_case_table
	.data
	.align	8
Sset_case_table:
	.quad	167772160               # 0xa000000
	.quad	Fset_case_table
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.3
	.quad	0
	.quad	0
	.size	Sset_case_table, 48

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"set-standard-case-table"
	.size	.L.str.4, 24

	.type	Sset_standard_case_table,@object # @Sset_standard_case_table
	.data
	.align	8
Sset_standard_case_table:
	.quad	167772160               # 0xa000000
	.quad	Fset_standard_case_table
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.4
	.quad	0
	.quad	0
	.size	Sset_standard_case_table, 48


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
