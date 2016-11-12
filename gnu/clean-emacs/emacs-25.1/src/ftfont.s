	.text
	.file	"ftfont.bc"
	.globl	ftfont_get_fc_charset
	.align	16, 0x90
	.type	ftfont_get_fc_charset,@function
ftfont_get_fc_charset:                  # @ftfont_get_fc_charset
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
	movl	$1, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	ftfont_lookup_cache
	xorl	%esi, %esi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	XSAVE_POINTER
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	ftfont_get_fc_charset, .Lfunc_end0-ftfont_get_fc_charset
	.cfi_endproc

	.align	16, 0x90
	.type	ftfont_lookup_cache,@function
ftfont_lookup_cache:                    # @ftfont_lookup_cache
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
	subq	$192, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	-16(%rbp), %rdi
	callq	FONT_ENTITY_P
	testb	$1, %al
	jne	.LBB1_1
	jmp	.LBB1_2
.LBB1_1:                                # %if.then
	movl	$45, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	builtin_lisp_symbol
	movl	$12, %edi
	movl	%edi, %esi
	movq	-48(%rbp), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	AREF
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	assq_no_quit
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB1_3
.LBB1_2:                                # %if.else
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -48(%rbp)
.LBB1_3:                                # %if.end
	xorl	%edi, %edi
	movq	ft_face_cache, %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB1_5
# BB#4:                                 # %if.then.6
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)
	jmp	.LBB1_6
