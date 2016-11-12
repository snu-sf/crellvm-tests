	.text
	.file	"category.bc"
	.globl	Fmake_category_set
	.align	16, 0x90
	.type	Fmake_category_set,@function
Fmake_category_set:                     # @Fmake_category_set
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_STRING
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movl	$514, %edi              # imm = 0x202
                                        # kill: RDI<def> EDI<kill>
	movq	%rax, %rsi
	callq	Fmake_bool_vector
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	STRING_MULTIBYTE
	testb	$1, %al
	jne	.LBB0_1
	jmp	.LBB0_2
.LBB0_1:                                # %if.then
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	error
.LBB0_2:                                # %if.end
	movq	-8(%rbp), %rdi
	callq	SCHARS
	movq	%rax, -24(%rbp)
.LBB0_3:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, %rax
	jl	.LBB0_8
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	SREF
	movl	$32, %ecx
	movl	%ecx, %edi
	movl	$126, %ecx
	movl	%ecx, %edx
	movb	%al, -25(%rbp)
	movzbl	-25(%rbp), %ecx
	movl	%ecx, %esi
	shlq	$2, %rsi
	addq	$2, %rsi
	movq	%rsi, -40(%rbp)
	movq	-40(%rbp), %rsi
	callq	RANGED_INTEGERP
	testb	$1, %al
	jne	.LBB0_5
	jmp	.LBB0_6
.LBB0_5:                                # %cond.true
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_7
.LBB0_6:                                # %cond.false
	movl	$244, %edi
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB0_7:                                # %cond.end
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	movzbl	-25(%rbp), %eax
	movl	%eax, %esi
	callq	set_category_set
	jmp	.LBB0_3
.LBB0_8:                                # %while.end
	movq	-16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	Fmake_category_set, .Lfunc_end0-Fmake_category_set
	.cfi_endproc

	.align	16, 0x90
	.type	set_category_set,@function
