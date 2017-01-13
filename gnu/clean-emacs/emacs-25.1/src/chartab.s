	.text
	.file	"chartab.bc"
	.globl	Fmake_char_table
	.align	16, 0x90
	.type	Fmake_char_table,@function
Fmake_char_table:                       # @Fmake_char_table
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	andq	$7, %rsi
	movl	%esi, %eax
	cmpl	$0, %eax
	jne	.LBB0_2
# BB#1:                                 # %cond.true
	jmp	.LBB0_3
.LBB0_2:                                # %cond.false
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB0_3:                                # %cond.end
	movl	$258, %edi              # imm = 0x102
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB0_5
# BB#4:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB0_8
.LBB0_5:                                # %if.else
	movq	-32(%rbp), %rdi
	callq	CHECK_NATNUM
	movq	-32(%rbp), %rdi
	sarq	$2, %rdi
	cmpq	$10, %rdi
	jle	.LBB0_7
# BB#6:                                 # %if.then.9
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	args_out_of_range
.LBB0_7:                                # %if.end
	movq	-32(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -36(%rbp)
.LBB0_8:                                # %if.end.13
	movl	-36(%rbp), %eax
	addl	$68, %eax
	movl	%eax, -40(%rbp)
	movslq	-40(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	-16(%rbp), %rsi
	movq	%rcx, %rdi
	callq	Fmake_vector
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	XVECTOR
	xorl	%edi, %edi
	movabsq	$4611686018679046144, %rcx # imm = 0x400000000F000000
	orq	(%rax), %rcx
	movq	%rcx, (%rax)
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	set_char_table_parent
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	set_char_table_purpose
	movq	-24(%rbp), %rdi
	callq	XCHAR_TABLE
	movl	$5, %esi
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	Fmake_char_table, .Lfunc_end0-Fmake_char_table
	.cfi_endproc

	.align	16, 0x90
	.type	set_char_table_parent,@function
set_char_table_parent:                  # @set_char_table_parent
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	XCHAR_TABLE
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	%rsi, 16(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	set_char_table_parent, .Lfunc_end1-set_char_table_parent
	.cfi_endproc

	.globl	copy_char_table
	.align	16, 0x90
	.type	copy_char_table,@function
copy_char_table:                        # @copy_char_table
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	XCHAR_TABLE
	xorl	%edi, %edi
	movq	(%rax), %rax
	andq	$4095, %rax             # imm = 0xFFF
	movl	%eax, %ecx
	movl	%ecx, -20(%rbp)
	movslq	-20(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fmake_vector
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	XVECTOR
	movabsq	$4611686018679046144, %rsi # imm = 0x400000000F000000
	orq	(%rax), %rsi
	movq	%rsi, (%rax)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	XCHAR_TABLE
	movq	8(%rax), %rsi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	callq	set_char_table_defalt
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	XCHAR_TABLE
	movq	16(%rax), %rsi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	set_char_table_parent
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	XCHAR_TABLE
	movq	24(%rax), %rsi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	set_char_table_purpose
	movl	$0, -24(%rbp)
.LBB2_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	cmpl	chartab_size, %eax
	jge	.LBB2_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-16(%rbp), %rdi
	movslq	-24(%rbp), %rsi
	movslq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	XCHAR_TABLE
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	40(%rax,%rcx,8), %rdi
	callq	SUB_CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB2_3
	jmp	.LBB2_4
.LBB2_3:                                # %cond.true
                                        #   in Loop: Header=BB2_1 Depth=1
	movslq	-24(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	XCHAR_TABLE
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	40(%rax,%rdi,8), %rdi
	callq	copy_sub_char_table
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB2_5
.LBB2_4:                                # %cond.false
                                        #   in Loop: Header=BB2_1 Depth=1
	movslq	-24(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	XCHAR_TABLE
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	40(%rax,%rdi,8), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB2_5:                                # %cond.end
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	set_char_table_contents
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB2_1
.LBB2_7:                                # %for.end
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	char_table_ascii
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	set_char_table_ascii
	movl	-20(%rbp), %ecx
	subl	$68, %ecx
	movl	%ecx, -20(%rbp)
	movl	$0, -24(%rbp)
.LBB2_8:                                # %for.cond.26
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB2_11
# BB#9:                                 # %for.body.29
                                        #   in Loop: Header=BB2_8 Depth=1
	movq	-16(%rbp), %rdi
	movslq	-24(%rbp), %rsi
	movslq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	callq	XCHAR_TABLE
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movq	552(%rax,%rcx,8), %rdx
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	-136(%rbp), %rsi        # 8-byte Reload
	callq	set_char_table_extras
# BB#10:                                # %for.inc.34
                                        #   in Loop: Header=BB2_8 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB2_8
.LBB2_11:                               # %for.end.36
	movq	-16(%rbp), %rdi
	callq	XCHAR_TABLE
	movl	$5, %esi
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	copy_char_table, .Lfunc_end2-copy_char_table
	.cfi_endproc

	.align	16, 0x90
	.type	copy_sub_char_table,@function
copy_sub_char_table:                    # @copy_sub_char_table
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
	movq	-8(%rbp), %rdi
	callq	XSUB_CHAR_TABLE
	movl	8(%rax), %ecx
	movl	%ecx, -12(%rbp)
	movq	-8(%rbp), %rdi
	callq	XSUB_CHAR_TABLE
	xorl	%edi, %edi
	movl	12(%rax), %ecx
	movl	%ecx, -16(%rbp)
	movl	-12(%rbp), %ecx
	movl	-16(%rbp), %esi
	movl	%esi, -44(%rbp)         # 4-byte Spill
	movl	%ecx, -48(%rbp)         # 4-byte Spill
	callq	builtin_lisp_symbol
	movl	-48(%rbp), %edi         # 4-byte Reload
	movl	-44(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	make_sub_char_table
	movq	%rax, -24(%rbp)
	movl	$0, -28(%rbp)
.LBB3_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movslq	-12(%rbp), %rcx
	cmpl	chartab_size(,%rcx,4), %eax
	jge	.LBB3_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	movslq	-28(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	XSUB_CHAR_TABLE
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	16(%rax,%rdi,8), %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	movslq	-28(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	SUB_CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB3_3
	jmp	.LBB3_4
.LBB3_3:                                # %cond.true
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-40(%rbp), %rdi
	callq	copy_sub_char_table
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB3_5
.LBB3_4:                                # %cond.false
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB3_5:                                # %cond.end
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	set_sub_char_table_contents
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB3_1
.LBB3_7:                                # %for.end
	movq	-24(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	copy_sub_char_table, .Lfunc_end3-copy_sub_char_table
	.cfi_endproc

	.align	16, 0x90
	.type	set_char_table_ascii,@function
set_char_table_ascii:                   # @set_char_table_ascii
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	XCHAR_TABLE
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	%rsi, 32(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	set_char_table_ascii, .Lfunc_end4-set_char_table_ascii
	.cfi_endproc

	.align	16, 0x90
	.type	char_table_ascii,@function
char_table_ascii:                       # @char_table_ascii
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	XCHAR_TABLE
	movq	40(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	SUB_CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB5_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB5_12
.LBB5_2:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	XSUB_CHAR_TABLE
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	SUB_CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB5_4
# BB#3:                                 # %if.then.6
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB5_12
.LBB5_4:                                # %if.end.7
	movq	-24(%rbp), %rdi
	callq	XSUB_CHAR_TABLE
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	XCHAR_TABLE
	movl	$254, %edi
	movq	24(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB5_11
# BB#5:                                 # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	XCHAR_TABLE
	movq	%rax, %rdi
	callq	CHAR_TABLE_EXTRA_SLOTS
	cmpl	$5, %eax
	jne	.LBB5_11
# BB#6:                                 # %land.lhs.true.16
	movq	-32(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB5_7
	jmp	.LBB5_11
.LBB5_7:                                # %land.lhs.true.18
	movq	-32(%rbp), %rdi
	callq	SCHARS
	cmpq	$0, %rax
	jle	.LBB5_11
# BB#8:                                 # %land.lhs.true.21
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	callq	SREF
	movzbl	%al, %ecx
	cmpl	$1, %ecx
	je	.LBB5_10
# BB#9:                                 # %lor.lhs.false
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	callq	SREF
	movzbl	%al, %ecx
	cmpl	$2, %ecx
	jne	.LBB5_11
.LBB5_10:                               # %if.then.29
	xorl	%esi, %esi
	movq	-24(%rbp), %rdi
	callq	uniprop_table_uncompress
	movq	%rax, -32(%rbp)
.LBB5_11:                               # %if.end.31
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB5_12:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	char_table_ascii, .Lfunc_end5-char_table_ascii
	.cfi_endproc

	.globl	char_table_ref
	.align	16, 0x90
	.type	char_table_ref,@function
char_table_ref:                         # @char_table_ref
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	callq	XCHAR_TABLE
	movb	$1, %cl
	movq	%rax, -24(%rbp)
	testb	$1, %cl
	jne	.LBB6_1
	jmp	.LBB6_2
.LBB6_1:                                # %cond.true
	movl	-12(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB6_3
	jmp	.LBB6_6
.LBB6_2:                                # %cond.false
	movslq	-12(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB6_6
.LBB6_3:                                # %if.then
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	SUB_CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB6_4
	jmp	.LBB6_5
.LBB6_4:                                # %if.then.5
	movslq	-12(%rbp), %rax
	movq	-32(%rbp), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	XSUB_CHAR_TABLE
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	16(%rax,%rdi,8), %rax
	movq	%rax, -32(%rbp)
.LBB6_5:                                # %if.end
	jmp	.LBB6_11
.LBB6_6:                                # %if.else
	movl	-12(%rbp), %eax
	subl	$0, %eax
	movl	chartab_bits, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rsi
	movq	40(%rsi,%rdx,8), %rdx
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	SUB_CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB6_7
	jmp	.LBB6_10
.LBB6_7:                                # %if.then.11
	movq	-32(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%esi, -52(%rbp)         # 4-byte Spill
	callq	XCHAR_TABLE
	movl	$254, %edi
	movq	24(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%esi, %esi
	movb	%sil, %cl
	movq	-64(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	movb	%cl, -65(%rbp)          # 1-byte Spill
	jne	.LBB6_9
# BB#8:                                 # %land.rhs
	movq	-8(%rbp), %rdi
	callq	XCHAR_TABLE
	movq	%rax, %rdi
	callq	CHAR_TABLE_EXTRA_SLOTS
	cmpl	$5, %eax
	sete	%cl
	movb	%cl, -65(%rbp)          # 1-byte Spill
.LBB6_9:                                # %land.end
	movb	-65(%rbp), %al          # 1-byte Reload
	movzbl	%al, %ecx
	andl	$1, %ecx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	-52(%rbp), %esi         # 4-byte Reload
	movl	%ecx, %edx
	callq	sub_char_table_ref
	movq	%rax, -32(%rbp)
.LBB6_10:                               # %if.end.21
	jmp	.LBB6_11
.LBB6_11:                               # %if.end.22
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB6_16
# BB#12:                                # %if.then.26
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB6_15
# BB#13:                                # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB6_14
	jmp	.LBB6_15
.LBB6_14:                               # %if.then.32
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdi
	movl	-12(%rbp), %esi
	callq	char_table_ref
	movq	%rax, -32(%rbp)
.LBB6_15:                               # %if.end.35
	jmp	.LBB6_16
.LBB6_16:                               # %if.end.36
	movq	-32(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	char_table_ref, .Lfunc_end6-char_table_ref
	.cfi_endproc

	.align	16, 0x90
	.type	sub_char_table_ref,@function
sub_char_table_ref:                     # @sub_char_table_ref
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
	subq	$48, %rsp
	movb	%dl, %al
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	andb	$1, %al
	movb	%al, -13(%rbp)
	movq	-8(%rbp), %rdi
	callq	XSUB_CHAR_TABLE
	movq	%rax, -24(%rbp)
	movl	-12(%rbp), %edx
	movq	-24(%rbp), %rax
	subl	12(%rax), %edx
	movq	-24(%rbp), %rax
	movslq	8(%rax), %rax
	movl	chartab_bits(,%rax,4), %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %edx
	movl	%edx, -36(%rbp)
	movslq	-36(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	16(%rdi,%rax,8), %rax
	movq	%rax, -32(%rbp)
	testb	$1, -13(%rbp)
	je	.LBB7_6
# BB#1:                                 # %land.lhs.true
	movq	-32(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB7_2
	jmp	.LBB7_6
.LBB7_2:                                # %land.lhs.true.4
	movq	-32(%rbp), %rdi
	callq	SCHARS
	cmpq	$0, %rax
	jle	.LBB7_6
# BB#3:                                 # %land.lhs.true.6
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	callq	SREF
	movzbl	%al, %ecx
	cmpl	$1, %ecx
	je	.LBB7_5
# BB#4:                                 # %lor.lhs.false
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	callq	SREF
	movzbl	%al, %ecx
	cmpl	$2, %ecx
	jne	.LBB7_6
.LBB7_5:                                # %if.then
	movq	-8(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	uniprop_table_uncompress
	movq	%rax, -32(%rbp)
.LBB7_6:                                # %if.end
	movq	-32(%rbp), %rdi
	callq	SUB_CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB7_7
	jmp	.LBB7_8
.LBB7_7:                                # %if.then.16
	movq	-32(%rbp), %rdi
	movl	-12(%rbp), %esi
	movb	-13(%rbp), %al
	andb	$1, %al
	movzbl	%al, %edx
	callq	sub_char_table_ref
	movq	%rax, -32(%rbp)
.LBB7_8:                                # %if.end.19
	movq	-32(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	sub_char_table_ref, .Lfunc_end7-sub_char_table_ref
	.cfi_endproc

	.globl	char_table_ref_and_range
	.align	16, 0x90
	.type	char_table_ref_and_range,@function
char_table_ref_and_range:               # @char_table_ref_and_range
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	XCHAR_TABLE
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %esi
	subl	$0, %esi
	movl	chartab_bits, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %esi
	movl	%esi, -44(%rbp)
	movq	-8(%rbp), %rdi
	callq	XCHAR_TABLE
	movl	$254, %edi
	movq	24(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%esi, %esi
	movb	%sil, %cl
	movq	-88(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	movb	%cl, -89(%rbp)          # 1-byte Spill
	jne	.LBB8_2
# BB#1:                                 # %land.rhs
	movq	-8(%rbp), %rdi
	callq	XCHAR_TABLE
	movq	%rax, %rdi
	callq	CHAR_TABLE_EXTRA_SLOTS
	cmpl	$5, %eax
	sete	%cl
	movb	%cl, -89(%rbp)          # 1-byte Spill
.LBB8_2:                                # %land.end
	movb	-89(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movb	%al, -57(%rbp)
	movslq	-44(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	40(%rdx,%rcx,8), %rcx
	movq	%rcx, -56(%rbp)
	movq	-24(%rbp), %rcx
	cmpl	$0, (%rcx)
	jge	.LBB8_4
# BB#3:                                 # %if.then
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
.LBB8_4:                                # %if.end
	movq	-32(%rbp), %rax
	cmpl	$0, (%rax)
	jge	.LBB8_6
# BB#5:                                 # %if.then.8
	movq	-32(%rbp), %rax
	movl	$4194303, (%rax)        # imm = 0x3FFFFF
.LBB8_6:                                # %if.end.9
	testb	$1, -57(%rbp)
	je	.LBB8_12
# BB#7:                                 # %land.lhs.true
	movq	-56(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB8_8
	jmp	.LBB8_12
.LBB8_8:                                # %land.lhs.true.11
	movq	-56(%rbp), %rdi
	callq	SCHARS
	cmpq	$0, %rax
	jle	.LBB8_12
# BB#9:                                 # %land.lhs.true.14
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-56(%rbp), %rdi
	callq	SREF
	movzbl	%al, %ecx
	cmpl	$1, %ecx
	je	.LBB8_11
# BB#10:                                # %lor.lhs.false
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-56(%rbp), %rdi
	callq	SREF
	movzbl	%al, %ecx
	cmpl	$2, %ecx
	jne	.LBB8_12
.LBB8_11:                               # %if.then.22
	movq	-8(%rbp), %rdi
	movl	-44(%rbp), %esi
	callq	uniprop_table_uncompress
	movq	%rax, -56(%rbp)
.LBB8_12:                               # %if.end.24
	movq	-56(%rbp), %rdi
	callq	SUB_CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB8_13
	jmp	.LBB8_14
.LBB8_13:                               # %if.then.26
	movq	-56(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	8(%rax), %r8
	movb	-57(%rbp), %r9b
	andb	$1, %r9b
	movzbl	%r9b, %r9d
	callq	sub_char_table_ref_and_range
	movq	%rax, -56(%rbp)
	jmp	.LBB8_17
.LBB8_14:                               # %if.else
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB8_16
# BB#15:                                # %if.then.32
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
.LBB8_16:                               # %if.end.34
	jmp	.LBB8_17
.LBB8_17:                               # %if.end.35
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
.LBB8_18:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	movl	-48(%rbp), %edx
	imull	chartab_chars, %edx
	cmpl	%edx, %ecx
	jge	.LBB8_33
# BB#19:                                # %while.body
                                        #   in Loop: Header=BB8_18 Depth=1
	movl	-48(%rbp), %eax
	imull	chartab_chars, %eax
	subl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-48(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -48(%rbp)
	movslq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	40(%rdx,%rcx,8), %rcx
	movq	%rcx, -72(%rbp)
	testb	$1, -57(%rbp)
	je	.LBB8_25
# BB#20:                                # %land.lhs.true.45
                                        #   in Loop: Header=BB8_18 Depth=1
	movq	-72(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB8_21
	jmp	.LBB8_25
.LBB8_21:                               # %land.lhs.true.48
                                        #   in Loop: Header=BB8_18 Depth=1
	movq	-72(%rbp), %rdi
	callq	SCHARS
	cmpq	$0, %rax
	jle	.LBB8_25
# BB#22:                                # %land.lhs.true.52
                                        #   in Loop: Header=BB8_18 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-72(%rbp), %rdi
	callq	SREF
	movzbl	%al, %ecx
	cmpl	$1, %ecx
	je	.LBB8_24
# BB#23:                                # %lor.lhs.false.57
                                        #   in Loop: Header=BB8_18 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-72(%rbp), %rdi
	callq	SREF
	movzbl	%al, %ecx
	cmpl	$2, %ecx
	jne	.LBB8_25
.LBB8_24:                               # %if.then.62
                                        #   in Loop: Header=BB8_18 Depth=1
	movq	-8(%rbp), %rdi
	movl	-48(%rbp), %esi
	callq	uniprop_table_uncompress
	movq	%rax, -72(%rbp)
.LBB8_25:                               # %if.end.64
                                        #   in Loop: Header=BB8_18 Depth=1
	movq	-72(%rbp), %rdi
	callq	SUB_CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB8_26
	jmp	.LBB8_27
.LBB8_26:                               # %if.then.66
                                        #   in Loop: Header=BB8_18 Depth=1
	movq	-72(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	8(%rax), %r8
	movb	-57(%rbp), %r9b
	andb	$1, %r9b
	movzbl	%r9b, %r9d
	callq	sub_char_table_ref_and_range
	movq	%rax, -72(%rbp)
	jmp	.LBB8_30
.LBB8_27:                               # %if.else.70
                                        #   in Loop: Header=BB8_18 Depth=1
	xorl	%edi, %edi
	movq	-72(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB8_29
# BB#28:                                # %if.then.74
                                        #   in Loop: Header=BB8_18 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
.LBB8_29:                               # %if.end.76
                                        #   in Loop: Header=BB8_18 Depth=1
	jmp	.LBB8_30
.LBB8_30:                               # %if.end.77
                                        #   in Loop: Header=BB8_18 Depth=1
	movq	-72(%rbp), %rax
	cmpq	-56(%rbp), %rax
	je	.LBB8_32
# BB#31:                                # %if.then.80
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	jmp	.LBB8_33
.LBB8_32:                               # %if.end.81
                                        #   in Loop: Header=BB8_18 Depth=1
	jmp	.LBB8_18
.LBB8_33:                               # %while.end
	jmp	.LBB8_34
.LBB8_34:                               # %while.cond.82
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	movl	-44(%rbp), %edx
	addl	$1, %edx
	imull	chartab_chars, %edx
	cmpl	%edx, %ecx
	jl	.LBB8_49
# BB#35:                                # %while.body.87
                                        #   in Loop: Header=BB8_34 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	imull	chartab_chars, %eax
	movl	%eax, -12(%rbp)
	movslq	-44(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	40(%rdx,%rcx,8), %rcx
	movq	%rcx, -80(%rbp)
	testb	$1, -57(%rbp)
	je	.LBB8_41
# BB#36:                                # %land.lhs.true.95
                                        #   in Loop: Header=BB8_34 Depth=1
	movq	-80(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB8_37
	jmp	.LBB8_41
.LBB8_37:                               # %land.lhs.true.98
                                        #   in Loop: Header=BB8_34 Depth=1
	movq	-80(%rbp), %rdi
	callq	SCHARS
	cmpq	$0, %rax
	jle	.LBB8_41
# BB#38:                                # %land.lhs.true.102
                                        #   in Loop: Header=BB8_34 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-80(%rbp), %rdi
	callq	SREF
	movzbl	%al, %ecx
	cmpl	$1, %ecx
	je	.LBB8_40
# BB#39:                                # %lor.lhs.false.107
                                        #   in Loop: Header=BB8_34 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-80(%rbp), %rdi
	callq	SREF
	movzbl	%al, %ecx
	cmpl	$2, %ecx
	jne	.LBB8_41
.LBB8_40:                               # %if.then.112
                                        #   in Loop: Header=BB8_34 Depth=1
	movq	-8(%rbp), %rdi
	movl	-44(%rbp), %esi
	callq	uniprop_table_uncompress
	movq	%rax, -80(%rbp)
.LBB8_41:                               # %if.end.114
                                        #   in Loop: Header=BB8_34 Depth=1
	movq	-80(%rbp), %rdi
	callq	SUB_CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB8_42
	jmp	.LBB8_43
.LBB8_42:                               # %if.then.116
                                        #   in Loop: Header=BB8_34 Depth=1
	movq	-80(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	8(%rax), %r8
	movb	-57(%rbp), %r9b
	andb	$1, %r9b
	movzbl	%r9b, %r9d
	callq	sub_char_table_ref_and_range
	movq	%rax, -80(%rbp)
	jmp	.LBB8_46
.LBB8_43:                               # %if.else.120
                                        #   in Loop: Header=BB8_34 Depth=1
	xorl	%edi, %edi
	movq	-80(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB8_45
# BB#44:                                # %if.then.124
                                        #   in Loop: Header=BB8_34 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
.LBB8_45:                               # %if.end.126
                                        #   in Loop: Header=BB8_34 Depth=1
	jmp	.LBB8_46
.LBB8_46:                               # %if.end.127
                                        #   in Loop: Header=BB8_34 Depth=1
	movq	-80(%rbp), %rax
	cmpq	-56(%rbp), %rax
	je	.LBB8_48
# BB#47:                                # %if.then.130
	movl	-12(%rbp), %eax
	subl	$1, %eax
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
	jmp	.LBB8_49
.LBB8_48:                               # %if.end.132
                                        #   in Loop: Header=BB8_34 Depth=1
	jmp	.LBB8_34
.LBB8_49:                               # %while.end.133
	movq	-56(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	char_table_ref_and_range, .Lfunc_end8-char_table_ref_and_range
	.cfi_endproc

	.align	16, 0x90
	.type	uniprop_table_uncompress,@function
uniprop_table_uncompress:               # @uniprop_table_uncompress
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movslq	-12(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	XSUB_CHAR_TABLE
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	16(%rax,%rdi,8), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	XSUB_CHAR_TABLE
	xorl	%edi, %edi
	movl	12(%rax), %esi
	movl	chartab_chars+8, %ecx
	imull	-12(%rbp), %ecx
	addl	%ecx, %esi
	movl	%esi, -28(%rbp)
	movl	-28(%rbp), %esi
	movl	%esi, -84(%rbp)         # 4-byte Spill
	callq	builtin_lisp_symbol
	movl	$3, %edi
	movl	-84(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	make_sub_char_table
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movslq	-12(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	set_sub_char_table_contents
	movq	-24(%rbp), %rdi
	callq	SDATA
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	SBYTES
	movq	-96(%rbp), %rdx         # 8-byte Reload
	addq	%rax, %rdx
	movq	%rdx, -56(%rbp)
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$1, %ecx
	jne	.LBB9_28
# BB#1:                                 # %if.then
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB9_3
# BB#2:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -100(%rbp)        # 4-byte Spill
	jmp	.LBB9_10
.LBB9_3:                                # %cond.false
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB9_5
# BB#4:                                 # %cond.true.17
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movq	-48(%rbp), %rdx
	addq	$2, %rdx
	movq	%rdx, -48(%rbp)
	movq	-48(%rbp), %rdx
	movzbl	-2(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-48(%rbp), %rdx
	movzbl	-1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-48(%rbp), %rdx
	movzbl	-2(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	orl	%eax, %esi
	movl	%esi, -104(%rbp)        # 4-byte Spill
	jmp	.LBB9_9
.LBB9_5:                                # %cond.false.30
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB9_7
# BB#6:                                 # %cond.true.35
	movq	-48(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movzbl	-3(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-48(%rbp), %rax
	movzbl	-2(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-48(%rbp), %rax
	movzbl	-1(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	jmp	.LBB9_8
.LBB9_7:                                # %cond.false.50
	leaq	-48(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rdi
	callq	string_char
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB9_8:                                # %cond.end
	movl	-108(%rbp), %eax        # 4-byte Reload
	movl	%eax, -104(%rbp)        # 4-byte Spill
.LBB9_9:                                # %cond.end.53
	movl	-104(%rbp), %eax        # 4-byte Reload
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB9_10:                               # %cond.end.55
	movl	-100(%rbp), %eax        # 4-byte Reload
	movl	%eax, -12(%rbp)
.LBB9_11:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	cmpq	-56(%rbp), %rdx
	movb	%cl, -109(%rbp)         # 1-byte Spill
	jae	.LBB9_13
# BB#12:                                # %land.rhs
                                        #   in Loop: Header=BB9_11 Depth=1
	movl	-12(%rbp), %eax
	cmpl	chartab_chars+8, %eax
	setl	%cl
	movb	%cl, -109(%rbp)         # 1-byte Spill
.LBB9_13:                               # %land.end
                                        #   in Loop: Header=BB9_11 Depth=1
	movb	-109(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB9_14
	jmp	.LBB9_27
.LBB9_14:                               # %while.body
                                        #   in Loop: Header=BB9_11 Depth=1
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB9_16
# BB#15:                                # %cond.true.65
                                        #   in Loop: Header=BB9_11 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -116(%rbp)        # 4-byte Spill
	jmp	.LBB9_23
.LBB9_16:                               # %cond.false.68
                                        #   in Loop: Header=BB9_11 Depth=1
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB9_18
# BB#17:                                # %cond.true.73
                                        #   in Loop: Header=BB9_11 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movq	-48(%rbp), %rdx
	addq	$2, %rdx
	movq	%rdx, -48(%rbp)
	movq	-48(%rbp), %rdx
	movzbl	-2(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-48(%rbp), %rdx
	movzbl	-1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-48(%rbp), %rdx
	movzbl	-2(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	orl	%eax, %esi
	movl	%esi, -120(%rbp)        # 4-byte Spill
	jmp	.LBB9_22
.LBB9_18:                               # %cond.false.89
                                        #   in Loop: Header=BB9_11 Depth=1
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB9_20
# BB#19:                                # %cond.true.94
                                        #   in Loop: Header=BB9_11 Depth=1
	movq	-48(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movzbl	-3(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-48(%rbp), %rax
	movzbl	-2(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-48(%rbp), %rax
	movzbl	-1(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	jmp	.LBB9_21
.LBB9_20:                               # %cond.false.109
                                        #   in Loop: Header=BB9_11 Depth=1
	leaq	-48(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rdi
	callq	string_char
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB9_21:                               # %cond.end.111
                                        #   in Loop: Header=BB9_11 Depth=1
	movl	-124(%rbp), %eax        # 4-byte Reload
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB9_22:                               # %cond.end.113
                                        #   in Loop: Header=BB9_11 Depth=1
	movl	-120(%rbp), %eax        # 4-byte Reload
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB9_23:                               # %cond.end.115
                                        #   in Loop: Header=BB9_11 Depth=1
	movl	-116(%rbp), %eax        # 4-byte Reload
	movl	%eax, -60(%rbp)
	movq	-40(%rbp), %rdi
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -12(%rbp)
	movslq	%eax, %rsi
	cmpl	$0, -60(%rbp)
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	jle	.LBB9_25
# BB#24:                                # %cond.true.120
                                        #   in Loop: Header=BB9_11 Depth=1
	movslq	-60(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jmp	.LBB9_26
.LBB9_25:                               # %cond.false.124
                                        #   in Loop: Header=BB9_11 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -152(%rbp)        # 8-byte Spill
.LBB9_26:                               # %cond.end.126
                                        #   in Loop: Header=BB9_11 Depth=1
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	-144(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	set_sub_char_table_contents
	jmp	.LBB9_11
.LBB9_27:                               # %while.end
	jmp	.LBB9_60
.LBB9_28:                               # %if.else
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$2, %ecx
	jne	.LBB9_59
# BB#29:                                # %if.then.131
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	movl	$0, -12(%rbp)
.LBB9_30:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_55 Depth 2
	movq	-48(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jae	.LBB9_58
# BB#31:                                # %for.body
                                        #   in Loop: Header=BB9_30 Depth=1
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB9_33
# BB#32:                                # %cond.true.140
                                        #   in Loop: Header=BB9_30 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -156(%rbp)        # 4-byte Spill
	jmp	.LBB9_40
.LBB9_33:                               # %cond.false.143
                                        #   in Loop: Header=BB9_30 Depth=1
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB9_35
# BB#34:                                # %cond.true.148
                                        #   in Loop: Header=BB9_30 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movq	-48(%rbp), %rdx
	addq	$2, %rdx
	movq	%rdx, -48(%rbp)
	movq	-48(%rbp), %rdx
	movzbl	-2(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-48(%rbp), %rdx
	movzbl	-1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-48(%rbp), %rdx
	movzbl	-2(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	orl	%eax, %esi
	movl	%esi, -160(%rbp)        # 4-byte Spill
	jmp	.LBB9_39
.LBB9_35:                               # %cond.false.164
                                        #   in Loop: Header=BB9_30 Depth=1
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB9_37
# BB#36:                                # %cond.true.169
                                        #   in Loop: Header=BB9_30 Depth=1
	movq	-48(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movzbl	-3(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-48(%rbp), %rax
	movzbl	-2(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-48(%rbp), %rax
	movzbl	-1(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -164(%rbp)        # 4-byte Spill
	jmp	.LBB9_38
.LBB9_37:                               # %cond.false.184
                                        #   in Loop: Header=BB9_30 Depth=1
	leaq	-48(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rdi
	callq	string_char
	movl	%eax, -164(%rbp)        # 4-byte Spill
.LBB9_38:                               # %cond.end.186
                                        #   in Loop: Header=BB9_30 Depth=1
	movl	-164(%rbp), %eax        # 4-byte Reload
	movl	%eax, -160(%rbp)        # 4-byte Spill
.LBB9_39:                               # %cond.end.188
                                        #   in Loop: Header=BB9_30 Depth=1
	movl	-160(%rbp), %eax        # 4-byte Reload
	movl	%eax, -156(%rbp)        # 4-byte Spill
.LBB9_40:                               # %cond.end.190
                                        #   in Loop: Header=BB9_30 Depth=1
	movl	-156(%rbp), %eax        # 4-byte Reload
	movl	%eax, -64(%rbp)
	movl	$1, -68(%rbp)
	movq	-48(%rbp), %rcx
	cmpq	-56(%rbp), %rcx
	jae	.LBB9_54
# BB#41:                                # %if.then.194
                                        #   in Loop: Header=BB9_30 Depth=1
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB9_43
# BB#42:                                # %cond.true.199
                                        #   in Loop: Header=BB9_30 Depth=1
	movl	$1, -72(%rbp)
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -168(%rbp)        # 4-byte Spill
	jmp	.LBB9_50
.LBB9_43:                               # %cond.false.202
                                        #   in Loop: Header=BB9_30 Depth=1
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB9_45
# BB#44:                                # %cond.true.207
                                        #   in Loop: Header=BB9_30 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -72(%rbp)
	movq	-48(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-48(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-48(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -172(%rbp)        # 4-byte Spill
	jmp	.LBB9_49
.LBB9_45:                               # %cond.false.222
                                        #   in Loop: Header=BB9_30 Depth=1
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB9_47
# BB#46:                                # %cond.true.227
                                        #   in Loop: Header=BB9_30 Depth=1
	movl	$3, -72(%rbp)
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-48(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-48(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -176(%rbp)        # 4-byte Spill
	jmp	.LBB9_48
.LBB9_47:                               # %cond.false.241
                                        #   in Loop: Header=BB9_30 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-72(%rbp), %rdx
	movq	-48(%rbp), %rdi
	callq	string_char
	movl	%eax, -176(%rbp)        # 4-byte Spill
.LBB9_48:                               # %cond.end.243
                                        #   in Loop: Header=BB9_30 Depth=1
	movl	-176(%rbp), %eax        # 4-byte Reload
	movl	%eax, -172(%rbp)        # 4-byte Spill
.LBB9_49:                               # %cond.end.245
                                        #   in Loop: Header=BB9_30 Depth=1
	movl	-172(%rbp), %eax        # 4-byte Reload
	movl	%eax, -168(%rbp)        # 4-byte Spill
.LBB9_50:                               # %cond.end.247
                                        #   in Loop: Header=BB9_30 Depth=1
	movl	-168(%rbp), %eax        # 4-byte Reload
	movl	%eax, -68(%rbp)
	cmpl	$128, -68(%rbp)
	jge	.LBB9_52
# BB#51:                                # %if.then.251
                                        #   in Loop: Header=BB9_30 Depth=1
	movl	$1, -68(%rbp)
	jmp	.LBB9_53
.LBB9_52:                               # %if.else.252
                                        #   in Loop: Header=BB9_30 Depth=1
	movl	-68(%rbp), %eax
	subl	$128, %eax
	movl	%eax, -68(%rbp)
	movl	-72(%rbp), %eax
	movq	-48(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -48(%rbp)
.LBB9_53:                               # %if.end
                                        #   in Loop: Header=BB9_30 Depth=1
	jmp	.LBB9_54
.LBB9_54:                               # %if.end.255
                                        #   in Loop: Header=BB9_30 Depth=1
	jmp	.LBB9_55
.LBB9_55:                               # %while.cond.256
                                        #   Parent Loop BB9_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -68(%rbp)
	cmpl	$0, %eax
	jle	.LBB9_57
# BB#56:                                # %while.body.259
                                        #   in Loop: Header=BB9_55 Depth=2
	movq	-40(%rbp), %rdi
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -12(%rbp)
	movslq	%eax, %rsi
	movslq	-64(%rbp), %rdx
	shlq	$2, %rdx
	addq	$2, %rdx
	callq	set_sub_char_table_contents
	jmp	.LBB9_55
.LBB9_57:                               # %while.end.265
                                        #   in Loop: Header=BB9_30 Depth=1
	jmp	.LBB9_30
.LBB9_58:                               # %for.end
	jmp	.LBB9_59
.LBB9_59:                               # %if.end.266
	jmp	.LBB9_60
.LBB9_60:                               # %if.end.267
	movq	-40(%rbp), %rax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	uniprop_table_uncompress, .Lfunc_end9-uniprop_table_uncompress
	.cfi_endproc

	.align	16, 0x90
	.type	sub_char_table_ref_and_range,@function
sub_char_table_ref_and_range:           # @sub_char_table_ref_and_range
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
	subq	$144, %rsp
	movb	%r9b, %al
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	andb	$1, %al
	movb	%al, -41(%rbp)
	movq	-8(%rbp), %rdi
	callq	XSUB_CHAR_TABLE
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movl	8(%rax), %esi
	movl	%esi, -60(%rbp)
	movq	-56(%rbp), %rax
	movl	12(%rax), %esi
	movl	%esi, -64(%rbp)
	movl	-12(%rbp), %esi
	subl	-64(%rbp), %esi
	movslq	-60(%rbp), %rax
	movl	chartab_bits(,%rax,4), %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %esi
	movl	%esi, -68(%rbp)
	movslq	-68(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	16(%rdx,%rax,8), %rax
	movq	%rax, -80(%rbp)
	testb	$1, -41(%rbp)
	je	.LBB10_6
# BB#1:                                 # %land.lhs.true
	movq	-80(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB10_2
	jmp	.LBB10_6
.LBB10_2:                               # %land.lhs.true.6
	movq	-80(%rbp), %rdi
	callq	SCHARS
	cmpq	$0, %rax
	jle	.LBB10_6
# BB#3:                                 # %land.lhs.true.8
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-80(%rbp), %rdi
	callq	SREF
	movzbl	%al, %ecx
	cmpl	$1, %ecx
	je	.LBB10_5
# BB#4:                                 # %lor.lhs.false
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-80(%rbp), %rdi
	callq	SREF
	movzbl	%al, %ecx
	cmpl	$2, %ecx
	jne	.LBB10_6
.LBB10_5:                               # %if.then
	movq	-8(%rbp), %rdi
	movl	-68(%rbp), %esi
	callq	uniprop_table_uncompress
	movq	%rax, -80(%rbp)
.LBB10_6:                               # %if.end
	movq	-80(%rbp), %rdi
	callq	SUB_CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB10_7
	jmp	.LBB10_8
.LBB10_7:                               # %if.then.18
	movq	-80(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r8
	movb	-41(%rbp), %al
	andb	$1, %al
	movzbl	%al, %r9d
	callq	sub_char_table_ref_and_range
	movq	%rax, -80(%rbp)
	jmp	.LBB10_11
.LBB10_8:                               # %if.else
	xorl	%edi, %edi
	movq	-80(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB10_10
# BB#9:                                 # %if.then.24
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)
.LBB10_10:                              # %if.end.25
	jmp	.LBB10_11
.LBB10_11:                              # %if.end.26
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
.LBB10_12:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -72(%rbp)
	movb	%cl, -105(%rbp)         # 1-byte Spill
	jle	.LBB10_14
# BB#13:                                # %land.rhs
                                        #   in Loop: Header=BB10_12 Depth=1
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	movl	-64(%rbp), %edx
	movl	-72(%rbp), %esi
	movslq	-60(%rbp), %rax
	imull	chartab_chars(,%rax,4), %esi
	addl	%esi, %edx
	cmpl	%edx, %ecx
	setl	%dil
	movb	%dil, -105(%rbp)        # 1-byte Spill
.LBB10_14:                              # %land.end
                                        #   in Loop: Header=BB10_12 Depth=1
	movb	-105(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB10_15
	jmp	.LBB10_29
.LBB10_15:                              # %while.body
                                        #   in Loop: Header=BB10_12 Depth=1
	movl	-64(%rbp), %eax
	movl	-72(%rbp), %ecx
	movslq	-60(%rbp), %rdx
	imull	chartab_chars(,%rdx,4), %ecx
	addl	%ecx, %eax
	subl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-72(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -72(%rbp)
	movslq	-72(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	16(%rsi,%rdx,8), %rdx
	movq	%rdx, -88(%rbp)
	testb	$1, -41(%rbp)
	je	.LBB10_21
# BB#16:                                # %land.lhs.true.43
                                        #   in Loop: Header=BB10_12 Depth=1
	movq	-88(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB10_17
	jmp	.LBB10_21
.LBB10_17:                              # %land.lhs.true.46
                                        #   in Loop: Header=BB10_12 Depth=1
	movq	-88(%rbp), %rdi
	callq	SCHARS
	cmpq	$0, %rax
	jle	.LBB10_21
# BB#18:                                # %land.lhs.true.50
                                        #   in Loop: Header=BB10_12 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-88(%rbp), %rdi
	callq	SREF
	movzbl	%al, %ecx
	cmpl	$1, %ecx
	je	.LBB10_20
# BB#19:                                # %lor.lhs.false.55
                                        #   in Loop: Header=BB10_12 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-88(%rbp), %rdi
	callq	SREF
	movzbl	%al, %ecx
	cmpl	$2, %ecx
	jne	.LBB10_21
.LBB10_20:                              # %if.then.60
                                        #   in Loop: Header=BB10_12 Depth=1
	movq	-8(%rbp), %rdi
	movl	-72(%rbp), %esi
	callq	uniprop_table_uncompress
	movq	%rax, -88(%rbp)
.LBB10_21:                              # %if.end.62
                                        #   in Loop: Header=BB10_12 Depth=1
	movq	-88(%rbp), %rdi
	callq	SUB_CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB10_22
	jmp	.LBB10_23
.LBB10_22:                              # %if.then.64
                                        #   in Loop: Header=BB10_12 Depth=1
	movq	-88(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r8
	movb	-41(%rbp), %al
	andb	$1, %al
	movzbl	%al, %r9d
	callq	sub_char_table_ref_and_range
	movq	%rax, -88(%rbp)
	jmp	.LBB10_26
.LBB10_23:                              # %if.else.67
                                        #   in Loop: Header=BB10_12 Depth=1
	xorl	%edi, %edi
	movq	-88(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB10_25
# BB#24:                                # %if.then.71
                                        #   in Loop: Header=BB10_12 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -88(%rbp)
.LBB10_25:                              # %if.end.72
                                        #   in Loop: Header=BB10_12 Depth=1
	jmp	.LBB10_26
.LBB10_26:                              # %if.end.73
                                        #   in Loop: Header=BB10_12 Depth=1
	movq	-88(%rbp), %rax
	cmpq	-80(%rbp), %rax
	je	.LBB10_28
# BB#27:                                # %if.then.76
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	jmp	.LBB10_29
.LBB10_28:                              # %if.end.78
                                        #   in Loop: Header=BB10_12 Depth=1
	jmp	.LBB10_12
.LBB10_29:                              # %while.end
	jmp	.LBB10_30
.LBB10_30:                              # %while.cond.79
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movslq	-60(%rbp), %rdx
	imull	chartab_chars(,%rdx,4), %eax
	movl	%eax, -12(%rbp)
	movl	-60(%rbp), %esi
	subl	$1, %esi
	movslq	%esi, %rdx
	cmpl	chartab_chars(,%rdx,4), %eax
	movb	%cl, -121(%rbp)         # 1-byte Spill
	jge	.LBB10_32
# BB#31:                                # %land.rhs.89
                                        #   in Loop: Header=BB10_30 Depth=1
	movl	-64(%rbp), %eax
	addl	-12(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-32(%rbp), %rcx
	cmpl	(%rcx), %eax
	setle	%dl
	movb	%dl, -121(%rbp)         # 1-byte Spill
.LBB10_32:                              # %land.end.93
                                        #   in Loop: Header=BB10_30 Depth=1
	movb	-121(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB10_33
	jmp	.LBB10_47
.LBB10_33:                              # %while.body.94
                                        #   in Loop: Header=BB10_30 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	movslq	-68(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	16(%rdx,%rcx,8), %rcx
	movq	%rcx, -96(%rbp)
	testb	$1, -41(%rbp)
	je	.LBB10_39
# BB#34:                                # %land.lhs.true.101
                                        #   in Loop: Header=BB10_30 Depth=1
	movq	-96(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB10_35
	jmp	.LBB10_39
.LBB10_35:                              # %land.lhs.true.104
                                        #   in Loop: Header=BB10_30 Depth=1
	movq	-96(%rbp), %rdi
	callq	SCHARS
	cmpq	$0, %rax
	jle	.LBB10_39
# BB#36:                                # %land.lhs.true.108
                                        #   in Loop: Header=BB10_30 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-96(%rbp), %rdi
	callq	SREF
	movzbl	%al, %ecx
	cmpl	$1, %ecx
	je	.LBB10_38
# BB#37:                                # %lor.lhs.false.113
                                        #   in Loop: Header=BB10_30 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-96(%rbp), %rdi
	callq	SREF
	movzbl	%al, %ecx
	cmpl	$2, %ecx
	jne	.LBB10_39
.LBB10_38:                              # %if.then.118
                                        #   in Loop: Header=BB10_30 Depth=1
	movq	-8(%rbp), %rdi
	movl	-68(%rbp), %esi
	callq	uniprop_table_uncompress
	movq	%rax, -96(%rbp)
.LBB10_39:                              # %if.end.120
                                        #   in Loop: Header=BB10_30 Depth=1
	movq	-96(%rbp), %rdi
	callq	SUB_CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB10_40
	jmp	.LBB10_41
.LBB10_40:                              # %if.then.122
                                        #   in Loop: Header=BB10_30 Depth=1
	movq	-96(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r8
	movb	-41(%rbp), %al
	andb	$1, %al
	movzbl	%al, %r9d
	callq	sub_char_table_ref_and_range
	movq	%rax, -96(%rbp)
	jmp	.LBB10_44
.LBB10_41:                              # %if.else.125
                                        #   in Loop: Header=BB10_30 Depth=1
	xorl	%edi, %edi
	movq	-96(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB10_43
# BB#42:                                # %if.then.129
                                        #   in Loop: Header=BB10_30 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -96(%rbp)
.LBB10_43:                              # %if.end.130
                                        #   in Loop: Header=BB10_30 Depth=1
	jmp	.LBB10_44
.LBB10_44:                              # %if.end.131
                                        #   in Loop: Header=BB10_30 Depth=1
	movq	-96(%rbp), %rax
	cmpq	-80(%rbp), %rax
	je	.LBB10_46
# BB#45:                                # %if.then.134
	movl	-12(%rbp), %eax
	subl	$1, %eax
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
	jmp	.LBB10_47
.LBB10_46:                              # %if.end.136
                                        #   in Loop: Header=BB10_30 Depth=1
	jmp	.LBB10_30
.LBB10_47:                              # %while.end.137
	movq	-80(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	sub_char_table_ref_and_range, .Lfunc_end10-sub_char_table_ref_and_range
	.cfi_endproc

	.globl	char_table_set
	.align	16, 0x90
	.type	char_table_set,@function
char_table_set:                         # @char_table_set
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	XCHAR_TABLE
	movb	$1, %cl
	movq	%rax, -32(%rbp)
	testb	$1, %cl
	jne	.LBB11_1
	jmp	.LBB11_2
.LBB11_1:                               # %cond.true
	movl	-12(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB11_3
	jmp	.LBB11_5
.LBB11_2:                               # %cond.false
	movslq	-12(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB11_5
.LBB11_3:                               # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdi
	callq	SUB_CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB11_4
	jmp	.LBB11_5
.LBB11_4:                               # %if.then
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdi
	movslq	-12(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	set_sub_char_table_contents
	jmp	.LBB11_14
.LBB11_5:                               # %if.else
	movl	-12(%rbp), %eax
	subl	$0, %eax
	movl	chartab_bits, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %eax
	movl	%eax, -36(%rbp)
	movslq	-36(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	40(%rsi,%rdx,8), %rdx
	movq	%rdx, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	SUB_CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB11_7
# BB#6:                                 # %if.then.10
	movl	$1, %edi
	movl	-36(%rbp), %eax
	imull	chartab_chars, %eax
	movq	-48(%rbp), %rdx
	movl	%eax, %esi
	callq	make_sub_char_table
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rdi
	movslq	-36(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	set_char_table_contents
.LBB11_7:                               # %if.end
	movq	-48(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movl	%esi, -68(%rbp)         # 4-byte Spill
	callq	XCHAR_TABLE
	movl	$254, %edi
	movq	24(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%esi, %esi
	movb	%sil, %cl
	movq	-80(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	movb	%cl, -81(%rbp)          # 1-byte Spill
	jne	.LBB11_9
# BB#8:                                 # %land.rhs
	movq	-8(%rbp), %rdi
	callq	XCHAR_TABLE
	movq	%rax, %rdi
	callq	CHAR_TABLE_EXTRA_SLOTS
	cmpl	$5, %eax
	sete	%cl
	movb	%cl, -81(%rbp)          # 1-byte Spill
.LBB11_9:                               # %land.end
	movb	-81(%rbp), %al          # 1-byte Reload
	movzbl	%al, %ecx
	andl	$1, %ecx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	-68(%rbp), %esi         # 4-byte Reload
	movq	-64(%rbp), %rdx         # 8-byte Reload
	callq	sub_char_table_set
	movb	$1, %al
	testb	$1, %al
	jne	.LBB11_10
	jmp	.LBB11_11
.LBB11_10:                              # %cond.true.21
	movl	-12(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB11_12
	jmp	.LBB11_13
.LBB11_11:                              # %cond.false.25
	movslq	-12(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB11_13
.LBB11_12:                              # %if.then.30
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	char_table_ascii
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	set_char_table_ascii
.LBB11_13:                              # %if.end.32
	jmp	.LBB11_14
.LBB11_14:                              # %if.end.33
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	char_table_set, .Lfunc_end11-char_table_set
	.cfi_endproc

	.align	16, 0x90
	.type	make_sub_char_table,@function
make_sub_char_table:                    # @make_sub_char_table
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
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	callq	make_uninit_sub_char_table
	movq	%rax, -32(%rbp)
	movl	$0, -20(%rbp)
.LBB12_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movslq	-4(%rbp), %rcx
	cmpl	chartab_size(,%rcx,4), %eax
	jge	.LBB12_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movq	-32(%rbp), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	callq	XSUB_CHAR_TABLE
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rdi, 16(%rax,%rcx,8)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB12_1
.LBB12_4:                               # %for.end
	movq	-32(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	make_sub_char_table, .Lfunc_end12-make_sub_char_table
	.cfi_endproc

	.align	16, 0x90
	.type	sub_char_table_set,@function
sub_char_table_set:                     # @sub_char_table_set
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
	movb	%cl, %al
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	andb	$1, %al
	movb	%al, -25(%rbp)
	movq	-8(%rbp), %rdi
	callq	XSUB_CHAR_TABLE
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movq	-40(%rbp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, -48(%rbp)
	movl	-12(%rbp), %ecx
	subl	-48(%rbp), %ecx
	movslq	-44(%rbp), %rax
	movl	chartab_bits(,%rax,4), %esi
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	movl	%esi, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-68(%rbp), %esi         # 4-byte Reload
	sarl	%cl, %esi
	movl	%esi, -52(%rbp)
	cmpl	$3, -44(%rbp)
	jne	.LBB13_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movslq	-52(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	set_sub_char_table_contents
	jmp	.LBB13_12
.LBB13_2:                               # %if.else
	movslq	-52(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	16(%rcx,%rax,8), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	SUB_CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB13_11
# BB#3:                                 # %if.then.7
	testb	$1, -25(%rbp)
	je	.LBB13_9
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB13_5
	jmp	.LBB13_9
.LBB13_5:                               # %land.lhs.true.11
	movq	-64(%rbp), %rdi
	callq	SCHARS
	cmpq	$0, %rax
	jle	.LBB13_9
# BB#6:                                 # %land.lhs.true.15
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-64(%rbp), %rdi
	callq	SREF
	movzbl	%al, %ecx
	cmpl	$1, %ecx
	je	.LBB13_8
# BB#7:                                 # %lor.lhs.false
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-64(%rbp), %rdi
	callq	SREF
	movzbl	%al, %ecx
	cmpl	$2, %ecx
	jne	.LBB13_9
.LBB13_8:                               # %if.then.24
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	callq	uniprop_table_uncompress
	movq	%rax, -64(%rbp)
	jmp	.LBB13_10
.LBB13_9:                               # %if.else.26
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	-48(%rbp), %ecx
	movl	-52(%rbp), %edx
	movslq	-44(%rbp), %rsi
	imull	chartab_chars(,%rsi,4), %edx
	addl	%edx, %ecx
	movq	-64(%rbp), %rdx
	movl	%eax, %edi
	movl	%ecx, %esi
	callq	make_sub_char_table
	movq	%rax, -64(%rbp)
	movq	-8(%rbp), %rdi
	movslq	-52(%rbp), %rsi
	movq	-64(%rbp), %rdx
	callq	set_sub_char_table_contents
.LBB13_10:                              # %if.end
	jmp	.LBB13_11
.LBB13_11:                              # %if.end.32
	movq	-64(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	movb	-25(%rbp), %al
	andb	$1, %al
	movzbl	%al, %ecx
	callq	sub_char_table_set
.LBB13_12:                              # %if.end.34
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	sub_char_table_set, .Lfunc_end13-sub_char_table_set
	.cfi_endproc

	.globl	char_table_set_range
	.align	16, 0x90
	.type	char_table_set_range,@function
char_table_set_range:                   # @char_table_set_range
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	XCHAR_TABLE
	movq	%rax, -32(%rbp)
	movl	-12(%rbp), %edx
	cmpl	-16(%rbp), %edx
	jne	.LBB14_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	callq	char_table_set
	jmp	.LBB14_21
.LBB14_2:                               # %if.else
	movq	-8(%rbp), %rdi
	callq	XCHAR_TABLE
	movl	$254, %edi
	movq	24(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movb	%dil, %cl
	movq	-64(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	movb	%cl, -65(%rbp)          # 1-byte Spill
	jne	.LBB14_4
# BB#3:                                 # %land.rhs
	movq	-8(%rbp), %rdi
	callq	XCHAR_TABLE
	movq	%rax, %rdi
	callq	CHAR_TABLE_EXTRA_SLOTS
	cmpl	$5, %eax
	sete	%cl
	movb	%cl, -65(%rbp)          # 1-byte Spill
.LBB14_4:                               # %land.end
	movb	-65(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movb	%al, -33(%rbp)
	movl	-16(%rbp), %ecx
	subl	$0, %ecx
	movl	chartab_bits, %edx
	movl	%ecx, -72(%rbp)         # 4-byte Spill
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-72(%rbp), %edx         # 4-byte Reload
	sarl	%cl, %edx
	movl	%edx, -40(%rbp)
	movl	-12(%rbp), %edx
	subl	$0, %edx
	movl	chartab_bits, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %edx
	movl	%edx, -44(%rbp)
	movl	$0, -48(%rbp)
.LBB14_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jg	.LBB14_16
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB14_5 Depth=1
	movl	-48(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jle	.LBB14_8
# BB#7:                                 # %if.then.11
	jmp	.LBB14_16
.LBB14_8:                               # %if.end
                                        #   in Loop: Header=BB14_5 Depth=1
	movl	-12(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jg	.LBB14_11
# BB#9:                                 # %land.lhs.true
                                        #   in Loop: Header=BB14_5 Depth=1
	movl	-48(%rbp), %eax
	addl	chartab_chars, %eax
	subl	$1, %eax
	cmpl	-16(%rbp), %eax
	jg	.LBB14_11
# BB#10:                                # %if.then.15
                                        #   in Loop: Header=BB14_5 Depth=1
	movq	-8(%rbp), %rdi
	movslq	-44(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	set_char_table_contents
	jmp	.LBB14_14
.LBB14_11:                              # %if.else.16
                                        #   in Loop: Header=BB14_5 Depth=1
	movslq	-44(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	40(%rcx,%rax,8), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	SUB_CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB14_13
# BB#12:                                # %if.then.19
                                        #   in Loop: Header=BB14_5 Depth=1
	movl	$1, %edi
	movl	-44(%rbp), %eax
	imull	chartab_chars, %eax
	movq	-56(%rbp), %rdx
	movl	%eax, %esi
	callq	make_sub_char_table
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rdi
	movslq	-44(%rbp), %rsi
	movq	-56(%rbp), %rdx
	callq	set_char_table_contents
.LBB14_13:                              # %if.end.22
                                        #   in Loop: Header=BB14_5 Depth=1
	movq	-56(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movq	-24(%rbp), %rcx
	movb	-33(%rbp), %al
	andb	$1, %al
	movzbl	%al, %r8d
	callq	sub_char_table_set_range
.LBB14_14:                              # %if.end.23
                                        #   in Loop: Header=BB14_5 Depth=1
	jmp	.LBB14_15
.LBB14_15:                              # %for.inc
                                        #   in Loop: Header=BB14_5 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	movl	chartab_chars, %eax
	addl	-48(%rbp), %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB14_5
.LBB14_16:                              # %for.end
	movb	$1, %al
	testb	$1, %al
	jne	.LBB14_17
	jmp	.LBB14_18
.LBB14_17:                              # %cond.true
	movl	-12(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB14_19
	jmp	.LBB14_20
.LBB14_18:                              # %cond.false
	movslq	-12(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB14_20
.LBB14_19:                              # %if.then.32
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	char_table_ascii
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	set_char_table_ascii
.LBB14_20:                              # %if.end.34
	jmp	.LBB14_21
.LBB14_21:                              # %if.end.35
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	char_table_set_range, .Lfunc_end14-char_table_set_range
	.cfi_endproc

	.align	16, 0x90
	.type	sub_char_table_set_range,@function
sub_char_table_set_range:               # @sub_char_table_set_range
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
	subq	$80, %rsp
	movb	%r8b, %al
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	andb	$1, %al
	movb	%al, -25(%rbp)
	movq	-8(%rbp), %rdi
	callq	XSUB_CHAR_TABLE
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	8(%rax), %edx
	movl	%edx, -44(%rbp)
	movq	-40(%rbp), %rax
	movl	12(%rax), %edx
	movl	%edx, -48(%rbp)
	movslq	-44(%rbp), %rax
	movl	chartab_chars(,%rax,4), %edx
	movl	%edx, -52(%rbp)
	movslq	-44(%rbp), %rax
	movl	chartab_size(,%rax,4), %edx
	movl	%edx, -64(%rbp)
	movl	-12(%rbp), %edx
	cmpl	-48(%rbp), %edx
	jge	.LBB15_2
# BB#1:                                 # %if.then
	movl	-48(%rbp), %eax
	movl	%eax, -12(%rbp)
.LBB15_2:                               # %if.end
	movl	-12(%rbp), %eax
	subl	-48(%rbp), %eax
	movslq	-44(%rbp), %rcx
	movl	chartab_bits(,%rcx,4), %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %eax
	movl	%eax, -56(%rbp)
	movl	-48(%rbp), %eax
	movl	-52(%rbp), %edx
	imull	-56(%rbp), %edx
	addl	%edx, %eax
	movl	%eax, -60(%rbp)
.LBB15_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-56(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jge	.LBB15_21
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB15_3 Depth=1
	movl	-60(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jle	.LBB15_6
# BB#5:                                 # %if.then.9
	jmp	.LBB15_21
.LBB15_6:                               # %if.end.10
                                        #   in Loop: Header=BB15_3 Depth=1
	movl	-12(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jg	.LBB15_9
# BB#7:                                 # %land.lhs.true
                                        #   in Loop: Header=BB15_3 Depth=1
	movl	-60(%rbp), %eax
	addl	-52(%rbp), %eax
	subl	$1, %eax
	cmpl	-16(%rbp), %eax
	jg	.LBB15_9
# BB#8:                                 # %if.then.15
                                        #   in Loop: Header=BB15_3 Depth=1
	movq	-8(%rbp), %rdi
	movslq	-56(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	set_sub_char_table_contents
	jmp	.LBB15_19
.LBB15_9:                               # %if.else
                                        #   in Loop: Header=BB15_3 Depth=1
	movslq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	16(%rcx,%rax,8), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	SUB_CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB15_18
# BB#10:                                # %if.then.20
                                        #   in Loop: Header=BB15_3 Depth=1
	testb	$1, -25(%rbp)
	je	.LBB15_16
# BB#11:                                # %land.lhs.true.22
                                        #   in Loop: Header=BB15_3 Depth=1
	movq	-72(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB15_12
	jmp	.LBB15_16
.LBB15_12:                              # %land.lhs.true.25
                                        #   in Loop: Header=BB15_3 Depth=1
	movq	-72(%rbp), %rdi
	callq	SCHARS
	cmpq	$0, %rax
	jle	.LBB15_16
# BB#13:                                # %land.lhs.true.29
                                        #   in Loop: Header=BB15_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-72(%rbp), %rdi
	callq	SREF
	movzbl	%al, %ecx
	cmpl	$1, %ecx
	je	.LBB15_15
# BB#14:                                # %lor.lhs.false
                                        #   in Loop: Header=BB15_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-72(%rbp), %rdi
	callq	SREF
	movzbl	%al, %ecx
	cmpl	$2, %ecx
	jne	.LBB15_16
.LBB15_15:                              # %if.then.38
                                        #   in Loop: Header=BB15_3 Depth=1
	movq	-8(%rbp), %rdi
	movl	-56(%rbp), %esi
	callq	uniprop_table_uncompress
	movq	%rax, -72(%rbp)
	jmp	.LBB15_17
.LBB15_16:                              # %if.else.40
                                        #   in Loop: Header=BB15_3 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	-60(%rbp), %esi
	movq	-72(%rbp), %rdx
	movl	%eax, %edi
	callq	make_sub_char_table
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rdi
	movslq	-56(%rbp), %rsi
	movq	-72(%rbp), %rdx
	callq	set_sub_char_table_contents
.LBB15_17:                              # %if.end.44
                                        #   in Loop: Header=BB15_3 Depth=1
	jmp	.LBB15_18
.LBB15_18:                              # %if.end.45
                                        #   in Loop: Header=BB15_3 Depth=1
	movq	-72(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movq	-24(%rbp), %rcx
	movb	-25(%rbp), %al
	andb	$1, %al
	movzbl	%al, %r8d
	callq	sub_char_table_set_range
.LBB15_19:                              # %if.end.47
                                        #   in Loop: Header=BB15_3 Depth=1
	jmp	.LBB15_20
.LBB15_20:                              # %for.inc
                                        #   in Loop: Header=BB15_3 Depth=1
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	movl	-52(%rbp), %eax
	addl	-60(%rbp), %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB15_3
.LBB15_21:                              # %for.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	sub_char_table_set_range, .Lfunc_end15-sub_char_table_set_range
	.cfi_endproc

	.globl	Fchar_table_subtype
	.align	16, 0x90
	.type	Fchar_table_subtype,@function
Fchar_table_subtype:                    # @Fchar_table_subtype
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_CHAR_TABLE
	movq	-8(%rbp), %rdi
	callq	XCHAR_TABLE
	movq	24(%rax), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	Fchar_table_subtype, .Lfunc_end16-Fchar_table_subtype
	.cfi_endproc

	.align	16, 0x90
	.type	CHECK_CHAR_TABLE,@function
CHECK_CHAR_TABLE:                       # @CHECK_CHAR_TABLE
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB17_1
	jmp	.LBB17_2
.LBB17_1:                               # %cond.true
	jmp	.LBB17_3
.LBB17_2:                               # %cond.false
	movl	$259, %edi              # imm = 0x103
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB17_3:                               # %cond.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	CHECK_CHAR_TABLE, .Lfunc_end17-CHECK_CHAR_TABLE
	.cfi_endproc

	.globl	Fchar_table_parent
	.align	16, 0x90
	.type	Fchar_table_parent,@function
Fchar_table_parent:                     # @Fchar_table_parent
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
	callq	CHECK_CHAR_TABLE
	movq	-8(%rbp), %rdi
	callq	XCHAR_TABLE
	movq	16(%rax), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	Fchar_table_parent, .Lfunc_end18-Fchar_table_parent
	.cfi_endproc

	.globl	Fset_char_table_parent
	.align	16, 0x90
	.type	Fset_char_table_parent,@function
Fset_char_table_parent:                 # @Fset_char_table_parent
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_CHAR_TABLE
	xorl	%edi, %edi
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB19_8
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	CHECK_CHAR_TABLE
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)
.LBB19_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB19_3
	jmp	.LBB19_7
.LBB19_3:                               # %for.body
                                        #   in Loop: Header=BB19_2 Depth=1
	movq	-24(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB19_5
# BB#4:                                 # %if.then.4
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	error
.LBB19_5:                               # %if.end
                                        #   in Loop: Header=BB19_2 Depth=1
	jmp	.LBB19_6
.LBB19_6:                               # %for.inc
                                        #   in Loop: Header=BB19_2 Depth=1
	movq	-24(%rbp), %rdi
	callq	XCHAR_TABLE
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB19_2
.LBB19_7:                               # %for.end
	jmp	.LBB19_8
.LBB19_8:                               # %if.end.7
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	set_char_table_parent
	movq	-16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	Fset_char_table_parent, .Lfunc_end19-Fset_char_table_parent
	.cfi_endproc

	.globl	Fchar_table_extra_slot
	.align	16, 0x90
	.type	Fchar_table_extra_slot,@function
Fchar_table_extra_slot:                 # @Fchar_table_extra_slot
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_CHAR_TABLE
	movq	-16(%rbp), %rsi
	andq	$7, %rsi
	movl	%esi, %eax
	andl	$-5, %eax
	cmpl	$2, %eax
	jne	.LBB20_2
# BB#1:                                 # %cond.true
	jmp	.LBB20_3
.LBB20_2:                               # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB20_3:                               # %cond.end
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jl	.LBB20_5
# BB#4:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	XCHAR_TABLE
	movq	%rax, %rdi
	callq	CHAR_TABLE_EXTRA_SLOTS
	movslq	%eax, %rdi
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rdi, %rcx
	jl	.LBB20_6
.LBB20_5:                               # %if.then
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	args_out_of_range
.LBB20_6:                               # %if.end
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	XCHAR_TABLE
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	552(%rax,%rdi,8), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	Fchar_table_extra_slot, .Lfunc_end20-Fchar_table_extra_slot
	.cfi_endproc

	.globl	Fset_char_table_extra_slot
	.align	16, 0x90
	.type	Fset_char_table_extra_slot,@function
Fset_char_table_extra_slot:             # @Fset_char_table_extra_slot
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
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_CHAR_TABLE
	movq	-16(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	andl	$-5, %eax
	cmpl	$2, %eax
	jne	.LBB21_2
# BB#1:                                 # %cond.true
	jmp	.LBB21_3
.LBB21_2:                               # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB21_3:                               # %cond.end
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jl	.LBB21_5
# BB#4:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	XCHAR_TABLE
	movq	%rax, %rdi
	callq	CHAR_TABLE_EXTRA_SLOTS
	movslq	%eax, %rdi
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rdi, %rcx
	jl	.LBB21_6
.LBB21_5:                               # %if.then
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	args_out_of_range
.LBB21_6:                               # %if.end
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	-24(%rbp), %rdx
	movq	%rax, %rsi
	callq	set_char_table_extras
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	Fset_char_table_extra_slot, .Lfunc_end21-Fset_char_table_extra_slot
	.cfi_endproc

	.globl	Fchar_table_range
	.align	16, 0x90
	.type	Fchar_table_range,@function
Fchar_table_range:                      # @Fchar_table_range
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
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_CHAR_TABLE
	xorl	%edi, %edi
	movq	-16(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB22_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	XCHAR_TABLE
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB22_22
.LBB22_2:                               # %if.else
	movq	-16(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB22_3
	jmp	.LBB22_5
.LBB22_3:                               # %land.lhs.true
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jg	.LBB22_5
# BB#4:                                 # %if.then.4
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, %esi
	callq	CHAR_TABLE_REF
	movq	%rax, -24(%rbp)
	jmp	.LBB22_21
.LBB22_5:                               # %if.else.7
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB22_19
# BB#6:                                 # %if.then.11
	jmp	.LBB22_7
.LBB22_7:                               # %do.body
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB22_8
	jmp	.LBB22_10
.LBB22_8:                               # %land.lhs.true.14
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jg	.LBB22_10
# BB#9:                                 # %cond.true
	jmp	.LBB22_11
.LBB22_10:                              # %cond.false
	movl	$260, %edi              # imm = 0x104
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB22_11:                              # %cond.end
	jmp	.LBB22_12
.LBB22_12:                              # %do.end
	jmp	.LBB22_13
.LBB22_13:                              # %do.body.19
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB22_14
	jmp	.LBB22_16
.LBB22_14:                              # %land.lhs.true.25
	movq	-48(%rbp), %rax
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jg	.LBB22_16
# BB#15:                                # %cond.true.29
	jmp	.LBB22_17
.LBB22_16:                              # %cond.false.30
	movl	$260, %edi              # imm = 0x104
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB22_17:                              # %cond.end.32
	jmp	.LBB22_18
.LBB22_18:                              # %do.end.33
	leaq	-28(%rbp), %rdx
	leaq	-32(%rbp), %rcx
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %esi
	movl	%esi, -28(%rbp)
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %esi
	movl	%esi, -32(%rbp)
	movq	-8(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	char_table_ref_and_range
	movq	%rax, -24(%rbp)
	jmp	.LBB22_20
.LBB22_19:                              # %if.else.44
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	error
.LBB22_20:                              # %if.end
	jmp	.LBB22_21
.LBB22_21:                              # %if.end.45
	jmp	.LBB22_22
.LBB22_22:                              # %if.end.46
	movq	-24(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	Fchar_table_range, .Lfunc_end22-Fchar_table_range
	.cfi_endproc

	.globl	Fset_char_table_range
	.align	16, 0x90
	.type	Fset_char_table_range,@function
Fset_char_table_range:                  # @Fset_char_table_range
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_CHAR_TABLE
	movl	$901, %edi              # imm = 0x385
	movq	-16(%rbp), %rdx
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB23_6
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	set_char_table_ascii
	movl	$0, -28(%rbp)
.LBB23_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	chartab_size, %eax
	jge	.LBB23_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB23_2 Depth=1
	movq	-8(%rbp), %rdi
	movslq	-28(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	set_char_table_contents
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB23_2 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB23_2
.LBB23_5:                               # %for.end
	jmp	.LBB23_29
.LBB23_6:                               # %if.else
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB23_8
# BB#7:                                 # %if.then.5
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	set_char_table_defalt
	jmp	.LBB23_28
.LBB23_8:                               # %if.else.6
	movq	-16(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB23_9
	jmp	.LBB23_11
.LBB23_9:                               # %land.lhs.true
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jg	.LBB23_11
# BB#10:                                # %if.then.11
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movl	%ecx, %esi
	callq	char_table_set
	jmp	.LBB23_27
.LBB23_11:                              # %if.else.14
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB23_25
# BB#12:                                # %if.then.18
	jmp	.LBB23_13
.LBB23_13:                              # %do.body
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB23_14
	jmp	.LBB23_16
.LBB23_14:                              # %land.lhs.true.21
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jg	.LBB23_16
# BB#15:                                # %cond.true
	jmp	.LBB23_17
.LBB23_16:                              # %cond.false
	movl	$260, %edi              # imm = 0x104
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB23_17:                              # %cond.end
	jmp	.LBB23_18
.LBB23_18:                              # %do.end
	jmp	.LBB23_19
.LBB23_19:                              # %do.body.26
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB23_20
	jmp	.LBB23_22
.LBB23_20:                              # %land.lhs.true.32
	movq	-48(%rbp), %rax
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jg	.LBB23_22
# BB#21:                                # %cond.true.36
	jmp	.LBB23_23
.LBB23_22:                              # %cond.false.37
	movl	$260, %edi              # imm = 0x104
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB23_23:                              # %cond.end.39
	jmp	.LBB23_24
.LBB23_24:                              # %do.end.40
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rcx
	callq	char_table_set_range
	jmp	.LBB23_26
.LBB23_25:                              # %if.else.50
	movabsq	$.L.str.2, %rdi
	movb	$0, %al
	callq	error
.LBB23_26:                              # %if.end
	jmp	.LBB23_27
.LBB23_27:                              # %if.end.51
	jmp	.LBB23_28
.LBB23_28:                              # %if.end.52
	jmp	.LBB23_29
.LBB23_29:                              # %if.end.53
	movq	-24(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	Fset_char_table_range, .Lfunc_end23-Fset_char_table_range
	.cfi_endproc

	.globl	Foptimize_char_table
	.align	16, 0x90
	.type	Foptimize_char_table,@function
Foptimize_char_table:                   # @Foptimize_char_table
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_CHAR_TABLE
	movl	$0, -28(%rbp)
.LBB24_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	chartab_size, %eax
	jge	.LBB24_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB24_1 Depth=1
	movslq	-28(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	XCHAR_TABLE
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	40(%rax,%rdi,8), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	SUB_CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB24_3
	jmp	.LBB24_4
.LBB24_3:                               # %if.then
                                        #   in Loop: Header=BB24_1 Depth=1
	movq	-8(%rbp), %rdi
	movslq	-28(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	callq	optimize_sub_char_table
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	set_char_table_contents
.LBB24_4:                               # %if.end
                                        #   in Loop: Header=BB24_1 Depth=1
	jmp	.LBB24_5
.LBB24_5:                               # %for.inc
                                        #   in Loop: Header=BB24_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB24_1
.LBB24_6:                               # %for.end
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	char_table_ascii
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	set_char_table_ascii
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	Foptimize_char_table, .Lfunc_end24-Foptimize_char_table
	.cfi_endproc

	.align	16, 0x90
	.type	optimize_sub_char_table,@function
optimize_sub_char_table:                # @optimize_sub_char_table
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	XSUB_CHAR_TABLE
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	XSUB_CHAR_TABLE
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	SUB_CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB25_1
	jmp	.LBB25_2
.LBB25_1:                               # %if.then
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	optimize_sub_char_table
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rdx
	callq	set_sub_char_table_contents
.LBB25_2:                               # %if.end
	movq	-40(%rbp), %rdi
	callq	SUB_CHAR_TABLE_P
	movl	$1, %ecx
	xorl	%edx, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movb	%al, -49(%rbp)
	movl	$1, -28(%rbp)
.LBB25_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movslq	-32(%rbp), %rcx
	cmpl	chartab_size(,%rcx,4), %eax
	jge	.LBB25_15
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB25_3 Depth=1
	movslq	-28(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	XSUB_CHAR_TABLE
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	16(%rax,%rdi,8), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	SUB_CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB25_5
	jmp	.LBB25_6
.LBB25_5:                               # %if.then.12
                                        #   in Loop: Header=BB25_3 Depth=1
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	optimize_sub_char_table
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rdi
	movslq	-28(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	set_sub_char_table_contents
.LBB25_6:                               # %if.end.14
                                        #   in Loop: Header=BB25_3 Depth=1
	testb	$1, -49(%rbp)
	je	.LBB25_13
# BB#7:                                 # %land.lhs.true
                                        #   in Loop: Header=BB25_3 Depth=1
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB25_9
# BB#8:                                 # %cond.true
                                        #   in Loop: Header=BB25_3 Depth=1
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	Fequal
	xorl	%edi, %edi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB25_12
	jmp	.LBB25_13
.LBB25_9:                               # %cond.false
                                        #   in Loop: Header=BB25_3 Depth=1
	movl	$369, %edi              # imm = 0x171
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB25_11
# BB#10:                                # %cond.true.27
                                        #   in Loop: Header=BB25_3 Depth=1
	movq	-48(%rbp), %rax
	cmpq	-40(%rbp), %rax
	je	.LBB25_13
	jmp	.LBB25_12
.LBB25_11:                              # %cond.false.30
                                        #   in Loop: Header=BB25_3 Depth=1
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	call2
	xorl	%edi, %edi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB25_13
.LBB25_12:                              # %if.then.35
                                        #   in Loop: Header=BB25_3 Depth=1
	movb	$0, -49(%rbp)
.LBB25_13:                              # %if.end.36
                                        #   in Loop: Header=BB25_3 Depth=1
	jmp	.LBB25_14
.LBB25_14:                              # %for.inc
                                        #   in Loop: Header=BB25_3 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB25_3
.LBB25_15:                              # %for.end
	testb	$1, -49(%rbp)
	je	.LBB25_17
# BB#16:                                # %cond.true.39
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB25_18
.LBB25_17:                              # %cond.false.40
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB25_18:                              # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	optimize_sub_char_table, .Lfunc_end25-optimize_sub_char_table
	.cfi_endproc

	.globl	map_char_table
	.align	16, 0x90
	.type	map_char_table,@function
map_char_table:                         # @map_char_table
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	XCHAR_TABLE
	movl	$254, %edi
	movq	24(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB26_3
# BB#1:                                 # %land.lhs.true
	movq	-24(%rbp), %rdi
	callq	XCHAR_TABLE
	movq	%rax, %rdi
	callq	CHAR_TABLE_EXTRA_SLOTS
	cmpl	$5, %eax
	jne	.LBB26_3
# BB#2:                                 # %cond.true
	movq	-24(%rbp), %rdi
	callq	uniprop_get_decoder
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB26_4
.LBB26_3:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB26_4
.LBB26_4:                               # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movl	$2, %ecx
	movl	%ecx, %edi
	movl	$16777214, %ecx         # imm = 0xFFFFFE
	movl	%ecx, %esi
	movq	%rax, -64(%rbp)
	callq	Fcons
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	XCHAR_TABLE
	movq	16(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rdi
	callq	XCHAR_TABLE
	movq	32(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	SUB_CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB26_5
	jmp	.LBB26_6
.LBB26_5:                               # %if.then
	movq	-48(%rbp), %rdi
	callq	XSUB_CHAR_TABLE
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB26_6:                               # %if.end
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-48(%rbp), %r8
	movq	-40(%rbp), %r9
	movq	-24(%rbp), %rax
	movq	%rax, (%rsp)
	callq	map_sub_char_table
	movq	%rax, -48(%rbp)
.LBB26_7:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movb	%dil, %cl
	movq	-104(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	movb	%cl, -105(%rbp)         # 1-byte Spill
	jne	.LBB26_9
# BB#8:                                 # %land.rhs
                                        #   in Loop: Header=BB26_7 Depth=1
	movq	-24(%rbp), %rdi
	callq	XCHAR_TABLE
	xorl	%edi, %edi
	movq	16(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	movb	%dl, -105(%rbp)         # 1-byte Spill
.LBB26_9:                               # %land.end
                                        #   in Loop: Header=BB26_7 Depth=1
	movb	-105(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB26_10
	jmp	.LBB26_11
.LBB26_10:                              # %while.body
                                        #   in Loop: Header=BB26_7 Depth=1
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -76(%rbp)
	movq	-24(%rbp), %rdi
	callq	XCHAR_TABLE
	movq	16(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	XCHAR_TABLE
	xorl	%edi, %edi
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	set_char_table_parent
	movq	-56(%rbp), %rdi
	movl	-76(%rbp), %esi
	callq	CHAR_TABLE_REF
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	set_char_table_parent
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-56(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-48(%rbp), %r8
	movq	-40(%rbp), %r9
	movq	-56(%rbp), %rax
	movq	%rax, (%rsp)
	callq	map_sub_char_table
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB26_7
.LBB26_11:                              # %while.end
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB26_26
# BB#12:                                # %if.then.29
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	subq	$3, %rcx
	cmpq	8(%rcx), %rax
	jne	.LBB26_19
# BB#13:                                # %if.then.35
	cmpq	$0, -8(%rbp)
	je	.LBB26_15
# BB#14:                                # %if.then.36
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rsi
	movq	-48(%rbp), %rdx
	callq	*%rax
	jmp	.LBB26_18
.LBB26_15:                              # %if.else
	cmpq	$0, -64(%rbp)
	je	.LBB26_17
# BB#16:                                # %if.then.40
	movq	-64(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	*%rax
	movq	%rax, -48(%rbp)
.LBB26_17:                              # %if.end.42
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rsi
	movq	-48(%rbp), %rdx
	callq	call2
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB26_18:                              # %if.end.46
	jmp	.LBB26_25
.LBB26_19:                              # %if.else.47
	cmpq	$0, -8(%rbp)
	je	.LBB26_21
# BB#20:                                # %if.then.49
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	*%rax
	jmp	.LBB26_24
.LBB26_21:                              # %if.else.50
	cmpq	$0, -64(%rbp)
	je	.LBB26_23
# BB#22:                                # %if.then.52
	movq	-64(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	*%rax
	movq	%rax, -48(%rbp)
.LBB26_23:                              # %if.end.54
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	call2
	movq	%rax, -152(%rbp)        # 8-byte Spill
.LBB26_24:                              # %if.end.56
	jmp	.LBB26_25
.LBB26_25:                              # %if.end.57
	jmp	.LBB26_26
.LBB26_26:                              # %if.end.58
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	map_char_table, .Lfunc_end26-map_char_table
	.cfi_endproc

	.align	16, 0x90
	.type	uniprop_get_decoder,@function
uniprop_get_decoder:                    # @uniprop_get_decoder
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	XCHAR_TABLE
	movq	560(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	je	.LBB27_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB27_6
.LBB27_2:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	XCHAR_TABLE
	movq	560(%rax), %rax
	sarq	$2, %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jl	.LBB27_4
# BB#3:                                 # %lor.lhs.false
	cmpq	$1, -24(%rbp)
	jl	.LBB27_5
.LBB27_4:                               # %if.then.10
	movq	$0, -8(%rbp)
	jmp	.LBB27_6
.LBB27_5:                               # %if.end.11
	movq	-24(%rbp), %rax
	movq	uniprop_decoder(,%rax,8), %rax
	movq	%rax, -8(%rbp)
.LBB27_6:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	uniprop_get_decoder, .Lfunc_end27-uniprop_get_decoder
	.cfi_endproc

	.align	16, 0x90
	.type	map_sub_char_table,@function
map_sub_char_table:                     # @map_sub_char_table
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
	subq	$272, %rsp              # imm = 0x110
	movq	16(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %r10d
	movl	%r10d, -76(%rbp)
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %r10d
	movl	%r10d, -80(%rbp)
	movq	-56(%rbp), %rdi
	callq	XCHAR_TABLE
	movl	$254, %edi
	movq	24(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movb	%dil, %r11b
	movq	-152(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	movb	%r11b, -153(%rbp)       # 1-byte Spill
	jne	.LBB28_2
# BB#1:                                 # %land.rhs
	movq	-56(%rbp), %rdi
	callq	XCHAR_TABLE
	movq	%rax, %rdi
	callq	CHAR_TABLE_EXTRA_SLOTS
	cmpl	$5, %eax
	sete	%cl
	movb	%cl, -153(%rbp)         # 1-byte Spill
.LBB28_2:                               # %land.end
	movb	-153(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -89(%rbp)
	movq	-56(%rbp), %rdi
	callq	XCHAR_TABLE
	movl	$254, %edi
	movq	24(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB28_5
# BB#3:                                 # %land.lhs.true
	movq	-56(%rbp), %rdi
	callq	XCHAR_TABLE
	movq	%rax, %rdi
	callq	CHAR_TABLE_EXTRA_SLOTS
	cmpl	$5, %eax
	jne	.LBB28_5
# BB#4:                                 # %cond.true
	movq	-56(%rbp), %rdi
	callq	uniprop_get_decoder
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB28_6
.LBB28_5:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	jmp	.LBB28_6
.LBB28_6:                               # %cond.end
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, -104(%rbp)
	movq	-24(%rbp), %rdi
	callq	SUB_CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB28_7
	jmp	.LBB28_8
.LBB28_7:                               # %if.then
	movq	-24(%rbp), %rdi
	callq	XSUB_CHAR_TABLE
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -60(%rbp)
	movq	-112(%rbp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, -64(%rbp)
	movl	-64(%rbp), %ecx
	movl	-60(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rax
	addl	chartab_chars(,%rax,4), %ecx
	subl	$1, %ecx
	movl	%ecx, -68(%rbp)
	jmp	.LBB28_9
.LBB28_8:                               # %if.else
	movl	$0, -60(%rbp)
	movl	$0, -64(%rbp)
	movl	$4194303, -68(%rbp)     # imm = 0x3FFFFF
.LBB28_9:                               # %if.end
	movslq	-60(%rbp), %rax
	movl	chartab_chars(,%rax,4), %ecx
	movl	%ecx, -72(%rbp)
	movl	-80(%rbp), %ecx
	cmpl	-68(%rbp), %ecx
	jge	.LBB28_11
# BB#10:                                # %if.then.30
	movl	-80(%rbp), %eax
	movl	%eax, -68(%rbp)
.LBB28_11:                              # %if.end.31
	movl	-76(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jg	.LBB28_13
# BB#12:                                # %if.then.34
	movl	$0, -84(%rbp)
	jmp	.LBB28_14
.LBB28_13:                              # %if.else.35
	movl	-76(%rbp), %eax
	subl	-64(%rbp), %eax
	cltd
	idivl	-72(%rbp)
	movl	%eax, -84(%rbp)
.LBB28_14:                              # %if.end.37
	movl	-64(%rbp), %eax
	movl	-72(%rbp), %ecx
	imull	-84(%rbp), %ecx
	addl	%ecx, %eax
	movl	%eax, -88(%rbp)
.LBB28_15:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-88(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jg	.LBB28_58
# BB#16:                                # %for.body
                                        #   in Loop: Header=BB28_15 Depth=1
	movq	-24(%rbp), %rdi
	callq	SUB_CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB28_17
	jmp	.LBB28_18
.LBB28_17:                              # %cond.true.43
                                        #   in Loop: Header=BB28_15 Depth=1
	movslq	-84(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	XSUB_CHAR_TABLE
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	16(%rax,%rdi,8), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jmp	.LBB28_19
.LBB28_18:                              # %cond.false.47
                                        #   in Loop: Header=BB28_15 Depth=1
	movslq	-84(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	XCHAR_TABLE
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	40(%rax,%rdi,8), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
.LBB28_19:                              # %cond.end.52
                                        #   in Loop: Header=BB28_15 Depth=1
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	%rax, -120(%rbp)
	movl	-88(%rbp), %ecx
	addl	-72(%rbp), %ecx
	movl	%ecx, -124(%rbp)
	testb	$1, -89(%rbp)
	je	.LBB28_25
# BB#20:                                # %land.lhs.true.56
                                        #   in Loop: Header=BB28_15 Depth=1
	movq	-120(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB28_21
	jmp	.LBB28_25
.LBB28_21:                              # %land.lhs.true.59
                                        #   in Loop: Header=BB28_15 Depth=1
	movq	-120(%rbp), %rdi
	callq	SCHARS
	cmpq	$0, %rax
	jle	.LBB28_25
# BB#22:                                # %land.lhs.true.63
                                        #   in Loop: Header=BB28_15 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-120(%rbp), %rdi
	callq	SREF
	movzbl	%al, %ecx
	cmpl	$1, %ecx
	je	.LBB28_24
# BB#23:                                # %lor.lhs.false
                                        #   in Loop: Header=BB28_15 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-120(%rbp), %rdi
	callq	SREF
	movzbl	%al, %ecx
	cmpl	$2, %ecx
	jne	.LBB28_25
.LBB28_24:                              # %if.then.72
                                        #   in Loop: Header=BB28_15 Depth=1
	movq	-24(%rbp), %rdi
	movl	-84(%rbp), %esi
	callq	uniprop_table_uncompress
	movq	%rax, -120(%rbp)
.LBB28_25:                              # %if.end.74
                                        #   in Loop: Header=BB28_15 Depth=1
	movq	-120(%rbp), %rdi
	callq	SUB_CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB28_26
	jmp	.LBB28_29
.LBB28_26:                              # %if.then.76
                                        #   in Loop: Header=BB28_15 Depth=1
	movl	-80(%rbp), %eax
	cmpl	-124(%rbp), %eax
	jl	.LBB28_28
# BB#27:                                # %if.then.79
                                        #   in Loop: Header=BB28_15 Depth=1
	movq	-48(%rbp), %rdi
	movl	-124(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, %rsi
	callq	XSETCDR
.LBB28_28:                              # %if.end.83
                                        #   in Loop: Header=BB28_15 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-120(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r8
	movq	-48(%rbp), %r9
	movq	-56(%rbp), %rax
	movq	%rax, (%rsp)
	callq	map_sub_char_table
	movq	%rax, -40(%rbp)
	jmp	.LBB28_56
.LBB28_29:                              # %if.else.85
                                        #   in Loop: Header=BB28_15 Depth=1
	xorl	%edi, %edi
	movq	-120(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB28_31
# BB#30:                                # %if.then.89
                                        #   in Loop: Header=BB28_15 Depth=1
	movq	-56(%rbp), %rdi
	callq	XCHAR_TABLE
	movq	8(%rax), %rax
	movq	%rax, -120(%rbp)
.LBB28_31:                              # %if.end.91
                                        #   in Loop: Header=BB28_15 Depth=1
	movq	-40(%rbp), %rax
	cmpq	-120(%rbp), %rax
	je	.LBB28_55
# BB#32:                                # %if.then.94
                                        #   in Loop: Header=BB28_15 Depth=1
	xorl	%edi, %edi
	movb	$1, -125(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB28_38
# BB#33:                                # %if.then.98
                                        #   in Loop: Header=BB28_15 Depth=1
	movq	-56(%rbp), %rdi
	callq	XCHAR_TABLE
	xorl	%edi, %edi
	movq	16(%rax), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB28_37
# BB#34:                                # %if.then.103
                                        #   in Loop: Header=BB28_15 Depth=1
	movq	-56(%rbp), %rdi
	callq	XCHAR_TABLE
	movq	16(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rdi
	callq	XCHAR_TABLE
	xorl	%edi, %edi
	movq	16(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	set_char_table_parent
	movq	-136(%rbp), %rdi
	movl	-76(%rbp), %esi
	callq	CHAR_TABLE_REF
	movq	%rax, -40(%rbp)
	movq	-136(%rbp), %rdi
	movq	-144(%rbp), %rsi
	callq	set_char_table_parent
	movq	-48(%rbp), %rdi
	movl	-88(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rsi
	callq	XSETCDR
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-136(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r8
	movq	-48(%rbp), %r9
	movq	-136(%rbp), %rax
	movq	%rax, (%rsp)
	callq	map_sub_char_table
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB28_36
# BB#35:                                # %if.then.118
                                        #   in Loop: Header=BB28_15 Depth=1
	movb	$0, -125(%rbp)
.LBB28_36:                              # %if.end.119
                                        #   in Loop: Header=BB28_15 Depth=1
	jmp	.LBB28_37
.LBB28_37:                              # %if.end.120
                                        #   in Loop: Header=BB28_15 Depth=1
	jmp	.LBB28_38
.LBB28_38:                              # %if.end.121
                                        #   in Loop: Header=BB28_15 Depth=1
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-240(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB28_54
# BB#39:                                # %land.lhs.true.125
                                        #   in Loop: Header=BB28_15 Depth=1
	testb	$1, -125(%rbp)
	je	.LBB28_54
# BB#40:                                # %if.then.128
                                        #   in Loop: Header=BB28_15 Depth=1
	movq	-48(%rbp), %rdi
	movl	-88(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, %rsi
	callq	XSETCDR
	movq	-48(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	movq	-48(%rbp), %rsi
	subq	$3, %rsi
	cmpq	8(%rsi), %rcx
	jne	.LBB28_47
# BB#41:                                # %if.then.140
                                        #   in Loop: Header=BB28_15 Depth=1
	cmpq	$0, -8(%rbp)
	je	.LBB28_43
# BB#42:                                # %if.then.142
                                        #   in Loop: Header=BB28_15 Depth=1
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rsi
	movq	-40(%rbp), %rdx
	callq	*%rax
	jmp	.LBB28_46
.LBB28_43:                              # %if.else.145
                                        #   in Loop: Header=BB28_15 Depth=1
	cmpq	$0, -104(%rbp)
	je	.LBB28_45
# BB#44:                                # %if.then.147
                                        #   in Loop: Header=BB28_15 Depth=1
	movq	-104(%rbp), %rax
	movq	-56(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	*%rax
	movq	%rax, -40(%rbp)
.LBB28_45:                              # %if.end.149
                                        #   in Loop: Header=BB28_15 Depth=1
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rsi
	movq	-40(%rbp), %rdx
	callq	call2
	movq	%rax, -248(%rbp)        # 8-byte Spill
.LBB28_46:                              # %if.end.153
                                        #   in Loop: Header=BB28_15 Depth=1
	jmp	.LBB28_53
.LBB28_47:                              # %if.else.154
                                        #   in Loop: Header=BB28_15 Depth=1
	cmpq	$0, -8(%rbp)
	je	.LBB28_49
# BB#48:                                # %if.then.156
                                        #   in Loop: Header=BB28_15 Depth=1
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	*%rax
	jmp	.LBB28_52
.LBB28_49:                              # %if.else.157
                                        #   in Loop: Header=BB28_15 Depth=1
	cmpq	$0, -104(%rbp)
	je	.LBB28_51
# BB#50:                                # %if.then.159
                                        #   in Loop: Header=BB28_15 Depth=1
	movq	-104(%rbp), %rax
	movq	-56(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	*%rax
	movq	%rax, -40(%rbp)
.LBB28_51:                              # %if.end.161
                                        #   in Loop: Header=BB28_15 Depth=1
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	call2
	movq	%rax, -256(%rbp)        # 8-byte Spill
.LBB28_52:                              # %if.end.163
                                        #   in Loop: Header=BB28_15 Depth=1
	jmp	.LBB28_53
.LBB28_53:                              # %if.end.164
                                        #   in Loop: Header=BB28_15 Depth=1
	jmp	.LBB28_54
.LBB28_54:                              # %if.end.165
                                        #   in Loop: Header=BB28_15 Depth=1
	movq	-120(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	-88(%rbp), %ecx
	movl	%ecx, -76(%rbp)
	movq	-48(%rbp), %rdi
	movslq	-88(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rsi
	callq	XSETCAR
.LBB28_55:                              # %if.end.169
                                        #   in Loop: Header=BB28_15 Depth=1
	jmp	.LBB28_56
.LBB28_56:                              # %if.end.170
                                        #   in Loop: Header=BB28_15 Depth=1
	movq	-48(%rbp), %rdi
	movslq	-80(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rsi
	callq	XSETCDR
# BB#57:                                # %for.inc
                                        #   in Loop: Header=BB28_15 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	movl	-72(%rbp), %eax
	addl	-88(%rbp), %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB28_15
.LBB28_58:                              # %for.end
	movq	-40(%rbp), %rax
	addq	$272, %rsp              # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end28:
	.size	map_sub_char_table, .Lfunc_end28-map_sub_char_table
	.cfi_endproc

	.globl	Fmap_char_table
	.align	16, 0x90
	.type	Fmap_char_table,@function
Fmap_char_table:                        # @Fmap_char_table
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHECK_CHAR_TABLE
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-16(%rbp), %rcx
	callq	map_char_table
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	Fmap_char_table, .Lfunc_end29-Fmap_char_table
	.cfi_endproc

	.globl	map_char_table_for_charset
	.align	16, 0x90
	.type	map_char_table_for_charset,@function
map_char_table_for_charset:             # @map_char_table_for_charset
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
	subq	$144, %rsp
	movl	16(%rbp), %eax
	xorl	%r10d, %r10d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	%r9d, -44(%rbp)
	movl	%eax, -48(%rbp)
	movl	%r10d, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	%rax, -56(%rbp)
	movl	$0, -64(%rbp)
	movl	$0, -60(%rbp)
.LBB30_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-64(%rbp), %eax
	cmpl	chartab_size, %eax
	jge	.LBB30_12
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB30_1 Depth=1
	movslq	-64(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	XCHAR_TABLE
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	40(%rax,%rdi,8), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	SUB_CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB30_3
	jmp	.LBB30_4
.LBB30_3:                               # %if.then
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-56(%rbp), %r8
	movq	-40(%rbp), %r9
	movl	-44(%rbp), %eax
	movl	-48(%rbp), %r10d
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	map_sub_char_table_for_charset
	jmp	.LBB30_10
.LBB30_4:                               # %if.else
                                        #   in Loop: Header=BB30_1 Depth=1
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB30_9
# BB#5:                                 # %if.then.7
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	-56(%rbp), %rdi
	movl	-60(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, %rsi
	callq	XSETCDR
	cmpq	$0, -8(%rbp)
	je	.LBB30_7
# BB#6:                                 # %if.then.9
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	*%rax
	jmp	.LBB30_8
.LBB30_7:                               # %if.else.10
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	call2
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB30_8:                               # %if.end
                                        #   in Loop: Header=BB30_1 Depth=1
	jmp	.LBB30_9
.LBB30_9:                               # %if.end.12
                                        #   in Loop: Header=BB30_1 Depth=1
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	XSETCAR
.LBB30_10:                              # %if.end.14
                                        #   in Loop: Header=BB30_1 Depth=1
	jmp	.LBB30_11
.LBB30_11:                              # %for.inc
                                        #   in Loop: Header=BB30_1 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	movl	chartab_chars, %eax
	addl	-60(%rbp), %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB30_1
.LBB30_12:                              # %for.end
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB30_17
# BB#13:                                # %if.then.21
	movq	-56(%rbp), %rdi
	movl	-60(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, %rsi
	callq	XSETCDR
	cmpq	$0, -8(%rbp)
	je	.LBB30_15
# BB#14:                                # %if.then.27
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	*%rax
	jmp	.LBB30_16
.LBB30_15:                              # %if.else.28
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	call2
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB30_16:                              # %if.end.30
	jmp	.LBB30_17
.LBB30_17:                              # %if.end.31
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	map_char_table_for_charset, .Lfunc_end30-map_char_table_for_charset
	.cfi_endproc

	.align	16, 0x90
	.type	map_sub_char_table_for_charset,@function
map_sub_char_table_for_charset:         # @map_sub_char_table_for_charset
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
	subq	$240, %rsp
	movl	24(%rbp), %eax
	movl	16(%rbp), %r10d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	%r10d, -52(%rbp)
	movl	%eax, -56(%rbp)
	movq	-24(%rbp), %rdi
	callq	XSUB_CHAR_TABLE
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movl	12(%rax), %r10d
	movl	%r10d, -72(%rbp)
	movq	-64(%rbp), %rax
	movl	8(%rax), %r10d
	movl	%r10d, -76(%rbp)
	cmpl	$3, -76(%rbp)
	jge	.LBB31_14
# BB#1:                                 # %if.then
	movl	$0, -68(%rbp)
.LBB31_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-68(%rbp), %eax
	movslq	-76(%rbp), %rcx
	cmpl	chartab_size(,%rcx,4), %eax
	jge	.LBB31_13
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB31_2 Depth=1
	movslq	-68(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	16(%rcx,%rax,8), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	callq	SUB_CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB31_4
	jmp	.LBB31_5
.LBB31_4:                               # %if.then.6
                                        #   in Loop: Header=BB31_2 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-88(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r8
	movq	-48(%rbp), %r9
	movl	-52(%rbp), %eax
	movl	-56(%rbp), %r10d
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	map_sub_char_table_for_charset
	jmp	.LBB31_11
.LBB31_5:                               # %if.else
                                        #   in Loop: Header=BB31_2 Depth=1
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB31_10
# BB#6:                                 # %if.then.9
                                        #   in Loop: Header=BB31_2 Depth=1
	movq	-40(%rbp), %rdi
	movl	-72(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, %rsi
	callq	XSETCDR
	cmpq	$0, -8(%rbp)
	je	.LBB31_8
# BB#7:                                 # %if.then.11
                                        #   in Loop: Header=BB31_2 Depth=1
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	*%rax
	jmp	.LBB31_9
.LBB31_8:                               # %if.else.12
                                        #   in Loop: Header=BB31_2 Depth=1
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	call2
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB31_9:                               # %if.end
                                        #   in Loop: Header=BB31_2 Depth=1
	jmp	.LBB31_10
.LBB31_10:                              # %if.end.14
                                        #   in Loop: Header=BB31_2 Depth=1
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	XSETCAR
.LBB31_11:                              # %if.end.16
                                        #   in Loop: Header=BB31_2 Depth=1
	jmp	.LBB31_12
.LBB31_12:                              # %for.inc
                                        #   in Loop: Header=BB31_2 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	movslq	-76(%rbp), %rcx
	movl	chartab_chars(,%rcx,4), %eax
	addl	-72(%rbp), %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB31_2
.LBB31_13:                              # %for.end
	jmp	.LBB31_64
.LBB31_14:                              # %if.else.20
	movl	$0, -68(%rbp)
.LBB31_15:                              # %for.cond.21
                                        # =>This Inner Loop Header: Depth=1
	movl	-68(%rbp), %eax
	movslq	-76(%rbp), %rcx
	cmpl	chartab_size(,%rcx,4), %eax
	jge	.LBB31_63
# BB#16:                                # %for.body.26
                                        #   in Loop: Header=BB31_15 Depth=1
	xorl	%edi, %edi
	movslq	-68(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	16(%rcx,%rax,8), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB31_52
# BB#17:                                # %lor.lhs.false
                                        #   in Loop: Header=BB31_15 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB31_58
# BB#18:                                # %land.lhs.true
                                        #   in Loop: Header=BB31_15 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB31_19
	jmp	.LBB31_20
.LBB31_19:                              # %cond.true
                                        #   in Loop: Header=BB31_15 Depth=1
	movl	-72(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB31_21
	jmp	.LBB31_23
.LBB31_20:                              # %cond.false
                                        #   in Loop: Header=BB31_15 Depth=1
	movslq	-72(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB31_23
.LBB31_21:                              # %land.lhs.true.42
                                        #   in Loop: Header=BB31_15 Depth=1
	movq	-48(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$2, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB31_23
# BB#22:                                # %cond.true.44
                                        #   in Loop: Header=BB31_15 Depth=1
	movl	-72(%rbp), %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
	jmp	.LBB31_49
.LBB31_23:                              # %cond.false.45
                                        #   in Loop: Header=BB31_15 Depth=1
	movq	-48(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$5, %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB31_26
# BB#24:                                # %lor.lhs.false.51
                                        #   in Loop: Header=BB31_15 Depth=1
	movq	-48(%rbp), %rax
	cmpl	$2, 104(%rax)
	je	.LBB31_26
# BB#25:                                # %lor.lhs.false.54
                                        #   in Loop: Header=BB31_15 Depth=1
	movq	-48(%rbp), %rax
	cmpl	$3, 104(%rax)
	jne	.LBB31_27
.LBB31_26:                              # %cond.true.58
                                        #   in Loop: Header=BB31_15 Depth=1
	movq	-48(%rbp), %rdi
	movl	-72(%rbp), %esi
	callq	encode_char
	movl	%eax, -144(%rbp)        # 4-byte Spill
	jmp	.LBB31_48
.LBB31_27:                              # %cond.false.60
                                        #   in Loop: Header=BB31_15 Depth=1
	movl	-72(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	120(%rcx), %eax
	jl	.LBB31_29
# BB#28:                                # %lor.lhs.false.64
                                        #   in Loop: Header=BB31_15 Depth=1
	movl	-72(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	124(%rcx), %eax
	jle	.LBB31_30
.LBB31_29:                              # %cond.true.67
                                        #   in Loop: Header=BB31_15 Depth=1
	movq	-48(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, -148(%rbp)        # 4-byte Spill
	jmp	.LBB31_47
.LBB31_30:                              # %cond.false.68
                                        #   in Loop: Header=BB31_15 Depth=1
	movq	-48(%rbp), %rax
	cmpl	$0, 104(%rax)
	jne	.LBB31_35
# BB#31:                                # %cond.true.72
                                        #   in Loop: Header=BB31_15 Depth=1
	movq	-48(%rbp), %rax
	movb	88(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB31_33
# BB#32:                                # %cond.true.77
                                        #   in Loop: Header=BB31_15 Depth=1
	movl	-72(%rbp), %eax
	movq	-48(%rbp), %rcx
	subl	324(%rcx), %eax
	movq	-48(%rbp), %rcx
	addl	108(%rcx), %eax
	movl	%eax, -152(%rbp)        # 4-byte Spill
	jmp	.LBB31_34
.LBB31_33:                              # %cond.false.80
                                        #   in Loop: Header=BB31_15 Depth=1
	movq	-48(%rbp), %rdi
	movl	-72(%rbp), %esi
	callq	encode_char
	movl	%eax, -152(%rbp)        # 4-byte Spill
.LBB31_34:                              # %cond.end
                                        #   in Loop: Header=BB31_15 Depth=1
	movl	-152(%rbp), %eax        # 4-byte Reload
	movl	%eax, -156(%rbp)        # 4-byte Spill
	jmp	.LBB31_46
.LBB31_35:                              # %cond.false.82
                                        #   in Loop: Header=BB31_15 Depth=1
	movq	-48(%rbp), %rax
	cmpl	$1, 104(%rax)
	jne	.LBB31_44
# BB#36:                                # %cond.true.86
                                        #   in Loop: Header=BB31_15 Depth=1
	movq	-48(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$4, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB31_42
# BB#37:                                # %land.lhs.true.92
                                        #   in Loop: Header=BB31_15 Depth=1
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-48(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	$5, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movq	%rax, %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB31_38
	jmp	.LBB31_42
.LBB31_38:                              # %cond.true.98
                                        #   in Loop: Header=BB31_15 Depth=1
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-48(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	$5, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movl	-72(%rbp), %esi
	movq	%rax, %rdi
	callq	CHAR_TABLE_REF
	xorl	%edi, %edi
	movq	%rax, charset_work
	movq	charset_work, %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB31_40
# BB#39:                                # %cond.true.107
                                        #   in Loop: Header=BB31_15 Depth=1
	movq	-48(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, -172(%rbp)        # 4-byte Spill
	jmp	.LBB31_41
.LBB31_40:                              # %cond.false.109
                                        #   in Loop: Header=BB31_15 Depth=1
	movq	charset_work, %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -172(%rbp)        # 4-byte Spill
.LBB31_41:                              # %cond.end.111
                                        #   in Loop: Header=BB31_15 Depth=1
	movl	-172(%rbp), %eax        # 4-byte Reload
	movl	%eax, -176(%rbp)        # 4-byte Spill
	jmp	.LBB31_43
.LBB31_42:                              # %cond.false.113
                                        #   in Loop: Header=BB31_15 Depth=1
	movq	-48(%rbp), %rdi
	movl	-72(%rbp), %esi
	callq	encode_char
	movl	%eax, -176(%rbp)        # 4-byte Spill
.LBB31_43:                              # %cond.end.115
                                        #   in Loop: Header=BB31_15 Depth=1
	movl	-176(%rbp), %eax        # 4-byte Reload
	movl	%eax, -180(%rbp)        # 4-byte Spill
	jmp	.LBB31_45
.LBB31_44:                              # %cond.false.117
                                        #   in Loop: Header=BB31_15 Depth=1
	movq	-48(%rbp), %rdi
	movl	-72(%rbp), %esi
	callq	encode_char
	movl	%eax, -180(%rbp)        # 4-byte Spill
.LBB31_45:                              # %cond.end.119
                                        #   in Loop: Header=BB31_15 Depth=1
	movl	-180(%rbp), %eax        # 4-byte Reload
	movl	%eax, -156(%rbp)        # 4-byte Spill
.LBB31_46:                              # %cond.end.121
                                        #   in Loop: Header=BB31_15 Depth=1
	movl	-156(%rbp), %eax        # 4-byte Reload
	movl	%eax, -148(%rbp)        # 4-byte Spill
.LBB31_47:                              # %cond.end.123
                                        #   in Loop: Header=BB31_15 Depth=1
	movl	-148(%rbp), %eax        # 4-byte Reload
	movl	%eax, -144(%rbp)        # 4-byte Spill
.LBB31_48:                              # %cond.end.125
                                        #   in Loop: Header=BB31_15 Depth=1
	movl	-144(%rbp), %eax        # 4-byte Reload
	movl	%eax, -140(%rbp)        # 4-byte Spill
.LBB31_49:                              # %cond.end.127
                                        #   in Loop: Header=BB31_15 Depth=1
	movl	-140(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movl	%eax, -100(%rbp)
	movl	-100(%rbp), %eax
	cmpl	-52(%rbp), %eax
	movb	%cl, -181(%rbp)         # 1-byte Spill
	jb	.LBB31_51
# BB#50:                                # %lor.rhs
                                        #   in Loop: Header=BB31_15 Depth=1
	movl	-100(%rbp), %eax
	cmpl	-56(%rbp), %eax
	seta	%cl
	movb	%cl, -181(%rbp)         # 1-byte Spill
.LBB31_51:                              # %lor.end
                                        #   in Loop: Header=BB31_15 Depth=1
	movb	-181(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB31_52
	jmp	.LBB31_58
.LBB31_52:                              # %if.then.133
                                        #   in Loop: Header=BB31_15 Depth=1
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB31_57
# BB#53:                                # %if.then.139
                                        #   in Loop: Header=BB31_15 Depth=1
	movq	-40(%rbp), %rdi
	movl	-72(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, %rsi
	callq	XSETCDR
	cmpq	$0, -8(%rbp)
	je	.LBB31_55
# BB#54:                                # %if.then.145
                                        #   in Loop: Header=BB31_15 Depth=1
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	*%rax
	jmp	.LBB31_56
.LBB31_55:                              # %if.else.146
                                        #   in Loop: Header=BB31_15 Depth=1
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	call2
	movq	%rax, -200(%rbp)        # 8-byte Spill
.LBB31_56:                              # %if.end.148
                                        #   in Loop: Header=BB31_15 Depth=1
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	XSETCAR
.LBB31_57:                              # %if.end.150
                                        #   in Loop: Header=BB31_15 Depth=1
	jmp	.LBB31_61
.LBB31_58:                              # %if.else.151
                                        #   in Loop: Header=BB31_15 Depth=1
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB31_60
# BB#59:                                # %if.then.157
                                        #   in Loop: Header=BB31_15 Depth=1
	movq	-40(%rbp), %rdi
	movslq	-72(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rsi
	callq	XSETCAR
.LBB31_60:                              # %if.end.161
                                        #   in Loop: Header=BB31_15 Depth=1
	jmp	.LBB31_61
.LBB31_61:                              # %if.end.162
                                        #   in Loop: Header=BB31_15 Depth=1
	jmp	.LBB31_62
.LBB31_62:                              # %for.inc.163
                                        #   in Loop: Header=BB31_15 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB31_15
.LBB31_63:                              # %for.end.166
	jmp	.LBB31_64
.LBB31_64:                              # %if.end.167
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	map_sub_char_table_for_charset, .Lfunc_end31-map_sub_char_table_for_charset
	.cfi_endproc

	.globl	uniprop_table
	.align	16, 0x90
	.type	uniprop_table,@function
uniprop_table:                          # @uniprop_table
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
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	globals+200, %rsi
	callq	Fassq
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB32_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB32_16
.LBB32_2:                               # %if.end
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB32_3
	jmp	.LBB32_6
.LBB32_3:                               # %if.then.4
	movl	$4, %esi
	leaq	-80(%rbp), %rax
	movabsq	$.L.str.3, %rcx
	movq	$14, -80(%rbp)
	movq	$-1, -72(%rbp)
	movq	$0, -64(%rbp)
	movq	%rcx, -56(%rbp)
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	concat2
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	callq	Fload
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB32_5
# BB#4:                                 # %if.then.16
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB32_16
.LBB32_5:                               # %if.end.18
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB32_6:                               # %if.end.22
	movq	-32(%rbp), %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB32_7
	jmp	.LBB32_9
.LBB32_7:                               # %lor.lhs.false
	movq	-32(%rbp), %rdi
	callq	XCHAR_TABLE
	movl	$254, %edi
	movq	24(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB32_9
# BB#8:                                 # %land.lhs.true
	movq	-32(%rbp), %rdi
	callq	XCHAR_TABLE
	movq	%rax, %rdi
	callq	CHAR_TABLE_EXTRA_SLOTS
	cmpl	$5, %eax
	je	.LBB32_10
.LBB32_9:                               # %if.then.32
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB32_16
.LBB32_10:                              # %if.end.34
	movq	-32(%rbp), %rdi
	callq	XCHAR_TABLE
	movq	560(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB32_13
# BB#11:                                # %cond.true
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jl	.LBB32_14
# BB#12:                                # %lor.lhs.false.43
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	cmpq	$1, %rax
	jge	.LBB32_14
	jmp	.LBB32_15
.LBB32_13:                              # %cond.false
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB32_15
.LBB32_14:                              # %if.then.50
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB32_16
.LBB32_15:                              # %if.end.52
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	char_table_ascii
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	set_char_table_ascii
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB32_16:                              # %return
	movq	-8(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	uniprop_table, .Lfunc_end32-uniprop_table
	.cfi_endproc

	.globl	Funicode_property_table_internal
	.align	16, 0x90
	.type	Funicode_property_table_internal,@function
Funicode_property_table_internal:       # @Funicode_property_table_internal
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
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	uniprop_table
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB33_1
	jmp	.LBB33_2
.LBB33_1:                               # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB33_3
.LBB33_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movq	globals+200, %rsi
	callq	Fassq
	movq	%rax, %rdi
	callq	Fcdr
	movq	%rax, -8(%rbp)
.LBB33_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	Funicode_property_table_internal, .Lfunc_end33-Funicode_property_table_internal
	.cfi_endproc

	.globl	Fget_unicode_property_internal
	.align	16, 0x90
	.type	Fget_unicode_property_internal,@function
Fget_unicode_property_internal:         # @Fget_unicode_property_internal
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_CHAR_TABLE
	movq	-16(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB34_1
	jmp	.LBB34_3
.LBB34_1:                               # %land.lhs.true
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jg	.LBB34_3
# BB#2:                                 # %cond.true
	jmp	.LBB34_4
.LBB34_3:                               # %cond.false
	movl	$260, %edi              # imm = 0x104
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB34_4:                               # %cond.end
	movq	-8(%rbp), %rdi
	callq	XCHAR_TABLE
	movl	$254, %edi
	movq	24(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB34_6
# BB#5:                                 # %land.lhs.true.5
	movq	-8(%rbp), %rdi
	callq	XCHAR_TABLE
	movq	%rax, %rdi
	callq	CHAR_TABLE_EXTRA_SLOTS
	cmpl	$5, %eax
	je	.LBB34_7
.LBB34_6:                               # %if.then
	movabsq	$.L.str.4, %rdi
	movb	$0, %al
	callq	error
.LBB34_7:                               # %if.end
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, %esi
	callq	CHAR_TABLE_REF
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	uniprop_get_decoder
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB34_9
# BB#8:                                 # %cond.true.12
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	*%rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB34_10
.LBB34_9:                               # %cond.false.14
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB34_10:                              # %cond.end.15
	movq	-56(%rbp), %rax         # 8-byte Reload
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	Fget_unicode_property_internal, .Lfunc_end34-Fget_unicode_property_internal
	.cfi_endproc

	.globl	Fput_unicode_property_internal
	.align	16, 0x90
	.type	Fput_unicode_property_internal,@function
Fput_unicode_property_internal:         # @Fput_unicode_property_internal
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
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_CHAR_TABLE
	movq	-16(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB35_1
	jmp	.LBB35_3
.LBB35_1:                               # %land.lhs.true
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jg	.LBB35_3
# BB#2:                                 # %cond.true
	jmp	.LBB35_4
.LBB35_3:                               # %cond.false
	movl	$260, %edi              # imm = 0x104
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB35_4:                               # %cond.end
	movq	-8(%rbp), %rdi
	callq	XCHAR_TABLE
	movl	$254, %edi
	movq	24(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB35_6
# BB#5:                                 # %land.lhs.true.5
	movq	-8(%rbp), %rdi
	callq	XCHAR_TABLE
	movq	%rax, %rdi
	callq	CHAR_TABLE_EXTRA_SLOTS
	cmpl	$5, %eax
	je	.LBB35_7
.LBB35_6:                               # %if.then
	movabsq	$.L.str.4, %rdi
	movb	$0, %al
	callq	error
.LBB35_7:                               # %if.end
	movq	-8(%rbp), %rdi
	callq	uniprop_get_encoder
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB35_9
# BB#8:                                 # %if.then.10
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	*%rax
	movq	%rax, -24(%rbp)
.LBB35_9:                               # %if.end.12
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movl	%ecx, %esi
	callq	CHAR_TABLE_SET
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	Fput_unicode_property_internal, .Lfunc_end35-Fput_unicode_property_internal
	.cfi_endproc

	.align	16, 0x90
	.type	uniprop_get_encoder,@function
uniprop_get_encoder:                    # @uniprop_get_encoder
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	XCHAR_TABLE
	movq	568(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	je	.LBB36_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB36_6
.LBB36_2:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	XCHAR_TABLE
	movq	568(%rax), %rax
	sarq	$2, %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jl	.LBB36_4
# BB#3:                                 # %lor.lhs.false
	cmpq	$3, -24(%rbp)
	jl	.LBB36_5
.LBB36_4:                               # %if.then.10
	movq	$0, -8(%rbp)
	jmp	.LBB36_6
.LBB36_5:                               # %if.end.11
	movq	-24(%rbp), %rax
	movq	uniprop_encoder(,%rax,8), %rax
	movq	%rax, -8(%rbp)
.LBB36_6:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	uniprop_get_encoder, .Lfunc_end36-uniprop_get_encoder
	.cfi_endproc

	.globl	syms_of_chartab
	.align	16, 0x90
	.type	syms_of_chartab,@function
syms_of_chartab:                        # @syms_of_chartab
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
	movabsq	$Smake_char_table, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Schar_table_parent, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Schar_table_subtype, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sset_char_table_parent, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Schar_table_extra_slot, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sset_char_table_extra_slot, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Schar_table_range, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sset_char_table_range, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Soptimize_char_table, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Smap_char_table, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sunicode_property_table_internal, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sget_unicode_property_internal, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sput_unicode_property_internal, %rax
	movq	%rax, %rdi
	callq	defsubr
# BB#1:                                 # %do.body
	movabsq	$syms_of_chartab.o_fwd, %rdi
	movabsq	$.L.str.5, %rsi
	movabsq	$globals, %rax
	addq	$200, %rax
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#2:                                 # %do.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+200
	popq	%rbp
	retq
.Lfunc_end37:
	.size	syms_of_chartab, .Lfunc_end37-syms_of_chartab
	.cfi_endproc

	.align	16, 0x90
	.type	uniprop_decode_value_run_length,@function
uniprop_decode_value_run_length:        # @uniprop_decode_value_run_length
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	XCHAR_TABLE
	movq	584(%rax), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB38_1
	jmp	.LBB38_5
.LBB38_1:                               # %if.then
	movq	-8(%rbp), %rdi
	callq	XCHAR_TABLE
	movq	584(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jl	.LBB38_4
# BB#2:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	ASIZE
	movq	-32(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	jge	.LBB38_4
# BB#3:                                 # %if.then.8
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, %rsi
	callq	AREF
	movq	%rax, -16(%rbp)
.LBB38_4:                               # %if.end
	jmp	.LBB38_5
.LBB38_5:                               # %if.end.11
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	uniprop_decode_value_run_length, .Lfunc_end38-uniprop_decode_value_run_length
	.cfi_endproc

	.align	16, 0x90
	.type	uniprop_encode_value_character,@function
uniprop_encode_value_character:         # @uniprop_encode_value_character
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
	subq	$32, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movl	%eax, %edi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB39_4
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB39_2
	jmp	.LBB39_3
.LBB39_2:                               # %land.lhs.true.2
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jle	.LBB39_4
.LBB39_3:                               # %if.then
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB39_4:                               # %if.end
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	uniprop_encode_value_character, .Lfunc_end39-uniprop_encode_value_character
	.cfi_endproc

	.align	16, 0x90
	.type	uniprop_encode_value_run_length,@function
uniprop_encode_value_run_length:        # @uniprop_encode_value_run_length
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	XCHAR_TABLE
	movq	584(%rax), %rdi
	callq	XVECTOR
	addq	$8, %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	XCHAR_TABLE
	movq	584(%rax), %rdi
	callq	ASIZE
	movl	%eax, %ecx
	movl	%ecx, -32(%rbp)
	movl	$0, -28(%rbp)
.LBB40_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB40_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	-16(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movq	-24(%rbp), %rdx
	cmpq	(%rdx,%rcx,8), %rax
	jne	.LBB40_4
# BB#3:                                 # %if.then
	jmp	.LBB40_6
.LBB40_4:                               # %if.end
                                        #   in Loop: Header=BB40_1 Depth=1
	jmp	.LBB40_5
.LBB40_5:                               # %for.inc
                                        #   in Loop: Header=BB40_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB40_1
.LBB40_6:                               # %for.end
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jne	.LBB40_8
# BB#7:                                 # %if.then.12
	movabsq	$.L.str.6, %rdi
	callq	build_string
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB40_8:                               # %if.end.14
	movslq	-28(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	uniprop_encode_value_run_length, .Lfunc_end40-uniprop_encode_value_run_length
	.cfi_endproc

	.align	16, 0x90
	.type	uniprop_encode_value_numeric,@function
uniprop_encode_value_numeric:           # @uniprop_encode_value_numeric
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	XCHAR_TABLE
	movq	584(%rax), %rdi
	callq	XVECTOR
	addq	$8, %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	XCHAR_TABLE
	movq	584(%rax), %rdi
	callq	ASIZE
	movl	%eax, %ecx
	movl	%ecx, -32(%rbp)
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB41_2
# BB#1:                                 # %cond.true
	jmp	.LBB41_3
.LBB41_2:                               # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB41_3:                               # %cond.end
	movl	$0, -28(%rbp)
.LBB41_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB41_9
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB41_4 Depth=1
	movq	-16(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movq	-24(%rbp), %rdx
	cmpq	(%rdx,%rcx,8), %rax
	jne	.LBB41_7
# BB#6:                                 # %if.then
	jmp	.LBB41_9
.LBB41_7:                               # %if.end
                                        #   in Loop: Header=BB41_4 Depth=1
	jmp	.LBB41_8
.LBB41_8:                               # %for.inc
                                        #   in Loop: Header=BB41_4 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB41_4
.LBB41_9:                               # %for.end
	movslq	-28(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -16(%rbp)
	movl	-28(%rbp), %ecx
	cmpl	-32(%rbp), %ecx
	jne	.LBB41_11
# BB#10:                                # %if.then.18
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	XCHAR_TABLE
	movl	$6, %ecx
	movl	%ecx, %edi
	movq	584(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rsi
	callq	Fmake_vector
	movl	$2, %ecx
	movl	%ecx, %edi
	leaq	-48(%rbp), %rsi
	movq	%rax, -40(%rbp)
	callq	Fvconcat
	movl	$4, %ecx
	movl	%ecx, %esi
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	set_char_table_extras
.LBB41_11:                              # %if.end.25
	movslq	-28(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	uniprop_encode_value_numeric, .Lfunc_end41-uniprop_encode_value_numeric
	.cfi_endproc

	.type	chartab_size,@object    # @chartab_size
	.section	.rodata,"a",@progbits
	.globl	chartab_size
	.align	16
chartab_size:
	.long	64                      # 0x40
	.long	16                      # 0x10
	.long	32                      # 0x20
	.long	128                     # 0x80
	.size	chartab_size, 16

	.type	chartab_bits,@object    # @chartab_bits
	.align	16
chartab_bits:
	.long	16                      # 0x10
	.long	12                      # 0xc
	.long	7                       # 0x7
	.long	0                       # 0x0
	.size	chartab_bits, 16

	.type	chartab_chars,@object   # @chartab_chars
	.align	16
chartab_chars:
	.long	65536                   # 0x10000
	.long	4096                    # 0x1000
	.long	128                     # 0x80
	.long	1                       # 0x1
	.size	chartab_chars, 16

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Attempt to make a chartable be its own parent"
	.size	.L.str, 46

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Invalid RANGE argument to `char-table-range'"
	.size	.L.str.1, 45

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Invalid RANGE argument to `set-char-table-range'"
	.size	.L.str.2, 49

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"international/"
	.size	.L.str.3, 15

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Invalid Unicode property table"
	.size	.L.str.4, 31

	.type	syms_of_chartab.o_fwd,@object # @syms_of_chartab.o_fwd
	.local	syms_of_chartab.o_fwd
	.comm	syms_of_chartab.o_fwd,16,8
	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"char-code-property-alist"
	.size	.L.str.5, 25

	.type	uniprop_decoder,@object # @uniprop_decoder
	.data
	.align	8
uniprop_decoder:
	.quad	uniprop_decode_value_run_length
	.size	uniprop_decoder, 8

	.type	uniprop_encoder,@object # @uniprop_encoder
	.align	16
uniprop_encoder:
	.quad	uniprop_encode_value_character
	.quad	uniprop_encode_value_run_length
	.quad	uniprop_encode_value_numeric
	.size	uniprop_encoder, 24

	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"Unicode property value"
	.size	.L.str.6, 23

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"make-char-table"
	.size	.L.str.7, 16

	.type	Smake_char_table,@object # @Smake_char_table
	.data
	.align	8
Smake_char_table:
	.quad	167772160               # 0xa000000
	.quad	Fmake_char_table
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.7
	.quad	0
	.quad	0
	.size	Smake_char_table, 48

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"char-table-parent"
	.size	.L.str.8, 18

	.type	Schar_table_parent,@object # @Schar_table_parent
	.data
	.align	8
Schar_table_parent:
	.quad	167772160               # 0xa000000
	.quad	Fchar_table_parent
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.8
	.quad	0
	.quad	0
	.size	Schar_table_parent, 48

	.type	.L.str.9,@object        # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"char-table-subtype"
	.size	.L.str.9, 19

	.type	Schar_table_subtype,@object # @Schar_table_subtype
	.data
	.align	8
Schar_table_subtype:
	.quad	167772160               # 0xa000000
	.quad	Fchar_table_subtype
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.9
	.quad	0
	.quad	0
	.size	Schar_table_subtype, 48

	.type	.L.str.10,@object       # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"set-char-table-parent"
	.size	.L.str.10, 22

	.type	Sset_char_table_parent,@object # @Sset_char_table_parent
	.data
	.align	8
Sset_char_table_parent:
	.quad	167772160               # 0xa000000
	.quad	Fset_char_table_parent
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.10
	.quad	0
	.quad	0
	.size	Sset_char_table_parent, 48

	.type	.L.str.11,@object       # @.str.11
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.11:
	.asciz	"char-table-extra-slot"
	.size	.L.str.11, 22

	.type	Schar_table_extra_slot,@object # @Schar_table_extra_slot
	.data
	.align	8
Schar_table_extra_slot:
	.quad	167772160               # 0xa000000
	.quad	Fchar_table_extra_slot
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.11
	.quad	0
	.quad	0
	.size	Schar_table_extra_slot, 48

	.type	.L.str.12,@object       # @.str.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.12:
	.asciz	"set-char-table-extra-slot"
	.size	.L.str.12, 26

	.type	Sset_char_table_extra_slot,@object # @Sset_char_table_extra_slot
	.data
	.align	8
Sset_char_table_extra_slot:
	.quad	167772160               # 0xa000000
	.quad	Fset_char_table_extra_slot
	.short	3                       # 0x3
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.12
	.quad	0
	.quad	0
	.size	Sset_char_table_extra_slot, 48

	.type	.L.str.13,@object       # @.str.13
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.13:
	.asciz	"char-table-range"
	.size	.L.str.13, 17

	.type	Schar_table_range,@object # @Schar_table_range
	.data
	.align	8
Schar_table_range:
	.quad	167772160               # 0xa000000
	.quad	Fchar_table_range
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.13
	.quad	0
	.quad	0
	.size	Schar_table_range, 48

	.type	.L.str.14,@object       # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"set-char-table-range"
	.size	.L.str.14, 21

	.type	Sset_char_table_range,@object # @Sset_char_table_range
	.data
	.align	8
Sset_char_table_range:
	.quad	167772160               # 0xa000000
	.quad	Fset_char_table_range
	.short	3                       # 0x3
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.14
	.quad	0
	.quad	0
	.size	Sset_char_table_range, 48

	.type	.L.str.15,@object       # @.str.15
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.15:
	.asciz	"optimize-char-table"
	.size	.L.str.15, 20

	.type	Soptimize_char_table,@object # @Soptimize_char_table
	.data
	.align	8
Soptimize_char_table:
	.quad	167772160               # 0xa000000
	.quad	Foptimize_char_table
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.15
	.quad	0
	.quad	0
	.size	Soptimize_char_table, 48

	.type	.L.str.16,@object       # @.str.16
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.16:
	.asciz	"map-char-table"
	.size	.L.str.16, 15

	.type	Smap_char_table,@object # @Smap_char_table
	.data
	.align	8
Smap_char_table:
	.quad	167772160               # 0xa000000
	.quad	Fmap_char_table
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.16
	.quad	0
	.quad	0
	.size	Smap_char_table, 48

	.type	.L.str.17,@object       # @.str.17
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.17:
	.asciz	"unicode-property-table-internal"
	.size	.L.str.17, 32

	.type	Sunicode_property_table_internal,@object # @Sunicode_property_table_internal
	.data
	.align	8
Sunicode_property_table_internal:
	.quad	167772160               # 0xa000000
	.quad	Funicode_property_table_internal
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.17
	.quad	0
	.quad	0
	.size	Sunicode_property_table_internal, 48

	.type	.L.str.18,@object       # @.str.18
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.18:
	.asciz	"get-unicode-property-internal"
	.size	.L.str.18, 30

	.type	Sget_unicode_property_internal,@object # @Sget_unicode_property_internal
	.data
	.align	8
Sget_unicode_property_internal:
	.quad	167772160               # 0xa000000
	.quad	Fget_unicode_property_internal
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.18
	.quad	0
	.quad	0
	.size	Sget_unicode_property_internal, 48

	.type	.L.str.19,@object       # @.str.19
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.19:
	.asciz	"put-unicode-property-internal"
	.size	.L.str.19, 30

	.type	Sput_unicode_property_internal,@object # @Sput_unicode_property_internal
	.data
	.align	8
Sput_unicode_property_internal:
	.quad	167772160               # 0xa000000
	.quad	Fput_unicode_property_internal
	.short	3                       # 0x3
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.19
	.quad	0
	.quad	0
	.size	Sput_unicode_property_internal, 48


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
