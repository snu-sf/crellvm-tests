	.text
	.file	"keymap.bc"
	.globl	Fmake_keymap
	.align	16, 0x90
	.type	Fmake_keymap,@function
Fmake_keymap:                           # @Fmake_keymap
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
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB0_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	list1
	movq	%rax, -16(%rbp)
	jmp	.LBB0_3
.LBB0_2:                                # %if.else
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)
.LBB0_3:                                # %if.end
	movl	$589, %edi              # imm = 0x24D
	callq	builtin_lisp_symbol
	movl	$589, %edi              # imm = 0x24D
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fmake_char_table
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	Fmake_keymap, .Lfunc_end0-Fmake_keymap
	.cfi_endproc

	.globl	Fmake_sparse_keymap
	.align	16, 0x90
	.type	Fmake_sparse_keymap,@function
Fmake_sparse_keymap:                    # @Fmake_sparse_keymap
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
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB1_4
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	movq	globals+1920, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB1_3
# BB#2:                                 # %if.then.3
	movq	-16(%rbp), %rdi
	callq	Fpurecopy
	movq	%rax, -16(%rbp)
.LBB1_3:                                # %if.end
	movl	$589, %edi              # imm = 0x24D
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	list2
	movq	%rax, -8(%rbp)
	jmp	.LBB1_5
.LBB1_4:                                # %if.end.7
	movl	$589, %edi              # imm = 0x24D
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	list1
	movq	%rax, -8(%rbp)
.LBB1_5:                                # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	Fmake_sparse_keymap, .Lfunc_end1-Fmake_sparse_keymap
	.cfi_endproc

	.globl	initial_define_key
	.align	16, 0x90
	.type	initial_define_key,@function
initial_define_key:                     # @initial_define_key
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movslq	-12(%rbp), %rdx
	shlq	$2, %rdx
	addq	$2, %rdx
	movq	-24(%rbp), %rax
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	intern_c_string
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	store_in_keymap
	movq	%rax, -48(%rbp)         # 8-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	initial_define_key, .Lfunc_end2-initial_define_key
	.cfi_endproc

	.align	16, 0x90
	.type	store_in_keymap,@function
store_in_keymap:                        # @store_in_keymap
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
	subq	$304, %rsp              # imm = 0x130
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, where_is_cache
	callq	builtin_lisp_symbol
	movl	$589, %edi              # imm = 0x24D
	movq	%rax, where_is_cache_keymaps
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.59, %rdi
	movb	$0, %al
	callq	error
.LBB3_2:                                # %if.end
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB3_7
# BB#3:                                 # %land.lhs.true
	movabsq	$pure, %rax
	movq	-32(%rbp), %rcx
	subq	$3, %rcx
	subq	%rax, %rcx
	cmpq	$3000000, %rcx          # imm = 0x2DC6C0
	ja	.LBB3_7
# BB#4:                                 # %land.lhs.true.8
	movl	$657, %edi              # imm = 0x291
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB3_6
# BB#5:                                 # %lor.lhs.false
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB3_6
	jmp	.LBB3_7
.LBB3_6:                                # %if.then.17
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rsi
	callq	Fcons
	movq	%rax, -32(%rbp)
.LBB3_7:                                # %if.end.22
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB3_9
# BB#8:                                 # %lor.lhs.false.27
	movl	$589, %edi              # imm = 0x24D
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB3_10
.LBB3_9:                                # %if.then.33
	movabsq	$.L.str.60, %rdi
	movb	$0, %al
	callq	error
.LBB3_10:                               # %if.end.34
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB3_20
# BB#11:                                # %land.lhs.true.39
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB3_12
	jmp	.LBB3_20
.LBB3_12:                               # %land.lhs.true.44
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jg	.LBB3_20
# BB#13:                                # %if.then.49
	jmp	.LBB3_14
.LBB3_14:                               # %do.body
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB3_15
	jmp	.LBB3_17
.LBB3_15:                               # %land.lhs.true.55
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jg	.LBB3_17
# BB#16:                                # %cond.true
	jmp	.LBB3_18
.LBB3_17:                               # %cond.false
	movl	$260, %edi              # imm = 0x104
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB3_18:                               # %cond.end
	jmp	.LBB3_19
.LBB3_19:                               # %do.end
	jmp	.LBB3_24
.LBB3_20:                               # %if.else
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB3_22
# BB#21:                                # %cond.true.64
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB3_23
.LBB3_22:                               # %cond.false.67
	movq	-24(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB3_23:                               # %cond.end.68
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, -24(%rbp)
.LBB3_24:                               # %if.end.69
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB3_26
# BB#25:                                # %if.then.74
	movq	-24(%rbp), %rdi
	callq	reorder_modifiers
	movq	%rax, -24(%rbp)
	jmp	.LBB3_29
.LBB3_26:                               # %if.else.76
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB3_28
# BB#27:                                # %if.then.82
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	andq	$268435455, %rax        # imm = 0xFFFFFFF
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -24(%rbp)
.LBB3_28:                               # %if.end.86
	jmp	.LBB3_29
.LBB3_29:                               # %if.end.87
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB3_30:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_44 Depth 2
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB3_105
# BB#31:                                # %for.body
                                        #   in Loop: Header=BB3_30 Depth=1
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB3_32
	jmp	.LBB3_52
.LBB3_32:                               # %if.then.101
                                        #   in Loop: Header=BB3_30 Depth=1
	movq	-24(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB3_33
	jmp	.LBB3_38
.LBB3_33:                               # %land.lhs.true.104
                                        #   in Loop: Header=BB3_30 Depth=1
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	movq	-64(%rbp), %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	ASIZE
	movq	-136(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jge	.LBB3_38
# BB#34:                                # %if.then.109
	movq	-64(%rbp), %rdi
	callq	XVECTOR
	movabsq	$pure, %rdi
	subq	%rdi, %rax
	cmpq	$3000000, %rax          # imm = 0x2DC6C0
	ja	.LBB3_36
# BB#35:                                # %cond.true.114
	movq	-64(%rbp), %rdi
	callq	pure_write_error
.LBB3_36:                               # %cond.false.115
	jmp	.LBB3_37
.LBB3_37:                               # %cond.end.116
	movq	-64(%rbp), %rdi
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rsi
	callq	ASET
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB3_118
.LBB3_38:                               # %if.else.118
                                        #   in Loop: Header=BB3_30 Depth=1
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB3_50
# BB#39:                                # %land.lhs.true.123
                                        #   in Loop: Header=BB3_30 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB3_40
	jmp	.LBB3_50
.LBB3_40:                               # %land.lhs.true.128
                                        #   in Loop: Header=BB3_30 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jg	.LBB3_50
# BB#41:                                # %if.then.134
                                        #   in Loop: Header=BB3_30 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -68(%rbp)
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -72(%rbp)
	movslq	-72(%rbp), %rax
	movq	-64(%rbp), %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	ASIZE
	movq	-144(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB3_43
# BB#42:                                # %if.then.150
                                        #   in Loop: Header=BB3_30 Depth=1
	movq	-64(%rbp), %rdi
	callq	ASIZE
	subq	$1, %rax
	movl	%eax, %ecx
	movl	%ecx, -72(%rbp)
.LBB3_43:                               # %if.end.154
                                        #   in Loop: Header=BB3_30 Depth=1
	jmp	.LBB3_44
.LBB3_44:                               # %for.cond.155
                                        #   Parent Loop BB3_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-68(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jg	.LBB3_47
# BB#45:                                # %for.body.158
                                        #   in Loop: Header=BB3_44 Depth=2
	movq	-64(%rbp), %rdi
	movslq	-68(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	ASET
# BB#46:                                # %for.inc
                                        #   in Loop: Header=BB3_44 Depth=2
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB3_44
.LBB3_47:                               # %for.end
                                        #   in Loop: Header=BB3_30 Depth=1
	movslq	-72(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jne	.LBB3_49
# BB#48:                                # %if.then.167
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB3_118
.LBB3_49:                               # %if.end.168
                                        #   in Loop: Header=BB3_30 Depth=1
	jmp	.LBB3_50
.LBB3_50:                               # %if.end.169
                                        #   in Loop: Header=BB3_30 Depth=1
	jmp	.LBB3_51
.LBB3_51:                               # %if.end.170
                                        #   in Loop: Header=BB3_30 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB3_95
.LBB3_52:                               # %if.else.171
                                        #   in Loop: Header=BB3_30 Depth=1
	movq	-64(%rbp), %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB3_53
	jmp	.LBB3_68
.LBB3_53:                               # %if.then.173
                                        #   in Loop: Header=BB3_30 Depth=1
	movq	-24(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB3_54
	jmp	.LBB3_59
.LBB3_54:                               # %land.lhs.true.176
                                        #   in Loop: Header=BB3_30 Depth=1
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	andq	$264241152, %rax        # imm = 0xFC00000
	cmpq	$0, %rax
	jne	.LBB3_59
# BB#55:                                # %if.then.179
	xorl	%edi, %edi
	movq	-64(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rcx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB3_57
# BB#56:                                # %cond.true.183
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB3_58
.LBB3_57:                               # %cond.false.185
	movq	-32(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
.LBB3_58:                               # %cond.end.186
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	-168(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Faset
	movq	-32(%rbp), %rdx
	movq	%rdx, -8(%rbp)
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB3_118
.LBB3_59:                               # %if.else.189
                                        #   in Loop: Header=BB3_30 Depth=1
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB3_66
# BB#60:                                # %land.lhs.true.194
                                        #   in Loop: Header=BB3_30 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB3_61
	jmp	.LBB3_66
.LBB3_61:                               # %land.lhs.true.199
                                        #   in Loop: Header=BB3_30 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jg	.LBB3_66
# BB#62:                                # %if.then.205
	xorl	%edi, %edi
	movq	-64(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rcx
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	movq	%rax, -200(%rbp)        # 8-byte Spill
	movq	%rsi, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB3_64
# BB#63:                                # %cond.true.209
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -216(%rbp)        # 8-byte Spill
	jmp	.LBB3_65
.LBB3_64:                               # %cond.false.211
	movq	-32(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
.LBB3_65:                               # %cond.end.212
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	-208(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fset_char_table_range
	movq	-32(%rbp), %rdx
	movq	%rdx, -8(%rbp)
	movq	%rax, -224(%rbp)        # 8-byte Spill
	jmp	.LBB3_118
.LBB3_66:                               # %if.end.215
                                        #   in Loop: Header=BB3_30 Depth=1
	jmp	.LBB3_67
.LBB3_67:                               # %if.end.216
                                        #   in Loop: Header=BB3_30 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB3_94
.LBB3_68:                               # %if.else.217
                                        #   in Loop: Header=BB3_30 Depth=1
	movq	-64(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB3_90
# BB#69:                                # %if.then.222
                                        #   in Loop: Header=BB3_30 Depth=1
	movl	$589, %edi              # imm = 0x24D
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx
	subq	$3, %rcx
	cmpq	(%rcx), %rax
	jne	.LBB3_71
# BB#70:                                # %if.then.228
                                        #   in Loop: Header=BB3_30 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	%rax, -48(%rbp)
	jmp	.LBB3_89
.LBB3_71:                               # %if.else.229
                                        #   in Loop: Header=BB3_30 Depth=1
	movq	-24(%rbp), %rax
	movq	-64(%rbp), %rcx
	subq	$3, %rcx
	cmpq	(%rcx), %rax
	jne	.LBB3_76
# BB#72:                                # %if.then.234
	movabsq	$pure, %rax
	movq	-64(%rbp), %rcx
	subq	$3, %rcx
	subq	%rax, %rcx
	cmpq	$3000000, %rcx          # imm = 0x2DC6C0
	ja	.LBB3_74
# BB#73:                                # %cond.true.239
	movq	-64(%rbp), %rdi
	callq	pure_write_error
.LBB3_74:                               # %cond.false.240
	jmp	.LBB3_75
.LBB3_75:                               # %cond.end.241
	movq	-64(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	XSETCDR
	movq	-32(%rbp), %rsi
	movq	%rsi, -8(%rbp)
	jmp	.LBB3_118
.LBB3_76:                               # %if.else.242
                                        #   in Loop: Header=BB3_30 Depth=1
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB3_87
# BB#77:                                # %land.lhs.true.247
                                        #   in Loop: Header=BB3_30 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB3_78
	jmp	.LBB3_87
.LBB3_78:                               # %land.lhs.true.252
                                        #   in Loop: Header=BB3_30 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jg	.LBB3_87
# BB#79:                                # %land.lhs.true.258
                                        #   in Loop: Header=BB3_30 Depth=1
	movq	-64(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB3_80
	jmp	.LBB3_87
.LBB3_80:                               # %land.lhs.true.263
                                        #   in Loop: Header=BB3_30 Depth=1
	movq	-64(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jg	.LBB3_87
# BB#81:                                # %if.then.269
                                        #   in Loop: Header=BB3_30 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -76(%rbp)
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -80(%rbp)
	movslq	-76(%rbp), %rax
	movq	-64(%rbp), %rdx
	subq	$3, %rdx
	movq	(%rdx), %rdx
	sarq	$2, %rdx
	cmpq	%rdx, %rax
	jg	.LBB3_86
# BB#82:                                # %land.lhs.true.289
                                        #   in Loop: Header=BB3_30 Depth=1
	movslq	-80(%rbp), %rax
	movq	-64(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jl	.LBB3_86
# BB#83:                                # %if.then.296
                                        #   in Loop: Header=BB3_30 Depth=1
	movq	-64(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	XSETCDR
	movl	-76(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jne	.LBB3_85
# BB#84:                                # %if.then.299
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB3_118
.LBB3_85:                               # %if.end.300
                                        #   in Loop: Header=BB3_30 Depth=1
	jmp	.LBB3_86
.LBB3_86:                               # %if.end.301
                                        #   in Loop: Header=BB3_30 Depth=1
	jmp	.LBB3_87
.LBB3_87:                               # %if.end.302
                                        #   in Loop: Header=BB3_30 Depth=1
	jmp	.LBB3_88
.LBB3_88:                               # %if.end.303
                                        #   in Loop: Header=BB3_30 Depth=1
	jmp	.LBB3_89
.LBB3_89:                               # %if.end.304
                                        #   in Loop: Header=BB3_30 Depth=1
	jmp	.LBB3_93
.LBB3_90:                               # %if.else.305
                                        #   in Loop: Header=BB3_30 Depth=1
	movl	$589, %edi              # imm = 0x24D
	movq	-64(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-232(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB3_92
# BB#91:                                # %if.then.309
	jmp	.LBB3_106
.LBB3_92:                               # %if.end.310
                                        #   in Loop: Header=BB3_30 Depth=1
	jmp	.LBB3_93
.LBB3_93:                               # %if.end.311
                                        #   in Loop: Header=BB3_30 Depth=1
	jmp	.LBB3_94
.LBB3_94:                               # %if.end.312
                                        #   in Loop: Header=BB3_30 Depth=1
	jmp	.LBB3_95
.LBB3_95:                               # %if.end.313
                                        #   in Loop: Header=BB3_30 Depth=1
	jmp	.LBB3_96
.LBB3_96:                               # %do.body.314
                                        #   in Loop: Header=BB3_30 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-240(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB3_99
# BB#97:                                # %land.lhs.true.318
                                        #   in Loop: Header=BB3_30 Depth=1
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-248(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB3_99
# BB#98:                                # %if.then.322
                                        #   in Loop: Header=BB3_30 Depth=1
	callq	process_quit_flag
	jmp	.LBB3_102
.LBB3_99:                               # %if.else.323
                                        #   in Loop: Header=BB3_30 Depth=1
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB3_101
# BB#100:                               # %if.then.325
                                        #   in Loop: Header=BB3_30 Depth=1
	callq	process_pending_signals
.LBB3_101:                              # %if.end.326
                                        #   in Loop: Header=BB3_30 Depth=1
	jmp	.LBB3_102
.LBB3_102:                              # %if.end.327
                                        #   in Loop: Header=BB3_30 Depth=1
	jmp	.LBB3_103
.LBB3_103:                              # %do.end.328
                                        #   in Loop: Header=BB3_30 Depth=1
	jmp	.LBB3_104
.LBB3_104:                              # %for.inc.329
                                        #   in Loop: Header=BB3_30 Depth=1
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB3_30
.LBB3_105:                              # %for.end.333
	jmp	.LBB3_106
.LBB3_106:                              # %keymap_end
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB3_113
# BB#107:                               # %land.lhs.true.340
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB3_108
	jmp	.LBB3_113
.LBB3_108:                              # %land.lhs.true.345
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jg	.LBB3_113
# BB#109:                               # %if.then.351
	movl	$589, %edi              # imm = 0x24D
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fmake_char_table
	xorl	%edi, %edi
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rcx
	movq	%rcx, -264(%rbp)        # 8-byte Spill
	movq	%rax, -272(%rbp)        # 8-byte Spill
	movq	%rsi, -280(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-264(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB3_111
# BB#110:                               # %cond.true.358
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -288(%rbp)        # 8-byte Spill
	jmp	.LBB3_112
.LBB3_111:                              # %cond.false.360
	movq	-32(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
.LBB3_112:                              # %cond.end.361
	movq	-288(%rbp), %rax        # 8-byte Reload
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	-280(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fset_char_table_range
	movq	%rax, -296(%rbp)        # 8-byte Spill
	jmp	.LBB3_114
.LBB3_113:                              # %if.else.364
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	Fcons
	movq	%rax, -88(%rbp)
.LBB3_114:                              # %if.end.366
	movabsq	$pure, %rax
	movq	-56(%rbp), %rcx
	subq	$3, %rcx
	subq	%rax, %rcx
	cmpq	$3000000, %rcx          # imm = 0x2DC6C0
	ja	.LBB3_116
# BB#115:                               # %cond.true.371
	movq	-56(%rbp), %rdi
	callq	pure_write_error
.LBB3_116:                              # %cond.false.372
	jmp	.LBB3_117
.LBB3_117:                              # %cond.end.373
	movq	-56(%rbp), %rdi
	movq	-88(%rbp), %rax
	movq	-56(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rsi
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	Fcons
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	XSETCDR
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB3_118:                              # %return
	movq	-8(%rbp), %rax
	addq	$304, %rsp              # imm = 0x130
	popq	%rbp
	retq
.Lfunc_end3:
	.size	store_in_keymap, .Lfunc_end3-store_in_keymap
	.cfi_endproc

	.globl	initial_define_lispy_key
	.align	16, 0x90
	.type	initial_define_lispy_key,@function
initial_define_lispy_key:               # @initial_define_lispy_key
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	callq	intern_c_string
	movq	-24(%rbp), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	intern_c_string
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	store_in_keymap
	movq	%rax, -48(%rbp)         # 8-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	initial_define_lispy_key, .Lfunc_end4-initial_define_lispy_key
	.cfi_endproc

	.globl	Fkeymapp
	.align	16, 0x90
	.type	Fkeymapp,@function
Fkeymapp:                               # @Fkeymapp
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
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	get_keymap
	xorl	%edi, %edi
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB5_2
# BB#1:                                 # %cond.true
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB5_3
.LBB5_2:                                # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB5_3:                                # %cond.end
	movq	-24(%rbp), %rax         # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	Fkeymapp, .Lfunc_end5-Fkeymapp
	.cfi_endproc

	.globl	get_keymap
	.align	16, 0x90
	.type	get_keymap,@function
get_keymap:                             # @get_keymap
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
	subq	$112, %rsp
	movb	%dl, %al
	movb	%sil, %cl
	movq	%rdi, -16(%rbp)
	andb	$1, %cl
	movb	%cl, -17(%rbp)
	andb	$1, %al
	movb	%al, -18(%rbp)
.LBB6_1:                                # %autoload_retry
                                        # =>This Inner Loop Header: Depth=1
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB6_3
# BB#2:                                 # %if.then
	jmp	.LBB6_20
.LBB6_3:                                # %if.end
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB6_6
# BB#4:                                 # %land.lhs.true
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	$589, %edi              # imm = 0x24D
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB6_6
# BB#5:                                 # %if.then.7
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB6_23
.LBB6_6:                                # %if.end.8
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-16(%rbp), %rdi
	callq	indirect_function
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB6_19
# BB#7:                                 # %if.then.14
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	$589, %edi              # imm = 0x24D
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB6_9
# BB#8:                                 # %if.then.20
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB6_23
.LBB6_9:                                # %if.end.21
                                        #   in Loop: Header=BB6_1 Depth=1
	testb	$1, -18(%rbp)
	jne	.LBB6_11
# BB#10:                                # %lor.lhs.false
                                        #   in Loop: Header=BB6_1 Depth=1
	testb	$1, -17(%rbp)
	jne	.LBB6_18
.LBB6_11:                               # %land.lhs.true.24
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	$191, %edi
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB6_18
# BB#12:                                # %land.lhs.true.30
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB6_18
# BB#13:                                # %if.then.35
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	$18, %eax
	movl	%eax, %edi
	movq	-32(%rbp), %rsi
	callq	Fnth
	movl	$589, %edi              # imm = 0x24D
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB6_17
# BB#14:                                # %if.then.40
                                        #   in Loop: Header=BB6_1 Depth=1
	testb	$1, -18(%rbp)
	je	.LBB6_16
# BB#15:                                # %if.then.42
                                        #   in Loop: Header=BB6_1 Depth=1
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	Fautoload_do_load
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB6_1
.LBB6_16:                               # %if.else
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB6_23
.LBB6_17:                               # %if.end.45
	jmp	.LBB6_18
.LBB6_18:                               # %if.end.46
	jmp	.LBB6_19
.LBB6_19:                               # %if.end.47
	jmp	.LBB6_20
.LBB6_20:                               # %end
	testb	$1, -17(%rbp)
	je	.LBB6_22
# BB#21:                                # %if.then.49
	movl	$591, %edi              # imm = 0x24F
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB6_22:                               # %if.end.51
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB6_23:                               # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	get_keymap, .Lfunc_end6-get_keymap
	.cfi_endproc

	.globl	Fkeymap_prompt
	.align	16, 0x90
	.type	Fkeymap_prompt,@function
Fkeymap_prompt:                         # @Fkeymap_prompt
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
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	get_keymap
	movq	%rax, -16(%rbp)
.LBB7_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB7_10
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB7_3
	jmp	.LBB7_4
.LBB7_3:                                # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB7_11
.LBB7_4:                                # %if.else
                                        #   in Loop: Header=BB7_1 Depth=1
	xorl	%eax, %eax
	movq	-24(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	get_keymap
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB7_8
# BB#5:                                 # %if.then.7
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-24(%rbp), %rdi
	callq	Fkeymap_prompt
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB7_7
# BB#6:                                 # %if.then.12
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB7_11
.LBB7_7:                                # %if.end
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.13
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_9
.LBB7_9:                                # %if.end.14
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB7_1
.LBB7_10:                               # %while.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB7_11:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	Fkeymap_prompt, .Lfunc_end7-Fkeymap_prompt
	.cfi_endproc

	.globl	Fkeymap_parent
	.align	16, 0x90
	.type	Fkeymap_parent,@function
Fkeymap_parent:                         # @Fkeymap_parent
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
	movl	$1, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	keymap_parent
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	Fkeymap_parent, .Lfunc_end8-Fkeymap_parent
	.cfi_endproc

	.align	16, 0x90
	.type	keymap_parent,@function
keymap_parent:                          # @keymap_parent
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
	movb	%sil, %al
	movl	$1, %esi
	movq	%rdi, -16(%rbp)
	andb	$1, %al
	movb	%al, -17(%rbp)
	movq	-16(%rbp), %rdi
	movb	-17(%rbp), %al
	andb	$1, %al
	movzbl	%al, %edx
	callq	get_keymap
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB9_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB9_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB9_1 Depth=1
	xorl	%eax, %eax
	movq	-32(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	get_keymap
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB9_4
# BB#3:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB9_7
.LBB9_4:                                # %if.end
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_5
.LBB9_5:                                # %for.inc
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB9_1
.LBB9_6:                                # %for.end
	xorl	%esi, %esi
	movq	-32(%rbp), %rdi
	movb	-17(%rbp), %al
	andb	$1, %al
	movzbl	%al, %edx
	callq	get_keymap
	movq	%rax, -8(%rbp)
.LBB9_7:                                # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	keymap_parent, .Lfunc_end9-keymap_parent
	.cfi_endproc

	.globl	Fset_keymap_parent
	.align	16, 0x90
	.type	Fset_keymap_parent,@function
Fset_keymap_parent:                     # @Fset_keymap_parent
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
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, where_is_cache
	callq	builtin_lisp_symbol
	movl	$1, %edi
	movq	%rax, where_is_cache_keymaps
	movq	-8(%rbp), %rax
	movl	%edi, -36(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	-36(%rbp), %esi         # 4-byte Reload
	movl	-36(%rbp), %edx         # 4-byte Reload
	callq	get_keymap
	xorl	%edi, %edi
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB10_4
# BB#1:                                 # %if.then
	movl	$1, %esi
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	callq	get_keymap
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	keymap_memberp
	testb	$1, %al
	jne	.LBB10_2
	jmp	.LBB10_3
.LBB10_2:                               # %if.then.6
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	error
.LBB10_3:                               # %if.end
	jmp	.LBB10_4
.LBB10_4:                               # %if.end.7
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB10_5:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB10_7
# BB#6:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB10_5 Depth=1
	xorl	%eax, %eax
	movq	-24(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	get_keymap
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB10_11
.LBB10_7:                               # %if.then.14
	movabsq	$pure, %rax
	movq	-32(%rbp), %rcx
	subq	$3, %rcx
	subq	%rax, %rcx
	cmpq	$3000000, %rcx          # imm = 0x2DC6C0
	ja	.LBB10_9
# BB#8:                                 # %cond.true
	movq	-32(%rbp), %rdi
	callq	pure_write_error
.LBB10_9:                               # %cond.false
	jmp	.LBB10_10
.LBB10_10:                              # %cond.end
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	XSETCDR
	movq	-16(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.LBB10_11:                              # %if.end.19
                                        #   in Loop: Header=BB10_5 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB10_5
.Lfunc_end10:
	.size	Fset_keymap_parent, .Lfunc_end10-Fset_keymap_parent
	.cfi_endproc

	.align	16, 0x90
	.type	keymap_memberp,@function
keymap_memberp:                         # @keymap_memberp
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
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movl	%eax, %edi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB11_2
# BB#1:                                 # %if.then
	movb	$0, -1(%rbp)
	jmp	.LBB11_8
.LBB11_2:                               # %if.end
	jmp	.LBB11_3
.LBB11_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movq	-24(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	get_keymap
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edx, %edx
	movb	%dl, %cl
	movq	-40(%rbp), %r8          # 8-byte Reload
	cmpq	%rax, %r8
	movb	%cl, -41(%rbp)          # 1-byte Spill
	je	.LBB11_5
# BB#4:                                 # %land.rhs
                                        #   in Loop: Header=BB11_3 Depth=1
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	sete	%cl
	xorb	$-1, %cl
	movb	%cl, -41(%rbp)          # 1-byte Spill
.LBB11_5:                               # %land.end
                                        #   in Loop: Header=BB11_3 Depth=1
	movb	-41(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB11_6
	jmp	.LBB11_7
.LBB11_6:                               # %while.body
                                        #   in Loop: Header=BB11_3 Depth=1
	xorl	%esi, %esi
	movq	-24(%rbp), %rdi
	callq	keymap_parent
	movq	%rax, -24(%rbp)
	jmp	.LBB11_3
.LBB11_7:                               # %while.end
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	sete	%cl
	andb	$1, %cl
	movb	%cl, -1(%rbp)
.LBB11_8:                               # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	keymap_memberp, .Lfunc_end11-keymap_memberp
	.cfi_endproc

	.globl	access_keymap
	.align	16, 0x90
	.type	access_keymap,@function
access_keymap:                          # @access_keymap
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
	movb	%r8b, %al
	movb	%cl, %r9b
	movb	%dl, %r10b
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	andb	$1, %r10b
	movb	%r10b, -17(%rbp)
	andb	$1, %r9b
	movb	%r9b, -18(%rbp)
	andb	$1, %al
	movb	%al, -19(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movb	-17(%rbp), %al
	movb	-18(%rbp), %r9b
	movb	-19(%rbp), %r10b
	andb	$1, %al
	andb	$1, %r9b
	andb	$1, %r10b
	movzbl	%al, %edx
	movzbl	%r9b, %ecx
	movzbl	%r10b, %r8d
	callq	access_keymap_1
	movl	$957, %edi              # imm = 0x3BD
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB12_2
# BB#1:                                 # %cond.true
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB12_3
.LBB12_2:                               # %cond.false
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB12_3:                               # %cond.end
	movq	-48(%rbp), %rax         # 8-byte Reload
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	access_keymap, .Lfunc_end12-access_keymap
	.cfi_endproc

	.align	16, 0x90
	.type	access_keymap_1,@function
access_keymap_1:                        # @access_keymap_1
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
	subq	$352, %rsp              # imm = 0x160
	movb	%r8b, %al
	movb	%cl, %r9b
	movb	%dl, %r10b
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	andb	$1, %r10b
	movb	%r10b, -25(%rbp)
	andb	$1, %r9b
	movb	%r9b, -26(%rbp)
	andb	$1, %al
	movb	%al, -27(%rbp)
	movq	-24(%rbp), %rsi
	andq	$7, %rsi
	movl	%esi, %ecx
	cmpl	$3, %ecx
	jne	.LBB13_2
# BB#1:                                 # %cond.true
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB13_3
.LBB13_2:                               # %cond.false
	movq	-24(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB13_3:                               # %cond.end
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB13_5
# BB#4:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	reorder_modifiers
	movq	%rax, -24(%rbp)
	jmp	.LBB13_8
.LBB13_5:                               # %if.else
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB13_7
# BB#6:                                 # %if.then.13
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	andq	$268435455, %rax        # imm = 0xFFFFFFF
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -24(%rbp)
.LBB13_7:                               # %if.end
	jmp	.LBB13_8
.LBB13_8:                               # %if.end.16
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB13_22
# BB#9:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	andq	$134217728, %rax        # imm = 0x8000000
	cmpq	$0, %rax
	je	.LBB13_22
# BB#10:                                # %if.then.24
	movq	globals+3032, %rax
	sarq	$2, %rax
	andq	$134217728, %rax        # imm = 0x8000000
	cmpq	$0, %rax
	je	.LBB13_12
# BB#11:                                # %if.then.28
	movq	$110, globals+3032
.LBB13_12:                              # %if.end.29
	movq	-16(%rbp), %rdi
	movq	globals+3032, %rsi
	movb	-25(%rbp), %al
	movb	-26(%rbp), %cl
	movb	-27(%rbp), %dl
	andb	$1, %al
	andb	$1, %cl
	andb	$1, %dl
	movzbl	%al, %r8d
	movb	%dl, -129(%rbp)         # 1-byte Spill
	movl	%r8d, %edx
	movzbl	%cl, %ecx
	movb	-129(%rbp), %al         # 1-byte Reload
	movzbl	%al, %r8d
	callq	access_keymap_1
	xorl	%esi, %esi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movb	-27(%rbp), %r9b
	andb	$1, %r9b
	movzbl	%r9b, %edx
	callq	get_keymap
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB13_14
# BB#13:                                # %if.then.40
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	andq	$-134217729, %rax       # imm = 0xFFFFFFFFF7FFFFFF
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB13_21
.LBB13_14:                              # %if.else.43
	testb	$1, -25(%rbp)
	je	.LBB13_16
# BB#15:                                # %if.then.45
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -24(%rbp)
	jmp	.LBB13_20
.LBB13_16:                              # %if.else.47
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB13_18
# BB#17:                                # %cond.true.51
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jmp	.LBB13_19
.LBB13_18:                              # %cond.false.53
	movl	$957, %edi              # imm = 0x3BD
	callq	builtin_lisp_symbol
	movq	%rax, -152(%rbp)        # 8-byte Spill
.LBB13_19:                              # %cond.end.55
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	%rax, -8(%rbp)
	jmp	.LBB13_102
.LBB13_20:                              # %if.end.57
	jmp	.LBB13_21
.LBB13_21:                              # %if.end.58
	jmp	.LBB13_22
.LBB13_22:                              # %if.end.59
	movl	$957, %edi              # imm = 0x3BD
	callq	builtin_lisp_symbol
	movl	$957, %edi              # imm = 0x3BD
	movq	%rax, -64(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -72(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %edi
	cmpl	$3, %edi
	jne	.LBB13_25
# BB#23:                                # %land.lhs.true.68
	movl	$589, %edi              # imm = 0x24D
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rcx
	subq	$3, %rcx
	cmpq	(%rcx), %rax
	jne	.LBB13_25
# BB#24:                                # %cond.true.74
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB13_26
.LBB13_25:                              # %cond.false.76
	movq	-16(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
.LBB13_26:                              # %cond.end.77
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	%rax, -56(%rbp)
.LBB13_27:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movb	$1, %al
	movq	-56(%rbp), %rcx
	andq	$7, %rcx
	movl	%ecx, %edx
	cmpl	$3, %edx
	movb	%al, -161(%rbp)         # 1-byte Spill
	je	.LBB13_29
# BB#28:                                # %lor.rhs
                                        #   in Loop: Header=BB13_27 Depth=1
	xorl	%esi, %esi
	movq	-56(%rbp), %rdi
	movb	-27(%rbp), %al
	andb	$1, %al
	movzbl	%al, %edx
	callq	get_keymap
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %edx
	cmpl	$3, %edx
	sete	%cl
	movb	%cl, -161(%rbp)         # 1-byte Spill
.LBB13_29:                              # %lor.end
                                        #   in Loop: Header=BB13_27 Depth=1
	movb	-161(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB13_30
	jmp	.LBB13_98
.LBB13_30:                              # %for.body
                                        #   in Loop: Header=BB13_27 Depth=1
	movl	$957, %edi              # imm = 0x3BD
	callq	builtin_lisp_symbol
	xorl	%esi, %esi
	movq	%rax, -88(%rbp)
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	movb	-27(%rbp), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	callq	get_keymap
	movl	$589, %edi              # imm = 0x24D
	movq	%rax, -104(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %r8         # 8-byte Reload
	cmpq	%rax, %r8
	jne	.LBB13_43
# BB#31:                                # %if.then.97
                                        #   in Loop: Header=BB13_27 Depth=1
	testb	$1, -26(%rbp)
	jne	.LBB13_33
# BB#32:                                # %lor.lhs.false
                                        #   in Loop: Header=BB13_27 Depth=1
	xorl	%edi, %edi
	movq	-72(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB13_34
.LBB13_33:                              # %if.then.103
	jmp	.LBB13_98
.LBB13_34:                              # %if.else.104
                                        #   in Loop: Header=BB13_27 Depth=1
	movl	$957, %edi              # imm = 0x3BD
	movq	-72(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB13_41
# BB#35:                                # %if.then.108
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movb	-25(%rbp), %al
	movb	-27(%rbp), %dl
	andb	$1, %al
	andb	$1, %dl
	movzbl	%al, %r8d
	movb	%dl, -193(%rbp)         # 1-byte Spill
	movl	%r8d, %edx
	movb	-193(%rbp), %al         # 1-byte Reload
	movzbl	%al, %r8d
	callq	access_keymap_1
	xorl	%esi, %esi
	movb	-27(%rbp), %r9b
	andb	$1, %r9b
	movq	%rax, %rdi
	movzbl	%r9b, %edx
	callq	get_keymap
	xorl	%ecx, %ecx
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	get_keymap
	xorl	%edi, %edi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %r10        # 8-byte Reload
	cmpq	%rax, %r10
	je	.LBB13_40
# BB#36:                                # %if.then.118
	movq	-80(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB13_38
# BB#37:                                # %if.then.123
	movq	-80(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	XSETCDR
	jmp	.LBB13_39
.LBB13_38:                              # %if.else.124
	movq	-72(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	Fcons
	movl	$589, %edi              # imm = 0x24D
	movq	%rax, -80(%rbp)
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -72(%rbp)
.LBB13_39:                              # %if.end.128
	jmp	.LBB13_40
.LBB13_40:                              # %if.end.129
	jmp	.LBB13_98
.LBB13_41:                              # %if.end.130
                                        #   in Loop: Header=BB13_27 Depth=1
	jmp	.LBB13_42
.LBB13_42:                              # %if.end.131
                                        #   in Loop: Header=BB13_27 Depth=1
	jmp	.LBB13_69
.LBB13_43:                              # %if.else.132
                                        #   in Loop: Header=BB13_27 Depth=1
	movq	-104(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB13_45
# BB#44:                                # %if.then.137
                                        #   in Loop: Header=BB13_27 Depth=1
	movq	-104(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movb	-25(%rbp), %al
	movb	-26(%rbp), %cl
	movb	-27(%rbp), %dl
	andb	$1, %al
	andb	$1, %cl
	andb	$1, %dl
	movzbl	%al, %r8d
	movb	%dl, -209(%rbp)         # 1-byte Spill
	movl	%r8d, %edx
	movzbl	%cl, %ecx
	movb	-209(%rbp), %al         # 1-byte Reload
	movzbl	%al, %r8d
	callq	access_keymap_1
	movq	%rax, -88(%rbp)
	jmp	.LBB13_68
.LBB13_45:                              # %if.else.142
                                        #   in Loop: Header=BB13_27 Depth=1
	movq	-96(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB13_53
# BB#46:                                # %if.then.147
                                        #   in Loop: Header=BB13_27 Depth=1
	movq	-96(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB13_48
# BB#47:                                # %if.then.152
                                        #   in Loop: Header=BB13_27 Depth=1
	movq	-96(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB13_52
.LBB13_48:                              # %if.else.156
                                        #   in Loop: Header=BB13_27 Depth=1
	testb	$1, -25(%rbp)
	je	.LBB13_51
# BB#49:                                # %land.lhs.true.159
                                        #   in Loop: Header=BB13_27 Depth=1
	movl	$901, %edi              # imm = 0x385
	movq	-120(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB13_51
# BB#50:                                # %if.then.163
                                        #   in Loop: Header=BB13_27 Depth=1
	movq	-96(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	movb	$0, -25(%rbp)
.LBB13_51:                              # %if.end.167
                                        #   in Loop: Header=BB13_27 Depth=1
	jmp	.LBB13_52
.LBB13_52:                              # %if.end.168
                                        #   in Loop: Header=BB13_27 Depth=1
	jmp	.LBB13_67
.LBB13_53:                              # %if.else.169
                                        #   in Loop: Header=BB13_27 Depth=1
	movq	-96(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB13_54
	jmp	.LBB13_58
.LBB13_54:                              # %if.then.171
                                        #   in Loop: Header=BB13_27 Depth=1
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB13_57
# BB#55:                                # %land.lhs.true.177
                                        #   in Loop: Header=BB13_27 Depth=1
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	movq	-96(%rbp), %rdi
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	ASIZE
	movq	-232(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jge	.LBB13_57
# BB#56:                                # %if.then.182
                                        #   in Loop: Header=BB13_27 Depth=1
	movq	-96(%rbp), %rdi
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, %rsi
	callq	AREF
	movq	%rax, -88(%rbp)
.LBB13_57:                              # %if.end.185
                                        #   in Loop: Header=BB13_27 Depth=1
	jmp	.LBB13_66
.LBB13_58:                              # %if.else.186
                                        #   in Loop: Header=BB13_27 Depth=1
	movq	-96(%rbp), %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB13_59
	jmp	.LBB13_65
.LBB13_59:                              # %if.then.188
                                        #   in Loop: Header=BB13_27 Depth=1
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB13_64
# BB#60:                                # %land.lhs.true.194
                                        #   in Loop: Header=BB13_27 Depth=1
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	andq	$264241152, %rax        # imm = 0xFC00000
	cmpq	$0, %rax
	jne	.LBB13_64
# BB#61:                                # %if.then.199
                                        #   in Loop: Header=BB13_27 Depth=1
	movq	-96(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	Faref
	xorl	%edi, %edi
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-240(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB13_63
# BB#62:                                # %if.then.204
                                        #   in Loop: Header=BB13_27 Depth=1
	movl	$957, %edi              # imm = 0x3BD
	callq	builtin_lisp_symbol
	movq	%rax, -88(%rbp)
.LBB13_63:                              # %if.end.206
                                        #   in Loop: Header=BB13_27 Depth=1
	jmp	.LBB13_64
.LBB13_64:                              # %if.end.207
                                        #   in Loop: Header=BB13_27 Depth=1
	jmp	.LBB13_65
.LBB13_65:                              # %if.end.208
                                        #   in Loop: Header=BB13_27 Depth=1
	jmp	.LBB13_66
.LBB13_66:                              # %if.end.209
                                        #   in Loop: Header=BB13_27 Depth=1
	jmp	.LBB13_67
.LBB13_67:                              # %if.end.210
                                        #   in Loop: Header=BB13_27 Depth=1
	jmp	.LBB13_68
.LBB13_68:                              # %if.end.211
                                        #   in Loop: Header=BB13_27 Depth=1
	jmp	.LBB13_69
.LBB13_69:                              # %if.end.212
                                        #   in Loop: Header=BB13_27 Depth=1
	movl	$957, %edi              # imm = 0x3BD
	movq	-88(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-248(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB13_88
# BB#70:                                # %if.then.216
                                        #   in Loop: Header=BB13_27 Depth=1
	movl	$901, %edi              # imm = 0x385
	movq	-88(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-256(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB13_72
# BB#71:                                # %if.then.220
                                        #   in Loop: Header=BB13_27 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -88(%rbp)
.LBB13_72:                              # %if.end.222
                                        #   in Loop: Header=BB13_27 Depth=1
	movq	-88(%rbp), %rdi
	movb	-27(%rbp), %al
	andb	$1, %al
	movzbl	%al, %esi
	callq	get_keyelt
	xorl	%esi, %esi
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	movl	%esi, -260(%rbp)        # 4-byte Spill
	movl	-260(%rbp), %edx        # 4-byte Reload
	callq	get_keymap
	xorl	%edi, %edi
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-272(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB13_79
# BB#73:                                # %if.then.229
                                        #   in Loop: Header=BB13_27 Depth=1
	xorl	%edi, %edi
	movq	-72(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-280(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB13_75
# BB#74:                                # %lor.lhs.false.233
                                        #   in Loop: Header=BB13_27 Depth=1
	movl	$957, %edi              # imm = 0x3BD
	movq	-72(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-288(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB13_76
.LBB13_75:                              # %if.then.237
                                        #   in Loop: Header=BB13_27 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, -72(%rbp)
.LBB13_76:                              # %if.end.238
                                        #   in Loop: Header=BB13_27 Depth=1
	xorl	%edi, %edi
	movq	-88(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-296(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB13_78
# BB#77:                                # %if.then.242
	jmp	.LBB13_98
.LBB13_78:                              # %if.end.243
                                        #   in Loop: Header=BB13_27 Depth=1
	jmp	.LBB13_87
.LBB13_79:                              # %if.else.244
                                        #   in Loop: Header=BB13_27 Depth=1
	xorl	%edi, %edi
	movq	-72(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-304(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB13_81
# BB#80:                                # %lor.lhs.false.248
                                        #   in Loop: Header=BB13_27 Depth=1
	movl	$957, %edi              # imm = 0x3BD
	movq	-72(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-312(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB13_82
.LBB13_81:                              # %if.then.252
                                        #   in Loop: Header=BB13_27 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB13_86
.LBB13_82:                              # %if.else.253
                                        #   in Loop: Header=BB13_27 Depth=1
	movq	-80(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB13_84
# BB#83:                                # %if.then.258
                                        #   in Loop: Header=BB13_27 Depth=1
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rax
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	list1
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	XSETCDR
	movq	-80(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB13_85
.LBB13_84:                              # %if.else.263
                                        #   in Loop: Header=BB13_27 Depth=1
	movq	-88(%rbp), %rdi
	callq	list1
	movl	$589, %edi              # imm = 0x24D
	movq	%rax, -80(%rbp)
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	Fcons
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	%rax, -72(%rbp)
.LBB13_85:                              # %if.end.268
                                        #   in Loop: Header=BB13_27 Depth=1
	jmp	.LBB13_86
.LBB13_86:                              # %if.end.269
                                        #   in Loop: Header=BB13_27 Depth=1
	jmp	.LBB13_87
.LBB13_87:                              # %if.end.270
                                        #   in Loop: Header=BB13_27 Depth=1
	jmp	.LBB13_88
.LBB13_88:                              # %if.end.271
                                        #   in Loop: Header=BB13_27 Depth=1
	jmp	.LBB13_89
.LBB13_89:                              # %do.body
                                        #   in Loop: Header=BB13_27 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-336(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB13_92
# BB#90:                                # %land.lhs.true.275
                                        #   in Loop: Header=BB13_27 Depth=1
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-344(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB13_92
# BB#91:                                # %if.then.279
                                        #   in Loop: Header=BB13_27 Depth=1
	callq	process_quit_flag
	jmp	.LBB13_95
.LBB13_92:                              # %if.else.280
                                        #   in Loop: Header=BB13_27 Depth=1
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB13_94
# BB#93:                                # %if.then.282
                                        #   in Loop: Header=BB13_27 Depth=1
	callq	process_pending_signals
.LBB13_94:                              # %if.end.283
                                        #   in Loop: Header=BB13_27 Depth=1
	jmp	.LBB13_95
.LBB13_95:                              # %if.end.284
                                        #   in Loop: Header=BB13_27 Depth=1
	jmp	.LBB13_96
.LBB13_96:                              # %do.end
                                        #   in Loop: Header=BB13_27 Depth=1
	jmp	.LBB13_97
.LBB13_97:                              # %for.inc
                                        #   in Loop: Header=BB13_27 Depth=1
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB13_27
.LBB13_98:                              # %for.end
	movl	$957, %edi              # imm = 0x3BD
	callq	builtin_lisp_symbol
	cmpq	-72(%rbp), %rax
	jne	.LBB13_100
# BB#99:                                # %cond.true.291
	movq	-64(%rbp), %rdi
	movb	-27(%rbp), %al
	andb	$1, %al
	movzbl	%al, %esi
	callq	get_keyelt
	movq	%rax, -352(%rbp)        # 8-byte Spill
	jmp	.LBB13_101
.LBB13_100:                             # %cond.false.294
	movq	-72(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
.LBB13_101:                             # %cond.end.295
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	%rax, -8(%rbp)
.LBB13_102:                             # %return
	movq	-8(%rbp), %rax
	addq	$352, %rsp              # imm = 0x160
	popq	%rbp
	retq
.Lfunc_end13:
	.size	access_keymap_1, .Lfunc_end13-access_keymap_1
	.cfi_endproc

	.globl	map_keymap
	.align	16, 0x90
	.type	map_keymap,@function
map_keymap:                             # @map_keymap
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
	subq	$48, %rsp
	movb	%r8b, %al
	movl	$1, %r8d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	andb	$1, %al
	movb	%al, -33(%rbp)
	movq	-8(%rbp), %rdi
	movb	-33(%rbp), %al
	andb	$1, %al
	movl	%r8d, %esi
	movzbl	%al, %edx
	callq	get_keymap
	movq	%rax, -8(%rbp)
.LBB14_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB14_8
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB14_1 Depth=1
	xorl	%eax, %eax
	movq	-8(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	get_keymap
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB14_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movb	-33(%rbp), %r8b
	andb	$1, %r8b
	movzbl	%r8b, %r8d
	callq	map_keymap
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB14_5
.LBB14_4:                               # %if.else
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	map_keymap_internal
	movq	%rax, -8(%rbp)
.LBB14_5:                               # %if.end
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB14_7
# BB#6:                                 # %if.then.15
                                        #   in Loop: Header=BB14_1 Depth=1
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	movb	-33(%rbp), %al
	andb	$1, %al
	movzbl	%al, %edx
	callq	get_keymap
	movq	%rax, -8(%rbp)
.LBB14_7:                               # %if.end.18
                                        #   in Loop: Header=BB14_1 Depth=1
	jmp	.LBB14_1
.LBB14_8:                               # %while.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	map_keymap, .Lfunc_end14-map_keymap
	.cfi_endproc

	.align	16, 0x90
	.type	map_keymap_internal,@function
map_keymap_internal:                    # @map_keymap_internal
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	andq	$7, %rcx
	movl	%ecx, %eax
	cmpl	$3, %eax
	jne	.LBB15_3
# BB#1:                                 # %land.lhs.true
	movl	$589, %edi              # imm = 0x24D
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rcx
	subq	$3, %rcx
	cmpq	(%rcx), %rax
	jne	.LBB15_3
# BB#2:                                 # %cond.true
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB15_4
.LBB15_3:                               # %cond.false
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB15_4:                               # %cond.end
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
.LBB15_5:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_14 Depth 2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -73(%rbp)          # 1-byte Spill
	jne	.LBB15_7
# BB#6:                                 # %land.rhs
                                        #   in Loop: Header=BB15_5 Depth=1
	movl	$589, %edi              # imm = 0x24D
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx
	subq	$3, %rcx
	cmpq	(%rcx), %rax
	sete	%dl
	xorb	$-1, %dl
	movb	%dl, -73(%rbp)          # 1-byte Spill
.LBB15_7:                               # %land.end
                                        #   in Loop: Header=BB15_5 Depth=1
	movb	-73(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB15_8
	jmp	.LBB15_25
.LBB15_8:                               # %for.body
                                        #   in Loop: Header=BB15_5 Depth=1
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -48(%rbp)
	movq	-48(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	get_keymap
	xorl	%edi, %edi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB15_10
# BB#9:                                 # %if.then
	jmp	.LBB15_25
.LBB15_10:                              # %if.else
                                        #   in Loop: Header=BB15_5 Depth=1
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB15_12
# BB#11:                                # %if.then.24
                                        #   in Loop: Header=BB15_5 Depth=1
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rcx
	movq	-32(%rbp), %r8
	callq	map_keymap_item
	jmp	.LBB15_22
.LBB15_12:                              # %if.else.30
                                        #   in Loop: Header=BB15_5 Depth=1
	movq	-48(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB15_13
	jmp	.LBB15_18
.LBB15_13:                              # %if.then.32
                                        #   in Loop: Header=BB15_5 Depth=1
	movq	-48(%rbp), %rdi
	callq	ASIZE
	movl	%eax, %ecx
	movl	%ecx, -52(%rbp)
	movl	$0, -56(%rbp)
.LBB15_14:                              # %for.cond.35
                                        #   Parent Loop BB15_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-56(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB15_17
# BB#15:                                # %for.body.38
                                        #   in Loop: Header=BB15_14 Depth=2
	movslq	-56(%rbp), %rdi
	callq	make_natnum
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rax
	movslq	-56(%rbp), %rcx
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	callq	AREF
	movq	-32(%rbp), %r8
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	map_keymap_item
# BB#16:                                # %for.inc
                                        #   in Loop: Header=BB15_14 Depth=2
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB15_14
.LBB15_17:                              # %for.end
                                        #   in Loop: Header=BB15_5 Depth=1
	jmp	.LBB15_21
.LBB15_18:                              # %if.else.43
                                        #   in Loop: Header=BB15_5 Depth=1
	movq	-48(%rbp), %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB15_19
	jmp	.LBB15_20
.LBB15_19:                              # %if.then.45
                                        #   in Loop: Header=BB15_5 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %r8
	movq	%rcx, %rdi
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	movq	%r8, %rdx
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	make_save_funcptr_ptr_obj
	movabsq	$map_keymap_char_table_item, %rdi
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	map_char_table
.LBB15_20:                              # %if.end
                                        #   in Loop: Header=BB15_5 Depth=1
	jmp	.LBB15_21
.LBB15_21:                              # %if.end.48
                                        #   in Loop: Header=BB15_5 Depth=1
	jmp	.LBB15_22
.LBB15_22:                              # %if.end.49
                                        #   in Loop: Header=BB15_5 Depth=1
	jmp	.LBB15_23
.LBB15_23:                              # %if.end.50
                                        #   in Loop: Header=BB15_5 Depth=1
	jmp	.LBB15_24
.LBB15_24:                              # %for.inc.51
                                        #   in Loop: Header=BB15_5 Depth=1
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB15_5
.LBB15_25:                              # %for.end.55
	movq	-40(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	map_keymap_internal, .Lfunc_end15-map_keymap_internal
	.cfi_endproc

	.globl	map_keymap_canonical
	.align	16, 0x90
	.type	map_keymap_canonical,@function
map_keymap_canonical:                   # @map_keymap_canonical
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
	movl	$590, %eax              # imm = 0x24E
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	safe_call1
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	map_keymap_internal
	movq	%rax, -40(%rbp)         # 8-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	map_keymap_canonical, .Lfunc_end16-map_keymap_canonical
	.cfi_endproc

	.globl	Fmap_keymap_internal
	.align	16, 0x90
	.type	Fmap_keymap_internal,@function
Fmap_keymap_internal:                   # @Fmap_keymap_internal
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
	movl	$1, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	get_keymap
	movabsq	$map_keymap_call, %rsi
	xorl	%edx, %edx
	movl	%edx, %ecx
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rdx
	callq	map_keymap_internal
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	Fmap_keymap_internal, .Lfunc_end17-Fmap_keymap_internal
	.cfi_endproc

	.align	16, 0x90
	.type	map_keymap_call,@function
map_keymap_call:                        # @map_keymap_call
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	callq	call2
	movq	%rax, -40(%rbp)         # 8-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	map_keymap_call, .Lfunc_end18-map_keymap_call
	.cfi_endproc

	.globl	Fmap_keymap
	.align	16, 0x90
	.type	Fmap_keymap,@function
Fmap_keymap:                            # @Fmap_keymap
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movl	%eax, %edi
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB19_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.1, %rdi
	callq	intern
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	call2
	movq	%rax, -8(%rbp)
	jmp	.LBB19_3
.LBB19_2:                               # %if.end
	movabsq	$map_keymap_call, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	$1, %r8d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rdx
	callq	map_keymap
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB19_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	Fmap_keymap, .Lfunc_end19-Fmap_keymap
	.cfi_endproc

	.globl	Fcopy_keymap
	.align	16, 0x90
	.type	Fcopy_keymap,@function
Fcopy_keymap:                           # @Fcopy_keymap
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
	movl	$1, %esi
	xorl	%edx, %edx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	get_keymap
	movl	$589, %edi              # imm = 0x24D
	movq	%rax, -8(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	list1
	movq	%rax, -24(%rbp)
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB20_1:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_8 Depth 2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -37(%rbp)          # 1-byte Spill
	jne	.LBB20_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	$589, %edi              # imm = 0x24D
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	movb	%dl, -37(%rbp)          # 1-byte Spill
.LBB20_3:                               # %land.end
                                        #   in Loop: Header=BB20_1 Depth=1
	movb	-37(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB20_4
	jmp	.LBB20_20
.LBB20_4:                               # %while.body
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB20_5
	jmp	.LBB20_6
.LBB20_5:                               # %if.then
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	-32(%rbp), %rdi
	callq	Fcopy_sequence
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	callq	builtin_lisp_symbol
	movabsq	$copy_keymap_1, %rdi
	movq	-32(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	%rax, %rsi
	callq	map_char_table
	jmp	.LBB20_19
.LBB20_6:                               # %if.else
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	-32(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB20_7
	jmp	.LBB20_12
.LBB20_7:                               # %if.then.14
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	-32(%rbp), %rdi
	callq	Fcopy_sequence
	movq	%rax, -32(%rbp)
	movl	$0, -36(%rbp)
.LBB20_8:                               # %for.cond
                                        #   Parent Loop BB20_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-36(%rbp), %rax
	movq	-32(%rbp), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	ASIZE
	movq	-56(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	jge	.LBB20_11
# BB#9:                                 # %for.body
                                        #   in Loop: Header=BB20_8 Depth=2
	movq	-32(%rbp), %rdi
	movslq	-36(%rbp), %rsi
	movq	-32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	callq	AREF
	movq	%rax, %rdi
	callq	copy_keymap_item
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
# BB#10:                                # %for.inc
                                        #   in Loop: Header=BB20_8 Depth=2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB20_8
.LBB20_11:                              # %for.end
                                        #   in Loop: Header=BB20_1 Depth=1
	jmp	.LBB20_18
.LBB20_12:                              # %if.else.24
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB20_17
# BB#13:                                # %if.then.29
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	$589, %edi              # imm = 0x24D
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB20_15
# BB#14:                                # %if.then.35
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	-32(%rbp), %rdi
	callq	Fcopy_keymap
	movq	%rax, -32(%rbp)
	jmp	.LBB20_16
.LBB20_15:                              # %if.else.37
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	copy_keymap_item
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	%rax, -32(%rbp)
.LBB20_16:                              # %if.end
                                        #   in Loop: Header=BB20_1 Depth=1
	jmp	.LBB20_17
.LBB20_17:                              # %if.end.45
                                        #   in Loop: Header=BB20_1 Depth=1
	jmp	.LBB20_18
.LBB20_18:                              # %if.end.46
                                        #   in Loop: Header=BB20_1 Depth=1
	jmp	.LBB20_19
.LBB20_19:                              # %if.end.47
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	list1
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	XSETCDR
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB20_1
.LBB20_20:                              # %while.end
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	XSETCDR
	movq	-16(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	Fcopy_keymap, .Lfunc_end20-Fcopy_keymap
	.cfi_endproc

	.align	16, 0x90
	.type	copy_keymap_1,@function
copy_keymap_1:                          # @copy_keymap_1
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
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	copy_keymap_item
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	Fset_char_table_range
	movq	%rax, -48(%rbp)         # 8-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	copy_keymap_1, .Lfunc_end21-copy_keymap_1
	.cfi_endproc

	.align	16, 0x90
	.type	copy_keymap_item,@function
copy_keymap_item:                       # @copy_keymap_item
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
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$3, %eax
	je	.LBB22_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB22_24
.LBB22_2:                               # %if.end
	movl	$657, %edi              # imm = 0x291
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB22_11
# BB#3:                                 # %if.then.4
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rsi
	callq	Fcons
	movq	%rax, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB22_5
# BB#4:                                 # %if.then.16
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rsi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	Fcons
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	XSETCDR
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB22_5:                               # %if.end.29
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB22_10
# BB#6:                                 # %if.then.34
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rsi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	Fcons
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	XSETCDR
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %edx
	cmpl	$3, %edx
	jne	.LBB22_9
# BB#7:                                 # %land.lhs.true
	movl	$589, %edi              # imm = 0x24D
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB22_9
# BB#8:                                 # %if.then.55
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	Fcopy_keymap
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	XSETCAR
.LBB22_9:                               # %if.end.57
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB22_10:                              # %if.end.61
	jmp	.LBB22_23
.LBB22_11:                              # %if.else
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB22_12
	jmp	.LBB22_19
.LBB22_12:                              # %if.then.65
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rsi
	callq	Fcons
	movq	%rax, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB22_15
# BB#13:                                # %land.lhs.true.79
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB22_14
	jmp	.LBB22_15
.LBB22_14:                              # %if.then.84
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rsi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	Fcons
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	XSETCDR
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB22_15:                              # %if.end.97
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB22_18
# BB#16:                                # %land.lhs.true.102
	movl	$589, %edi              # imm = 0x24D
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB22_18
# BB#17:                                # %if.then.108
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	Fcopy_keymap
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	XSETCDR
.LBB22_18:                              # %if.end.110
	jmp	.LBB22_22
.LBB22_19:                              # %if.else.111
	movl	$589, %edi              # imm = 0x24D
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB22_21
# BB#20:                                # %if.then.117
	movq	-16(%rbp), %rdi
	callq	Fcopy_keymap
	movq	%rax, -24(%rbp)
.LBB22_21:                              # %if.end.119
	jmp	.LBB22_22
.LBB22_22:                              # %if.end.120
	jmp	.LBB22_23
.LBB22_23:                              # %if.end.121
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB22_24:                              # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	copy_keymap_item, .Lfunc_end22-copy_keymap_item
	.cfi_endproc

	.globl	Fdefine_key
	.align	16, 0x90
	.type	Fdefine_key,@function
Fdefine_key:                            # @Fdefine_key
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
	subq	$192, %rsp
	movl	$1, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movb	$0, -57(%rbp)
	movq	-16(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	get_keymap
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rdi
	callq	CHECK_VECTOR_OR_STRING
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB23_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB23_60
.LBB23_2:                               # %if.end
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB23_5
# BB#3:                                 # %land.lhs.true
	movl	$901, %edi              # imm = 0x385
	movq	globals+528, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB23_5
# BB#4:                                 # %if.then.8
	movq	-32(%rbp), %rdi
	movq	globals+528, %rsi
	callq	Fcons
	movq	%rax, globals+528
.LBB23_5:                               # %if.end.10
	movq	-24(%rbp), %rdi
	callq	VECTORP
	movb	$1, %cl
	testb	$1, %al
	movb	%cl, -121(%rbp)         # 1-byte Spill
	jne	.LBB23_9
# BB#6:                                 # %lor.rhs
	movq	-24(%rbp), %rdi
	callq	STRINGP
	xorl	%ecx, %ecx
	movb	%cl, %dl
	testb	$1, %al
	movb	%dl, -122(%rbp)         # 1-byte Spill
	jne	.LBB23_7
	jmp	.LBB23_8
.LBB23_7:                               # %land.rhs
	movq	-24(%rbp), %rdi
	callq	STRING_MULTIBYTE
	movb	%al, -122(%rbp)         # 1-byte Spill
.LBB23_8:                               # %land.end
	movb	-122(%rbp), %al         # 1-byte Reload
	movb	%al, -121(%rbp)         # 1-byte Spill
.LBB23_9:                               # %lor.end
	movb	-121(%rbp), %al         # 1-byte Reload
	movl	$128, %ecx
	movl	$134217728, %edx        # imm = 0x8000000
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -64(%rbp)
	movq	-32(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB23_10
	jmp	.LBB23_19
.LBB23_10:                              # %land.lhs.true.19
	movq	-32(%rbp), %rdi
	callq	ASIZE
	cmpq	$0, %rax
	jle	.LBB23_19
# BB#11:                                # %land.lhs.true.23
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	callq	AREF
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB23_19
# BB#12:                                # %if.then.29
	movq	-32(%rbp), %rdi
	callq	ASIZE
	xorl	%edi, %edi
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fmake_vector
	movq	%rax, -80(%rbp)
	movq	-32(%rbp), %rdi
	callq	ASIZE
	movq	%rax, -88(%rbp)
.LBB23_13:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-88(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -88(%rbp)
	cmpq	$0, %rax
	jl	.LBB23_18
# BB#14:                                # %while.body
                                        #   in Loop: Header=BB23_13 Depth=1
	movq	-32(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	AREF
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB23_17
# BB#15:                                # %land.lhs.true.43
                                        #   in Loop: Header=BB23_13 Depth=1
	movq	-96(%rbp), %rdi
	callq	lucid_event_type_list_p
	testb	$1, %al
	jne	.LBB23_16
	jmp	.LBB23_17
.LBB23_16:                              # %if.then.46
                                        #   in Loop: Header=BB23_13 Depth=1
	movq	-96(%rbp), %rdi
	callq	Fevent_convert_list
	movq	%rax, -96(%rbp)
.LBB23_17:                              # %if.end.48
                                        #   in Loop: Header=BB23_13 Depth=1
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movq	-96(%rbp), %rdx
	callq	ASET
	jmp	.LBB23_13
.LBB23_18:                              # %while.end
	movq	-80(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB23_19:                              # %if.end.49
	movq	$0, -40(%rbp)
.LBB23_20:                              # %while.body.51
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rsi
	callq	Faref
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB23_34
# BB#21:                                # %if.then.59
                                        #   in Loop: Header=BB23_20 Depth=1
	movq	-48(%rbp), %rdi
	callq	lucid_event_type_list_p
	testb	$1, %al
	jne	.LBB23_22
	jmp	.LBB23_23
.LBB23_22:                              # %if.then.61
                                        #   in Loop: Header=BB23_20 Depth=1
	movq	-48(%rbp), %rdi
	callq	Fevent_convert_list
	movq	%rax, -48(%rbp)
	jmp	.LBB23_33
.LBB23_23:                              # %if.else
                                        #   in Loop: Header=BB23_20 Depth=1
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB23_24
	jmp	.LBB23_32
.LBB23_24:                              # %land.lhs.true.65
                                        #   in Loop: Header=BB23_20 Depth=1
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jg	.LBB23_32
# BB#25:                                # %if.then.70
                                        #   in Loop: Header=BB23_20 Depth=1
	jmp	.LBB23_26
.LBB23_26:                              # %do.body
                                        #   in Loop: Header=BB23_20 Depth=1
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB23_27
	jmp	.LBB23_29
.LBB23_27:                              # %land.lhs.true.76
                                        #   in Loop: Header=BB23_20 Depth=1
	movq	-104(%rbp), %rax
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jg	.LBB23_29
# BB#28:                                # %cond.true
                                        #   in Loop: Header=BB23_20 Depth=1
	jmp	.LBB23_30
.LBB23_29:                              # %cond.false
	movl	$260, %edi              # imm = 0x104
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB23_30:                              # %cond.end
                                        #   in Loop: Header=BB23_20 Depth=1
	jmp	.LBB23_31
.LBB23_31:                              # %do.end
                                        #   in Loop: Header=BB23_20 Depth=1
	jmp	.LBB23_32
.LBB23_32:                              # %if.end.81
                                        #   in Loop: Header=BB23_20 Depth=1
	jmp	.LBB23_33
.LBB23_33:                              # %if.end.82
                                        #   in Loop: Header=BB23_20 Depth=1
	jmp	.LBB23_34
.LBB23_34:                              # %if.end.83
                                        #   in Loop: Header=BB23_20 Depth=1
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB23_36
# BB#35:                                # %if.then.88
                                        #   in Loop: Header=BB23_20 Depth=1
	movq	-48(%rbp), %rdi
	callq	silly_event_symbol_error
.LBB23_36:                              # %if.end.89
                                        #   in Loop: Header=BB23_20 Depth=1
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB23_40
# BB#37:                                # %land.lhs.true.95
                                        #   in Loop: Header=BB23_20 Depth=1
	movq	-48(%rbp), %rax
	sarq	$2, %rax
	movslq	-64(%rbp), %rcx
	andq	%rcx, %rax
	cmpq	$0, %rax
	je	.LBB23_40
# BB#38:                                # %land.lhs.true.99
                                        #   in Loop: Header=BB23_20 Depth=1
	testb	$1, -57(%rbp)
	jne	.LBB23_40
# BB#39:                                # %if.then.101
                                        #   in Loop: Header=BB23_20 Depth=1
	movq	globals+3032, %rax
	movq	%rax, -48(%rbp)
	movb	$1, -57(%rbp)
	jmp	.LBB23_43
.LBB23_40:                              # %if.else.102
                                        #   in Loop: Header=BB23_20 Depth=1
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB23_42
# BB#41:                                # %if.then.108
                                        #   in Loop: Header=BB23_20 Depth=1
	movq	-48(%rbp), %rax
	sarq	$2, %rax
	movl	-64(%rbp), %ecx
	xorl	$-1, %ecx
	movslq	%ecx, %rdx
	andq	%rdx, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -48(%rbp)
.LBB23_42:                              # %if.end.114
                                        #   in Loop: Header=BB23_20 Depth=1
	movb	$0, -57(%rbp)
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
.LBB23_43:                              # %if.end.115
                                        #   in Loop: Header=BB23_20 Depth=1
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	je	.LBB23_49
# BB#44:                                # %land.lhs.true.121
                                        #   in Loop: Header=BB23_20 Depth=1
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB23_49
# BB#45:                                # %land.lhs.true.126
                                        #   in Loop: Header=BB23_20 Depth=1
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB23_48
# BB#46:                                # %lor.lhs.false
                                        #   in Loop: Header=BB23_20 Depth=1
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB23_49
# BB#47:                                # %land.lhs.true.138
                                        #   in Loop: Header=BB23_20 Depth=1
	movq	-40(%rbp), %rax
	cmpq	-72(%rbp), %rax
	je	.LBB23_49
.LBB23_48:                              # %if.then.141
                                        #   in Loop: Header=BB23_20 Depth=1
	movabsq	$.L.str.2, %rdi
	movl	$1, %edx
	movq	-48(%rbp), %rsi
	callq	message_with_string
.LBB23_49:                              # %if.end.142
                                        #   in Loop: Header=BB23_20 Depth=1
	movq	-40(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB23_51
# BB#50:                                # %if.then.145
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	store_in_keymap
	movq	%rax, -8(%rbp)
	jmp	.LBB23_60
.LBB23_51:                              # %if.end.147
                                        #   in Loop: Header=BB23_20 Depth=1
	xorl	%edx, %edx
	movl	$1, %eax
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	access_keymap
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB23_53
# BB#52:                                # %if.then.152
                                        #   in Loop: Header=BB23_20 Depth=1
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	define_as_prefix
	movq	%rax, -56(%rbp)
.LBB23_53:                              # %if.end.154
                                        #   in Loop: Header=BB23_20 Depth=1
	xorl	%esi, %esi
	movl	$1, %edx
	movq	-56(%rbp), %rdi
	callq	get_keymap
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %edx
	cmpl	$3, %edx
	je	.LBB23_59
# BB#54:                                # %if.then.160
	movq	-48(%rbp), %rax
	cmpq	globals+3032, %rax
	jne	.LBB23_57
# BB#55:                                # %land.lhs.true.164
	testb	$1, -57(%rbp)
	je	.LBB23_57
# BB#56:                                # %cond.true.167
	movabsq	$.L.str.4, %rax
	movabsq	$.L.str.3, %rcx
	cmpq	$0, -40(%rbp)
	cmoveq	%rcx, %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB23_58
.LBB23_57:                              # %cond.false.171
	movabsq	$.L.str.5, %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB23_58
.LBB23_58:                              # %cond.end.172
	movq	-160(%rbp), %rax        # 8-byte Reload
	xorl	%edi, %edi
	movq	%rax, -112(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fkey_description
	movq	%rax, %rdi
	callq	SDATA
	movl	$2, %ecx
	movl	%ecx, %esi
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rdx
	shlq	$2, %rdx
	addq	$2, %rdx
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	Fsubstring
	xorl	%edi, %edi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fkey_description
	movq	%rax, %rdi
	callq	SDATA
	movabsq	$.L.str.6, %rdi
	movq	-112(%rbp), %rcx
	movq	-176(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	error
.LBB23_59:                              # %if.end.183
                                        #   in Loop: Header=BB23_20 Depth=1
	jmp	.LBB23_20
.LBB23_60:                              # %return
	movq	-8(%rbp), %rax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	Fdefine_key, .Lfunc_end23-Fdefine_key
	.cfi_endproc

	.align	16, 0x90
	.type	silly_event_symbol_error,@function
silly_event_symbol_error:               # @silly_event_symbol_error
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	parse_modifiers
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -44(%rbp)
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	Fsymbol_name
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	exclude_keys, %rsi
	callq	Fassoc
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB24_14
# BB#1:                                 # %if.then
	leaq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	movl	-44(%rbp), %ecx
	andl	$4194304, %ecx          # imm = 0x400000
	cmpl	$0, %ecx
	je	.LBB24_3
# BB#2:                                 # %if.then.8
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -72(%rbp)
	movb	$92, (%rax)
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -72(%rbp)
	movb	$65, (%rax)
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -72(%rbp)
	movb	$45, (%rax)
.LBB24_3:                               # %if.end
	movl	-44(%rbp), %eax
	andl	$67108864, %eax         # imm = 0x4000000
	cmpl	$0, %eax
	je	.LBB24_5
# BB#4:                                 # %if.then.13
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -72(%rbp)
	movb	$92, (%rax)
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -72(%rbp)
	movb	$67, (%rax)
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -72(%rbp)
	movb	$45, (%rax)
.LBB24_5:                               # %if.end.17
	movl	-44(%rbp), %eax
	andl	$16777216, %eax         # imm = 0x1000000
	cmpl	$0, %eax
	je	.LBB24_7
# BB#6:                                 # %if.then.20
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -72(%rbp)
	movb	$92, (%rax)
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -72(%rbp)
	movb	$72, (%rax)
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -72(%rbp)
	movb	$45, (%rax)
.LBB24_7:                               # %if.end.24
	movl	-44(%rbp), %eax
	andl	$134217728, %eax        # imm = 0x8000000
	cmpl	$0, %eax
	je	.LBB24_9
# BB#8:                                 # %if.then.27
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -72(%rbp)
	movb	$92, (%rax)
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -72(%rbp)
	movb	$77, (%rax)
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -72(%rbp)
	movb	$45, (%rax)
.LBB24_9:                               # %if.end.31
	movl	-44(%rbp), %eax
	andl	$33554432, %eax         # imm = 0x2000000
	cmpl	$0, %eax
	je	.LBB24_11
# BB#10:                                # %if.then.34
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -72(%rbp)
	movb	$92, (%rax)
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -72(%rbp)
	movb	$83, (%rax)
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -72(%rbp)
	movb	$45, (%rax)
.LBB24_11:                              # %if.end.38
	movl	-44(%rbp), %eax
	andl	$8388608, %eax          # imm = 0x800000
	cmpl	$0, %eax
	je	.LBB24_13
# BB#12:                                # %if.then.41
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -72(%rbp)
	movb	$92, (%rax)
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -72(%rbp)
	movb	$115, (%rax)
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -72(%rbp)
	movb	$45, (%rax)
.LBB24_13:                              # %if.end.45
	movq	-72(%rbp), %rax
	movb	$0, (%rax)
	movq	-8(%rbp), %rdi
	callq	reorder_modifiers
	movl	$4, %esi
	leaq	-120(%rbp), %rdi
	leaq	-64(%rbp), %rcx
	movq	%rax, -8(%rbp)
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	movl	%esi, -148(%rbp)        # 4-byte Spill
	callq	strlen
	movq	%rax, -120(%rbp)
	movq	$-1, -112(%rbp)
	movq	$0, -104(%rbp)
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, -96(%rbp)
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, %rdi
	movl	-148(%rbp), %esi        # 4-byte Reload
	callq	make_lisp_ptr
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rsi
	callq	concat2
	movq	%rax, -80(%rbp)
	movq	-8(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SDATA
	movq	-80(%rbp), %rdi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	SDATA
	movq	-8(%rbp), %rdi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SDATA
	movabsq	$.L.str.61, %rdi
	movq	-160(%rbp), %rsi        # 8-byte Reload
	movq	-168(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	error
.LBB24_14:                              # %if.end.61
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	silly_event_symbol_error, .Lfunc_end24-silly_event_symbol_error
	.cfi_endproc

	.align	16, 0x90
	.type	define_as_prefix,@function
define_as_prefix:                       # @define_as_prefix
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
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	Fmake_sparse_keymap
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	store_in_keymap
	movq	-24(%rbp), %rdx
	movq	%rax, -32(%rbp)         # 8-byte Spill
	movq	%rdx, %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	define_as_prefix, .Lfunc_end25-define_as_prefix
	.cfi_endproc

	.globl	Fkey_description
	.align	16, 0x90
	.type	Fkey_description,@function
Fkey_description:                       # @Fkey_description
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
	subq	$1920, %rsp             # imm = 0x780
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	Flength
	movabsq	$.L.str.7, %rdi
	sarq	$2, %rax
	movq	%rax, -56(%rbp)
	callq	build_string
	movq	%rax, -72(%rbp)
	movb	$0, -89(%rbp)
	movq	$16384, -104(%rbp)      # imm = 0x4000
	callq	SPECPDL_INDEX
	xorl	%edi, %edi
	movq	%rax, -112(%rbp)
	movb	$0, -113(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB26_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	Flength
	sarq	$2, %rax
	addq	-56(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB26_2:                               # %if.end
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_3
	jmp	.LBB26_82
.LBB26_3:                               # %cond.true
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_4
	jmp	.LBB26_43
.LBB26_4:                               # %cond.true.6
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB26_6
# BB#5:                                 # %cond.true.11
	xorl	%eax, %eax
	movq	-56(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-56(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -180(%rbp)        # 4-byte Spill
	jmp	.LBB26_7
.LBB26_6:                               # %cond.false
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -180(%rbp)        # 4-byte Spill
.LBB26_7:                               # %cond.end
	movl	-180(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB26_9
# BB#8:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jl	.LBB26_35
.LBB26_9:                               # %lor.lhs.false
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_10
	jmp	.LBB26_21
.LBB26_10:                              # %cond.true.40
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB26_15
# BB#11:                                # %cond.true.45
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -184(%rbp)        # 4-byte Spill
	jge	.LBB26_13
# BB#12:                                # %cond.true.55
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -188(%rbp)        # 4-byte Spill
	jmp	.LBB26_14
.LBB26_13:                              # %cond.false.65
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -188(%rbp)        # 4-byte Spill
.LBB26_14:                              # %cond.end.71
	movl	-188(%rbp), %eax        # 4-byte Reload
	movl	$4, %ecx
	cltd
	idivl	%ecx
	movl	-184(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB26_35
	jmp	.LBB26_32
.LBB26_15:                              # %cond.false.75
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_16
	jmp	.LBB26_17
.LBB26_16:                              # %cond.true.76
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_35
	jmp	.LBB26_32
.LBB26_17:                              # %cond.false.77
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB26_19
# BB#18:                                # %cond.true.85
	xorl	%eax, %eax
	movq	-56(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-56(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -192(%rbp)        # 4-byte Spill
	jmp	.LBB26_20
.LBB26_19:                              # %cond.false.105
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -192(%rbp)        # 4-byte Spill
.LBB26_20:                              # %cond.end.111
	movl	-192(%rbp), %eax        # 4-byte Reload
	movl	$4, %ecx
	cltd
	idivl	%ecx
	movq	-56(%rbp), %rsi
	movb	%sil, %dil
	movsbl	%dil, %ecx
	cmpl	%ecx, %eax
	jl	.LBB26_35
	jmp	.LBB26_32
.LBB26_21:                              # %cond.false.118
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_22
	jmp	.LBB26_23
.LBB26_22:                              # %cond.true.119
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_35
	jmp	.LBB26_32
.LBB26_23:                              # %cond.false.120
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB26_28
# BB#24:                                # %cond.true.125
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -196(%rbp)        # 4-byte Spill
	jge	.LBB26_26
# BB#25:                                # %cond.true.135
	xorl	%eax, %eax
	movq	-56(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-56(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -200(%rbp)        # 4-byte Spill
	jmp	.LBB26_27
.LBB26_26:                              # %cond.false.155
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -200(%rbp)        # 4-byte Spill
.LBB26_27:                              # %cond.end.161
	movl	-200(%rbp), %eax        # 4-byte Reload
	movl	$4, %ecx
	cltd
	idivl	%ecx
	movl	-196(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB26_35
	jmp	.LBB26_32
.LBB26_28:                              # %cond.false.166
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB26_30
# BB#29:                                # %cond.true.174
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -204(%rbp)        # 4-byte Spill
	jmp	.LBB26_31
.LBB26_30:                              # %cond.false.184
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -204(%rbp)        # 4-byte Spill
.LBB26_31:                              # %cond.end.190
	movl	-204(%rbp), %eax        # 4-byte Reload
	movl	$4, %ecx
	cltd
	idivl	%ecx
	movq	-56(%rbp), %rsi
	movb	%sil, %dil
	movsbl	%dil, %ecx
	cmpl	%ecx, %eax
	jl	.LBB26_35
.LBB26_32:                              # %lor.lhs.false.197
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	shll	$2, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB26_34
# BB#33:                                # %land.lhs.true.205
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	shll	$2, %edx
	cmpl	$-128, %edx
	jl	.LBB26_35
.LBB26_34:                              # %lor.lhs.false.211
	movl	$127, %eax
	movq	-56(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	shll	$2, %esi
	cmpl	%esi, %eax
	jge	.LBB26_39
.LBB26_35:                              # %cond.true.217
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$2, %edx
	cmpl	$127, %edx
	jg	.LBB26_37
# BB#36:                                # %cond.true.223
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$2, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -208(%rbp)        # 4-byte Spill
	jmp	.LBB26_38
.LBB26_37:                              # %cond.false.229
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$2, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -208(%rbp)        # 4-byte Spill
.LBB26_38:                              # %cond.end.237
	movl	-208(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -128(%rbp)
	testb	$1, %cl
	jne	.LBB26_401
	jmp	.LBB26_402
.LBB26_39:                              # %cond.false.240
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$2, %edx
	cmpl	$127, %edx
	jg	.LBB26_41
# BB#40:                                # %cond.true.246
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$2, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -212(%rbp)        # 4-byte Spill
	jmp	.LBB26_42
.LBB26_41:                              # %cond.false.252
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$2, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -212(%rbp)        # 4-byte Spill
.LBB26_42:                              # %cond.end.260
	movl	-212(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -128(%rbp)
	testb	$1, %dl
	jne	.LBB26_401
	jmp	.LBB26_402
.LBB26_43:                              # %cond.false.263
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_45
# BB#44:                                # %cond.true.269
	xorl	%eax, %eax
	movq	-56(%rbp), %rcx
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
	movq	-56(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	jmp	.LBB26_46
.LBB26_45:                              # %cond.false.286
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
.LBB26_46:                              # %cond.end.290
	movq	-224(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB26_48
# BB#47:                                # %land.lhs.true.294
	cmpq	$0, -56(%rbp)
	jl	.LBB26_74
.LBB26_48:                              # %lor.lhs.false.297
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_49
	jmp	.LBB26_60
.LBB26_49:                              # %cond.true.298
	cmpq	$0, -56(%rbp)
	jge	.LBB26_54
# BB#50:                                # %cond.true.301
	movq	-56(%rbp), %rax
	movq	-56(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -232(%rbp)        # 8-byte Spill
	jge	.LBB26_52
# BB#51:                                # %cond.true.307
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	jmp	.LBB26_53
.LBB26_52:                              # %cond.false.315
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
.LBB26_53:                              # %cond.end.319
	movq	-240(%rbp), %rax        # 8-byte Reload
	movl	$4, %ecx
	movl	%ecx, %edx
	movq	%rdx, -248(%rbp)        # 8-byte Spill
	cqto
	movq	-248(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-232(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB26_74
	jmp	.LBB26_71
.LBB26_54:                              # %cond.false.324
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_55
	jmp	.LBB26_56
.LBB26_55:                              # %cond.true.325
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_74
	jmp	.LBB26_71
.LBB26_56:                              # %cond.false.326
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_58
# BB#57:                                # %cond.true.332
	xorl	%eax, %eax
	movq	-56(%rbp), %rcx
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
	movq	-56(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	jmp	.LBB26_59
.LBB26_58:                              # %cond.false.349
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
.LBB26_59:                              # %cond.end.353
	movq	-256(%rbp), %rax        # 8-byte Reload
	movl	$4, %ecx
	movl	%ecx, %edx
	movq	%rdx, -264(%rbp)        # 8-byte Spill
	cqto
	movq	-264(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-56(%rbp), %rax
	jl	.LBB26_74
	jmp	.LBB26_71
.LBB26_60:                              # %cond.false.358
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_61
	jmp	.LBB26_62
.LBB26_61:                              # %cond.true.359
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_74
	jmp	.LBB26_71
.LBB26_62:                              # %cond.false.360
	cmpq	$0, -56(%rbp)
	jge	.LBB26_67
# BB#63:                                # %cond.true.363
	movq	-56(%rbp), %rax
	movq	-56(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -272(%rbp)        # 8-byte Spill
	jge	.LBB26_65
# BB#64:                                # %cond.true.369
	xorl	%eax, %eax
	movq	-56(%rbp), %rcx
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
	movq	-56(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -280(%rbp)        # 8-byte Spill
	jmp	.LBB26_66
.LBB26_65:                              # %cond.false.386
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
.LBB26_66:                              # %cond.end.390
	movq	-280(%rbp), %rax        # 8-byte Reload
	movl	$4, %ecx
	movl	%ecx, %edx
	movq	%rdx, -288(%rbp)        # 8-byte Spill
	cqto
	movq	-288(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-272(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB26_74
	jmp	.LBB26_71
.LBB26_67:                              # %cond.false.395
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_69
# BB#68:                                # %cond.true.401
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	jmp	.LBB26_70
.LBB26_69:                              # %cond.false.409
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
.LBB26_70:                              # %cond.end.413
	movq	-296(%rbp), %rax        # 8-byte Reload
	movl	$4, %ecx
	movl	%ecx, %edx
	movq	%rdx, -304(%rbp)        # 8-byte Spill
	cqto
	movq	-304(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-56(%rbp), %rax
	jl	.LBB26_74
.LBB26_71:                              # %lor.lhs.false.418
	movq	-56(%rbp), %rax
	shlq	$2, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_73
# BB#72:                                # %land.lhs.true.424
	movq	-56(%rbp), %rax
	shlq	$2, %rax
	cmpq	$-128, %rax
	jl	.LBB26_74
.LBB26_73:                              # %lor.lhs.false.428
	movl	$127, %eax
	movl	%eax, %ecx
	movq	-56(%rbp), %rdx
	shlq	$2, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB26_78
.LBB26_74:                              # %cond.true.432
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$2, %edx
	cmpl	$127, %edx
	jg	.LBB26_76
# BB#75:                                # %cond.true.438
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$2, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -308(%rbp)        # 4-byte Spill
	jmp	.LBB26_77
.LBB26_76:                              # %cond.false.444
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$2, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -308(%rbp)        # 4-byte Spill
.LBB26_77:                              # %cond.end.452
	movl	-308(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -128(%rbp)
	testb	$1, %cl
	jne	.LBB26_401
	jmp	.LBB26_402
.LBB26_78:                              # %cond.false.455
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$2, %edx
	cmpl	$127, %edx
	jg	.LBB26_80
# BB#79:                                # %cond.true.461
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$2, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -312(%rbp)        # 4-byte Spill
	jmp	.LBB26_81
.LBB26_80:                              # %cond.false.467
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$2, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -312(%rbp)        # 4-byte Spill
.LBB26_81:                              # %cond.end.475
	movl	-312(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -128(%rbp)
	testb	$1, %dl
	jne	.LBB26_401
	jmp	.LBB26_402
.LBB26_82:                              # %cond.false.478
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_83
	jmp	.LBB26_162
.LBB26_83:                              # %cond.true.479
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_84
	jmp	.LBB26_123
.LBB26_84:                              # %cond.true.480
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB26_86
# BB#85:                                # %cond.true.488
	xorl	%eax, %eax
	movq	-56(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %esi
	subl	%esi, %eax
	movq	-56(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -316(%rbp)        # 4-byte Spill
	jmp	.LBB26_87
.LBB26_86:                              # %cond.false.508
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -316(%rbp)        # 4-byte Spill
.LBB26_87:                              # %cond.end.514
	movl	-316(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB26_89
# BB#88:                                # %land.lhs.true.518
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jl	.LBB26_115
.LBB26_89:                              # %lor.lhs.false.523
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_90
	jmp	.LBB26_101
.LBB26_90:                              # %cond.true.524
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB26_95
# BB#91:                                # %cond.true.529
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -320(%rbp)        # 4-byte Spill
	jge	.LBB26_93
# BB#92:                                # %cond.true.539
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -324(%rbp)        # 4-byte Spill
	jmp	.LBB26_94
.LBB26_93:                              # %cond.false.549
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -324(%rbp)        # 4-byte Spill
.LBB26_94:                              # %cond.end.555
	movl	-324(%rbp), %eax        # 4-byte Reload
	movl	$4, %ecx
	cltd
	idivl	%ecx
	movl	-320(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB26_115
	jmp	.LBB26_112
.LBB26_95:                              # %cond.false.560
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_96
	jmp	.LBB26_97
.LBB26_96:                              # %cond.true.561
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_115
	jmp	.LBB26_112
.LBB26_97:                              # %cond.false.562
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB26_99
# BB#98:                                # %cond.true.570
	xorl	%eax, %eax
	movq	-56(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %esi
	subl	%esi, %eax
	movq	-56(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -328(%rbp)        # 4-byte Spill
	jmp	.LBB26_100
.LBB26_99:                              # %cond.false.590
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -328(%rbp)        # 4-byte Spill
.LBB26_100:                             # %cond.end.596
	movl	-328(%rbp), %eax        # 4-byte Reload
	movl	$4, %ecx
	cltd
	idivl	%ecx
	movq	-56(%rbp), %rsi
	movw	%si, %di
	movswl	%di, %ecx
	cmpl	%ecx, %eax
	jl	.LBB26_115
	jmp	.LBB26_112
.LBB26_101:                             # %cond.false.603
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_102
	jmp	.LBB26_103
.LBB26_102:                             # %cond.true.604
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_115
	jmp	.LBB26_112
.LBB26_103:                             # %cond.false.605
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB26_108
# BB#104:                               # %cond.true.610
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -332(%rbp)        # 4-byte Spill
	jge	.LBB26_106
# BB#105:                               # %cond.true.620
	xorl	%eax, %eax
	movq	-56(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %esi
	subl	%esi, %eax
	movq	-56(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -336(%rbp)        # 4-byte Spill
	jmp	.LBB26_107
.LBB26_106:                             # %cond.false.640
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -336(%rbp)        # 4-byte Spill
.LBB26_107:                             # %cond.end.646
	movl	-336(%rbp), %eax        # 4-byte Reload
	movl	$4, %ecx
	cltd
	idivl	%ecx
	movl	-332(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB26_115
	jmp	.LBB26_112
.LBB26_108:                             # %cond.false.651
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB26_110
# BB#109:                               # %cond.true.659
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -340(%rbp)        # 4-byte Spill
	jmp	.LBB26_111
.LBB26_110:                             # %cond.false.669
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -340(%rbp)        # 4-byte Spill
.LBB26_111:                             # %cond.end.675
	movl	-340(%rbp), %eax        # 4-byte Reload
	movl	$4, %ecx
	cltd
	idivl	%ecx
	movq	-56(%rbp), %rsi
	movw	%si, %di
	movswl	%di, %ecx
	cmpl	%ecx, %eax
	jl	.LBB26_115
.LBB26_112:                             # %lor.lhs.false.682
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	shll	$2, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB26_114
# BB#113:                               # %land.lhs.true.690
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	shll	$2, %edx
	cmpl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB26_115
.LBB26_114:                             # %lor.lhs.false.696
	movl	$32767, %eax            # imm = 0x7FFF
	movq	-56(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	shll	$2, %esi
	cmpl	%esi, %eax
	jge	.LBB26_119
.LBB26_115:                             # %cond.true.702
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$2, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB26_117
# BB#116:                               # %cond.true.708
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$2, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -344(%rbp)        # 4-byte Spill
	jmp	.LBB26_118
.LBB26_117:                             # %cond.false.714
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$2, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -344(%rbp)        # 4-byte Spill
.LBB26_118:                             # %cond.end.722
	movl	-344(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -128(%rbp)
	testb	$1, %cl
	jne	.LBB26_401
	jmp	.LBB26_402
.LBB26_119:                             # %cond.false.725
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$2, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB26_121
# BB#120:                               # %cond.true.731
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$2, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -348(%rbp)        # 4-byte Spill
	jmp	.LBB26_122
.LBB26_121:                             # %cond.false.737
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$2, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -348(%rbp)        # 4-byte Spill
.LBB26_122:                             # %cond.end.745
	movl	-348(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -128(%rbp)
	testb	$1, %dl
	jne	.LBB26_401
	jmp	.LBB26_402
.LBB26_123:                             # %cond.false.748
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_125
# BB#124:                               # %cond.true.754
	xorl	%eax, %eax
	movq	-56(%rbp), %rcx
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
	movq	-56(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -360(%rbp)        # 8-byte Spill
	jmp	.LBB26_126
.LBB26_125:                             # %cond.false.771
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
.LBB26_126:                             # %cond.end.775
	movq	-360(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB26_128
# BB#127:                               # %land.lhs.true.779
	cmpq	$0, -56(%rbp)
	jl	.LBB26_154
.LBB26_128:                             # %lor.lhs.false.782
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_129
	jmp	.LBB26_140
.LBB26_129:                             # %cond.true.783
	cmpq	$0, -56(%rbp)
	jge	.LBB26_134
# BB#130:                               # %cond.true.786
	movq	-56(%rbp), %rax
	movq	-56(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -368(%rbp)        # 8-byte Spill
	jge	.LBB26_132
# BB#131:                               # %cond.true.792
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	jmp	.LBB26_133
.LBB26_132:                             # %cond.false.800
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
.LBB26_133:                             # %cond.end.804
	movq	-376(%rbp), %rax        # 8-byte Reload
	movl	$4, %ecx
	movl	%ecx, %edx
	movq	%rdx, -384(%rbp)        # 8-byte Spill
	cqto
	movq	-384(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-368(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB26_154
	jmp	.LBB26_151
.LBB26_134:                             # %cond.false.809
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_135
	jmp	.LBB26_136
.LBB26_135:                             # %cond.true.810
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_154
	jmp	.LBB26_151
.LBB26_136:                             # %cond.false.811
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_138
# BB#137:                               # %cond.true.817
	xorl	%eax, %eax
	movq	-56(%rbp), %rcx
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
	movq	-56(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -392(%rbp)        # 8-byte Spill
	jmp	.LBB26_139
.LBB26_138:                             # %cond.false.834
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
.LBB26_139:                             # %cond.end.838
	movq	-392(%rbp), %rax        # 8-byte Reload
	movl	$4, %ecx
	movl	%ecx, %edx
	movq	%rdx, -400(%rbp)        # 8-byte Spill
	cqto
	movq	-400(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-56(%rbp), %rax
	jl	.LBB26_154
	jmp	.LBB26_151
.LBB26_140:                             # %cond.false.843
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_141
	jmp	.LBB26_142
.LBB26_141:                             # %cond.true.844
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_154
	jmp	.LBB26_151
.LBB26_142:                             # %cond.false.845
	cmpq	$0, -56(%rbp)
	jge	.LBB26_147
# BB#143:                               # %cond.true.848
	movq	-56(%rbp), %rax
	movq	-56(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -408(%rbp)        # 8-byte Spill
	jge	.LBB26_145
# BB#144:                               # %cond.true.854
	xorl	%eax, %eax
	movq	-56(%rbp), %rcx
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
	movq	-56(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -416(%rbp)        # 8-byte Spill
	jmp	.LBB26_146
.LBB26_145:                             # %cond.false.871
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
.LBB26_146:                             # %cond.end.875
	movq	-416(%rbp), %rax        # 8-byte Reload
	movl	$4, %ecx
	movl	%ecx, %edx
	movq	%rdx, -424(%rbp)        # 8-byte Spill
	cqto
	movq	-424(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-408(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB26_154
	jmp	.LBB26_151
.LBB26_147:                             # %cond.false.880
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_149
# BB#148:                               # %cond.true.886
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	jmp	.LBB26_150
.LBB26_149:                             # %cond.false.894
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
.LBB26_150:                             # %cond.end.898
	movq	-432(%rbp), %rax        # 8-byte Reload
	movl	$4, %ecx
	movl	%ecx, %edx
	movq	%rdx, -440(%rbp)        # 8-byte Spill
	cqto
	movq	-440(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-56(%rbp), %rax
	jl	.LBB26_154
.LBB26_151:                             # %lor.lhs.false.903
	movq	-56(%rbp), %rax
	shlq	$2, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_153
# BB#152:                               # %land.lhs.true.909
	movq	-56(%rbp), %rax
	shlq	$2, %rax
	cmpq	$-32768, %rax           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB26_154
.LBB26_153:                             # %lor.lhs.false.913
	movl	$32767, %eax            # imm = 0x7FFF
	movl	%eax, %ecx
	movq	-56(%rbp), %rdx
	shlq	$2, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB26_158
.LBB26_154:                             # %cond.true.917
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$2, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB26_156
# BB#155:                               # %cond.true.923
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$2, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -444(%rbp)        # 4-byte Spill
	jmp	.LBB26_157
.LBB26_156:                             # %cond.false.929
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$2, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -444(%rbp)        # 4-byte Spill
.LBB26_157:                             # %cond.end.937
	movl	-444(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -128(%rbp)
	testb	$1, %cl
	jne	.LBB26_401
	jmp	.LBB26_402
.LBB26_158:                             # %cond.false.940
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$2, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB26_160
# BB#159:                               # %cond.true.946
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$2, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -448(%rbp)        # 4-byte Spill
	jmp	.LBB26_161
.LBB26_160:                             # %cond.false.952
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$2, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -448(%rbp)        # 4-byte Spill
.LBB26_161:                             # %cond.end.960
	movl	-448(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -128(%rbp)
	testb	$1, %dl
	jne	.LBB26_401
	jmp	.LBB26_402
.LBB26_162:                             # %cond.false.963
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_163
	jmp	.LBB26_242
.LBB26_163:                             # %cond.true.964
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_164
	jmp	.LBB26_203
.LBB26_164:                             # %cond.true.965
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB26_166
# BB#165:                               # %cond.true.972
	xorl	%eax, %eax
	movq	-56(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-56(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -452(%rbp)        # 4-byte Spill
	jmp	.LBB26_167
.LBB26_166:                             # %cond.false.990
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -452(%rbp)        # 4-byte Spill
.LBB26_167:                             # %cond.end.995
	movl	-452(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB26_169
# BB#168:                               # %land.lhs.true.999
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jl	.LBB26_195
.LBB26_169:                             # %lor.lhs.false.1003
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_170
	jmp	.LBB26_181
.LBB26_170:                             # %cond.true.1004
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB26_175
# BB#171:                               # %cond.true.1008
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	movq	-56(%rbp), %rax
	movl	%eax, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -456(%rbp)        # 4-byte Spill
	jge	.LBB26_173
# BB#172:                               # %cond.true.1016
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -460(%rbp)        # 4-byte Spill
	jmp	.LBB26_174
.LBB26_173:                             # %cond.false.1025
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -460(%rbp)        # 4-byte Spill
.LBB26_174:                             # %cond.end.1030
	movl	-460(%rbp), %eax        # 4-byte Reload
	movl	$4, %ecx
	cltd
	idivl	%ecx
	movl	-456(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB26_195
	jmp	.LBB26_192
.LBB26_175:                             # %cond.false.1035
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_176
	jmp	.LBB26_177
.LBB26_176:                             # %cond.true.1036
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_195
	jmp	.LBB26_192
.LBB26_177:                             # %cond.false.1037
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB26_179
# BB#178:                               # %cond.true.1044
	xorl	%eax, %eax
	movq	-56(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-56(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -464(%rbp)        # 4-byte Spill
	jmp	.LBB26_180
.LBB26_179:                             # %cond.false.1062
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -464(%rbp)        # 4-byte Spill
.LBB26_180:                             # %cond.end.1067
	movl	-464(%rbp), %eax        # 4-byte Reload
	movl	$4, %ecx
	cltd
	idivl	%ecx
	movq	-56(%rbp), %rsi
	movl	%esi, %ecx
	cmpl	%ecx, %eax
	jl	.LBB26_195
	jmp	.LBB26_192
.LBB26_181:                             # %cond.false.1073
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_182
	jmp	.LBB26_183
.LBB26_182:                             # %cond.true.1074
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_195
	jmp	.LBB26_192
.LBB26_183:                             # %cond.false.1075
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB26_188
# BB#184:                               # %cond.true.1079
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	movq	-56(%rbp), %rax
	movl	%eax, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -468(%rbp)        # 4-byte Spill
	jge	.LBB26_186
# BB#185:                               # %cond.true.1087
	xorl	%eax, %eax
	movq	-56(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-56(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -472(%rbp)        # 4-byte Spill
	jmp	.LBB26_187
.LBB26_186:                             # %cond.false.1105
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -472(%rbp)        # 4-byte Spill
.LBB26_187:                             # %cond.end.1110
	movl	-472(%rbp), %eax        # 4-byte Reload
	movl	$4, %ecx
	cltd
	idivl	%ecx
	movl	-468(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB26_195
	jmp	.LBB26_192
.LBB26_188:                             # %cond.false.1115
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB26_190
# BB#189:                               # %cond.true.1122
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -476(%rbp)        # 4-byte Spill
	jmp	.LBB26_191
.LBB26_190:                             # %cond.false.1131
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -476(%rbp)        # 4-byte Spill
.LBB26_191:                             # %cond.end.1136
	movl	-476(%rbp), %eax        # 4-byte Reload
	movl	$4, %ecx
	cltd
	idivl	%ecx
	movq	-56(%rbp), %rsi
	movl	%esi, %ecx
	cmpl	%ecx, %eax
	jl	.LBB26_195
.LBB26_192:                             # %lor.lhs.false.1142
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	shll	$2, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB26_194
# BB#193:                               # %land.lhs.true.1149
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	shll	$2, %ecx
	cmpl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	jl	.LBB26_195
.LBB26_194:                             # %lor.lhs.false.1154
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movq	-56(%rbp), %rcx
	movl	%ecx, %edx
	shll	$2, %edx
	cmpl	%edx, %eax
	jge	.LBB26_199
.LBB26_195:                             # %cond.true.1159
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	shll	$2, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB26_197
# BB#196:                               # %cond.true.1164
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	shll	$2, %ecx
	movl	%ecx, -480(%rbp)        # 4-byte Spill
	jmp	.LBB26_198
.LBB26_197:                             # %cond.false.1167
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	shll	$2, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -480(%rbp)        # 4-byte Spill
.LBB26_198:                             # %cond.end.1172
	movl	-480(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -128(%rbp)
	testb	$1, %cl
	jne	.LBB26_401
	jmp	.LBB26_402
.LBB26_199:                             # %cond.false.1175
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	shll	$2, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB26_201
# BB#200:                               # %cond.true.1180
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	shll	$2, %ecx
	movl	%ecx, -484(%rbp)        # 4-byte Spill
	jmp	.LBB26_202
.LBB26_201:                             # %cond.false.1183
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	shll	$2, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -484(%rbp)        # 4-byte Spill
.LBB26_202:                             # %cond.end.1188
	movl	-484(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -128(%rbp)
	testb	$1, %dl
	jne	.LBB26_401
	jmp	.LBB26_402
.LBB26_203:                             # %cond.false.1191
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_205
# BB#204:                               # %cond.true.1197
	xorl	%eax, %eax
	movq	-56(%rbp), %rcx
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
	movq	-56(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -496(%rbp)        # 8-byte Spill
	jmp	.LBB26_206
.LBB26_205:                             # %cond.false.1214
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
.LBB26_206:                             # %cond.end.1218
	movq	-496(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB26_208
# BB#207:                               # %land.lhs.true.1222
	cmpq	$0, -56(%rbp)
	jl	.LBB26_234
.LBB26_208:                             # %lor.lhs.false.1225
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_209
	jmp	.LBB26_220
.LBB26_209:                             # %cond.true.1226
	cmpq	$0, -56(%rbp)
	jge	.LBB26_214
# BB#210:                               # %cond.true.1229
	movq	-56(%rbp), %rax
	movq	-56(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -504(%rbp)        # 8-byte Spill
	jge	.LBB26_212
# BB#211:                               # %cond.true.1235
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	jmp	.LBB26_213
.LBB26_212:                             # %cond.false.1243
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
.LBB26_213:                             # %cond.end.1247
	movq	-512(%rbp), %rax        # 8-byte Reload
	movl	$4, %ecx
	movl	%ecx, %edx
	movq	%rdx, -520(%rbp)        # 8-byte Spill
	cqto
	movq	-520(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-504(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB26_234
	jmp	.LBB26_231
.LBB26_214:                             # %cond.false.1252
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_215
	jmp	.LBB26_216
.LBB26_215:                             # %cond.true.1253
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_234
	jmp	.LBB26_231
.LBB26_216:                             # %cond.false.1254
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_218
# BB#217:                               # %cond.true.1260
	xorl	%eax, %eax
	movq	-56(%rbp), %rcx
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
	movq	-56(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -528(%rbp)        # 8-byte Spill
	jmp	.LBB26_219
.LBB26_218:                             # %cond.false.1277
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
.LBB26_219:                             # %cond.end.1281
	movq	-528(%rbp), %rax        # 8-byte Reload
	movl	$4, %ecx
	movl	%ecx, %edx
	movq	%rdx, -536(%rbp)        # 8-byte Spill
	cqto
	movq	-536(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-56(%rbp), %rax
	jl	.LBB26_234
	jmp	.LBB26_231
.LBB26_220:                             # %cond.false.1286
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_221
	jmp	.LBB26_222
.LBB26_221:                             # %cond.true.1287
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_234
	jmp	.LBB26_231
.LBB26_222:                             # %cond.false.1288
	cmpq	$0, -56(%rbp)
	jge	.LBB26_227
# BB#223:                               # %cond.true.1291
	movq	-56(%rbp), %rax
	movq	-56(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -544(%rbp)        # 8-byte Spill
	jge	.LBB26_225
# BB#224:                               # %cond.true.1297
	xorl	%eax, %eax
	movq	-56(%rbp), %rcx
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
	movq	-56(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -552(%rbp)        # 8-byte Spill
	jmp	.LBB26_226
.LBB26_225:                             # %cond.false.1314
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
.LBB26_226:                             # %cond.end.1318
	movq	-552(%rbp), %rax        # 8-byte Reload
	movl	$4, %ecx
	movl	%ecx, %edx
	movq	%rdx, -560(%rbp)        # 8-byte Spill
	cqto
	movq	-560(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-544(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB26_234
	jmp	.LBB26_231
.LBB26_227:                             # %cond.false.1323
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_229
# BB#228:                               # %cond.true.1329
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
	jmp	.LBB26_230
.LBB26_229:                             # %cond.false.1337
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
.LBB26_230:                             # %cond.end.1341
	movq	-568(%rbp), %rax        # 8-byte Reload
	movl	$4, %ecx
	movl	%ecx, %edx
	movq	%rdx, -576(%rbp)        # 8-byte Spill
	cqto
	movq	-576(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-56(%rbp), %rax
	jl	.LBB26_234
.LBB26_231:                             # %lor.lhs.false.1346
	movq	-56(%rbp), %rax
	shlq	$2, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_233
# BB#232:                               # %land.lhs.true.1352
	movq	-56(%rbp), %rax
	shlq	$2, %rax
	cmpq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	jl	.LBB26_234
.LBB26_233:                             # %lor.lhs.false.1356
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %ecx
	movq	-56(%rbp), %rdx
	shlq	$2, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB26_238
.LBB26_234:                             # %cond.true.1360
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	shll	$2, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB26_236
# BB#235:                               # %cond.true.1365
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	shll	$2, %ecx
	movl	%ecx, -580(%rbp)        # 4-byte Spill
	jmp	.LBB26_237
.LBB26_236:                             # %cond.false.1368
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	shll	$2, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -580(%rbp)        # 4-byte Spill
.LBB26_237:                             # %cond.end.1373
	movl	-580(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -128(%rbp)
	testb	$1, %cl
	jne	.LBB26_401
	jmp	.LBB26_402
.LBB26_238:                             # %cond.false.1376
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	shll	$2, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB26_240
# BB#239:                               # %cond.true.1381
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	shll	$2, %ecx
	movl	%ecx, -584(%rbp)        # 4-byte Spill
	jmp	.LBB26_241
.LBB26_240:                             # %cond.false.1384
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	shll	$2, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -584(%rbp)        # 4-byte Spill
.LBB26_241:                             # %cond.end.1389
	movl	-584(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -128(%rbp)
	testb	$1, %dl
	jne	.LBB26_401
	jmp	.LBB26_402
.LBB26_242:                             # %cond.false.1392
	movb	$1, %al
	testb	$1, %al
	jne	.LBB26_243
	jmp	.LBB26_322
.LBB26_243:                             # %cond.true.1393
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_244
	jmp	.LBB26_283
.LBB26_244:                             # %cond.true.1394
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_246
# BB#245:                               # %cond.true.1400
	xorl	%eax, %eax
	movq	-56(%rbp), %rcx
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
	movq	-56(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -592(%rbp)        # 8-byte Spill
	jmp	.LBB26_247
.LBB26_246:                             # %cond.false.1417
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -592(%rbp)        # 8-byte Spill
.LBB26_247:                             # %cond.end.1421
	movq	-592(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB26_249
# BB#248:                               # %land.lhs.true.1425
	cmpq	$0, -56(%rbp)
	jl	.LBB26_275
.LBB26_249:                             # %lor.lhs.false.1428
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_250
	jmp	.LBB26_261
.LBB26_250:                             # %cond.true.1429
	cmpq	$0, -56(%rbp)
	jge	.LBB26_255
# BB#251:                               # %cond.true.1432
	movq	-56(%rbp), %rax
	movq	-56(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -600(%rbp)        # 8-byte Spill
	jge	.LBB26_253
# BB#252:                               # %cond.true.1438
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -608(%rbp)        # 8-byte Spill
	jmp	.LBB26_254
.LBB26_253:                             # %cond.false.1446
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -608(%rbp)        # 8-byte Spill
.LBB26_254:                             # %cond.end.1450
	movq	-608(%rbp), %rax        # 8-byte Reload
	movl	$4, %ecx
	movl	%ecx, %edx
	movq	%rdx, -616(%rbp)        # 8-byte Spill
	cqto
	movq	-616(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-600(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB26_275
	jmp	.LBB26_272
.LBB26_255:                             # %cond.false.1455
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_256
	jmp	.LBB26_257
.LBB26_256:                             # %cond.true.1456
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_275
	jmp	.LBB26_272
.LBB26_257:                             # %cond.false.1457
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_259
# BB#258:                               # %cond.true.1463
	xorl	%eax, %eax
	movq	-56(%rbp), %rcx
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
	movq	-56(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -624(%rbp)        # 8-byte Spill
	jmp	.LBB26_260
.LBB26_259:                             # %cond.false.1480
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
.LBB26_260:                             # %cond.end.1484
	movq	-624(%rbp), %rax        # 8-byte Reload
	movl	$4, %ecx
	movl	%ecx, %edx
	movq	%rdx, -632(%rbp)        # 8-byte Spill
	cqto
	movq	-632(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-56(%rbp), %rax
	jl	.LBB26_275
	jmp	.LBB26_272
.LBB26_261:                             # %cond.false.1489
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_262
	jmp	.LBB26_263
.LBB26_262:                             # %cond.true.1490
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_275
	jmp	.LBB26_272
.LBB26_263:                             # %cond.false.1491
	cmpq	$0, -56(%rbp)
	jge	.LBB26_268
# BB#264:                               # %cond.true.1494
	movq	-56(%rbp), %rax
	movq	-56(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -640(%rbp)        # 8-byte Spill
	jge	.LBB26_266
# BB#265:                               # %cond.true.1500
	xorl	%eax, %eax
	movq	-56(%rbp), %rcx
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
	movq	-56(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -648(%rbp)        # 8-byte Spill
	jmp	.LBB26_267
.LBB26_266:                             # %cond.false.1517
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -648(%rbp)        # 8-byte Spill
.LBB26_267:                             # %cond.end.1521
	movq	-648(%rbp), %rax        # 8-byte Reload
	movl	$4, %ecx
	movl	%ecx, %edx
	movq	%rdx, -656(%rbp)        # 8-byte Spill
	cqto
	movq	-656(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-640(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB26_275
	jmp	.LBB26_272
.LBB26_268:                             # %cond.false.1526
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_270
# BB#269:                               # %cond.true.1532
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -664(%rbp)        # 8-byte Spill
	jmp	.LBB26_271
.LBB26_270:                             # %cond.false.1540
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -664(%rbp)        # 8-byte Spill
.LBB26_271:                             # %cond.end.1544
	movq	-664(%rbp), %rax        # 8-byte Reload
	movl	$4, %ecx
	movl	%ecx, %edx
	movq	%rdx, -672(%rbp)        # 8-byte Spill
	cqto
	movq	-672(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-56(%rbp), %rax
	jl	.LBB26_275
.LBB26_272:                             # %lor.lhs.false.1549
	movq	-56(%rbp), %rax
	shlq	$2, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_274
# BB#273:                               # %land.lhs.true.1555
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-56(%rbp), %rcx
	shlq	$2, %rcx
	cmpq	%rax, %rcx
	jl	.LBB26_275
.LBB26_274:                             # %lor.lhs.false.1559
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-56(%rbp), %rcx
	shlq	$2, %rcx
	cmpq	%rcx, %rax
	jge	.LBB26_279
.LBB26_275:                             # %cond.true.1563
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-56(%rbp), %rcx
	shlq	$2, %rcx
	cmpq	%rax, %rcx
	ja	.LBB26_277
# BB#276:                               # %cond.true.1567
	movq	-56(%rbp), %rax
	shlq	$2, %rax
	movq	%rax, -680(%rbp)        # 8-byte Spill
	jmp	.LBB26_278
.LBB26_277:                             # %cond.false.1569
	movq	-56(%rbp), %rax
	shlq	$2, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -680(%rbp)        # 8-byte Spill
.LBB26_278:                             # %cond.end.1573
	movq	-680(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -128(%rbp)
	testb	$1, %cl
	jne	.LBB26_401
	jmp	.LBB26_402
.LBB26_279:                             # %cond.false.1575
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-56(%rbp), %rcx
	shlq	$2, %rcx
	cmpq	%rax, %rcx
	ja	.LBB26_281
# BB#280:                               # %cond.true.1579
	movq	-56(%rbp), %rax
	shlq	$2, %rax
	movq	%rax, -688(%rbp)        # 8-byte Spill
	jmp	.LBB26_282
.LBB26_281:                             # %cond.false.1581
	movq	-56(%rbp), %rax
	shlq	$2, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -688(%rbp)        # 8-byte Spill
.LBB26_282:                             # %cond.end.1585
	movq	-688(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -128(%rbp)
	testb	$1, %dl
	jne	.LBB26_401
	jmp	.LBB26_402
.LBB26_283:                             # %cond.false.1587
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_285
# BB#284:                               # %cond.true.1593
	xorl	%eax, %eax
	movq	-56(%rbp), %rcx
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
	movq	-56(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -696(%rbp)        # 8-byte Spill
	jmp	.LBB26_286
.LBB26_285:                             # %cond.false.1610
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -696(%rbp)        # 8-byte Spill
.LBB26_286:                             # %cond.end.1614
	movq	-696(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB26_288
# BB#287:                               # %land.lhs.true.1618
	cmpq	$0, -56(%rbp)
	jl	.LBB26_314
.LBB26_288:                             # %lor.lhs.false.1621
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_289
	jmp	.LBB26_300
.LBB26_289:                             # %cond.true.1622
	cmpq	$0, -56(%rbp)
	jge	.LBB26_294
# BB#290:                               # %cond.true.1625
	movq	-56(%rbp), %rax
	movq	-56(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -704(%rbp)        # 8-byte Spill
	jge	.LBB26_292
# BB#291:                               # %cond.true.1631
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -712(%rbp)        # 8-byte Spill
	jmp	.LBB26_293
.LBB26_292:                             # %cond.false.1639
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -712(%rbp)        # 8-byte Spill
.LBB26_293:                             # %cond.end.1643
	movq	-712(%rbp), %rax        # 8-byte Reload
	movl	$4, %ecx
	movl	%ecx, %edx
	movq	%rdx, -720(%rbp)        # 8-byte Spill
	cqto
	movq	-720(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-704(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB26_314
	jmp	.LBB26_311
.LBB26_294:                             # %cond.false.1648
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_295
	jmp	.LBB26_296
.LBB26_295:                             # %cond.true.1649
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_314
	jmp	.LBB26_311
.LBB26_296:                             # %cond.false.1650
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_298
# BB#297:                               # %cond.true.1656
	xorl	%eax, %eax
	movq	-56(%rbp), %rcx
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
	movq	-56(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -728(%rbp)        # 8-byte Spill
	jmp	.LBB26_299
.LBB26_298:                             # %cond.false.1673
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -728(%rbp)        # 8-byte Spill
.LBB26_299:                             # %cond.end.1677
	movq	-728(%rbp), %rax        # 8-byte Reload
	movl	$4, %ecx
	movl	%ecx, %edx
	movq	%rdx, -736(%rbp)        # 8-byte Spill
	cqto
	movq	-736(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-56(%rbp), %rax
	jl	.LBB26_314
	jmp	.LBB26_311
.LBB26_300:                             # %cond.false.1682
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_301
	jmp	.LBB26_302
.LBB26_301:                             # %cond.true.1683
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_314
	jmp	.LBB26_311
.LBB26_302:                             # %cond.false.1684
	cmpq	$0, -56(%rbp)
	jge	.LBB26_307
# BB#303:                               # %cond.true.1687
	movq	-56(%rbp), %rax
	movq	-56(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -744(%rbp)        # 8-byte Spill
	jge	.LBB26_305
# BB#304:                               # %cond.true.1693
	xorl	%eax, %eax
	movq	-56(%rbp), %rcx
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
	movq	-56(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -752(%rbp)        # 8-byte Spill
	jmp	.LBB26_306
.LBB26_305:                             # %cond.false.1710
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -752(%rbp)        # 8-byte Spill
.LBB26_306:                             # %cond.end.1714
	movq	-752(%rbp), %rax        # 8-byte Reload
	movl	$4, %ecx
	movl	%ecx, %edx
	movq	%rdx, -760(%rbp)        # 8-byte Spill
	cqto
	movq	-760(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-744(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB26_314
	jmp	.LBB26_311
.LBB26_307:                             # %cond.false.1719
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_309
# BB#308:                               # %cond.true.1725
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -768(%rbp)        # 8-byte Spill
	jmp	.LBB26_310
.LBB26_309:                             # %cond.false.1733
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -768(%rbp)        # 8-byte Spill
.LBB26_310:                             # %cond.end.1737
	movq	-768(%rbp), %rax        # 8-byte Reload
	movl	$4, %ecx
	movl	%ecx, %edx
	movq	%rdx, -776(%rbp)        # 8-byte Spill
	cqto
	movq	-776(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-56(%rbp), %rax
	jl	.LBB26_314
.LBB26_311:                             # %lor.lhs.false.1742
	movq	-56(%rbp), %rax
	shlq	$2, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_313
# BB#312:                               # %land.lhs.true.1748
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-56(%rbp), %rcx
	shlq	$2, %rcx
	cmpq	%rax, %rcx
	jl	.LBB26_314
.LBB26_313:                             # %lor.lhs.false.1752
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-56(%rbp), %rcx
	shlq	$2, %rcx
	cmpq	%rcx, %rax
	jge	.LBB26_318
.LBB26_314:                             # %cond.true.1756
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-56(%rbp), %rcx
	shlq	$2, %rcx
	cmpq	%rax, %rcx
	ja	.LBB26_316
# BB#315:                               # %cond.true.1760
	movq	-56(%rbp), %rax
	shlq	$2, %rax
	movq	%rax, -784(%rbp)        # 8-byte Spill
	jmp	.LBB26_317
.LBB26_316:                             # %cond.false.1762
	movq	-56(%rbp), %rax
	shlq	$2, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -784(%rbp)        # 8-byte Spill
.LBB26_317:                             # %cond.end.1766
	movq	-784(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -128(%rbp)
	testb	$1, %cl
	jne	.LBB26_401
	jmp	.LBB26_402
.LBB26_318:                             # %cond.false.1768
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-56(%rbp), %rcx
	shlq	$2, %rcx
	cmpq	%rax, %rcx
	ja	.LBB26_320
# BB#319:                               # %cond.true.1772
	movq	-56(%rbp), %rax
	shlq	$2, %rax
	movq	%rax, -792(%rbp)        # 8-byte Spill
	jmp	.LBB26_321
.LBB26_320:                             # %cond.false.1774
	movq	-56(%rbp), %rax
	shlq	$2, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -792(%rbp)        # 8-byte Spill
.LBB26_321:                             # %cond.end.1778
	movq	-792(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -128(%rbp)
	testb	$1, %dl
	jne	.LBB26_401
	jmp	.LBB26_402
.LBB26_322:                             # %cond.false.1780
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_323
	jmp	.LBB26_362
.LBB26_323:                             # %cond.true.1781
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_325
# BB#324:                               # %cond.true.1787
	xorl	%eax, %eax
	movq	-56(%rbp), %rcx
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
	movq	-56(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -800(%rbp)        # 8-byte Spill
	jmp	.LBB26_326
.LBB26_325:                             # %cond.false.1804
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -800(%rbp)        # 8-byte Spill
.LBB26_326:                             # %cond.end.1808
	movq	-800(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB26_328
# BB#327:                               # %land.lhs.true.1812
	cmpq	$0, -56(%rbp)
	jl	.LBB26_354
.LBB26_328:                             # %lor.lhs.false.1815
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_329
	jmp	.LBB26_340
.LBB26_329:                             # %cond.true.1816
	cmpq	$0, -56(%rbp)
	jge	.LBB26_334
# BB#330:                               # %cond.true.1819
	movq	-56(%rbp), %rax
	movq	-56(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -808(%rbp)        # 8-byte Spill
	jge	.LBB26_332
# BB#331:                               # %cond.true.1825
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -816(%rbp)        # 8-byte Spill
	jmp	.LBB26_333
.LBB26_332:                             # %cond.false.1833
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -816(%rbp)        # 8-byte Spill
.LBB26_333:                             # %cond.end.1837
	movq	-816(%rbp), %rax        # 8-byte Reload
	movl	$4, %ecx
	movl	%ecx, %edx
	movq	%rdx, -824(%rbp)        # 8-byte Spill
	cqto
	movq	-824(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-808(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB26_354
	jmp	.LBB26_351
.LBB26_334:                             # %cond.false.1842
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_335
	jmp	.LBB26_336
.LBB26_335:                             # %cond.true.1843
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_354
	jmp	.LBB26_351
.LBB26_336:                             # %cond.false.1844
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_338
# BB#337:                               # %cond.true.1850
	xorl	%eax, %eax
	movq	-56(%rbp), %rcx
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
	movq	-56(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -832(%rbp)        # 8-byte Spill
	jmp	.LBB26_339
.LBB26_338:                             # %cond.false.1867
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -832(%rbp)        # 8-byte Spill
.LBB26_339:                             # %cond.end.1871
	movq	-832(%rbp), %rax        # 8-byte Reload
	movl	$4, %ecx
	movl	%ecx, %edx
	movq	%rdx, -840(%rbp)        # 8-byte Spill
	cqto
	movq	-840(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-56(%rbp), %rax
	jl	.LBB26_354
	jmp	.LBB26_351
.LBB26_340:                             # %cond.false.1876
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_341
	jmp	.LBB26_342
.LBB26_341:                             # %cond.true.1877
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_354
	jmp	.LBB26_351
.LBB26_342:                             # %cond.false.1878
	cmpq	$0, -56(%rbp)
	jge	.LBB26_347
# BB#343:                               # %cond.true.1881
	movq	-56(%rbp), %rax
	movq	-56(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -848(%rbp)        # 8-byte Spill
	jge	.LBB26_345
# BB#344:                               # %cond.true.1887
	xorl	%eax, %eax
	movq	-56(%rbp), %rcx
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
	movq	-56(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -856(%rbp)        # 8-byte Spill
	jmp	.LBB26_346
.LBB26_345:                             # %cond.false.1904
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -856(%rbp)        # 8-byte Spill
.LBB26_346:                             # %cond.end.1908
	movq	-856(%rbp), %rax        # 8-byte Reload
	movl	$4, %ecx
	movl	%ecx, %edx
	movq	%rdx, -864(%rbp)        # 8-byte Spill
	cqto
	movq	-864(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-848(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB26_354
	jmp	.LBB26_351
.LBB26_347:                             # %cond.false.1913
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_349
# BB#348:                               # %cond.true.1919
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -872(%rbp)        # 8-byte Spill
	jmp	.LBB26_350
.LBB26_349:                             # %cond.false.1927
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -872(%rbp)        # 8-byte Spill
.LBB26_350:                             # %cond.end.1931
	movq	-872(%rbp), %rax        # 8-byte Reload
	movl	$4, %ecx
	movl	%ecx, %edx
	movq	%rdx, -880(%rbp)        # 8-byte Spill
	cqto
	movq	-880(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-56(%rbp), %rax
	jl	.LBB26_354
.LBB26_351:                             # %lor.lhs.false.1936
	movq	-56(%rbp), %rax
	shlq	$2, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_353
# BB#352:                               # %land.lhs.true.1942
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-56(%rbp), %rcx
	shlq	$2, %rcx
	cmpq	%rax, %rcx
	jl	.LBB26_354
.LBB26_353:                             # %lor.lhs.false.1946
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-56(%rbp), %rcx
	shlq	$2, %rcx
	cmpq	%rcx, %rax
	jge	.LBB26_358
.LBB26_354:                             # %cond.true.1950
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-56(%rbp), %rcx
	shlq	$2, %rcx
	cmpq	%rax, %rcx
	ja	.LBB26_356
# BB#355:                               # %cond.true.1954
	movq	-56(%rbp), %rax
	shlq	$2, %rax
	movq	%rax, -888(%rbp)        # 8-byte Spill
	jmp	.LBB26_357
.LBB26_356:                             # %cond.false.1956
	movq	-56(%rbp), %rax
	shlq	$2, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -888(%rbp)        # 8-byte Spill
.LBB26_357:                             # %cond.end.1960
	movq	-888(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -128(%rbp)
	testb	$1, %cl
	jne	.LBB26_401
	jmp	.LBB26_402
.LBB26_358:                             # %cond.false.1962
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-56(%rbp), %rcx
	shlq	$2, %rcx
	cmpq	%rax, %rcx
	ja	.LBB26_360
# BB#359:                               # %cond.true.1966
	movq	-56(%rbp), %rax
	shlq	$2, %rax
	movq	%rax, -896(%rbp)        # 8-byte Spill
	jmp	.LBB26_361
.LBB26_360:                             # %cond.false.1968
	movq	-56(%rbp), %rax
	shlq	$2, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -896(%rbp)        # 8-byte Spill
.LBB26_361:                             # %cond.end.1972
	movq	-896(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -128(%rbp)
	testb	$1, %dl
	jne	.LBB26_401
	jmp	.LBB26_402
.LBB26_362:                             # %cond.false.1974
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_364
# BB#363:                               # %cond.true.1980
	xorl	%eax, %eax
	movq	-56(%rbp), %rcx
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
	movq	-56(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -904(%rbp)        # 8-byte Spill
	jmp	.LBB26_365
.LBB26_364:                             # %cond.false.1997
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -904(%rbp)        # 8-byte Spill
.LBB26_365:                             # %cond.end.2001
	movq	-904(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB26_367
# BB#366:                               # %land.lhs.true.2005
	cmpq	$0, -56(%rbp)
	jl	.LBB26_393
.LBB26_367:                             # %lor.lhs.false.2008
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_368
	jmp	.LBB26_379
.LBB26_368:                             # %cond.true.2009
	cmpq	$0, -56(%rbp)
	jge	.LBB26_373
# BB#369:                               # %cond.true.2012
	movq	-56(%rbp), %rax
	movq	-56(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -912(%rbp)        # 8-byte Spill
	jge	.LBB26_371
# BB#370:                               # %cond.true.2018
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -920(%rbp)        # 8-byte Spill
	jmp	.LBB26_372
.LBB26_371:                             # %cond.false.2026
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -920(%rbp)        # 8-byte Spill
.LBB26_372:                             # %cond.end.2030
	movq	-920(%rbp), %rax        # 8-byte Reload
	movl	$4, %ecx
	movl	%ecx, %edx
	movq	%rdx, -928(%rbp)        # 8-byte Spill
	cqto
	movq	-928(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-912(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB26_393
	jmp	.LBB26_390
.LBB26_373:                             # %cond.false.2035
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_374
	jmp	.LBB26_375
.LBB26_374:                             # %cond.true.2036
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_393
	jmp	.LBB26_390
.LBB26_375:                             # %cond.false.2037
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_377
# BB#376:                               # %cond.true.2043
	xorl	%eax, %eax
	movq	-56(%rbp), %rcx
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
	movq	-56(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -936(%rbp)        # 8-byte Spill
	jmp	.LBB26_378
.LBB26_377:                             # %cond.false.2060
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -936(%rbp)        # 8-byte Spill
.LBB26_378:                             # %cond.end.2064
	movq	-936(%rbp), %rax        # 8-byte Reload
	movl	$4, %ecx
	movl	%ecx, %edx
	movq	%rdx, -944(%rbp)        # 8-byte Spill
	cqto
	movq	-944(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-56(%rbp), %rax
	jl	.LBB26_393
	jmp	.LBB26_390
.LBB26_379:                             # %cond.false.2069
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_380
	jmp	.LBB26_381
.LBB26_380:                             # %cond.true.2070
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_393
	jmp	.LBB26_390
.LBB26_381:                             # %cond.false.2071
	cmpq	$0, -56(%rbp)
	jge	.LBB26_386
# BB#382:                               # %cond.true.2074
	movq	-56(%rbp), %rax
	movq	-56(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -952(%rbp)        # 8-byte Spill
	jge	.LBB26_384
# BB#383:                               # %cond.true.2080
	xorl	%eax, %eax
	movq	-56(%rbp), %rcx
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
	movq	-56(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -960(%rbp)        # 8-byte Spill
	jmp	.LBB26_385
.LBB26_384:                             # %cond.false.2097
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
.LBB26_385:                             # %cond.end.2101
	movq	-960(%rbp), %rax        # 8-byte Reload
	movl	$4, %ecx
	movl	%ecx, %edx
	movq	%rdx, -968(%rbp)        # 8-byte Spill
	cqto
	movq	-968(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-952(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB26_393
	jmp	.LBB26_390
.LBB26_386:                             # %cond.false.2106
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_388
# BB#387:                               # %cond.true.2112
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -976(%rbp)        # 8-byte Spill
	jmp	.LBB26_389
.LBB26_388:                             # %cond.false.2120
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -976(%rbp)        # 8-byte Spill
.LBB26_389:                             # %cond.end.2124
	movq	-976(%rbp), %rax        # 8-byte Reload
	movl	$4, %ecx
	movl	%ecx, %edx
	movq	%rdx, -984(%rbp)        # 8-byte Spill
	cqto
	movq	-984(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-56(%rbp), %rax
	jl	.LBB26_393
.LBB26_390:                             # %lor.lhs.false.2129
	movq	-56(%rbp), %rax
	shlq	$2, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_392
# BB#391:                               # %land.lhs.true.2135
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-56(%rbp), %rcx
	shlq	$2, %rcx
	cmpq	%rax, %rcx
	jl	.LBB26_393
.LBB26_392:                             # %lor.lhs.false.2139
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-56(%rbp), %rcx
	shlq	$2, %rcx
	cmpq	%rcx, %rax
	jge	.LBB26_397
.LBB26_393:                             # %cond.true.2143
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-56(%rbp), %rcx
	shlq	$2, %rcx
	cmpq	%rax, %rcx
	ja	.LBB26_395
# BB#394:                               # %cond.true.2147
	movq	-56(%rbp), %rax
	shlq	$2, %rax
	movq	%rax, -992(%rbp)        # 8-byte Spill
	jmp	.LBB26_396
.LBB26_395:                             # %cond.false.2149
	movq	-56(%rbp), %rax
	shlq	$2, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -992(%rbp)        # 8-byte Spill
.LBB26_396:                             # %cond.end.2153
	movq	-992(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -128(%rbp)
	testb	$1, %cl
	jne	.LBB26_401
	jmp	.LBB26_402
.LBB26_397:                             # %cond.false.2155
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-56(%rbp), %rcx
	shlq	$2, %rcx
	cmpq	%rax, %rcx
	ja	.LBB26_399
# BB#398:                               # %cond.true.2159
	movq	-56(%rbp), %rax
	shlq	$2, %rax
	movq	%rax, -1000(%rbp)       # 8-byte Spill
	jmp	.LBB26_400
.LBB26_399:                             # %cond.false.2161
	movq	-56(%rbp), %rax
	shlq	$2, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1000(%rbp)       # 8-byte Spill
.LBB26_400:                             # %cond.end.2165
	movq	-1000(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -128(%rbp)
	testb	$1, %dl
	jne	.LBB26_401
	jmp	.LBB26_402
.LBB26_401:                             # %if.then.2167
	movq	$-1, %rdi
	callq	memory_full
.LBB26_402:                             # %if.end.2168
	jmp	.LBB26_403
.LBB26_403:                             # %do.body
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_404
	jmp	.LBB26_483
.LBB26_404:                             # %cond.true.2169
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_405
	jmp	.LBB26_444
.LBB26_405:                             # %cond.true.2170
	movq	-128(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB26_407
# BB#406:                               # %cond.true.2178
	xorl	%eax, %eax
	movq	-128(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-128(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -1004(%rbp)       # 4-byte Spill
	jmp	.LBB26_408
.LBB26_407:                             # %cond.false.2198
	movq	-128(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -1004(%rbp)       # 4-byte Spill
.LBB26_408:                             # %cond.end.2204
	movl	-1004(%rbp), %eax       # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB26_410
# BB#409:                               # %land.lhs.true.2208
	movq	-128(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jl	.LBB26_436
.LBB26_410:                             # %lor.lhs.false.2213
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_411
	jmp	.LBB26_422
.LBB26_411:                             # %cond.true.2214
	movq	-128(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB26_416
# BB#412:                               # %cond.true.2219
	movq	-128(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-128(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -1008(%rbp)       # 4-byte Spill
	jge	.LBB26_414
# BB#413:                               # %cond.true.2229
	movq	-128(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -1012(%rbp)       # 4-byte Spill
	jmp	.LBB26_415
.LBB26_414:                             # %cond.false.2239
	movq	-128(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -1012(%rbp)       # 4-byte Spill
.LBB26_415:                             # %cond.end.2245
	movl	-1012(%rbp), %eax       # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-1008(%rbp), %ecx       # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB26_436
	jmp	.LBB26_433
.LBB26_416:                             # %cond.false.2250
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_417
	jmp	.LBB26_418
.LBB26_417:                             # %cond.true.2251
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_436
	jmp	.LBB26_433
.LBB26_418:                             # %cond.false.2252
	movq	-128(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB26_420
# BB#419:                               # %cond.true.2260
	xorl	%eax, %eax
	movq	-128(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-128(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -1016(%rbp)       # 4-byte Spill
	jmp	.LBB26_421
.LBB26_420:                             # %cond.false.2280
	movq	-128(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -1016(%rbp)       # 4-byte Spill
.LBB26_421:                             # %cond.end.2286
	movl	-1016(%rbp), %eax       # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-128(%rbp), %rsi
	movb	%sil, %dil
	movsbl	%dil, %ecx
	cmpl	%ecx, %eax
	jl	.LBB26_436
	jmp	.LBB26_433
.LBB26_422:                             # %cond.false.2293
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_423
	jmp	.LBB26_424
.LBB26_423:                             # %cond.true.2294
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_436
	jmp	.LBB26_433
.LBB26_424:                             # %cond.false.2295
	movq	-128(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB26_429
# BB#425:                               # %cond.true.2300
	movq	-128(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-128(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -1020(%rbp)       # 4-byte Spill
	jge	.LBB26_427
# BB#426:                               # %cond.true.2310
	xorl	%eax, %eax
	movq	-128(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-128(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -1024(%rbp)       # 4-byte Spill
	jmp	.LBB26_428
.LBB26_427:                             # %cond.false.2330
	movq	-128(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -1024(%rbp)       # 4-byte Spill
.LBB26_428:                             # %cond.end.2336
	movl	-1024(%rbp), %eax       # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-1020(%rbp), %ecx       # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB26_436
	jmp	.LBB26_433
.LBB26_429:                             # %cond.false.2341
	movq	-128(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB26_431
# BB#430:                               # %cond.true.2349
	movq	-128(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -1028(%rbp)       # 4-byte Spill
	jmp	.LBB26_432
.LBB26_431:                             # %cond.false.2359
	movq	-128(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -1028(%rbp)       # 4-byte Spill
.LBB26_432:                             # %cond.end.2365
	movl	-1028(%rbp), %eax       # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-128(%rbp), %rsi
	movb	%sil, %dil
	movsbl	%dil, %ecx
	cmpl	%ecx, %eax
	jl	.LBB26_436
.LBB26_433:                             # %lor.lhs.false.2372
	movq	-128(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	shll	$3, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB26_435
# BB#434:                               # %land.lhs.true.2380
	movq	-128(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	shll	$3, %edx
	cmpl	$-128, %edx
	jl	.LBB26_436
.LBB26_435:                             # %lor.lhs.false.2386
	movl	$127, %eax
	movq	-128(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	shll	$3, %esi
	cmpl	%esi, %eax
	jge	.LBB26_440
.LBB26_436:                             # %cond.true.2392
	movq	-128(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB26_438
# BB#437:                               # %cond.true.2398
	movq	-128(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -1032(%rbp)       # 4-byte Spill
	jmp	.LBB26_439
.LBB26_438:                             # %cond.false.2404
	movq	-128(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -1032(%rbp)       # 4-byte Spill
.LBB26_439:                             # %cond.end.2412
	movl	-1032(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -136(%rbp)
	testb	$1, %cl
	jne	.LBB26_803
	jmp	.LBB26_802
.LBB26_440:                             # %cond.false.2415
	movq	-128(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB26_442
# BB#441:                               # %cond.true.2421
	movq	-128(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -1036(%rbp)       # 4-byte Spill
	jmp	.LBB26_443
.LBB26_442:                             # %cond.false.2427
	movq	-128(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -1036(%rbp)       # 4-byte Spill
.LBB26_443:                             # %cond.end.2435
	movl	-1036(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -136(%rbp)
	testb	$1, %dl
	jne	.LBB26_803
	jmp	.LBB26_802
.LBB26_444:                             # %cond.false.2438
	movq	-128(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_446
# BB#445:                               # %cond.true.2444
	xorl	%eax, %eax
	movq	-128(%rbp), %rcx
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
	movq	-128(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1048(%rbp)       # 8-byte Spill
	jmp	.LBB26_447
.LBB26_446:                             # %cond.false.2461
	movq	-128(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1048(%rbp)       # 8-byte Spill
.LBB26_447:                             # %cond.end.2465
	movq	-1048(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB26_449
# BB#448:                               # %land.lhs.true.2469
	cmpq	$0, -128(%rbp)
	jl	.LBB26_475
.LBB26_449:                             # %lor.lhs.false.2472
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_450
	jmp	.LBB26_461
.LBB26_450:                             # %cond.true.2473
	cmpq	$0, -128(%rbp)
	jge	.LBB26_455
# BB#451:                               # %cond.true.2476
	movq	-128(%rbp), %rax
	movq	-128(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1056(%rbp)       # 8-byte Spill
	jge	.LBB26_453
# BB#452:                               # %cond.true.2482
	movq	-128(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1064(%rbp)       # 8-byte Spill
	jmp	.LBB26_454
.LBB26_453:                             # %cond.false.2490
	movq	-128(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1064(%rbp)       # 8-byte Spill
.LBB26_454:                             # %cond.end.2494
	movq	-1064(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1072(%rbp)       # 8-byte Spill
	cqto
	movq	-1072(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1056(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB26_475
	jmp	.LBB26_472
.LBB26_455:                             # %cond.false.2499
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_456
	jmp	.LBB26_457
.LBB26_456:                             # %cond.true.2500
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_475
	jmp	.LBB26_472
.LBB26_457:                             # %cond.false.2501
	movq	-128(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_459
# BB#458:                               # %cond.true.2507
	xorl	%eax, %eax
	movq	-128(%rbp), %rcx
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
	movq	-128(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1080(%rbp)       # 8-byte Spill
	jmp	.LBB26_460
.LBB26_459:                             # %cond.false.2524
	movq	-128(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1080(%rbp)       # 8-byte Spill
.LBB26_460:                             # %cond.end.2528
	movq	-1080(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1088(%rbp)       # 8-byte Spill
	cqto
	movq	-1088(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-128(%rbp), %rax
	jl	.LBB26_475
	jmp	.LBB26_472
.LBB26_461:                             # %cond.false.2533
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_462
	jmp	.LBB26_463
.LBB26_462:                             # %cond.true.2534
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_475
	jmp	.LBB26_472
.LBB26_463:                             # %cond.false.2535
	cmpq	$0, -128(%rbp)
	jge	.LBB26_468
# BB#464:                               # %cond.true.2538
	movq	-128(%rbp), %rax
	movq	-128(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1096(%rbp)       # 8-byte Spill
	jge	.LBB26_466
# BB#465:                               # %cond.true.2544
	xorl	%eax, %eax
	movq	-128(%rbp), %rcx
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
	movq	-128(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1104(%rbp)       # 8-byte Spill
	jmp	.LBB26_467
.LBB26_466:                             # %cond.false.2561
	movq	-128(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1104(%rbp)       # 8-byte Spill
.LBB26_467:                             # %cond.end.2565
	movq	-1104(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1112(%rbp)       # 8-byte Spill
	cqto
	movq	-1112(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1096(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB26_475
	jmp	.LBB26_472
.LBB26_468:                             # %cond.false.2570
	movq	-128(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_470
# BB#469:                               # %cond.true.2576
	movq	-128(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1120(%rbp)       # 8-byte Spill
	jmp	.LBB26_471
.LBB26_470:                             # %cond.false.2584
	movq	-128(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1120(%rbp)       # 8-byte Spill
.LBB26_471:                             # %cond.end.2588
	movq	-1120(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1128(%rbp)       # 8-byte Spill
	cqto
	movq	-1128(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-128(%rbp), %rax
	jl	.LBB26_475
.LBB26_472:                             # %lor.lhs.false.2593
	movq	-128(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_474
# BB#473:                               # %land.lhs.true.2599
	movq	-128(%rbp), %rax
	shlq	$3, %rax
	cmpq	$-128, %rax
	jl	.LBB26_475
.LBB26_474:                             # %lor.lhs.false.2603
	movl	$127, %eax
	movl	%eax, %ecx
	movq	-128(%rbp), %rdx
	shlq	$3, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB26_479
.LBB26_475:                             # %cond.true.2607
	movq	-128(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB26_477
# BB#476:                               # %cond.true.2613
	movq	-128(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -1132(%rbp)       # 4-byte Spill
	jmp	.LBB26_478
.LBB26_477:                             # %cond.false.2619
	movq	-128(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -1132(%rbp)       # 4-byte Spill
.LBB26_478:                             # %cond.end.2627
	movl	-1132(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -136(%rbp)
	testb	$1, %cl
	jne	.LBB26_803
	jmp	.LBB26_802
.LBB26_479:                             # %cond.false.2630
	movq	-128(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB26_481
# BB#480:                               # %cond.true.2636
	movq	-128(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -1136(%rbp)       # 4-byte Spill
	jmp	.LBB26_482
.LBB26_481:                             # %cond.false.2642
	movq	-128(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -1136(%rbp)       # 4-byte Spill
.LBB26_482:                             # %cond.end.2650
	movl	-1136(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -136(%rbp)
	testb	$1, %dl
	jne	.LBB26_803
	jmp	.LBB26_802
.LBB26_483:                             # %cond.false.2653
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_484
	jmp	.LBB26_563
.LBB26_484:                             # %cond.true.2654
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_485
	jmp	.LBB26_524
.LBB26_485:                             # %cond.true.2655
	movq	-128(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB26_487
# BB#486:                               # %cond.true.2663
	xorl	%eax, %eax
	movq	-128(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %esi
	subl	%esi, %eax
	movq	-128(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -1140(%rbp)       # 4-byte Spill
	jmp	.LBB26_488
.LBB26_487:                             # %cond.false.2683
	movq	-128(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -1140(%rbp)       # 4-byte Spill
.LBB26_488:                             # %cond.end.2689
	movl	-1140(%rbp), %eax       # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB26_490
# BB#489:                               # %land.lhs.true.2693
	movq	-128(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jl	.LBB26_516
.LBB26_490:                             # %lor.lhs.false.2698
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_491
	jmp	.LBB26_502
.LBB26_491:                             # %cond.true.2699
	movq	-128(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB26_496
# BB#492:                               # %cond.true.2704
	movq	-128(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-128(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -1144(%rbp)       # 4-byte Spill
	jge	.LBB26_494
# BB#493:                               # %cond.true.2714
	movq	-128(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -1148(%rbp)       # 4-byte Spill
	jmp	.LBB26_495
.LBB26_494:                             # %cond.false.2724
	movq	-128(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -1148(%rbp)       # 4-byte Spill
.LBB26_495:                             # %cond.end.2730
	movl	-1148(%rbp), %eax       # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-1144(%rbp), %ecx       # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB26_516
	jmp	.LBB26_513
.LBB26_496:                             # %cond.false.2735
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_497
	jmp	.LBB26_498
.LBB26_497:                             # %cond.true.2736
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_516
	jmp	.LBB26_513
.LBB26_498:                             # %cond.false.2737
	movq	-128(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB26_500
# BB#499:                               # %cond.true.2745
	xorl	%eax, %eax
	movq	-128(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %esi
	subl	%esi, %eax
	movq	-128(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -1152(%rbp)       # 4-byte Spill
	jmp	.LBB26_501
.LBB26_500:                             # %cond.false.2765
	movq	-128(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -1152(%rbp)       # 4-byte Spill
.LBB26_501:                             # %cond.end.2771
	movl	-1152(%rbp), %eax       # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-128(%rbp), %rsi
	movw	%si, %di
	movswl	%di, %ecx
	cmpl	%ecx, %eax
	jl	.LBB26_516
	jmp	.LBB26_513
.LBB26_502:                             # %cond.false.2778
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_503
	jmp	.LBB26_504
.LBB26_503:                             # %cond.true.2779
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_516
	jmp	.LBB26_513
.LBB26_504:                             # %cond.false.2780
	movq	-128(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB26_509
# BB#505:                               # %cond.true.2785
	movq	-128(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-128(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -1156(%rbp)       # 4-byte Spill
	jge	.LBB26_507
# BB#506:                               # %cond.true.2795
	xorl	%eax, %eax
	movq	-128(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %esi
	subl	%esi, %eax
	movq	-128(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -1160(%rbp)       # 4-byte Spill
	jmp	.LBB26_508
.LBB26_507:                             # %cond.false.2815
	movq	-128(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -1160(%rbp)       # 4-byte Spill
.LBB26_508:                             # %cond.end.2821
	movl	-1160(%rbp), %eax       # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-1156(%rbp), %ecx       # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB26_516
	jmp	.LBB26_513
.LBB26_509:                             # %cond.false.2826
	movq	-128(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB26_511
# BB#510:                               # %cond.true.2834
	movq	-128(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -1164(%rbp)       # 4-byte Spill
	jmp	.LBB26_512
.LBB26_511:                             # %cond.false.2844
	movq	-128(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -1164(%rbp)       # 4-byte Spill
.LBB26_512:                             # %cond.end.2850
	movl	-1164(%rbp), %eax       # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-128(%rbp), %rsi
	movw	%si, %di
	movswl	%di, %ecx
	cmpl	%ecx, %eax
	jl	.LBB26_516
.LBB26_513:                             # %lor.lhs.false.2857
	movq	-128(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	shll	$3, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB26_515
# BB#514:                               # %land.lhs.true.2865
	movq	-128(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	shll	$3, %edx
	cmpl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB26_516
.LBB26_515:                             # %lor.lhs.false.2871
	movl	$32767, %eax            # imm = 0x7FFF
	movq	-128(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	shll	$3, %esi
	cmpl	%esi, %eax
	jge	.LBB26_520
.LBB26_516:                             # %cond.true.2877
	movq	-128(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB26_518
# BB#517:                               # %cond.true.2883
	movq	-128(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -1168(%rbp)       # 4-byte Spill
	jmp	.LBB26_519
.LBB26_518:                             # %cond.false.2889
	movq	-128(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -1168(%rbp)       # 4-byte Spill
.LBB26_519:                             # %cond.end.2897
	movl	-1168(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -136(%rbp)
	testb	$1, %cl
	jne	.LBB26_803
	jmp	.LBB26_802
.LBB26_520:                             # %cond.false.2900
	movq	-128(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB26_522
# BB#521:                               # %cond.true.2906
	movq	-128(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -1172(%rbp)       # 4-byte Spill
	jmp	.LBB26_523
.LBB26_522:                             # %cond.false.2912
	movq	-128(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -1172(%rbp)       # 4-byte Spill
.LBB26_523:                             # %cond.end.2920
	movl	-1172(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -136(%rbp)
	testb	$1, %dl
	jne	.LBB26_803
	jmp	.LBB26_802
.LBB26_524:                             # %cond.false.2923
	movq	-128(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_526
# BB#525:                               # %cond.true.2929
	xorl	%eax, %eax
	movq	-128(%rbp), %rcx
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
	movq	-128(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1184(%rbp)       # 8-byte Spill
	jmp	.LBB26_527
.LBB26_526:                             # %cond.false.2946
	movq	-128(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1184(%rbp)       # 8-byte Spill
.LBB26_527:                             # %cond.end.2950
	movq	-1184(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB26_529
# BB#528:                               # %land.lhs.true.2954
	cmpq	$0, -128(%rbp)
	jl	.LBB26_555
.LBB26_529:                             # %lor.lhs.false.2957
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_530
	jmp	.LBB26_541
.LBB26_530:                             # %cond.true.2958
	cmpq	$0, -128(%rbp)
	jge	.LBB26_535
# BB#531:                               # %cond.true.2961
	movq	-128(%rbp), %rax
	movq	-128(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1192(%rbp)       # 8-byte Spill
	jge	.LBB26_533
# BB#532:                               # %cond.true.2967
	movq	-128(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1200(%rbp)       # 8-byte Spill
	jmp	.LBB26_534
.LBB26_533:                             # %cond.false.2975
	movq	-128(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1200(%rbp)       # 8-byte Spill
.LBB26_534:                             # %cond.end.2979
	movq	-1200(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1208(%rbp)       # 8-byte Spill
	cqto
	movq	-1208(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1192(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB26_555
	jmp	.LBB26_552
.LBB26_535:                             # %cond.false.2984
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_536
	jmp	.LBB26_537
.LBB26_536:                             # %cond.true.2985
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_555
	jmp	.LBB26_552
.LBB26_537:                             # %cond.false.2986
	movq	-128(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_539
# BB#538:                               # %cond.true.2992
	xorl	%eax, %eax
	movq	-128(%rbp), %rcx
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
	movq	-128(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1216(%rbp)       # 8-byte Spill
	jmp	.LBB26_540
.LBB26_539:                             # %cond.false.3009
	movq	-128(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1216(%rbp)       # 8-byte Spill
.LBB26_540:                             # %cond.end.3013
	movq	-1216(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1224(%rbp)       # 8-byte Spill
	cqto
	movq	-1224(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-128(%rbp), %rax
	jl	.LBB26_555
	jmp	.LBB26_552
.LBB26_541:                             # %cond.false.3018
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_542
	jmp	.LBB26_543
.LBB26_542:                             # %cond.true.3019
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_555
	jmp	.LBB26_552
.LBB26_543:                             # %cond.false.3020
	cmpq	$0, -128(%rbp)
	jge	.LBB26_548
# BB#544:                               # %cond.true.3023
	movq	-128(%rbp), %rax
	movq	-128(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1232(%rbp)       # 8-byte Spill
	jge	.LBB26_546
# BB#545:                               # %cond.true.3029
	xorl	%eax, %eax
	movq	-128(%rbp), %rcx
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
	movq	-128(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1240(%rbp)       # 8-byte Spill
	jmp	.LBB26_547
.LBB26_546:                             # %cond.false.3046
	movq	-128(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1240(%rbp)       # 8-byte Spill
.LBB26_547:                             # %cond.end.3050
	movq	-1240(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1248(%rbp)       # 8-byte Spill
	cqto
	movq	-1248(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1232(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB26_555
	jmp	.LBB26_552
.LBB26_548:                             # %cond.false.3055
	movq	-128(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_550
# BB#549:                               # %cond.true.3061
	movq	-128(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1256(%rbp)       # 8-byte Spill
	jmp	.LBB26_551
.LBB26_550:                             # %cond.false.3069
	movq	-128(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1256(%rbp)       # 8-byte Spill
.LBB26_551:                             # %cond.end.3073
	movq	-1256(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1264(%rbp)       # 8-byte Spill
	cqto
	movq	-1264(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-128(%rbp), %rax
	jl	.LBB26_555
.LBB26_552:                             # %lor.lhs.false.3078
	movq	-128(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_554
# BB#553:                               # %land.lhs.true.3084
	movq	-128(%rbp), %rax
	shlq	$3, %rax
	cmpq	$-32768, %rax           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB26_555
.LBB26_554:                             # %lor.lhs.false.3088
	movl	$32767, %eax            # imm = 0x7FFF
	movl	%eax, %ecx
	movq	-128(%rbp), %rdx
	shlq	$3, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB26_559
.LBB26_555:                             # %cond.true.3092
	movq	-128(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB26_557
# BB#556:                               # %cond.true.3098
	movq	-128(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -1268(%rbp)       # 4-byte Spill
	jmp	.LBB26_558
.LBB26_557:                             # %cond.false.3104
	movq	-128(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -1268(%rbp)       # 4-byte Spill
.LBB26_558:                             # %cond.end.3112
	movl	-1268(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -136(%rbp)
	testb	$1, %cl
	jne	.LBB26_803
	jmp	.LBB26_802
.LBB26_559:                             # %cond.false.3115
	movq	-128(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB26_561
# BB#560:                               # %cond.true.3121
	movq	-128(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -1272(%rbp)       # 4-byte Spill
	jmp	.LBB26_562
.LBB26_561:                             # %cond.false.3127
	movq	-128(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -1272(%rbp)       # 4-byte Spill
.LBB26_562:                             # %cond.end.3135
	movl	-1272(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -136(%rbp)
	testb	$1, %dl
	jne	.LBB26_803
	jmp	.LBB26_802
.LBB26_563:                             # %cond.false.3138
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_564
	jmp	.LBB26_643
.LBB26_564:                             # %cond.true.3139
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_565
	jmp	.LBB26_604
.LBB26_565:                             # %cond.true.3140
	movq	-128(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB26_567
# BB#566:                               # %cond.true.3147
	xorl	%eax, %eax
	movq	-128(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-128(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -1276(%rbp)       # 4-byte Spill
	jmp	.LBB26_568
.LBB26_567:                             # %cond.false.3165
	movq	-128(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -1276(%rbp)       # 4-byte Spill
.LBB26_568:                             # %cond.end.3170
	movl	-1276(%rbp), %eax       # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB26_570
# BB#569:                               # %land.lhs.true.3174
	movq	-128(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jl	.LBB26_596
.LBB26_570:                             # %lor.lhs.false.3178
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_571
	jmp	.LBB26_582
.LBB26_571:                             # %cond.true.3179
	movq	-128(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB26_576
# BB#572:                               # %cond.true.3183
	movq	-128(%rbp), %rax
	movl	%eax, %ecx
	movq	-128(%rbp), %rax
	movl	%eax, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -1280(%rbp)       # 4-byte Spill
	jge	.LBB26_574
# BB#573:                               # %cond.true.3191
	movq	-128(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -1284(%rbp)       # 4-byte Spill
	jmp	.LBB26_575
.LBB26_574:                             # %cond.false.3200
	movq	-128(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -1284(%rbp)       # 4-byte Spill
.LBB26_575:                             # %cond.end.3205
	movl	-1284(%rbp), %eax       # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-1280(%rbp), %ecx       # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB26_596
	jmp	.LBB26_593
.LBB26_576:                             # %cond.false.3210
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_577
	jmp	.LBB26_578
.LBB26_577:                             # %cond.true.3211
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_596
	jmp	.LBB26_593
.LBB26_578:                             # %cond.false.3212
	movq	-128(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB26_580
# BB#579:                               # %cond.true.3219
	xorl	%eax, %eax
	movq	-128(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-128(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -1288(%rbp)       # 4-byte Spill
	jmp	.LBB26_581
.LBB26_580:                             # %cond.false.3237
	movq	-128(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -1288(%rbp)       # 4-byte Spill
.LBB26_581:                             # %cond.end.3242
	movl	-1288(%rbp), %eax       # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-128(%rbp), %rsi
	movl	%esi, %ecx
	cmpl	%ecx, %eax
	jl	.LBB26_596
	jmp	.LBB26_593
.LBB26_582:                             # %cond.false.3248
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_583
	jmp	.LBB26_584
.LBB26_583:                             # %cond.true.3249
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_596
	jmp	.LBB26_593
.LBB26_584:                             # %cond.false.3250
	movq	-128(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB26_589
# BB#585:                               # %cond.true.3254
	movq	-128(%rbp), %rax
	movl	%eax, %ecx
	movq	-128(%rbp), %rax
	movl	%eax, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -1292(%rbp)       # 4-byte Spill
	jge	.LBB26_587
# BB#586:                               # %cond.true.3262
	xorl	%eax, %eax
	movq	-128(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-128(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -1296(%rbp)       # 4-byte Spill
	jmp	.LBB26_588
.LBB26_587:                             # %cond.false.3280
	movq	-128(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -1296(%rbp)       # 4-byte Spill
.LBB26_588:                             # %cond.end.3285
	movl	-1296(%rbp), %eax       # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-1292(%rbp), %ecx       # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB26_596
	jmp	.LBB26_593
.LBB26_589:                             # %cond.false.3290
	movq	-128(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB26_591
# BB#590:                               # %cond.true.3297
	movq	-128(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -1300(%rbp)       # 4-byte Spill
	jmp	.LBB26_592
.LBB26_591:                             # %cond.false.3306
	movq	-128(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -1300(%rbp)       # 4-byte Spill
.LBB26_592:                             # %cond.end.3311
	movl	-1300(%rbp), %eax       # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-128(%rbp), %rsi
	movl	%esi, %ecx
	cmpl	%ecx, %eax
	jl	.LBB26_596
.LBB26_593:                             # %lor.lhs.false.3317
	movq	-128(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB26_595
# BB#594:                               # %land.lhs.true.3324
	movq	-128(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	jl	.LBB26_596
.LBB26_595:                             # %lor.lhs.false.3329
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movq	-128(%rbp), %rcx
	movl	%ecx, %edx
	shll	$3, %edx
	cmpl	%edx, %eax
	jge	.LBB26_600
.LBB26_596:                             # %cond.true.3334
	movq	-128(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB26_598
# BB#597:                               # %cond.true.3339
	movq	-128(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -1304(%rbp)       # 4-byte Spill
	jmp	.LBB26_599
.LBB26_598:                             # %cond.false.3342
	movq	-128(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -1304(%rbp)       # 4-byte Spill
.LBB26_599:                             # %cond.end.3347
	movl	-1304(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -136(%rbp)
	testb	$1, %cl
	jne	.LBB26_803
	jmp	.LBB26_802
.LBB26_600:                             # %cond.false.3350
	movq	-128(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB26_602
# BB#601:                               # %cond.true.3355
	movq	-128(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -1308(%rbp)       # 4-byte Spill
	jmp	.LBB26_603
.LBB26_602:                             # %cond.false.3358
	movq	-128(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -1308(%rbp)       # 4-byte Spill
.LBB26_603:                             # %cond.end.3363
	movl	-1308(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -136(%rbp)
	testb	$1, %dl
	jne	.LBB26_803
	jmp	.LBB26_802
.LBB26_604:                             # %cond.false.3366
	movq	-128(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_606
# BB#605:                               # %cond.true.3372
	xorl	%eax, %eax
	movq	-128(%rbp), %rcx
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
	movq	-128(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1320(%rbp)       # 8-byte Spill
	jmp	.LBB26_607
.LBB26_606:                             # %cond.false.3389
	movq	-128(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1320(%rbp)       # 8-byte Spill
.LBB26_607:                             # %cond.end.3393
	movq	-1320(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB26_609
# BB#608:                               # %land.lhs.true.3397
	cmpq	$0, -128(%rbp)
	jl	.LBB26_635
.LBB26_609:                             # %lor.lhs.false.3400
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_610
	jmp	.LBB26_621
.LBB26_610:                             # %cond.true.3401
	cmpq	$0, -128(%rbp)
	jge	.LBB26_615
# BB#611:                               # %cond.true.3404
	movq	-128(%rbp), %rax
	movq	-128(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1328(%rbp)       # 8-byte Spill
	jge	.LBB26_613
# BB#612:                               # %cond.true.3410
	movq	-128(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1336(%rbp)       # 8-byte Spill
	jmp	.LBB26_614
.LBB26_613:                             # %cond.false.3418
	movq	-128(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1336(%rbp)       # 8-byte Spill
.LBB26_614:                             # %cond.end.3422
	movq	-1336(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1344(%rbp)       # 8-byte Spill
	cqto
	movq	-1344(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1328(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB26_635
	jmp	.LBB26_632
.LBB26_615:                             # %cond.false.3427
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_616
	jmp	.LBB26_617
.LBB26_616:                             # %cond.true.3428
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_635
	jmp	.LBB26_632
.LBB26_617:                             # %cond.false.3429
	movq	-128(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_619
# BB#618:                               # %cond.true.3435
	xorl	%eax, %eax
	movq	-128(%rbp), %rcx
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
	movq	-128(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1352(%rbp)       # 8-byte Spill
	jmp	.LBB26_620
.LBB26_619:                             # %cond.false.3452
	movq	-128(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1352(%rbp)       # 8-byte Spill
.LBB26_620:                             # %cond.end.3456
	movq	-1352(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1360(%rbp)       # 8-byte Spill
	cqto
	movq	-1360(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-128(%rbp), %rax
	jl	.LBB26_635
	jmp	.LBB26_632
.LBB26_621:                             # %cond.false.3461
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_622
	jmp	.LBB26_623
.LBB26_622:                             # %cond.true.3462
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_635
	jmp	.LBB26_632
.LBB26_623:                             # %cond.false.3463
	cmpq	$0, -128(%rbp)
	jge	.LBB26_628
# BB#624:                               # %cond.true.3466
	movq	-128(%rbp), %rax
	movq	-128(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1368(%rbp)       # 8-byte Spill
	jge	.LBB26_626
# BB#625:                               # %cond.true.3472
	xorl	%eax, %eax
	movq	-128(%rbp), %rcx
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
	movq	-128(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1376(%rbp)       # 8-byte Spill
	jmp	.LBB26_627
.LBB26_626:                             # %cond.false.3489
	movq	-128(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1376(%rbp)       # 8-byte Spill
.LBB26_627:                             # %cond.end.3493
	movq	-1376(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1384(%rbp)       # 8-byte Spill
	cqto
	movq	-1384(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1368(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB26_635
	jmp	.LBB26_632
.LBB26_628:                             # %cond.false.3498
	movq	-128(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_630
# BB#629:                               # %cond.true.3504
	movq	-128(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1392(%rbp)       # 8-byte Spill
	jmp	.LBB26_631
.LBB26_630:                             # %cond.false.3512
	movq	-128(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1392(%rbp)       # 8-byte Spill
.LBB26_631:                             # %cond.end.3516
	movq	-1392(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1400(%rbp)       # 8-byte Spill
	cqto
	movq	-1400(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-128(%rbp), %rax
	jl	.LBB26_635
.LBB26_632:                             # %lor.lhs.false.3521
	movq	-128(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_634
# BB#633:                               # %land.lhs.true.3527
	movq	-128(%rbp), %rax
	shlq	$3, %rax
	cmpq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	jl	.LBB26_635
.LBB26_634:                             # %lor.lhs.false.3531
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %ecx
	movq	-128(%rbp), %rdx
	shlq	$3, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB26_639
.LBB26_635:                             # %cond.true.3535
	movq	-128(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB26_637
# BB#636:                               # %cond.true.3540
	movq	-128(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -1404(%rbp)       # 4-byte Spill
	jmp	.LBB26_638
.LBB26_637:                             # %cond.false.3543
	movq	-128(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -1404(%rbp)       # 4-byte Spill
.LBB26_638:                             # %cond.end.3548
	movl	-1404(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -136(%rbp)
	testb	$1, %cl
	jne	.LBB26_803
	jmp	.LBB26_802
.LBB26_639:                             # %cond.false.3551
	movq	-128(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB26_641
# BB#640:                               # %cond.true.3556
	movq	-128(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -1408(%rbp)       # 4-byte Spill
	jmp	.LBB26_642
.LBB26_641:                             # %cond.false.3559
	movq	-128(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -1408(%rbp)       # 4-byte Spill
.LBB26_642:                             # %cond.end.3564
	movl	-1408(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -136(%rbp)
	testb	$1, %dl
	jne	.LBB26_803
	jmp	.LBB26_802
.LBB26_643:                             # %cond.false.3567
	movb	$1, %al
	testb	$1, %al
	jne	.LBB26_644
	jmp	.LBB26_723
.LBB26_644:                             # %cond.true.3568
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_645
	jmp	.LBB26_684
.LBB26_645:                             # %cond.true.3569
	movq	-128(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_647
# BB#646:                               # %cond.true.3575
	xorl	%eax, %eax
	movq	-128(%rbp), %rcx
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
	movq	-128(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1416(%rbp)       # 8-byte Spill
	jmp	.LBB26_648
.LBB26_647:                             # %cond.false.3592
	movq	-128(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1416(%rbp)       # 8-byte Spill
.LBB26_648:                             # %cond.end.3596
	movq	-1416(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB26_650
# BB#649:                               # %land.lhs.true.3600
	cmpq	$0, -128(%rbp)
	jl	.LBB26_676
.LBB26_650:                             # %lor.lhs.false.3603
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_651
	jmp	.LBB26_662
.LBB26_651:                             # %cond.true.3604
	cmpq	$0, -128(%rbp)
	jge	.LBB26_656
# BB#652:                               # %cond.true.3607
	movq	-128(%rbp), %rax
	movq	-128(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1424(%rbp)       # 8-byte Spill
	jge	.LBB26_654
# BB#653:                               # %cond.true.3613
	movq	-128(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1432(%rbp)       # 8-byte Spill
	jmp	.LBB26_655
.LBB26_654:                             # %cond.false.3621
	movq	-128(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1432(%rbp)       # 8-byte Spill
.LBB26_655:                             # %cond.end.3625
	movq	-1432(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1440(%rbp)       # 8-byte Spill
	cqto
	movq	-1440(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1424(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB26_676
	jmp	.LBB26_673
.LBB26_656:                             # %cond.false.3630
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_657
	jmp	.LBB26_658
.LBB26_657:                             # %cond.true.3631
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_676
	jmp	.LBB26_673
.LBB26_658:                             # %cond.false.3632
	movq	-128(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_660
# BB#659:                               # %cond.true.3638
	xorl	%eax, %eax
	movq	-128(%rbp), %rcx
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
	movq	-128(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1448(%rbp)       # 8-byte Spill
	jmp	.LBB26_661
.LBB26_660:                             # %cond.false.3655
	movq	-128(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1448(%rbp)       # 8-byte Spill
.LBB26_661:                             # %cond.end.3659
	movq	-1448(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1456(%rbp)       # 8-byte Spill
	cqto
	movq	-1456(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-128(%rbp), %rax
	jl	.LBB26_676
	jmp	.LBB26_673
.LBB26_662:                             # %cond.false.3664
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_663
	jmp	.LBB26_664
.LBB26_663:                             # %cond.true.3665
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_676
	jmp	.LBB26_673
.LBB26_664:                             # %cond.false.3666
	cmpq	$0, -128(%rbp)
	jge	.LBB26_669
# BB#665:                               # %cond.true.3669
	movq	-128(%rbp), %rax
	movq	-128(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1464(%rbp)       # 8-byte Spill
	jge	.LBB26_667
# BB#666:                               # %cond.true.3675
	xorl	%eax, %eax
	movq	-128(%rbp), %rcx
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
	movq	-128(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1472(%rbp)       # 8-byte Spill
	jmp	.LBB26_668
.LBB26_667:                             # %cond.false.3692
	movq	-128(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1472(%rbp)       # 8-byte Spill
.LBB26_668:                             # %cond.end.3696
	movq	-1472(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1480(%rbp)       # 8-byte Spill
	cqto
	movq	-1480(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1464(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB26_676
	jmp	.LBB26_673
.LBB26_669:                             # %cond.false.3701
	movq	-128(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_671
# BB#670:                               # %cond.true.3707
	movq	-128(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1488(%rbp)       # 8-byte Spill
	jmp	.LBB26_672
.LBB26_671:                             # %cond.false.3715
	movq	-128(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1488(%rbp)       # 8-byte Spill
.LBB26_672:                             # %cond.end.3719
	movq	-1488(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1496(%rbp)       # 8-byte Spill
	cqto
	movq	-1496(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-128(%rbp), %rax
	jl	.LBB26_676
.LBB26_673:                             # %lor.lhs.false.3724
	movq	-128(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_675
# BB#674:                               # %land.lhs.true.3730
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-128(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB26_676
.LBB26_675:                             # %lor.lhs.false.3734
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-128(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB26_680
.LBB26_676:                             # %cond.true.3738
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-128(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB26_678
# BB#677:                               # %cond.true.3742
	movq	-128(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -1504(%rbp)       # 8-byte Spill
	jmp	.LBB26_679
.LBB26_678:                             # %cond.false.3744
	movq	-128(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1504(%rbp)       # 8-byte Spill
.LBB26_679:                             # %cond.end.3748
	movq	-1504(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -136(%rbp)
	testb	$1, %cl
	jne	.LBB26_803
	jmp	.LBB26_802
.LBB26_680:                             # %cond.false.3750
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-128(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB26_682
# BB#681:                               # %cond.true.3754
	movq	-128(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -1512(%rbp)       # 8-byte Spill
	jmp	.LBB26_683
.LBB26_682:                             # %cond.false.3756
	movq	-128(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1512(%rbp)       # 8-byte Spill
.LBB26_683:                             # %cond.end.3760
	movq	-1512(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -136(%rbp)
	testb	$1, %dl
	jne	.LBB26_803
	jmp	.LBB26_802
.LBB26_684:                             # %cond.false.3762
	movq	-128(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_686
# BB#685:                               # %cond.true.3768
	xorl	%eax, %eax
	movq	-128(%rbp), %rcx
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
	movq	-128(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1520(%rbp)       # 8-byte Spill
	jmp	.LBB26_687
.LBB26_686:                             # %cond.false.3785
	movq	-128(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1520(%rbp)       # 8-byte Spill
.LBB26_687:                             # %cond.end.3789
	movq	-1520(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB26_689
# BB#688:                               # %land.lhs.true.3793
	cmpq	$0, -128(%rbp)
	jl	.LBB26_715
.LBB26_689:                             # %lor.lhs.false.3796
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_690
	jmp	.LBB26_701
.LBB26_690:                             # %cond.true.3797
	cmpq	$0, -128(%rbp)
	jge	.LBB26_695
# BB#691:                               # %cond.true.3800
	movq	-128(%rbp), %rax
	movq	-128(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1528(%rbp)       # 8-byte Spill
	jge	.LBB26_693
# BB#692:                               # %cond.true.3806
	movq	-128(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1536(%rbp)       # 8-byte Spill
	jmp	.LBB26_694
.LBB26_693:                             # %cond.false.3814
	movq	-128(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1536(%rbp)       # 8-byte Spill
.LBB26_694:                             # %cond.end.3818
	movq	-1536(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1544(%rbp)       # 8-byte Spill
	cqto
	movq	-1544(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1528(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB26_715
	jmp	.LBB26_712
.LBB26_695:                             # %cond.false.3823
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_696
	jmp	.LBB26_697
.LBB26_696:                             # %cond.true.3824
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_715
	jmp	.LBB26_712
.LBB26_697:                             # %cond.false.3825
	movq	-128(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_699
# BB#698:                               # %cond.true.3831
	xorl	%eax, %eax
	movq	-128(%rbp), %rcx
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
	movq	-128(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1552(%rbp)       # 8-byte Spill
	jmp	.LBB26_700
.LBB26_699:                             # %cond.false.3848
	movq	-128(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1552(%rbp)       # 8-byte Spill
.LBB26_700:                             # %cond.end.3852
	movq	-1552(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1560(%rbp)       # 8-byte Spill
	cqto
	movq	-1560(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-128(%rbp), %rax
	jl	.LBB26_715
	jmp	.LBB26_712
.LBB26_701:                             # %cond.false.3857
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_702
	jmp	.LBB26_703
.LBB26_702:                             # %cond.true.3858
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_715
	jmp	.LBB26_712
.LBB26_703:                             # %cond.false.3859
	cmpq	$0, -128(%rbp)
	jge	.LBB26_708
# BB#704:                               # %cond.true.3862
	movq	-128(%rbp), %rax
	movq	-128(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1568(%rbp)       # 8-byte Spill
	jge	.LBB26_706
# BB#705:                               # %cond.true.3868
	xorl	%eax, %eax
	movq	-128(%rbp), %rcx
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
	movq	-128(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1576(%rbp)       # 8-byte Spill
	jmp	.LBB26_707
.LBB26_706:                             # %cond.false.3885
	movq	-128(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1576(%rbp)       # 8-byte Spill
.LBB26_707:                             # %cond.end.3889
	movq	-1576(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1584(%rbp)       # 8-byte Spill
	cqto
	movq	-1584(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1568(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB26_715
	jmp	.LBB26_712
.LBB26_708:                             # %cond.false.3894
	movq	-128(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_710
# BB#709:                               # %cond.true.3900
	movq	-128(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1592(%rbp)       # 8-byte Spill
	jmp	.LBB26_711
.LBB26_710:                             # %cond.false.3908
	movq	-128(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1592(%rbp)       # 8-byte Spill
.LBB26_711:                             # %cond.end.3912
	movq	-1592(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1600(%rbp)       # 8-byte Spill
	cqto
	movq	-1600(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-128(%rbp), %rax
	jl	.LBB26_715
.LBB26_712:                             # %lor.lhs.false.3917
	movq	-128(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_714
# BB#713:                               # %land.lhs.true.3923
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-128(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB26_715
.LBB26_714:                             # %lor.lhs.false.3927
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-128(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB26_719
.LBB26_715:                             # %cond.true.3931
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-128(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB26_717
# BB#716:                               # %cond.true.3935
	movq	-128(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -1608(%rbp)       # 8-byte Spill
	jmp	.LBB26_718
.LBB26_717:                             # %cond.false.3937
	movq	-128(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1608(%rbp)       # 8-byte Spill
.LBB26_718:                             # %cond.end.3941
	movq	-1608(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -136(%rbp)
	testb	$1, %cl
	jne	.LBB26_803
	jmp	.LBB26_802
.LBB26_719:                             # %cond.false.3943
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-128(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB26_721
# BB#720:                               # %cond.true.3947
	movq	-128(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -1616(%rbp)       # 8-byte Spill
	jmp	.LBB26_722
.LBB26_721:                             # %cond.false.3949
	movq	-128(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1616(%rbp)       # 8-byte Spill
.LBB26_722:                             # %cond.end.3953
	movq	-1616(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -136(%rbp)
	testb	$1, %dl
	jne	.LBB26_803
	jmp	.LBB26_802
.LBB26_723:                             # %cond.false.3955
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_724
	jmp	.LBB26_763
.LBB26_724:                             # %cond.true.3956
	movq	-128(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_726
# BB#725:                               # %cond.true.3962
	xorl	%eax, %eax
	movq	-128(%rbp), %rcx
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
	movq	-128(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1624(%rbp)       # 8-byte Spill
	jmp	.LBB26_727
.LBB26_726:                             # %cond.false.3979
	movq	-128(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1624(%rbp)       # 8-byte Spill
.LBB26_727:                             # %cond.end.3983
	movq	-1624(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB26_729
# BB#728:                               # %land.lhs.true.3987
	cmpq	$0, -128(%rbp)
	jl	.LBB26_755
.LBB26_729:                             # %lor.lhs.false.3990
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_730
	jmp	.LBB26_741
.LBB26_730:                             # %cond.true.3991
	cmpq	$0, -128(%rbp)
	jge	.LBB26_735
# BB#731:                               # %cond.true.3994
	movq	-128(%rbp), %rax
	movq	-128(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1632(%rbp)       # 8-byte Spill
	jge	.LBB26_733
# BB#732:                               # %cond.true.4000
	movq	-128(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1640(%rbp)       # 8-byte Spill
	jmp	.LBB26_734
.LBB26_733:                             # %cond.false.4008
	movq	-128(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1640(%rbp)       # 8-byte Spill
.LBB26_734:                             # %cond.end.4012
	movq	-1640(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1648(%rbp)       # 8-byte Spill
	cqto
	movq	-1648(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1632(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB26_755
	jmp	.LBB26_752
.LBB26_735:                             # %cond.false.4017
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_736
	jmp	.LBB26_737
.LBB26_736:                             # %cond.true.4018
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_755
	jmp	.LBB26_752
.LBB26_737:                             # %cond.false.4019
	movq	-128(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_739
# BB#738:                               # %cond.true.4025
	xorl	%eax, %eax
	movq	-128(%rbp), %rcx
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
	movq	-128(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1656(%rbp)       # 8-byte Spill
	jmp	.LBB26_740
.LBB26_739:                             # %cond.false.4042
	movq	-128(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1656(%rbp)       # 8-byte Spill
.LBB26_740:                             # %cond.end.4046
	movq	-1656(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1664(%rbp)       # 8-byte Spill
	cqto
	movq	-1664(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-128(%rbp), %rax
	jl	.LBB26_755
	jmp	.LBB26_752
.LBB26_741:                             # %cond.false.4051
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_742
	jmp	.LBB26_743
.LBB26_742:                             # %cond.true.4052
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_755
	jmp	.LBB26_752
.LBB26_743:                             # %cond.false.4053
	cmpq	$0, -128(%rbp)
	jge	.LBB26_748
# BB#744:                               # %cond.true.4056
	movq	-128(%rbp), %rax
	movq	-128(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1672(%rbp)       # 8-byte Spill
	jge	.LBB26_746
# BB#745:                               # %cond.true.4062
	xorl	%eax, %eax
	movq	-128(%rbp), %rcx
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
	movq	-128(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1680(%rbp)       # 8-byte Spill
	jmp	.LBB26_747
.LBB26_746:                             # %cond.false.4079
	movq	-128(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1680(%rbp)       # 8-byte Spill
.LBB26_747:                             # %cond.end.4083
	movq	-1680(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1688(%rbp)       # 8-byte Spill
	cqto
	movq	-1688(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1672(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB26_755
	jmp	.LBB26_752
.LBB26_748:                             # %cond.false.4088
	movq	-128(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_750
# BB#749:                               # %cond.true.4094
	movq	-128(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1696(%rbp)       # 8-byte Spill
	jmp	.LBB26_751
.LBB26_750:                             # %cond.false.4102
	movq	-128(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1696(%rbp)       # 8-byte Spill
.LBB26_751:                             # %cond.end.4106
	movq	-1696(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1704(%rbp)       # 8-byte Spill
	cqto
	movq	-1704(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-128(%rbp), %rax
	jl	.LBB26_755
.LBB26_752:                             # %lor.lhs.false.4111
	movq	-128(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_754
# BB#753:                               # %land.lhs.true.4117
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-128(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB26_755
.LBB26_754:                             # %lor.lhs.false.4121
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-128(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB26_759
.LBB26_755:                             # %cond.true.4125
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-128(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB26_757
# BB#756:                               # %cond.true.4129
	movq	-128(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -1712(%rbp)       # 8-byte Spill
	jmp	.LBB26_758
.LBB26_757:                             # %cond.false.4131
	movq	-128(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1712(%rbp)       # 8-byte Spill
.LBB26_758:                             # %cond.end.4135
	movq	-1712(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -136(%rbp)
	testb	$1, %cl
	jne	.LBB26_803
	jmp	.LBB26_802
.LBB26_759:                             # %cond.false.4137
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-128(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB26_761
# BB#760:                               # %cond.true.4141
	movq	-128(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -1720(%rbp)       # 8-byte Spill
	jmp	.LBB26_762
.LBB26_761:                             # %cond.false.4143
	movq	-128(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1720(%rbp)       # 8-byte Spill
.LBB26_762:                             # %cond.end.4147
	movq	-1720(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -136(%rbp)
	testb	$1, %dl
	jne	.LBB26_803
	jmp	.LBB26_802
.LBB26_763:                             # %cond.false.4149
	movq	-128(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_765
# BB#764:                               # %cond.true.4155
	xorl	%eax, %eax
	movq	-128(%rbp), %rcx
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
	movq	-128(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1728(%rbp)       # 8-byte Spill
	jmp	.LBB26_766
.LBB26_765:                             # %cond.false.4172
	movq	-128(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1728(%rbp)       # 8-byte Spill
.LBB26_766:                             # %cond.end.4176
	movq	-1728(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB26_768
# BB#767:                               # %land.lhs.true.4180
	cmpq	$0, -128(%rbp)
	jl	.LBB26_794
.LBB26_768:                             # %lor.lhs.false.4183
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_769
	jmp	.LBB26_780
.LBB26_769:                             # %cond.true.4184
	cmpq	$0, -128(%rbp)
	jge	.LBB26_774
# BB#770:                               # %cond.true.4187
	movq	-128(%rbp), %rax
	movq	-128(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1736(%rbp)       # 8-byte Spill
	jge	.LBB26_772
# BB#771:                               # %cond.true.4193
	movq	-128(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1744(%rbp)       # 8-byte Spill
	jmp	.LBB26_773
.LBB26_772:                             # %cond.false.4201
	movq	-128(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1744(%rbp)       # 8-byte Spill
.LBB26_773:                             # %cond.end.4205
	movq	-1744(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1752(%rbp)       # 8-byte Spill
	cqto
	movq	-1752(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1736(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB26_794
	jmp	.LBB26_791
.LBB26_774:                             # %cond.false.4210
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_775
	jmp	.LBB26_776
.LBB26_775:                             # %cond.true.4211
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_794
	jmp	.LBB26_791
.LBB26_776:                             # %cond.false.4212
	movq	-128(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_778
# BB#777:                               # %cond.true.4218
	xorl	%eax, %eax
	movq	-128(%rbp), %rcx
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
	movq	-128(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1760(%rbp)       # 8-byte Spill
	jmp	.LBB26_779
.LBB26_778:                             # %cond.false.4235
	movq	-128(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1760(%rbp)       # 8-byte Spill
.LBB26_779:                             # %cond.end.4239
	movq	-1760(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1768(%rbp)       # 8-byte Spill
	cqto
	movq	-1768(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-128(%rbp), %rax
	jl	.LBB26_794
	jmp	.LBB26_791
.LBB26_780:                             # %cond.false.4244
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_781
	jmp	.LBB26_782
.LBB26_781:                             # %cond.true.4245
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_794
	jmp	.LBB26_791
.LBB26_782:                             # %cond.false.4246
	cmpq	$0, -128(%rbp)
	jge	.LBB26_787
# BB#783:                               # %cond.true.4249
	movq	-128(%rbp), %rax
	movq	-128(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1776(%rbp)       # 8-byte Spill
	jge	.LBB26_785
# BB#784:                               # %cond.true.4255
	xorl	%eax, %eax
	movq	-128(%rbp), %rcx
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
	movq	-128(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1784(%rbp)       # 8-byte Spill
	jmp	.LBB26_786
.LBB26_785:                             # %cond.false.4272
	movq	-128(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1784(%rbp)       # 8-byte Spill
.LBB26_786:                             # %cond.end.4276
	movq	-1784(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1792(%rbp)       # 8-byte Spill
	cqto
	movq	-1792(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1776(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB26_794
	jmp	.LBB26_791
.LBB26_787:                             # %cond.false.4281
	movq	-128(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_789
# BB#788:                               # %cond.true.4287
	movq	-128(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1800(%rbp)       # 8-byte Spill
	jmp	.LBB26_790
.LBB26_789:                             # %cond.false.4295
	movq	-128(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1800(%rbp)       # 8-byte Spill
.LBB26_790:                             # %cond.end.4299
	movq	-1800(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1808(%rbp)       # 8-byte Spill
	cqto
	movq	-1808(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-128(%rbp), %rax
	jl	.LBB26_794
.LBB26_791:                             # %lor.lhs.false.4304
	movq	-128(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_793
# BB#792:                               # %land.lhs.true.4310
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-128(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB26_794
.LBB26_793:                             # %lor.lhs.false.4314
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-128(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB26_798
.LBB26_794:                             # %cond.true.4318
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-128(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB26_796
# BB#795:                               # %cond.true.4322
	movq	-128(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -1816(%rbp)       # 8-byte Spill
	jmp	.LBB26_797
.LBB26_796:                             # %cond.false.4324
	movq	-128(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1816(%rbp)       # 8-byte Spill
.LBB26_797:                             # %cond.end.4328
	movq	-1816(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -136(%rbp)
	testb	$1, %cl
	jne	.LBB26_803
	jmp	.LBB26_802
.LBB26_798:                             # %cond.false.4330
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-128(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB26_800
# BB#799:                               # %cond.true.4334
	movq	-128(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -1824(%rbp)       # 8-byte Spill
	jmp	.LBB26_801
.LBB26_800:                             # %cond.false.4336
	movq	-128(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1824(%rbp)       # 8-byte Spill
.LBB26_801:                             # %cond.end.4340
	movq	-1824(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -136(%rbp)
	testb	$1, %dl
	jne	.LBB26_803
.LBB26_802:                             # %lor.lhs.false.4342
	movq	$-1, %rax
	cmpq	-136(%rbp), %rax
	jae	.LBB26_804
.LBB26_803:                             # %if.then.4345
	movq	$-1, %rdi
	callq	memory_full
.LBB26_804:                             # %if.else
	movq	-136(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jg	.LBB26_806
# BB#805:                               # %if.then.4348
	movq	-136(%rbp), %rax
	movq	-104(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -104(%rbp)
	movq	-136(%rbp), %rax
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -48(%rbp)
	jmp	.LBB26_807
.LBB26_806:                             # %if.else.4350
	movq	-136(%rbp), %rdi
	callq	xmalloc
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	make_save_memory
	movabsq	$free_save_value, %rdi
	movq	%rax, -144(%rbp)
	movb	$1, -113(%rbp)
	movq	-144(%rbp), %rsi
	callq	record_unwind_protect
.LBB26_807:                             # %if.end.4353
	jmp	.LBB26_808
.LBB26_808:                             # %if.end.4354
	jmp	.LBB26_809
.LBB26_809:                             # %do.end
	jmp	.LBB26_810
.LBB26_810:                             # %next_list
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB26_836 Depth 2
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -1832(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1832(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB26_812
# BB#811:                               # %if.then.4358
                                        #   in Loop: Header=BB26_810 Depth=1
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)
	jmp	.LBB26_826
.LBB26_812:                             # %if.else.4360
                                        #   in Loop: Header=BB26_810 Depth=1
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -1840(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1840(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB26_814
# BB#813:                               # %if.then.4364
                                        #   in Loop: Header=BB26_810 Depth=1
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB26_825
.LBB26_814:                             # %if.else.4366
	testb	$1, -89(%rbp)
	je	.LBB26_816
# BB#815:                               # %if.then.4367
	xorl	%edi, %edi
	movq	globals+3032, %rax
	movq	%rax, -1848(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1848(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Fsingle_key_description
	movq	-24(%rbp), %rsi
	movq	-48(%rbp), %rdi
	movq	%rax, (%rdi,%rsi,8)
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fconcat
	movq	%rax, -88(%rbp)
	jmp	.LBB26_820
.LBB26_816:                             # %if.else.4372
	cmpq	$0, -24(%rbp)
	jne	.LBB26_818
# BB#817:                               # %if.then.4375
	movq	empty_unibyte_string, %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB26_819
.LBB26_818:                             # %if.else.4376
	movq	-24(%rbp), %rax
	subq	$1, %rax
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fconcat
	movq	%rax, -88(%rbp)
.LBB26_819:                             # %if.end.4379
	jmp	.LBB26_820
.LBB26_820:                             # %if.end.4380
	jmp	.LBB26_821
.LBB26_821:                             # %do.body.4381
	testb	$1, -113(%rbp)
	je	.LBB26_823
# BB#822:                               # %if.then.4383
	xorl	%edi, %edi
	movb	$0, -113(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -1856(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1856(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -1864(%rbp)       # 8-byte Spill
.LBB26_823:                             # %if.end.4386
	jmp	.LBB26_824
.LBB26_824:                             # %do.end.4387
	movq	-88(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.LBB26_825:                             # %if.end.4388
                                        #   in Loop: Header=BB26_810 Depth=1
	jmp	.LBB26_826
.LBB26_826:                             # %if.end.4389
                                        #   in Loop: Header=BB26_810 Depth=1
	movq	-64(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB26_827
	jmp	.LBB26_828
.LBB26_827:                             # %if.then.4391
                                        #   in Loop: Header=BB26_810 Depth=1
	movq	-64(%rbp), %rdi
	callq	SCHARS
	movq	%rax, -56(%rbp)
	jmp	.LBB26_835
.LBB26_828:                             # %if.else.4393
                                        #   in Loop: Header=BB26_810 Depth=1
	movq	-64(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB26_829
	jmp	.LBB26_830
.LBB26_829:                             # %if.then.4395
                                        #   in Loop: Header=BB26_810 Depth=1
	movq	-64(%rbp), %rdi
	callq	ASIZE
	movq	%rax, -56(%rbp)
	jmp	.LBB26_834
.LBB26_830:                             # %if.else.4397
                                        #   in Loop: Header=BB26_810 Depth=1
	movq	-64(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB26_832
# BB#831:                               # %if.then.4401
                                        #   in Loop: Header=BB26_810 Depth=1
	movq	-64(%rbp), %rdi
	callq	Flength
	sarq	$2, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB26_833
.LBB26_832:                             # %if.else.4404
	movl	$179, %edi
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -1872(%rbp)       # 8-byte Spill
.LBB26_833:                             # %if.end.4406
                                        #   in Loop: Header=BB26_810 Depth=1
	jmp	.LBB26_834
.LBB26_834:                             # %if.end.4407
                                        #   in Loop: Header=BB26_810 Depth=1
	jmp	.LBB26_835
.LBB26_835:                             # %if.end.4408
                                        #   in Loop: Header=BB26_810 Depth=1
	movq	$0, -40(%rbp)
	movq	$0, -32(%rbp)
.LBB26_836:                             # %while.cond
                                        #   Parent Loop BB26_810 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-32(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jge	.LBB26_875
# BB#837:                               # %while.body
                                        #   in Loop: Header=BB26_836 Depth=2
	movq	-64(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB26_838
	jmp	.LBB26_858
.LBB26_838:                             # %if.then.4412
                                        #   in Loop: Header=BB26_836 Depth=2
	jmp	.LBB26_839
.LBB26_839:                             # %do.body.4413
                                        #   in Loop: Header=BB26_836 Depth=2
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	movq	-64(%rbp), %rdi
	callq	STRING_MULTIBYTE
	testb	$1, %al
	jne	.LBB26_840
	jmp	.LBB26_850
.LBB26_840:                             # %if.then.4415
                                        #   in Loop: Header=BB26_836 Depth=2
	movq	-40(%rbp), %rax
	movq	-64(%rbp), %rdi
	movq	%rax, -1880(%rbp)       # 8-byte Spill
	callq	SDATA
	movq	-1880(%rbp), %rdi       # 8-byte Reload
	addq	%rdi, %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB26_842
# BB#841:                               # %cond.true.4422
                                        #   in Loop: Header=BB26_836 Depth=2
	movl	$1, -164(%rbp)
	movq	-160(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -1884(%rbp)       # 4-byte Spill
	jmp	.LBB26_849
.LBB26_842:                             # %cond.false.4425
                                        #   in Loop: Header=BB26_836 Depth=2
	movq	-160(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB26_844
# BB#843:                               # %cond.true.4430
                                        #   in Loop: Header=BB26_836 Depth=2
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -164(%rbp)
	movq	-160(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-160(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-160(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -1888(%rbp)       # 4-byte Spill
	jmp	.LBB26_848
.LBB26_844:                             # %cond.false.4444
                                        #   in Loop: Header=BB26_836 Depth=2
	movq	-160(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB26_846
# BB#845:                               # %cond.true.4449
                                        #   in Loop: Header=BB26_836 Depth=2
	movl	$3, -164(%rbp)
	movq	-160(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-160(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-160(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -1892(%rbp)       # 4-byte Spill
	jmp	.LBB26_847
.LBB26_846:                             # %cond.false.4463
                                        #   in Loop: Header=BB26_836 Depth=2
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-164(%rbp), %rdx
	movq	-160(%rbp), %rdi
	callq	string_char
	movl	%eax, -1892(%rbp)       # 4-byte Spill
.LBB26_847:                             # %cond.end.4465
                                        #   in Loop: Header=BB26_836 Depth=2
	movl	-1892(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1888(%rbp)       # 4-byte Spill
.LBB26_848:                             # %cond.end.4467
                                        #   in Loop: Header=BB26_836 Depth=2
	movl	-1888(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1884(%rbp)       # 4-byte Spill
.LBB26_849:                             # %cond.end.4469
                                        #   in Loop: Header=BB26_836 Depth=2
	movl	-1884(%rbp), %eax       # 4-byte Reload
	movl	%eax, -148(%rbp)
	movslq	-164(%rbp), %rcx
	addq	-40(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	jmp	.LBB26_851
.LBB26_850:                             # %if.else.4473
                                        #   in Loop: Header=BB26_836 Depth=2
	movq	-64(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	SREF
	movzbl	%al, %ecx
	movl	%ecx, -148(%rbp)
	movq	-40(%rbp), %rsi
	addq	$1, %rsi
	movq	%rsi, -40(%rbp)
.LBB26_851:                             # %if.end.4477
                                        #   in Loop: Header=BB26_836 Depth=2
	jmp	.LBB26_852
.LBB26_852:                             # %do.end.4478
                                        #   in Loop: Header=BB26_836 Depth=2
	movb	$1, %al
	testb	$1, %al
	jne	.LBB26_853
	jmp	.LBB26_854
.LBB26_853:                             # %cond.true.4479
                                        #   in Loop: Header=BB26_836 Depth=2
	movl	-148(%rbp), %eax
	addl	$0, %eax
	cmpl	$256, %eax              # imm = 0x100
	jb	.LBB26_855
	jmp	.LBB26_857
.LBB26_854:                             # %cond.false.4483
                                        #   in Loop: Header=BB26_836 Depth=2
	movslq	-148(%rbp), %rax
	addq	$0, %rax
	cmpq	$256, %rax              # imm = 0x100
	jae	.LBB26_857
.LBB26_855:                             # %land.lhs.true.4488
                                        #   in Loop: Header=BB26_836 Depth=2
	movl	-148(%rbp), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	je	.LBB26_857
# BB#856:                               # %if.then.4491
                                        #   in Loop: Header=BB26_836 Depth=2
	movl	-148(%rbp), %eax
	xorl	$134217856, %eax        # imm = 0x8000080
	movl	%eax, -148(%rbp)
.LBB26_857:                             # %if.end.4492
                                        #   in Loop: Header=BB26_836 Depth=2
	movslq	-148(%rbp), %rdi
	callq	make_natnum
	movq	%rax, -80(%rbp)
	jmp	.LBB26_862
.LBB26_858:                             # %if.else.4495
                                        #   in Loop: Header=BB26_836 Depth=2
	movq	-64(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB26_859
	jmp	.LBB26_860
.LBB26_859:                             # %if.then.4497
                                        #   in Loop: Header=BB26_836 Depth=2
	movq	-64(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	AREF
	movq	%rax, -80(%rbp)
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB26_861
.LBB26_860:                             # %if.else.4500
                                        #   in Loop: Header=BB26_836 Depth=2
	movq	-64(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
.LBB26_861:                             # %if.end.4504
                                        #   in Loop: Header=BB26_836 Depth=2
	jmp	.LBB26_862
.LBB26_862:                             # %if.end.4505
                                        #   in Loop: Header=BB26_836 Depth=2
	testb	$1, -89(%rbp)
	je	.LBB26_871
# BB#863:                               # %if.then.4507
                                        #   in Loop: Header=BB26_836 Depth=2
	movq	-80(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB26_866
# BB#864:                               # %lor.lhs.false.4513
                                        #   in Loop: Header=BB26_836 Depth=2
	movq	-80(%rbp), %rax
	cmpq	globals+3032, %rax
	je	.LBB26_866
# BB#865:                               # %lor.lhs.false.4516
                                        #   in Loop: Header=BB26_836 Depth=2
	movq	-80(%rbp), %rax
	sarq	$2, %rax
	andq	$134217728, %rax        # imm = 0x8000000
	cmpq	$0, %rax
	je	.LBB26_869
.LBB26_866:                             # %if.then.4520
                                        #   in Loop: Header=BB26_836 Depth=2
	xorl	%edi, %edi
	movq	globals+3032, %rax
	movq	%rax, -1904(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1904(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Fsingle_key_description
	movq	-24(%rbp), %rsi
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, -24(%rbp)
	movq	-48(%rbp), %rdi
	movq	%rax, (%rdi,%rsi,8)
	movq	-72(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, -24(%rbp)
	movq	-48(%rbp), %rdi
	movq	%rax, (%rdi,%rsi,8)
	movq	-80(%rbp), %rax
	cmpq	globals+3032, %rax
	jne	.LBB26_868
# BB#867:                               # %if.then.4529
                                        #   in Loop: Header=BB26_836 Depth=2
	jmp	.LBB26_836
.LBB26_868:                             # %if.end.4530
                                        #   in Loop: Header=BB26_836 Depth=2
	jmp	.LBB26_870
.LBB26_869:                             # %if.else.4531
                                        #   in Loop: Header=BB26_836 Depth=2
	movq	-80(%rbp), %rax
	sarq	$2, %rax
	orq	$134217728, %rax        # imm = 0x8000000
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -80(%rbp)
.LBB26_870:                             # %if.end.4536
                                        #   in Loop: Header=BB26_836 Depth=2
	movb	$0, -89(%rbp)
	jmp	.LBB26_874
.LBB26_871:                             # %if.else.4537
                                        #   in Loop: Header=BB26_836 Depth=2
	movq	-80(%rbp), %rax
	cmpq	globals+3032, %rax
	jne	.LBB26_873
# BB#872:                               # %if.then.4540
                                        #   in Loop: Header=BB26_836 Depth=2
	movb	$1, -89(%rbp)
	jmp	.LBB26_836
.LBB26_873:                             # %if.end.4541
                                        #   in Loop: Header=BB26_836 Depth=2
	jmp	.LBB26_874
.LBB26_874:                             # %if.end.4542
                                        #   in Loop: Header=BB26_836 Depth=2
	xorl	%edi, %edi
	movq	-80(%rbp), %rax
	movq	%rax, -1912(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1912(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Fsingle_key_description
	movq	-24(%rbp), %rsi
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, -24(%rbp)
	movq	-48(%rbp), %rdi
	movq	%rax, (%rdi,%rsi,8)
	movq	-72(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, -24(%rbp)
	movq	-48(%rbp), %rdi
	movq	%rax, (%rdi,%rsi,8)
	jmp	.LBB26_836
.LBB26_875:                             # %while.end
                                        #   in Loop: Header=BB26_810 Depth=1
	jmp	.LBB26_810
.Lfunc_end26:
	.size	Fkey_description, .Lfunc_end26-Fkey_description
	.cfi_endproc

	.globl	Fcommand_remapping
	.align	16, 0x90
	.type	Fcommand_remapping,@function
Fcommand_remapping:                     # @Fcommand_remapping
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$0, %eax
	je	.LBB27_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB27_9
.LBB27_2:                               # %if.end
	movl	$1, %eax
	movl	%eax, %esi
	movq	command_remapping_vector, %rdi
	movq	-16(%rbp), %rdx
	callq	ASET
	xorl	%edi, %edi
	movq	-32(%rbp), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB27_4
# BB#3:                                 # %if.then.5
	xorl	%edi, %edi
	movq	command_remapping_vector, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	Fkey_binding
	movq	%rax, -16(%rbp)
	jmp	.LBB27_5
.LBB27_4:                               # %if.else
	movl	$589, %edi              # imm = 0x24D
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	xorl	%edi, %edi
	movq	command_remapping_vector, %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	Flookup_key
	movq	%rax, -16(%rbp)
.LBB27_5:                               # %if.end.13
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB27_7
# BB#6:                                 # %cond.true
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB27_8
.LBB27_7:                               # %cond.false
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB27_8:                               # %cond.end
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, -8(%rbp)
.LBB27_9:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	Fcommand_remapping, .Lfunc_end27-Fcommand_remapping
	.cfi_endproc

	.globl	Fkey_binding
	.align	16, 0x90
	.type	Fkey_binding,@function
Fkey_binding:                           # @Fkey_binding
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
	subq	$176, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-40(%rbp), %rcx
	movl	%eax, %edi
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB28_15
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB28_2
	jmp	.LBB28_15
.LBB28_2:                               # %if.then
	movq	-16(%rbp), %rdi
	callq	ASIZE
	cmpq	$0, %rax
	jne	.LBB28_4
# BB#3:                                 # %if.then.4
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB28_24
.LBB28_4:                               # %if.end
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	callq	AREF
	xorl	%edx, %edx
	movb	%dl, %r8b
	andq	$7, %rax
	movl	%eax, %edx
	cmpl	$0, %edx
	movb	%r8b, -89(%rbp)         # 1-byte Spill
	jne	.LBB28_6
# BB#5:                                 # %land.rhs
	movq	-16(%rbp), %rdi
	callq	ASIZE
	cmpq	$1, %rax
	setg	%cl
	movb	%cl, -89(%rbp)          # 1-byte Spill
.LBB28_6:                               # %land.end
	movb	-89(%rbp), %al          # 1-byte Reload
	xorl	%ecx, %ecx
	movl	$1, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movslq	%ecx, %rsi
	movq	-88(%rbp), %rdi         # 8-byte Reload
	callq	AREF
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB28_14
# BB#7:                                 # %land.lhs.true.18
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB28_14
# BB#8:                                 # %if.then.23
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB28_10
# BB#9:                                 # %cond.true
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB28_11
.LBB28_10:                              # %cond.false
	movq	-56(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB28_11:                              # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movl	$382, %edi              # imm = 0x17E
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget
	movl	$685, %edi              # imm = 0x2AD
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB28_13
# BB#12:                                # %if.then.35
	movq	-56(%rbp), %rdi
	callq	CDR_SAFE
	movq	%rax, %rdi
	callq	CAR_SAFE
	movq	%rax, -40(%rbp)
.LBB28_13:                              # %if.end.38
	jmp	.LBB28_14
.LBB28_14:                              # %if.end.39
	jmp	.LBB28_15
.LBB28_15:                              # %if.end.40
	movl	$589, %edi              # imm = 0x24D
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcurrent_active_maps
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	Flookup_key
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB28_17
# BB#16:                                # %lor.lhs.false
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB28_18
.LBB28_17:                              # %if.then.54
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB28_24
.LBB28_18:                              # %if.end.56
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB28_23
# BB#19:                                # %land.lhs.true.60
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB28_23
# BB#20:                                # %if.then.65
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rsi
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	-152(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fcommand_remapping
	xorl	%edi, %edi
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	sete	%cl
	xorb	$-1, %cl
	testb	$1, %cl
	jne	.LBB28_21
	jmp	.LBB28_22
.LBB28_21:                              # %if.then.71
	movq	-72(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB28_22:                              # %if.end.72
	jmp	.LBB28_23
.LBB28_23:                              # %if.end.73
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB28_24:                              # %return
	movq	-8(%rbp), %rax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	Fkey_binding, .Lfunc_end28-Fkey_binding
	.cfi_endproc

	.globl	Flookup_key
	.align	16, 0x90
	.type	Flookup_key,@function
Flookup_key:                            # @Flookup_key
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
	subq	$112, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movl	%eax, %edi
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$1, %edi
	movq	-80(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	sete	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movb	%cl, -65(%rbp)
	movq	-16(%rbp), %rax
	movl	%edi, -84(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	-84(%rbp), %esi         # 4-byte Reload
	movl	-84(%rbp), %edx         # 4-byte Reload
	callq	get_keymap
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rdi
	callq	CHECK_VECTOR_OR_STRING
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB29_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB29_28
.LBB29_2:                               # %if.end
	movq	$0, -40(%rbp)
.LBB29_3:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rsi
	callq	Faref
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %edx
	cmpl	$3, %edx
	jne	.LBB29_6
# BB#4:                                 # %land.lhs.true
                                        #   in Loop: Header=BB29_3 Depth=1
	movq	-56(%rbp), %rdi
	callq	lucid_event_type_list_p
	testb	$1, %al
	jne	.LBB29_5
	jmp	.LBB29_6
.LBB29_5:                               # %if.then.9
                                        #   in Loop: Header=BB29_3 Depth=1
	movq	-56(%rbp), %rdi
	callq	Fevent_convert_list
	movq	%rax, -56(%rbp)
.LBB29_6:                               # %if.end.11
                                        #   in Loop: Header=BB29_3 Depth=1
	movq	-24(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB29_7
	jmp	.LBB29_10
.LBB29_7:                               # %land.lhs.true.14
                                        #   in Loop: Header=BB29_3 Depth=1
	movq	-56(%rbp), %rax
	sarq	$2, %rax
	andq	$128, %rax
	cmpq	$0, %rax
	je	.LBB29_10
# BB#8:                                 # %land.lhs.true.16
                                        #   in Loop: Header=BB29_3 Depth=1
	movq	-24(%rbp), %rdi
	callq	STRING_MULTIBYTE
	testb	$1, %al
	jne	.LBB29_10
# BB#9:                                 # %if.then.18
                                        #   in Loop: Header=BB29_3 Depth=1
	movq	-56(%rbp), %rax
	sarq	$2, %rax
	orq	$134217728, %rax        # imm = 0x8000000
	andq	$-129, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -56(%rbp)
.LBB29_10:                              # %if.end.23
                                        #   in Loop: Header=BB29_3 Depth=1
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	je	.LBB29_15
# BB#11:                                # %land.lhs.true.29
                                        #   in Loop: Header=BB29_3 Depth=1
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB29_15
# BB#12:                                # %land.lhs.true.34
                                        #   in Loop: Header=BB29_3 Depth=1
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB29_15
# BB#13:                                # %land.lhs.true.39
                                        #   in Loop: Header=BB29_3 Depth=1
	movq	-56(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB29_15
# BB#14:                                # %if.then.41
                                        #   in Loop: Header=BB29_3 Depth=1
	movabsq	$.L.str.2, %rdi
	movl	$1, %edx
	movq	-56(%rbp), %rsi
	callq	message_with_string
.LBB29_15:                              # %if.end.42
                                        #   in Loop: Header=BB29_3 Depth=1
	xorl	%ecx, %ecx
	movl	$1, %r8d
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movb	-65(%rbp), %al
	andb	$1, %al
	movzbl	%al, %edx
	callq	access_keymap
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB29_17
# BB#16:                                # %if.then.47
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB29_28
.LBB29_17:                              # %if.end.48
                                        #   in Loop: Header=BB29_3 Depth=1
	xorl	%esi, %esi
	movl	$1, %edx
	movq	-48(%rbp), %rdi
	callq	get_keymap
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %edx
	cmpl	$3, %edx
	je	.LBB29_19
# BB#18:                                # %if.then.54
	movq	-40(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB29_28
.LBB29_19:                              # %if.end.57
                                        #   in Loop: Header=BB29_3 Depth=1
	jmp	.LBB29_20
.LBB29_20:                              # %do.body
                                        #   in Loop: Header=BB29_3 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB29_23
# BB#21:                                # %land.lhs.true.61
                                        #   in Loop: Header=BB29_3 Depth=1
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB29_23
# BB#22:                                # %if.then.65
                                        #   in Loop: Header=BB29_3 Depth=1
	callq	process_quit_flag
	jmp	.LBB29_26
.LBB29_23:                              # %if.else
                                        #   in Loop: Header=BB29_3 Depth=1
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB29_25
# BB#24:                                # %if.then.67
                                        #   in Loop: Header=BB29_3 Depth=1
	callq	process_pending_signals
.LBB29_25:                              # %if.end.68
                                        #   in Loop: Header=BB29_3 Depth=1
	jmp	.LBB29_26
.LBB29_26:                              # %if.end.69
                                        #   in Loop: Header=BB29_3 Depth=1
	jmp	.LBB29_27
.LBB29_27:                              # %do.end
                                        #   in Loop: Header=BB29_3 Depth=1
	jmp	.LBB29_3
.LBB29_28:                              # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	Flookup_key, .Lfunc_end29-Flookup_key
	.cfi_endproc

	.globl	current_minor_maps
	.align	16, 0x90
	.type	current_minor_maps,@function
current_minor_maps:                     # @current_minor_maps
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
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	movq	globals+632, %rsi
	movq	%rsi, -72(%rbp)
	movq	globals+1568, %rsi
	movq	%rsi, -96(%rbp)
	movq	globals+1560, %rsi
	movq	%rsi, -88(%rbp)
	movl	$0, -28(%rbp)
.LBB30_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB30_8 Depth 2
	cmpl	$2, -28(%rbp)
	jge	.LBB30_42
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	-72(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB30_6
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	-72(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-72(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB30_5
# BB#4:                                 # %if.then.9
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	-40(%rbp), %rdi
	callq	find_symbol_value
	movq	%rax, -40(%rbp)
.LBB30_5:                               # %if.end
                                        #   in Loop: Header=BB30_1 Depth=1
	movl	$-1, -28(%rbp)
	jmp	.LBB30_7
.LBB30_6:                               # %if.else
                                        #   in Loop: Header=BB30_1 Depth=1
	movslq	-28(%rbp), %rax
	movq	-96(%rbp,%rax,8), %rax
	movq	%rax, -40(%rbp)
.LBB30_7:                               # %if.end.11
                                        #   in Loop: Header=BB30_1 Depth=1
	jmp	.LBB30_8
.LBB30_8:                               # %for.cond.12
                                        #   Parent Loop BB30_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB30_40
# BB#9:                                 # %for.body.17
                                        #   in Loop: Header=BB30_8 Depth=2
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB30_38
# BB#10:                                # %land.lhs.true
                                        #   in Loop: Header=BB30_8 Depth=2
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB30_38
# BB#11:                                # %land.lhs.true.30
                                        #   in Loop: Header=BB30_8 Depth=2
	movq	-56(%rbp), %rdi
	callq	find_symbol_value
	movl	$957, %edi              # imm = 0x3BD
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB30_12
	jmp	.LBB30_38
.LBB30_12:                              # %land.lhs.true.35
                                        #   in Loop: Header=BB30_8 Depth=2
	xorl	%edi, %edi
	movq	-64(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB30_38
# BB#13:                                # %if.then.39
                                        #   in Loop: Header=BB30_8 Depth=2
	cmpl	$1, -28(%rbp)
	jne	.LBB30_17
# BB#14:                                # %if.then.42
                                        #   in Loop: Header=BB30_8 Depth=2
	movq	-56(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	assq_no_quit
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB30_16
# BB#15:                                # %if.then.48
                                        #   in Loop: Header=BB30_8 Depth=2
	jmp	.LBB30_39
.LBB30_16:                              # %if.end.49
                                        #   in Loop: Header=BB30_8 Depth=2
	jmp	.LBB30_17
.LBB30_17:                              # %if.end.50
                                        #   in Loop: Header=BB30_8 Depth=2
	movq	-24(%rbp), %rax
	cmpq	cmm_size, %rax
	jl	.LBB30_35
# BB#18:                                # %if.then.53
                                        #   in Loop: Header=BB30_8 Depth=2
	movabsq	$576460752303423484, %rax # imm = 0x7FFFFFFFFFFFFFC
	cmpq	cmm_size, %rax
	jae	.LBB30_20
# BB#19:                                # %if.then.56
                                        #   in Loop: Header=BB30_1 Depth=1
	jmp	.LBB30_40
.LBB30_20:                              # %if.end.57
                                        #   in Loop: Header=BB30_8 Depth=2
	cmpq	$0, cmm_size
	jne	.LBB30_22
# BB#21:                                # %cond.true
                                        #   in Loop: Header=BB30_8 Depth=2
	movl	$30, %eax
	movl	%eax, %ecx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	jmp	.LBB30_23
.LBB30_22:                              # %cond.false
                                        #   in Loop: Header=BB30_8 Depth=2
	movq	cmm_size, %rax
	shlq	$1, %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
.LBB30_23:                              # %cond.end
                                        #   in Loop: Header=BB30_8 Depth=2
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -120(%rbp)
	callq	block_input
	movq	-120(%rbp), %rdi
	callq	malloc
	movq	%rax, -128(%rbp)
	cmpq	$0, -128(%rbp)
	je	.LBB30_27
# BB#24:                                # %if.then.62
                                        #   in Loop: Header=BB30_8 Depth=2
	cmpq	$0, cmm_modes
	je	.LBB30_26
# BB#25:                                # %if.then.64
                                        #   in Loop: Header=BB30_8 Depth=2
	movq	-128(%rbp), %rax
	movq	cmm_modes, %rcx
	movq	cmm_size, %rdx
	shlq	$3, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	memcpy
	movq	cmm_modes, %rax
	movq	%rax, %rdi
	callq	free
.LBB30_26:                              # %if.end.66
                                        #   in Loop: Header=BB30_8 Depth=2
	movq	-128(%rbp), %rax
	movq	%rax, cmm_modes
.LBB30_27:                              # %if.end.67
                                        #   in Loop: Header=BB30_8 Depth=2
	movq	-120(%rbp), %rdi
	callq	malloc
	movq	%rax, -136(%rbp)
	cmpq	$0, -136(%rbp)
	je	.LBB30_31
# BB#28:                                # %if.then.70
                                        #   in Loop: Header=BB30_8 Depth=2
	cmpq	$0, cmm_maps
	je	.LBB30_30
# BB#29:                                # %if.then.72
                                        #   in Loop: Header=BB30_8 Depth=2
	movq	-136(%rbp), %rax
	movq	cmm_maps, %rcx
	movq	cmm_size, %rdx
	shlq	$3, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	memcpy
	movq	cmm_maps, %rax
	movq	%rax, %rdi
	callq	free
.LBB30_30:                              # %if.end.74
                                        #   in Loop: Header=BB30_8 Depth=2
	movq	-136(%rbp), %rax
	movq	%rax, cmm_maps
.LBB30_31:                              # %if.end.75
                                        #   in Loop: Header=BB30_8 Depth=2
	callq	unblock_input
	cmpq	$0, -128(%rbp)
	je	.LBB30_33
# BB#32:                                # %lor.lhs.false
                                        #   in Loop: Header=BB30_8 Depth=2
	cmpq	$0, -136(%rbp)
	jne	.LBB30_34
.LBB30_33:                              # %if.then.80
                                        #   in Loop: Header=BB30_1 Depth=1
	jmp	.LBB30_40
.LBB30_34:                              # %if.end.81
                                        #   in Loop: Header=BB30_8 Depth=2
	movq	-112(%rbp), %rax
	movq	%rax, cmm_size
.LBB30_35:                              # %if.end.82
                                        #   in Loop: Header=BB30_8 Depth=2
	movl	$901, %edi              # imm = 0x385
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Findirect_function
	xorl	%edi, %edi
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB30_37
# BB#36:                                # %if.then.91
                                        #   in Loop: Header=BB30_8 Depth=2
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	cmm_modes, %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-104(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	cmm_maps, %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
.LBB30_37:                              # %if.end.94
                                        #   in Loop: Header=BB30_8 Depth=2
	jmp	.LBB30_38
.LBB30_38:                              # %if.end.95
                                        #   in Loop: Header=BB30_8 Depth=2
	jmp	.LBB30_39
.LBB30_39:                              # %for.inc
                                        #   in Loop: Header=BB30_8 Depth=2
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB30_8
.LBB30_40:                              # %for.end
                                        #   in Loop: Header=BB30_1 Depth=1
	jmp	.LBB30_41
.LBB30_41:                              # %for.inc.99
                                        #   in Loop: Header=BB30_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB30_1
.LBB30_42:                              # %for.end.101
	cmpq	$0, -8(%rbp)
	je	.LBB30_44
# BB#43:                                # %if.then.103
	movq	cmm_modes, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB30_44:                              # %if.end.104
	cmpq	$0, -16(%rbp)
	je	.LBB30_46
# BB#45:                                # %if.then.106
	movq	cmm_maps, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB30_46:                              # %if.end.107
	movq	-24(%rbp), %rax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	current_minor_maps, .Lfunc_end30-current_minor_maps
	.cfi_endproc

	.globl	Fcurrent_active_maps
	.align	16, 0x90
	.type	Fcurrent_active_maps,@function
Fcurrent_active_maps:                   # @Fcurrent_active_maps
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
	subq	$320, %rsp              # imm = 0x140
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	callq	SPECPDL_INDEX
	movq	%rax, -24(%rbp)
	movq	current_global_map, %rdi
	callq	list1
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB31_6
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	CAR_SAFE
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB31_2
	jmp	.LBB31_5
.LBB31_2:                               # %land.lhs.true
	movq	-40(%rbp), %rdi
	callq	XWINDOW
	movq	80(%rax), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB31_3
	jmp	.LBB31_5
.LBB31_3:                               # %land.lhs.true.9
	movq	-40(%rbp), %rdi
	callq	XWINDOW
	movq	80(%rax), %rdi
	callq	XBUFFER
	cmpq	current_buffer, %rax
	je	.LBB31_5
# BB#4:                                 # %if.then.15
	callq	record_unwind_current_buffer
	movq	-40(%rbp), %rdi
	callq	XWINDOW
	movq	80(%rax), %rdi
	callq	XBUFFER
	movq	%rax, %rdi
	callq	set_buffer_internal
.LBB31_5:                               # %if.end
	jmp	.LBB31_6
.LBB31_6:                               # %if.end.19
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB31_10
# BB#7:                                 # %land.lhs.true.23
	xorl	%edi, %edi
	movq	current_kboard, %rax
	movq	8(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB31_10
# BB#8:                                 # %land.lhs.true.27
	xorl	%edi, %edi
	movq	globals+1728, %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB31_10
# BB#9:                                 # %if.then.31
	movq	globals+1728, %rdi
	movq	-32(%rbp), %rsi
	callq	Fcons
	movq	%rax, -32(%rbp)
.LBB31_10:                              # %if.end.33
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB31_44
# BB#11:                                # %if.then.37
	movq	-16(%rbp), %rdi
	callq	click_position
	movl	$633, %edi              # imm = 0x279
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	current_buffer, %rsi
	movq	%rsi, -160(%rbp)        # 8-byte Spill
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	-160(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	get_local_map
	movl	$589, %edi              # imm = 0x24D
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	current_buffer, %rsi
	movq	%rsi, -176(%rbp)        # 8-byte Spill
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	-176(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	get_local_map
	movq	%rax, -80(%rbp)
	movq	current_kboard, %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB31_30
# BB#12:                                # %if.then.48
	movl	$18, %eax
	movl	%eax, %edi
	movq	-16(%rbp), %rsi
	callq	Fnth
	movl	$18, %ecx
	movl	%ecx, %edi
	movq	%rax, -96(%rbp)
	movq	-16(%rbp), %rsi
	callq	Fnth
	xorl	%edi, %edi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB31_18
# BB#13:                                # %if.then.54
	movl	$22, %eax
	movl	%eax, %edi
	movq	-16(%rbp), %rsi
	callq	Fnth
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB31_17
# BB#14:                                # %land.lhs.true.61
	movq	-104(%rbp), %rax
	sarq	$2, %rax
	cmpq	$1, %rax
	jl	.LBB31_17
# BB#15:                                # %land.lhs.true.64
	movq	-104(%rbp), %rax
	sarq	$2, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	16(%rcx), %rax
	jg	.LBB31_17
# BB#16:                                # %if.then.68
	movl	$633, %edi              # imm = 0x279
	movq	-104(%rbp), %rax
	sarq	$2, %rax
	movq	current_buffer, %rsi
	movq	%rsi, -200(%rbp)        # 8-byte Spill
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	-200(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	get_local_map
	movl	$589, %edi              # imm = 0x24D
	movq	%rax, -72(%rbp)
	movq	-104(%rbp), %rax
	sarq	$2, %rax
	movq	current_buffer, %rsi
	movq	%rsi, -216(%rbp)        # 8-byte Spill
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	-216(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	get_local_map
	movq	%rax, -80(%rbp)
.LBB31_17:                              # %if.end.75
	jmp	.LBB31_18
.LBB31_18:                              # %if.end.76
	movq	-96(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB31_29
# BB#19:                                # %land.lhs.true.81
	movq	-96(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB31_20
	jmp	.LBB31_29
.LBB31_20:                              # %if.then.85
	movq	-96(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-96(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-112(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB31_28
# BB#21:                                # %land.lhs.true.97
	movq	-112(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jl	.LBB31_28
# BB#22:                                # %land.lhs.true.101
	movq	-112(%rbp), %rax
	sarq	$2, %rax
	movq	-96(%rbp), %rdi
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	SCHARS
	movq	-232(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jge	.LBB31_28
# BB#23:                                # %if.then.106
	movl	$633, %edi              # imm = 0x279
	movq	-112(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rdx
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget_text_property
	xorl	%edi, %edi
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-248(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB31_25
# BB#24:                                # %if.then.112
	movq	-120(%rbp), %rax
	movq	%rax, -72(%rbp)
.LBB31_25:                              # %if.end.113
	movl	$589, %edi              # imm = 0x24D
	movq	-112(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rdx
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget_text_property
	xorl	%edi, %edi
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-264(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB31_27
# BB#26:                                # %if.then.119
	movq	-120(%rbp), %rax
	movq	%rax, -80(%rbp)
.LBB31_27:                              # %if.end.120
	jmp	.LBB31_28
.LBB31_28:                              # %if.end.121
	jmp	.LBB31_29
.LBB31_29:                              # %if.end.122
	jmp	.LBB31_30
.LBB31_30:                              # %if.end.123
	xorl	%edi, %edi
	movq	-72(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-272(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB31_32
# BB#31:                                # %if.then.127
	movq	-72(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	Fcons
	movq	%rax, -32(%rbp)
.LBB31_32:                              # %if.end.129
	xorl	%eax, %eax
	movl	%eax, %edi
	leaq	-48(%rbp), %rsi
	callq	current_minor_maps
	movl	%eax, %ecx
	movl	%ecx, -52(%rbp)
	movl	-52(%rbp), %ecx
	addl	$-1, %ecx
	movl	%ecx, -52(%rbp)
	movl	%ecx, -56(%rbp)
.LBB31_33:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -56(%rbp)
	jl	.LBB31_38
# BB#34:                                # %for.body
                                        #   in Loop: Header=BB31_33 Depth=1
	xorl	%edi, %edi
	movslq	-56(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-280(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB31_36
# BB#35:                                # %if.then.137
                                        #   in Loop: Header=BB31_33 Depth=1
	movslq	-56(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movq	-32(%rbp), %rsi
	callq	Fcons
	movq	%rax, -32(%rbp)
.LBB31_36:                              # %if.end.141
                                        #   in Loop: Header=BB31_33 Depth=1
	jmp	.LBB31_37
.LBB31_37:                              # %for.inc
                                        #   in Loop: Header=BB31_33 Depth=1
	movl	-56(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB31_33
.LBB31_38:                              # %for.end
	xorl	%edi, %edi
	movq	-80(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-288(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB31_40
# BB#39:                                # %if.then.146
	movq	-80(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	Fcons
	movq	%rax, -32(%rbp)
.LBB31_40:                              # %if.end.148
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-296(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB31_43
# BB#41:                                # %land.lhs.true.152
	xorl	%edi, %edi
	movq	-88(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-304(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB31_43
# BB#42:                                # %if.then.156
	movq	-88(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	Fcons
	movq	%rax, -32(%rbp)
.LBB31_43:                              # %if.end.158
	jmp	.LBB31_44
.LBB31_44:                              # %if.end.159
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	-32(%rbp), %rsi
	movq	%rax, -320(%rbp)        # 8-byte Spill
	movq	%rsi, %rax
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	retq
.Lfunc_end31:
	.size	Fcurrent_active_maps, .Lfunc_end31-Fcurrent_active_maps
	.cfi_endproc

	.align	16, 0x90
	.type	click_position,@function
click_position:                         # @click_position
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	andl	$-5, %eax
	cmpl	$2, %eax
	jne	.LBB32_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB32_7
.LBB32_2:                               # %cond.false
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB32_5
# BB#3:                                 # %land.lhs.true
	movq	-8(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB32_5
# BB#4:                                 # %cond.true.9
	movq	-8(%rbp), %rdi
	callq	marker_position
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB32_6
.LBB32_5:                               # %cond.false.11
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB32_6:                               # %cond.end
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB32_7:                               # %cond.end.12
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	%rax, -16(%rbp)
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	cmpq	-16(%rbp), %rax
	jg	.LBB32_9
# BB#8:                                 # %land.lhs.true.16
	movq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	jle	.LBB32_10
.LBB32_9:                               # %if.then
	callq	Fcurrent_buffer
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	args_out_of_range
.LBB32_10:                              # %if.end
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	click_position, .Lfunc_end32-click_position
	.cfi_endproc

	.globl	Flocal_key_binding
	.align	16, 0x90
	.type	Flocal_key_binding,@function
Flocal_key_binding:                     # @Flocal_key_binding
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
	subq	$48, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	current_buffer, %rsi
	movq	112(%rsi), %rsi
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rsi
	movl	%eax, %edi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB33_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB33_3
.LBB33_2:                               # %if.end
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	Flookup_key
	movq	%rax, -8(%rbp)
.LBB33_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	Flocal_key_binding, .Lfunc_end33-Flocal_key_binding
	.cfi_endproc

	.globl	Fglobal_key_binding
	.align	16, 0x90
	.type	Fglobal_key_binding,@function
Fglobal_key_binding:                    # @Fglobal_key_binding
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	current_global_map, %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	callq	Flookup_key
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	Fglobal_key_binding, .Lfunc_end34-Fglobal_key_binding
	.cfi_endproc

	.globl	Fminor_mode_key_binding
	.align	16, 0x90
	.type	Fminor_mode_key_binding,@function
Fminor_mode_key_binding:                # @Fminor_mode_key_binding
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
	subq	$96, %rsp
	leaq	-32(%rbp), %rax
	leaq	-40(%rbp), %rcx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	current_minor_maps
	xorl	%edi, %edi
	movl	%eax, %edx
	movl	%edx, -44(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -56(%rbp)
	movl	$0, -64(%rbp)
	movl	$0, -60(%rbp)
.LBB35_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB35_13
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB35_1 Depth=1
	xorl	%edi, %edi
	movslq	-60(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB35_11
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB35_1 Depth=1
	movslq	-60(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	Flookup_key
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB35_11
# BB#4:                                 # %land.lhs.true.12
                                        #   in Loop: Header=BB35_1 Depth=1
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	je	.LBB35_11
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB35_1 Depth=1
	xorl	%eax, %eax
	movq	-56(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	get_keymap
	xorl	%edi, %edi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB35_7
# BB#6:                                 # %if.then.21
                                        #   in Loop: Header=BB35_1 Depth=1
	movslq	-60(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movq	-56(%rbp), %rsi
	callq	Fcons
	movl	-64(%rbp), %edx
	movl	%edx, %r8d
	addl	$1, %r8d
	movl	%r8d, -64(%rbp)
	movslq	%edx, %rcx
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi,%rcx,8)
	jmp	.LBB35_10
.LBB35_7:                               # %if.else
                                        #   in Loop: Header=BB35_1 Depth=1
	cmpl	$0, -64(%rbp)
	jne	.LBB35_9
# BB#8:                                 # %if.then.29
	movslq	-60(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movq	-56(%rbp), %rsi
	callq	Fcons
	movq	%rax, %rdi
	callq	list1
	movq	%rax, -8(%rbp)
	jmp	.LBB35_14
.LBB35_9:                               # %if.end
                                        #   in Loop: Header=BB35_1 Depth=1
	jmp	.LBB35_10
.LBB35_10:                              # %if.end.34
                                        #   in Loop: Header=BB35_1 Depth=1
	jmp	.LBB35_11
.LBB35_11:                              # %if.end.35
                                        #   in Loop: Header=BB35_1 Depth=1
	jmp	.LBB35_12
.LBB35_12:                              # %for.inc
                                        #   in Loop: Header=BB35_1 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB35_1
.LBB35_13:                              # %for.end
	movslq	-64(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	Flist
	movq	%rax, -8(%rbp)
.LBB35_14:                              # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	Fminor_mode_key_binding, .Lfunc_end35-Fminor_mode_key_binding
	.cfi_endproc

	.globl	Fdefine_prefix_command
	.align	16, 0x90
	.type	Fdefine_prefix_command,@function
Fdefine_prefix_command:                 # @Fdefine_prefix_command
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	Fmake_sparse_keymap
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	Ffset
	xorl	%edi, %edi
	movq	-16(%rbp), %rdx
	movq	%rax, -40(%rbp)         # 8-byte Spill
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB36_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	Fset
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB36_3
.LBB36_2:                               # %if.else
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	Fset
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB36_3:                               # %if.end
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	Fdefine_prefix_command, .Lfunc_end36-Fdefine_prefix_command
	.cfi_endproc

	.globl	Fuse_global_map
	.align	16, 0x90
	.type	Fuse_global_map,@function
Fuse_global_map:                        # @Fuse_global_map
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
	movl	$1, %eax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	get_keymap
	xorl	%edi, %edi
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, current_global_map
	callq	builtin_lisp_symbol
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	Fuse_global_map, .Lfunc_end37-Fuse_global_map
	.cfi_endproc

	.globl	Fuse_local_map
	.align	16, 0x90
	.type	Fuse_local_map,@function
Fuse_local_map:                         # @Fuse_local_map
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
	subq	$16, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB38_2
# BB#1:                                 # %if.then
	movl	$1, %eax
	movq	-8(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	get_keymap
	movq	%rax, -8(%rbp)
.LBB38_2:                               # %if.end
	movq	current_buffer, %rdi
	movq	-8(%rbp), %rsi
	callq	bset_keymap
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	Fuse_local_map, .Lfunc_end38-Fuse_local_map
	.cfi_endproc

	.globl	Fcurrent_local_map
	.align	16, 0x90
	.type	Fcurrent_local_map,@function
Fcurrent_local_map:                     # @Fcurrent_local_map
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
	movq	current_buffer, %rax
	movq	112(%rax), %rax
	popq	%rbp
	retq
.Lfunc_end39:
	.size	Fcurrent_local_map, .Lfunc_end39-Fcurrent_local_map
	.cfi_endproc

	.globl	Fcurrent_global_map
	.align	16, 0x90
	.type	Fcurrent_global_map,@function
Fcurrent_global_map:                    # @Fcurrent_global_map
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
	movq	current_global_map, %rax
	popq	%rbp
	retq
.Lfunc_end40:
	.size	Fcurrent_global_map, .Lfunc_end40-Fcurrent_global_map
	.cfi_endproc

	.globl	Fcurrent_minor_mode_maps
	.align	16, 0x90
	.type	Fcurrent_minor_mode_maps,@function
Fcurrent_minor_mode_maps:               # @Fcurrent_minor_mode_maps
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
	xorl	%eax, %eax
	movl	%eax, %edi
	leaq	-8(%rbp), %rsi
	callq	current_minor_maps
	movl	%eax, %ecx
	movl	%ecx, -12(%rbp)
	movslq	-12(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	Flist
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	Fcurrent_minor_mode_maps, .Lfunc_end41-Fcurrent_minor_mode_maps
	.cfi_endproc

	.globl	Faccessible_keymaps
	.align	16, 0x90
	.type	Faccessible_keymaps,@function
Faccessible_keymaps:                    # @Faccessible_keymaps
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
	subq	$256, %rsp              # imm = 0x100
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	Flength
	xorl	%edi, %edi
	sarq	$2, %rax
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB42_29
# BB#1:                                 # %if.then
	movl	$901, %edi              # imm = 0x385
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	-168(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Flookup_key
	xorl	%ecx, %ecx
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	get_keymap
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %r8         # 8-byte Reload
	cmpq	%rax, %r8
	je	.LBB42_27
# BB#2:                                 # %if.then.7
	movq	-24(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB42_3
	jmp	.LBB42_26
.LBB42_3:                               # %if.then.9
	movq	-24(%rbp), %rdi
	callq	SCHARS
	xorl	%edi, %edi
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fmake_vector
	movq	%rax, -80(%rbp)
	movl	$0, -60(%rbp)
	movl	$0, -64(%rbp)
.LBB42_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-60(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	SCHARS
	movq	-200(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jge	.LBB42_25
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB42_4 Depth=1
	movl	-60(%rbp), %eax
	movl	%eax, -84(%rbp)
# BB#6:                                 # %do.body
                                        #   in Loop: Header=BB42_4 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	movq	-24(%rbp), %rdi
	callq	STRING_MULTIBYTE
	testb	$1, %al
	jne	.LBB42_7
	jmp	.LBB42_17
.LBB42_7:                               # %if.then.17
                                        #   in Loop: Header=BB42_4 Depth=1
	movslq	-64(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	SDATA
	movq	-208(%rbp), %rdi        # 8-byte Reload
	addq	%rdi, %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB42_9
# BB#8:                                 # %cond.true
                                        #   in Loop: Header=BB42_4 Depth=1
	movl	$1, -100(%rbp)
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -212(%rbp)        # 4-byte Spill
	jmp	.LBB42_16
.LBB42_9:                               # %cond.false
                                        #   in Loop: Header=BB42_4 Depth=1
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB42_11
# BB#10:                                # %cond.true.27
                                        #   in Loop: Header=BB42_4 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -100(%rbp)
	movq	-96(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-96(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-96(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -216(%rbp)        # 4-byte Spill
	jmp	.LBB42_15
.LBB42_11:                              # %cond.false.40
                                        #   in Loop: Header=BB42_4 Depth=1
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB42_13
# BB#12:                                # %cond.true.45
                                        #   in Loop: Header=BB42_4 Depth=1
	movl	$3, -100(%rbp)
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-96(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-96(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -220(%rbp)        # 4-byte Spill
	jmp	.LBB42_14
.LBB42_13:                              # %cond.false.59
                                        #   in Loop: Header=BB42_4 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-100(%rbp), %rdx
	movq	-96(%rbp), %rdi
	callq	string_char
	movl	%eax, -220(%rbp)        # 4-byte Spill
.LBB42_14:                              # %cond.end
                                        #   in Loop: Header=BB42_4 Depth=1
	movl	-220(%rbp), %eax        # 4-byte Reload
	movl	%eax, -216(%rbp)        # 4-byte Spill
.LBB42_15:                              # %cond.end.62
                                        #   in Loop: Header=BB42_4 Depth=1
	movl	-216(%rbp), %eax        # 4-byte Reload
	movl	%eax, -212(%rbp)        # 4-byte Spill
.LBB42_16:                              # %cond.end.64
                                        #   in Loop: Header=BB42_4 Depth=1
	movl	-212(%rbp), %eax        # 4-byte Reload
	movl	%eax, -68(%rbp)
	movl	-100(%rbp), %eax
	addl	-64(%rbp), %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB42_18
.LBB42_17:                              # %if.else
                                        #   in Loop: Header=BB42_4 Depth=1
	movq	-24(%rbp), %rdi
	movslq	-64(%rbp), %rsi
	callq	SREF
	movzbl	%al, %ecx
	movl	%ecx, -68(%rbp)
	movl	-64(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -64(%rbp)
.LBB42_18:                              # %if.end
                                        #   in Loop: Header=BB42_4 Depth=1
	jmp	.LBB42_19
.LBB42_19:                              # %do.end
                                        #   in Loop: Header=BB42_4 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB42_20
	jmp	.LBB42_21
.LBB42_20:                              # %cond.true.71
                                        #   in Loop: Header=BB42_4 Depth=1
	movl	-68(%rbp), %eax
	addl	$0, %eax
	cmpl	$256, %eax              # imm = 0x100
	jb	.LBB42_22
	jmp	.LBB42_24
.LBB42_21:                              # %cond.false.75
                                        #   in Loop: Header=BB42_4 Depth=1
	movslq	-68(%rbp), %rax
	addq	$0, %rax
	cmpq	$256, %rax              # imm = 0x100
	jae	.LBB42_24
.LBB42_22:                              # %land.lhs.true
                                        #   in Loop: Header=BB42_4 Depth=1
	movl	-68(%rbp), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	je	.LBB42_24
# BB#23:                                # %if.then.82
                                        #   in Loop: Header=BB42_4 Depth=1
	movl	-68(%rbp), %eax
	xorl	$134217856, %eax        # imm = 0x8000080
	movl	%eax, -68(%rbp)
.LBB42_24:                              # %if.end.83
                                        #   in Loop: Header=BB42_4 Depth=1
	movq	-80(%rbp), %rdi
	movslq	-84(%rbp), %rsi
	movslq	-68(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdx
	callq	ASET
	jmp	.LBB42_4
.LBB42_25:                              # %for.end
	movq	-80(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB42_26:                              # %if.end.88
	movq	-24(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	Fcons
	movq	%rax, %rdi
	callq	list1
	movq	%rax, -32(%rbp)
	jmp	.LBB42_28
.LBB42_27:                              # %if.else.91
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB42_40
.LBB42_28:                              # %if.end.93
	jmp	.LBB42_30
.LBB42_29:                              # %if.else.94
	movl	$1, %esi
	xorl	%edx, %edx
	movq	zero_vector, %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	get_keymap
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	%rax, %rdi
	callq	list1
	movq	%rax, -32(%rbp)
.LBB42_30:                              # %if.end.98
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB42_31:                              # %for.cond.99
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB42_39
# BB#32:                                # %for.body.104
                                        #   in Loop: Header=BB42_31 Depth=1
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	Fcdr
	movq	%rax, -144(%rbp)
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	Fcar
	movq	%rax, -120(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-120(%rbp), %rdi
	callq	Flength
	xorl	%ecx, %ecx
	movb	%cl, %dl
	sarq	$2, %rax
	subq	$1, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	movb	%dl, -233(%rbp)         # 1-byte Spill
	jl	.LBB42_35
# BB#33:                                # %land.lhs.true.120
                                        #   in Loop: Header=BB42_31 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-152(%rbp), %rdx
	sarq	$2, %rdx
	cmpq	-48(%rbp), %rdx
	movb	%cl, -233(%rbp)         # 1-byte Spill
	jl	.LBB42_35
# BB#34:                                # %land.rhs
                                        #   in Loop: Header=BB42_31 Depth=1
	movq	-120(%rbp), %rdi
	movq	-152(%rbp), %rsi
	callq	Faref
	cmpq	globals+3032, %rax
	sete	%cl
	movb	%cl, -233(%rbp)         # 1-byte Spill
.LBB42_35:                              # %land.end
                                        #   in Loop: Header=BB42_31 Depth=1
	movb	-233(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -112(%rbp)
	movq	-144(%rbp), %rcx
	andq	$7, %rcx
	movl	%ecx, %edx
	cmpl	$3, %edx
	jne	.LBB42_37
# BB#36:                                # %if.then.132
                                        #   in Loop: Header=BB42_31 Depth=1
	xorl	%edi, %edi
	movq	-144(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$accessible_keymaps_1, %rsi
	xorl	%r8d, %r8d
	leaq	-136(%rbp), %rcx
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	map_keymap
.LBB42_37:                              # %if.end.134
                                        #   in Loop: Header=BB42_31 Depth=1
	jmp	.LBB42_38
.LBB42_38:                              # %for.inc
                                        #   in Loop: Header=BB42_31 Depth=1
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB42_31
.LBB42_39:                              # %for.end.136
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB42_40:                              # %return
	movq	-8(%rbp), %rax
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end42:
	.size	Faccessible_keymaps, .Lfunc_end42-Faccessible_keymaps
	.cfi_endproc

	.align	16, 0x90
	.type	accessible_keymaps_1,@function
accessible_keymaps_1:                   # @accessible_keymaps_1
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
	subq	$208, %rsp
	xorl	%eax, %eax
	movb	%al, %r8b
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -48(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -56(%rbp)
	movq	-40(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, -64(%rbp)
	movq	-40(%rbp), %rcx
	testb	$1, 24(%rcx)
	movb	%r8b, -121(%rbp)        # 1-byte Spill
	je	.LBB43_2
# BB#1:                                 # %land.rhs
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	sete	%dl
	movb	%dl, -121(%rbp)         # 1-byte Spill
.LBB43_2:                               # %land.end
	movb	-121(%rbp), %al         # 1-byte Reload
	xorl	%esi, %esi
	andb	$1, %al
	movb	%al, -65(%rbp)
	movq	-16(%rbp), %rdi
	callq	get_keyelt
	xorl	%esi, %esi
	movq	%rax, %rdi
	movl	%esi, -128(%rbp)        # 4-byte Spill
	movl	-128(%rbp), %edx        # 4-byte Reload
	callq	get_keymap
	xorl	%edi, %edi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB43_4
# BB#3:                                 # %if.then
	jmp	.LBB43_19
.LBB43_4:                               # %if.end
	jmp	.LBB43_5
.LBB43_5:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB43_8 Depth 2
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	Frassq
	xorl	%edi, %edi
	movq	%rax, -80(%rbp)
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%cl
	xorb	$-1, %cl
	testb	$1, %cl
	jne	.LBB43_6
	jmp	.LBB43_16
.LBB43_6:                               # %while.body
                                        #   in Loop: Header=BB43_5 Depth=1
	movq	-80(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	Flength
	sarq	$2, %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	-64(%rbp), %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	Flength
	sarq	$2, %rax
	movq	-152(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jg	.LBB43_15
# BB#7:                                 # %if.then.22
                                        #   in Loop: Header=BB43_5 Depth=1
	movq	$0, -104(%rbp)
.LBB43_8:                               # %while.cond.23
                                        #   Parent Loop BB43_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-104(%rbp), %rdx
	cmpq	-96(%rbp), %rdx
	movb	%cl, -153(%rbp)         # 1-byte Spill
	jge	.LBB43_10
# BB#9:                                 # %land.rhs.26
                                        #   in Loop: Header=BB43_8 Depth=2
	movq	-88(%rbp), %rdi
	movq	-104(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rsi
	callq	Faref
	movq	-64(%rbp), %rdi
	movq	-104(%rbp), %rsi
	shlq	$2, %rsi
	addq	$2, %rsi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	Faref
	movq	-168(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%cl
	movb	%cl, -153(%rbp)         # 1-byte Spill
.LBB43_10:                              # %land.end.33
                                        #   in Loop: Header=BB43_8 Depth=2
	movb	-153(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB43_11
	jmp	.LBB43_12
.LBB43_11:                              # %while.body.34
                                        #   in Loop: Header=BB43_8 Depth=2
	movq	-104(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB43_8
.LBB43_12:                              # %while.end
                                        #   in Loop: Header=BB43_5 Depth=1
	movq	-104(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jl	.LBB43_14
# BB#13:                                # %if.then.37
	jmp	.LBB43_19
.LBB43_14:                              # %if.end.38
                                        #   in Loop: Header=BB43_5 Depth=1
	jmp	.LBB43_15
.LBB43_15:                              # %if.end.39
                                        #   in Loop: Header=BB43_5 Depth=1
	movq	-80(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	Fmemq
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB43_5
.LBB43_16:                              # %while.end.42
	testb	$1, -65(%rbp)
	je	.LBB43_18
# BB#17:                                # %if.then.44
	movl	$134217728, -108(%rbp)  # imm = 0x8000000
	movq	-64(%rbp), %rdi
	callq	Flength
	sarq	$2, %rax
	subq	$1, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -120(%rbp)
	movq	-64(%rbp), %rdi
	callq	Fcopy_sequence
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	movq	-120(%rbp), %rsi
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	movslq	-108(%rbp), %rcx
	orq	%rcx, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdx
	callq	Faset
	movq	-56(%rbp), %rdi
	movq	-80(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	Fcons
	movq	-56(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	XSETCDR
	jmp	.LBB43_19
.LBB43_18:                              # %if.else
	movq	-64(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	append_key
	movq	%rax, -80(%rbp)
	movq	-56(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, %rdi
	callq	list1
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	nconc2
	movq	%rax, -200(%rbp)        # 8-byte Spill
.LBB43_19:                              # %if.end.65
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end43:
	.size	accessible_keymaps_1, .Lfunc_end43-accessible_keymaps_1
	.cfi_endproc

	.globl	Fsingle_key_description
	.align	16, 0x90
	.type	Fsingle_key_description,@function
Fsingle_key_description:                # @Fsingle_key_description
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
	subq	$208, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	$16384, -32(%rbp)       # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -40(%rbp)
	movb	$0, -41(%rbp)
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB44_3
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	lucid_event_type_list_p
	testb	$1, %al
	jne	.LBB44_2
	jmp	.LBB44_3
.LBB44_2:                               # %if.then
	movq	-16(%rbp), %rdi
	callq	Fevent_convert_list
	movq	%rax, -16(%rbp)
.LBB44_3:                               # %if.end
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB44_7
# BB#4:                                 # %land.lhs.true.9
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB44_7
# BB#5:                                 # %land.lhs.true.15
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB44_7
# BB#6:                                 # %if.then.22
	movl	$4, %esi
	leaq	-88(%rbp), %rax
	movabsq	$.L.str.9, %rcx
	movq	$2, -88(%rbp)
	movq	$-1, -80(%rbp)
	movq	$0, -72(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	Fsingle_key_description
	movq	-56(%rbp), %rsi
	movq	-16(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rdi
	movq	-24(%rbp), %rcx
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	Fsingle_key_description
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	-144(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	concat3
	movq	%rax, -8(%rbp)
	jmp	.LBB44_26
.LBB44_7:                               # %if.end.33
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB44_9
# BB#8:                                 # %cond.true
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB44_10
.LBB44_9:                               # %cond.false
	movq	-16(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
.LBB44_10:                              # %cond.end
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB44_12
# BB#11:                                # %if.then.45
	leaq	-112(%rbp), %rsi
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, %rdi
	callq	push_key_description
	movq	$-1, %rsi
	movl	$1, %ecx
	leaq	-112(%rbp), %rdi
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movb	$0, (%rax)
	movq	-120(%rbp), %rax
	subq	%rdi, %rax
	movq	%rax, %rdx
	callq	make_specified_string
	movq	%rax, -8(%rbp)
	jmp	.LBB44_26
.LBB44_12:                              # %if.else
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB44_23
# BB#13:                                # %if.then.54
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB44_22
# BB#14:                                # %if.then.58
	movq	-16(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SBYTES
	addq	$3, %rax
	cmpq	-32(%rbp), %rax
	ja	.LBB44_16
# BB#15:                                # %cond.true.63
	movq	-16(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SBYTES
	addq	$3, %rax
	movq	-32(%rbp), %rdi
	subq	%rax, %rdi
	movq	%rdi, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SBYTES
	addq	$18, %rax
	andq	$-16, %rax
	movq	%rsp, %rdi
	subq	%rax, %rdi
	movq	%rdi, %rsp
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	jmp	.LBB44_17
.LBB44_16:                              # %cond.false.71
	movb	$1, -41(%rbp)
	movq	-16(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SBYTES
	addq	$3, %rax
	movq	%rax, %rdi
	callq	record_xmalloc
	movq	%rax, -176(%rbp)        # 8-byte Spill
.LBB44_17:                              # %cond.end.76
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SDATA
	movabsq	$.L.str.10, %rsi
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	esprintf
	movq	-136(%rbp), %rdi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	build_string
	movq	%rax, -128(%rbp)
# BB#18:                                # %do.body
	testb	$1, -41(%rbp)
	je	.LBB44_20
# BB#19:                                # %if.then.82
	xorl	%edi, %edi
	movb	$0, -41(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -208(%rbp)        # 8-byte Spill
.LBB44_20:                              # %if.end.85
	jmp	.LBB44_21
.LBB44_21:                              # %do.end
	movq	-128(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_26
.LBB44_22:                              # %if.else.86
	movq	-16(%rbp), %rdi
	callq	Fsymbol_name
	movq	%rax, -8(%rbp)
	jmp	.LBB44_26
.LBB44_23:                              # %if.else.88
	movq	-16(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB44_24
	jmp	.LBB44_25
.LBB44_24:                              # %if.then.90
	movq	-16(%rbp), %rdi
	callq	Fcopy_sequence
	movq	%rax, -8(%rbp)
	jmp	.LBB44_26
.LBB44_25:                              # %if.else.92
	movabsq	$.L.str.11, %rdi
	movb	$0, %al
	callq	error
.LBB44_26:                              # %return
	movq	-8(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end44:
	.size	Fsingle_key_description, .Lfunc_end44-Fsingle_key_description
	.cfi_endproc

	.globl	push_key_description
	.align	16, 0x90
	.type	push_key_description,@function
push_key_description:                   # @push_key_description
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	andq	$268435455, %rsi        # imm = 0xFFFFFFF
	movl	%esi, %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	andl	$-264241153, %eax       # imm = 0xFFFFFFFFF03FFFFF
	movl	%eax, -32(%rbp)
	movslq	-32(%rbp), %rsi
	shlq	$2, %rsi
	addq	$2, %rsi
	movq	%rsi, %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB45_1
	jmp	.LBB45_2
.LBB45_1:                               # %land.lhs.true
	movslq	-32(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jle	.LBB45_3
.LBB45_2:                               # %if.then
	movabsq	$.L.str.8, %rsi
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %edx
	movb	$0, %al
	callq	sprintf
	movq	-24(%rbp), %rsi
	movslq	%eax, %rdi
	addq	%rdi, %rsi
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rsi, -8(%rbp)
	jmp	.LBB45_66
.LBB45_3:                               # %if.end
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$9, -32(%rbp)
	movb	%cl, -34(%rbp)          # 1-byte Spill
	jne	.LBB45_5
# BB#4:                                 # %land.rhs
	movl	-28(%rbp), %eax
	andl	$134217728, %eax        # imm = 0x8000000
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -34(%rbp)          # 1-byte Spill
.LBB45_5:                               # %land.end
	movb	-34(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movb	%al, -33(%rbp)
	movl	-28(%rbp), %ecx
	andl	$4194304, %ecx          # imm = 0x400000
	cmpl	$0, %ecx
	je	.LBB45_7
# BB#6:                                 # %if.then.14
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	$65, (%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	$45, (%rax)
	movl	-28(%rbp), %edx
	subl	$4194304, %edx          # imm = 0x400000
	movl	%edx, -28(%rbp)
.LBB45_7:                               # %if.end.16
	movl	-28(%rbp), %eax
	andl	$67108864, %eax         # imm = 0x4000000
	cmpl	$0, %eax
	jne	.LBB45_13
# BB#8:                                 # %lor.lhs.false
	cmpl	$32, -32(%rbp)
	jge	.LBB45_12
# BB#9:                                 # %land.lhs.true.22
	cmpl	$27, -32(%rbp)
	je	.LBB45_12
# BB#10:                                # %land.lhs.true.25
	cmpl	$9, -32(%rbp)
	je	.LBB45_12
# BB#11:                                # %land.lhs.true.28
	cmpl	$13, -32(%rbp)
	jne	.LBB45_13
.LBB45_12:                              # %lor.lhs.false.31
	testb	$1, -33(%rbp)
	je	.LBB45_14
.LBB45_13:                              # %if.then.34
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	$67, (%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	$45, (%rax)
	movl	-28(%rbp), %edx
	andl	$-67108865, %edx        # imm = 0xFFFFFFFFFBFFFFFF
	movl	%edx, -28(%rbp)
.LBB45_14:                              # %if.end.38
	movl	-28(%rbp), %eax
	andl	$16777216, %eax         # imm = 0x1000000
	cmpl	$0, %eax
	je	.LBB45_16
# BB#15:                                # %if.then.41
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	$72, (%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	$45, (%rax)
	movl	-28(%rbp), %edx
	subl	$16777216, %edx         # imm = 0x1000000
	movl	%edx, -28(%rbp)
.LBB45_16:                              # %if.end.45
	movl	-28(%rbp), %eax
	andl	$134217728, %eax        # imm = 0x8000000
	cmpl	$0, %eax
	je	.LBB45_18
# BB#17:                                # %if.then.48
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	$77, (%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	$45, (%rax)
	movl	-28(%rbp), %edx
	subl	$134217728, %edx        # imm = 0x8000000
	movl	%edx, -28(%rbp)
.LBB45_18:                              # %if.end.52
	movl	-28(%rbp), %eax
	andl	$33554432, %eax         # imm = 0x2000000
	cmpl	$0, %eax
	je	.LBB45_20
# BB#19:                                # %if.then.55
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	$83, (%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	$45, (%rax)
	movl	-28(%rbp), %edx
	subl	$33554432, %edx         # imm = 0x2000000
	movl	%edx, -28(%rbp)
.LBB45_20:                              # %if.end.59
	movl	-28(%rbp), %eax
	andl	$8388608, %eax          # imm = 0x800000
	cmpl	$0, %eax
	je	.LBB45_22
# BB#21:                                # %if.then.62
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	$115, (%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	$45, (%rax)
	movl	-28(%rbp), %edx
	subl	$8388608, %edx          # imm = 0x800000
	movl	%edx, -28(%rbp)
.LBB45_22:                              # %if.end.66
	cmpl	$32, -28(%rbp)
	jge	.LBB45_40
# BB#23:                                # %if.then.69
	cmpl	$27, -28(%rbp)
	jne	.LBB45_25
# BB#24:                                # %if.then.72
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	$69, (%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	$83, (%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	$67, (%rax)
	jmp	.LBB45_39
.LBB45_25:                              # %if.else
	testb	$1, -33(%rbp)
	je	.LBB45_27
# BB#26:                                # %if.then.77
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	$105, (%rax)
	jmp	.LBB45_38
.LBB45_27:                              # %if.else.79
	cmpl	$9, -28(%rbp)
	jne	.LBB45_29
# BB#28:                                # %if.then.82
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	$84, (%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	$65, (%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	$66, (%rax)
	jmp	.LBB45_37
.LBB45_29:                              # %if.else.86
	cmpl	$13, -28(%rbp)
	jne	.LBB45_31
# BB#30:                                # %if.then.89
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	$82, (%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	$69, (%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	$84, (%rax)
	jmp	.LBB45_36
.LBB45_31:                              # %if.else.93
	cmpl	$0, -28(%rbp)
	jle	.LBB45_34
# BB#32:                                # %land.lhs.true.96
	cmpl	$26, -28(%rbp)
	jg	.LBB45_34
# BB#33:                                # %if.then.99
	movl	-28(%rbp), %eax
	addl	$96, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -24(%rbp)
	movb	%cl, (%rdx)
	jmp	.LBB45_35
.LBB45_34:                              # %if.else.103
	movl	-28(%rbp), %eax
	addl	$64, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -24(%rbp)
	movb	%cl, (%rdx)
.LBB45_35:                              # %if.end.107
	jmp	.LBB45_36
.LBB45_36:                              # %if.end.108
	jmp	.LBB45_37
.LBB45_37:                              # %if.end.109
	jmp	.LBB45_38
.LBB45_38:                              # %if.end.110
	jmp	.LBB45_39
.LBB45_39:                              # %if.end.111
	jmp	.LBB45_65
.LBB45_40:                              # %if.else.112
	cmpl	$127, -28(%rbp)
	jne	.LBB45_42
# BB#41:                                # %if.then.115
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	$68, (%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	$69, (%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	$76, (%rax)
	jmp	.LBB45_64
.LBB45_42:                              # %if.else.119
	cmpl	$32, -28(%rbp)
	jne	.LBB45_44
# BB#43:                                # %if.then.122
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	$83, (%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	$80, (%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	$67, (%rax)
	jmp	.LBB45_63
.LBB45_44:                              # %if.else.126
	cmpl	$128, -28(%rbp)
	jge	.LBB45_46
# BB#45:                                # %if.then.129
	movl	-28(%rbp), %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -24(%rbp)
	movb	%cl, (%rdx)
	jmp	.LBB45_62
.LBB45_46:                              # %if.else.132
	movb	$1, %al
	testb	$1, %al
	jne	.LBB45_47
	jmp	.LBB45_48
.LBB45_47:                              # %cond.true
	movl	-28(%rbp), %eax
	addl	$0, %eax
	cmpl	$127, %eax
	jbe	.LBB45_49
	jmp	.LBB45_50
.LBB45_48:                              # %cond.false
	movslq	-28(%rbp), %rax
	addq	$0, %rax
	cmpq	$127, %rax
	ja	.LBB45_50
.LBB45_49:                              # %cond.true.140
	movl	$1, %eax
	movl	-28(%rbp), %ecx
	movb	%cl, %dl
	movq	-24(%rbp), %rsi
	movb	%dl, (%rsi)
	movl	%eax, -40(%rbp)         # 4-byte Spill
	jmp	.LBB45_61
.LBB45_50:                              # %cond.false.142
	movb	$1, %al
	testb	$1, %al
	jne	.LBB45_51
	jmp	.LBB45_52
.LBB45_51:                              # %cond.true.143
	movl	-28(%rbp), %eax
	addl	$0, %eax
	cmpl	$2047, %eax             # imm = 0x7FF
	jbe	.LBB45_53
	jmp	.LBB45_54
.LBB45_52:                              # %cond.false.147
	movslq	-28(%rbp), %rax
	addq	$0, %rax
	cmpq	$2047, %rax             # imm = 0x7FF
	ja	.LBB45_54
.LBB45_53:                              # %cond.true.152
	movl	$2, %eax
	movl	-28(%rbp), %ecx
	sarl	$6, %ecx
	orl	$192, %ecx
	movb	%cl, %dl
	movq	-24(%rbp), %rsi
	movb	%dl, (%rsi)
	movl	-28(%rbp), %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movq	-24(%rbp), %rsi
	movb	%dl, 1(%rsi)
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB45_60
.LBB45_54:                              # %cond.false.160
	movb	$1, %al
	testb	$1, %al
	jne	.LBB45_55
	jmp	.LBB45_56
.LBB45_55:                              # %cond.true.161
	movl	-28(%rbp), %eax
	addl	$0, %eax
	cmpl	$65535, %eax            # imm = 0xFFFF
	jbe	.LBB45_57
	jmp	.LBB45_58
.LBB45_56:                              # %cond.false.165
	movslq	-28(%rbp), %rax
	addq	$0, %rax
	cmpq	$65535, %rax            # imm = 0xFFFF
	ja	.LBB45_58
.LBB45_57:                              # %cond.true.170
	movl	$3, %eax
	movl	-28(%rbp), %ecx
	sarl	$12, %ecx
	orl	$224, %ecx
	movb	%cl, %dl
	movq	-24(%rbp), %rsi
	movb	%dl, (%rsi)
	movl	-28(%rbp), %ecx
	sarl	$6, %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movq	-24(%rbp), %rsi
	movb	%dl, 1(%rsi)
	movl	-28(%rbp), %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movq	-24(%rbp), %rsi
	movb	%dl, 2(%rsi)
	movl	%eax, -48(%rbp)         # 4-byte Spill
	jmp	.LBB45_59
.LBB45_58:                              # %cond.false.184
	movl	-28(%rbp), %edi
	movq	-24(%rbp), %rsi
	callq	char_string
	movl	%eax, -48(%rbp)         # 4-byte Spill
.LBB45_59:                              # %cond.end
	movl	-48(%rbp), %eax         # 4-byte Reload
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB45_60:                              # %cond.end.186
	movl	-44(%rbp), %eax         # 4-byte Reload
	movl	%eax, -40(%rbp)         # 4-byte Spill
.LBB45_61:                              # %cond.end.188
	movl	-40(%rbp), %eax         # 4-byte Reload
	movq	-24(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -24(%rbp)
.LBB45_62:                              # %if.end.192
	jmp	.LBB45_63
.LBB45_63:                              # %if.end.193
	jmp	.LBB45_64
.LBB45_64:                              # %if.end.194
	jmp	.LBB45_65
.LBB45_65:                              # %if.end.195
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB45_66:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end45:
	.size	push_key_description, .Lfunc_end45-push_key_description
	.cfi_endproc

	.globl	Ftext_char_description
	.align	16, 0x90
	.type	Ftext_char_description,@function
Ftext_char_description:                 # @Ftext_char_description
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB46_1
	jmp	.LBB46_3
.LBB46_1:                               # %land.lhs.true
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jg	.LBB46_3
# BB#2:                                 # %cond.true
	jmp	.LBB46_4
.LBB46_3:                               # %cond.false
	movl	$260, %edi              # imm = 0x104
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB46_4:                               # %cond.end
	movb	$1, %al
	movq	-16(%rbp), %rcx
	sarq	$2, %rcx
	movl	%ecx, %edx
	movl	%edx, -28(%rbp)
	testb	$1, %al
	jne	.LBB46_5
	jmp	.LBB46_6
.LBB46_5:                               # %cond.true.3
	movl	-28(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB46_23
	jmp	.LBB46_7
.LBB46_6:                               # %cond.false.6
	movslq	-28(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jb	.LBB46_23
.LBB46_7:                               # %if.then
	movb	$1, %al
	testb	$1, %al
	jne	.LBB46_8
	jmp	.LBB46_9
.LBB46_8:                               # %cond.true.11
	movl	-28(%rbp), %eax
	addl	$0, %eax
	cmpl	$127, %eax
	jbe	.LBB46_10
	jmp	.LBB46_11
.LBB46_9:                               # %cond.false.15
	movslq	-28(%rbp), %rax
	addq	$0, %rax
	cmpq	$127, %rax
	ja	.LBB46_11
.LBB46_10:                              # %cond.true.20
	movl	$1, %eax
	movl	-28(%rbp), %ecx
	movb	%cl, %dl
	movb	%dl, -22(%rbp)
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB46_22
.LBB46_11:                              # %cond.false.22
	movb	$1, %al
	testb	$1, %al
	jne	.LBB46_12
	jmp	.LBB46_13
.LBB46_12:                              # %cond.true.23
	movl	-28(%rbp), %eax
	addl	$0, %eax
	cmpl	$2047, %eax             # imm = 0x7FF
	jbe	.LBB46_14
	jmp	.LBB46_15
.LBB46_13:                              # %cond.false.27
	movslq	-28(%rbp), %rax
	addq	$0, %rax
	cmpq	$2047, %rax             # imm = 0x7FF
	ja	.LBB46_15
.LBB46_14:                              # %cond.true.32
	movl	$2, %eax
	movl	-28(%rbp), %ecx
	sarl	$6, %ecx
	orl	$192, %ecx
	movb	%cl, %dl
	movb	%dl, -22(%rbp)
	movl	-28(%rbp), %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movb	%dl, -21(%rbp)
	movl	%eax, -48(%rbp)         # 4-byte Spill
	jmp	.LBB46_21
.LBB46_15:                              # %cond.false.41
	movb	$1, %al
	testb	$1, %al
	jne	.LBB46_16
	jmp	.LBB46_17
.LBB46_16:                              # %cond.true.42
	movl	-28(%rbp), %eax
	addl	$0, %eax
	cmpl	$65535, %eax            # imm = 0xFFFF
	jbe	.LBB46_18
	jmp	.LBB46_19
.LBB46_17:                              # %cond.false.46
	movslq	-28(%rbp), %rax
	addq	$0, %rax
	cmpq	$65535, %rax            # imm = 0xFFFF
	ja	.LBB46_19
.LBB46_18:                              # %cond.true.51
	movl	$3, %eax
	movl	-28(%rbp), %ecx
	sarl	$12, %ecx
	orl	$224, %ecx
	movb	%cl, %dl
	movb	%dl, -22(%rbp)
	movl	-28(%rbp), %ecx
	sarl	$6, %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movb	%dl, -21(%rbp)
	movl	-28(%rbp), %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movb	%dl, -20(%rbp)
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB46_20
.LBB46_19:                              # %cond.false.68
	leaq	-22(%rbp), %rsi
	movl	-28(%rbp), %edi
	callq	char_string
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB46_20:                              # %cond.end.71
	movl	-52(%rbp), %eax         # 4-byte Reload
	movl	%eax, -48(%rbp)         # 4-byte Spill
.LBB46_21:                              # %cond.end.72
	movl	-48(%rbp), %eax         # 4-byte Reload
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB46_22:                              # %cond.end.74
	movl	-44(%rbp), %eax         # 4-byte Reload
	movl	$1, %ecx
	movl	%ecx, %esi
	leaq	-22(%rbp), %rdi
	movl	%eax, -32(%rbp)
	movslq	-32(%rbp), %rdx
	callq	make_multibyte_string
	movq	%rax, -8(%rbp)
	jmp	.LBB46_24
.LBB46_23:                              # %if.end
	leaq	-22(%rbp), %rsi
	movl	-28(%rbp), %eax
	andl	$255, %eax
	movl	%eax, %edi
	callq	push_text_char_description
	leaq	-22(%rbp), %rdi
	movb	$0, (%rax)
	callq	build_string
	movq	%rax, -8(%rbp)
.LBB46_24:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end46:
	.size	Ftext_char_description, .Lfunc_end46-Ftext_char_description
	.cfi_endproc

	.align	16, 0x90
	.type	push_text_char_description,@function
push_text_char_description:             # @push_text_char_description
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
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	cmpl	$128, -4(%rbp)
	jb	.LBB47_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	$77, (%rax)
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	$45, (%rax)
	movl	-4(%rbp), %edx
	subl	$128, %edx
	movl	%edx, -4(%rbp)
.LBB47_2:                               # %if.end
	cmpl	$32, -4(%rbp)
	jae	.LBB47_4
# BB#3:                                 # %if.then.3
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	$94, (%rax)
	movl	-4(%rbp), %edx
	addl	$64, %edx
	movb	%dl, %sil
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	%sil, (%rax)
	jmp	.LBB47_8
.LBB47_4:                               # %if.else
	cmpl	$127, -4(%rbp)
	jne	.LBB47_6
# BB#5:                                 # %if.then.8
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	$94, (%rax)
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	$63, (%rax)
	jmp	.LBB47_7
.LBB47_6:                               # %if.else.11
	movl	-4(%rbp), %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -16(%rbp)
	movb	%cl, (%rdx)
.LBB47_7:                               # %if.end.14
	jmp	.LBB47_8
.LBB47_8:                               # %if.end.15
	movq	-16(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end47:
	.size	push_text_char_description, .Lfunc_end47-push_text_char_description
	.cfi_endproc

	.globl	Fwhere_is_internal
	.align	16, 0x90
	.type	Fwhere_is_internal,@function
Fwhere_is_internal:                     # @Fwhere_is_internal
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
	subq	$448, %rsp              # imm = 0x1C0
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movb	%dil, %r9b
	movq	-152(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	movb	%r9b, -153(%rbp)        # 1-byte Spill
	je	.LBB48_2
# BB#1:                                 # %land.rhs
	movl	$705, %edi              # imm = 0x2C1
	movq	-32(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	movb	%dl, -153(%rbp)         # 1-byte Spill
.LBB48_2:                               # %land.end
	movb	-153(%rbp), %al         # 1-byte Reload
	xorl	%edi, %edi
	andb	$1, %al
	movb	%al, -73(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -88(%rbp)
	movb	$0, -89(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -104(%rbp)
	movq	globals+2608, %rdi
	callq	parse_solitary_modifier
	movl	%eax, where_is_preferred_modifier
	movq	-24(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$3, %eax
	jne	.LBB48_5
# BB#3:                                 # %land.lhs.true
	xorl	%eax, %eax
	movq	-24(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	get_keymap
	xorl	%edi, %edi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB48_5
# BB#4:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB48_9
.LBB48_5:                               # %if.else
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB48_7
# BB#6:                                 # %if.then.17
	movq	-24(%rbp), %rdi
	movq	current_global_map, %rsi
	callq	list2
	movq	%rax, -56(%rbp)
	jmp	.LBB48_8
.LBB48_7:                               # %if.else.19
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcurrent_active_maps
	movq	%rax, -56(%rbp)
.LBB48_8:                               # %if.end
	jmp	.LBB48_9
.LBB48_9:                               # %if.end.23
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rdx
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcommand_remapping
	xorl	%edi, %edi
	movq	%rax, -104(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB48_12
# BB#10:                                # %land.lhs.true.29
	xorl	%edi, %edi
	movq	-104(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB48_12
# BB#11:                                # %if.then.33
	movq	-104(%rbp), %rax
	movq	%rax, -16(%rbp)
.LBB48_12:                              # %if.end.34
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB48_24
# BB#13:                                # %land.lhs.true.39
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB48_24
# BB#14:                                # %land.lhs.true.43
	movl	$6, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget
	xorl	%edi, %edi
	movq	%rax, -104(%rbp)
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-240(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB48_24
# BB#15:                                # %if.then.49
	jmp	.LBB48_16
.LBB48_16:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-104(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB48_21
# BB#17:                                # %while.body
                                        #   in Loop: Header=BB48_16 Depth=1
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	-104(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rsi
	movq	%rsi, -248(%rbp)        # 8-byte Spill
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%ecx, %ecx
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	-248(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	shadow_lookup
	cmpq	-16(%rbp), %rax
	jne	.LBB48_19
# BB#18:                                # %if.then.60
	movq	-104(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB48_63
.LBB48_19:                              # %if.else.63
                                        #   in Loop: Header=BB48_16 Depth=1
	movq	-104(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)
# BB#20:                                # %if.end.65
                                        #   in Loop: Header=BB48_16 Depth=1
	jmp	.LBB48_16
.LBB48_21:                              # %while.end
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	-104(%rbp), %rsi
	movq	%rsi, -264(%rbp)        # 8-byte Spill
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%ecx, %ecx
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	-264(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	shadow_lookup
	cmpq	-16(%rbp), %rax
	jne	.LBB48_23
# BB#22:                                # %if.then.70
	movq	-104(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB48_63
.LBB48_23:                              # %if.end.71
	jmp	.LBB48_24
.LBB48_24:                              # %if.end.72
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	-56(%rbp), %rsi
	movq	-40(%rbp), %rcx
	movq	%rcx, -280(%rbp)        # 8-byte Spill
	movq	%rax, -288(%rbp)        # 8-byte Spill
	movq	%rsi, -296(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-280(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	movb	-73(%rbp), %r8b
	movzbl	%dl, %edi
	andl	$1, %edi
	movzbl	%r8b, %r9d
	andl	$1, %r9d
	movq	-288(%rbp), %rax        # 8-byte Reload
	movl	%edi, -300(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	movq	-296(%rbp), %rsi        # 8-byte Reload
	movl	-300(%rbp), %edx        # 4-byte Reload
	movl	%r9d, %ecx
	callq	where_is_internal
	movq	%rax, %rdi
	callq	Freverse
	movq	%rax, -64(%rbp)
.LBB48_25:                              # %while.cond.79
                                        # =>This Inner Loop Header: Depth=1
	movb	$1, %al
	movq	-64(%rbp), %rcx
	andq	$7, %rcx
	movl	%ecx, %edx
	cmpl	$3, %edx
	movb	%al, -301(%rbp)         # 1-byte Spill
	je	.LBB48_29
# BB#26:                                # %lor.rhs
                                        #   in Loop: Header=BB48_25 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, -89(%rbp)
	movb	%cl, -302(%rbp)         # 1-byte Spill
	jne	.LBB48_28
# BB#27:                                # %land.rhs.85
                                        #   in Loop: Header=BB48_25 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, -64(%rbp)
	movb	$1, -89(%rbp)
	movq	-64(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	sete	%dl
	movb	%dl, -302(%rbp)         # 1-byte Spill
.LBB48_28:                              # %land.end.90
                                        #   in Loop: Header=BB48_25 Depth=1
	movb	-302(%rbp), %al         # 1-byte Reload
	movb	%al, -301(%rbp)         # 1-byte Spill
.LBB48_29:                              # %lor.end
                                        #   in Loop: Header=BB48_25 Depth=1
	movb	-301(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB48_30
	jmp	.LBB48_52
.LBB48_30:                              # %while.body.91
                                        #   in Loop: Header=BB48_25 Depth=1
	xorl	%edi, %edi
	movq	-64(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-64(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	-112(%rbp), %rsi
	movq	%rsi, -312(%rbp)        # 8-byte Spill
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movb	-89(%rbp), %cl
	andb	$1, %cl
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	-312(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movzbl	%cl, %ecx
	callq	shadow_lookup
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fequal
	xorl	%edi, %edi
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-328(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB48_32
# BB#31:                                # %if.then.104
                                        #   in Loop: Header=BB48_25 Depth=1
	jmp	.LBB48_25
.LBB48_32:                              # %if.end.105
                                        #   in Loop: Header=BB48_25 Depth=1
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-336(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB48_39
# BB#33:                                # %land.lhs.true.109
                                        #   in Loop: Header=BB48_25 Depth=1
	testb	$1, -89(%rbp)
	jne	.LBB48_39
# BB#34:                                # %land.lhs.true.111
                                        #   in Loop: Header=BB48_25 Depth=1
	movq	-112(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB48_35
	jmp	.LBB48_39
.LBB48_35:                              # %land.lhs.true.114
                                        #   in Loop: Header=BB48_25 Depth=1
	movq	-112(%rbp), %rdi
	callq	ASIZE
	cmpq	$2, %rax
	jne	.LBB48_39
# BB#36:                                # %land.lhs.true.118
                                        #   in Loop: Header=BB48_25 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-112(%rbp), %rdi
	callq	AREF
	movl	$805, %edi              # imm = 0x325
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-344(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB48_39
# BB#37:                                # %land.lhs.true.123
                                        #   in Loop: Header=BB48_25 Depth=1
	movl	$1, %eax
	movl	%eax, %esi
	movq	-112(%rbp), %rdi
	callq	AREF
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB48_39
# BB#38:                                # %if.then.129
                                        #   in Loop: Header=BB48_25 Depth=1
	xorl	%edi, %edi
	movq	-120(%rbp), %rax
	movq	-56(%rbp), %rsi
	movq	-40(%rbp), %rcx
	movq	%rcx, -352(%rbp)        # 8-byte Spill
	movq	%rax, -360(%rbp)        # 8-byte Spill
	movq	%rsi, -368(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-352(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	movb	-73(%rbp), %r8b
	movzbl	%dl, %edi
	andl	$1, %edi
	movzbl	%r8b, %r9d
	andl	$1, %r9d
	movq	-360(%rbp), %rax        # 8-byte Reload
	movl	%edi, -372(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	movq	-368(%rbp), %rsi        # 8-byte Reload
	movl	-372(%rbp), %edx        # 4-byte Reload
	movl	%r9d, %ecx
	callq	where_is_internal
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rdi
	callq	Freverse
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	nconc2
	movq	%rax, -88(%rbp)
	jmp	.LBB48_25
.LBB48_39:                              # %if.end.138
                                        #   in Loop: Header=BB48_25 Depth=1
	xorl	%edi, %edi
	movq	-112(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-384(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB48_43
# BB#40:                                # %if.then.142
                                        #   in Loop: Header=BB48_25 Depth=1
	movq	-112(%rbp), %rdi
	movq	-112(%rbp), %rax
	movq	%rdi, -392(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	ASIZE
	subq	$1, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Faref
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB48_41
	jmp	.LBB48_42
.LBB48_41:                              # %if.then.147
                                        #   in Loop: Header=BB48_25 Depth=1
	movq	-112(%rbp), %rdi
	movq	-112(%rbp), %rax
	movq	%rdi, -400(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	ASIZE
	movabsq	$.L.str.12, %rdi
	subq	$1, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	build_string
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	-408(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Faset
	movq	%rax, -416(%rbp)        # 8-byte Spill
.LBB48_42:                              # %if.end.154
                                        #   in Loop: Header=BB48_25 Depth=1
	jmp	.LBB48_43
.LBB48_43:                              # %if.end.155
                                        #   in Loop: Header=BB48_25 Depth=1
	movq	-112(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	Fmember
	xorl	%edi, %edi
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-424(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB48_45
# BB#44:                                # %if.then.160
                                        #   in Loop: Header=BB48_25 Depth=1
	movq	-112(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	Fcons
	movq	%rax, -72(%rbp)
.LBB48_45:                              # %if.end.162
                                        #   in Loop: Header=BB48_25 Depth=1
	movl	$705, %edi              # imm = 0x2C1
	movq	-32(%rbp), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-432(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB48_47
# BB#46:                                # %if.then.166
	movq	-112(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB48_63
.LBB48_47:                              # %if.else.167
                                        #   in Loop: Header=BB48_25 Depth=1
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-440(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB48_50
# BB#48:                                # %land.lhs.true.171
                                        #   in Loop: Header=BB48_25 Depth=1
	movq	-112(%rbp), %rdi
	callq	preferred_sequence_p
	movl	$2, %ecx
	cmpl	%eax, %ecx
	jne	.LBB48_50
# BB#49:                                # %if.then.175
	movq	-112(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB48_63
.LBB48_50:                              # %if.end.176
                                        #   in Loop: Header=BB48_25 Depth=1
	jmp	.LBB48_51
.LBB48_51:                              # %if.end.177
                                        #   in Loop: Header=BB48_25 Depth=1
	jmp	.LBB48_25
.LBB48_52:                              # %while.end.178
	movq	-72(%rbp), %rdi
	callq	Fnreverse
	xorl	%edi, %edi
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-448(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB48_54
# BB#53:                                # %if.then.183
	movq	-72(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB48_63
.LBB48_54:                              # %if.else.184
	cmpl	$0, where_is_preferred_modifier
	jne	.LBB48_56
# BB#55:                                # %if.then.187
	movq	-72(%rbp), %rdi
	callq	Fcar
	movq	%rax, -8(%rbp)
	jmp	.LBB48_63
.LBB48_56:                              # %if.else.189
	movq	-72(%rbp), %rax
	movq	%rax, -144(%rbp)
.LBB48_57:                              # %while.cond.190
                                        # =>This Inner Loop Header: Depth=1
	movq	-144(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB48_62
# BB#58:                                # %while.body.195
                                        #   in Loop: Header=BB48_57 Depth=1
	movq	-144(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	preferred_sequence_p
	cmpl	$0, %eax
	je	.LBB48_60
# BB#59:                                # %if.then.200
	movq	-144(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB48_63
.LBB48_60:                              # %if.else.203
                                        #   in Loop: Header=BB48_57 Depth=1
	movq	-144(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -144(%rbp)
# BB#61:                                # %if.end.207
                                        #   in Loop: Header=BB48_57 Depth=1
	jmp	.LBB48_57
.LBB48_62:                              # %while.end.208
	movq	-72(%rbp), %rdi
	callq	Fcar
	movq	%rax, -8(%rbp)
.LBB48_63:                              # %return
	movq	-8(%rbp), %rax
	addq	$448, %rsp              # imm = 0x1C0
	popq	%rbp
	retq
.Lfunc_end48:
	.size	Fwhere_is_internal, .Lfunc_end48-Fwhere_is_internal
	.cfi_endproc

	.align	16, 0x90
	.type	shadow_lookup,@function
shadow_lookup:                          # @shadow_lookup
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
	subq	$112, %rsp
	movb	%cl, %al
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	andb	$1, %al
	movb	%al, -33(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -48(%rbp)
.LBB49_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB49_15
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB49_1 Depth=1
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	Flookup_key
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB49_3
	jmp	.LBB49_6
.LBB49_3:                               # %if.then
                                        #   in Loop: Header=BB49_1 Depth=1
	movl	$2, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rdi
	movq	-24(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	callq	Fsubstring
	movq	-32(%rbp), %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Flookup_key
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB49_5
# BB#4:                                 # %if.then.10
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB49_16
.LBB49_5:                               # %if.end
                                        #   in Loop: Header=BB49_1 Depth=1
	jmp	.LBB49_13
.LBB49_6:                               # %if.else
                                        #   in Loop: Header=BB49_1 Depth=1
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB49_12
# BB#7:                                 # %if.then.15
	testb	$1, -33(%rbp)
	je	.LBB49_11
# BB#8:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB49_11
# BB#9:                                 # %land.lhs.true.21
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcommand_remapping
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	sete	%cl
	xorb	$-1, %cl
	testb	$1, %cl
	jne	.LBB49_10
	jmp	.LBB49_11
.LBB49_10:                              # %if.then.27
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB49_16
.LBB49_11:                              # %if.else.28
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB49_16
.LBB49_12:                              # %if.end.29
                                        #   in Loop: Header=BB49_1 Depth=1
	jmp	.LBB49_13
.LBB49_13:                              # %if.end.30
                                        #   in Loop: Header=BB49_1 Depth=1
	jmp	.LBB49_14
.LBB49_14:                              # %for.inc
                                        #   in Loop: Header=BB49_1 Depth=1
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB49_1
.LBB49_15:                              # %for.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB49_16:                              # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end49:
	.size	shadow_lookup, .Lfunc_end49-shadow_lookup
	.cfi_endproc

	.align	16, 0x90
	.type	where_is_internal,@function
where_is_internal:                      # @where_is_internal
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
	subq	$240, %rsp
	movb	%cl, %al
	movb	%dl, %r8b
	xorl	%ecx, %ecx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	andb	$1, %r8b
	movb	%r8b, -25(%rbp)
	andb	$1, %al
	movb	%al, -26(%rbp)
	movl	%ecx, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -40(%rbp)
	testb	$1, -26(%rbp)
	je	.LBB50_8
# BB#1:                                 # %land.lhs.true
	testb	$1, -25(%rbp)
	jne	.LBB50_8
# BB#2:                                 # %if.then
	movq	-24(%rbp), %rdi
	movq	where_is_cache_keymaps, %rsi
	callq	Fequal
	xorl	%edi, %edi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB50_4
# BB#3:                                 # %if.then.5
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, where_is_cache
.LBB50_4:                               # %if.end
	xorl	%edi, %edi
	movq	where_is_cache, %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB50_6
# BB#5:                                 # %if.then.9
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	callq	Fmake_hash_table
	movl	$901, %edi              # imm = 0x385
	movq	%rax, where_is_cache
	callq	builtin_lisp_symbol
	movq	%rax, where_is_cache_keymaps
	jmp	.LBB50_7
.LBB50_6:                               # %if.else
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	where_is_cache, %rsi
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	-152(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fgethash
	movq	%rax, -8(%rbp)
	jmp	.LBB50_37
.LBB50_7:                               # %if.end.14
	jmp	.LBB50_9
.LBB50_8:                               # %if.else.15
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, where_is_cache
.LBB50_9:                               # %if.end.17
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB50_10:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB50_12
# BB#11:                                # %while.body
                                        #   in Loop: Header=BB50_10 Depth=1
	movl	$1, %esi
	xorl	%edx, %edx
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	get_keymap
	xorl	%edi, %edi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Faccessible_keymaps
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	nconc2
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB50_10
.LBB50_12:                              # %while.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -56(%rbp)
.LBB50_13:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB50_33
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB50_13 Depth=1
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	Fcar
	movq	%rax, -96(%rbp)
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	Fcdr
	movq	%rax, -104(%rbp)
	movq	-96(%rbp), %rdi
	callq	Flength
	xorl	%ecx, %ecx
	movb	%cl, %dl
	sarq	$2, %rax
	subq	$1, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	movb	%dl, -177(%rbp)         # 1-byte Spill
	jl	.LBB50_16
# BB#15:                                # %land.rhs
                                        #   in Loop: Header=BB50_13 Depth=1
	movq	-96(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	Faref
	cmpq	globals+3032, %rax
	sete	%cl
	movb	%cl, -177(%rbp)         # 1-byte Spill
.LBB50_16:                              # %land.end
                                        #   in Loop: Header=BB50_13 Depth=1
	movb	-177(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -121(%rbp)
	testb	$1, -26(%rbp)
	je	.LBB50_21
# BB#17:                                # %land.lhs.true.47
                                        #   in Loop: Header=BB50_13 Depth=1
	movq	-120(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jl	.LBB50_21
# BB#18:                                # %land.lhs.true.51
                                        #   in Loop: Header=BB50_13 Depth=1
	movl	$2, %eax
	movl	%eax, %esi
	movq	-96(%rbp), %rdi
	callq	Faref
	movq	%rax, -112(%rbp)
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB50_21
# BB#19:                                # %land.lhs.true.57
                                        #   in Loop: Header=BB50_13 Depth=1
	movq	-112(%rbp), %rdi
	callq	parse_modifiers
	subq	$3, %rax
	movq	(%rax), %rdi
	movq	Vmouse_events, %rsi
	callq	Fmemq
	xorl	%edi, %edi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB50_21
# BB#20:                                # %if.then.65
                                        #   in Loop: Header=BB50_13 Depth=1
	jmp	.LBB50_32
.LBB50_21:                              # %if.end.66
                                        #   in Loop: Header=BB50_13 Depth=1
	jmp	.LBB50_22
.LBB50_22:                              # %do.body
                                        #   in Loop: Header=BB50_13 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-200(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB50_25
# BB#23:                                # %land.lhs.true.70
                                        #   in Loop: Header=BB50_13 Depth=1
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB50_25
# BB#24:                                # %if.then.74
                                        #   in Loop: Header=BB50_13 Depth=1
	callq	process_quit_flag
	jmp	.LBB50_28
.LBB50_25:                              # %if.else.75
                                        #   in Loop: Header=BB50_13 Depth=1
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB50_27
# BB#26:                                # %if.then.77
                                        #   in Loop: Header=BB50_13 Depth=1
	callq	process_pending_signals
.LBB50_27:                              # %if.end.78
                                        #   in Loop: Header=BB50_13 Depth=1
	jmp	.LBB50_28
.LBB50_28:                              # %if.end.79
                                        #   in Loop: Header=BB50_13 Depth=1
	jmp	.LBB50_29
.LBB50_29:                              # %do.end
                                        #   in Loop: Header=BB50_13 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)
	movb	-25(%rbp), %cl
	andb	$1, %cl
	movb	%cl, -63(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -72(%rbp)
	movb	-121(%rbp), %cl
	andb	$1, %cl
	movb	%cl, -64(%rbp)
	movq	-104(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %edx
	cmpl	$3, %edx
	jne	.LBB50_31
# BB#30:                                # %if.then.93
                                        #   in Loop: Header=BB50_13 Depth=1
	xorl	%edi, %edi
	movq	-104(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$where_is_internal_1, %rsi
	xorl	%r8d, %r8d
	leaq	-88(%rbp), %rcx
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	map_keymap
.LBB50_31:                              # %if.end.95
                                        #   in Loop: Header=BB50_13 Depth=1
	jmp	.LBB50_32
.LBB50_32:                              # %for.inc
                                        #   in Loop: Header=BB50_13 Depth=1
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB50_13
.LBB50_33:                              # %for.end
	testb	$1, -26(%rbp)
	je	.LBB50_36
# BB#34:                                # %land.lhs.true.101
	testb	$1, -25(%rbp)
	jne	.LBB50_36
# BB#35:                                # %if.then.103
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, where_is_cache_keymaps
	movq	-16(%rbp), %rax
	movq	where_is_cache, %rsi
	movq	%rsi, -224(%rbp)        # 8-byte Spill
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	-224(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fgethash
	movq	%rax, -8(%rbp)
	jmp	.LBB50_37
.LBB50_36:                              # %if.else.106
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB50_37:                              # %return
	movq	-8(%rbp), %rax
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end50:
	.size	where_is_internal, .Lfunc_end50-where_is_internal
	.cfi_endproc

	.align	16, 0x90
	.type	preferred_sequence_p,@function
preferred_sequence_p:                   # @preferred_sequence_p
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	Flength
	sarq	$2, %rax
	movq	%rax, -32(%rbp)
	movl	$1, -36(%rbp)
	movq	$0, -24(%rbp)
.LBB51_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jge	.LBB51_12
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB51_1 Depth=1
	movq	-24(%rbp), %rdi
	callq	make_natnum
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	Faref
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	je	.LBB51_4
# BB#3:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB51_13
.LBB51_4:                               # %if.else
                                        #   in Loop: Header=BB51_1 Depth=1
	movq	-56(%rbp), %rax
	sarq	$2, %rax
	andq	$130023424, %rax        # imm = 0x7C00000
	movl	%eax, %ecx
	movl	%ecx, -60(%rbp)
	movl	-60(%rbp), %ecx
	cmpl	where_is_preferred_modifier, %ecx
	jne	.LBB51_6
# BB#5:                                 # %if.then.11
                                        #   in Loop: Header=BB51_1 Depth=1
	movl	$2, -36(%rbp)
	jmp	.LBB51_9
.LBB51_6:                               # %if.else.12
                                        #   in Loop: Header=BB51_1 Depth=1
	cmpl	$0, -60(%rbp)
	je	.LBB51_8
# BB#7:                                 # %if.then.13
	movl	$0, -4(%rbp)
	jmp	.LBB51_13
.LBB51_8:                               # %if.end
                                        #   in Loop: Header=BB51_1 Depth=1
	jmp	.LBB51_9
.LBB51_9:                               # %if.end.14
                                        #   in Loop: Header=BB51_1 Depth=1
	jmp	.LBB51_10
.LBB51_10:                              # %if.end.15
                                        #   in Loop: Header=BB51_1 Depth=1
	jmp	.LBB51_11
.LBB51_11:                              # %for.inc
                                        #   in Loop: Header=BB51_1 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB51_1
.LBB51_12:                              # %for.end
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB51_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end51:
	.size	preferred_sequence_p, .Lfunc_end51-preferred_sequence_p
	.cfi_endproc

	.globl	Fdescribe_buffer_bindings
	.align	16, 0x90
	.type	Fdescribe_buffer_bindings,@function
Fdescribe_buffer_bindings:              # @Fdescribe_buffer_bindings
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp156:
	.cfi_def_cfa_offset 16
.Ltmp157:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp158:
	.cfi_def_cfa_register %rbp
	subq	$528, %rsp              # imm = 0x210
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movl	%eax, %edi
	movq	%rdx, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.13, %rdx
	movq	-192(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%cl
	andb	$1, %cl
	movb	%cl, -41(%rbp)
	movq	%rdx, -64(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_BUFFER
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -40(%rbp)
	callq	Fcurrent_buffer
	movq	%rax, -32(%rbp)
	movq	current_kboard, %rax
	movq	32(%rax), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB52_1
	jmp	.LBB52_11
.LBB52_1:                               # %land.lhs.true
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-200(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB52_11
# BB#2:                                 # %if.then
	movq	current_kboard, %rax
	movq	32(%rax), %rdi
	callq	SDATA
	movq	%rax, -80(%rbp)
	movq	current_kboard, %rax
	movq	32(%rax), %rdi
	callq	SCHARS
	movl	%eax, %ecx
	movl	%ecx, -84(%rbp)
	movl	$0, -68(%rbp)
.LBB52_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-68(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jge	.LBB52_10
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB52_3 Depth=1
	movslq	-68(%rbp), %rax
	movq	-80(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	-68(%rbp), %edx
	je	.LBB52_8
# BB#5:                                 # %if.then.15
                                        #   in Loop: Header=BB52_3 Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB52_7
# BB#6:                                 # %if.then.16
                                        #   in Loop: Header=BB52_3 Depth=1
	movq	-64(%rbp), %rdi
	callq	insert_string
	movq	$0, -64(%rbp)
.LBB52_7:                               # %if.end
                                        #   in Loop: Header=BB52_3 Depth=1
	leaq	-112(%rbp), %rsi
	movslq	-68(%rbp), %rax
	movq	-80(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, %edi
	callq	push_key_description
	leaq	-112(%rbp), %rcx
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	subq	%rcx, %rax
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	insert
	movl	$66, %edx
	movl	%edx, %edi
	movl	$6, %edx
	movl	%edx, %esi
	callq	Findent_to
	leaq	-112(%rbp), %rsi
	movslq	-68(%rbp), %rdi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	push_key_description
	leaq	-112(%rbp), %rcx
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	subq	%rcx, %rax
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	insert
	movabsq	$.L.str.14, %rdi
	movl	$1, %edx
	movl	%edx, %esi
	callq	insert
	movq	current_kboard, %rax
	movq	32(%rax), %rdi
	callq	SDATA
	movq	%rax, -80(%rbp)
.LBB52_8:                               # %if.end.34
                                        #   in Loop: Header=BB52_3 Depth=1
	jmp	.LBB52_9
.LBB52_9:                               # %for.inc
                                        #   in Loop: Header=BB52_3 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB52_3
.LBB52_10:                              # %for.end
	movabsq	$.L.str.14, %rdi
	movl	$1, %eax
	movl	%eax, %esi
	callq	insert
.LBB52_11:                              # %if.end.35
	xorl	%edi, %edi
	movq	globals+1208, %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB52_13
# BB#12:                                # %if.then.39
	xorl	%edi, %edi
	movq	globals+1208, %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%esi, %esi
	movabsq	$.L.str.15, %r8
	movl	$1, %edi
	movq	-16(%rbp), %rcx
	movb	-41(%rbp), %dl
	andb	$1, %dl
	subq	$32, %rsp
	movq	-224(%rbp), %r9         # 8-byte Reload
	movl	%edi, -228(%rbp)        # 4-byte Spill
	movq	%r9, %rdi
	movb	%dl, -229(%rbp)         # 1-byte Spill
	movq	%rax, %rdx
	movb	-229(%rbp), %r10b       # 1-byte Reload
	movzbl	%r10b, %r9d
	movl	$1, (%rsp)
	movl	$0, 8(%rsp)
	movl	$0, 16(%rsp)
	callq	describe_map_tree
	addq	$32, %rsp
.LBB52_13:                              # %if.end.42
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)
	movq	current_kboard, %rax
	movq	8(%rax), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-240(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB52_15
# BB#14:                                # %if.then.47
	movq	current_kboard, %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
.LBB52_15:                              # %if.end.49
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-248(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB52_17
# BB#16:                                # %if.then.53
	movl	$1, %esi
	movabsq	$.L.str.16, %r8
	xorl	%eax, %eax
	movq	-56(%rbp), %rdi
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movb	-41(%rbp), %r9b
	andb	$1, %r9b
	subq	$32, %rsp
	movzbl	%r9b, %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	%eax, -252(%rbp)        # 4-byte Spill
	callq	describe_map_tree
	addq	$32, %rsp
	movq	-56(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	Fcons
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -56(%rbp)
	jmp	.LBB52_20
.LBB52_17:                              # %if.else
	xorl	%edi, %edi
	movq	globals+1728, %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-264(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB52_19
# BB#18:                                # %if.then.60
	movq	globals+1728, %rax
	movq	%rax, -56(%rbp)
.LBB52_19:                              # %if.end.61
	jmp	.LBB52_20
.LBB52_20:                              # %if.end.62
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-272(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB52_22
# BB#21:                                # %if.then.66
	movl	$1, %esi
	movabsq	$.L.str.16, %r8
	xorl	%eax, %eax
	movq	-56(%rbp), %rdi
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movb	-41(%rbp), %r9b
	andb	$1, %r9b
	subq	$32, %rsp
	movzbl	%r9b, %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	%eax, -276(%rbp)        # 4-byte Spill
	callq	describe_map_tree
	addq	$32, %rsp
	movq	-56(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	Fcons
	movq	%rax, -40(%rbp)
	jmp	.LBB52_55
.LBB52_22:                              # %if.else.69
	movq	-8(%rbp), %rdi
	callq	Fset_buffer
	leaq	-136(%rbp), %rdi
	leaq	-144(%rbp), %rsi
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	current_minor_maps
	movl	%eax, %ecx
	movl	%ecx, -128(%rbp)
	movq	-32(%rbp), %rdi
	callq	Fset_buffer
	movq	-8(%rbp), %rdi
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	XBUFFER
	cmpq	current_buffer, %rax
	jne	.LBB52_24
# BB#23:                                # %cond.true
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	jmp	.LBB52_28
.LBB52_24:                              # %cond.false
	movq	-8(%rbp), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	360(%rax), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-312(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB52_26
# BB#25:                                # %cond.true.81
	movq	-8(%rbp), %rdi
	callq	XBUFFER
	movq	736(%rax), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	jmp	.LBB52_27
.LBB52_26:                              # %cond.false.84
	movq	-8(%rbp), %rdi
	callq	XBUFFER
	movq	360(%rax), %rdi
	callq	marker_position
	movq	%rax, -320(%rbp)        # 8-byte Spill
.LBB52_27:                              # %cond.end
	movq	-320(%rbp), %rax        # 8-byte Reload
	movq	%rax, -304(%rbp)        # 8-byte Spill
.LBB52_28:                              # %cond.end.88
	movq	-304(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rdi
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	XBUFFER
	movl	$589, %edi              # imm = 0x24D
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	-336(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	get_local_map
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-344(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB52_30
# BB#29:                                # %if.then.96
	movl	$1, %esi
	movabsq	$.L.str.17, %r8
	xorl	%eax, %eax
	movq	-56(%rbp), %rdi
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movb	-41(%rbp), %r9b
	andb	$1, %r9b
	subq	$32, %rsp
	movzbl	%r9b, %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	%eax, -348(%rbp)        # 4-byte Spill
	callq	describe_map_tree
	addq	$32, %rsp
	movq	-56(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	Fcons
	movq	%rax, -40(%rbp)
.LBB52_30:                              # %if.end.99
	movl	$0, -124(%rbp)
.LBB52_31:                              # %for.cond.100
                                        # =>This Inner Loop Header: Depth=1
	movl	-124(%rbp), %eax
	cmpl	-128(%rbp), %eax
	jge	.LBB52_43
# BB#32:                                # %for.body.103
                                        #   in Loop: Header=BB52_31 Depth=1
	movslq	-124(%rbp), %rax
	movq	-136(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	andq	$7, %rax
	movl	%eax, %edx
	cmpl	$0, %edx
	je	.LBB52_34
# BB#33:                                # %if.then.109
	callq	emacs_abort
.LBB52_34:                              # %if.end.110
                                        #   in Loop: Header=BB52_31 Depth=1
	movq	$16384, -168(%rbp)      # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -176(%rbp)
	movb	$0, -177(%rbp)
	movslq	-124(%rbp), %rax
	movq	-136(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SBYTES
	addq	$42, %rax
	cmpq	-168(%rbp), %rax
	jg	.LBB52_36
# BB#35:                                # %cond.true.119
                                        #   in Loop: Header=BB52_31 Depth=1
	movslq	-124(%rbp), %rax
	movq	-136(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SBYTES
	addq	$42, %rax
	movq	-168(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -168(%rbp)
	movslq	-124(%rbp), %rax
	movq	-136(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SBYTES
	addq	$57, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -360(%rbp)        # 8-byte Spill
	jmp	.LBB52_37
.LBB52_36:                              # %cond.false.130
                                        #   in Loop: Header=BB52_31 Depth=1
	movb	$1, -177(%rbp)
	movslq	-124(%rbp), %rax
	movq	-136(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SBYTES
	addq	$42, %rax
	movq	%rax, %rdi
	callq	record_xmalloc
	movq	%rax, -360(%rbp)        # 8-byte Spill
.LBB52_37:                              # %cond.end.137
                                        #   in Loop: Header=BB52_31 Depth=1
	movq	-360(%rbp), %rax        # 8-byte Reload
	movq	%rax, -152(%rbp)
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -160(%rbp)
	movb	$12, (%rax)
	movq	-160(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -160(%rbp)
	movb	$10, (%rax)
	movq	-160(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -160(%rbp)
	movb	$96, (%rax)
	movq	-160(%rbp), %rdi
	movslq	-124(%rbp), %rax
	movq	-136(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rdi, -368(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SDATA
	movslq	-124(%rbp), %rcx
	movq	-136(%rbp), %rdi
	movq	(%rdi,%rcx,8), %rdi
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SBYTES
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	-376(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	memcpy
	movslq	-124(%rbp), %rax
	movq	-136(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SBYTES
	movl	$1, %esi
	xorl	%r8d, %r8d
	addq	-160(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -160(%rbp)
	movb	$39, (%rax)
	movq	-160(%rbp), %rax
	movq	.L.str.18, %rcx
	movq	%rcx, (%rax)
	movq	.L.str.18+8, %rcx
	movq	%rcx, 8(%rax)
	movl	.L.str.18+16, %r9d
	movl	%r9d, 16(%rax)
	movq	-160(%rbp), %rax
	addq	$20, %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movb	$0, (%rax)
	movslq	-124(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-152(%rbp), %rax
	movb	-41(%rbp), %r10b
	andb	$1, %r10b
	subq	$32, %rsp
	movl	%r8d, -380(%rbp)        # 4-byte Spill
	movq	%rax, %r8
	movzbl	%r10b, %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	$0, 16(%rsp)
	callq	describe_map_tree
	addq	$32, %rsp
	movslq	-124(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movq	-40(%rbp), %rsi
	callq	Fcons
	movq	%rax, -40(%rbp)
# BB#38:                                # %do.body
                                        #   in Loop: Header=BB52_31 Depth=1
	testb	$1, -177(%rbp)
	je	.LBB52_40
# BB#39:                                # %if.then.162
                                        #   in Loop: Header=BB52_31 Depth=1
	xorl	%edi, %edi
	movb	$0, -177(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -400(%rbp)        # 8-byte Spill
.LBB52_40:                              # %if.end.165
                                        #   in Loop: Header=BB52_31 Depth=1
	jmp	.LBB52_41
.LBB52_41:                              # %do.end
                                        #   in Loop: Header=BB52_31 Depth=1
	jmp	.LBB52_42
.LBB52_42:                              # %for.inc.166
                                        #   in Loop: Header=BB52_31 Depth=1
	movl	-124(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -124(%rbp)
	jmp	.LBB52_31
.LBB52_43:                              # %for.end.168
	movq	-8(%rbp), %rdi
	callq	XBUFFER
	cmpq	current_buffer, %rax
	jne	.LBB52_45
# BB#44:                                # %cond.true.172
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	jmp	.LBB52_49
.LBB52_45:                              # %cond.false.175
	movq	-8(%rbp), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	360(%rax), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-416(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB52_47
# BB#46:                                # %cond.true.181
	movq	-8(%rbp), %rdi
	callq	XBUFFER
	movq	736(%rax), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	jmp	.LBB52_48
.LBB52_47:                              # %cond.false.184
	movq	-8(%rbp), %rdi
	callq	XBUFFER
	movq	360(%rax), %rdi
	callq	marker_position
	movq	%rax, -424(%rbp)        # 8-byte Spill
.LBB52_48:                              # %cond.end.188
	movq	-424(%rbp), %rax        # 8-byte Reload
	movq	%rax, -408(%rbp)        # 8-byte Spill
.LBB52_49:                              # %cond.end.190
	movq	-408(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rdi
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	XBUFFER
	movl	$633, %edi              # imm = 0x279
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	-440(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	get_local_map
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-448(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB52_54
# BB#50:                                # %if.then.198
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	XBUFFER
	movq	-456(%rbp), %rdi        # 8-byte Reload
	cmpq	112(%rax), %rdi
	jne	.LBB52_52
# BB#51:                                # %if.then.202
	movl	$1, %esi
	movabsq	$.L.str.19, %r8
	xorl	%eax, %eax
	movq	-56(%rbp), %rdi
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movb	-41(%rbp), %r9b
	andb	$1, %r9b
	subq	$32, %rsp
	movzbl	%r9b, %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	%eax, -460(%rbp)        # 4-byte Spill
	callq	describe_map_tree
	addq	$32, %rsp
	jmp	.LBB52_53
.LBB52_52:                              # %if.else.204
	movl	$1, %esi
	movabsq	$.L.str.20, %r8
	xorl	%eax, %eax
	movq	-56(%rbp), %rdi
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movb	-41(%rbp), %r9b
	andb	$1, %r9b
	subq	$32, %rsp
	movzbl	%r9b, %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	%eax, -464(%rbp)        # 4-byte Spill
	callq	describe_map_tree
	addq	$32, %rsp
.LBB52_53:                              # %if.end.206
	movq	-56(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	Fcons
	movq	%rax, -40(%rbp)
.LBB52_54:                              # %if.end.208
	jmp	.LBB52_55
.LBB52_55:                              # %if.end.209
	movl	$1, %esi
	movabsq	$.L.str.21, %r8
	xorl	%eax, %eax
	movq	current_global_map, %rdi
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movb	-41(%rbp), %r9b
	andb	$1, %r9b
	subq	$32, %rsp
	movzbl	%r9b, %r9d
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	%eax, -468(%rbp)        # 4-byte Spill
	callq	describe_map_tree
	addq	$32, %rsp
	xorl	%edi, %edi
	movq	current_kboard, %rcx
	movq	144(%rcx), %rcx
	movq	%rcx, -480(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-480(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB52_57
# BB#56:                                # %if.then.214
	xorl	%edi, %edi
	movq	current_kboard, %rax
	movq	144(%rax), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%esi, %esi
	movabsq	$.L.str.22, %r8
	movl	$1, %edi
	movq	-16(%rbp), %rcx
	movb	-41(%rbp), %dl
	andb	$1, %dl
	subq	$32, %rsp
	movq	-488(%rbp), %r9         # 8-byte Reload
	movl	%edi, -492(%rbp)        # 4-byte Spill
	movq	%r9, %rdi
	movb	%dl, -493(%rbp)         # 1-byte Spill
	movq	%rax, %rdx
	movb	-493(%rbp), %r10b       # 1-byte Reload
	movzbl	%r10b, %r9d
	movl	$1, (%rsp)
	movl	$0, 8(%rsp)
	movl	$0, 16(%rsp)
	callq	describe_map_tree
	addq	$32, %rsp
.LBB52_57:                              # %if.end.218
	xorl	%edi, %edi
	movq	current_kboard, %rax
	movq	152(%rax), %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-504(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB52_59
# BB#58:                                # %if.then.222
	xorl	%edi, %edi
	movq	current_kboard, %rax
	movq	152(%rax), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%esi, %esi
	movabsq	$.L.str.23, %r8
	movl	$1, %edi
	movq	-16(%rbp), %rcx
	movb	-41(%rbp), %dl
	andb	$1, %dl
	subq	$32, %rsp
	movq	-512(%rbp), %r9         # 8-byte Reload
	movl	%edi, -516(%rbp)        # 4-byte Spill
	movq	%r9, %rdi
	movb	%dl, -517(%rbp)         # 1-byte Spill
	movq	%rax, %rdx
	movb	-517(%rbp), %r10b       # 1-byte Reload
	movzbl	%r10b, %r9d
	movl	$1, (%rsp)
	movl	$0, 8(%rsp)
	movl	$0, 16(%rsp)
	callq	describe_map_tree
	addq	$32, %rsp
.LBB52_59:                              # %if.end.226
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end52:
	.size	Fdescribe_buffer_bindings, .Lfunc_end52-Fdescribe_buffer_bindings
	.cfi_endproc

	.globl	describe_map_tree
	.align	16, 0x90
	.type	describe_map_tree,@function
describe_map_tree:                      # @describe_map_tree
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp159:
	.cfi_def_cfa_offset 16
.Ltmp160:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp161:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$280, %rsp              # imm = 0x118
.Ltmp162:
	.cfi_offset %rbx, -40
.Ltmp163:
	.cfi_offset %r14, -32
.Ltmp164:
	.cfi_offset %r15, -24
	movb	%r9b, %al
	movb	%sil, %r10b
	movb	32(%rbp), %r11b
	movb	24(%rbp), %bl
	movb	16(%rbp), %r14b
	movabsq	$.L.str.24, %r15
	movq	%rdi, -32(%rbp)
	andb	$1, %r10b
	movb	%r10b, -33(%rbp)
	movq	%rdx, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movq	%r8, -64(%rbp)
	andb	$1, %al
	movb	%al, -65(%rbp)
	andb	$1, %r14b
	movb	%r14b, -66(%rbp)
	andb	$1, %bl
	movb	%bl, -67(%rbp)
	andb	$1, %r11b
	movb	%r11b, -68(%rbp)
	movb	$0, -105(%rbp)
	movq	%r15, -120(%rbp)
	movq	-32(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	Faccessible_keymaps
	xorl	%edi, %edi
	movq	%rax, -80(%rbp)
	movq	%rax, -88(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -96(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -104(%rbp)
	testb	$1, -65(%rbp)
	je	.LBB53_10
# BB#1:                                 # %if.then
	movq	-80(%rbp), %rax
	movq	%rax, -128(%rbp)
.LBB53_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-128(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB53_9
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB53_2 Depth=1
	movq	-128(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rdi
	callq	Fcar
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rdi
	callq	ASIZE
	cmpq	$1, %rax
	jl	.LBB53_7
# BB#4:                                 # %if.then.12
                                        #   in Loop: Header=BB53_2 Depth=1
	movl	$2, %eax
	movl	%eax, %esi
	movq	-144(%rbp), %rdi
	callq	Faref
	movl	$651, %edi              # imm = 0x28B
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-200(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB53_6
# BB#5:                                 # %if.then.17
                                        #   in Loop: Header=BB53_2 Depth=1
	movq	-136(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	Fdelq
	movq	%rax, -80(%rbp)
.LBB53_6:                               # %if.end
                                        #   in Loop: Header=BB53_2 Depth=1
	jmp	.LBB53_7
.LBB53_7:                               # %if.end.19
                                        #   in Loop: Header=BB53_2 Depth=1
	jmp	.LBB53_8
.LBB53_8:                               # %for.inc
                                        #   in Loop: Header=BB53_2 Depth=1
	movq	-128(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -128(%rbp)
	jmp	.LBB53_2
.LBB53_9:                               # %for.end
	jmp	.LBB53_10
.LBB53_10:                              # %if.end.21
	xorl	%edi, %edi
	movq	-80(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB53_12
# BB#11:                                # %lor.lhs.false
	testb	$1, -67(%rbp)
	je	.LBB53_17
.LBB53_12:                              # %if.then.27
	cmpq	$0, -64(%rbp)
	je	.LBB53_16
# BB#13:                                # %if.then.29
	movq	-64(%rbp), %rdi
	callq	insert_string
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB53_15
# BB#14:                                # %if.then.33
	movabsq	$.L.str.25, %rdi
	callq	insert_string
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fkey_description
	movq	%rax, %rdi
	callq	insert1
.LBB53_15:                              # %if.end.36
	movabsq	$.L.str.26, %rdi
	callq	insert_string
.LBB53_16:                              # %if.end.37
	movq	-120(%rbp), %rdi
	callq	insert_string
	movb	$1, -105(%rbp)
.LBB53_17:                              # %if.end.38
	jmp	.LBB53_18
.LBB53_18:                              # %for.cond.39
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB53_20 Depth 2
                                        #     Child Loop BB53_37 Depth 2
	movq	-80(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB53_45
# BB#19:                                # %for.body.44
                                        #   in Loop: Header=BB53_18 Depth=1
	movq	-80(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rdi
	callq	Fcar
	xorl	%edi, %edi
	movq	%rax, -168(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -104(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -176(%rbp)
.LBB53_20:                              # %for.cond.51
                                        #   Parent Loop BB53_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-176(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB53_36
# BB#21:                                # %for.body.56
                                        #   in Loop: Header=BB53_20 Depth=2
	movq	-176(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)
	movq	-168(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB53_22
	jmp	.LBB53_23
.LBB53_22:                              # %land.lhs.true
                                        #   in Loop: Header=BB53_20 Depth=2
	movq	-168(%rbp), %rdi
	callq	SCHARS
	cmpq	$0, %rax
	je	.LBB53_25
.LBB53_23:                              # %lor.lhs.false.64
                                        #   in Loop: Header=BB53_20 Depth=2
	movq	-168(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB53_24
	jmp	.LBB53_26
.LBB53_24:                              # %land.lhs.true.67
                                        #   in Loop: Header=BB53_20 Depth=2
	movq	-168(%rbp), %rdi
	callq	ASIZE
	cmpq	$0, %rax
	jne	.LBB53_26
.LBB53_25:                              # %if.then.71
                                        #   in Loop: Header=BB53_20 Depth=2
	jmp	.LBB53_29
.LBB53_26:                              # %if.else
                                        #   in Loop: Header=BB53_20 Depth=2
	movq	-184(%rbp), %rdi
	movq	-160(%rbp), %rax
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	Fcar
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	-240(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Flookup_key
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB53_28
# BB#27:                                # %if.then.80
                                        #   in Loop: Header=BB53_20 Depth=2
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -184(%rbp)
.LBB53_28:                              # %if.end.82
                                        #   in Loop: Header=BB53_20 Depth=2
	jmp	.LBB53_29
.LBB53_29:                              # %if.end.83
                                        #   in Loop: Header=BB53_20 Depth=2
	xorl	%edi, %edi
	movq	-184(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-248(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB53_32
# BB#30:                                # %land.lhs.true.87
                                        #   in Loop: Header=BB53_20 Depth=2
	xorl	%eax, %eax
	movq	-184(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	get_keymap
	xorl	%edi, %edi
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-256(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB53_32
# BB#31:                                # %if.then.92
                                        #   in Loop: Header=BB53_18 Depth=1
	jmp	.LBB53_43
.LBB53_32:                              # %if.end.93
                                        #   in Loop: Header=BB53_20 Depth=2
	xorl	%edi, %edi
	movq	-184(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-264(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB53_34
# BB#33:                                # %if.then.97
                                        #   in Loop: Header=BB53_20 Depth=2
	movq	-184(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	Fcons
	movq	%rax, -104(%rbp)
.LBB53_34:                              # %if.end.99
                                        #   in Loop: Header=BB53_20 Depth=2
	jmp	.LBB53_35
.LBB53_35:                              # %for.inc.100
                                        #   in Loop: Header=BB53_20 Depth=2
	movq	-176(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -176(%rbp)
	jmp	.LBB53_20
.LBB53_36:                              # %for.end.104
                                        #   in Loop: Header=BB53_18 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, -176(%rbp)
.LBB53_37:                              # %for.cond.105
                                        #   Parent Loop BB53_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-176(%rbp), %rax
	cmpq	-80(%rbp), %rax
	sete	%cl
	xorb	$-1, %cl
	testb	$1, %cl
	jne	.LBB53_38
	jmp	.LBB53_42
.LBB53_38:                              # %for.body.108
                                        #   in Loop: Header=BB53_37 Depth=2
	movq	-176(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	Fcar
	movq	-168(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fequal
	xorl	%edi, %edi
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-272(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB53_40
# BB#39:                                # %if.then.117
                                        #   in Loop: Header=BB53_37 Depth=2
	movq	-176(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	movq	-104(%rbp), %rsi
	callq	Fcons
	movq	%rax, -104(%rbp)
.LBB53_40:                              # %if.end.124
                                        #   in Loop: Header=BB53_37 Depth=2
	jmp	.LBB53_41
.LBB53_41:                              # %for.inc.125
                                        #   in Loop: Header=BB53_37 Depth=2
	movq	-176(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -176(%rbp)
	jmp	.LBB53_37
.LBB53_42:                              # %for.end.129
                                        #   in Loop: Header=BB53_18 Depth=1
	movq	-160(%rbp), %rdi
	callq	Fcdr
	leaq	-96(%rbp), %r9
	movabsq	$describe_command, %rdi
	movabsq	$describe_translation, %rcx
	movq	-168(%rbp), %rsi
	movb	-66(%rbp), %dl
	testb	$1, %dl
	cmovneq	%rcx, %rdi
	movb	-33(%rbp), %dl
	movq	-104(%rbp), %r8
	movb	-65(%rbp), %r10b
	movb	-68(%rbp), %r11b
	andb	$1, %dl
	andb	$1, %r10b
	andb	$1, %r11b
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-280(%rbp), %rax        # 8-byte Reload
	movb	%dl, -281(%rbp)         # 1-byte Spill
	movq	%rax, %rdx
	movb	-281(%rbp), %bl         # 1-byte Reload
	movzbl	%bl, %ecx
	movzbl	%r10b, %r14d
	movl	%r14d, (%rsp)
	movzbl	%r11b, %r14d
	movl	%r14d, 8(%rsp)
	callq	describe_map
.LBB53_43:                              # %skip
                                        #   in Loop: Header=BB53_18 Depth=1
	jmp	.LBB53_44
.LBB53_44:                              # %for.inc.136
                                        #   in Loop: Header=BB53_18 Depth=1
	movq	-80(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB53_18
.LBB53_45:                              # %for.end.140
	testb	$1, -105(%rbp)
	je	.LBB53_47
# BB#46:                                # %if.then.142
	movabsq	$.L.str.14, %rdi
	callq	insert_string
.LBB53_47:                              # %if.end.143
	addq	$280, %rsp              # imm = 0x118
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end53:
	.size	describe_map_tree, .Lfunc_end53-describe_map_tree
	.cfi_endproc

	.align	16, 0x90
	.type	describe_map,@function
describe_map:                           # @describe_map
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp165:
	.cfi_def_cfa_offset 16
.Ltmp166:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp167:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$440, %rsp              # imm = 0x1B8
.Ltmp168:
	.cfi_offset %rbx, -40
.Ltmp169:
	.cfi_offset %r14, -32
.Ltmp170:
	.cfi_offset %r15, -24
	movb	%cl, %al
	movb	24(%rbp), %r10b
	movb	16(%rbp), %r11b
	xorl	%ecx, %ecx
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	andb	$1, %al
	movb	%al, -49(%rbp)
	movq	%r8, -64(%rbp)
	movq	%r9, -72(%rbp)
	andb	$1, %r11b
	movb	%r11b, -73(%rbp)
	andb	$1, %r10b
	movb	%r10b, -74(%rbp)
	movb	$1, -129(%rbp)
	movq	$0, -144(%rbp)
	movq	$0, -160(%rbp)
	movl	%ecx, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -120(%rbp)
	testb	$1, -49(%rbp)
	je	.LBB54_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.65, %rdi
	callq	intern
	movq	%rax, -120(%rbp)
.LBB54_2:                               # %if.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movl	$6, %edi
                                        # kill: RDI<def> EDI<kill>
	movq	%rax, %rsi
	callq	Fmake_vector
	xorl	%edi, %edi
	movq	%rax, -128(%rbp)
	callq	builtin_lisp_symbol
	movl	$590, %edi              # imm = 0x24E
	movq	%rax, -96(%rbp)
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	call1
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)
.LBB54_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-88(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB54_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB54_3 Depth=1
	movq	-144(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -144(%rbp)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB54_3 Depth=1
	movq	-88(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB54_3
.LBB54_6:                               # %for.end
	movq	$16384, -176(%rbp)      # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -184(%rbp)
	movb	$0, -185(%rbp)
# BB#7:                                 # %do.body
	movl	$24, %eax
	movl	%eax, %ecx
	movq	-144(%rbp), %rdx
	movq	-176(%rbp), %rax
	xorl	%esi, %esi
	movq	%rdx, -224(%rbp)        # 8-byte Spill
	movl	%esi, %edx
	divq	%rcx
	shrq	$0, %rax
	movq	-224(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	ja	.LBB54_9
# BB#8:                                 # %if.then.14
	movq	-144(%rbp), %rax
	shlq	$3, %rax
	leaq	(%rax,%rax,2), %rax
	movq	-176(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -176(%rbp)
	movq	-144(%rbp), %rax
	leaq	(%rax,%rax,2), %rax
	leaq	15(,%rax,8), %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -152(%rbp)
	jmp	.LBB54_10
.LBB54_9:                               # %if.else
	movl	$24, %eax
	movl	%eax, %esi
	movq	-144(%rbp), %rdi
	callq	xnmalloc
	movabsq	$xfree, %rdi
	movq	%rax, -152(%rbp)
	movb	$1, -185(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, %rsi
	callq	record_unwind_protect_ptr
.LBB54_10:                              # %if.end.18
	jmp	.LBB54_11
.LBB54_11:                              # %do.end
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)
.LBB54_12:                              # %for.cond.19
                                        # =>This Inner Loop Header: Depth=1
	movq	-88(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB54_62
# BB#13:                                # %for.body.24
                                        #   in Loop: Header=BB54_12 Depth=1
	jmp	.LBB54_14
.LBB54_14:                              # %do.body.25
                                        #   in Loop: Header=BB54_12 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-232(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB54_17
# BB#15:                                # %land.lhs.true
                                        #   in Loop: Header=BB54_12 Depth=1
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-240(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB54_17
# BB#16:                                # %if.then.32
                                        #   in Loop: Header=BB54_12 Depth=1
	callq	process_quit_flag
	jmp	.LBB54_20
.LBB54_17:                              # %if.else.33
                                        #   in Loop: Header=BB54_12 Depth=1
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB54_19
# BB#18:                                # %if.then.35
                                        #   in Loop: Header=BB54_12 Depth=1
	callq	process_pending_signals
.LBB54_19:                              # %if.end.36
                                        #   in Loop: Header=BB54_12 Depth=1
	jmp	.LBB54_20
.LBB54_20:                              # %if.end.37
                                        #   in Loop: Header=BB54_12 Depth=1
	jmp	.LBB54_21
.LBB54_21:                              # %do.end.38
                                        #   in Loop: Header=BB54_12 Depth=1
	movq	-88(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB54_23
# BB#22:                                # %lor.lhs.false
                                        #   in Loop: Header=BB54_12 Depth=1
	movq	-88(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB54_23
	jmp	.LBB54_24
.LBB54_23:                              # %if.then.46
                                        #   in Loop: Header=BB54_12 Depth=1
	xorl	%edi, %edi
	movq	-88(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rsi
	movq	%rsi, -248(%rbp)        # 8-byte Spill
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$1, %edi
	movq	-48(%rbp), %rcx
	movb	-49(%rbp), %dl
	movq	-64(%rbp), %r9
	movq	-32(%rbp), %rsi
	movb	-74(%rbp), %r8b
	andb	$1, %dl
	andb	$1, %r8b
	subq	$32, %rsp
	movq	-256(%rbp), %r10        # 8-byte Reload
	movl	%edi, -260(%rbp)        # 4-byte Spill
	movq	%r10, %rdi
	movq	-248(%rbp), %r11        # 8-byte Reload
	movq	%rsi, -272(%rbp)        # 8-byte Spill
	movq	%r11, %rsi
	movb	%dl, -273(%rbp)         # 1-byte Spill
	movq	%rax, %rdx
	movb	-273(%rbp), %bl         # 1-byte Reload
	movzbl	%bl, %r14d
	movb	%r8b, -274(%rbp)        # 1-byte Spill
	movl	%r14d, %r8d
	movq	-272(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$1, 8(%rsp)
	movb	-274(%rbp), %r15b       # 1-byte Reload
	movzbl	%r15b, %r14d
	movl	%r14d, 16(%rsp)
	callq	describe_vector
	addq	$32, %rsp
	jmp	.LBB54_60
.LBB54_24:                              # %if.else.52
                                        #   in Loop: Header=BB54_12 Depth=1
	movq	-88(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB54_53
# BB#25:                                # %if.then.59
                                        #   in Loop: Header=BB54_12 Depth=1
	movb	$0, -186(%rbp)
	movq	-88(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB54_28
# BB#26:                                # %lor.lhs.false.68
                                        #   in Loop: Header=BB54_12 Depth=1
	movq	-104(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	je	.LBB54_28
# BB#27:                                # %if.then.74
                                        #   in Loop: Header=BB54_12 Depth=1
	jmp	.LBB54_61
.LBB54_28:                              # %if.end.75
                                        #   in Loop: Header=BB54_12 Depth=1
	testb	$1, -73(%rbp)
	je	.LBB54_31
# BB#29:                                # %land.lhs.true.78
                                        #   in Loop: Header=BB54_12 Depth=1
	movl	$651, %edi              # imm = 0x28B
	movq	-104(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-288(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB54_31
# BB#30:                                # %if.then.82
                                        #   in Loop: Header=BB54_12 Depth=1
	jmp	.LBB54_61
.LBB54_31:                              # %if.end.83
                                        #   in Loop: Header=BB54_12 Depth=1
	xorl	%esi, %esi
	movq	-88(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	get_keyelt
	xorl	%edi, %edi
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-296(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB54_33
# BB#32:                                # %if.then.93
                                        #   in Loop: Header=BB54_12 Depth=1
	jmp	.LBB54_61
.LBB54_33:                              # %if.end.94
                                        #   in Loop: Header=BB54_12 Depth=1
	movq	-96(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB54_38
# BB#34:                                # %land.lhs.true.99
                                        #   in Loop: Header=BB54_12 Depth=1
	testb	$1, -49(%rbp)
	je	.LBB54_38
# BB#35:                                # %if.then.102
                                        #   in Loop: Header=BB54_12 Depth=1
	movq	-96(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	Fget
	xorl	%edi, %edi
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-304(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB54_37
# BB#36:                                # %if.then.107
                                        #   in Loop: Header=BB54_12 Depth=1
	jmp	.LBB54_61
.LBB54_37:                              # %if.end.108
                                        #   in Loop: Header=BB54_12 Depth=1
	jmp	.LBB54_38
.LBB54_38:                              # %if.end.109
                                        #   in Loop: Header=BB54_12 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-128(%rbp), %rdi
	movq	-104(%rbp), %rdx
	callq	ASET
	xorl	%edi, %edi
	movq	-64(%rbp), %rdx
	movq	%rdx, -312(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-312(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB54_50
# BB#39:                                # %if.then.113
                                        #   in Loop: Header=BB54_12 Depth=1
	movl	$901, %edi              # imm = 0x385
	movq	-64(%rbp), %rax
	movq	-128(%rbp), %rsi
	movq	%rsi, -320(%rbp)        # 8-byte Spill
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%ecx, %ecx
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	-320(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	shadow_lookup
	xorl	%edi, %edi
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-336(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB54_49
# BB#40:                                # %if.then.119
                                        #   in Loop: Header=BB54_12 Depth=1
	xorl	%eax, %eax
	movq	-96(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	get_keymap
	xorl	%edi, %edi
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-344(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB54_43
# BB#41:                                # %land.lhs.true.124
                                        #   in Loop: Header=BB54_12 Depth=1
	xorl	%eax, %eax
	movq	-112(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	get_keymap
	xorl	%edi, %edi
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-352(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB54_43
# BB#42:                                # %if.then.129
                                        #   in Loop: Header=BB54_12 Depth=1
	jmp	.LBB54_48
.LBB54_43:                              # %if.else.130
                                        #   in Loop: Header=BB54_12 Depth=1
	testb	$1, -74(%rbp)
	je	.LBB54_46
# BB#44:                                # %land.lhs.true.133
                                        #   in Loop: Header=BB54_12 Depth=1
	movq	-112(%rbp), %rax
	cmpq	-96(%rbp), %rax
	je	.LBB54_46
# BB#45:                                # %if.then.136
                                        #   in Loop: Header=BB54_12 Depth=1
	movb	$1, -186(%rbp)
	jmp	.LBB54_47
.LBB54_46:                              # %if.else.137
                                        #   in Loop: Header=BB54_12 Depth=1
	jmp	.LBB54_61
.LBB54_47:                              # %if.end.138
                                        #   in Loop: Header=BB54_12 Depth=1
	jmp	.LBB54_48
.LBB54_48:                              # %if.end.139
                                        #   in Loop: Header=BB54_12 Depth=1
	jmp	.LBB54_49
.LBB54_49:                              # %if.end.140
                                        #   in Loop: Header=BB54_12 Depth=1
	jmp	.LBB54_50
.LBB54_50:                              # %if.end.141
                                        #   in Loop: Header=BB54_12 Depth=1
	movl	$901, %edi              # imm = 0x385
	movq	-32(%rbp), %rax
	movq	-128(%rbp), %rsi
	movq	%rsi, -360(%rbp)        # 8-byte Spill
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	-360(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Flookup_key
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	cmpq	-96(%rbp), %rax
	je	.LBB54_52
# BB#51:                                # %if.then.146
                                        #   in Loop: Header=BB54_12 Depth=1
	jmp	.LBB54_61
.LBB54_52:                              # %if.end.147
                                        #   in Loop: Header=BB54_12 Depth=1
	movq	-104(%rbp), %rax
	movq	-160(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	-152(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-96(%rbp), %rax
	movq	-160(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	-152(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movb	-186(%rbp), %dl
	movq	-160(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-152(%rbp), %rax
	andb	$1, %dl
	movb	%dl, 16(%rax)
	movq	-160(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -160(%rbp)
	jmp	.LBB54_59
.LBB54_53:                              # %if.else.155
                                        #   in Loop: Header=BB54_12 Depth=1
	movl	$589, %edi              # imm = 0x24D
	movq	-88(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-376(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB54_58
# BB#54:                                # %if.then.161
                                        #   in Loop: Header=BB54_12 Depth=1
	movq	-88(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	(%rax), %rsi
	callq	Fassq
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB54_57
# BB#55:                                # %land.lhs.true.167
                                        #   in Loop: Header=BB54_12 Depth=1
	movq	-112(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rsi
	callq	Fequal
	xorl	%edi, %edi
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-384(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB54_57
# BB#56:                                # %if.then.174
	jmp	.LBB54_62
.LBB54_57:                              # %if.end.175
                                        #   in Loop: Header=BB54_12 Depth=1
	movq	-88(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	Fcons
	movq	-72(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	-72(%rbp), %rsi
	movq	%rax, (%rsi)
.LBB54_58:                              # %if.end.178
                                        #   in Loop: Header=BB54_12 Depth=1
	jmp	.LBB54_59
.LBB54_59:                              # %if.end.179
                                        #   in Loop: Header=BB54_12 Depth=1
	jmp	.LBB54_60
.LBB54_60:                              # %if.end.180
                                        #   in Loop: Header=BB54_12 Depth=1
	jmp	.LBB54_61
.LBB54_61:                              # %for.inc.181
                                        #   in Loop: Header=BB54_12 Depth=1
	movq	-88(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB54_12
.LBB54_62:                              # %for.end.185
	movl	$24, %eax
	movl	%eax, %edx
	movabsq	$describe_map_compare, %rcx
	movq	-152(%rbp), %rsi
	movq	-160(%rbp), %rdi
	movq	%rdi, -392(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-392(%rbp), %rsi        # 8-byte Reload
	callq	qsort
	movq	$0, -168(%rbp)
.LBB54_63:                              # %for.cond.186
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB54_68 Depth 2
	movq	-168(%rbp), %rax
	cmpq	-160(%rbp), %rax
	jge	.LBB54_87
# BB#64:                                # %for.body.189
                                        #   in Loop: Header=BB54_63 Depth=1
	testb	$1, -129(%rbp)
	je	.LBB54_66
# BB#65:                                # %if.then.191
                                        #   in Loop: Header=BB54_63 Depth=1
	movabsq	$.L.str.14, %rdi
	movl	$1, %eax
	movl	%eax, %esi
	movl	$0, previous_description_column
	callq	insert
	movb	$0, -129(%rbp)
.LBB54_66:                              # %if.end.192
                                        #   in Loop: Header=BB54_63 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-128(%rbp), %rdi
	movq	-168(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	-152(%rbp), %rcx
	movq	(%rcx), %rdx
	callq	ASET
	movq	-168(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	-152(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -200(%rbp)
	movq	-200(%rbp), %rcx
	movq	%rcx, -208(%rbp)
	movq	-168(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	-152(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -96(%rbp)
	movq	-168(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	-152(%rbp), %rcx
	movq	(%rcx), %rcx
	andq	$7, %rcx
	movl	%ecx, %eax
	andl	$-5, %eax
	cmpl	$2, %eax
	jne	.LBB54_75
# BB#67:                                # %if.then.206
                                        #   in Loop: Header=BB54_63 Depth=1
	jmp	.LBB54_68
.LBB54_68:                              # %while.cond
                                        #   Parent Loop BB54_63 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-168(%rbp), %rdx
	addq	$1, %rdx
	cmpq	-160(%rbp), %rdx
	movb	%cl, -393(%rbp)         # 1-byte Spill
	jge	.LBB54_72
# BB#69:                                # %land.lhs.true.209
                                        #   in Loop: Header=BB54_68 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-168(%rbp), %rdx
	addq	$1, %rdx
	imulq	$24, %rdx, %rdx
	addq	-152(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	-168(%rbp), %rsi
	imulq	$24, %rsi, %rsi
	addq	-152(%rbp), %rsi
	movq	(%rsi), %rsi
	sarq	$2, %rsi
	addq	$1, %rsi
	shlq	$2, %rsi
	addq	$2, %rsi
	cmpq	%rsi, %rdx
	movb	%cl, -393(%rbp)         # 1-byte Spill
	jne	.LBB54_72
# BB#70:                                # %land.lhs.true.219
                                        #   in Loop: Header=BB54_68 Depth=2
	movq	-168(%rbp), %rax
	addq	$1, %rax
	imulq	$24, %rax, %rax
	addq	-152(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-96(%rbp), %rsi
	callq	Fequal
	xorl	%edi, %edi
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movb	%dil, %cl
	movq	-408(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	movb	%cl, -393(%rbp)         # 1-byte Spill
	je	.LBB54_72
# BB#71:                                # %land.rhs
                                        #   in Loop: Header=BB54_68 Depth=2
	movq	-168(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-152(%rbp), %rax
	movb	16(%rax), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movq	-168(%rbp), %rax
	addq	$1, %rax
	imulq	$24, %rax, %rax
	addq	-152(%rbp), %rax
	movb	16(%rax), %cl
	andb	$1, %cl
	movzbl	%cl, %esi
	cmpl	%esi, %edx
	sete	%cl
	movb	%cl, -393(%rbp)         # 1-byte Spill
.LBB54_72:                              # %land.end
                                        #   in Loop: Header=BB54_68 Depth=2
	movb	-393(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB54_73
	jmp	.LBB54_74
.LBB54_73:                              # %while.body
                                        #   in Loop: Header=BB54_68 Depth=2
	movq	-168(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -168(%rbp)
	jmp	.LBB54_68
.LBB54_74:                              # %while.end
                                        #   in Loop: Header=BB54_63 Depth=1
	movq	-168(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -208(%rbp)
.LBB54_75:                              # %if.end.241
                                        #   in Loop: Header=BB54_63 Depth=1
	movq	-128(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	Fkey_description
	movq	%rax, %rdi
	callq	insert1
	movq	-200(%rbp), %rax
	cmpq	-208(%rbp), %rax
	je	.LBB54_77
# BB#76:                                # %if.then.245
                                        #   in Loop: Header=BB54_63 Depth=1
	movabsq	$.L.str.66, %rdi
	movl	$4, %eax
	movl	%eax, %esi
	callq	insert
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-128(%rbp), %rdi
	movq	-208(%rbp), %rdx
	callq	ASET
	movq	-128(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	Fkey_description
	movq	%rax, %rdi
	callq	insert1
.LBB54_77:                              # %if.end.247
                                        #   in Loop: Header=BB54_63 Depth=1
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	-168(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	-152(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -416(%rbp)        # 8-byte Spill
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movq	-424(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movq	-168(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-152(%rbp), %rax
	testb	$1, 16(%rax)
	je	.LBB54_85
# BB#78:                                # %if.then.254
                                        #   in Loop: Header=BB54_63 Depth=1
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	subq	$1, %rax
	cmpq	$1, %rax
	jle	.LBB54_80
# BB#79:                                # %cond.true
                                        #   in Loop: Header=BB54_63 Depth=1
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	subq	$1, %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	jmp	.LBB54_81
.LBB54_80:                              # %cond.false
                                        #   in Loop: Header=BB54_63 Depth=1
	movl	$1, %eax
	movl	%eax, %ecx
	movq	%rcx, -432(%rbp)        # 8-byte Spill
	jmp	.LBB54_81
.LBB54_81:                              # %cond.end
                                        #   in Loop: Header=BB54_63 Depth=1
	movq	-432(%rbp), %rax        # 8-byte Reload
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %rdi
	callq	set_point
	movabsq	$.L.str.67, %rdi
	callq	insert_string
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	addq	$1, %rax
	movq	current_buffer, %rdi
	movq	720(%rdi), %rdi
	cmpq	16(%rdi), %rax
	jge	.LBB54_83
# BB#82:                                # %cond.true.268
                                        #   in Loop: Header=BB54_63 Depth=1
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	addq	$1, %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	jmp	.LBB54_84
.LBB54_83:                              # %cond.false.272
                                        #   in Loop: Header=BB54_63 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
.LBB54_84:                              # %cond.end.275
                                        #   in Loop: Header=BB54_63 Depth=1
	movq	-440(%rbp), %rax        # 8-byte Reload
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %rdi
	callq	set_point
.LBB54_85:                              # %if.end.277
                                        #   in Loop: Header=BB54_63 Depth=1
	jmp	.LBB54_86
.LBB54_86:                              # %for.inc.278
                                        #   in Loop: Header=BB54_63 Depth=1
	movq	-168(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -168(%rbp)
	jmp	.LBB54_63
.LBB54_87:                              # %for.end.280
	jmp	.LBB54_88
.LBB54_88:                              # %do.body.281
	testb	$1, -185(%rbp)
	je	.LBB54_90
# BB#89:                                # %if.then.283
	xorl	%edi, %edi
	movb	$0, -185(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -456(%rbp)        # 8-byte Spill
.LBB54_90:                              # %if.end.286
	jmp	.LBB54_91
.LBB54_91:                              # %do.end.287
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end54:
	.size	describe_map, .Lfunc_end54-describe_map
	.cfi_endproc

	.align	16, 0x90
	.type	describe_translation,@function
describe_translation:                   # @describe_translation
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp171:
	.cfi_def_cfa_offset 16
.Ltmp172:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp173:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$66, %eax
	movl	%eax, %ecx
	movl	$6, %eax
	movl	%eax, %edx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	callq	Findent_to
	movq	-8(%rbp), %rcx
	andq	$7, %rcx
	movl	%ecx, %r8d
	cmpl	$0, %r8d
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jne	.LBB55_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	insert1
	movabsq	$.L.str.14, %rdi
	callq	insert_string
	jmp	.LBB55_10
.LBB55_2:                               # %if.else
	movq	-8(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB55_4
# BB#3:                                 # %lor.lhs.false
	movq	-8(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB55_4
	jmp	.LBB55_5
.LBB55_4:                               # %if.then.7
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fkey_description
	movq	%rax, %rdi
	callq	insert1
	movabsq	$.L.str.14, %rdi
	callq	insert_string
	jmp	.LBB55_9
.LBB55_5:                               # %if.else.10
	xorl	%eax, %eax
	movq	-8(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	get_keymap
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB55_7
# BB#6:                                 # %if.then.15
	movabsq	$.L.str.63, %rdi
	callq	insert_string
	jmp	.LBB55_8
.LBB55_7:                               # %if.else.16
	movabsq	$.L.str.64, %rdi
	callq	insert_string
.LBB55_8:                               # %if.end
	jmp	.LBB55_9
.LBB55_9:                               # %if.end.17
	jmp	.LBB55_10
.LBB55_10:                              # %if.end.18
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end55:
	.size	describe_translation, .Lfunc_end55-describe_translation
	.cfi_endproc

	.align	16, 0x90
	.type	describe_command,@function
describe_command:                       # @describe_command
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp174:
	.cfi_def_cfa_offset 16
.Ltmp175:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp176:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	callq	current_column
	movq	%rax, -32(%rbp)
	cmpq	$30, -32(%rbp)
	jle	.LBB56_2
# BB#1:                                 # %if.then
	movl	$10, %edi
	callq	insert_char
	movl	$32, -36(%rbp)
	jmp	.LBB56_8
.LBB56_2:                               # %if.else
	cmpq	$14, -32(%rbp)
	jg	.LBB56_5
# BB#3:                                 # %lor.lhs.false
	cmpq	$10, -32(%rbp)
	jle	.LBB56_6
# BB#4:                                 # %land.lhs.true
	cmpl	$32, previous_description_column
	jne	.LBB56_6
.LBB56_5:                               # %if.then.4
	movl	$32, -36(%rbp)
	jmp	.LBB56_7
.LBB56_6:                               # %if.else.5
	movl	$16, -36(%rbp)
.LBB56_7:                               # %if.end
	jmp	.LBB56_8
.LBB56_8:                               # %if.end.6
	movl	$6, %eax
	movl	%eax, %esi
	movslq	-36(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, %rdi
	callq	Findent_to
	movl	-36(%rbp), %edx
	movl	%edx, previous_description_column
	movq	-8(%rbp), %rcx
	andq	$7, %rcx
	movl	%ecx, %edx
	cmpl	$0, %edx
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jne	.LBB56_10
# BB#9:                                 # %if.then.11
	movq	-8(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	insert1
	movabsq	$.L.str.14, %rdi
	callq	insert_string
	jmp	.LBB56_18
.LBB56_10:                              # %if.else.13
	movq	-8(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB56_12
# BB#11:                                # %lor.lhs.false.16
	movq	-8(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB56_12
	jmp	.LBB56_13
.LBB56_12:                              # %if.then.19
	movabsq	$.L.str.62, %rdi
	callq	insert_string
	jmp	.LBB56_17
.LBB56_13:                              # %if.else.20
	xorl	%eax, %eax
	movq	-8(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	get_keymap
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB56_15
# BB#14:                                # %if.then.25
	movabsq	$.L.str.63, %rdi
	callq	insert_string
	jmp	.LBB56_16
.LBB56_15:                              # %if.else.26
	movabsq	$.L.str.64, %rdi
	callq	insert_string
.LBB56_16:                              # %if.end.27
	jmp	.LBB56_17
.LBB56_17:                              # %if.end.28
	jmp	.LBB56_18
.LBB56_18:                              # %if.end.29
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end56:
	.size	describe_command, .Lfunc_end56-describe_command
	.cfi_endproc

	.globl	Fdescribe_vector
	.align	16, 0x90
	.type	Fdescribe_vector,@function
Fdescribe_vector:                       # @Fdescribe_vector
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp177:
	.cfi_def_cfa_offset 16
.Ltmp178:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp179:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	callq	SPECPDL_INDEX
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB57_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.27, %rdi
	callq	intern
	movq	%rax, -16(%rbp)
.LBB57_2:                               # %if.end
	movl	$871, %edi              # imm = 0x367
	callq	builtin_lisp_symbol
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	Fcurrent_buffer
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
	movq	-8(%rbp), %rdi
	callq	CHECK_VECTOR_OR_CHAR_TABLE
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-16(%rbp), %rdx
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$describe_vector_princ, %rcx
	xorl	%r8d, %r8d
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	-72(%rbp), %r9          # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$0, 8(%rsp)
	movl	$0, 16(%rsp)
	callq	describe_vector
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end57:
	.size	Fdescribe_vector, .Lfunc_end57-Fdescribe_vector
	.cfi_endproc

	.align	16, 0x90
	.type	CHECK_VECTOR_OR_CHAR_TABLE,@function
CHECK_VECTOR_OR_CHAR_TABLE:             # @CHECK_VECTOR_OR_CHAR_TABLE
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp180:
	.cfi_def_cfa_offset 16
.Ltmp181:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp182:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB58_2
# BB#1:                                 # %lor.lhs.false
	movq	-8(%rbp), %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB58_2
	jmp	.LBB58_3
.LBB58_2:                               # %cond.true
	jmp	.LBB58_4
.LBB58_3:                               # %cond.false
	movl	$994, %edi              # imm = 0x3E2
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB58_4:                               # %cond.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end58:
	.size	CHECK_VECTOR_OR_CHAR_TABLE, .Lfunc_end58-CHECK_VECTOR_OR_CHAR_TABLE
	.cfi_endproc

	.align	16, 0x90
	.type	describe_vector,@function
describe_vector:                        # @describe_vector
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp183:
	.cfi_def_cfa_offset 16
.Ltmp184:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp185:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$440, %rsp              # imm = 0x1B8
.Ltmp186:
	.cfi_offset %rbx, -24
	movb	%r8b, %al
	movb	32(%rbp), %r10b
	movb	24(%rbp), %r11b
	movq	16(%rbp), %rbx
	xorl	%r8d, %r8d
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	andb	$1, %al
	movb	%al, -41(%rbp)
	movq	%r9, -56(%rbp)
	movq	%rbx, -64(%rbp)
	andb	$1, %r11b
	movb	%r11b, -65(%rbp)
	andb	$1, %r10b
	movb	%r10b, -66(%rbp)
	movl	%r8d, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -96(%rbp)
	movb	$1, -121(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -112(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -80(%rbp)
	testb	$1, -65(%rbp)
	jne	.LBB59_5
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-256(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB59_4
# BB#2:                                 # %land.lhs.true
	movq	-24(%rbp), %rdi
	callq	Flength
	sarq	$2, %rax
	cmpq	$0, %rax
	jle	.LBB59_4
# BB#3:                                 # %if.then.8
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fkey_description
	movl	$4, %esi
	leaq	-200(%rbp), %rdi
	movabsq	$.L.str.7, %rcx
	movq	%rax, -160(%rbp)
	movq	$1, -200(%rbp)
	movq	$-1, -192(%rbp)
	movq	$0, -184(%rbp)
	movq	%rcx, -176(%rbp)
	callq	make_lisp_ptr
	movq	%rax, -168(%rbp)
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	callq	concat2
	movq	%rax, -96(%rbp)
.LBB59_4:                               # %if.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -24(%rbp)
.LBB59_5:                               # %if.end.15
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movl	$6, %edi
                                        # kill: RDI<def> EDI<kill>
	movq	%rax, %rsi
	callq	Fmake_vector
	movq	%rax, -120(%rbp)
	testb	$1, -41(%rbp)
	je	.LBB59_7
# BB#6:                                 # %if.then.19
	movabsq	$.L.str.65, %rdi
	callq	intern
	movq	%rax, -112(%rbp)
.LBB59_7:                               # %if.end.21
	movl	$0, -128(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB59_8
	jmp	.LBB59_9
.LBB59_8:                               # %if.then.23
	movl	$4194176, -136(%rbp)    # imm = 0x3FFF80
	movl	$4194304, -132(%rbp)    # imm = 0x400000
	jmp	.LBB59_10
.LBB59_9:                               # %if.else
	movq	-16(%rbp), %rdi
	callq	ASIZE
	movl	%eax, %ecx
	movl	%ecx, -132(%rbp)
	movl	%ecx, -136(%rbp)
.LBB59_10:                              # %if.end.25
	movl	-128(%rbp), %eax
	movl	%eax, -100(%rbp)
.LBB59_11:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB59_50 Depth 2
                                        #     Child Loop BB59_57 Depth 2
	movb	$0, -201(%rbp)
# BB#12:                                # %do.body
                                        #   in Loop: Header=BB59_11 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-272(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB59_15
# BB#13:                                # %land.lhs.true.29
                                        #   in Loop: Header=BB59_11 Depth=1
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-280(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB59_15
# BB#14:                                # %if.then.33
                                        #   in Loop: Header=BB59_11 Depth=1
	callq	process_quit_flag
	jmp	.LBB59_18
.LBB59_15:                              # %if.else.34
                                        #   in Loop: Header=BB59_11 Depth=1
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB59_17
# BB#16:                                # %if.then.36
                                        #   in Loop: Header=BB59_11 Depth=1
	callq	process_pending_signals
.LBB59_17:                              # %if.end.37
                                        #   in Loop: Header=BB59_11 Depth=1
	jmp	.LBB59_18
.LBB59_18:                              # %if.end.38
                                        #   in Loop: Header=BB59_11 Depth=1
	jmp	.LBB59_19
.LBB59_19:                              # %do.end
                                        #   in Loop: Header=BB59_11 Depth=1
	movl	-100(%rbp), %eax
	cmpl	-136(%rbp), %eax
	jne	.LBB59_23
# BB#20:                                # %if.then.41
                                        #   in Loop: Header=BB59_11 Depth=1
	movl	-100(%rbp), %eax
	cmpl	-132(%rbp), %eax
	jne	.LBB59_22
# BB#21:                                # %if.then.44
	jmp	.LBB59_71
.LBB59_22:                              # %if.end.45
                                        #   in Loop: Header=BB59_11 Depth=1
	movl	-132(%rbp), %eax
	movl	%eax, -136(%rbp)
.LBB59_23:                              # %if.end.46
                                        #   in Loop: Header=BB59_11 Depth=1
	movl	-100(%rbp), %eax
	movl	%eax, -148(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB59_24
	jmp	.LBB59_25
.LBB59_24:                              # %if.then.48
                                        #   in Loop: Header=BB59_11 Depth=1
	leaq	-208(%rbp), %rdx
	leaq	-100(%rbp), %rcx
	movl	-100(%rbp), %eax
	movl	%eax, -208(%rbp)
	movl	-136(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -100(%rbp)
	movq	-16(%rbp), %rdi
	movl	-208(%rbp), %esi
	callq	char_table_ref_and_range
	movq	%rax, -224(%rbp)
	jmp	.LBB59_26
.LBB59_25:                              # %if.else.50
                                        #   in Loop: Header=BB59_11 Depth=1
	movq	-16(%rbp), %rdi
	movslq	-100(%rbp), %rsi
	callq	AREF
	movq	%rax, -224(%rbp)
.LBB59_26:                              # %if.end.53
                                        #   in Loop: Header=BB59_11 Depth=1
	xorl	%esi, %esi
	movq	-224(%rbp), %rdi
	callq	get_keyelt
	xorl	%edi, %edi
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-288(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB59_28
# BB#27:                                # %if.then.58
                                        #   in Loop: Header=BB59_11 Depth=1
	jmp	.LBB59_70
.LBB59_28:                              # %if.end.59
                                        #   in Loop: Header=BB59_11 Depth=1
	movq	-80(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB59_33
# BB#29:                                # %land.lhs.true.63
                                        #   in Loop: Header=BB59_11 Depth=1
	testb	$1, -41(%rbp)
	je	.LBB59_33
# BB#30:                                # %if.then.66
                                        #   in Loop: Header=BB59_11 Depth=1
	movq	-80(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	Fget
	xorl	%edi, %edi
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-296(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB59_32
# BB#31:                                # %if.then.72
                                        #   in Loop: Header=BB59_11 Depth=1
	jmp	.LBB59_70
.LBB59_32:                              # %if.end.73
                                        #   in Loop: Header=BB59_11 Depth=1
	jmp	.LBB59_33
.LBB59_33:                              # %if.end.74
                                        #   in Loop: Header=BB59_11 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movslq	-148(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -144(%rbp)
	movq	-120(%rbp), %rdi
	movq	-144(%rbp), %rdx
	callq	ASET
	xorl	%edi, %edi
	movq	-56(%rbp), %rcx
	movq	%rcx, -304(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-304(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB59_40
# BB#34:                                # %if.then.79
                                        #   in Loop: Header=BB59_11 Depth=1
	movl	$901, %edi              # imm = 0x385
	movq	-56(%rbp), %rax
	movq	-120(%rbp), %rsi
	movq	%rsi, -312(%rbp)        # 8-byte Spill
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%ecx, %ecx
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	-312(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	shadow_lookup
	xorl	%edi, %edi
	movq	%rax, -240(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-328(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB59_39
# BB#35:                                # %if.then.86
                                        #   in Loop: Header=BB59_11 Depth=1
	testb	$1, -66(%rbp)
	je	.LBB59_37
# BB#36:                                # %if.then.88
                                        #   in Loop: Header=BB59_11 Depth=1
	movb	$1, -201(%rbp)
	jmp	.LBB59_38
.LBB59_37:                              # %if.else.89
                                        #   in Loop: Header=BB59_11 Depth=1
	jmp	.LBB59_70
.LBB59_38:                              # %if.end.90
                                        #   in Loop: Header=BB59_11 Depth=1
	jmp	.LBB59_39
.LBB59_39:                              # %if.end.91
                                        #   in Loop: Header=BB59_11 Depth=1
	jmp	.LBB59_40
.LBB59_40:                              # %if.end.92
                                        #   in Loop: Header=BB59_11 Depth=1
	xorl	%edi, %edi
	movq	-64(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-336(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB59_44
# BB#41:                                # %if.then.96
                                        #   in Loop: Header=BB59_11 Depth=1
	movl	$901, %edi              # imm = 0x385
	movq	-64(%rbp), %rax
	movq	-120(%rbp), %rsi
	movq	%rsi, -344(%rbp)        # 8-byte Spill
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	-344(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Flookup_key
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rax
	cmpq	-80(%rbp), %rax
	je	.LBB59_43
# BB#42:                                # %if.then.102
                                        #   in Loop: Header=BB59_11 Depth=1
	jmp	.LBB59_70
.LBB59_43:                              # %if.end.103
                                        #   in Loop: Header=BB59_11 Depth=1
	jmp	.LBB59_44
.LBB59_44:                              # %if.end.104
                                        #   in Loop: Header=BB59_11 Depth=1
	testb	$1, -121(%rbp)
	je	.LBB59_46
# BB#45:                                # %if.then.106
                                        #   in Loop: Header=BB59_11 Depth=1
	movabsq	$.L.str.14, %rdi
	movl	$1, %eax
	movl	%eax, %esi
	callq	insert
	movb	$0, -121(%rbp)
.LBB59_46:                              # %if.end.107
                                        #   in Loop: Header=BB59_11 Depth=1
	xorl	%edi, %edi
	movq	-96(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-360(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB59_48
# BB#47:                                # %if.then.111
                                        #   in Loop: Header=BB59_11 Depth=1
	movq	-96(%rbp), %rdi
	callq	insert1
.LBB59_48:                              # %if.end.112
                                        #   in Loop: Header=BB59_11 Depth=1
	movq	-120(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	Fkey_description
	movq	%rax, %rdi
	callq	insert1
	movq	-16(%rbp), %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB59_49
	jmp	.LBB59_56
.LBB59_49:                              # %if.then.115
                                        #   in Loop: Header=BB59_11 Depth=1
	jmp	.LBB59_50
.LBB59_50:                              # %while.cond
                                        #   Parent Loop BB59_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-100(%rbp), %eax
	addl	$1, %eax
	cmpl	-136(%rbp), %eax
	movb	%cl, -361(%rbp)         # 1-byte Spill
	jge	.LBB59_53
# BB#51:                                # %land.lhs.true.119
                                        #   in Loop: Header=BB59_50 Depth=2
	leaq	-208(%rbp), %rdx
	leaq	-212(%rbp), %rcx
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -208(%rbp)
	movl	-136(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -212(%rbp)
	movq	-16(%rbp), %rdi
	movl	-208(%rbp), %esi
	callq	char_table_ref_and_range
	xorl	%esi, %esi
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rdi
	callq	get_keyelt
	xorl	%edi, %edi
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%esi, %esi
	movb	%sil, %r8b
	movq	-376(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%r9b
	xorb	$-1, %r9b
	testb	$1, %r9b
	movb	%r8b, -361(%rbp)        # 1-byte Spill
	jne	.LBB59_52
	jmp	.LBB59_53
.LBB59_52:                              # %land.rhs
                                        #   in Loop: Header=BB59_50 Depth=2
	movq	-88(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	Fequal
	xorl	%edi, %edi
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-384(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%cl
	xorb	$-1, %cl
	movb	%cl, -361(%rbp)         # 1-byte Spill
.LBB59_53:                              # %land.end
                                        #   in Loop: Header=BB59_50 Depth=2
	movb	-361(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB59_54
	jmp	.LBB59_55
.LBB59_54:                              # %while.body
                                        #   in Loop: Header=BB59_50 Depth=2
	movl	-212(%rbp), %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB59_50
.LBB59_55:                              # %while.end
                                        #   in Loop: Header=BB59_11 Depth=1
	jmp	.LBB59_63
.LBB59_56:                              # %if.else.132
                                        #   in Loop: Header=BB59_11 Depth=1
	jmp	.LBB59_57
.LBB59_57:                              # %while.cond.133
                                        #   Parent Loop BB59_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-100(%rbp), %eax
	addl	$1, %eax
	cmpl	-136(%rbp), %eax
	movb	%cl, -385(%rbp)         # 1-byte Spill
	jge	.LBB59_60
# BB#58:                                # %land.lhs.true.137
                                        #   in Loop: Header=BB59_57 Depth=2
	movq	-16(%rbp), %rdi
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rsi
	callq	AREF
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	get_keyelt
	xorl	%edi, %edi
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%esi, %esi
	movb	%sil, %cl
	movq	-400(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	sete	%r8b
	xorb	$-1, %r8b
	testb	$1, %r8b
	movb	%cl, -385(%rbp)         # 1-byte Spill
	jne	.LBB59_59
	jmp	.LBB59_60
.LBB59_59:                              # %land.rhs.146
                                        #   in Loop: Header=BB59_57 Depth=2
	movq	-88(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	Fequal
	xorl	%edi, %edi
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-408(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%cl
	xorb	$-1, %cl
	movb	%cl, -385(%rbp)         # 1-byte Spill
.LBB59_60:                              # %land.end.152
                                        #   in Loop: Header=BB59_57 Depth=2
	movb	-385(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB59_61
	jmp	.LBB59_62
.LBB59_61:                              # %while.body.153
                                        #   in Loop: Header=BB59_57 Depth=2
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB59_57
.LBB59_62:                              # %while.end.154
                                        #   in Loop: Header=BB59_11 Depth=1
	jmp	.LBB59_63
.LBB59_63:                              # %if.end.155
                                        #   in Loop: Header=BB59_11 Depth=1
	movl	-100(%rbp), %eax
	cmpl	-148(%rbp), %eax
	je	.LBB59_67
# BB#64:                                # %if.then.158
                                        #   in Loop: Header=BB59_11 Depth=1
	movabsq	$.L.str.66, %rdi
	movl	$4, %eax
	movl	%eax, %esi
	callq	insert
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-120(%rbp), %rdi
	movslq	-100(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, %rdx
	callq	ASET
	xorl	%edi, %edi
	movq	-96(%rbp), %rcx
	movq	%rcx, -416(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-416(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB59_66
# BB#65:                                # %if.then.165
                                        #   in Loop: Header=BB59_11 Depth=1
	movq	-96(%rbp), %rdi
	callq	insert1
.LBB59_66:                              # %if.end.166
                                        #   in Loop: Header=BB59_11 Depth=1
	movq	-120(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	Fkey_description
	movq	%rax, %rdi
	callq	insert1
.LBB59_67:                              # %if.end.168
                                        #   in Loop: Header=BB59_11 Depth=1
	movq	-40(%rbp), %rax
	movq	-80(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	*%rax
	testb	$1, -201(%rbp)
	je	.LBB59_69
# BB#68:                                # %if.then.170
                                        #   in Loop: Header=BB59_11 Depth=1
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	subq	$1, %rax
	movq	%rax, %rdi
	callq	set_point
	movabsq	$.L.str.68, %rdi
	callq	insert_string
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	set_point
.LBB59_69:                              # %if.end.176
                                        #   in Loop: Header=BB59_11 Depth=1
	jmp	.LBB59_70
.LBB59_70:                              # %for.inc
                                        #   in Loop: Header=BB59_11 Depth=1
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB59_11
.LBB59_71:                              # %for.end
	movq	-16(%rbp), %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB59_72
	jmp	.LBB59_76
.LBB59_72:                              # %land.lhs.true.180
	movq	-16(%rbp), %rdi
	callq	XCHAR_TABLE
	xorl	%edi, %edi
	movq	8(%rax), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-424(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB59_76
# BB#73:                                # %if.then.185
	xorl	%edi, %edi
	movq	-96(%rbp), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-432(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB59_75
# BB#74:                                # %if.then.189
	movq	-96(%rbp), %rdi
	callq	insert1
.LBB59_75:                              # %if.end.190
	movabsq	$.L.str.69, %rdi
	movl	$7, %eax
	movl	%eax, %esi
	callq	insert
	movq	-40(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rsi, -440(%rbp)        # 8-byte Spill
	callq	XCHAR_TABLE
	movq	8(%rax), %rdi
	movq	-32(%rbp), %rsi
	movq	-440(%rbp), %rax        # 8-byte Reload
	callq	*%rax
.LBB59_76:                              # %if.end.193
	addq	$440, %rsp              # imm = 0x1B8
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end59:
	.size	describe_vector, .Lfunc_end59-describe_vector
	.cfi_endproc

	.align	16, 0x90
	.type	describe_vector_princ,@function
describe_vector_princ:                  # @describe_vector_princ
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
	subq	$48, %rsp
	movl	$66, %eax
	movl	%eax, %ecx
	movl	$6, %eax
	movl	%eax, %edx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	callq	Findent_to
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	call1
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fterpri
	movq	%rax, -48(%rbp)         # 8-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end60:
	.size	describe_vector_princ, .Lfunc_end60-describe_vector_princ
	.cfi_endproc

	.globl	Fapropos_internal
	.align	16, 0x90
	.type	Fapropos_internal,@function
Fapropos_internal:                      # @Fapropos_internal
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_STRING
	xorl	%edi, %edi
	movq	-16(%rbp), %rsi
	movq	%rsi, apropos_predicate
	callq	builtin_lisp_symbol
	movabsq	$apropos_accum, %rsi
	movq	%rax, apropos_accumulate
	movq	globals+1656, %rdi
	movq	-8(%rbp), %rdx
	callq	map_obarray
	movl	$884, %edi              # imm = 0x374
	movq	apropos_accumulate, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fsort
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, apropos_accumulate
	callq	builtin_lisp_symbol
	movq	%rax, apropos_predicate
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end61:
	.size	Fapropos_internal, .Lfunc_end61-Fapropos_internal
	.cfi_endproc

	.align	16, 0x90
	.type	apropos_accum,@function
apropos_accum:                          # @apropos_accum
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
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	callq	Fsymbol_name
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	Fstring_match
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB62_3
# BB#1:                                 # %land.lhs.true
	xorl	%edi, %edi
	movq	apropos_predicate, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB62_3
# BB#2:                                 # %if.then
	movq	apropos_predicate, %rdi
	movq	-8(%rbp), %rsi
	callq	call1
	movq	%rax, -24(%rbp)
.LBB62_3:                               # %if.end
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB62_5
# BB#4:                                 # %if.then.9
	movq	-8(%rbp), %rdi
	movq	apropos_accumulate, %rsi
	callq	Fcons
	movq	%rax, apropos_accumulate
.LBB62_5:                               # %if.end.11
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end62:
	.size	apropos_accum, .Lfunc_end62-apropos_accum
	.cfi_endproc

	.globl	syms_of_keymap
	.align	16, 0x90
	.type	syms_of_keymap,@function
syms_of_keymap:                         # @syms_of_keymap
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
	subq	$240, %rsp
	movabsq	$apropos_predicate, %rdi
	callq	staticpro
	movabsq	$apropos_accumulate, %rdi
	callq	staticpro
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, apropos_predicate
	callq	builtin_lisp_symbol
	movl	$589, %edi              # imm = 0x24D
	movq	%rax, apropos_accumulate
	callq	builtin_lisp_symbol
	movl	$258, %edi              # imm = 0x102
	movq	%rax, -8(%rbp)          # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$2, %edi
	movl	%edi, %edx
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movq	%rax, %rsi
	callq	Fput
	xorl	%edi, %edi
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	Fmake_keymap
	movabsq	$.L.str.28, %rdi
	movq	%rax, global_map
	callq	intern_c_string
	movq	global_map, %rsi
	movq	%rax, %rdi
	callq	Fset
	movabsq	$global_map, %rdi
	movq	global_map, %rdx
	movq	%rdx, current_global_map
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	staticpro
	movabsq	$current_global_map, %rdi
	callq	staticpro
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	Fmake_keymap
	movabsq	$.L.str.29, %rdi
	movq	%rax, meta_map
	callq	intern_c_string
	movq	meta_map, %rsi
	movq	%rax, %rdi
	callq	Fset
	movabsq	$.L.str.30, %rdi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	intern_c_string
	movq	meta_map, %rsi
	movq	%rax, %rdi
	callq	Ffset
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	Fmake_keymap
	movabsq	$.L.str.31, %rdi
	movq	%rax, control_x_map
	callq	intern_c_string
	movq	control_x_map, %rsi
	movq	%rax, %rdi
	callq	Fset
	movabsq	$.L.str.32, %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	intern_c_string
	movq	control_x_map, %rsi
	movq	%rax, %rdi
	callq	Ffset
	movabsq	$.L.str.33, %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	build_pure_c_string
	movabsq	$.L.str.34, %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	build_pure_c_string
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	pure_cons
	movabsq	$.L.str.35, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	build_pure_c_string
	movabsq	$.L.str.36, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	build_pure_c_string
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	pure_cons
	movabsq	$.L.str.37, %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	build_pure_c_string
	movabsq	$.L.str.38, %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	build_pure_c_string
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	pure_cons
	movabsq	$.L.str.3, %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	build_pure_c_string
	movabsq	$.L.str.39, %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	build_pure_c_string
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	pure_cons
	movabsq	$.L.str.40, %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	build_pure_c_string
	movabsq	$.L.str.7, %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	build_pure_c_string
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	pure_cons
	movl	$1, %edi
	movl	$5, %ecx
	movl	%ecx, %esi
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	-104(%rbp), %r8         # 8-byte Reload
	movq	-120(%rbp), %r9         # 8-byte Reload
	movq	%rax, (%rsp)
	movb	$0, %al
	callq	listn
	movabsq	$exclude_keys, %rdi
	movq	%rax, exclude_keys
	callq	staticpro
# BB#1:                                 # %do.body
	movabsq	$syms_of_keymap.o_fwd, %rdi
	movabsq	$.L.str.41, %rsi
	movabsq	$globals, %rax
	addq	$528, %rax              # imm = 0x210
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#2:                                 # %do.end
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, globals+528
# BB#3:                                 # %do.body.38
	movabsq	$syms_of_keymap.o_fwd.42, %rdi
	movabsq	$.L.str.43, %rsi
	movabsq	$globals, %rax
	addq	$1520, %rax             # imm = 0x5F0
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#4:                                 # %do.end.39
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	Fmake_sparse_keymap
	movq	%rax, globals+1520
# BB#5:                                 # %do.body.42
	movabsq	$syms_of_keymap.o_fwd.44, %rdi
	movabsq	$.L.str.45, %rsi
	movabsq	$globals, %rax
	addq	$1528, %rax             # imm = 0x5F8
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#6:                                 # %do.end.43
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	Fmake_sparse_keymap
	movq	%rax, globals+1528
	movq	globals+1528, %rdi
	movq	globals+1520, %rsi
	callq	Fset_keymap_parent
	movq	%rax, -136(%rbp)        # 8-byte Spill
# BB#7:                                 # %do.body.47
	movabsq	$syms_of_keymap.o_fwd.46, %rdi
	movabsq	$.L.str.47, %rsi
	movabsq	$globals, %rax
	addq	$1560, %rax             # imm = 0x618
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#8:                                 # %do.end.48
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+1560
# BB#9:                                 # %do.body.50
	movabsq	$syms_of_keymap.o_fwd.48, %rdi
	movabsq	$.L.str.49, %rsi
	movabsq	$globals, %rax
	addq	$1568, %rax             # imm = 0x620
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#10:                                # %do.end.51
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+1568
# BB#11:                                # %do.body.53
	movabsq	$syms_of_keymap.o_fwd.50, %rdi
	movabsq	$.L.str.51, %rsi
	movabsq	$globals, %rax
	addq	$632, %rax              # imm = 0x278
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#12:                                # %do.end.54
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+632
# BB#13:                                # %do.body.56
	movabsq	$syms_of_keymap.o_fwd.52, %rdi
	movabsq	$.L.str.53, %rsi
	movabsq	$globals, %rax
	addq	$2608, %rax             # imm = 0xA30
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#14:                                # %do.end.57
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$Vmouse_events, %rdi
	movq	%rax, globals+2608
	movl	$0, where_is_preferred_modifier
	callq	staticpro
	movl	$651, %edi              # imm = 0x28B
	callq	builtin_lisp_symbol
	movl	$921, %edi              # imm = 0x399
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$513, %edi              # imm = 0x201
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$672, %edi              # imm = 0x2A0
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.54, %rdi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	intern_c_string
	movabsq	$.L.str.55, %rdi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	intern_c_string
	movabsq	$.L.str.56, %rdi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	intern_c_string
	movabsq	$.L.str.57, %rdi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	intern_c_string
	movabsq	$.L.str.58, %rdi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	intern_c_string
	movl	$1, %edi
	movl	$9, %ecx
	movl	%ecx, %esi
	movq	-144(%rbp), %rdx        # 8-byte Reload
	movq	-152(%rbp), %rcx        # 8-byte Reload
	movq	-160(%rbp), %r8         # 8-byte Reload
	movq	-168(%rbp), %r9         # 8-byte Reload
	movq	-176(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	-184(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	movq	-192(%rbp), %r10        # 8-byte Reload
	movq	%r10, 16(%rsp)
	movq	-200(%rbp), %r10        # 8-byte Reload
	movq	%r10, 24(%rsp)
	movq	%rax, 32(%rsp)
	movb	$0, %al
	callq	listn
	movl	$805, %edi              # imm = 0x325
	movq	%rax, Vmouse_events
	callq	builtin_lisp_symbol
	movl	$10, %edi
                                        # kill: RDI<def> EDI<kill>
	movq	%rax, %rsi
	callq	Fmake_vector
	movabsq	$command_remapping_vector, %rdi
	movq	%rax, command_remapping_vector
	callq	staticpro
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, where_is_cache_keymaps
	callq	builtin_lisp_symbol
	movabsq	$where_is_cache, %rdi
	movq	%rax, where_is_cache
	callq	staticpro
	movabsq	$where_is_cache_keymaps, %rdi
	callq	staticpro
	movabsq	$Skeymapp, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Skeymap_parent, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Skeymap_prompt, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sset_keymap_parent, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Smake_keymap, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Smake_sparse_keymap, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Smap_keymap_internal, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Smap_keymap, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Scopy_keymap, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Scommand_remapping, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Skey_binding, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Slocal_key_binding, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sglobal_key_binding, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sminor_mode_key_binding, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sdefine_key, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Slookup_key, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sdefine_prefix_command, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Suse_global_map, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Suse_local_map, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Scurrent_local_map, %rdi
	callq	defsubr
	movabsq	$Scurrent_global_map, %rdi
	callq	defsubr
	movabsq	$Scurrent_minor_mode_maps, %rdi
	callq	defsubr
	movabsq	$Scurrent_active_maps, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Saccessible_keymaps, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Skey_description, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sdescribe_vector, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Ssingle_key_description, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Stext_char_description, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Swhere_is_internal, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sdescribe_buffer_bindings, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sapropos_internal, %rax
	movq	%rax, %rdi
	callq	defsubr
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end63:
	.size	syms_of_keymap, .Lfunc_end63-syms_of_keymap
	.cfi_endproc

	.globl	keys_of_keymap
	.align	16, 0x90
	.type	keys_of_keymap,@function
keys_of_keymap:                         # @keys_of_keymap
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp199:
	.cfi_def_cfa_offset 16
.Ltmp200:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp201:
	.cfi_def_cfa_register %rbp
	movl	$27, %esi
	movabsq	$.L.str.30, %rdx
	movq	global_map, %rdi
	callq	initial_define_key
	movl	$24, %esi
	movabsq	$.L.str.32, %rdx
	movq	global_map, %rdi
	callq	initial_define_key
	popq	%rbp
	retq
.Lfunc_end64:
	.size	keys_of_keymap, .Lfunc_end64-keys_of_keymap
	.cfi_endproc

	.align	16, 0x90
	.type	get_keyelt,@function
get_keyelt:                             # @get_keyelt
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp202:
	.cfi_def_cfa_offset 16
.Ltmp203:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp204:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movb	%sil, %al
	movq	%rdi, -16(%rbp)
	andb	$1, %al
	movb	%al, -17(%rbp)
.LBB65_1:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB65_8 Depth 2
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB65_3
# BB#2:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB65_25
.LBB65_3:                               # %if.else
                                        #   in Loop: Header=BB65_1 Depth=1
	movl	$657, %edi              # imm = 0x291
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB65_19
# BB#4:                                 # %if.then.4
                                        #   in Loop: Header=BB65_1 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB65_17
# BB#5:                                 # %if.then.10
                                        #   in Loop: Header=BB65_1 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB65_7
# BB#6:                                 # %if.then.21
                                        #   in Loop: Header=BB65_1 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
.LBB65_7:                               # %if.end
                                        #   in Loop: Header=BB65_1 Depth=1
	jmp	.LBB65_8
.LBB65_8:                               # %for.cond
                                        #   Parent Loop BB65_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -49(%rbp)          # 1-byte Spill
	jne	.LBB65_10
# BB#9:                                 # %land.rhs
                                        #   in Loop: Header=BB65_8 Depth=2
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	sete	%dl
	movb	%dl, -49(%rbp)          # 1-byte Spill
.LBB65_10:                              # %land.end
                                        #   in Loop: Header=BB65_8 Depth=2
	movb	-49(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB65_11
	jmp	.LBB65_16
.LBB65_11:                              # %for.body
                                        #   in Loop: Header=BB65_8 Depth=2
	movl	$42, %edi
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB65_14
# BB#12:                                # %land.lhs.true
                                        #   in Loop: Header=BB65_8 Depth=2
	testb	$1, -17(%rbp)
	je	.LBB65_14
# BB#13:                                # %if.then.41
                                        #   in Loop: Header=BB65_1 Depth=1
	movl	$783, %edi              # imm = 0x30F
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	list2
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	list2
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	menu_item_eval_property
	movq	%rax, -16(%rbp)
	jmp	.LBB65_16
.LBB65_14:                              # %if.end.51
                                        #   in Loop: Header=BB65_8 Depth=2
	jmp	.LBB65_15
.LBB65_15:                              # %for.inc
                                        #   in Loop: Header=BB65_8 Depth=2
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB65_8
.LBB65_16:                              # %for.end
                                        #   in Loop: Header=BB65_1 Depth=1
	jmp	.LBB65_18
.LBB65_17:                              # %if.else.55
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB65_25
.LBB65_18:                              # %if.end.56
                                        #   in Loop: Header=BB65_1 Depth=1
	jmp	.LBB65_23
.LBB65_19:                              # %if.else.57
                                        #   in Loop: Header=BB65_1 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB65_20
	jmp	.LBB65_21
.LBB65_20:                              # %if.then.61
                                        #   in Loop: Header=BB65_1 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB65_22
.LBB65_21:                              # %if.else.65
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB65_25
.LBB65_22:                              # %if.end.66
                                        #   in Loop: Header=BB65_1 Depth=1
	jmp	.LBB65_23
.LBB65_23:                              # %if.end.67
                                        #   in Loop: Header=BB65_1 Depth=1
	jmp	.LBB65_24
.LBB65_24:                              # %if.end.68
                                        #   in Loop: Header=BB65_1 Depth=1
	jmp	.LBB65_1
.LBB65_25:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end65:
	.size	get_keyelt, .Lfunc_end65-get_keyelt
	.cfi_endproc

	.align	16, 0x90
	.type	map_keymap_item,@function
map_keymap_item:                        # @map_keymap_item
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp205:
	.cfi_def_cfa_offset 16
.Ltmp206:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp207:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$901, %eax              # imm = 0x385
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-32(%rbp), %rcx
	movl	%eax, %edi
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB66_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)
.LBB66_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	*%rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end66:
	.size	map_keymap_item, .Lfunc_end66-map_keymap_item
	.cfi_endproc

	.align	16, 0x90
	.type	map_keymap_char_table_item,@function
map_keymap_char_table_item:             # @map_keymap_char_table_item
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp208:
	.cfi_def_cfa_offset 16
.Ltmp209:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp210:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movl	%eax, %edi
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB67_4
# BB#1:                                 # %if.then
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	callq	XSAVE_FUNCPOINTER
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %esi
	cmpl	$3, %esi
	jne	.LBB67_3
# BB#2:                                 # %if.then.4
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rsi
	callq	Fcons
	movq	%rax, -16(%rbp)
.LBB67_3:                               # %if.end
	movl	$2, %esi
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	XSAVE_OBJECT
	movl	$1, %esi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	callq	XSAVE_POINTER
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	%rax, %r8
	callq	map_keymap_item
.LBB67_4:                               # %if.end.9
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end67:
	.size	map_keymap_char_table_item, .Lfunc_end67-map_keymap_char_table_item
	.cfi_endproc

	.align	16, 0x90
	.type	append_key,@function
append_key:                             # @append_key
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp211:
	.cfi_def_cfa_offset 16
.Ltmp212:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp213:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -40(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movl	$3, %esi
	leaq	-40(%rbp), %rcx
	movq	%rax, -32(%rbp)
	movq	%rcx, %rdi
	callq	make_lisp_ptr
	movl	$2, %esi
	movl	%esi, %edi
	leaq	-56(%rbp), %rsi
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	Fvconcat
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end68:
	.size	append_key, .Lfunc_end68-append_key
	.cfi_endproc

	.align	16, 0x90
	.type	where_is_internal_1,@function
where_is_internal_1:                    # @where_is_internal_1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp214:
	.cfi_def_cfa_offset 16
.Ltmp215:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp216:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -48(%rbp)
	movq	-40(%rbp), %rcx
	movb	25(%rcx), %al
	andb	$1, %al
	movb	%al, -49(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -64(%rbp)
	movq	-40(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, -72(%rbp)
	movq	-40(%rbp), %rcx
	movb	24(%rcx), %al
	andb	$1, %al
	movb	%al, -73(%rbp)
	testb	$1, -49(%rbp)
	jne	.LBB69_2
# BB#1:                                 # %if.then
	xorl	%esi, %esi
	movq	-16(%rbp), %rdi
	callq	get_keyelt
	movq	%rax, -16(%rbp)
.LBB69_2:                               # %if.end
	xorl	%edi, %edi
	movq	where_is_cache, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB69_7
# BB#3:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.LBB69_7
# BB#4:                                 # %lor.lhs.false.11
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB69_6
# BB#5:                                 # %land.lhs.true
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	Fequal
	xorl	%edi, %edi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB69_7
.LBB69_6:                               # %if.then.18
	jmp	.LBB69_16
.LBB69_7:                               # %if.end.19
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB69_10
# BB#8:                                 # %land.lhs.true.25
	testb	$1, -73(%rbp)
	je	.LBB69_10
# BB#9:                                 # %if.then.28
	movq	-64(%rbp), %rdi
	callq	Fcopy_sequence
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	orq	$134217728, %rax        # imm = 0x8000000
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdx
	callq	Faset
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB69_13
.LBB69_10:                              # %if.else
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB69_12
# BB#11:                                # %if.then.35
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rsi
	callq	Fcons
	movq	%rax, -8(%rbp)
.LBB69_12:                              # %if.end.38
	movq	-64(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	append_key
	movq	%rax, -88(%rbp)
.LBB69_13:                              # %if.end.40
	xorl	%edi, %edi
	movq	where_is_cache, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB69_15
# BB#14:                                # %if.then.44
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	where_is_cache, %rsi
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	-136(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fgethash
	movq	%rax, -96(%rbp)
	movq	-16(%rbp), %rdi
	movq	-88(%rbp), %rax
	movq	-96(%rbp), %rsi
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	Fcons
	movq	where_is_cache, %rdx
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fputhash
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB69_16
.LBB69_15:                              # %if.else.49
	movq	-88(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	32(%rax), %rsi
	callq	Fcons
	movq	-40(%rbp), %rsi
	movq	%rax, 32(%rsi)
.LBB69_16:                              # %if.end.53
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end69:
	.size	where_is_internal_1, .Lfunc_end69-where_is_internal_1
	.cfi_endproc

	.align	16, 0x90
	.type	describe_map_compare,@function
describe_map_compare:                   # @describe_map_compare
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp217:
	.cfi_def_cfa_offset 16
.Ltmp218:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp219:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rsi, -40(%rbp)
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	andq	$7, %rsi
	movl	%esi, %eax
	andl	$-5, %eax
	cmpl	$2, %eax
	jne	.LBB70_3
# BB#1:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB70_3
# BB#2:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	setg	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	setl	%dl
	andb	$1, %dl
	movzbl	%dl, %edi
	subl	%edi, %esi
	movl	%esi, -4(%rbp)
	jmp	.LBB70_16
.LBB70_3:                               # %if.end
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	je	.LBB70_6
# BB#4:                                 # %land.lhs.true.26
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB70_6
# BB#5:                                 # %if.then.33
	movl	$1, -4(%rbp)
	jmp	.LBB70_16
.LBB70_6:                               # %if.end.34
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB70_9
# BB#7:                                 # %land.lhs.true.41
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	je	.LBB70_9
# BB#8:                                 # %if.then.48
	movl	$-1, -4(%rbp)
	jmp	.LBB70_16
.LBB70_9:                               # %if.end.49
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB70_15
# BB#10:                                # %land.lhs.true.55
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB70_15
# BB#11:                                # %if.then.61
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	(%rax), %rsi
	callq	Fstring_lessp
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB70_13
# BB#12:                                # %cond.true
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB70_14
.LBB70_13:                              # %cond.false
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	(%rax), %rsi
	callq	Fstring_lessp
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	$1, %ecx
	movq	-64(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	cmovnel	%ecx, %edi
	movl	%edi, -52(%rbp)         # 4-byte Spill
.LBB70_14:                              # %cond.end
	movl	-52(%rbp), %eax         # 4-byte Reload
	movl	%eax, -4(%rbp)
	jmp	.LBB70_16
.LBB70_15:                              # %if.end.74
	movl	$0, -4(%rbp)
.LBB70_16:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end70:
	.size	describe_map_compare, .Lfunc_end70-describe_map_compare
	.cfi_endproc

	.type	where_is_cache,@object  # @where_is_cache
	.local	where_is_cache
	.comm	where_is_cache,8,8
	.type	where_is_cache_keymaps,@object # @where_is_cache_keymaps
	.local	where_is_cache_keymaps
	.comm	where_is_cache_keymaps,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Cyclic keymap inheritance"
	.size	.L.str, 26

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"map-keymap-sorted"
	.size	.L.str.1, 18

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Key sequence contains invalid event %s"
	.size	.L.str.2, 39

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"ESC"
	.size	.L.str.3, 4

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	" ESC"
	.size	.L.str.4, 5

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.zero	1
	.size	.L.str.5, 1

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Key sequence %s starts with non-prefix key %s%s"
	.size	.L.str.6, 48

	.type	command_remapping_vector,@object # @command_remapping_vector
	.local	command_remapping_vector
	.comm	command_remapping_vector,8,8
	.type	cmm_size,@object        # @cmm_size
	.local	cmm_size
	.comm	cmm_size,8,8
	.type	cmm_modes,@object       # @cmm_modes
	.local	cmm_modes
	.comm	cmm_modes,8,8
	.type	cmm_maps,@object        # @cmm_maps
	.local	cmm_maps
	.comm	cmm_maps,8,8
	.type	current_global_map,@object # @current_global_map
	.comm	current_global_map,8,8
	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	" "
	.size	.L.str.7, 2

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"[%d]"
	.size	.L.str.8, 5

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	".."
	.size	.L.str.9, 3

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"<%s>"
	.size	.L.str.10, 5

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"KEY must be an integer, cons, symbol, or string"
	.size	.L.str.11, 48

	.type	where_is_preferred_modifier,@object # @where_is_preferred_modifier
	.local	where_is_preferred_modifier
	.comm	where_is_preferred_modifier,4,4
	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"(any string)"
	.size	.L.str.12, 13

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Keyboard translations:\n\nYou type        Translation\n--------        -----------\n"
	.size	.L.str.13, 81

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"\n"
	.size	.L.str.14, 2

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Key translations"
	.size	.L.str.15, 17

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"\f\nOverriding Bindings"
	.size	.L.str.16, 22

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"\f\n`keymap' Property Bindings"
	.size	.L.str.17, 29

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	" Minor Mode Bindings"
	.size	.L.str.18, 21

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"\f\nMajor Mode Bindings"
	.size	.L.str.19, 22

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"\f\n`local-map' Property Bindings"
	.size	.L.str.20, 32

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"\f\nGlobal Bindings"
	.size	.L.str.21, 18

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"\f\nFunction key map translations"
	.size	.L.str.22, 32

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"\f\nInput decoding map translations"
	.size	.L.str.23, 34

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"key             binding\n---             -------\n"
	.size	.L.str.24, 49

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	" Starting With "
	.size	.L.str.25, 16

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	":\n"
	.size	.L.str.26, 3

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"princ"
	.size	.L.str.27, 6

	.type	apropos_predicate,@object # @apropos_predicate
	.local	apropos_predicate
	.comm	apropos_predicate,8,8
	.type	apropos_accumulate,@object # @apropos_accumulate
	.local	apropos_accumulate
	.comm	apropos_accumulate,8,8
	.type	global_map,@object      # @global_map
	.comm	global_map,8,8
	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"global-map"
	.size	.L.str.28, 11

	.type	meta_map,@object        # @meta_map
	.comm	meta_map,8,8
	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"esc-map"
	.size	.L.str.29, 8

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"ESC-prefix"
	.size	.L.str.30, 11

	.type	control_x_map,@object   # @control_x_map
	.comm	control_x_map,8,8
	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"ctl-x-map"
	.size	.L.str.31, 10

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Control-X-prefix"
	.size	.L.str.32, 17

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"DEL"
	.size	.L.str.33, 4

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"\\d"
	.size	.L.str.34, 3

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"TAB"
	.size	.L.str.35, 4

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"\\t"
	.size	.L.str.36, 3

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"RET"
	.size	.L.str.37, 4

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"\\r"
	.size	.L.str.38, 3

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"\\e"
	.size	.L.str.39, 3

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"SPC"
	.size	.L.str.40, 4

	.type	exclude_keys,@object    # @exclude_keys
	.local	exclude_keys
	.comm	exclude_keys,8,8
	.type	syms_of_keymap.o_fwd,@object # @syms_of_keymap.o_fwd
	.local	syms_of_keymap.o_fwd
	.comm	syms_of_keymap.o_fwd,16,8
	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"define-key-rebound-commands"
	.size	.L.str.41, 28

	.type	syms_of_keymap.o_fwd.42,@object # @syms_of_keymap.o_fwd.42
	.local	syms_of_keymap.o_fwd.42
	.comm	syms_of_keymap.o_fwd.42,16,8
	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"minibuffer-local-map"
	.size	.L.str.43, 21

	.type	syms_of_keymap.o_fwd.44,@object # @syms_of_keymap.o_fwd.44
	.local	syms_of_keymap.o_fwd.44
	.comm	syms_of_keymap.o_fwd.44,16,8
	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"minibuffer-local-ns-map"
	.size	.L.str.45, 24

	.type	syms_of_keymap.o_fwd.46,@object # @syms_of_keymap.o_fwd.46
	.local	syms_of_keymap.o_fwd.46
	.comm	syms_of_keymap.o_fwd.46,16,8
	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"minor-mode-map-alist"
	.size	.L.str.47, 21

	.type	syms_of_keymap.o_fwd.48,@object # @syms_of_keymap.o_fwd.48
	.local	syms_of_keymap.o_fwd.48
	.comm	syms_of_keymap.o_fwd.48,16,8
	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"minor-mode-overriding-map-alist"
	.size	.L.str.49, 32

	.type	syms_of_keymap.o_fwd.50,@object # @syms_of_keymap.o_fwd.50
	.local	syms_of_keymap.o_fwd.50
	.comm	syms_of_keymap.o_fwd.50,16,8
	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"emulation-mode-map-alists"
	.size	.L.str.51, 26

	.type	syms_of_keymap.o_fwd.52,@object # @syms_of_keymap.o_fwd.52
	.local	syms_of_keymap.o_fwd.52
	.comm	syms_of_keymap.o_fwd.52,16,8
	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"where-is-preferred-modifier"
	.size	.L.str.53, 28

	.type	Vmouse_events,@object   # @Vmouse_events
	.local	Vmouse_events
	.comm	Vmouse_events,8,8
	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"mouse-1"
	.size	.L.str.54, 8

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"mouse-2"
	.size	.L.str.55, 8

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"mouse-3"
	.size	.L.str.56, 8

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"mouse-4"
	.size	.L.str.57, 8

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"mouse-5"
	.size	.L.str.58, 8

	.type	Scurrent_local_map,@object # @Scurrent_local_map
	.data
	.align	8
Scurrent_local_map:
	.quad	167772160               # 0xa000000
	.quad	Fcurrent_local_map
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.89
	.quad	0
	.quad	0
	.size	Scurrent_local_map, 48

	.type	Scurrent_global_map,@object # @Scurrent_global_map
	.align	8
Scurrent_global_map:
	.quad	167772160               # 0xa000000
	.quad	Fcurrent_global_map
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.90
	.quad	0
	.quad	0
	.size	Scurrent_global_map, 48

	.type	Scurrent_minor_mode_maps,@object # @Scurrent_minor_mode_maps
	.align	8
Scurrent_minor_mode_maps:
	.quad	167772160               # 0xa000000
	.quad	Fcurrent_minor_mode_maps
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.91
	.quad	0
	.quad	0
	.size	Scurrent_minor_mode_maps, 48

	.type	.L.str.59,@object       # @.str.59
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.59:
	.asciz	"`keymap' is reserved for embedded parent maps"
	.size	.L.str.59, 46

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"attempt to define a key in a non-keymap"
	.size	.L.str.60, 40

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"To bind the key %s, use [?%s], not [%s]"
	.size	.L.str.61, 40

	.type	previous_description_column,@object # @previous_description_column
	.local	previous_description_column
	.comm	previous_description_column,4,4
	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"Keyboard Macro\n"
	.size	.L.str.62, 16

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"Prefix Command\n"
	.size	.L.str.63, 16

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"??\n"
	.size	.L.str.64, 4

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"suppress-keymap"
	.size	.L.str.65, 16

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	" .. "
	.size	.L.str.66, 5

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"\n  (that binding is currently shadowed by another mode)"
	.size	.L.str.67, 56

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"  (binding currently shadowed)"
	.size	.L.str.68, 31

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"default"
	.size	.L.str.69, 8

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"keymapp"
	.size	.L.str.70, 8

	.type	Skeymapp,@object        # @Skeymapp
	.data
	.align	8
Skeymapp:
	.quad	167772160               # 0xa000000
	.quad	Fkeymapp
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.70
	.quad	0
	.quad	0
	.size	Skeymapp, 48

	.type	.L.str.71,@object       # @.str.71
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.71:
	.asciz	"keymap-parent"
	.size	.L.str.71, 14

	.type	Skeymap_parent,@object  # @Skeymap_parent
	.data
	.align	8
Skeymap_parent:
	.quad	167772160               # 0xa000000
	.quad	Fkeymap_parent
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.71
	.quad	0
	.quad	0
	.size	Skeymap_parent, 48

	.type	.L.str.72,@object       # @.str.72
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.72:
	.asciz	"keymap-prompt"
	.size	.L.str.72, 14

	.type	Skeymap_prompt,@object  # @Skeymap_prompt
	.data
	.align	8
Skeymap_prompt:
	.quad	167772160               # 0xa000000
	.quad	Fkeymap_prompt
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.72
	.quad	0
	.quad	0
	.size	Skeymap_prompt, 48

	.type	.L.str.73,@object       # @.str.73
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.73:
	.asciz	"set-keymap-parent"
	.size	.L.str.73, 18

	.type	Sset_keymap_parent,@object # @Sset_keymap_parent
	.data
	.align	8
Sset_keymap_parent:
	.quad	167772160               # 0xa000000
	.quad	Fset_keymap_parent
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.73
	.quad	0
	.quad	0
	.size	Sset_keymap_parent, 48

	.type	.L.str.74,@object       # @.str.74
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.74:
	.asciz	"make-keymap"
	.size	.L.str.74, 12

	.type	Smake_keymap,@object    # @Smake_keymap
	.data
	.align	8
Smake_keymap:
	.quad	167772160               # 0xa000000
	.quad	Fmake_keymap
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.74
	.quad	0
	.quad	0
	.size	Smake_keymap, 48

	.type	.L.str.75,@object       # @.str.75
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.75:
	.asciz	"make-sparse-keymap"
	.size	.L.str.75, 19

	.type	Smake_sparse_keymap,@object # @Smake_sparse_keymap
	.data
	.align	8
Smake_sparse_keymap:
	.quad	167772160               # 0xa000000
	.quad	Fmake_sparse_keymap
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.75
	.quad	0
	.quad	0
	.size	Smake_sparse_keymap, 48

	.type	.L.str.76,@object       # @.str.76
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.76:
	.asciz	"map-keymap-internal"
	.size	.L.str.76, 20

	.type	Smap_keymap_internal,@object # @Smap_keymap_internal
	.data
	.align	8
Smap_keymap_internal:
	.quad	167772160               # 0xa000000
	.quad	Fmap_keymap_internal
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.76
	.quad	0
	.quad	0
	.size	Smap_keymap_internal, 48

	.type	.L.str.77,@object       # @.str.77
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.77:
	.asciz	"map-keymap"
	.size	.L.str.77, 11

	.type	Smap_keymap,@object     # @Smap_keymap
	.data
	.align	8
Smap_keymap:
	.quad	167772160               # 0xa000000
	.quad	Fmap_keymap
	.short	2                       # 0x2
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.77
	.quad	0
	.quad	0
	.size	Smap_keymap, 48

	.type	.L.str.78,@object       # @.str.78
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.78:
	.asciz	"copy-keymap"
	.size	.L.str.78, 12

	.type	Scopy_keymap,@object    # @Scopy_keymap
	.data
	.align	8
Scopy_keymap:
	.quad	167772160               # 0xa000000
	.quad	Fcopy_keymap
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.78
	.quad	0
	.quad	0
	.size	Scopy_keymap, 48

	.type	.L.str.79,@object       # @.str.79
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.79:
	.asciz	"command-remapping"
	.size	.L.str.79, 18

	.type	Scommand_remapping,@object # @Scommand_remapping
	.data
	.align	8
Scommand_remapping:
	.quad	167772160               # 0xa000000
	.quad	Fcommand_remapping
	.short	1                       # 0x1
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.79
	.quad	0
	.quad	0
	.size	Scommand_remapping, 48

	.type	.L.str.80,@object       # @.str.80
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.80:
	.asciz	"key-binding"
	.size	.L.str.80, 12

	.type	Skey_binding,@object    # @Skey_binding
	.data
	.align	8
Skey_binding:
	.quad	167772160               # 0xa000000
	.quad	Fkey_binding
	.short	1                       # 0x1
	.short	4                       # 0x4
	.zero	4
	.quad	.L.str.80
	.quad	0
	.quad	0
	.size	Skey_binding, 48

	.type	.L.str.81,@object       # @.str.81
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.81:
	.asciz	"local-key-binding"
	.size	.L.str.81, 18

	.type	Slocal_key_binding,@object # @Slocal_key_binding
	.data
	.align	8
Slocal_key_binding:
	.quad	167772160               # 0xa000000
	.quad	Flocal_key_binding
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.81
	.quad	0
	.quad	0
	.size	Slocal_key_binding, 48

	.type	.L.str.82,@object       # @.str.82
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.82:
	.asciz	"global-key-binding"
	.size	.L.str.82, 19

	.type	Sglobal_key_binding,@object # @Sglobal_key_binding
	.data
	.align	8
Sglobal_key_binding:
	.quad	167772160               # 0xa000000
	.quad	Fglobal_key_binding
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.82
	.quad	0
	.quad	0
	.size	Sglobal_key_binding, 48

	.type	.L.str.83,@object       # @.str.83
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.83:
	.asciz	"minor-mode-key-binding"
	.size	.L.str.83, 23

	.type	Sminor_mode_key_binding,@object # @Sminor_mode_key_binding
	.data
	.align	8
Sminor_mode_key_binding:
	.quad	167772160               # 0xa000000
	.quad	Fminor_mode_key_binding
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.83
	.quad	0
	.quad	0
	.size	Sminor_mode_key_binding, 48

	.type	.L.str.84,@object       # @.str.84
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.84:
	.asciz	"define-key"
	.size	.L.str.84, 11

	.type	Sdefine_key,@object     # @Sdefine_key
	.data
	.align	8
Sdefine_key:
	.quad	167772160               # 0xa000000
	.quad	Fdefine_key
	.short	3                       # 0x3
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.84
	.quad	0
	.quad	0
	.size	Sdefine_key, 48

	.type	.L.str.85,@object       # @.str.85
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.85:
	.asciz	"lookup-key"
	.size	.L.str.85, 11

	.type	Slookup_key,@object     # @Slookup_key
	.data
	.align	8
Slookup_key:
	.quad	167772160               # 0xa000000
	.quad	Flookup_key
	.short	2                       # 0x2
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.85
	.quad	0
	.quad	0
	.size	Slookup_key, 48

	.type	.L.str.86,@object       # @.str.86
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.86:
	.asciz	"define-prefix-command"
	.size	.L.str.86, 22

	.type	Sdefine_prefix_command,@object # @Sdefine_prefix_command
	.data
	.align	8
Sdefine_prefix_command:
	.quad	167772160               # 0xa000000
	.quad	Fdefine_prefix_command
	.short	1                       # 0x1
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.86
	.quad	0
	.quad	0
	.size	Sdefine_prefix_command, 48

	.type	.L.str.87,@object       # @.str.87
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.87:
	.asciz	"use-global-map"
	.size	.L.str.87, 15

	.type	Suse_global_map,@object # @Suse_global_map
	.data
	.align	8
Suse_global_map:
	.quad	167772160               # 0xa000000
	.quad	Fuse_global_map
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.87
	.quad	0
	.quad	0
	.size	Suse_global_map, 48

	.type	.L.str.88,@object       # @.str.88
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.88:
	.asciz	"use-local-map"
	.size	.L.str.88, 14

	.type	Suse_local_map,@object  # @Suse_local_map
	.data
	.align	8
Suse_local_map:
	.quad	167772160               # 0xa000000
	.quad	Fuse_local_map
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.88
	.quad	0
	.quad	0
	.size	Suse_local_map, 48

	.type	.L.str.89,@object       # @.str.89
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.89:
	.asciz	"current-local-map"
	.size	.L.str.89, 18

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"current-global-map"
	.size	.L.str.90, 19

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"current-minor-mode-maps"
	.size	.L.str.91, 24

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"current-active-maps"
	.size	.L.str.92, 20

	.type	Scurrent_active_maps,@object # @Scurrent_active_maps
	.data
	.align	8
Scurrent_active_maps:
	.quad	167772160               # 0xa000000
	.quad	Fcurrent_active_maps
	.short	0                       # 0x0
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.92
	.quad	0
	.quad	0
	.size	Scurrent_active_maps, 48

	.type	.L.str.93,@object       # @.str.93
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.93:
	.asciz	"accessible-keymaps"
	.size	.L.str.93, 19

	.type	Saccessible_keymaps,@object # @Saccessible_keymaps
	.data
	.align	8
Saccessible_keymaps:
	.quad	167772160               # 0xa000000
	.quad	Faccessible_keymaps
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.93
	.quad	0
	.quad	0
	.size	Saccessible_keymaps, 48

	.type	.L.str.94,@object       # @.str.94
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.94:
	.asciz	"key-description"
	.size	.L.str.94, 16

	.type	Skey_description,@object # @Skey_description
	.data
	.align	8
Skey_description:
	.quad	167772160               # 0xa000000
	.quad	Fkey_description
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.94
	.quad	0
	.quad	0
	.size	Skey_description, 48

	.type	.L.str.95,@object       # @.str.95
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.95:
	.asciz	"describe-vector"
	.size	.L.str.95, 16

	.type	Sdescribe_vector,@object # @Sdescribe_vector
	.data
	.align	8
Sdescribe_vector:
	.quad	167772160               # 0xa000000
	.quad	Fdescribe_vector
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.95
	.quad	0
	.quad	0
	.size	Sdescribe_vector, 48

	.type	.L.str.96,@object       # @.str.96
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.96:
	.asciz	"single-key-description"
	.size	.L.str.96, 23

	.type	Ssingle_key_description,@object # @Ssingle_key_description
	.data
	.align	8
Ssingle_key_description:
	.quad	167772160               # 0xa000000
	.quad	Fsingle_key_description
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.96
	.quad	0
	.quad	0
	.size	Ssingle_key_description, 48

	.type	.L.str.97,@object       # @.str.97
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.97:
	.asciz	"text-char-description"
	.size	.L.str.97, 22

	.type	Stext_char_description,@object # @Stext_char_description
	.data
	.align	8
Stext_char_description:
	.quad	167772160               # 0xa000000
	.quad	Ftext_char_description
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.97
	.quad	0
	.quad	0
	.size	Stext_char_description, 48

	.type	.L.str.98,@object       # @.str.98
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.98:
	.asciz	"where-is-internal"
	.size	.L.str.98, 18

	.type	Swhere_is_internal,@object # @Swhere_is_internal
	.data
	.align	8
Swhere_is_internal:
	.quad	167772160               # 0xa000000
	.quad	Fwhere_is_internal
	.short	1                       # 0x1
	.short	5                       # 0x5
	.zero	4
	.quad	.L.str.98
	.quad	0
	.quad	0
	.size	Swhere_is_internal, 48

	.type	.L.str.99,@object       # @.str.99
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.99:
	.asciz	"describe-buffer-bindings"
	.size	.L.str.99, 25

	.type	Sdescribe_buffer_bindings,@object # @Sdescribe_buffer_bindings
	.data
	.align	8
Sdescribe_buffer_bindings:
	.quad	167772160               # 0xa000000
	.quad	Fdescribe_buffer_bindings
	.short	1                       # 0x1
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.99
	.quad	0
	.quad	0
	.size	Sdescribe_buffer_bindings, 48

	.type	.L.str.100,@object      # @.str.100
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.100:
	.asciz	"apropos-internal"
	.size	.L.str.100, 17

	.type	Sapropos_internal,@object # @Sapropos_internal
	.data
	.align	8
Sapropos_internal:
	.quad	167772160               # 0xa000000
	.quad	Fapropos_internal
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.100
	.quad	0
	.quad	0
	.size	Sapropos_internal, 48


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