set_category_set:                       # @set_category_set
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
	movb	%dl, %al
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	andb	$1, %al
	movb	%al, -17(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movb	-17(%rbp), %al
	andb	$1, %al
	movzbl	%al, %edx
	callq	bool_vector_set
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	set_category_set, .Lfunc_end1-set_category_set
	.cfi_endproc

	.globl	Fdefine_category
	.align	16, 0x90
	.type	Fdefine_category,@function
Fdefine_category:                       # @Fdefine_category
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
	subq	$48, %rsp
	movl	$32, %eax
	movl	%eax, %ecx
	movl	$126, %eax
	movl	%eax, %r8d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rcx, %rdi
	movq	%r8, %rdx
	callq	RANGED_INTEGERP
	testb	$1, %al
	jne	.LBB2_1
	jmp	.LBB2_2
.LBB2_1:                                # %cond.true
	jmp	.LBB2_3
.LBB2_2:                                # %cond.false
	movl	$244, %edi
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB2_3:                                # %cond.end
	movq	-16(%rbp), %rdi
	callq	CHECK_STRING
	movq	-24(%rbp), %rdi
	callq	check_category_table
	movl	$2, %ecx
	movl	%ecx, %esi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	Fchar_table_extra_slot
	movq	-8(%rbp), %rsi
	sarq	$2, %rsi
	subq	$32, %rsi
	movq	%rax, %rdi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB2_5
# BB#4:                                 # %if.then
	movabsq	$.L.str.1, %rdi
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, %esi
	movb	$0, %al
	callq	error
.LBB2_5:                                # %if.end
	xorl	%edi, %edi
	movq	globals+1920, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB2_7
# BB#6:                                 # %if.then.10
	movq	-16(%rbp), %rdi
	callq	Fpurecopy
	movq	%rax, -16(%rbp)
.LBB2_7:                                # %if.end.12
	movl	$2, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rdi
	callq	Fchar_table_extra_slot
	movq	-8(%rbp), %rsi
	sarq	$2, %rsi
	subq	$32, %rsi
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	callq	ASET
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	Fdefine_category, .Lfunc_end2-Fdefine_category
	.cfi_endproc

	.align	16, 0x90
	.type	check_category_table,@function
check_category_table:                   # @check_category_table
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
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movq	current_buffer, %rax
	movq	136(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB3_6
.LBB3_2:                                # %if.end
	movq	-16(%rbp), %rdi
	callq	Fcategory_table_p
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB3_4
# BB#3:                                 # %cond.true
	jmp	.LBB3_5
.LBB3_4:                                # %cond.false
	movl	$243, %edi
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB3_5:                                # %cond.end
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB3_6:                                # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	check_category_table, .Lfunc_end3-check_category_table
	.cfi_endproc

	.globl	Fcategory_docstring
	.align	16, 0x90
	.type	Fcategory_docstring,@function
Fcategory_docstring:                    # @Fcategory_docstring
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
	movl	$32, %eax
	movl	%eax, %ecx
	movl	$126, %eax
	movl	%eax, %edx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rcx, %rdi
	callq	RANGED_INTEGERP
	testb	$1, %al
	jne	.LBB4_1
	jmp	.LBB4_2
.LBB4_1:                                # %cond.true
	jmp	.LBB4_3
.LBB4_2:                                # %cond.false
	movl	$244, %edi
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB4_3:                                # %cond.end
	movq	-16(%rbp), %rdi
	callq	check_category_table
	movl	$2, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	Fchar_table_extra_slot
	movq	-8(%rbp), %rsi
	sarq	$2, %rsi
	subq	$32, %rsi
	movq	%rax, %rdi
	callq	AREF
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	Fcategory_docstring, .Lfunc_end4-Fcategory_docstring
	.cfi_endproc

	.globl	Fget_unused_category
	.align	16, 0x90
	.type	Fget_unused_category,@function
Fget_unused_category:                   # @Fget_unused_category
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	check_category_table
	movq	%rax, -16(%rbp)
	movl	$32, -20(%rbp)
.LBB5_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$126, -20(%rbp)
	jg	.LBB5_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	$2, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	Fchar_table_extra_slot
	movl	-20(%rbp), %ecx
	subl	$32, %ecx
	movslq	%ecx, %rsi
	movq	%rax, %rdi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB5_4
# BB#3:                                 # %if.then
	movslq	-20(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB5_7
.LBB5_4:                                # %if.end
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_5
.LBB5_5:                                # %for.inc
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB5_1
.LBB5_6:                                # %for.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB5_7:                                # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	Fget_unused_category, .Lfunc_end5-Fget_unused_category
	.cfi_endproc

	.globl	Fcategory_table_p
	.align	16, 0x90
	.type	Fcategory_table_p,@function
Fcategory_table_p:                      # @Fcategory_table_p
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
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB6_1
	jmp	.LBB6_3
.LBB6_1:                                # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	XCHAR_TABLE
	movl	$242, %edi
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB6_4
.LBB6_3:                                # %if.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB6_4:                                # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	Fcategory_table_p, .Lfunc_end6-Fcategory_table_p
	.cfi_endproc

	.globl	Fcategory_table
	.align	16, 0x90
	.type	Fcategory_table,@function
Fcategory_table:                        # @Fcategory_table
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
	movq	current_buffer, %rax
	movq	136(%rax), %rax
	popq	%rbp
	retq
.Lfunc_end7:
	.size	Fcategory_table, .Lfunc_end7-Fcategory_table
	.cfi_endproc

	.globl	Fstandard_category_table
	.align	16, 0x90
	.type	Fstandard_category_table,@function
Fstandard_category_table:               # @Fstandard_category_table
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
	movq	buffer_defaults+136, %rax
	popq	%rbp
	retq
.Lfunc_end8:
	.size	Fstandard_category_table, .Lfunc_end8-Fstandard_category_table
	.cfi_endproc

	.globl	Fcopy_category_table
	.align	16, 0x90
	.type	Fcopy_category_table,@function
Fcopy_category_table:                   # @Fcopy_category_table
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
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB9_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	check_category_table
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB9_3
.LBB9_2:                                # %if.else
	movq	buffer_defaults+136, %rax
	movq	%rax, -8(%rbp)
.LBB9_3:                                # %if.end
	movq	-8(%rbp), %rdi
	callq	copy_category_table
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	Fcopy_category_table, .Lfunc_end9-Fcopy_category_table
	.cfi_endproc

	.align	16, 0x90
	.type	copy_category_table,@function
copy_category_table:                    # @copy_category_table
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	copy_char_table
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	XCHAR_TABLE
	xorl	%edi, %edi
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB10_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	XCHAR_TABLE
	movq	8(%rax), %rdi
	callq	Fcopy_sequence
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	set_char_table_defalt
.LBB10_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	XCHAR_TABLE
	movq	552(%rax), %rdi
	callq	Fcopy_sequence
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	set_char_table_extras
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$copy_category_entry, %rdi
	movq	-8(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	%rax, %rsi
	callq	map_char_table
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	copy_category_table, .Lfunc_end10-copy_category_table
	.cfi_endproc

	.globl	Fmake_category_table
	.align	16, 0x90
	.type	Fmake_category_table,@function
Fmake_category_table:                   # @Fmake_category_table
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
	subq	$64, %rsp
	movl	$242, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fmake_char_table
	xorl	%edi, %edi
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$514, %edi              # imm = 0x202
                                        # kill: RDI<def> EDI<kill>
	movq	%rax, %rsi
	callq	Fmake_bool_vector
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	set_char_table_defalt
	movl	$0, -12(%rbp)
.LBB11_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$64, -12(%rbp)
	jge	.LBB11_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB11_1 Depth=1
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$514, %edi              # imm = 0x202
                                        # kill: RDI<def> EDI<kill>
	movq	%rax, %rsi
	callq	Fmake_bool_vector
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	set_char_table_contents
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB11_1
.LBB11_4:                               # %for.end
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$382, %edi              # imm = 0x17E
                                        # kill: RDI<def> EDI<kill>
	movq	%rax, %rsi
	callq	Fmake_vector
	movl	$2, %ecx
	movl	%ecx, %esi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	Fset_char_table_extra_slot
	movq	-8(%rbp), %rdx
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rdx, %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	Fmake_category_table, .Lfunc_end11-Fmake_category_table
	.cfi_endproc

	.globl	Fset_category_table
	.align	16, 0x90
	.type	Fset_category_table,@function
Fset_category_table:                    # @Fset_category_table
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	check_category_table
	movq	%rax, -8(%rbp)
	movq	current_buffer, %rdi
	movq	-8(%rbp), %rsi
	callq	bset_category_table
	movq	buffer_local_flags+136, %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -12(%rbp)
# BB#1:                                 # %do.body
	cmpl	$0, -12(%rbp)
	jl	.LBB12_3
# BB#2:                                 # %lor.lhs.false
	movl	-12(%rbp), %eax
	cmpl	last_per_buffer_idx, %eax
	jl	.LBB12_4
.LBB12_3:                               # %if.then
	callq	emacs_abort
.LBB12_4:                               # %if.end
	movslq	-12(%rbp), %rax
	movq	current_buffer, %rcx
	movb	$1, 800(%rcx,%rax)
# BB#5:                                 # %do.end
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	Fset_category_table, .Lfunc_end12-Fset_category_table
	.cfi_endproc

	.align	16, 0x90
	.type	bset_category_table,@function
bset_category_table:                    # @bset_category_table
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 136(%rdi)
	popq	%rbp
	retq
.Lfunc_end13:
	.size	bset_category_table, .Lfunc_end13-bset_category_table
	.cfi_endproc

	.globl	char_category_set
	.align	16, 0x90
	.type	char_category_set,@function
char_category_set:                      # @char_category_set
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
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	current_buffer, %rax
	movq	136(%rax), %rdi
	movl	-4(%rbp), %esi
	callq	CHAR_TABLE_REF
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	char_category_set, .Lfunc_end14-char_category_set
	.cfi_endproc

	.globl	Fchar_category_set
	.align	16, 0x90
	.type	Fchar_category_set,@function
Fchar_category_set:                     # @Fchar_category_set
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB15_1
	jmp	.LBB15_3
.LBB15_1:                               # %land.lhs.true
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jg	.LBB15_3
# BB#2:                                 # %cond.true
	jmp	.LBB15_4
.LBB15_3:                               # %cond.false
	movl	$260, %edi              # imm = 0x104
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB15_4:                               # %cond.end
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, %edi
	callq	char_category_set
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	Fchar_category_set, .Lfunc_end15-Fchar_category_set
	.cfi_endproc

	.globl	Fcategory_set_mnemonics
	.align	16, 0x90
	.type	Fcategory_set_mnemonics,@function
Fcategory_set_mnemonics:                # @Fcategory_set_mnemonics
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	BOOL_VECTOR_P
	testb	$1, %al
	jne	.LBB16_1
	jmp	.LBB16_3
.LBB16_1:                               # %land.lhs.true
	movq	-8(%rbp), %rdi
	callq	bool_vector_size
	cmpq	$128, %rax
	jne	.LBB16_3
# BB#2:                                 # %cond.true
	jmp	.LBB16_4
.LBB16_3:                               # %cond.false
	movl	$245, %edi
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB16_4:                               # %cond.end
	movl	$0, -16(%rbp)
	movl	$32, -12(%rbp)
.LBB16_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$127, -12(%rbp)
	jge	.LBB16_10
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB16_5 Depth=1
	movslq	-12(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	CATEGORY_MEMBER
	testb	$1, %al
	jne	.LBB16_7
	jmp	.LBB16_8
.LBB16_7:                               # %if.then
                                        #   in Loop: Header=BB16_5 Depth=1
	movl	-12(%rbp), %eax
	movb	%al, %cl
	movl	-16(%rbp), %eax
	movl	%eax, %edx
	addl	$1, %edx
	movl	%edx, -16(%rbp)
	movslq	%eax, %rsi
	movb	%cl, -112(%rbp,%rsi)
.LBB16_8:                               # %if.end
                                        #   in Loop: Header=BB16_5 Depth=1
	jmp	.LBB16_9
.LBB16_9:                               # %for.inc
                                        #   in Loop: Header=BB16_5 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB16_5
.LBB16_10:                              # %for.end
	leaq	-112(%rbp), %rdi
	movslq	-16(%rbp), %rax
	movb	$0, -112(%rbp,%rax)
	callq	build_string
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	Fcategory_set_mnemonics, .Lfunc_end16-Fcategory_set_mnemonics
	.cfi_endproc

	.globl	Fmodify_category_entry
	.align	16, 0x90
	.type	Fmodify_category_entry,@function
Fmodify_category_entry:                 # @Fmodify_category_entry
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	andq	$7, %rcx
	movl	%ecx, %eax
	andl	$-5, %eax
	cmpl	$2, %eax
	jne	.LBB17_6
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB17_2
	jmp	.LBB17_4
.LBB17_2:                               # %land.lhs.true
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jg	.LBB17_4
# BB#3:                                 # %cond.true
	jmp	.LBB17_5
.LBB17_4:                               # %cond.false
	movl	$260, %edi              # imm = 0x104
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB17_5:                               # %cond.end
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -56(%rbp)
	movl	%ecx, -52(%rbp)
	jmp	.LBB17_19
.LBB17_6:                               # %if.else
	movq	-8(%rbp), %rdi
	callq	CHECK_CONS
# BB#7:                                 # %do.body
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB17_8
	jmp	.LBB17_10
.LBB17_8:                               # %land.lhs.true.11
	movq	-72(%rbp), %rax
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jg	.LBB17_10
# BB#9:                                 # %cond.true.15
	jmp	.LBB17_11
.LBB17_10:                              # %cond.false.16
	movl	$260, %edi              # imm = 0x104
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB17_11:                              # %cond.end.18
	jmp	.LBB17_12
.LBB17_12:                              # %do.end
	jmp	.LBB17_13
.LBB17_13:                              # %do.body.19
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB17_14
	jmp	.LBB17_16
.LBB17_14:                              # %land.lhs.true.25
	movq	-80(%rbp), %rax
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jg	.LBB17_16
# BB#15:                                # %cond.true.29
	jmp	.LBB17_17
.LBB17_16:                              # %cond.false.30
	movl	$260, %edi              # imm = 0x104
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB17_17:                              # %cond.end.32
	jmp	.LBB17_18
.LBB17_18:                              # %do.end.33
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -52(%rbp)
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -56(%rbp)
.LBB17_19:                              # %if.end
	movl	$32, %eax
	movl	%eax, %edi
	movl	$126, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rsi
	callq	RANGED_INTEGERP
	testb	$1, %al
	jne	.LBB17_20
	jmp	.LBB17_21
.LBB17_20:                              # %cond.true.45
	jmp	.LBB17_22
.LBB17_21:                              # %cond.false.46
	movl	$244, %edi
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB17_22:                              # %cond.end.48
	movq	-24(%rbp), %rdi
	callq	check_category_table
	movl	$2, %ecx
	movl	%ecx, %esi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	Fchar_table_extra_slot
	movq	-16(%rbp), %rsi
	sarq	$2, %rsi
	subq	$32, %rsi
	movq	%rax, %rdi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB17_24
# BB#23:                                # %if.then.57
	movabsq	$.L.str.2, %rdi
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, %esi
	movb	$0, %al
	callq	error
.LBB17_24:                              # %if.end.60
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	andb	$1, %dl
	movb	%dl, -33(%rbp)
.LBB17_25:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jg	.LBB17_29
# BB#26:                                # %while.body
                                        #   in Loop: Header=BB17_25 Depth=1
	leaq	-60(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	movl	-52(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-56(%rbp), %eax
	movl	%eax, -64(%rbp)
	movq	-24(%rbp), %rdi
	movl	-52(%rbp), %esi
	callq	char_table_ref_and_range
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	CATEGORY_MEMBER
	xorl	%edi, %edi
	andb	$1, %al
	movzbl	%al, %r8d
	movq	-32(%rbp), %rcx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	movl	%r8d, -140(%rbp)        # 4-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%r9b
	andb	$1, %r9b
	movzbl	%r9b, %edi
	movl	-140(%rbp), %r8d        # 4-byte Reload
	cmpl	%edi, %r8d
	je	.LBB17_28
# BB#27:                                # %if.then.75
                                        #   in Loop: Header=BB17_25 Depth=1
	movq	-48(%rbp), %rdi
	callq	Fcopy_sequence
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movb	-33(%rbp), %cl
	andb	$1, %cl
	movq	%rax, %rsi
	movzbl	%cl, %edx
	callq	set_category_set
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	hash_get_category_set
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rdi
	movl	-52(%rbp), %esi
	movl	-64(%rbp), %edx
	movq	-48(%rbp), %rcx
	callq	char_table_set_range
.LBB17_28:                              # %if.end.79
                                        #   in Loop: Header=BB17_25 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB17_25
.LBB17_29:                              # %while.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	Fmodify_category_entry, .Lfunc_end17-Fmodify_category_entry
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI18_0:
	.quad	4605380978949069210     # double 0.80000000000000004
.LCPI18_1:
	.quad	4609434218613702656     # double 1.5
	.text
	.align	16, 0x90
	.type	hash_get_category_set,@function
hash_get_category_set:                  # @hash_get_category_set
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
	subq	$160, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	XCHAR_TABLE
	xorl	%edi, %edi
	movq	560(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB18_2
# BB#1:                                 # %if.then
	movsd	.LCPI18_1, %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	make_float
	movsd	.LCPI18_0, %xmm0        # xmm0 = mem[0],zero
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	make_float
	xorl	%edi, %edi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$hashtest_equal, %rcx
	movl	$262, %edi              # imm = 0x106
	movl	%edi, %edx
	movq	hashtest_equal+32(%rip), %rsi
	movq	%rsp, %r8
	movq	%rsi, 32(%r8)
	movups	hashtest_equal+16(%rip), %xmm0
	movups	%xmm0, 16(%r8)
	movups	hashtest_equal(%rip), %xmm0
	movups	%xmm0, (%r8)
	movl	$262, %edi              # imm = 0x106
                                        # kill: RDI<def> EDI<kill>
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	-80(%rbp), %r8          # 8-byte Reload
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	movq	%r8, %rdx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	callq	make_hash_table
	movl	$1, %r9d
	movl	%r9d, %esi
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	set_char_table_extras
.LBB18_2:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	XCHAR_TABLE
	movq	560(%rax), %rdi
	callq	XHASH_TABLE
	leaq	-48(%rbp), %rdx
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	hash_lookup
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jl	.LBB18_4
# BB#3:                                 # %if.then.12
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	HASH_KEY
	movq	%rax, -8(%rbp)
	jmp	.LBB18_5
.LBB18_4:                               # %if.end.14
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	hash_put
	movq	-24(%rbp), %rcx
	movq	%rcx, -8(%rbp)
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB18_5:                               # %return
	movq	-8(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	hash_get_category_set, .Lfunc_end18-hash_get_category_set
	.cfi_endproc

	.globl	word_boundary_p
	.align	16, 0x90
	.type	word_boundary_p,@function
word_boundary_p:                        # @word_boundary_p
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
	subq	$96, %rsp
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	globals+216, %rdi
	movl	-8(%rbp), %esi
	callq	CHAR_TABLE_REF
	movq	globals+216, %rdi
	movl	-12(%rbp), %esi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	CHAR_TABLE_REF
	movq	-64(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	jne	.LBB19_2
# BB#1:                                 # %if.then
	movq	globals+2696, %rax
	movq	%rax, -40(%rbp)
	movb	$0, -41(%rbp)
	jmp	.LBB19_3
.LBB19_2:                               # %if.else
	movq	globals+2688, %rax
	movq	%rax, -40(%rbp)
	movb	$1, -41(%rbp)
.LBB19_3:                               # %if.end
	movl	-8(%rbp), %edi
	callq	char_category_set
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB19_5
# BB#4:                                 # %if.then.5
	movb	-41(%rbp), %al
	andb	$1, %al
	movb	%al, -1(%rbp)
	jmp	.LBB19_22
.LBB19_5:                               # %if.end.6
	movl	-12(%rbp), %edi
	callq	char_category_set
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB19_7
# BB#6:                                 # %if.then.10
	movb	-41(%rbp), %al
	andb	$1, %al
	movb	%al, -1(%rbp)
	jmp	.LBB19_22
.LBB19_7:                               # %if.end.12
	jmp	.LBB19_8
.LBB19_8:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB19_21
# BB#9:                                 # %for.body
                                        #   in Loop: Header=BB19_8 Depth=1
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB19_19
# BB#10:                                # %land.lhs.true
                                        #   in Loop: Header=BB19_8 Depth=1
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB19_14
# BB#11:                                # %lor.lhs.false
                                        #   in Loop: Header=BB19_8 Depth=1
	movl	$32, %eax
	movl	%eax, %edi
	movl	$126, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rsi
	callq	RANGED_INTEGERP
	testb	$1, %al
	jne	.LBB19_12
	jmp	.LBB19_19
.LBB19_12:                              # %land.lhs.true.28
                                        #   in Loop: Header=BB19_8 Depth=1
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	CATEGORY_MEMBER
	testb	$1, %al
	jne	.LBB19_13
	jmp	.LBB19_19
.LBB19_13:                              # %land.lhs.true.33
                                        #   in Loop: Header=BB19_8 Depth=1
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	CATEGORY_MEMBER
	testb	$1, %al
	jne	.LBB19_19
.LBB19_14:                              # %land.lhs.true.38
                                        #   in Loop: Header=BB19_8 Depth=1
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB19_18
# BB#15:                                # %lor.lhs.false.43
                                        #   in Loop: Header=BB19_8 Depth=1
	movl	$32, %eax
	movl	%eax, %edi
	movl	$126, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rsi
	callq	RANGED_INTEGERP
	testb	$1, %al
	jne	.LBB19_16
	jmp	.LBB19_19
.LBB19_16:                              # %land.lhs.true.49
                                        #   in Loop: Header=BB19_8 Depth=1
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	sarq	$2, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	CATEGORY_MEMBER
	testb	$1, %al
	jne	.LBB19_19
# BB#17:                                # %land.lhs.true.55
                                        #   in Loop: Header=BB19_8 Depth=1
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	sarq	$2, %rax
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	CATEGORY_MEMBER
	testb	$1, %al
	jne	.LBB19_18
	jmp	.LBB19_19
.LBB19_18:                              # %if.then.62
	movb	-41(%rbp), %al
	xorb	$-1, %al
	andb	$1, %al
	movb	%al, -1(%rbp)
	jmp	.LBB19_22
.LBB19_19:                              # %if.end.64
                                        #   in Loop: Header=BB19_8 Depth=1
	jmp	.LBB19_20
.LBB19_20:                              # %for.inc
                                        #   in Loop: Header=BB19_8 Depth=1
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB19_8
.LBB19_21:                              # %for.end
	movb	-41(%rbp), %al
	andb	$1, %al
	movb	%al, -1(%rbp)
.LBB19_22:                              # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	word_boundary_p, .Lfunc_end19-word_boundary_p
	.cfi_endproc

	.globl	init_category_once
	.align	16, 0x90
	.type	init_category_once,@function
init_category_once:                     # @init_category_once
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
	movl	$242, %edi
	callq	builtin_lisp_symbol
	movl	$258, %edi              # imm = 0x102
	movq	%rax, -8(%rbp)          # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$10, %edi
	movl	%edi, %edx
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movq	%rax, %rsi
	callq	Fput
	movl	$242, %edi
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fmake_char_table
	xorl	%edi, %edi
	movq	%rax, buffer_defaults+136
	movq	buffer_defaults+136, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$514, %edi              # imm = 0x202
                                        # kill: RDI<def> EDI<kill>
	movq	%rax, %rsi
	callq	Fmake_bool_vector
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	set_char_table_defalt
	xorl	%edi, %edi
	movq	buffer_defaults+136, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$382, %edi              # imm = 0x17E
                                        # kill: RDI<def> EDI<kill>
	movq	%rax, %rsi
	callq	Fmake_vector
	movl	$2, %ecx
	movl	%ecx, %esi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	Fset_char_table_extra_slot
	movq	%rax, -48(%rbp)         # 8-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	init_category_once, .Lfunc_end20-init_category_once
	.cfi_endproc

	.globl	syms_of_category
	.align	16, 0x90
	.type	syms_of_category,@function
syms_of_category:                       # @syms_of_category
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
	jmp	.LBB21_1
.LBB21_1:                               # %do.body
	movabsq	$syms_of_category.o_fwd, %rdi
	movabsq	$.L.str.3, %rsi
	movabsq	$globals, %rax
	addq	$2688, %rax             # imm = 0xA80
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#2:                                 # %do.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+2688
# BB#3:                                 # %do.body.1
	movabsq	$syms_of_category.o_fwd.4, %rdi
	movabsq	$.L.str.5, %rsi
	movabsq	$globals, %rax
	addq	$2696, %rax             # imm = 0xA88
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#4:                                 # %do.end.2
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$Smake_category_set, %rcx
	movq	%rax, globals+2696
	movq	%rcx, %rdi
	callq	defsubr
	movabsq	$Sdefine_category, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Scategory_docstring, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sget_unused_category, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Scategory_table_p, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Scategory_table, %rdi
	callq	defsubr
	movabsq	$Sstandard_category_table, %rdi
	callq	defsubr
	movabsq	$Scopy_category_table, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Smake_category_table, %rdi
	callq	defsubr
	movabsq	$Sset_category_table, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Schar_category_set, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Scategory_set_mnemonics, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Smodify_category_entry, %rax
	movq	%rax, %rdi
	callq	defsubr
	movl	$0, category_table_version
	popq	%rbp
	retq
.Lfunc_end21:
	.size	syms_of_category, .Lfunc_end21-syms_of_category
	.cfi_endproc

	.align	16, 0x90
	.type	copy_category_entry,@function
copy_category_entry:                    # @copy_category_entry
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	Fcopy_sequence
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB22_2
# BB#1:                                 # %if.then
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
	jmp	.LBB22_3
.LBB22_2:                               # %if.else
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movl	%ecx, %esi
	callq	char_table_set
.LBB22_3:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	copy_category_entry, .Lfunc_end22-copy_category_entry
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Multibyte string in `make-category-set'"
	.size	.L.str, 40

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Category `%c' is already defined"
	.size	.L.str.1, 33

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Undefined category: %c"
	.size	.L.str.2, 23

	.type	syms_of_category.o_fwd,@object # @syms_of_category.o_fwd
	.local	syms_of_category.o_fwd
	.comm	syms_of_category.o_fwd,16,8
	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"word-combining-categories"
	.size	.L.str.3, 26

	.type	syms_of_category.o_fwd.4,@object # @syms_of_category.o_fwd.4
	.local	syms_of_category.o_fwd.4
	.comm	syms_of_category.o_fwd.4,16,8
	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"word-separating-categories"
	.size	.L.str.5, 27

	.type	Scategory_table,@object # @Scategory_table
	.data
	.align	8
Scategory_table:
	.quad	167772160               # 0xa000000
	.quad	Fcategory_table
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.11
	.quad	0
	.quad	0
	.size	Scategory_table, 48

	.type	Sstandard_category_table,@object # @Sstandard_category_table
	.align	8
Sstandard_category_table:
	.quad	167772160               # 0xa000000
	.quad	Fstandard_category_table
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.12
	.quad	0
	.quad	0
	.size	Sstandard_category_table, 48

	.type	Smake_category_table,@object # @Smake_category_table
	.align	8
Smake_category_table:
	.quad	167772160               # 0xa000000
	.quad	Fmake_category_table
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.14
	.quad	0
	.quad	0
	.size	Smake_category_table, 48

	.type	category_table_version,@object # @category_table_version
	.local	category_table_version
	.comm	category_table_version,4,4
	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"make-category-set"
	.size	.L.str.6, 18

	.type	Smake_category_set,@object # @Smake_category_set
	.data
	.align	8
Smake_category_set:
	.quad	167772160               # 0xa000000
	.quad	Fmake_category_set
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.6
	.quad	0
	.quad	0
	.size	Smake_category_set, 48

	.type	.L.str.7,@object        # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"define-category"
	.size	.L.str.7, 16

	.type	Sdefine_category,@object # @Sdefine_category
	.data
	.align	8
Sdefine_category:
	.quad	167772160               # 0xa000000
	.quad	Fdefine_category
	.short	2                       # 0x2
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.7
	.quad	0
	.quad	0
	.size	Sdefine_category, 48

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"category-docstring"
	.size	.L.str.8, 19

	.type	Scategory_docstring,@object # @Scategory_docstring
	.data
	.align	8
Scategory_docstring:
	.quad	167772160               # 0xa000000
	.quad	Fcategory_docstring
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.8
	.quad	0
	.quad	0
	.size	Scategory_docstring, 48

	.type	.L.str.9,@object        # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"get-unused-category"
	.size	.L.str.9, 20

	.type	Sget_unused_category,@object # @Sget_unused_category
	.data
	.align	8
Sget_unused_category:
	.quad	167772160               # 0xa000000
	.quad	Fget_unused_category
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.9
	.quad	0
	.quad	0
	.size	Sget_unused_category, 48

	.type	.L.str.10,@object       # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"category-table-p"
	.size	.L.str.10, 17

	.type	Scategory_table_p,@object # @Scategory_table_p
	.data
	.align	8
Scategory_table_p:
	.quad	167772160               # 0xa000000
	.quad	Fcategory_table_p
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.10
	.quad	0
	.quad	0
	.size	Scategory_table_p, 48

	.type	.L.str.11,@object       # @.str.11
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.11:
	.asciz	"category-table"
	.size	.L.str.11, 15

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"standard-category-table"
	.size	.L.str.12, 24

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"copy-category-table"
	.size	.L.str.13, 20

	.type	Scopy_category_table,@object # @Scopy_category_table
	.data
	.align	8
Scopy_category_table:
	.quad	167772160               # 0xa000000
	.quad	Fcopy_category_table
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.13
	.quad	0
	.quad	0
	.size	Scopy_category_table, 48

	.type	.L.str.14,@object       # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"make-category-table"
	.size	.L.str.14, 20

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"set-category-table"
	.size	.L.str.15, 19

	.type	Sset_category_table,@object # @Sset_category_table
	.data
	.align	8
Sset_category_table:
	.quad	167772160               # 0xa000000
	.quad	Fset_category_table
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.15
	.quad	0
	.quad	0
	.size	Sset_category_table, 48

	.type	.L.str.16,@object       # @.str.16
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.16:
	.asciz	"char-category-set"
	.size	.L.str.16, 18

	.type	Schar_category_set,@object # @Schar_category_set
	.data
	.align	8
Schar_category_set:
	.quad	167772160               # 0xa000000
	.quad	Fchar_category_set
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.16
	.quad	0
	.quad	0
	.size	Schar_category_set, 48

	.type	.L.str.17,@object       # @.str.17
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.17:
	.asciz	"category-set-mnemonics"
	.size	.L.str.17, 23

	.type	Scategory_set_mnemonics,@object # @Scategory_set_mnemonics
	.data
	.align	8
Scategory_set_mnemonics:
	.quad	167772160               # 0xa000000
	.quad	Fcategory_set_mnemonics
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.17
	.quad	0
	.quad	0
	.size	Scategory_set_mnemonics, 48

	.type	.L.str.18,@object       # @.str.18
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.18:
	.asciz	"modify-category-entry"
	.size	.L.str.18, 22

	.type	Smodify_category_entry,@object # @Smodify_category_entry
	.data
	.align	8
Smodify_category_entry:
	.quad	167772160               # 0xa000000
	.quad	Fmodify_category_entry
	.short	2                       # 0x2
	.short	4                       # 0x4
	.zero	4
	.quad	.L.str.18
	.quad	0
	.quad	0
	.size	Smodify_category_entry, 48


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
