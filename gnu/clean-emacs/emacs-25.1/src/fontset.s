	.text
	.file	"fontset.bc"
	.globl	fontset_name
	.align	16, 0x90
	.type	fontset_name,@function
fontset_name:                           # @fontset_name
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
	movq	Vfontset_table, %rdi
	movslq	-4(%rbp), %rsi
	callq	AREF
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	XCHAR_TABLE
	movq	560(%rax), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	fontset_name, .Lfunc_end0-fontset_name
	.cfi_endproc

	.globl	fontset_ascii
	.align	16, 0x90
	.type	fontset_ascii,@function
fontset_ascii:                          # @fontset_ascii
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
	movl	%edi, -4(%rbp)
	movq	Vfontset_table, %rdi
	movslq	-4(%rbp), %rsi
	callq	AREF
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	XCHAR_TABLE
	movq	568(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB1_2:                                # %if.end
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	fontset_ascii, .Lfunc_end1-fontset_ascii
	.cfi_endproc

	.globl	free_face_fontset
	.align	16, 0x90
	.type	free_face_fontset,@function
free_face_fontset:                      # @free_face_fontset
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	Vfontset_table, %rdi
	movq	-16(%rbp), %rsi
	movslq	232(%rsi), %rsi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB2_2
# BB#1:                                 # %if.then
	jmp	.LBB2_9
.LBB2_2:                                # %if.end
	xorl	%edi, %edi
	movq	Vfontset_table, %rax
	movq	-16(%rbp), %rcx
	movslq	232(%rcx), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	movq	-16(%rbp), %rax
	movl	232(%rax), %r8d
	cmpl	next_fontset_id, %r8d
	jge	.LBB2_4
# BB#3:                                 # %if.then.10
	movq	-16(%rbp), %rax
	movl	232(%rax), %ecx
	movl	%ecx, next_fontset_id
.LBB2_4:                                # %if.end.12
	movq	-24(%rbp), %rdi
	callq	XCHAR_TABLE
	xorl	%edi, %edi
	movq	600(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB2_8
# BB#5:                                 # %if.then.17
	movq	-24(%rbp), %rdi
	callq	XCHAR_TABLE
	movq	600(%rax), %rdi
	callq	XCHAR_TABLE
	movq	552(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -28(%rbp)
	movq	Vfontset_table, %rdi
	movslq	-28(%rbp), %rsi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)
	movq	Vfontset_table, %rax
	movslq	-28(%rbp), %rsi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	movl	-28(%rbp), %ecx
	cmpl	next_fontset_id, %ecx
	jge	.LBB2_7
# BB#6:                                 # %if.then.31
	movq	-16(%rbp), %rax
	movl	232(%rax), %ecx
	movl	%ecx, next_fontset_id
.LBB2_7:                                # %if.end.33
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.34
	movq	-16(%rbp), %rax
	movl	$-1, 232(%rax)
.LBB2_9:                                # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	free_face_fontset, .Lfunc_end2-free_face_fontset
	.cfi_endproc

	.globl	face_for_char
	.align	16, 0x90
	.type	face_for_char,@function
face_for_char:                          # @face_for_char
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
	subq	$144, %rsp
	movb	$1, %al
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	testb	$1, %al
	jne	.LBB3_1
	jmp	.LBB3_2
.LBB3_1:                                # %cond.true
	movl	-28(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB3_4
	jmp	.LBB3_3
.LBB3_2:                                # %cond.false
	movslq	-28(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jb	.LBB3_4
.LBB3_3:                                # %lor.lhs.false
	cmpl	$4194175, -28(%rbp)     # imm = 0x3FFF7F
	jle	.LBB3_5
.LBB3_4:                                # %if.then
	movq	-24(%rbp), %rax
	movq	264(%rax), %rax
	movl	152(%rax), %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB3_31
.LBB3_5:                                # %if.end
	cmpl	$0, -28(%rbp)
	jle	.LBB3_12
# BB#6:                                 # %land.lhs.true
	movq	globals+216, %rdi
	movl	-28(%rbp), %esi
	callq	CHAR_TABLE_REF
	movl	$896, %edi              # imm = 0x380
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB3_12
# BB#7:                                 # %if.then.12
	movq	-24(%rbp), %rax
	movq	264(%rax), %rax
	cmpq	$0, 224(%rax)
	je	.LBB3_11
# BB#8:                                 # %if.then.14
	movl	$5, %esi
	movq	-24(%rbp), %rax
	movq	264(%rax), %rax
	movq	224(%rax), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -88(%rbp)
	movq	-16(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movl	-28(%rbp), %edx
	callq	font_has_char
	cmpl	$0, %eax
	je	.LBB3_10
# BB#9:                                 # %if.then.20
	movq	-24(%rbp), %rax
	movq	264(%rax), %rax
	movl	152(%rax), %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB3_31
.LBB3_10:                               # %if.end.23
	jmp	.LBB3_11
.LBB3_11:                               # %if.end.24
	jmp	.LBB3_12
.LBB3_12:                               # %if.end.25
	movq	Vfontset_table, %rdi
	movq	-24(%rbp), %rax
	movslq	232(%rax), %rsi
	callq	AREF
	movq	%rax, -56(%rbp)
	cmpq	$0, -40(%rbp)
	jge	.LBB3_14
# BB#13:                                # %if.then.31
	xorl	%edi, %edi
	movl	$-1, -80(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -72(%rbp)
	jmp	.LBB3_21
.LBB3_14:                               # %if.else
	movl	$261, %edi              # imm = 0x105
	movq	-40(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rdx
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget_char_property
	movq	%rax, -72(%rbp)
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	hash_lookup
	cmpq	$0, %rax
	jl	.LBB3_19
# BB#15:                                # %if.then.40
	movq	-72(%rbp), %rdi
	movq	globals+824, %rsi
	callq	assq_no_quit
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB3_18
# BB#16:                                # %land.lhs.true.45
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-96(%rbp), %rdi
	subq	$3, %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	hash_lookup
	cmpq	$0, %rax
	jl	.LBB3_18
# BB#17:                                # %if.then.50
	movq	-96(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
.LBB3_18:                               # %if.end.54
	xorl	%edi, %edi
	movq	-72(%rbp), %rax
	movq	Vcharset_hash_table, %rsi
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fgethash
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -80(%rbp)
	jmp	.LBB3_20
.LBB3_19:                               # %if.else.59
	movl	$-1, -80(%rbp)
.LBB3_20:                               # %if.end.60
	jmp	.LBB3_21
.LBB3_21:                               # %if.end.61
	movq	-56(%rbp), %rdi
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rdx
	movl	-80(%rbp), %ecx
	callq	fontset_font
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB3_22
	jmp	.LBB3_26
.LBB3_22:                               # %if.then.64
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-64(%rbp), %rdi
	callq	AREF
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB3_24
# BB#23:                                # %if.then.71
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-64(%rbp), %rdi
	callq	AREF
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -76(%rbp)
	jmp	.LBB3_25
.LBB3_24:                               # %if.else.75
	movl	$2, %eax
	movl	%eax, %esi
	movq	-64(%rbp), %rdi
	callq	AREF
	movq	%rax, -104(%rbp)
	movq	-16(%rbp), %rdi
	movq	-104(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	face_for_font
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	%eax, -76(%rbp)
	movq	-64(%rbp), %rdi
	movslq	-76(%rbp), %rdx
	shlq	$2, %rdx
	addq	$2, %rdx
	callq	ASET
.LBB3_25:                               # %if.end.82
	jmp	.LBB3_30
.LBB3_26:                               # %if.else.83
	movq	-56(%rbp), %rdi
	callq	XCHAR_TABLE
	movq	592(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB3_28
# BB#27:                                # %if.then.90
	movq	-56(%rbp), %rdi
	callq	XCHAR_TABLE
	movq	592(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -76(%rbp)
	jmp	.LBB3_29
.LBB3_28:                               # %if.else.96
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rdx
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	face_for_font
	movl	%eax, -76(%rbp)
	movq	-56(%rbp), %rdi
	movslq	-76(%rbp), %rdx
	shlq	$2, %rdx
	addq	$2, %rdx
	movq	%rdx, %rsi
	callq	set_fontset_nofont_face
.LBB3_29:                               # %if.end.102
	jmp	.LBB3_30
.LBB3_30:                               # %if.end.103
	movl	-76(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB3_31:                               # %return
	movl	-4(%rbp), %eax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	face_for_char, .Lfunc_end3-face_for_char
	.cfi_endproc

	.align	16, 0x90
	.type	fontset_font,@function
fontset_font:                           # @fontset_font
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
	subq	$256, %rsp              # imm = 0x100
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
# BB#1:                                 # %do.body
	movl	$901, %edi              # imm = 0x385
	movq	globals+832, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB4_3
# BB#2:                                 # %if.then
	xorl	%edi, %edi
	movslq	-20(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.27, %rdi
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	font_deferred_log
.LBB4_3:                                # %if.end
	jmp	.LBB4_4
.LBB4_4:                                # %do.end
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movq	-32(%rbp), %rdx
	movl	-36(%rbp), %ecx
	callq	fontset_find_font
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB4_5
	jmp	.LBB4_6
.LBB4_5:                                # %if.then.4
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB4_38
.LBB4_6:                                # %if.end.5
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB4_8
# BB#7:                                 # %if.then.9
	movl	$2, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	movslq	-20(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, %rsi
	callq	Fset_char_table_range
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB4_8:                                # %if.end.14
	movq	-16(%rbp), %rdi
	callq	XCHAR_TABLE
	movq	576(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpq	Vdefault_fontset, %rax
	je	.LBB4_20
# BB#9:                                 # %if.then.18
	movq	-16(%rbp), %rdi
	callq	XCHAR_TABLE
	xorl	%edi, %edi
	movq	600(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB4_11
# BB#10:                                # %if.then.25
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	XCHAR_TABLE
	xorl	%edi, %edi
	movq	584(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	Vdefault_fontset, %rdx
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	make_fontset
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	set_fontset_default
.LBB4_11:                               # %if.end.31
	jmp	.LBB4_12
.LBB4_12:                               # %do.body.32
	movl	$901, %edi              # imm = 0x385
	movq	globals+832, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB4_14
# BB#13:                                # %if.then.36
	xorl	%edi, %edi
	movslq	-20(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.28, %rdi
	movq	-136(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	font_deferred_log
.LBB4_14:                               # %if.end.41
	jmp	.LBB4_15
.LBB4_15:                               # %do.end.42
	movq	-16(%rbp), %rdi
	callq	XCHAR_TABLE
	xorl	%r8d, %r8d
	movq	600(%rax), %rdi
	movl	-20(%rbp), %esi
	movq	-32(%rbp), %rdx
	movl	-36(%rbp), %ecx
	callq	fontset_find_font
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB4_16
	jmp	.LBB4_17
.LBB4_16:                               # %if.then.48
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB4_38
.LBB4_17:                               # %if.end.49
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB4_19
# BB#18:                                # %if.then.53
	movq	-16(%rbp), %rdi
	callq	XCHAR_TABLE
	movl	$2, %ecx
	movl	%ecx, %edx
	movq	600(%rax), %rdi
	movslq	-20(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rsi
	callq	Fset_char_table_range
	movq	%rax, -152(%rbp)        # 8-byte Spill
.LBB4_19:                               # %if.end.61
	jmp	.LBB4_20
.LBB4_20:                               # %if.end.62
	movl	$901, %edi              # imm = 0x385
	movq	-48(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB4_28
# BB#21:                                # %if.then.66
	jmp	.LBB4_22
.LBB4_22:                               # %do.body.67
	movl	$901, %edi              # imm = 0x385
	movq	globals+832, %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB4_24
# BB#23:                                # %if.then.71
	xorl	%edi, %edi
	movslq	-20(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.29, %rdi
	movq	-176(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	font_deferred_log
.LBB4_24:                               # %if.end.76
	jmp	.LBB4_25
.LBB4_25:                               # %do.end.77
	movl	$1, %r8d
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movq	-32(%rbp), %rdx
	movl	-36(%rbp), %ecx
	callq	fontset_find_font
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB4_26
	jmp	.LBB4_27
.LBB4_26:                               # %if.then.80
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB4_38
.LBB4_27:                               # %if.end.81
	movl	$901, %edi              # imm = 0x385
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	-184(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fset_char_table_range
	movq	%rax, -200(%rbp)        # 8-byte Spill
.LBB4_28:                               # %if.end.87
	movq	-64(%rbp), %rax
	cmpq	Vdefault_fontset, %rax
	je	.LBB4_37
# BB#29:                                # %land.lhs.true
	movl	$901, %edi              # imm = 0x385
	movq	-56(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB4_37
# BB#30:                                # %if.then.93
	jmp	.LBB4_31
.LBB4_31:                               # %do.body.94
	movl	$901, %edi              # imm = 0x385
	movq	globals+832, %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB4_33
# BB#32:                                # %if.then.98
	xorl	%edi, %edi
	movslq	-20(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.30, %rdi
	movq	-224(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	font_deferred_log
.LBB4_33:                               # %if.end.103
	jmp	.LBB4_34
.LBB4_34:                               # %do.end.104
	movq	-16(%rbp), %rdi
	callq	XCHAR_TABLE
	movl	$1, %r8d
	movq	600(%rax), %rdi
	movl	-20(%rbp), %esi
	movq	-32(%rbp), %rdx
	movl	-36(%rbp), %ecx
	callq	fontset_find_font
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB4_35
	jmp	.LBB4_36
.LBB4_35:                               # %if.then.110
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB4_38
.LBB4_36:                               # %if.end.111
	movq	-16(%rbp), %rdi
	callq	XCHAR_TABLE
	movl	$901, %edi              # imm = 0x385
	movq	600(%rax), %rax
	movslq	-20(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	-232(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fset_char_table_range
	movq	%rax, -248(%rbp)        # 8-byte Spill
.LBB4_37:                               # %if.end.120
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB4_38:                               # %return
	movq	-8(%rbp), %rax
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end4:
	.size	fontset_font, .Lfunc_end4-fontset_font
	.cfi_endproc

	.align	16, 0x90
	.type	set_fontset_nofont_face,@function
set_fontset_nofont_face:                # @set_fontset_nofont_face
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
	movl	$5, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	%rcx, %rsi
	callq	set_char_table_extras
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	set_fontset_nofont_face, .Lfunc_end5-set_fontset_nofont_face
	.cfi_endproc

	.globl	font_for_char
	.align	16, 0x90
	.type	font_for_char,@function
font_for_char:                          # @font_for_char
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
	subq	$128, %rsp
	movb	$1, %al
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	testb	$1, %al
	jne	.LBB6_1
	jmp	.LBB6_2
.LBB6_1:                                # %cond.true
	movl	-20(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB6_3
	jmp	.LBB6_4
.LBB6_2:                                # %cond.false
	movslq	-20(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB6_4
.LBB6_3:                                # %if.then
	movl	$5, %esi
	movq	-16(%rbp), %rax
	movq	264(%rax), %rax
	movq	224(%rax), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB6_17
.LBB6_4:                                # %if.end
	movq	Vfontset_table, %rdi
	movq	-16(%rbp), %rax
	movslq	232(%rax), %rsi
	callq	AREF
	movq	%rax, -48(%rbp)
	cmpq	$0, -32(%rbp)
	jge	.LBB6_6
# BB#5:                                 # %if.then.9
	xorl	%edi, %edi
	movl	$-1, -68(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -64(%rbp)
	jmp	.LBB6_13
.LBB6_6:                                # %if.else
	movl	$261, %edi              # imm = 0x105
	movq	-32(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rdx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget_char_property
	movq	%rax, -64(%rbp)
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	hash_lookup
	cmpq	$0, %rax
	jl	.LBB6_11
# BB#7:                                 # %if.then.18
	movq	-64(%rbp), %rdi
	movq	globals+824, %rsi
	callq	assq_no_quit
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB6_10
# BB#8:                                 # %land.lhs.true
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-88(%rbp), %rdi
	subq	$3, %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	hash_lookup
	cmpq	$0, %rax
	jl	.LBB6_10
# BB#9:                                 # %if.then.27
	movq	-88(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
.LBB6_10:                               # %if.end.31
	xorl	%edi, %edi
	movq	-64(%rbp), %rax
	movq	Vcharset_hash_table, %rsi
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fgethash
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -68(%rbp)
	jmp	.LBB6_12
.LBB6_11:                               # %if.else.36
	movl	$-1, -68(%rbp)
.LBB6_12:                               # %if.end.37
	jmp	.LBB6_13
.LBB6_13:                               # %if.end.38
	movq	-48(%rbp), %rdi
	movl	-20(%rbp), %esi
	movq	-16(%rbp), %rdx
	movl	-68(%rbp), %ecx
	callq	fontset_font
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB6_14
	jmp	.LBB6_15
.LBB6_14:                               # %cond.true.42
	movl	$2, %eax
	movl	%eax, %esi
	movq	-56(%rbp), %rdi
	callq	AREF
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB6_16
.LBB6_15:                               # %cond.false.44
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB6_16:                               # %cond.end
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, -8(%rbp)
.LBB6_17:                               # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	font_for_char, .Lfunc_end6-font_for_char
	.cfi_endproc

	.globl	make_fontset_for_ascii_face
	.align	16, 0x90
	.type	make_fontset_for_ascii_face,@function
make_fontset_for_ascii_face:            # @make_fontset_for_ascii_face
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
	movl	$5, %eax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, %rdi
	movl	%eax, %esi
	callq	make_lisp_ptr
	movq	%rax, -48(%rbp)
	cmpl	$0, -12(%rbp)
	jl	.LBB7_4
# BB#1:                                 # %if.then
	movq	Vfontset_table, %rdi
	movslq	-12(%rbp), %rsi
	callq	AREF
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	XCHAR_TABLE
	xorl	%edi, %edi
	movq	576(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB7_3
# BB#2:                                 # %if.then.6
	movq	-32(%rbp), %rdi
	callq	XCHAR_TABLE
	movq	576(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB7_3:                                # %if.end
	jmp	.LBB7_5
.LBB7_4:                                # %if.else
	movq	Vdefault_fontset, %rax
	movq	%rax, -32(%rbp)
.LBB7_5:                                # %if.end.10
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rdx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	make_fontset
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	XCHAR_TABLE
	movq	552(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	make_fontset_for_ascii_face, .Lfunc_end7-make_fontset_for_ascii_face
	.cfi_endproc

	.align	16, 0x90
	.type	make_fontset,@function
make_fontset:                           # @make_fontset
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	Vfontset_table, %rdi
	callq	ASIZE
	movl	%eax, %ecx
	movl	%ecx, -36(%rbp)
	movl	next_fontset_id, %ecx
	movl	%ecx, -40(%rbp)
.LBB8_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	Vfontset_table, %rdi
	movslq	-40(%rbp), %rsi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%cl
	xorb	$-1, %cl
	testb	$1, %cl
	jne	.LBB8_2
	jmp	.LBB8_3
.LBB8_2:                                # %while.body
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB8_1
.LBB8_3:                                # %while.end
	movl	-40(%rbp), %eax
	addl	$1, %eax
	cmpl	-36(%rbp), %eax
	jne	.LBB8_5
# BB#4:                                 # %if.then
	movl	$1, %eax
	movl	%eax, %esi
	movq	$-1, %rdx
	movq	Vfontset_table, %rdi
	callq	larger_vector
	movq	%rax, Vfontset_table
.LBB8_5:                                # %if.end
	movl	$449, %edi              # imm = 0x1C1
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fmake_char_table
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movslq	-40(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rsi
	callq	set_fontset_id
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB8_7
# BB#6:                                 # %if.then.16
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	set_fontset_name
	jmp	.LBB8_8
.LBB8_7:                                # %if.else
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	set_fontset_name
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	set_fontset_frame
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	set_fontset_base
.LBB8_8:                                # %if.end.18
	movq	Vfontset_table, %rdi
	movslq	-40(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	ASET
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, next_fontset_id
	movq	-32(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	make_fontset, .Lfunc_end8-make_fontset
	.cfi_endproc

	.globl	fs_query_fontset
	.align	16, 0x90
	.type	fs_query_fontset,@function
fs_query_fontset:                       # @fs_query_fontset
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	-16(%rbp), %rdi
	callq	Fdowncase
	movq	%rax, -16(%rbp)
	cmpl	$1, -20(%rbp)
	je	.LBB9_12
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	globals+872, %rsi
	callq	Frassoc
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB9_3
# BB#2:                                 # %if.then.4
	movq	-16(%rbp), %rdi
	movq	globals+872, %rsi
	callq	Fassoc
	movq	%rax, -32(%rbp)
.LBB9_3:                                # %if.end
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB9_5
	jmp	.LBB9_6
.LBB9_5:                                # %if.then.10
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB9_11
.LBB9_6:                                # %if.else
	cmpl	$0, -20(%rbp)
	jne	.LBB9_10
# BB#7:                                 # %if.then.15
	movq	-16(%rbp), %rdi
	callq	fontset_pattern_regexp
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB9_8
	jmp	.LBB9_9
.LBB9_8:                                # %if.then.18
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	$1, -20(%rbp)
.LBB9_9:                                # %if.end.19
	jmp	.LBB9_10
.LBB9_10:                               # %if.end.20
	jmp	.LBB9_11
.LBB9_11:                               # %if.end.21
	jmp	.LBB9_12
.LBB9_12:                               # %if.end.22
	movl	$0, -36(%rbp)
.LBB9_13:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-36(%rbp), %rax
	movq	Vfontset_table, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	ASIZE
	movq	-72(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	jge	.LBB9_23
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB9_13 Depth=1
	movq	Vfontset_table, %rdi
	movslq	-36(%rbp), %rsi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB9_16
# BB#15:                                # %lor.lhs.false
                                        #   in Loop: Header=BB9_13 Depth=1
	movq	-48(%rbp), %rdi
	callq	XCHAR_TABLE
	xorl	%edi, %edi
	movq	576(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB9_17
.LBB9_16:                               # %if.then.36
                                        #   in Loop: Header=BB9_13 Depth=1
	jmp	.LBB9_22
.LBB9_17:                               # %if.end.37
                                        #   in Loop: Header=BB9_13 Depth=1
	movq	-48(%rbp), %rdi
	callq	XCHAR_TABLE
	movq	560(%rax), %rax
	movq	%rax, -56(%rbp)
	cmpl	$1, -20(%rbp)
	jne	.LBB9_19
# BB#18:                                # %cond.true
                                        #   in Loop: Header=BB9_13 Depth=1
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	fast_string_match_ignore_case
	cmpq	$0, %rax
	jge	.LBB9_20
	jmp	.LBB9_21
.LBB9_19:                               # %cond.false
                                        #   in Loop: Header=BB9_13 Depth=1
	movq	-16(%rbp), %rdi
	callq	SSDATA
	movq	-56(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	SSDATA
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	xstrcasecmp
	cmpl	$0, %eax
	jne	.LBB9_21
.LBB9_20:                               # %if.then.49
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB9_24
.LBB9_21:                               # %if.end.50
                                        #   in Loop: Header=BB9_13 Depth=1
	jmp	.LBB9_22
.LBB9_22:                               # %for.inc
                                        #   in Loop: Header=BB9_13 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB9_13
.LBB9_23:                               # %for.end
	movl	$-1, -4(%rbp)
.LBB9_24:                               # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	fs_query_fontset, .Lfunc_end9-fs_query_fontset
	.cfi_endproc

	.align	16, 0x90
	.type	fontset_pattern_regexp,@function
fontset_pattern_regexp:                 # @fontset_pattern_regexp
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
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	SSDATA
	movl	$42, %esi
	movq	%rax, %rdi
	callq	strchr
	cmpq	$0, %rax
	jne	.LBB10_3
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	SSDATA
	movl	$63, %esi
	movq	%rax, %rdi
	callq	strchr
	cmpq	$0, %rax
	jne	.LBB10_3
# BB#2:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB10_52
.LBB10_3:                               # %if.end
	movq	Vcached_fontset_data, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB10_5
# BB#4:                                 # %lor.lhs.false
	movq	-16(%rbp), %rdi
	callq	SSDATA
	movq	Vcached_fontset_data, %rdi
	subq	$3, %rdi
	movq	(%rdi), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	SSDATA
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB10_51
.LBB10_5:                               # %if.then.11
	movl	$0, -44(%rbp)
	movl	$0, -48(%rbp)
	movl	$0, -52(%rbp)
	movq	-16(%rbp), %rdi
	callq	SDATA
	movq	%rax, -32(%rbp)
.LBB10_6:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB10_22
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB10_6 Depth=1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$45, %ecx
	jne	.LBB10_9
# BB#8:                                 # %if.then.17
                                        #   in Loop: Header=BB10_6 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB10_20
.LBB10_9:                               # %if.else
                                        #   in Loop: Header=BB10_6 Depth=1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$42, %ecx
	jne	.LBB10_11
# BB#10:                                # %if.then.21
                                        #   in Loop: Header=BB10_6 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB10_19
.LBB10_11:                              # %if.else.23
                                        #   in Loop: Header=BB10_6 Depth=1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$91, %ecx
	je	.LBB10_17
# BB#12:                                # %lor.lhs.false.27
                                        #   in Loop: Header=BB10_6 Depth=1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$46, %ecx
	je	.LBB10_17
# BB#13:                                # %lor.lhs.false.31
                                        #   in Loop: Header=BB10_6 Depth=1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$92, %ecx
	je	.LBB10_17
# BB#14:                                # %lor.lhs.false.35
                                        #   in Loop: Header=BB10_6 Depth=1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$43, %ecx
	je	.LBB10_17
# BB#15:                                # %lor.lhs.false.39
                                        #   in Loop: Header=BB10_6 Depth=1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$94, %ecx
	je	.LBB10_17
# BB#16:                                # %lor.lhs.false.43
                                        #   in Loop: Header=BB10_6 Depth=1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$36, %ecx
	jne	.LBB10_18
.LBB10_17:                              # %if.then.47
                                        #   in Loop: Header=BB10_6 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
.LBB10_18:                              # %if.end.49
                                        #   in Loop: Header=BB10_6 Depth=1
	jmp	.LBB10_19
.LBB10_19:                              # %if.end.50
                                        #   in Loop: Header=BB10_6 Depth=1
	jmp	.LBB10_20
.LBB10_20:                              # %if.end.51
                                        #   in Loop: Header=BB10_6 Depth=1
	jmp	.LBB10_21
.LBB10_21:                              # %for.inc
                                        #   in Loop: Header=BB10_6 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB10_6
.LBB10_22:                              # %for.end
	movq	-16(%rbp), %rdi
	callq	SBYTES
	movl	$5, %ecx
	movl	$2, %edx
	cmpl	$14, -44(%rbp)
	cmovll	%edx, %ecx
	imull	-48(%rbp), %ecx
	movslq	%ecx, %rdi
	addq	%rdi, %rax
	movl	-52(%rbp), %ecx
	shll	$1, %ecx
	movslq	%ecx, %rdi
	addq	%rdi, %rax
	addq	$3, %rax
	movq	%rax, -64(%rbp)
	movq	$16384, -72(%rbp)       # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -80(%rbp)
	movb	$0, -81(%rbp)
	movq	-64(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jg	.LBB10_24
# BB#23:                                # %cond.true
	movq	-64(%rbp), %rax
	movq	-72(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -72(%rbp)
	movq	-64(%rbp), %rax
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB10_25
.LBB10_24:                              # %cond.false
	movb	$1, -81(%rbp)
	movq	-64(%rbp), %rdi
	callq	record_xmalloc
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB10_25:                              # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, -24(%rbp)
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	$94, (%rax)
	movq	-16(%rbp), %rdi
	callq	SDATA
	movq	%rax, -32(%rbp)
.LBB10_26:                              # %for.cond.68
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB10_46
# BB#27:                                # %for.body.70
                                        #   in Loop: Header=BB10_26 Depth=1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$42, %ecx
	jne	.LBB10_32
# BB#28:                                # %if.then.74
                                        #   in Loop: Header=BB10_26 Depth=1
	cmpl	$14, -44(%rbp)
	jge	.LBB10_30
# BB#29:                                # %if.then.77
                                        #   in Loop: Header=BB10_26 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	$46, (%rax)
	jmp	.LBB10_31
.LBB10_30:                              # %if.else.79
                                        #   in Loop: Header=BB10_26 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	$91, (%rax)
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	$94, (%rax)
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	$45, (%rax)
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	$93, (%rax)
.LBB10_31:                              # %if.end.84
                                        #   in Loop: Header=BB10_26 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	$42, (%rax)
	jmp	.LBB10_44
.LBB10_32:                              # %if.else.86
                                        #   in Loop: Header=BB10_26 Depth=1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$63, %ecx
	jne	.LBB10_34
# BB#33:                                # %if.then.90
                                        #   in Loop: Header=BB10_26 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	$46, (%rax)
	jmp	.LBB10_43
.LBB10_34:                              # %if.else.92
                                        #   in Loop: Header=BB10_26 Depth=1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$91, %ecx
	je	.LBB10_40
# BB#35:                                # %lor.lhs.false.96
                                        #   in Loop: Header=BB10_26 Depth=1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$46, %ecx
	je	.LBB10_40
# BB#36:                                # %lor.lhs.false.100
                                        #   in Loop: Header=BB10_26 Depth=1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$92, %ecx
	je	.LBB10_40
# BB#37:                                # %lor.lhs.false.104
                                        #   in Loop: Header=BB10_26 Depth=1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$43, %ecx
	je	.LBB10_40
# BB#38:                                # %lor.lhs.false.108
                                        #   in Loop: Header=BB10_26 Depth=1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$94, %ecx
	je	.LBB10_40
# BB#39:                                # %lor.lhs.false.112
                                        #   in Loop: Header=BB10_26 Depth=1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$36, %ecx
	jne	.LBB10_41
.LBB10_40:                              # %if.then.116
                                        #   in Loop: Header=BB10_26 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	$92, (%rax)
	movq	-32(%rbp), %rax
	movb	(%rax), %dl
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	%dl, (%rax)
	jmp	.LBB10_42
.LBB10_41:                              # %if.else.119
                                        #   in Loop: Header=BB10_26 Depth=1
	movq	-32(%rbp), %rax
	movb	(%rax), %cl
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -40(%rbp)
	movb	%cl, (%rax)
.LBB10_42:                              # %if.end.121
                                        #   in Loop: Header=BB10_26 Depth=1
	jmp	.LBB10_43
.LBB10_43:                              # %if.end.122
                                        #   in Loop: Header=BB10_26 Depth=1
	jmp	.LBB10_44
.LBB10_44:                              # %if.end.123
                                        #   in Loop: Header=BB10_26 Depth=1
	jmp	.LBB10_45
.LBB10_45:                              # %for.inc.124
                                        #   in Loop: Header=BB10_26 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB10_26
.LBB10_46:                              # %for.end.126
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	$36, (%rax)
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	$0, (%rax)
	movq	-16(%rbp), %rdi
	callq	SSDATA
	movq	%rax, %rdi
	callq	build_string
	movq	-24(%rbp), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	build_string
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	%rax, Vcached_fontset_data
# BB#47:                                # %do.body
	testb	$1, -81(%rbp)
	je	.LBB10_49
# BB#48:                                # %if.then.134
	xorl	%edi, %edi
	movb	$0, -81(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB10_49:                              # %if.end.137
	jmp	.LBB10_50
.LBB10_50:                              # %do.end
	jmp	.LBB10_51
.LBB10_51:                              # %if.end.138
	movq	Vcached_fontset_data, %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB10_52:                              # %return
	movq	-8(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	fontset_pattern_regexp, .Lfunc_end10-fontset_pattern_regexp
	.cfi_endproc

	.globl	Fquery_fontset
	.align	16, 0x90
	.type	Fquery_fontset,@function
Fquery_fontset:                         # @Fquery_fontset
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
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rcx, %rdi
	callq	check_window_system
	movq	-16(%rbp), %rdi
	callq	CHECK_STRING
	movq	-16(%rbp), %rdi
	callq	SCHARS
	cmpq	$0, %rax
	jne	.LBB11_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB11_5
.LBB11_2:                               # %if.end
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	fs_query_fontset
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jge	.LBB11_4
# BB#3:                                 # %if.then.6
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB11_5
.LBB11_4:                               # %if.end.8
	movq	Vfontset_table, %rdi
	movslq	-36(%rbp), %rsi
	callq	AREF
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	XCHAR_TABLE
	movq	560(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB11_5:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	Fquery_fontset, .Lfunc_end11-Fquery_fontset
	.cfi_endproc

	.globl	list_fontsets
	.align	16, 0x90
	.type	list_fontsets,@function
list_fontsets:                          # @list_fontsets
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
	subq	$112, %rsp
	movl	$5, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	movl	%eax, %esi
	callq	make_lisp_ptr
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	fontset_pattern_regexp
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -48(%rbp)
	movl	$0, -52(%rbp)
.LBB12_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-52(%rbp), %rax
	movq	Vfontset_table, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	ASIZE
	movq	-80(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	jge	.LBB12_12
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	Vfontset_table, %rdi
	movslq	-52(%rbp), %rsi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB12_5
# BB#3:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-64(%rbp), %rdi
	callq	XCHAR_TABLE
	xorl	%edi, %edi
	movq	576(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB12_5
# BB#4:                                 # %lor.lhs.false.14
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-32(%rbp), %rax
	movq	-64(%rbp), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	XCHAR_TABLE
	movq	-104(%rbp), %rdi        # 8-byte Reload
	cmpq	584(%rax), %rdi
	je	.LBB12_6
.LBB12_5:                               # %if.then
                                        #   in Loop: Header=BB12_1 Depth=1
	jmp	.LBB12_11
.LBB12_6:                               # %if.end
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-64(%rbp), %rdi
	callq	XCHAR_TABLE
	movq	560(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB12_7
	jmp	.LBB12_8
.LBB12_7:                               # %cond.true
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-40(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	fast_string_match
	cmpq	$0, %rax
	jl	.LBB12_9
	jmp	.LBB12_10
.LBB12_8:                               # %cond.false
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-16(%rbp), %rdi
	callq	SSDATA
	movq	-72(%rbp), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	SSDATA
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB12_10
.LBB12_9:                               # %if.then.31
                                        #   in Loop: Header=BB12_1 Depth=1
	jmp	.LBB12_11
.LBB12_10:                              # %if.end.32
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-64(%rbp), %rdi
	callq	XCHAR_TABLE
	movq	560(%rax), %rdi
	callq	Fcopy_sequence
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -48(%rbp)
.LBB12_11:                              # %for.inc
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB12_1
.LBB12_12:                              # %for.end
	movq	-48(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	list_fontsets, .Lfunc_end12-list_fontsets
	.cfi_endproc

	.globl	Fset_fontset_font
	.align	16, 0x90
	.type	Fset_fontset_font,@function
Fset_fontset_font:                      # @Fset_fontset_font
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
	subq	$672, %rsp              # imm = 0x2A0
	leaq	-32(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	$0, -88(%rbp)
	movb	$0, -97(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	check_fontset_name
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -96(%rbp)
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %edi
	cmpl	$3, %edi
	jne	.LBB13_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	callq	Ffont_spec
	movq	%rax, -112(%rbp)
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rsi
	movq	-112(%rbp), %rdx
	callq	font_parse_family_registry
	xorl	%edi, %edi
	movq	-112(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Ffont_xlfd_name
	movq	%rax, -96(%rbp)
	jmp	.LBB13_11
.LBB13_2:                               # %if.else
	movq	-24(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB13_3
	jmp	.LBB13_4
.LBB13_3:                               # %if.then.8
	movl	$86, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	builtin_lisp_symbol
	movl	$2, %edi
                                        # kill: RDI<def> EDI<kill>
	leaq	-128(%rbp), %rsi
	movq	%rax, -128(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -120(%rbp)
	callq	Ffont_spec
	movq	%rax, -24(%rbp)
	jmp	.LBB13_10
.LBB13_4:                               # %if.else.11
	movq	-24(%rbp), %rdi
	callq	FONT_SPEC_P
	testb	$1, %al
	jne	.LBB13_5
	jmp	.LBB13_6
.LBB13_5:                               # %if.then.13
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Ffont_xlfd_name
	movq	%rax, -96(%rbp)
	jmp	.LBB13_9
.LBB13_6:                               # %if.else.16
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-360(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB13_8
# BB#7:                                 # %if.then.20
	movl	$439, %edi              # imm = 0x1B7
	callq	builtin_lisp_symbol
	movabsq	$.L.str, %rdi
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	build_string
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	list2
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fsignal
	movq	%rax, -376(%rbp)        # 8-byte Spill
.LBB13_8:                               # %if.end
	jmp	.LBB13_9
.LBB13_9:                               # %if.end.25
	jmp	.LBB13_10
.LBB13_10:                              # %if.end.26
	jmp	.LBB13_11
.LBB13_11:                              # %if.end.27
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-384(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB13_42
# BB#12:                                # %if.then.31
	movl	$2, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rdi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-392(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB13_14
# BB#13:                                # %if.then.36
	movq	-72(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, -72(%rbp)
.LBB13_14:                              # %if.end.38
	movl	$4, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rdi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-400(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB13_16
# BB#15:                                # %if.then.43
	movq	-64(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	Fdowncase
	movq	%rax, -64(%rbp)
.LBB13_16:                              # %if.end.46
	movl	$4, %esi
	leaq	-184(%rbp), %rax
	movabsq	$.L.str.1, %rcx
	movq	$1, -184(%rbp)
	movq	$-1, -176(%rbp)
	movq	$0, -168(%rbp)
	movq	%rcx, -160(%rbp)
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -152(%rbp)
	movq	-72(%rbp), %rdi
	movq	-152(%rbp), %rsi
	movq	-64(%rbp), %rdx
	callq	concat3
	movq	%rax, %rdi
	callq	find_font_encoding
	xorl	%edi, %edi
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-408(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB13_18
# BB#17:                                # %if.then.55
	movl	$181, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -136(%rbp)
.LBB13_18:                              # %if.end.57
	movq	-136(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB13_25
# BB#19:                                # %if.then.62
	jmp	.LBB13_20
.LBB13_20:                              # %do.body
	movq	-136(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB13_22
# BB#21:                                # %lor.lhs.false
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-136(%rbp), %rsi
	movq	%rax, %rdi
	callq	hash_lookup
	cmpq	$0, %rax
	jge	.LBB13_23
.LBB13_22:                              # %if.then.71
	movl	$262, %edi              # imm = 0x106
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -416(%rbp)        # 8-byte Spill
.LBB13_23:                              # %if.end.73
	jmp	.LBB13_24
.LBB13_24:                              # %do.end
	xorl	%edi, %edi
	movq	-136(%rbp), %rax
	movq	Vcharset_hash_table, %rsi
	movq	%rsi, -424(%rbp)        # 8-byte Spill
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	-424(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fgethash
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movq	%rax, -144(%rbp)
	movq	%rax, -136(%rbp)
	jmp	.LBB13_39
.LBB13_25:                              # %if.else.77
	movq	-136(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-136(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)
# BB#26:                                # %do.body.83
	movq	-136(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB13_28
# BB#27:                                # %lor.lhs.false.88
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-136(%rbp), %rsi
	movq	%rax, %rdi
	callq	hash_lookup
	cmpq	$0, %rax
	jge	.LBB13_29
.LBB13_28:                              # %if.then.93
	movl	$262, %edi              # imm = 0x106
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -440(%rbp)        # 8-byte Spill
.LBB13_29:                              # %if.end.95
	jmp	.LBB13_30
.LBB13_30:                              # %do.end.96
	xorl	%edi, %edi
	movq	-136(%rbp), %rax
	movq	Vcharset_hash_table, %rsi
	movq	%rsi, -448(%rbp)        # 8-byte Spill
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	-448(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fgethash
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -136(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-464(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB13_38
# BB#31:                                # %land.lhs.true
	movq	-144(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB13_38
# BB#32:                                # %if.then.107
	jmp	.LBB13_33
.LBB13_33:                              # %do.body.108
	movq	-144(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB13_35
# BB#34:                                # %lor.lhs.false.113
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-144(%rbp), %rsi
	movq	%rax, %rdi
	callq	hash_lookup
	cmpq	$0, %rax
	jge	.LBB13_36
.LBB13_35:                              # %if.then.118
	movl	$262, %edi              # imm = 0x106
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -472(%rbp)        # 8-byte Spill
.LBB13_36:                              # %if.end.120
	jmp	.LBB13_37
.LBB13_37:                              # %do.end.121
	xorl	%edi, %edi
	movq	-144(%rbp), %rax
	movq	Vcharset_hash_table, %rsi
	movq	%rsi, -480(%rbp)        # 8-byte Spill
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	-480(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fgethash
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movq	%rax, -144(%rbp)
.LBB13_38:                              # %if.end.125
	jmp	.LBB13_39
.LBB13_39:                              # %if.end.126
	jmp	.LBB13_40
.LBB13_40:                              # %do.body.127
	movl	$3, %eax
	movl	%eax, %edi
	callq	make_uninit_vector
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	movq	-24(%rbp), %rdx
	callq	ASET
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	-56(%rbp), %rdi
	movq	-136(%rbp), %rdx
	callq	ASET
	movl	$2, %ecx
	movl	%ecx, %esi
	movq	-56(%rbp), %rdi
	movq	-144(%rbp), %rdx
	callq	ASET
# BB#41:                                # %do.end.129
	jmp	.LBB13_43
.LBB13_42:                              # %if.else.130
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -56(%rbp)
.LBB13_43:                              # %if.end.132
	movq	-16(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB13_44
	jmp	.LBB13_48
.LBB13_44:                              # %land.lhs.true.135
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jg	.LBB13_48
# BB#45:                                # %if.then.138
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	cmpq	$128, %rax
	jge	.LBB13_47
# BB#46:                                # %if.then.142
	movabsq	$.L.str.2, %rdi
	movb	$0, %al
	callq	error
.LBB13_47:                              # %if.end.143
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	Fcons
	movq	%rax, %rdi
	callq	list1
	movq	%rax, -80(%rbp)
	jmp	.LBB13_90
.LBB13_48:                              # %if.else.146
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB13_63
# BB#49:                                # %if.then.151
	movq	-16(%rbp), %rdi
	callq	Fcar
	movq	%rax, -192(%rbp)
	movq	-16(%rbp), %rdi
	callq	Fcdr
	movq	%rax, -200(%rbp)
	movq	-192(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB13_50
	jmp	.LBB13_52
.LBB13_50:                              # %land.lhs.true.156
	movq	-192(%rbp), %rax
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jg	.LBB13_52
# BB#51:                                # %cond.true
	jmp	.LBB13_53
.LBB13_52:                              # %cond.false
	movl	$260, %edi              # imm = 0x104
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -496(%rbp)        # 8-byte Spill
.LBB13_53:                              # %cond.end
	movq	-200(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB13_54
	jmp	.LBB13_56
.LBB13_54:                              # %land.lhs.true.163
	movq	-200(%rbp), %rax
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jg	.LBB13_56
# BB#55:                                # %cond.true.167
	jmp	.LBB13_57
.LBB13_56:                              # %cond.false.168
	movl	$260, %edi              # imm = 0x104
	callq	builtin_lisp_symbol
	movq	-200(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -504(%rbp)        # 8-byte Spill
.LBB13_57:                              # %cond.end.170
	movq	-192(%rbp), %rax
	sarq	$2, %rax
	cmpq	$128, %rax
	jge	.LBB13_62
# BB#58:                                # %if.then.174
	movq	-192(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jne	.LBB13_60
# BB#59:                                # %lor.lhs.false.178
	movq	-200(%rbp), %rax
	sarq	$2, %rax
	cmpq	$127, %rax
	jge	.LBB13_61
.LBB13_60:                              # %if.then.182
	movabsq	$.L.str.2, %rdi
	movb	$0, %al
	callq	error
.LBB13_61:                              # %if.end.183
	movb	$1, -97(%rbp)
.LBB13_62:                              # %if.end.184
	movq	-16(%rbp), %rdi
	callq	list1
	movq	%rax, -80(%rbp)
	jmp	.LBB13_89
.LBB13_63:                              # %if.else.186
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB13_84
# BB#64:                                # %land.lhs.true.191
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-512(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB13_84
# BB#65:                                # %if.then.195
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -80(%rbp)
	movq	globals+216, %rdi
	callq	XCHAR_TABLE
	movq	552(%rax), %rax
	movq	%rax, -208(%rbp)
	movq	-16(%rbp), %rdi
	movq	-208(%rbp), %rsi
	callq	Fmemq
	xorl	%edi, %edi
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-520(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB13_69
# BB#66:                                # %if.then.202
	movl	$605, %edi              # imm = 0x25D
	movq	-16(%rbp), %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-528(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB13_68
# BB#67:                                # %if.then.206
	movb	$1, -97(%rbp)
.LBB13_68:                              # %if.end.207
	movq	-16(%rbp), %rdi
	callq	list1
	xorl	%edi, %edi
	movq	%rax, -216(%rbp)
	callq	builtin_lisp_symbol
	movabsq	$accumulate_script_ranges, %rdi
	movq	globals+216, %rdx
	movq	-216(%rbp), %rcx
	movq	%rax, %rsi
	callq	map_char_table
	movq	-216(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	Fnreverse
	movq	%rax, -80(%rbp)
.LBB13_69:                              # %if.end.214
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	hash_lookup
	cmpq	$0, %rax
	jl	.LBB13_80
# BB#70:                                # %if.then.219
	jmp	.LBB13_71
.LBB13_71:                              # %do.body.220
	jmp	.LBB13_72
.LBB13_72:                              # %do.body.221
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB13_74
# BB#73:                                # %lor.lhs.false.226
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	hash_lookup
	movq	%rax, -232(%rbp)
	cmpq	$0, %rax
	jge	.LBB13_75
.LBB13_74:                              # %if.then.231
	movl	$262, %edi              # imm = 0x106
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -536(%rbp)        # 8-byte Spill
.LBB13_75:                              # %if.end.233
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-232(%rbp), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -220(%rbp)
# BB#76:                                # %do.end.239
	movq	charset_table, %rax
	movslq	-220(%rbp), %rcx
	imulq	$328, %rcx, %rcx        # imm = 0x148
	addq	%rcx, %rax
	movq	%rax, -88(%rbp)
# BB#77:                                # %do.end.240
	movq	-88(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$2, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB13_79
# BB#78:                                # %if.then.241
	movb	$1, -97(%rbp)
.LBB13_79:                              # %if.end.242
	jmp	.LBB13_83
.LBB13_80:                              # %if.else.243
	xorl	%edi, %edi
	movq	-80(%rbp), %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-544(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB13_82
# BB#81:                                # %if.then.247
	movq	-16(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SDATA
	movabsq	$.L.str.3, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	error
.LBB13_82:                              # %if.end.250
	jmp	.LBB13_83
.LBB13_83:                              # %if.end.251
	jmp	.LBB13_88
.LBB13_84:                              # %if.else.252
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-552(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB13_86
# BB#85:                                # %if.then.256
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	list1
	movq	%rax, -80(%rbp)
	jmp	.LBB13_87
.LBB13_86:                              # %if.else.259
	movabsq	$.L.str.4, %rdi
	movb	$0, %al
	callq	error
.LBB13_87:                              # %if.end.260
	jmp	.LBB13_88
.LBB13_88:                              # %if.end.261
	jmp	.LBB13_89
.LBB13_89:                              # %if.end.262
	jmp	.LBB13_90
.LBB13_90:                              # %if.end.263
	testb	$1, -97(%rbp)
	je	.LBB13_97
# BB#91:                                # %if.then.264
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-560(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB13_93
# BB#92:                                # %if.then.269
	movabsq	$.L.str.5, %rdi
	movb	$0, %al
	callq	error
.LBB13_93:                              # %if.end.270
	xorl	%esi, %esi
	movq	-48(%rbp), %rdi
	callq	CHAR_TABLE_REF
	xorl	%edi, %edi
	movq	%rax, -240(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-568(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB13_96
# BB#94:                                # %land.lhs.true.275
	movl	$174, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-576(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB13_96
# BB#95:                                # %if.then.279
	movb	$0, -97(%rbp)
.LBB13_96:                              # %if.end.280
	jmp	.LBB13_97
.LBB13_97:                              # %if.end.281
	cmpq	$0, -88(%rbp)
	je	.LBB13_102
# BB#98:                                # %if.then.283
	movl	$5, %eax
	movl	%eax, %edi
	callq	make_uninit_vector
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rdi
	movq	-48(%rbp), %rdx
	callq	ASET
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	-248(%rbp), %rdi
	movq	-56(%rbp), %rdx
	callq	ASET
	movl	$2, %ecx
	movl	%ecx, %esi
	movq	-248(%rbp), %rdi
	movq	-40(%rbp), %rdx
	callq	ASET
	movq	-248(%rbp), %rdi
	testb	$1, -97(%rbp)
	movq	%rdi, -584(%rbp)        # 8-byte Spill
	je	.LBB13_100
# BB#99:                                # %cond.true.287
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -592(%rbp)        # 8-byte Spill
	jmp	.LBB13_101
.LBB13_100:                             # %cond.false.289
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -592(%rbp)        # 8-byte Spill
.LBB13_101:                             # %cond.end.291
	movq	-592(%rbp), %rax        # 8-byte Reload
	movl	$3, %ecx
	movl	%ecx, %esi
	movq	-584(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	movl	$4, %ecx
	movl	%ecx, %esi
	movq	-248(%rbp), %rdi
	movq	-80(%rbp), %rdx
	callq	ASET
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$set_fontset_font, %rdi
	movq	-248(%rbp), %rdx
	movq	-88(%rbp), %rcx
	movq	-88(%rbp), %rsi
	movl	108(%rsi), %r8d
	movq	-88(%rbp), %rsi
	movl	112(%rsi), %r9d
	movq	%rax, %rsi
	callq	map_charset_chars
	movl	$4, %r8d
	movl	%r8d, %esi
	movq	-248(%rbp), %rdi
	callq	AREF
	movq	%rax, -80(%rbp)
.LBB13_102:                             # %if.end.294
	jmp	.LBB13_103
.LBB13_103:                             # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-80(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB13_112
# BB#104:                               # %for.body
                                        #   in Loop: Header=BB13_103 Depth=1
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-600(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB13_109
# BB#105:                               # %cond.true.302
                                        #   in Loop: Header=BB13_103 Depth=1
	xorl	%edi, %edi
	movq	-80(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-608(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB13_107
# BB#106:                               # %cond.true.308
                                        #   in Loop: Header=BB13_103 Depth=1
	movl	$6, %eax
	movl	%eax, %edi
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %rsi
	movq	%rcx, -616(%rbp)        # 8-byte Spill
	callq	Fmake_vector
	movq	-616(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	set_fontset_fallback
	jmp	.LBB13_108
.LBB13_107:                             # %cond.false.310
                                        #   in Loop: Header=BB13_103 Depth=1
	movl	$6, %eax
	movl	%eax, %edi
	movq	-48(%rbp), %rcx
	movq	-80(%rbp), %rdx
	subq	$3, %rdx
	movq	(%rdx), %rsi
	movq	-56(%rbp), %rdx
	movq	%rsi, -624(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	%rcx, -632(%rbp)        # 8-byte Spill
	callq	Fmake_vector
	movq	-632(%rbp), %rdi        # 8-byte Reload
	movq	-624(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fset_char_table_range
	movq	%rax, -640(%rbp)        # 8-byte Spill
.LBB13_108:                             # %cond.end.315
                                        #   in Loop: Header=BB13_103 Depth=1
	jmp	.LBB13_110
.LBB13_109:                             # %cond.false.316
                                        #   in Loop: Header=BB13_103 Depth=1
	movq	-48(%rbp), %rdi
	movq	-80(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rsi
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	fontset_add
.LBB13_110:                             # %cond.end.319
                                        #   in Loop: Header=BB13_103 Depth=1
	jmp	.LBB13_111
.LBB13_111:                             # %for.inc
                                        #   in Loop: Header=BB13_103 Depth=1
	movq	-80(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB13_103
.LBB13_112:                             # %for.end
	testb	$1, -97(%rbp)
	je	.LBB13_135
# BB#113:                               # %if.then.324
	movq	-48(%rbp), %rdi
	callq	XCHAR_TABLE
	movq	552(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -268(%rbp)
	movq	-48(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	set_fontset_ascii
	movq	-48(%rbp), %rdi
	callq	XCHAR_TABLE
	movq	560(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	Vframe_list, %rax
	movq	%rax, -256(%rbp)
.LBB13_114:                             # %for.cond.333
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-256(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -641(%rbp)         # 1-byte Spill
	jne	.LBB13_116
# BB#115:                               # %land.rhs
                                        #   in Loop: Header=BB13_114 Depth=1
	movb	$1, %al
	movq	-256(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -264(%rbp)
	movb	%al, -641(%rbp)         # 1-byte Spill
.LBB13_116:                             # %land.end
                                        #   in Loop: Header=BB13_114 Depth=1
	movb	-641(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB13_117
	jmp	.LBB13_134
.LBB13_117:                             # %for.body.340
                                        #   in Loop: Header=BB13_114 Depth=1
	movq	-264(%rbp), %rax
	subq	$5, %rax
	movq	%rax, -280(%rbp)
	movq	-280(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB13_119
# BB#118:                               # %lor.lhs.false.348
                                        #   in Loop: Header=BB13_114 Depth=1
	movq	-280(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB13_120
.LBB13_119:                             # %if.then.356
                                        #   in Loop: Header=BB13_114 Depth=1
	jmp	.LBB13_133
.LBB13_120:                             # %if.end.357
                                        #   in Loop: Header=BB13_114 Depth=1
	movl	-268(%rbp), %eax
	movq	-280(%rbp), %rcx
	movq	384(%rcx), %rcx
	cmpl	244(%rcx), %eax
	je	.LBB13_122
# BB#121:                               # %if.then.361
                                        #   in Loop: Header=BB13_114 Depth=1
	jmp	.LBB13_133
.LBB13_122:                             # %if.end.362
                                        #   in Loop: Header=BB13_114 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB13_123
	jmp	.LBB13_124
.LBB13_123:                             # %cond.true.363
                                        #   in Loop: Header=BB13_114 Depth=1
	xorl	%eax, %eax
	movq	-280(%rbp), %rcx
	movq	160(%rcx), %rcx
	movl	32(%rcx), %edx
	addl	$0, %edx
	cmpl	%edx, %eax
	jb	.LBB13_125
	jmp	.LBB13_126
.LBB13_124:                             # %cond.false.367
                                        #   in Loop: Header=BB13_114 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-280(%rbp), %rdx
	movq	160(%rdx), %rdx
	movslq	32(%rdx), %rdx
	addq	$0, %rdx
	cmpq	%rdx, %rcx
	jae	.LBB13_126
.LBB13_125:                             # %cond.true.374
                                        #   in Loop: Header=BB13_114 Depth=1
	movq	-280(%rbp), %rax
	movq	160(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -656(%rbp)        # 8-byte Spill
	jmp	.LBB13_127
.LBB13_126:                             # %cond.false.377
                                        #   in Loop: Header=BB13_114 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -656(%rbp)        # 8-byte Spill
	jmp	.LBB13_127
.LBB13_127:                             # %cond.end.378
                                        #   in Loop: Header=BB13_114 Depth=1
	movq	-656(%rbp), %rax        # 8-byte Reload
	movq	%rax, -296(%rbp)
	cmpq	$0, -296(%rbp)
	je	.LBB13_129
# BB#128:                               # %if.then.381
                                        #   in Loop: Header=BB13_114 Depth=1
	movq	-280(%rbp), %rdi
	movq	-296(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	font_load_for_lface
	movq	%rax, -288(%rbp)
	jmp	.LBB13_130
.LBB13_129:                             # %if.else.384
                                        #   in Loop: Header=BB13_114 Depth=1
	movq	-280(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	font_open_by_spec
	movq	%rax, -288(%rbp)
.LBB13_130:                             # %if.end.386
                                        #   in Loop: Header=BB13_114 Depth=1
	xorl	%edi, %edi
	movq	-288(%rbp), %rax
	movq	%rax, -664(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-664(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB13_132
# BB#131:                               # %if.then.390
                                        #   in Loop: Header=BB13_114 Depth=1
	movq	-288(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	update_auto_fontset_alist
	movl	$439, %edi              # imm = 0x1B7
	callq	builtin_lisp_symbol
	movq	%rax, -336(%rbp)
	movq	-8(%rbp), %rdi
	movq	-288(%rbp), %rsi
	callq	Fcons
	movl	$3, %esi
	leaq	-336(%rbp), %rdi
	movq	%rax, -328(%rbp)
	callq	make_lisp_ptr
	xorl	%edi, %edi
	movq	%rax, -320(%rbp)
	callq	builtin_lisp_symbol
	movl	$3, %esi
	leaq	-320(%rbp), %rcx
	movq	%rax, -312(%rbp)
	movq	%rcx, %rdi
	callq	make_lisp_ptr
	movq	%rax, -304(%rbp)
	movq	-264(%rbp), %rdi
	movq	-304(%rbp), %rsi
	callq	Fmodify_frame_parameters
	movq	%rax, -672(%rbp)        # 8-byte Spill
.LBB13_132:                             # %if.end.410
                                        #   in Loop: Header=BB13_114 Depth=1
	jmp	.LBB13_133
.LBB13_133:                             # %for.inc.411
                                        #   in Loop: Header=BB13_114 Depth=1
	movq	-256(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -256(%rbp)
	jmp	.LBB13_114
.LBB13_134:                             # %for.end.415
	jmp	.LBB13_135
.LBB13_135:                             # %if.end.416
	movq	-48(%rbp), %rdi
	callq	free_realized_fontsets
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$672, %rsp              # imm = 0x2A0
	popq	%rbp
	retq
.Lfunc_end13:
	.size	Fset_fontset_font, .Lfunc_end13-Fset_fontset_font
	.cfi_endproc

	.align	16, 0x90
	.type	check_fontset_name,@function
check_fontset_name:                     # @check_fontset_name
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rdi
	callq	decode_live_frame
	movl	$5, %esi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movl	$901, %edi              # imm = 0x385
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB14_2
# BB#1:                                 # %if.then
	movq	Vdefault_fontset, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB14_10
.LBB14_2:                               # %if.end
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB14_4
# BB#3:                                 # %if.then.5
	movq	-40(%rbp), %rax
	movq	384(%rax), %rax
	movl	244(%rax), %ecx
	movl	%ecx, -28(%rbp)
	jmp	.LBB14_9
.LBB14_4:                               # %if.else
	movq	-16(%rbp), %rdi
	callq	CHECK_STRING
	movl	$2, %esi
	movq	-16(%rbp), %rdi
	callq	fs_query_fontset
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jge	.LBB14_6
# BB#5:                                 # %if.then.8
	xorl	%esi, %esi
	movq	-16(%rbp), %rdi
	callq	fs_query_fontset
	movl	%eax, -28(%rbp)
.LBB14_6:                               # %if.end.10
	cmpl	$0, -28(%rbp)
	jge	.LBB14_8
# BB#7:                                 # %if.then.12
	movq	-16(%rbp), %rdi
	callq	SDATA
	movabsq	$.L.str.31, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	error
.LBB14_8:                               # %if.end.14
	jmp	.LBB14_9
.LBB14_9:                               # %if.end.15
	movq	Vfontset_table, %rdi
	movslq	-28(%rbp), %rsi
	callq	AREF
	movq	%rax, -8(%rbp)
.LBB14_10:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	check_fontset_name, .Lfunc_end14-check_fontset_name
	.cfi_endproc

	.align	16, 0x90
	.type	accumulate_script_ranges,@function
accumulate_script_ranges:               # @accumulate_script_ranges
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	subq	$3, %rdx
	movq	(%rdx), %rdx
	cmpq	-24(%rbp), %rdx
	jne	.LBB15_5
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB15_3
# BB#2:                                 # %if.then.3
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rsi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	Fcons
	movq	-8(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	XSETCDR
	jmp	.LBB15_4
.LBB15_3:                               # %if.else
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	Fcons
	movq	-8(%rbp), %rsi
	subq	$3, %rsi
	movq	8(%rsi), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	XSETCDR
.LBB15_4:                               # %if.end
	jmp	.LBB15_5
.LBB15_5:                               # %if.end.16
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	accumulate_script_ranges, .Lfunc_end15-accumulate_script_ranges
	.cfi_endproc

	.align	16, 0x90
	.type	set_fontset_font,@function
set_fontset_font:                       # @set_fontset_font
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
	subq	$192, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	subq	$3, %rsi
	movq	(%rsi), %rsi
	sarq	$2, %rsi
	movl	%esi, %eax
	movl	%eax, -60(%rbp)
	movq	-16(%rbp), %rsi
	subq	$3, %rsi
	movq	8(%rsi), %rsi
	sarq	$2, %rsi
	movl	%esi, %eax
	movl	%eax, -64(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rcx, %rsi
	callq	AREF
	movl	$1, %edx
	movl	%edx, %esi
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	AREF
	movl	$2, %edx
	movl	%edx, %esi
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	AREF
	movl	$3, %edx
	movl	%edx, %esi
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	callq	AREF
	movl	$4, %edx
	movl	%edx, %esi
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rdi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB16_5
# BB#1:                                 # %land.lhs.true
	cmpl	$128, -60(%rbp)
	jge	.LBB16_5
# BB#2:                                 # %if.then
	cmpl	$128, -64(%rbp)
	jge	.LBB16_4
# BB#3:                                 # %if.then.14
	jmp	.LBB16_36
.LBB16_4:                               # %if.end
	movl	$514, %eax              # imm = 0x202
	movl	%eax, %edi
	movl	$128, -60(%rbp)
	movq	-16(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rsi
	callq	Fcons
	movq	%rax, -16(%rbp)
.LBB16_5:                               # %if.end.19
	jmp	.LBB16_6
.LBB16_6:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-56(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -73(%rbp)          # 1-byte Spill
	jne	.LBB16_8
# BB#7:                                 # %land.rhs
                                        #   in Loop: Header=BB16_6 Depth=1
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	sarq	$2, %rax
	movslq	-60(%rbp), %rcx
	cmpq	%rcx, %rax
	setl	%dl
	movb	%dl, -73(%rbp)          # 1-byte Spill
.LBB16_8:                               # %land.end
                                        #   in Loop: Header=BB16_6 Depth=1
	movb	-73(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB16_9
	jmp	.LBB16_17
.LBB16_9:                               # %for.body
                                        #   in Loop: Header=BB16_6 Depth=1
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB16_14
# BB#10:                                # %cond.true
                                        #   in Loop: Header=BB16_6 Depth=1
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB16_12
# BB#11:                                # %cond.true.40
                                        #   in Loop: Header=BB16_6 Depth=1
	movl	$6, %eax
	movl	%eax, %edi
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	callq	Fmake_vector
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	set_fontset_fallback
	jmp	.LBB16_13
.LBB16_12:                              # %cond.false
                                        #   in Loop: Header=BB16_6 Depth=1
	movl	$6, %eax
	movl	%eax, %edi
	movq	-24(%rbp), %rcx
	movq	-56(%rbp), %rdx
	subq	$3, %rdx
	movq	(%rdx), %rsi
	movq	-32(%rbp), %rdx
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	callq	Fmake_vector
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fset_char_table_range
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB16_13:                              # %cond.end
                                        #   in Loop: Header=BB16_6 Depth=1
	jmp	.LBB16_15
.LBB16_14:                              # %cond.false.46
                                        #   in Loop: Header=BB16_6 Depth=1
	movq	-24(%rbp), %rdi
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	fontset_add
.LBB16_15:                              # %cond.end.49
                                        #   in Loop: Header=BB16_6 Depth=1
	jmp	.LBB16_16
.LBB16_16:                              # %for.inc
                                        #   in Loop: Header=BB16_6 Depth=1
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB16_6
.LBB16_17:                              # %for.end
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB16_29
# BB#18:                                # %if.then.57
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	movslq	-60(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB16_20
# BB#19:                                # %if.then.66
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-16(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -16(%rbp)
.LBB16_20:                              # %if.end.77
	jmp	.LBB16_21
.LBB16_21:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-56(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -129(%rbp)         # 1-byte Spill
	jne	.LBB16_23
# BB#22:                                # %land.rhs.82
                                        #   in Loop: Header=BB16_21 Depth=1
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	sarq	$2, %rax
	movslq	-64(%rbp), %rcx
	cmpq	%rcx, %rax
	setle	%dl
	movb	%dl, -129(%rbp)         # 1-byte Spill
.LBB16_23:                              # %land.end.92
                                        #   in Loop: Header=BB16_21 Depth=1
	movb	-129(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB16_24
	jmp	.LBB16_25
.LBB16_24:                              # %while.body
                                        #   in Loop: Header=BB16_21 Depth=1
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB16_21
.LBB16_25:                              # %while.end
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB16_28
# BB#26:                                # %land.lhs.true.100
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	movslq	-64(%rbp), %rcx
	cmpq	%rcx, %rax
	jg	.LBB16_28
# BB#27:                                # %if.then.109
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	movl	-64(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rsi
	callq	XSETCAR
.LBB16_28:                              # %if.end.116
	jmp	.LBB16_29
.LBB16_29:                              # %if.end.117
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB16_34
# BB#30:                                # %cond.true.121
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB16_32
# BB#31:                                # %cond.true.125
	movl	$6, %eax
	movl	%eax, %edi
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	callq	Fmake_vector
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	set_fontset_fallback
	jmp	.LBB16_33
.LBB16_32:                              # %cond.false.127
	movl	$6, %eax
	movl	%eax, %edi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	callq	Fmake_vector
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	-168(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fset_char_table_range
	movq	%rax, -184(%rbp)        # 8-byte Spill
.LBB16_33:                              # %cond.end.130
	jmp	.LBB16_35
.LBB16_34:                              # %cond.false.131
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	fontset_add
.LBB16_35:                              # %cond.end.132
	movl	$4, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	movq	-56(%rbp), %rdx
	callq	ASET
.LBB16_36:                              # %return
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	set_fontset_font, .Lfunc_end16-set_fontset_font
	.cfi_endproc

	.align	16, 0x90
	.type	set_fontset_fallback,@function
set_fontset_fallback:                   # @set_fontset_fallback
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
	movl	$7, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	%rcx, %rsi
	callq	set_char_table_extras
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	set_fontset_fallback, .Lfunc_end17-set_fontset_fallback
	.cfi_endproc

	.align	16, 0x90
	.type	fontset_add,@function
fontset_add:                            # @fontset_add
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
	subq	$144, %rsp
	movl	$174, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movl	%eax, %edi
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$6, %edi
                                        # kill: RDI<def> EDI<kill>
	movl	$1, %r8d
	xorl	%r9d, %r9d
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	cmovel	%r9d, %r8d
	movl	%r8d, -52(%rbp)
	movq	-24(%rbp), %rsi
	callq	Fmake_vector
	movl	$1, %r8d
	subl	-52(%rbp), %r8d
	movslq	%r8d, %rcx
	movq	%rax, -48(%rbp,%rcx,8)
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %r8d
	cmpl	$3, %r8d
	jne	.LBB18_8
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -56(%rbp)
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -60(%rbp)
.LBB18_2:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	leaq	-64(%rbp), %rdx
	leaq	-68(%rbp), %rcx
	movl	-56(%rbp), %eax
	movl	%eax, -64(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, -68(%rbp)
	movq	-8(%rbp), %rdi
	movl	-56(%rbp), %esi
	callq	char_table_ref_and_range
	xorl	%edi, %edi
	movslq	-52(%rbp), %rcx
	movq	%rax, -48(%rbp,%rcx,8)
	movq	-8(%rbp), %rax
	movl	-56(%rbp), %esi
	movl	-68(%rbp), %edx
	movslq	-52(%rbp), %rcx
	movq	-48(%rbp,%rcx,8), %rcx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movl	%esi, -100(%rbp)        # 4-byte Spill
	movl	%edx, -104(%rbp)        # 4-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB18_4
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB18_2 Depth=1
	movl	$1, %eax
	subl	-52(%rbp), %eax
	movslq	%eax, %rcx
	movq	-48(%rbp,%rcx,8), %rcx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB18_5
.LBB18_4:                               # %cond.false
                                        #   in Loop: Header=BB18_2 Depth=1
	movl	$2, %eax
	movl	%eax, %edi
	leaq	-48(%rbp), %rsi
	callq	Fvconcat
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB18_5:                               # %cond.end
                                        #   in Loop: Header=BB18_2 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movl	-104(%rbp), %edx        # 4-byte Reload
	movq	%rax, %rcx
	callq	char_table_set_range
	movl	-68(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -56(%rbp)
# BB#6:                                 # %do.cond
                                        #   in Loop: Header=BB18_2 Depth=1
	movl	-56(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jl	.LBB18_2
# BB#7:                                 # %do.end
	jmp	.LBB18_12
.LBB18_8:                               # %if.else
	movq	-8(%rbp), %rdi
	callq	XCHAR_TABLE
	xorl	%edi, %edi
	movq	608(%rax), %rax
	movslq	-52(%rbp), %rcx
	movq	%rax, -48(%rbp,%rcx,8)
	movq	-8(%rbp), %rax
	movslq	-52(%rbp), %rcx
	movq	-48(%rbp,%rcx,8), %rcx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB18_10
# BB#9:                                 # %cond.true.34
	movl	$1, %eax
	subl	-52(%rbp), %eax
	movslq	%eax, %rcx
	movq	-48(%rbp,%rcx,8), %rcx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	jmp	.LBB18_11
.LBB18_10:                              # %cond.false.38
	movl	$2, %eax
	movl	%eax, %edi
	leaq	-48(%rbp), %rsi
	callq	Fvconcat
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB18_11:                              # %cond.end.41
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	set_fontset_fallback
.LBB18_12:                              # %if.end
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	fontset_add, .Lfunc_end18-fontset_add
	.cfi_endproc

	.align	16, 0x90
	.type	set_fontset_ascii,@function
set_fontset_ascii:                      # @set_fontset_ascii
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
	subq	$16, %rsp
	movl	$2, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	%rcx, %rsi
	callq	set_char_table_extras
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	set_fontset_ascii, .Lfunc_end19-set_fontset_ascii
	.cfi_endproc

	.align	16, 0x90
	.type	update_auto_fontset_alist,@function
update_auto_fontset_alist:              # @update_auto_fontset_alist
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
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -24(%rbp)
	movq	auto_fontset_alist, %rax
	movq	%rax, -32(%rbp)
.LBB20_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB20_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	subq	$3, %rcx
	cmpq	8(%rcx), %rax
	jne	.LBB20_7
# BB#3:                                 # %if.then
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB20_5
# BB#4:                                 # %if.then.8
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, auto_fontset_alist
	jmp	.LBB20_6
.LBB20_5:                               # %if.else
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rsi
	callq	XSETCDR
.LBB20_6:                               # %if.end
	jmp	.LBB20_9
.LBB20_7:                               # %if.end.15
                                        #   in Loop: Header=BB20_1 Depth=1
	jmp	.LBB20_8
.LBB20_8:                               # %for.inc
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB20_1
.LBB20_9:                               # %for.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	update_auto_fontset_alist, .Lfunc_end20-update_auto_fontset_alist
	.cfi_endproc

	.align	16, 0x90
	.type	free_realized_fontsets,@function
free_realized_fontsets:                 # @free_realized_fontsets
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
	movl	$0, -12(%rbp)
.LBB21_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-12(%rbp), %rax
	movq	Vfontset_table, %rdi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	ASIZE
	movq	-32(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	jge	.LBB21_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB21_1 Depth=1
	movq	Vfontset_table, %rdi
	movslq	-12(%rbp), %rsi
	callq	AREF
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB21_3
	jmp	.LBB21_5
.LBB21_3:                               # %land.lhs.true
                                        #   in Loop: Header=BB21_1 Depth=1
	movq	-24(%rbp), %rdi
	callq	XCHAR_TABLE
	movq	576(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB21_5
# BB#4:                                 # %if.then
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	Fclear_face_cache
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB21_7
.LBB21_5:                               # %if.end
                                        #   in Loop: Header=BB21_1 Depth=1
	jmp	.LBB21_6
.LBB21_6:                               # %for.inc
                                        #   in Loop: Header=BB21_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB21_1
.LBB21_7:                               # %for.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	free_realized_fontsets, .Lfunc_end21-free_realized_fontsets
	.cfi_endproc

	.globl	Fnew_fontset
	.align	16, 0x90
	.type	Fnew_fontset,@function
Fnew_fontset:                           # @Fnew_fontset
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
	subq	$496, %rsp              # imm = 0x1F0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_STRING
	movq	-16(%rbp), %rdi
	callq	CHECK_LIST
	movq	-8(%rbp), %rdi
	callq	Fdowncase
	xorl	%esi, %esi
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	fs_query_fontset
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jge	.LBB22_9
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	callq	Ffont_spec
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	callq	SSDATA
	movq	-8(%rbp), %rdi
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	SBYTES
	movq	-40(%rbp), %rdx
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	font_parse_xlfd
	cmpl	$0, %eax
	jge	.LBB22_3
# BB#2:                                 # %if.then.7
	movabsq	$.L.str.6, %rdi
	movb	$0, %al
	callq	error
.LBB22_3:                               # %if.end
	movl	$4, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rdi
	callq	AREF
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SSDATA
	movabsq	$.L.str.7, %rsi
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB22_5
# BB#4:                                 # %lor.lhs.false
	movq	-48(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SBYTES
	cmpq	$9, %rax
	jge	.LBB22_6
.LBB22_5:                               # %if.then.15
	movabsq	$.L.str.8, %rdi
	movb	$0, %al
	callq	error
.LBB22_6:                               # %if.end.16
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	SYMBOL_NAME
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	globals+872, %rsi
	movq	%rax, %rdi
	callq	Fcons
	movl	$579, %edi              # imm = 0x243
	movq	%rax, globals+872
	movq	-40(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$4, %edi
	movl	%edi, %esi
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-8(%rbp), %rsi
	movq	%rax, -360(%rbp)        # 8-byte Spill
	movq	%rsi, -368(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	-368(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	make_fontset
	xorl	%esi, %esi
	movl	$256, %ecx              # imm = 0x100
	leaq	-304(%rbp), %rdx
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rdi
	callq	font_unparse_xlfd
	movl	%eax, %ecx
	movl	%ecx, -308(%rbp)
	cmpl	$0, -308(%rbp)
	jge	.LBB22_8
# BB#7:                                 # %if.then.27
	movq	-8(%rbp), %rdi
	callq	SDATA
	movabsq	$.L.str.9, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	error
.LBB22_8:                               # %if.end.29
	leaq	-304(%rbp), %rdi
	movq	-24(%rbp), %rax
	movslq	-308(%rbp), %rsi
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	make_unibyte_string
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	set_fontset_ascii
	jmp	.LBB22_10
.LBB22_9:                               # %if.else
	movq	Vfontset_table, %rdi
	movslq	-28(%rbp), %rsi
	callq	AREF
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	free_realized_fontsets
	movl	$901, %edi              # imm = 0x385
	movq	-24(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	-392(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fset_char_table_range
	movq	%rax, -400(%rbp)        # 8-byte Spill
.LBB22_10:                              # %if.end.38
	jmp	.LBB22_11
.LBB22_11:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_16 Depth 2
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB22_23
# BB#12:                                # %for.body
                                        #   in Loop: Header=BB22_11 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -320(%rbp)
	movq	-320(%rbp), %rdi
	callq	Fcar
	movq	%rax, -328(%rbp)
	movq	-320(%rbp), %rdi
	callq	Fcdr
	movq	%rax, -320(%rbp)
	movq	-320(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB22_20
# BB#13:                                # %land.lhs.true
                                        #   in Loop: Header=BB22_11 Depth=1
	xorl	%edi, %edi
	movq	-320(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-408(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB22_15
# BB#14:                                # %lor.lhs.false.52
                                        #   in Loop: Header=BB22_11 Depth=1
	movq	-320(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB22_20
.LBB22_15:                              # %if.then.60
                                        #   in Loop: Header=BB22_11 Depth=1
	jmp	.LBB22_16
.LBB22_16:                              # %for.cond.61
                                        #   Parent Loop BB22_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-320(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB22_19
# BB#17:                                # %for.body.66
                                        #   in Loop: Header=BB22_16 Depth=2
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	-328(%rbp), %rsi
	movq	-320(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rdx
	movq	%rdx, -416(%rbp)        # 8-byte Spill
	movq	%rax, -424(%rbp)        # 8-byte Spill
	movq	%rsi, -432(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$174, %edi
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	-432(%rbp), %rsi        # 8-byte Reload
	movq	-416(%rbp), %rdx        # 8-byte Reload
	movq	-440(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	callq	Fset_fontset_font
	movq	%rax, -448(%rbp)        # 8-byte Spill
# BB#18:                                # %for.inc
                                        #   in Loop: Header=BB22_16 Depth=2
	movq	-320(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -320(%rbp)
	jmp	.LBB22_16
.LBB22_19:                              # %for.end
                                        #   in Loop: Header=BB22_11 Depth=1
	jmp	.LBB22_21
.LBB22_20:                              # %if.else.75
                                        #   in Loop: Header=BB22_11 Depth=1
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	-328(%rbp), %rsi
	movq	-320(%rbp), %rdx
	movq	%rdx, -456(%rbp)        # 8-byte Spill
	movq	%rax, -464(%rbp)        # 8-byte Spill
	movq	%rsi, -472(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$174, %edi
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	-472(%rbp), %rsi        # 8-byte Reload
	movq	-456(%rbp), %rdx        # 8-byte Reload
	movq	-480(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	callq	Fset_fontset_font
	movq	%rax, -488(%rbp)        # 8-byte Spill
.LBB22_21:                              # %if.end.79
                                        #   in Loop: Header=BB22_11 Depth=1
	jmp	.LBB22_22
.LBB22_22:                              # %for.inc.80
                                        #   in Loop: Header=BB22_11 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB22_11
.LBB22_23:                              # %for.end.84
	movq	-8(%rbp), %rax
	addq	$496, %rsp              # imm = 0x1F0
	popq	%rbp
	retq
.Lfunc_end22:
	.size	Fnew_fontset, .Lfunc_end22-Fnew_fontset
	.cfi_endproc

	.globl	fontset_from_font
	.align	16, 0x90
	.type	fontset_from_font,@function
fontset_from_font:                      # @fontset_from_font
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
	subq	$256, %rsp              # imm = 0x100
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	font_get_name
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	copy_font_spec
	movl	$4, %ecx
	movl	%ecx, %esi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	AREF
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	movq	auto_fontset_alist, %rsi
	callq	assoc_no_quit
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB23_2
# BB#1:                                 # %if.then
	movq	-80(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	XCHAR_TABLE
	movq	552(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB23_10
.LBB23_2:                               # %if.end
	movq	num_auto_fontsets, %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, num_auto_fontsets
	cmpq	$0, %rax
	jne	.LBB23_4
# BB#3:                                 # %if.then.9
	movabsq	$.L.str.10, %rdi
	callq	intern
	movq	%rax, -56(%rbp)
	jmp	.LBB23_5
.LBB23_4:                               # %if.else
	movabsq	$.L.str.11, %rsi
	leaq	-128(%rbp), %rdi
	movq	num_auto_fontsets, %rax
	subq	$1, %rax
	movq	%rax, %rdx
	movb	$0, %al
	callq	sprintf
	leaq	-128(%rbp), %rdi
	movl	%eax, -140(%rbp)        # 4-byte Spill
	callq	intern
	movq	%rax, -56(%rbp)
.LBB23_5:                               # %if.end.15
	movq	-32(%rbp), %rdi
	callq	copy_font_spec
	movl	$4, %ecx
	movl	%ecx, %esi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rdx
	callq	ASET
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Ffont_xlfd_name
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-64(%rbp), %rsi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	-168(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	make_fontset
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	SYMBOL_NAME
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	globals+872, %rsi
	movq	%rax, %rdi
	callq	Fcons
	movl	$14, %ecx
	movl	%ecx, %esi
	movq	%rax, globals+872
	movq	-16(%rbp), %rdi
	callq	AREF
	movq	%rax, %rdi
	callq	Fdowncase
	movq	%rax, -56(%rbp)
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	Fcons
	movq	globals+872, %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, globals+872
	movq	-32(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	Fcons
	movq	auto_fontset_alist, %rsi
	movq	%rax, %rdi
	callq	Fcons
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, auto_fontset_alist
	movq	%rdx, %rdi
	movq	%rdx, %rsi
	callq	Ffont_spec
	movl	$4, %ecx
	movl	%ecx, %esi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rdx
	callq	ASET
	movq	-40(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	find_font_encoding
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB23_7
# BB#6:                                 # %if.then.38
	movq	-136(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -136(%rbp)
.LBB23_7:                               # %if.end.42
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-136(%rbp), %rsi
	movq	%rax, %rdi
	callq	hash_lookup
	cmpq	$0, %rax
	jge	.LBB23_9
# BB#8:                                 # %if.then.47
	movl	$605, %edi              # imm = 0x25D
	callq	builtin_lisp_symbol
	movq	%rax, -136(%rbp)
.LBB23_9:                               # %if.end.49
	xorl	%edi, %edi
	movq	-64(%rbp), %rax
	movq	-136(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	%rdx, -184(%rbp)        # 8-byte Spill
	movq	%rax, -192(%rbp)        # 8-byte Spill
	movq	%rsi, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	-200(%rbp), %rsi        # 8-byte Reload
	movq	-184(%rbp), %rdx        # 8-byte Reload
	movq	-208(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	callq	Fset_fontset_font
	xorl	%edi, %edi
	movq	-64(%rbp), %rcx
	movq	%rax, -216(%rbp)        # 8-byte Spill
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-32(%rbp), %rdx
	movq	%rax, -232(%rbp)        # 8-byte Spill
	movq	%rdx, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	-232(%rbp), %rsi        # 8-byte Reload
	movq	-240(%rbp), %rdx        # 8-byte Reload
	movq	-248(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	callq	Fset_fontset_font
	movq	-72(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	set_fontset_ascii
	movq	-72(%rbp), %rdi
	callq	XCHAR_TABLE
	movq	552(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %r9d
	movl	%r9d, -4(%rbp)
.LBB23_10:                              # %return
	movl	-4(%rbp), %eax
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end23:
	.size	fontset_from_font, .Lfunc_end23-fontset_from_font
	.cfi_endproc

	.globl	Ffontset_info
	.align	16, 0x90
	.type	Ffontset_info,@function
Ffontset_info:                          # @Ffontset_info
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
	subq	$1504, %rsp             # imm = 0x5E0
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rcx, %rdi
	callq	check_window_system
	leaq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	check_fontset_name
	movq	%rax, -8(%rbp)
	movq	$16384, -104(%rbp)      # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -112(%rbp)
	movb	$0, -113(%rbp)
# BB#1:                                 # %do.body
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB24_2
	jmp	.LBB24_81
.LBB24_2:                               # %cond.true
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB24_3
	jmp	.LBB24_42
.LBB24_3:                               # %cond.true.2
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB24_5
# BB#4:                                 # %cond.true.7
	movq	Vfontset_table, %rdi
	callq	ASIZE
	xorl	%ecx, %ecx
	shlq	$1, %rax
	movb	%al, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %ecx
	movq	Vfontset_table, %rdi
	movl	%ecx, -180(%rbp)        # 4-byte Spill
	callq	ASIZE
	shlq	$1, %rax
	movb	%al, %dl
	movsbl	%dl, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	-180(%rbp), %esi        # 4-byte Reload
	subl	%ecx, %esi
	movl	%esi, -184(%rbp)        # 4-byte Spill
	jmp	.LBB24_6
.LBB24_5:                               # %cond.false
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -184(%rbp)        # 4-byte Spill
.LBB24_6:                               # %cond.end
	movl	-184(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB24_8
# BB#7:                                 # %land.lhs.true
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jl	.LBB24_34
.LBB24_8:                               # %lor.lhs.false
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB24_9
	jmp	.LBB24_20
.LBB24_9:                               # %cond.true.44
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB24_14
# BB#10:                                # %cond.true.51
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	Vfontset_table, %rdi
	movl	%edx, -188(%rbp)        # 4-byte Spill
	callq	ASIZE
	shlq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB24_12
# BB#11:                                # %cond.true.65
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -192(%rbp)        # 4-byte Spill
	jmp	.LBB24_13
.LBB24_12:                              # %cond.false.77
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -192(%rbp)        # 4-byte Spill
.LBB24_13:                              # %cond.end.85
	movl	-192(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-188(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB24_34
	jmp	.LBB24_31
.LBB24_14:                              # %cond.false.89
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB24_15
	jmp	.LBB24_16
.LBB24_15:                              # %cond.true.90
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB24_34
	jmp	.LBB24_31
.LBB24_16:                              # %cond.false.91
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB24_18
# BB#17:                                # %cond.true.101
	movq	Vfontset_table, %rdi
	callq	ASIZE
	xorl	%ecx, %ecx
	shlq	$1, %rax
	movb	%al, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %ecx
	movq	Vfontset_table, %rdi
	movl	%ecx, -196(%rbp)        # 4-byte Spill
	callq	ASIZE
	shlq	$1, %rax
	movb	%al, %dl
	movsbl	%dl, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	-196(%rbp), %esi        # 4-byte Reload
	subl	%ecx, %esi
	movl	%esi, -200(%rbp)        # 4-byte Spill
	jmp	.LBB24_19
.LBB24_18:                              # %cond.false.125
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -200(%rbp)        # 4-byte Spill
.LBB24_19:                              # %cond.end.133
	movl	-200(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	Vfontset_table, %rdi
	movl	%eax, -204(%rbp)        # 4-byte Spill
	callq	ASIZE
	shlq	$1, %rax
	movb	%al, %sil
	movsbl	%sil, %ecx
	movl	-204(%rbp), %r8d        # 4-byte Reload
	cmpl	%ecx, %r8d
	jl	.LBB24_34
	jmp	.LBB24_31
.LBB24_20:                              # %cond.false.142
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB24_21
	jmp	.LBB24_22
.LBB24_21:                              # %cond.true.143
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB24_34
	jmp	.LBB24_31
.LBB24_22:                              # %cond.false.144
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB24_27
# BB#23:                                # %cond.true.151
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	Vfontset_table, %rdi
	movl	%edx, -208(%rbp)        # 4-byte Spill
	callq	ASIZE
	shlq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB24_25
# BB#24:                                # %cond.true.165
	movq	Vfontset_table, %rdi
	callq	ASIZE
	xorl	%ecx, %ecx
	shlq	$1, %rax
	movb	%al, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %ecx
	movq	Vfontset_table, %rdi
	movl	%ecx, -212(%rbp)        # 4-byte Spill
	callq	ASIZE
	shlq	$1, %rax
	movb	%al, %dl
	movsbl	%dl, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	-212(%rbp), %esi        # 4-byte Reload
	subl	%ecx, %esi
	movl	%esi, -216(%rbp)        # 4-byte Spill
	jmp	.LBB24_26
.LBB24_25:                              # %cond.false.189
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -216(%rbp)        # 4-byte Spill
.LBB24_26:                              # %cond.end.197
	movl	-216(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-208(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB24_34
	jmp	.LBB24_31
.LBB24_27:                              # %cond.false.202
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB24_29
# BB#28:                                # %cond.true.212
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -220(%rbp)        # 4-byte Spill
	jmp	.LBB24_30
.LBB24_29:                              # %cond.false.224
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -220(%rbp)        # 4-byte Spill
.LBB24_30:                              # %cond.end.232
	movl	-220(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	Vfontset_table, %rdi
	movl	%eax, -224(%rbp)        # 4-byte Spill
	callq	ASIZE
	shlq	$1, %rax
	movb	%al, %sil
	movsbl	%sil, %ecx
	movl	-224(%rbp), %r8d        # 4-byte Reload
	cmpl	%ecx, %r8d
	jl	.LBB24_34
.LBB24_31:                              # %lor.lhs.false.241
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	shll	$3, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB24_33
# BB#32:                                # %land.lhs.true.251
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	shll	$3, %edx
	cmpl	$-128, %edx
	jl	.LBB24_34
.LBB24_33:                              # %lor.lhs.false.259
	movq	Vfontset_table, %rdi
	callq	ASIZE
	movl	$127, %ecx
	shlq	$1, %rax
	movb	%al, %dl
	movsbl	%dl, %esi
	shll	$3, %esi
	cmpl	%esi, %ecx
	jge	.LBB24_38
.LBB24_34:                              # %cond.true.267
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB24_36
# BB#35:                                # %cond.true.275
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -228(%rbp)        # 4-byte Spill
	jmp	.LBB24_37
.LBB24_36:                              # %cond.false.283
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -228(%rbp)        # 4-byte Spill
.LBB24_37:                              # %cond.end.293
	movl	-228(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -128(%rbp)
	testb	$1, %cl
	jne	.LBB24_401
	jmp	.LBB24_400
.LBB24_38:                              # %cond.false.296
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB24_40
# BB#39:                                # %cond.true.304
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -232(%rbp)        # 4-byte Spill
	jmp	.LBB24_41
.LBB24_40:                              # %cond.false.312
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -232(%rbp)        # 4-byte Spill
.LBB24_41:                              # %cond.end.322
	movl	-232(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -128(%rbp)
	testb	$1, %dl
	jne	.LBB24_401
	jmp	.LBB24_400
.LBB24_42:                              # %cond.false.325
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB24_44
# BB#43:                                # %cond.true.333
	movq	Vfontset_table, %rdi
	callq	ASIZE
	xorl	%ecx, %ecx
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	xorq	$-1, %rax
	cmpq	$-1, %rax
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %ecx
	movslq	%ecx, %rax
	movq	Vfontset_table, %rdi
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	-240(%rbp), %rdi        # 8-byte Reload
	subq	%rax, %rdi
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	jmp	.LBB24_45
.LBB24_44:                              # %cond.false.354
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
.LBB24_45:                              # %cond.end.360
	movq	-248(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB24_47
# BB#46:                                # %land.lhs.true.364
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	cmpq	$0, %rax
	jl	.LBB24_73
.LBB24_47:                              # %lor.lhs.false.369
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB24_48
	jmp	.LBB24_59
.LBB24_48:                              # %cond.true.370
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB24_53
# BB#49:                                # %cond.true.375
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movq	Vfontset_table, %rdi
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB24_51
# BB#50:                                # %cond.true.385
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	jmp	.LBB24_52
.LBB24_51:                              # %cond.false.395
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
.LBB24_52:                              # %cond.end.401
	movq	-264(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -272(%rbp)        # 8-byte Spill
	cqto
	movq	-272(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-256(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB24_73
	jmp	.LBB24_70
.LBB24_53:                              # %cond.false.406
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB24_54
	jmp	.LBB24_55
.LBB24_54:                              # %cond.true.407
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB24_73
	jmp	.LBB24_70
.LBB24_55:                              # %cond.false.408
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB24_57
# BB#56:                                # %cond.true.416
	movq	Vfontset_table, %rdi
	callq	ASIZE
	xorl	%ecx, %ecx
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	xorq	$-1, %rax
	cmpq	$-1, %rax
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %ecx
	movslq	%ecx, %rax
	movq	Vfontset_table, %rdi
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	-280(%rbp), %rdi        # 8-byte Reload
	subq	%rax, %rdi
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	jmp	.LBB24_58
.LBB24_57:                              # %cond.false.437
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
.LBB24_58:                              # %cond.end.443
	movq	-288(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -296(%rbp)        # 8-byte Spill
	cqto
	movq	-296(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	Vfontset_table, %rdi
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	ASIZE
	shlq	$1, %rax
	movq	-304(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jl	.LBB24_73
	jmp	.LBB24_70
.LBB24_59:                              # %cond.false.450
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB24_60
	jmp	.LBB24_61
.LBB24_60:                              # %cond.true.451
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB24_73
	jmp	.LBB24_70
.LBB24_61:                              # %cond.false.452
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB24_66
# BB#62:                                # %cond.true.457
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movq	Vfontset_table, %rdi
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB24_64
# BB#63:                                # %cond.true.467
	movq	Vfontset_table, %rdi
	callq	ASIZE
	xorl	%ecx, %ecx
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	xorq	$-1, %rax
	cmpq	$-1, %rax
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %ecx
	movslq	%ecx, %rax
	movq	Vfontset_table, %rdi
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	-320(%rbp), %rdi        # 8-byte Reload
	subq	%rax, %rdi
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	jmp	.LBB24_65
.LBB24_64:                              # %cond.false.488
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
.LBB24_65:                              # %cond.end.494
	movq	-328(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -336(%rbp)        # 8-byte Spill
	cqto
	movq	-336(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-312(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB24_73
	jmp	.LBB24_70
.LBB24_66:                              # %cond.false.499
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB24_68
# BB#67:                                # %cond.true.507
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	jmp	.LBB24_69
.LBB24_68:                              # %cond.false.517
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
.LBB24_69:                              # %cond.end.523
	movq	-344(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -352(%rbp)        # 8-byte Spill
	cqto
	movq	-352(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	Vfontset_table, %rdi
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	ASIZE
	shlq	$1, %rax
	movq	-360(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jl	.LBB24_73
.LBB24_70:                              # %lor.lhs.false.530
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB24_72
# BB#71:                                # %land.lhs.true.538
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	shlq	$3, %rax
	cmpq	$-128, %rax
	jl	.LBB24_73
.LBB24_72:                              # %lor.lhs.false.544
	movq	Vfontset_table, %rdi
	callq	ASIZE
	movl	$127, %ecx
	movl	%ecx, %edi
	shlq	$1, %rax
	shlq	$3, %rax
	cmpq	%rax, %rdi
	jge	.LBB24_77
.LBB24_73:                              # %cond.true.550
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB24_75
# BB#74:                                # %cond.true.558
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -364(%rbp)        # 4-byte Spill
	jmp	.LBB24_76
.LBB24_75:                              # %cond.false.566
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -364(%rbp)        # 4-byte Spill
.LBB24_76:                              # %cond.end.576
	movl	-364(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -128(%rbp)
	testb	$1, %cl
	jne	.LBB24_401
	jmp	.LBB24_400
.LBB24_77:                              # %cond.false.579
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB24_79
# BB#78:                                # %cond.true.587
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -368(%rbp)        # 4-byte Spill
	jmp	.LBB24_80
.LBB24_79:                              # %cond.false.595
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -368(%rbp)        # 4-byte Spill
.LBB24_80:                              # %cond.end.605
	movl	-368(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -128(%rbp)
	testb	$1, %dl
	jne	.LBB24_401
	jmp	.LBB24_400
.LBB24_81:                              # %cond.false.608
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB24_82
	jmp	.LBB24_161
.LBB24_82:                              # %cond.true.609
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB24_83
	jmp	.LBB24_122
.LBB24_83:                              # %cond.true.610
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB24_85
# BB#84:                                # %cond.true.620
	movq	Vfontset_table, %rdi
	callq	ASIZE
	xorl	%ecx, %ecx
	shlq	$1, %rax
	movw	%ax, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %esi
	subl	%esi, %ecx
	movq	Vfontset_table, %rdi
	movl	%ecx, -372(%rbp)        # 4-byte Spill
	callq	ASIZE
	shlq	$1, %rax
	movw	%ax, %dx
	movswl	%dx, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	-372(%rbp), %esi        # 4-byte Reload
	subl	%ecx, %esi
	movl	%esi, -376(%rbp)        # 4-byte Spill
	jmp	.LBB24_86
.LBB24_85:                              # %cond.false.644
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -376(%rbp)        # 4-byte Spill
.LBB24_86:                              # %cond.end.652
	movl	-376(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB24_88
# BB#87:                                # %land.lhs.true.656
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jl	.LBB24_114
.LBB24_88:                              # %lor.lhs.false.663
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB24_89
	jmp	.LBB24_100
.LBB24_89:                              # %cond.true.664
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB24_94
# BB#90:                                # %cond.true.671
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	Vfontset_table, %rdi
	movl	%edx, -380(%rbp)        # 4-byte Spill
	callq	ASIZE
	shlq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB24_92
# BB#91:                                # %cond.true.685
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -384(%rbp)        # 4-byte Spill
	jmp	.LBB24_93
.LBB24_92:                              # %cond.false.697
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -384(%rbp)        # 4-byte Spill
.LBB24_93:                              # %cond.end.705
	movl	-384(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-380(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB24_114
	jmp	.LBB24_111
.LBB24_94:                              # %cond.false.710
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB24_95
	jmp	.LBB24_96
.LBB24_95:                              # %cond.true.711
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB24_114
	jmp	.LBB24_111
.LBB24_96:                              # %cond.false.712
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB24_98
# BB#97:                                # %cond.true.722
	movq	Vfontset_table, %rdi
	callq	ASIZE
	xorl	%ecx, %ecx
	shlq	$1, %rax
	movw	%ax, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %esi
	subl	%esi, %ecx
	movq	Vfontset_table, %rdi
	movl	%ecx, -388(%rbp)        # 4-byte Spill
	callq	ASIZE
	shlq	$1, %rax
	movw	%ax, %dx
	movswl	%dx, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	-388(%rbp), %esi        # 4-byte Reload
	subl	%ecx, %esi
	movl	%esi, -392(%rbp)        # 4-byte Spill
	jmp	.LBB24_99
.LBB24_98:                              # %cond.false.746
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -392(%rbp)        # 4-byte Spill
.LBB24_99:                              # %cond.end.754
	movl	-392(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	Vfontset_table, %rdi
	movl	%eax, -396(%rbp)        # 4-byte Spill
	callq	ASIZE
	shlq	$1, %rax
	movw	%ax, %si
	movswl	%si, %ecx
	movl	-396(%rbp), %r8d        # 4-byte Reload
	cmpl	%ecx, %r8d
	jl	.LBB24_114
	jmp	.LBB24_111
.LBB24_100:                             # %cond.false.763
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB24_101
	jmp	.LBB24_102
.LBB24_101:                             # %cond.true.764
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB24_114
	jmp	.LBB24_111
.LBB24_102:                             # %cond.false.765
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB24_107
# BB#103:                               # %cond.true.772
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	Vfontset_table, %rdi
	movl	%edx, -400(%rbp)        # 4-byte Spill
	callq	ASIZE
	shlq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB24_105
# BB#104:                               # %cond.true.786
	movq	Vfontset_table, %rdi
	callq	ASIZE
	xorl	%ecx, %ecx
	shlq	$1, %rax
	movw	%ax, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %esi
	subl	%esi, %ecx
	movq	Vfontset_table, %rdi
	movl	%ecx, -404(%rbp)        # 4-byte Spill
	callq	ASIZE
	shlq	$1, %rax
	movw	%ax, %dx
	movswl	%dx, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	-404(%rbp), %esi        # 4-byte Reload
	subl	%ecx, %esi
	movl	%esi, -408(%rbp)        # 4-byte Spill
	jmp	.LBB24_106
.LBB24_105:                             # %cond.false.810
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -408(%rbp)        # 4-byte Spill
.LBB24_106:                             # %cond.end.818
	movl	-408(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-400(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB24_114
	jmp	.LBB24_111
.LBB24_107:                             # %cond.false.823
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB24_109
# BB#108:                               # %cond.true.833
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -412(%rbp)        # 4-byte Spill
	jmp	.LBB24_110
.LBB24_109:                             # %cond.false.845
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -412(%rbp)        # 4-byte Spill
.LBB24_110:                             # %cond.end.853
	movl	-412(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	Vfontset_table, %rdi
	movl	%eax, -416(%rbp)        # 4-byte Spill
	callq	ASIZE
	shlq	$1, %rax
	movw	%ax, %si
	movswl	%si, %ecx
	movl	-416(%rbp), %r8d        # 4-byte Reload
	cmpl	%ecx, %r8d
	jl	.LBB24_114
.LBB24_111:                             # %lor.lhs.false.862
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	shll	$3, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB24_113
# BB#112:                               # %land.lhs.true.872
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	shll	$3, %edx
	cmpl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB24_114
.LBB24_113:                             # %lor.lhs.false.880
	movq	Vfontset_table, %rdi
	callq	ASIZE
	movl	$32767, %ecx            # imm = 0x7FFF
	shlq	$1, %rax
	movw	%ax, %dx
	movswl	%dx, %esi
	shll	$3, %esi
	cmpl	%esi, %ecx
	jge	.LBB24_118
.LBB24_114:                             # %cond.true.888
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB24_116
# BB#115:                               # %cond.true.896
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -420(%rbp)        # 4-byte Spill
	jmp	.LBB24_117
.LBB24_116:                             # %cond.false.904
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -420(%rbp)        # 4-byte Spill
.LBB24_117:                             # %cond.end.914
	movl	-420(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -128(%rbp)
	testb	$1, %cl
	jne	.LBB24_401
	jmp	.LBB24_400
.LBB24_118:                             # %cond.false.917
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB24_120
# BB#119:                               # %cond.true.925
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -424(%rbp)        # 4-byte Spill
	jmp	.LBB24_121
.LBB24_120:                             # %cond.false.933
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -424(%rbp)        # 4-byte Spill
.LBB24_121:                             # %cond.end.943
	movl	-424(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -128(%rbp)
	testb	$1, %dl
	jne	.LBB24_401
	jmp	.LBB24_400
.LBB24_122:                             # %cond.false.946
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB24_124
# BB#123:                               # %cond.true.954
	movq	Vfontset_table, %rdi
	callq	ASIZE
	xorl	%ecx, %ecx
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	xorq	$-1, %rax
	cmpq	$-1, %rax
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %ecx
	movslq	%ecx, %rax
	movq	Vfontset_table, %rdi
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	-432(%rbp), %rdi        # 8-byte Reload
	subq	%rax, %rdi
	movq	%rdi, -440(%rbp)        # 8-byte Spill
	jmp	.LBB24_125
.LBB24_124:                             # %cond.false.975
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
.LBB24_125:                             # %cond.end.981
	movq	-440(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB24_127
# BB#126:                               # %land.lhs.true.985
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	cmpq	$0, %rax
	jl	.LBB24_153
.LBB24_127:                             # %lor.lhs.false.990
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB24_128
	jmp	.LBB24_139
.LBB24_128:                             # %cond.true.991
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB24_133
# BB#129:                               # %cond.true.996
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movq	Vfontset_table, %rdi
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB24_131
# BB#130:                               # %cond.true.1006
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	jmp	.LBB24_132
.LBB24_131:                             # %cond.false.1016
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
.LBB24_132:                             # %cond.end.1022
	movq	-456(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -464(%rbp)        # 8-byte Spill
	cqto
	movq	-464(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-448(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB24_153
	jmp	.LBB24_150
.LBB24_133:                             # %cond.false.1027
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB24_134
	jmp	.LBB24_135
.LBB24_134:                             # %cond.true.1028
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB24_153
	jmp	.LBB24_150
.LBB24_135:                             # %cond.false.1029
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB24_137
# BB#136:                               # %cond.true.1037
	movq	Vfontset_table, %rdi
	callq	ASIZE
	xorl	%ecx, %ecx
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	xorq	$-1, %rax
	cmpq	$-1, %rax
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %ecx
	movslq	%ecx, %rax
	movq	Vfontset_table, %rdi
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	-472(%rbp), %rdi        # 8-byte Reload
	subq	%rax, %rdi
	movq	%rdi, -480(%rbp)        # 8-byte Spill
	jmp	.LBB24_138
.LBB24_137:                             # %cond.false.1058
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
.LBB24_138:                             # %cond.end.1064
	movq	-480(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -488(%rbp)        # 8-byte Spill
	cqto
	movq	-488(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	Vfontset_table, %rdi
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	ASIZE
	shlq	$1, %rax
	movq	-496(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jl	.LBB24_153
	jmp	.LBB24_150
.LBB24_139:                             # %cond.false.1071
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB24_140
	jmp	.LBB24_141
.LBB24_140:                             # %cond.true.1072
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB24_153
	jmp	.LBB24_150
.LBB24_141:                             # %cond.false.1073
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB24_146
# BB#142:                               # %cond.true.1078
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movq	Vfontset_table, %rdi
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB24_144
# BB#143:                               # %cond.true.1088
	movq	Vfontset_table, %rdi
	callq	ASIZE
	xorl	%ecx, %ecx
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	xorq	$-1, %rax
	cmpq	$-1, %rax
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %ecx
	movslq	%ecx, %rax
	movq	Vfontset_table, %rdi
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	-512(%rbp), %rdi        # 8-byte Reload
	subq	%rax, %rdi
	movq	%rdi, -520(%rbp)        # 8-byte Spill
	jmp	.LBB24_145
.LBB24_144:                             # %cond.false.1109
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
.LBB24_145:                             # %cond.end.1115
	movq	-520(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -528(%rbp)        # 8-byte Spill
	cqto
	movq	-528(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-504(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB24_153
	jmp	.LBB24_150
.LBB24_146:                             # %cond.false.1120
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB24_148
# BB#147:                               # %cond.true.1128
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -536(%rbp)        # 8-byte Spill
	jmp	.LBB24_149
.LBB24_148:                             # %cond.false.1138
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -536(%rbp)        # 8-byte Spill
.LBB24_149:                             # %cond.end.1144
	movq	-536(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -544(%rbp)        # 8-byte Spill
	cqto
	movq	-544(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	Vfontset_table, %rdi
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	ASIZE
	shlq	$1, %rax
	movq	-552(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jl	.LBB24_153
.LBB24_150:                             # %lor.lhs.false.1151
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB24_152
# BB#151:                               # %land.lhs.true.1159
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	shlq	$3, %rax
	cmpq	$-32768, %rax           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB24_153
.LBB24_152:                             # %lor.lhs.false.1165
	movq	Vfontset_table, %rdi
	callq	ASIZE
	movl	$32767, %ecx            # imm = 0x7FFF
	movl	%ecx, %edi
	shlq	$1, %rax
	shlq	$3, %rax
	cmpq	%rax, %rdi
	jge	.LBB24_157
.LBB24_153:                             # %cond.true.1171
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB24_155
# BB#154:                               # %cond.true.1179
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -556(%rbp)        # 4-byte Spill
	jmp	.LBB24_156
.LBB24_155:                             # %cond.false.1187
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -556(%rbp)        # 4-byte Spill
.LBB24_156:                             # %cond.end.1197
	movl	-556(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -128(%rbp)
	testb	$1, %cl
	jne	.LBB24_401
	jmp	.LBB24_400
.LBB24_157:                             # %cond.false.1200
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB24_159
# BB#158:                               # %cond.true.1208
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -560(%rbp)        # 4-byte Spill
	jmp	.LBB24_160
.LBB24_159:                             # %cond.false.1216
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -560(%rbp)        # 4-byte Spill
.LBB24_160:                             # %cond.end.1226
	movl	-560(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -128(%rbp)
	testb	$1, %dl
	jne	.LBB24_401
	jmp	.LBB24_400
.LBB24_161:                             # %cond.false.1229
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB24_162
	jmp	.LBB24_241
.LBB24_162:                             # %cond.true.1230
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB24_163
	jmp	.LBB24_202
.LBB24_163:                             # %cond.true.1231
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB24_165
# BB#164:                               # %cond.true.1240
	movq	Vfontset_table, %rdi
	callq	ASIZE
	xorl	%ecx, %ecx
	shlq	$1, %rax
	movl	%eax, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %ecx
	movq	Vfontset_table, %rdi
	movl	%ecx, -564(%rbp)        # 4-byte Spill
	callq	ASIZE
	shlq	$1, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	-564(%rbp), %edx        # 4-byte Reload
	subl	%ecx, %edx
	movl	%edx, -568(%rbp)        # 4-byte Spill
	jmp	.LBB24_166
.LBB24_165:                             # %cond.false.1262
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -568(%rbp)        # 4-byte Spill
.LBB24_166:                             # %cond.end.1269
	movl	-568(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB24_168
# BB#167:                               # %land.lhs.true.1273
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jl	.LBB24_194
.LBB24_168:                             # %lor.lhs.false.1279
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB24_169
	jmp	.LBB24_180
.LBB24_169:                             # %cond.true.1280
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB24_174
# BB#170:                               # %cond.true.1286
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movl	%eax, %ecx
	movq	Vfontset_table, %rdi
	movl	%ecx, -572(%rbp)        # 4-byte Spill
	callq	ASIZE
	shlq	$1, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB24_172
# BB#171:                               # %cond.true.1298
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -576(%rbp)        # 4-byte Spill
	jmp	.LBB24_173
.LBB24_172:                             # %cond.false.1309
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -576(%rbp)        # 4-byte Spill
.LBB24_173:                             # %cond.end.1316
	movl	-576(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-572(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB24_194
	jmp	.LBB24_191
.LBB24_174:                             # %cond.false.1321
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB24_175
	jmp	.LBB24_176
.LBB24_175:                             # %cond.true.1322
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB24_194
	jmp	.LBB24_191
.LBB24_176:                             # %cond.false.1323
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB24_178
# BB#177:                               # %cond.true.1332
	movq	Vfontset_table, %rdi
	callq	ASIZE
	xorl	%ecx, %ecx
	shlq	$1, %rax
	movl	%eax, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %ecx
	movq	Vfontset_table, %rdi
	movl	%ecx, -580(%rbp)        # 4-byte Spill
	callq	ASIZE
	shlq	$1, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	-580(%rbp), %edx        # 4-byte Reload
	subl	%ecx, %edx
	movl	%edx, -584(%rbp)        # 4-byte Spill
	jmp	.LBB24_179
.LBB24_178:                             # %cond.false.1354
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -584(%rbp)        # 4-byte Spill
.LBB24_179:                             # %cond.end.1361
	movl	-584(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	Vfontset_table, %rdi
	movl	%eax, -588(%rbp)        # 4-byte Spill
	callq	ASIZE
	shlq	$1, %rax
	movl	%eax, %ecx
	movl	-588(%rbp), %esi        # 4-byte Reload
	cmpl	%ecx, %esi
	jl	.LBB24_194
	jmp	.LBB24_191
.LBB24_180:                             # %cond.false.1369
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB24_181
	jmp	.LBB24_182
.LBB24_181:                             # %cond.true.1370
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB24_194
	jmp	.LBB24_191
.LBB24_182:                             # %cond.false.1371
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB24_187
# BB#183:                               # %cond.true.1377
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movl	%eax, %ecx
	movq	Vfontset_table, %rdi
	movl	%ecx, -592(%rbp)        # 4-byte Spill
	callq	ASIZE
	shlq	$1, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB24_185
# BB#184:                               # %cond.true.1389
	movq	Vfontset_table, %rdi
	callq	ASIZE
	xorl	%ecx, %ecx
	shlq	$1, %rax
	movl	%eax, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %ecx
	movq	Vfontset_table, %rdi
	movl	%ecx, -596(%rbp)        # 4-byte Spill
	callq	ASIZE
	shlq	$1, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	-596(%rbp), %edx        # 4-byte Reload
	subl	%ecx, %edx
	movl	%edx, -600(%rbp)        # 4-byte Spill
	jmp	.LBB24_186
.LBB24_185:                             # %cond.false.1411
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -600(%rbp)        # 4-byte Spill
.LBB24_186:                             # %cond.end.1418
	movl	-600(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-592(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB24_194
	jmp	.LBB24_191
.LBB24_187:                             # %cond.false.1423
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB24_189
# BB#188:                               # %cond.true.1432
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -604(%rbp)        # 4-byte Spill
	jmp	.LBB24_190
.LBB24_189:                             # %cond.false.1443
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -604(%rbp)        # 4-byte Spill
.LBB24_190:                             # %cond.end.1450
	movl	-604(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	Vfontset_table, %rdi
	movl	%eax, -608(%rbp)        # 4-byte Spill
	callq	ASIZE
	shlq	$1, %rax
	movl	%eax, %ecx
	movl	-608(%rbp), %esi        # 4-byte Reload
	cmpl	%ecx, %esi
	jl	.LBB24_194
.LBB24_191:                             # %lor.lhs.false.1458
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB24_193
# BB#192:                               # %land.lhs.true.1467
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	jl	.LBB24_194
.LBB24_193:                             # %lor.lhs.false.1474
	movq	Vfontset_table, %rdi
	callq	ASIZE
	movl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	shlq	$1, %rax
	movl	%eax, %edx
	shll	$3, %edx
	cmpl	%edx, %ecx
	jge	.LBB24_198
.LBB24_194:                             # %cond.true.1481
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB24_196
# BB#195:                               # %cond.true.1488
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -612(%rbp)        # 4-byte Spill
	jmp	.LBB24_197
.LBB24_196:                             # %cond.false.1493
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -612(%rbp)        # 4-byte Spill
.LBB24_197:                             # %cond.end.1500
	movl	-612(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -128(%rbp)
	testb	$1, %cl
	jne	.LBB24_401
	jmp	.LBB24_400
.LBB24_198:                             # %cond.false.1503
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB24_200
# BB#199:                               # %cond.true.1510
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -616(%rbp)        # 4-byte Spill
	jmp	.LBB24_201
.LBB24_200:                             # %cond.false.1515
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -616(%rbp)        # 4-byte Spill
.LBB24_201:                             # %cond.end.1522
	movl	-616(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -128(%rbp)
	testb	$1, %dl
	jne	.LBB24_401
	jmp	.LBB24_400
.LBB24_202:                             # %cond.false.1525
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB24_204
# BB#203:                               # %cond.true.1533
	movq	Vfontset_table, %rdi
	callq	ASIZE
	xorl	%ecx, %ecx
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	xorq	$-1, %rax
	cmpq	$-1, %rax
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %ecx
	movslq	%ecx, %rax
	movq	Vfontset_table, %rdi
	movq	%rax, -624(%rbp)        # 8-byte Spill
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	-624(%rbp), %rdi        # 8-byte Reload
	subq	%rax, %rdi
	movq	%rdi, -632(%rbp)        # 8-byte Spill
	jmp	.LBB24_205
.LBB24_204:                             # %cond.false.1554
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -632(%rbp)        # 8-byte Spill
.LBB24_205:                             # %cond.end.1560
	movq	-632(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB24_207
# BB#206:                               # %land.lhs.true.1564
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	cmpq	$0, %rax
	jl	.LBB24_233
.LBB24_207:                             # %lor.lhs.false.1569
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB24_208
	jmp	.LBB24_219
.LBB24_208:                             # %cond.true.1570
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB24_213
# BB#209:                               # %cond.true.1575
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movq	Vfontset_table, %rdi
	movq	%rax, -640(%rbp)        # 8-byte Spill
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB24_211
# BB#210:                               # %cond.true.1585
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -648(%rbp)        # 8-byte Spill
	jmp	.LBB24_212
.LBB24_211:                             # %cond.false.1595
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -648(%rbp)        # 8-byte Spill
.LBB24_212:                             # %cond.end.1601
	movq	-648(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -656(%rbp)        # 8-byte Spill
	cqto
	movq	-656(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-640(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB24_233
	jmp	.LBB24_230
.LBB24_213:                             # %cond.false.1606
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB24_214
	jmp	.LBB24_215
.LBB24_214:                             # %cond.true.1607
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB24_233
	jmp	.LBB24_230
.LBB24_215:                             # %cond.false.1608
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB24_217
# BB#216:                               # %cond.true.1616
	movq	Vfontset_table, %rdi
	callq	ASIZE
	xorl	%ecx, %ecx
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	xorq	$-1, %rax
	cmpq	$-1, %rax
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %ecx
	movslq	%ecx, %rax
	movq	Vfontset_table, %rdi
	movq	%rax, -664(%rbp)        # 8-byte Spill
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	-664(%rbp), %rdi        # 8-byte Reload
	subq	%rax, %rdi
	movq	%rdi, -672(%rbp)        # 8-byte Spill
	jmp	.LBB24_218
.LBB24_217:                             # %cond.false.1637
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -672(%rbp)        # 8-byte Spill
.LBB24_218:                             # %cond.end.1643
	movq	-672(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -680(%rbp)        # 8-byte Spill
	cqto
	movq	-680(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	Vfontset_table, %rdi
	movq	%rax, -688(%rbp)        # 8-byte Spill
	callq	ASIZE
	shlq	$1, %rax
	movq	-688(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jl	.LBB24_233
	jmp	.LBB24_230
.LBB24_219:                             # %cond.false.1650
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB24_220
	jmp	.LBB24_221
.LBB24_220:                             # %cond.true.1651
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB24_233
	jmp	.LBB24_230
.LBB24_221:                             # %cond.false.1652
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB24_226
# BB#222:                               # %cond.true.1657
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movq	Vfontset_table, %rdi
	movq	%rax, -696(%rbp)        # 8-byte Spill
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB24_224
# BB#223:                               # %cond.true.1667
	movq	Vfontset_table, %rdi
	callq	ASIZE
	xorl	%ecx, %ecx
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	xorq	$-1, %rax
	cmpq	$-1, %rax
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %ecx
	movslq	%ecx, %rax
	movq	Vfontset_table, %rdi
	movq	%rax, -704(%rbp)        # 8-byte Spill
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	-704(%rbp), %rdi        # 8-byte Reload
	subq	%rax, %rdi
	movq	%rdi, -712(%rbp)        # 8-byte Spill
	jmp	.LBB24_225
.LBB24_224:                             # %cond.false.1688
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -712(%rbp)        # 8-byte Spill
.LBB24_225:                             # %cond.end.1694
	movq	-712(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -720(%rbp)        # 8-byte Spill
	cqto
	movq	-720(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-696(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB24_233
	jmp	.LBB24_230
.LBB24_226:                             # %cond.false.1699
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB24_228
# BB#227:                               # %cond.true.1707
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -728(%rbp)        # 8-byte Spill
	jmp	.LBB24_229
.LBB24_228:                             # %cond.false.1717
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -728(%rbp)        # 8-byte Spill
.LBB24_229:                             # %cond.end.1723
	movq	-728(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -736(%rbp)        # 8-byte Spill
	cqto
	movq	-736(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	Vfontset_table, %rdi
	movq	%rax, -744(%rbp)        # 8-byte Spill
	callq	ASIZE
	shlq	$1, %rax
	movq	-744(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jl	.LBB24_233
.LBB24_230:                             # %lor.lhs.false.1730
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB24_232
# BB#231:                               # %land.lhs.true.1738
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	shlq	$3, %rax
	cmpq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	jl	.LBB24_233
.LBB24_232:                             # %lor.lhs.false.1744
	movq	Vfontset_table, %rdi
	callq	ASIZE
	movl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	movl	%ecx, %edi
	shlq	$1, %rax
	shlq	$3, %rax
	cmpq	%rax, %rdi
	jge	.LBB24_237
.LBB24_233:                             # %cond.true.1750
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB24_235
# BB#234:                               # %cond.true.1757
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -748(%rbp)        # 4-byte Spill
	jmp	.LBB24_236
.LBB24_235:                             # %cond.false.1762
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -748(%rbp)        # 4-byte Spill
.LBB24_236:                             # %cond.end.1769
	movl	-748(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -128(%rbp)
	testb	$1, %cl
	jne	.LBB24_401
	jmp	.LBB24_400
.LBB24_237:                             # %cond.false.1772
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB24_239
# BB#238:                               # %cond.true.1779
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -752(%rbp)        # 4-byte Spill
	jmp	.LBB24_240
.LBB24_239:                             # %cond.false.1784
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -752(%rbp)        # 4-byte Spill
.LBB24_240:                             # %cond.end.1791
	movl	-752(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -128(%rbp)
	testb	$1, %dl
	jne	.LBB24_401
	jmp	.LBB24_400
.LBB24_241:                             # %cond.false.1794
	movb	$1, %al
	testb	$1, %al
	jne	.LBB24_242
	jmp	.LBB24_321
.LBB24_242:                             # %cond.true.1795
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB24_243
	jmp	.LBB24_282
.LBB24_243:                             # %cond.true.1796
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB24_245
# BB#244:                               # %cond.true.1804
	movq	Vfontset_table, %rdi
	callq	ASIZE
	xorl	%ecx, %ecx
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	xorq	$-1, %rax
	cmpq	$-1, %rax
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %ecx
	movslq	%ecx, %rax
	movq	Vfontset_table, %rdi
	movq	%rax, -760(%rbp)        # 8-byte Spill
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	-760(%rbp), %rdi        # 8-byte Reload
	subq	%rax, %rdi
	movq	%rdi, -768(%rbp)        # 8-byte Spill
	jmp	.LBB24_246
.LBB24_245:                             # %cond.false.1825
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -768(%rbp)        # 8-byte Spill
.LBB24_246:                             # %cond.end.1831
	movq	-768(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB24_248
# BB#247:                               # %land.lhs.true.1835
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	cmpq	$0, %rax
	jl	.LBB24_274
.LBB24_248:                             # %lor.lhs.false.1840
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB24_249
	jmp	.LBB24_260
.LBB24_249:                             # %cond.true.1841
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB24_254
# BB#250:                               # %cond.true.1846
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movq	Vfontset_table, %rdi
	movq	%rax, -776(%rbp)        # 8-byte Spill
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB24_252
# BB#251:                               # %cond.true.1856
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -784(%rbp)        # 8-byte Spill
	jmp	.LBB24_253
.LBB24_252:                             # %cond.false.1866
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -784(%rbp)        # 8-byte Spill
.LBB24_253:                             # %cond.end.1872
	movq	-784(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -792(%rbp)        # 8-byte Spill
	cqto
	movq	-792(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-776(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB24_274
	jmp	.LBB24_271
.LBB24_254:                             # %cond.false.1877
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB24_255
	jmp	.LBB24_256
.LBB24_255:                             # %cond.true.1878
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB24_274
	jmp	.LBB24_271
.LBB24_256:                             # %cond.false.1879
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB24_258
# BB#257:                               # %cond.true.1887
	movq	Vfontset_table, %rdi
	callq	ASIZE
	xorl	%ecx, %ecx
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	xorq	$-1, %rax
	cmpq	$-1, %rax
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %ecx
	movslq	%ecx, %rax
	movq	Vfontset_table, %rdi
	movq	%rax, -800(%rbp)        # 8-byte Spill
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	-800(%rbp), %rdi        # 8-byte Reload
	subq	%rax, %rdi
	movq	%rdi, -808(%rbp)        # 8-byte Spill
	jmp	.LBB24_259
.LBB24_258:                             # %cond.false.1908
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -808(%rbp)        # 8-byte Spill
.LBB24_259:                             # %cond.end.1914
	movq	-808(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -816(%rbp)        # 8-byte Spill
	cqto
	movq	-816(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	Vfontset_table, %rdi
	movq	%rax, -824(%rbp)        # 8-byte Spill
	callq	ASIZE
	shlq	$1, %rax
	movq	-824(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jl	.LBB24_274
	jmp	.LBB24_271
.LBB24_260:                             # %cond.false.1921
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB24_261
	jmp	.LBB24_262
.LBB24_261:                             # %cond.true.1922
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB24_274
	jmp	.LBB24_271
.LBB24_262:                             # %cond.false.1923
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB24_267
# BB#263:                               # %cond.true.1928
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movq	Vfontset_table, %rdi
	movq	%rax, -832(%rbp)        # 8-byte Spill
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB24_265
# BB#264:                               # %cond.true.1938
	movq	Vfontset_table, %rdi
	callq	ASIZE
	xorl	%ecx, %ecx
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	xorq	$-1, %rax
	cmpq	$-1, %rax
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %ecx
	movslq	%ecx, %rax
	movq	Vfontset_table, %rdi
	movq	%rax, -840(%rbp)        # 8-byte Spill
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	-840(%rbp), %rdi        # 8-byte Reload
	subq	%rax, %rdi
	movq	%rdi, -848(%rbp)        # 8-byte Spill
	jmp	.LBB24_266
.LBB24_265:                             # %cond.false.1959
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -848(%rbp)        # 8-byte Spill
.LBB24_266:                             # %cond.end.1965
	movq	-848(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -856(%rbp)        # 8-byte Spill
	cqto
	movq	-856(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-832(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB24_274
	jmp	.LBB24_271
.LBB24_267:                             # %cond.false.1970
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB24_269
# BB#268:                               # %cond.true.1978
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -864(%rbp)        # 8-byte Spill
	jmp	.LBB24_270
.LBB24_269:                             # %cond.false.1988
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -864(%rbp)        # 8-byte Spill
.LBB24_270:                             # %cond.end.1994
	movq	-864(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -872(%rbp)        # 8-byte Spill
	cqto
	movq	-872(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	Vfontset_table, %rdi
	movq	%rax, -880(%rbp)        # 8-byte Spill
	callq	ASIZE
	shlq	$1, %rax
	movq	-880(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jl	.LBB24_274
.LBB24_271:                             # %lor.lhs.false.2001
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB24_273
# BB#272:                               # %land.lhs.true.2009
	movq	Vfontset_table, %rdi
	callq	ASIZE
	movabsq	$-9223372036854775808, %rdi # imm = 0x8000000000000000
	shlq	$1, %rax
	shlq	$3, %rax
	cmpq	%rdi, %rax
	jl	.LBB24_274
.LBB24_273:                             # %lor.lhs.false.2015
	movq	Vfontset_table, %rdi
	callq	ASIZE
	movabsq	$9223372036854775807, %rdi # imm = 0x7FFFFFFFFFFFFFFF
	shlq	$1, %rax
	shlq	$3, %rax
	cmpq	%rax, %rdi
	jge	.LBB24_278
.LBB24_274:                             # %cond.true.2021
	movq	Vfontset_table, %rdi
	callq	ASIZE
	movabsq	$9223372036854775807, %rdi # imm = 0x7FFFFFFFFFFFFFFF
	shlq	$1, %rax
	shlq	$3, %rax
	cmpq	%rdi, %rax
	ja	.LBB24_276
# BB#275:                               # %cond.true.2027
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	shlq	$3, %rax
	movq	%rax, -888(%rbp)        # 8-byte Spill
	jmp	.LBB24_277
.LBB24_276:                             # %cond.false.2031
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rdi # imm = 0x8000000000000000
	subq	%rdi, %rax
	movabsq	$-9223372036854775808, %rdi # imm = 0x8000000000000000
	addq	%rdi, %rax
	movq	%rax, -888(%rbp)        # 8-byte Spill
.LBB24_277:                             # %cond.end.2037
	movq	-888(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -128(%rbp)
	testb	$1, %cl
	jne	.LBB24_401
	jmp	.LBB24_400
.LBB24_278:                             # %cond.false.2039
	movq	Vfontset_table, %rdi
	callq	ASIZE
	movabsq	$9223372036854775807, %rdi # imm = 0x7FFFFFFFFFFFFFFF
	shlq	$1, %rax
	shlq	$3, %rax
	cmpq	%rdi, %rax
	ja	.LBB24_280
# BB#279:                               # %cond.true.2045
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	shlq	$3, %rax
	movq	%rax, -896(%rbp)        # 8-byte Spill
	jmp	.LBB24_281
.LBB24_280:                             # %cond.false.2049
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rdi # imm = 0x8000000000000000
	subq	%rdi, %rax
	movabsq	$-9223372036854775808, %rdi # imm = 0x8000000000000000
	addq	%rdi, %rax
	movq	%rax, -896(%rbp)        # 8-byte Spill
.LBB24_281:                             # %cond.end.2055
	movq	-896(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -128(%rbp)
	testb	$1, %dl
	jne	.LBB24_401
	jmp	.LBB24_400
.LBB24_282:                             # %cond.false.2057
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB24_284
# BB#283:                               # %cond.true.2065
	movq	Vfontset_table, %rdi
	callq	ASIZE
	xorl	%ecx, %ecx
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	xorq	$-1, %rax
	cmpq	$-1, %rax
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %ecx
	movslq	%ecx, %rax
	movq	Vfontset_table, %rdi
	movq	%rax, -904(%rbp)        # 8-byte Spill
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	-904(%rbp), %rdi        # 8-byte Reload
	subq	%rax, %rdi
	movq	%rdi, -912(%rbp)        # 8-byte Spill
	jmp	.LBB24_285
.LBB24_284:                             # %cond.false.2086
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -912(%rbp)        # 8-byte Spill
.LBB24_285:                             # %cond.end.2092
	movq	-912(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB24_287
# BB#286:                               # %land.lhs.true.2096
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	cmpq	$0, %rax
	jl	.LBB24_313
.LBB24_287:                             # %lor.lhs.false.2101
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB24_288
	jmp	.LBB24_299
.LBB24_288:                             # %cond.true.2102
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB24_293
# BB#289:                               # %cond.true.2107
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movq	Vfontset_table, %rdi
	movq	%rax, -920(%rbp)        # 8-byte Spill
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB24_291
# BB#290:                               # %cond.true.2117
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -928(%rbp)        # 8-byte Spill
	jmp	.LBB24_292
.LBB24_291:                             # %cond.false.2127
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -928(%rbp)        # 8-byte Spill
.LBB24_292:                             # %cond.end.2133
	movq	-928(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -936(%rbp)        # 8-byte Spill
	cqto
	movq	-936(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-920(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB24_313
	jmp	.LBB24_310
.LBB24_293:                             # %cond.false.2138
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB24_294
	jmp	.LBB24_295
.LBB24_294:                             # %cond.true.2139
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB24_313
	jmp	.LBB24_310
.LBB24_295:                             # %cond.false.2140
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB24_297
# BB#296:                               # %cond.true.2148
	movq	Vfontset_table, %rdi
	callq	ASIZE
	xorl	%ecx, %ecx
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	xorq	$-1, %rax
	cmpq	$-1, %rax
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %ecx
	movslq	%ecx, %rax
	movq	Vfontset_table, %rdi
	movq	%rax, -944(%rbp)        # 8-byte Spill
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	-944(%rbp), %rdi        # 8-byte Reload
	subq	%rax, %rdi
	movq	%rdi, -952(%rbp)        # 8-byte Spill
	jmp	.LBB24_298
.LBB24_297:                             # %cond.false.2169
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -952(%rbp)        # 8-byte Spill
.LBB24_298:                             # %cond.end.2175
	movq	-952(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -960(%rbp)        # 8-byte Spill
	cqto
	movq	-960(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	Vfontset_table, %rdi
	movq	%rax, -968(%rbp)        # 8-byte Spill
	callq	ASIZE
	shlq	$1, %rax
	movq	-968(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jl	.LBB24_313
	jmp	.LBB24_310
.LBB24_299:                             # %cond.false.2182
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB24_300
	jmp	.LBB24_301
.LBB24_300:                             # %cond.true.2183
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB24_313
	jmp	.LBB24_310
.LBB24_301:                             # %cond.false.2184
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB24_306
# BB#302:                               # %cond.true.2189
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movq	Vfontset_table, %rdi
	movq	%rax, -976(%rbp)        # 8-byte Spill
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB24_304
# BB#303:                               # %cond.true.2199
	movq	Vfontset_table, %rdi
	callq	ASIZE
	xorl	%ecx, %ecx
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	xorq	$-1, %rax
	cmpq	$-1, %rax
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %ecx
	movslq	%ecx, %rax
	movq	Vfontset_table, %rdi
	movq	%rax, -984(%rbp)        # 8-byte Spill
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	-984(%rbp), %rdi        # 8-byte Reload
	subq	%rax, %rdi
	movq	%rdi, -992(%rbp)        # 8-byte Spill
	jmp	.LBB24_305
.LBB24_304:                             # %cond.false.2220
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -992(%rbp)        # 8-byte Spill
.LBB24_305:                             # %cond.end.2226
	movq	-992(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1000(%rbp)       # 8-byte Spill
	cqto
	movq	-1000(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-976(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB24_313
	jmp	.LBB24_310
.LBB24_306:                             # %cond.false.2231
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB24_308
# BB#307:                               # %cond.true.2239
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1008(%rbp)       # 8-byte Spill
	jmp	.LBB24_309
.LBB24_308:                             # %cond.false.2249
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1008(%rbp)       # 8-byte Spill
.LBB24_309:                             # %cond.end.2255
	movq	-1008(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1016(%rbp)       # 8-byte Spill
	cqto
	movq	-1016(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	Vfontset_table, %rdi
	movq	%rax, -1024(%rbp)       # 8-byte Spill
	callq	ASIZE
	shlq	$1, %rax
	movq	-1024(%rbp), %rsi       # 8-byte Reload
	cmpq	%rax, %rsi
	jl	.LBB24_313
.LBB24_310:                             # %lor.lhs.false.2262
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB24_312
# BB#311:                               # %land.lhs.true.2270
	movq	Vfontset_table, %rdi
	callq	ASIZE
	movabsq	$-9223372036854775808, %rdi # imm = 0x8000000000000000
	shlq	$1, %rax
	shlq	$3, %rax
	cmpq	%rdi, %rax
	jl	.LBB24_313
.LBB24_312:                             # %lor.lhs.false.2276
	movq	Vfontset_table, %rdi
	callq	ASIZE
	movabsq	$9223372036854775807, %rdi # imm = 0x7FFFFFFFFFFFFFFF
	shlq	$1, %rax
	shlq	$3, %rax
	cmpq	%rax, %rdi
	jge	.LBB24_317
.LBB24_313:                             # %cond.true.2282
	movq	Vfontset_table, %rdi
	callq	ASIZE
	movabsq	$9223372036854775807, %rdi # imm = 0x7FFFFFFFFFFFFFFF
	shlq	$1, %rax
	shlq	$3, %rax
	cmpq	%rdi, %rax
	ja	.LBB24_315
# BB#314:                               # %cond.true.2288
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	shlq	$3, %rax
	movq	%rax, -1032(%rbp)       # 8-byte Spill
	jmp	.LBB24_316
.LBB24_315:                             # %cond.false.2292
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rdi # imm = 0x8000000000000000
	subq	%rdi, %rax
	movabsq	$-9223372036854775808, %rdi # imm = 0x8000000000000000
	addq	%rdi, %rax
	movq	%rax, -1032(%rbp)       # 8-byte Spill
.LBB24_316:                             # %cond.end.2298
	movq	-1032(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -128(%rbp)
	testb	$1, %cl
	jne	.LBB24_401
	jmp	.LBB24_400
.LBB24_317:                             # %cond.false.2300
	movq	Vfontset_table, %rdi
	callq	ASIZE
	movabsq	$9223372036854775807, %rdi # imm = 0x7FFFFFFFFFFFFFFF
	shlq	$1, %rax
	shlq	$3, %rax
	cmpq	%rdi, %rax
	ja	.LBB24_319
# BB#318:                               # %cond.true.2306
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	shlq	$3, %rax
	movq	%rax, -1040(%rbp)       # 8-byte Spill
	jmp	.LBB24_320
.LBB24_319:                             # %cond.false.2310
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rdi # imm = 0x8000000000000000
	subq	%rdi, %rax
	movabsq	$-9223372036854775808, %rdi # imm = 0x8000000000000000
	addq	%rdi, %rax
	movq	%rax, -1040(%rbp)       # 8-byte Spill
.LBB24_320:                             # %cond.end.2316
	movq	-1040(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -128(%rbp)
	testb	$1, %dl
	jne	.LBB24_401
	jmp	.LBB24_400
.LBB24_321:                             # %cond.false.2318
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB24_322
	jmp	.LBB24_361
.LBB24_322:                             # %cond.true.2319
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB24_324
# BB#323:                               # %cond.true.2327
	movq	Vfontset_table, %rdi
	callq	ASIZE
	xorl	%ecx, %ecx
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	xorq	$-1, %rax
	cmpq	$-1, %rax
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %ecx
	movslq	%ecx, %rax
	movq	Vfontset_table, %rdi
	movq	%rax, -1048(%rbp)       # 8-byte Spill
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	-1048(%rbp), %rdi       # 8-byte Reload
	subq	%rax, %rdi
	movq	%rdi, -1056(%rbp)       # 8-byte Spill
	jmp	.LBB24_325
.LBB24_324:                             # %cond.false.2348
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1056(%rbp)       # 8-byte Spill
.LBB24_325:                             # %cond.end.2354
	movq	-1056(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB24_327
# BB#326:                               # %land.lhs.true.2358
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	cmpq	$0, %rax
	jl	.LBB24_353
.LBB24_327:                             # %lor.lhs.false.2363
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB24_328
	jmp	.LBB24_339
.LBB24_328:                             # %cond.true.2364
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB24_333
# BB#329:                               # %cond.true.2369
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movq	Vfontset_table, %rdi
	movq	%rax, -1064(%rbp)       # 8-byte Spill
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB24_331
# BB#330:                               # %cond.true.2379
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1072(%rbp)       # 8-byte Spill
	jmp	.LBB24_332
.LBB24_331:                             # %cond.false.2389
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1072(%rbp)       # 8-byte Spill
.LBB24_332:                             # %cond.end.2395
	movq	-1072(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1080(%rbp)       # 8-byte Spill
	cqto
	movq	-1080(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1064(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB24_353
	jmp	.LBB24_350
.LBB24_333:                             # %cond.false.2400
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB24_334
	jmp	.LBB24_335
.LBB24_334:                             # %cond.true.2401
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB24_353
	jmp	.LBB24_350
.LBB24_335:                             # %cond.false.2402
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB24_337
# BB#336:                               # %cond.true.2410
	movq	Vfontset_table, %rdi
	callq	ASIZE
	xorl	%ecx, %ecx
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	xorq	$-1, %rax
	cmpq	$-1, %rax
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %ecx
	movslq	%ecx, %rax
	movq	Vfontset_table, %rdi
	movq	%rax, -1088(%rbp)       # 8-byte Spill
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	-1088(%rbp), %rdi       # 8-byte Reload
	subq	%rax, %rdi
	movq	%rdi, -1096(%rbp)       # 8-byte Spill
	jmp	.LBB24_338
.LBB24_337:                             # %cond.false.2431
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1096(%rbp)       # 8-byte Spill
.LBB24_338:                             # %cond.end.2437
	movq	-1096(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1104(%rbp)       # 8-byte Spill
	cqto
	movq	-1104(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	Vfontset_table, %rdi
	movq	%rax, -1112(%rbp)       # 8-byte Spill
	callq	ASIZE
	shlq	$1, %rax
	movq	-1112(%rbp), %rsi       # 8-byte Reload
	cmpq	%rax, %rsi
	jl	.LBB24_353
	jmp	.LBB24_350
.LBB24_339:                             # %cond.false.2444
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB24_340
	jmp	.LBB24_341
.LBB24_340:                             # %cond.true.2445
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB24_353
	jmp	.LBB24_350
.LBB24_341:                             # %cond.false.2446
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB24_346
# BB#342:                               # %cond.true.2451
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movq	Vfontset_table, %rdi
	movq	%rax, -1120(%rbp)       # 8-byte Spill
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB24_344
# BB#343:                               # %cond.true.2461
	movq	Vfontset_table, %rdi
	callq	ASIZE
	xorl	%ecx, %ecx
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	xorq	$-1, %rax
	cmpq	$-1, %rax
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %ecx
	movslq	%ecx, %rax
	movq	Vfontset_table, %rdi
	movq	%rax, -1128(%rbp)       # 8-byte Spill
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	-1128(%rbp), %rdi       # 8-byte Reload
	subq	%rax, %rdi
	movq	%rdi, -1136(%rbp)       # 8-byte Spill
	jmp	.LBB24_345
.LBB24_344:                             # %cond.false.2482
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1136(%rbp)       # 8-byte Spill
.LBB24_345:                             # %cond.end.2488
	movq	-1136(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1144(%rbp)       # 8-byte Spill
	cqto
	movq	-1144(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1120(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB24_353
	jmp	.LBB24_350
.LBB24_346:                             # %cond.false.2493
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB24_348
# BB#347:                               # %cond.true.2501
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1152(%rbp)       # 8-byte Spill
	jmp	.LBB24_349
.LBB24_348:                             # %cond.false.2511
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1152(%rbp)       # 8-byte Spill
.LBB24_349:                             # %cond.end.2517
	movq	-1152(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1160(%rbp)       # 8-byte Spill
	cqto
	movq	-1160(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	Vfontset_table, %rdi
	movq	%rax, -1168(%rbp)       # 8-byte Spill
	callq	ASIZE
	shlq	$1, %rax
	movq	-1168(%rbp), %rsi       # 8-byte Reload
	cmpq	%rax, %rsi
	jl	.LBB24_353
.LBB24_350:                             # %lor.lhs.false.2524
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB24_352
# BB#351:                               # %land.lhs.true.2532
	movq	Vfontset_table, %rdi
	callq	ASIZE
	movabsq	$-9223372036854775808, %rdi # imm = 0x8000000000000000
	shlq	$1, %rax
	shlq	$3, %rax
	cmpq	%rdi, %rax
	jl	.LBB24_353
.LBB24_352:                             # %lor.lhs.false.2538
	movq	Vfontset_table, %rdi
	callq	ASIZE
	movabsq	$9223372036854775807, %rdi # imm = 0x7FFFFFFFFFFFFFFF
	shlq	$1, %rax
	shlq	$3, %rax
	cmpq	%rax, %rdi
	jge	.LBB24_357
.LBB24_353:                             # %cond.true.2544
	movq	Vfontset_table, %rdi
	callq	ASIZE
	movabsq	$9223372036854775807, %rdi # imm = 0x7FFFFFFFFFFFFFFF
	shlq	$1, %rax
	shlq	$3, %rax
	cmpq	%rdi, %rax
	ja	.LBB24_355
# BB#354:                               # %cond.true.2550
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	shlq	$3, %rax
	movq	%rax, -1176(%rbp)       # 8-byte Spill
	jmp	.LBB24_356
.LBB24_355:                             # %cond.false.2554
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rdi # imm = 0x8000000000000000
	subq	%rdi, %rax
	movabsq	$-9223372036854775808, %rdi # imm = 0x8000000000000000
	addq	%rdi, %rax
	movq	%rax, -1176(%rbp)       # 8-byte Spill
.LBB24_356:                             # %cond.end.2560
	movq	-1176(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -128(%rbp)
	testb	$1, %cl
	jne	.LBB24_401
	jmp	.LBB24_400
.LBB24_357:                             # %cond.false.2562
	movq	Vfontset_table, %rdi
	callq	ASIZE
	movabsq	$9223372036854775807, %rdi # imm = 0x7FFFFFFFFFFFFFFF
	shlq	$1, %rax
	shlq	$3, %rax
	cmpq	%rdi, %rax
	ja	.LBB24_359
# BB#358:                               # %cond.true.2568
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	shlq	$3, %rax
	movq	%rax, -1184(%rbp)       # 8-byte Spill
	jmp	.LBB24_360
.LBB24_359:                             # %cond.false.2572
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rdi # imm = 0x8000000000000000
	subq	%rdi, %rax
	movabsq	$-9223372036854775808, %rdi # imm = 0x8000000000000000
	addq	%rdi, %rax
	movq	%rax, -1184(%rbp)       # 8-byte Spill
.LBB24_360:                             # %cond.end.2578
	movq	-1184(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -128(%rbp)
	testb	$1, %dl
	jne	.LBB24_401
	jmp	.LBB24_400
.LBB24_361:                             # %cond.false.2580
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB24_363
# BB#362:                               # %cond.true.2588
	movq	Vfontset_table, %rdi
	callq	ASIZE
	xorl	%ecx, %ecx
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	xorq	$-1, %rax
	cmpq	$-1, %rax
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %ecx
	movslq	%ecx, %rax
	movq	Vfontset_table, %rdi
	movq	%rax, -1192(%rbp)       # 8-byte Spill
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	-1192(%rbp), %rdi       # 8-byte Reload
	subq	%rax, %rdi
	movq	%rdi, -1200(%rbp)       # 8-byte Spill
	jmp	.LBB24_364
.LBB24_363:                             # %cond.false.2609
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1200(%rbp)       # 8-byte Spill
.LBB24_364:                             # %cond.end.2615
	movq	-1200(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB24_366
# BB#365:                               # %land.lhs.true.2619
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	cmpq	$0, %rax
	jl	.LBB24_392
.LBB24_366:                             # %lor.lhs.false.2624
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB24_367
	jmp	.LBB24_378
.LBB24_367:                             # %cond.true.2625
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB24_372
# BB#368:                               # %cond.true.2630
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movq	Vfontset_table, %rdi
	movq	%rax, -1208(%rbp)       # 8-byte Spill
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB24_370
# BB#369:                               # %cond.true.2640
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1216(%rbp)       # 8-byte Spill
	jmp	.LBB24_371
.LBB24_370:                             # %cond.false.2650
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1216(%rbp)       # 8-byte Spill
.LBB24_371:                             # %cond.end.2656
	movq	-1216(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1224(%rbp)       # 8-byte Spill
	cqto
	movq	-1224(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1208(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB24_392
	jmp	.LBB24_389
.LBB24_372:                             # %cond.false.2661
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB24_373
	jmp	.LBB24_374
.LBB24_373:                             # %cond.true.2662
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB24_392
	jmp	.LBB24_389
.LBB24_374:                             # %cond.false.2663
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB24_376
# BB#375:                               # %cond.true.2671
	movq	Vfontset_table, %rdi
	callq	ASIZE
	xorl	%ecx, %ecx
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	xorq	$-1, %rax
	cmpq	$-1, %rax
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %ecx
	movslq	%ecx, %rax
	movq	Vfontset_table, %rdi
	movq	%rax, -1232(%rbp)       # 8-byte Spill
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	-1232(%rbp), %rdi       # 8-byte Reload
	subq	%rax, %rdi
	movq	%rdi, -1240(%rbp)       # 8-byte Spill
	jmp	.LBB24_377
.LBB24_376:                             # %cond.false.2692
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1240(%rbp)       # 8-byte Spill
.LBB24_377:                             # %cond.end.2698
	movq	-1240(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1248(%rbp)       # 8-byte Spill
	cqto
	movq	-1248(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	Vfontset_table, %rdi
	movq	%rax, -1256(%rbp)       # 8-byte Spill
	callq	ASIZE
	shlq	$1, %rax
	movq	-1256(%rbp), %rsi       # 8-byte Reload
	cmpq	%rax, %rsi
	jl	.LBB24_392
	jmp	.LBB24_389
.LBB24_378:                             # %cond.false.2705
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB24_379
	jmp	.LBB24_380
.LBB24_379:                             # %cond.true.2706
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB24_392
	jmp	.LBB24_389
.LBB24_380:                             # %cond.false.2707
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB24_385
# BB#381:                               # %cond.true.2712
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movq	Vfontset_table, %rdi
	movq	%rax, -1264(%rbp)       # 8-byte Spill
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB24_383
# BB#382:                               # %cond.true.2722
	movq	Vfontset_table, %rdi
	callq	ASIZE
	xorl	%ecx, %ecx
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	xorq	$-1, %rax
	cmpq	$-1, %rax
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %ecx
	movslq	%ecx, %rax
	movq	Vfontset_table, %rdi
	movq	%rax, -1272(%rbp)       # 8-byte Spill
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	-1272(%rbp), %rdi       # 8-byte Reload
	subq	%rax, %rdi
	movq	%rdi, -1280(%rbp)       # 8-byte Spill
	jmp	.LBB24_384
.LBB24_383:                             # %cond.false.2743
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1280(%rbp)       # 8-byte Spill
.LBB24_384:                             # %cond.end.2749
	movq	-1280(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1288(%rbp)       # 8-byte Spill
	cqto
	movq	-1288(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1264(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB24_392
	jmp	.LBB24_389
.LBB24_385:                             # %cond.false.2754
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB24_387
# BB#386:                               # %cond.true.2762
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1296(%rbp)       # 8-byte Spill
	jmp	.LBB24_388
.LBB24_387:                             # %cond.false.2772
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1296(%rbp)       # 8-byte Spill
.LBB24_388:                             # %cond.end.2778
	movq	-1296(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1304(%rbp)       # 8-byte Spill
	cqto
	movq	-1304(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	Vfontset_table, %rdi
	movq	%rax, -1312(%rbp)       # 8-byte Spill
	callq	ASIZE
	shlq	$1, %rax
	movq	-1312(%rbp), %rsi       # 8-byte Reload
	cmpq	%rax, %rsi
	jl	.LBB24_392
.LBB24_389:                             # %lor.lhs.false.2785
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB24_391
# BB#390:                               # %land.lhs.true.2793
	movq	Vfontset_table, %rdi
	callq	ASIZE
	movabsq	$-9223372036854775808, %rdi # imm = 0x8000000000000000
	shlq	$1, %rax
	shlq	$3, %rax
	cmpq	%rdi, %rax
	jl	.LBB24_392
.LBB24_391:                             # %lor.lhs.false.2799
	movq	Vfontset_table, %rdi
	callq	ASIZE
	movabsq	$9223372036854775807, %rdi # imm = 0x7FFFFFFFFFFFFFFF
	shlq	$1, %rax
	shlq	$3, %rax
	cmpq	%rax, %rdi
	jge	.LBB24_396
.LBB24_392:                             # %cond.true.2805
	movq	Vfontset_table, %rdi
	callq	ASIZE
	movabsq	$9223372036854775807, %rdi # imm = 0x7FFFFFFFFFFFFFFF
	shlq	$1, %rax
	shlq	$3, %rax
	cmpq	%rdi, %rax
	ja	.LBB24_394
# BB#393:                               # %cond.true.2811
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	shlq	$3, %rax
	movq	%rax, -1320(%rbp)       # 8-byte Spill
	jmp	.LBB24_395
.LBB24_394:                             # %cond.false.2815
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rdi # imm = 0x8000000000000000
	subq	%rdi, %rax
	movabsq	$-9223372036854775808, %rdi # imm = 0x8000000000000000
	addq	%rdi, %rax
	movq	%rax, -1320(%rbp)       # 8-byte Spill
.LBB24_395:                             # %cond.end.2821
	movq	-1320(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -128(%rbp)
	testb	$1, %cl
	jne	.LBB24_401
	jmp	.LBB24_400
.LBB24_396:                             # %cond.false.2823
	movq	Vfontset_table, %rdi
	callq	ASIZE
	movabsq	$9223372036854775807, %rdi # imm = 0x7FFFFFFFFFFFFFFF
	shlq	$1, %rax
	shlq	$3, %rax
	cmpq	%rdi, %rax
	ja	.LBB24_398
# BB#397:                               # %cond.true.2829
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	shlq	$3, %rax
	movq	%rax, -1328(%rbp)       # 8-byte Spill
	jmp	.LBB24_399
.LBB24_398:                             # %cond.false.2833
	movq	Vfontset_table, %rdi
	callq	ASIZE
	shlq	$1, %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rdi # imm = 0x8000000000000000
	subq	%rdi, %rax
	movabsq	$-9223372036854775808, %rdi # imm = 0x8000000000000000
	addq	%rdi, %rax
	movq	%rax, -1328(%rbp)       # 8-byte Spill
.LBB24_399:                             # %cond.end.2839
	movq	-1328(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -128(%rbp)
	testb	$1, %dl
	jne	.LBB24_401
.LBB24_400:                             # %lor.lhs.false.2841
	movq	$-1, %rax
	cmpq	-128(%rbp), %rax
	jae	.LBB24_402
.LBB24_401:                             # %if.then
	movq	$-1, %rdi
	callq	memory_full
.LBB24_402:                             # %if.else
	movq	-128(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jg	.LBB24_404
# BB#403:                               # %if.then.2846
	movq	-128(%rbp), %rax
	movq	-104(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -104(%rbp)
	movq	-128(%rbp), %rax
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -32(%rbp)
	jmp	.LBB24_405
.LBB24_404:                             # %if.else.2848
	movq	-128(%rbp), %rdi
	callq	xmalloc
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	Vfontset_table, %rax
	movq	%rdi, -1336(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	callq	ASIZE
	shlq	$1, %rax
	movq	-1336(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	make_save_memory
	movabsq	$free_save_value, %rdi
	movq	%rax, -136(%rbp)
	movb	$1, -113(%rbp)
	movq	-136(%rbp), %rsi
	callq	record_unwind_protect
.LBB24_405:                             # %if.end
	jmp	.LBB24_406
.LBB24_406:                             # %if.end.2855
	jmp	.LBB24_407
.LBB24_407:                             # %do.end
	movq	-32(%rbp), %rax
	movq	Vfontset_table, %rdi
	movq	%rax, -1344(%rbp)       # 8-byte Spill
	callq	ASIZE
	shlq	$3, %rax
	movq	-1344(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	movq	%rdi, -24(%rbp)
	movl	$0, -92(%rbp)
	movl	$0, -88(%rbp)
.LBB24_408:                             # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-88(%rbp), %rax
	movq	Vfontset_table, %rdi
	movq	%rax, -1352(%rbp)       # 8-byte Spill
	callq	ASIZE
	movq	-1352(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jge	.LBB24_415
# BB#409:                               # %for.body
                                        #   in Loop: Header=BB24_408 Depth=1
	movq	Vfontset_table, %rdi
	movslq	-88(%rbp), %rsi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -1360(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1360(%rbp), %rsi       # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB24_413
# BB#410:                               # %land.lhs.true.2868
                                        #   in Loop: Header=BB24_408 Depth=1
	movq	-80(%rbp), %rdi
	callq	XCHAR_TABLE
	movq	576(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB24_413
# BB#411:                               # %land.lhs.true.2873
                                        #   in Loop: Header=BB24_408 Depth=1
	movq	-80(%rbp), %rdi
	callq	XCHAR_TABLE
	movq	584(%rax), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB24_413
# BB#412:                               # %if.then.2879
                                        #   in Loop: Header=BB24_408 Depth=1
	movq	-80(%rbp), %rax
	movl	-92(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -92(%rbp)
	movslq	%ecx, %rsi
	movq	-32(%rbp), %rdi
	movq	%rax, (%rdi,%rsi,8)
.LBB24_413:                             # %if.end.2882
                                        #   in Loop: Header=BB24_408 Depth=1
	jmp	.LBB24_414
.LBB24_414:                             # %for.inc
                                        #   in Loop: Header=BB24_408 Depth=1
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB24_408
.LBB24_415:                             # %for.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movslq	-92(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movl	$0, -92(%rbp)
	movl	$0, -88(%rbp)
.LBB24_416:                             # %for.cond.2888
                                        # =>This Inner Loop Header: Depth=1
	xorl	%edi, %edi
	movslq	-88(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -1368(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1368(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB24_417
	jmp	.LBB24_421
.LBB24_417:                             # %for.body.2895
                                        #   in Loop: Header=BB24_416 Depth=1
	movslq	-88(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	XCHAR_TABLE
	xorl	%edi, %edi
	movq	600(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -1376(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1376(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB24_419
# BB#418:                               # %if.then.2905
                                        #   in Loop: Header=BB24_416 Depth=1
	movq	-80(%rbp), %rax
	movl	-92(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -92(%rbp)
	movslq	%ecx, %rsi
	movq	-24(%rbp), %rdi
	movq	%rax, (%rdi,%rsi,8)
.LBB24_419:                             # %if.end.2910
                                        #   in Loop: Header=BB24_416 Depth=1
	jmp	.LBB24_420
.LBB24_420:                             # %for.inc.2911
                                        #   in Loop: Header=BB24_416 Depth=1
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB24_416
.LBB24_421:                             # %for.end.2913
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movl	$450, %edi              # imm = 0x1C2
	movslq	-92(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -1384(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1384(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Fmake_char_table
	movq	%rax, -64(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	cmpq	Vdefault_fontset, %rax
	je	.LBB24_423
# BB#422:                               # %if.then.2925
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -1392(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1392(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Fmake_char_table
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -56(%rbp)
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rdx
	callq	set_char_table_extras
	movq	Vdefault_fontset, %rax
	movq	%rax, -40(%rbp)
.LBB24_423:                             # %if.end.2933
	movl	$0, -96(%rbp)
.LBB24_424:                             # %for.cond.2934
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_426 Depth 2
                                        #       Child Loop BB24_432 Depth 3
                                        #       Child Loop BB24_438 Depth 3
                                        #         Child Loop BB24_449 Depth 4
                                        #       Child Loop BB24_463 Depth 3
	cmpl	$1, -96(%rbp)
	jg	.LBB24_472
# BB#425:                               # %for.body.2937
                                        #   in Loop: Header=BB24_424 Depth=1
	movl	$0, -84(%rbp)
.LBB24_426:                             # %for.cond.2938
                                        #   Parent Loop BB24_424 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB24_432 Depth 3
                                        #       Child Loop BB24_438 Depth 3
                                        #         Child Loop BB24_449 Depth 4
                                        #       Child Loop BB24_463 Depth 3
	cmpl	$4194303, -84(%rbp)     # imm = 0x3FFFFF
	jg	.LBB24_468
# BB#427:                               # %for.body.2941
                                        #   in Loop: Header=BB24_426 Depth=2
	movl	-84(%rbp), %eax
	movl	%eax, -140(%rbp)
	movl	$4194175, -144(%rbp)    # imm = 0x3FFF7F
	cmpl	$4194175, -84(%rbp)     # imm = 0x3FFF7F
	jg	.LBB24_429
# BB#428:                               # %if.then.2944
                                        #   in Loop: Header=BB24_426 Depth=2
	leaq	-140(%rbp), %rdx
	leaq	-144(%rbp), %rcx
	movslq	-96(%rbp), %rax
	movq	-48(%rbp,%rax,8), %rdi
	movl	-84(%rbp), %esi
	callq	char_table_ref_and_range
	movq	%rax, -72(%rbp)
	jmp	.LBB24_430
.LBB24_429:                             # %if.else.2948
                                        #   in Loop: Header=BB24_426 Depth=2
	movslq	-96(%rbp), %rax
	movq	-48(%rbp,%rax,8), %rdi
	callq	XCHAR_TABLE
	movq	608(%rax), %rax
	movq	%rax, -72(%rbp)
	movl	$4194303, -144(%rbp)    # imm = 0x3FFFFF
.LBB24_430:                             # %if.end.2954
                                        #   in Loop: Header=BB24_426 Depth=2
	movq	-72(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB24_431
	jmp	.LBB24_467
.LBB24_431:                             # %if.then.2956
                                        #   in Loop: Header=BB24_426 Depth=2
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -152(%rbp)
	movl	$0, -88(%rbp)
.LBB24_432:                             # %for.cond.2958
                                        #   Parent Loop BB24_424 Depth=1
                                        #     Parent Loop BB24_426 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movslq	-88(%rbp), %rax
	movq	-72(%rbp), %rdi
	movq	%rax, -1400(%rbp)       # 8-byte Spill
	callq	ASIZE
	movq	-1400(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jge	.LBB24_437
# BB#433:                               # %for.body.2963
                                        #   in Loop: Header=BB24_432 Depth=3
	movq	-72(%rbp), %rdi
	movslq	-88(%rbp), %rsi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -1408(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1408(%rbp), %rsi       # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB24_435
# BB#434:                               # %if.then.2969
                                        #   in Loop: Header=BB24_432 Depth=3
	movq	-72(%rbp), %rdi
	movslq	-88(%rbp), %rsi
	callq	AREF
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -1416(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1416(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-152(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -152(%rbp)
.LBB24_435:                             # %if.end.2976
                                        #   in Loop: Header=BB24_432 Depth=3
	jmp	.LBB24_436
.LBB24_436:                             # %for.inc.2977
                                        #   in Loop: Header=BB24_432 Depth=3
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB24_432
.LBB24_437:                             # %for.end.2979
                                        #   in Loop: Header=BB24_426 Depth=2
	movq	-152(%rbp), %rdi
	callq	Fnreverse
	movq	%rax, -152(%rbp)
	movl	$0, -88(%rbp)
.LBB24_438:                             # %for.cond.2981
                                        #   Parent Loop BB24_424 Depth=1
                                        #     Parent Loop BB24_426 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB24_449 Depth 4
	xorl	%edi, %edi
	movslq	-88(%rbp), %rax
	movslq	-96(%rbp), %rcx
	movq	-32(%rbp,%rcx,8), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -1424(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1424(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB24_439
	jmp	.LBB24_459
.LBB24_439:                             # %for.body.2990
                                        #   in Loop: Header=BB24_438 Depth=3
	cmpl	$4194175, -84(%rbp)     # imm = 0x3FFF7F
	jg	.LBB24_444
# BB#440:                               # %if.then.2993
                                        #   in Loop: Header=BB24_438 Depth=3
	movslq	-88(%rbp), %rax
	movslq	-96(%rbp), %rcx
	movq	-32(%rbp,%rcx,8), %rcx
	movq	(%rcx,%rax,8), %rax
	cmpq	Vdefault_fontset, %rax
	jne	.LBB24_442
# BB#441:                               # %cond.true.3000
                                        #   in Loop: Header=BB24_438 Depth=3
	movslq	-88(%rbp), %rax
	movslq	-96(%rbp), %rcx
	movq	-32(%rbp,%rcx,8), %rcx
	movq	(%rcx,%rax,8), %rdi
	movl	-84(%rbp), %esi
	callq	CHAR_TABLE_REF
	movq	%rax, -1432(%rbp)       # 8-byte Spill
	jmp	.LBB24_443
.LBB24_442:                             # %cond.false.3006
                                        #   in Loop: Header=BB24_438 Depth=3
	movslq	-88(%rbp), %rax
	movslq	-96(%rbp), %rcx
	movq	-32(%rbp,%rcx,8), %rcx
	movq	(%rcx,%rax,8), %rdi
	movl	-84(%rbp), %esi
	callq	fontset_ref
	movq	%rax, -1432(%rbp)       # 8-byte Spill
.LBB24_443:                             # %cond.end.3012
                                        #   in Loop: Header=BB24_438 Depth=3
	movq	-1432(%rbp), %rax       # 8-byte Reload
	movq	%rax, -72(%rbp)
	jmp	.LBB24_445
.LBB24_444:                             # %if.else.3014
                                        #   in Loop: Header=BB24_438 Depth=3
	movslq	-88(%rbp), %rax
	movslq	-96(%rbp), %rcx
	movq	-32(%rbp,%rcx,8), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	XCHAR_TABLE
	movq	608(%rax), %rax
	movq	%rax, -72(%rbp)
.LBB24_445:                             # %if.end.3022
                                        #   in Loop: Header=BB24_438 Depth=3
	movq	-72(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB24_447
# BB#446:                               # %lor.lhs.false.3026
                                        #   in Loop: Header=BB24_438 Depth=3
	movq	-72(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB24_448
.LBB24_447:                             # %if.then.3029
                                        #   in Loop: Header=BB24_438 Depth=3
	jmp	.LBB24_458
.LBB24_448:                             # %if.end.3030
                                        #   in Loop: Header=BB24_438 Depth=3
	movq	-72(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
	movl	$0, -92(%rbp)
.LBB24_449:                             # %for.cond.3034
                                        #   Parent Loop BB24_424 Depth=1
                                        #     Parent Loop BB24_426 Depth=2
                                        #       Parent Loop BB24_438 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movslq	-92(%rbp), %rax
	movq	-72(%rbp), %rdi
	movq	%rax, -1440(%rbp)       # 8-byte Spill
	callq	ASIZE
	movq	-1440(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jge	.LBB24_457
# BB#450:                               # %for.body.3039
                                        #   in Loop: Header=BB24_449 Depth=4
	movq	-72(%rbp), %rdi
	movslq	-92(%rbp), %rsi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -1448(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1448(%rbp), %rsi       # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB24_455
# BB#451:                               # %land.lhs.true.3045
                                        #   in Loop: Header=BB24_449 Depth=4
	movl	$2, %eax
	movl	%eax, %esi
	movq	-80(%rbp), %rdi
	callq	AREF
	movq	%rax, %rdi
	callq	FONT_OBJECT_P
	testb	$1, %al
	jne	.LBB24_452
	jmp	.LBB24_455
.LBB24_452:                             # %if.then.3049
                                        #   in Loop: Header=BB24_449 Depth=4
	movl	$2, %eax
	movl	%eax, %esi
	movq	-80(%rbp), %rdi
	callq	AREF
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -160(%rbp)
	movq	-80(%rbp), %rdi
	callq	AREF
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movq	-152(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fassq
	movl	$14, %ecx
	movl	%ecx, %esi
	movq	%rax, -168(%rbp)
	movq	-160(%rbp), %rdi
	callq	AREF
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rdi
	movq	-168(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rsi
	callq	Fmember
	xorl	%edi, %edi
	movq	%rax, -1456(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1456(%rbp), %rsi       # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB24_454
# BB#453:                               # %if.then.3062
                                        #   in Loop: Header=BB24_449 Depth=4
	movq	-168(%rbp), %rdi
	movq	-176(%rbp), %rax
	movq	%rdi, -1464(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	callq	list1
	movq	-1464(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	nconc2
	movq	%rax, -1472(%rbp)       # 8-byte Spill
.LBB24_454:                             # %if.end.3065
                                        #   in Loop: Header=BB24_449 Depth=4
	jmp	.LBB24_455
.LBB24_455:                             # %if.end.3066
                                        #   in Loop: Header=BB24_449 Depth=4
	jmp	.LBB24_456
.LBB24_456:                             # %for.inc.3067
                                        #   in Loop: Header=BB24_449 Depth=4
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB24_449
.LBB24_457:                             # %for.end.3069
                                        #   in Loop: Header=BB24_438 Depth=3
	jmp	.LBB24_458
.LBB24_458:                             # %for.inc.3070
                                        #   in Loop: Header=BB24_438 Depth=3
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB24_438
.LBB24_459:                             # %for.end.3072
                                        #   in Loop: Header=BB24_426 Depth=2
	cmpl	$4194175, -84(%rbp)     # imm = 0x3FFF7F
	jg	.LBB24_461
# BB#460:                               # %if.then.3075
                                        #   in Loop: Header=BB24_426 Depth=2
	movslq	-96(%rbp), %rax
	movq	-64(%rbp,%rax,8), %rdi
	movl	-84(%rbp), %esi
	movl	-144(%rbp), %edx
	movq	-152(%rbp), %rcx
	callq	char_table_set_range
	jmp	.LBB24_462
.LBB24_461:                             # %if.else.3078
                                        #   in Loop: Header=BB24_426 Depth=2
	movslq	-96(%rbp), %rax
	movq	-64(%rbp,%rax,8), %rdi
	movq	-152(%rbp), %rsi
	callq	set_char_table_defalt
.LBB24_462:                             # %if.end.3081
                                        #   in Loop: Header=BB24_426 Depth=2
	jmp	.LBB24_463
.LBB24_463:                             # %for.cond.3082
                                        #   Parent Loop BB24_424 Depth=1
                                        #     Parent Loop BB24_426 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-152(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB24_466
# BB#464:                               # %for.body.3087
                                        #   in Loop: Header=BB24_463 Depth=3
	xorl	%edi, %edi
	movq	-152(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	-80(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -1480(%rbp)       # 8-byte Spill
	movq	%rax, -1488(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1480(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Ffont_xlfd_name
	movq	-1488(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	XSETCAR
# BB#465:                               # %for.inc.3093
                                        #   in Loop: Header=BB24_463 Depth=3
	movq	-152(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -152(%rbp)
	jmp	.LBB24_463
.LBB24_466:                             # %for.end.3097
                                        #   in Loop: Header=BB24_426 Depth=2
	jmp	.LBB24_467
.LBB24_467:                             # %if.end.3098
                                        #   in Loop: Header=BB24_426 Depth=2
	movl	-144(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB24_426
.LBB24_468:                             # %for.end.3100
                                        #   in Loop: Header=BB24_424 Depth=1
	movq	-8(%rbp), %rax
	cmpq	Vdefault_fontset, %rax
	jne	.LBB24_470
# BB#469:                               # %if.then.3103
	jmp	.LBB24_472
.LBB24_470:                             # %if.end.3104
                                        #   in Loop: Header=BB24_424 Depth=1
	jmp	.LBB24_471
.LBB24_471:                             # %for.inc.3105
                                        #   in Loop: Header=BB24_424 Depth=1
	movl	-96(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -96(%rbp)
	jmp	.LBB24_424
.LBB24_472:                             # %for.end.3107
	jmp	.LBB24_473
.LBB24_473:                             # %do.body.3108
	testb	$1, -113(%rbp)
	je	.LBB24_475
# BB#474:                               # %if.then.3109
	xorl	%edi, %edi
	movb	$0, -113(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -1496(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1496(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -1504(%rbp)       # 8-byte Spill
.LBB24_475:                             # %if.end.3112
	jmp	.LBB24_476
.LBB24_476:                             # %do.end.3113
	movq	-64(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	Ffontset_info, .Lfunc_end24-Ffontset_info
	.cfi_endproc

	.align	16, 0x90
	.type	fontset_ref,@function
fontset_ref:                            # @fontset_ref
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	CHAR_TABLE_REF
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB25_4
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	cmpq	Vdefault_fontset, %rax
	je	.LBB25_4
# BB#2:                                 # %land.lhs.true.3
	movq	-8(%rbp), %rdi
	callq	XCHAR_TABLE
	xorl	%edi, %edi
	movq	576(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB25_4
# BB#3:                                 # %if.then
	movq	Vdefault_fontset, %rdi
	movl	-12(%rbp), %esi
	callq	CHAR_TABLE_REF
	movq	%rax, -24(%rbp)
.LBB25_4:                               # %if.end
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	fontset_ref, .Lfunc_end25-fontset_ref
	.cfi_endproc

	.globl	Ffontset_font
	.align	16, 0x90
	.type	Ffontset_font,@function
Ffontset_font:                          # @Ffontset_font
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
	subq	$208, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	leaq	-96(%rbp), %rsi
	movq	%rax, -96(%rbp)
	movq	-16(%rbp), %rdi
	callq	check_fontset_name
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB26_1
	jmp	.LBB26_3
.LBB26_1:                               # %land.lhs.true
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jg	.LBB26_3
# BB#2:                                 # %cond.true
	jmp	.LBB26_4
.LBB26_3:                               # %cond.false
	movl	$260, %edi              # imm = 0x104
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB26_4:                               # %cond.end
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -36(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -64(%rbp)
.LBB26_5:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB26_9 Depth 2
                                        #       Child Loop BB26_12 Depth 3
	movl	$0, -84(%rbp)
	movq	-48(%rbp), %rax
	cmpq	Vdefault_fontset, %rax
	jne	.LBB26_7
# BB#6:                                 # %cond.true.8
                                        #   in Loop: Header=BB26_5 Depth=1
	movq	-48(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	CHAR_TABLE_REF
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB26_8
.LBB26_7:                               # %cond.false.10
                                        #   in Loop: Header=BB26_5 Depth=1
	movq	-48(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	fontset_ref
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB26_8:                               # %cond.end.12
                                        #   in Loop: Header=BB26_5 Depth=1
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, -56(%rbp)
.LBB26_9:                               # %for.cond
                                        #   Parent Loop BB26_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB26_12 Depth 3
	cmpl	$2, -84(%rbp)
	jge	.LBB26_53
# BB#10:                                # %for.body
                                        #   in Loop: Header=BB26_9 Depth=2
	movq	-56(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB26_11
	jmp	.LBB26_51
.LBB26_11:                              # %if.then
                                        #   in Loop: Header=BB26_9 Depth=2
	movl	$0, -88(%rbp)
.LBB26_12:                              # %for.cond.16
                                        #   Parent Loop BB26_5 Depth=1
                                        #     Parent Loop BB26_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movslq	-88(%rbp), %rax
	movq	-56(%rbp), %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	ASIZE
	movq	-144(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jge	.LBB26_50
# BB#13:                                # %for.body.21
                                        #   in Loop: Header=BB26_12 Depth=3
	movq	-56(%rbp), %rdi
	movslq	-88(%rbp), %rsi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB26_15
# BB#14:                                # %if.then.27
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB26_57
.LBB26_15:                              # %if.end
                                        #   in Loop: Header=BB26_12 Depth=3
	movl	$1, %eax
	movl	%eax, %esi
	movq	-80(%rbp), %rdi
	callq	AREF
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB26_37
# BB#16:                                # %if.then.34
                                        #   in Loop: Header=BB26_12 Depth=3
	movb	$1, %al
	movq	charset_table, %rcx
	movq	-72(%rbp), %rdx
	sarq	$2, %rdx
	imulq	$328, %rdx, %rdx        # imm = 0x148
	addq	%rdx, %rcx
	movq	%rcx, -120(%rbp)
	testb	$1, %al
	jne	.LBB26_17
	jmp	.LBB26_18
.LBB26_17:                              # %cond.true.36
                                        #   in Loop: Header=BB26_12 Depth=3
	movl	-36(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB26_19
	jmp	.LBB26_20
.LBB26_18:                              # %cond.false.39
                                        #   in Loop: Header=BB26_12 Depth=3
	movslq	-36(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB26_20
.LBB26_19:                              # %land.lhs.true.44
                                        #   in Loop: Header=BB26_12 Depth=3
	movq	-120(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$2, %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB26_36
.LBB26_20:                              # %lor.lhs.false
                                        #   in Loop: Header=BB26_12 Depth=3
	movq	-120(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$5, %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB26_23
# BB#21:                                # %lor.lhs.false.51
                                        #   in Loop: Header=BB26_12 Depth=3
	movq	-120(%rbp), %rax
	cmpl	$2, 104(%rax)
	je	.LBB26_23
# BB#22:                                # %lor.lhs.false.54
                                        #   in Loop: Header=BB26_12 Depth=3
	movq	-120(%rbp), %rax
	cmpl	$3, 104(%rax)
	jne	.LBB26_24
.LBB26_23:                              # %cond.true.58
                                        #   in Loop: Header=BB26_12 Depth=3
	movq	-120(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	encode_char
	movq	-120(%rbp), %rdi
	cmpl	128(%rdi), %eax
	jne	.LBB26_36
	jmp	.LBB26_35
.LBB26_24:                              # %cond.false.62
                                        #   in Loop: Header=BB26_12 Depth=3
	cmpl	$65536, -36(%rbp)       # imm = 0x10000
	jge	.LBB26_26
# BB#25:                                # %cond.true.65
                                        #   in Loop: Header=BB26_12 Depth=3
	movl	$1, %eax
	movl	-36(%rbp), %ecx
	sarl	$10, %ecx
	movslq	%ecx, %rdx
	movq	-120(%rbp), %rsi
	movzbl	132(%rsi,%rdx), %ecx
	movl	-36(%rbp), %edi
	sarl	$7, %edi
	andl	$7, %edi
	movl	%ecx, -156(%rbp)        # 4-byte Spill
	movl	%edi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	movl	-156(%rbp), %edi        # 4-byte Reload
	andl	%eax, %edi
	cmpl	$0, %edi
	jne	.LBB26_27
	jmp	.LBB26_35
.LBB26_26:                              # %cond.false.71
                                        #   in Loop: Header=BB26_12 Depth=3
	movl	$1, %eax
	movl	-36(%rbp), %ecx
	sarl	$15, %ecx
	addl	$62, %ecx
	movslq	%ecx, %rdx
	movq	-120(%rbp), %rsi
	movzbl	132(%rsi,%rdx), %ecx
	movl	-36(%rbp), %edi
	sarl	$12, %edi
	andl	$7, %edi
	movl	%ecx, -160(%rbp)        # 4-byte Spill
	movl	%edi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	movl	-160(%rbp), %edi        # 4-byte Reload
	andl	%eax, %edi
	cmpl	$0, %edi
	je	.LBB26_35
.LBB26_27:                              # %land.lhs.true.83
                                        #   in Loop: Header=BB26_12 Depth=3
	movq	-120(%rbp), %rax
	cmpl	$0, 104(%rax)
	jne	.LBB26_30
# BB#28:                                # %cond.true.87
                                        #   in Loop: Header=BB26_12 Depth=3
	movl	-36(%rbp), %eax
	movq	-120(%rbp), %rcx
	cmpl	120(%rcx), %eax
	jl	.LBB26_35
# BB#29:                                # %land.lhs.true.90
                                        #   in Loop: Header=BB26_12 Depth=3
	movl	-36(%rbp), %eax
	movq	-120(%rbp), %rcx
	cmpl	124(%rcx), %eax
	jle	.LBB26_36
	jmp	.LBB26_35
.LBB26_30:                              # %cond.false.93
                                        #   in Loop: Header=BB26_12 Depth=3
	movq	-120(%rbp), %rax
	cmpl	$1, 104(%rax)
	jne	.LBB26_34
# BB#31:                                # %land.lhs.true.97
                                        #   in Loop: Header=BB26_12 Depth=3
	movq	-120(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$4, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB26_34
# BB#32:                                # %land.lhs.true.103
                                        #   in Loop: Header=BB26_12 Depth=3
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-120(%rbp), %rdi
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
	jne	.LBB26_33
	jmp	.LBB26_34
.LBB26_33:                              # %cond.true.109
                                        #   in Loop: Header=BB26_12 Depth=3
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-120(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	$5, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movl	-36(%rbp), %esi
	movq	%rax, %rdi
	callq	CHAR_TABLE_REF
	xorl	%edi, %edi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB26_35
	jmp	.LBB26_36
.LBB26_34:                              # %cond.false.118
                                        #   in Loop: Header=BB26_12 Depth=3
	movq	-120(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	encode_char
	movq	-120(%rbp), %rdi
	cmpl	128(%rdi), %eax
	jne	.LBB26_36
.LBB26_35:                              # %if.then.123
                                        #   in Loop: Header=BB26_12 Depth=3
	jmp	.LBB26_49
.LBB26_36:                              # %if.end.124
                                        #   in Loop: Header=BB26_12 Depth=3
	jmp	.LBB26_42
.LBB26_37:                              # %if.else
                                        #   in Loop: Header=BB26_12 Depth=3
	movq	-72(%rbp), %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB26_38
	jmp	.LBB26_41
.LBB26_38:                              # %if.then.126
                                        #   in Loop: Header=BB26_12 Depth=3
	movq	-72(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	CHAR_TABLE_REF
	xorl	%edi, %edi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB26_40
# BB#39:                                # %if.then.131
                                        #   in Loop: Header=BB26_12 Depth=3
	jmp	.LBB26_49
.LBB26_40:                              # %if.end.132
                                        #   in Loop: Header=BB26_12 Depth=3
	jmp	.LBB26_41
.LBB26_41:                              # %if.end.133
                                        #   in Loop: Header=BB26_12 Depth=3
	jmp	.LBB26_42
.LBB26_42:                              # %if.end.134
                                        #   in Loop: Header=BB26_12 Depth=3
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-80(%rbp), %rdi
	callq	AREF
	movl	$2, %ecx
	movl	%ecx, %esi
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB26_44
# BB#43:                                # %if.then.140
                                        #   in Loop: Header=BB26_12 Depth=3
	movq	-104(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, -104(%rbp)
.LBB26_44:                              # %if.end.142
                                        #   in Loop: Header=BB26_12 Depth=3
	movl	$4, %eax
	movl	%eax, %esi
	movq	-80(%rbp), %rdi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB26_46
# BB#45:                                # %if.then.147
                                        #   in Loop: Header=BB26_12 Depth=3
	movq	-112(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, -112(%rbp)
.LBB26_46:                              # %if.end.149
                                        #   in Loop: Header=BB26_12 Depth=3
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	Fcons
	xorl	%edi, %edi
	movq	%rax, -80(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-200(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB26_48
# BB#47:                                # %if.then.154
	movq	-80(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB26_57
.LBB26_48:                              # %if.end.155
                                        #   in Loop: Header=BB26_12 Depth=3
	movq	-80(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	Fcons
	movq	%rax, -64(%rbp)
.LBB26_49:                              # %for.inc
                                        #   in Loop: Header=BB26_12 Depth=3
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB26_12
.LBB26_50:                              # %for.end
                                        #   in Loop: Header=BB26_9 Depth=2
	jmp	.LBB26_51
.LBB26_51:                              # %if.end.157
                                        #   in Loop: Header=BB26_9 Depth=2
	jmp	.LBB26_52
.LBB26_52:                              # %for.inc.158
                                        #   in Loop: Header=BB26_9 Depth=2
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	movq	-48(%rbp), %rdi
	callq	XCHAR_TABLE
	movq	608(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB26_9
.LBB26_53:                              # %for.end.162
                                        #   in Loop: Header=BB26_5 Depth=1
	movq	-48(%rbp), %rax
	cmpq	Vdefault_fontset, %rax
	jne	.LBB26_55
# BB#54:                                # %if.then.165
	jmp	.LBB26_56
.LBB26_55:                              # %if.end.166
                                        #   in Loop: Header=BB26_5 Depth=1
	movq	Vdefault_fontset, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB26_5
.LBB26_56:                              # %while.end
	movq	-64(%rbp), %rdi
	callq	Fnreverse
	movq	%rax, -8(%rbp)
.LBB26_57:                              # %return
	movq	-8(%rbp), %rax
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	Ffontset_font, .Lfunc_end26-Ffontset_font
	.cfi_endproc

	.globl	Ffontset_list
	.align	16, 0x90
	.type	Ffontset_list,@function
Ffontset_list:                          # @Ffontset_list
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
	subq	$48, %rsp
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB27_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-20(%rbp), %rax
	movq	Vfontset_table, %rdi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	ASIZE
	movq	-32(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	jge	.LBB27_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB27_1 Depth=1
	movq	Vfontset_table, %rdi
	movslq	-20(%rbp), %rsi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB27_5
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB27_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	XCHAR_TABLE
	xorl	%edi, %edi
	movq	576(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB27_5
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB27_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	XCHAR_TABLE
	movq	560(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	Fcons
	movq	%rax, -16(%rbp)
.LBB27_5:                               # %if.end
                                        #   in Loop: Header=BB27_1 Depth=1
	jmp	.LBB27_6
.LBB27_6:                               # %for.inc
                                        #   in Loop: Header=BB27_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB27_1
.LBB27_7:                               # %for.end
	movq	-16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	Ffontset_list, .Lfunc_end27-Ffontset_list
	.cfi_endproc

	.globl	syms_of_fontset
	.align	16, 0x90
	.type	syms_of_fontset,@function
syms_of_fontset:                        # @syms_of_fontset
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
	subq	$64, %rsp
	movl	$449, %edi              # imm = 0x1C1
	callq	builtin_lisp_symbol
	movl	$258, %edi              # imm = 0x102
	movq	%rax, -8(%rbp)          # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$34, %edi
	movl	%edi, %edx
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movq	%rax, %rsi
	callq	Fput
	movl	$450, %edi              # imm = 0x1C2
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$258, %edi              # imm = 0x102
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$6, %edi
	movl	%edi, %edx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fput
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$Vcached_fontset_data, %rdi
	movq	%rax, Vcached_fontset_data
	callq	staticpro
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movl	$130, %edi
                                        # kill: RDI<def> EDI<kill>
	movq	%rax, %rsi
	callq	Fmake_vector
	movabsq	$Vfontset_table, %rdi
	movq	%rax, Vfontset_table
	callq	staticpro
	movl	$449, %edi              # imm = 0x1C1
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fmake_char_table
	movabsq	$Vdefault_fontset, %rdi
	movq	%rax, Vdefault_fontset
	callq	staticpro
	movl	$2, %ecx
	movl	%ecx, %esi
	movq	Vdefault_fontset, %rdi
	callq	set_fontset_id
	movabsq	$.L.str.12, %rdi
	movq	Vdefault_fontset, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	build_pure_c_string
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	set_fontset_name
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	Vfontset_table, %rdi
	movq	Vdefault_fontset, %rdx
	callq	ASET
	xorl	%edi, %edi
	movl	$1, next_fontset_id
	callq	builtin_lisp_symbol
	movabsq	$auto_fontset_alist, %rdi
	movq	%rax, auto_fontset_alist
	callq	staticpro
# BB#1:                                 # %do.body
	movabsq	$syms_of_fontset.o_fwd, %rdi
	movabsq	$.L.str.13, %rsi
	movabsq	$globals, %rax
	addq	$824, %rax              # imm = 0x338
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#2:                                 # %do.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+824
# BB#3:                                 # %do.body.15
	movabsq	$syms_of_fontset.o_fwd.14, %rdi
	movabsq	$.L.str.15, %rsi
	movabsq	$globals, %rax
	addq	$2544, %rax             # imm = 0x9F0
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#4:                                 # %do.end.16
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+2544
# BB#5:                                 # %do.body.18
	movabsq	$syms_of_fontset.o_fwd.16, %rdi
	movabsq	$.L.str.17, %rsi
	movabsq	$globals, %rax
	addq	$1032, %rax             # imm = 0x408
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#6:                                 # %do.end.19
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+1032
# BB#7:                                 # %do.body.21
	movabsq	$syms_of_fontset.o_fwd.18, %rdi
	movabsq	$.L.str.19, %rsi
	movabsq	$globals, %rax
	addq	$32, %rax
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#8:                                 # %do.end.22
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+32
# BB#9:                                 # %do.body.24
	movabsq	$syms_of_fontset.o_fwd.20, %rdi
	movabsq	$.L.str.21, %rsi
	movabsq	$globals, %rax
	addq	$872, %rax              # imm = 0x368
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#10:                                # %do.end.25
	movq	Vdefault_fontset, %rdi
	callq	XCHAR_TABLE
	movabsq	$.L.str.22, %rdi
	movq	560(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	build_pure_c_string
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	%rax, %rdi
	callq	list1
	movq	%rax, globals+872
# BB#11:                                # %do.body.30
	movabsq	$syms_of_fontset.o_fwd.23, %rdi
	movabsq	$.L.str.24, %rsi
	movabsq	$globals, %rax
	addq	$2592, %rax             # imm = 0xA20
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#12:                                # %do.end.31
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+2592
# BB#13:                                # %do.body.33
	movabsq	$syms_of_fontset.o_fwd.25, %rdi
	movabsq	$.L.str.26, %rsi
	movabsq	$globals, %rax
	addq	$1680, %rax             # imm = 0x690
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#14:                                # %do.end.34
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$Squery_fontset, %rcx
	movq	%rax, globals+1680
	movq	%rcx, %rdi
	callq	defsubr
	movabsq	$Snew_fontset, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sset_fontset_font, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sfontset_info, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sfontset_font, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sfontset_list, %rdi
	callq	defsubr
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	syms_of_fontset, .Lfunc_end28-syms_of_fontset
	.cfi_endproc

	.align	16, 0x90
	.type	set_fontset_id,@function
set_fontset_id:                         # @set_fontset_id
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
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	%rcx, %rsi
	callq	set_char_table_extras
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	set_fontset_id, .Lfunc_end29-set_fontset_id
	.cfi_endproc

	.align	16, 0x90
	.type	set_fontset_name,@function
set_fontset_name:                       # @set_fontset_name
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
	subq	$16, %rsp
	movl	$1, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	%rcx, %rsi
	callq	set_char_table_extras
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	set_fontset_name, .Lfunc_end30-set_fontset_name
	.cfi_endproc

	.align	16, 0x90
	.type	fontset_find_font,@function
fontset_find_font:                      # @fontset_find_font
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
	subq	$432, %rsp              # imm = 0x1B0
	movb	%r8b, %al
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	andb	$1, %al
	movb	%al, -37(%rbp)
	movl	$0, -64(%rbp)
	movq	-16(%rbp), %rdi
	callq	XCHAR_TABLE
	movq	584(%rax), %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB31_1
	jmp	.LBB31_2
.LBB31_1:                               # %cond.true
	movq	-16(%rbp), %rdi
	callq	XCHAR_TABLE
	movq	584(%rax), %rax
	subq	$5, %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB31_3
.LBB31_2:                               # %cond.false
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB31_3:                               # %cond.end
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rdi
	testb	$1, -37(%rbp)
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	je	.LBB31_5
# BB#4:                                 # %cond.true.6
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -156(%rbp)        # 4-byte Spill
	jmp	.LBB31_6
.LBB31_5:                               # %cond.false.7
	movl	-20(%rbp), %eax
	movl	%eax, -156(%rbp)        # 4-byte Spill
.LBB31_6:                               # %cond.end.8
	movl	-156(%rbp), %eax        # 4-byte Reload
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	fontset_get_font_group
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %esi
	cmpl	$3, %esi
	je	.LBB31_8
# BB#7:                                 # %if.then
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB31_96
.LBB31_8:                               # %if.end
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	ASIZE
	cmpq	$0, %rax
	jne	.LBB31_10
# BB#9:                                 # %if.then.16
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB31_96
.LBB31_10:                              # %if.end.18
	movq	-48(%rbp), %rdi
	callq	ASIZE
	cmpq	$1, %rax
	jle	.LBB31_24
# BB#11:                                # %if.then.22
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	cmpq	charset_ordered_list_tick, %rax
	je	.LBB31_13
# BB#12:                                # %if.then.26
	movq	-56(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	264(%rax), %rax
	movq	224(%rax), %rsi
	callq	reorder_font_vector
.LBB31_13:                              # %if.end.27
	cmpl	$0, -36(%rbp)
	jl	.LBB31_23
# BB#14:                                # %if.then.30
	movl	$0, -60(%rbp)
.LBB31_15:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-60(%rbp), %rax
	movq	-48(%rbp), %rdi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	ASIZE
	movq	-168(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jge	.LBB31_22
# BB#16:                                # %for.body
                                        #   in Loop: Header=BB31_15 Depth=1
	movq	-48(%rbp), %rdi
	movslq	-60(%rbp), %rsi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB31_18
# BB#17:                                # %if.then.40
	jmp	.LBB31_22
.LBB31_18:                              # %if.end.41
                                        #   in Loop: Header=BB31_15 Depth=1
	movl	$1, %eax
	movl	%eax, %esi
	movq	-88(%rbp), %rdi
	callq	AREF
	movl	$2, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	sarq	$2, %rax
	movslq	-36(%rbp), %rsi
	cmpq	%rsi, %rax
	jne	.LBB31_20
# BB#19:                                # %if.then.48
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB31_22
.LBB31_20:                              # %if.end.49
                                        #   in Loop: Header=BB31_15 Depth=1
	jmp	.LBB31_21
.LBB31_21:                              # %for.inc
                                        #   in Loop: Header=BB31_15 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB31_15
.LBB31_22:                              # %for.end
	jmp	.LBB31_23
.LBB31_23:                              # %if.end.50
	jmp	.LBB31_24
.LBB31_24:                              # %if.end.51
	movl	$0, -60(%rbp)
.LBB31_25:                              # %for.cond.52
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB31_32 Depth 2
                                        #     Child Loop BB31_59 Depth 2
	movslq	-60(%rbp), %rax
	movq	-48(%rbp), %rdi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	ASIZE
	movq	-184(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jge	.LBB31_87
# BB#26:                                # %for.body.57
                                        #   in Loop: Header=BB31_25 Depth=1
	movl	-60(%rbp), %eax
	movl	%eax, -68(%rbp)
	cmpl	$0, -60(%rbp)
	jne	.LBB31_30
# BB#27:                                # %if.then.60
                                        #   in Loop: Header=BB31_25 Depth=1
	cmpl	$0, -64(%rbp)
	jle	.LBB31_29
# BB#28:                                # %if.then.63
                                        #   in Loop: Header=BB31_25 Depth=1
	xorl	%eax, %eax
	movl	-64(%rbp), %ecx
	movl	%ecx, -68(%rbp)
	subl	-64(%rbp), %eax
	movl	%eax, -64(%rbp)
	movl	-60(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -60(%rbp)
.LBB31_29:                              # %if.end.65
                                        #   in Loop: Header=BB31_25 Depth=1
	jmp	.LBB31_41
.LBB31_30:                              # %if.else
                                        #   in Loop: Header=BB31_25 Depth=1
	xorl	%eax, %eax
	movl	-60(%rbp), %ecx
	subl	-64(%rbp), %eax
	cmpl	%eax, %ecx
	jne	.LBB31_40
# BB#31:                                # %if.then.69
                                        #   in Loop: Header=BB31_25 Depth=1
	movq	-48(%rbp), %rdi
	movslq	-60(%rbp), %rsi
	callq	AREF
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	callq	AREF
	movq	%rax, -104(%rbp)
.LBB31_32:                              # %for.cond.73
                                        #   Parent Loop BB31_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdi
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	callq	ASIZE
	movq	-192(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jge	.LBB31_39
# BB#33:                                # %for.body.78
                                        #   in Loop: Header=BB31_32 Depth=2
	movq	-48(%rbp), %rdi
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rsi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-200(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB31_35
# BB#34:                                # %if.then.85
                                        #   in Loop: Header=BB31_25 Depth=1
	jmp	.LBB31_39
.LBB31_35:                              # %if.end.86
                                        #   in Loop: Header=BB31_32 Depth=2
	movl	$1, %eax
	movl	%eax, %esi
	movq	-88(%rbp), %rdi
	callq	AREF
	cmpq	-104(%rbp), %rax
	je	.LBB31_37
# BB#36:                                # %if.then.90
                                        #   in Loop: Header=BB31_25 Depth=1
	jmp	.LBB31_39
.LBB31_37:                              # %if.end.91
                                        #   in Loop: Header=BB31_32 Depth=2
	jmp	.LBB31_38
.LBB31_38:                              # %for.inc.92
                                        #   in Loop: Header=BB31_32 Depth=2
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB31_32
.LBB31_39:                              # %for.end.94
                                        #   in Loop: Header=BB31_25 Depth=1
	jmp	.LBB31_86
.LBB31_40:                              # %if.end.95
                                        #   in Loop: Header=BB31_25 Depth=1
	jmp	.LBB31_41
.LBB31_41:                              # %if.end.96
                                        #   in Loop: Header=BB31_25 Depth=1
	movq	-48(%rbp), %rdi
	movslq	-68(%rbp), %rsi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB31_45
# BB#42:                                # %if.then.102
                                        #   in Loop: Header=BB31_25 Depth=1
	cmpl	$0, -60(%rbp)
	jge	.LBB31_44
# BB#43:                                # %if.then.105
                                        #   in Loop: Header=BB31_25 Depth=1
	jmp	.LBB31_86
.LBB31_44:                              # %if.end.106
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB31_96
.LBB31_45:                              # %if.end.108
                                        #   in Loop: Header=BB31_25 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-88(%rbp), %rdi
	callq	AREF
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB31_48
# BB#46:                                # %land.lhs.true
                                        #   in Loop: Header=BB31_25 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-88(%rbp), %rdi
	callq	AREF
	sarq	$2, %rax
	cmpq	$0, %rax
	jge	.LBB31_48
# BB#47:                                # %if.then.119
                                        #   in Loop: Header=BB31_25 Depth=1
	jmp	.LBB31_86
.LBB31_48:                              # %if.end.120
                                        #   in Loop: Header=BB31_25 Depth=1
	movl	$2, %eax
	movl	%eax, %esi
	movq	-88(%rbp), %rdi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB31_56
# BB#49:                                # %if.then.125
                                        #   in Loop: Header=BB31_25 Depth=1
	movl	$1, %eax
	movl	%eax, %esi
	movq	-88(%rbp), %rdi
	callq	AREF
	movq	%rax, -104(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB31_51
# BB#50:                                # %if.then.128
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB31_96
.LBB31_51:                              # %if.end.130
                                        #   in Loop: Header=BB31_25 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-80(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-104(%rbp), %rdx
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	callq	AREF
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	-232(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	font_find_for_lface
	xorl	%edi, %edi
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-240(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB31_53
# BB#52:                                # %if.then.136
                                        #   in Loop: Header=BB31_25 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	$-2, %rdx
	movq	-88(%rbp), %rdi
	callq	ASET
	jmp	.LBB31_86
.LBB31_53:                              # %if.end.137
                                        #   in Loop: Header=BB31_25 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-80(%rbp), %rdi
	movq	-112(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-104(%rbp), %r8
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	movq	%rdx, -264(%rbp)        # 8-byte Spill
	callq	AREF
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	-256(%rbp), %rsi        # 8-byte Reload
	movq	-264(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	font_open_for_lface
	xorl	%edi, %edi
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-272(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB31_55
# BB#54:                                # %if.then.145
                                        #   in Loop: Header=BB31_25 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	$-2, %rdx
	movq	-88(%rbp), %rdi
	callq	ASET
	jmp	.LBB31_86
.LBB31_55:                              # %if.end.146
                                        #   in Loop: Header=BB31_25 Depth=1
	movl	$2, %eax
	movl	%eax, %esi
	movq	-88(%rbp), %rdi
	movq	-120(%rbp), %rdx
	callq	ASET
.LBB31_56:                              # %if.end.147
                                        #   in Loop: Header=BB31_25 Depth=1
	movq	-80(%rbp), %rdi
	movq	-120(%rbp), %rsi
	movl	-20(%rbp), %edx
	callq	font_has_char
	cmpl	$0, %eax
	je	.LBB31_58
# BB#57:                                # %if.then.150
	jmp	.LBB31_88
.LBB31_58:                              # %if.end.151
                                        #   in Loop: Header=BB31_25 Depth=1
	movl	$1, %eax
	movl	%eax, %esi
	movq	-88(%rbp), %rdi
	callq	AREF
	movq	%rax, -104(%rbp)
.LBB31_59:                              # %for.cond.153
                                        #   Parent Loop BB31_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdi
	movq	%rcx, -280(%rbp)        # 8-byte Spill
	callq	ASIZE
	movq	-280(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jge	.LBB31_69
# BB#60:                                # %for.body.159
                                        #   in Loop: Header=BB31_59 Depth=2
	movq	-48(%rbp), %rdi
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rsi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-288(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB31_62
# BB#61:                                # %if.then.166
                                        #   in Loop: Header=BB31_25 Depth=1
	jmp	.LBB31_69
.LBB31_62:                              # %if.end.167
                                        #   in Loop: Header=BB31_59 Depth=2
	movl	$1, %eax
	movl	%eax, %esi
	movq	-88(%rbp), %rdi
	callq	AREF
	cmpq	-104(%rbp), %rax
	je	.LBB31_64
# BB#63:                                # %if.then.171
                                        #   in Loop: Header=BB31_25 Depth=1
	jmp	.LBB31_69
.LBB31_64:                              # %if.end.172
                                        #   in Loop: Header=BB31_59 Depth=2
	movl	$2, %eax
	movl	%eax, %esi
	movq	-88(%rbp), %rdi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-296(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB31_67
# BB#65:                                # %land.lhs.true.177
                                        #   in Loop: Header=BB31_59 Depth=2
	movq	-80(%rbp), %rdi
	movq	-120(%rbp), %rsi
	movl	-20(%rbp), %edx
	callq	font_has_char
	cmpl	$0, %eax
	je	.LBB31_67
# BB#66:                                # %if.then.180
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB31_88
.LBB31_67:                              # %if.end.182
                                        #   in Loop: Header=BB31_59 Depth=2
	jmp	.LBB31_68
.LBB31_68:                              # %for.inc.183
                                        #   in Loop: Header=BB31_59 Depth=2
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB31_59
.LBB31_69:                              # %for.end.185
                                        #   in Loop: Header=BB31_25 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-80(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-104(%rbp), %rdx
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, -312(%rbp)        # 8-byte Spill
	callq	AREF
	movl	-20(%rbp), %ecx
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	-312(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	font_find_for_lface
	xorl	%edi, %edi
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-320(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB31_83
# BB#70:                                # %if.then.193
                                        #   in Loop: Header=BB31_25 Depth=1
	xorl	%edi, %edi
	movq	-80(%rbp), %rax
	movq	-112(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	%rdx, -328(%rbp)        # 8-byte Spill
	movq	%rax, -336(%rbp)        # 8-byte Spill
	movq	%rsi, -344(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	-344(%rbp), %rsi        # 8-byte Reload
	movq	-328(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	font_open_for_lface
	xorl	%edi, %edi
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-352(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB31_72
# BB#71:                                # %if.then.201
                                        #   in Loop: Header=BB31_25 Depth=1
	jmp	.LBB31_86
.LBB31_72:                              # %if.end.202
	jmp	.LBB31_73
.LBB31_73:                              # %do.body
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movl	$18, %edi
                                        # kill: RDI<def> EDI<kill>
	movq	%rax, %rsi
	callq	Fmake_vector
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	movq	-104(%rbp), %rdx
	callq	ASET
	movl	$3, %ecx
	movl	%ecx, %esi
	movl	$2, %ecx
	movl	%ecx, %edx
	movq	-88(%rbp), %rdi
	callq	ASET
# BB#74:                                # %do.end
	movl	$2, %eax
	movl	%eax, %esi
	movq	-88(%rbp), %rdi
	movq	-120(%rbp), %rdx
	callq	ASET
	movl	$3, %eax
	movl	%eax, %esi
	movq	-88(%rbp), %rdi
	movq	-88(%rbp), %rdx
	movq	%rdi, -360(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	callq	AREF
	movl	$3, %ecx
	movl	%ecx, %esi
	sarq	$2, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	movq	-48(%rbp), %rdi
	callq	ASIZE
	xorl	%edi, %edi
	addq	$1, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fmake_vector
	movq	%rax, -128(%rbp)
	movl	-68(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -68(%rbp)
	movl	$0, -132(%rbp)
.LBB31_75:                              # %for.cond.215
                                        # =>This Inner Loop Header: Depth=1
	movl	-132(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jge	.LBB31_78
# BB#76:                                # %for.body.218
                                        #   in Loop: Header=BB31_75 Depth=1
	movq	-128(%rbp), %rdi
	movslq	-132(%rbp), %rsi
	movq	-48(%rbp), %rax
	movslq	-132(%rbp), %rcx
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -384(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	callq	AREF
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	-384(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
# BB#77:                                # %for.inc.222
                                        #   in Loop: Header=BB31_75 Depth=1
	movl	-132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -132(%rbp)
	jmp	.LBB31_75
.LBB31_78:                              # %for.end.224
	movq	-128(%rbp), %rdi
	movslq	-132(%rbp), %rsi
	movq	-88(%rbp), %rdx
	callq	ASET
	movl	-132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -132(%rbp)
.LBB31_79:                              # %for.cond.227
                                        # =>This Inner Loop Header: Depth=1
	movslq	-132(%rbp), %rax
	movq	-128(%rbp), %rdi
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	ASIZE
	movq	-392(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jge	.LBB31_82
# BB#80:                                # %for.body.232
                                        #   in Loop: Header=BB31_79 Depth=1
	movq	-128(%rbp), %rdi
	movslq	-132(%rbp), %rsi
	movq	-48(%rbp), %rax
	movl	-132(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	%rdi, -400(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -408(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	callq	AREF
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	-408(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
# BB#81:                                # %for.inc.237
                                        #   in Loop: Header=BB31_79 Depth=1
	movl	-132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -132(%rbp)
	jmp	.LBB31_79
.LBB31_82:                              # %for.end.239
	movq	-56(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	XSETCDR
	movq	-128(%rbp), %rsi
	movq	%rsi, -48(%rbp)
	jmp	.LBB31_88
.LBB31_83:                              # %if.end.240
                                        #   in Loop: Header=BB31_25 Depth=1
	cmpl	$0, -60(%rbp)
	jl	.LBB31_85
# BB#84:                                # %if.then.243
                                        #   in Loop: Header=BB31_25 Depth=1
	movl	-68(%rbp), %eax
	movl	%eax, -60(%rbp)
.LBB31_85:                              # %if.end.244
                                        #   in Loop: Header=BB31_25 Depth=1
	jmp	.LBB31_86
.LBB31_86:                              # %for.inc.245
                                        #   in Loop: Header=BB31_25 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB31_25
.LBB31_87:                              # %for.end.247
	movl	$2, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	movslq	-20(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, %rsi
	callq	Fset_char_table_range
	xorl	%edi, %edi
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB31_96
.LBB31_88:                              # %found
	testb	$1, -37(%rbp)
	je	.LBB31_95
# BB#89:                                # %land.lhs.true.255
	cmpl	$0, -68(%rbp)
	jle	.LBB31_95
# BB#90:                                # %if.then.258
	movl	-68(%rbp), %eax
	movl	%eax, -60(%rbp)
.LBB31_91:                              # %for.cond.259
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -60(%rbp)
	jle	.LBB31_94
# BB#92:                                # %for.body.262
                                        #   in Loop: Header=BB31_91 Depth=1
	movq	-48(%rbp), %rdi
	movslq	-60(%rbp), %rsi
	movq	-48(%rbp), %rax
	movl	-60(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	%rdi, -424(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -432(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	callq	AREF
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	-432(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
# BB#93:                                # %for.inc.267
                                        #   in Loop: Header=BB31_91 Depth=1
	movl	-60(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB31_91
.LBB31_94:                              # %for.end.269
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	movq	-88(%rbp), %rdx
	callq	ASET
.LBB31_95:                              # %if.end.270
	movq	-88(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB31_96:                              # %return
	movq	-8(%rbp), %rax
	addq	$432, %rsp              # imm = 0x1B0
	popq	%rbp
	retq
.Lfunc_end31:
	.size	fontset_find_font, .Lfunc_end31-fontset_find_font
	.cfi_endproc

	.align	16, 0x90
	.type	set_fontset_default,@function
set_fontset_default:                    # @set_fontset_default
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
	movl	$6, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	%rcx, %rsi
	callq	set_char_table_extras
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	set_fontset_default, .Lfunc_end32-set_fontset_default
	.cfi_endproc

	.align	16, 0x90
	.type	fontset_get_font_group,@function
fontset_get_font_group:                 # @fontset_get_font_group
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	$0, -44(%rbp)
	movl	$4194303, -48(%rbp)     # imm = 0x3FFFFF
	cmpl	$0, -20(%rbp)
	jl	.LBB33_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	CHAR_TABLE_REF
	movq	%rax, -32(%rbp)
	jmp	.LBB33_3
.LBB33_2:                               # %if.else
	movq	-16(%rbp), %rdi
	callq	XCHAR_TABLE
	movq	608(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB33_3:                               # %if.end
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB33_5
# BB#4:                                 # %if.then.4
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB33_29
.LBB33_5:                               # %if.end.5
	movq	-16(%rbp), %rdi
	callq	XCHAR_TABLE
	xorl	%edi, %edi
	movq	576(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB33_7
# BB#6:                                 # %if.then.11
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)
	jmp	.LBB33_11
.LBB33_7:                               # %if.else.13
	cmpl	$0, -20(%rbp)
	jl	.LBB33_9
# BB#8:                                 # %if.then.15
	leaq	-44(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	char_table_ref_and_range
	movq	%rax, -32(%rbp)
	jmp	.LBB33_10
.LBB33_9:                               # %if.else.17
	movq	-40(%rbp), %rdi
	callq	XCHAR_TABLE
	movq	608(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB33_10:                              # %if.end.21
	jmp	.LBB33_11
.LBB33_11:                              # %if.end.22
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB33_15
# BB#12:                                # %if.then.25
	movq	$2, -32(%rbp)
	cmpl	$0, -20(%rbp)
	jl	.LBB33_14
# BB#13:                                # %if.then.27
	movq	-16(%rbp), %rdi
	movl	-44(%rbp), %esi
	movl	-48(%rbp), %edx
	movq	-32(%rbp), %rcx
	callq	char_table_set_range
.LBB33_14:                              # %if.end.28
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB33_29
.LBB33_15:                              # %if.end.29
	movq	-32(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB33_17
# BB#16:                                # %if.then.31
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB33_29
.LBB33_17:                              # %if.end.32
	movq	-32(%rbp), %rdi
	callq	Fcopy_sequence
	movq	%rax, -32(%rbp)
	movl	$0, -52(%rbp)
.LBB33_18:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-52(%rbp), %rax
	movq	-32(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	ASIZE
	movq	-96(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	jge	.LBB33_25
# BB#19:                                # %for.body
                                        #   in Loop: Header=BB33_18 Depth=1
	movq	-32(%rbp), %rdi
	movslq	-52(%rbp), %rsi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB33_23
# BB#20:                                # %if.then.42
                                        #   in Loop: Header=BB33_18 Depth=1
	jmp	.LBB33_21
.LBB33_21:                              # %do.body
                                        #   in Loop: Header=BB33_18 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movl	$18, %edi
                                        # kill: RDI<def> EDI<kill>
	movq	%rax, %rsi
	callq	Fmake_vector
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movq	-32(%rbp), %rax
	movslq	-52(%rbp), %rsi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	AREF
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	movl	$3, %ecx
	movl	%ecx, %esi
	movl	$2, %ecx
	movl	%ecx, %edx
	movq	-64(%rbp), %rdi
	callq	ASET
# BB#22:                                # %do.end
                                        #   in Loop: Header=BB33_18 Depth=1
	movl	$3, %eax
	movl	%eax, %esi
	movq	-64(%rbp), %rdi
	movslq	-52(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, %rdx
	callq	ASET
	movq	-32(%rbp), %rdi
	movslq	-52(%rbp), %rsi
	movq	-64(%rbp), %rdx
	callq	ASET
.LBB33_23:                              # %if.end.49
                                        #   in Loop: Header=BB33_18 Depth=1
	jmp	.LBB33_24
.LBB33_24:                              # %for.inc
                                        #   in Loop: Header=BB33_18 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB33_18
.LBB33_25:                              # %for.end
	movq	$-2, %rdi
	movq	-32(%rbp), %rsi
	callq	Fcons
	movq	%rax, -32(%rbp)
	cmpl	$0, -20(%rbp)
	jl	.LBB33_27
# BB#26:                                # %if.then.53
	movq	-16(%rbp), %rdi
	movl	-44(%rbp), %esi
	movl	-48(%rbp), %edx
	movq	-32(%rbp), %rcx
	callq	char_table_set_range
	jmp	.LBB33_28
.LBB33_27:                              # %if.else.54
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	set_fontset_fallback
.LBB33_28:                              # %if.end.55
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB33_29:                              # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	fontset_get_font_group, .Lfunc_end33-fontset_get_font_group
	.cfi_endproc

	.align	16, 0x90
	.type	reorder_font_vector,@function
reorder_font_vector:                    # @reorder_font_vector
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
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movb	$0, -41(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB34_2
# BB#1:                                 # %if.then
	movl	$5, %esi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -32(%rbp)
	jmp	.LBB34_3
.LBB34_2:                               # %if.else
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)
.LBB34_3:                               # %if.end
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	ASIZE
	movl	%eax, %ecx
	movl	%ecx, -36(%rbp)
	movq	-24(%rbp), %rdi
	movl	-36(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rsi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB34_5
# BB#4:                                 # %if.then.8
	movl	-36(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -36(%rbp)
.LBB34_5:                               # %if.end.9
	movl	$0, -40(%rbp)
.LBB34_6:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB34_12 Depth 2
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB34_35
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB34_6 Depth=1
	movq	-24(%rbp), %rdi
	movslq	-40(%rbp), %rsi
	callq	AREF
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	AREF
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	AREF
	movl	$3, %ecx
	movl	%ecx, %esi
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rdi
	callq	AREF
	movl	$89, %edi
	sarq	$2, %rax
	andq	$255, %rax
	movl	%eax, %ecx
	movl	%ecx, -76(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Ffont_get
	xorl	%edi, %edi
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB34_9
# BB#8:                                 # %if.then.23
                                        #   in Loop: Header=BB34_6 Depth=1
	jmp	.LBB34_31
.LBB34_9:                               # %if.else.24
                                        #   in Loop: Header=BB34_6 Depth=1
	movq	-72(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	font_match_p
	testb	$1, %al
	jne	.LBB34_30
# BB#10:                                # %if.then.26
                                        #   in Loop: Header=BB34_6 Depth=1
	movl	$1, %eax
	movl	%eax, %esi
	movq	-64(%rbp), %rdi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB34_23
# BB#11:                                # %if.then.31
                                        #   in Loop: Header=BB34_6 Depth=1
	movq	Vcharset_ordered_list, %rax
	movq	%rax, -104(%rbp)
.LBB34_12:                              # %for.cond.32
                                        #   Parent Loop BB34_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-104(%rbp), %rdx
	cmpq	Vcharset_non_preferred_head, %rdx
	movb	%cl, -153(%rbp)         # 1-byte Spill
	je	.LBB34_14
# BB#13:                                # %land.rhs
                                        #   in Loop: Header=BB34_12 Depth=2
	movq	-104(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	sete	%dl
	movb	%dl, -153(%rbp)         # 1-byte Spill
.LBB34_14:                              # %land.end
                                        #   in Loop: Header=BB34_12 Depth=2
	movb	-153(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB34_15
	jmp	.LBB34_22
.LBB34_15:                              # %for.body.39
                                        #   in Loop: Header=BB34_12 Depth=2
	movq	-96(%rbp), %rax
	movq	-104(%rbp), %rcx
	subq	$3, %rcx
	cmpq	(%rcx), %rax
	jne	.LBB34_17
# BB#16:                                # %if.then.43
                                        #   in Loop: Header=BB34_6 Depth=1
	jmp	.LBB34_22
.LBB34_17:                              # %if.else.44
                                        #   in Loop: Header=BB34_12 Depth=2
	movslq	-76(%rbp), %rax
	cmpq	$2147483391, %rax       # imm = 0x7FFFFEFF
	jg	.LBB34_19
# BB#18:                                # %if.then.48
                                        #   in Loop: Header=BB34_12 Depth=2
	movl	-76(%rbp), %eax
	addl	$256, %eax              # imm = 0x100
	movl	%eax, -76(%rbp)
.LBB34_19:                              # %if.end.49
                                        #   in Loop: Header=BB34_12 Depth=2
	jmp	.LBB34_20
.LBB34_20:                              # %if.end.50
                                        #   in Loop: Header=BB34_12 Depth=2
	jmp	.LBB34_21
.LBB34_21:                              # %for.inc
                                        #   in Loop: Header=BB34_12 Depth=2
	movq	-104(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB34_12
.LBB34_22:                              # %for.end
                                        #   in Loop: Header=BB34_6 Depth=1
	jmp	.LBB34_29
.LBB34_23:                              # %if.else.54
                                        #   in Loop: Header=BB34_6 Depth=1
	movl	$73, %edi
	movq	-72(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Ffont_get
	xorl	%edi, %edi
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB34_28
# BB#24:                                # %land.lhs.true
                                        #   in Loop: Header=BB34_6 Depth=1
	movq	-112(%rbp), %rax
	cmpq	globals+384, %rax
	je	.LBB34_28
# BB#25:                                # %land.lhs.true.62
                                        #   in Loop: Header=BB34_6 Depth=1
	movq	globals+384, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB34_27
# BB#26:                                # %lor.lhs.false
                                        #   in Loop: Header=BB34_6 Depth=1
	movq	-112(%rbp), %rdi
	movq	globals+384, %rsi
	callq	Fmemq
	xorl	%edi, %edi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB34_28
.LBB34_27:                              # %if.then.71
                                        #   in Loop: Header=BB34_6 Depth=1
	movl	-76(%rbp), %eax
	orl	$256, %eax              # imm = 0x100
	movl	%eax, -76(%rbp)
.LBB34_28:                              # %if.end.72
                                        #   in Loop: Header=BB34_6 Depth=1
	jmp	.LBB34_29
.LBB34_29:                              # %if.end.73
                                        #   in Loop: Header=BB34_6 Depth=1
	jmp	.LBB34_30
.LBB34_30:                              # %if.end.74
                                        #   in Loop: Header=BB34_6 Depth=1
	jmp	.LBB34_31
.LBB34_31:                              # %if.end.75
                                        #   in Loop: Header=BB34_6 Depth=1
	movl	$3, %eax
	movl	%eax, %esi
	movq	-56(%rbp), %rdi
	callq	AREF
	sarq	$2, %rax
	movslq	-76(%rbp), %rsi
	cmpq	%rsi, %rax
	je	.LBB34_33
# BB#32:                                # %if.then.81
                                        #   in Loop: Header=BB34_6 Depth=1
	movl	$3, %eax
	movl	%eax, %esi
	movq	-56(%rbp), %rdi
	movslq	-76(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, %rdx
	callq	ASET
	movb	$1, -41(%rbp)
.LBB34_33:                              # %if.end.84
                                        #   in Loop: Header=BB34_6 Depth=1
	jmp	.LBB34_34
.LBB34_34:                              # %for.inc.85
                                        #   in Loop: Header=BB34_6 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB34_6
.LBB34_35:                              # %for.end.86
	testb	$1, -41(%rbp)
	je	.LBB34_37
# BB#36:                                # %if.then.88
	movq	-24(%rbp), %rdi
	callq	XVECTOR
	movl	$8, %ecx
	movl	%ecx, %edx
	movabsq	$fontset_compare_rfontdef, %rcx
	addq	$8, %rax
	movslq	-36(%rbp), %rsi
	movq	%rax, %rdi
	callq	qsort
.LBB34_37:                              # %if.end.91
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	andq	charset_ordered_list_tick, %rax
	movq	%rax, -120(%rbp)
	movq	-8(%rbp), %rdi
	movq	-120(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rsi
	callq	XSETCAR
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	reorder_font_vector, .Lfunc_end34-reorder_font_vector
	.cfi_endproc

	.align	16, 0x90
	.type	fontset_compare_rfontdef,@function
fontset_compare_rfontdef:               # @fontset_compare_rfontdef
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
	subq	$32, %rsp
	movl	$3, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	%rcx, %rsi
	callq	AREF
	movl	$3, %edx
	movl	%edx, %esi
	sarq	$2, %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	AREF
	sarq	$2, %rax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	subq	%rax, %rcx
	movl	%ecx, %edx
	movl	%edx, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	fontset_compare_rfontdef, .Lfunc_end35-fontset_compare_rfontdef
	.cfi_endproc

	.align	16, 0x90
	.type	set_fontset_frame,@function
set_fontset_frame:                      # @set_fontset_frame
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
	subq	$16, %rsp
	movl	$4, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	%rcx, %rsi
	callq	set_char_table_extras
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	set_fontset_frame, .Lfunc_end36-set_fontset_frame
	.cfi_endproc

	.align	16, 0x90
	.type	set_fontset_base,@function
set_fontset_base:                       # @set_fontset_base
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
	subq	$16, %rsp
	movl	$3, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	%rcx, %rsi
	callq	set_char_table_extras
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	set_fontset_base, .Lfunc_end37-set_fontset_base
	.cfi_endproc

	.type	Vfontset_table,@object  # @Vfontset_table
	.local	Vfontset_table
	.comm	Vfontset_table,8,8
	.type	next_fontset_id,@object # @next_fontset_id
	.local	next_fontset_id
	.comm	next_fontset_id,4,4
	.type	Vdefault_fontset,@object # @Vdefault_fontset
	.local	Vdefault_fontset
	.comm	Vdefault_fontset,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Invalid font-spec"
	.size	.L.str, 18

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"-"
	.size	.L.str.1, 2

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Can't set a font for partial ASCII range"
	.size	.L.str.2, 41

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Invalid script or charset name: %s"
	.size	.L.str.3, 35

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Invalid target for setting a font"
	.size	.L.str.4, 34

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Can't set ASCII font to nil"
	.size	.L.str.5, 28

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Fontset name must be in XLFD format"
	.size	.L.str.6, 36

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"fontset-"
	.size	.L.str.7, 9

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Registry field of fontset name must be \"fontset-*\""
	.size	.L.str.8, 51

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Invalid fontset name (perhaps too long): %s"
	.size	.L.str.9, 44

	.type	auto_fontset_alist,@object # @auto_fontset_alist
	.local	auto_fontset_alist
	.comm	auto_fontset_alist,8,8
	.type	num_auto_fontsets,@object # @num_auto_fontsets
	.local	num_auto_fontsets
	.comm	num_auto_fontsets,8,8
	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"fontset-startup"
	.size	.L.str.10, 16

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"fontset-auto%ld"
	.size	.L.str.11, 16

	.type	Vcached_fontset_data,@object # @Vcached_fontset_data
	.local	Vcached_fontset_data
	.comm	Vcached_fontset_data,8,8
	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"-*-*-*-*-*-*-*-*-*-*-*-*-fontset-default"
	.size	.L.str.12, 41

	.type	syms_of_fontset.o_fwd,@object # @syms_of_fontset.o_fwd
	.local	syms_of_fontset.o_fwd
	.comm	syms_of_fontset.o_fwd,16,8
	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"font-encoding-charset-alist"
	.size	.L.str.13, 28

	.type	syms_of_fontset.o_fwd.14,@object # @syms_of_fontset.o_fwd.14
	.local	syms_of_fontset.o_fwd.14
	.comm	syms_of_fontset.o_fwd.14,16,8
	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"use-default-ascent"
	.size	.L.str.15, 19

	.type	syms_of_fontset.o_fwd.16,@object # @syms_of_fontset.o_fwd.16
	.local	syms_of_fontset.o_fwd.16
	.comm	syms_of_fontset.o_fwd.16,16,8
	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"ignore-relative-composition"
	.size	.L.str.17, 28

	.type	syms_of_fontset.o_fwd.18,@object # @syms_of_fontset.o_fwd.18
	.local	syms_of_fontset.o_fwd.18
	.comm	syms_of_fontset.o_fwd.18,16,8
	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"alternate-fontname-alist"
	.size	.L.str.19, 25

	.type	syms_of_fontset.o_fwd.20,@object # @syms_of_fontset.o_fwd.20
	.local	syms_of_fontset.o_fwd.20
	.comm	syms_of_fontset.o_fwd.20,16,8
	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"fontset-alias-alist"
	.size	.L.str.21, 20

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"fontset-default"
	.size	.L.str.22, 16

	.type	syms_of_fontset.o_fwd.23,@object # @syms_of_fontset.o_fwd.23
	.local	syms_of_fontset.o_fwd.23
	.comm	syms_of_fontset.o_fwd.23,16,8
	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"vertical-centering-font-regexp"
	.size	.L.str.24, 31

	.type	syms_of_fontset.o_fwd.25,@object # @syms_of_fontset.o_fwd.25
	.local	syms_of_fontset.o_fwd.25
	.comm	syms_of_fontset.o_fwd.25,16,8
	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"otf-script-alist"
	.size	.L.str.26, 17

	.type	Sfontset_list,@object   # @Sfontset_list
	.data
	.align	8
Sfontset_list:
	.quad	167772160               # 0xa000000
	.quad	Ffontset_list
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.37
	.quad	0
	.quad	0
	.size	Sfontset_list, 48

	.type	.L.str.27,@object       # @.str.27
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.27:
	.asciz	"current fontset: font for"
	.size	.L.str.27, 26

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"default fontset: font for"
	.size	.L.str.28, 26

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"current fallback: font for"
	.size	.L.str.29, 27

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"default fallback: font for"
	.size	.L.str.30, 27

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Fontset `%s' does not exist"
	.size	.L.str.31, 28

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"query-fontset"
	.size	.L.str.32, 14

	.type	Squery_fontset,@object  # @Squery_fontset
	.data
	.align	8
Squery_fontset:
	.quad	167772160               # 0xa000000
	.quad	Fquery_fontset
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.32
	.quad	0
	.quad	0
	.size	Squery_fontset, 48

	.type	.L.str.33,@object       # @.str.33
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.33:
	.asciz	"new-fontset"
	.size	.L.str.33, 12

	.type	Snew_fontset,@object    # @Snew_fontset
	.data
	.align	8
Snew_fontset:
	.quad	167772160               # 0xa000000
	.quad	Fnew_fontset
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.33
	.quad	0
	.quad	0
	.size	Snew_fontset, 48

	.type	.L.str.34,@object       # @.str.34
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.34:
	.asciz	"set-fontset-font"
	.size	.L.str.34, 17

	.type	Sset_fontset_font,@object # @Sset_fontset_font
	.data
	.align	8
Sset_fontset_font:
	.quad	167772160               # 0xa000000
	.quad	Fset_fontset_font
	.short	3                       # 0x3
	.short	5                       # 0x5
	.zero	4
	.quad	.L.str.34
	.quad	0
	.quad	0
	.size	Sset_fontset_font, 48

	.type	.L.str.35,@object       # @.str.35
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.35:
	.asciz	"fontset-info"
	.size	.L.str.35, 13

	.type	Sfontset_info,@object   # @Sfontset_info
	.data
	.align	8
Sfontset_info:
	.quad	167772160               # 0xa000000
	.quad	Ffontset_info
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.35
	.quad	0
	.quad	0
	.size	Sfontset_info, 48

	.type	.L.str.36,@object       # @.str.36
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.36:
	.asciz	"fontset-font"
	.size	.L.str.36, 13

	.type	Sfontset_font,@object   # @Sfontset_font
	.data
	.align	8
Sfontset_font:
	.quad	167772160               # 0xa000000
	.quad	Ffontset_font
	.short	2                       # 0x2
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.36
	.quad	0
	.quad	0
	.size	Sfontset_font, 48

	.type	.L.str.37,@object       # @.str.37
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.37:
	.asciz	"fontset-list"
	.size	.L.str.37, 13


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