.LBB1_5:                                # %if.else.8
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	ft_face_cache, %rsi
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	-144(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fgethash
	movq	%rax, -32(%rbp)
.LBB1_6:                                # %if.end.11
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB1_10
# BB#7:                                 # %if.then.14
	xorl	%edi, %edi
	movq	ft_face_cache, %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB1_9
# BB#8:                                 # %if.then.17
	movl	$129, %edi
	callq	builtin_lisp_symbol
	movl	$371, %edi              # imm = 0x173
	movq	%rax, -72(%rbp)
	callq	builtin_lisp_symbol
	movl	$2, %edi
                                        # kill: RDI<def> EDI<kill>
	leaq	-72(%rbp), %rsi
	movq	%rax, -64(%rbp)
	callq	Fmake_hash_table
	movq	%rax, ft_face_cache
.LBB1_9:                                # %if.end.21
	movl	$16, %eax
	movl	%eax, %edi
	callq	xmalloc
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	$0, (%rax)
	movq	-56(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	make_save_ptr_int
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	ft_face_cache, %rdx
	callq	Fputhash
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB1_11
.LBB1_10:                               # %if.else.27
	xorl	%esi, %esi
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	XSAVE_POINTER
	movq	%rax, -56(%rbp)
.LBB1_11:                               # %if.end.32
	cmpl	$2, -20(%rbp)
	jne	.LBB1_13
# BB#12:                                # %if.then.34
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_44
.LBB1_13:                               # %if.end.35
	cmpl	$0, -20(%rbp)
	jne	.LBB1_15
# BB#14:                                # %cond.true
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB1_43
	jmp	.LBB1_16
.LBB1_15:                               # %cond.false
	movq	-56(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB1_43
.LBB1_16:                               # %if.then.40
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	SSDATA
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -84(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.LBB1_23
# BB#17:                                # %if.then.48
	cmpq	$0, ft_library
	jne	.LBB1_20
# BB#18:                                # %land.lhs.true
	movabsq	$ft_library, %rdi
	callq	FT_Init_FreeType
	cmpl	$0, %eax
	je	.LBB1_20
# BB#19:                                # %if.then.53
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB1_44
.LBB1_20:                               # %if.end.55
	movq	ft_library, %rdi
	movq	-80(%rbp), %rsi
	movslq	-84(%rbp), %rdx
	movq	-56(%rbp), %rcx
	callq	FT_New_Face
	cmpl	$0, %eax
	je	.LBB1_22
# BB#21:                                # %if.then.61
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB1_44
.LBB1_22:                               # %if.end.63
	jmp	.LBB1_42
.LBB1_23:                               # %if.else.64
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str, %rsi
	movl	$3, %edx
	movabsq	$.L.str.1, %r8
	movl	$1, %r9d
	movq	$0, -96(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -120(%rbp)
	movq	-80(%rbp), %rcx
	movl	-84(%rbp), %eax
	movl	%eax, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	FcPatternBuild
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB1_25
# BB#24:                                # %if.then.67
	jmp	.LBB1_35
.LBB1_25:                               # %if.end.68
	movabsq	$.L.str.2, %rdi
	movabsq	$.L.str.3, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movb	$0, %al
	callq	FcObjectSetBuild
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB1_27
# BB#26:                                # %if.then.71
	jmp	.LBB1_35
.LBB1_27:                               # %if.end.72
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	-96(%rbp), %rsi
	movq	-112(%rbp), %rdx
	callq	FcFontList
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB1_29
# BB#28:                                # %if.then.75
	jmp	.LBB1_35
.LBB1_29:                               # %if.end.76
	cmpq	$0, -104(%rbp)
	je	.LBB1_33
# BB#30:                                # %land.lhs.true.78
	movq	-104(%rbp), %rax
	cmpl	$0, (%rax)
	jle	.LBB1_33
# BB#31:                                # %land.lhs.true.81
	movabsq	$.L.str.2, %rsi
	xorl	%edx, %edx
	leaq	-120(%rbp), %rcx
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rdi
	callq	FcPatternGetCharSet
	cmpl	$0, %eax
	jne	.LBB1_33
# BB#32:                                # %if.then.85
	movq	-120(%rbp), %rdi
	callq	FcCharSetCopy
	movq	-56(%rbp), %rdi
	movq	%rax, 8(%rdi)
	jmp	.LBB1_34
.LBB1_33:                               # %if.else.88
	callq	FcCharSetCreate
	movq	-56(%rbp), %rcx
	movq	%rax, 8(%rcx)
.LBB1_34:                               # %if.end.91
	jmp	.LBB1_35
.LBB1_35:                               # %finish
	cmpq	$0, -104(%rbp)
	je	.LBB1_37
# BB#36:                                # %if.then.93
	movq	-104(%rbp), %rdi
	callq	FcFontSetDestroy
.LBB1_37:                               # %if.end.94
	cmpq	$0, -112(%rbp)
	je	.LBB1_39
# BB#38:                                # %if.then.96
	movq	-112(%rbp), %rdi
	callq	FcObjectSetDestroy
.LBB1_39:                               # %if.end.97
	cmpq	$0, -96(%rbp)
	je	.LBB1_41
# BB#40:                                # %if.then.99
	movq	-96(%rbp), %rdi
	callq	FcPatternDestroy
.LBB1_41:                               # %if.end.100
	jmp	.LBB1_42
.LBB1_42:                               # %if.end.101
	jmp	.LBB1_43
.LBB1_43:                               # %if.end.102
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB1_44:                               # %return
	movq	-8(%rbp), %rax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	ftfont_lookup_cache, .Lfunc_end1-ftfont_lookup_cache
	.cfi_endproc

	.align	16, 0x90
	.type	ftfont_get_cache,@function
ftfont_get_cache:                       # @ftfont_get_cache
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
	movq	%rdi, -8(%rbp)
	movq	freetype_font_cache, %rax
	popq	%rbp
	retq
.Lfunc_end2:
	.size	ftfont_get_cache, .Lfunc_end2-ftfont_get_cache
	.cfi_endproc

	.align	16, 0x90
	.type	ftfont_list,@function
ftfont_list:                            # @ftfont_list
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$440, %rsp              # imm = 0x1B8
.Ltmp12:
	.cfi_offset %rbx, -56
.Ltmp13:
	.cfi_offset %r12, -48
.Ltmp14:
	.cfi_offset %r13, -40
.Ltmp15:
	.cfi_offset %r14, -32
.Ltmp16:
	.cfi_offset %r15, -24
	xorl	%eax, %eax
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -72(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -120(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -136(%rbp)
	movq	$0, -160(%rbp)
	movl	$-1, -164(%rbp)
	movq	$0, -176(%rbp)
	testb	$1, fc_initialized
	jne	.LBB3_2
# BB#1:                                 # %if.then
	callq	FcInit
	movb	$1, fc_initialized
	movl	%eax, -228(%rbp)        # 4-byte Spill
.LBB3_2:                                # %if.end
	leaq	-160(%rbp), %rdx
	leaq	-176(%rbp), %rcx
	leaq	-151(%rbp), %rsi
	movq	-64(%rbp), %rdi
	callq	ftfont_spec_pattern
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB3_4
# BB#3:                                 # %if.then.5
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -48(%rbp)
	jmp	.LBB3_86
.LBB3_4:                                # %if.end.7
	movabsq	$.L.str.2, %rsi
	xorl	%edx, %edx
	leaq	-128(%rbp), %rcx
	movq	-104(%rbp), %rdi
	callq	FcPatternGetCharSet
	cmpl	$0, %eax
	je	.LBB3_11
# BB#5:                                 # %if.then.9
	movl	$114, %edi
	callq	builtin_lisp_symbol
	movl	$12, %edi
	movl	%edi, %esi
	movq	-64(%rbp), %rdi
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	AREF
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	assq_no_quit
	xorl	%edi, %edi
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-248(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB3_10
# BB#6:                                 # %if.then.15
	movq	-72(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	movq	globals+2080, %rsi
	callq	assq_no_quit
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB3_9
# BB#7:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB3_8
	jmp	.LBB3_9
.LBB3_8:                                # %if.then.24
	movq	-72(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -136(%rbp)
.LBB3_9:                                # %if.end.28
	jmp	.LBB3_10
.LBB3_10:                               # %if.end.29
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -72(%rbp)
.LBB3_11:                               # %if.end.31
	movl	$10, %eax
	movl	%eax, %esi
	movq	-64(%rbp), %rdi
	callq	AREF
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB3_13
# BB#12:                                # %if.then.38
	movl	$10, %eax
	movl	%eax, %esi
	movq	-64(%rbp), %rdi
	callq	AREF
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -164(%rbp)
.LBB3_13:                               # %if.end.41
	movl	$2, %eax
	movl	%eax, %esi
	movq	-64(%rbp), %rdi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-256(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB3_19
# BB#14:                                # %if.then.46
	movq	-80(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	ftfont_resolve_generic_family
	xorl	%edi, %edi
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-264(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB3_18
# BB#15:                                # %if.then.51
	movabsq	$.L.str.4, %rsi
	movq	-104(%rbp), %rdi
	callq	FcPatternDel
	movq	-104(%rbp), %rdi
	movq	-184(%rbp), %rsi
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movl	%eax, -276(%rbp)        # 4-byte Spill
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SDATA
	movabsq	$.L.str.4, %rsi
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	FcPatternAddString
	cmpl	$0, %eax
	jne	.LBB3_17
# BB#16:                                # %if.then.57
	jmp	.LBB3_74
.LBB3_17:                               # %if.end.58
	jmp	.LBB3_18
.LBB3_18:                               # %if.end.59
	jmp	.LBB3_19
.LBB3_19:                               # %if.end.60
	movl	$3, %eax
	movl	%eax, %esi
	movq	-64(%rbp), %rdi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-288(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB3_22
# BB#20:                                # %land.lhs.true.65
	movq	-88(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SBYTES
	cmpq	$0, %rax
	jne	.LBB3_22
# BB#21:                                # %if.then.70
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -88(%rbp)
.LBB3_22:                               # %if.end.72
	movabsq	$.L.str.5, %rdi
	movabsq	$.L.str.4, %rsi
	movabsq	$.L.str.6, %rdx
	movabsq	$.L.str.7, %rcx
	movabsq	$.L.str.8, %r8
	movabsq	$.L.str.9, %r9
	movabsq	$.L.str.10, %rax
	movabsq	$.L.str.11, %r10
	movabsq	$.L.str.3, %r11
	movabsq	$.L.str, %rbx
	movabsq	$.L.str.1, %r14
	movabsq	$.L.str.12, %r15
	movabsq	$.L.str.13, %r12
	xorl	%r13d, %r13d
                                        # kill: R13<def> R13D<kill>
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	movq	%r11, 16(%rsp)
	movq	%rbx, 24(%rsp)
	movq	%r14, 32(%rsp)
	movq	%r15, 40(%rsp)
	movq	%r12, 48(%rsp)
	movq	$0, 56(%rsp)
	movb	$0, %al
	movq	%r13, -296(%rbp)        # 8-byte Spill
	callq	FcObjectSetBuild
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.LBB3_24
# BB#23:                                # %if.then.75
	jmp	.LBB3_74
.LBB3_24:                               # %if.end.76
	xorl	%edi, %edi
	movq	-136(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-304(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB3_26
# BB#25:                                # %if.then.80
	movabsq	$.L.str.2, %rsi
	movq	-120(%rbp), %rdi
	callq	FcObjectSetAdd
	movl	%eax, -308(%rbp)        # 4-byte Spill
.LBB3_26:                               # %if.end.82
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	-104(%rbp), %rsi
	movq	-120(%rbp), %rdx
	callq	FcFontList
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	je	.LBB3_28
# BB#27:                                # %lor.lhs.false
	movq	-112(%rbp), %rax
	cmpl	$0, (%rax)
	jne	.LBB3_29
.LBB3_28:                               # %if.then.87
	jmp	.LBB3_75
.LBB3_29:                               # %if.end.88
	movl	$0, -92(%rbp)
.LBB3_30:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_45 Depth 2
	movl	-92(%rbp), %eax
	movq	-112(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB3_73
# BB#31:                                # %for.body
                                        #   in Loop: Header=BB3_30 Depth=1
	cmpl	$0, -164(%rbp)
	jl	.LBB3_36
# BB#32:                                # %if.then.94
                                        #   in Loop: Header=BB3_30 Depth=1
	movabsq	$.L.str.10, %rsi
	xorl	%edx, %edx
	leaq	-196(%rbp), %rcx
	movslq	-92(%rbp), %rax
	movq	-112(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	(%rdi,%rax,8), %rdi
	callq	FcPatternGetInteger
	cmpl	$0, %eax
	jne	.LBB3_35
# BB#33:                                # %land.lhs.true.98
                                        #   in Loop: Header=BB3_30 Depth=1
	movl	-164(%rbp), %eax
	cmpl	-196(%rbp), %eax
	je	.LBB3_35
# BB#34:                                # %if.then.101
                                        #   in Loop: Header=BB3_30 Depth=1
	jmp	.LBB3_72
.LBB3_35:                               # %if.end.102
                                        #   in Loop: Header=BB3_30 Depth=1
	jmp	.LBB3_36
.LBB3_36:                               # %if.end.103
                                        #   in Loop: Header=BB3_30 Depth=1
	cmpb	$0, -151(%rbp)
	je	.LBB3_41
# BB#37:                                # %if.then.106
                                        #   in Loop: Header=BB3_30 Depth=1
	movabsq	$.L.str.12, %rsi
	xorl	%edx, %edx
	leaq	-208(%rbp), %rcx
	movslq	-92(%rbp), %rax
	movq	-112(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	(%rdi,%rax,8), %rdi
	callq	FcPatternGetString
	cmpl	$0, %eax
	jne	.LBB3_39
# BB#38:                                # %lor.lhs.false.114
                                        #   in Loop: Header=BB3_30 Depth=1
	leaq	-151(%rbp), %rsi
	movq	-208(%rbp), %rdi
	callq	strstr
	cmpq	$0, %rax
	jne	.LBB3_40
.LBB3_39:                               # %if.then.118
                                        #   in Loop: Header=BB3_30 Depth=1
	jmp	.LBB3_72
.LBB3_40:                               # %if.end.119
                                        #   in Loop: Header=BB3_30 Depth=1
	jmp	.LBB3_41
.LBB3_41:                               # %if.end.120
                                        #   in Loop: Header=BB3_30 Depth=1
	movq	-136(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB3_42
	jmp	.LBB3_58
.LBB3_42:                               # %if.then.122
                                        #   in Loop: Header=BB3_30 Depth=1
	movabsq	$.L.str.2, %rsi
	xorl	%edx, %edx
	leaq	-128(%rbp), %rcx
	movslq	-92(%rbp), %rax
	movq	-112(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	(%rdi,%rax,8), %rdi
	callq	FcPatternGetCharSet
	cmpl	$0, %eax
	je	.LBB3_44
# BB#43:                                # %if.then.129
                                        #   in Loop: Header=BB3_30 Depth=1
	jmp	.LBB3_72
.LBB3_44:                               # %if.end.130
                                        #   in Loop: Header=BB3_30 Depth=1
	movq	$0, -216(%rbp)
.LBB3_45:                               # %for.cond.131
                                        #   Parent Loop BB3_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-216(%rbp), %rax
	movq	-136(%rbp), %rdi
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	ASIZE
	movq	-320(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jge	.LBB3_55
# BB#46:                                # %for.body.135
                                        #   in Loop: Header=BB3_45 Depth=2
	movq	-136(%rbp), %rdi
	movq	-216(%rbp), %rsi
	callq	AREF
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB3_53
# BB#47:                                # %land.lhs.true.142
                                        #   in Loop: Header=BB3_45 Depth=2
	movb	$1, %al
	testb	$1, %al
	jne	.LBB3_49
	jmp	.LBB3_48
.LBB3_48:                               # %cond.true
                                        #   in Loop: Header=BB3_45 Depth=2
	movq	-136(%rbp), %rdi
	movq	-216(%rbp), %rsi
	callq	AREF
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	sarq	$2, %rax
	cmpq	%rax, %rsi
	jle	.LBB3_50
	jmp	.LBB3_53
.LBB3_49:                               # %cond.false
                                        #   in Loop: Header=BB3_45 Depth=2
	movq	-136(%rbp), %rdi
	movq	-216(%rbp), %rsi
	callq	AREF
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	sarq	$2, %rax
	cmpq	%rax, %rsi
	jg	.LBB3_53
.LBB3_50:                               # %land.lhs.true.151
                                        #   in Loop: Header=BB3_45 Depth=2
	movq	-136(%rbp), %rdi
	movq	-216(%rbp), %rsi
	callq	AREF
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	%ecx, %esi
	sarq	$2, %rax
	cmpq	%rsi, %rax
	jg	.LBB3_53
# BB#51:                                # %land.lhs.true.156
                                        #   in Loop: Header=BB3_45 Depth=2
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rax
	movq	-216(%rbp), %rsi
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	AREF
	sarq	$2, %rax
	movl	%eax, %ecx
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	callq	FcCharSetHasChar
	cmpl	$0, %eax
	je	.LBB3_53
# BB#52:                                # %if.then.162
                                        #   in Loop: Header=BB3_30 Depth=1
	jmp	.LBB3_55
.LBB3_53:                               # %if.end.163
                                        #   in Loop: Header=BB3_45 Depth=2
	jmp	.LBB3_54
.LBB3_54:                               # %for.inc
                                        #   in Loop: Header=BB3_45 Depth=2
	movq	-216(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -216(%rbp)
	jmp	.LBB3_45
.LBB3_55:                               # %for.end
                                        #   in Loop: Header=BB3_30 Depth=1
	movq	-216(%rbp), %rax
	movq	-136(%rbp), %rdi
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	ASIZE
	movq	-336(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jne	.LBB3_57
# BB#56:                                # %if.then.167
                                        #   in Loop: Header=BB3_30 Depth=1
	jmp	.LBB3_72
.LBB3_57:                               # %if.end.168
                                        #   in Loop: Header=BB3_30 Depth=1
	jmp	.LBB3_58
.LBB3_58:                               # %if.end.169
                                        #   in Loop: Header=BB3_30 Depth=1
	xorl	%edi, %edi
	movq	-88(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-344(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB3_60
# BB#59:                                # %lor.lhs.false.173
                                        #   in Loop: Header=BB3_30 Depth=1
	cmpq	$0, -176(%rbp)
	je	.LBB3_69
.LBB3_60:                               # %if.then.175
                                        #   in Loop: Header=BB3_30 Depth=1
	movslq	-92(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	get_adstyle_property
	xorl	%edi, %edi
	movq	%rax, -224(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-352(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB3_64
# BB#61:                                # %land.lhs.true.183
                                        #   in Loop: Header=BB3_30 Depth=1
	xorl	%edi, %edi
	movq	-224(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-360(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB3_63
# BB#62:                                # %lor.lhs.false.187
                                        #   in Loop: Header=BB3_30 Depth=1
	movq	-88(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SSDATA
	movq	-224(%rbp), %rdi
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SSDATA
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	xstrcasecmp
	cmpl	$0, %eax
	je	.LBB3_64
.LBB3_63:                               # %if.then.195
                                        #   in Loop: Header=BB3_30 Depth=1
	jmp	.LBB3_72
.LBB3_64:                               # %if.end.196
                                        #   in Loop: Header=BB3_30 Depth=1
	cmpq	$0, -176(%rbp)
	je	.LBB3_68
# BB#65:                                # %land.lhs.true.198
                                        #   in Loop: Header=BB3_30 Depth=1
	xorl	%edi, %edi
	movq	-224(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-376(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB3_68
# BB#66:                                # %land.lhs.true.202
                                        #   in Loop: Header=BB3_30 Depth=1
	movq	-176(%rbp), %rdi
	movq	-224(%rbp), %rax
	movq	%rdi, -384(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SSDATA
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	xstrcasecmp
	cmpl	$0, %eax
	je	.LBB3_68
# BB#67:                                # %if.then.207
                                        #   in Loop: Header=BB3_30 Depth=1
	jmp	.LBB3_72
.LBB3_68:                               # %if.end.208
                                        #   in Loop: Header=BB3_30 Depth=1
	jmp	.LBB3_69
.LBB3_69:                               # %if.end.209
                                        #   in Loop: Header=BB3_30 Depth=1
	movl	$12, %eax
	movl	%eax, %esi
	movslq	-92(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rdi
	movq	-64(%rbp), %rcx
	movq	%rdi, -392(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	AREF
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	ftfont_pattern_entity
	xorl	%edi, %edi
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-400(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB3_71
# BB#70:                                # %if.then.218
                                        #   in Loop: Header=BB3_30 Depth=1
	movq	-192(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	Fcons
	movq	%rax, -72(%rbp)
.LBB3_71:                               # %if.end.220
                                        #   in Loop: Header=BB3_30 Depth=1
	jmp	.LBB3_72
.LBB3_72:                               # %for.inc.221
                                        #   in Loop: Header=BB3_30 Depth=1
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB3_30
.LBB3_73:                               # %for.end.223
	movq	-72(%rbp), %rdi
	callq	Fnreverse
	movq	%rax, -72(%rbp)
	jmp	.LBB3_75
.LBB3_74:                               # %err
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -72(%rbp)
.LBB3_75:                               # %finish
	jmp	.LBB3_76
.LBB3_76:                               # %do.body
	movl	$901, %edi              # imm = 0x385
	movq	globals+832, %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-408(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB3_78
# BB#77:                                # %if.then.229
	movabsq	$.L.str.14, %rdi
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdx
	callq	font_add_log
.LBB3_78:                               # %if.end.230
	jmp	.LBB3_79
.LBB3_79:                               # %do.end
	cmpq	$0, -120(%rbp)
	je	.LBB3_81
# BB#80:                                # %if.then.232
	movq	-120(%rbp), %rdi
	callq	FcObjectSetDestroy
.LBB3_81:                               # %if.end.233
	cmpq	$0, -112(%rbp)
	je	.LBB3_83
# BB#82:                                # %if.then.235
	movq	-112(%rbp), %rdi
	callq	FcFontSetDestroy
.LBB3_83:                               # %if.end.236
	cmpq	$0, -104(%rbp)
	je	.LBB3_85
# BB#84:                                # %if.then.238
	movq	-104(%rbp), %rdi
	callq	FcPatternDestroy
.LBB3_85:                               # %if.end.239
	movq	-72(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB3_86:                               # %return
	movq	-48(%rbp), %rax
	addq	$440, %rsp              # imm = 0x1B8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	ftfont_list, .Lfunc_end3-ftfont_list
	.cfi_endproc

	.align	16, 0x90
	.type	ftfont_match,@function
ftfont_match:                           # @ftfont_match
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp17:
	.cfi_def_cfa_offset 16
.Ltmp18:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp19:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	testb	$1, fc_initialized
	jne	.LBB4_2
# BB#1:                                 # %if.then
	callq	FcInit
	movb	$1, fc_initialized
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB4_2:                                # %if.end
	leaq	-80(%rbp), %rdx
	leaq	-88(%rbp), %rcx
	leaq	-67(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	ftfont_spec_pattern
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB4_4
# BB#3:                                 # %if.then.4
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB4_19
.LBB4_4:                                # %if.end.6
	movl	$8, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rdi
	callq	AREF
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB4_6
# BB#5:                                 # %if.then.10
	movl	$8, %eax
	movl	%eax, %esi
	movl	$2, -104(%rbp)
	movq	-24(%rbp), %rdi
	callq	AREF
	movabsq	$.L.str.9, %rsi
	xorl	%r8d, %r8d
	sarq	$2, %rax
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, -96(%rbp)
	movq	-40(%rbp), %rdi
	movl	-104(%rbp), %edx
	movq	-96(%rbp), %rcx
	callq	FcPatternAdd
	movl	%eax, -112(%rbp)        # 4-byte Spill
.LBB4_6:                                # %if.end.14
	xorl	%eax, %eax
	movl	%eax, %edi
	xorl	%edx, %edx
	movq	-40(%rbp), %rsi
	callq	FcConfigSubstitute
	cmpl	$1, %eax
	jne	.LBB4_14
# BB#7:                                 # %if.then.18
	movq	-40(%rbp), %rdi
	callq	FcDefaultSubstitute
	xorl	%eax, %eax
	movl	%eax, %edi
	leaq	-52(%rbp), %rdx
	movq	-40(%rbp), %rsi
	callq	FcFontMatch
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB4_13
# BB#8:                                 # %if.then.21
	movl	$12, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	AREF
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	ftfont_pattern_entity
	movq	%rax, -32(%rbp)
	movq	-48(%rbp), %rdi
	callq	FcPatternDestroy
	movl	$2, %edx
	movl	%edx, %esi
	movq	-24(%rbp), %rdi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB4_12
# BB#9:                                 # %land.lhs.true
	movl	$2, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rdi
	callq	AREF
	movq	ftfont_generic_family_list, %rsi
	movq	%rax, %rdi
	callq	assq_no_quit
	xorl	%edi, %edi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB4_12
# BB#10:                                # %land.lhs.true.33
	movl	$2, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rdi
	callq	AREF
	movl	$2, %ecx
	movl	%ecx, %esi
	movq	-32(%rbp), %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	AREF
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fstring_equal
	xorl	%edi, %edi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB4_12
# BB#11:                                # %if.then.40
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)
.LBB4_12:                               # %if.end.42
	jmp	.LBB4_13
.LBB4_13:                               # %if.end.43
	jmp	.LBB4_14
.LBB4_14:                               # %if.end.44
	movq	-40(%rbp), %rdi
	callq	FcPatternDestroy
# BB#15:                                # %do.body
	movl	$901, %edi              # imm = 0x385
	movq	globals+832, %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB4_17
# BB#16:                                # %if.then.48
	movabsq	$.L.str.70, %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	font_add_log
.LBB4_17:                               # %if.end.49
	jmp	.LBB4_18
.LBB4_18:                               # %do.end
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB4_19:                               # %return
	movq	-8(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	ftfont_match, .Lfunc_end4-ftfont_match
	.cfi_endproc

	.align	16, 0x90
	.type	ftfont_list_family,@function
ftfont_list_family:                     # @ftfont_list_family
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp20:
	.cfi_def_cfa_offset 16
.Ltmp21:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp22:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	testb	$1, fc_initialized
	jne	.LBB5_2
# BB#1:                                 # %if.then
	callq	FcInit
	movb	$1, fc_initialized
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB5_2:                                # %if.end
	callq	FcPatternCreate
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB5_4
# BB#3:                                 # %if.then.4
	jmp	.LBB5_15
.LBB5_4:                                # %if.end.5
	movabsq	$.L.str.4, %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	movb	$0, %al
	callq	FcObjectSetBuild
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB5_6
# BB#5:                                 # %if.then.8
	jmp	.LBB5_15
.LBB5_6:                                # %if.end.9
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	FcFontList
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB5_8
# BB#7:                                 # %if.then.12
	jmp	.LBB5_15
.LBB5_8:                                # %if.end.13
	movl	$0, -44(%rbp)
.LBB5_9:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB5_14
# BB#10:                                # %for.body
                                        #   in Loop: Header=BB5_9 Depth=1
	movabsq	$.L.str.4, %rsi
	xorl	%edx, %edx
	leaq	-64(%rbp), %rcx
	movslq	-44(%rbp), %rax
	movq	-32(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	(%rdi,%rax,8), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	FcPatternGetString
	cmpl	$0, %eax
	jne	.LBB5_12
# BB#11:                                # %if.then.16
                                        #   in Loop: Header=BB5_9 Depth=1
	movq	-64(%rbp), %rdi
	callq	intern
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -16(%rbp)
.LBB5_12:                               # %if.end.19
                                        #   in Loop: Header=BB5_9 Depth=1
	jmp	.LBB5_13
.LBB5_13:                               # %for.inc
                                        #   in Loop: Header=BB5_9 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB5_9
.LBB5_14:                               # %for.end
	jmp	.LBB5_15
.LBB5_15:                               # %finish
	cmpq	$0, -40(%rbp)
	je	.LBB5_17
# BB#16:                                # %if.then.21
	movq	-40(%rbp), %rdi
	callq	FcObjectSetDestroy
.LBB5_17:                               # %if.end.22
	cmpq	$0, -32(%rbp)
	je	.LBB5_19
# BB#18:                                # %if.then.24
	movq	-32(%rbp), %rdi
	callq	FcFontSetDestroy
.LBB5_19:                               # %if.end.25
	cmpq	$0, -24(%rbp)
	je	.LBB5_21
# BB#20:                                # %if.then.27
	movq	-24(%rbp), %rdi
	callq	FcPatternDestroy
.LBB5_21:                               # %if.end.28
	movq	-16(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	ftfont_list_family, .Lfunc_end5-ftfont_list_family
	.cfi_endproc

	.align	16, 0x90
	.type	ftfont_open,@function
ftfont_open:                            # @ftfont_open
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp23:
	.cfi_def_cfa_offset 16
.Ltmp24:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp25:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$8, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rcx, %rsi
	callq	AREF
	sarq	$2, %rax
	movl	%eax, %edx
	movl	%edx, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movl	-20(%rbp), %eax
	movl	%eax, -36(%rbp)
.LBB6_2:                                # %if.end
	movl	$32, %edi
	movl	$466, %eax              # imm = 0x1D2
	movl	%edi, -40(%rbp)         # 4-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdx
	movl	-36(%rbp), %edi
	movl	%edi, %ecx
	cvtsi2sdq	%rcx, %xmm0
	movl	-40(%rbp), %edi         # 4-byte Reload
	movq	%rax, %rsi
	callq	font_build_object
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rcx
	callq	ftfont_open2
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	ftfont_open, .Lfunc_end6-ftfont_open
	.cfi_endproc

	.align	16, 0x90
	.type	ftfont_close,@function
ftfont_close:                           # @ftfont_close
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
.Ltmp27:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp28:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	136(%rdi), %rdi
	movq	-16(%rbp), %rax
	movslq	224(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rsi
	callq	Fcons
	xorl	%esi, %esi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	ftfont_lookup_cache
	movl	$1, %esi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	XSAVE_INTEGER
	movl	$1, %esi
	subq	$1, %rax
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	set_save_integer
	movl	$1, %esi
	movq	-24(%rbp), %rdi
	callq	XSAVE_INTEGER
	cmpq	$0, %rax
	jne	.LBB7_2
# BB#1:                                 # %if.then
	xorl	%esi, %esi
	movq	-24(%rbp), %rdi
	callq	XSAVE_POINTER
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	callq	FT_Done_Face
	movq	-40(%rbp), %rdi
	movq	$0, (%rdi)
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB7_3
.LBB7_2:                                # %if.else
	movq	-16(%rbp), %rax
	movq	216(%rax), %rdi
	callq	FT_Done_Size
	movl	%eax, -56(%rbp)         # 4-byte Spill
.LBB7_3:                                # %if.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	ftfont_close, .Lfunc_end7-ftfont_close
	.cfi_endproc

	.align	16, 0x90
	.type	ftfont_has_char,@function
ftfont_has_char:                        # @ftfont_has_char
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp29:
	.cfi_def_cfa_offset 16
.Ltmp30:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp31:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movl	$3, %eax
	movl	%eax, %ecx
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	$0, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rcx, %rsi
	callq	AREF
	movl	$583, %edi              # imm = 0x247
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB8_3
# BB#1:                                 # %land.lhs.true
	cmpl	$0, charset_jisx0208
	jl	.LBB8_3
# BB#2:                                 # %if.then
	movq	charset_table, %rax
	movslq	charset_jisx0208, %rcx
	imulq	$328, %rcx, %rcx        # imm = 0x148
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB8_7
.LBB8_3:                                # %if.else
	movl	$3, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	AREF
	movl	$597, %edi              # imm = 0x255
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB8_6
# BB#4:                                 # %land.lhs.true.6
	cmpl	$0, charset_ksc5601
	jl	.LBB8_6
# BB#5:                                 # %if.then.8
	movq	charset_table, %rax
	movslq	charset_ksc5601, %rcx
	imulq	$328, %rcx, %rcx        # imm = 0x148
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
.LBB8_6:                                # %if.end
	jmp	.LBB8_7
.LBB8_7:                                # %if.end.11
	cmpq	$0, -32(%rbp)
	je	.LBB8_40
# BB#8:                                 # %if.then.12
	movb	$1, %al
	testb	$1, %al
	jne	.LBB8_9
	jmp	.LBB8_10
.LBB8_9:                                # %cond.true
	movl	-20(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB8_11
	jmp	.LBB8_13
.LBB8_10:                               # %cond.false
	movslq	-20(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB8_13
.LBB8_11:                               # %land.lhs.true.17
	movq	-32(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$2, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB8_13
# BB#12:                                # %cond.true.19
	movl	-20(%rbp), %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB8_39
.LBB8_13:                               # %cond.false.20
	movq	-32(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$5, %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB8_16
# BB#14:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	cmpl	$2, 104(%rax)
	je	.LBB8_16
# BB#15:                                # %lor.lhs.false.28
	movq	-32(%rbp), %rax
	cmpl	$3, 104(%rax)
	jne	.LBB8_17
.LBB8_16:                               # %cond.true.32
	movq	-32(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	encode_char
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jmp	.LBB8_38
.LBB8_17:                               # %cond.false.34
	movl	-20(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	120(%rcx), %eax
	jl	.LBB8_19
# BB#18:                                # %lor.lhs.false.37
	movl	-20(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	124(%rcx), %eax
	jle	.LBB8_20
.LBB8_19:                               # %cond.true.40
	movq	-32(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	jmp	.LBB8_37
.LBB8_20:                               # %cond.false.41
	movq	-32(%rbp), %rax
	cmpl	$0, 104(%rax)
	jne	.LBB8_25
# BB#21:                                # %cond.true.45
	movq	-32(%rbp), %rax
	movb	88(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB8_23
# BB#22:                                # %cond.true.50
	movl	-20(%rbp), %eax
	movq	-32(%rbp), %rcx
	subl	324(%rcx), %eax
	movq	-32(%rbp), %rcx
	addl	108(%rcx), %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	jmp	.LBB8_24
.LBB8_23:                               # %cond.false.52
	movq	-32(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	encode_char
	movl	%eax, -80(%rbp)         # 4-byte Spill
.LBB8_24:                               # %cond.end
	movl	-80(%rbp), %eax         # 4-byte Reload
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jmp	.LBB8_36
.LBB8_25:                               # %cond.false.54
	movq	-32(%rbp), %rax
	cmpl	$1, 104(%rax)
	jne	.LBB8_34
# BB#26:                                # %cond.true.58
	movq	-32(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$4, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB8_32
# BB#27:                                # %land.lhs.true.64
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-32(%rbp), %rdi
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
	jne	.LBB8_28
	jmp	.LBB8_32
.LBB8_28:                               # %cond.true.70
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-32(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	$5, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movl	-20(%rbp), %esi
	movq	%rax, %rdi
	callq	CHAR_TABLE_REF
	xorl	%edi, %edi
	movq	%rax, charset_work
	movq	charset_work, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB8_30
# BB#29:                                # %cond.true.79
	movq	-32(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, -100(%rbp)        # 4-byte Spill
	jmp	.LBB8_31
.LBB8_30:                               # %cond.false.81
	movq	charset_work, %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -100(%rbp)        # 4-byte Spill
.LBB8_31:                               # %cond.end.83
	movl	-100(%rbp), %eax        # 4-byte Reload
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB8_33
.LBB8_32:                               # %cond.false.85
	movq	-32(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	encode_char
	movl	%eax, -104(%rbp)        # 4-byte Spill
.LBB8_33:                               # %cond.end.87
	movl	-104(%rbp), %eax        # 4-byte Reload
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB8_35
.LBB8_34:                               # %cond.false.89
	movq	-32(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	encode_char
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB8_35:                               # %cond.end.91
	movl	-108(%rbp), %eax        # 4-byte Reload
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB8_36:                               # %cond.end.93
	movl	-84(%rbp), %eax         # 4-byte Reload
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB8_37:                               # %cond.end.95
	movl	-76(%rbp), %eax         # 4-byte Reload
	movl	%eax, -72(%rbp)         # 4-byte Spill
.LBB8_38:                               # %cond.end.97
	movl	-72(%rbp), %eax         # 4-byte Reload
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB8_39:                               # %cond.end.99
	movl	-68(%rbp), %eax         # 4-byte Reload
	movq	-32(%rbp), %rcx
	cmpl	128(%rcx), %eax
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB8_43
.LBB8_40:                               # %if.end.104
	movq	-16(%rbp), %rdi
	callq	FONT_ENTITY_P
	testb	$1, %al
	jne	.LBB8_41
	jmp	.LBB8_42
.LBB8_41:                               # %if.then.106
	movq	-16(%rbp), %rdi
	callq	ftfont_get_fc_charset
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	FcCharSetHasChar
	cmpl	$1, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB8_43
.LBB8_42:                               # %if.else.111
	movq	-16(%rbp), %rdi
	callq	XFONT_OBJECT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	216(%rax), %rax
	movq	(%rax), %rdi
	movslq	-20(%rbp), %rsi
	callq	FT_Get_Char_Index
	cmpl	$0, %eax
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -4(%rbp)
.LBB8_43:                               # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	ftfont_has_char, .Lfunc_end8-ftfont_has_char
	.cfi_endproc

	.align	16, 0x90
	.type	ftfont_encode_char,@function
ftfont_encode_char:                     # @ftfont_encode_char
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp32:
	.cfi_def_cfa_offset 16
.Ltmp33:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp34:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	216(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -32(%rbp)
	movslq	-12(%rbp), %rdi
	movq	%rdi, -40(%rbp)
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	FT_Get_Char_Index
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jbe	.LBB9_2
# BB#1:                                 # %cond.true
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	jmp	.LBB9_3
.LBB9_2:                                # %cond.false
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -48(%rbp)         # 4-byte Spill
	jmp	.LBB9_3
.LBB9_3:                                # %cond.end
	movl	-48(%rbp), %eax         # 4-byte Reload
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	ftfont_encode_char, .Lfunc_end9-ftfont_encode_char
	.cfi_endproc

	.align	16, 0x90
	.type	ftfont_text_extents,@function
ftfont_text_extents:                    # @ftfont_text_extents
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp35:
	.cfi_def_cfa_offset 16
.Ltmp36:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp37:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	movq	-40(%rbp), %rcx
	movq	216(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -48(%rbp)
	movl	$0, -56(%rbp)
	movq	-40(%rbp), %rcx
	movq	216(%rcx), %rcx
	movq	-48(%rbp), %rsi
	cmpq	160(%rsi), %rcx
	je	.LBB10_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	216(%rax), %rdi
	callq	FT_Activate_Size
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB10_2:                               # %if.end
	movl	$0, -52(%rbp)
	movb	$1, -57(%rbp)
.LBB10_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB10_19
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB10_3 Depth=1
	xorl	%edx, %edx
	movq	-48(%rbp), %rdi
	movslq	-52(%rbp), %rax
	movq	-16(%rbp), %rcx
	movl	(%rcx,%rax,4), %esi
	callq	FT_Load_Glyph
	cmpl	$0, %eax
	jne	.LBB10_16
# BB#5:                                 # %if.then.6
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	-48(%rbp), %rax
	movq	152(%rax), %rax
	addq	$48, %rax
	movq	%rax, -72(%rbp)
	testb	$1, -57(%rbp)
	je	.LBB10_7
# BB#6:                                 # %if.then.8
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	sarq	$6, %rax
	movw	%ax, %cx
	movq	-32(%rbp), %rax
	movw	%cx, (%rax)
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movq	-72(%rbp), %rdx
	addq	(%rdx), %rax
	sarq	$6, %rax
	movw	%ax, %cx
	movq	-32(%rbp), %rax
	movw	%cx, 2(%rax)
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	sarq	$6, %rax
	movw	%ax, %cx
	movq	-32(%rbp), %rax
	movw	%cx, 6(%rax)
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	-72(%rbp), %rdx
	subq	24(%rdx), %rax
	sarq	$6, %rax
	movw	%ax, %cx
	movq	-32(%rbp), %rax
	movw	%cx, 8(%rax)
	movb	$0, -57(%rbp)
.LBB10_7:                               # %if.end.18
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	-32(%rbp), %rax
	movswq	(%rax), %rax
	movslq	-56(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	16(%rdx), %rdx
	sarq	$6, %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jle	.LBB10_9
# BB#8:                                 # %if.then.27
                                        #   in Loop: Header=BB10_3 Depth=1
	movslq	-56(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	16(%rcx), %rcx
	sarq	$6, %rcx
	addq	%rcx, %rax
	movw	%ax, %dx
	movq	-32(%rbp), %rax
	movw	%dx, (%rax)
.LBB10_9:                               # %if.end.34
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	-32(%rbp), %rax
	movswq	2(%rax), %rax
	movslq	-56(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	16(%rdx), %rdx
	movq	-72(%rbp), %rsi
	addq	(%rsi), %rdx
	sarq	$6, %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jge	.LBB10_11
# BB#10:                                # %if.then.45
                                        #   in Loop: Header=BB10_3 Depth=1
	movslq	-56(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	-72(%rbp), %rdx
	addq	(%rdx), %rcx
	sarq	$6, %rcx
	addq	%rcx, %rax
	movw	%ax, %si
	movq	-32(%rbp), %rax
	movw	%si, 2(%rax)
.LBB10_11:                              # %if.end.54
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	-32(%rbp), %rax
	movswq	6(%rax), %rax
	movq	-72(%rbp), %rcx
	movq	24(%rcx), %rcx
	sarq	$6, %rcx
	cmpq	%rcx, %rax
	jge	.LBB10_13
# BB#12:                                # %if.then.61
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	sarq	$6, %rax
	movw	%ax, %cx
	movq	-32(%rbp), %rax
	movw	%cx, 6(%rax)
.LBB10_13:                              # %if.end.66
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	-32(%rbp), %rax
	movswq	8(%rax), %rax
	movq	-72(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-72(%rbp), %rdx
	subq	24(%rdx), %rcx
	sarq	$6, %rcx
	cmpq	%rcx, %rax
	jle	.LBB10_15
# BB#14:                                # %if.then.75
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	-72(%rbp), %rcx
	subq	24(%rcx), %rax
	sarq	$6, %rax
	movw	%ax, %dx
	movq	-32(%rbp), %rax
	movw	%dx, 8(%rax)
.LBB10_15:                              # %if.end.82
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	sarq	$6, %rax
	movslq	-56(%rbp), %rcx
	addq	%rax, %rcx
	movl	%ecx, %edx
	movl	%edx, -56(%rbp)
	jmp	.LBB10_17
.LBB10_16:                              # %if.else
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	-8(%rbp), %rax
	movl	160(%rax), %ecx
	addl	-56(%rbp), %ecx
	movl	%ecx, -56(%rbp)
.LBB10_17:                              # %if.end.88
                                        #   in Loop: Header=BB10_3 Depth=1
	jmp	.LBB10_18
.LBB10_18:                              # %for.inc
                                        #   in Loop: Header=BB10_3 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB10_3
.LBB10_19:                              # %for.end
	movl	-56(%rbp), %eax
	movw	%ax, %cx
	movq	-32(%rbp), %rdx
	movw	%cx, 4(%rdx)
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	ftfont_text_extents, .Lfunc_end10-ftfont_text_extents
	.cfi_endproc

	.align	16, 0x90
	.type	ftfont_get_bitmap,@function
ftfont_get_bitmap:                      # @ftfont_get_bitmap
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp38:
	.cfi_def_cfa_offset 16
.Ltmp39:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp40:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -48(%rbp)
	movq	-48(%rbp), %rdx
	movq	216(%rdx), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -56(%rbp)
	movl	$4, -60(%rbp)
	movq	-48(%rbp), %rdx
	movq	216(%rdx), %rdx
	movq	-56(%rbp), %rdi
	cmpq	160(%rdi), %rdx
	je	.LBB11_2
# BB#1:                                 # %if.then
	movq	-48(%rbp), %rax
	movq	216(%rax), %rdi
	callq	FT_Activate_Size
	movl	%eax, -64(%rbp)         # 4-byte Spill
.LBB11_2:                               # %if.end
	cmpl	$1, -36(%rbp)
	jne	.LBB11_4
# BB#3:                                 # %if.then.4
	movl	-60(%rbp), %eax
	orl	$131072, %eax           # imm = 0x20000
	movl	%eax, -60(%rbp)
	jmp	.LBB11_7
.LBB11_4:                               # %if.else
	cmpl	$8, -36(%rbp)
	je	.LBB11_6
# BB#5:                                 # %if.then.6
	movl	$-1, -4(%rbp)
	jmp	.LBB11_21
.LBB11_6:                               # %if.end.7
	jmp	.LBB11_7
.LBB11_7:                               # %if.end.8
	movq	-56(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-60(%rbp), %edx
	callq	FT_Load_Glyph
	cmpl	$0, %eax
	je	.LBB11_9
# BB#8:                                 # %if.then.11
	movl	$-1, -4(%rbp)
	jmp	.LBB11_21
.LBB11_9:                               # %if.end.12
	movq	-56(%rbp), %rax
	movq	152(%rax), %rax
	movsbl	178(%rax), %ecx
	cmpl	$1, %ecx
	jne	.LBB11_11
# BB#10:                                # %cond.true
	movl	$1, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB11_18
.LBB11_11:                              # %cond.false
	movq	-56(%rbp), %rax
	movq	152(%rax), %rax
	movsbl	178(%rax), %ecx
	cmpl	$2, %ecx
	jne	.LBB11_13
# BB#12:                                # %cond.true.22
	movl	$8, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jmp	.LBB11_17
.LBB11_13:                              # %cond.false.23
	movq	-56(%rbp), %rax
	movq	152(%rax), %rax
	movsbl	178(%rax), %ecx
	cmpl	$5, %ecx
	jne	.LBB11_15
# BB#14:                                # %cond.true.30
	movl	$8, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB11_16
.LBB11_15:                              # %cond.false.31
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	$8, %ecx
	movq	-56(%rbp), %rdx
	movq	152(%rdx), %rdx
	movsbl	178(%rdx), %esi
	cmpl	$6, %esi
	cmovel	%ecx, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB11_16:                              # %cond.end
	movl	-76(%rbp), %eax         # 4-byte Reload
	movl	%eax, -72(%rbp)         # 4-byte Spill
.LBB11_17:                              # %cond.end.39
	movl	-72(%rbp), %eax         # 4-byte Reload
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB11_18:                              # %cond.end.41
	movl	-68(%rbp), %eax         # 4-byte Reload
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-32(%rbp), %rcx
	cmpl	$0, (%rcx)
	jge	.LBB11_20
# BB#19:                                # %if.then.47
	movl	$-1, -4(%rbp)
	jmp	.LBB11_21
.LBB11_20:                              # %if.end.48
	movq	-56(%rbp), %rax
	movq	152(%rax), %rax
	movl	152(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 4(%rax)
	movq	-56(%rbp), %rax
	movq	152(%rax), %rax
	movl	156(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 8(%rax)
	movq	-56(%rbp), %rax
	movq	152(%rax), %rax
	movl	160(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 12(%rax)
	movq	-56(%rbp), %rax
	movq	152(%rax), %rax
	movq	168(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-56(%rbp), %rax
	movq	152(%rax), %rax
	movl	192(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 24(%rax)
	movq	-56(%rbp), %rax
	movq	152(%rax), %rax
	movl	196(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 28(%rax)
	movq	-56(%rbp), %rax
	movq	152(%rax), %rax
	movq	80(%rax), %rax
	sarq	$6, %rax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 32(%rax)
	movl	$0, -4(%rbp)
.LBB11_21:                              # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	ftfont_get_bitmap, .Lfunc_end11-ftfont_get_bitmap
	.cfi_endproc

	.align	16, 0x90
	.type	ftfont_anchor_point,@function
ftfont_anchor_point:                    # @ftfont_anchor_point
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp41:
	.cfi_def_cfa_offset 16
.Ltmp42:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp43:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -48(%rbp)
	movq	-48(%rbp), %rcx
	movq	216(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -56(%rbp)
	movq	-48(%rbp), %rcx
	movq	216(%rcx), %rcx
	movq	-56(%rbp), %rdi
	cmpq	160(%rdi), %rcx
	je	.LBB12_2
# BB#1:                                 # %if.then
	movq	-48(%rbp), %rax
	movq	216(%rax), %rdi
	callq	FT_Activate_Size
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB12_2:                               # %if.end
	xorl	%edx, %edx
	movq	-56(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	FT_Load_Glyph
	cmpl	$0, %eax
	je	.LBB12_4
# BB#3:                                 # %if.then.5
	movl	$-1, -4(%rbp)
	jmp	.LBB12_9
.LBB12_4:                               # %if.end.6
	movq	-56(%rbp), %rax
	movq	152(%rax), %rax
	cmpl	$1869968492, 144(%rax)  # imm = 0x6F75746C
	je	.LBB12_6
# BB#5:                                 # %if.then.8
	movl	$-1, -4(%rbp)
	jmp	.LBB12_9
.LBB12_6:                               # %if.end.9
	movl	-24(%rbp), %eax
	movq	-56(%rbp), %rcx
	movq	152(%rcx), %rcx
	movswl	202(%rcx), %edx
	cmpl	%edx, %eax
	jl	.LBB12_8
# BB#7:                                 # %if.then.13
	movl	$-1, -4(%rbp)
	jmp	.LBB12_9
.LBB12_8:                               # %if.end.14
	movslq	-24(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	152(%rcx), %rcx
	shlq	$4, %rax
	addq	208(%rcx), %rax
	movq	(%rax), %rax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	movslq	-24(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	152(%rcx), %rcx
	shlq	$4, %rax
	addq	208(%rcx), %rax
	movq	8(%rax), %rax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	movl	$0, -4(%rbp)
.LBB12_9:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	ftfont_anchor_point, .Lfunc_end12-ftfont_anchor_point
	.cfi_endproc

	.align	16, 0x90
	.type	ftfont_filter_properties,@function
ftfont_filter_properties:               # @ftfont_filter_properties
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp44:
	.cfi_def_cfa_offset 16
.Ltmp45:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp46:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$ftfont_booleans, %rdx
	movabsq	$ftfont_non_booleans, %rcx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	font_filter_properties
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	ftfont_filter_properties, .Lfunc_end13-ftfont_filter_properties
	.cfi_endproc

	.align	16, 0x90
	.type	ftfont_combining_capability,@function
ftfont_combining_capability:            # @ftfont_combining_capability
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp47:
	.cfi_def_cfa_offset 16
.Ltmp48:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp49:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	ftfont_combining_capability, .Lfunc_end14-ftfont_combining_capability
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI15_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	ftfont_open2
	.align	16, 0x90
	.type	ftfont_open2,@function
ftfont_open2:                           # @ftfont_open2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp50:
	.cfi_def_cfa_offset 16
.Ltmp51:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp52:
	.cfi_def_cfa_register %rbp
	subq	$224, %rsp
	movl	$45, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movl	$12, %edx
	movl	%edx, %esi
	movq	-24(%rbp), %rdi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	AREF
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	assq_no_quit
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %edx
	cmpl	$3, %edx
	je	.LBB15_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB15_49
.LBB15_2:                               # %if.end
	xorl	%esi, %esi
	movq	-96(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-24(%rbp), %rdi
	callq	ftfont_lookup_cache
	xorl	%edi, %edi
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB15_4
# BB#3:                                 # %if.then.9
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB15_49
.LBB15_4:                               # %if.end.11
	xorl	%esi, %esi
	movq	-96(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-96(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-120(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-120(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	XSAVE_POINTER
	movl	$1, %esi
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-96(%rbp), %rdi
	callq	XSAVE_INTEGER
	cmpq	$0, %rax
	jle	.LBB15_10
# BB#5:                                 # %if.then.27
	leaq	-80(%rbp), %rsi
	movq	-72(%rbp), %rdi
	callq	FT_New_Size
	cmpl	$0, %eax
	je	.LBB15_7
# BB#6:                                 # %if.then.31
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB15_49
.LBB15_7:                               # %if.end.33
	movq	-80(%rbp), %rdi
	callq	FT_Activate_Size
	cmpl	$0, %eax
	je	.LBB15_9
# BB#8:                                 # %if.then.37
	movq	-80(%rbp), %rdi
	callq	FT_Done_Size
	xorl	%edi, %edi
	movl	%eax, -172(%rbp)        # 4-byte Spill
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB15_49
.LBB15_9:                               # %if.end.40
	jmp	.LBB15_10
.LBB15_10:                              # %if.end.41
	movl	$1, %esi
	movq	-96(%rbp), %rdi
	movq	-96(%rbp), %rax
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	XSAVE_INTEGER
	movl	$1, %esi
	addq	$1, %rax
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	set_save_integer
	movl	$8, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-24(%rbp), %rdi
	callq	AREF
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -84(%rbp)
	cmpl	$0, -84(%rbp)
	jne	.LBB15_12
# BB#11:                                # %if.then.47
	movl	-28(%rbp), %eax
	movl	%eax, -84(%rbp)
.LBB15_12:                              # %if.end.48
	movq	-72(%rbp), %rdi
	movl	-84(%rbp), %esi
	movl	-84(%rbp), %edx
	callq	FT_Set_Pixel_Sizes
	cmpl	$0, %eax
	je	.LBB15_16
# BB#13:                                # %if.then.52
	movl	$1, %esi
	movq	-96(%rbp), %rdi
	callq	XSAVE_INTEGER
	cmpq	$0, %rax
	jne	.LBB15_15
# BB#14:                                # %if.then.56
	movq	-72(%rbp), %rdi
	callq	FT_Done_Face
	movl	%eax, -188(%rbp)        # 4-byte Spill
.LBB15_15:                              # %if.end.58
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB15_49
.LBB15_16:                              # %if.end.60
	movl	$11, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rdi
	movq	-104(%rbp), %rdx
	movl	$16, %eax
	movl	%eax, %ecx
	movq	%rsi, -200(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	callq	ASET
	movq	-40(%rbp), %rdi
	callq	XFONT_OBJECT
	movq	%rax, -56(%rbp)
	movq	%rax, -48(%rbp)
	movq	-72(%rbp), %rcx
	movq	160(%rcx), %rcx
	movq	%rcx, 216(%rax)
	movq	-112(%rbp), %rax
	shrq	$2, %rax
	movl	%eax, %r8d
	movq	-48(%rbp), %rax
	movl	%r8d, 224(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 232(%rax)
	movl	-84(%rbp), %r8d
	movq	-56(%rbp), %rax
	movl	%r8d, 152(%rax)
	movq	-56(%rbp), %rax
	movq	$ftfont_driver, 208(%rax)
	movq	-56(%rbp), %rax
	movl	$-1, 204(%rax)
	movq	-56(%rbp), %rax
	movl	$-1, 200(%rax)
	movq	-72(%rbp), %rax
	movzwl	136(%rax), %r8d
	cvtsi2sdl	%r8d, %xmm0
	movsd	%xmm0, -144(%rbp)
	movq	-24(%rbp), %rdi
	movq	-200(%rbp), %rsi        # 8-byte Reload
	callq	AREF
	xorl	%r8d, %r8d
	movb	%r8b, %r9b
	andq	$7, %rax
	movl	%eax, %r8d
	andl	$-5, %r8d
	cmpl	$2, %r8d
	movb	%r9b, -201(%rbp)        # 1-byte Spill
	jne	.LBB15_18
# BB#17:                                # %land.rhs
	movl	$11, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rdi
	callq	AREF
	sarq	$2, %rax
	cmpq	$0, %rax
	sete	%cl
	movb	%cl, -201(%rbp)         # 1-byte Spill
.LBB15_18:                              # %land.end
	movb	-201(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -121(%rbp)
	testb	$1, -121(%rbp)
	je	.LBB15_20
# BB#19:                                # %if.then.78
	movsd	.LCPI15_0, %xmm0        # xmm0 = mem[0],zero
	movq	-72(%rbp), %rax
	movswl	138(%rax), %ecx
	movl	-84(%rbp), %edx
	imull	%edx, %ecx
	movl	%ecx, %eax
	cvtsi2sdq	%rax, %xmm1
	movsd	-144(%rbp), %xmm2       # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	movsd	.LCPI15_0(%rip), %xmm2  # xmm2 = mem[0],zero
	addsd	%xmm2, %xmm1
	cvttsd2si	%xmm1, %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, 168(%rax)
	movq	-72(%rbp), %rax
	movswl	140(%rax), %ecx
	negl	%ecx
	movl	-84(%rbp), %edx
	imull	%edx, %ecx
	movl	%ecx, %eax
	cvtsi2sdq	%rax, %xmm1
	movsd	-144(%rbp), %xmm3       # xmm3 = mem[0],zero
	divsd	%xmm3, %xmm1
	addsd	%xmm2, %xmm1
	cvttsd2si	%xmm1, %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, 172(%rax)
	movq	-72(%rbp), %rax
	movswl	142(%rax), %ecx
	movl	-84(%rbp), %edx
	imull	%edx, %ecx
	movl	%ecx, %eax
	cvtsi2sdq	%rax, %xmm1
	divsd	-144(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, 156(%rax)
	jmp	.LBB15_21
.LBB15_20:                              # %if.else
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-72(%rbp), %rdx
	movq	160(%rdx), %rdx
	movq	48(%rdx), %rdx
	sarq	$6, %rdx
	movl	%edx, %eax
	movq	-56(%rbp), %rdx
	movl	%eax, 168(%rdx)
	movq	-72(%rbp), %rdx
	movq	160(%rdx), %rdx
	subq	56(%rdx), %rcx
	sarq	$6, %rcx
	movl	%ecx, %eax
	movq	-56(%rbp), %rcx
	movl	%eax, 172(%rcx)
	movq	-72(%rbp), %rcx
	movq	160(%rcx), %rcx
	movq	64(%rcx), %rcx
	sarq	$6, %rcx
	movl	%ecx, %eax
	movq	-56(%rbp), %rcx
	movl	%eax, 156(%rcx)
.LBB15_21:                              # %if.end.115
	movl	$10, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rdi
	callq	AREF
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB15_23
# BB#22:                                # %if.then.122
	movl	$10, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rdi
	callq	AREF
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -128(%rbp)
	jmp	.LBB15_24
.LBB15_23:                              # %if.else.126
	movl	$0, -128(%rbp)
.LBB15_24:                              # %if.end.127
	cmpl	$0, -128(%rbp)
	je	.LBB15_30
# BB#25:                                # %land.lhs.true
	cmpl	$90, -128(%rbp)
	je	.LBB15_30
# BB#26:                                # %if.then.132
	testb	$1, -121(%rbp)
	je	.LBB15_28
# BB#27:                                # %cond.true
	movsd	.LCPI15_0, %xmm0        # xmm0 = mem[0],zero
	movq	-72(%rbp), %rax
	movswl	144(%rax), %ecx
	movl	-84(%rbp), %edx
	imull	%edx, %ecx
	movl	%ecx, %eax
	cvtsi2sdq	%rax, %xmm1
	divsd	-144(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -216(%rbp)       # 8-byte Spill
	jmp	.LBB15_29
.LBB15_28:                              # %cond.false
	movq	-72(%rbp), %rax
	movq	160(%rax), %rax
	movq	72(%rax), %rax
	sarq	$6, %rax
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, -216(%rbp)       # 8-byte Spill
.LBB15_29:                              # %cond.end
	movsd	-216(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movq	-56(%rbp), %rcx
	movl	%eax, 160(%rcx)
	movq	-56(%rbp), %rcx
	movl	%eax, 164(%rcx)
	movq	-56(%rbp), %rcx
	movl	%eax, 144(%rcx)
	jmp	.LBB15_45
.LBB15_30:                              # %if.else.145
	movq	-56(%rbp), %rax
	movl	$0, 160(%rax)
	movq	-56(%rbp), %rax
	movl	$0, 164(%rax)
	movq	-56(%rbp), %rax
	movl	$0, 144(%rax)
	movl	$32, -132(%rbp)
	movl	$0, -148(%rbp)
.LBB15_31:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$127, -132(%rbp)
	jge	.LBB15_42
# BB#32:                                # %for.body
                                        #   in Loop: Header=BB15_31 Depth=1
	xorl	%edx, %edx
	movq	-72(%rbp), %rdi
	movslq	-132(%rbp), %rsi
	callq	FT_Load_Char
	cmpl	$0, %eax
	jne	.LBB15_40
# BB#33:                                # %if.then.155
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-72(%rbp), %rax
	movq	152(%rax), %rax
	movq	80(%rax), %rax
	sarq	$6, %rax
	movl	%eax, %ecx
	movl	%ecx, -152(%rbp)
	cmpl	$0, -152(%rbp)
	jle	.LBB15_37
# BB#34:                                # %land.lhs.true.161
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-56(%rbp), %rax
	cmpl	$0, 144(%rax)
	je	.LBB15_36
# BB#35:                                # %lor.lhs.false
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-56(%rbp), %rax
	movl	144(%rax), %ecx
	cmpl	-152(%rbp), %ecx
	jle	.LBB15_37
.LBB15_36:                              # %if.then.167
                                        #   in Loop: Header=BB15_31 Depth=1
	movl	-152(%rbp), %eax
	movq	-56(%rbp), %rcx
	movl	%eax, 144(%rcx)
.LBB15_37:                              # %if.end.169
                                        #   in Loop: Header=BB15_31 Depth=1
	cmpl	$32, -132(%rbp)
	jne	.LBB15_39
# BB#38:                                # %if.then.172
                                        #   in Loop: Header=BB15_31 Depth=1
	movl	-152(%rbp), %eax
	movq	-56(%rbp), %rcx
	movl	%eax, 160(%rcx)
.LBB15_39:                              # %if.end.174
                                        #   in Loop: Header=BB15_31 Depth=1
	movl	-152(%rbp), %eax
	movq	-56(%rbp), %rcx
	addl	164(%rcx), %eax
	movl	%eax, 164(%rcx)
	movl	-148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -148(%rbp)
.LBB15_40:                              # %if.end.177
                                        #   in Loop: Header=BB15_31 Depth=1
	jmp	.LBB15_41
.LBB15_41:                              # %for.inc
                                        #   in Loop: Header=BB15_31 Depth=1
	movl	-132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -132(%rbp)
	jmp	.LBB15_31
.LBB15_42:                              # %for.end
	cmpl	$0, -148(%rbp)
	jle	.LBB15_44
# BB#43:                                # %if.then.181
	movl	-148(%rbp), %eax
	movq	-56(%rbp), %rcx
	movl	164(%rcx), %edx
	movl	%eax, -220(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-220(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movl	%eax, 164(%rcx)
.LBB15_44:                              # %if.end.184
	jmp	.LBB15_45
.LBB15_45:                              # %if.end.185
	movq	-56(%rbp), %rax
	movl	$0, 188(%rax)
	movq	-56(%rbp), %rax
	movl	$0, 192(%rax)
	movq	-56(%rbp), %rax
	movl	$0, 196(%rax)
	movq	-56(%rbp), %rax
	movb	$0, 184(%rax)
	testb	$1, -121(%rbp)
	je	.LBB15_47
# BB#46:                                # %if.then.187
	movsd	.LCPI15_0, %xmm0        # xmm0 = mem[0],zero
	movq	-72(%rbp), %rax
	movswl	148(%rax), %ecx
	negl	%ecx
	movl	-84(%rbp), %edx
	imull	%edx, %ecx
	movl	%ecx, %eax
	cvtsi2sdq	%rax, %xmm1
	movsd	-144(%rbp), %xmm2       # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	movsd	.LCPI15_0(%rip), %xmm2  # xmm2 = mem[0],zero
	addsd	%xmm2, %xmm1
	cvttsd2si	%xmm1, %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, 180(%rax)
	movq	-72(%rbp), %rax
	movswl	150(%rax), %ecx
	movl	-84(%rbp), %edx
	imull	%edx, %ecx
	movl	%ecx, %eax
	cvtsi2sdq	%rax, %xmm1
	divsd	-144(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, 176(%rax)
	jmp	.LBB15_48
.LBB15_47:                              # %if.else.203
	movq	-56(%rbp), %rax
	movl	$-1, 180(%rax)
	movq	-56(%rbp), %rax
	movl	$0, 176(%rax)
.LBB15_48:                              # %if.end.206
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB15_49:                              # %return
	movq	-8(%rbp), %rax
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	ftfont_open2, .Lfunc_end15-ftfont_open2
	.cfi_endproc

	.globl	syms_of_ftfont
	.align	16, 0x90
	.type	syms_of_ftfont,@function
syms_of_ftfont:                         # @syms_of_ftfont
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp53:
	.cfi_def_cfa_offset 16
.Ltmp54:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp55:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movabsq	$freetype_font_cache, %rdi
	callq	staticpro
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	list1
	movabsq	$ftfont_generic_family_list, %rdi
	movq	%rax, freetype_font_cache
	callq	staticpro
	movl	$681, %edi              # imm = 0x2A9
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -8(%rbp)          # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movl	$825, %edi              # imm = 0x339
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movl	$823, %edi              # imm = 0x337
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	list3
	movabsq	$ft_face_cache, %rdi
	movq	%rax, ftfont_generic_family_list
	callq	staticpro
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movl	$466, %edi              # imm = 0x1D2
	movq	%rax, ft_face_cache
	callq	builtin_lisp_symbol
	movabsq	$ftfont_driver, %rdx
	xorl	%edi, %edi
	movl	%edi, %esi
	movq	%rax, ftfont_driver
	movq	%rdx, %rdi
	callq	register_font_driver
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	syms_of_ftfont, .Lfunc_end16-syms_of_ftfont
	.cfi_endproc

	.align	16, 0x90
	.type	ftfont_spec_pattern,@function
ftfont_spec_pattern:                    # @ftfont_spec_pattern
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp56:
	.cfi_def_cfa_offset 16
.Ltmp57:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp58:
	.cfi_def_cfa_register %rbp
	subq	$320, %rsp              # imm = 0x140
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movl	$-1, -88(%rbp)
	movl	$-1, -92(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movl	$6, %edi
	movl	%edi, %esi
	movq	%rax, -104(%rbp)
	movq	-16(%rbp), %rdi
	callq	AREF
	andq	$7, %rax
	movl	%eax, %r8d
	andl	$-5, %r8d
	cmpl	$2, %r8d
	jne	.LBB17_2
# BB#1:                                 # %cond.true
	movl	$6, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	AREF
	sarq	$2, %rax
	sarq	$8, %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB17_3
.LBB17_2:                               # %cond.false
	movq	$-1, %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB17_3
.LBB17_3:                               # %cond.end
	movq	-160(%rbp), %rax        # 8-byte Reload
	movl	%eax, %ecx
	movl	%ecx, -84(%rbp)
	cmpl	$0, %ecx
	jl	.LBB17_6
# BB#4:                                 # %land.lhs.true
	cmpl	$100, -84(%rbp)
	jge	.LBB17_6
# BB#5:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB17_117
.LBB17_6:                               # %if.end
	movl	$9, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	AREF
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB17_8
# BB#7:                                 # %if.then.27
	movl	$9, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	AREF
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -88(%rbp)
.LBB17_8:                               # %if.end.31
	movl	$11, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	AREF
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB17_11
# BB#9:                                 # %land.lhs.true.38
	movl	$11, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	AREF
	sarq	$2, %rax
	cmpq	$0, %rax
	jne	.LBB17_11
# BB#10:                                # %if.then.43
	movl	$1, -92(%rbp)
.LBB17_11:                              # %if.end.44
	movl	$4, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB17_15
# BB#12:                                # %lor.lhs.false
	movl	$182, %edi
	movq	-112(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB17_15
# BB#13:                                # %lor.lhs.false.52
	movl	$578, %edi              # imm = 0x242
	movq	-112(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB17_15
# BB#14:                                # %lor.lhs.false.56
	movl	$972, %edi              # imm = 0x3CC
	movq	-112(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB17_16
.LBB17_15:                              # %if.then.60
	movl	$-1, -116(%rbp)
	jmp	.LBB17_23
.LBB17_16:                              # %if.else
	movq	-112(%rbp), %rdi
	callq	ftfont_get_charset
	movl	%eax, -116(%rbp)
	cmpl	$0, -116(%rbp)
	jge	.LBB17_18
# BB#17:                                # %if.then.65
	movq	$0, -8(%rbp)
	jmp	.LBB17_117
.LBB17_18:                              # %if.end.66
	movabsq	$fc_charset_table, %rax
	movslq	-116(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movq	40(%rdx), %rcx
	movq	%rcx, -72(%rbp)
	movslq	-116(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movq	32(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -128(%rbp)
	je	.LBB17_22
# BB#19:                                # %if.then.70
	callq	FcLangSetCreate
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB17_21
# BB#20:                                # %if.then.73
	jmp	.LBB17_102
.LBB17_21:                              # %if.end.74
	movq	-80(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	FcLangSetAdd
	movl	%eax, -196(%rbp)        # 4-byte Spill
.LBB17_22:                              # %if.end.76
	jmp	.LBB17_23
.LBB17_23:                              # %if.end.77
	movl	$12, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movb	$0, (%rcx)
	movq	-16(%rbp), %rdi
	callq	AREF
	movq	%rax, -56(%rbp)
.LBB17_24:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_39 Depth 2
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB17_65
# BB#25:                                # %for.body
                                        #   in Loop: Header=BB17_24 Depth=1
	movl	$35, %edi
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB17_29
# BB#26:                                # %if.then.94
                                        #   in Loop: Header=BB17_24 Depth=1
	movq	-144(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB17_28
# BB#27:                                # %if.then.100
                                        #   in Loop: Header=BB17_24 Depth=1
	movq	-144(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -88(%rbp)
.LBB17_28:                              # %if.end.103
                                        #   in Loop: Header=BB17_24 Depth=1
	jmp	.LBB17_63
.LBB17_29:                              # %if.else.104
                                        #   in Loop: Header=BB17_24 Depth=1
	movl	$73, %edi
	movq	-136(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB17_47
# BB#30:                                # %if.then.108
                                        #   in Loop: Header=BB17_24 Depth=1
	cmpq	$0, -80(%rbp)
	jne	.LBB17_32
# BB#31:                                # %if.then.110
                                        #   in Loop: Header=BB17_24 Depth=1
	callq	FcLangSetCreate
	movq	%rax, -80(%rbp)
.LBB17_32:                              # %if.end.112
                                        #   in Loop: Header=BB17_24 Depth=1
	cmpq	$0, -80(%rbp)
	jne	.LBB17_34
# BB#33:                                # %if.then.114
	jmp	.LBB17_102
.LBB17_34:                              # %if.end.115
                                        #   in Loop: Header=BB17_24 Depth=1
	movq	-144(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB17_38
# BB#35:                                # %if.then.120
                                        #   in Loop: Header=BB17_24 Depth=1
	movq	-80(%rbp), %rdi
	movq	-144(%rbp), %rax
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SDATA
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	FcLangSetAdd
	cmpl	$0, %eax
	jne	.LBB17_37
# BB#36:                                # %if.then.125
	jmp	.LBB17_102
.LBB17_37:                              # %if.end.126
                                        #   in Loop: Header=BB17_24 Depth=1
	jmp	.LBB17_46
.LBB17_38:                              # %if.else.127
                                        #   in Loop: Header=BB17_24 Depth=1
	jmp	.LBB17_39
.LBB17_39:                              # %for.cond.128
                                        #   Parent Loop BB17_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-144(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB17_45
# BB#40:                                # %for.body.133
                                        #   in Loop: Header=BB17_39 Depth=2
	movq	-144(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB17_43
# BB#41:                                # %land.lhs.true.140
                                        #   in Loop: Header=BB17_39 Depth=2
	movq	-80(%rbp), %rdi
	movq	-144(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SDATA
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	FcLangSetAdd
	cmpl	$0, %eax
	jne	.LBB17_43
# BB#42:                                # %if.then.147
	jmp	.LBB17_102
.LBB17_43:                              # %if.end.148
                                        #   in Loop: Header=BB17_39 Depth=2
	jmp	.LBB17_44
.LBB17_44:                              # %for.inc
                                        #   in Loop: Header=BB17_39 Depth=2
	movq	-144(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -144(%rbp)
	jmp	.LBB17_39
.LBB17_45:                              # %for.end
                                        #   in Loop: Header=BB17_24 Depth=1
	jmp	.LBB17_46
.LBB17_46:                              # %if.end.152
                                        #   in Loop: Header=BB17_24 Depth=1
	jmp	.LBB17_62
.LBB17_47:                              # %if.else.153
                                        #   in Loop: Header=BB17_24 Depth=1
	movl	$89, %edi
	movq	-136(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-240(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB17_55
# BB#48:                                # %if.then.157
                                        #   in Loop: Header=BB17_24 Depth=1
	movq	-144(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB17_54
# BB#49:                                # %if.then.162
                                        #   in Loop: Header=BB17_24 Depth=1
	movq	-144(%rbp), %rdi
	callq	ftfont_get_open_type_spec
	movq	-32(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB17_51
# BB#50:                                # %if.then.165
	movq	$0, -8(%rbp)
	jmp	.LBB17_117
.LBB17_51:                              # %if.end.166
                                        #   in Loop: Header=BB17_24 Depth=1
	movq	-24(%rbp), %rdi
	movl	$.L.str.15, %eax
	movl	%eax, %esi
	callq	strcpy
	movq	%rax, -248(%rbp)        # 8-byte Spill
# BB#52:                                # %do.body
                                        #   in Loop: Header=BB17_24 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %ecx
	shrl	$24, %ecx
	movb	%cl, %dl
	movq	-24(%rbp), %rax
	movb	%dl, 9(%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %ecx
	shrl	$16, %ecx
	andl	$255, %ecx
	movb	%cl, %dl
	movq	-24(%rbp), %rax
	movb	%dl, 10(%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %ecx
	shrl	$8, %ecx
	andl	$255, %ecx
	movb	%cl, %dl
	movq	-24(%rbp), %rax
	movb	%dl, 11(%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %ecx
	andl	$255, %ecx
	movb	%cl, %dl
	movq	-24(%rbp), %rax
	movb	%dl, 12(%rax)
	movq	-24(%rbp), %rax
	movb	$0, 13(%rax)
# BB#53:                                # %do.end
                                        #   in Loop: Header=BB17_24 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
.LBB17_54:                              # %if.end.191
                                        #   in Loop: Header=BB17_24 Depth=1
	jmp	.LBB17_61
.LBB17_55:                              # %if.else.192
                                        #   in Loop: Header=BB17_24 Depth=1
	movl	$114, %edi
	movq	-136(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-256(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB17_57
# BB#56:                                # %if.then.196
                                        #   in Loop: Header=BB17_24 Depth=1
	movq	-144(%rbp), %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB17_60
.LBB17_57:                              # %if.else.197
                                        #   in Loop: Header=BB17_24 Depth=1
	movl	$113, %edi
	movq	-136(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-264(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB17_59
# BB#58:                                # %if.then.201
                                        #   in Loop: Header=BB17_24 Depth=1
	xorl	%edi, %edi
	movq	-144(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-272(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	andb	$1, %dl
	movzbl	%dl, %edi
	movl	%edi, -92(%rbp)
.LBB17_59:                              # %if.end.205
                                        #   in Loop: Header=BB17_24 Depth=1
	jmp	.LBB17_60
.LBB17_60:                              # %if.end.206
                                        #   in Loop: Header=BB17_24 Depth=1
	jmp	.LBB17_61
.LBB17_61:                              # %if.end.207
                                        #   in Loop: Header=BB17_24 Depth=1
	jmp	.LBB17_62
.LBB17_62:                              # %if.end.208
                                        #   in Loop: Header=BB17_24 Depth=1
	jmp	.LBB17_63
.LBB17_63:                              # %if.end.209
                                        #   in Loop: Header=BB17_24 Depth=1
	jmp	.LBB17_64
.LBB17_64:                              # %for.inc.210
                                        #   in Loop: Header=BB17_24 Depth=1
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB17_24
.LBB17_65:                              # %for.end.214
	xorl	%edi, %edi
	movq	-104(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-280(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB17_81
# BB#66:                                # %land.lhs.true.218
	cmpq	$0, -72(%rbp)
	jne	.LBB17_81
# BB#67:                                # %if.then.220
	movq	-104(%rbp), %rdi
	movq	globals+2080, %rsi
	callq	assq_no_quit
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB17_80
# BB#68:                                # %land.lhs.true.227
	movq	-152(%rbp), %rdi
	callq	CDR
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB17_80
# BB#69:                                # %if.then.233
	callq	FcCharSetCreate
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB17_71
# BB#70:                                # %if.then.236
	jmp	.LBB17_102
.LBB17_71:                              # %if.end.237
	movq	-152(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -152(%rbp)
.LBB17_72:                              # %for.cond.241
                                        # =>This Inner Loop Header: Depth=1
	movq	-152(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB17_79
# BB#73:                                # %for.body.246
                                        #   in Loop: Header=BB17_72 Depth=1
	movq	-152(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB17_74
	jmp	.LBB17_77
.LBB17_74:                              # %land.lhs.true.251
                                        #   in Loop: Header=BB17_72 Depth=1
	movq	-152(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jg	.LBB17_77
# BB#75:                                # %land.lhs.true.257
                                        #   in Loop: Header=BB17_72 Depth=1
	movq	-72(%rbp), %rdi
	movq	-152(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, %esi
	callq	FcCharSetAddChar
	cmpl	$0, %eax
	jne	.LBB17_77
# BB#76:                                # %if.then.264
	jmp	.LBB17_102
.LBB17_77:                              # %if.end.265
                                        #   in Loop: Header=BB17_72 Depth=1
	jmp	.LBB17_78
.LBB17_78:                              # %for.inc.266
                                        #   in Loop: Header=BB17_72 Depth=1
	movq	-152(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -152(%rbp)
	jmp	.LBB17_72
.LBB17_79:                              # %for.end.270
	jmp	.LBB17_80
.LBB17_80:                              # %if.end.271
	jmp	.LBB17_81
.LBB17_81:                              # %if.end.272
	callq	FcPatternCreate
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB17_83
# BB#82:                                # %if.then.275
	jmp	.LBB17_102
.LBB17_83:                              # %if.end.276
	movl	$1, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-288(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB17_86
# BB#84:                                # %land.lhs.true.281
	movq	-64(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SDATA
	movabsq	$.L.str.5, %rsi
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	FcPatternAddString
	cmpl	$0, %eax
	jne	.LBB17_86
# BB#85:                                # %if.then.286
	jmp	.LBB17_102
.LBB17_86:                              # %if.end.287
	movl	$2, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-304(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB17_89
# BB#87:                                # %land.lhs.true.292
	movq	-64(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SDATA
	movabsq	$.L.str.4, %rsi
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	FcPatternAddString
	cmpl	$0, %eax
	jne	.LBB17_89
# BB#88:                                # %if.then.297
	jmp	.LBB17_102
.LBB17_89:                              # %if.end.298
	cmpq	$0, -72(%rbp)
	je	.LBB17_92
# BB#90:                                # %land.lhs.true.300
	movabsq	$.L.str.2, %rsi
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rdx
	callq	FcPatternAddCharSet
	cmpl	$0, %eax
	jne	.LBB17_92
# BB#91:                                # %if.then.303
	jmp	.LBB17_102
.LBB17_92:                              # %if.end.304
	cmpq	$0, -80(%rbp)
	je	.LBB17_95
# BB#93:                                # %land.lhs.true.306
	movabsq	$.L.str.16, %rsi
	movq	-64(%rbp), %rdi
	movq	-80(%rbp), %rdx
	callq	FcPatternAddLangSet
	cmpl	$0, %eax
	jne	.LBB17_95
# BB#94:                                # %if.then.309
	jmp	.LBB17_102
.LBB17_95:                              # %if.end.310
	cmpl	$0, -88(%rbp)
	jl	.LBB17_98
# BB#96:                                # %land.lhs.true.313
	movabsq	$.L.str.17, %rsi
	movq	-64(%rbp), %rdi
	cvtsi2sdl	-88(%rbp), %xmm0
	callq	FcPatternAddDouble
	cmpl	$0, %eax
	jne	.LBB17_98
# BB#97:                                # %if.then.317
	jmp	.LBB17_102
.LBB17_98:                              # %if.end.318
	cmpl	$0, -92(%rbp)
	jl	.LBB17_101
# BB#99:                                # %land.lhs.true.321
	movabsq	$.L.str.11, %rsi
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-64(%rbp), %rdi
	cmpl	$0, -92(%rbp)
	cmovnel	%ecx, %eax
	movl	%eax, %edx
	callq	FcPatternAddBool
	cmpl	$0, %eax
	jne	.LBB17_101
# BB#100:                               # %if.then.326
	jmp	.LBB17_102
.LBB17_101:                             # %if.end.327
	jmp	.LBB17_111
.LBB17_102:                             # %err
	cmpq	$0, -64(%rbp)
	je	.LBB17_104
# BB#103:                               # %if.then.329
	movq	-64(%rbp), %rdi
	callq	FcPatternDestroy
	movq	$0, -64(%rbp)
.LBB17_104:                             # %if.end.330
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB17_110
# BB#105:                               # %if.then.332
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 16(%rax)
	jle	.LBB17_107
# BB#106:                               # %if.then.336
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	callq	free
.LBB17_107:                             # %if.end.338
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 20(%rax)
	jle	.LBB17_109
# BB#108:                               # %if.then.343
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	callq	free
.LBB17_109:                             # %if.end.346
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	free
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
.LBB17_110:                             # %if.end.347
	jmp	.LBB17_111
.LBB17_111:                             # %finish
	cmpq	$0, -80(%rbp)
	je	.LBB17_113
# BB#112:                               # %if.then.349
	movq	-80(%rbp), %rdi
	callq	FcLangSetDestroy
.LBB17_113:                             # %if.end.350
	cmpq	$0, -72(%rbp)
	je	.LBB17_116
# BB#114:                               # %land.lhs.true.352
	cmpl	$0, -116(%rbp)
	jge	.LBB17_116
# BB#115:                               # %if.then.355
	movq	-72(%rbp), %rdi
	callq	FcCharSetDestroy
.LBB17_116:                             # %if.end.356
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB17_117:                             # %return
	movq	-8(%rbp), %rax
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	retq
.Lfunc_end17:
	.size	ftfont_spec_pattern, .Lfunc_end17-ftfont_spec_pattern
	.cfi_endproc

	.align	16, 0x90
	.type	ftfont_resolve_generic_family,@function
ftfont_resolve_generic_family:          # @ftfont_resolve_generic_family
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp59:
	.cfi_def_cfa_offset 16
.Ltmp60:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp61:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	Fdowncase
	xorl	%edi, %edi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fintern
	movl	$680, %edi              # imm = 0x2A8
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB18_2
# BB#1:                                 # %if.then
	movl	$681, %edi              # imm = 0x2A9
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)
	jmp	.LBB18_6
.LBB18_2:                               # %if.else
	movl	$823, %edi              # imm = 0x337
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB18_4
# BB#3:                                 # %lor.lhs.false
	movl	$824, %edi              # imm = 0x338
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB18_5
.LBB18_4:                               # %if.then.10
	movl	$825, %edi              # imm = 0x339
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)
.LBB18_5:                               # %if.end
	jmp	.LBB18_6
.LBB18_6:                               # %if.end.12
	movq	-16(%rbp), %rdi
	movq	ftfont_generic_family_list, %rsi
	callq	assq_no_quit
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB18_8
# BB#7:                                 # %if.then.16
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB18_25
.LBB18_8:                               # %if.end.18
	movl	$901, %edi              # imm = 0x385
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB18_10
# BB#9:                                 # %if.then.22
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB18_25
.LBB18_10:                              # %if.end.26
	movq	-24(%rbp), %rdi
	callq	FcPatternDuplicate
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB18_12
# BB#11:                                # %if.then.28
	jmp	.LBB18_22
.LBB18_12:                              # %if.end.29
	movabsq	$.L.str.5, %rsi
	movq	-24(%rbp), %rdi
	callq	FcPatternDel
	movabsq	$.L.str.4, %rsi
	movq	-24(%rbp), %rdi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	FcPatternDel
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SDATA
	movabsq	$.L.str.4, %rsi
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	FcPatternAddString
	movabsq	$.L.str.16, %rsi
	xorl	%edx, %edx
	leaq	-56(%rbp), %rcx
	movq	-24(%rbp), %rdi
	movl	%eax, -128(%rbp)        # 4-byte Spill
	callq	FcPatternGetLangSet
	cmpl	$0, %eax
	je	.LBB18_14
# BB#13:                                # %if.then.38
	callq	FcLangSetCreate
	movabsq	$ftfont_resolve_generic_family.lang, %rsi
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	FcLangSetAdd
	movabsq	$.L.str.16, %rsi
	movq	-24(%rbp), %rdi
	movq	-56(%rbp), %rdx
	movl	%eax, -132(%rbp)        # 4-byte Spill
	callq	FcPatternAddLangSet
	movq	-56(%rbp), %rdi
	movl	%eax, -136(%rbp)        # 4-byte Spill
	callq	FcLangSetDestroy
.LBB18_14:                              # %if.end.42
	xorl	%eax, %eax
	movl	%eax, %edi
	xorl	%edx, %edx
	movq	-24(%rbp), %rsi
	callq	FcConfigSubstitute
	movq	-24(%rbp), %rdi
	movl	%eax, -140(%rbp)        # 4-byte Spill
	callq	FcDefaultSubstitute
	xorl	%eax, %eax
	movl	%eax, %edi
	leaq	-44(%rbp), %rdx
	movq	-24(%rbp), %rsi
	callq	FcFontMatch
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB18_18
# BB#15:                                # %if.then.46
	movabsq	$.L.str.4, %rsi
	xorl	%edx, %edx
	leaq	-64(%rbp), %rcx
	movq	-40(%rbp), %rdi
	callq	FcPatternGetString
	cmpl	$0, %eax
	jne	.LBB18_17
# BB#16:                                # %if.then.50
	movq	-64(%rbp), %rdi
	callq	intern
	movq	%rax, -16(%rbp)
.LBB18_17:                              # %if.end.52
	jmp	.LBB18_19
.LBB18_18:                              # %if.else.53
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)
.LBB18_19:                              # %if.end.55
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	XSETCDR
	cmpq	$0, -40(%rbp)
	je	.LBB18_21
# BB#20:                                # %if.then.57
	movq	-40(%rbp), %rdi
	callq	FcPatternDestroy
.LBB18_21:                              # %if.end.58
	jmp	.LBB18_22
.LBB18_22:                              # %err
	cmpq	$0, -24(%rbp)
	je	.LBB18_24
# BB#23:                                # %if.then.60
	movq	-24(%rbp), %rdi
	callq	FcPatternDestroy
.LBB18_24:                              # %if.end.61
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB18_25:                              # %return
	movq	-8(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	ftfont_resolve_generic_family, .Lfunc_end18-ftfont_resolve_generic_family
	.cfi_endproc

	.align	16, 0x90
	.type	get_adstyle_property,@function
get_adstyle_property:                   # @get_adstyle_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp62:
	.cfi_def_cfa_offset 16
.Ltmp63:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp64:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movabsq	$.L.str.13, %rsi
	xorl	%edx, %edx
	leaq	-24(%rbp), %rcx
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	FcPatternGetString
	cmpl	$0, %eax
	jne	.LBB19_4
# BB#1:                                 # %land.lhs.true
	movabsq	$.L.str.63, %rsi
	movq	-24(%rbp), %rdi
	callq	xstrcasecmp
	cmpl	$0, %eax
	je	.LBB19_4
# BB#2:                                 # %land.lhs.true.3
	movabsq	$.L.str.64, %rsi
	movq	-24(%rbp), %rdi
	callq	xstrcasecmp
	cmpl	$0, %eax
	je	.LBB19_4
# BB#3:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB19_20
.LBB19_4:                               # %if.end
	movabsq	$.L.str.3, %rsi
	xorl	%edx, %edx
	leaq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdi
	callq	FcPatternGetString
	cmpl	$0, %eax
	je	.LBB19_6
# BB#5:                                 # %if.then.9
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB19_20
.LBB19_6:                               # %if.end.11
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB19_7:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -49(%rbp)          # 1-byte Spill
	je	.LBB19_9
# BB#8:                                 # %land.rhs
                                        #   in Loop: Header=BB19_7 Depth=1
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$32, %ecx
	setne	%dl
	movb	%dl, -49(%rbp)          # 1-byte Spill
.LBB19_9:                               # %land.end
                                        #   in Loop: Header=BB19_7 Depth=1
	movb	-49(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB19_10
	jmp	.LBB19_12
.LBB19_10:                              # %for.body
                                        #   in Loop: Header=BB19_7 Depth=1
	jmp	.LBB19_11
.LBB19_11:                              # %for.inc
                                        #   in Loop: Header=BB19_7 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB19_7
.LBB19_12:                              # %for.end
	movabsq	$.L.str.65, %rdx
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, %rsi
	callq	matching_prefix
	testb	$1, %al
	jne	.LBB19_16
# BB#13:                                # %lor.lhs.false
	movabsq	$.L.str.66, %rdx
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, %rsi
	callq	matching_prefix
	testb	$1, %al
	jne	.LBB19_16
# BB#14:                                # %lor.lhs.false.22
	movabsq	$.L.str.67, %rdx
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, %rsi
	callq	matching_prefix
	testb	$1, %al
	jne	.LBB19_16
# BB#15:                                # %lor.lhs.false.28
	movabsq	$.L.str.68, %rdx
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, %rsi
	callq	matching_prefix
	testb	$1, %al
	jne	.LBB19_16
	jmp	.LBB19_17
.LBB19_16:                              # %if.then.34
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB19_20
.LBB19_17:                              # %if.end.36
	movl	$1, %edx
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, %rsi
	callq	font_intern_prop
	movl	$7, %edi
	xorl	%edx, %edx
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rsi
	callq	font_style_to_value
	cmpl	$0, %eax
	jl	.LBB19_19
# BB#18:                                # %if.then.44
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB19_20
.LBB19_19:                              # %if.end.46
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB19_20:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	get_adstyle_property, .Lfunc_end19-get_adstyle_property
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI20_0:
	.quad	4890909195324358656     # double 9.2233720368547758E+18
	.text
	.align	16, 0x90
	.type	ftfont_pattern_entity,@function
ftfont_pattern_entity:                  # @ftfont_pattern_entity
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp65:
	.cfi_def_cfa_offset 16
.Ltmp66:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp67:
	.cfi_def_cfa_register %rbp
	subq	$336, %rsp              # imm = 0x150
	movabsq	$.L.str, %rax
	xorl	%edx, %edx
	leaq	-56(%rbp), %rcx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	callq	FcPatternGetString
	cmpl	$0, %eax
	je	.LBB20_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB20_42
.LBB20_2:                               # %if.end
	movabsq	$.L.str.1, %rsi
	xorl	%edx, %edx
	leaq	-68(%rbp), %rcx
	movq	-16(%rbp), %rdi
	callq	FcPatternGetInteger
	cmpl	$0, %eax
	je	.LBB20_4
# BB#3:                                 # %if.then.4
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB20_42
.LBB20_4:                               # %if.end.6
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	build_unibyte_string
	movslq	-68(%rbp), %rdi
	shlq	$2, %rdi
	addq	$2, %rdi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-160(%rbp), %rsi        # 8-byte Reload
	callq	Fcons
	movl	$2, %esi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	ftfont_lookup_cache
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB20_10
# BB#5:                                 # %if.then.13
	callq	font_make_entity
	movq	%rax, -96(%rbp)
	movl	$0, -100(%rbp)
.LBB20_6:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$13, -100(%rbp)
	jge	.LBB20_9
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB20_6 Depth=1
	movq	-96(%rbp), %rdi
	movslq	-100(%rbp), %rsi
	movq	-48(%rbp), %rax
	movslq	-100(%rbp), %rcx
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -184(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	callq	AREF
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	-184(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB20_6 Depth=1
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB20_6
.LBB20_9:                               # %for.end
	movq	-96(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	Fcopy_sequence
	movl	$12, %ecx
	movl	%ecx, %esi
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	movl	$45, %edi
	movq	-96(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rdx
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	font_put_extra
	movq	-96(%rbp), %rdx
	movq	%rdx, -8(%rbp)
	movq	%rax, -208(%rbp)        # 8-byte Spill
	jmp	.LBB20_42
.LBB20_10:                              # %if.end.23
	callq	font_make_entity
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	XSETCAR
	movl	$466, %edi              # imm = 0x1D2
	movq	-48(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %esi
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	movl	$578, %edi              # imm = 0x242
	movq	-48(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$4, %edi
	movl	%edi, %esi
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	movabsq	$.L.str.5, %rsi
	xorl	%edx, %edx
	leaq	-56(%rbp), %rcx
	movq	-16(%rbp), %rdi
	callq	FcPatternGetString
	cmpl	$0, %eax
	jne	.LBB20_12
# BB#11:                                # %if.then.30
	movl	$1, %edx
	movq	-56(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-48(%rbp), %rdi
	movq	-112(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movl	%edx, -236(%rbp)        # 4-byte Spill
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	strlen
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movl	-236(%rbp), %edx        # 4-byte Reload
	callq	font_intern_prop
	movl	$1, %edx
	movl	%edx, %esi
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
.LBB20_12:                              # %if.end.33
	movabsq	$.L.str.4, %rsi
	xorl	%edx, %edx
	leaq	-56(%rbp), %rcx
	movq	-16(%rbp), %rdi
	callq	FcPatternGetString
	cmpl	$0, %eax
	jne	.LBB20_14
# BB#13:                                # %if.then.37
	movl	$1, %edx
	movq	-56(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	-48(%rbp), %rdi
	movq	-120(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movl	%edx, -260(%rbp)        # 4-byte Spill
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	strlen
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movl	-260(%rbp), %edx        # 4-byte Reload
	callq	font_intern_prop
	movl	$2, %edx
	movl	%edx, %esi
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
.LBB20_14:                              # %if.end.41
	movabsq	$.L.str.6, %rsi
	xorl	%edx, %edx
	leaq	-72(%rbp), %rcx
	movq	-16(%rbp), %rdi
	callq	FcPatternGetInteger
	cmpl	$0, %eax
	jne	.LBB20_19
# BB#15:                                # %if.then.45
	cmpl	$80, -72(%rbp)
	jl	.LBB20_18
# BB#16:                                # %land.lhs.true
	cmpl	$100, -72(%rbp)
	jge	.LBB20_18
# BB#17:                                # %if.then.50
	movl	$100, -72(%rbp)
.LBB20_18:                              # %if.end.51
	movl	$5, %edi
	movl	$1, %edx
	movq	-48(%rbp), %rax
	movslq	-72(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, %rsi
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	font_style_to_value
	movl	$5, %edx
	movl	%edx, %esi
	movslq	%eax, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, %rdx
	callq	ASET
.LBB20_19:                              # %if.end.59
	movabsq	$.L.str.7, %rsi
	xorl	%edx, %edx
	leaq	-72(%rbp), %rcx
	movq	-16(%rbp), %rdi
	callq	FcPatternGetInteger
	cmpl	$0, %eax
	jne	.LBB20_21
# BB#20:                                # %if.then.63
	movl	$6, %edi
	movl	$1, %edx
	movl	-72(%rbp), %eax
	addl	$100, %eax
	movl	%eax, -72(%rbp)
	movq	-48(%rbp), %rcx
	movslq	-72(%rbp), %rsi
	shlq	$2, %rsi
	addq	$2, %rsi
	movq	%rcx, -288(%rbp)        # 8-byte Spill
	callq	font_style_to_value
	movl	$6, %edx
	movl	%edx, %esi
	movslq	%eax, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, %rdx
	callq	ASET
.LBB20_21:                              # %if.end.72
	movabsq	$.L.str.8, %rsi
	xorl	%edx, %edx
	leaq	-72(%rbp), %rcx
	movq	-16(%rbp), %rdi
	callq	FcPatternGetInteger
	cmpl	$0, %eax
	jne	.LBB20_23
# BB#22:                                # %if.then.76
	movl	$7, %edi
	movl	$1, %edx
	movq	-48(%rbp), %rax
	movslq	-72(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, %rsi
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	font_style_to_value
	movl	$7, %edx
	movl	%edx, %esi
	movslq	%eax, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, %rdx
	callq	ASET
.LBB20_23:                              # %if.end.84
	movabsq	$.L.str.9, %rsi
	xorl	%edx, %edx
	leaq	-80(%rbp), %rcx
	movq	-16(%rbp), %rdi
	callq	FcPatternGetDouble
	cmpl	$0, %eax
	jne	.LBB20_25
# BB#24:                                # %if.then.88
	movl	$8, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI20_0(%rip), %xmm1  # xmm1 = mem[0],zero
	movaps	%xmm0, %xmm2
	subsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %rcx
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	xorq	%rdx, %rcx
	cvttsd2si	%xmm0, %rdx
	ucomisd	%xmm0, %xmm1
	cmovaq	%rdx, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, %rdx
	callq	ASET
	jmp	.LBB20_26
.LBB20_25:                              # %if.else
	movl	$8, %eax
	movl	%eax, %esi
	movl	$2, %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rdi
	callq	ASET
.LBB20_26:                              # %if.end.92
	movabsq	$.L.str.10, %rsi
	xorl	%edx, %edx
	leaq	-72(%rbp), %rcx
	movq	-16(%rbp), %rdi
	callq	FcPatternGetInteger
	cmpl	$0, %eax
	jne	.LBB20_28
# BB#27:                                # %if.then.96
	movl	$10, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	movslq	-72(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, %rdx
	callq	ASET
.LBB20_28:                              # %if.end.100
	movabsq	$.L.str.17, %rsi
	xorl	%edx, %edx
	leaq	-80(%rbp), %rcx
	movq	-16(%rbp), %rdi
	callq	FcPatternGetDouble
	cmpl	$0, %eax
	jne	.LBB20_30
# BB#29:                                # %if.then.104
	movl	$9, %eax
	movl	%eax, %esi
	cvttsd2si	-80(%rbp), %eax
	movl	%eax, -124(%rbp)
	movq	-48(%rbp), %rdi
	movslq	-124(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, %rdx
	callq	ASET
.LBB20_30:                              # %if.end.109
	movabsq	$.L.str.11, %rsi
	xorl	%edx, %edx
	leaq	-84(%rbp), %rcx
	movq	-16(%rbp), %rdi
	callq	FcPatternGetBool
	cmpl	$0, %eax
	jne	.LBB20_33
# BB#31:                                # %land.lhs.true.113
	cmpl	$1, -84(%rbp)
	jne	.LBB20_33
# BB#32:                                # %if.then.116
	movl	$8, %eax
	movl	%eax, %esi
	movl	$2, %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rdi
	callq	ASET
	movl	$11, %eax
	movl	%eax, %esi
	movl	$2, %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rdi
	callq	ASET
	jmp	.LBB20_41
.LBB20_33:                              # %if.else.117
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	get_adstyle_property
	movl	$3, %ecx
	movl	%ecx, %esi
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	cmpq	$0, ft_library
	jne	.LBB20_35
# BB#34:                                # %lor.lhs.false
	movabsq	$ft_library, %rdi
	callq	FT_Init_FreeType
	cmpl	$0, %eax
	jne	.LBB20_40
.LBB20_35:                              # %land.lhs.true.122
	leaq	-136(%rbp), %rcx
	movq	ft_library, %rdi
	movq	-64(%rbp), %rsi
	movslq	-68(%rbp), %rdx
	callq	FT_New_Face
	cmpl	$0, %eax
	jne	.LBB20_40
# BB#36:                                # %if.then.127
	movabsq	$.L.str.69, %rsi
	leaq	-152(%rbp), %rdx
	movq	-136(%rbp), %rdi
	callq	FT_Get_BDF_Property
	cmpl	$0, %eax
	jne	.LBB20_39
# BB#37:                                # %land.lhs.true.131
	cmpl	$2, -152(%rbp)
	jne	.LBB20_39
# BB#38:                                # %if.then.134
	movl	$11, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	movslq	-144(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, %rdx
	callq	ASET
.LBB20_39:                              # %if.end.138
	movq	-136(%rbp), %rdi
	callq	FT_Done_Face
	movl	%eax, -308(%rbp)        # 4-byte Spill
.LBB20_40:                              # %if.end.140
	jmp	.LBB20_41
.LBB20_41:                              # %if.end.141
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	Fcopy_sequence
	movl	$12, %ecx
	movl	%ecx, %esi
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	movl	$45, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rdx
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	font_put_extra
	movq	-48(%rbp), %rdx
	movq	%rdx, -8(%rbp)
	movq	%rax, -336(%rbp)        # 8-byte Spill
.LBB20_42:                              # %return
	movq	-8(%rbp), %rax
	addq	$336, %rsp              # imm = 0x150
	popq	%rbp
	retq
.Lfunc_end20:
	.size	ftfont_pattern_entity, .Lfunc_end20-ftfont_pattern_entity
	.cfi_endproc

	.align	16, 0x90
	.type	ftfont_get_charset,@function
ftfont_get_charset:                     # @ftfont_get_charset
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp68:
	.cfi_def_cfa_offset 16
.Ltmp69:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp70:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SSDATA
	movq	%rax, -24(%rbp)
	movq	$16384, -32(%rbp)       # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -40(%rbp)
	movb	$0, -41(%rbp)
	movq	-16(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SBYTES
	shlq	$1, %rax
	addq	$1, %rax
	cmpq	-32(%rbp), %rax
	jg	.LBB21_2
# BB#1:                                 # %cond.true
	movq	-16(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SBYTES
	leaq	1(%rax,%rax), %rax
	movq	-32(%rbp), %rdi
	subq	%rax, %rdi
	movq	%rdi, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SBYTES
	leaq	16(%rax,%rax), %rax
	andq	$-16, %rax
	movq	%rsp, %rdi
	subq	%rax, %rdi
	movq	%rdi, %rsp
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	jmp	.LBB21_3
.LBB21_2:                               # %cond.false
	movb	$1, -41(%rbp)
	movq	-16(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SBYTES
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	record_xmalloc
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB21_3:                               # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -56(%rbp)
	movl	$0, -72(%rbp)
	movl	$0, -68(%rbp)
.LBB21_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-68(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SBYTES
	movq	-104(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jge	.LBB21_14
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB21_4 Depth=1
	movslq	-68(%rbp), %rax
	movq	-24(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$46, %edx
	jne	.LBB21_7
# BB#6:                                 # %if.then
                                        #   in Loop: Header=BB21_4 Depth=1
	movl	-72(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -72(%rbp)
	movslq	%eax, %rdx
	movq	-56(%rbp), %rsi
	movb	$92, (%rsi,%rdx)
	jmp	.LBB21_10
.LBB21_7:                               # %if.else
                                        #   in Loop: Header=BB21_4 Depth=1
	movslq	-68(%rbp), %rax
	movq	-24(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$42, %edx
	jne	.LBB21_9
# BB#8:                                 # %if.then.32
                                        #   in Loop: Header=BB21_4 Depth=1
	movl	-72(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -72(%rbp)
	movslq	%eax, %rdx
	movq	-56(%rbp), %rsi
	movb	$46, (%rsi,%rdx)
.LBB21_9:                               # %if.end
                                        #   in Loop: Header=BB21_4 Depth=1
	jmp	.LBB21_10
.LBB21_10:                              # %if.end.36
                                        #   in Loop: Header=BB21_4 Depth=1
	movslq	-68(%rbp), %rax
	movq	-24(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movslq	-72(%rbp), %rax
	movq	-56(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
	movslq	-72(%rbp), %rax
	movq	-56(%rbp), %rcx
	movsbl	(%rcx,%rax), %esi
	cmpl	$63, %esi
	jne	.LBB21_12
# BB#11:                                # %if.then.46
                                        #   in Loop: Header=BB21_4 Depth=1
	movslq	-72(%rbp), %rax
	movq	-56(%rbp), %rcx
	movb	$46, (%rcx,%rax)
.LBB21_12:                              # %if.end.49
                                        #   in Loop: Header=BB21_4 Depth=1
	jmp	.LBB21_13
.LBB21_13:                              # %for.inc
                                        #   in Loop: Header=BB21_4 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB21_4
.LBB21_14:                              # %for.end
	movslq	-72(%rbp), %rax
	movq	-56(%rbp), %rcx
	movb	$0, (%rcx,%rax)
	movq	-56(%rbp), %rdi
	movslq	-72(%rbp), %rsi
	callq	make_unibyte_string
	movq	%rax, -64(%rbp)
# BB#15:                                # %do.body
	testb	$1, -41(%rbp)
	je	.LBB21_17
# BB#16:                                # %if.then.56
	xorl	%edi, %edi
	movb	$0, -41(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB21_17:                              # %if.end.59
	jmp	.LBB21_18
.LBB21_18:                              # %do.end
	movl	$0, -68(%rbp)
.LBB21_19:                              # %for.cond.60
                                        # =>This Inner Loop Header: Depth=1
	movabsq	$fc_charset_table, %rax
	movslq	-68(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	cmpq	$0, (%rax)
	je	.LBB21_24
# BB#20:                                # %for.body.64
                                        #   in Loop: Header=BB21_19 Depth=1
	movabsq	$fc_charset_table, %rax
	movq	-64(%rbp), %rdi
	movslq	-68(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rsi
	movslq	-68(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	callq	strlen
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	-136(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	fast_c_string_match_ignore_case
	cmpq	$0, %rax
	jl	.LBB21_22
# BB#21:                                # %if.then.75
	jmp	.LBB21_24
.LBB21_22:                              # %if.end.76
                                        #   in Loop: Header=BB21_19 Depth=1
	jmp	.LBB21_23
.LBB21_23:                              # %for.inc.77
                                        #   in Loop: Header=BB21_19 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB21_19
.LBB21_24:                              # %for.end.79
	movabsq	$fc_charset_table, %rax
	movslq	-68(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	cmpq	$0, (%rax)
	jne	.LBB21_26
# BB#25:                                # %if.then.84
	movl	$-1, -4(%rbp)
	jmp	.LBB21_37
.LBB21_26:                              # %if.end.85
	movabsq	$fc_charset_table, %rax
	movslq	-68(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	cmpq	$0, 40(%rax)
	jne	.LBB21_36
# BB#27:                                # %if.then.89
	callq	FcCharSetCreate
	movabsq	$fc_charset_table, %rcx
	movq	%rax, -80(%rbp)
	movslq	-68(%rbp), %rax
	imulq	$48, %rax, %rax
	addq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB21_29
# BB#28:                                # %if.then.95
	movl	$-1, -4(%rbp)
	jmp	.LBB21_37
.LBB21_29:                              # %if.end.96
	movl	$0, -72(%rbp)
.LBB21_30:                              # %for.cond.97
                                        # =>This Inner Loop Header: Depth=1
	movslq	-72(%rbp), %rax
	movq	-88(%rbp), %rcx
	cmpl	$0, (%rcx,%rax,4)
	je	.LBB21_35
# BB#31:                                # %for.body.101
                                        #   in Loop: Header=BB21_30 Depth=1
	movq	-80(%rbp), %rdi
	movslq	-72(%rbp), %rax
	movq	-88(%rbp), %rcx
	movl	(%rcx,%rax,4), %esi
	callq	FcCharSetAddChar
	cmpl	$0, %eax
	jne	.LBB21_33
# BB#32:                                # %if.then.106
	movq	-80(%rbp), %rdi
	callq	FcCharSetDestroy
	movl	$-1, -4(%rbp)
	jmp	.LBB21_37
.LBB21_33:                              # %if.end.107
                                        #   in Loop: Header=BB21_30 Depth=1
	jmp	.LBB21_34
.LBB21_34:                              # %for.inc.108
                                        #   in Loop: Header=BB21_30 Depth=1
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB21_30
.LBB21_35:                              # %for.end.110
	movabsq	$fc_charset_table, %rax
	movq	-80(%rbp), %rcx
	movslq	-68(%rbp), %rdx
	imulq	$48, %rdx, %rdx
	addq	%rdx, %rax
	movq	%rcx, 40(%rax)
.LBB21_36:                              # %if.end.114
	movl	-68(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB21_37:                              # %return
	movl	-4(%rbp), %eax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	ftfont_get_charset, .Lfunc_end21-ftfont_get_charset
	.cfi_endproc

	.align	16, 0x90
	.type	ftfont_get_open_type_spec,@function
ftfont_get_open_type_spec:              # @ftfont_get_open_type_spec
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp71:
	.cfi_def_cfa_offset 16
.Ltmp72:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp73:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movl	$40, %eax
	movl	%eax, %ecx
	movq	%rdi, -16(%rbp)
	movq	%rcx, %rdi
	callq	malloc
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB22_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB22_46
.LBB22_2:                               # %if.end
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB22_10
# BB#3:                                 # %if.then.3
	jmp	.LBB22_4
.LBB22_4:                               # %do.body
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SDATA
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movzbl	(%rax), %ecx
	shll	$24, %ecx
	movq	-56(%rbp), %rax
	movzbl	1(%rax), %edx
	shll	$16, %edx
	orl	%edx, %ecx
	movq	-56(%rbp), %rax
	movzbl	2(%rax), %edx
	shll	$8, %edx
	orl	%edx, %ecx
	movq	-56(%rbp), %rax
	movzbl	3(%rax), %edx
	orl	%edx, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 8(%rax)
# BB#5:                                 # %do.end
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movq	globals+1680, %rsi
	callq	assq_no_quit
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB22_8
# BB#6:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB22_8
# BB#7:                                 # %if.then.27
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB22_9
.LBB22_8:                               # %if.else
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB22_9:                               # %if.end.34
	jmp	.LBB22_11
.LBB22_10:                              # %if.else.35
	movq	-24(%rbp), %rax
	movl	$1145457748, 8(%rax)    # imm = 0x44464C54
.LBB22_11:                              # %if.end.37
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movl	$0, 12(%rax)
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB22_17
# BB#12:                                # %if.then.44
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB22_16
# BB#13:                                # %if.then.50
	jmp	.LBB22_14
.LBB22_14:                              # %do.body.51
	movq	-32(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SDATA
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movzbl	(%rax), %ecx
	shll	$24, %ecx
	movq	-64(%rbp), %rax
	movzbl	1(%rax), %edx
	shll	$16, %edx
	orl	%edx, %ecx
	movq	-64(%rbp), %rax
	movzbl	2(%rax), %edx
	shll	$8, %edx
	orl	%edx, %ecx
	movq	-64(%rbp), %rax
	movzbl	3(%rax), %edx
	orl	%edx, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 12(%rax)
# BB#15:                                # %do.end.70
	jmp	.LBB22_16
.LBB22_16:                              # %if.end.71
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
.LBB22_17:                              # %if.end.75
	movq	-24(%rbp), %rax
	movl	$0, 20(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 16(%rax)
	movl	$0, -36(%rbp)
.LBB22_18:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_32 Depth 2
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$2, -36(%rbp)
	movb	%cl, -113(%rbp)         # 1-byte Spill
	jge	.LBB22_20
# BB#19:                                # %land.rhs
                                        #   in Loop: Header=BB22_18 Depth=1
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	movb	%dl, -113(%rbp)         # 1-byte Spill
.LBB22_20:                              # %land.end
                                        #   in Loop: Header=BB22_18 Depth=1
	movb	-113(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB22_21
	jmp	.LBB22_45
.LBB22_21:                              # %for.body
                                        #   in Loop: Header=BB22_18 Depth=1
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB22_23
# BB#22:                                # %if.then.89
                                        #   in Loop: Header=BB22_18 Depth=1
	jmp	.LBB22_44
.LBB22_23:                              # %if.end.90
                                        #   in Loop: Header=BB22_18 Depth=1
	movq	-32(%rbp), %rdi
	callq	Flength
	movabsq	$2305843009213693951, %rdi # imm = 0x1FFFFFFFFFFFFFFF
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	sarq	$2, %rax
	cmpq	%rax, %rdi
	jae	.LBB22_25
# BB#24:                                # %cond.true
                                        #   in Loop: Header=BB22_18 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB22_26
.LBB22_25:                              # %cond.false
                                        #   in Loop: Header=BB22_18 Depth=1
	movq	-72(%rbp), %rax
	sarq	$2, %rax
	shlq	$2, %rax
	movq	%rax, %rdi
	callq	malloc
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB22_26:                              # %cond.end
                                        #   in Loop: Header=BB22_18 Depth=1
	movq	-144(%rbp), %rax        # 8-byte Reload
	movslq	-36(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%rax, 24(%rdx,%rcx,8)
	movslq	-36(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	$0, 24(%rcx,%rax,8)
	jne	.LBB22_31
# BB#27:                                # %if.then.101
	cmpl	$0, -36(%rbp)
	jle	.LBB22_30
# BB#28:                                # %land.lhs.true.104
	movq	-24(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB22_30
# BB#29:                                # %if.then.108
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	callq	free
.LBB22_30:                              # %if.end.111
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movq	$0, -8(%rbp)
	jmp	.LBB22_46
.LBB22_31:                              # %if.end.112
                                        #   in Loop: Header=BB22_18 Depth=1
	movl	$0, -40(%rbp)
	movb	$0, -41(%rbp)
.LBB22_32:                              # %for.cond.113
                                        #   Parent Loop BB22_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB22_43
# BB#33:                                # %for.body.118
                                        #   in Loop: Header=BB22_32 Depth=2
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB22_35
# BB#34:                                # %if.then.124
                                        #   in Loop: Header=BB22_32 Depth=2
	movb	$1, -41(%rbp)
	jmp	.LBB22_41
.LBB22_35:                              # %if.else.125
                                        #   in Loop: Header=BB22_32 Depth=2
	jmp	.LBB22_36
.LBB22_36:                              # %do.body.126
                                        #   in Loop: Header=BB22_32 Depth=2
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SDATA
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	shll	$24, %ecx
	movq	-88(%rbp), %rax
	movzbl	1(%rax), %edx
	shll	$16, %edx
	orl	%edx, %ecx
	movq	-88(%rbp), %rax
	movzbl	2(%rax), %edx
	shll	$8, %edx
	orl	%edx, %ecx
	movq	-88(%rbp), %rax
	movzbl	3(%rax), %edx
	orl	%edx, %ecx
	movl	%ecx, -76(%rbp)
# BB#37:                                # %do.end.146
                                        #   in Loop: Header=BB22_32 Depth=2
	testb	$1, -41(%rbp)
	je	.LBB22_39
# BB#38:                                # %cond.true.149
                                        #   in Loop: Header=BB22_32 Depth=2
	movl	-76(%rbp), %eax
	andl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	movl	%eax, -156(%rbp)        # 4-byte Spill
	jmp	.LBB22_40
.LBB22_39:                              # %cond.false.151
                                        #   in Loop: Header=BB22_32 Depth=2
	movl	-76(%rbp), %eax
	movl	%eax, -156(%rbp)        # 4-byte Spill
.LBB22_40:                              # %cond.end.152
                                        #   in Loop: Header=BB22_32 Depth=2
	movl	-156(%rbp), %eax        # 4-byte Reload
	movl	-40(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -40(%rbp)
	movslq	%ecx, %rsi
	movslq	-36(%rbp), %rdi
	movq	-24(%rbp), %r8
	movq	24(%r8,%rdi,8), %rdi
	movl	%eax, (%rdi,%rsi,4)
.LBB22_41:                              # %if.end.159
                                        #   in Loop: Header=BB22_32 Depth=2
	jmp	.LBB22_42
.LBB22_42:                              # %for.inc
                                        #   in Loop: Header=BB22_32 Depth=2
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB22_32
.LBB22_43:                              # %for.end
                                        #   in Loop: Header=BB22_18 Depth=1
	movl	-40(%rbp), %eax
	movslq	-36(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movl	%eax, 16(%rdx,%rcx,4)
.LBB22_44:                              # %for.inc.166
                                        #   in Loop: Header=BB22_18 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	movq	-16(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -16(%rbp)
	jmp	.LBB22_18
.LBB22_45:                              # %for.end.171
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB22_46:                              # %return
	movq	-8(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	ftfont_get_open_type_spec, .Lfunc_end22-ftfont_get_open_type_spec
	.cfi_endproc

	.align	16, 0x90
	.type	matching_prefix,@function
matching_prefix:                        # @matching_prefix
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp74:
	.cfi_def_cfa_offset 16
.Ltmp75:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp76:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	xorl	%eax, %eax
	movb	%al, %cl
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movb	%cl, -25(%rbp)          # 1-byte Spill
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	strlen
	movq	-40(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	movb	-25(%rbp), %cl          # 1-byte Reload
	movb	%cl, -41(%rbp)          # 1-byte Spill
	jne	.LBB23_2
# BB#1:                                 # %land.rhs
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdx
	callq	c_strncasecmp
	cmpl	$0, %eax
	sete	%cl
	movb	%cl, -41(%rbp)          # 1-byte Spill
.LBB23_2:                               # %land.end
	movb	-41(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	matching_prefix, .Lfunc_end23-matching_prefix
	.cfi_endproc

	.type	ftfont_info_size,@object # @ftfont_info_size
	.data
	.globl	ftfont_info_size
	.align	8
ftfont_info_size:
	.quad	264                     # 0x108
	.size	ftfont_info_size, 8

	.type	ftfont_driver,@object   # @ftfont_driver
	.globl	ftfont_driver
	.align	8
ftfont_driver:
	.quad	0                       # 0x0
	.byte	0                       # 0x0
	.zero	7
	.quad	ftfont_get_cache
	.quad	ftfont_list
	.quad	ftfont_match
	.quad	ftfont_list_family
	.quad	0
	.quad	ftfont_open
	.quad	ftfont_close
	.quad	0
	.quad	0
	.quad	ftfont_has_char
	.quad	ftfont_encode_char
	.quad	ftfont_text_extents
	.quad	0
	.quad	ftfont_get_bitmap
	.quad	0
	.quad	ftfont_anchor_point
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	ftfont_filter_properties
	.quad	0
	.quad	ftfont_combining_capability
	.size	ftfont_driver, 224

	.type	freetype_font_cache,@object # @freetype_font_cache
	.local	freetype_font_cache
	.comm	freetype_font_cache,8,8
	.type	ftfont_generic_family_list,@object # @ftfont_generic_family_list
	.local	ftfont_generic_family_list
	.comm	ftfont_generic_family_list,8,8
	.type	ft_face_cache,@object   # @ft_face_cache
	.local	ft_face_cache
	.comm	ft_face_cache,8,8
	.type	ft_library,@object      # @ft_library
	.local	ft_library
	.comm	ft_library,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"file"
	.size	.L.str, 5

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"index"
	.size	.L.str.1, 6

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"charset"
	.size	.L.str.2, 8

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"style"
	.size	.L.str.3, 6

	.type	fc_initialized,@object  # @fc_initialized
	.local	fc_initialized
	.comm	fc_initialized,1,1
	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"family"
	.size	.L.str.4, 7

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"foundry"
	.size	.L.str.5, 8

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"weight"
	.size	.L.str.6, 7

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"slant"
	.size	.L.str.7, 6

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"width"
	.size	.L.str.8, 6

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"pixelsize"
	.size	.L.str.9, 10

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"spacing"
	.size	.L.str.10, 8

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"scalable"
	.size	.L.str.11, 9

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"capability"
	.size	.L.str.12, 11

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"fontformat"
	.size	.L.str.13, 11

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"ftfont-list"
	.size	.L.str.14, 12

	.type	fc_charset_table,@object # @fc_charset_table
	.data
	.align	16
fc_charset_table:
	.quad	.L.str.18
	.long	160                     # 0xa0
	.long	161                     # 0xa1
	.long	180                     # 0xb4
	.long	188                     # 0xbc
	.long	208                     # 0xd0
	.long	0                       # 0x0
	.quad	0
	.quad	0
	.quad	.L.str.19
	.long	160                     # 0xa0
	.long	270                     # 0x10e
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	0
	.quad	.L.str.20
	.long	160                     # 0xa0
	.long	264                     # 0x108
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	0
	.quad	.L.str.21
	.long	160                     # 0xa0
	.long	175                     # 0xaf
	.long	296                     # 0x128
	.long	342                     # 0x156
	.long	711                     # 0x2c7
	.long	0                       # 0x0
	.quad	0
	.quad	0
	.quad	.L.str.22
	.long	160                     # 0xa0
	.long	1025                    # 0x401
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	0
	.quad	.L.str.23
	.long	160                     # 0xa0
	.long	1548                    # 0x60c
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	0
	.quad	.L.str.24
	.long	160                     # 0xa0
	.long	900                     # 0x384
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	0
	.quad	.L.str.25
	.long	160                     # 0xa0
	.long	1488                    # 0x5d0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	0
	.quad	.L.str.26
	.long	160                     # 0xa0
	.long	161                     # 0xa1
	.long	188                     # 0xbc
	.long	286                     # 0x11e
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	0
	.quad	.L.str.27
	.long	160                     # 0xa0
	.long	208                     # 0xd0
	.long	296                     # 0x128
	.long	8213                    # 0x2015
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	0
	.quad	.L.str.28
	.long	160                     # 0xa0
	.long	3585                    # 0xe01
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	0
	.quad	.L.str.29
	.long	160                     # 0xa0
	.long	8220                    # 0x201c
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	0
	.quad	.L.str.30
	.long	160                     # 0xa0
	.long	372                     # 0x174
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	0
	.quad	.L.str.31
	.long	160                     # 0xa0
	.long	161                     # 0xa1
	.long	208                     # 0xd0
	.long	338                     # 0x152
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	0
	.quad	.L.str.32
	.long	160                     # 0xa0
	.long	536                     # 0x218
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	0
	.quad	.L.str.33
	.long	19987                   # 0x4e13
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.34
	.quad	0
	.quad	.L.str.35
	.long	63153                   # 0xf6b1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.36
	.quad	0
	.quad	.L.str.37
	.long	20053                   # 0x4e55
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.38
	.quad	0
	.quad	.L.str.39
	.long	44032                   # 0xac00
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.40
	.quad	0
	.quad	.L.str.41
	.long	65074                   # 0xfe32
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.36
	.quad	0
	.quad	.L.str.42
	.long	20019                   # 0x4e33
	.long	31028                   # 0x7934
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	0
	.quad	.L.str.43
	.long	131497                  # 0x201a9
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	0
	.quad	.L.str.44
	.long	131159                  # 0x20057
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	0
	.quad	.L.str.45
	.long	131072                  # 0x20000
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	0
	.quad	.L.str.46
	.long	131075                  # 0x20003
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	0
	.quad	.L.str.47
	.long	131157                  # 0x20055
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	0
	.quad	.L.str.48
	.long	19974                   # 0x4e06
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.34
	.quad	0
	.quad	.L.str.49
	.long	20036                   # 0x4e44
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	0
	.quad	.L.str.50
	.long	64016                   # 0xfa10
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.38
	.quad	0
	.quad	.L.str.51
	.long	64073                   # 0xfa49
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	0
	.quad	.L.str.52
	.long	134047                  # 0x20b9f
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	0
	.quad	.L.str.53
	.long	7840                    # 0x1ea0
	.long	7854                    # 0x1eae
	.long	7890                    # 0x1ed2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.54
	.quad	0
	.quad	.L.str.55
	.long	3585                    # 0xe01
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.56
	.quad	0
	.quad	.L.str.57
	.long	1025                    # 0x401
	.long	1168                    # 0x490
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.58
	.quad	0
	.quad	.L.str.59
	.long	1025                    # 0x401
	.long	8729                    # 0x2219
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.58
	.quad	0
	.quad	.L.str.60
	.long	3713                    # 0xe81
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.61
	.quad	0
	.quad	.L.str.62
	.long	131072                  # 0x20000
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	0
	.zero	48
	.size	fc_charset_table, 1824

	.type	.L.str.15,@object       # @.str.15
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.15:
	.asciz	"otlayout:"
	.size	.L.str.15, 10

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"lang"
	.size	.L.str.16, 5

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"dpi"
	.size	.L.str.17, 4

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"iso8859-1"
	.size	.L.str.18, 10

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"iso8859-2"
	.size	.L.str.19, 10

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"iso8859-3"
	.size	.L.str.20, 10

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"iso8859-4"
	.size	.L.str.21, 10

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"iso8859-5"
	.size	.L.str.22, 10

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"iso8859-6"
	.size	.L.str.23, 10

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"iso8859-7"
	.size	.L.str.24, 10

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"iso8859-8"
	.size	.L.str.25, 10

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"iso8859-9"
	.size	.L.str.26, 10

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"iso8859-10"
	.size	.L.str.27, 11

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"iso8859-11"
	.size	.L.str.28, 11

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"iso8859-13"
	.size	.L.str.29, 11

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"iso8859-14"
	.size	.L.str.30, 11

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"iso8859-15"
	.size	.L.str.31, 11

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"iso8859-16"
	.size	.L.str.32, 11

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"gb2312.1980-0"
	.size	.L.str.33, 14

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"zh-cn"
	.size	.L.str.34, 6

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"big5-0"
	.size	.L.str.35, 7

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"zh-tw"
	.size	.L.str.36, 6

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"jisx0208.1983-0"
	.size	.L.str.37, 16

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"ja"
	.size	.L.str.38, 3

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"ksc5601.1985-0"
	.size	.L.str.39, 15

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"ko"
	.size	.L.str.40, 3

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"cns11643.1992-1"
	.size	.L.str.41, 16

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"cns11643.1992-2"
	.size	.L.str.42, 16

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"cns11643.1992-3"
	.size	.L.str.43, 16

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"cns11643.1992-4"
	.size	.L.str.44, 16

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"cns11643.1992-5"
	.size	.L.str.45, 16

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"cns11643.1992-6"
	.size	.L.str.46, 16

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"cns11643.1992-7"
	.size	.L.str.47, 16

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"gbk-0"
	.size	.L.str.48, 6

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"jisx0212.1990-0"
	.size	.L.str.49, 16

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"jisx0213.2000-1"
	.size	.L.str.50, 16

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"jisx0213.2000-2"
	.size	.L.str.51, 16

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"jisx0213.2004-1"
	.size	.L.str.52, 16

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"viscii1.1-1"
	.size	.L.str.53, 12

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"vi"
	.size	.L.str.54, 3

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"tis620.2529-1"
	.size	.L.str.55, 14

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"th"
	.size	.L.str.56, 3

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"windows-1251"
	.size	.L.str.57, 13

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"ru"
	.size	.L.str.58, 3

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"koi8-r"
	.size	.L.str.59, 7

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"mulelao-1"
	.size	.L.str.60, 10

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"lo"
	.size	.L.str.61, 3

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"unicode-sip"
	.size	.L.str.62, 12

	.type	ftfont_resolve_generic_family.lang,@object # @ftfont_resolve_generic_family.lang
	.section	.rodata,"a",@progbits
ftfont_resolve_generic_family.lang:
	.asciz	"en"
	.size	ftfont_resolve_generic_family.lang, 3

	.type	.L.str.63,@object       # @.str.63
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.63:
	.asciz	"bdf"
	.size	.L.str.63, 4

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"pcf"
	.size	.L.str.64, 4

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"Regular"
	.size	.L.str.65, 8

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"Bold"
	.size	.L.str.66, 5

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"Oblique"
	.size	.L.str.67, 8

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"Italic"
	.size	.L.str.68, 7

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"AVERAGE_WIDTH"
	.size	.L.str.69, 14

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"ftfont-match"
	.size	.L.str.70, 13

	.type	ftfont_booleans,@object # @ftfont_booleans
	.section	.rodata,"a",@progbits
	.align	16
ftfont_booleans:
	.quad	.L.str.71
	.quad	.L.str.72
	.quad	.L.str.73
	.quad	.L.str.74
	.quad	.L.str.75
	.quad	.L.str.76
	.quad	.L.str.77
	.quad	.L.str.78
	.quad	.L.str.79
	.quad	0
	.size	ftfont_booleans, 80

	.type	ftfont_non_booleans,@object # @ftfont_non_booleans
	.align	16
ftfont_non_booleans:
	.quad	.L.str.80
	.quad	.L.str.81
	.quad	.L.str.82
	.quad	.L.str.83
	.quad	.L.str.84
	.quad	.L.str.85
	.quad	.L.str.86
	.quad	.L.str.87
	.quad	.L.str.88
	.quad	.L.str.89
	.quad	.L.str.90
	.quad	.L.str.91
	.quad	.L.str.92
	.quad	.L.str.93
	.quad	.L.str.94
	.quad	.L.str.95
	.quad	.L.str.96
	.quad	.L.str.97
	.quad	.L.str.98
	.quad	.L.str.99
	.quad	.L.str.100
	.quad	.L.str.101
	.quad	.L.str.102
	.quad	.L.str.103
	.quad	.L.str.104
	.quad	.L.str.105
	.quad	.L.str.106
	.quad	0
	.size	ftfont_non_booleans, 224

	.type	.L.str.71,@object       # @.str.71
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.71:
	.asciz	":antialias"
	.size	.L.str.71, 11

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	":hinting"
	.size	.L.str.72, 9

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	":verticallayout"
	.size	.L.str.73, 16

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	":autohint"
	.size	.L.str.74, 10

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	":globaladvance"
	.size	.L.str.75, 15

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	":outline"
	.size	.L.str.76, 9

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	":scalable"
	.size	.L.str.77, 10

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	":minspace"
	.size	.L.str.78, 10

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	":embolden"
	.size	.L.str.79, 10

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	":family"
	.size	.L.str.80, 8

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	":familylang"
	.size	.L.str.81, 12

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	":style"
	.size	.L.str.82, 7

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	":stylelang"
	.size	.L.str.83, 11

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	":fullname"
	.size	.L.str.84, 10

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	":fullnamelang"
	.size	.L.str.85, 14

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	":slant"
	.size	.L.str.86, 7

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	":weight"
	.size	.L.str.87, 8

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	":size"
	.size	.L.str.88, 6

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	":width"
	.size	.L.str.89, 7

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	":aspect"
	.size	.L.str.90, 8

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	":pixelsize"
	.size	.L.str.91, 11

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	":spacing"
	.size	.L.str.92, 9

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	":foundry"
	.size	.L.str.93, 9

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	":hintstyle"
	.size	.L.str.94, 11

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	":file"
	.size	.L.str.95, 6

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	":index"
	.size	.L.str.96, 7

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	":ftface"
	.size	.L.str.97, 8

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	":rasterizer"
	.size	.L.str.98, 12

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	":scale"
	.size	.L.str.99, 7

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	":dpi"
	.size	.L.str.100, 5

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	":rgba"
	.size	.L.str.101, 6

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	":lcdfilter"
	.size	.L.str.102, 11

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	":charset"
	.size	.L.str.103, 9

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	":lang"
	.size	.L.str.104, 6

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	":fontversion"
	.size	.L.str.105, 13

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	":capability"
	.size	.L.str.106, 12


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
