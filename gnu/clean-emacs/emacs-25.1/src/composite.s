	.text
	.file	"composite.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4611686018427387904     # double 2
	.text
	.globl	get_composition_id
	.align	16, 0x90
	.type	get_composition_id,@function
get_composition_id:                     # @get_composition_id
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
	subq	$528, %rsp              # imm = 0x210
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	composition_hash_table, %rdi
	callq	XHASH_TABLE
	movq	%rax, -104(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB0_2
# BB#1:                                 # %lor.lhs.false
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB0_3
.LBB0_2:                                # %if.then
	jmp	.LBB0_191
.LBB0_3:                                # %if.end
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB0_8
# BB#4:                                 # %if.then.9
	movq	-56(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jl	.LBB0_6
# BB#5:                                 # %lor.lhs.false.12
	movq	-56(%rbp), %rax
	sarq	$2, %rax
	cmpq	n_compositions, %rax
	jl	.LBB0_7
.LBB0_6:                                # %if.then.16
	jmp	.LBB0_191
.LBB0_7:                                # %if.end.17
	movq	-56(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_192
.LBB0_8:                                # %if.end.19
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB0_10
# BB#9:                                 # %if.then.24
	jmp	.LBB0_191
.LBB0_10:                               # %if.end.25
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB0_12
# BB#11:                                # %lor.lhs.false.33
	movq	-64(%rbp), %rax
	sarq	$2, %rax
	cmpq	-32(%rbp), %rax
	je	.LBB0_13
.LBB0_12:                               # %if.then.37
	jmp	.LBB0_191
.LBB0_13:                               # %if.end.38
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB0_15
# BB#14:                                # %if.then.45
	movl	$6, %eax
	movl	%eax, %edi
	movq	-72(%rbp), %rsi
	callq	Fmake_vector
	movq	%rax, -80(%rbp)
	jmp	.LBB0_71
.LBB0_15:                               # %if.else
	movq	-72(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB0_17
# BB#16:                                # %lor.lhs.false.49
	movq	-72(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB0_18
.LBB0_17:                               # %if.then.54
	movl	$1, %eax
	movl	%eax, %edi
	leaq	-72(%rbp), %rsi
	callq	Fvconcat
	movq	%rax, -80(%rbp)
	jmp	.LBB0_70
.LBB0_18:                               # %if.else.56
	movq	-72(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB0_19
	jmp	.LBB0_20
.LBB0_19:                               # %if.then.58
	movq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB0_69
.LBB0_20:                               # %if.else.59
	xorl	%edi, %edi
	movq	-72(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-256(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB0_67
# BB#21:                                # %if.then.63
	movq	-32(%rbp), %rdi
	callq	make_uninit_vector
	movq	%rax, -80(%rbp)
	movq	-48(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB0_22
	jmp	.LBB0_41
.LBB0_22:                               # %if.then.66
	movq	$0, -144(%rbp)
.LBB0_23:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-144(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jge	.LBB0_40
# BB#24:                                # %for.body
                                        #   in Loop: Header=BB0_23 Depth=1
	jmp	.LBB0_25
.LBB0_25:                               # %do.body
                                        #   in Loop: Header=BB0_23 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rdi
	callq	STRING_MULTIBYTE
	testb	$1, %al
	jne	.LBB0_26
	jmp	.LBB0_36
.LBB0_26:                               # %if.then.70
                                        #   in Loop: Header=BB0_23 Depth=1
	movq	-24(%rbp), %rax
	movq	-48(%rbp), %rdi
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	SDATA
	movq	-264(%rbp), %rdi        # 8-byte Reload
	addq	%rdi, %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB0_28
# BB#27:                                # %cond.true
                                        #   in Loop: Header=BB0_23 Depth=1
	movl	$1, -164(%rbp)
	movq	-160(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -268(%rbp)        # 4-byte Spill
	jmp	.LBB0_35
.LBB0_28:                               # %cond.false
                                        #   in Loop: Header=BB0_23 Depth=1
	movq	-160(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB0_30
# BB#29:                                # %cond.true.81
                                        #   in Loop: Header=BB0_23 Depth=1
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
	movl	%esi, -272(%rbp)        # 4-byte Spill
	jmp	.LBB0_34
.LBB0_30:                               # %cond.false.92
                                        #   in Loop: Header=BB0_23 Depth=1
	movq	-160(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB0_32
# BB#31:                                # %cond.true.97
                                        #   in Loop: Header=BB0_23 Depth=1
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
	movl	%ecx, -276(%rbp)        # 4-byte Spill
	jmp	.LBB0_33
.LBB0_32:                               # %cond.false.111
                                        #   in Loop: Header=BB0_23 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-164(%rbp), %rdx
	movq	-160(%rbp), %rdi
	callq	string_char
	movl	%eax, -276(%rbp)        # 4-byte Spill
.LBB0_33:                               # %cond.end
                                        #   in Loop: Header=BB0_23 Depth=1
	movl	-276(%rbp), %eax        # 4-byte Reload
	movl	%eax, -272(%rbp)        # 4-byte Spill
.LBB0_34:                               # %cond.end.114
                                        #   in Loop: Header=BB0_23 Depth=1
	movl	-272(%rbp), %eax        # 4-byte Reload
	movl	%eax, -268(%rbp)        # 4-byte Spill
.LBB0_35:                               # %cond.end.116
                                        #   in Loop: Header=BB0_23 Depth=1
	movl	-268(%rbp), %eax        # 4-byte Reload
	movl	%eax, -148(%rbp)
	movslq	-164(%rbp), %rcx
	addq	-24(%rbp), %rcx
	movq	%rcx, -24(%rbp)
	jmp	.LBB0_37
.LBB0_36:                               # %if.else.120
                                        #   in Loop: Header=BB0_23 Depth=1
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	SREF
	movzbl	%al, %ecx
	movl	%ecx, -148(%rbp)
	movq	-24(%rbp), %rsi
	addq	$1, %rsi
	movq	%rsi, -24(%rbp)
.LBB0_37:                               # %if.end.124
                                        #   in Loop: Header=BB0_23 Depth=1
	jmp	.LBB0_38
.LBB0_38:                               # %do.end
                                        #   in Loop: Header=BB0_23 Depth=1
	movq	-80(%rbp), %rdi
	movq	-144(%rbp), %rsi
	movslq	-148(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdx
	callq	ASET
# BB#39:                                # %for.inc
                                        #   in Loop: Header=BB0_23 Depth=1
	movq	-144(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -144(%rbp)
	jmp	.LBB0_23
.LBB0_40:                               # %for.end
	jmp	.LBB0_66
.LBB0_41:                               # %if.else.129
	movq	$0, -144(%rbp)
.LBB0_42:                               # %for.cond.130
                                        # =>This Inner Loop Header: Depth=1
	movq	-144(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jge	.LBB0_65
# BB#43:                                # %for.body.133
                                        #   in Loop: Header=BB0_42 Depth=1
	jmp	.LBB0_44
.LBB0_44:                               # %do.body.134
                                        #   in Loop: Header=BB0_42 Depth=1
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-288(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB0_58
# BB#45:                                # %if.then.139
                                        #   in Loop: Header=BB0_42 Depth=1
	movq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB0_47
# BB#46:                                # %cond.true.143
                                        #   in Loop: Header=BB0_42 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	jmp	.LBB0_48
.LBB0_47:                               # %cond.false.145
                                        #   in Loop: Header=BB0_42 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -296(%rbp)        # 8-byte Spill
	jmp	.LBB0_48
.LBB0_48:                               # %cond.end.146
                                        #   in Loop: Header=BB0_42 Depth=1
	movq	-296(%rbp), %rax        # 8-byte Reload
	addq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movzbl	(%rax), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	jne	.LBB0_50
# BB#49:                                # %cond.true.156
                                        #   in Loop: Header=BB0_42 Depth=1
	movl	$1, -180(%rbp)
	movq	-176(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -300(%rbp)        # 4-byte Spill
	jmp	.LBB0_57
.LBB0_50:                               # %cond.false.159
                                        #   in Loop: Header=BB0_42 Depth=1
	movq	-176(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB0_52
# BB#51:                                # %cond.true.164
                                        #   in Loop: Header=BB0_42 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -180(%rbp)
	movq	-176(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-176(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-176(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -304(%rbp)        # 4-byte Spill
	jmp	.LBB0_56
.LBB0_52:                               # %cond.false.179
                                        #   in Loop: Header=BB0_42 Depth=1
	movq	-176(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB0_54
# BB#53:                                # %cond.true.184
                                        #   in Loop: Header=BB0_42 Depth=1
	movl	$3, -180(%rbp)
	movq	-176(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-176(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-176(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -308(%rbp)        # 4-byte Spill
	jmp	.LBB0_55
.LBB0_54:                               # %cond.false.198
                                        #   in Loop: Header=BB0_42 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-180(%rbp), %rdx
	movq	-176(%rbp), %rdi
	callq	string_char
	movl	%eax, -308(%rbp)        # 4-byte Spill
.LBB0_55:                               # %cond.end.200
                                        #   in Loop: Header=BB0_42 Depth=1
	movl	-308(%rbp), %eax        # 4-byte Reload
	movl	%eax, -304(%rbp)        # 4-byte Spill
.LBB0_56:                               # %cond.end.202
                                        #   in Loop: Header=BB0_42 Depth=1
	movl	-304(%rbp), %eax        # 4-byte Reload
	movl	%eax, -300(%rbp)        # 4-byte Spill
.LBB0_57:                               # %cond.end.204
                                        #   in Loop: Header=BB0_42 Depth=1
	movl	-300(%rbp), %eax        # 4-byte Reload
	movl	%eax, -148(%rbp)
	movslq	-180(%rbp), %rcx
	addq	-24(%rbp), %rcx
	movq	%rcx, -24(%rbp)
	jmp	.LBB0_62
.LBB0_58:                               # %if.else.208
                                        #   in Loop: Header=BB0_42 Depth=1
	movq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB0_60
# BB#59:                                # %cond.true.213
                                        #   in Loop: Header=BB0_42 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	jmp	.LBB0_61
.LBB0_60:                               # %cond.false.216
                                        #   in Loop: Header=BB0_42 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	jmp	.LBB0_61
.LBB0_61:                               # %cond.end.217
                                        #   in Loop: Header=BB0_42 Depth=1
	movq	-320(%rbp), %rax        # 8-byte Reload
	addq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, -148(%rbp)
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
.LBB0_62:                               # %if.end.226
                                        #   in Loop: Header=BB0_42 Depth=1
	jmp	.LBB0_63
.LBB0_63:                               # %do.end.227
                                        #   in Loop: Header=BB0_42 Depth=1
	movq	-80(%rbp), %rdi
	movq	-144(%rbp), %rsi
	movslq	-148(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdx
	callq	ASET
# BB#64:                                # %for.inc.231
                                        #   in Loop: Header=BB0_42 Depth=1
	movq	-144(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -144(%rbp)
	jmp	.LBB0_42
.LBB0_65:                               # %for.end.233
	jmp	.LBB0_66
.LBB0_66:                               # %if.end.234
	jmp	.LBB0_68
.LBB0_67:                               # %if.else.235
	jmp	.LBB0_191
.LBB0_68:                               # %if.end.236
	jmp	.LBB0_69
.LBB0_69:                               # %if.end.237
	jmp	.LBB0_70
.LBB0_70:                               # %if.end.238
	jmp	.LBB0_71
.LBB0_71:                               # %if.end.239
	leaq	-120(%rbp), %rdx
	movq	-104(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	hash_lookup
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	jl	.LBB0_73
# BB#72:                                # %if.then.243
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	HASH_KEY
	movq	%rax, -80(%rbp)
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	HASH_VALUE
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	XSETCAR
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-80(%rbp), %rsi
	movq	-40(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rcx
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	Fcons
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	XSETCDR
	movq	-56(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_192
.LBB0_73:                               # %if.end.254
	movq	composition_table_size, %rax
	cmpq	n_compositions, %rax
	jg	.LBB0_75
# BB#74:                                # %if.then.257
	movabsq	$composition_table_size, %rsi
	movl	$1, %eax
	movl	%eax, %edx
	movq	$-1, %rcx
	movl	$8, %eax
	movl	%eax, %r8d
	movq	composition_table, %rdi
	callq	xpalloc
	movq	%rax, composition_table
.LBB0_75:                               # %if.end.259
	movq	-80(%rbp), %rdi
	callq	XVECTOR
	addq	$8, %rax
	movq	%rax, -88(%rbp)
	movq	-72(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB0_76
	jmp	.LBB0_85
.LBB0_76:                               # %land.lhs.true
	movq	-72(%rbp), %rdi
	callq	ASIZE
	cmpq	$2, %rax
	jl	.LBB0_85
# BB#77:                                # %land.lhs.true.266
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-72(%rbp), %rdi
	callq	AREF
	movq	%rax, %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB0_78
	jmp	.LBB0_85
.LBB0_78:                               # %if.then.270
	movq	-80(%rbp), %rdi
	callq	ASIZE
	movq	%rax, -192(%rbp)
	movq	$1, -144(%rbp)
.LBB0_79:                               # %for.cond.272
                                        # =>This Inner Loop Header: Depth=1
	movq	-144(%rbp), %rax
	cmpq	-192(%rbp), %rax
	jge	.LBB0_84
# BB#80:                                # %for.body.275
                                        #   in Loop: Header=BB0_79 Depth=1
	movq	-80(%rbp), %rdi
	movq	-144(%rbp), %rsi
	callq	AREF
	movq	%rax, %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB0_82
# BB#81:                                # %if.then.278
	jmp	.LBB0_191
.LBB0_82:                               # %if.end.279
                                        #   in Loop: Header=BB0_79 Depth=1
	jmp	.LBB0_83
.LBB0_83:                               # %for.inc.280
                                        #   in Loop: Header=BB0_79 Depth=1
	movq	-144(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -144(%rbp)
	jmp	.LBB0_79
.LBB0_84:                               # %for.end.282
	jmp	.LBB0_97
.LBB0_85:                               # %if.else.283
	movq	-72(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB0_87
# BB#86:                                # %lor.lhs.false.286
	movq	-72(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB0_96
.LBB0_87:                               # %if.then.291
	movq	-80(%rbp), %rdi
	callq	ASIZE
	movl	$2, %ecx
	movl	%ecx, %edi
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rax
	cqto
	idivq	%rdi
	cmpq	$0, %rdx
	jne	.LBB0_89
# BB#88:                                # %if.then.296
	jmp	.LBB0_191
.LBB0_89:                               # %if.end.297
	movq	$0, -144(%rbp)
.LBB0_90:                               # %for.cond.298
                                        # =>This Inner Loop Header: Depth=1
	movq	-144(%rbp), %rax
	cmpq	-200(%rbp), %rax
	jge	.LBB0_95
# BB#91:                                # %for.body.301
                                        #   in Loop: Header=BB0_90 Depth=1
	movq	-144(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	andq	$7, %rax
	movl	%eax, %edx
	andl	$-5, %edx
	cmpl	$2, %edx
	je	.LBB0_93
# BB#92:                                # %if.then.308
	jmp	.LBB0_191
.LBB0_93:                               # %if.end.309
                                        #   in Loop: Header=BB0_90 Depth=1
	jmp	.LBB0_94
.LBB0_94:                               # %for.inc.310
                                        #   in Loop: Header=BB0_90 Depth=1
	movq	-144(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -144(%rbp)
	jmp	.LBB0_90
.LBB0_95:                               # %for.end.312
	jmp	.LBB0_96
.LBB0_96:                               # %if.end.313
	jmp	.LBB0_97
.LBB0_97:                               # %if.end.314
	movq	n_compositions, %rdi
	callq	make_natnum
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	XSETCAR
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-80(%rbp), %rsi
	movq	-40(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rcx
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	Fcons
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	XSETCDR
	movq	-104(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-56(%rbp), %rdx
	movq	-120(%rbp), %rcx
	callq	hash_put
	xorl	%edi, %edi
	movq	%rax, -112(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-360(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB0_99
# BB#98:                                # %cond.true.327
	xorl	%eax, %eax
	movl	%eax, -364(%rbp)        # 4-byte Spill
	jmp	.LBB0_102
.LBB0_99:                               # %cond.false.328
	movb	$1, %al
	movq	-72(%rbp), %rcx
	andq	$7, %rcx
	movl	%ecx, %edx
	andl	$-5, %edx
	cmpl	$2, %edx
	movb	%al, -365(%rbp)         # 1-byte Spill
	je	.LBB0_101
# BB#100:                               # %lor.rhs
	movq	-72(%rbp), %rdi
	callq	STRINGP
	movb	%al, -365(%rbp)         # 1-byte Spill
.LBB0_101:                              # %lor.end
	movb	-365(%rbp), %al         # 1-byte Reload
	movl	$3, %ecx
	movl	$2, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -364(%rbp)        # 4-byte Spill
.LBB0_102:                              # %cond.end.337
	movl	-364(%rbp), %eax        # 4-byte Reload
	movl	%eax, -124(%rbp)
	cmpl	$3, -124(%rbp)
	jne	.LBB0_104
# BB#103:                               # %cond.true.341
	movq	-80(%rbp), %rdi
	callq	ASIZE
	movl	$2, %ecx
	movl	%ecx, %edi
	addq	$1, %rax
	cqto
	idivq	%rdi
	movq	%rax, -376(%rbp)        # 8-byte Spill
	jmp	.LBB0_105
.LBB0_104:                              # %cond.false.344
	movq	-80(%rbp), %rdi
	callq	ASIZE
	movq	%rax, -376(%rbp)        # 8-byte Spill
.LBB0_105:                              # %cond.end.346
	movq	-376(%rbp), %rax        # 8-byte Reload
	movl	$1073741823, %ecx       # imm = 0x3FFFFFFF
	movl	%ecx, %edx
	movq	%rax, -96(%rbp)
	cmpq	-96(%rbp), %rdx
	jge	.LBB0_107
# BB#106:                               # %if.then.350
	movq	$-1, %rdi
	callq	memory_full
.LBB0_107:                              # %if.end.351
	movl	$48, %eax
	movl	%eax, %edi
	callq	xmalloc
	movl	$4, %ecx
	movl	%ecx, %esi
	movq	%rax, -136(%rbp)
	movl	-124(%rbp), %ecx
	movq	-136(%rbp), %rax
	movl	%ecx, 20(%rax)
	movq	-112(%rbp), %rax
	movq	-136(%rbp), %rdi
	movq	%rax, 24(%rdi)
	movq	-96(%rbp), %rax
	movl	%eax, %ecx
	movq	-136(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-96(%rbp), %rdi
	callq	xnmalloc
	movq	-136(%rbp), %rsi
	movq	%rax, 40(%rsi)
	movq	-136(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-136(%rbp), %rax
	cmpl	$3, 20(%rax)
	je	.LBB0_135
# BB#108:                               # %if.then.361
	movq	-136(%rbp), %rax
	movl	$0, 16(%rax)
	movq	$0, -144(%rbp)
.LBB0_109:                              # %for.cond.362
                                        # =>This Inner Loop Header: Depth=1
	movq	-144(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jge	.LBB0_134
# BB#110:                               # %for.body.365
                                        #   in Loop: Header=BB0_109 Depth=1
	movq	-144(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	sarq	$2, %rax
	movl	%eax, %edx
	movl	%edx, -148(%rbp)
	cmpl	$9, -148(%rbp)
	jne	.LBB0_112
# BB#111:                               # %cond.true.371
                                        #   in Loop: Header=BB0_109 Depth=1
	movl	$1, %eax
	movl	%eax, -380(%rbp)        # 4-byte Spill
	jmp	.LBB0_130
.LBB0_112:                              # %cond.false.372
                                        #   in Loop: Header=BB0_109 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB0_113
	jmp	.LBB0_114
.LBB0_113:                              # %cond.true.373
                                        #   in Loop: Header=BB0_109 Depth=1
	movl	-148(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB0_115
	jmp	.LBB0_128
.LBB0_114:                              # %cond.false.377
                                        #   in Loop: Header=BB0_109 Depth=1
	movslq	-148(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB0_128
.LBB0_115:                              # %cond.true.382
                                        #   in Loop: Header=BB0_109 Depth=1
	cmpl	$32, -148(%rbp)
	jge	.LBB0_123
# BB#116:                               # %cond.true.385
                                        #   in Loop: Header=BB0_109 Depth=1
	cmpl	$9, -148(%rbp)
	jne	.LBB0_118
# BB#117:                               # %cond.true.388
                                        #   in Loop: Header=BB0_109 Depth=1
	movq	current_buffer, %rax
	movq	152(%rax), %rax
	sarq	$2, %rax
	movq	%rax, %rdi
	callq	sanitize_tab_width
	movl	%eax, -384(%rbp)        # 4-byte Spill
	jmp	.LBB0_122
.LBB0_118:                              # %cond.false.391
                                        #   in Loop: Header=BB0_109 Depth=1
	cmpl	$10, -148(%rbp)
	jne	.LBB0_120
# BB#119:                               # %cond.true.394
                                        #   in Loop: Header=BB0_109 Depth=1
	xorl	%eax, %eax
	movl	%eax, -388(%rbp)        # 4-byte Spill
	jmp	.LBB0_121
.LBB0_120:                              # %cond.false.395
                                        #   in Loop: Header=BB0_109 Depth=1
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	232(%rax), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$2, %edi
	movl	$4, %ecx
	movq	-400(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	cmovel	%ecx, %edi
	movl	%edi, -388(%rbp)        # 4-byte Spill
.LBB0_121:                              # %cond.end.400
                                        #   in Loop: Header=BB0_109 Depth=1
	movl	-388(%rbp), %eax        # 4-byte Reload
	movl	%eax, -384(%rbp)        # 4-byte Spill
.LBB0_122:                              # %cond.end.402
                                        #   in Loop: Header=BB0_109 Depth=1
	movl	-384(%rbp), %eax        # 4-byte Reload
	movl	%eax, -404(%rbp)        # 4-byte Spill
	jmp	.LBB0_127
.LBB0_123:                              # %cond.false.404
                                        #   in Loop: Header=BB0_109 Depth=1
	cmpl	$127, -148(%rbp)
	jge	.LBB0_125
# BB#124:                               # %cond.true.407
                                        #   in Loop: Header=BB0_109 Depth=1
	movl	$1, %eax
	movl	%eax, -408(%rbp)        # 4-byte Spill
	jmp	.LBB0_126
.LBB0_125:                              # %cond.false.408
                                        #   in Loop: Header=BB0_109 Depth=1
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	232(%rax), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$2, %edi
	movl	$4, %ecx
	movq	-416(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	cmovel	%ecx, %edi
	movl	%edi, -408(%rbp)        # 4-byte Spill
.LBB0_126:                              # %cond.end.414
                                        #   in Loop: Header=BB0_109 Depth=1
	movl	-408(%rbp), %eax        # 4-byte Reload
	movl	%eax, -404(%rbp)        # 4-byte Spill
.LBB0_127:                              # %cond.end.416
                                        #   in Loop: Header=BB0_109 Depth=1
	movl	-404(%rbp), %eax        # 4-byte Reload
	movl	%eax, -420(%rbp)        # 4-byte Spill
	jmp	.LBB0_129
.LBB0_128:                              # %cond.false.418
                                        #   in Loop: Header=BB0_109 Depth=1
	movq	globals+224, %rdi
	movl	-148(%rbp), %esi
	callq	CHAR_TABLE_REF
	sarq	$2, %rax
	movq	%rax, %rdi
	callq	sanitize_char_width
	movl	%eax, -420(%rbp)        # 4-byte Spill
.LBB0_129:                              # %cond.end.422
                                        #   in Loop: Header=BB0_109 Depth=1
	movl	-420(%rbp), %eax        # 4-byte Reload
	movl	%eax, -380(%rbp)        # 4-byte Spill
.LBB0_130:                              # %cond.end.424
                                        #   in Loop: Header=BB0_109 Depth=1
	movl	-380(%rbp), %eax        # 4-byte Reload
	movl	%eax, -204(%rbp)
	movq	-136(%rbp), %rcx
	movl	16(%rcx), %eax
	cmpl	-204(%rbp), %eax
	jge	.LBB0_132
# BB#131:                               # %if.then.429
                                        #   in Loop: Header=BB0_109 Depth=1
	movl	-204(%rbp), %eax
	movq	-136(%rbp), %rcx
	movl	%eax, 16(%rcx)
.LBB0_132:                              # %if.end.431
                                        #   in Loop: Header=BB0_109 Depth=1
	jmp	.LBB0_133
.LBB0_133:                              # %for.inc.432
                                        #   in Loop: Header=BB0_109 Depth=1
	movq	-144(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -144(%rbp)
	jmp	.LBB0_109
.LBB0_134:                              # %for.end.434
	jmp	.LBB0_190
.LBB0_135:                              # %if.else.435
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -216(%rbp)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -148(%rbp)
	cmpl	$9, -148(%rbp)
	je	.LBB0_154
# BB#136:                               # %cond.true.441
	movb	$1, %al
	testb	$1, %al
	jne	.LBB0_137
	jmp	.LBB0_138
.LBB0_137:                              # %cond.true.442
	movl	-148(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB0_139
	jmp	.LBB0_152
.LBB0_138:                              # %cond.false.446
	movslq	-148(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB0_152
.LBB0_139:                              # %cond.true.451
	cmpl	$32, -148(%rbp)
	jge	.LBB0_147
# BB#140:                               # %cond.true.454
	cmpl	$9, -148(%rbp)
	jne	.LBB0_142
# BB#141:                               # %cond.true.457
	movq	current_buffer, %rax
	movq	152(%rax), %rax
	sarq	$2, %rax
	movq	%rax, %rdi
	callq	sanitize_tab_width
	movl	%eax, -424(%rbp)        # 4-byte Spill
	jmp	.LBB0_146
.LBB0_142:                              # %cond.false.461
	cmpl	$10, -148(%rbp)
	jne	.LBB0_144
# BB#143:                               # %cond.true.464
	xorl	%eax, %eax
	movl	%eax, -428(%rbp)        # 4-byte Spill
	jmp	.LBB0_145
.LBB0_144:                              # %cond.false.465
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	232(%rax), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$2, %edi
	movl	$4, %ecx
	movq	-440(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	cmovel	%ecx, %edi
	movl	%edi, -428(%rbp)        # 4-byte Spill
.LBB0_145:                              # %cond.end.471
	movl	-428(%rbp), %eax        # 4-byte Reload
	movl	%eax, -424(%rbp)        # 4-byte Spill
.LBB0_146:                              # %cond.end.473
	movl	-424(%rbp), %eax        # 4-byte Reload
	movl	%eax, -444(%rbp)        # 4-byte Spill
	jmp	.LBB0_151
.LBB0_147:                              # %cond.false.475
	cmpl	$127, -148(%rbp)
	jge	.LBB0_149
# BB#148:                               # %cond.true.478
	movl	$1, %eax
	movl	%eax, -448(%rbp)        # 4-byte Spill
	jmp	.LBB0_150
.LBB0_149:                              # %cond.false.479
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	232(%rax), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$2, %edi
	movl	$4, %ecx
	movq	-456(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	cmovel	%ecx, %edi
	movl	%edi, -448(%rbp)        # 4-byte Spill
.LBB0_150:                              # %cond.end.485
	movl	-448(%rbp), %eax        # 4-byte Reload
	movl	%eax, -444(%rbp)        # 4-byte Spill
.LBB0_151:                              # %cond.end.487
	movl	-444(%rbp), %eax        # 4-byte Reload
	movl	%eax, -460(%rbp)        # 4-byte Spill
	jmp	.LBB0_153
.LBB0_152:                              # %cond.false.489
	movq	globals+224, %rdi
	movl	-148(%rbp), %esi
	callq	CHAR_TABLE_REF
	sarq	$2, %rax
	movq	%rax, %rdi
	callq	sanitize_char_width
	movl	%eax, -460(%rbp)        # 4-byte Spill
.LBB0_153:                              # %cond.end.493
	movl	-460(%rbp), %eax        # 4-byte Reload
	movl	%eax, -464(%rbp)        # 4-byte Spill
	jmp	.LBB0_155
.LBB0_154:                              # %cond.false.495
	movl	$1, %eax
	movl	%eax, -464(%rbp)        # 4-byte Spill
	jmp	.LBB0_155
.LBB0_155:                              # %cond.end.496
	movl	-464(%rbp), %eax        # 4-byte Reload
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -224(%rbp)
	movq	$1, -144(%rbp)
.LBB0_156:                              # %for.cond.499
                                        # =>This Inner Loop Header: Depth=1
	movq	-144(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jge	.LBB0_187
# BB#157:                               # %for.body.502
                                        #   in Loop: Header=BB0_156 Depth=1
	movq	-144(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	sarq	$2, %rax
	movl	%eax, %edx
	movl	%edx, -228(%rbp)
	movq	-144(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	8(%rcx,%rax,8), %rax
	sarq	$2, %rax
	movl	%eax, %edx
	movl	%edx, -148(%rbp)
	cmpl	$9, -148(%rbp)
	je	.LBB0_176
# BB#158:                               # %cond.true.513
                                        #   in Loop: Header=BB0_156 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB0_159
	jmp	.LBB0_160
.LBB0_159:                              # %cond.true.514
                                        #   in Loop: Header=BB0_156 Depth=1
	movl	-148(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB0_161
	jmp	.LBB0_174
.LBB0_160:                              # %cond.false.518
                                        #   in Loop: Header=BB0_156 Depth=1
	movslq	-148(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB0_174
.LBB0_161:                              # %cond.true.523
                                        #   in Loop: Header=BB0_156 Depth=1
	cmpl	$32, -148(%rbp)
	jge	.LBB0_169
# BB#162:                               # %cond.true.526
                                        #   in Loop: Header=BB0_156 Depth=1
	cmpl	$9, -148(%rbp)
	jne	.LBB0_164
# BB#163:                               # %cond.true.529
                                        #   in Loop: Header=BB0_156 Depth=1
	movq	current_buffer, %rax
	movq	152(%rax), %rax
	sarq	$2, %rax
	movq	%rax, %rdi
	callq	sanitize_tab_width
	movl	%eax, -468(%rbp)        # 4-byte Spill
	jmp	.LBB0_168
.LBB0_164:                              # %cond.false.533
                                        #   in Loop: Header=BB0_156 Depth=1
	cmpl	$10, -148(%rbp)
	jne	.LBB0_166
# BB#165:                               # %cond.true.536
                                        #   in Loop: Header=BB0_156 Depth=1
	xorl	%eax, %eax
	movl	%eax, -472(%rbp)        # 4-byte Spill
	jmp	.LBB0_167
.LBB0_166:                              # %cond.false.537
                                        #   in Loop: Header=BB0_156 Depth=1
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	232(%rax), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$2, %edi
	movl	$4, %ecx
	movq	-480(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	cmovel	%ecx, %edi
	movl	%edi, -472(%rbp)        # 4-byte Spill
.LBB0_167:                              # %cond.end.543
                                        #   in Loop: Header=BB0_156 Depth=1
	movl	-472(%rbp), %eax        # 4-byte Reload
	movl	%eax, -468(%rbp)        # 4-byte Spill
.LBB0_168:                              # %cond.end.545
                                        #   in Loop: Header=BB0_156 Depth=1
	movl	-468(%rbp), %eax        # 4-byte Reload
	movl	%eax, -484(%rbp)        # 4-byte Spill
	jmp	.LBB0_173
.LBB0_169:                              # %cond.false.547
                                        #   in Loop: Header=BB0_156 Depth=1
	cmpl	$127, -148(%rbp)
	jge	.LBB0_171
# BB#170:                               # %cond.true.550
                                        #   in Loop: Header=BB0_156 Depth=1
	movl	$1, %eax
	movl	%eax, -488(%rbp)        # 4-byte Spill
	jmp	.LBB0_172
.LBB0_171:                              # %cond.false.551
                                        #   in Loop: Header=BB0_156 Depth=1
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	232(%rax), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$2, %edi
	movl	$4, %ecx
	movq	-496(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	cmovel	%ecx, %edi
	movl	%edi, -488(%rbp)        # 4-byte Spill
.LBB0_172:                              # %cond.end.557
                                        #   in Loop: Header=BB0_156 Depth=1
	movl	-488(%rbp), %eax        # 4-byte Reload
	movl	%eax, -484(%rbp)        # 4-byte Spill
.LBB0_173:                              # %cond.end.559
                                        #   in Loop: Header=BB0_156 Depth=1
	movl	-484(%rbp), %eax        # 4-byte Reload
	movl	%eax, -500(%rbp)        # 4-byte Spill
	jmp	.LBB0_175
.LBB0_174:                              # %cond.false.561
                                        #   in Loop: Header=BB0_156 Depth=1
	movq	globals+224, %rdi
	movl	-148(%rbp), %esi
	callq	CHAR_TABLE_REF
	sarq	$2, %rax
	movq	%rax, %rdi
	callq	sanitize_char_width
	movl	%eax, -500(%rbp)        # 4-byte Spill
.LBB0_175:                              # %cond.end.565
                                        #   in Loop: Header=BB0_156 Depth=1
	movl	-500(%rbp), %eax        # 4-byte Reload
	movl	%eax, -504(%rbp)        # 4-byte Spill
	jmp	.LBB0_177
.LBB0_176:                              # %cond.false.567
                                        #   in Loop: Header=BB0_156 Depth=1
	movl	$1, %eax
	movl	%eax, -504(%rbp)        # 4-byte Spill
	jmp	.LBB0_177
.LBB0_177:                              # %cond.end.568
                                        #   in Loop: Header=BB0_156 Depth=1
	movl	-504(%rbp), %eax        # 4-byte Reload
	movl	%eax, -240(%rbp)
# BB#178:                               # %do.body.570
                                        #   in Loop: Header=BB0_156 Depth=1
	movl	$12, %eax
	movl	-228(%rbp), %ecx
	andl	$255, %ecx
	movl	%ecx, -228(%rbp)
	movl	-228(%rbp), %ecx
	movl	%eax, -508(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-508(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%eax, -232(%rbp)
	cmpl	$12, -232(%rbp)
	jle	.LBB0_180
# BB#179:                               # %if.then.575
                                        #   in Loop: Header=BB0_156 Depth=1
	movl	$11, -232(%rbp)
.LBB0_180:                              # %if.end.576
                                        #   in Loop: Header=BB0_156 Depth=1
	movl	$12, %eax
	movl	-228(%rbp), %ecx
	movl	%eax, -512(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-512(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%edx, -236(%rbp)
# BB#181:                               # %do.end.578
                                        #   in Loop: Header=BB0_156 Depth=1
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movl	$3, %eax
	movsd	-216(%rbp), %xmm1       # xmm1 = mem[0],zero
	movl	-232(%rbp), %ecx
	movl	%eax, -516(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-516(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cvtsi2sdl	%edx, %xmm2
	movsd	-224(%rbp), %xmm3       # xmm3 = mem[0],zero
	subsd	-216(%rbp), %xmm3
	mulsd	%xmm3, %xmm2
	divsd	%xmm0, %xmm2
	addsd	%xmm2, %xmm1
	movl	-236(%rbp), %edx
	movl	%edx, %eax
	cltd
	idivl	%ecx
	imull	-240(%rbp), %edx
	cvtsi2sdl	%edx, %xmm2
	divsd	%xmm0, %xmm2
	subsd	%xmm2, %xmm1
	movsd	%xmm1, -248(%rbp)
	movsd	-248(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-216(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_183
# BB#182:                               # %if.then.591
                                        #   in Loop: Header=BB0_156 Depth=1
	movsd	-248(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -216(%rbp)
.LBB0_183:                              # %if.end.592
                                        #   in Loop: Header=BB0_156 Depth=1
	movsd	-248(%rbp), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-240(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	ucomisd	-224(%rbp), %xmm0
	jbe	.LBB0_185
# BB#184:                               # %if.then.597
                                        #   in Loop: Header=BB0_156 Depth=1
	movsd	-248(%rbp), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-240(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -224(%rbp)
.LBB0_185:                              # %if.end.600
                                        #   in Loop: Header=BB0_156 Depth=1
	jmp	.LBB0_186
.LBB0_186:                              # %for.inc.601
                                        #   in Loop: Header=BB0_156 Depth=1
	movq	-144(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -144(%rbp)
	jmp	.LBB0_156
.LBB0_187:                              # %for.end.603
	movsd	-224(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-216(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movq	-136(%rbp), %rcx
	movl	%eax, 16(%rcx)
	movq	-136(%rbp), %rcx
	cvtsi2sdl	16(%rcx), %xmm0
	movsd	-224(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-216(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_189
# BB#188:                               # %if.then.612
	movq	-136(%rbp), %rax
	movl	16(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 16(%rax)
.LBB0_189:                              # %if.end.615
	jmp	.LBB0_190
.LBB0_190:                              # %if.end.616
	movq	-136(%rbp), %rax
	movq	n_compositions, %rcx
	movq	composition_table, %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	n_compositions, %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, n_compositions
	movq	%rax, -8(%rbp)
	jmp	.LBB0_192
.LBB0_191:                              # %invalid_composition
	movq	$-1, -8(%rbp)
.LBB0_192:                              # %return
	movq	-8(%rbp), %rax
	addq	$528, %rsp              # imm = 0x210
	popq	%rbp
	retq
.Lfunc_end0:
	.size	get_composition_id, .Lfunc_end0-get_composition_id
	.cfi_endproc

	.globl	find_composition
	.align	16, 0x90
	.type	find_composition,@function
find_composition:                       # @find_composition
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
	subq	$112, %rsp
	movl	$290, %eax              # imm = 0x122
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r8
	movq	-56(%rbp), %r9
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	get_property_and_range
	testb	$1, %al
	jne	.LBB1_1
	jmp	.LBB1_2
.LBB1_1:                                # %if.then
	movb	$1, -1(%rbp)
	jmp	.LBB1_15
.LBB1_2:                                # %if.end
	cmpq	$0, -24(%rbp)
	jl	.LBB1_4
# BB#3:                                 # %lor.lhs.false
	movq	-24(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB1_5
.LBB1_4:                                # %if.then.3
	movb	$0, -1(%rbp)
	jmp	.LBB1_15
.LBB1_5:                                # %if.end.4
	movq	-24(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jle	.LBB1_9
# BB#6:                                 # %if.then.6
	movl	$290, %edi              # imm = 0x122
	movq	-16(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rdx
	movq	-24(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fnext_single_property_change
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB1_8
# BB#7:                                 # %if.then.12
	movb	$0, -1(%rbp)
	jmp	.LBB1_15
.LBB1_8:                                # %if.end.13
	jmp	.LBB1_14
.LBB1_9:                                # %if.else
	movl	$290, %edi              # imm = 0x122
	movq	-16(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r8
	movq	-56(%rbp), %r9
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	get_property_and_range
	testb	$1, %al
	jne	.LBB1_10
	jmp	.LBB1_11
.LBB1_10:                               # %if.then.16
	movb	$1, -1(%rbp)
	jmp	.LBB1_15
.LBB1_11:                               # %if.end.17
	movl	$290, %edi              # imm = 0x122
	movq	-16(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rdx
	movq	-24(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fprevious_single_property_change
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB1_13
# BB#12:                                # %if.then.26
	movb	$0, -1(%rbp)
	jmp	.LBB1_15
.LBB1_13:                               # %if.end.27
	movq	-16(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -16(%rbp)
.LBB1_14:                               # %if.end.28
	movl	$290, %edi              # imm = 0x122
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r8
	movq	-56(%rbp), %r9
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	get_property_and_range
	movb	$1, -1(%rbp)
	movb	%al, -105(%rbp)         # 1-byte Spill
.LBB1_15:                               # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	find_composition, .Lfunc_end1-find_composition
	.cfi_endproc

	.globl	update_compositions
	.align	16, 0x90
	.type	update_compositions,@function
update_compositions:                    # @update_compositions
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
	subq	$288, %rsp              # imm = 0x120
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -56(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -64(%rbp)
	testb	$1, globals+3396
	je	.LBB2_2
# BB#1:                                 # %if.then
	jmp	.LBB2_47
.LBB2_2:                                # %if.end
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	cmpq	-8(%rbp), %rax
	jg	.LBB2_5
# BB#3:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jg	.LBB2_5
# BB#4:                                 # %land.lhs.true.2
	movq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	jle	.LBB2_6
.LBB2_5:                                # %if.then.4
	jmp	.LBB2_47
.LBB2_6:                                # %if.end.5
	movl	-20(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB2_23
# BB#7:                                 # %if.then.7
	movq	-8(%rbp), %rax
	movq	current_buffer, %rcx
	cmpq	752(%rcx), %rax
	jle	.LBB2_15
# BB#8:                                 # %land.lhs.true.10
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	$-1, %rsi
	leaq	-40(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	leaq	-32(%rbp), %r8
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %r9
	callq	find_composition
	testb	$1, %al
	jne	.LBB2_9
	jmp	.LBB2_15
.LBB2_9:                                # %land.lhs.true.12
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	composition_valid_p
	testb	$1, %al
	jne	.LBB2_10
	jmp	.LBB2_15
.LBB2_10:                               # %if.then.14
	movq	-40(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jle	.LBB2_12
# BB#11:                                # %if.then.16
	movq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)
.LBB2_12:                               # %if.end.17
	movq	-8(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jge	.LBB2_14
# BB#13:                                # %if.then.19
	movl	$290, %edi              # imm = 0x122
	movq	-8(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-48(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rdi
	movq	-32(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rsi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	Fcons
	xorl	%edi, %edi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	callq	Fput_text_property
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB2_14:                               # %if.end.28
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	run_composition_function
	movq	-48(%rbp), %rdx
	movq	%rdx, -8(%rbp)
	jmp	.LBB2_22
.LBB2_15:                               # %if.else
	movq	-8(%rbp), %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	jge	.LBB2_21
# BB#16:                                # %land.lhs.true.31
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	$-1, %rsi
	leaq	-40(%rbp), %rdx
	leaq	-8(%rbp), %rcx
	leaq	-32(%rbp), %r8
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %r9
	callq	find_composition
	testb	$1, %al
	jne	.LBB2_17
	jmp	.LBB2_21
.LBB2_17:                               # %land.lhs.true.34
	movq	-40(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	composition_valid_p
	testb	$1, %al
	jne	.LBB2_18
	jmp	.LBB2_21
.LBB2_18:                               # %if.then.36
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jle	.LBB2_20
# BB#19:                                # %if.then.38
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)
.LBB2_20:                               # %if.end.39
	movq	-40(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	run_composition_function
.LBB2_21:                               # %if.end.40
	jmp	.LBB2_22
.LBB2_22:                               # %if.end.41
	jmp	.LBB2_23
.LBB2_23:                               # %if.end.42
	movl	-20(%rbp), %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB2_32
# BB#24:                                # %if.then.45
	jmp	.LBB2_25
.LBB2_25:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rsi
	subq	$1, %rsi
	cmpq	%rsi, %rdx
	movb	%cl, -129(%rbp)         # 1-byte Spill
	jge	.LBB2_29
# BB#26:                                # %land.lhs.true.48
                                        #   in Loop: Header=BB2_25 Depth=1
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	leaq	-40(%rbp), %rdx
	leaq	-8(%rbp), %rcx
	leaq	-32(%rbp), %r8
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	-144(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %r9
	callq	find_composition
	xorl	%r10d, %r10d
	movb	%r10b, %r11b
	testb	$1, %al
	movb	%r11b, -129(%rbp)       # 1-byte Spill
	jne	.LBB2_27
	jmp	.LBB2_29
.LBB2_27:                               # %land.lhs.true.51
                                        #   in Loop: Header=BB2_25 Depth=1
	movq	-40(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	composition_valid_p
	xorl	%ecx, %ecx
	movb	%cl, %r8b
	testb	$1, %al
	movb	%r8b, -129(%rbp)        # 1-byte Spill
	jne	.LBB2_28
	jmp	.LBB2_29
.LBB2_28:                               # %land.rhs
                                        #   in Loop: Header=BB2_25 Depth=1
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	subq	$1, %rcx
	cmpq	%rcx, %rax
	setl	%dl
	movb	%dl, -129(%rbp)         # 1-byte Spill
.LBB2_29:                               # %land.end
                                        #   in Loop: Header=BB2_25 Depth=1
	movb	-129(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB2_30
	jmp	.LBB2_31
.LBB2_30:                               # %while.body
                                        #   in Loop: Header=BB2_25 Depth=1
	movq	-40(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	run_composition_function
	jmp	.LBB2_25
.LBB2_31:                               # %while.end
	jmp	.LBB2_32
.LBB2_32:                               # %if.end.55
	movl	-20(%rbp), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	.LBB2_45
# BB#33:                                # %if.then.58
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jge	.LBB2_39
# BB#34:                                # %land.lhs.true.60
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	$-1, %rsi
	leaq	-40(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	leaq	-32(%rbp), %r8
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %r9
	callq	find_composition
	testb	$1, %al
	jne	.LBB2_35
	jmp	.LBB2_39
.LBB2_35:                               # %land.lhs.true.64
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	composition_valid_p
	testb	$1, %al
	jne	.LBB2_36
	jmp	.LBB2_39
.LBB2_36:                               # %if.then.66
	movq	-16(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jge	.LBB2_38
# BB#37:                                # %if.then.68
	movl	$290, %edi              # imm = 0x122
	movq	-40(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-16(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rdi
	movq	-32(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rsi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	Fcons
	xorl	%edi, %edi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	-168(%rbp), %rsi        # 8-byte Reload
	movq	-184(%rbp), %rdx        # 8-byte Reload
	movq	-192(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	callq	Fput_text_property
	movq	-48(%rbp), %rcx
	movq	%rcx, -64(%rbp)
	movq	%rax, -200(%rbp)        # 8-byte Spill
.LBB2_38:                               # %if.end.82
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	run_composition_function
	jmp	.LBB2_44
.LBB2_39:                               # %if.else.83
	movq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	jge	.LBB2_43
# BB#40:                                # %land.lhs.true.86
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	$-1, %rsi
	leaq	-40(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	leaq	-32(%rbp), %r8
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %r9
	callq	find_composition
	testb	$1, %al
	jne	.LBB2_41
	jmp	.LBB2_43
.LBB2_41:                               # %land.lhs.true.89
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	composition_valid_p
	testb	$1, %al
	jne	.LBB2_42
	jmp	.LBB2_43
.LBB2_42:                               # %if.then.91
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	run_composition_function
	movq	-48(%rbp), %rdx
	movq	%rdx, -64(%rbp)
.LBB2_43:                               # %if.end.92
	jmp	.LBB2_44
.LBB2_44:                               # %if.end.93
	jmp	.LBB2_45
.LBB2_45:                               # %if.end.94
	movq	-56(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jge	.LBB2_47
# BB#46:                                # %if.then.96
	callq	SPECPDL_INDEX
	movl	$547, %edi              # imm = 0x223
	movq	%rax, -72(%rbp)
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
	movl	$544, %edi              # imm = 0x220
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
	movl	$545, %edi              # imm = 0x221
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
	movl	$185, %edi
	movq	-56(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-64(%rbp), %rsi
	shlq	$2, %rsi
	addq	$2, %rsi
	movq	%rsi, -240(%rbp)        # 8-byte Spill
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	list1
	xorl	%edi, %edi
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	-240(%rbp), %rsi        # 8-byte Reload
	movq	-256(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	Fremove_list_of_text_properties
	xorl	%edi, %edi
	movq	-72(%rbp), %rcx
	movq	%rax, -264(%rbp)        # 8-byte Spill
	movq	%rcx, -272(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -280(%rbp)        # 8-byte Spill
.LBB2_47:                               # %if.end.114
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end2:
	.size	update_compositions, .Lfunc_end2-update_compositions
	.cfi_endproc

	.align	16, 0x90
	.type	run_composition_function,@function
run_composition_function:               # @run_composition_function
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	composition_registered_p
	testb	$1, %al
	jne	.LBB3_1
	jmp	.LBB3_2
.LBB3_1:                                # %cond.true
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB3_6
.LBB3_2:                                # %cond.false
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB3_4
# BB#3:                                 # %cond.true.8
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB3_5
.LBB3_4:                                # %cond.false.12
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB3_5:                                # %cond.end
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB3_6:                                # %cond.end.14
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	current_buffer, %rcx
	cmpq	752(%rcx), %rax
	jle	.LBB3_10
# BB#7:                                 # %land.lhs.true
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	$-1, %rsi
	leaq	-40(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	leaq	-24(%rbp), %r8
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %r9
	callq	find_composition
	testb	$1, %al
	jne	.LBB3_8
	jmp	.LBB3_10
.LBB3_8:                                # %land.lhs.true.22
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	composition_valid_p
	testb	$1, %al
	jne	.LBB3_10
# BB#9:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB3_10:                               # %if.end
	movq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	jge	.LBB3_14
# BB#11:                                # %land.lhs.true.26
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	$-1, %rsi
	leaq	-40(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	leaq	-24(%rbp), %r8
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %r9
	callq	find_composition
	testb	$1, %al
	jne	.LBB3_12
	jmp	.LBB3_14
.LBB3_12:                               # %land.lhs.true.30
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	composition_valid_p
	testb	$1, %al
	jne	.LBB3_14
# BB#13:                                # %if.then.32
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
.LBB3_14:                               # %if.end.33
	movq	-32(%rbp), %rdi
	callq	Ffboundp
	xorl	%edi, %edi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB3_16
# BB#15:                                # %if.then.38
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-16(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	call2
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB3_16:                               # %if.end.42
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	run_composition_function, .Lfunc_end3-run_composition_function
	.cfi_endproc

	.globl	make_composition_value_copy
	.align	16, 0x90
	.type	make_composition_value_copy,@function
make_composition_value_copy:            # @make_composition_value_copy
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
.LBB4_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_3 Depth 2
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB4_12
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
.LBB4_3:                                # %while.cond
                                        #   Parent Loop BB4_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB4_5
# BB#4:                                 # %land.rhs
                                        #   in Loop: Header=BB4_3 Depth=2
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	sete	%dl
	movb	%dl, -25(%rbp)          # 1-byte Spill
.LBB4_5:                                # %land.end
                                        #   in Loop: Header=BB4_3 Depth=2
	movb	-25(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB4_6
	jmp	.LBB4_10
.LBB4_6:                                # %while.body
                                        #   in Loop: Header=BB4_3 Depth=2
	movl	$290, %edi              # imm = 0x122
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB4_9
# BB#7:                                 # %land.lhs.true
                                        #   in Loop: Header=BB4_3 Depth=2
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB4_9
# BB#8:                                 # %if.then
                                        #   in Loop: Header=BB4_3 Depth=2
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rsi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	Fcons
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	XSETCAR
.LBB4_9:                                # %if.end
                                        #   in Loop: Header=BB4_3 Depth=2
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB4_3
.LBB4_10:                               # %while.end
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_11
.LBB4_11:                               # %for.inc
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB4_1
.LBB4_12:                               # %for.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	make_composition_value_copy, .Lfunc_end4-make_composition_value_copy
	.cfi_endproc

	.globl	compose_text
	.align	16, 0x90
	.type	compose_text,@function
compose_text:                           # @compose_text
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-16(%rbp), %rcx
	subq	-8(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	Fcons
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movl	$290, %edi              # imm = 0x122
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-16(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %r8
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput_text_property
	movq	%rax, -72(%rbp)         # 8-byte Spill
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	compose_text, .Lfunc_end5-compose_text
	.cfi_endproc

	.globl	composition_gstring_put_cache
	.align	16, 0x90
	.type	composition_gstring_put_cache,@function
composition_gstring_put_cache:          # @composition_gstring_put_cache
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	gstring_hash_table, %rdi
	callq	XHASH_TABLE
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	AREF
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	movq	-24(%rbp), %rsi
	addq	$80, %rsi
	movq	-40(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-80(%rbp), %rsi         # 8-byte Reload
	callq	*%rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -16(%rbp)
	jge	.LBB6_8
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	ASIZE
	subq	$2, %rax
	movq	%rax, -72(%rbp)
	movq	$0, -64(%rbp)
.LBB6_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jge	.LBB6_7
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB6_2 Depth=1
	movq	-8(%rbp), %rdi
	movq	-64(%rbp), %rax
	addq	$2, %rax
	movq	%rax, %rsi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB6_5
# BB#4:                                 # %if.then.9
	jmp	.LBB6_7
.LBB6_5:                                # %if.end
                                        #   in Loop: Header=BB6_2 Depth=1
	jmp	.LBB6_6
.LBB6_6:                                # %for.inc
                                        #   in Loop: Header=BB6_2 Depth=1
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB6_2
.LBB6_7:                                # %for.end
	movq	-64(%rbp), %rax
	movq	%rax, -16(%rbp)
.LBB6_8:                                # %if.end.10
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	addq	$2, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fmake_vector
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	Fcopy_sequence
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	movq	$0, -56(%rbp)
.LBB6_9:                                # %for.cond.16
                                        # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jge	.LBB6_12
# BB#10:                                # %for.body.18
                                        #   in Loop: Header=BB6_9 Depth=1
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rax
	addq	$2, %rax
	movq	-8(%rbp), %rcx
	movq	-56(%rbp), %rdx
	addq	$2, %rdx
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	AREF
	movq	%rax, %rdi
	callq	Fcopy_sequence
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
# BB#11:                                # %for.inc.23
                                        #   in Loop: Header=BB6_9 Depth=1
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB6_9
.LBB6_12:                               # %for.end.25
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	AREF
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	hash_put
	movl	$1, %r8d
	movl	%r8d, %esi
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdx
	callq	ASET
	movq	-48(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	composition_gstring_put_cache, .Lfunc_end6-composition_gstring_put_cache
	.cfi_endproc

	.globl	composition_gstring_from_id
	.align	16, 0x90
	.type	composition_gstring_from_id,@function
composition_gstring_from_id:            # @composition_gstring_from_id
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	gstring_hash_table, %rdi
	callq	XHASH_TABLE
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	HASH_VALUE
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	composition_gstring_from_id, .Lfunc_end7-composition_gstring_from_id
	.cfi_endproc

	.globl	composition_gstring_p
	.align	16, 0x90
	.type	composition_gstring_p,@function
composition_gstring_p:                  # @composition_gstring_p
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB8_1
	jmp	.LBB8_2
.LBB8_1:                                # %lor.lhs.false
	movq	-16(%rbp), %rdi
	callq	ASIZE
	cmpq	$2, %rax
	jge	.LBB8_3
.LBB8_2:                                # %if.then
	movb	$0, -1(%rbp)
	jmp	.LBB8_31
.LBB8_3:                                # %if.end
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	AREF
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB8_4
	jmp	.LBB8_5
.LBB8_4:                                # %lor.lhs.false.4
	movq	-24(%rbp), %rdi
	callq	ASIZE
	cmpq	$2, %rax
	jge	.LBB8_6
.LBB8_5:                                # %if.then.7
	movb	$0, -1(%rbp)
	jmp	.LBB8_31
.LBB8_6:                                # %if.end.8
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	AREF
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB8_12
# BB#7:                                 # %land.lhs.true
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	AREF
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movq	%rax, %rdi
	callq	FONT_OBJECT_P
	testb	$1, %al
	jne	.LBB8_12
# BB#8:                                 # %land.lhs.true.16
	movq	Vcoding_system_hash_table, %rdi
	callq	XHASH_TABLE
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-16(%rbp), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	AREF
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	hash_lookup
	cmpq	$0, %rax
	jge	.LBB8_12
# BB#9:                                 # %lor.lhs.false.22
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	AREF
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB8_11
# BB#10:                                # %land.lhs.true.27
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	AREF
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movq	%rax, %rdi
	callq	Fcoding_system_p
	xorl	%edi, %edi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB8_12
.LBB8_11:                               # %if.then.33
	movb	$0, -1(%rbp)
	jmp	.LBB8_31
.LBB8_12:                               # %if.end.34
	movq	$1, -32(%rbp)
.LBB8_13:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	callq	AREF
	movq	%rax, %rdi
	callq	ASIZE
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jge	.LBB8_18
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB8_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	AREF
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	AREF
	movq	%rax, %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB8_16
# BB#15:                                # %if.then.41
	movb	$0, -1(%rbp)
	jmp	.LBB8_31
.LBB8_16:                               # %if.end.42
                                        #   in Loop: Header=BB8_13 Depth=1
	jmp	.LBB8_17
.LBB8_17:                               # %for.inc
                                        #   in Loop: Header=BB8_13 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB8_13
.LBB8_18:                               # %for.end
	movl	$1, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB8_21
# BB#19:                                # %land.lhs.true.46
	movl	$1, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	AREF
	movq	%rax, %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB8_21
# BB#20:                                # %if.then.49
	movb	$0, -1(%rbp)
	jmp	.LBB8_31
.LBB8_21:                               # %if.end.50
	movq	$0, -32(%rbp)
.LBB8_22:                               # %for.cond.51
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	ASIZE
	subq	$2, %rax
	movq	-96(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	jge	.LBB8_30
# BB#23:                                # %for.body.54
                                        #   in Loop: Header=BB8_22 Depth=1
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$2, %rax
	movq	%rax, %rsi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB8_25
# BB#24:                                # %if.then.58
	jmp	.LBB8_30
.LBB8_25:                               # %if.end.59
                                        #   in Loop: Header=BB8_22 Depth=1
	movq	-40(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB8_26
	jmp	.LBB8_27
.LBB8_26:                               # %lor.lhs.false.61
                                        #   in Loop: Header=BB8_22 Depth=1
	movq	-40(%rbp), %rdi
	callq	ASIZE
	cmpq	$10, %rax
	je	.LBB8_28
.LBB8_27:                               # %if.then.64
	movb	$0, -1(%rbp)
	jmp	.LBB8_31
.LBB8_28:                               # %if.end.65
                                        #   in Loop: Header=BB8_22 Depth=1
	jmp	.LBB8_29
.LBB8_29:                               # %for.inc.66
                                        #   in Loop: Header=BB8_22 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB8_22
.LBB8_30:                               # %for.end.68
	movb	$1, -1(%rbp)
.LBB8_31:                               # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	composition_gstring_p, .Lfunc_end8-composition_gstring_p
	.cfi_endproc

	.globl	composition_gstring_width
	.align	16, 0x90
	.type	composition_gstring_width,@function
composition_gstring_width:              # @composition_gstring_width
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
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	$0, -44(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB9_5
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	AREF
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	FONT_OBJECT_P
	testb	$1, %al
	jne	.LBB9_2
	jmp	.LBB9_3
.LBB9_2:                                # %if.then.3
	movq	-56(%rbp), %rdi
	callq	XFONT_OBJECT
	leaq	-68(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	get_font_ascent_descent
	movl	-68(%rbp), %ecx
	movw	%cx, %r8w
	movq	-32(%rbp), %rax
	movw	%r8w, 6(%rax)
	movl	-72(%rbp), %ecx
	movw	%cx, %r8w
	movq	-32(%rbp), %rax
	movw	%r8w, 8(%rax)
	jmp	.LBB9_4
.LBB9_3:                                # %if.else
	movq	-32(%rbp), %rax
	movw	$1, 6(%rax)
	movq	-32(%rbp), %rax
	movw	$0, 8(%rax)
.LBB9_4:                                # %if.end
	movq	-32(%rbp), %rax
	movw	$0, 2(%rax)
	movq	-32(%rbp), %rax
	movw	$0, (%rax)
	movq	-32(%rbp), %rax
	movw	$0, 4(%rax)
.LBB9_5:                                # %if.end.9
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	lgstring_glyph_addr
	movq	%rax, -40(%rbp)
.LBB9_6:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jge	.LBB9_37
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB9_6 Depth=1
	movl	$9, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rdi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB9_9
# BB#8:                                 # %if.then.16
                                        #   in Loop: Header=BB9_6 Depth=1
	movl	$4, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rdi
	callq	AREF
	sarq	$2, %rax
	movslq	-44(%rbp), %rcx
	addq	%rax, %rcx
	movl	%ecx, %edx
	movl	%edx, -44(%rbp)
	jmp	.LBB9_13
.LBB9_9:                                # %if.else.20
                                        #   in Loop: Header=BB9_6 Depth=1
	movl	$9, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rdi
	callq	AREF
	movq	%rax, %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB9_10
	jmp	.LBB9_11
.LBB9_10:                               # %cond.true
                                        #   in Loop: Header=BB9_6 Depth=1
	movl	$9, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rdi
	callq	AREF
	movl	$2, %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	callq	AREF
	sarq	$2, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB9_12
.LBB9_11:                               # %cond.false
                                        #   in Loop: Header=BB9_6 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB9_12
.LBB9_12:                               # %cond.end
                                        #   in Loop: Header=BB9_6 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movslq	-44(%rbp), %rcx
	addq	%rax, %rcx
	movl	%ecx, %edx
	movl	%edx, -44(%rbp)
.LBB9_13:                               # %if.end.30
                                        #   in Loop: Header=BB9_6 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB9_35
# BB#14:                                # %if.then.32
                                        #   in Loop: Header=BB9_6 Depth=1
	movl	$5, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rcx
	movswq	4(%rcx), %rcx
	movq	-40(%rbp), %rdx
	movq	(%rdx), %rdi
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	callq	AREF
	movl	$9, %r8d
	movl	%r8d, %esi
	sarq	$2, %rax
	movq	-104(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	callq	AREF
	movq	%rax, %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB9_15
	jmp	.LBB9_16
.LBB9_15:                               # %cond.true.41
                                        #   in Loop: Header=BB9_6 Depth=1
	movl	$9, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rdi
	callq	AREF
	xorl	%edx, %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	callq	AREF
	sarq	$2, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB9_17
.LBB9_16:                               # %cond.false.45
                                        #   in Loop: Header=BB9_6 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB9_17
.LBB9_17:                               # %cond.end.46
                                        #   in Loop: Header=BB9_6 Depth=1
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	-112(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	movl	%ecx, %edx
	movl	%edx, -76(%rbp)
	movq	-32(%rbp), %rax
	movswl	(%rax), %edx
	cmpl	-76(%rbp), %edx
	jle	.LBB9_19
# BB#18:                                # %if.then.54
                                        #   in Loop: Header=BB9_6 Depth=1
	movl	-76(%rbp), %eax
	movw	%ax, %cx
	movq	-32(%rbp), %rdx
	movw	%cx, (%rdx)
.LBB9_19:                               # %if.end.57
                                        #   in Loop: Header=BB9_6 Depth=1
	movl	$6, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rcx
	movswq	4(%rcx), %rcx
	movq	-40(%rbp), %rdx
	movq	(%rdx), %rdi
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	callq	AREF
	movl	$9, %r8d
	movl	%r8d, %esi
	sarq	$2, %rax
	movq	-128(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	callq	AREF
	movq	%rax, %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB9_20
	jmp	.LBB9_21
.LBB9_20:                               # %cond.true.66
                                        #   in Loop: Header=BB9_6 Depth=1
	movl	$9, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rdi
	callq	AREF
	xorl	%edx, %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	callq	AREF
	sarq	$2, %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB9_22
.LBB9_21:                               # %cond.false.70
                                        #   in Loop: Header=BB9_6 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB9_22
.LBB9_22:                               # %cond.end.71
                                        #   in Loop: Header=BB9_6 Depth=1
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	-136(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	movl	%ecx, %edx
	movl	%edx, -76(%rbp)
	movq	-32(%rbp), %rax
	movswl	2(%rax), %edx
	cmpl	-76(%rbp), %edx
	jge	.LBB9_24
# BB#23:                                # %if.then.79
                                        #   in Loop: Header=BB9_6 Depth=1
	movl	-76(%rbp), %eax
	movw	%ax, %cx
	movq	-32(%rbp), %rdx
	movw	%cx, 2(%rdx)
.LBB9_24:                               # %if.end.82
                                        #   in Loop: Header=BB9_6 Depth=1
	movl	$7, %eax
	movl	%eax, %esi
	movl	-44(%rbp), %eax
	movw	%ax, %cx
	movq	-32(%rbp), %rdx
	movw	%cx, 4(%rdx)
	movq	-40(%rbp), %rdx
	movq	(%rdx), %rdi
	callq	AREF
	movl	$9, %r8d
	movl	%r8d, %esi
	sarq	$2, %rax
	movq	-40(%rbp), %rdx
	movq	(%rdx), %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	AREF
	movq	%rax, %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB9_25
	jmp	.LBB9_26
.LBB9_25:                               # %cond.true.90
                                        #   in Loop: Header=BB9_6 Depth=1
	movl	$9, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rdi
	callq	AREF
	movl	$1, %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	callq	AREF
	sarq	$2, %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB9_27
.LBB9_26:                               # %cond.false.94
                                        #   in Loop: Header=BB9_6 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	jmp	.LBB9_27
.LBB9_27:                               # %cond.end.95
                                        #   in Loop: Header=BB9_6 Depth=1
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	-152(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movl	%ecx, %edx
	movl	%edx, -76(%rbp)
	movq	-32(%rbp), %rax
	movswl	6(%rax), %edx
	cmpl	-76(%rbp), %edx
	jge	.LBB9_29
# BB#28:                                # %if.then.102
                                        #   in Loop: Header=BB9_6 Depth=1
	movl	-76(%rbp), %eax
	movw	%ax, %cx
	movq	-32(%rbp), %rdx
	movw	%cx, 6(%rdx)
.LBB9_29:                               # %if.end.105
                                        #   in Loop: Header=BB9_6 Depth=1
	movl	$8, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rdi
	callq	AREF
	movl	$9, %edx
	movl	%edx, %esi
	sarq	$2, %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	AREF
	movq	%rax, %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB9_30
	jmp	.LBB9_31
.LBB9_30:                               # %cond.true.111
                                        #   in Loop: Header=BB9_6 Depth=1
	movl	$9, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rdi
	callq	AREF
	movl	$1, %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	callq	AREF
	sarq	$2, %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB9_32
.LBB9_31:                               # %cond.false.115
                                        #   in Loop: Header=BB9_6 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	jmp	.LBB9_32
.LBB9_32:                               # %cond.end.116
                                        #   in Loop: Header=BB9_6 Depth=1
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	-168(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	movl	%ecx, %edx
	movl	%edx, -76(%rbp)
	movq	-32(%rbp), %rax
	movswl	8(%rax), %edx
	cmpl	-76(%rbp), %edx
	jge	.LBB9_34
# BB#33:                                # %if.then.124
                                        #   in Loop: Header=BB9_6 Depth=1
	movl	-76(%rbp), %eax
	movw	%ax, %cx
	movq	-32(%rbp), %rdx
	movw	%cx, 8(%rdx)
.LBB9_34:                               # %if.end.127
                                        #   in Loop: Header=BB9_6 Depth=1
	jmp	.LBB9_35
.LBB9_35:                               # %if.end.128
                                        #   in Loop: Header=BB9_6 Depth=1
	jmp	.LBB9_36
.LBB9_36:                               # %for.inc
                                        #   in Loop: Header=BB9_6 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB9_6
.LBB9_37:                               # %for.end
	movl	-44(%rbp), %eax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	composition_gstring_width, .Lfunc_end9-composition_gstring_width
	.cfi_endproc

	.globl	composition_compute_stop_pos
	.align	16, 0x90
	.type	composition_compute_stop_pos,@function
composition_compute_stop_pos:           # @composition_compute_stop_pos
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
	subq	$496, %rsp              # imm = 0x1F0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$500, -84(%rbp)         # imm = 0x1F4
	movq	-16(%rbp), %rcx
	cmpq	-32(%rbp), %rcx
	jge	.LBB10_4
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	$500, %rcx              # imm = 0x1F4
	cmpq	%rcx, %rax
	jle	.LBB10_3
# BB#2:                                 # %if.then.2
	movq	-16(%rbp), %rax
	addq	$500, %rax              # imm = 0x1F4
	movq	%rax, -32(%rbp)
.LBB10_3:                               # %if.end
	jmp	.LBB10_12
.LBB10_4:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jge	.LBB10_11
# BB#5:                                 # %if.then.5
	cmpq	$0, -32(%rbp)
	jge	.LBB10_10
# BB#6:                                 # %if.then.7
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB10_8
# BB#7:                                 # %cond.true
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	subq	$1, %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	jmp	.LBB10_9
.LBB10_8:                               # %cond.false
	movq	$-1, %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	jmp	.LBB10_9
.LBB10_9:                               # %cond.end
	movq	-224(%rbp), %rax        # 8-byte Reload
	movq	%rax, -32(%rbp)
.LBB10_10:                              # %if.end.9
	jmp	.LBB10_11
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %if.end.11
	movq	-8(%rbp), %rax
	movq	$-1, 8(%rax)
	movq	-8(%rbp), %rax
	movl	$-2, 16(%rax)
	movq	-8(%rbp), %rax
	movb	$0, 36(%rax)
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB10_14
# BB#13:                                # %if.then.13
	jmp	.LBB10_214
.LBB10_14:                              # %if.end.14
	movq	-16(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jge	.LBB10_19
# BB#15:                                # %land.lhs.true
	leaq	-48(%rbp), %rdx
	leaq	-56(%rbp), %rcx
	leaq	-72(%rbp), %r8
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %r9
	callq	find_composition
	testb	$1, %al
	jne	.LBB10_16
	jmp	.LBB10_19
.LBB10_16:                              # %land.lhs.true.17
	movq	-48(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jl	.LBB10_19
# BB#17:                                # %land.lhs.true.19
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-72(%rbp), %rdx
	callq	composition_valid_p
	testb	$1, %al
	jne	.LBB10_18
	jmp	.LBB10_19
.LBB10_18:                              # %if.then.21
	movq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movl	$-1, 16(%rax)
.LBB10_19:                              # %if.end.24
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-232(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB10_21
# BB#20:                                # %lor.lhs.false
	xorl	%edi, %edi
	movq	globals+48, %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-240(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB10_22
.LBB10_21:                              # %if.then.29
	jmp	.LBB10_214
.LBB10_22:                              # %if.end.30
	cmpq	$0, -24(%rbp)
	jge	.LBB10_27
# BB#23:                                # %if.then.32
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-248(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB10_25
# BB#24:                                # %if.then.35
	movq	current_buffer, %rdi
	movq	-16(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -24(%rbp)
	jmp	.LBB10_26
.LBB10_25:                              # %if.else.37
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	string_char_to_byte
	movq	%rax, -24(%rbp)
.LBB10_26:                              # %if.end.39
	jmp	.LBB10_27
.LBB10_27:                              # %if.end.40
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jge	.LBB10_88
# BB#28:                                # %if.then.42
	jmp	.LBB10_29
.LBB10_29:                              # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_71 Depth 2
	movq	-16(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jge	.LBB10_81
# BB#30:                                # %while.body
                                        #   in Loop: Header=BB10_29 Depth=1
	movq	-40(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB10_31
	jmp	.LBB10_46
.LBB10_31:                              # %if.then.45
                                        #   in Loop: Header=BB10_29 Depth=1
	jmp	.LBB10_32
.LBB10_32:                              # %do.body
                                        #   in Loop: Header=BB10_29 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rdi
	callq	STRING_MULTIBYTE
	testb	$1, %al
	jne	.LBB10_33
	jmp	.LBB10_43
.LBB10_33:                              # %if.then.47
                                        #   in Loop: Header=BB10_29 Depth=1
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rdi
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	SDATA
	movq	-256(%rbp), %rdi        # 8-byte Reload
	addq	%rdi, %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB10_35
# BB#34:                                # %cond.true.50
                                        #   in Loop: Header=BB10_29 Depth=1
	movl	$1, -100(%rbp)
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -260(%rbp)        # 4-byte Spill
	jmp	.LBB10_42
.LBB10_35:                              # %cond.false.53
                                        #   in Loop: Header=BB10_29 Depth=1
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB10_37
# BB#36:                                # %cond.true.58
                                        #   in Loop: Header=BB10_29 Depth=1
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
	movl	%esi, -264(%rbp)        # 4-byte Spill
	jmp	.LBB10_41
.LBB10_37:                              # %cond.false.71
                                        #   in Loop: Header=BB10_29 Depth=1
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB10_39
# BB#38:                                # %cond.true.76
                                        #   in Loop: Header=BB10_29 Depth=1
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
	movl	%ecx, -268(%rbp)        # 4-byte Spill
	jmp	.LBB10_40
.LBB10_39:                              # %cond.false.90
                                        #   in Loop: Header=BB10_29 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-100(%rbp), %rdx
	movq	-96(%rbp), %rdi
	callq	string_char
	movl	%eax, -268(%rbp)        # 4-byte Spill
.LBB10_40:                              # %cond.end.92
                                        #   in Loop: Header=BB10_29 Depth=1
	movl	-268(%rbp), %eax        # 4-byte Reload
	movl	%eax, -264(%rbp)        # 4-byte Spill
.LBB10_41:                              # %cond.end.94
                                        #   in Loop: Header=BB10_29 Depth=1
	movl	-264(%rbp), %eax        # 4-byte Reload
	movl	%eax, -260(%rbp)        # 4-byte Spill
.LBB10_42:                              # %cond.end.96
                                        #   in Loop: Header=BB10_29 Depth=1
	movl	-260(%rbp), %eax        # 4-byte Reload
	movl	%eax, -60(%rbp)
	movslq	-100(%rbp), %rcx
	addq	-24(%rbp), %rcx
	movq	%rcx, -24(%rbp)
	jmp	.LBB10_44
.LBB10_43:                              # %if.else.100
                                        #   in Loop: Header=BB10_29 Depth=1
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	SREF
	movzbl	%al, %ecx
	movl	%ecx, -60(%rbp)
	movq	-24(%rbp), %rsi
	addq	$1, %rsi
	movq	%rsi, -24(%rbp)
.LBB10_44:                              # %if.end.104
                                        #   in Loop: Header=BB10_29 Depth=1
	jmp	.LBB10_45
.LBB10_45:                              # %do.end
                                        #   in Loop: Header=BB10_29 Depth=1
	jmp	.LBB10_67
.LBB10_46:                              # %if.else.105
                                        #   in Loop: Header=BB10_29 Depth=1
	jmp	.LBB10_47
.LBB10_47:                              # %do.body.106
                                        #   in Loop: Header=BB10_29 Depth=1
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-280(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB10_61
# BB#48:                                # %if.then.112
                                        #   in Loop: Header=BB10_29 Depth=1
	movq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB10_50
# BB#49:                                # %cond.true.116
                                        #   in Loop: Header=BB10_29 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	jmp	.LBB10_51
.LBB10_50:                              # %cond.false.118
                                        #   in Loop: Header=BB10_29 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -288(%rbp)        # 8-byte Spill
	jmp	.LBB10_51
.LBB10_51:                              # %cond.end.119
                                        #   in Loop: Header=BB10_29 Depth=1
	movq	-288(%rbp), %rax        # 8-byte Reload
	addq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movzbl	(%rax), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	jne	.LBB10_53
# BB#52:                                # %cond.true.129
                                        #   in Loop: Header=BB10_29 Depth=1
	movl	$1, -116(%rbp)
	movq	-112(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -292(%rbp)        # 4-byte Spill
	jmp	.LBB10_60
.LBB10_53:                              # %cond.false.132
                                        #   in Loop: Header=BB10_29 Depth=1
	movq	-112(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB10_55
# BB#54:                                # %cond.true.137
                                        #   in Loop: Header=BB10_29 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -116(%rbp)
	movq	-112(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-112(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-112(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -296(%rbp)        # 4-byte Spill
	jmp	.LBB10_59
.LBB10_55:                              # %cond.false.152
                                        #   in Loop: Header=BB10_29 Depth=1
	movq	-112(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB10_57
# BB#56:                                # %cond.true.157
                                        #   in Loop: Header=BB10_29 Depth=1
	movl	$3, -116(%rbp)
	movq	-112(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-112(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-112(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -300(%rbp)        # 4-byte Spill
	jmp	.LBB10_58
.LBB10_57:                              # %cond.false.171
                                        #   in Loop: Header=BB10_29 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-116(%rbp), %rdx
	movq	-112(%rbp), %rdi
	callq	string_char
	movl	%eax, -300(%rbp)        # 4-byte Spill
.LBB10_58:                              # %cond.end.173
                                        #   in Loop: Header=BB10_29 Depth=1
	movl	-300(%rbp), %eax        # 4-byte Reload
	movl	%eax, -296(%rbp)        # 4-byte Spill
.LBB10_59:                              # %cond.end.175
                                        #   in Loop: Header=BB10_29 Depth=1
	movl	-296(%rbp), %eax        # 4-byte Reload
	movl	%eax, -292(%rbp)        # 4-byte Spill
.LBB10_60:                              # %cond.end.177
                                        #   in Loop: Header=BB10_29 Depth=1
	movl	-292(%rbp), %eax        # 4-byte Reload
	movl	%eax, -60(%rbp)
	movslq	-116(%rbp), %rcx
	addq	-24(%rbp), %rcx
	movq	%rcx, -24(%rbp)
	jmp	.LBB10_65
.LBB10_61:                              # %if.else.181
                                        #   in Loop: Header=BB10_29 Depth=1
	movq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB10_63
# BB#62:                                # %cond.true.186
                                        #   in Loop: Header=BB10_29 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	jmp	.LBB10_64
.LBB10_63:                              # %cond.false.189
                                        #   in Loop: Header=BB10_29 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -312(%rbp)        # 8-byte Spill
	jmp	.LBB10_64
.LBB10_64:                              # %cond.end.190
                                        #   in Loop: Header=BB10_29 Depth=1
	movq	-312(%rbp), %rax        # 8-byte Reload
	addq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, -60(%rbp)
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
.LBB10_65:                              # %if.end.199
                                        #   in Loop: Header=BB10_29 Depth=1
	jmp	.LBB10_66
.LBB10_66:                              # %do.end.200
                                        #   in Loop: Header=BB10_29 Depth=1
	jmp	.LBB10_67
.LBB10_67:                              # %if.end.201
                                        #   in Loop: Header=BB10_29 Depth=1
	cmpl	$10, -60(%rbp)
	jne	.LBB10_69
# BB#68:                                # %if.then.204
	movq	-8(%rbp), %rax
	movl	$-2, 16(%rax)
	jmp	.LBB10_81
.LBB10_69:                              # %if.end.206
                                        #   in Loop: Header=BB10_29 Depth=1
	movq	globals+368, %rdi
	movl	-60(%rbp), %esi
	callq	CHAR_TABLE_REF
	xorl	%edi, %edi
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-320(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB10_80
# BB#70:                                # %if.then.211
                                        #   in Loop: Header=BB10_29 Depth=1
	movl	$0, -120(%rbp)
.LBB10_71:                              # %for.cond
                                        #   Parent Loop BB10_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-80(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB10_79
# BB#72:                                # %for.body
                                        #   in Loop: Header=BB10_71 Depth=2
	movq	-80(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB10_73
	jmp	.LBB10_77
.LBB10_73:                              # %land.lhs.true.219
                                        #   in Loop: Header=BB10_71 Depth=2
	movq	-128(%rbp), %rdi
	callq	ASIZE
	cmpq	$3, %rax
	jne	.LBB10_77
# BB#74:                                # %land.lhs.true.223
                                        #   in Loop: Header=BB10_71 Depth=2
	movl	$1, %eax
	movl	%eax, %esi
	movq	-128(%rbp), %rdi
	callq	AREF
	movq	%rax, %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB10_75
	jmp	.LBB10_77
.LBB10_75:                              # %land.lhs.true.227
                                        #   in Loop: Header=BB10_71 Depth=2
	movl	$1, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	subq	$1, %rcx
	movq	-128(%rbp), %rdi
	movq	%rcx, -328(%rbp)        # 8-byte Spill
	callq	AREF
	sarq	$2, %rax
	movq	-328(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	cmpq	-48(%rbp), %rcx
	jl	.LBB10_77
# BB#76:                                # %if.then.233
	movl	$1, %eax
	movl	%eax, %esi
	movl	-120(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 20(%rcx)
	movq	-128(%rbp), %rdi
	callq	AREF
	sarq	$2, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-16(%rbp), %rax
	subq	$1, %rax
	movq	-8(%rbp), %rcx
	subq	24(%rcx), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	-60(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 16(%rax)
	jmp	.LBB10_214
.LBB10_77:                              # %if.end.241
                                        #   in Loop: Header=BB10_71 Depth=2
	jmp	.LBB10_78
.LBB10_78:                              # %for.inc
                                        #   in Loop: Header=BB10_71 Depth=2
	movq	-80(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
	movl	-120(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -120(%rbp)
	jmp	.LBB10_71
.LBB10_79:                              # %for.end
                                        #   in Loop: Header=BB10_29 Depth=1
	jmp	.LBB10_80
.LBB10_80:                              # %if.end.244
                                        #   in Loop: Header=BB10_29 Depth=1
	jmp	.LBB10_29
.LBB10_81:                              # %while.end
	movq	-16(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB10_87
# BB#82:                                # %land.lhs.true.247
	movq	-40(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB10_83
	jmp	.LBB10_84
.LBB10_83:                              # %land.lhs.true.250
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rdi
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	SCHARS
	movq	-336(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	je	.LBB10_87
.LBB10_84:                              # %if.then.254
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jge	.LBB10_86
# BB#85:                                # %if.then.258
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
.LBB10_86:                              # %if.end.259
	jmp	.LBB10_87
.LBB10_87:                              # %if.end.260
	jmp	.LBB10_213
.LBB10_88:                              # %if.else.261
	movq	-16(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jle	.LBB10_212
# BB#89:                                # %if.then.264
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-344(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB10_94
# BB#90:                                # %if.then.268
	movq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB10_92
# BB#91:                                # %cond.true.273
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	jmp	.LBB10_93
.LBB10_92:                              # %cond.false.276
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -352(%rbp)        # 8-byte Spill
	jmp	.LBB10_93
.LBB10_93:                              # %cond.end.277
	movq	-352(%rbp), %rax        # 8-byte Reload
	addq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -136(%rbp)
	jmp	.LBB10_95
.LBB10_94:                              # %if.else.284
	movq	-40(%rbp), %rdi
	callq	SDATA
	addq	-24(%rbp), %rax
	movq	%rax, -136(%rbp)
.LBB10_95:                              # %if.end.287
	movq	-136(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB10_97
# BB#96:                                # %cond.true.292
	movl	$1, -140(%rbp)
	movq	-136(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -356(%rbp)        # 4-byte Spill
	jmp	.LBB10_104
.LBB10_97:                              # %cond.false.295
	movq	-136(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB10_99
# BB#98:                                # %cond.true.300
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -140(%rbp)
	movq	-136(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-136(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-136(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -360(%rbp)        # 4-byte Spill
	jmp	.LBB10_103
.LBB10_99:                              # %cond.false.315
	movq	-136(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB10_101
# BB#100:                               # %cond.true.320
	movl	$3, -140(%rbp)
	movq	-136(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-136(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-136(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -364(%rbp)        # 4-byte Spill
	jmp	.LBB10_102
.LBB10_101:                             # %cond.false.334
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-140(%rbp), %rdx
	movq	-136(%rbp), %rdi
	callq	string_char
	movl	%eax, -364(%rbp)        # 4-byte Spill
.LBB10_102:                             # %cond.end.336
	movl	-364(%rbp), %eax        # 4-byte Reload
	movl	%eax, -360(%rbp)        # 4-byte Spill
.LBB10_103:                             # %cond.end.338
	movl	-360(%rbp), %eax        # 4-byte Reload
	movl	%eax, -356(%rbp)        # 4-byte Spill
.LBB10_104:                             # %cond.end.340
	movl	-356(%rbp), %eax        # 4-byte Reload
	movl	%eax, -60(%rbp)
	movq	-24(%rbp), %rcx
	movslq	-140(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rcx, -152(%rbp)
.LBB10_105:                             # %while.cond.344
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_108 Depth 2
                                        #     Child Loop BB10_141 Depth 2
                                        #     Child Loop BB10_152 Depth 2
	movl	-60(%rbp), %edi
	callq	char_composable_p
	testb	$1, %al
	jne	.LBB10_106
	jmp	.LBB10_171
.LBB10_106:                             # %while.body.346
                                        #   in Loop: Header=BB10_105 Depth=1
	movq	globals+368, %rdi
	movl	-60(%rbp), %esi
	callq	CHAR_TABLE_REF
	xorl	%edi, %edi
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-376(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB10_137
# BB#107:                               # %if.then.351
                                        #   in Loop: Header=BB10_105 Depth=1
	movl	$0, -164(%rbp)
.LBB10_108:                             # %for.cond.354
                                        #   Parent Loop BB10_105 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-80(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB10_136
# BB#109:                               # %for.body.359
                                        #   in Loop: Header=BB10_108 Depth=2
	movq	-80(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB10_110
	jmp	.LBB10_134
.LBB10_110:                             # %land.lhs.true.364
                                        #   in Loop: Header=BB10_108 Depth=2
	movq	-160(%rbp), %rdi
	callq	ASIZE
	cmpq	$3, %rax
	jne	.LBB10_134
# BB#111:                               # %land.lhs.true.368
                                        #   in Loop: Header=BB10_108 Depth=2
	movl	$1, %eax
	movl	%eax, %esi
	movq	-160(%rbp), %rdi
	callq	AREF
	movq	%rax, %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB10_112
	jmp	.LBB10_134
.LBB10_112:                             # %land.lhs.true.372
                                        #   in Loop: Header=BB10_108 Depth=2
	movl	$1, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	-160(%rbp), %rdi
	movq	%rcx, -384(%rbp)        # 8-byte Spill
	callq	AREF
	sarq	$2, %rax
	movq	-384(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	cmpq	-32(%rbp), %rcx
	jle	.LBB10_134
# BB#113:                               # %if.then.378
                                        #   in Loop: Header=BB10_108 Depth=2
	movl	$1, %eax
	movl	%eax, %esi
	movq	-160(%rbp), %rdi
	callq	AREF
	sarq	$2, %rax
	movq	%rax, -176(%rbp)
	movq	-16(%rbp), %rax
	subq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
	cmpq	$0, -176(%rbp)
	jne	.LBB10_115
# BB#114:                               # %if.then.384
                                        #   in Loop: Header=BB10_108 Depth=2
	movq	-24(%rbp), %rax
	movq	%rax, -192(%rbp)
	jmp	.LBB10_119
.LBB10_115:                             # %if.else.385
                                        #   in Loop: Header=BB10_108 Depth=2
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-392(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB10_117
# BB#116:                               # %cond.true.389
                                        #   in Loop: Header=BB10_108 Depth=2
	movq	current_buffer, %rdi
	movq	-184(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -400(%rbp)        # 8-byte Spill
	jmp	.LBB10_118
.LBB10_117:                             # %cond.false.391
                                        #   in Loop: Header=BB10_108 Depth=2
	movq	-40(%rbp), %rdi
	movq	-184(%rbp), %rsi
	callq	string_char_to_byte
	movq	%rax, -400(%rbp)        # 8-byte Spill
.LBB10_118:                             # %cond.end.393
                                        #   in Loop: Header=BB10_108 Depth=2
	movq	-400(%rbp), %rax        # 8-byte Reload
	movq	%rax, -192(%rbp)
.LBB10_119:                             # %if.end.395
                                        #   in Loop: Header=BB10_108 Depth=2
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-160(%rbp), %rdi
	callq	AREF
	movq	%rax, %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB10_120
	jmp	.LBB10_121
.LBB10_120:                             # %if.then.398
                                        #   in Loop: Header=BB10_108 Depth=2
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-160(%rbp), %rdi
	callq	AREF
	movq	-184(%rbp), %rsi
	movq	-192(%rbp), %rdx
	movq	-48(%rbp), %rdi
	addq	$1, %rdi
	movq	-152(%rbp), %r8
	movq	-40(%rbp), %r9
	movq	%rdi, -408(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-408(%rbp), %rcx        # 8-byte Reload
	callq	fast_looking_at
	movl	%eax, %r10d
	movl	%r10d, -168(%rbp)
	jmp	.LBB10_122
.LBB10_121:                             # %if.else.403
                                        #   in Loop: Header=BB10_108 Depth=2
	movl	$1, -168(%rbp)
.LBB10_122:                             # %if.end.404
                                        #   in Loop: Header=BB10_108 Depth=2
	cmpl	$0, -168(%rbp)
	jle	.LBB10_133
# BB#123:                               # %if.then.407
                                        #   in Loop: Header=BB10_108 Depth=2
	cmpl	$1, -168(%rbp)
	jle	.LBB10_128
# BB#124:                               # %if.then.410
                                        #   in Loop: Header=BB10_108 Depth=2
	xorl	%edi, %edi
	movslq	-168(%rbp), %rax
	addq	-192(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-416(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB10_126
# BB#125:                               # %if.then.416
                                        #   in Loop: Header=BB10_108 Depth=2
	movq	current_buffer, %rdi
	movq	-192(%rbp), %rsi
	callq	buf_bytepos_to_charpos
	subq	$1, %rax
	movq	%rax, -184(%rbp)
	jmp	.LBB10_127
.LBB10_126:                             # %if.else.419
                                        #   in Loop: Header=BB10_108 Depth=2
	movq	-40(%rbp), %rdi
	movq	-192(%rbp), %rsi
	callq	string_byte_to_char
	subq	$1, %rax
	movq	%rax, -184(%rbp)
.LBB10_127:                             # %if.end.422
                                        #   in Loop: Header=BB10_108 Depth=2
	jmp	.LBB10_128
.LBB10_128:                             # %if.end.423
                                        #   in Loop: Header=BB10_108 Depth=2
	movq	-184(%rbp), %rax
	movq	-16(%rbp), %rcx
	subq	-176(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -176(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-184(%rbp), %rax
	jl	.LBB10_131
# BB#129:                               # %lor.lhs.false.429
                                        #   in Loop: Header=BB10_108 Depth=2
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-184(%rbp), %rax
	jne	.LBB10_132
# BB#130:                               # %land.lhs.true.433
                                        #   in Loop: Header=BB10_108 Depth=2
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	-176(%rbp), %rax
	jge	.LBB10_132
.LBB10_131:                             # %if.then.437
                                        #   in Loop: Header=BB10_108 Depth=2
	movl	-164(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 20(%rcx)
	movq	-184(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, (%rdx)
	movl	-60(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 16(%rcx)
	movq	-176(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, 24(%rdx)
	movq	-176(%rbp), %rcx
	addq	$1, %rcx
	movl	%ecx, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 48(%rcx)
.LBB10_132:                             # %if.end.444
                                        #   in Loop: Header=BB10_108 Depth=2
	jmp	.LBB10_133
.LBB10_133:                             # %if.end.445
                                        #   in Loop: Header=BB10_108 Depth=2
	jmp	.LBB10_134
.LBB10_134:                             # %if.end.446
                                        #   in Loop: Header=BB10_108 Depth=2
	jmp	.LBB10_135
.LBB10_135:                             # %for.inc.447
                                        #   in Loop: Header=BB10_108 Depth=2
	movq	-80(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
	movl	-164(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -164(%rbp)
	jmp	.LBB10_108
.LBB10_136:                             # %for.end.452
                                        #   in Loop: Header=BB10_105 Depth=1
	jmp	.LBB10_137
.LBB10_137:                             # %if.end.453
                                        #   in Loop: Header=BB10_105 Depth=1
	movq	-16(%rbp), %rax
	subq	$1, %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB10_139
# BB#138:                               # %if.then.457
	jmp	.LBB10_171
.LBB10_139:                             # %if.end.458
                                        #   in Loop: Header=BB10_105 Depth=1
	movq	-40(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB10_140
	jmp	.LBB10_144
.LBB10_140:                             # %if.then.460
                                        #   in Loop: Header=BB10_105 Depth=1
	movq	-136(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -136(%rbp)
	movq	-24(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -24(%rbp)
.LBB10_141:                             # %while.cond.461
                                        #   Parent Loop BB10_105 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-136(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	setne	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB10_142
	jmp	.LBB10_143
.LBB10_142:                             # %while.body.466
                                        #   in Loop: Header=BB10_141 Depth=2
	movq	-136(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -136(%rbp)
	movq	-24(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB10_141
.LBB10_143:                             # %while.end.469
                                        #   in Loop: Header=BB10_105 Depth=1
	movq	-16(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB10_161
.LBB10_144:                             # %if.else.471
                                        #   in Loop: Header=BB10_105 Depth=1
	jmp	.LBB10_145
.LBB10_145:                             # %do.body.472
                                        #   in Loop: Header=BB10_105 Depth=1
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -16(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-424(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB10_147
# BB#146:                               # %if.then.478
                                        #   in Loop: Header=BB10_105 Depth=1
	movq	-24(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB10_156
.LBB10_147:                             # %if.else.480
                                        #   in Loop: Header=BB10_105 Depth=1
	jmp	.LBB10_148
.LBB10_148:                             # %do.body.481
                                        #   in Loop: Header=BB10_105 Depth=1
	movq	-24(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jge	.LBB10_150
# BB#149:                               # %if.then.488
                                        #   in Loop: Header=BB10_105 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	addq	-24(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -200(%rbp)
	jmp	.LBB10_151
.LBB10_150:                             # %if.else.493
                                        #   in Loop: Header=BB10_105 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	40(%rcx), %rax
	addq	-24(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -200(%rbp)
.LBB10_151:                             # %if.end.501
                                        #   in Loop: Header=BB10_105 Depth=1
	jmp	.LBB10_152
.LBB10_152:                             # %while.cond.502
                                        #   Parent Loop BB10_105 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-200(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	setne	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB10_153
	jmp	.LBB10_154
.LBB10_153:                             # %while.body.508
                                        #   in Loop: Header=BB10_152 Depth=2
	movq	-200(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -200(%rbp)
	movq	-24(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB10_152
.LBB10_154:                             # %while.end.511
                                        #   in Loop: Header=BB10_105 Depth=1
	jmp	.LBB10_155
.LBB10_155:                             # %do.end.512
                                        #   in Loop: Header=BB10_105 Depth=1
	jmp	.LBB10_156
.LBB10_156:                             # %if.end.513
                                        #   in Loop: Header=BB10_105 Depth=1
	jmp	.LBB10_157
.LBB10_157:                             # %do.end.514
                                        #   in Loop: Header=BB10_105 Depth=1
	movq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB10_159
# BB#158:                               # %cond.true.519
                                        #   in Loop: Header=BB10_105 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	jmp	.LBB10_160
.LBB10_159:                             # %cond.false.522
                                        #   in Loop: Header=BB10_105 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -432(%rbp)        # 8-byte Spill
	jmp	.LBB10_160
.LBB10_160:                             # %cond.end.523
                                        #   in Loop: Header=BB10_105 Depth=1
	movq	-432(%rbp), %rax        # 8-byte Reload
	addq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -136(%rbp)
.LBB10_161:                             # %if.end.530
                                        #   in Loop: Header=BB10_105 Depth=1
	movq	-136(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB10_163
# BB#162:                               # %cond.true.535
                                        #   in Loop: Header=BB10_105 Depth=1
	movq	-136(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -436(%rbp)        # 4-byte Spill
	jmp	.LBB10_170
.LBB10_163:                             # %cond.false.538
                                        #   in Loop: Header=BB10_105 Depth=1
	movq	-136(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB10_165
# BB#164:                               # %cond.true.543
                                        #   in Loop: Header=BB10_105 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movq	-136(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-136(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-136(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -440(%rbp)        # 4-byte Spill
	jmp	.LBB10_169
.LBB10_165:                             # %cond.false.558
                                        #   in Loop: Header=BB10_105 Depth=1
	movq	-136(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB10_167
# BB#166:                               # %cond.true.563
                                        #   in Loop: Header=BB10_105 Depth=1
	movq	-136(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-136(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-136(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -444(%rbp)        # 4-byte Spill
	jmp	.LBB10_168
.LBB10_167:                             # %cond.false.577
                                        #   in Loop: Header=BB10_105 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-136(%rbp), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	string_char
	movl	%eax, -444(%rbp)        # 4-byte Spill
.LBB10_168:                             # %cond.end.579
                                        #   in Loop: Header=BB10_105 Depth=1
	movl	-444(%rbp), %eax        # 4-byte Reload
	movl	%eax, -440(%rbp)        # 4-byte Spill
.LBB10_169:                             # %cond.end.581
                                        #   in Loop: Header=BB10_105 Depth=1
	movl	-440(%rbp), %eax        # 4-byte Reload
	movl	%eax, -436(%rbp)        # 4-byte Spill
.LBB10_170:                             # %cond.end.583
                                        #   in Loop: Header=BB10_105 Depth=1
	movl	-436(%rbp), %eax        # 4-byte Reload
	movl	%eax, -60(%rbp)
	jmp	.LBB10_105
.LBB10_171:                             # %while.end.585
	movq	-8(%rbp), %rax
	cmpl	$0, 16(%rax)
	jl	.LBB10_173
# BB#172:                               # %if.then.589
	jmp	.LBB10_214
.LBB10_173:                             # %if.end.590
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-456(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB10_193
# BB#174:                               # %if.then.594
	jmp	.LBB10_175
.LBB10_175:                             # %while.cond.595
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_186 Depth 2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	subq	$1, %rdx
	cmpq	-32(%rbp), %rdx
	movb	%cl, -457(%rbp)         # 1-byte Spill
	jle	.LBB10_177
# BB#176:                               # %land.rhs
                                        #   in Loop: Header=BB10_175 Depth=1
	movl	-60(%rbp), %edi
	callq	char_composable_p
	xorb	$-1, %al
	movb	%al, -457(%rbp)         # 1-byte Spill
.LBB10_177:                             # %land.end
                                        #   in Loop: Header=BB10_175 Depth=1
	movb	-457(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB10_178
	jmp	.LBB10_192
.LBB10_178:                             # %while.body.601
                                        #   in Loop: Header=BB10_175 Depth=1
	jmp	.LBB10_179
.LBB10_179:                             # %do.body.602
                                        #   in Loop: Header=BB10_175 Depth=1
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -16(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-472(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB10_181
# BB#180:                               # %if.then.608
                                        #   in Loop: Header=BB10_175 Depth=1
	movq	-24(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB10_190
.LBB10_181:                             # %if.else.610
                                        #   in Loop: Header=BB10_175 Depth=1
	jmp	.LBB10_182
.LBB10_182:                             # %do.body.611
                                        #   in Loop: Header=BB10_175 Depth=1
	movq	-24(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jge	.LBB10_184
# BB#183:                               # %if.then.618
                                        #   in Loop: Header=BB10_175 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	addq	-24(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -208(%rbp)
	jmp	.LBB10_185
.LBB10_184:                             # %if.else.623
                                        #   in Loop: Header=BB10_175 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	40(%rcx), %rax
	addq	-24(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -208(%rbp)
.LBB10_185:                             # %if.end.631
                                        #   in Loop: Header=BB10_175 Depth=1
	jmp	.LBB10_186
.LBB10_186:                             # %while.cond.632
                                        #   Parent Loop BB10_175 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-208(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	setne	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB10_187
	jmp	.LBB10_188
.LBB10_187:                             # %while.body.638
                                        #   in Loop: Header=BB10_186 Depth=2
	movq	-208(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -208(%rbp)
	movq	-24(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB10_186
.LBB10_188:                             # %while.end.641
                                        #   in Loop: Header=BB10_175 Depth=1
	jmp	.LBB10_189
.LBB10_189:                             # %do.end.642
                                        #   in Loop: Header=BB10_175 Depth=1
	jmp	.LBB10_190
.LBB10_190:                             # %if.end.643
                                        #   in Loop: Header=BB10_175 Depth=1
	jmp	.LBB10_191
.LBB10_191:                             # %do.end.644
                                        #   in Loop: Header=BB10_175 Depth=1
	movq	-24(%rbp), %rdi
	callq	FETCH_MULTIBYTE_CHAR
	movl	%eax, -60(%rbp)
	jmp	.LBB10_175
.LBB10_192:                             # %while.end.646
	jmp	.LBB10_211
.LBB10_193:                             # %if.else.647
	jmp	.LBB10_194
.LBB10_194:                             # %while.cond.648
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_198 Depth 2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	subq	$1, %rdx
	cmpq	-32(%rbp), %rdx
	movb	%cl, -473(%rbp)         # 1-byte Spill
	jle	.LBB10_196
# BB#195:                               # %land.rhs.652
                                        #   in Loop: Header=BB10_194 Depth=1
	movl	-60(%rbp), %edi
	callq	char_composable_p
	xorb	$-1, %al
	movb	%al, -473(%rbp)         # 1-byte Spill
.LBB10_196:                             # %land.end.655
                                        #   in Loop: Header=BB10_194 Depth=1
	movb	-473(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB10_197
	jmp	.LBB10_210
.LBB10_197:                             # %while.body.656
                                        #   in Loop: Header=BB10_194 Depth=1
	movq	-136(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -136(%rbp)
.LBB10_198:                             # %while.cond.658
                                        #   Parent Loop BB10_194 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-136(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	setne	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB10_199
	jmp	.LBB10_200
.LBB10_199:                             # %while.body.664
                                        #   in Loop: Header=BB10_198 Depth=2
	movq	-136(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -136(%rbp)
	jmp	.LBB10_198
.LBB10_200:                             # %while.end.666
                                        #   in Loop: Header=BB10_194 Depth=1
	movq	-16(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -16(%rbp)
	movq	-136(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB10_202
# BB#201:                               # %cond.true.672
                                        #   in Loop: Header=BB10_194 Depth=1
	movq	-136(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -480(%rbp)        # 4-byte Spill
	jmp	.LBB10_209
.LBB10_202:                             # %cond.false.675
                                        #   in Loop: Header=BB10_194 Depth=1
	movq	-136(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB10_204
# BB#203:                               # %cond.true.680
                                        #   in Loop: Header=BB10_194 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movq	-136(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-136(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-136(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -484(%rbp)        # 4-byte Spill
	jmp	.LBB10_208
.LBB10_204:                             # %cond.false.695
                                        #   in Loop: Header=BB10_194 Depth=1
	movq	-136(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB10_206
# BB#205:                               # %cond.true.700
                                        #   in Loop: Header=BB10_194 Depth=1
	movq	-136(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-136(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-136(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -488(%rbp)        # 4-byte Spill
	jmp	.LBB10_207
.LBB10_206:                             # %cond.false.714
                                        #   in Loop: Header=BB10_194 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-136(%rbp), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	string_char
	movl	%eax, -488(%rbp)        # 4-byte Spill
.LBB10_207:                             # %cond.end.716
                                        #   in Loop: Header=BB10_194 Depth=1
	movl	-488(%rbp), %eax        # 4-byte Reload
	movl	%eax, -484(%rbp)        # 4-byte Spill
.LBB10_208:                             # %cond.end.718
                                        #   in Loop: Header=BB10_194 Depth=1
	movl	-484(%rbp), %eax        # 4-byte Reload
	movl	%eax, -480(%rbp)        # 4-byte Spill
.LBB10_209:                             # %cond.end.720
                                        #   in Loop: Header=BB10_194 Depth=1
	movl	-480(%rbp), %eax        # 4-byte Reload
	movl	%eax, -60(%rbp)
	jmp	.LBB10_194
.LBB10_210:                             # %while.end.722
	jmp	.LBB10_211
.LBB10_211:                             # %if.end.723
	jmp	.LBB10_212
.LBB10_212:                             # %if.end.724
	jmp	.LBB10_213
.LBB10_213:                             # %if.end.725
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB10_214:                             # %return
	addq	$496, %rsp              # imm = 0x1F0
	popq	%rbp
	retq
.Lfunc_end10:
	.size	composition_compute_stop_pos, .Lfunc_end10-composition_compute_stop_pos
	.cfi_endproc

	.align	16, 0x90
	.type	char_composable_p,@function
char_composable_p:                      # @char_composable_p
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
	subq	$32, %rsp
	xorl	%eax, %eax
	movb	%al, %cl
	movl	%edi, -4(%rbp)
	cmpl	$32, -4(%rbp)
	movb	%cl, -17(%rbp)          # 1-byte Spill
	jle	.LBB11_7
# BB#1:                                 # %land.rhs
	movb	$1, %al
	cmpl	$8204, -4(%rbp)         # imm = 0x200C
	movb	%al, -18(%rbp)          # 1-byte Spill
	je	.LBB11_6
# BB#2:                                 # %lor.lhs.false
	movb	$1, %al
	cmpl	$8205, -4(%rbp)         # imm = 0x200D
	movb	%al, -18(%rbp)          # 1-byte Spill
	je	.LBB11_6
# BB#3:                                 # %lor.rhs
	movq	globals+2512, %rdi
	movl	-4(%rbp), %esi
	callq	CHAR_TABLE_REF
	xorl	%esi, %esi
	movb	%sil, %cl
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %esi
	andl	$-5, %esi
	cmpl	$2, %esi
	movb	%cl, -19(%rbp)          # 1-byte Spill
	jne	.LBB11_5
# BB#4:                                 # %land.rhs.6
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	cmpq	$22, %rax
	setle	%cl
	movb	%cl, -19(%rbp)          # 1-byte Spill
.LBB11_5:                               # %land.end
	movb	-19(%rbp), %al          # 1-byte Reload
	movb	%al, -18(%rbp)          # 1-byte Spill
.LBB11_6:                               # %lor.end
	movb	-18(%rbp), %al          # 1-byte Reload
	movb	%al, -17(%rbp)          # 1-byte Spill
.LBB11_7:                               # %land.end.9
	movb	-17(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	char_composable_p, .Lfunc_end11-char_composable_p
	.cfi_endproc

	.globl	composition_reseat_it
	.align	16, 0x90
	.type	composition_reseat_it,@function
composition_reseat_it:                  # @composition_reseat_it
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
	subq	$272, %rsp              # imm = 0x110
	movq	16(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$-2, 16(%rax)
	jne	.LBB12_5
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-64(%rbp), %r8
	callq	composition_compute_stop_pos
	movq	-16(%rbp), %rcx
	cmpl	$-2, 16(%rcx)
	je	.LBB12_3
# BB#2:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	je	.LBB12_4
.LBB12_3:                               # %if.then.4
	movb	$0, -1(%rbp)
	jmp	.LBB12_90
.LBB12_4:                               # %if.end
	jmp	.LBB12_5
.LBB12_5:                               # %if.end.5
	cmpq	$0, -40(%rbp)
	jge	.LBB12_10
# BB#6:                                 # %if.then.7
	xorl	%edi, %edi
	movq	-64(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB12_8
# BB#7:                                 # %cond.true
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB12_9
.LBB12_8:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	jmp	.LBB12_9
.LBB12_9:                               # %cond.end
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
.LBB12_10:                              # %if.end.9
	movq	-16(%rbp), %rax
	cmpl	$0, 16(%rax)
	jge	.LBB12_14
# BB#11:                                # %if.then.12
	movq	$-1, %rsi
	leaq	-72(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	leaq	-88(%rbp), %r8
	movq	-24(%rbp), %rdi
	movq	-64(%rbp), %r9
	callq	find_composition
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-80(%rbp), %rcx
	subq	-72(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-64(%rbp), %r8
	movq	%rdx, -168(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-168(%rbp), %rcx        # 8-byte Reload
	movb	%al, -169(%rbp)         # 1-byte Spill
	callq	get_composition_id
	movq	-16(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	jge	.LBB12_13
# BB#12:                                # %if.then.17
	jmp	.LBB12_56
.LBB12_13:                              # %if.end.18
	movq	-80(%rbp), %rax
	subq	-72(%rbp), %rax
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 48(%rax)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	composition_table, %rdx
	movq	(%rdx,%rax,8), %rax
	movl	(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 32(%rax)
	jmp	.LBB12_55
.LBB12_14:                              # %if.else
	cmpq	$0, -48(%rbp)
	je	.LBB12_53
# BB#15:                                # %if.then.21
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -96(%rbp)
	movq	globals+368, %rdi
	movq	-16(%rbp), %rax
	movl	16(%rax), %esi
	callq	CHAR_TABLE_REF
	movq	%rax, -104(%rbp)
	movq	$0, -120(%rbp)
.LBB12_16:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-120(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	20(%rcx), %rcx
	cmpq	%rcx, %rax
	jge	.LBB12_19
# BB#17:                                # %for.body
                                        #   in Loop: Header=BB12_16 Depth=1
	jmp	.LBB12_18
.LBB12_18:                              # %for.inc
                                        #   in Loop: Header=BB12_16 Depth=1
	movq	-120(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -120(%rbp)
	movq	-104(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB12_16
.LBB12_19:                              # %for.end
	movq	-24(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jge	.LBB12_33
# BB#20:                                # %if.then.31
	jmp	.LBB12_21
.LBB12_21:                              # %for.cond.32
                                        # =>This Inner Loop Header: Depth=1
	movq	-104(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB12_32
# BB#22:                                # %for.body.36
                                        #   in Loop: Header=BB12_21 Depth=1
	movq	-104(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB12_23
	jmp	.LBB12_25
.LBB12_23:                              # %lor.lhs.false.39
                                        #   in Loop: Header=BB12_21 Depth=1
	movq	-112(%rbp), %rdi
	callq	ASIZE
	cmpq	$3, %rax
	jne	.LBB12_25
# BB#24:                                # %lor.lhs.false.43
                                        #   in Loop: Header=BB12_21 Depth=1
	movl	$1, %eax
	movl	%eax, %esi
	movq	-112(%rbp), %rdi
	callq	AREF
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	je	.LBB12_26
.LBB12_25:                              # %if.then.50
                                        #   in Loop: Header=BB12_21 Depth=1
	jmp	.LBB12_31
.LBB12_26:                              # %if.end.51
                                        #   in Loop: Header=BB12_21 Depth=1
	movl	$1, %eax
	movl	%eax, %esi
	movq	-112(%rbp), %rdi
	callq	AREF
	sarq	$2, %rax
	movq	-16(%rbp), %rsi
	cmpq	24(%rsi), %rax
	je	.LBB12_28
# BB#27:                                # %if.then.55
	jmp	.LBB12_56
.LBB12_28:                              # %if.end.56
                                        #   in Loop: Header=BB12_21 Depth=1
	movq	-112(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %r8
	movq	-56(%rbp), %r9
	movq	-64(%rbp), %rax
	movq	%rax, (%rsp)
	callq	autocmp_chars
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	callq	composition_gstring_p
	testb	$1, %al
	jne	.LBB12_29
	jmp	.LBB12_30
.LBB12_29:                              # %if.then.59
	jmp	.LBB12_32
.LBB12_30:                              # %if.end.60
                                        #   in Loop: Header=BB12_21 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -96(%rbp)
.LBB12_31:                              # %for.inc.62
                                        #   in Loop: Header=BB12_21 Depth=1
	movq	-104(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB12_21
.LBB12_32:                              # %for.end.66
	movq	-16(%rbp), %rax
	movb	$0, 36(%rax)
	jmp	.LBB12_42
.LBB12_33:                              # %if.else.67
	movq	-24(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-16(%rbp), %rax
	movb	$1, 36(%rax)
	movq	-104(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 24(%rax)
	jle	.LBB12_38
# BB#34:                                # %if.then.74
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	subq	24(%rcx), %rax
	movq	%rax, -128(%rbp)
	movq	-64(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB12_35
	jmp	.LBB12_36
.LBB12_35:                              # %if.then.78
	movq	-64(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	string_char_to_byte
	movq	%rax, -136(%rbp)
	jmp	.LBB12_37
.LBB12_36:                              # %if.else.80
	movq	current_buffer, %rdi
	movq	-128(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -136(%rbp)
.LBB12_37:                              # %if.end.82
	jmp	.LBB12_38
.LBB12_38:                              # %if.end.83
	movq	-112(%rbp), %rdi
	movq	-128(%rbp), %rsi
	movq	-136(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	-48(%rbp), %r8
	movq	-56(%rbp), %r9
	movq	-64(%rbp), %rcx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	autocmp_chars
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	callq	composition_gstring_p
	testb	$1, %al
	jne	.LBB12_39
	jmp	.LBB12_40
.LBB12_39:                              # %lor.lhs.false.86
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-128(%rbp), %rcx
	movq	-96(%rbp), %rdi
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	callq	AREF
	movq	%rax, %rdi
	callq	ASIZE
	subq	$1, %rax
	movq	-192(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	subq	$1, %rcx
	cmpq	-24(%rbp), %rcx
	je	.LBB12_41
.LBB12_40:                              # %if.then.94
	jmp	.LBB12_56
.LBB12_41:                              # %if.end.95
	jmp	.LBB12_42
.LBB12_42:                              # %if.end.96
	xorl	%edi, %edi
	movq	-96(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-200(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB12_44
# BB#43:                                # %if.then.100
	jmp	.LBB12_56
.LBB12_44:                              # %if.end.101
	movl	$1, %eax
	movl	%eax, %esi
	movq	-96(%rbp), %rdi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB12_46
# BB#45:                                # %if.then.106
	movq	$-1, %rsi
	movq	-96(%rbp), %rdi
	callq	composition_gstring_put_cache
	movq	%rax, -96(%rbp)
.LBB12_46:                              # %if.end.108
	movl	$1, %eax
	movl	%eax, %esi
	movq	-96(%rbp), %rdi
	callq	AREF
	sarq	$2, %rax
	movq	-16(%rbp), %rsi
	movq	%rax, 8(%rsi)
	movq	$0, -120(%rbp)
.LBB12_47:                              # %for.cond.112
                                        # =>This Inner Loop Header: Depth=1
	movq	-120(%rbp), %rax
	movq	-96(%rbp), %rdi
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	ASIZE
	subq	$2, %rax
	movq	-216(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jge	.LBB12_52
# BB#48:                                # %for.body.117
                                        #   in Loop: Header=BB12_47 Depth=1
	movq	-96(%rbp), %rdi
	movq	-120(%rbp), %rax
	addq	$2, %rax
	movq	%rax, %rsi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB12_50
# BB#49:                                # %if.then.123
	jmp	.LBB12_52
.LBB12_50:                              # %if.end.124
                                        #   in Loop: Header=BB12_47 Depth=1
	jmp	.LBB12_51
.LBB12_51:                              # %for.inc.125
                                        #   in Loop: Header=BB12_47 Depth=1
	movq	-120(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -120(%rbp)
	jmp	.LBB12_47
.LBB12_52:                              # %for.end.127
	movq	-120(%rbp), %rax
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 32(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 56(%rax)
	movq	-120(%rbp), %rax
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 60(%rax)
	jmp	.LBB12_54
.LBB12_53:                              # %if.else.131
	jmp	.LBB12_56
.LBB12_54:                              # %if.end.132
	jmp	.LBB12_55
.LBB12_55:                              # %if.end.133
	movb	$1, -1(%rbp)
	jmp	.LBB12_90
.LBB12_56:                              # %no_composition
	movq	-24(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB12_58
# BB#57:                                # %if.then.136
	movb	$0, -1(%rbp)
	jmp	.LBB12_90
.LBB12_58:                              # %if.end.137
	movq	-24(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jge	.LBB12_86
# BB#59:                                # %if.then.140
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-232(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB12_75
# BB#60:                                # %if.then.145
	jmp	.LBB12_61
.LBB12_61:                              # %do.body
	movq	-32(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB12_63
# BB#62:                                # %cond.true.148
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	jmp	.LBB12_64
.LBB12_63:                              # %cond.false.150
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	jmp	.LBB12_64
.LBB12_64:                              # %cond.end.151
	movq	-240(%rbp), %rax        # 8-byte Reload
	addq	-32(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movzbl	(%rax), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	jne	.LBB12_66
# BB#65:                                # %cond.true.159
	movl	$1, %eax
	movl	%eax, -244(%rbp)        # 4-byte Spill
	jmp	.LBB12_73
.LBB12_66:                              # %cond.false.160
	movq	-144(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_68
# BB#67:                                # %cond.true.164
	movl	$2, %eax
	movl	%eax, -248(%rbp)        # 4-byte Spill
	jmp	.LBB12_72
.LBB12_68:                              # %cond.false.165
	movq	-144(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_70
# BB#69:                                # %cond.true.169
	movl	$3, %eax
	movl	%eax, -252(%rbp)        # 4-byte Spill
	jmp	.LBB12_71
.LBB12_70:                              # %cond.false.170
	movl	$5, %eax
	movl	$4, %ecx
	movq	-144(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$8, %esi
	cmpl	$0, %esi
	setne	%dil
	xorb	$-1, %dil
	testb	$1, %dil
	cmovnel	%ecx, %eax
	movl	%eax, -252(%rbp)        # 4-byte Spill
.LBB12_71:                              # %cond.end.175
	movl	-252(%rbp), %eax        # 4-byte Reload
	movl	%eax, -248(%rbp)        # 4-byte Spill
.LBB12_72:                              # %cond.end.177
	movl	-248(%rbp), %eax        # 4-byte Reload
	movl	%eax, -244(%rbp)        # 4-byte Spill
.LBB12_73:                              # %cond.end.179
	movl	-244(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	movq	%rcx, -32(%rbp)
# BB#74:                                # %do.end
	jmp	.LBB12_85
.LBB12_75:                              # %if.else.183
	movq	-64(%rbp), %rdi
	callq	SDATA
	movq	-32(%rbp), %rdi
	movzbl	(%rax,%rdi), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_77
# BB#76:                                # %cond.true.189
	movl	$1, %eax
	movl	%eax, -256(%rbp)        # 4-byte Spill
	jmp	.LBB12_84
.LBB12_77:                              # %cond.false.190
	movq	-64(%rbp), %rdi
	callq	SDATA
	movq	-32(%rbp), %rdi
	movzbl	(%rax,%rdi), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_79
# BB#78:                                # %cond.true.196
	movl	$2, %eax
	movl	%eax, -260(%rbp)        # 4-byte Spill
	jmp	.LBB12_83
.LBB12_79:                              # %cond.false.197
	movq	-64(%rbp), %rdi
	callq	SDATA
	movq	-32(%rbp), %rdi
	movzbl	(%rax,%rdi), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_81
# BB#80:                                # %cond.true.203
	movl	$3, %eax
	movl	%eax, -264(%rbp)        # 4-byte Spill
	jmp	.LBB12_82
.LBB12_81:                              # %cond.false.204
	movq	-64(%rbp), %rdi
	callq	SDATA
	movl	$5, %ecx
	movl	$4, %edx
	movq	-32(%rbp), %rdi
	movzbl	(%rax,%rdi), %esi
	andl	$8, %esi
	cmpl	$0, %esi
	setne	%r8b
	xorb	$-1, %r8b
	testb	$1, %r8b
	cmovnel	%edx, %ecx
	movl	%ecx, -264(%rbp)        # 4-byte Spill
.LBB12_82:                              # %cond.end.212
	movl	-264(%rbp), %eax        # 4-byte Reload
	movl	%eax, -260(%rbp)        # 4-byte Spill
.LBB12_83:                              # %cond.end.214
	movl	-260(%rbp), %eax        # 4-byte Reload
	movl	%eax, -256(%rbp)        # 4-byte Spill
.LBB12_84:                              # %cond.end.216
	movl	-256(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	movq	%rcx, -32(%rbp)
.LBB12_85:                              # %if.end.220
	jmp	.LBB12_87
.LBB12_86:                              # %if.else.221
	movq	-24(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -24(%rbp)
	movq	$-1, -32(%rbp)
.LBB12_87:                              # %if.end.222
	movq	-16(%rbp), %rax
	testb	$1, 36(%rax)
	je	.LBB12_89
# BB#88:                                # %if.then.225
	movq	$-1, -40(%rbp)
.LBB12_89:                              # %if.end.226
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-64(%rbp), %r8
	callq	composition_compute_stop_pos
	movb	$0, -1(%rbp)
.LBB12_90:                              # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$272, %rsp              # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end12:
	.size	composition_reseat_it, .Lfunc_end12-composition_reseat_it
	.cfi_endproc

	.align	16, 0x90
	.type	autocmp_chars,@function
autocmp_chars:                          # @autocmp_chars
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
	subq	$240, %rsp
	movq	16(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	%rax, -64(%rbp)
	callq	SPECPDL_INDEX
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	%rax, -80(%rbp)
	movq	-24(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -88(%rbp)
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, -104(%rbp)
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	movq	%rax, -112(%rbp)
	callq	record_unwind_save_match_data
	xorl	%r10d, %r10d
	movl	%r10d, %esi
	movq	-16(%rbp), %rdi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB13_2
# BB#1:                                 # %if.then
	movq	$1, -144(%rbp)
	jmp	.LBB13_11
.LBB13_2:                               # %if.else
	movq	-120(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB13_4
# BB#3:                                 # %if.then.8
	xorl	%edi, %edi
	movq	-72(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -8(%rbp)
	jmp	.LBB13_26
.LBB13_4:                               # %if.else.11
	movq	$-1, %r8
	movq	-120(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-64(%rbp), %r9
	callq	fast_looking_at
	movq	%rax, -144(%rbp)
	cmpq	$0, %rax
	jle	.LBB13_9
# BB#5:                                 # %if.then.14
	xorl	%edi, %edi
	movq	-64(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB13_7
# BB#6:                                 # %if.then.17
	movq	current_buffer, %rdi
	movq	-32(%rbp), %rax
	addq	-144(%rbp), %rax
	movq	%rax, %rsi
	callq	buf_bytepos_to_charpos
	subq	-24(%rbp), %rax
	movq	%rax, -144(%rbp)
	jmp	.LBB13_8
.LBB13_7:                               # %if.else.21
	movq	-64(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	-144(%rbp), %rax
	movq	%rax, %rsi
	callq	string_byte_to_char
	subq	-24(%rbp), %rax
	movq	%rax, -144(%rbp)
.LBB13_8:                               # %if.end
	jmp	.LBB13_9
.LBB13_9:                               # %if.end.25
	jmp	.LBB13_10
.LBB13_10:                              # %if.end.26
	jmp	.LBB13_11
.LBB13_11:                              # %if.end.27
	cmpq	$0, -144(%rbp)
	jg	.LBB13_13
# BB#12:                                # %if.then.29
	xorl	%edi, %edi
	movq	-72(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -8(%rbp)
	jmp	.LBB13_26
.LBB13_13:                              # %if.end.32
	movq	-24(%rbp), %rax
	addq	-144(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	%rax, -96(%rbp)
	movq	-80(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	.LBB13_20
# BB#14:                                # %if.then.35
	leaq	-96(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %r8
	movq	-64(%rbp), %r9
	callq	font_range
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rdi
	callq	FONT_OBJECT_P
	testb	$1, %al
	jne	.LBB13_15
	jmp	.LBB13_18
.LBB13_15:                              # %lor.lhs.false
	xorl	%edi, %edi
	movq	-120(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB13_19
# BB#16:                                # %land.lhs.true
	movq	-96(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jge	.LBB13_19
# BB#17:                                # %land.lhs.true.41
	movq	$-1, %r8
	movq	-120(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-96(%rbp), %rcx
	movq	-64(%rbp), %r9
	callq	fast_looking_at
	cmpq	$0, %rax
	jg	.LBB13_19
.LBB13_18:                              # %if.then.44
	xorl	%edi, %edi
	movq	-72(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -8(%rbp)
	jmp	.LBB13_26
.LBB13_19:                              # %if.end.47
	jmp	.LBB13_21
.LBB13_20:                              # %if.else.48
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -128(%rbp)
.LBB13_21:                              # %if.end.50
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-128(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	%rax, %rsi
	callq	Fcomposition_get_gstring
	movl	$1, %r8d
	movl	%r8d, %esi
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rdi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-200(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB13_25
# BB#22:                                # %if.then.57
	xorl	%edi, %edi
	movq	-64(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB13_24
# BB#23:                                # %if.then.60
	movq	current_buffer, %rdi
	movq	-104(%rbp), %rsi
	movq	-112(%rbp), %rdx
	callq	build_marker
	movabsq	$restore_point_unwind, %rdi
	movq	%rax, %rsi
	callq	record_unwind_protect
.LBB13_24:                              # %if.end.62
	movl	$2, %eax
	movl	%eax, %esi
	movq	globals+40, %rcx
	movq	-16(%rbp), %rdi
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	callq	AREF
	movl	$6, %edx
	movl	%edx, %edi
	movq	-88(%rbp), %rcx
	movq	-96(%rbp), %rsi
	shlq	$2, %rsi
	addq	$2, %rsi
	movq	-128(%rbp), %r9
	movq	-64(%rbp), %r8
	movq	-216(%rbp), %r10        # 8-byte Reload
	movq	%rsi, -224(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	%rax, %rdx
	movq	-224(%rbp), %rax        # 8-byte Reload
	movq	%r8, -232(%rbp)         # 8-byte Spill
	movq	%rax, %r8
	movq	-232(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movb	$0, %al
	callq	safe_call
	movq	%rax, -136(%rbp)
.LBB13_25:                              # %if.end.67
	movq	-72(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	unbind_to
	movq	%rax, -8(%rbp)
.LBB13_26:                              # %return
	movq	-8(%rbp), %rax
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	autocmp_chars, .Lfunc_end13-autocmp_chars
	.cfi_endproc

	.globl	composition_update_it
	.align	16, 0x90
	.type	composition_update_it,@function
composition_update_it:                  # @composition_update_it
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
	subq	$176, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-16(%rbp), %rcx
	cmpl	$0, 16(%rcx)
	jge	.LBB14_19
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	composition_table, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movq	-16(%rbp), %rax
	movl	32(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, 60(%rax)
	movq	-16(%rbp), %rax
	cmpl	$0, 32(%rax)
	jne	.LBB14_3
# BB#2:                                 # %if.then.5
	movl	$-1, -48(%rbp)
	jmp	.LBB14_15
.LBB14_3:                               # %if.else
	movl	$0, -44(%rbp)
.LBB14_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	movq	-56(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB14_12
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB14_4 Depth=1
	movq	-56(%rbp), %rax
	cmpl	$3, 20(%rax)
	jne	.LBB14_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB14_4 Depth=1
	movl	-44(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jmp	.LBB14_8
.LBB14_7:                               # %cond.false
                                        #   in Loop: Header=BB14_4 Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB14_8:                               # %cond.end
                                        #   in Loop: Header=BB14_4 Depth=1
	movl	-84(%rbp), %eax         # 4-byte Reload
	movslq	%eax, %rcx
	movq	-56(%rbp), %rdx
	movq	24(%rdx), %rdx
	shlq	$1, %rdx
	movq	composition_hash_table, %rdi
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	callq	XHASH_TABLE
	movq	72(%rax), %rdi
	callq	XVECTOR
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	8(%rax,%rcx,8), %rdi
	callq	XVECTOR
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	8(%rax,%rcx,8), %rax
	sarq	$2, %rax
	movl	%eax, %esi
	movl	%esi, -48(%rbp)
	cmpl	$9, %esi
	je	.LBB14_10
# BB#9:                                 # %if.then.16
	jmp	.LBB14_12
.LBB14_10:                              # %if.end
                                        #   in Loop: Header=BB14_4 Depth=1
	jmp	.LBB14_11
.LBB14_11:                              # %for.inc
                                        #   in Loop: Header=BB14_4 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB14_4
.LBB14_12:                              # %for.end
	cmpl	$9, -48(%rbp)
	jne	.LBB14_14
# BB#13:                                # %if.then.19
	movl	$32, -48(%rbp)
.LBB14_14:                              # %if.end.20
	jmp	.LBB14_15
.LBB14_15:                              # %if.end.21
	movq	-56(%rbp), %rax
	movl	16(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 64(%rax)
	movq	-16(%rbp), %rax
	movslq	48(%rax), %rax
	addq	-24(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB14_16
	jmp	.LBB14_17
.LBB14_16:                              # %if.then.25
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	string_char_to_byte
	subq	-32(%rbp), %rax
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 52(%rax)
	jmp	.LBB14_18
.LBB14_17:                              # %if.else.28
	movq	current_buffer, %rdi
	movq	-24(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	subq	-32(%rbp), %rax
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 52(%rax)
.LBB14_18:                              # %if.end.33
	jmp	.LBB14_70
.LBB14_19:                              # %if.else.34
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	composition_gstring_from_id
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 32(%rax)
	jne	.LBB14_21
# BB#20:                                # %if.then.40
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-64(%rbp), %rdi
	callq	AREF
	movq	%rax, %rdi
	callq	ASIZE
	subq	$1, %rax
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 48(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 64(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 60(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 56(%rax)
	movl	$-1, -4(%rbp)
	jmp	.LBB14_71
.LBB14_21:                              # %if.end.49
	movq	-16(%rbp), %rax
	testb	$1, 36(%rax)
	jne	.LBB14_29
# BB#22:                                # %if.then.50
	movq	-64(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	56(%rax), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rsi
	callq	AREF
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	AREF
	sarq	$2, %rax
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rax
	movl	56(%rax), %ecx
	addl	$1, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 60(%rax)
.LBB14_23:                              # %for.cond.60
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movl	60(%rax), %ecx
	movq	-16(%rbp), %rax
	cmpl	32(%rax), %ecx
	jge	.LBB14_28
# BB#24:                                # %for.body.65
                                        #   in Loop: Header=BB14_23 Depth=1
	movq	-64(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	60(%rax), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rsi
	callq	AREF
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	AREF
	sarq	$2, %rax
	cmpq	-80(%rbp), %rax
	je	.LBB14_26
# BB#25:                                # %if.then.74
	jmp	.LBB14_28
.LBB14_26:                              # %if.end.75
                                        #   in Loop: Header=BB14_23 Depth=1
	jmp	.LBB14_27
.LBB14_27:                              # %for.inc.76
                                        #   in Loop: Header=BB14_23 Depth=1
	movq	-16(%rbp), %rax
	movl	60(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 60(%rax)
	jmp	.LBB14_23
.LBB14_28:                              # %for.end.79
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 40(%rcx)
	jmp	.LBB14_36
.LBB14_29:                              # %if.else.81
	movq	-64(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	60(%rax), %ecx
	subl	$1, %ecx
	addl	$2, %ecx
	movslq	%ecx, %rsi
	callq	AREF
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	AREF
	movl	$1, %ecx
	movl	%ecx, %esi
	sarq	$2, %rax
	movq	%rax, -80(%rbp)
	movq	-24(%rbp), %rax
	movq	-72(%rbp), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	AREF
	sarq	$2, %rax
	subq	-80(%rbp), %rax
	movq	-112(%rbp), %rsi        # 8-byte Reload
	subq	%rax, %rsi
	movq	-16(%rbp), %rax
	movq	%rsi, 40(%rax)
	movq	-16(%rbp), %rax
	movl	60(%rax), %ecx
	subl	$1, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 56(%rax)
.LBB14_30:                              # %for.cond.97
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpl	$0, 56(%rax)
	jle	.LBB14_35
# BB#31:                                # %for.body.101
                                        #   in Loop: Header=BB14_30 Depth=1
	movq	-64(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	56(%rax), %ecx
	subl	$1, %ecx
	addl	$2, %ecx
	movslq	%ecx, %rsi
	callq	AREF
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	AREF
	sarq	$2, %rax
	cmpq	-80(%rbp), %rax
	je	.LBB14_33
# BB#32:                                # %if.then.111
	jmp	.LBB14_35
.LBB14_33:                              # %if.end.112
                                        #   in Loop: Header=BB14_30 Depth=1
	jmp	.LBB14_34
.LBB14_34:                              # %for.inc.113
                                        #   in Loop: Header=BB14_30 Depth=1
	movq	-16(%rbp), %rax
	movl	56(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 56(%rax)
	jmp	.LBB14_30
.LBB14_35:                              # %for.end.115
	jmp	.LBB14_36
.LBB14_36:                              # %if.end.116
	movq	-64(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	56(%rax), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rsi
	callq	AREF
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	AREF
	sarq	$2, %rax
	addq	$1, %rax
	subq	-80(%rbp), %rax
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 48(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 52(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 64(%rax)
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, -44(%rbp)
.LBB14_37:                              # %for.cond.131
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -44(%rbp)
	jl	.LBB14_69
# BB#38:                                # %for.body.134
                                        #   in Loop: Header=BB14_37 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-64(%rbp), %rdi
	callq	AREF
	movq	-80(%rbp), %rsi
	movslq	-44(%rbp), %rdi
	addq	%rdi, %rsi
	addq	$1, %rsi
	movq	%rax, %rdi
	callq	AREF
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -48(%rbp)
	cmpl	$127, -48(%rbp)
	jg	.LBB14_40
# BB#39:                                # %cond.true.144
                                        #   in Loop: Header=BB14_37 Depth=1
	movl	$1, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB14_50
.LBB14_40:                              # %cond.false.145
                                        #   in Loop: Header=BB14_37 Depth=1
	cmpl	$2047, -48(%rbp)        # imm = 0x7FF
	jg	.LBB14_42
# BB#41:                                # %cond.true.148
                                        #   in Loop: Header=BB14_37 Depth=1
	movl	$2, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB14_49
.LBB14_42:                              # %cond.false.149
                                        #   in Loop: Header=BB14_37 Depth=1
	cmpl	$65535, -48(%rbp)       # imm = 0xFFFF
	jg	.LBB14_44
# BB#43:                                # %cond.true.152
                                        #   in Loop: Header=BB14_37 Depth=1
	movl	$3, %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jmp	.LBB14_48
.LBB14_44:                              # %cond.false.153
                                        #   in Loop: Header=BB14_37 Depth=1
	cmpl	$2097151, -48(%rbp)     # imm = 0x1FFFFF
	jg	.LBB14_46
# BB#45:                                # %cond.true.156
                                        #   in Loop: Header=BB14_37 Depth=1
	movl	$4, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	jmp	.LBB14_47
.LBB14_46:                              # %cond.false.157
                                        #   in Loop: Header=BB14_37 Depth=1
	movl	$2, %eax
	movl	$5, %ecx
	cmpl	$4194175, -48(%rbp)     # imm = 0x3FFF7F
	cmovlel	%ecx, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
.LBB14_47:                              # %cond.end.161
                                        #   in Loop: Header=BB14_37 Depth=1
	movl	-128(%rbp), %eax        # 4-byte Reload
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB14_48:                              # %cond.end.163
                                        #   in Loop: Header=BB14_37 Depth=1
	movl	-124(%rbp), %eax        # 4-byte Reload
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB14_49:                              # %cond.end.165
                                        #   in Loop: Header=BB14_37 Depth=1
	movl	-120(%rbp), %eax        # 4-byte Reload
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB14_50:                              # %cond.end.167
                                        #   in Loop: Header=BB14_37 Depth=1
	movl	-116(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movq	-16(%rbp), %rdx
	addl	52(%rdx), %eax
	movl	%eax, 52(%rdx)
	testb	$1, %cl
	jne	.LBB14_51
	jmp	.LBB14_52
.LBB14_51:                              # %cond.true.171
                                        #   in Loop: Header=BB14_37 Depth=1
	movl	-48(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB14_53
	jmp	.LBB14_66
.LBB14_52:                              # %cond.false.175
                                        #   in Loop: Header=BB14_37 Depth=1
	movslq	-48(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB14_66
.LBB14_53:                              # %cond.true.180
                                        #   in Loop: Header=BB14_37 Depth=1
	cmpl	$32, -48(%rbp)
	jge	.LBB14_61
# BB#54:                                # %cond.true.183
                                        #   in Loop: Header=BB14_37 Depth=1
	cmpl	$9, -48(%rbp)
	jne	.LBB14_56
# BB#55:                                # %cond.true.186
                                        #   in Loop: Header=BB14_37 Depth=1
	movq	current_buffer, %rax
	movq	152(%rax), %rax
	sarq	$2, %rax
	movq	%rax, %rdi
	callq	sanitize_tab_width
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jmp	.LBB14_60
.LBB14_56:                              # %cond.false.189
                                        #   in Loop: Header=BB14_37 Depth=1
	cmpl	$10, -48(%rbp)
	jne	.LBB14_58
# BB#57:                                # %cond.true.192
                                        #   in Loop: Header=BB14_37 Depth=1
	xorl	%eax, %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	jmp	.LBB14_59
.LBB14_58:                              # %cond.false.193
                                        #   in Loop: Header=BB14_37 Depth=1
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	232(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$2, %edi
	movl	$4, %ecx
	movq	-144(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	cmovel	%ecx, %edi
	movl	%edi, -136(%rbp)        # 4-byte Spill
.LBB14_59:                              # %cond.end.198
                                        #   in Loop: Header=BB14_37 Depth=1
	movl	-136(%rbp), %eax        # 4-byte Reload
	movl	%eax, -132(%rbp)        # 4-byte Spill
.LBB14_60:                              # %cond.end.200
                                        #   in Loop: Header=BB14_37 Depth=1
	movl	-132(%rbp), %eax        # 4-byte Reload
	movl	%eax, -148(%rbp)        # 4-byte Spill
	jmp	.LBB14_65
.LBB14_61:                              # %cond.false.202
                                        #   in Loop: Header=BB14_37 Depth=1
	cmpl	$127, -48(%rbp)
	jge	.LBB14_63
# BB#62:                                # %cond.true.205
                                        #   in Loop: Header=BB14_37 Depth=1
	movl	$1, %eax
	movl	%eax, -152(%rbp)        # 4-byte Spill
	jmp	.LBB14_64
.LBB14_63:                              # %cond.false.206
                                        #   in Loop: Header=BB14_37 Depth=1
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	232(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$2, %edi
	movl	$4, %ecx
	movq	-160(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	cmovel	%ecx, %edi
	movl	%edi, -152(%rbp)        # 4-byte Spill
.LBB14_64:                              # %cond.end.212
                                        #   in Loop: Header=BB14_37 Depth=1
	movl	-152(%rbp), %eax        # 4-byte Reload
	movl	%eax, -148(%rbp)        # 4-byte Spill
.LBB14_65:                              # %cond.end.214
                                        #   in Loop: Header=BB14_37 Depth=1
	movl	-148(%rbp), %eax        # 4-byte Reload
	movl	%eax, -164(%rbp)        # 4-byte Spill
	jmp	.LBB14_67
.LBB14_66:                              # %cond.false.216
                                        #   in Loop: Header=BB14_37 Depth=1
	movq	globals+224, %rdi
	movl	-48(%rbp), %esi
	callq	CHAR_TABLE_REF
	sarq	$2, %rax
	movq	%rax, %rdi
	callq	sanitize_char_width
	movl	%eax, -164(%rbp)        # 4-byte Spill
.LBB14_67:                              # %cond.end.220
                                        #   in Loop: Header=BB14_37 Depth=1
	movl	-164(%rbp), %eax        # 4-byte Reload
	movq	-16(%rbp), %rcx
	addl	64(%rcx), %eax
	movl	%eax, 64(%rcx)
# BB#68:                                # %for.inc.224
                                        #   in Loop: Header=BB14_37 Depth=1
	movl	-44(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB14_37
.LBB14_69:                              # %for.end.226
	jmp	.LBB14_70
.LBB14_70:                              # %if.end.227
	movl	-48(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB14_71:                              # %return
	movl	-4(%rbp), %eax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	composition_update_it, .Lfunc_end14-composition_update_it
	.cfi_endproc

	.globl	composition_adjust_point
	.align	16, 0x90
	.type	composition_adjust_point,@function
composition_adjust_point:               # @composition_adjust_point
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
	subq	$176, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	current_buffer, %rdi
	cmpq	752(%rdi), %rsi
	je	.LBB15_2
# BB#1:                                 # %lor.lhs.false
	movq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	jne	.LBB15_3
.LBB15_2:                               # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB15_33
.LBB15_3:                               # %if.end
	movl	$290, %edi              # imm = 0x122
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	leaq	-56(%rbp), %rdx
	leaq	-40(%rbp), %rcx
	leaq	-48(%rbp), %r8
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %r9
	callq	get_property_and_range
	testb	$1, %al
	jne	.LBB15_4
	jmp	.LBB15_13
.LBB15_4:                               # %land.lhs.true
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdx
	callq	composition_valid_p
	testb	$1, %al
	jne	.LBB15_5
	jmp	.LBB15_13
.LBB15_5:                               # %if.then.5
	movq	-40(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jge	.LBB15_12
# BB#6:                                 # %land.lhs.true.7
	movq	-16(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jle	.LBB15_8
# BB#7:                                 # %lor.lhs.false.9
	movq	-16(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jl	.LBB15_12
.LBB15_8:                               # %if.then.11
	movq	-24(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jge	.LBB15_10
# BB#9:                                 # %cond.true
	movq	-40(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB15_11
.LBB15_10:                              # %cond.false
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB15_11:                              # %cond.end
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -8(%rbp)
	jmp	.LBB15_33
.LBB15_12:                              # %if.end.13
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB15_33
.LBB15_13:                              # %if.end.14
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB15_15
# BB#14:                                # %lor.lhs.false.17
	xorl	%edi, %edi
	movq	globals+48, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB15_16
.LBB15_15:                              # %if.then.20
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB15_33
.LBB15_16:                              # %if.end.21
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	$-1, %rsi
	leaq	-40(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	leaq	-56(%rbp), %r8
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %r9
	callq	find_automatic_composition
	testb	$1, %al
	jne	.LBB15_17
	jmp	.LBB15_18
.LBB15_17:                              # %lor.lhs.false.24
	movq	-40(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB15_19
.LBB15_18:                              # %if.then.26
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB15_33
.LBB15_19:                              # %if.end.27
	movq	$0, -32(%rbp)
.LBB15_20:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	-56(%rbp), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	ASIZE
	subq	$2, %rax
	movq	-120(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jge	.LBB15_32
# BB#21:                                # %for.body
                                        #   in Loop: Header=BB15_20 Depth=1
	movq	-56(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$2, %rax
	movq	%rax, %rsi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB15_23
# BB#22:                                # %if.then.33
	jmp	.LBB15_32
.LBB15_23:                              # %if.end.34
                                        #   in Loop: Header=BB15_20 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rcx
	movq	-64(%rbp), %rdi
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	callq	AREF
	sarq	$2, %rax
	movq	-136(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	cmpq	-24(%rbp), %rcx
	jne	.LBB15_25
# BB#24:                                # %if.then.38
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB15_33
.LBB15_25:                              # %if.end.39
                                        #   in Loop: Header=BB15_20 Depth=1
	movl	$1, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rcx
	movq	-64(%rbp), %rdi
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	callq	AREF
	sarq	$2, %rax
	movq	-144(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	cmpq	-24(%rbp), %rcx
	jl	.LBB15_30
# BB#26:                                # %if.then.44
	movq	-24(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jge	.LBB15_28
# BB#27:                                # %cond.true.46
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rcx
	movq	-64(%rbp), %rdi
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	callq	AREF
	sarq	$2, %rax
	movq	-152(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	jmp	.LBB15_29
.LBB15_28:                              # %cond.false.50
	movl	$1, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rcx
	movq	-64(%rbp), %rdi
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	callq	AREF
	sarq	$2, %rax
	movq	-168(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
.LBB15_29:                              # %cond.end.55
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	%rax, -8(%rbp)
	jmp	.LBB15_33
.LBB15_30:                              # %if.end.57
                                        #   in Loop: Header=BB15_20 Depth=1
	jmp	.LBB15_31
.LBB15_31:                              # %for.inc
                                        #   in Loop: Header=BB15_20 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB15_20
.LBB15_32:                              # %for.end
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB15_33:                              # %return
	movq	-8(%rbp), %rax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	composition_adjust_point, .Lfunc_end15-composition_adjust_point
	.cfi_endproc

	.align	16, 0x90
	.type	find_automatic_composition,@function
find_automatic_composition:             # @find_automatic_composition
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
	subq	$432, %rsp              # imm = 0x1B0
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movb	$0, -161(%rbp)
	callq	Fcurrent_buffer
	xorl	%edi, %edi
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget_buffer_window
	xorl	%edi, %edi
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-232(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB16_2
# BB#1:                                 # %if.then
	movb	$0, -1(%rbp)
	jmp	.LBB16_179
.LBB16_2:                               # %if.end
	movq	-152(%rbp), %rdi
	callq	XWINDOW
	xorl	%edi, %edi
	movq	%rax, -160(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-240(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB16_7
# BB#3:                                 # %if.then.8
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	current_buffer, %rdi
	movq	-112(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	current_buffer, %rsi
	movq	720(%rsi), %rsi
	cmpq	24(%rsi), %rax
	jl	.LBB16_5
# BB#4:                                 # %cond.true
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	jmp	.LBB16_6
.LBB16_5:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -248(%rbp)        # 8-byte Spill
	jmp	.LBB16_6
.LBB16_6:                               # %cond.end
	movq	-248(%rbp), %rax        # 8-byte Reload
	addq	-104(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -96(%rbp)
	jmp	.LBB16_8
.LBB16_7:                               # %if.else
	movq	$0, -64(%rbp)
	movq	-56(%rbp), %rdi
	callq	SCHARS
	movq	%rax, -72(%rbp)
	movq	$-1, -80(%rbp)
	movq	-56(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	string_char_to_byte
	movq	%rax, -104(%rbp)
	movq	-56(%rbp), %rdi
	callq	SDATA
	addq	-104(%rbp), %rax
	movq	%rax, -96(%rbp)
.LBB16_8:                               # %if.end.26
	cmpq	$0, -24(%rbp)
	jge	.LBB16_10
# BB#9:                                 # %if.then.28
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB16_10:                              # %if.end.29
	movq	-24(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jg	.LBB16_15
# BB#11:                                # %if.then.31
	movq	-72(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	$1, %rcx
	addq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB16_13
# BB#12:                                # %cond.true.35
	movq	-72(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	jmp	.LBB16_14
.LBB16_13:                              # %cond.false.36
	movq	-16(%rbp), %rax
	addq	$1, %rax
	addq	$3, %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
.LBB16_14:                              # %cond.end.39
	movq	-256(%rbp), %rax        # 8-byte Reload
	movq	%rax, -88(%rbp)
	jmp	.LBB16_19
.LBB16_15:                              # %if.else.41
	movq	-72(%rbp), %rax
	movq	-24(%rbp), %rcx
	addq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB16_17
# BB#16:                                # %cond.true.44
	movq	-72(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	jmp	.LBB16_18
.LBB16_17:                              # %cond.false.45
	movq	-24(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
.LBB16_18:                              # %cond.end.47
	movq	-264(%rbp), %rax        # 8-byte Reload
	movq	%rax, -88(%rbp)
.LBB16_19:                              # %if.end.49
	jmp	.LBB16_20
.LBB16_20:                              # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_32 Depth 2
                                        #       Child Loop BB16_38 Depth 3
                                        #     Child Loop BB16_56 Depth 2
                                        #       Child Loop BB16_61 Depth 3
                                        #     Child Loop BB16_78 Depth 2
                                        #       Child Loop BB16_89 Depth 3
                                        #         Child Loop BB16_99 Depth 4
                                        #           Child Loop BB16_104 Depth 5
                                        #     Child Loop BB16_175 Depth 2
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB16_22
# BB#21:                                # %cond.true.51
                                        #   in Loop: Header=BB16_20 Depth=1
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -268(%rbp)        # 4-byte Spill
	jmp	.LBB16_29
.LBB16_22:                              # %cond.false.55
                                        #   in Loop: Header=BB16_20 Depth=1
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB16_24
# BB#23:                                # %cond.true.61
                                        #   in Loop: Header=BB16_20 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
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
	movl	%esi, -272(%rbp)        # 4-byte Spill
	jmp	.LBB16_28
.LBB16_24:                              # %cond.false.77
                                        #   in Loop: Header=BB16_20 Depth=1
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB16_26
# BB#25:                                # %cond.true.83
                                        #   in Loop: Header=BB16_20 Depth=1
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
	movl	%ecx, -276(%rbp)        # 4-byte Spill
	jmp	.LBB16_27
.LBB16_26:                              # %cond.false.100
                                        #   in Loop: Header=BB16_20 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-96(%rbp), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	string_char
	movl	%eax, -276(%rbp)        # 4-byte Spill
.LBB16_27:                              # %cond.end.103
                                        #   in Loop: Header=BB16_20 Depth=1
	movl	-276(%rbp), %eax        # 4-byte Reload
	movl	%eax, -272(%rbp)        # 4-byte Spill
.LBB16_28:                              # %cond.end.105
                                        #   in Loop: Header=BB16_20 Depth=1
	movl	-272(%rbp), %eax        # 4-byte Reload
	movl	%eax, -268(%rbp)        # 4-byte Spill
.LBB16_29:                              # %cond.end.107
                                        #   in Loop: Header=BB16_20 Depth=1
	movl	-268(%rbp), %eax        # 4-byte Reload
	movl	%eax, -140(%rbp)
	movl	-140(%rbp), %edi
	callq	char_composable_p
	testb	$1, %al
	jne	.LBB16_55
# BB#30:                                # %if.then.110
                                        #   in Loop: Header=BB16_20 Depth=1
	movq	-24(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jg	.LBB16_53
# BB#31:                                # %if.then.113
                                        #   in Loop: Header=BB16_20 Depth=1
	jmp	.LBB16_32
.LBB16_32:                              # %do.body
                                        #   Parent Loop BB16_20 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB16_38 Depth 3
	movq	-112(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jg	.LBB16_34
# BB#33:                                # %if.then.117
	movb	$0, -1(%rbp)
	jmp	.LBB16_179
.LBB16_34:                              # %if.end.118
                                        #   in Loop: Header=BB16_32 Depth=2
	jmp	.LBB16_35
.LBB16_35:                              # %do.body.119
                                        #   in Loop: Header=BB16_32 Depth=2
	movq	-112(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB16_37
# BB#36:                                # %if.then.123
                                        #   in Loop: Header=BB16_32 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	24(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -96(%rbp)
.LBB16_37:                              # %if.end.131
                                        #   in Loop: Header=BB16_32 Depth=2
	jmp	.LBB16_38
.LBB16_38:                              # %do.body.132
                                        #   Parent Loop BB16_20 Depth=1
                                        #     Parent Loop BB16_32 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-104(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -104(%rbp)
	movq	-96(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -96(%rbp)
# BB#39:                                # %do.cond
                                        #   in Loop: Header=BB16_38 Depth=3
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	setne	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB16_38
# BB#40:                                # %do.end
                                        #   in Loop: Header=BB16_32 Depth=2
	movq	-112(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -112(%rbp)
# BB#41:                                # %do.end.143
                                        #   in Loop: Header=BB16_32 Depth=2
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB16_43
# BB#42:                                # %cond.true.149
                                        #   in Loop: Header=BB16_32 Depth=2
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -280(%rbp)        # 4-byte Spill
	jmp	.LBB16_50
.LBB16_43:                              # %cond.false.153
                                        #   in Loop: Header=BB16_32 Depth=2
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB16_45
# BB#44:                                # %cond.true.159
                                        #   in Loop: Header=BB16_32 Depth=2
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
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
	movl	%esi, -284(%rbp)        # 4-byte Spill
	jmp	.LBB16_49
.LBB16_45:                              # %cond.false.177
                                        #   in Loop: Header=BB16_32 Depth=2
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB16_47
# BB#46:                                # %cond.true.183
                                        #   in Loop: Header=BB16_32 Depth=2
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
	movl	%ecx, -288(%rbp)        # 4-byte Spill
	jmp	.LBB16_48
.LBB16_47:                              # %cond.false.200
                                        #   in Loop: Header=BB16_32 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-96(%rbp), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	string_char
	movl	%eax, -288(%rbp)        # 4-byte Spill
.LBB16_48:                              # %cond.end.203
                                        #   in Loop: Header=BB16_32 Depth=2
	movl	-288(%rbp), %eax        # 4-byte Reload
	movl	%eax, -284(%rbp)        # 4-byte Spill
.LBB16_49:                              # %cond.end.205
                                        #   in Loop: Header=BB16_32 Depth=2
	movl	-284(%rbp), %eax        # 4-byte Reload
	movl	%eax, -280(%rbp)        # 4-byte Spill
.LBB16_50:                              # %cond.end.207
                                        #   in Loop: Header=BB16_32 Depth=2
	movl	-280(%rbp), %eax        # 4-byte Reload
	movl	%eax, -140(%rbp)
# BB#51:                                # %do.cond.209
                                        #   in Loop: Header=BB16_32 Depth=2
	movl	-140(%rbp), %edi
	callq	char_composable_p
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB16_32
# BB#52:                                # %do.end.212
                                        #   in Loop: Header=BB16_20 Depth=1
	movq	-112(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB16_54
.LBB16_53:                              # %if.else.215
                                        #   in Loop: Header=BB16_20 Depth=1
	jmp	.LBB16_77
.LBB16_54:                              # %if.end.216
                                        #   in Loop: Header=BB16_20 Depth=1
	jmp	.LBB16_55
.LBB16_55:                              # %if.end.217
                                        #   in Loop: Header=BB16_20 Depth=1
	jmp	.LBB16_56
.LBB16_56:                              # %while.cond.218
                                        #   Parent Loop BB16_20 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB16_61 Depth 3
	movq	-64(%rbp), %rax
	cmpq	-112(%rbp), %rax
	jge	.LBB16_76
# BB#57:                                # %while.body.222
                                        #   in Loop: Header=BB16_56 Depth=2
	movq	-112(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -120(%rbp)
# BB#58:                                # %do.body.223
                                        #   in Loop: Header=BB16_56 Depth=2
	movq	-112(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB16_60
# BB#59:                                # %if.then.227
                                        #   in Loop: Header=BB16_56 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	24(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -96(%rbp)
.LBB16_60:                              # %if.end.235
                                        #   in Loop: Header=BB16_56 Depth=2
	jmp	.LBB16_61
.LBB16_61:                              # %do.body.236
                                        #   Parent Loop BB16_20 Depth=1
                                        #     Parent Loop BB16_56 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-104(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -104(%rbp)
	movq	-96(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -96(%rbp)
# BB#62:                                # %do.cond.241
                                        #   in Loop: Header=BB16_61 Depth=3
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	setne	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB16_61
# BB#63:                                # %do.end.248
                                        #   in Loop: Header=BB16_56 Depth=2
	movq	-112(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -112(%rbp)
# BB#64:                                # %do.end.252
                                        #   in Loop: Header=BB16_56 Depth=2
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB16_66
# BB#65:                                # %cond.true.258
                                        #   in Loop: Header=BB16_56 Depth=2
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -292(%rbp)        # 4-byte Spill
	jmp	.LBB16_73
.LBB16_66:                              # %cond.false.262
                                        #   in Loop: Header=BB16_56 Depth=2
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB16_68
# BB#67:                                # %cond.true.268
                                        #   in Loop: Header=BB16_56 Depth=2
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
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
	movl	%esi, -296(%rbp)        # 4-byte Spill
	jmp	.LBB16_72
.LBB16_68:                              # %cond.false.286
                                        #   in Loop: Header=BB16_56 Depth=2
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB16_70
# BB#69:                                # %cond.true.292
                                        #   in Loop: Header=BB16_56 Depth=2
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
	movl	%ecx, -300(%rbp)        # 4-byte Spill
	jmp	.LBB16_71
.LBB16_70:                              # %cond.false.309
                                        #   in Loop: Header=BB16_56 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-96(%rbp), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	string_char
	movl	%eax, -300(%rbp)        # 4-byte Spill
.LBB16_71:                              # %cond.end.312
                                        #   in Loop: Header=BB16_56 Depth=2
	movl	-300(%rbp), %eax        # 4-byte Reload
	movl	%eax, -296(%rbp)        # 4-byte Spill
.LBB16_72:                              # %cond.end.314
                                        #   in Loop: Header=BB16_56 Depth=2
	movl	-296(%rbp), %eax        # 4-byte Reload
	movl	%eax, -292(%rbp)        # 4-byte Spill
.LBB16_73:                              # %cond.end.316
                                        #   in Loop: Header=BB16_56 Depth=2
	movl	-292(%rbp), %eax        # 4-byte Reload
	movl	%eax, -140(%rbp)
	movl	-140(%rbp), %edi
	callq	char_composable_p
	testb	$1, %al
	jne	.LBB16_75
# BB#74:                                # %if.then.319
                                        #   in Loop: Header=BB16_20 Depth=1
	movq	-136(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -96(%rbp)
	jmp	.LBB16_76
.LBB16_75:                              # %if.end.320
                                        #   in Loop: Header=BB16_56 Depth=2
	jmp	.LBB16_56
.LBB16_76:                              # %while.end
                                        #   in Loop: Header=BB16_20 Depth=1
	jmp	.LBB16_77
.LBB16_77:                              # %search_forward
                                        #   in Loop: Header=BB16_20 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-112(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -120(%rbp)
.LBB16_78:                              # %while.cond.322
                                        #   Parent Loop BB16_20 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB16_89 Depth 3
                                        #         Child Loop BB16_99 Depth 4
                                        #           Child Loop BB16_104 Depth 5
	movq	-112(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jge	.LBB16_157
# BB#79:                                # %while.body.326
                                        #   in Loop: Header=BB16_78 Depth=2
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB16_81
# BB#80:                                # %cond.true.332
                                        #   in Loop: Header=BB16_78 Depth=2
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -304(%rbp)        # 4-byte Spill
	jmp	.LBB16_88
.LBB16_81:                              # %cond.false.336
                                        #   in Loop: Header=BB16_78 Depth=2
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB16_83
# BB#82:                                # %cond.true.342
                                        #   in Loop: Header=BB16_78 Depth=2
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
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
	movl	%esi, -308(%rbp)        # 4-byte Spill
	jmp	.LBB16_87
.LBB16_83:                              # %cond.false.360
                                        #   in Loop: Header=BB16_78 Depth=2
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB16_85
# BB#84:                                # %cond.true.366
                                        #   in Loop: Header=BB16_78 Depth=2
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
	movl	%ecx, -312(%rbp)        # 4-byte Spill
	jmp	.LBB16_86
.LBB16_85:                              # %cond.false.383
                                        #   in Loop: Header=BB16_78 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-96(%rbp), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	string_char
	movl	%eax, -312(%rbp)        # 4-byte Spill
.LBB16_86:                              # %cond.end.386
                                        #   in Loop: Header=BB16_78 Depth=2
	movl	-312(%rbp), %eax        # 4-byte Reload
	movl	%eax, -308(%rbp)        # 4-byte Spill
.LBB16_87:                              # %cond.end.388
                                        #   in Loop: Header=BB16_78 Depth=2
	movl	-308(%rbp), %eax        # 4-byte Reload
	movl	%eax, -304(%rbp)        # 4-byte Spill
.LBB16_88:                              # %cond.end.390
                                        #   in Loop: Header=BB16_78 Depth=2
	movl	-304(%rbp), %eax        # 4-byte Reload
	movl	%eax, -140(%rbp)
	movq	globals+368, %rdi
	movl	-140(%rbp), %esi
	callq	CHAR_TABLE_REF
	movq	%rax, -176(%rbp)
.LBB16_89:                              # %for.cond
                                        #   Parent Loop BB16_20 Depth=1
                                        #     Parent Loop BB16_78 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB16_99 Depth 4
                                        #           Child Loop BB16_104 Depth 5
	movq	-176(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB16_131
# BB#90:                                # %for.body
                                        #   in Loop: Header=BB16_89 Depth=3
	movq	-176(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB16_91
	jmp	.LBB16_129
.LBB16_91:                              # %land.lhs.true
                                        #   in Loop: Header=BB16_89 Depth=3
	movq	-184(%rbp), %rdi
	callq	ASIZE
	cmpq	$3, %rax
	jne	.LBB16_129
# BB#92:                                # %land.lhs.true.402
                                        #   in Loop: Header=BB16_89 Depth=3
	movl	$1, %eax
	movl	%eax, %esi
	movq	-184(%rbp), %rdi
	callq	AREF
	movq	%rax, %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB16_93
	jmp	.LBB16_129
.LBB16_93:                              # %if.then.406
                                        #   in Loop: Header=BB16_89 Depth=3
	movl	$1, %eax
	movl	%eax, %esi
	movq	-112(%rbp), %rcx
	movq	-184(%rbp), %rdi
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	callq	AREF
	sarq	$2, %rax
	movq	-320(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -192(%rbp)
	movq	-192(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jl	.LBB16_97
# BB#94:                                # %lor.lhs.false
                                        #   in Loop: Header=BB16_89 Depth=3
	movq	-24(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jg	.LBB16_96
# BB#95:                                # %cond.true.414
                                        #   in Loop: Header=BB16_89 Depth=3
	movq	-16(%rbp), %rax
	cmpq	-192(%rbp), %rax
	jl	.LBB16_97
	jmp	.LBB16_98
.LBB16_96:                              # %cond.false.417
                                        #   in Loop: Header=BB16_89 Depth=3
	movq	-24(%rbp), %rax
	cmpq	-192(%rbp), %rax
	jg	.LBB16_98
.LBB16_97:                              # %if.then.420
                                        #   in Loop: Header=BB16_89 Depth=3
	jmp	.LBB16_130
.LBB16_98:                              # %if.end.421
                                        #   in Loop: Header=BB16_89 Depth=3
	movq	-112(%rbp), %rax
	movq	%rax, -216(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -208(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -200(%rbp)
.LBB16_99:                              # %for.cond.422
                                        #   Parent Loop BB16_20 Depth=1
                                        #     Parent Loop BB16_78 Depth=2
                                        #       Parent Loop BB16_89 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB16_104 Depth 5
	movq	-192(%rbp), %rax
	cmpq	-216(%rbp), %rax
	jge	.LBB16_108
# BB#100:                               # %for.body.426
                                        #   in Loop: Header=BB16_99 Depth=4
	jmp	.LBB16_101
.LBB16_101:                             # %do.body.427
                                        #   in Loop: Header=BB16_99 Depth=4
	movq	-216(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB16_103
# BB#102:                               # %if.then.431
                                        #   in Loop: Header=BB16_99 Depth=4
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	24(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -200(%rbp)
.LBB16_103:                             # %if.end.439
                                        #   in Loop: Header=BB16_99 Depth=4
	jmp	.LBB16_104
.LBB16_104:                             # %do.body.440
                                        #   Parent Loop BB16_20 Depth=1
                                        #     Parent Loop BB16_78 Depth=2
                                        #       Parent Loop BB16_89 Depth=3
                                        #         Parent Loop BB16_99 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movq	-208(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -208(%rbp)
	movq	-200(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -200(%rbp)
# BB#105:                               # %do.cond.445
                                        #   in Loop: Header=BB16_104 Depth=5
	movq	-200(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	setne	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB16_104
# BB#106:                               # %do.end.452
                                        #   in Loop: Header=BB16_99 Depth=4
	movq	-216(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -216(%rbp)
# BB#107:                               # %do.end.456
                                        #   in Loop: Header=BB16_99 Depth=4
	jmp	.LBB16_99
.LBB16_108:                             # %for.end
                                        #   in Loop: Header=BB16_89 Depth=3
	xorl	%eax, %eax
	movl	%eax, %r9d
	movq	-184(%rbp), %rdi
	movq	-216(%rbp), %rsi
	movq	-208(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-160(%rbp), %r8
	movq	-56(%rbp), %r10
	movq	%r10, (%rsp)
	callq	autocmp_chars
	xorl	%edi, %edi
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	movb	$1, -161(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-328(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB16_116
# BB#109:                               # %if.then.463
                                        #   in Loop: Header=BB16_89 Depth=3
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-336(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB16_114
# BB#110:                               # %if.then.467
                                        #   in Loop: Header=BB16_89 Depth=3
	movq	-104(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB16_112
# BB#111:                               # %cond.true.473
                                        #   in Loop: Header=BB16_89 Depth=3
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	jmp	.LBB16_113
.LBB16_112:                             # %cond.false.476
                                        #   in Loop: Header=BB16_89 Depth=3
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -344(%rbp)        # 8-byte Spill
	jmp	.LBB16_113
.LBB16_113:                             # %cond.end.477
                                        #   in Loop: Header=BB16_89 Depth=3
	movq	-344(%rbp), %rax        # 8-byte Reload
	addq	-104(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -96(%rbp)
	jmp	.LBB16_115
.LBB16_114:                             # %if.else.486
                                        #   in Loop: Header=BB16_89 Depth=3
	movq	-56(%rbp), %rdi
	callq	SDATA
	addq	-104(%rbp), %rax
	movq	%rax, -96(%rbp)
.LBB16_115:                             # %if.end.491
                                        #   in Loop: Header=BB16_89 Depth=3
	jmp	.LBB16_128
.LBB16_116:                             # %if.else.492
                                        #   in Loop: Header=BB16_78 Depth=2
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-216(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	%rcx, (%rdx)
	movq	-216(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	(%rdx), %rdi
	movq	%rcx, -352(%rbp)        # 8-byte Spill
	callq	AREF
	movq	%rax, %rdi
	callq	ASIZE
	subq	$1, %rax
	movq	-352(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jge	.LBB16_118
# BB#117:                               # %cond.true.501
                                        #   in Loop: Header=BB16_78 Depth=2
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	jl	.LBB16_120
	jmp	.LBB16_121
.LBB16_118:                             # %cond.false.504
                                        #   in Loop: Header=BB16_78 Depth=2
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-16(%rbp), %rax
	jg	.LBB16_121
# BB#119:                               # %land.lhs.true.507
                                        #   in Loop: Header=BB16_78 Depth=2
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	jge	.LBB16_121
.LBB16_120:                             # %if.then.510
	movb	$1, -1(%rbp)
	jmp	.LBB16_179
.LBB16_121:                             # %if.end.511
                                        #   in Loop: Header=BB16_78 Depth=2
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-360(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB16_126
# BB#122:                               # %if.then.516
                                        #   in Loop: Header=BB16_78 Depth=2
	movq	current_buffer, %rdi
	movq	-112(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	current_buffer, %rsi
	movq	720(%rsi), %rsi
	cmpq	24(%rsi), %rax
	jl	.LBB16_124
# BB#123:                               # %cond.true.525
                                        #   in Loop: Header=BB16_78 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	jmp	.LBB16_125
.LBB16_124:                             # %cond.false.528
                                        #   in Loop: Header=BB16_78 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	jmp	.LBB16_125
.LBB16_125:                             # %cond.end.529
                                        #   in Loop: Header=BB16_78 Depth=2
	movq	-368(%rbp), %rax        # 8-byte Reload
	addq	-104(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -96(%rbp)
	jmp	.LBB16_127
.LBB16_126:                             # %if.else.538
                                        #   in Loop: Header=BB16_78 Depth=2
	movq	-56(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	string_char_to_byte
	movq	%rax, -104(%rbp)
	movq	-56(%rbp), %rdi
	callq	SDATA
	addq	-104(%rbp), %rax
	movq	%rax, -96(%rbp)
.LBB16_127:                             # %if.end.546
                                        #   in Loop: Header=BB16_78 Depth=2
	jmp	.LBB16_131
.LBB16_128:                             # %if.end.547
                                        #   in Loop: Header=BB16_89 Depth=3
	jmp	.LBB16_129
.LBB16_129:                             # %if.end.548
                                        #   in Loop: Header=BB16_89 Depth=3
	jmp	.LBB16_130
.LBB16_130:                             # %for.inc
                                        #   in Loop: Header=BB16_89 Depth=3
	movq	-176(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -176(%rbp)
	jmp	.LBB16_89
.LBB16_131:                             # %for.end.550
                                        #   in Loop: Header=BB16_78 Depth=2
	movq	-176(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB16_156
# BB#132:                               # %if.then.555
                                        #   in Loop: Header=BB16_78 Depth=2
	jmp	.LBB16_133
.LBB16_133:                             # %do.body.556
                                        #   in Loop: Header=BB16_78 Depth=2
	movq	-112(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB16_135
# BB#134:                               # %if.then.561
                                        #   in Loop: Header=BB16_78 Depth=2
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
	movq	%rax, -96(%rbp)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB16_154
.LBB16_135:                             # %if.else.575
                                        #   in Loop: Header=BB16_78 Depth=2
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB16_137
# BB#136:                               # %cond.true.580
                                        #   in Loop: Header=BB16_78 Depth=2
	movl	$1, %eax
	movl	%eax, -372(%rbp)        # 4-byte Spill
	jmp	.LBB16_144
.LBB16_137:                             # %cond.false.581
                                        #   in Loop: Header=BB16_78 Depth=2
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB16_139
# BB#138:                               # %cond.true.586
                                        #   in Loop: Header=BB16_78 Depth=2
	movl	$2, %eax
	movl	%eax, -376(%rbp)        # 4-byte Spill
	jmp	.LBB16_143
.LBB16_139:                             # %cond.false.587
                                        #   in Loop: Header=BB16_78 Depth=2
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB16_141
# BB#140:                               # %cond.true.592
                                        #   in Loop: Header=BB16_78 Depth=2
	movl	$3, %eax
	movl	%eax, -380(%rbp)        # 4-byte Spill
	jmp	.LBB16_142
.LBB16_141:                             # %cond.false.593
                                        #   in Loop: Header=BB16_78 Depth=2
	movl	$5, %eax
	movl	$4, %ecx
	movq	-96(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$8, %esi
	cmpl	$0, %esi
	setne	%dil
	xorb	$-1, %dil
	testb	$1, %dil
	cmovnel	%ecx, %eax
	movl	%eax, -380(%rbp)        # 4-byte Spill
.LBB16_142:                             # %cond.end.600
                                        #   in Loop: Header=BB16_78 Depth=2
	movl	-380(%rbp), %eax        # 4-byte Reload
	movl	%eax, -376(%rbp)        # 4-byte Spill
.LBB16_143:                             # %cond.end.602
                                        #   in Loop: Header=BB16_78 Depth=2
	movl	-376(%rbp), %eax        # 4-byte Reload
	movl	%eax, -372(%rbp)        # 4-byte Spill
.LBB16_144:                             # %cond.end.604
                                        #   in Loop: Header=BB16_78 Depth=2
	movl	-372(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	addq	-104(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movq	-96(%rbp), %rcx
	movzbl	(%rcx), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	jne	.LBB16_146
# BB#145:                               # %cond.true.613
                                        #   in Loop: Header=BB16_78 Depth=2
	movl	$1, %eax
	movl	%eax, -384(%rbp)        # 4-byte Spill
	jmp	.LBB16_153
.LBB16_146:                             # %cond.false.614
                                        #   in Loop: Header=BB16_78 Depth=2
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB16_148
# BB#147:                               # %cond.true.619
                                        #   in Loop: Header=BB16_78 Depth=2
	movl	$2, %eax
	movl	%eax, -388(%rbp)        # 4-byte Spill
	jmp	.LBB16_152
.LBB16_148:                             # %cond.false.620
                                        #   in Loop: Header=BB16_78 Depth=2
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB16_150
# BB#149:                               # %cond.true.625
                                        #   in Loop: Header=BB16_78 Depth=2
	movl	$3, %eax
	movl	%eax, -392(%rbp)        # 4-byte Spill
	jmp	.LBB16_151
.LBB16_150:                             # %cond.false.626
                                        #   in Loop: Header=BB16_78 Depth=2
	movl	$5, %eax
	movl	$4, %ecx
	movq	-96(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$8, %esi
	cmpl	$0, %esi
	setne	%dil
	xorb	$-1, %dil
	testb	$1, %dil
	cmovnel	%ecx, %eax
	movl	%eax, -392(%rbp)        # 4-byte Spill
.LBB16_151:                             # %cond.end.633
                                        #   in Loop: Header=BB16_78 Depth=2
	movl	-392(%rbp), %eax        # 4-byte Reload
	movl	%eax, -388(%rbp)        # 4-byte Spill
.LBB16_152:                             # %cond.end.635
                                        #   in Loop: Header=BB16_78 Depth=2
	movl	-388(%rbp), %eax        # 4-byte Reload
	movl	%eax, -384(%rbp)        # 4-byte Spill
.LBB16_153:                             # %cond.end.637
                                        #   in Loop: Header=BB16_78 Depth=2
	movl	-384(%rbp), %eax        # 4-byte Reload
	movq	-96(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -96(%rbp)
.LBB16_154:                             # %if.end.641
                                        #   in Loop: Header=BB16_78 Depth=2
	jmp	.LBB16_155
.LBB16_155:                             # %do.end.643
                                        #   in Loop: Header=BB16_78 Depth=2
	jmp	.LBB16_156
.LBB16_156:                             # %if.end.644
                                        #   in Loop: Header=BB16_78 Depth=2
	jmp	.LBB16_78
.LBB16_157:                             # %while.end.645
                                        #   in Loop: Header=BB16_20 Depth=1
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jge	.LBB16_159
# BB#158:                               # %if.then.648
	movb	$0, -1(%rbp)
	jmp	.LBB16_179
.LBB16_159:                             # %if.end.649
                                        #   in Loop: Header=BB16_20 Depth=1
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-400(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB16_161
# BB#160:                               # %if.then.653
	movb	$1, -1(%rbp)
	jmp	.LBB16_179
.LBB16_161:                             # %if.end.654
                                        #   in Loop: Header=BB16_20 Depth=1
	movq	-136(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB16_163
# BB#162:                               # %if.then.658
	movb	$0, -1(%rbp)
	jmp	.LBB16_179
.LBB16_163:                             # %if.end.659
                                        #   in Loop: Header=BB16_20 Depth=1
	movq	-136(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -96(%rbp)
	testb	$1, -161(%rbp)
	je	.LBB16_171
# BB#164:                               # %if.then.661
                                        #   in Loop: Header=BB16_20 Depth=1
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-408(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB16_169
# BB#165:                               # %if.then.665
                                        #   in Loop: Header=BB16_20 Depth=1
	movq	-104(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB16_167
# BB#166:                               # %cond.true.671
                                        #   in Loop: Header=BB16_20 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	jmp	.LBB16_168
.LBB16_167:                             # %cond.false.674
                                        #   in Loop: Header=BB16_20 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -416(%rbp)        # 8-byte Spill
	jmp	.LBB16_168
.LBB16_168:                             # %cond.end.675
                                        #   in Loop: Header=BB16_20 Depth=1
	movq	-416(%rbp), %rax        # 8-byte Reload
	addq	-104(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -96(%rbp)
	jmp	.LBB16_170
.LBB16_169:                             # %if.else.684
                                        #   in Loop: Header=BB16_20 Depth=1
	movq	-56(%rbp), %rdi
	callq	SDATA
	addq	-104(%rbp), %rax
	movq	%rax, -96(%rbp)
.LBB16_170:                             # %if.end.689
                                        #   in Loop: Header=BB16_20 Depth=1
	jmp	.LBB16_171
.LBB16_171:                             # %if.end.690
                                        #   in Loop: Header=BB16_20 Depth=1
	jmp	.LBB16_172
.LBB16_172:                             # %do.body.691
                                        #   in Loop: Header=BB16_20 Depth=1
	movq	-112(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB16_174
# BB#173:                               # %if.then.695
                                        #   in Loop: Header=BB16_20 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	24(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -96(%rbp)
.LBB16_174:                             # %if.end.703
                                        #   in Loop: Header=BB16_20 Depth=1
	jmp	.LBB16_175
.LBB16_175:                             # %do.body.704
                                        #   Parent Loop BB16_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-104(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -104(%rbp)
	movq	-96(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -96(%rbp)
# BB#176:                               # %do.cond.709
                                        #   in Loop: Header=BB16_175 Depth=2
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	setne	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB16_175
# BB#177:                               # %do.end.716
                                        #   in Loop: Header=BB16_20 Depth=1
	movq	-112(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -112(%rbp)
# BB#178:                               # %do.end.720
                                        #   in Loop: Header=BB16_20 Depth=1
	jmp	.LBB16_20
.LBB16_179:                             # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$432, %rsp              # imm = 0x1B0
	popq	%rbp
	retq
.Lfunc_end16:
	.size	find_automatic_composition, .Lfunc_end16-find_automatic_composition
	.cfi_endproc

	.globl	Fcomposition_get_gstring
	.align	16, 0x90
	.type	Fcomposition_get_gstring,@function
Fcomposition_get_gstring:               # @Fcomposition_get_gstring
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
	subq	$176, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-32(%rbp), %rdi
	callq	FONT_OBJECT_P
	testb	$1, %al
	jne	.LBB17_5
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rdi
	callq	decode_live_terminal
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	96(%rax), %rax
	movl	8(%rax), %ecx
	andl	$16383, %ecx            # imm = 0x3FFF
	andl	$2048, %ecx             # imm = 0x800
	cmpl	$0, %ecx
	je	.LBB17_3
# BB#2:                                 # %cond.true
	movq	-96(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB17_4
.LBB17_3:                               # %cond.false
	movabsq	$safe_terminal_coding, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB17_4
.LBB17_4:                               # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, -88(%rbp)
	movq	Vcoding_system_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-88(%rbp), %rdi
	movq	(%rdi), %rsi
	movq	%rax, %rdi
	callq	HASH_KEY
	movq	%rax, -32(%rbp)
.LBB17_5:                               # %if.end
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB17_9
# BB#6:                                 # %if.then.6
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB17_8
# BB#7:                                 # %if.then.9
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	error
.LBB17_8:                               # %if.end.10
	leaq	-16(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	callq	validate_region
	movq	-16(%rbp), %rsi
	sarq	$2, %rsi
	movq	%rsi, -64(%rbp)
	movq	-24(%rbp), %rsi
	sarq	$2, %rsi
	movq	%rsi, -80(%rbp)
	movq	current_buffer, %rdi
	movq	-64(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -72(%rbp)
	jmp	.LBB17_12
.LBB17_9:                               # %if.else
	movq	-40(%rbp), %rdi
	callq	CHECK_STRING
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	callq	SCHARS
	leaq	-64(%rbp), %r8
	leaq	-80(%rbp), %r9
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	-144(%rbp), %rsi        # 8-byte Reload
	movq	-136(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	validate_subarray
	movq	-40(%rbp), %rdi
	callq	STRING_MULTIBYTE
	testb	$1, %al
	jne	.LBB17_11
# BB#10:                                # %if.then.15
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	error
.LBB17_11:                              # %if.end.16
	movq	-40(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	string_char_to_byte
	movq	%rax, -72(%rbp)
.LBB17_12:                              # %if.end.18
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	-32(%rbp), %r8
	movq	-40(%rbp), %r9
	movq	%rax, %rdi
	callq	fill_gstring_header
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	gstring_lookup_cache
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB17_14
# BB#13:                                # %if.then.24
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB17_17
.LBB17_14:                              # %if.end.25
	movq	gstring_work, %rdi
	callq	ASIZE
	subq	$2, %rax
	movq	-80(%rbp), %rdi
	subq	-64(%rbp), %rdi
	cmpq	%rdi, %rax
	jge	.LBB17_16
# BB#15:                                # %if.then.29
	xorl	%edi, %edi
	movq	-80(%rbp), %rax
	subq	-64(%rbp), %rax
	addq	$2, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fmake_vector
	movq	%rax, gstring_work
.LBB17_16:                              # %if.end.34
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	gstring_work, %rdi
	movq	-56(%rbp), %rdx
	callq	ASET
	xorl	%edi, %edi
	movq	gstring_work, %rdx
	movq	%rdx, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$1, %edi
	movl	%edi, %esi
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	movq	gstring_work, %rdi
	callq	fill_gstring_body
	movq	gstring_work, %rax
	movq	%rax, -8(%rbp)
.LBB17_17:                              # %return
	movq	-8(%rbp), %rax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	Fcomposition_get_gstring, .Lfunc_end17-Fcomposition_get_gstring
	.cfi_endproc

	.align	16, 0x90
	.type	fill_gstring_header,@function
fill_gstring_header:                    # @fill_gstring_header
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-32(%rbp), %rcx
	subq	-16(%rbp), %rcx
	movq	%rcx, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB18_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.9, %rdi
	movb	$0, %al
	callq	error
.LBB18_2:                               # %if.end
	movq	-8(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB18_3
	jmp	.LBB18_6
.LBB18_3:                               # %if.then.1
	movq	-8(%rbp), %rdi
	callq	ASIZE
	movq	-56(%rbp), %rdi
	addq	$1, %rdi
	cmpq	%rdi, %rax
	je	.LBB18_5
# BB#4:                                 # %if.then.4
	movq	-8(%rbp), %rdi
	movq	-56(%rbp), %rax
	addq	$1, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rsi
	callq	args_out_of_range
.LBB18_5:                               # %if.end.7
	jmp	.LBB18_10
.LBB18_6:                               # %if.else
	cmpq	$8, -56(%rbp)
	jg	.LBB18_8
# BB#7:                                 # %if.then.9
	movq	gstring_work_headers, %rdi
	movq	-56(%rbp), %rax
	subq	$1, %rax
	movq	%rax, %rsi
	callq	AREF
	movq	%rax, -8(%rbp)
	jmp	.LBB18_9
.LBB18_8:                               # %if.else.12
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	make_uninit_vector
	movq	%rax, -8(%rbp)
.LBB18_9:                               # %if.end.15
	jmp	.LBB18_10
.LBB18_10:                              # %if.end.16
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rdx
	callq	ASET
	movq	$0, -64(%rbp)
.LBB18_11:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jge	.LBB18_42
# BB#12:                                # %for.body
                                        #   in Loop: Header=BB18_11 Depth=1
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB18_28
# BB#13:                                # %if.then.20
                                        #   in Loop: Header=BB18_11 Depth=1
	jmp	.LBB18_14
.LBB18_14:                              # %do.body
                                        #   in Loop: Header=BB18_11 Depth=1
	movq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB18_16
# BB#15:                                # %cond.true
                                        #   in Loop: Header=BB18_11 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB18_17
.LBB18_16:                              # %cond.false
                                        #   in Loop: Header=BB18_11 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB18_17
.LBB18_17:                              # %cond.end
                                        #   in Loop: Header=BB18_11 Depth=1
	movq	-120(%rbp), %rax        # 8-byte Reload
	addq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movzbl	(%rax), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	jne	.LBB18_19
# BB#18:                                # %cond.true.26
                                        #   in Loop: Header=BB18_11 Depth=1
	movl	$1, -84(%rbp)
	movq	-80(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	jmp	.LBB18_26
.LBB18_19:                              # %cond.false.29
                                        #   in Loop: Header=BB18_11 Depth=1
	movq	-80(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB18_21
# BB#20:                                # %cond.true.34
                                        #   in Loop: Header=BB18_11 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -84(%rbp)
	movq	-80(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-80(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-80(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -128(%rbp)        # 4-byte Spill
	jmp	.LBB18_25
.LBB18_21:                              # %cond.false.48
                                        #   in Loop: Header=BB18_11 Depth=1
	movq	-80(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB18_23
# BB#22:                                # %cond.true.53
                                        #   in Loop: Header=BB18_11 Depth=1
	movl	$3, -84(%rbp)
	movq	-80(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-80(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-80(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -132(%rbp)        # 4-byte Spill
	jmp	.LBB18_24
.LBB18_23:                              # %cond.false.67
                                        #   in Loop: Header=BB18_11 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-84(%rbp), %rdx
	movq	-80(%rbp), %rdi
	callq	string_char
	movl	%eax, -132(%rbp)        # 4-byte Spill
.LBB18_24:                              # %cond.end.69
                                        #   in Loop: Header=BB18_11 Depth=1
	movl	-132(%rbp), %eax        # 4-byte Reload
	movl	%eax, -128(%rbp)        # 4-byte Spill
.LBB18_25:                              # %cond.end.71
                                        #   in Loop: Header=BB18_11 Depth=1
	movl	-128(%rbp), %eax        # 4-byte Reload
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB18_26:                              # %cond.end.73
                                        #   in Loop: Header=BB18_11 Depth=1
	movl	-124(%rbp), %eax        # 4-byte Reload
	movl	%eax, -68(%rbp)
	movslq	-84(%rbp), %rcx
	addq	-24(%rbp), %rcx
	movq	%rcx, -24(%rbp)
	movq	-16(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
# BB#27:                                # %do.end
                                        #   in Loop: Header=BB18_11 Depth=1
	jmp	.LBB18_40
.LBB18_28:                              # %if.else.77
                                        #   in Loop: Header=BB18_11 Depth=1
	jmp	.LBB18_29
.LBB18_29:                              # %do.body.78
                                        #   in Loop: Header=BB18_11 Depth=1
	movq	-24(%rbp), %rax
	movq	-48(%rbp), %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	SDATA
	movq	-144(%rbp), %rdi        # 8-byte Reload
	addq	%rdi, %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB18_31
# BB#30:                                # %cond.true.85
                                        #   in Loop: Header=BB18_11 Depth=1
	movl	$1, -100(%rbp)
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -148(%rbp)        # 4-byte Spill
	jmp	.LBB18_38
.LBB18_31:                              # %cond.false.88
                                        #   in Loop: Header=BB18_11 Depth=1
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB18_33
# BB#32:                                # %cond.true.93
                                        #   in Loop: Header=BB18_11 Depth=1
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
	movl	%esi, -152(%rbp)        # 4-byte Spill
	jmp	.LBB18_37
.LBB18_33:                              # %cond.false.108
                                        #   in Loop: Header=BB18_11 Depth=1
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB18_35
# BB#34:                                # %cond.true.113
                                        #   in Loop: Header=BB18_11 Depth=1
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
	movl	%ecx, -156(%rbp)        # 4-byte Spill
	jmp	.LBB18_36
.LBB18_35:                              # %cond.false.127
                                        #   in Loop: Header=BB18_11 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-100(%rbp), %rdx
	movq	-96(%rbp), %rdi
	callq	string_char
	movl	%eax, -156(%rbp)        # 4-byte Spill
.LBB18_36:                              # %cond.end.129
                                        #   in Loop: Header=BB18_11 Depth=1
	movl	-156(%rbp), %eax        # 4-byte Reload
	movl	%eax, -152(%rbp)        # 4-byte Spill
.LBB18_37:                              # %cond.end.131
                                        #   in Loop: Header=BB18_11 Depth=1
	movl	-152(%rbp), %eax        # 4-byte Reload
	movl	%eax, -148(%rbp)        # 4-byte Spill
.LBB18_38:                              # %cond.end.133
                                        #   in Loop: Header=BB18_11 Depth=1
	movl	-148(%rbp), %eax        # 4-byte Reload
	movl	%eax, -68(%rbp)
	movslq	-100(%rbp), %rcx
	addq	-24(%rbp), %rcx
	movq	%rcx, -24(%rbp)
	movq	-16(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
# BB#39:                                # %do.end.138
                                        #   in Loop: Header=BB18_11 Depth=1
	jmp	.LBB18_40
.LBB18_40:                              # %if.end.139
                                        #   in Loop: Header=BB18_11 Depth=1
	movq	-8(%rbp), %rdi
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movslq	-68(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	ASET
# BB#41:                                # %for.inc
                                        #   in Loop: Header=BB18_11 Depth=1
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB18_11
.LBB18_42:                              # %for.end
	movq	-8(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	fill_gstring_header, .Lfunc_end18-fill_gstring_header
	.cfi_endproc

	.align	16, 0x90
	.type	gstring_lookup_cache,@function
gstring_lookup_cache:                   # @gstring_lookup_cache
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	gstring_hash_table, %rdi
	callq	XHASH_TABLE
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	hash_lookup
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jl	.LBB19_2
# BB#1:                                 # %cond.true
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	HASH_VALUE
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB19_3
.LBB19_2:                               # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB19_3:                               # %cond.end
	movq	-32(%rbp), %rax         # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gstring_lookup_cache, .Lfunc_end19-gstring_lookup_cache
	.cfi_endproc

	.align	16, 0x90
	.type	fill_gstring_body,@function
fill_gstring_body:                      # @fill_gstring_body
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
	subq	$128, %rsp
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	AREF
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	AREF
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	AREF
	movq	%rax, %rdi
	callq	ASIZE
	subq	$1, %rax
	movq	%rax, -32(%rbp)
	movq	$0, -40(%rbp)
.LBB20_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jge	.LBB20_20
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rax
	addq	$2, %rax
	movq	%rax, %rsi
	callq	AREF
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rsi
	callq	AREF
	xorl	%edi, %edi
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -52(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB20_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB20_1 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movl	$42, %edi
                                        # kill: RDI<def> EDI<kill>
	movq	%rax, %rsi
	callq	Fmake_vector
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rax
	addq	$2, %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rsi
	callq	ASET
.LBB20_4:                               # %if.end
                                        #   in Loop: Header=BB20_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, %rdx
	callq	ASET
	movl	$1, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, %rdx
	callq	ASET
	movl	$2, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	movslq	-52(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, %rdx
	callq	ASET
	movq	-16(%rbp), %rdi
	callq	FONT_OBJECT_P
	testb	$1, %al
	jne	.LBB20_5
	jmp	.LBB20_6
.LBB20_5:                               # %if.then.21
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	font_fill_lglyph_metrics
	jmp	.LBB20_18
.LBB20_6:                               # %if.else
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	globals+224, %rdi
	movl	-52(%rbp), %esi
	callq	CHAR_TABLE_REF
	sarq	$2, %rax
	movl	%eax, %esi
	movl	%esi, -56(%rbp)
	movq	-48(%rbp), %rdi
	cmpl	$-1, -52(%rbp)
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	jne	.LBB20_8
# BB#7:                                 # %cond.true
                                        #   in Loop: Header=BB20_1 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB20_17
.LBB20_8:                               # %cond.false
                                        #   in Loop: Header=BB20_1 Depth=1
	xorl	%eax, %eax
	cmpl	-52(%rbp), %eax
	jle	.LBB20_10
# BB#9:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB20_1 Depth=1
	movabsq	$-2305843009213693952, %rax # imm = 0xE000000000000000
	movslq	-52(%rbp), %rcx
	cmpq	%rcx, %rax
	jg	.LBB20_12
.LBB20_10:                              # %land.lhs.true
                                        #   in Loop: Header=BB20_1 Depth=1
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	movslq	-52(%rbp), %rcx
	cmpq	%rax, %rcx
	jg	.LBB20_12
# BB#11:                                # %cond.true.36
                                        #   in Loop: Header=BB20_1 Depth=1
	movslq	-52(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB20_16
.LBB20_12:                              # %cond.false.40
                                        #   in Loop: Header=BB20_1 Depth=1
	imull	$0, -52(%rbp), %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB20_14
# BB#13:                                # %cond.true.44
                                        #   in Loop: Header=BB20_1 Depth=1
	movslq	-52(%rbp), %rdi
	callq	intbig_to_lisp
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB20_15
.LBB20_14:                              # %cond.false.47
                                        #   in Loop: Header=BB20_1 Depth=1
	movslq	-52(%rbp), %rdi
	callq	uintbig_to_lisp
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB20_15:                              # %cond.end
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB20_16:                              # %cond.end.50
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB20_17:                              # %cond.end.52
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	$3, %ecx
	movl	%ecx, %esi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	movl	$5, %ecx
	movl	%ecx, %esi
	movl	$2, %ecx
	movl	%ecx, %edx
	movq	-48(%rbp), %rdi
	callq	ASET
	movl	$6, %ecx
	movl	%ecx, %esi
	movq	-48(%rbp), %rdi
	movslq	-56(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdx
	callq	ASET
	movl	$4, %ecx
	movl	%ecx, %esi
	movq	-48(%rbp), %rdi
	movslq	-56(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdx
	callq	ASET
	movl	$7, %ecx
	movl	%ecx, %esi
	movl	$6, %ecx
	movl	%ecx, %edx
	movq	-48(%rbp), %rdi
	callq	ASET
	movl	$8, %ecx
	movl	%ecx, %esi
	movl	$2, %ecx
	movl	%ecx, %edx
	movq	-48(%rbp), %rdi
	callq	ASET
.LBB20_18:                              # %if.end.60
                                        #   in Loop: Header=BB20_1 Depth=1
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$9, %edi
	movl	%edi, %esi
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
# BB#19:                                # %for.inc
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB20_1
.LBB20_20:                              # %for.end
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	ASIZE
	subq	$2, %rax
	movq	-112(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jge	.LBB20_22
# BB#21:                                # %if.then.66
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rcx
	addq	$2, %rcx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
.LBB20_22:                              # %if.end.69
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	fill_gstring_body, .Lfunc_end20-fill_gstring_body
	.cfi_endproc

	.globl	Fcompose_region_internal
	.align	16, 0x90
	.type	Fcompose_region_internal,@function
Fcompose_region_internal:               # @Fcompose_region_internal
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
	subq	$80, %rsp
	leaq	-8(%rbp), %rax
	leaq	-16(%rbp), %r8
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%rax, %rdi
	movq	%r8, %rsi
	callq	validate_region
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB21_5
# BB#1:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	je	.LBB21_5
# BB#2:                                 # %land.lhs.true.4
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB21_5
# BB#3:                                 # %land.lhs.true.9
	movq	-24(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB21_5
# BB#4:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	CHECK_VECTOR
.LBB21_5:                               # %if.end
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	movq	-16(%rbp), %rcx
	sarq	$2, %rcx
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	%rax, %r8
	callq	compose_text
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	Fcompose_region_internal, .Lfunc_end21-Fcompose_region_internal
	.cfi_endproc

	.globl	Fcompose_string_internal
	.align	16, 0x90
	.type	Fcompose_string_internal,@function
Fcompose_string_internal:               # @Fcompose_string_internal
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
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_STRING
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	SCHARS
	leaq	-48(%rbp), %r8
	leaq	-56(%rbp), %r9
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	callq	validate_subarray
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-8(%rbp), %r8
	callq	compose_text
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	Fcompose_string_internal, .Lfunc_end22-Fcompose_string_internal
	.cfi_endproc

	.globl	Ffind_composition_internal
	.align	16, 0x90
	.type	Ffind_composition_internal,@function
Ffind_composition_internal:             # @Ffind_composition_internal
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
	subq	$320, %rsp              # imm = 0x140
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB23_4
# BB#2:                                 # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB23_4
# BB#3:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	marker_position
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -16(%rbp)
	jmp	.LBB23_8
.LBB23_4:                               # %if.else
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB23_6
# BB#5:                                 # %cond.true
	jmp	.LBB23_7
.LBB23_6:                               # %cond.false
	movl	$558, %edi              # imm = 0x22E
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -168(%rbp)        # 8-byte Spill
.LBB23_7:                               # %cond.end
	jmp	.LBB23_8
.LBB23_8:                               # %if.end
	jmp	.LBB23_9
.LBB23_9:                               # %do.end
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB23_23
# BB#10:                                # %if.then.15
	jmp	.LBB23_11
.LBB23_11:                              # %do.body.16
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB23_14
# BB#12:                                # %land.lhs.true.21
	movq	-24(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB23_14
# BB#13:                                # %if.then.25
	movq	-24(%rbp), %rdi
	callq	marker_position
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -24(%rbp)
	jmp	.LBB23_18
.LBB23_14:                              # %if.else.28
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB23_16
# BB#15:                                # %cond.true.34
	jmp	.LBB23_17
.LBB23_16:                              # %cond.false.35
	movl	$558, %edi              # imm = 0x22E
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -184(%rbp)        # 8-byte Spill
.LBB23_17:                              # %cond.end.37
	jmp	.LBB23_18
.LBB23_18:                              # %if.end.38
	jmp	.LBB23_19
.LBB23_19:                              # %do.end.39
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	jge	.LBB23_21
# BB#20:                                # %cond.true.42
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jmp	.LBB23_22
.LBB23_21:                              # %cond.false.44
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
.LBB23_22:                              # %cond.end.46
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	%rax, -96(%rbp)
	jmp	.LBB23_24
.LBB23_23:                              # %if.else.47
	movq	$-1, -96(%rbp)
.LBB23_24:                              # %if.end.48
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-200(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB23_29
# BB#25:                                # %if.then.52
	movq	-32(%rbp), %rdi
	callq	CHECK_STRING
	movq	-16(%rbp), %rdi
	sarq	$2, %rdi
	cmpq	$0, %rdi
	jl	.LBB23_27
# BB#26:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	-32(%rbp), %rdi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	SCHARS
	movq	-208(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jle	.LBB23_28
.LBB23_27:                              # %if.then.60
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	args_out_of_range
.LBB23_28:                              # %if.end.61
	jmp	.LBB23_33
.LBB23_29:                              # %if.else.62
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	current_buffer, %rcx
	cmpq	752(%rcx), %rax
	jl	.LBB23_31
# BB#30:                                # %lor.lhs.false.66
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	jle	.LBB23_32
.LBB23_31:                              # %if.then.71
	callq	Fcurrent_buffer
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	args_out_of_range
.LBB23_32:                              # %if.end.73
	jmp	.LBB23_33
.LBB23_33:                              # %if.end.74
	leaq	-72(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	leaq	-48(%rbp), %r8
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movq	-32(%rbp), %r9
	callq	find_composition
	testb	$1, %al
	jne	.LBB23_39
# BB#34:                                # %if.then.77
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB23_38
# BB#35:                                # %land.lhs.true.81
	xorl	%edi, %edi
	movq	globals+48, %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB23_38
# BB#36:                                # %land.lhs.true.85
	leaq	-72(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	leaq	-64(%rbp), %r8
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movq	-32(%rbp), %r9
	callq	find_automatic_composition
	testb	$1, %al
	jne	.LBB23_37
	jmp	.LBB23_38
.LBB23_37:                              # %if.then.88
	movq	-72(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-80(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	-64(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	list3
	movq	%rax, -8(%rbp)
	jmp	.LBB23_73
.LBB23_38:                              # %if.end.92
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB23_73
.LBB23_39:                              # %if.end.94
	movq	-80(%rbp), %rax
	movq	-16(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jle	.LBB23_41
# BB#40:                                # %lor.lhs.false.98
	movq	-72(%rbp), %rax
	movq	-16(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jle	.LBB23_47
.LBB23_41:                              # %if.then.102
	leaq	-112(%rbp), %rdx
	leaq	-120(%rbp), %rcx
	leaq	-64(%rbp), %r8
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movq	-32(%rbp), %r9
	callq	find_automatic_composition
	testb	$1, %al
	jne	.LBB23_42
	jmp	.LBB23_46
.LBB23_42:                              # %land.lhs.true.105
	movq	-120(%rbp), %rax
	movq	-16(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jg	.LBB23_44
# BB#43:                                # %cond.true.109
	movq	-120(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jg	.LBB23_45
	jmp	.LBB23_46
.LBB23_44:                              # %cond.false.112
	movq	-112(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jge	.LBB23_46
.LBB23_45:                              # %if.then.115
	movq	-112(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-120(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	-64(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	list3
	movq	%rax, -8(%rbp)
	jmp	.LBB23_73
.LBB23_46:                              # %if.end.121
	jmp	.LBB23_47
.LBB23_47:                              # %if.end.122
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	composition_valid_p
	testb	$1, %al
	jne	.LBB23_49
# BB#48:                                # %if.then.124
	xorl	%edi, %edi
	movq	-72(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-80(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	-232(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	list3
	movq	%rax, -8(%rbp)
	jmp	.LBB23_73
.LBB23_49:                              # %if.end.131
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-248(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB23_51
# BB#50:                                # %if.then.135
	movl	$901, %edi              # imm = 0x385
	movq	-72(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-80(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	-256(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	list3
	movq	%rax, -8(%rbp)
	jmp	.LBB23_73
.LBB23_51:                              # %if.end.142
	movq	-48(%rbp), %rdi
	callq	composition_registered_p
	testb	$1, %al
	jne	.LBB23_52
	jmp	.LBB23_53
.LBB23_52:                              # %if.then.144
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -100(%rbp)
	jmp	.LBB23_57
.LBB23_53:                              # %if.else.147
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-272(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB23_55
# BB#54:                                # %cond.true.151
	movq	current_buffer, %rdi
	movq	-72(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -280(%rbp)        # 8-byte Spill
	jmp	.LBB23_56
.LBB23_55:                              # %cond.false.153
	movq	-32(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	string_char_to_byte
	movq	%rax, -280(%rbp)        # 8-byte Spill
.LBB23_56:                              # %cond.end.155
	movq	-280(%rbp), %rax        # 8-byte Reload
	movq	%rax, -128(%rbp)
	movq	-72(%rbp), %rdi
	movq	-128(%rbp), %rsi
	movq	-80(%rbp), %rax
	subq	-72(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	-32(%rbp), %r8
	movq	%rax, %rdx
	callq	get_composition_id
	movl	%eax, %r9d
	movl	%r9d, -100(%rbp)
.LBB23_57:                              # %if.end.160
	cmpl	$0, -100(%rbp)
	jl	.LBB23_71
# BB#58:                                # %if.then.163
	movq	-48(%rbp), %rdi
	callq	composition_method
	movl	%eax, -156(%rbp)
	movslq	-100(%rbp), %rdi
	movq	composition_table, %rcx
	movq	(%rcx,%rdi,8), %rcx
	movl	16(%rcx), %eax
	movl	%eax, -160(%rbp)
	movq	-48(%rbp), %rdi
	callq	composition_registered_p
	testb	$1, %al
	jne	.LBB23_59
	jmp	.LBB23_60
.LBB23_59:                              # %cond.true.168
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	jmp	.LBB23_61
.LBB23_60:                              # %cond.false.175
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
.LBB23_61:                              # %cond.end.181
	movq	-288(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rdi
	callq	Fcopy_sequence
	movq	%rax, -136(%rbp)
	cmpl	$3, -156(%rbp)
	jne	.LBB23_63
# BB#62:                                # %cond.true.186
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -296(%rbp)        # 8-byte Spill
	jmp	.LBB23_64
.LBB23_63:                              # %cond.false.188
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -296(%rbp)        # 8-byte Spill
.LBB23_64:                              # %cond.end.190
	movq	-296(%rbp), %rax        # 8-byte Reload
	movq	%rax, -144(%rbp)
	movq	-48(%rbp), %rdi
	callq	composition_registered_p
	testb	$1, %al
	jne	.LBB23_65
	jmp	.LBB23_66
.LBB23_65:                              # %cond.true.194
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	jmp	.LBB23_70
.LBB23_66:                              # %cond.false.204
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB23_68
# BB#67:                                # %cond.true.209
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	jmp	.LBB23_69
.LBB23_68:                              # %cond.false.213
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -312(%rbp)        # 8-byte Spill
.LBB23_69:                              # %cond.end.215
	movq	-312(%rbp), %rax        # 8-byte Reload
	movq	%rax, -304(%rbp)        # 8-byte Spill
.LBB23_70:                              # %cond.end.217
	movq	-304(%rbp), %rax        # 8-byte Reload
	movq	%rax, -152(%rbp)
	movq	-136(%rbp), %rdi
	movq	-144(%rbp), %rsi
	movq	-152(%rbp), %rdx
	movslq	-160(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rcx
	callq	list4
	movq	%rax, -56(%rbp)
	jmp	.LBB23_72
.LBB23_71:                              # %if.else.223
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -56(%rbp)
.LBB23_72:                              # %if.end.225
	movq	-72(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-80(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	-56(%rbp), %rsi
	movq	%rcx, %rdi
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	Fcons
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	%rax, -8(%rbp)
.LBB23_73:                              # %return
	movq	-8(%rbp), %rax
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	retq
.Lfunc_end23:
	.size	Ffind_composition_internal, .Lfunc_end23-Ffind_composition_internal
	.cfi_endproc

	.globl	syms_of_composite
	.align	16, 0x90
	.type	syms_of_composite,@function
syms_of_composite:                      # @syms_of_composite
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
	subq	$96, %rsp
	movl	$129, %edi
	callq	builtin_lisp_symbol
	movl	$371, %edi              # imm = 0x173
	movq	%rax, -48(%rbp)
	callq	builtin_lisp_symbol
	movl	$118, %edi
	movq	%rax, -40(%rbp)
	callq	builtin_lisp_symbol
	movl	$4, %edi
                                        # kill: RDI<def> EDI<kill>
	leaq	-48(%rbp), %rsi
	movq	%rax, -32(%rbp)
	movq	$1246, -24(%rbp)        # imm = 0x4DE
	callq	Fmake_hash_table
	movabsq	$composition_hash_table, %rdi
	movq	%rax, composition_hash_table
	callq	staticpro
	movl	$4, %ecx
	movl	%ecx, %edi
	leaq	-48(%rbp), %rsi
	callq	Fmake_hash_table
	movabsq	$gstring_hash_table, %rdi
	movq	%rax, gstring_hash_table
	callq	staticpro
	movabsq	$gstring_work_headers, %rdi
	callq	staticpro
	movl	$8, %ecx
	movl	%ecx, %edi
	callq	make_uninit_vector
	movq	%rax, gstring_work_headers
	movl	$0, -4(%rbp)
.LBB24_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$8, -4(%rbp)
	jge	.LBB24_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB24_1 Depth=1
	xorl	%edi, %edi
	movq	gstring_work_headers, %rax
	movslq	-4(%rbp), %rsi
	movl	-4(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rdx
	shlq	$2, %rdx
	addq	$2, %rdx
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fmake_vector
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB24_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB24_1
.LBB24_4:                               # %for.end
	movabsq	$gstring_work, %rdi
	callq	staticpro
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movl	$42, %edi
                                        # kill: RDI<def> EDI<kill>
	movq	%rax, %rsi
	callq	Fmake_vector
	movl	$290, %edi              # imm = 0x122
	movq	%rax, gstring_work
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	globals+2328, %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, globals+2328
# BB#5:                                 # %do.body
	movabsq	$syms_of_composite.o_fwd, %rdi
	movabsq	$.L.str.1, %rsi
	movabsq	$globals, %rax
	addq	$360, %rax              # imm = 0x168
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#6:                                 # %do.end
	movabsq	$.L.str.2, %rdi
	callq	intern_c_string
	movq	%rax, globals+360
# BB#7:                                 # %do.body.20
	movabsq	$syms_of_composite.o_fwd.3, %rdi
	movabsq	$.L.str.4, %rsi
	movabsq	$globals, %rax
	addq	$48, %rax
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#8:                                 # %do.end.21
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, globals+48
# BB#9:                                 # %do.body.23
	movabsq	$syms_of_composite.o_fwd.5, %rdi
	movabsq	$.L.str.6, %rsi
	movabsq	$globals, %rax
	addq	$40, %rax
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#10:                                # %do.end.24
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+40
# BB#11:                                # %do.body.26
	movabsq	$syms_of_composite.o_fwd.7, %rdi
	movabsq	$.L.str.8, %rsi
	movabsq	$globals, %rax
	addq	$368, %rax              # imm = 0x170
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#12:                                # %do.end.27
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fmake_char_table
	movabsq	$Scompose_region_internal, %rsi
	movq	%rax, globals+368
	movq	%rsi, %rdi
	callq	defsubr
	movabsq	$Scompose_string_internal, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sfind_composition_internal, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Scomposition_get_gstring, %rax
	movq	%rax, %rdi
	callq	defsubr
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	syms_of_composite, .Lfunc_end24-syms_of_composite
	.cfi_endproc

	.type	composition_hash_table,@object # @composition_hash_table
	.comm	composition_hash_table,8,8
	.type	n_compositions,@object  # @n_compositions
	.comm	n_compositions,8,8
	.type	composition_table_size,@object # @composition_table_size
	.local	composition_table_size
	.comm	composition_table_size,8,8
	.type	composition_table,@object # @composition_table
	.comm	composition_table,8,8
	.type	gstring_hash_table,@object # @gstring_hash_table
	.local	gstring_hash_table
	.comm	gstring_hash_table,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Attempt to shape unibyte text"
	.size	.L.str, 30

	.type	gstring_work,@object    # @gstring_work
	.local	gstring_work
	.comm	gstring_work,8,8
	.type	gstring_work_headers,@object # @gstring_work_headers
	.local	gstring_work_headers
	.comm	gstring_work_headers,8,8
	.type	syms_of_composite.o_fwd,@object # @syms_of_composite.o_fwd
	.local	syms_of_composite.o_fwd
	.comm	syms_of_composite.o_fwd,16,8
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"compose-chars-after-function"
	.size	.L.str.1, 29

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"compose-chars-after"
	.size	.L.str.2, 20

	.type	syms_of_composite.o_fwd.3,@object # @syms_of_composite.o_fwd.3
	.local	syms_of_composite.o_fwd.3
	.comm	syms_of_composite.o_fwd.3,16,8
	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"auto-composition-mode"
	.size	.L.str.4, 22

	.type	syms_of_composite.o_fwd.5,@object # @syms_of_composite.o_fwd.5
	.local	syms_of_composite.o_fwd.5
	.comm	syms_of_composite.o_fwd.5,16,8
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"auto-composition-function"
	.size	.L.str.6, 26

	.type	syms_of_composite.o_fwd.7,@object # @syms_of_composite.o_fwd.7
	.local	syms_of_composite.o_fwd.7
	.comm	syms_of_composite.o_fwd.7,16,8
	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"composition-function-table"
	.size	.L.str.8, 27

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Attempt to shape zero-length text"
	.size	.L.str.9, 34

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"compose-region-internal"
	.size	.L.str.10, 24

	.type	Scompose_region_internal,@object # @Scompose_region_internal
	.data
	.align	8
Scompose_region_internal:
	.quad	167772160               # 0xa000000
	.quad	Fcompose_region_internal
	.short	2                       # 0x2
	.short	4                       # 0x4
	.zero	4
	.quad	.L.str.10
	.quad	0
	.quad	0
	.size	Scompose_region_internal, 48

	.type	.L.str.11,@object       # @.str.11
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.11:
	.asciz	"compose-string-internal"
	.size	.L.str.11, 24

	.type	Scompose_string_internal,@object # @Scompose_string_internal
	.data
	.align	8
Scompose_string_internal:
	.quad	167772160               # 0xa000000
	.quad	Fcompose_string_internal
	.short	3                       # 0x3
	.short	5                       # 0x5
	.zero	4
	.quad	.L.str.11
	.quad	0
	.quad	0
	.size	Scompose_string_internal, 48

	.type	.L.str.12,@object       # @.str.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.12:
	.asciz	"find-composition-internal"
	.size	.L.str.12, 26

	.type	Sfind_composition_internal,@object # @Sfind_composition_internal
	.data
	.align	8
Sfind_composition_internal:
	.quad	167772160               # 0xa000000
	.quad	Ffind_composition_internal
	.short	4                       # 0x4
	.short	4                       # 0x4
	.zero	4
	.quad	.L.str.12
	.quad	0
	.quad	0
	.size	Sfind_composition_internal, 48

	.type	.L.str.13,@object       # @.str.13
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.13:
	.asciz	"composition-get-gstring"
	.size	.L.str.13, 24

	.type	Scomposition_get_gstring,@object # @Scomposition_get_gstring
	.data
	.align	8
Scomposition_get_gstring:
	.quad	167772160               # 0xa000000
	.quad	Fcomposition_get_gstring
	.short	4                       # 0x4
	.short	4                       # 0x4
	.zero	4
	.quad	.L.str.13
	.quad	0
	.quad	0
	.size	Scomposition_get_gstring, 48


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
