	.text
	.file	"font.bc"
	.globl	font_make_entity
	.align	16, 0x90
	.type	font_make_entity,@function
font_make_entity:                       # @font_make_entity
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
	movl	$14, %eax
	movl	$17, %ecx
	movl	%eax, %edi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	allocate_pseudovector
	movl	$5, %esi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	font_make_entity, .Lfunc_end0-font_make_entity
	.cfi_endproc

	.globl	font_make_object
	.align	16, 0x90
	.type	font_make_object,@function
font_make_object:                       # @font_make_object
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
	movl	$17, %eax
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	-4(%rbp), %edi
	movl	%eax, %esi
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	allocate_pseudovector
	movl	$5, %esi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	$0, 208(%rax)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %r8          # 8-byte Reload
	cmpq	%rax, %r8
	je	.LBB1_8
# BB#1:                                 # %if.then
	movl	$1, -44(%rbp)
.LBB1_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$13, -44(%rbp)
	jge	.LBB1_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	-16(%rbp), %rdi
	movslq	-44(%rbp), %rsi
	callq	AREF
	movslq	-44(%rbp), %rsi
	movq	-40(%rbp), %rdi
	movq	%rax, 8(%rdi,%rsi,8)
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB1_2
.LBB1_5:                                # %for.end
	movl	$12, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB1_7
# BB#6:                                 # %if.then.9
	movl	$12, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	AREF
	movq	%rax, %rdi
	callq	Fcopy_alist
	movq	-40(%rbp), %rsi
	movq	%rax, 104(%rsi)
.LBB1_7:                                # %if.end
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.14
	cmpl	$0, -4(%rbp)
	jle	.LBB1_10
# BB#9:                                 # %if.then.17
	movslq	-20(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 72(%rcx)
.LBB1_10:                               # %if.end.21
	movq	-32(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	font_make_object, .Lfunc_end1-font_make_object
	.cfi_endproc

	.globl	font_build_object
	.align	16, 0x90
	.type	font_build_object,@function
font_build_object:                      # @font_build_object
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
	subq	$336, %rsp              # imm = 0x150
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movl	-4(%rbp), %edi
	movq	-24(%rbp), %rsi
	cvttsd2si	-32(%rbp), %edx
	callq	font_make_object
	xorl	%edx, %edx
	movl	%edx, %esi
	movq	%rax, -312(%rbp)
	movq	-312(%rbp), %rdi
	movq	-16(%rbp), %rdx
	callq	ASET
	movl	$256, %ecx              # imm = 0x100
	leaq	-304(%rbp), %rdx
	movq	-24(%rbp), %rdi
	cvttsd2si	-32(%rbp), %esi
	callq	font_unparse_xlfd
	movl	%eax, %ecx
	movl	%ecx, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jle	.LBB2_2
# BB#1:                                 # %if.then
	leaq	-304(%rbp), %rdi
	movq	-312(%rbp), %rax
	movslq	-36(%rbp), %rsi
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	make_string
	movl	$14, %ecx
	movl	%ecx, %esi
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
.LBB2_2:                                # %if.end
	movl	$256, %ecx              # imm = 0x100
	leaq	-304(%rbp), %rdx
	movq	-24(%rbp), %rdi
	cvttsd2si	-32(%rbp), %esi
	callq	font_unparse_fcname
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jle	.LBB2_4
# BB#3:                                 # %if.then.13
	leaq	-304(%rbp), %rdi
	movq	-312(%rbp), %rax
	movslq	-36(%rbp), %rsi
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	make_string
	movl	$15, %ecx
	movl	%ecx, %esi
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	jmp	.LBB2_5
.LBB2_4:                                # %if.else
	movl	$14, %eax
	movl	%eax, %esi
	movq	-312(%rbp), %rdi
	movq	-312(%rbp), %rcx
	movq	%rdi, -336(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	AREF
	movl	$15, %edx
	movl	%edx, %esi
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
.LBB2_5:                                # %if.end.18
	movq	-312(%rbp), %rax
	addq	$336, %rsp              # imm = 0x150
	popq	%rbp
	retq
.Lfunc_end2:
	.size	font_build_object, .Lfunc_end2-font_build_object
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4621819117588971520     # double 10
	.text
	.globl	font_unparse_xlfd
	.align	16, 0x90
	.type	font_unparse_xlfd,@function
font_unparse_xlfd:                      # @font_unparse_xlfd
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
	subq	$744, %rsp              # imm = 0x2E8
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
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	%rdx, -72(%rbp)
	movl	%ecx, -76(%rbp)
	movl	$1, -204(%rbp)
	movl	$0, -208(%rbp)
.LBB3_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -204(%rbp)
	jg	.LBB3_23
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	cmpl	$3, -204(%rbp)
	jne	.LBB3_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	$5, -208(%rbp)
	jmp	.LBB3_7
.LBB3_4:                                # %if.else
                                        #   in Loop: Header=BB3_1 Depth=1
	cmpl	$4, -204(%rbp)
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	$12, -208(%rbp)
.LBB3_6:                                # %if.end
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_7
.LBB3_7:                                # %if.end.4
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-56(%rbp), %rdi
	movslq	-204(%rbp), %rsi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, -696(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-696(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB3_12
# BB#8:                                 # %if.then.8
                                        #   in Loop: Header=BB3_1 Depth=1
	cmpl	$12, -208(%rbp)
	jne	.LBB3_10
# BB#9:                                 # %if.then.11
                                        #   in Loop: Header=BB3_1 Depth=1
	movabsq	$.L.str, %rax
	movslq	-208(%rbp), %rcx
	movq	%rax, -192(%rbp,%rcx,8)
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.12
                                        #   in Loop: Header=BB3_1 Depth=1
	movabsq	$.L.str.4, %rax
	movslq	-208(%rbp), %rcx
	movq	%rax, -192(%rbp,%rcx,8)
.LBB3_11:                               # %if.end.15
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_21
.LBB3_12:                               # %if.else.16
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-200(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB3_14
# BB#13:                                # %if.then.20
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-200(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, -200(%rbp)
.LBB3_14:                               # %if.end.22
                                        #   in Loop: Header=BB3_1 Depth=1
	cmpl	$12, -208(%rbp)
	jne	.LBB3_19
# BB#15:                                # %land.lhs.true
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-200(%rbp), %rdi
	callq	SSDATA
	movl	$45, %esi
	movq	%rax, %rdi
	callq	strchr
	cmpq	$0, %rax
	jne	.LBB3_19
# BB#16:                                # %if.then.27
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-200(%rbp), %rdi
	callq	SBYTES
	addq	$4, %rax
	movq	%rax, -224(%rbp)
	movslq	-76(%rbp), %rax
	cmpq	-224(%rbp), %rax
	jg	.LBB3_18
# BB#17:                                # %if.then.32
	movq	$-1, -48(%rbp)
	jmp	.LBB3_71
.LBB3_18:                               # %if.end.33
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-224(%rbp), %rax
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -88(%rbp)
	movslq	-208(%rbp), %rax
	movq	%rcx, -192(%rbp,%rax,8)
	movq	-88(%rbp), %rdi
	movq	-200(%rbp), %rax
	movq	%rdi, -704(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	SDATA
	movq	-200(%rbp), %rdi
	movq	%rax, -712(%rbp)        # 8-byte Spill
	callq	SBYTES
	subq	$1, %rax
	movq	-200(%rbp), %rdi
	movq	%rax, -720(%rbp)        # 8-byte Spill
	callq	SDATA
	movabsq	$.L.str.5, %rsi
	movabsq	$.L.str.4, %rcx
	movq	-720(%rbp), %rdi        # 8-byte Reload
	movzbl	(%rax,%rdi), %edx
	cmpl	$42, %edx
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	movslq	%edx, %rax
	addq	%rax, %rcx
	movq	-704(%rbp), %rdi        # 8-byte Reload
	movq	-712(%rbp), %rdx        # 8-byte Reload
	movb	$0, %al
	callq	sprintf
	movl	%eax, -724(%rbp)        # 4-byte Spill
	jmp	.LBB3_20
.LBB3_19:                               # %if.else.46
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-200(%rbp), %rdi
	callq	SSDATA
	movslq	-208(%rbp), %rdi
	movq	%rax, -192(%rbp,%rdi,8)
.LBB3_20:                               # %if.end.50
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_21
.LBB3_21:                               # %if.end.51
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_22
.LBB3_22:                               # %for.inc
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-204(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -204(%rbp)
	movl	-208(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -208(%rbp)
	jmp	.LBB3_1
.LBB3_23:                               # %for.end
	movl	$5, -204(%rbp)
	movl	$2, -208(%rbp)
.LBB3_24:                               # %for.cond.53
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_30 Depth 2
	cmpl	$7, -204(%rbp)
	jg	.LBB3_41
# BB#25:                                # %for.body.56
                                        #   in Loop: Header=BB3_24 Depth=1
	xorl	%edx, %edx
	movq	-56(%rbp), %rdi
	movl	-204(%rbp), %esi
	callq	font_style_symbolic
	xorl	%edi, %edi
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, -736(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-736(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB3_27
# BB#26:                                # %if.then.61
                                        #   in Loop: Header=BB3_24 Depth=1
	movabsq	$.L.str.4, %rax
	movslq	-208(%rbp), %rcx
	movq	%rax, -192(%rbp,%rcx,8)
	jmp	.LBB3_39
.LBB3_27:                               # %if.else.64
                                        #   in Loop: Header=BB3_24 Depth=1
	movq	-200(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rdi
	callq	SBYTES
	addq	$1, %rax
	movq	%rax, -248(%rbp)
	movslq	-76(%rbp), %rax
	cmpq	-248(%rbp), %rax
	jg	.LBB3_29
# BB#28:                                # %if.then.72
	movq	$-1, -48(%rbp)
	jmp	.LBB3_71
.LBB3_29:                               # %if.end.73
                                        #   in Loop: Header=BB3_24 Depth=1
	movq	-248(%rbp), %rax
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -88(%rbp)
	movslq	-208(%rbp), %rax
	movq	%rcx, -192(%rbp,%rax,8)
	movl	$0, -236(%rbp)
	movl	$0, -232(%rbp)
.LBB3_30:                               # %for.cond.76
                                        #   Parent Loop BB3_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-232(%rbp), %rax
	cmpq	-248(%rbp), %rax
	jge	.LBB3_38
# BB#31:                                # %for.body.80
                                        #   in Loop: Header=BB3_30 Depth=2
	movq	-200(%rbp), %rdi
	movslq	-232(%rbp), %rsi
	callq	SREF
	movzbl	%al, %ecx
	movl	%ecx, -228(%rbp)
	cmpl	$45, -228(%rbp)
	je	.LBB3_36
# BB#32:                                # %land.lhs.true.86
                                        #   in Loop: Header=BB3_30 Depth=2
	cmpl	$63, -228(%rbp)
	je	.LBB3_36
# BB#33:                                # %land.lhs.true.89
                                        #   in Loop: Header=BB3_30 Depth=2
	cmpl	$44, -228(%rbp)
	je	.LBB3_36
# BB#34:                                # %land.lhs.true.92
                                        #   in Loop: Header=BB3_30 Depth=2
	cmpl	$34, -228(%rbp)
	je	.LBB3_36
# BB#35:                                # %if.then.95
                                        #   in Loop: Header=BB3_30 Depth=2
	movl	-228(%rbp), %eax
	movb	%al, %cl
	movl	-236(%rbp), %eax
	movl	%eax, %edx
	addl	$1, %edx
	movl	%edx, -236(%rbp)
	movslq	%eax, %rsi
	movq	-88(%rbp), %rdi
	movb	%cl, (%rdi,%rsi)
.LBB3_36:                               # %if.end.100
                                        #   in Loop: Header=BB3_30 Depth=2
	jmp	.LBB3_37
.LBB3_37:                               # %for.inc.101
                                        #   in Loop: Header=BB3_30 Depth=2
	movl	-232(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -232(%rbp)
	jmp	.LBB3_30
.LBB3_38:                               # %for.end.103
                                        #   in Loop: Header=BB3_24 Depth=1
	jmp	.LBB3_39
.LBB3_39:                               # %if.end.104
                                        #   in Loop: Header=BB3_24 Depth=1
	jmp	.LBB3_40
.LBB3_40:                               # %for.inc.105
                                        #   in Loop: Header=BB3_24 Depth=1
	movl	-204(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -204(%rbp)
	movl	-208(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -208(%rbp)
	jmp	.LBB3_24
.LBB3_41:                               # %for.end.108
	movl	$8, %eax
	movl	%eax, %esi
	movq	-56(%rbp), %rdi
	callq	AREF
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB3_48
# BB#42:                                # %if.then.115
	movq	-200(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -584(%rbp)
	cmpq	$0, -584(%rbp)
	jg	.LBB3_44
# BB#43:                                # %if.then.118
	movslq	-60(%rbp), %rax
	movq	%rax, -584(%rbp)
.LBB3_44:                               # %if.end.120
	cmpq	$0, -584(%rbp)
	jle	.LBB3_46
# BB#45:                                # %if.then.123
	movabsq	$.L.str.6, %rsi
	leaq	-576(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	%rax, -144(%rbp)
	movq	-88(%rbp), %rdi
	movq	-584(%rbp), %rdx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -740(%rbp)        # 4-byte Spill
	jmp	.LBB3_47
.LBB3_46:                               # %if.else.126
	movabsq	$.L.str, %rax
	movq	%rax, -144(%rbp)
.LBB3_47:                               # %if.end.128
	jmp	.LBB3_52
.LBB3_48:                               # %if.else.129
	movq	-200(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$7, %ecx
	jne	.LBB3_50
# BB#49:                                # %if.then.134
	movq	-200(%rbp), %rdi
	callq	XFLOAT_DATA
	movabsq	$.L.str.7, %rsi
	leaq	-576(%rbp), %rdi
	movsd	.LCPI3_0, %xmm1         # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -592(%rbp)
	movq	%rdi, -88(%rbp)
	movq	%rdi, -144(%rbp)
	movq	-88(%rbp), %rdi
	movsd	-592(%rbp), %xmm0       # xmm0 = mem[0],zero
	movb	$1, %al
	callq	sprintf
	movl	%eax, -744(%rbp)        # 4-byte Spill
	jmp	.LBB3_51
.LBB3_50:                               # %if.else.140
	movabsq	$.L.str, %rax
	movq	%rax, -144(%rbp)
.LBB3_51:                               # %if.end.142
	jmp	.LBB3_52
.LBB3_52:                               # %if.end.143
	movl	$9, %eax
	movl	%eax, %esi
	movq	-56(%rbp), %rdi
	callq	AREF
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB3_54
# BB#53:                                # %if.then.150
	movl	$9, %eax
	movl	%eax, %esi
	movq	-56(%rbp), %rdi
	callq	AREF
	movabsq	$.L.str.8, %rsi
	leaq	-640(%rbp), %rdi
	sarq	$2, %rax
	movq	%rax, -648(%rbp)
	movq	%rdi, -88(%rbp)
	movq	%rdi, -128(%rbp)
	movq	-88(%rbp), %rdi
	movq	-648(%rbp), %rdx
	movq	-648(%rbp), %rcx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -748(%rbp)        # 4-byte Spill
	jmp	.LBB3_55
.LBB3_54:                               # %if.else.157
	movabsq	$.L.str, %rax
	movq	%rax, -128(%rbp)
.LBB3_55:                               # %if.end.159
	movl	$10, %eax
	movl	%eax, %esi
	movq	-56(%rbp), %rdi
	callq	AREF
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB3_63
# BB#56:                                # %if.then.166
	movl	$10, %eax
	movl	%eax, %esi
	movq	-56(%rbp), %rdi
	callq	AREF
	sarq	$2, %rax
	movq	%rax, -656(%rbp)
	cmpq	$0, -656(%rbp)
	jg	.LBB3_58
# BB#57:                                # %cond.true
	movabsq	$.L.str.9, %rax
	movq	%rax, -760(%rbp)        # 8-byte Spill
	jmp	.LBB3_62
.LBB3_58:                               # %cond.false
	cmpq	$90, -656(%rbp)
	jg	.LBB3_60
# BB#59:                                # %cond.true.173
	movabsq	$.L.str.10, %rax
	movq	%rax, -768(%rbp)        # 8-byte Spill
	jmp	.LBB3_61
.LBB3_60:                               # %cond.false.174
	movabsq	$.L.str.12, %rax
	movabsq	$.L.str.11, %rcx
	cmpq	$100, -656(%rbp)
	cmovleq	%rcx, %rax
	movq	%rax, -768(%rbp)        # 8-byte Spill
.LBB3_61:                               # %cond.end
	movq	-768(%rbp), %rax        # 8-byte Reload
	movq	%rax, -760(%rbp)        # 8-byte Spill
.LBB3_62:                               # %cond.end.178
	movq	-760(%rbp), %rax        # 8-byte Reload
	movq	%rax, -112(%rbp)
	jmp	.LBB3_64
.LBB3_63:                               # %if.else.181
	movabsq	$.L.str.4, %rax
	movq	%rax, -112(%rbp)
.LBB3_64:                               # %if.end.183
	movl	$11, %eax
	movl	%eax, %esi
	movq	-56(%rbp), %rdi
	callq	AREF
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB3_66
# BB#65:                                # %if.then.190
	movl	$11, %eax
	movl	%eax, %esi
	leaq	-688(%rbp), %rcx
	movq	%rcx, -88(%rbp)
	movq	%rcx, -104(%rbp)
	movq	-88(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movq	%rdi, -776(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	AREF
	movabsq	$.L.str.13, %rsi
	sarq	$2, %rax
	movq	-776(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -780(%rbp)        # 4-byte Spill
	jmp	.LBB3_67
.LBB3_66:                               # %if.else.196
	movabsq	$.L.str.4, %rax
	movq	%rax, -104(%rbp)
.LBB3_67:                               # %if.end.198
	movabsq	$.L.str.14, %rdx
	movq	-72(%rbp), %rdi
	movslq	-76(%rbp), %rsi
	movq	-192(%rbp), %rcx
	movq	-184(%rbp), %r8
	movq	-176(%rbp), %r9
	movq	-168(%rbp), %rax
	movq	-160(%rbp), %r10
	movq	-152(%rbp), %r11
	movq	-144(%rbp), %rbx
	movq	-128(%rbp), %r14
	movq	-112(%rbp), %r15
	movq	-104(%rbp), %r12
	movq	-96(%rbp), %r13
	subq	$64, %rsp
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	movq	%r11, 16(%rsp)
	movq	%rbx, 24(%rsp)
	movq	%r14, 32(%rsp)
	movq	%r15, 40(%rsp)
	movq	%r12, 48(%rsp)
	movq	%r13, 56(%rsp)
	movb	$0, %al
	callq	snprintf
	addq	$64, %rsp
	movl	%eax, -212(%rbp)
	movl	-212(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jge	.LBB3_69
# BB#68:                                # %cond.true.214
	movl	-212(%rbp), %eax
	movl	%eax, -784(%rbp)        # 4-byte Spill
	jmp	.LBB3_70
.LBB3_69:                               # %cond.false.215
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -784(%rbp)        # 4-byte Spill
	jmp	.LBB3_70
.LBB3_70:                               # %cond.end.216
	movl	-784(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	%rcx, -48(%rbp)
.LBB3_71:                               # %return
	movq	-48(%rbp), %rax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	font_unparse_xlfd, .Lfunc_end3-font_unparse_xlfd
	.cfi_endproc

	.align	16, 0x90
	.type	font_unparse_fcname,@function
font_unparse_fcname:                    # @font_unparse_fcname
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
	subq	$320, %rsp              # imm = 0x140
	movl	$2, %eax
	movl	%eax, %r8d
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	.Lfont_unparse_fcname.style_names, %rdx
	movq	%rdx, -144(%rbp)
	movq	.Lfont_unparse_fcname.style_names+8, %rdx
	movq	%rdx, -136(%rbp)
	movq	.Lfont_unparse_fcname.style_names+16, %rdx
	movq	%rdx, -128(%rbp)
	movq	-16(%rbp), %rdi
	movq	%r8, %rsi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB4_5
# BB#1:                                 # %if.then
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB4_3
# BB#2:                                 # %if.then.4
	movq	-48(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, -48(%rbp)
	jmp	.LBB4_4
.LBB4_3:                                # %if.else
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -48(%rbp)
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %if.end.7
	movl	$8, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	AREF
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB4_9
# BB#6:                                 # %if.then.14
	movq	-64(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	je	.LBB4_8
# BB#7:                                 # %if.then.17
	movq	-64(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -20(%rbp)
.LBB4_8:                                # %if.end.20
	movl	$-1, -68(%rbp)
	jmp	.LBB4_10
.LBB4_9:                                # %if.else.21
	movl	$-1, -20(%rbp)
	movq	-64(%rbp), %rdi
	callq	XFLOAT_DATA
	cvttsd2si	%xmm0, %eax
	movl	%eax, -68(%rbp)
.LBB4_10:                               # %if.end.24
	movl	$1, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB4_15
# BB#11:                                # %if.then.29
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB4_13
# BB#12:                                # %if.then.34
	movq	-56(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, -56(%rbp)
	jmp	.LBB4_14
.LBB4_13:                               # %if.else.36
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -56(%rbp)
.LBB4_14:                               # %if.end.38
	jmp	.LBB4_15
.LBB4_15:                               # %if.end.39
	movl	$0, -72(%rbp)
.LBB4_16:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -72(%rbp)
	jge	.LBB4_19
# BB#17:                                # %for.body
                                        #   in Loop: Header=BB4_16 Depth=1
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	movl	-72(%rbp), %eax
	addl	$5, %eax
	movl	%eax, %esi
	callq	font_style_symbolic
	movslq	-72(%rbp), %rdi
	movq	%rax, -112(%rbp,%rdi,8)
# BB#18:                                # %for.inc
                                        #   in Loop: Header=BB4_16 Depth=1
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB4_16
.LBB4_19:                               # %for.end
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -88(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-200(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB4_24
# BB#20:                                # %if.then.46
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rax
	movq	-80(%rbp), %rcx
	subq	%rcx, %rax
	movq	-48(%rbp), %rcx
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	SSDATA
	movabsq	$.L.str.49, %rdx
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	-216(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	snprintf
	xorl	%r8d, %r8d
	movl	%eax, -148(%rbp)
	cmpl	-148(%rbp), %r8d
	jg	.LBB4_22
# BB#21:                                # %land.lhs.true
	movslq	-148(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	-80(%rbp), %rdx
	subq	%rdx, %rcx
	cmpq	%rcx, %rax
	jl	.LBB4_23
.LBB4_22:                               # %if.then.57
	movl	$-1, -4(%rbp)
	jmp	.LBB4_65
.LBB4_23:                               # %if.end.58
	movl	-148(%rbp), %eax
	movq	-80(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -80(%rbp)
.LBB4_24:                               # %if.end.61
	cmpl	$0, -68(%rbp)
	jle	.LBB4_29
# BB#25:                                # %if.then.64
	movabsq	$.L.str.50, %rax
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rcx
	movq	-80(%rbp), %rdx
	subq	%rdx, %rcx
	movq	-80(%rbp), %rdx
	cmpq	-32(%rbp), %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %r8d
	movslq	%r8d, %rdx
	addq	%rdx, %rax
	movl	-68(%rbp), %r8d
	movq	%rcx, %rsi
	movq	%rax, %rdx
	movl	%r8d, %ecx
	movb	$0, %al
	callq	snprintf
	xorl	%ecx, %ecx
	movl	%eax, -152(%rbp)
	cmpl	-152(%rbp), %ecx
	jg	.LBB4_27
# BB#26:                                # %land.lhs.true.76
	movslq	-152(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	-80(%rbp), %rdx
	subq	%rdx, %rcx
	cmpq	%rcx, %rax
	jl	.LBB4_28
.LBB4_27:                               # %if.then.83
	movl	$-1, -4(%rbp)
	jmp	.LBB4_65
.LBB4_28:                               # %if.end.84
	movl	-152(%rbp), %eax
	movq	-80(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -80(%rbp)
	jmp	.LBB4_35
.LBB4_29:                               # %if.else.87
	cmpl	$0, -20(%rbp)
	jle	.LBB4_34
# BB#30:                                # %if.then.90
	movabsq	$.L.str.51, %rdx
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rax
	movq	-80(%rbp), %rcx
	subq	%rcx, %rax
	movl	-20(%rbp), %ecx
	movq	%rax, %rsi
	movb	$0, %al
	callq	snprintf
	xorl	%ecx, %ecx
	movl	%eax, -156(%rbp)
	cmpl	-156(%rbp), %ecx
	jg	.LBB4_32
# BB#31:                                # %land.lhs.true.98
	movslq	-156(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	-80(%rbp), %rdx
	subq	%rdx, %rcx
	cmpq	%rcx, %rax
	jl	.LBB4_33
.LBB4_32:                               # %if.then.105
	movl	$-1, -4(%rbp)
	jmp	.LBB4_65
.LBB4_33:                               # %if.end.106
	movl	-156(%rbp), %eax
	movq	-80(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -80(%rbp)
.LBB4_34:                               # %if.end.109
	jmp	.LBB4_35
.LBB4_35:                               # %if.end.110
	movl	$1, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB4_40
# BB#36:                                # %if.then.115
	movl	$1, %eax
	movl	%eax, %esi
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rcx
	movq	-80(%rbp), %rdx
	subq	%rdx, %rcx
	movq	-16(%rbp), %rdx
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	callq	AREF
	movq	%rax, %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SSDATA
	movabsq	$.L.str.52, %rdx
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	-240(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	snprintf
	xorl	%r8d, %r8d
	movl	%eax, -160(%rbp)
	cmpl	-160(%rbp), %r8d
	jg	.LBB4_38
# BB#37:                                # %land.lhs.true.126
	movslq	-160(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	-80(%rbp), %rdx
	subq	%rdx, %rcx
	cmpq	%rcx, %rax
	jl	.LBB4_39
.LBB4_38:                               # %if.then.133
	movl	$-1, -4(%rbp)
	jmp	.LBB4_65
.LBB4_39:                               # %if.end.134
	movl	-160(%rbp), %eax
	movq	-80(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -80(%rbp)
.LBB4_40:                               # %if.end.137
	movl	$0, -72(%rbp)
.LBB4_41:                               # %for.cond.138
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -72(%rbp)
	jge	.LBB4_49
# BB#42:                                # %for.body.141
                                        #   in Loop: Header=BB4_41 Depth=1
	xorl	%edi, %edi
	movslq	-72(%rbp), %rax
	movq	-112(%rbp,%rax,8), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-248(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB4_47
# BB#43:                                # %if.then.147
                                        #   in Loop: Header=BB4_41 Depth=1
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rax
	movq	-80(%rbp), %rcx
	subq	%rcx, %rax
	movslq	-72(%rbp), %rcx
	movq	-144(%rbp,%rcx,8), %rcx
	movslq	-72(%rbp), %rdx
	movq	-112(%rbp,%rdx,8), %rdx
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, -264(%rbp)        # 8-byte Spill
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SSDATA
	movabsq	$.L.str.53, %rdx
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	-272(%rbp), %rsi        # 8-byte Reload
	movq	-264(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	snprintf
	xorl	%r9d, %r9d
	movl	%eax, -164(%rbp)
	cmpl	-164(%rbp), %r9d
	jg	.LBB4_45
# BB#44:                                # %land.lhs.true.161
                                        #   in Loop: Header=BB4_41 Depth=1
	movslq	-164(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	-80(%rbp), %rdx
	subq	%rdx, %rcx
	cmpq	%rcx, %rax
	jl	.LBB4_46
.LBB4_45:                               # %if.then.168
	movl	$-1, -4(%rbp)
	jmp	.LBB4_65
.LBB4_46:                               # %if.end.169
                                        #   in Loop: Header=BB4_41 Depth=1
	movl	-164(%rbp), %eax
	movq	-80(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -80(%rbp)
.LBB4_47:                               # %if.end.172
                                        #   in Loop: Header=BB4_41 Depth=1
	jmp	.LBB4_48
.LBB4_48:                               # %for.inc.173
                                        #   in Loop: Header=BB4_41 Depth=1
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB4_41
.LBB4_49:                               # %for.end.175
	movl	$9, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	AREF
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB4_54
# BB#50:                                # %if.then.182
	movl	$9, %eax
	movl	%eax, %esi
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rcx
	movq	-80(%rbp), %rdx
	subq	%rdx, %rcx
	movq	-16(%rbp), %rdx
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, -288(%rbp)        # 8-byte Spill
	callq	AREF
	movabsq	$.L.str.54, %rdx
	sarq	$2, %rax
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	-288(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	snprintf
	xorl	%r8d, %r8d
	movl	%eax, -168(%rbp)
	cmpl	-168(%rbp), %r8d
	jg	.LBB4_52
# BB#51:                                # %land.lhs.true.192
	movslq	-168(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	-80(%rbp), %rdx
	subq	%rdx, %rcx
	cmpq	%rcx, %rax
	jl	.LBB4_53
.LBB4_52:                               # %if.then.199
	movl	$-1, -4(%rbp)
	jmp	.LBB4_65
.LBB4_53:                               # %if.end.200
	movl	-168(%rbp), %eax
	movq	-80(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -80(%rbp)
.LBB4_54:                               # %if.end.203
	movl	$10, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	AREF
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB4_59
# BB#55:                                # %if.then.210
	movl	$10, %eax
	movl	%eax, %esi
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rcx
	movq	-80(%rbp), %rdx
	subq	%rdx, %rcx
	movq	-16(%rbp), %rdx
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, -304(%rbp)        # 8-byte Spill
	callq	AREF
	movabsq	$.L.str.55, %rdx
	sarq	$2, %rax
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	-304(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	snprintf
	xorl	%r8d, %r8d
	movl	%eax, -172(%rbp)
	cmpl	-172(%rbp), %r8d
	jg	.LBB4_57
# BB#56:                                # %land.lhs.true.220
	movslq	-172(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	-80(%rbp), %rdx
	subq	%rdx, %rcx
	cmpq	%rcx, %rax
	jl	.LBB4_58
.LBB4_57:                               # %if.then.227
	movl	$-1, -4(%rbp)
	jmp	.LBB4_65
.LBB4_58:                               # %if.end.228
	movl	-172(%rbp), %eax
	movq	-80(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -80(%rbp)
.LBB4_59:                               # %if.end.231
	movl	$11, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	AREF
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB4_64
# BB#60:                                # %if.then.238
	movl	$11, %eax
	movl	%eax, %esi
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rcx
	movq	-80(%rbp), %rdx
	subq	%rdx, %rcx
	movq	-16(%rbp), %rdx
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	callq	AREF
	movabsq	$.L.str.57, %rcx
	movabsq	$.L.str.56, %rdx
	sarq	$2, %rax
	cmpq	$0, %rax
	cmoveq	%rdx, %rcx
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	-320(%rbp), %rsi        # 8-byte Reload
	movq	%rcx, %rdx
	movb	$0, %al
	callq	snprintf
	xorl	%r8d, %r8d
	movl	%eax, -176(%rbp)
	cmpl	-176(%rbp), %r8d
	jg	.LBB4_62
# BB#61:                                # %land.lhs.true.250
	movslq	-176(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	-80(%rbp), %rdx
	subq	%rdx, %rcx
	cmpq	%rcx, %rax
	jl	.LBB4_63
.LBB4_62:                               # %if.then.257
	movl	$-1, -4(%rbp)
	jmp	.LBB4_65
.LBB4_63:                               # %if.end.258
	movl	-176(%rbp), %eax
	movq	-80(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -80(%rbp)
.LBB4_64:                               # %if.end.261
	movq	-80(%rbp), %rax
	movq	-32(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	movl	%edx, -4(%rbp)
.LBB4_65:                               # %return
	movl	-4(%rbp), %eax
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	retq
.Lfunc_end4:
	.size	font_unparse_fcname, .Lfunc_end4-font_unparse_fcname
	.cfi_endproc

	.globl	font_intern_prop
	.align	16, 0x90
	.type	font_intern_prop,@function
font_intern_prop:                       # @font_intern_prop
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
	subq	$160, %rsp
	movb	%dl, %al
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	andb	$1, %al
	movb	%al, -25(%rbp)
	cmpq	$1, -24(%rbp)
	jne	.LBB5_3
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$42, %ecx
	jne	.LBB5_3
# BB#2:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB5_34
.LBB5_3:                                # %if.end
	testb	$1, -25(%rbp)
	jne	.LBB5_25
# BB#4:                                 # %land.lhs.true.3
	xorl	%eax, %eax
	movl	%eax, %ecx
	cmpq	-24(%rbp), %rcx
	jge	.LBB5_25
# BB#5:                                 # %land.lhs.true.6
	movl	$48, %eax
	movq	-16(%rbp), %rcx
	movsbl	(%rcx), %edx
	cmpl	%edx, %eax
	jg	.LBB5_25
# BB#6:                                 # %land.lhs.true.10
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$57, %ecx
	jg	.LBB5_25
# BB#7:                                 # %if.then.14
	movq	$1, -40(%rbp)
.LBB5_8:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jge	.LBB5_14
# BB#9:                                 # %for.body
                                        #   in Loop: Header=BB5_8 Depth=1
	movl	$48, %eax
	movq	-40(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movsbl	(%rdx,%rcx), %esi
	cmpl	%esi, %eax
	jg	.LBB5_11
# BB#10:                                # %land.lhs.true.20
                                        #   in Loop: Header=BB5_8 Depth=1
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$57, %edx
	jle	.LBB5_12
.LBB5_11:                               # %if.then.25
	jmp	.LBB5_14
.LBB5_12:                               # %if.end.26
                                        #   in Loop: Header=BB5_8 Depth=1
	jmp	.LBB5_13
.LBB5_13:                               # %for.inc
                                        #   in Loop: Header=BB5_8 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB5_8
.LBB5_14:                               # %for.end
	movq	-40(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB5_24
# BB#15:                                # %if.then.29
	movq	$0, -40(%rbp)
	movq	$0, -88(%rbp)
.LBB5_16:                               # %for.cond.30
                                        # =>This Inner Loop Header: Depth=1
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	movq	-40(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -40(%rbp)
	movq	-16(%rbp), %rdx
	movsbl	(%rdx,%rcx), %esi
	subl	$48, %esi
	movslq	%esi, %rcx
	addq	-88(%rbp), %rcx
	movq	%rcx, -88(%rbp)
	cmpq	%rax, %rcx
	jg	.LBB5_23
# BB#17:                                # %for.body.37
                                        #   in Loop: Header=BB5_16 Depth=1
	movq	-40(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB5_19
# BB#18:                                # %if.then.40
	movq	-88(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB5_34
.LBB5_19:                               # %if.end.42
                                        #   in Loop: Header=BB5_16 Depth=1
	movabsq	$230584300921369395, %rax # imm = 0x333333333333333
	cmpq	-88(%rbp), %rax
	jge	.LBB5_21
# BB#20:                                # %if.then.45
	jmp	.LBB5_23
.LBB5_21:                               # %if.end.46
                                        #   in Loop: Header=BB5_16 Depth=1
	jmp	.LBB5_22
.LBB5_22:                               # %for.inc.47
                                        #   in Loop: Header=BB5_16 Depth=1
	imulq	$10, -88(%rbp), %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB5_16
.LBB5_23:                               # %for.end.48
	movl	$728, %edi              # imm = 0x2D8
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	make_string
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	xsignal1
.LBB5_24:                               # %if.end.51
	jmp	.LBB5_25
.LBB5_25:                               # %if.end.52
	movq	globals+1656, %rdi
	callq	check_obarray
	leaq	-56(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	parse_str_as_multibyte
	movq	-80(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	cmpq	-56(%rbp), %rax
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	je	.LBB5_27
# BB#26:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.LBB5_28
.LBB5_27:                               # %cond.true
	movq	-24(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB5_29
.LBB5_28:                               # %cond.false
	movq	-56(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB5_29:                               # %cond.end
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	-24(%rbp), %rcx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	oblookup
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %r8d
	cmpl	$0, %r8d
	jne	.LBB5_31
# BB#30:                                # %if.then.62
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB5_34
.LBB5_31:                               # %if.end.63
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-24(%rbp), %r8
	cmpq	-56(%rbp), %r8
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	movb	%cl, -145(%rbp)         # 1-byte Spill
	je	.LBB5_33
# BB#32:                                # %land.rhs
	movq	-24(%rbp), %rax
	cmpq	-48(%rbp), %rax
	sete	%cl
	movb	%cl, -145(%rbp)         # 1-byte Spill
.LBB5_33:                               # %land.end
	movb	-145(%rbp), %al         # 1-byte Reload
	movzbl	%al, %ecx
	andl	$1, %ecx
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	-144(%rbp), %rsi        # 8-byte Reload
	movq	-128(%rbp), %rdx        # 8-byte Reload
	callq	make_specified_string
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-64(%rbp), %rdx
	callq	intern_driver
	movq	%rax, -8(%rbp)
.LBB5_34:                               # %return
	movq	-8(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	font_intern_prop, .Lfunc_end5-font_intern_prop
	.cfi_endproc

	.globl	font_style_to_value
	.align	16, 0x90
	.type	font_style_to_value,@function
font_style_to_value:                    # @font_style_to_value
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
	subq	$208, %rsp
	movb	%dl, %al
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	andb	$1, %al
	movb	%al, -17(%rbp)
	movq	font_style_table, %rdi
	movl	-8(%rbp), %edx
	subl	$5, %edx
	movl	%edx, %edx
	movl	%edx, %esi
	callq	AREF
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	CHECK_VECTOR
	movq	-32(%rbp), %rdi
	callq	ASIZE
	movl	%eax, %edx
	movl	%edx, -36(%rbp)
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %edx
	cmpl	$0, %edx
	jne	.LBB6_30
# BB#1:                                 # %if.then
	movl	$0, -40(%rbp)
.LBB6_2:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_4 Depth 2
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB6_14
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB6_2 Depth=1
	movq	-32(%rbp), %rdi
	movslq	-40(%rbp), %rsi
	callq	AREF
	movq	%rax, %rdi
	callq	CHECK_VECTOR
	movl	$1, -44(%rbp)
.LBB6_4:                                # %for.cond.9
                                        #   Parent Loop BB6_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-44(%rbp), %rax
	movq	-32(%rbp), %rdi
	movslq	-40(%rbp), %rsi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	AREF
	movq	%rax, %rdi
	callq	ASIZE
	movq	-112(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jge	.LBB6_12
# BB#5:                                 # %for.body.16
                                        #   in Loop: Header=BB6_4 Depth=2
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdi
	movslq	-40(%rbp), %rsi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	AREF
	movslq	-44(%rbp), %rsi
	movq	%rax, %rdi
	callq	AREF
	movq	-120(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB6_10
# BB#6:                                 # %if.then.23
	movq	-32(%rbp), %rdi
	movslq	-40(%rbp), %rsi
	callq	AREF
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB6_8
# BB#7:                                 # %cond.true
	jmp	.LBB6_9
.LBB6_8:                                # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rdi
	movslq	-40(%rbp), %rsi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	AREF
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	wrong_type_argument
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB6_9:                                # %cond.end
	movq	-32(%rbp), %rdi
	movslq	-40(%rbp), %rsi
	callq	AREF
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	sarq	$2, %rax
	shlq	$8, %rax
	movl	-40(%rbp), %ecx
	shll	$4, %ecx
	movslq	%ecx, %rsi
	orq	%rsi, %rax
	movl	-44(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rsi
	orq	%rsi, %rax
	movl	%eax, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB6_50
.LBB6_10:                               # %if.end
                                        #   in Loop: Header=BB6_4 Depth=2
	jmp	.LBB6_11
.LBB6_11:                               # %for.inc
                                        #   in Loop: Header=BB6_4 Depth=2
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB6_4
.LBB6_12:                               # %for.end
                                        #   in Loop: Header=BB6_2 Depth=1
	jmp	.LBB6_13
.LBB6_13:                               # %for.inc.45
                                        #   in Loop: Header=BB6_2 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB6_2
.LBB6_14:                               # %for.end.47
	movq	-16(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SSDATA
	movq	%rax, -56(%rbp)
	movl	$0, -40(%rbp)
.LBB6_15:                               # %for.cond.50
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_17 Depth 2
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB6_27
# BB#16:                                # %for.body.53
                                        #   in Loop: Header=BB6_15 Depth=1
	movl	$1, -44(%rbp)
.LBB6_17:                               # %for.cond.54
                                        #   Parent Loop BB6_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-44(%rbp), %rax
	movq	-32(%rbp), %rdi
	movslq	-40(%rbp), %rsi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	AREF
	movq	%rax, %rdi
	callq	ASIZE
	movq	-144(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jge	.LBB6_25
# BB#18:                                # %for.body.61
                                        #   in Loop: Header=BB6_17 Depth=2
	movq	-32(%rbp), %rdi
	movslq	-40(%rbp), %rsi
	callq	AREF
	movslq	-44(%rbp), %rsi
	movq	%rax, %rdi
	callq	AREF
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SSDATA
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	xstrcasecmp
	cmpl	$0, %eax
	jne	.LBB6_23
# BB#19:                                # %if.then.71
	movq	-32(%rbp), %rdi
	movslq	-40(%rbp), %rsi
	callq	AREF
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB6_21
# BB#20:                                # %cond.true.80
	jmp	.LBB6_22
.LBB6_21:                               # %cond.false.81
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rdi
	movslq	-40(%rbp), %rsi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	AREF
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	wrong_type_argument
	movq	%rax, -168(%rbp)        # 8-byte Spill
.LBB6_22:                               # %cond.end.86
	movq	-32(%rbp), %rdi
	movslq	-40(%rbp), %rsi
	callq	AREF
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	sarq	$2, %rax
	shlq	$8, %rax
	movl	-40(%rbp), %ecx
	shll	$4, %ecx
	movslq	%ecx, %rsi
	orq	%rsi, %rax
	movl	-44(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rsi
	orq	%rsi, %rax
	movl	%eax, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB6_50
.LBB6_23:                               # %if.end.99
                                        #   in Loop: Header=BB6_17 Depth=2
	jmp	.LBB6_24
.LBB6_24:                               # %for.inc.100
                                        #   in Loop: Header=BB6_17 Depth=2
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB6_17
.LBB6_25:                               # %for.end.102
                                        #   in Loop: Header=BB6_15 Depth=1
	jmp	.LBB6_26
.LBB6_26:                               # %for.inc.103
                                        #   in Loop: Header=BB6_15 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB6_15
.LBB6_27:                               # %for.end.105
	testb	$1, -17(%rbp)
	jne	.LBB6_29
# BB#28:                                # %if.then.106
	movl	$-1, -4(%rbp)
	jmp	.LBB6_50
.LBB6_29:                               # %if.end.107
	movl	$10, %eax
	movl	%eax, %edi
	movl	$402, %eax              # imm = 0x192
	movl	%eax, %esi
	callq	Fmake_vector
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movq	-16(%rbp), %rdx
	callq	ASET
	movl	$6, %ecx
	movl	%ecx, %edi
	movq	font_style_table, %rax
	movl	-8(%rbp), %ecx
	subl	$5, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-32(%rbp), %rdx
	movq	%rdx, -80(%rbp)
	movq	-64(%rbp), %rdx
	movq	%rsi, -176(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	Fmake_vector
	movl	$2, %ecx
	movl	%ecx, %edi
	leaq	-80(%rbp), %rsi
	movq	%rax, -72(%rbp)
	callq	Fvconcat
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	-176(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	movl	-40(%rbp), %ecx
	shll	$4, %ecx
	orl	$25600, %ecx            # imm = 0x6400
	movl	%ecx, -4(%rbp)
	jmp	.LBB6_50
.LBB6_30:                               # %if.else
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -96(%rbp)
	movl	$0, -84(%rbp)
	movl	$-1, -88(%rbp)
.LBB6_31:                               # %for.cond.117
                                        # =>This Inner Loop Header: Depth=1
	movl	-84(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB6_47
# BB#32:                                # %for.body.120
                                        #   in Loop: Header=BB6_31 Depth=1
	movq	-32(%rbp), %rdi
	movslq	-84(%rbp), %rsi
	callq	AREF
	movq	%rax, %rdi
	callq	CHECK_VECTOR
	movq	-32(%rbp), %rdi
	movslq	-84(%rbp), %rsi
	callq	AREF
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB6_34
# BB#33:                                # %cond.true.131
                                        #   in Loop: Header=BB6_31 Depth=1
	jmp	.LBB6_35
.LBB6_34:                               # %cond.false.132
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rdi
	movslq	-84(%rbp), %rsi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	AREF
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	wrong_type_argument
	movq	%rax, -200(%rbp)        # 8-byte Spill
.LBB6_35:                               # %cond.end.137
                                        #   in Loop: Header=BB6_31 Depth=1
	movq	-32(%rbp), %rdi
	movslq	-84(%rbp), %rsi
	callq	AREF
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -100(%rbp)
	movq	-96(%rbp), %rax
	movslq	-100(%rbp), %rsi
	cmpq	%rsi, %rax
	jne	.LBB6_37
# BB#36:                                # %if.then.146
	movl	-100(%rbp), %eax
	shll	$8, %eax
	movl	-84(%rbp), %ecx
	shll	$4, %ecx
	orl	%ecx, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB6_50
.LBB6_37:                               # %if.end.150
                                        #   in Loop: Header=BB6_31 Depth=1
	movq	-96(%rbp), %rax
	movslq	-100(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB6_45
# BB#38:                                # %if.then.154
	testb	$1, -17(%rbp)
	jne	.LBB6_40
# BB#39:                                # %if.then.156
	movl	$-1, -4(%rbp)
	jmp	.LBB6_50
.LBB6_40:                               # %if.end.157
	cmpl	$0, -84(%rbp)
	je	.LBB6_42
# BB#41:                                # %lor.lhs.false
	movslq	-100(%rbp), %rax
	subq	-96(%rbp), %rax
	movq	-96(%rbp), %rcx
	movslq	-88(%rbp), %rdx
	subq	%rdx, %rcx
	cmpq	%rcx, %rax
	jge	.LBB6_43
.LBB6_42:                               # %cond.true.166
	movl	-100(%rbp), %eax
	shll	$8, %eax
	movl	-84(%rbp), %ecx
	shll	$4, %ecx
	orl	%ecx, %eax
	movl	%eax, -204(%rbp)        # 4-byte Spill
	jmp	.LBB6_44
.LBB6_43:                               # %cond.false.170
	movl	-88(%rbp), %eax
	shll	$8, %eax
	movl	-84(%rbp), %ecx
	subl	$1, %ecx
	shll	$4, %ecx
	orl	%ecx, %eax
	movl	%eax, -204(%rbp)        # 4-byte Spill
.LBB6_44:                               # %cond.end.175
	movl	-204(%rbp), %eax        # 4-byte Reload
	movl	%eax, -4(%rbp)
	jmp	.LBB6_50
.LBB6_45:                               # %if.end.176
                                        #   in Loop: Header=BB6_31 Depth=1
	movl	-100(%rbp), %eax
	movl	%eax, -88(%rbp)
# BB#46:                                # %for.inc.177
                                        #   in Loop: Header=BB6_31 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB6_31
.LBB6_47:                               # %for.end.179
	testb	$1, -17(%rbp)
	jne	.LBB6_49
# BB#48:                                # %if.then.181
	movl	$-1, -4(%rbp)
	jmp	.LBB6_50
.LBB6_49:                               # %if.end.182
	movl	-88(%rbp), %eax
	shll	$8, %eax
	movl	-84(%rbp), %ecx
	subl	$1, %ecx
	shll	$4, %ecx
	orl	%ecx, %eax
	movl	%eax, -4(%rbp)
.LBB6_50:                               # %return
	movl	-4(%rbp), %eax
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	font_style_to_value, .Lfunc_end6-font_style_to_value
	.cfi_endproc

	.globl	font_style_symbolic
	.align	16, 0x90
	.type	font_style_symbolic,@function
font_style_symbolic:                    # @font_style_symbolic
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
	subq	$80, %rsp
	movb	%dl, %al
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	andb	$1, %al
	movb	%al, -21(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %edx
	movl	%edx, %esi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB7_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB7_9
.LBB7_2:                                # %if.end
	movq	font_style_table, %rdi
	movl	-20(%rbp), %eax
	subl	$5, %eax
	movl	%eax, %eax
	movl	%eax, %esi
	callq	AREF
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	CHECK_VECTOR
	movq	-32(%rbp), %rax
	sarq	$2, %rax
	andq	$255, %rax
	movl	%eax, %ecx
	movl	%ecx, -52(%rbp)
	movq	-40(%rbp), %rdi
	movl	-52(%rbp), %ecx
	sarl	$4, %ecx
	andl	$15, %ecx
	movslq	%ecx, %rsi
	callq	AREF
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	CHECK_VECTOR
	testb	$1, -21(%rbp)
	je	.LBB7_4
# BB#3:                                 # %cond.true
	movl	$1, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	callq	AREF
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB7_5
.LBB7_4:                                # %cond.false
	movq	-48(%rbp), %rdi
	movl	-52(%rbp), %eax
	andl	$15, %eax
	addl	$1, %eax
	movslq	%eax, %rsi
	callq	AREF
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB7_5:                                # %cond.end
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB7_7
# BB#6:                                 # %cond.true.20
	jmp	.LBB7_8
.LBB7_7:                                # %cond.false.21
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB7_8:                                # %cond.end.23
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB7_9:                                # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	font_style_symbolic, .Lfunc_end7-font_style_symbolic
	.cfi_endproc

	.globl	find_font_encoding
	.align	16, 0x90
	.type	find_font_encoding,@function
find_font_encoding:                     # @find_font_encoding
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	globals+816, %rdi
	movq	%rdi, -24(%rbp)
.LBB8_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB8_12
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB8_10
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB8_4
	jmp	.LBB8_10
.LBB8_4:                                # %land.lhs.true.9
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	fast_string_match_ignore_case
	cmpq	$0, %rax
	jl	.LBB8_10
# BB#5:                                 # %land.lhs.true.15
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB8_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-32(%rbp), %rdi
	subq	$3, %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	hash_lookup
	cmpq	$0, %rax
	jge	.LBB8_9
	jmp	.LBB8_10
.LBB8_7:                                # %cond.false
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB8_10
# BB#8:                                 # %land.lhs.true.35
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-32(%rbp), %rdi
	subq	$3, %rdi
	movq	8(%rdi), %rdi
	subq	$3, %rdi
	movq	(%rdi), %rsi
	movq	%rax, %rdi
	callq	hash_lookup
	cmpq	$0, %rax
	jl	.LBB8_10
.LBB8_9:                                # %if.then
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB8_13
.LBB8_10:                               # %if.end
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_11
.LBB8_11:                               # %for.inc
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB8_1
.LBB8_12:                               # %for.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB8_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	find_font_encoding, .Lfunc_end8-find_font_encoding
	.cfi_endproc

	.globl	font_registry_charsets
	.align	16, 0x90
	.type	font_registry_charsets,@function
font_registry_charsets:                 # @font_registry_charsets
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
	subq	$176, %rsp
	movl	$901, %eax              # imm = 0x385
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	font_charset_alist, %rsi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	Fassoc_string
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB9_4
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB9_3
# BB#2:                                 # %if.then.5
	movl	$-1, -4(%rbp)
	jmp	.LBB9_28
.LBB9_3:                                # %if.end
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -44(%rbp)
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -48(%rbp)
	jmp	.LBB9_19
.LBB9_4:                                # %if.else
	movq	-16(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	find_font_encoding
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB9_7
# BB#5:                                 # %land.lhs.true
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	hash_lookup
	cmpq	$0, %rax
	jl	.LBB9_7
# BB#6:                                 # %if.then.21
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	Vcharset_hash_table, %rsi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	Fgethash
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -48(%rbp)
	movl	%ecx, -44(%rbp)
	jmp	.LBB9_18
.LBB9_7:                                # %if.else.27
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB9_16
# BB#8:                                 # %if.then.32
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-40(%rbp), %rdi
	subq	$3, %rdi
	movq	(%rdi), %rsi
	movq	%rax, %rdi
	callq	hash_lookup
	cmpq	$0, %rax
	jge	.LBB9_10
# BB#9:                                 # %if.then.39
	jmp	.LBB9_27
.LBB9_10:                               # %if.end.40
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
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
	xorl	%edi, %edi
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -44(%rbp)
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB9_12
# BB#11:                                # %if.then.54
	movl	$-1, -48(%rbp)
	jmp	.LBB9_15
.LBB9_12:                               # %if.else.55
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-40(%rbp), %rdi
	subq	$3, %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	hash_lookup
	cmpq	$0, %rax
	jge	.LBB9_14
# BB#13:                                # %if.then.63
	jmp	.LBB9_27
.LBB9_14:                               # %if.end.64
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
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
	movl	%ecx, -48(%rbp)
.LBB9_15:                               # %if.end.73
	jmp	.LBB9_17
.LBB9_16:                               # %if.else.74
	jmp	.LBB9_27
.LBB9_17:                               # %if.end.75
	jmp	.LBB9_18
.LBB9_18:                               # %if.end.76
	movslq	-44(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movslq	-48(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	Fcons
	movq	%rax, -40(%rbp)
	movq	font_charset_alist, %rdi
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rsi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, %rdi
	callq	list1
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	nconc2
	movq	%rax, font_charset_alist
.LBB9_19:                               # %if.end.85
	cmpq	$0, -24(%rbp)
	je	.LBB9_21
# BB#20:                                # %if.then.86
	movq	charset_table, %rax
	movslq	-44(%rbp), %rcx
	imulq	$328, %rcx, %rcx        # imm = 0x148
	addq	%rcx, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB9_21:                               # %if.end.87
	cmpq	$0, -32(%rbp)
	je	.LBB9_26
# BB#22:                                # %if.then.89
	cmpl	$0, -48(%rbp)
	jl	.LBB9_24
# BB#23:                                # %cond.true
	movq	charset_table, %rax
	movslq	-48(%rbp), %rcx
	imulq	$328, %rcx, %rcx        # imm = 0x148
	addq	%rcx, %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jmp	.LBB9_25
.LBB9_24:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	jmp	.LBB9_25
.LBB9_25:                               # %cond.end
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB9_26:                               # %if.end.94
	movl	$0, -4(%rbp)
	jmp	.LBB9_28
.LBB9_27:                               # %invalid_entry
	xorl	%edi, %edi
	movq	font_charset_alist, %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	%rax, %rdi
	callq	list1
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	nconc2
	movq	%rax, font_charset_alist
	movl	$-1, -4(%rbp)
.LBB9_28:                               # %return
	movl	-4(%rbp), %eax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	font_registry_charsets, .Lfunc_end9-font_registry_charsets
	.cfi_endproc

	.globl	font_put_extra
	.align	16, 0x90
	.type	font_put_extra,@function
font_put_extra:                         # @font_put_extra
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
	subq	$144, %rsp
	movl	$12, %eax
	movl	%eax, %ecx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rcx, %rsi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB10_2
# BB#1:                                 # %cond.true
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB10_3
.LBB10_2:                               # %cond.false
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	assq_no_quit
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB10_3:                               # %cond.end
	movq	-72(%rbp), %rax         # 8-byte Reload
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB10_13
# BB#4:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -56(%rbp)
.LBB10_5:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -81(%rbp)          # 1-byte Spill
	jne	.LBB10_7
# BB#6:                                 # %land.rhs
                                        #   in Loop: Header=BB10_5 Depth=1
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rsi
	callq	Fstring_lessp
	xorl	%edi, %edi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%cl
	movb	%cl, -81(%rbp)          # 1-byte Spill
.LBB10_7:                               # %land.end
                                        #   in Loop: Header=BB10_5 Depth=1
	movb	-81(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB10_8
	jmp	.LBB10_9
.LBB10_8:                               # %while.body
                                        #   in Loop: Header=BB10_5 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB10_5
.LBB10_9:                               # %while.end
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB10_11
# BB#10:                                # %if.then.19
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rsi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	Fcons
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movl	$12, %ecx
	movl	%ecx, %esi
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	jmp	.LBB10_12
.LBB10_11:                              # %if.else
	movq	-56(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rsi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	Fcons
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	XSETCDR
.LBB10_12:                              # %if.end
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB10_16
.LBB10_13:                              # %if.end.24
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	XSETCDR
	xorl	%edi, %edi
	movq	-32(%rbp), %rsi
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB10_15
# BB#14:                                # %if.then.28
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rsi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	Fdelq
	movl	$12, %ecx
	movl	%ecx, %esi
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
.LBB10_15:                              # %if.end.30
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB10_16:                              # %return
	movq	-8(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	font_put_extra, .Lfunc_end10-font_put_extra
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	4621819117588971520     # double 10
.LCPI11_1:
	.quad	-4616189618054758400    # double -1
	.text
	.globl	font_parse_xlfd
	.align	16, 0x90
	.type	font_parse_xlfd,@function
font_parse_xlfd:                        # @font_parse_xlfd
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
	subq	$656, %rsp              # imm = 0x290
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	cmpq	$255, -24(%rbp)
	jg	.LBB11_2
# BB#1:                                 # %lor.lhs.false
	cmpq	$0, -24(%rbp)
	jne	.LBB11_3
.LBB11_2:                               # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB11_110
.LBB11_3:                               # %if.end
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$42, %ecx
	jne	.LBB11_7
# BB#4:                                 # %land.lhs.true
	cmpq	$1, -24(%rbp)
	je	.LBB11_6
# BB#5:                                 # %lor.lhs.false.5
	movq	-16(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$45, %ecx
	jne	.LBB11_7
.LBB11_6:                               # %if.then.10
	movl	$1, -36(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -176(%rbp)
	jmp	.LBB11_8
.LBB11_7:                               # %if.else
	movl	$0, -36(%rbp)
.LBB11_8:                               # %if.end.12
	movq	-16(%rbp), %rax
	movslq	-36(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -192(%rbp)
.LBB11_9:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-192(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB11_16
# BB#10:                                # %for.body
                                        #   in Loop: Header=BB11_9 Depth=1
	movq	-192(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$45, %ecx
	jne	.LBB11_14
# BB#11:                                # %if.then.17
                                        #   in Loop: Header=BB11_9 Depth=1
	movq	-192(%rbp), %rax
	addq	$1, %rax
	movl	-36(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -36(%rbp)
	movslq	%ecx, %rsi
	movq	%rax, -176(%rbp,%rsi,8)
	cmpl	$14, -36(%rbp)
	jne	.LBB11_13
# BB#12:                                # %if.then.22
	jmp	.LBB11_16
.LBB11_13:                              # %if.end.23
                                        #   in Loop: Header=BB11_9 Depth=1
	jmp	.LBB11_14
.LBB11_14:                              # %if.end.24
                                        #   in Loop: Header=BB11_9 Depth=1
	jmp	.LBB11_15
.LBB11_15:                              # %for.inc
                                        #   in Loop: Header=BB11_9 Depth=1
	movq	-192(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -192(%rbp)
	jmp	.LBB11_9
.LBB11_16:                              # %for.end
	movq	-16(%rbp), %rax
	addq	-24(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movq	%rax, -176(%rbp,%rcx,8)
	cmpl	$14, -36(%rbp)
	jne	.LBB11_58
# BB#17:                                # %if.then.30
	movl	$1, %edx
	movq	-32(%rbp), %rdi
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rcx
	addq	$-1, %rcx
	movq	-176(%rbp), %rsi
	subq	%rsi, %rcx
	movq	%rdi, -472(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	font_intern_prop
	movl	$1, %edx
	movl	%edx, %esi
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	movl	$1, %edx
	movq	-32(%rbp), %rdi
	movq	-168(%rbp), %rax
	movq	-160(%rbp), %rcx
	addq	$-1, %rcx
	movq	-168(%rbp), %rsi
	subq	%rsi, %rcx
	movq	%rdi, -480(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	font_intern_prop
	movl	$2, %edx
	movl	%edx, %esi
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	movl	$2, -36(%rbp)
	movl	$5, -40(%rbp)
.LBB11_18:                              # %for.cond.43
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -36(%rbp)
	jg	.LBB11_25
# BB#19:                                # %for.body.46
                                        #   in Loop: Header=BB11_18 Depth=1
	movl	$1, %edx
	movslq	-36(%rbp), %rax
	movq	-176(%rbp,%rax,8), %rdi
	movl	-36(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	movq	-176(%rbp,%rax,8), %rax
	addq	$-1, %rax
	movslq	-36(%rbp), %rsi
	movq	-176(%rbp,%rsi,8), %rsi
	subq	%rsi, %rax
	movq	%rax, %rsi
	callq	font_intern_prop
	xorl	%edi, %edi
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-488(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB11_23
# BB#20:                                # %if.then.61
                                        #   in Loop: Header=BB11_18 Depth=1
	movl	$1, %edx
	movl	-40(%rbp), %edi
	movslq	-36(%rbp), %rax
	movq	-176(%rbp,%rax,8), %rax
	movl	-36(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rsi
	movq	-176(%rbp,%rsi,8), %rsi
	addq	$-1, %rsi
	movslq	-36(%rbp), %r8
	movq	-176(%rbp,%r8,8), %r8
	subq	%r8, %rsi
	movl	%edi, -492(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	callq	font_intern_prop
	xorl	%edx, %edx
	movl	-492(%rbp), %edi        # 4-byte Reload
	movq	%rax, %rsi
	callq	font_style_to_value
	movl	%eax, -44(%rbp)
	cmpl	$0, %eax
	jge	.LBB11_22
# BB#21:                                # %if.then.77
	movl	$-1, -4(%rbp)
	jmp	.LBB11_110
.LBB11_22:                              # %if.end.78
                                        #   in Loop: Header=BB11_18 Depth=1
	movq	-32(%rbp), %rdi
	movslq	-40(%rbp), %rsi
	movslq	-44(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdx
	callq	ASET
.LBB11_23:                              # %if.end.82
                                        #   in Loop: Header=BB11_18 Depth=1
	jmp	.LBB11_24
.LBB11_24:                              # %for.inc.83
                                        #   in Loop: Header=BB11_18 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB11_18
.LBB11_25:                              # %for.end.86
	movl	$1, %edx
	movq	-32(%rbp), %rdi
	movq	-136(%rbp), %rax
	movq	-128(%rbp), %rcx
	addq	$-1, %rcx
	movq	-136(%rbp), %rsi
	subq	%rsi, %rcx
	movq	%rdi, -504(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	font_intern_prop
	movl	$3, %edx
	movl	%edx, %esi
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	movq	-80(%rbp), %rdi
	movl	$.L.str, %r8d
	movl	%r8d, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB11_27
# BB#26:                                # %if.then.99
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$4, %edi
	movl	%edi, %esi
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	jmp	.LBB11_28
.LBB11_27:                              # %if.else.101
	movl	$1, %edx
	movq	-32(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	-80(%rbp), %rsi
	subq	%rsi, %rcx
	movq	%rdi, -520(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	font_intern_prop
	movl	$4, %edx
	movl	%edx, %esi
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
.LBB11_28:                              # %if.end.109
	movq	-128(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$91, %ecx
	jne	.LBB11_31
# BB#29:                                # %land.lhs.true.114
	movq	-192(%rbp), %rdi
	callq	parse_matrix
	movl	%eax, -196(%rbp)
	cmpl	$0, %eax
	jl	.LBB11_31
# BB#30:                                # %if.then.118
	movl	$8, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	movslq	-196(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, %rdx
	callq	ASET
	jmp	.LBB11_45
.LBB11_31:                              # %if.else.122
	xorl	%edx, %edx
	movq	-128(%rbp), %rdi
	movq	-120(%rbp), %rax
	addq	$-1, %rax
	movq	-128(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, %rsi
	callq	font_intern_prop
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %edx
	andl	$-5, %edx
	cmpl	$2, %edx
	jne	.LBB11_33
# BB#32:                                # %if.then.135
	movl	$8, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	movq	-184(%rbp), %rdx
	callq	ASET
	jmp	.LBB11_44
.LBB11_33:                              # %if.else.136
	movq	-32(%rbp), %rdi
	callq	FONT_ENTITY_P
	testb	$1, %al
	jne	.LBB11_34
	jmp	.LBB11_35
.LBB11_34:                              # %if.then.138
	movl	$-1, -4(%rbp)
	jmp	.LBB11_110
.LBB11_35:                              # %if.else.139
	movsd	.LCPI11_1, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -208(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$91, %ecx
	jne	.LBB11_37
# BB#36:                                # %if.then.144
	movq	-192(%rbp), %rdi
	callq	parse_matrix
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -208(%rbp)
	jmp	.LBB11_40
.LBB11_37:                              # %if.else.147
	movq	-192(%rbp), %rax
	movsbl	(%rax), %edi
	callq	c_isdigit
	testb	$1, %al
	jne	.LBB11_38
	jmp	.LBB11_39
.LBB11_38:                              # %if.then.150
	movq	-192(%rbp), %rdi
	callq	atoi
	movsd	.LCPI11_0, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	%eax, %xmm1
	movsd	%xmm1, -208(%rbp)
	movsd	-208(%rbp), %xmm1       # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -208(%rbp)
.LBB11_39:                              # %if.end.153
	jmp	.LBB11_40
.LBB11_40:                              # %if.end.154
	xorps	%xmm0, %xmm0
	movsd	-208(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB11_42
# BB#41:                                # %if.then.157
	movq	-32(%rbp), %rdi
	movsd	-208(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	%rdi, -528(%rbp)        # 8-byte Spill
	callq	make_float
	movl	$8, %ecx
	movl	%ecx, %esi
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
.LBB11_42:                              # %if.end.159
	jmp	.LBB11_43
.LBB11_43:                              # %if.end.160
	jmp	.LBB11_44
.LBB11_44:                              # %if.end.161
	jmp	.LBB11_45
.LBB11_45:                              # %if.end.162
	xorl	%edx, %edx
	movq	-104(%rbp), %rdi
	movq	-96(%rbp), %rax
	addq	$-1, %rax
	movq	-104(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, %rsi
	callq	font_intern_prop
	xorl	%edi, %edi
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-536(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB11_48
# BB#46:                                # %land.lhs.true.174
	movq	-184(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	je	.LBB11_48
# BB#47:                                # %if.then.180
	movl	$-1, -4(%rbp)
	jmp	.LBB11_110
.LBB11_48:                              # %if.end.181
	movl	$9, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	movq	-184(%rbp), %rdx
	callq	ASET
	xorl	%edx, %edx
	movq	-96(%rbp), %rdi
	movq	-88(%rbp), %rsi
	addq	$-1, %rsi
	movq	-96(%rbp), %rcx
	subq	%rcx, %rsi
	callq	font_intern_prop
	xorl	%edi, %edi
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-544(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB11_52
# BB#49:                                # %if.then.193
	movl	$120, %edi
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rsi
	movq	%rax, %rdi
	callq	font_prop_validate_spacing
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	je	.LBB11_51
# BB#50:                                # %if.then.201
	movl	$-1, -4(%rbp)
	jmp	.LBB11_110
.LBB11_51:                              # %if.end.202
	movl	$10, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	movq	-184(%rbp), %rdx
	callq	ASET
.LBB11_52:                              # %if.end.203
	movq	-88(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$126, %ecx
	jne	.LBB11_54
# BB#53:                                # %if.then.208
	movq	-192(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -192(%rbp)
.LBB11_54:                              # %if.end.210
	xorl	%edx, %edx
	movq	-192(%rbp), %rdi
	movq	-80(%rbp), %rax
	addq	$-1, %rax
	movq	-192(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, %rsi
	callq	font_intern_prop
	xorl	%edi, %edi
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-552(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB11_57
# BB#55:                                # %land.lhs.true.220
	movq	-184(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	je	.LBB11_57
# BB#56:                                # %if.then.226
	movl	$-1, -4(%rbp)
	jmp	.LBB11_110
.LBB11_57:                              # %if.end.227
	movl	$11, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	movq	-184(%rbp), %rdx
	callq	ASET
	jmp	.LBB11_109
.LBB11_58:                              # %if.else.228
	movb	$0, -209(%rbp)
	movq	-32(%rbp), %rdi
	callq	FONT_ENTITY_P
	testb	$1, %al
	jne	.LBB11_59
	jmp	.LBB11_60
.LBB11_59:                              # %if.then.230
	movl	$-1, -4(%rbp)
	jmp	.LBB11_110
.LBB11_60:                              # %if.end.231
	movl	$0, -40(%rbp)
.LBB11_61:                              # %for.cond.232
                                        # =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB11_73
# BB#62:                                # %for.body.235
                                        #   in Loop: Header=BB11_61 Depth=1
	movslq	-40(%rbp), %rax
	movq	-176(%rbp,%rax,8), %rax
	movsbl	(%rax), %ecx
	cmpl	$42, %ecx
	jne	.LBB11_67
# BB#63:                                # %if.then.241
                                        #   in Loop: Header=BB11_61 Depth=1
	movslq	-40(%rbp), %rax
	movq	-176(%rbp,%rax,8), %rax
	movsbl	1(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB11_66
# BB#64:                                # %land.lhs.true.247
                                        #   in Loop: Header=BB11_61 Depth=1
	movslq	-40(%rbp), %rax
	movq	-176(%rbp,%rax,8), %rax
	movsbl	1(%rax), %ecx
	cmpl	$45, %ecx
	je	.LBB11_66
# BB#65:                                # %if.then.254
	movl	$-1, -4(%rbp)
	jmp	.LBB11_110
.LBB11_66:                              # %if.end.255
                                        #   in Loop: Header=BB11_61 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movslq	-40(%rbp), %rcx
	movq	%rax, -336(%rbp,%rcx,8)
	movb	$1, -209(%rbp)
	jmp	.LBB11_71
.LBB11_67:                              # %if.else.259
                                        #   in Loop: Header=BB11_61 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB11_69
# BB#68:                                # %if.then.263
                                        #   in Loop: Header=BB11_61 Depth=1
	xorl	%edx, %edx
	movslq	-40(%rbp), %rax
	movq	-176(%rbp,%rax,8), %rdi
	movl	-40(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	movq	-176(%rbp,%rax,8), %rax
	addq	$-1, %rax
	movslq	-40(%rbp), %rsi
	movq	-176(%rbp,%rsi,8), %rsi
	subq	%rsi, %rax
	movq	%rax, %rsi
	callq	font_intern_prop
	movslq	-40(%rbp), %rsi
	movq	%rax, -336(%rbp,%rsi,8)
	jmp	.LBB11_70
.LBB11_69:                              # %if.else.278
                                        #   in Loop: Header=BB11_61 Depth=1
	xorl	%edx, %edx
	movslq	-40(%rbp), %rax
	movq	-176(%rbp,%rax,8), %rdi
	movslq	-36(%rbp), %rax
	movq	-176(%rbp,%rax,8), %rax
	movslq	-40(%rbp), %rcx
	movq	-176(%rbp,%rcx,8), %rcx
	subq	%rcx, %rax
	movq	%rax, %rsi
	callq	font_intern_prop
	movslq	-40(%rbp), %rcx
	movq	%rax, -336(%rbp,%rcx,8)
.LBB11_70:                              # %if.end.291
                                        #   in Loop: Header=BB11_61 Depth=1
	jmp	.LBB11_71
.LBB11_71:                              # %if.end.292
                                        #   in Loop: Header=BB11_61 Depth=1
	jmp	.LBB11_72
.LBB11_72:                              # %for.inc.293
                                        #   in Loop: Header=BB11_61 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB11_61
.LBB11_73:                              # %for.end.295
	testb	$1, -209(%rbp)
	jne	.LBB11_75
# BB#74:                                # %if.then.297
	movl	$-1, -4(%rbp)
	jmp	.LBB11_110
.LBB11_75:                              # %if.end.298
	leaq	-336(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	font_expand_wildcards
	cmpl	$0, %eax
	jge	.LBB11_77
# BB#76:                                # %if.then.302
	movl	$-1, -4(%rbp)
	jmp	.LBB11_110
.LBB11_77:                              # %if.end.303
	movl	$1, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	movq	-336(%rbp), %rdx
	callq	ASET
	movl	$2, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	movq	-328(%rbp), %rdx
	callq	ASET
	movl	$2, -36(%rbp)
	movl	$5, -40(%rbp)
.LBB11_78:                              # %for.cond.306
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -36(%rbp)
	jg	.LBB11_85
# BB#79:                                # %for.body.309
                                        #   in Loop: Header=BB11_78 Depth=1
	xorl	%edi, %edi
	movslq	-36(%rbp), %rax
	movq	-336(%rbp,%rax,8), %rax
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-560(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB11_83
# BB#80:                                # %if.then.315
                                        #   in Loop: Header=BB11_78 Depth=1
	movl	$1, %edx
	movl	-40(%rbp), %edi
	movslq	-36(%rbp), %rax
	movq	-336(%rbp,%rax,8), %rsi
	callq	font_style_to_value
	movl	%eax, -44(%rbp)
	cmpl	$0, %eax
	jge	.LBB11_82
# BB#81:                                # %if.then.321
	movl	$-1, -4(%rbp)
	jmp	.LBB11_110
.LBB11_82:                              # %if.end.322
                                        #   in Loop: Header=BB11_78 Depth=1
	movq	-32(%rbp), %rdi
	movslq	-40(%rbp), %rsi
	movslq	-44(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdx
	callq	ASET
.LBB11_83:                              # %if.end.327
                                        #   in Loop: Header=BB11_78 Depth=1
	jmp	.LBB11_84
.LBB11_84:                              # %for.inc.328
                                        #   in Loop: Header=BB11_78 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB11_78
.LBB11_85:                              # %for.end.331
	movl	$3, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	movq	-296(%rbp), %rdx
	callq	ASET
	xorl	%edi, %edi
	movq	-240(%rbp), %rdx
	movq	%rdx, -184(%rbp)
	movq	-184(%rbp), %rdx
	movq	%rdx, -568(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-568(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB11_89
# BB#86:                                # %if.then.337
	xorl	%edi, %edi
	movq	-232(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-576(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB11_88
# BB#87:                                # %if.then.342
	movl	$4, %esi
	leaq	-376(%rbp), %rax
	movabsq	$.L.str.1, %rcx
	movq	$2, -376(%rbp)
	movq	$-1, -368(%rbp)
	movq	$0, -360(%rbp)
	movq	%rcx, -352(%rbp)
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -344(%rbp)
	movq	-344(%rbp), %rdi
	movq	-184(%rbp), %rax
	movq	%rdi, -584(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	SYMBOL_NAME
	movq	-584(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	concat2
	movq	%rax, -184(%rbp)
.LBB11_88:                              # %if.end.347
	jmp	.LBB11_93
.LBB11_89:                              # %if.else.348
	xorl	%edi, %edi
	movq	-232(%rbp), %rax
	movq	%rax, -592(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-592(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB11_91
# BB#90:                                # %if.then.353
	movl	$4, %esi
	leaq	-416(%rbp), %rax
	movabsq	$.L.str.2, %rcx
	movq	$2, -416(%rbp)
	movq	$-1, -408(%rbp)
	movq	$0, -400(%rbp)
	movq	%rcx, -392(%rbp)
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -384(%rbp)
	movq	-184(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	-384(%rbp), %rsi
	movq	%rax, %rdi
	callq	concat2
	movq	%rax, -184(%rbp)
	jmp	.LBB11_92
.LBB11_91:                              # %if.else.364
	movl	$4, %esi
	leaq	-456(%rbp), %rax
	movabsq	$.L.str.3, %rcx
	movq	$1, -456(%rbp)
	movq	$-1, -448(%rbp)
	movq	$0, -440(%rbp)
	movq	%rcx, -432(%rbp)
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -424(%rbp)
	movq	-184(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	-424(%rbp), %rsi
	movq	-232(%rbp), %rdi
	movq	%rax, -600(%rbp)        # 8-byte Spill
	movq	%rsi, -608(%rbp)        # 8-byte Spill
	callq	SYMBOL_NAME
	movq	-600(%rbp), %rdi        # 8-byte Reload
	movq	-608(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	concat3
	movq	%rax, -184(%rbp)
.LBB11_92:                              # %if.end.377
	jmp	.LBB11_93
.LBB11_93:                              # %if.end.378
	xorl	%edi, %edi
	movq	-184(%rbp), %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-616(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB11_95
# BB#94:                                # %if.then.382
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	-184(%rbp), %rcx
	movq	%rcx, -624(%rbp)        # 8-byte Spill
	movq	%rax, -632(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-624(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fintern
	movl	$4, %edx
	movl	%edx, %esi
	movq	-632(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
.LBB11_95:                              # %if.end.385
	movq	-288(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB11_97
# BB#96:                                # %if.then.392
	movl	$8, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	movq	-288(%rbp), %rdx
	callq	ASET
	jmp	.LBB11_100
.LBB11_97:                              # %if.else.394
	movq	-280(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB11_99
# BB#98:                                # %if.then.401
	movsd	.LCPI11_0, %xmm0        # xmm0 = mem[0],zero
	movq	-280(%rbp), %rax
	sarq	$2, %rax
	cvtsi2sdq	%rax, %xmm1
	movsd	%xmm1, -464(%rbp)
	movq	-32(%rbp), %rdi
	movsd	-464(%rbp), %xmm1       # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movq	%rdi, -640(%rbp)        # 8-byte Spill
	callq	make_float
	movl	$8, %ecx
	movl	%ecx, %esi
	movq	-640(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
.LBB11_99:                              # %if.end.407
	jmp	.LBB11_100
.LBB11_100:                             # %if.end.408
	movq	-272(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB11_102
# BB#101:                               # %if.then.415
	movl	$9, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	movq	-264(%rbp), %rdx
	callq	ASET
.LBB11_102:                             # %if.end.417
	xorl	%edi, %edi
	movq	-256(%rbp), %rax
	movq	%rax, -648(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-648(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB11_106
# BB#103:                               # %if.then.422
	movl	$120, %edi
	callq	builtin_lisp_symbol
	movq	-256(%rbp), %rsi
	movq	%rax, %rdi
	callq	font_prop_validate_spacing
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	je	.LBB11_105
# BB#104:                               # %if.then.431
	movl	$-1, -4(%rbp)
	jmp	.LBB11_110
.LBB11_105:                             # %if.end.432
	movl	$10, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	movq	-184(%rbp), %rdx
	callq	ASET
.LBB11_106:                             # %if.end.433
	movq	-248(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB11_108
# BB#107:                               # %if.then.440
	movl	$11, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	movq	-248(%rbp), %rdx
	callq	ASET
.LBB11_108:                             # %if.end.442
	jmp	.LBB11_109
.LBB11_109:                             # %if.end.443
	movl	$0, -4(%rbp)
.LBB11_110:                             # %return
	movl	-4(%rbp), %eax
	addq	$656, %rsp              # imm = 0x290
	popq	%rbp
	retq
.Lfunc_end11:
	.size	font_parse_xlfd, .Lfunc_end11-font_parse_xlfd
	.cfi_endproc

	.align	16, 0x90
	.type	parse_matrix,@function
parse_matrix:                           # @parse_matrix
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, -60(%rbp)
	movq	-8(%rbp), %rdi
	addq	$1, %rdi
	movq	%rdi, -8(%rbp)
.LBB12_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$4, -60(%rbp)
	movb	%cl, -61(%rbp)          # 1-byte Spill
	jge	.LBB12_4
# BB#2:                                 # %land.lhs.true
                                        #   in Loop: Header=BB12_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -61(%rbp)          # 1-byte Spill
	je	.LBB12_4
# BB#3:                                 # %land.rhs
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-8(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$93, %ecx
	setne	%dl
	movb	%dl, -61(%rbp)          # 1-byte Spill
.LBB12_4:                               # %land.end
                                        #   in Loop: Header=BB12_1 Depth=1
	movb	-61(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB12_5
	jmp	.LBB12_10
.LBB12_5:                               # %for.body
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-8(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$126, %ecx
	jne	.LBB12_7
# BB#6:                                 # %if.then
                                        #   in Loop: Header=BB12_1 Depth=1
	leaq	-56(%rbp), %rsi
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	strtod
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rsi # imm = 0x8000000000000000
	xorq	%rsi, %rax
	movd	%rax, %xmm0
	movslq	-60(%rbp), %rax
	movsd	%xmm0, -48(%rbp,%rax,8)
	jmp	.LBB12_8
.LBB12_7:                               # %if.else
                                        #   in Loop: Header=BB12_1 Depth=1
	leaq	-56(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	strtod
	movslq	-60(%rbp), %rsi
	movsd	%xmm0, -48(%rbp,%rsi,8)
.LBB12_8:                               # %if.end
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
# BB#9:                                 # %for.inc
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB12_1
.LBB12_10:                              # %for.end
	cmpl	$4, -60(%rbp)
	jne	.LBB12_12
# BB#11:                                # %cond.true
	cvttsd2si	-24(%rbp), %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB12_13
.LBB12_12:                              # %cond.false
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB12_13
.LBB12_13:                              # %cond.end
	movl	-68(%rbp), %eax         # 4-byte Reload
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	parse_matrix, .Lfunc_end12-parse_matrix
	.cfi_endproc

	.align	16, 0x90
	.type	font_prop_validate_spacing,@function
font_prop_validate_spacing:             # @font_prop_validate_spacing
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
	subq	$48, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movl	%eax, %edi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB13_3
# BB#1:                                 # %lor.lhs.false
	movq	-24(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB13_2
	jmp	.LBB13_4
.LBB13_2:                               # %land.lhs.true
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	cmpq	$110, %rax
	jg	.LBB13_4
.LBB13_3:                               # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB13_20
.LBB13_4:                               # %if.end
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB13_19
# BB#5:                                 # %land.lhs.true.5
	movq	-24(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SBYTES
	cmpq	$1, %rax
	jne	.LBB13_19
# BB#6:                                 # %if.then.10
	movq	-24(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SDATA
	movb	(%rax), %cl
	movb	%cl, -25(%rbp)
	movsbl	-25(%rbp), %edx
	cmpl	$99, %edx
	je	.LBB13_8
# BB#7:                                 # %lor.lhs.false.16
	movsbl	-25(%rbp), %eax
	cmpl	$67, %eax
	jne	.LBB13_9
.LBB13_8:                               # %if.then.20
	movq	$442, -8(%rbp)          # imm = 0x1BA
	jmp	.LBB13_20
.LBB13_9:                               # %if.end.21
	movsbl	-25(%rbp), %eax
	cmpl	$109, %eax
	je	.LBB13_11
# BB#10:                                # %lor.lhs.false.25
	movsbl	-25(%rbp), %eax
	cmpl	$77, %eax
	jne	.LBB13_12
.LBB13_11:                              # %if.then.29
	movq	$402, -8(%rbp)          # imm = 0x192
	jmp	.LBB13_20
.LBB13_12:                              # %if.end.30
	movsbl	-25(%rbp), %eax
	cmpl	$112, %eax
	je	.LBB13_14
# BB#13:                                # %lor.lhs.false.34
	movsbl	-25(%rbp), %eax
	cmpl	$80, %eax
	jne	.LBB13_15
.LBB13_14:                              # %if.then.38
	movq	$2, -8(%rbp)
	jmp	.LBB13_20
.LBB13_15:                              # %if.end.39
	movsbl	-25(%rbp), %eax
	cmpl	$100, %eax
	je	.LBB13_17
# BB#16:                                # %lor.lhs.false.43
	movsbl	-25(%rbp), %eax
	cmpl	$68, %eax
	jne	.LBB13_18
.LBB13_17:                              # %if.then.47
	movq	$362, -8(%rbp)          # imm = 0x16A
	jmp	.LBB13_20
.LBB13_18:                              # %if.end.48
	jmp	.LBB13_19
.LBB13_19:                              # %if.end.49
	movl	$372, %edi              # imm = 0x174
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB13_20:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	font_prop_validate_spacing, .Lfunc_end13-font_prop_validate_spacing
	.cfi_endproc

	.align	16, 0x90
	.type	font_expand_wildcards,@function
font_expand_wildcards:                  # @font_expand_wildcards
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
	subq	$496, %rsp              # imm = 0x1F0
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	$0, -324(%rbp)
	movl	$0, -340(%rbp)
.LBB14_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	$14, %eax
	movl	-324(%rbp), %ecx
	subl	-20(%rbp), %eax
	cmpl	%eax, %ecx
	jg	.LBB14_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	-340(%rbp), %eax
	shll	$1, %eax
	orl	$1, %eax
	movl	%eax, -340(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	-324(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -324(%rbp)
	jmp	.LBB14_1
.LBB14_4:                               # %for.end
	movl	$14, %eax
	movl	$0, -324(%rbp)
	movl	$0, -332(%rbp)
	subl	-20(%rbp), %eax
	movl	%eax, -336(%rbp)
.LBB14_5:                               # %for.cond.8
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_54 Depth 2
                                        #     Child Loop BB14_57 Depth 2
                                        #     Child Loop BB14_62 Depth 2
                                        #     Child Loop BB14_65 Depth 2
                                        #     Child Loop BB14_74 Depth 2
                                        #       Child Loop BB14_78 Depth 3
                                        #       Child Loop BB14_81 Depth 3
                                        #       Child Loop BB14_89 Depth 3
                                        #       Child Loop BB14_92 Depth 3
	movl	-324(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB14_106
# BB#6:                                 # %for.body.10
                                        #   in Loop: Header=BB14_5 Depth=1
	xorl	%edi, %edi
	movslq	-324(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -352(%rbp)
	movq	-352(%rbp), %rax
	movslq	-324(%rbp), %rcx
	movq	%rax, -144(%rbp,%rcx,8)
	movq	-352(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-392(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB14_8
# BB#7:                                 # %if.then
                                        #   in Loop: Header=BB14_5 Depth=1
	leaq	-320(%rbp), %rax
	movl	-332(%rbp), %ecx
	movslq	-324(%rbp), %rdx
	imulq	$12, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movl	%ecx, (%rsi)
	movl	-336(%rbp), %ecx
	movslq	-324(%rbp), %rdx
	imulq	$12, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movl	%ecx, 4(%rsi)
	movl	-340(%rbp), %ecx
	movslq	-324(%rbp), %rdx
	imulq	$12, %rdx, %rdx
	addq	%rdx, %rax
	movl	%ecx, 8(%rax)
	jmp	.LBB14_104
.LBB14_8:                               # %if.else
                                        #   in Loop: Header=BB14_5 Depth=1
	movq	-352(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB14_19
# BB#9:                                 # %if.then.30
                                        #   in Loop: Header=BB14_5 Depth=1
	movq	-352(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -376(%rbp)
	movl	-324(%rbp), %ecx
	addl	$1, %ecx
	cmpl	-20(%rbp), %ecx
	jne	.LBB14_11
# BB#10:                                # %if.then.34
                                        #   in Loop: Header=BB14_5 Depth=1
	movl	$13, -360(%rbp)
	movl	$13, -356(%rbp)
	movl	$8192, -364(%rbp)       # imm = 0x2000
	jmp	.LBB14_18
.LBB14_11:                              # %if.else.35
                                        #   in Loop: Header=BB14_5 Depth=1
	cmpq	$0, -376(%rbp)
	jne	.LBB14_13
# BB#12:                                # %if.then.38
                                        #   in Loop: Header=BB14_5 Depth=1
	movl	$6, -356(%rbp)
	movl	$11, -360(%rbp)
	movl	$3008, -364(%rbp)       # imm = 0xBC0
	jmp	.LBB14_17
.LBB14_13:                              # %if.else.39
                                        #   in Loop: Header=BB14_5 Depth=1
	cmpq	$48, -376(%rbp)
	jg	.LBB14_15
# BB#14:                                # %if.then.42
                                        #   in Loop: Header=BB14_5 Depth=1
	movl	$6, -360(%rbp)
	movl	$6, -356(%rbp)
	movl	$64, -364(%rbp)
	jmp	.LBB14_16
.LBB14_15:                              # %if.else.43
                                        #   in Loop: Header=BB14_5 Depth=1
	movl	$7, -356(%rbp)
	movl	$11, -360(%rbp)
	movl	$2944, -364(%rbp)       # imm = 0xB80
.LBB14_16:                              # %if.end
                                        #   in Loop: Header=BB14_5 Depth=1
	jmp	.LBB14_17
.LBB14_17:                              # %if.end.44
                                        #   in Loop: Header=BB14_5 Depth=1
	jmp	.LBB14_18
.LBB14_18:                              # %if.end.45
                                        #   in Loop: Header=BB14_5 Depth=1
	jmp	.LBB14_53
.LBB14_19:                              # %if.else.46
                                        #   in Loop: Header=BB14_5 Depth=1
	movq	-352(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SBYTES
	cmpq	$0, %rax
	jne	.LBB14_21
# BB#20:                                # %if.then.51
                                        #   in Loop: Header=BB14_5 Depth=1
	movl	$0, -356(%rbp)
	movl	$5, -360(%rbp)
	movl	$33, -364(%rbp)
	jmp	.LBB14_52
.LBB14_21:                              # %if.else.52
                                        #   in Loop: Header=BB14_5 Depth=1
	cmpl	$0, -324(%rbp)
	jne	.LBB14_23
# BB#22:                                # %if.then.55
                                        #   in Loop: Header=BB14_5 Depth=1
	movl	$0, -360(%rbp)
	movl	$0, -356(%rbp)
	movl	$1, -364(%rbp)
	jmp	.LBB14_51
.LBB14_23:                              # %if.else.56
                                        #   in Loop: Header=BB14_5 Depth=1
	movl	-324(%rbp), %eax
	addl	$1, %eax
	cmpl	-20(%rbp), %eax
	jne	.LBB14_28
# BB#24:                                # %if.then.60
                                        #   in Loop: Header=BB14_5 Depth=1
	movq	-352(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, -384(%rbp)
	movq	-384(%rbp), %rdi
	callq	SBYTES
	subq	$1, %rax
	movq	-384(%rbp), %rdi
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	SDATA
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movzbl	(%rax,%rdi), %ecx
	cmpl	$42, %ecx
	jne	.LBB14_26
# BB#25:                                # %if.then.70
                                        #   in Loop: Header=BB14_5 Depth=1
	movl	$12, -356(%rbp)
	movl	$13, -360(%rbp)
	movl	$12288, -364(%rbp)      # imm = 0x3000
	jmp	.LBB14_27
.LBB14_26:                              # %if.else.71
                                        #   in Loop: Header=BB14_5 Depth=1
	movl	$13, -360(%rbp)
	movl	$13, -356(%rbp)
	movl	$8192, -364(%rbp)       # imm = 0x2000
.LBB14_27:                              # %if.end.72
                                        #   in Loop: Header=BB14_5 Depth=1
	jmp	.LBB14_50
.LBB14_28:                              # %if.else.73
                                        #   in Loop: Header=BB14_5 Depth=1
	cmpl	$2, -332(%rbp)
	jg	.LBB14_32
# BB#29:                                # %land.lhs.true
                                        #   in Loop: Header=BB14_5 Depth=1
	cmpl	$2, -336(%rbp)
	jl	.LBB14_32
# BB#30:                                # %land.lhs.true.78
                                        #   in Loop: Header=BB14_5 Depth=1
	movl	$5, %edi
	xorl	%edx, %edx
	movq	-352(%rbp), %rsi
	callq	font_style_to_value
	sarl	$8, %eax
	cmpl	$0, %eax
	jl	.LBB14_32
# BB#31:                                # %if.then.83
                                        #   in Loop: Header=BB14_5 Depth=1
	movl	$2, -360(%rbp)
	movl	$2, -356(%rbp)
	movl	$4, -364(%rbp)
	jmp	.LBB14_49
.LBB14_32:                              # %if.else.84
                                        #   in Loop: Header=BB14_5 Depth=1
	cmpl	$3, -332(%rbp)
	jg	.LBB14_36
# BB#33:                                # %land.lhs.true.87
                                        #   in Loop: Header=BB14_5 Depth=1
	cmpl	$3, -336(%rbp)
	jl	.LBB14_36
# BB#34:                                # %land.lhs.true.90
                                        #   in Loop: Header=BB14_5 Depth=1
	movl	$6, %edi
	xorl	%edx, %edx
	movq	-352(%rbp), %rsi
	callq	font_style_to_value
	sarl	$8, %eax
	cmpl	$0, %eax
	jl	.LBB14_36
# BB#35:                                # %if.then.95
                                        #   in Loop: Header=BB14_5 Depth=1
	movl	$3, -360(%rbp)
	movl	$3, -356(%rbp)
	movl	$8, -364(%rbp)
	jmp	.LBB14_48
.LBB14_36:                              # %if.else.96
                                        #   in Loop: Header=BB14_5 Depth=1
	cmpl	$4, -332(%rbp)
	jg	.LBB14_40
# BB#37:                                # %land.lhs.true.99
                                        #   in Loop: Header=BB14_5 Depth=1
	cmpl	$4, -336(%rbp)
	jl	.LBB14_40
# BB#38:                                # %land.lhs.true.102
                                        #   in Loop: Header=BB14_5 Depth=1
	movl	$7, %edi
	xorl	%edx, %edx
	movq	-352(%rbp), %rsi
	callq	font_style_to_value
	sarl	$8, %eax
	cmpl	$0, %eax
	jl	.LBB14_40
# BB#39:                                # %if.then.107
                                        #   in Loop: Header=BB14_5 Depth=1
	movl	$4, -360(%rbp)
	movl	$4, -356(%rbp)
	movl	$16, -364(%rbp)
	jmp	.LBB14_47
.LBB14_40:                              # %if.else.108
                                        #   in Loop: Header=BB14_5 Depth=1
	movl	$233, %edi
	movq	-352(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-408(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB14_44
# BB#41:                                # %lor.lhs.false
                                        #   in Loop: Header=BB14_5 Depth=1
	movl	$634, %edi              # imm = 0x27A
	movq	-352(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-416(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB14_44
# BB#42:                                # %lor.lhs.false.115
                                        #   in Loop: Header=BB14_5 Depth=1
	movl	$738, %edi              # imm = 0x2E2
	movq	-352(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-424(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB14_44
# BB#43:                                # %lor.lhs.false.119
                                        #   in Loop: Header=BB14_5 Depth=1
	movl	$314, %edi              # imm = 0x13A
	movq	-352(%rbp), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-432(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB14_45
.LBB14_44:                              # %if.then.123
                                        #   in Loop: Header=BB14_5 Depth=1
	movl	$10, -360(%rbp)
	movl	$10, -356(%rbp)
	movl	$1024, -364(%rbp)       # imm = 0x400
	jmp	.LBB14_46
.LBB14_45:                              # %if.else.124
                                        #   in Loop: Header=BB14_5 Depth=1
	movl	$0, -356(%rbp)
	movl	$13, -360(%rbp)
	movl	$4131, -364(%rbp)       # imm = 0x1023
.LBB14_46:                              # %if.end.125
                                        #   in Loop: Header=BB14_5 Depth=1
	jmp	.LBB14_47
.LBB14_47:                              # %if.end.126
                                        #   in Loop: Header=BB14_5 Depth=1
	jmp	.LBB14_48
.LBB14_48:                              # %if.end.127
                                        #   in Loop: Header=BB14_5 Depth=1
	jmp	.LBB14_49
.LBB14_49:                              # %if.end.128
                                        #   in Loop: Header=BB14_5 Depth=1
	jmp	.LBB14_50
.LBB14_50:                              # %if.end.129
                                        #   in Loop: Header=BB14_5 Depth=1
	jmp	.LBB14_51
.LBB14_51:                              # %if.end.130
                                        #   in Loop: Header=BB14_5 Depth=1
	jmp	.LBB14_52
.LBB14_52:                              # %if.end.131
                                        #   in Loop: Header=BB14_5 Depth=1
	jmp	.LBB14_53
.LBB14_53:                              # %if.end.132
                                        #   in Loop: Header=BB14_5 Depth=1
	movl	-340(%rbp), %eax
	andl	-364(%rbp), %eax
	movl	%eax, -364(%rbp)
.LBB14_54:                              # %while.cond
                                        #   Parent Loop BB14_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-356(%rbp), %eax
	cmpl	-332(%rbp), %eax
	jge	.LBB14_56
# BB#55:                                # %while.body
                                        #   in Loop: Header=BB14_54 Depth=2
	movl	$1, %eax
	movl	-356(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -356(%rbp)
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	xorl	$-1, %eax
	andl	-364(%rbp), %eax
	movl	%eax, -364(%rbp)
	jmp	.LBB14_54
.LBB14_56:                              # %while.end
                                        #   in Loop: Header=BB14_5 Depth=1
	jmp	.LBB14_57
.LBB14_57:                              # %while.cond.139
                                        #   Parent Loop BB14_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$14, -356(%rbp)
	movb	%cl, -433(%rbp)         # 1-byte Spill
	jge	.LBB14_59
# BB#58:                                # %land.rhs
                                        #   in Loop: Header=BB14_57 Depth=2
	movl	$1, %eax
	movl	-364(%rbp), %ecx
	movl	-356(%rbp), %edx
	movl	%ecx, -440(%rbp)        # 4-byte Spill
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	movl	-440(%rbp), %edx        # 4-byte Reload
	andl	%eax, %edx
	cmpl	$0, %edx
	setne	%cl
	xorb	$-1, %cl
	movb	%cl, -433(%rbp)         # 1-byte Spill
.LBB14_59:                              # %land.end
                                        #   in Loop: Header=BB14_57 Depth=2
	movb	-433(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB14_60
	jmp	.LBB14_61
.LBB14_60:                              # %while.body.144
                                        #   in Loop: Header=BB14_57 Depth=2
	movl	-356(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -356(%rbp)
	jmp	.LBB14_57
.LBB14_61:                              # %while.end.146
                                        #   in Loop: Header=BB14_5 Depth=1
	jmp	.LBB14_62
.LBB14_62:                              # %while.cond.147
                                        #   Parent Loop BB14_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-360(%rbp), %eax
	cmpl	-336(%rbp), %eax
	jle	.LBB14_64
# BB#63:                                # %while.body.150
                                        #   in Loop: Header=BB14_62 Depth=2
	movl	$1, %eax
	movl	-360(%rbp), %ecx
	movl	%ecx, %edx
	addl	$-1, %edx
	movl	%edx, -360(%rbp)
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	xorl	$-1, %eax
	andl	-364(%rbp), %eax
	movl	%eax, -364(%rbp)
	jmp	.LBB14_62
.LBB14_64:                              # %while.end.154
                                        #   in Loop: Header=BB14_5 Depth=1
	jmp	.LBB14_65
.LBB14_65:                              # %while.cond.155
                                        #   Parent Loop BB14_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -360(%rbp)
	movb	%cl, -441(%rbp)         # 1-byte Spill
	jl	.LBB14_67
# BB#66:                                # %land.rhs.158
                                        #   in Loop: Header=BB14_65 Depth=2
	movl	$1, %eax
	movl	-364(%rbp), %ecx
	movl	-360(%rbp), %edx
	movl	%ecx, -448(%rbp)        # 4-byte Spill
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	movl	-448(%rbp), %edx        # 4-byte Reload
	andl	%eax, %edx
	cmpl	$0, %edx
	setne	%cl
	xorb	$-1, %cl
	movb	%cl, -441(%rbp)         # 1-byte Spill
.LBB14_67:                              # %land.end.163
                                        #   in Loop: Header=BB14_65 Depth=2
	movb	-441(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB14_68
	jmp	.LBB14_69
.LBB14_68:                              # %while.body.164
                                        #   in Loop: Header=BB14_65 Depth=2
	movl	-360(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -360(%rbp)
	jmp	.LBB14_65
.LBB14_69:                              # %while.end.166
                                        #   in Loop: Header=BB14_5 Depth=1
	movl	-356(%rbp), %eax
	cmpl	-360(%rbp), %eax
	jle	.LBB14_71
# BB#70:                                # %if.then.169
	movl	$-1, -4(%rbp)
	jmp	.LBB14_121
.LBB14_71:                              # %if.end.170
                                        #   in Loop: Header=BB14_5 Depth=1
	leaq	-320(%rbp), %rax
	movl	-356(%rbp), %ecx
	movslq	-324(%rbp), %rdx
	imulq	$12, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movl	%ecx, (%rsi)
	movl	-360(%rbp), %ecx
	movslq	-324(%rbp), %rdx
	imulq	$12, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movl	%ecx, 4(%rsi)
	movl	-364(%rbp), %ecx
	movslq	-324(%rbp), %rdx
	imulq	$12, %rdx, %rdx
	addq	%rdx, %rax
	movl	%ecx, 8(%rax)
	movl	-356(%rbp), %ecx
	cmpl	-332(%rbp), %ecx
	jg	.LBB14_73
# BB#72:                                # %lor.lhs.false.182
                                        #   in Loop: Header=BB14_5 Depth=1
	movl	-360(%rbp), %eax
	cmpl	-336(%rbp), %eax
	jge	.LBB14_103
.LBB14_73:                              # %if.then.185
                                        #   in Loop: Header=BB14_5 Depth=1
	movl	-356(%rbp), %eax
	movl	%eax, -332(%rbp)
	movl	-324(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -328(%rbp)
	movl	-356(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -356(%rbp)
	movl	-360(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -360(%rbp)
.LBB14_74:                              # %for.cond.189
                                        #   Parent Loop BB14_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB14_78 Depth 3
                                        #       Child Loop BB14_81 Depth 3
                                        #       Child Loop BB14_89 Depth 3
                                        #       Child Loop BB14_92 Depth 3
	cmpl	$0, -328(%rbp)
	jl	.LBB14_102
# BB#75:                                # %for.body.192
                                        #   in Loop: Header=BB14_74 Depth=2
	xorl	%edi, %edi
	movslq	-328(%rbp), %rax
	movq	-144(%rbp,%rax,8), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-456(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB14_86
# BB#76:                                # %land.lhs.true.198
                                        #   in Loop: Header=BB14_74 Depth=2
	leaq	-320(%rbp), %rax
	movslq	-328(%rbp), %rcx
	imulq	$12, %rcx, %rcx
	addq	%rcx, %rax
	movl	(%rax), %edx
	cmpl	-356(%rbp), %edx
	jge	.LBB14_86
# BB#77:                                # %if.then.204
                                        #   in Loop: Header=BB14_74 Depth=2
	jmp	.LBB14_78
.LBB14_78:                              # %while.cond.205
                                        #   Parent Loop BB14_5 Depth=1
                                        #     Parent Loop BB14_74 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leaq	-320(%rbp), %rax
	movslq	-328(%rbp), %rcx
	imulq	$12, %rcx, %rcx
	addq	%rcx, %rax
	movl	(%rax), %edx
	cmpl	-356(%rbp), %edx
	jge	.LBB14_80
# BB#79:                                # %while.body.211
                                        #   in Loop: Header=BB14_78 Depth=3
	leaq	-320(%rbp), %rax
	movl	$1, %ecx
	movslq	-328(%rbp), %rdx
	imulq	$12, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movl	(%rsi), %edi
	movl	%edi, %r8d
	addl	$1, %r8d
	movl	%r8d, (%rsi)
	movl	%ecx, -460(%rbp)        # 4-byte Spill
	movl	%edi, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-460(%rbp), %edi        # 4-byte Reload
	shll	%cl, %edi
	xorl	$-1, %edi
	movslq	-328(%rbp), %rdx
	imulq	$12, %rdx, %rdx
	addq	%rdx, %rax
	andl	8(%rax), %edi
	movl	%edi, 8(%rax)
	jmp	.LBB14_78
.LBB14_80:                              # %while.end.222
                                        #   in Loop: Header=BB14_74 Depth=2
	jmp	.LBB14_81
.LBB14_81:                              # %while.cond.223
                                        #   Parent Loop BB14_5 Depth=1
                                        #     Parent Loop BB14_74 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$14, -356(%rbp)
	movb	%cl, -461(%rbp)         # 1-byte Spill
	jge	.LBB14_83
# BB#82:                                # %land.rhs.226
                                        #   in Loop: Header=BB14_81 Depth=3
	movl	$1, %eax
	leaq	-320(%rbp), %rcx
	movslq	-328(%rbp), %rdx
	imulq	$12, %rdx, %rdx
	addq	%rdx, %rcx
	movl	8(%rcx), %esi
	movl	-356(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	andl	%eax, %esi
	cmpl	$0, %esi
	setne	%cl
	xorb	$-1, %cl
	movb	%cl, -461(%rbp)         # 1-byte Spill
.LBB14_83:                              # %land.end.234
                                        #   in Loop: Header=BB14_81 Depth=3
	movb	-461(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB14_84
	jmp	.LBB14_85
.LBB14_84:                              # %while.body.235
                                        #   in Loop: Header=BB14_81 Depth=3
	movl	-356(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -356(%rbp)
	jmp	.LBB14_81
.LBB14_85:                              # %while.end.237
                                        #   in Loop: Header=BB14_74 Depth=2
	leaq	-320(%rbp), %rax
	movl	-356(%rbp), %ecx
	movslq	-328(%rbp), %rdx
	imulq	$12, %rdx, %rdx
	addq	%rdx, %rax
	movl	%ecx, (%rax)
	jmp	.LBB14_87
.LBB14_86:                              # %if.else.241
                                        #   in Loop: Header=BB14_74 Depth=2
	leaq	-320(%rbp), %rax
	movslq	-328(%rbp), %rcx
	imulq	$12, %rcx, %rcx
	addq	%rcx, %rax
	movl	(%rax), %edx
	movl	%edx, -356(%rbp)
.LBB14_87:                              # %if.end.245
                                        #   in Loop: Header=BB14_74 Depth=2
	leaq	-320(%rbp), %rax
	movslq	-328(%rbp), %rcx
	imulq	$12, %rcx, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %edx
	cmpl	-360(%rbp), %edx
	jle	.LBB14_97
# BB#88:                                # %if.then.251
                                        #   in Loop: Header=BB14_74 Depth=2
	jmp	.LBB14_89
.LBB14_89:                              # %while.cond.252
                                        #   Parent Loop BB14_5 Depth=1
                                        #     Parent Loop BB14_74 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leaq	-320(%rbp), %rax
	movslq	-328(%rbp), %rcx
	imulq	$12, %rcx, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %edx
	cmpl	-360(%rbp), %edx
	jle	.LBB14_91
# BB#90:                                # %while.body.258
                                        #   in Loop: Header=BB14_89 Depth=3
	leaq	-320(%rbp), %rax
	movl	$1, %ecx
	movslq	-328(%rbp), %rdx
	imulq	$12, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movl	4(%rsi), %edi
	movl	%edi, %r8d
	addl	$-1, %r8d
	movl	%r8d, 4(%rsi)
	movl	%ecx, -468(%rbp)        # 4-byte Spill
	movl	%edi, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-468(%rbp), %edi        # 4-byte Reload
	shll	%cl, %edi
	xorl	$-1, %edi
	movslq	-328(%rbp), %rdx
	imulq	$12, %rdx, %rdx
	addq	%rdx, %rax
	andl	8(%rax), %edi
	movl	%edi, 8(%rax)
	jmp	.LBB14_89
.LBB14_91:                              # %while.end.269
                                        #   in Loop: Header=BB14_74 Depth=2
	jmp	.LBB14_92
.LBB14_92:                              # %while.cond.270
                                        #   Parent Loop BB14_5 Depth=1
                                        #     Parent Loop BB14_74 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -360(%rbp)
	movb	%cl, -469(%rbp)         # 1-byte Spill
	jl	.LBB14_94
# BB#93:                                # %land.rhs.273
                                        #   in Loop: Header=BB14_92 Depth=3
	movl	$1, %eax
	leaq	-320(%rbp), %rcx
	movslq	-328(%rbp), %rdx
	imulq	$12, %rdx, %rdx
	addq	%rdx, %rcx
	movl	8(%rcx), %esi
	movl	-360(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	andl	%eax, %esi
	cmpl	$0, %esi
	setne	%cl
	xorb	$-1, %cl
	movb	%cl, -469(%rbp)         # 1-byte Spill
.LBB14_94:                              # %land.end.281
                                        #   in Loop: Header=BB14_92 Depth=3
	movb	-469(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB14_95
	jmp	.LBB14_96
.LBB14_95:                              # %while.body.282
                                        #   in Loop: Header=BB14_92 Depth=3
	movl	-360(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -360(%rbp)
	jmp	.LBB14_92
.LBB14_96:                              # %while.end.284
                                        #   in Loop: Header=BB14_74 Depth=2
	leaq	-320(%rbp), %rax
	movl	-360(%rbp), %ecx
	movslq	-328(%rbp), %rdx
	imulq	$12, %rdx, %rdx
	addq	%rdx, %rax
	movl	%ecx, 4(%rax)
	jmp	.LBB14_98
.LBB14_97:                              # %if.else.288
                                        #   in Loop: Header=BB14_74 Depth=2
	leaq	-320(%rbp), %rax
	movslq	-328(%rbp), %rcx
	imulq	$12, %rcx, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %edx
	movl	%edx, -360(%rbp)
.LBB14_98:                              # %if.end.292
                                        #   in Loop: Header=BB14_74 Depth=2
	movl	-356(%rbp), %eax
	cmpl	-360(%rbp), %eax
	jle	.LBB14_100
# BB#99:                                # %if.then.295
	movl	$-1, -4(%rbp)
	jmp	.LBB14_121
.LBB14_100:                             # %if.end.296
                                        #   in Loop: Header=BB14_74 Depth=2
	jmp	.LBB14_101
.LBB14_101:                             # %for.inc.297
                                        #   in Loop: Header=BB14_74 Depth=2
	movl	-328(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -328(%rbp)
	movl	-356(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -356(%rbp)
	movl	-360(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -360(%rbp)
	jmp	.LBB14_74
.LBB14_102:                             # %for.end.301
                                        #   in Loop: Header=BB14_5 Depth=1
	jmp	.LBB14_103
.LBB14_103:                             # %if.end.302
                                        #   in Loop: Header=BB14_5 Depth=1
	jmp	.LBB14_104
.LBB14_104:                             # %if.end.303
                                        #   in Loop: Header=BB14_5 Depth=1
	jmp	.LBB14_105
.LBB14_105:                             # %for.inc.304
                                        #   in Loop: Header=BB14_5 Depth=1
	movl	-324(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -324(%rbp)
	movl	-332(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -332(%rbp)
	movl	-336(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -336(%rbp)
	movl	-340(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -340(%rbp)
	jmp	.LBB14_5
.LBB14_106:                             # %for.end.309
	movl	$0, -328(%rbp)
	movl	$0, -324(%rbp)
.LBB14_107:                             # %for.cond.310
                                        # =>This Inner Loop Header: Depth=1
	movl	-324(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB14_115
# BB#108:                               # %for.body.313
                                        #   in Loop: Header=BB14_107 Depth=1
	leaq	-320(%rbp), %rax
	movl	-328(%rbp), %ecx
	movslq	-324(%rbp), %rdx
	imulq	$12, %rdx, %rdx
	addq	%rdx, %rax
	cmpl	(%rax), %ecx
	jge	.LBB14_113
# BB#109:                               # %if.then.319
                                        #   in Loop: Header=BB14_107 Depth=1
	cmpl	$0, -324(%rbp)
	je	.LBB14_111
# BB#110:                               # %lor.lhs.false.322
                                        #   in Loop: Header=BB14_107 Depth=1
	xorl	%edi, %edi
	movl	-324(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-144(%rbp,%rcx,8), %rcx
	movq	%rcx, -480(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-480(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB14_112
.LBB14_111:                             # %if.then.329
	movl	$-1, -4(%rbp)
	jmp	.LBB14_121
.LBB14_112:                             # %if.end.330
                                        #   in Loop: Header=BB14_107 Depth=1
	leaq	-320(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	-328(%rbp), %rdx
	shlq	$3, %rdx
	addq	%rdx, %rcx
	movslq	-324(%rbp), %rdx
	imulq	$12, %rdx, %rdx
	addq	%rdx, %rax
	movl	(%rax), %esi
	subl	-328(%rbp), %esi
	shll	$3, %esi
	movslq	%esi, %rsi
	movq	%rcx, %rdi
	callq	memclear
	leaq	-320(%rbp), %rax
	movslq	-324(%rbp), %rcx
	imulq	$12, %rcx, %rcx
	addq	%rcx, %rax
	movl	(%rax), %r8d
	movl	%r8d, -328(%rbp)
.LBB14_113:                             # %if.end.339
                                        #   in Loop: Header=BB14_107 Depth=1
	movslq	-324(%rbp), %rax
	movq	-144(%rbp,%rax,8), %rax
	movl	-328(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -328(%rbp)
	movslq	%ecx, %rsi
	movq	-16(%rbp), %rdi
	movq	%rax, (%rdi,%rsi,8)
# BB#114:                               # %for.inc.345
                                        #   in Loop: Header=BB14_107 Depth=1
	movl	-324(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -324(%rbp)
	jmp	.LBB14_107
.LBB14_115:                             # %for.end.347
	xorl	%edi, %edi
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-144(%rbp,%rcx,8), %rcx
	movq	%rcx, -488(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-488(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB14_118
# BB#116:                               # %land.lhs.true.354
	cmpl	$12, -328(%rbp)
	jge	.LBB14_118
# BB#117:                               # %if.then.357
	movl	$-1, -4(%rbp)
	jmp	.LBB14_121
.LBB14_118:                             # %if.end.358
	movl	$14, %eax
	movq	-16(%rbp), %rcx
	movslq	-328(%rbp), %rdx
	shlq	$3, %rdx
	addq	%rdx, %rcx
	subl	-328(%rbp), %eax
	shll	$3, %eax
	movslq	%eax, %rsi
	movq	%rcx, %rdi
	callq	memclear
	movq	-16(%rbp), %rcx
	movq	104(%rcx), %rcx
	andq	$7, %rcx
	movl	%ecx, %eax
	andl	$-5, %eax
	cmpl	$2, %eax
	jne	.LBB14_120
# BB#119:                               # %if.then.370
	movq	-16(%rbp), %rax
	movq	104(%rax), %rdi
	callq	Fnumber_to_string
	xorl	%edi, %edi
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fintern
	movq	-16(%rbp), %rsi
	movq	%rax, 104(%rsi)
.LBB14_120:                             # %if.end.376
	movl	$0, -4(%rbp)
.LBB14_121:                             # %return
	movl	-4(%rbp), %eax
	addq	$496, %rsp              # imm = 0x1F0
	popq	%rbp
	retq
.Lfunc_end14:
	.size	font_expand_wildcards, .Lfunc_end14-font_expand_wildcards
	.cfi_endproc

	.globl	font_parse_family_registry
	.align	16, 0x90
	.type	font_parse_family_registry,@function
font_parse_family_registry:             # @font_parse_family_registry
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
	subq	$240, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movl	%eax, %edi
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB15_10
# BB#1:                                 # %land.lhs.true
	movl	$2, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rdi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB15_10
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	CHECK_STRING
	movq	-8(%rbp), %rdi
	callq	SBYTES
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	SSDATA
	movl	$45, %esi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	strchr
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB15_8
# BB#3:                                 # %if.then.7
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$42, %ecx
	je	.LBB15_7
# BB#4:                                 # %land.lhs.true.10
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	subq	%rcx, %rax
	cmpq	$0, %rax
	jle	.LBB15_7
# BB#5:                                 # %land.lhs.true.13
	movl	$1, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rdi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB15_7
# BB#6:                                 # %if.then.18
	movl	$48, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$1, %edx
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rsi
	subq	%rsi, %rcx
	movq	%rcx, %rsi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	font_intern_prop
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Ffont_put
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB15_7:                               # %if.end
	movl	$40, %edi
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	subq	%rcx, %rax
	movq	-32(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$1, %edx
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	font_intern_prop
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	-152(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Ffont_put
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB15_9
.LBB15_8:                               # %if.else
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fintern
	movl	$2, %edx
	movl	%edx, %esi
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
.LBB15_9:                               # %if.end.33
	jmp	.LBB15_10
.LBB15_10:                              # %if.end.34
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB15_18
# BB#11:                                # %if.then.38
	movq	-16(%rbp), %rdi
	callq	CHECK_STRING
	movq	-16(%rbp), %rdi
	callq	SBYTES
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	SSDATA
	movl	$45, %esi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	strchr
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB15_17
# BB#12:                                # %if.then.43
	xorl	%eax, %eax
	movb	%al, %cl
	leaq	-88(%rbp), %rdx
	cmpq	$0, -32(%rbp)
	movq	%rdx, -192(%rbp)        # 8-byte Spill
	movb	%cl, -193(%rbp)         # 1-byte Spill
	je	.LBB15_14
# BB#13:                                # %land.rhs
	movq	-32(%rbp), %rax
	subq	$1, %rax
	movq	-40(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$42, %edx
	sete	%sil
	movb	%sil, -193(%rbp)        # 1-byte Spill
.LBB15_14:                              # %land.end
	movb	-193(%rbp), %al         # 1-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movabsq	$.L.str, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	movslq	%ecx, %rdi
	addq	%rdi, %rsi
	movq	%rsi, %rdi
	movb	%dl, -194(%rbp)         # 1-byte Spill
	callq	strlen
	movq	-192(%rbp), %rsi        # 8-byte Reload
	movq	%rax, (%rsi)
	movq	$-1, 8(%rsi)
	movq	$0, 16(%rsi)
	addq	$24, %rsi
	cmpq	$0, -32(%rbp)
	movb	-194(%rbp), %dl         # 1-byte Reload
	movq	%rsi, -208(%rbp)        # 8-byte Spill
	movb	%dl, -209(%rbp)         # 1-byte Spill
	je	.LBB15_16
# BB#15:                                # %land.rhs.52
	movq	-32(%rbp), %rax
	subq	$1, %rax
	movq	-40(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$42, %edx
	sete	%sil
	movb	%sil, -209(%rbp)        # 1-byte Spill
.LBB15_16:                              # %land.end.58
	movb	-209(%rbp), %al         # 1-byte Reload
	movl	$4, %esi
	leaq	-88(%rbp), %rcx
	movabsq	$.L.str, %rdx
	andb	$1, %al
	movzbl	%al, %edi
	movslq	%edi, %r8
	addq	%r8, %rdx
	movq	-208(%rbp), %r8         # 8-byte Reload
	movq	%rdx, (%r8)
	movq	%rcx, %rdi
	callq	make_lisp_ptr
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	concat2
	movq	%rax, -16(%rbp)
.LBB15_17:                              # %if.end.65
	movq	-16(%rbp), %rdi
	callq	Fdowncase
	xorl	%edi, %edi
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fintern
	movl	$4, %edx
	movl	%edx, %esi
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
.LBB15_18:                              # %if.end.69
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	font_parse_family_registry, .Lfunc_end15-font_parse_family_registry
	.cfi_endproc

	.globl	Ffont_put
	.align	16, 0x90
	.type	Ffont_put,@function
Ffont_put:                              # @Ffont_put
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	get_font_prop_index
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jl	.LBB16_3
# BB#1:                                 # %land.lhs.true
	cmpl	$12, -28(%rbp)
	jge	.LBB16_3
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	CHECK_FONT_SPEC
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movslq	-28(%rbp), %rsi
	movl	-28(%rbp), %ecx
	movl	%ecx, -32(%rbp)         # 4-byte Spill
	movq	%rax, -40(%rbp)         # 8-byte Spill
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rdx
	movl	-32(%rbp), %edi         # 4-byte Reload
	movq	%rax, %rsi
	callq	font_prop_validate
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	jmp	.LBB16_10
.LBB16_3:                               # %if.else
	movl	$86, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB16_7
# BB#4:                                 # %lor.lhs.false
	movl	$114, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB16_7
# BB#5:                                 # %lor.lhs.false.10
	movl	$73, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB16_7
# BB#6:                                 # %lor.lhs.false.14
	movl	$89, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB16_8
.LBB16_7:                               # %if.then.18
	movq	-8(%rbp), %rdi
	callq	CHECK_FONT_SPEC
	jmp	.LBB16_9
.LBB16_8:                               # %if.else.19
	movq	-8(%rbp), %rdi
	callq	CHECK_FONT
.LBB16_9:                               # %if.end
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	font_prop_validate
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	font_put_extra
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB16_10:                              # %if.end.22
	movq	-24(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	Ffont_put, .Lfunc_end16-Ffont_put
	.cfi_endproc

	.globl	font_update_sort_order
	.align	16, 0x90
	.type	font_update_sort_order,@function
font_update_sort_order:                 # @font_update_sort_order
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
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
	movl	$23, -16(%rbp)
.LBB17_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -12(%rbp)
	jge	.LBB17_13
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB17_1 Depth=1
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movl	%edx, -20(%rbp)
	cmpl	$2, -20(%rbp)
	jne	.LBB17_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	-16(%rbp), %eax
	movl	%eax, sort_shift_bits+20
	jmp	.LBB17_11
.LBB17_4:                               # %if.else
                                        #   in Loop: Header=BB17_1 Depth=1
	cmpl	$3, -20(%rbp)
	jne	.LBB17_6
# BB#5:                                 # %if.then.3
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	-16(%rbp), %eax
	movl	%eax, sort_shift_bits+24
	jmp	.LBB17_10
.LBB17_6:                               # %if.else.4
                                        #   in Loop: Header=BB17_1 Depth=1
	cmpl	$4, -20(%rbp)
	jne	.LBB17_8
# BB#7:                                 # %if.then.6
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	-16(%rbp), %eax
	movl	%eax, sort_shift_bits+28
	jmp	.LBB17_9
.LBB17_8:                               # %if.else.7
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	-16(%rbp), %eax
	movl	%eax, sort_shift_bits+32
.LBB17_9:                               # %if.end
                                        #   in Loop: Header=BB17_1 Depth=1
	jmp	.LBB17_10
.LBB17_10:                              # %if.end.8
                                        #   in Loop: Header=BB17_1 Depth=1
	jmp	.LBB17_11
.LBB17_11:                              # %if.end.9
                                        #   in Loop: Header=BB17_1 Depth=1
	jmp	.LBB17_12
.LBB17_12:                              # %for.inc
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-16(%rbp), %eax
	subl	$7, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB17_1
.LBB17_13:                              # %for.end
	popq	%rbp
	retq
.Lfunc_end17:
	.size	font_update_sort_order, .Lfunc_end17-font_update_sort_order
	.cfi_endproc

	.globl	font_match_p
	.align	16, 0x90
	.type	font_match_p,@function
font_match_p:                           # @font_match_p
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
	subq	$304, %rsp              # imm = 0x130
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$1, -156(%rbp)
.LBB18_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -156(%rbp)
	jg	.LBB18_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-16(%rbp), %rdi
	movslq	-156(%rbp), %rsi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-200(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB18_6
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-24(%rbp), %rdi
	movslq	-156(%rbp), %rsi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB18_6
# BB#4:                                 # %land.lhs.true.9
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-16(%rbp), %rdi
	movslq	-156(%rbp), %rsi
	callq	AREF
	movq	-24(%rbp), %rdi
	movslq	-156(%rbp), %rsi
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	AREF
	movq	-216(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB18_6
# BB#5:                                 # %if.then
	movb	$0, -1(%rbp)
	jmp	.LBB18_79
.LBB18_6:                               # %if.end
                                        #   in Loop: Header=BB18_1 Depth=1
	jmp	.LBB18_7
.LBB18_7:                               # %for.inc
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-156(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -156(%rbp)
	jmp	.LBB18_1
.LBB18_8:                               # %for.end
	movq	-16(%rbp), %rdi
	callq	XFONT_SPEC
	addq	$8, %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	64(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$7, %ecx
	jne	.LBB18_14
# BB#9:                                 # %if.then.21
	movl	$1, -156(%rbp)
.LBB18_10:                              # %for.cond.22
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$8, -156(%rbp)
	jge	.LBB18_13
# BB#11:                                # %for.body.25
                                        #   in Loop: Header=BB18_10 Depth=1
	movq	-16(%rbp), %rdi
	movslq	-156(%rbp), %rsi
	callq	AREF
	movslq	-156(%rbp), %rsi
	movq	%rax, -128(%rbp,%rsi,8)
# BB#12:                                # %for.inc.29
                                        #   in Loop: Header=BB18_10 Depth=1
	movl	-156(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -156(%rbp)
	jmp	.LBB18_10
.LBB18_13:                              # %for.end.31
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	font_pixel_size
	leaq	-128(%rbp), %rsi
	movslq	%eax, %rdi
	shlq	$2, %rdi
	addq	$2, %rdi
	movq	%rdi, -64(%rbp)
	movq	%rsi, -136(%rbp)
.LBB18_14:                              # %if.end.36
	movq	-24(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	font_score
	cmpl	$0, %eax
	jbe	.LBB18_16
# BB#15:                                # %if.then.40
	movb	$0, -1(%rbp)
	jmp	.LBB18_79
.LBB18_16:                              # %if.end.41
	movl	$12, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	AREF
	movl	$12, %ecx
	movl	%ecx, %esi
	movq	%rax, -144(%rbp)
	movq	-24(%rbp), %rdi
	callq	AREF
	movq	%rax, -152(%rbp)
.LBB18_17:                              # %for.cond.44
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_25 Depth 2
                                        #     Child Loop BB18_40 Depth 2
                                        #     Child Loop BB18_51 Depth 2
	movq	-144(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB18_78
# BB#18:                                # %for.body.49
                                        #   in Loop: Header=BB18_17 Depth=1
	movl	$73, %edi
	movq	-144(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-144(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB18_36
# BB#19:                                # %if.then.59
                                        #   in Loop: Header=BB18_17 Depth=1
	movq	-168(%rbp), %rdi
	movq	-152(%rbp), %rsi
	callq	assq_no_quit
	xorl	%edi, %edi
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-232(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB18_21
# BB#20:                                # %if.then.64
	movb	$0, -1(%rbp)
	jmp	.LBB18_79
.LBB18_21:                              # %if.end.65
                                        #   in Loop: Header=BB18_17 Depth=1
	movq	-184(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -184(%rbp)
	movq	-176(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB18_30
# BB#22:                                # %if.then.73
                                        #   in Loop: Header=BB18_17 Depth=1
	movq	-184(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB18_24
# BB#23:                                # %if.then.78
	movb	$0, -1(%rbp)
	jmp	.LBB18_79
.LBB18_24:                              # %if.end.79
                                        #   in Loop: Header=BB18_17 Depth=1
	jmp	.LBB18_25
.LBB18_25:                              # %while.cond
                                        #   Parent Loop BB18_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-176(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB18_29
# BB#26:                                # %while.body
                                        #   in Loop: Header=BB18_25 Depth=2
	movq	-176(%rbp), %rdi
	movq	-184(%rbp), %rsi
	callq	Fmemq
	xorl	%edi, %edi
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-240(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB18_28
# BB#27:                                # %if.then.88
	movb	$0, -1(%rbp)
	jmp	.LBB18_79
.LBB18_28:                              # %if.end.89
                                        #   in Loop: Header=BB18_25 Depth=2
	jmp	.LBB18_25
.LBB18_29:                              # %while.end
                                        #   in Loop: Header=BB18_17 Depth=1
	jmp	.LBB18_35
.LBB18_30:                              # %if.else
                                        #   in Loop: Header=BB18_17 Depth=1
	movq	-184(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB18_32
# BB#31:                                # %cond.true
                                        #   in Loop: Header=BB18_17 Depth=1
	movq	-176(%rbp), %rdi
	movq	-184(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rsi
	callq	Fmemq
	xorl	%edi, %edi
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-248(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB18_33
	jmp	.LBB18_34
.LBB18_32:                              # %cond.false
                                        #   in Loop: Header=BB18_17 Depth=1
	movq	-176(%rbp), %rax
	cmpq	-184(%rbp), %rax
	je	.LBB18_34
.LBB18_33:                              # %if.then.103
	movb	$0, -1(%rbp)
	jmp	.LBB18_79
.LBB18_34:                              # %if.end.104
                                        #   in Loop: Header=BB18_17 Depth=1
	jmp	.LBB18_35
.LBB18_35:                              # %if.end.105
                                        #   in Loop: Header=BB18_17 Depth=1
	jmp	.LBB18_76
.LBB18_36:                              # %if.else.106
                                        #   in Loop: Header=BB18_17 Depth=1
	movl	$114, %edi
	movq	-168(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-256(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB18_65
# BB#37:                                # %if.then.110
                                        #   in Loop: Header=BB18_17 Depth=1
	movq	-176(%rbp), %rdi
	movq	globals+2080, %rsi
	callq	assq_no_quit
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB18_64
# BB#38:                                # %if.then.116
                                        #   in Loop: Header=BB18_17 Depth=1
	movq	-184(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB18_49
# BB#39:                                # %if.then.124
                                        #   in Loop: Header=BB18_17 Depth=1
	jmp	.LBB18_40
.LBB18_40:                              # %for.cond.125
                                        #   Parent Loop BB18_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-184(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB18_48
# BB#41:                                # %for.body.130
                                        #   in Loop: Header=BB18_40 Depth=2
	movq	-184(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB18_42
	jmp	.LBB18_43
.LBB18_42:                              # %land.lhs.true.135
                                        #   in Loop: Header=BB18_40 Depth=2
	movq	-184(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jle	.LBB18_44
.LBB18_43:                              # %if.then.140
                                        #   in Loop: Header=BB18_40 Depth=2
	jmp	.LBB18_47
.LBB18_44:                              # %if.end.141
                                        #   in Loop: Header=BB18_40 Depth=2
	movq	-24(%rbp), %rdi
	movq	-184(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, %esi
	callq	font_encode_char
	cmpl	$-1, %eax
	jne	.LBB18_46
# BB#45:                                # %if.then.149
	movb	$0, -1(%rbp)
	jmp	.LBB18_79
.LBB18_46:                              # %if.end.150
                                        #   in Loop: Header=BB18_40 Depth=2
	jmp	.LBB18_47
.LBB18_47:                              # %for.inc.151
                                        #   in Loop: Header=BB18_40 Depth=2
	movq	-184(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -184(%rbp)
	jmp	.LBB18_40
.LBB18_48:                              # %for.end.155
                                        #   in Loop: Header=BB18_17 Depth=1
	jmp	.LBB18_63
.LBB18_49:                              # %if.else.156
                                        #   in Loop: Header=BB18_17 Depth=1
	movq	-184(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB18_50
	jmp	.LBB18_62
.LBB18_50:                              # %if.then.158
                                        #   in Loop: Header=BB18_17 Depth=1
	movl	$0, -156(%rbp)
.LBB18_51:                              # %for.cond.159
                                        #   Parent Loop BB18_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-156(%rbp), %rax
	movq	-184(%rbp), %rdi
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	ASIZE
	movq	-264(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jge	.LBB18_59
# BB#52:                                # %for.body.164
                                        #   in Loop: Header=BB18_51 Depth=2
	movq	-184(%rbp), %rdi
	movslq	-156(%rbp), %rsi
	callq	AREF
	movq	%rax, %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB18_53
	jmp	.LBB18_54
.LBB18_53:                              # %land.lhs.true.169
                                        #   in Loop: Header=BB18_51 Depth=2
	movq	-184(%rbp), %rdi
	movslq	-156(%rbp), %rsi
	callq	AREF
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jle	.LBB18_55
.LBB18_54:                              # %if.then.175
                                        #   in Loop: Header=BB18_51 Depth=2
	jmp	.LBB18_58
.LBB18_55:                              # %if.end.176
                                        #   in Loop: Header=BB18_51 Depth=2
	movq	-24(%rbp), %rdi
	movq	-184(%rbp), %rax
	movslq	-156(%rbp), %rsi
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	AREF
	sarq	$2, %rax
	movl	%eax, %ecx
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	callq	font_encode_char
	cmpl	$-1, %eax
	je	.LBB18_57
# BB#56:                                # %if.then.184
                                        #   in Loop: Header=BB18_17 Depth=1
	jmp	.LBB18_59
.LBB18_57:                              # %if.end.185
                                        #   in Loop: Header=BB18_51 Depth=2
	jmp	.LBB18_58
.LBB18_58:                              # %for.inc.186
                                        #   in Loop: Header=BB18_51 Depth=2
	movl	-156(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -156(%rbp)
	jmp	.LBB18_51
.LBB18_59:                              # %for.end.188
                                        #   in Loop: Header=BB18_17 Depth=1
	movslq	-156(%rbp), %rax
	movq	-184(%rbp), %rdi
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	ASIZE
	movq	-280(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jne	.LBB18_61
# BB#60:                                # %if.then.193
	movb	$0, -1(%rbp)
	jmp	.LBB18_79
.LBB18_61:                              # %if.end.194
                                        #   in Loop: Header=BB18_17 Depth=1
	jmp	.LBB18_62
.LBB18_62:                              # %if.end.195
                                        #   in Loop: Header=BB18_17 Depth=1
	jmp	.LBB18_63
.LBB18_63:                              # %if.end.196
                                        #   in Loop: Header=BB18_17 Depth=1
	jmp	.LBB18_64
.LBB18_64:                              # %if.end.197
                                        #   in Loop: Header=BB18_17 Depth=1
	jmp	.LBB18_75
.LBB18_65:                              # %if.else.198
                                        #   in Loop: Header=BB18_17 Depth=1
	movl	$89, %edi
	movq	-168(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-288(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB18_74
# BB#66:                                # %if.then.202
                                        #   in Loop: Header=BB18_17 Depth=1
	movq	-24(%rbp), %rdi
	callq	FONT_OBJECT_P
	testb	$1, %al
	jne	.LBB18_68
# BB#67:                                # %if.then.204
	movb	$0, -1(%rbp)
	jmp	.LBB18_79
.LBB18_68:                              # %if.end.205
                                        #   in Loop: Header=BB18_17 Depth=1
	movq	-24(%rbp), %rdi
	callq	XFONT_OBJECT
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	movq	208(%rax), %rax
	cmpq	$0, 144(%rax)
	jne	.LBB18_70
# BB#69:                                # %if.then.207
	movb	$0, -1(%rbp)
	jmp	.LBB18_79
.LBB18_70:                              # %if.end.208
                                        #   in Loop: Header=BB18_17 Depth=1
	movq	-192(%rbp), %rax
	movq	208(%rax), %rax
	movq	144(%rax), %rax
	movq	-192(%rbp), %rdi
	callq	*%rax
	xorl	%edi, %edi
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-296(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB18_72
# BB#71:                                # %lor.lhs.false
                                        #   in Loop: Header=BB18_17 Depth=1
	movq	-176(%rbp), %rdi
	movq	-184(%rbp), %rsi
	callq	font_check_otf
	testb	$1, %al
	jne	.LBB18_73
.LBB18_72:                              # %if.then.216
	movb	$0, -1(%rbp)
	jmp	.LBB18_79
.LBB18_73:                              # %if.end.217
                                        #   in Loop: Header=BB18_17 Depth=1
	jmp	.LBB18_74
.LBB18_74:                              # %if.end.218
                                        #   in Loop: Header=BB18_17 Depth=1
	jmp	.LBB18_75
.LBB18_75:                              # %if.end.219
                                        #   in Loop: Header=BB18_17 Depth=1
	jmp	.LBB18_76
.LBB18_76:                              # %if.end.220
                                        #   in Loop: Header=BB18_17 Depth=1
	jmp	.LBB18_77
.LBB18_77:                              # %for.inc.221
                                        #   in Loop: Header=BB18_17 Depth=1
	movq	-144(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -144(%rbp)
	jmp	.LBB18_17
.LBB18_78:                              # %for.end.225
	movb	$1, -1(%rbp)
.LBB18_79:                              # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$304, %rsp              # imm = 0x130
	popq	%rbp
	retq
.Lfunc_end18:
	.size	font_match_p, .Lfunc_end18-font_match_p
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI19_0:
	.quad	4602678819172646912     # double 0.5
.LCPI19_1:
	.quad	4634785966078589665     # double 72.269999999999996
	.text
	.align	16, 0x90
	.type	font_pixel_size,@function
font_pixel_size:                        # @font_pixel_size
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
	movl	$8, %eax
	movl	%eax, %ecx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rcx, %rsi
	callq	AREF
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %edx
	andl	$-5, %edx
	cmpl	$2, %edx
	jne	.LBB19_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB19_8
.LBB19_2:                               # %if.end
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB19_4
# BB#3:                                 # %if.then.7
	movl	$0, -4(%rbp)
	jmp	.LBB19_8
.LBB19_4:                               # %if.end.8
	movq	-32(%rbp), %rdi
	callq	XFLOAT_DATA
	movl	$9, %eax
	movl	%eax, %esi
	movsd	%xmm0, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	AREF
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB19_6
# BB#5:                                 # %if.then.16
	movq	-56(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -44(%rbp)
	jmp	.LBB19_7
.LBB19_6:                               # %if.else
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	cvttsd2si	64(%rax), %ecx
	movl	%ecx, -44(%rbp)
.LBB19_7:                               # %if.end.20
	movsd	.LCPI19_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI19_1, %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	cvtsi2sdl	-44(%rbp), %xmm3
	mulsd	%xmm3, %xmm2
	divsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movl	%eax, -48(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB19_8:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	font_pixel_size, .Lfunc_end19-font_pixel_size
	.cfi_endproc

	.align	16, 0x90
	.type	font_score,@function
font_score:                             # @font_score
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
	subq	$160, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$0, -28(%rbp)
	movl	$5, -32(%rbp)
.LBB20_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$7, -32(%rbp)
	jg	.LBB20_16
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB20_1 Depth=1
	xorl	%edi, %edi
	movslq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB20_14
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	-16(%rbp), %rdi
	movslq	-32(%rbp), %rsi
	callq	AREF
	movslq	-32(%rbp), %rsi
	movq	-24(%rbp), %rdi
	cmpq	(%rdi,%rsi,8), %rax
	je	.LBB20_14
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	-16(%rbp), %rdi
	movslq	-32(%rbp), %rsi
	callq	AREF
	sarq	$2, %rax
	sarq	$8, %rax
	movslq	-32(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	(%rdi,%rsi,8), %rsi
	sarq	$2, %rsi
	sarq	$8, %rsi
	subq	%rsi, %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jge	.LBB20_6
# BB#5:                                 # %cond.true
                                        #   in Loop: Header=BB20_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	subq	-40(%rbp), %rcx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB20_7
.LBB20_6:                               # %cond.false
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB20_7:                               # %cond.end
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	cmpq	$127, %rax
	jge	.LBB20_12
# BB#8:                                 # %cond.true.19
                                        #   in Loop: Header=BB20_1 Depth=1
	cmpq	$0, -40(%rbp)
	jge	.LBB20_10
# BB#9:                                 # %cond.true.22
                                        #   in Loop: Header=BB20_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	subq	-40(%rbp), %rcx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	jmp	.LBB20_11
.LBB20_10:                              # %cond.false.24
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB20_11:                              # %cond.end.25
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB20_13
.LBB20_12:                              # %cond.false.27
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	$127, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB20_13
.LBB20_13:                              # %cond.end.28
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movslq	-32(%rbp), %rcx
	movl	sort_shift_bits(,%rcx,4), %edx
	movl	%edx, %ecx
                                        # kill: CL<def> RCX<kill>
	shlq	%cl, %rax
	movl	-28(%rbp), %edx
	movl	%edx, %esi
	orq	%rax, %rsi
	movl	%esi, %edx
	movl	%edx, -28(%rbp)
.LBB20_14:                              # %if.end
                                        #   in Loop: Header=BB20_1 Depth=1
	jmp	.LBB20_15
.LBB20_15:                              # %for.inc
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB20_1
.LBB20_16:                              # %for.end
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB20_36
# BB#17:                                # %land.lhs.true.38
	movl	$8, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	AREF
	sarq	$2, %rax
	cmpq	$0, %rax
	jle	.LBB20_36
# BB#18:                                # %if.then.43
	movl	$8, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	64(%rcx), %rcx
	sarq	$2, %rcx
	movq	%rcx, -56(%rbp)
	movq	-16(%rbp), %rdi
	callq	AREF
	sarq	$2, %rax
	movq	%rax, -64(%rbp)
	movq	globals+704, %rax
	andq	$7, %rax
	movl	%eax, %edx
	cmpl	$3, %edx
	jne	.LBB20_20
# BB#19:                                # %if.then.52
	movq	-16(%rbp), %rdi
	callq	font_rescale_ratio
	cvtsi2sdq	-56(%rbp), %xmm1
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %rdi
	movq	%rdi, -56(%rbp)
.LBB20_20:                              # %if.end.56
	movq	-56(%rbp), %rax
	shlq	$1, %rax
	cmpq	-64(%rbp), %rax
	jl	.LBB20_22
# BB#21:                                # %lor.lhs.false
	movq	-64(%rbp), %rax
	shlq	$1, %rax
	cmpq	-56(%rbp), %rax
	jge	.LBB20_23
.LBB20_22:                              # %if.then.63
	movl	$-1, -4(%rbp)
	jmp	.LBB20_37
.LBB20_23:                              # %if.end.64
	movq	-56(%rbp), %rax
	subq	-64(%rbp), %rax
	cmpq	$0, %rax
	jge	.LBB20_25
# BB#24:                                # %cond.true.68
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-56(%rbp), %rdx
	subq	-64(%rbp), %rdx
	subq	%rdx, %rcx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB20_26
.LBB20_25:                              # %cond.false.71
	movq	-56(%rbp), %rax
	subq	-64(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB20_26:                              # %cond.end.73
	movq	-112(%rbp), %rax        # 8-byte Reload
	xorl	%edi, %edi
	shlq	$1, %rax
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB20_29
# BB#27:                                # %land.lhs.true.80
	movl	$9, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	72(%rcx), %rcx
	movq	-16(%rbp), %rdi
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	callq	AREF
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB20_29
# BB#28:                                # %if.then.85
	movq	-48(%rbp), %rax
	orq	$1, %rax
	movq	%rax, -48(%rbp)
.LBB20_29:                              # %if.end.87
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB20_32
# BB#30:                                # %land.lhs.true.92
	movl	$11, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	88(%rcx), %rcx
	movq	-16(%rbp), %rdi
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	callq	AREF
	movq	-144(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB20_32
# BB#31:                                # %if.then.97
	movq	-48(%rbp), %rax
	orq	$1, %rax
	movq	%rax, -48(%rbp)
.LBB20_32:                              # %if.end.99
	cmpq	$127, -48(%rbp)
	jge	.LBB20_34
# BB#33:                                # %cond.true.102
	movq	-48(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jmp	.LBB20_35
.LBB20_34:                              # %cond.false.103
	movl	$127, %eax
	movl	%eax, %ecx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	jmp	.LBB20_35
.LBB20_35:                              # %cond.end.104
	movq	-152(%rbp), %rax        # 8-byte Reload
	movl	sort_shift_bits+32, %ecx
                                        # kill: RCX<def> ECX<kill>
                                        # kill: CL<def> RCX<kill>
	shlq	%cl, %rax
	movl	-28(%rbp), %edx
	movl	%edx, %esi
	orq	%rax, %rsi
	movl	%esi, %edx
	movl	%edx, -28(%rbp)
.LBB20_36:                              # %if.end.111
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB20_37:                              # %return
	movl	-4(%rbp), %eax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	font_score, .Lfunc_end20-font_score
	.cfi_endproc

	.align	16, 0x90
	.type	font_encode_char,@function
font_encode_char:                       # @font_encode_char
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	callq	XFONT_OBJECT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	96(%rax), %rax
	movq	-24(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	font_encode_char, .Lfunc_end21-font_encode_char
	.cfi_endproc

	.align	16, 0x90
	.type	font_check_otf,@function
font_check_otf:                         # @font_check_otf
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
	subq	$96, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB22_6
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB22_5
# BB#2:                                 # %if.then.12
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB22_4
# BB#3:                                 # %if.then.20
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
.LBB22_4:                               # %if.end
	jmp	.LBB22_5
.LBB22_5:                               # %if.end.23
	jmp	.LBB22_6
.LBB22_6:                               # %if.end.24
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB22_9
# BB#7:                                 # %land.lhs.true
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rcx
	callq	font_check_otf_features
	testb	$1, %al
	jne	.LBB22_9
# BB#8:                                 # %if.then.30
	movb	$0, -1(%rbp)
	jmp	.LBB22_13
.LBB22_9:                               # %if.end.31
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB22_12
# BB#10:                                # %land.lhs.true.34
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-56(%rbp), %rdx
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rcx
	callq	font_check_otf_features
	testb	$1, %al
	jne	.LBB22_12
# BB#11:                                # %if.then.39
	movb	$0, -1(%rbp)
	jmp	.LBB22_13
.LBB22_12:                              # %if.end.40
	movb	$1, -1(%rbp)
.LBB22_13:                              # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	font_check_otf, .Lfunc_end22-font_check_otf
	.cfi_endproc

	.globl	font_list_entities
	.align	16, 0x90
	.type	font_list_entities,@function
font_list_entities:                     # @font_list_entities
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
	subq	$192, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	392(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movl	$8, %edi
	movl	%edi, %esi
	movq	%rax, -48(%rbp)
	movb	$0, -53(%rbp)
	movq	-16(%rbp), %rdi
	callq	AREF
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB23_2
# BB#1:                                 # %if.then
	movl	$8, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	AREF
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -52(%rbp)
	jmp	.LBB23_6
.LBB23_2:                               # %if.else
	movl	$8, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	AREF
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$7, %ecx
	jne	.LBB23_4
# BB#3:                                 # %if.then.11
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	font_pixel_size
	movl	%eax, -52(%rbp)
	jmp	.LBB23_5
.LBB23_4:                               # %if.else.13
	movl	$0, -52(%rbp)
.LBB23_5:                               # %if.end
	jmp	.LBB23_6
.LBB23_6:                               # %if.end.14
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	AREF
	movq	%rax, -32(%rbp)
	movl	$1, -60(%rbp)
.LBB23_7:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -60(%rbp)
	jg	.LBB23_10
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB23_7 Depth=1
	movq	scratch_font_spec, %rdi
	movslq	-60(%rbp), %rsi
	movq	-16(%rbp), %rax
	movslq	-60(%rbp), %rcx
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	callq	AREF
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
# BB#9:                                 # %for.inc
                                        #   in Loop: Header=BB23_7 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB23_7
.LBB23_10:                              # %for.end
	movl	$5, -60(%rbp)
.LBB23_11:                              # %for.cond.21
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$12, -60(%rbp)
	jge	.LBB23_18
# BB#12:                                # %for.body.24
                                        #   in Loop: Header=BB23_11 Depth=1
	cmpl	$10, -60(%rbp)
	je	.LBB23_16
# BB#13:                                # %if.then.27
                                        #   in Loop: Header=BB23_11 Depth=1
	xorl	%edi, %edi
	movq	scratch_font_spec, %rax
	movslq	-60(%rbp), %rsi
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	movq	-16(%rbp), %rdi
	movslq	-60(%rbp), %rsi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB23_15
# BB#14:                                # %if.then.35
                                        #   in Loop: Header=BB23_11 Depth=1
	movb	$1, -53(%rbp)
.LBB23_15:                              # %if.end.36
                                        #   in Loop: Header=BB23_11 Depth=1
	jmp	.LBB23_16
.LBB23_16:                              # %if.end.37
                                        #   in Loop: Header=BB23_11 Depth=1
	jmp	.LBB23_17
.LBB23_17:                              # %for.inc.38
                                        #   in Loop: Header=BB23_11 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB23_11
.LBB23_18:                              # %for.end.40
	movl	$10, %eax
	movl	%eax, %esi
	movq	scratch_font_spec, %rdi
	movq	-16(%rbp), %rcx
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	AREF
	movl	$10, %edx
	movl	%edx, %esi
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	movl	$12, %r8d
	movl	%r8d, %esi
	movq	scratch_font_spec, %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	AREF
	movl	$12, %r8d
	movl	%r8d, %esi
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
.LBB23_19:                              # %for.cond.43
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB23_42
# BB#20:                                # %for.body.44
                                        #   in Loop: Header=BB23_19 Depth=1
	movq	-24(%rbp), %rax
	testb	$1, (%rax)
	je	.LBB23_40
# BB#21:                                # %land.lhs.true
                                        #   in Loop: Header=BB23_19 Depth=1
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB23_23
# BB#22:                                # %lor.lhs.false
                                        #   in Loop: Header=BB23_19 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB23_40
.LBB23_23:                              # %if.then.52
                                        #   in Loop: Header=BB23_19 Depth=1
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rsi
	callq	font_get_cache
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -72(%rbp)
	movq	scratch_font_spec, %rdi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rdx
	callq	ASET
	movq	scratch_font_spec, %rdi
	movq	-72(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rsi
	callq	assoc_no_quit
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB23_25
# BB#24:                                # %if.then.62
                                        #   in Loop: Header=BB23_19 Depth=1
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB23_28
.LBB23_25:                              # %if.else.66
                                        #   in Loop: Header=BB23_19 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	scratch_font_spec, %rsi
	callq	*%rax
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB23_27
# BB#26:                                # %if.then.73
                                        #   in Loop: Header=BB23_19 Depth=1
	movq	scratch_font_spec, %rdi
	callq	copy_font_spec
	movl	$1, %ecx
	movl	%ecx, %edi
	leaq	-40(%rbp), %rsi
	movq	%rax, -80(%rbp)
	callq	Fvconcat
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -40(%rbp)
	movq	-80(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rdx
	callq	ASET
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	-40(%rbp), %rsi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	Fcons
	movq	-72(%rbp), %rdx
	subq	$3, %rdx
	movq	8(%rdx), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	XSETCDR
.LBB23_27:                              # %if.end.83
                                        #   in Loop: Header=BB23_19 Depth=1
	jmp	.LBB23_28
.LBB23_28:                              # %if.end.84
                                        #   in Loop: Header=BB23_19 Depth=1
	movq	-40(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB23_29
	jmp	.LBB23_36
.LBB23_29:                              # %land.lhs.true.87
                                        #   in Loop: Header=BB23_19 Depth=1
	movq	-40(%rbp), %rdi
	callq	ASIZE
	cmpq	$0, %rax
	jle	.LBB23_36
# BB#30:                                # %land.lhs.true.91
                                        #   in Loop: Header=BB23_19 Depth=1
	testb	$1, -53(%rbp)
	jne	.LBB23_32
# BB#31:                                # %lor.lhs.false.94
                                        #   in Loop: Header=BB23_19 Depth=1
	xorl	%edi, %edi
	movq	globals+712, %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB23_36
.LBB23_32:                              # %if.then.98
                                        #   in Loop: Header=BB23_19 Depth=1
	movq	-40(%rbp), %rdi
	testb	$1, -53(%rbp)
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	je	.LBB23_34
# BB#33:                                # %cond.true
                                        #   in Loop: Header=BB23_19 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB23_35
.LBB23_34:                              # %cond.false
                                        #   in Loop: Header=BB23_19 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -184(%rbp)        # 8-byte Spill
.LBB23_35:                              # %cond.end
                                        #   in Loop: Header=BB23_19 Depth=1
	movq	-184(%rbp), %rax        # 8-byte Reload
	movl	-52(%rbp), %edx
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	font_delete_unmatched
	movq	%rax, -40(%rbp)
.LBB23_36:                              # %if.end.103
                                        #   in Loop: Header=BB23_19 Depth=1
	movq	-40(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB23_37
	jmp	.LBB23_39
.LBB23_37:                              # %land.lhs.true.106
                                        #   in Loop: Header=BB23_19 Depth=1
	movq	-40(%rbp), %rdi
	callq	ASIZE
	cmpq	$0, %rax
	jle	.LBB23_39
# BB#38:                                # %if.then.110
                                        #   in Loop: Header=BB23_19 Depth=1
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	Fcons
	movq	%rax, -48(%rbp)
.LBB23_39:                              # %if.end.112
                                        #   in Loop: Header=BB23_19 Depth=1
	jmp	.LBB23_40
.LBB23_40:                              # %if.end.113
                                        #   in Loop: Header=BB23_19 Depth=1
	jmp	.LBB23_41
.LBB23_41:                              # %for.inc.114
                                        #   in Loop: Header=BB23_19 Depth=1
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB23_19
.LBB23_42:                              # %for.end.115
	movq	-48(%rbp), %rdi
	callq	Fnreverse
	movq	%rax, -48(%rbp)
# BB#43:                                # %do.body
	movl	$901, %edi              # imm = 0x385
	movq	globals+832, %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB23_45
# BB#44:                                # %if.then.120
	movabsq	$.L.str.15, %rdi
	movq	-16(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	font_add_log
.LBB23_45:                              # %if.end.121
	jmp	.LBB23_46
.LBB23_46:                              # %do.end
	movq	-48(%rbp), %rax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	font_list_entities, .Lfunc_end23-font_list_entities
	.cfi_endproc

	.align	16, 0x90
	.type	font_get_cache,@function
font_get_cache:                         # @font_get_cache
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp77:
	.cfi_def_cfa_offset 16
.Ltmp78:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp79:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	16(%rsi), %rsi
	movq	-8(%rbp), %rdi
	callq	*%rsi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB24_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	sete	%cl
	xorb	$-1, %cl
	testb	$1, %cl
	jne	.LBB24_2
	jmp	.LBB24_4
.LBB24_2:                               # %for.body
                                        #   in Loop: Header=BB24_1 Depth=1
	jmp	.LBB24_3
.LBB24_3:                               # %for.inc
                                        #   in Loop: Header=BB24_1 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB24_1
.LBB24_4:                               # %for.end
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	font_get_cache, .Lfunc_end24-font_get_cache
	.cfi_endproc

	.globl	copy_font_spec
	.align	16, 0x90
	.type	copy_font_spec,@function
copy_font_spec:                         # @copy_font_spec
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp80:
	.cfi_def_cfa_offset 16
.Ltmp81:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp82:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_FONT
	movl	$13, %eax
	movl	%eax, %edi
	callq	allocate_vector
	xorl	%edi, %edi
	movabsq	$4611686018712600589, %rcx # imm = 0x400000001100000D
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rcx, (%rax)
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx
	movq	%rax, 104(%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-40(%rbp), %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	XVECTOR
	movl	$12, %edx
	movl	%edx, %esi
	movl	$88, %edx
                                        # kill: RDX<def> EDX<kill>
	addq	$8, %rax
	addq	$8, %rax
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	callq	memcpy
	movq	-40(%rbp), %rax
	addq	$8, %rax
	addq	$96, %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	callq	AREF
	movq	%rax, -24(%rbp)
.LBB25_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB25_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB25_1 Depth=1
	movl	$45, %edi
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB25_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB25_1 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	CDR
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	xorl	%edi, %edi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-32(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	xcdr_addr
	movq	%rax, -32(%rbp)
.LBB25_4:                               # %if.end
                                        #   in Loop: Header=BB25_1 Depth=1
	jmp	.LBB25_5
.LBB25_5:                               # %for.inc
                                        #   in Loop: Header=BB25_1 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB25_1
.LBB25_6:                               # %for.end
	movl	$5, %esi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	copy_font_spec, .Lfunc_end25-copy_font_spec
	.cfi_endproc

	.align	16, 0x90
	.type	font_delete_unmatched,@function
font_delete_unmatched:                  # @font_delete_unmatched
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp83:
	.cfi_def_cfa_offset 16
.Ltmp84:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp85:
	.cfi_def_cfa_register %rbp
	subq	$400, %rsp              # imm = 0x190
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	callq	ASIZE
	subq	$1, %rax
	movq	%rax, -56(%rbp)
.LBB26_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB26_5 Depth 2
                                        #     Child Loop BB26_18 Depth 2
	cmpq	$0, -56(%rbp)
	jl	.LBB26_49
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB26_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	movq	globals+712, %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-360(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB26_15
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB26_1 Depth=1
	xorl	%esi, %esi
	movl	$256, %ecx              # imm = 0x100
	leaq	-320(%rbp), %rdx
	movq	-32(%rbp), %rdi
	callq	font_unparse_xlfd
	movq	%rax, -328(%rbp)
	cmpq	$0, -328(%rbp)
	jl	.LBB26_14
# BB#4:                                 # %if.then.7
                                        #   in Loop: Header=BB26_1 Depth=1
	movq	globals+712, %rax
	movq	%rax, -336(%rbp)
.LBB26_5:                               # %for.cond.8
                                        #   Parent Loop BB26_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-336(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB26_11
# BB#6:                                 # %for.body.11
                                        #   in Loop: Header=BB26_5 Depth=2
	movq	-336(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -344(%rbp)
	movq	-344(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB26_7
	jmp	.LBB26_9
.LBB26_7:                               # %land.lhs.true
                                        #   in Loop: Header=BB26_5 Depth=2
	leaq	-320(%rbp), %rsi
	movq	-344(%rbp), %rdi
	movq	-328(%rbp), %rdx
	callq	fast_c_string_match_ignore_case
	cmpq	$0, %rax
	jl	.LBB26_9
# BB#8:                                 # %if.then.19
                                        #   in Loop: Header=BB26_1 Depth=1
	jmp	.LBB26_11
.LBB26_9:                               # %if.end
                                        #   in Loop: Header=BB26_5 Depth=2
	jmp	.LBB26_10
.LBB26_10:                              # %for.inc
                                        #   in Loop: Header=BB26_5 Depth=2
	movq	-336(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -336(%rbp)
	jmp	.LBB26_5
.LBB26_11:                              # %for.end
                                        #   in Loop: Header=BB26_1 Depth=1
	movq	-336(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB26_13
# BB#12:                                # %if.then.25
                                        #   in Loop: Header=BB26_1 Depth=1
	jmp	.LBB26_48
.LBB26_13:                              # %if.end.26
                                        #   in Loop: Header=BB26_1 Depth=1
	jmp	.LBB26_14
.LBB26_14:                              # %if.end.27
                                        #   in Loop: Header=BB26_1 Depth=1
	jmp	.LBB26_15
.LBB26_15:                              # %if.end.28
                                        #   in Loop: Header=BB26_1 Depth=1
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-368(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB26_17
# BB#16:                                # %if.then.32
                                        #   in Loop: Header=BB26_1 Depth=1
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	Fcons
	movq	%rax, -40(%rbp)
	jmp	.LBB26_48
.LBB26_17:                              # %if.end.34
                                        #   in Loop: Header=BB26_1 Depth=1
	movl	$5, -44(%rbp)
.LBB26_18:                              # %for.cond.35
                                        #   Parent Loop BB26_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$8, -44(%rbp)
	jae	.LBB26_24
# BB#19:                                # %for.body.38
                                        #   in Loop: Header=BB26_18 Depth=2
	movq	-16(%rbp), %rdi
	movl	-44(%rbp), %eax
	movl	%eax, %esi
	callq	AREF
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB26_22
# BB#20:                                # %land.lhs.true.46
                                        #   in Loop: Header=BB26_18 Depth=2
	movq	-16(%rbp), %rdi
	movl	-44(%rbp), %eax
	movl	%eax, %esi
	callq	AREF
	sarq	$2, %rax
	sarq	$8, %rax
	movq	-32(%rbp), %rdi
	movl	-44(%rbp), %ecx
	movl	%ecx, %esi
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	AREF
	sarq	$2, %rax
	sarq	$8, %rax
	movq	-376(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB26_22
# BB#21:                                # %if.then.56
                                        #   in Loop: Header=BB26_18 Depth=2
	movl	$13, -44(%rbp)
.LBB26_22:                              # %if.end.57
                                        #   in Loop: Header=BB26_18 Depth=2
	jmp	.LBB26_23
.LBB26_23:                              # %for.inc.58
                                        #   in Loop: Header=BB26_18 Depth=2
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB26_18
.LBB26_24:                              # %for.end.59
                                        #   in Loop: Header=BB26_1 Depth=1
	cmpl	$13, -44(%rbp)
	jae	.LBB26_33
# BB#25:                                # %land.lhs.true.62
                                        #   in Loop: Header=BB26_1 Depth=1
	cmpl	$0, -20(%rbp)
	je	.LBB26_33
# BB#26:                                # %land.lhs.true.63
                                        #   in Loop: Header=BB26_1 Depth=1
	movl	$8, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	callq	AREF
	sarq	$2, %rax
	cmpq	$0, %rax
	jle	.LBB26_33
# BB#27:                                # %if.then.68
                                        #   in Loop: Header=BB26_1 Depth=1
	movl	$8, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	callq	AREF
	sarq	$2, %rax
	movslq	-20(%rbp), %rsi
	subq	%rsi, %rax
	movl	%eax, %ecx
	movl	%ecx, -348(%rbp)
	cmpl	$0, -348(%rbp)
	jge	.LBB26_29
# BB#28:                                # %cond.true
                                        #   in Loop: Header=BB26_1 Depth=1
	xorl	%eax, %eax
	subl	-348(%rbp), %eax
	movl	%eax, -380(%rbp)        # 4-byte Spill
	jmp	.LBB26_30
.LBB26_29:                              # %cond.false
                                        #   in Loop: Header=BB26_1 Depth=1
	movl	-348(%rbp), %eax
	movl	%eax, -380(%rbp)        # 4-byte Spill
.LBB26_30:                              # %cond.end
                                        #   in Loop: Header=BB26_1 Depth=1
	movl	-380(%rbp), %eax        # 4-byte Reload
	cmpl	$1, %eax
	jle	.LBB26_32
# BB#31:                                # %if.then.79
                                        #   in Loop: Header=BB26_1 Depth=1
	movl	$13, -44(%rbp)
.LBB26_32:                              # %if.end.80
                                        #   in Loop: Header=BB26_1 Depth=1
	jmp	.LBB26_33
.LBB26_33:                              # %if.end.81
                                        #   in Loop: Header=BB26_1 Depth=1
	cmpl	$13, -44(%rbp)
	jae	.LBB26_39
# BB#34:                                # %land.lhs.true.84
                                        #   in Loop: Header=BB26_1 Depth=1
	movl	$9, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	AREF
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB26_39
# BB#35:                                # %land.lhs.true.91
                                        #   in Loop: Header=BB26_1 Depth=1
	movl	$9, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	callq	AREF
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB26_39
# BB#36:                                # %land.lhs.true.98
                                        #   in Loop: Header=BB26_1 Depth=1
	movl	$9, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	callq	AREF
	sarq	$2, %rax
	cmpq	$0, %rax
	je	.LBB26_39
# BB#37:                                # %land.lhs.true.103
                                        #   in Loop: Header=BB26_1 Depth=1
	movl	$9, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	AREF
	movl	$9, %ecx
	movl	%ecx, %esi
	movq	-32(%rbp), %rdi
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	AREF
	movq	-392(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB26_39
# BB#38:                                # %if.then.108
                                        #   in Loop: Header=BB26_1 Depth=1
	movl	$13, -44(%rbp)
.LBB26_39:                              # %if.end.109
                                        #   in Loop: Header=BB26_1 Depth=1
	cmpl	$13, -44(%rbp)
	jae	.LBB26_45
# BB#40:                                # %land.lhs.true.112
                                        #   in Loop: Header=BB26_1 Depth=1
	movl	$11, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	AREF
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB26_45
# BB#41:                                # %land.lhs.true.119
                                        #   in Loop: Header=BB26_1 Depth=1
	movl	$11, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	callq	AREF
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB26_45
# BB#42:                                # %land.lhs.true.126
                                        #   in Loop: Header=BB26_1 Depth=1
	movl	$11, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	callq	AREF
	sarq	$2, %rax
	cmpq	$0, %rax
	je	.LBB26_45
# BB#43:                                # %land.lhs.true.131
                                        #   in Loop: Header=BB26_1 Depth=1
	movl	$11, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	AREF
	movl	$11, %ecx
	movl	%ecx, %esi
	movq	-32(%rbp), %rdi
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	AREF
	movq	-400(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB26_45
# BB#44:                                # %if.then.136
                                        #   in Loop: Header=BB26_1 Depth=1
	movl	$13, -44(%rbp)
.LBB26_45:                              # %if.end.137
                                        #   in Loop: Header=BB26_1 Depth=1
	cmpl	$13, -44(%rbp)
	jae	.LBB26_47
# BB#46:                                # %if.then.140
                                        #   in Loop: Header=BB26_1 Depth=1
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	Fcons
	movq	%rax, -40(%rbp)
.LBB26_47:                              # %if.end.142
                                        #   in Loop: Header=BB26_1 Depth=1
	jmp	.LBB26_48
.LBB26_48:                              # %for.inc.143
                                        #   in Loop: Header=BB26_1 Depth=1
	movq	-56(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB26_1
.LBB26_49:                              # %for.end.144
	movl	$1, %eax
	movl	%eax, %edi
	leaq	-40(%rbp), %rsi
	callq	Fvconcat
	addq	$400, %rsp              # imm = 0x190
	popq	%rbp
	retq
.Lfunc_end26:
	.size	font_delete_unmatched, .Lfunc_end26-font_delete_unmatched
	.cfi_endproc

	.globl	font_add_log
	.align	16, 0x90
	.type	font_add_log,@function
font_add_log:                           # @font_add_log
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp86:
	.cfi_def_cfa_offset 16
.Ltmp87:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp88:
	.cfi_def_cfa_register %rbp
	subq	$320, %rsp              # imm = 0x140
	movl	$901, %eax              # imm = 0x385
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	globals+832, %rdx
	movl	%eax, %edi
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB27_2
# BB#1:                                 # %if.then
	jmp	.LBB27_50
.LBB27_2:                               # %if.end
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	Vfont_log_deferred, %rdi
	callq	AREF
	movq	%rax, %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB27_3
	jmp	.LBB27_4
.LBB27_3:                               # %if.then.3
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	Vfont_log_deferred, %rdi
	callq	AREF
	movq	%rax, %rdi
	callq	SSDATA
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)
	movq	Vfont_log_deferred, %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %esi
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	-48(%rbp), %rdi
	movq	Vfont_log_deferred, %rax
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	AREF
	movl	$2, %ecx
	movl	%ecx, %esi
	movq	Vfont_log_deferred, %rdi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	AREF
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	-184(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	font_add_log
.LBB27_4:                               # %if.end.9
	movq	-16(%rbp), %rdi
	callq	FONTP
	testb	$1, %al
	jne	.LBB27_5
	jmp	.LBB27_22
.LBB27_5:                               # %if.then.11
	movl	$4, %esi
	leaq	-104(%rbp), %rax
	movabsq	$.L.str.34, %rcx
	movq	$1, -104(%rbp)
	movq	$-1, -96(%rbp)
	movq	$0, -88(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Ffont_xlfd_name
	movl	$12, %edx
	movl	%edx, %esi
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	AREF
	movq	%rax, -56(%rbp)
.LBB27_6:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB27_21
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB27_6 Depth=1
	movl	$114, %edi
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-200(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB27_10
# BB#8:                                 # %land.lhs.true
                                        #   in Loop: Header=BB27_6 Depth=1
	movq	-64(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB27_10
# BB#9:                                 # %if.then.29
                                        #   in Loop: Header=BB27_6 Depth=1
	movl	$114, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	SYMBOL_NAME
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rcx
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	SYMBOL_NAME
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	concat2
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	-224(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	concat3
	movq	%rax, -32(%rbp)
	jmp	.LBB27_19
.LBB27_10:                              # %if.else
                                        #   in Loop: Header=BB27_6 Depth=1
	movl	$73, %edi
	movq	-64(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-232(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB27_13
# BB#11:                                # %land.lhs.true.43
                                        #   in Loop: Header=BB27_6 Depth=1
	movq	-64(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB27_13
# BB#12:                                # %if.then.51
                                        #   in Loop: Header=BB27_6 Depth=1
	movl	$73, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	SYMBOL_NAME
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rcx
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	SYMBOL_NAME
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	concat2
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	-256(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	concat3
	movq	%rax, -32(%rbp)
	jmp	.LBB27_18
.LBB27_13:                              # %if.else.60
                                        #   in Loop: Header=BB27_6 Depth=1
	movl	$89, %edi
	movq	-64(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-264(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB27_17
# BB#14:                                # %land.lhs.true.66
                                        #   in Loop: Header=BB27_6 Depth=1
	movq	-64(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB27_17
# BB#15:                                # %land.lhs.true.74
                                        #   in Loop: Header=BB27_6 Depth=1
	movq	-64(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB27_17
# BB#16:                                # %if.then.84
                                        #   in Loop: Header=BB27_6 Depth=1
	movl	$89, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	SYMBOL_NAME
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	SYMBOL_NAME
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	concat2
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	-288(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	concat3
	movq	%rax, -32(%rbp)
.LBB27_17:                              # %if.end.95
                                        #   in Loop: Header=BB27_6 Depth=1
	jmp	.LBB27_18
.LBB27_18:                              # %if.end.96
                                        #   in Loop: Header=BB27_6 Depth=1
	jmp	.LBB27_19
.LBB27_19:                              # %if.end.97
                                        #   in Loop: Header=BB27_6 Depth=1
	jmp	.LBB27_20
.LBB27_20:                              # %for.inc
                                        #   in Loop: Header=BB27_6 Depth=1
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB27_6
.LBB27_21:                              # %for.end
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
.LBB27_22:                              # %if.end.101
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB27_27
# BB#23:                                # %land.lhs.true.106
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB27_24
	jmp	.LBB27_27
.LBB27_24:                              # %land.lhs.true.111
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	ASIZE
	cmpq	$0, %rax
	jle	.LBB27_27
# BB#25:                                # %land.lhs.true.117
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rdi
	callq	AREF
	movq	%rax, %rdi
	callq	FONTP
	testb	$1, %al
	jne	.LBB27_26
	jmp	.LBB27_27
.LBB27_26:                              # %if.then.123
	movq	-24(%rbp), %rdi
	callq	font_vconcat_entity_vectors
	movq	%rax, -24(%rbp)
.LBB27_27:                              # %if.end.125
	movq	-24(%rbp), %rdi
	callq	FONTP
	testb	$1, %al
	jne	.LBB27_28
	jmp	.LBB27_31
.LBB27_28:                              # %if.then.127
	movl	$901, %edi              # imm = 0x385
	movq	-24(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Ffont_xlfd_name
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	FONT_SPEC_P
	testb	$1, %al
	jne	.LBB27_30
# BB#29:                                # %if.then.131
	movl	$4, %esi
	leaq	-144(%rbp), %rax
	movabsq	$.L.str.35, %rcx
	movq	$1, -144(%rbp)
	movq	$-1, -136(%rbp)
	movq	$0, -128(%rbp)
	movq	%rcx, -120(%rbp)
	movq	%rax, %rdi
	callq	make_lisp_ptr
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	%rax, -112(%rbp)
	movq	-24(%rbp), %rdi
	callq	AREF
	movq	%rax, %rdi
	callq	SYMBOL_NAME
	movq	-112(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	callq	concat3
	movq	%rax, -32(%rbp)
.LBB27_30:                              # %if.end.143
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB27_49
.LBB27_31:                              # %if.else.144
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB27_39
# BB#32:                                # %if.then.149
	movq	-24(%rbp), %rdi
	callq	Fcopy_sequence
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -152(%rbp)
.LBB27_33:                              # %for.cond.152
                                        # =>This Inner Loop Header: Depth=1
	movq	-152(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB27_38
# BB#34:                                # %for.body.157
                                        #   in Loop: Header=BB27_33 Depth=1
	movq	-152(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	FONTP
	testb	$1, %al
	jne	.LBB27_35
	jmp	.LBB27_36
.LBB27_35:                              # %if.then.161
                                        #   in Loop: Header=BB27_33 Depth=1
	movl	$901, %edi              # imm = 0x385
	movq	-32(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Ffont_xlfd_name
	movq	%rax, -32(%rbp)
.LBB27_36:                              # %if.end.164
                                        #   in Loop: Header=BB27_33 Depth=1
	movq	-152(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	XSETCAR
# BB#37:                                # %for.inc.165
                                        #   in Loop: Header=BB27_33 Depth=1
	movq	-152(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -152(%rbp)
	jmp	.LBB27_33
.LBB27_38:                              # %for.end.169
	jmp	.LBB27_48
.LBB27_39:                              # %if.else.170
	movq	-24(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB27_40
	jmp	.LBB27_47
.LBB27_40:                              # %if.then.172
	movq	-24(%rbp), %rdi
	callq	Fcopy_sequence
	movq	%rax, -24(%rbp)
	movl	$0, -36(%rbp)
.LBB27_41:                              # %for.cond.174
                                        # =>This Inner Loop Header: Depth=1
	movslq	-36(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	ASIZE
	movq	-312(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jge	.LBB27_46
# BB#42:                                # %for.body.179
                                        #   in Loop: Header=BB27_41 Depth=1
	movq	-24(%rbp), %rdi
	movslq	-36(%rbp), %rsi
	callq	AREF
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	FONTP
	testb	$1, %al
	jne	.LBB27_43
	jmp	.LBB27_44
.LBB27_43:                              # %if.then.183
                                        #   in Loop: Header=BB27_41 Depth=1
	movl	$901, %edi              # imm = 0x385
	movq	-32(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Ffont_xlfd_name
	movq	%rax, -32(%rbp)
.LBB27_44:                              # %if.end.186
                                        #   in Loop: Header=BB27_41 Depth=1
	movq	-24(%rbp), %rdi
	movslq	-36(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	ASET
# BB#45:                                # %for.inc.188
                                        #   in Loop: Header=BB27_41 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB27_41
.LBB27_46:                              # %for.end.189
	jmp	.LBB27_47
.LBB27_47:                              # %if.end.190
	jmp	.LBB27_48
.LBB27_48:                              # %if.end.191
	jmp	.LBB27_49
.LBB27_49:                              # %if.end.192
	movq	-8(%rbp), %rdi
	callq	intern
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	list3
	movq	globals+832, %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, globals+832
.LBB27_50:                              # %return
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	retq
.Lfunc_end27:
	.size	font_add_log, .Lfunc_end27-font_add_log
	.cfi_endproc

	.globl	font_has_char
	.align	16, 0x90
	.type	font_has_char,@function
font_has_char:                          # @font_has_char
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp89:
	.cfi_def_cfa_offset 16
.Ltmp90:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp91:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	-24(%rbp), %rdi
	callq	FONT_ENTITY_P
	testb	$1, %al
	jne	.LBB28_1
	jmp	.LBB28_12
.LBB28_1:                               # %if.then
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rdi
	callq	AREF
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	392(%rax), %rax
	movq	%rax, -56(%rbp)
.LBB28_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -56(%rbp)
	movb	%cl, -61(%rbp)          # 1-byte Spill
	je	.LBB28_4
# BB#3:                                 # %land.rhs
                                        #   in Loop: Header=BB28_2 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	sete	%cl
	xorb	$-1, %cl
	movb	%cl, -61(%rbp)          # 1-byte Spill
.LBB28_4:                               # %land.end
                                        #   in Loop: Header=BB28_2 Depth=1
	movb	-61(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB28_5
	jmp	.LBB28_7
.LBB28_5:                               # %for.body
                                        #   in Loop: Header=BB28_2 Depth=1
	jmp	.LBB28_6
.LBB28_6:                               # %for.inc
                                        #   in Loop: Header=BB28_2 Depth=1
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB28_2
.LBB28_7:                               # %for.end
	cmpq	$0, -56(%rbp)
	jne	.LBB28_9
# BB#8:                                 # %if.then.4
	movl	$0, -4(%rbp)
	jmp	.LBB28_17
.LBB28_9:                               # %if.end
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$0, 88(%rax)
	jne	.LBB28_11
# BB#10:                                # %if.then.7
	movl	$-1, -4(%rbp)
	jmp	.LBB28_17
.LBB28_11:                              # %if.end.8
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	88(%rax), %rax
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	*%rax
	movl	%eax, -4(%rbp)
	jmp	.LBB28_17
.LBB28_12:                              # %if.end.12
	movq	-24(%rbp), %rdi
	callq	XFONT_OBJECT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	208(%rax), %rax
	cmpq	$0, 88(%rax)
	je	.LBB28_16
# BB#13:                                # %if.then.17
	movq	-40(%rbp), %rax
	movq	208(%rax), %rax
	movq	88(%rax), %rax
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	*%rax
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	jl	.LBB28_15
# BB#14:                                # %if.then.22
	movl	-60(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB28_17
.LBB28_15:                              # %if.end.23
	jmp	.LBB28_16
.LBB28_16:                              # %if.end.24
	movq	-40(%rbp), %rax
	movq	208(%rax), %rax
	movq	96(%rax), %rax
	movq	-40(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	*%rax
	cmpl	$-1, %eax
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -4(%rbp)
.LBB28_17:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	font_has_char, .Lfunc_end28-font_has_char
	.cfi_endproc

	.globl	font_get_name
	.align	16, 0x90
	.type	font_get_name,@function
font_get_name:                          # @font_get_name
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp92:
	.cfi_def_cfa_offset 16
.Ltmp93:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp94:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$14, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	AREF
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	font_get_name, .Lfunc_end29-font_get_name
	.cfi_endproc

	.globl	font_spec_from_name
	.align	16, 0x90
	.type	font_spec_from_name,@function
font_spec_from_name:                    # @font_spec_from_name
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp95:
	.cfi_def_cfa_offset 16
.Ltmp96:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp97:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -16(%rbp)
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	callq	Ffont_spec
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHECK_STRING
	movq	-16(%rbp), %rdi
	callq	SSDATA
	movq	-16(%rbp), %rdi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	SBYTES
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	font_parse_name
	cmpl	$-1, %eax
	jne	.LBB30_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB30_3
.LBB30_2:                               # %if.end
	movl	$86, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	font_put_extra
	movl	$133, %edi
	movq	-24(%rbp), %rdx
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	font_put_extra
	movq	-24(%rbp), %rdx
	movq	%rdx, -8(%rbp)
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB30_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	font_spec_from_name, .Lfunc_end30-font_spec_from_name
	.cfi_endproc

	.globl	Ffont_spec
	.align	16, 0x90
	.type	Ffont_spec,@function
Ffont_spec:                             # @Ffont_spec
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp98:
	.cfi_def_cfa_offset 16
.Ltmp99:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp100:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	callq	font_make_spec
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
.LBB31_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jge	.LBB31_20
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %edx
	cmpl	$0, %edx
	jne	.LBB31_4
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB31_1 Depth=1
	jmp	.LBB31_5
.LBB31_4:                               # %cond.false
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB31_5:                               # %cond.end
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	cmpq	-8(%rbp), %rax
	jl	.LBB31_7
# BB#6:                                 # %if.then
	movq	-40(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SDATA
	movabsq	$.L.str.27, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	error
.LBB31_7:                               # %if.end
                                        #   in Loop: Header=BB31_1 Depth=1
	movl	$86, %edi
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	8(%rcx,%rax,8), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB31_11
# BB#8:                                 # %if.then.13
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-48(%rbp), %rdi
	callq	CHECK_STRING
	movq	-48(%rbp), %rdi
	callq	SSDATA
	movq	-48(%rbp), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	SBYTES
	movq	-24(%rbp), %rdx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	font_parse_name
	cmpl	$0, %eax
	jge	.LBB31_10
# BB#9:                                 # %if.then.19
	movq	-48(%rbp), %rdi
	callq	SSDATA
	movabsq	$.L.str.28, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	error
.LBB31_10:                              # %if.end.21
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	font_put_extra
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB31_18
.LBB31_11:                              # %if.else
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-40(%rbp), %rdi
	callq	get_font_prop_index
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jl	.LBB31_16
# BB#12:                                # %if.then.26
                                        #   in Loop: Header=BB31_1 Depth=1
	xorl	%edi, %edi
	movl	-52(%rbp), %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rdx
	movl	-92(%rbp), %edi         # 4-byte Reload
	movq	%rax, %rsi
	callq	font_prop_validate
	movq	%rax, -48(%rbp)
	cmpl	$12, -52(%rbp)
	jge	.LBB31_14
# BB#13:                                # %if.then.31
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-24(%rbp), %rdi
	movslq	-52(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	ASET
	jmp	.LBB31_15
.LBB31_14:                              # %if.else.33
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	font_put_extra
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB31_15:                              # %if.end.35
                                        #   in Loop: Header=BB31_1 Depth=1
	jmp	.LBB31_17
.LBB31_16:                              # %if.else.36
                                        #   in Loop: Header=BB31_1 Depth=1
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rsi
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	font_prop_validate
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	font_put_extra
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB31_17:                              # %if.end.39
                                        #   in Loop: Header=BB31_1 Depth=1
	jmp	.LBB31_18
.LBB31_18:                              # %if.end.40
                                        #   in Loop: Header=BB31_1 Depth=1
	jmp	.LBB31_19
.LBB31_19:                              # %for.inc
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-32(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB31_1
.LBB31_20:                              # %for.end
	movq	-24(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	Ffont_spec, .Lfunc_end31-Ffont_spec
	.cfi_endproc

	.align	16, 0x90
	.type	font_parse_name,@function
font_parse_name:                        # @font_parse_name
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp101:
	.cfi_def_cfa_offset 16
.Ltmp102:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp103:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$45, %eax
	je	.LBB32_3
# BB#1:                                 # %lor.lhs.false
	movl	$42, %esi
	movq	-16(%rbp), %rdi
	callq	strchr
	cmpq	$0, %rax
	jne	.LBB32_3
# BB#2:                                 # %lor.lhs.false.2
	movl	$63, %esi
	movq	-16(%rbp), %rdi
	callq	strchr
	cmpq	$0, %rax
	je	.LBB32_4
.LBB32_3:                               # %if.then
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	font_parse_xlfd
	movl	%eax, -4(%rbp)
	jmp	.LBB32_5
.LBB32_4:                               # %if.end
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	font_parse_fcname
	movl	%eax, -4(%rbp)
.LBB32_5:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	font_parse_name, .Lfunc_end32-font_parse_name
	.cfi_endproc

	.globl	font_clear_prop
	.align	16, 0x90
	.type	font_clear_prop,@function
font_clear_prop:                        # @font_clear_prop
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp104:
	.cfi_def_cfa_offset 16
.Ltmp105:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp106:
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	120(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	FONTP
	testb	$1, %al
	jne	.LBB33_2
# BB#1:                                 # %if.then
	jmp	.LBB33_24
.LBB33_2:                               # %if.end
	movl	$86, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Ffont_get
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB33_4
# BB#3:                                 # %if.then.4
	movq	-24(%rbp), %rdi
	callq	copy_font_spec
	movl	$86, %edi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	font_put_extra
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB33_4:                               # %if.end.9
	movq	-24(%rbp), %rdi
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB33_10
# BB#5:                                 # %land.lhs.true
	cmpl	$2, -12(%rbp)
	je	.LBB33_10
# BB#6:                                 # %land.lhs.true.16
	cmpl	$1, -12(%rbp)
	je	.LBB33_10
# BB#7:                                 # %land.lhs.true.19
	cmpl	$7, -12(%rbp)
	je	.LBB33_10
# BB#8:                                 # %land.lhs.true.22
	cmpl	$8, -12(%rbp)
	je	.LBB33_10
# BB#9:                                 # %if.then.25
	jmp	.LBB33_24
.LBB33_10:                              # %if.end.26
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	120(%rcx), %rax
	jne	.LBB33_12
# BB#11:                                # %if.then.30
	movq	-24(%rbp), %rdi
	callq	copy_font_spec
	movq	%rax, -24(%rbp)
.LBB33_12:                              # %if.end.32
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	movl	%ecx, %esi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	cmpl	$2, -12(%rbp)
	je	.LBB33_14
# BB#13:                                # %lor.lhs.false
	cmpl	$1, -12(%rbp)
	jne	.LBB33_17
.LBB33_14:                              # %if.then.39
	cmpl	$2, -12(%rbp)
	jne	.LBB33_16
# BB#15:                                # %if.then.42
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$1, %edi
	movl	%edi, %esi
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$7, %edi
	movl	%edi, %esi
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
.LBB33_16:                              # %if.end.45
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$3, %edi
	movl	%edi, %esi
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$4, %edi
	movl	%edi, %esi
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$8, %edi
	movl	%edi, %esi
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$9, %edi
	movl	%edi, %esi
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$10, %edi
	movl	%edi, %esi
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$11, %edi
	movl	%edi, %esi
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	jmp	.LBB33_23
.LBB33_17:                              # %if.else
	cmpl	$8, -12(%rbp)
	jne	.LBB33_19
# BB#18:                                # %if.then.54
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$9, %edi
	movl	%edi, %esi
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$10, %edi
	movl	%edi, %esi
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$11, %edi
	movl	%edi, %esi
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	jmp	.LBB33_22
.LBB33_19:                              # %if.else.58
	cmpl	$7, -12(%rbp)
	jne	.LBB33_21
# BB#20:                                # %if.then.61
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$11, %edi
	movl	%edi, %esi
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
.LBB33_21:                              # %if.end.63
	jmp	.LBB33_22
.LBB33_22:                              # %if.end.64
	jmp	.LBB33_23
.LBB33_23:                              # %if.end.65
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 120(%rcx)
.LBB33_24:                              # %return
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	font_clear_prop, .Lfunc_end33-font_clear_prop
	.cfi_endproc

	.globl	Ffont_get
	.align	16, 0x90
	.type	Ffont_get,@function
Ffont_get:                              # @Ffont_get
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp107:
	.cfi_def_cfa_offset 16
.Ltmp108:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp109:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHECK_FONT
	movq	-24(%rbp), %rsi
	andq	$7, %rsi
	movl	%esi, %eax
	cmpl	$0, %eax
	jne	.LBB34_2
# BB#1:                                 # %cond.true
	jmp	.LBB34_3
.LBB34_2:                               # %cond.false
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB34_3:                               # %cond.end
	movq	-24(%rbp), %rdi
	callq	get_font_prop_index
	movl	%eax, -28(%rbp)
	cmpl	$5, -28(%rbp)
	jl	.LBB34_6
# BB#4:                                 # %land.lhs.true
	cmpl	$7, -28(%rbp)
	jg	.LBB34_6
# BB#5:                                 # %if.then
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	font_style_symbolic
	movq	%rax, -8(%rbp)
	jmp	.LBB34_24
.LBB34_6:                               # %if.end
	cmpl	$0, -28(%rbp)
	jl	.LBB34_9
# BB#7:                                 # %land.lhs.true.10
	cmpl	$12, -28(%rbp)
	jge	.LBB34_9
# BB#8:                                 # %if.then.13
	movq	-16(%rbp), %rdi
	movslq	-28(%rbp), %rsi
	callq	AREF
	movq	%rax, -8(%rbp)
	jmp	.LBB34_24
.LBB34_9:                               # %if.end.16
	movl	$12, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	callq	AREF
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fassq
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB34_22
# BB#10:                                # %land.lhs.true.22
	movq	-16(%rbp), %rdi
	callq	FONT_OBJECT_P
	testb	$1, %al
	jne	.LBB34_11
	jmp	.LBB34_22
.LBB34_11:                              # %if.then.25
	movq	-16(%rbp), %rdi
	callq	XFONT_OBJECT
	movl	$89, %edi
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB34_16
# BB#12:                                # %if.then.30
	movq	-48(%rbp), %rax
	movq	208(%rax), %rax
	cmpq	$0, 144(%rax)
	je	.LBB34_14
# BB#13:                                # %if.then.31
	movq	-48(%rbp), %rax
	movq	208(%rax), %rax
	movq	144(%rax), %rax
	movq	-48(%rbp), %rdi
	callq	*%rax
	movq	%rax, -40(%rbp)
	jmp	.LBB34_15
.LBB34_14:                              # %if.else
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	%rax, -40(%rbp)
.LBB34_15:                              # %if.end.38
	jmp	.LBB34_21
.LBB34_16:                              # %if.else.39
	movl	$24, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB34_20
# BB#17:                                # %if.then.43
	movq	-48(%rbp), %rax
	movq	208(%rax), %rax
	cmpq	$0, 216(%rax)
	je	.LBB34_19
# BB#18:                                # %if.then.46
	movq	-48(%rbp), %rax
	movq	208(%rax), %rax
	movq	216(%rax), %rax
	movq	-48(%rbp), %rdi
	callq	*%rax
	movq	%rax, -40(%rbp)
.LBB34_19:                              # %if.end.50
	jmp	.LBB34_20
.LBB34_20:                              # %if.end.51
	jmp	.LBB34_21
.LBB34_21:                              # %if.end.52
	jmp	.LBB34_23
.LBB34_22:                              # %if.else.53
	movq	-40(%rbp), %rdi
	callq	Fcdr
	movq	%rax, -40(%rbp)
.LBB34_23:                              # %if.end.55
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB34_24:                              # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	Ffont_get, .Lfunc_end34-Ffont_get
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI35_0:
	.quad	4602678819172646912     # double 0.5
.LCPI35_1:
	.quad	4634785966078589665     # double 72.269999999999996
.LCPI35_2:
	.quad	4621819117588971520     # double 10
	.text
	.globl	font_find_for_lface
	.align	16, 0x90
	.type	font_find_for_lface,@function
font_find_for_lface:                    # @font_find_for_lface
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp110:
	.cfi_def_cfa_offset 16
.Ltmp111:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp112:
	.cfi_def_cfa_register %rbp
	subq	$1360, %rsp             # imm = 0x550
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	$16384, -192(%rbp)      # imm = 0x4000
	callq	SPECPDL_INDEX
	movl	$4, %ecx
	movl	%ecx, %esi
	movq	%rax, -200(%rbp)
	movb	$0, -201(%rbp)
	movq	-32(%rbp), %rdi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-312(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB35_2
# BB#1:                                 # %if.then
	movl	$579, %edi              # imm = 0x243
	callq	builtin_lisp_symbol
	movl	$182, %edi
	movq	%rax, -128(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -120(%rbp)
	movq	zero_vector, %rax
	movq	%rax, -112(%rbp)
	jmp	.LBB35_3
.LBB35_2:                               # %if.else
	movq	zero_vector, %rax
	movq	%rax, -120(%rbp)
.LBB35_3:                               # %if.end
	cmpl	$0, -36(%rbp)
	jl	.LBB35_45
# BB#4:                                 # %land.lhs.true
	movl	$4, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-320(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB35_45
# BB#5:                                 # %if.then.14
	movl	$4, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	callq	AREF
	leaq	-216(%rbp), %rsi
	leaq	-224(%rbp), %rdx
	movq	%rax, %rdi
	callq	font_registry_charsets
	cmpl	$0, %eax
	jge	.LBB35_7
# BB#6:                                 # %if.then.18
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB35_518
.LBB35_7:                               # %if.end.20
	cmpq	$0, -224(%rbp)
	je	.LBB35_41
# BB#8:                                 # %land.lhs.true.21
	movb	$1, %al
	testb	$1, %al
	jne	.LBB35_9
	jmp	.LBB35_10
.LBB35_9:                               # %cond.true
	movl	-36(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB35_11
	jmp	.LBB35_13
.LBB35_10:                              # %cond.false
	movslq	-36(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB35_13
.LBB35_11:                              # %land.lhs.true.26
	movq	-224(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$2, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB35_13
# BB#12:                                # %cond.true.28
	movl	-36(%rbp), %eax
	movl	%eax, -324(%rbp)        # 4-byte Spill
	jmp	.LBB35_39
.LBB35_13:                              # %cond.false.29
	movq	-224(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$5, %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB35_16
# BB#14:                                # %lor.lhs.false
	movq	-224(%rbp), %rax
	cmpl	$2, 104(%rax)
	je	.LBB35_16
# BB#15:                                # %lor.lhs.false.37
	movq	-224(%rbp), %rax
	cmpl	$3, 104(%rax)
	jne	.LBB35_17
.LBB35_16:                              # %cond.true.41
	movq	-224(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	encode_char
	movl	%eax, -328(%rbp)        # 4-byte Spill
	jmp	.LBB35_38
.LBB35_17:                              # %cond.false.43
	movl	-36(%rbp), %eax
	movq	-224(%rbp), %rcx
	cmpl	120(%rcx), %eax
	jl	.LBB35_19
# BB#18:                                # %lor.lhs.false.46
	movl	-36(%rbp), %eax
	movq	-224(%rbp), %rcx
	cmpl	124(%rcx), %eax
	jle	.LBB35_20
.LBB35_19:                              # %cond.true.49
	movq	-224(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, -332(%rbp)        # 4-byte Spill
	jmp	.LBB35_37
.LBB35_20:                              # %cond.false.50
	movq	-224(%rbp), %rax
	cmpl	$0, 104(%rax)
	jne	.LBB35_25
# BB#21:                                # %cond.true.54
	movq	-224(%rbp), %rax
	movb	88(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB35_23
# BB#22:                                # %cond.true.59
	movl	-36(%rbp), %eax
	movq	-224(%rbp), %rcx
	subl	324(%rcx), %eax
	movq	-224(%rbp), %rcx
	addl	108(%rcx), %eax
	movl	%eax, -336(%rbp)        # 4-byte Spill
	jmp	.LBB35_24
.LBB35_23:                              # %cond.false.61
	movq	-224(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	encode_char
	movl	%eax, -336(%rbp)        # 4-byte Spill
.LBB35_24:                              # %cond.end
	movl	-336(%rbp), %eax        # 4-byte Reload
	movl	%eax, -340(%rbp)        # 4-byte Spill
	jmp	.LBB35_36
.LBB35_25:                              # %cond.false.63
	movq	-224(%rbp), %rax
	cmpl	$1, 104(%rax)
	jne	.LBB35_34
# BB#26:                                # %cond.true.67
	movq	-224(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$4, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB35_32
# BB#27:                                # %land.lhs.true.73
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-224(%rbp), %rdi
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
	jne	.LBB35_28
	jmp	.LBB35_32
.LBB35_28:                              # %cond.true.79
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-224(%rbp), %rdi
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
	movq	%rax, charset_work
	movq	charset_work, %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-352(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB35_30
# BB#29:                                # %cond.true.88
	movq	-224(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, -356(%rbp)        # 4-byte Spill
	jmp	.LBB35_31
.LBB35_30:                              # %cond.false.90
	movq	charset_work, %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -356(%rbp)        # 4-byte Spill
.LBB35_31:                              # %cond.end.92
	movl	-356(%rbp), %eax        # 4-byte Reload
	movl	%eax, -360(%rbp)        # 4-byte Spill
	jmp	.LBB35_33
.LBB35_32:                              # %cond.false.94
	movq	-224(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	encode_char
	movl	%eax, -360(%rbp)        # 4-byte Spill
.LBB35_33:                              # %cond.end.96
	movl	-360(%rbp), %eax        # 4-byte Reload
	movl	%eax, -364(%rbp)        # 4-byte Spill
	jmp	.LBB35_35
.LBB35_34:                              # %cond.false.98
	movq	-224(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	encode_char
	movl	%eax, -364(%rbp)        # 4-byte Spill
.LBB35_35:                              # %cond.end.100
	movl	-364(%rbp), %eax        # 4-byte Reload
	movl	%eax, -340(%rbp)        # 4-byte Spill
.LBB35_36:                              # %cond.end.102
	movl	-340(%rbp), %eax        # 4-byte Reload
	movl	%eax, -332(%rbp)        # 4-byte Spill
.LBB35_37:                              # %cond.end.104
	movl	-332(%rbp), %eax        # 4-byte Reload
	movl	%eax, -328(%rbp)        # 4-byte Spill
.LBB35_38:                              # %cond.end.106
	movl	-328(%rbp), %eax        # 4-byte Reload
	movl	%eax, -324(%rbp)        # 4-byte Spill
.LBB35_39:                              # %cond.end.108
	movl	-324(%rbp), %eax        # 4-byte Reload
	movq	-224(%rbp), %rcx
	cmpl	128(%rcx), %eax
	jne	.LBB35_41
# BB#40:                                # %if.then.113
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB35_518
.LBB35_41:                              # %if.else.115
	movl	-36(%rbp), %eax
	movq	-216(%rbp), %rcx
	cmpl	124(%rcx), %eax
	jle	.LBB35_43
# BB#42:                                # %if.then.119
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB35_518
.LBB35_43:                              # %if.end.121
	jmp	.LBB35_44
.LBB35_44:                              # %if.end.122
	jmp	.LBB35_45
.LBB35_45:                              # %if.end.123
	movq	-32(%rbp), %rdi
	callq	copy_font_spec
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	AREF
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	font_pixel_size
	movl	%eax, -164(%rbp)
	cmpl	$0, -164(%rbp)
	jne	.LBB35_50
# BB#46:                                # %land.lhs.true.129
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB35_50
# BB#47:                                # %if.then.135
	movsd	.LCPI35_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI35_1, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI35_2, %xmm2        # xmm2 = mem[0],zero
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	sarq	$2, %rax
	cvtsi2sdq	%rax, %xmm3
	movsd	%xmm3, -232(%rbp)
	movsd	-232(%rbp), %xmm3       # xmm3 = mem[0],zero
	divsd	%xmm2, %xmm3
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	mulsd	64(%rax), %xmm3
	divsd	%xmm1, %xmm3
	addsd	%xmm0, %xmm3
	cvttsd2si	%xmm3, %ecx
	movl	%ecx, -164(%rbp)
	cmpl	$1, -164(%rbp)
	jge	.LBB35_49
# BB#48:                                # %if.then.144
	movl	$1, -164(%rbp)
.LBB35_49:                              # %if.end.145
	jmp	.LBB35_50
.LBB35_50:                              # %if.end.146
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$8, %edi
	movl	%edi, %esi
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	-48(%rbp), %rdi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-392(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB35_52
# BB#51:                                # %if.then.154
	movq	zero_vector, %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB35_56
.LBB35_52:                              # %if.else.156
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB35_53
	jmp	.LBB35_54
.LBB35_53:                              # %if.then.159
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	SSDATA
	movq	-64(%rbp), %rdi
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	SBYTES
	movl	$1, %edx
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	font_intern_prop
	xorl	%edi, %edi
	movq	%rax, -96(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -88(%rbp)
	movq	zero_vector, %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB35_55
.LBB35_54:                              # %if.else.168
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -96(%rbp)
	movq	zero_vector, %rax
	movq	%rax, -88(%rbp)
.LBB35_55:                              # %if.end.172
	jmp	.LBB35_56
.LBB35_56:                              # %if.end.173
	movl	$3, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-408(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB35_58
# BB#57:                                # %if.then.180
	movq	zero_vector, %rax
	movq	%rax, -152(%rbp)
	jmp	.LBB35_65
.LBB35_58:                              # %if.else.182
	movq	-24(%rbp), %rax
	movq	120(%rax), %rdi
	callq	FONTP
	testb	$1, %al
	jne	.LBB35_59
	jmp	.LBB35_63
.LBB35_59:                              # %if.then.185
	movl	$3, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	120(%rcx), %rcx
	movq	%rcx, -240(%rbp)
	movq	-240(%rbp), %rdi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-416(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB35_61
# BB#60:                                # %if.then.191
	movl	$3, %eax
	movl	%eax, %esi
	movq	-240(%rbp), %rdi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -160(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -152(%rbp)
	movq	zero_vector, %rax
	movq	%rax, -144(%rbp)
	jmp	.LBB35_62
.LBB35_61:                              # %if.else.197
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -160(%rbp)
	movq	zero_vector, %rax
	movq	%rax, -152(%rbp)
.LBB35_62:                              # %if.end.201
	jmp	.LBB35_64
.LBB35_63:                              # %if.else.202
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -160(%rbp)
	movq	zero_vector, %rax
	movq	%rax, -152(%rbp)
.LBB35_64:                              # %if.end.206
	jmp	.LBB35_65
.LBB35_65:                              # %if.end.207
	movl	$2, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-424(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB35_68
# BB#66:                                # %land.lhs.true.212
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB35_67
	jmp	.LBB35_68
.LBB35_67:                              # %if.then.216
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	SSDATA
	movq	-64(%rbp), %rdi
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	SBYTES
	movl	$1, %edx
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	font_intern_prop
	movq	%rax, -64(%rbp)
.LBB35_68:                              # %if.end.221
	xorl	%edi, %edi
	movq	-64(%rbp), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-440(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB35_70
# BB#69:                                # %if.then.225
	xorl	%edi, %edi
	leaq	-272(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	zero_vector, %rax
	movq	-104(%rbp), %rcx
	movq	%rax, 8(%rcx)
	jmp	.LBB35_489
.LBB35_70:                              # %if.else.229
	movl	$901, %edi              # imm = 0x385
	movq	-64(%rbp), %rax
	movq	Vface_alternative_font_family_alist, %rsi
	movq	%rsi, -448(%rbp)        # 8-byte Spill
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	-448(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fassoc_string
	xorl	%edi, %edi
	movq	%rax, -280(%rbp)
	movq	-280(%rbp), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-464(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB35_485
# BB#71:                                # %if.then.235
	movq	-280(%rbp), %rdi
	callq	Flength
	sarq	$2, %rax
	movq	%rax, -288(%rbp)
# BB#72:                                # %do.body
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB35_73
	jmp	.LBB35_152
.LBB35_73:                              # %cond.true.238
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB35_74
	jmp	.LBB35_113
.LBB35_74:                              # %cond.true.239
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB35_76
# BB#75:                                # %cond.true.248
	xorl	%eax, %eax
	movq	-288(%rbp), %rcx
	addq	$2, %rcx
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
	movq	-288(%rbp), %rcx
	addq	$2, %rcx
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
	movl	%eax, -468(%rbp)        # 4-byte Spill
	jmp	.LBB35_77
.LBB35_76:                              # %cond.false.268
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -468(%rbp)        # 4-byte Spill
.LBB35_77:                              # %cond.end.275
	movl	-468(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB35_79
# BB#78:                                # %land.lhs.true.279
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jl	.LBB35_105
.LBB35_79:                              # %lor.lhs.false.285
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB35_80
	jmp	.LBB35_91
.LBB35_80:                              # %cond.true.286
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB35_85
# BB#81:                                # %cond.true.292
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -472(%rbp)        # 4-byte Spill
	jge	.LBB35_83
# BB#82:                                # %cond.true.304
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -476(%rbp)        # 4-byte Spill
	jmp	.LBB35_84
.LBB35_83:                              # %cond.false.315
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -476(%rbp)        # 4-byte Spill
.LBB35_84:                              # %cond.end.322
	movl	-476(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-472(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB35_105
	jmp	.LBB35_102
.LBB35_85:                              # %cond.false.327
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB35_86
	jmp	.LBB35_87
.LBB35_86:                              # %cond.true.328
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB35_105
	jmp	.LBB35_102
.LBB35_87:                              # %cond.false.329
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB35_89
# BB#88:                                # %cond.true.338
	xorl	%eax, %eax
	movq	-288(%rbp), %rcx
	addq	$2, %rcx
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
	movq	-288(%rbp), %rcx
	addq	$2, %rcx
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
	movl	%eax, -480(%rbp)        # 4-byte Spill
	jmp	.LBB35_90
.LBB35_89:                              # %cond.false.360
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -480(%rbp)        # 4-byte Spill
.LBB35_90:                              # %cond.end.367
	movl	-480(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-288(%rbp), %rsi
	addq	$2, %rsi
	movb	%sil, %dil
	movsbl	%dil, %ecx
	cmpl	%ecx, %eax
	jl	.LBB35_105
	jmp	.LBB35_102
.LBB35_91:                              # %cond.false.375
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB35_92
	jmp	.LBB35_93
.LBB35_92:                              # %cond.true.376
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB35_105
	jmp	.LBB35_102
.LBB35_93:                              # %cond.false.377
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB35_98
# BB#94:                                # %cond.true.383
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -484(%rbp)        # 4-byte Spill
	jge	.LBB35_96
# BB#95:                                # %cond.true.395
	xorl	%eax, %eax
	movq	-288(%rbp), %rcx
	addq	$2, %rcx
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
	movq	-288(%rbp), %rcx
	addq	$2, %rcx
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
	movl	%eax, -488(%rbp)        # 4-byte Spill
	jmp	.LBB35_97
.LBB35_96:                              # %cond.false.417
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -488(%rbp)        # 4-byte Spill
.LBB35_97:                              # %cond.end.424
	movl	-488(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-484(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB35_105
	jmp	.LBB35_102
.LBB35_98:                              # %cond.false.429
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB35_100
# BB#99:                                # %cond.true.438
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -492(%rbp)        # 4-byte Spill
	jmp	.LBB35_101
.LBB35_100:                             # %cond.false.449
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -492(%rbp)        # 4-byte Spill
.LBB35_101:                             # %cond.end.456
	movl	-492(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-288(%rbp), %rsi
	addq	$2, %rsi
	movb	%sil, %dil
	movsbl	%dil, %ecx
	cmpl	%ecx, %eax
	jl	.LBB35_105
.LBB35_102:                             # %lor.lhs.false.464
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	shll	$3, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB35_104
# BB#103:                               # %land.lhs.true.473
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	shll	$3, %edx
	cmpl	$-128, %edx
	jl	.LBB35_105
.LBB35_104:                             # %lor.lhs.false.480
	movl	$127, %eax
	movq	-288(%rbp), %rcx
	addq	$2, %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	shll	$3, %esi
	cmpl	%esi, %eax
	jge	.LBB35_109
.LBB35_105:                             # %cond.true.487
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB35_107
# BB#106:                               # %cond.true.494
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -496(%rbp)        # 4-byte Spill
	jmp	.LBB35_108
.LBB35_107:                             # %cond.false.501
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -496(%rbp)        # 4-byte Spill
.LBB35_108:                             # %cond.end.510
	movl	-496(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -296(%rbp)
	testb	$1, %cl
	jne	.LBB35_472
	jmp	.LBB35_471
.LBB35_109:                             # %cond.false.513
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB35_111
# BB#110:                               # %cond.true.520
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -500(%rbp)        # 4-byte Spill
	jmp	.LBB35_112
.LBB35_111:                             # %cond.false.527
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -500(%rbp)        # 4-byte Spill
.LBB35_112:                             # %cond.end.536
	movl	-500(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -296(%rbp)
	testb	$1, %dl
	jne	.LBB35_472
	jmp	.LBB35_471
.LBB35_113:                             # %cond.false.539
	movq	-288(%rbp), %rax
	addq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB35_115
# BB#114:                               # %cond.true.546
	xorl	%eax, %eax
	movq	-288(%rbp), %rcx
	addq	$2, %rcx
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
	movq	-288(%rbp), %rdi
	addq	$2, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -512(%rbp)        # 8-byte Spill
	jmp	.LBB35_116
.LBB35_115:                             # %cond.false.565
	movq	-288(%rbp), %rax
	addq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
.LBB35_116:                             # %cond.end.570
	movq	-512(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB35_118
# BB#117:                               # %land.lhs.true.574
	movq	-288(%rbp), %rax
	addq	$2, %rax
	cmpq	$0, %rax
	jl	.LBB35_144
.LBB35_118:                             # %lor.lhs.false.578
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB35_119
	jmp	.LBB35_130
.LBB35_119:                             # %cond.true.579
	movq	-288(%rbp), %rax
	addq	$2, %rax
	cmpq	$0, %rax
	jge	.LBB35_124
# BB#120:                               # %cond.true.583
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movq	-288(%rbp), %rcx
	addq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -520(%rbp)        # 8-byte Spill
	jge	.LBB35_122
# BB#121:                               # %cond.true.591
	movq	-288(%rbp), %rax
	addq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	jmp	.LBB35_123
.LBB35_122:                             # %cond.false.600
	movq	-288(%rbp), %rax
	addq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
.LBB35_123:                             # %cond.end.605
	movq	-528(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -536(%rbp)        # 8-byte Spill
	cqto
	movq	-536(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-520(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB35_144
	jmp	.LBB35_141
.LBB35_124:                             # %cond.false.610
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB35_125
	jmp	.LBB35_126
.LBB35_125:                             # %cond.true.611
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB35_144
	jmp	.LBB35_141
.LBB35_126:                             # %cond.false.612
	movq	-288(%rbp), %rax
	addq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB35_128
# BB#127:                               # %cond.true.619
	xorl	%eax, %eax
	movq	-288(%rbp), %rcx
	addq	$2, %rcx
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
	movq	-288(%rbp), %rdi
	addq	$2, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -544(%rbp)        # 8-byte Spill
	jmp	.LBB35_129
.LBB35_128:                             # %cond.false.638
	movq	-288(%rbp), %rax
	addq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
.LBB35_129:                             # %cond.end.643
	movq	-544(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -552(%rbp)        # 8-byte Spill
	cqto
	movq	-552(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-288(%rbp), %rdi
	addq	$2, %rdi
	cmpq	%rdi, %rax
	jl	.LBB35_144
	jmp	.LBB35_141
.LBB35_130:                             # %cond.false.649
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB35_131
	jmp	.LBB35_132
.LBB35_131:                             # %cond.true.650
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB35_144
	jmp	.LBB35_141
.LBB35_132:                             # %cond.false.651
	movq	-288(%rbp), %rax
	addq	$2, %rax
	cmpq	$0, %rax
	jge	.LBB35_137
# BB#133:                               # %cond.true.655
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movq	-288(%rbp), %rcx
	addq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -560(%rbp)        # 8-byte Spill
	jge	.LBB35_135
# BB#134:                               # %cond.true.663
	xorl	%eax, %eax
	movq	-288(%rbp), %rcx
	addq	$2, %rcx
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
	movq	-288(%rbp), %rdi
	addq	$2, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -568(%rbp)        # 8-byte Spill
	jmp	.LBB35_136
.LBB35_135:                             # %cond.false.682
	movq	-288(%rbp), %rax
	addq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
.LBB35_136:                             # %cond.end.687
	movq	-568(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -576(%rbp)        # 8-byte Spill
	cqto
	movq	-576(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-560(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB35_144
	jmp	.LBB35_141
.LBB35_137:                             # %cond.false.692
	movq	-288(%rbp), %rax
	addq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB35_139
# BB#138:                               # %cond.true.699
	movq	-288(%rbp), %rax
	addq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
	jmp	.LBB35_140
.LBB35_139:                             # %cond.false.708
	movq	-288(%rbp), %rax
	addq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
.LBB35_140:                             # %cond.end.713
	movq	-584(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -592(%rbp)        # 8-byte Spill
	cqto
	movq	-592(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-288(%rbp), %rdi
	addq	$2, %rdi
	cmpq	%rdi, %rax
	jl	.LBB35_144
.LBB35_141:                             # %lor.lhs.false.719
	movq	-288(%rbp), %rax
	addq	$2, %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB35_143
# BB#142:                               # %land.lhs.true.726
	movq	-288(%rbp), %rax
	addq	$2, %rax
	shlq	$3, %rax
	cmpq	$-128, %rax
	jl	.LBB35_144
.LBB35_143:                             # %lor.lhs.false.731
	movl	$127, %eax
	movl	%eax, %ecx
	movq	-288(%rbp), %rdx
	addq	$2, %rdx
	shlq	$3, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB35_148
.LBB35_144:                             # %cond.true.736
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB35_146
# BB#145:                               # %cond.true.743
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -596(%rbp)        # 4-byte Spill
	jmp	.LBB35_147
.LBB35_146:                             # %cond.false.750
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -596(%rbp)        # 4-byte Spill
.LBB35_147:                             # %cond.end.759
	movl	-596(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -296(%rbp)
	testb	$1, %cl
	jne	.LBB35_472
	jmp	.LBB35_471
.LBB35_148:                             # %cond.false.762
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB35_150
# BB#149:                               # %cond.true.769
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -600(%rbp)        # 4-byte Spill
	jmp	.LBB35_151
.LBB35_150:                             # %cond.false.776
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -600(%rbp)        # 4-byte Spill
.LBB35_151:                             # %cond.end.785
	movl	-600(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -296(%rbp)
	testb	$1, %dl
	jne	.LBB35_472
	jmp	.LBB35_471
.LBB35_152:                             # %cond.false.788
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB35_153
	jmp	.LBB35_232
.LBB35_153:                             # %cond.true.789
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB35_154
	jmp	.LBB35_193
.LBB35_154:                             # %cond.true.790
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB35_156
# BB#155:                               # %cond.true.799
	xorl	%eax, %eax
	movq	-288(%rbp), %rcx
	addq	$2, %rcx
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
	movq	-288(%rbp), %rcx
	addq	$2, %rcx
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
	movl	%eax, -604(%rbp)        # 4-byte Spill
	jmp	.LBB35_157
.LBB35_156:                             # %cond.false.821
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -604(%rbp)        # 4-byte Spill
.LBB35_157:                             # %cond.end.828
	movl	-604(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB35_159
# BB#158:                               # %land.lhs.true.832
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jl	.LBB35_185
.LBB35_159:                             # %lor.lhs.false.838
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB35_160
	jmp	.LBB35_171
.LBB35_160:                             # %cond.true.839
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB35_165
# BB#161:                               # %cond.true.845
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -608(%rbp)        # 4-byte Spill
	jge	.LBB35_163
# BB#162:                               # %cond.true.857
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -612(%rbp)        # 4-byte Spill
	jmp	.LBB35_164
.LBB35_163:                             # %cond.false.868
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -612(%rbp)        # 4-byte Spill
.LBB35_164:                             # %cond.end.875
	movl	-612(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-608(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB35_185
	jmp	.LBB35_182
.LBB35_165:                             # %cond.false.880
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB35_166
	jmp	.LBB35_167
.LBB35_166:                             # %cond.true.881
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB35_185
	jmp	.LBB35_182
.LBB35_167:                             # %cond.false.882
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB35_169
# BB#168:                               # %cond.true.891
	xorl	%eax, %eax
	movq	-288(%rbp), %rcx
	addq	$2, %rcx
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
	movq	-288(%rbp), %rcx
	addq	$2, %rcx
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
	movl	%eax, -616(%rbp)        # 4-byte Spill
	jmp	.LBB35_170
.LBB35_169:                             # %cond.false.913
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -616(%rbp)        # 4-byte Spill
.LBB35_170:                             # %cond.end.920
	movl	-616(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-288(%rbp), %rsi
	addq	$2, %rsi
	movw	%si, %di
	movswl	%di, %ecx
	cmpl	%ecx, %eax
	jl	.LBB35_185
	jmp	.LBB35_182
.LBB35_171:                             # %cond.false.928
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB35_172
	jmp	.LBB35_173
.LBB35_172:                             # %cond.true.929
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB35_185
	jmp	.LBB35_182
.LBB35_173:                             # %cond.false.930
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB35_178
# BB#174:                               # %cond.true.936
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -620(%rbp)        # 4-byte Spill
	jge	.LBB35_176
# BB#175:                               # %cond.true.948
	xorl	%eax, %eax
	movq	-288(%rbp), %rcx
	addq	$2, %rcx
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
	movq	-288(%rbp), %rcx
	addq	$2, %rcx
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
	movl	%eax, -624(%rbp)        # 4-byte Spill
	jmp	.LBB35_177
.LBB35_176:                             # %cond.false.970
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -624(%rbp)        # 4-byte Spill
.LBB35_177:                             # %cond.end.977
	movl	-624(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-620(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB35_185
	jmp	.LBB35_182
.LBB35_178:                             # %cond.false.982
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB35_180
# BB#179:                               # %cond.true.991
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -628(%rbp)        # 4-byte Spill
	jmp	.LBB35_181
.LBB35_180:                             # %cond.false.1002
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -628(%rbp)        # 4-byte Spill
.LBB35_181:                             # %cond.end.1009
	movl	-628(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-288(%rbp), %rsi
	addq	$2, %rsi
	movw	%si, %di
	movswl	%di, %ecx
	cmpl	%ecx, %eax
	jl	.LBB35_185
.LBB35_182:                             # %lor.lhs.false.1017
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	shll	$3, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB35_184
# BB#183:                               # %land.lhs.true.1026
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	shll	$3, %edx
	cmpl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB35_185
.LBB35_184:                             # %lor.lhs.false.1033
	movl	$32767, %eax            # imm = 0x7FFF
	movq	-288(%rbp), %rcx
	addq	$2, %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	shll	$3, %esi
	cmpl	%esi, %eax
	jge	.LBB35_189
.LBB35_185:                             # %cond.true.1040
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB35_187
# BB#186:                               # %cond.true.1047
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -632(%rbp)        # 4-byte Spill
	jmp	.LBB35_188
.LBB35_187:                             # %cond.false.1054
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -632(%rbp)        # 4-byte Spill
.LBB35_188:                             # %cond.end.1063
	movl	-632(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -296(%rbp)
	testb	$1, %cl
	jne	.LBB35_472
	jmp	.LBB35_471
.LBB35_189:                             # %cond.false.1066
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB35_191
# BB#190:                               # %cond.true.1073
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -636(%rbp)        # 4-byte Spill
	jmp	.LBB35_192
.LBB35_191:                             # %cond.false.1080
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -636(%rbp)        # 4-byte Spill
.LBB35_192:                             # %cond.end.1089
	movl	-636(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -296(%rbp)
	testb	$1, %dl
	jne	.LBB35_472
	jmp	.LBB35_471
.LBB35_193:                             # %cond.false.1092
	movq	-288(%rbp), %rax
	addq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB35_195
# BB#194:                               # %cond.true.1099
	xorl	%eax, %eax
	movq	-288(%rbp), %rcx
	addq	$2, %rcx
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
	movq	-288(%rbp), %rdi
	addq	$2, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -648(%rbp)        # 8-byte Spill
	jmp	.LBB35_196
.LBB35_195:                             # %cond.false.1118
	movq	-288(%rbp), %rax
	addq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -648(%rbp)        # 8-byte Spill
.LBB35_196:                             # %cond.end.1123
	movq	-648(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB35_198
# BB#197:                               # %land.lhs.true.1127
	movq	-288(%rbp), %rax
	addq	$2, %rax
	cmpq	$0, %rax
	jl	.LBB35_224
.LBB35_198:                             # %lor.lhs.false.1131
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB35_199
	jmp	.LBB35_210
.LBB35_199:                             # %cond.true.1132
	movq	-288(%rbp), %rax
	addq	$2, %rax
	cmpq	$0, %rax
	jge	.LBB35_204
# BB#200:                               # %cond.true.1136
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movq	-288(%rbp), %rcx
	addq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -656(%rbp)        # 8-byte Spill
	jge	.LBB35_202
# BB#201:                               # %cond.true.1144
	movq	-288(%rbp), %rax
	addq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -664(%rbp)        # 8-byte Spill
	jmp	.LBB35_203
.LBB35_202:                             # %cond.false.1153
	movq	-288(%rbp), %rax
	addq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -664(%rbp)        # 8-byte Spill
.LBB35_203:                             # %cond.end.1158
	movq	-664(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -672(%rbp)        # 8-byte Spill
	cqto
	movq	-672(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-656(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB35_224
	jmp	.LBB35_221
.LBB35_204:                             # %cond.false.1163
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB35_205
	jmp	.LBB35_206
.LBB35_205:                             # %cond.true.1164
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB35_224
	jmp	.LBB35_221
.LBB35_206:                             # %cond.false.1165
	movq	-288(%rbp), %rax
	addq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB35_208
# BB#207:                               # %cond.true.1172
	xorl	%eax, %eax
	movq	-288(%rbp), %rcx
	addq	$2, %rcx
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
	movq	-288(%rbp), %rdi
	addq	$2, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -680(%rbp)        # 8-byte Spill
	jmp	.LBB35_209
.LBB35_208:                             # %cond.false.1191
	movq	-288(%rbp), %rax
	addq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -680(%rbp)        # 8-byte Spill
.LBB35_209:                             # %cond.end.1196
	movq	-680(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -688(%rbp)        # 8-byte Spill
	cqto
	movq	-688(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-288(%rbp), %rdi
	addq	$2, %rdi
	cmpq	%rdi, %rax
	jl	.LBB35_224
	jmp	.LBB35_221
.LBB35_210:                             # %cond.false.1202
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB35_211
	jmp	.LBB35_212
.LBB35_211:                             # %cond.true.1203
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB35_224
	jmp	.LBB35_221
.LBB35_212:                             # %cond.false.1204
	movq	-288(%rbp), %rax
	addq	$2, %rax
	cmpq	$0, %rax
	jge	.LBB35_217
# BB#213:                               # %cond.true.1208
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movq	-288(%rbp), %rcx
	addq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -696(%rbp)        # 8-byte Spill
	jge	.LBB35_215
# BB#214:                               # %cond.true.1216
	xorl	%eax, %eax
	movq	-288(%rbp), %rcx
	addq	$2, %rcx
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
	movq	-288(%rbp), %rdi
	addq	$2, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -704(%rbp)        # 8-byte Spill
	jmp	.LBB35_216
.LBB35_215:                             # %cond.false.1235
	movq	-288(%rbp), %rax
	addq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -704(%rbp)        # 8-byte Spill
.LBB35_216:                             # %cond.end.1240
	movq	-704(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -712(%rbp)        # 8-byte Spill
	cqto
	movq	-712(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-696(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB35_224
	jmp	.LBB35_221
.LBB35_217:                             # %cond.false.1245
	movq	-288(%rbp), %rax
	addq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB35_219
# BB#218:                               # %cond.true.1252
	movq	-288(%rbp), %rax
	addq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -720(%rbp)        # 8-byte Spill
	jmp	.LBB35_220
.LBB35_219:                             # %cond.false.1261
	movq	-288(%rbp), %rax
	addq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -720(%rbp)        # 8-byte Spill
.LBB35_220:                             # %cond.end.1266
	movq	-720(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -728(%rbp)        # 8-byte Spill
	cqto
	movq	-728(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-288(%rbp), %rdi
	addq	$2, %rdi
	cmpq	%rdi, %rax
	jl	.LBB35_224
.LBB35_221:                             # %lor.lhs.false.1272
	movq	-288(%rbp), %rax
	addq	$2, %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB35_223
# BB#222:                               # %land.lhs.true.1279
	movq	-288(%rbp), %rax
	addq	$2, %rax
	shlq	$3, %rax
	cmpq	$-32768, %rax           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB35_224
.LBB35_223:                             # %lor.lhs.false.1284
	movl	$32767, %eax            # imm = 0x7FFF
	movl	%eax, %ecx
	movq	-288(%rbp), %rdx
	addq	$2, %rdx
	shlq	$3, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB35_228
.LBB35_224:                             # %cond.true.1289
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB35_226
# BB#225:                               # %cond.true.1296
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -732(%rbp)        # 4-byte Spill
	jmp	.LBB35_227
.LBB35_226:                             # %cond.false.1303
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -732(%rbp)        # 4-byte Spill
.LBB35_227:                             # %cond.end.1312
	movl	-732(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -296(%rbp)
	testb	$1, %cl
	jne	.LBB35_472
	jmp	.LBB35_471
.LBB35_228:                             # %cond.false.1315
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB35_230
# BB#229:                               # %cond.true.1322
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -736(%rbp)        # 4-byte Spill
	jmp	.LBB35_231
.LBB35_230:                             # %cond.false.1329
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -736(%rbp)        # 4-byte Spill
.LBB35_231:                             # %cond.end.1338
	movl	-736(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -296(%rbp)
	testb	$1, %dl
	jne	.LBB35_472
	jmp	.LBB35_471
.LBB35_232:                             # %cond.false.1341
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB35_233
	jmp	.LBB35_312
.LBB35_233:                             # %cond.true.1342
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB35_234
	jmp	.LBB35_273
.LBB35_234:                             # %cond.true.1343
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB35_236
# BB#235:                               # %cond.true.1351
	xorl	%eax, %eax
	movq	-288(%rbp), %rcx
	addq	$2, %rcx
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
	movq	-288(%rbp), %rcx
	addq	$2, %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -740(%rbp)        # 4-byte Spill
	jmp	.LBB35_237
.LBB35_236:                             # %cond.false.1371
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -740(%rbp)        # 4-byte Spill
.LBB35_237:                             # %cond.end.1377
	movl	-740(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB35_239
# BB#238:                               # %land.lhs.true.1381
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jl	.LBB35_265
.LBB35_239:                             # %lor.lhs.false.1386
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB35_240
	jmp	.LBB35_251
.LBB35_240:                             # %cond.true.1387
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB35_245
# BB#241:                               # %cond.true.1392
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movl	%eax, %ecx
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movl	%eax, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -744(%rbp)        # 4-byte Spill
	jge	.LBB35_243
# BB#242:                               # %cond.true.1402
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -748(%rbp)        # 4-byte Spill
	jmp	.LBB35_244
.LBB35_243:                             # %cond.false.1412
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -748(%rbp)        # 4-byte Spill
.LBB35_244:                             # %cond.end.1418
	movl	-748(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-744(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB35_265
	jmp	.LBB35_262
.LBB35_245:                             # %cond.false.1423
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB35_246
	jmp	.LBB35_247
.LBB35_246:                             # %cond.true.1424
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB35_265
	jmp	.LBB35_262
.LBB35_247:                             # %cond.false.1425
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB35_249
# BB#248:                               # %cond.true.1433
	xorl	%eax, %eax
	movq	-288(%rbp), %rcx
	addq	$2, %rcx
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
	movq	-288(%rbp), %rcx
	addq	$2, %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -752(%rbp)        # 4-byte Spill
	jmp	.LBB35_250
.LBB35_249:                             # %cond.false.1453
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -752(%rbp)        # 4-byte Spill
.LBB35_250:                             # %cond.end.1459
	movl	-752(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-288(%rbp), %rsi
	addq	$2, %rsi
	movl	%esi, %ecx
	cmpl	%ecx, %eax
	jl	.LBB35_265
	jmp	.LBB35_262
.LBB35_251:                             # %cond.false.1466
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB35_252
	jmp	.LBB35_253
.LBB35_252:                             # %cond.true.1467
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB35_265
	jmp	.LBB35_262
.LBB35_253:                             # %cond.false.1468
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB35_258
# BB#254:                               # %cond.true.1473
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movl	%eax, %ecx
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movl	%eax, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -756(%rbp)        # 4-byte Spill
	jge	.LBB35_256
# BB#255:                               # %cond.true.1483
	xorl	%eax, %eax
	movq	-288(%rbp), %rcx
	addq	$2, %rcx
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
	movq	-288(%rbp), %rcx
	addq	$2, %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -760(%rbp)        # 4-byte Spill
	jmp	.LBB35_257
.LBB35_256:                             # %cond.false.1503
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -760(%rbp)        # 4-byte Spill
.LBB35_257:                             # %cond.end.1509
	movl	-760(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-756(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB35_265
	jmp	.LBB35_262
.LBB35_258:                             # %cond.false.1514
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB35_260
# BB#259:                               # %cond.true.1522
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -764(%rbp)        # 4-byte Spill
	jmp	.LBB35_261
.LBB35_260:                             # %cond.false.1532
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -764(%rbp)        # 4-byte Spill
.LBB35_261:                             # %cond.end.1538
	movl	-764(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-288(%rbp), %rsi
	addq	$2, %rsi
	movl	%esi, %ecx
	cmpl	%ecx, %eax
	jl	.LBB35_265
.LBB35_262:                             # %lor.lhs.false.1545
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB35_264
# BB#263:                               # %land.lhs.true.1553
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	jl	.LBB35_265
.LBB35_264:                             # %lor.lhs.false.1559
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movq	-288(%rbp), %rcx
	addq	$2, %rcx
	movl	%ecx, %edx
	shll	$3, %edx
	cmpl	%edx, %eax
	jge	.LBB35_269
.LBB35_265:                             # %cond.true.1565
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB35_267
# BB#266:                               # %cond.true.1571
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -768(%rbp)        # 4-byte Spill
	jmp	.LBB35_268
.LBB35_267:                             # %cond.false.1575
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -768(%rbp)        # 4-byte Spill
.LBB35_268:                             # %cond.end.1581
	movl	-768(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -296(%rbp)
	testb	$1, %cl
	jne	.LBB35_472
	jmp	.LBB35_471
.LBB35_269:                             # %cond.false.1584
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB35_271
# BB#270:                               # %cond.true.1590
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -772(%rbp)        # 4-byte Spill
	jmp	.LBB35_272
.LBB35_271:                             # %cond.false.1594
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -772(%rbp)        # 4-byte Spill
.LBB35_272:                             # %cond.end.1600
	movl	-772(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -296(%rbp)
	testb	$1, %dl
	jne	.LBB35_472
	jmp	.LBB35_471
.LBB35_273:                             # %cond.false.1603
	movq	-288(%rbp), %rax
	addq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB35_275
# BB#274:                               # %cond.true.1610
	xorl	%eax, %eax
	movq	-288(%rbp), %rcx
	addq	$2, %rcx
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
	movq	-288(%rbp), %rdi
	addq	$2, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -784(%rbp)        # 8-byte Spill
	jmp	.LBB35_276
.LBB35_275:                             # %cond.false.1629
	movq	-288(%rbp), %rax
	addq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -784(%rbp)        # 8-byte Spill
.LBB35_276:                             # %cond.end.1634
	movq	-784(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB35_278
# BB#277:                               # %land.lhs.true.1638
	movq	-288(%rbp), %rax
	addq	$2, %rax
	cmpq	$0, %rax
	jl	.LBB35_304
.LBB35_278:                             # %lor.lhs.false.1642
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB35_279
	jmp	.LBB35_290
.LBB35_279:                             # %cond.true.1643
	movq	-288(%rbp), %rax
	addq	$2, %rax
	cmpq	$0, %rax
	jge	.LBB35_284
# BB#280:                               # %cond.true.1647
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movq	-288(%rbp), %rcx
	addq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -792(%rbp)        # 8-byte Spill
	jge	.LBB35_282
# BB#281:                               # %cond.true.1655
	movq	-288(%rbp), %rax
	addq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -800(%rbp)        # 8-byte Spill
	jmp	.LBB35_283
.LBB35_282:                             # %cond.false.1664
	movq	-288(%rbp), %rax
	addq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -800(%rbp)        # 8-byte Spill
.LBB35_283:                             # %cond.end.1669
	movq	-800(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -808(%rbp)        # 8-byte Spill
	cqto
	movq	-808(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-792(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB35_304
	jmp	.LBB35_301
.LBB35_284:                             # %cond.false.1674
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB35_285
	jmp	.LBB35_286
.LBB35_285:                             # %cond.true.1675
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB35_304
	jmp	.LBB35_301
.LBB35_286:                             # %cond.false.1676
	movq	-288(%rbp), %rax
	addq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB35_288
# BB#287:                               # %cond.true.1683
	xorl	%eax, %eax
	movq	-288(%rbp), %rcx
	addq	$2, %rcx
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
	movq	-288(%rbp), %rdi
	addq	$2, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -816(%rbp)        # 8-byte Spill
	jmp	.LBB35_289
.LBB35_288:                             # %cond.false.1702
	movq	-288(%rbp), %rax
	addq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -816(%rbp)        # 8-byte Spill
.LBB35_289:                             # %cond.end.1707
	movq	-816(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -824(%rbp)        # 8-byte Spill
	cqto
	movq	-824(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-288(%rbp), %rdi
	addq	$2, %rdi
	cmpq	%rdi, %rax
	jl	.LBB35_304
	jmp	.LBB35_301
.LBB35_290:                             # %cond.false.1713
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB35_291
	jmp	.LBB35_292
.LBB35_291:                             # %cond.true.1714
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB35_304
	jmp	.LBB35_301
.LBB35_292:                             # %cond.false.1715
	movq	-288(%rbp), %rax
	addq	$2, %rax
	cmpq	$0, %rax
	jge	.LBB35_297
# BB#293:                               # %cond.true.1719
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movq	-288(%rbp), %rcx
	addq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -832(%rbp)        # 8-byte Spill
	jge	.LBB35_295
# BB#294:                               # %cond.true.1727
	xorl	%eax, %eax
	movq	-288(%rbp), %rcx
	addq	$2, %rcx
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
	movq	-288(%rbp), %rdi
	addq	$2, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -840(%rbp)        # 8-byte Spill
	jmp	.LBB35_296
.LBB35_295:                             # %cond.false.1746
	movq	-288(%rbp), %rax
	addq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -840(%rbp)        # 8-byte Spill
.LBB35_296:                             # %cond.end.1751
	movq	-840(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -848(%rbp)        # 8-byte Spill
	cqto
	movq	-848(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-832(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB35_304
	jmp	.LBB35_301
.LBB35_297:                             # %cond.false.1756
	movq	-288(%rbp), %rax
	addq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB35_299
# BB#298:                               # %cond.true.1763
	movq	-288(%rbp), %rax
	addq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -856(%rbp)        # 8-byte Spill
	jmp	.LBB35_300
.LBB35_299:                             # %cond.false.1772
	movq	-288(%rbp), %rax
	addq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -856(%rbp)        # 8-byte Spill
.LBB35_300:                             # %cond.end.1777
	movq	-856(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -864(%rbp)        # 8-byte Spill
	cqto
	movq	-864(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-288(%rbp), %rdi
	addq	$2, %rdi
	cmpq	%rdi, %rax
	jl	.LBB35_304
.LBB35_301:                             # %lor.lhs.false.1783
	movq	-288(%rbp), %rax
	addq	$2, %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB35_303
# BB#302:                               # %land.lhs.true.1790
	movq	-288(%rbp), %rax
	addq	$2, %rax
	shlq	$3, %rax
	cmpq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	jl	.LBB35_304
.LBB35_303:                             # %lor.lhs.false.1795
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %ecx
	movq	-288(%rbp), %rdx
	addq	$2, %rdx
	shlq	$3, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB35_308
.LBB35_304:                             # %cond.true.1800
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB35_306
# BB#305:                               # %cond.true.1806
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -868(%rbp)        # 4-byte Spill
	jmp	.LBB35_307
.LBB35_306:                             # %cond.false.1810
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -868(%rbp)        # 4-byte Spill
.LBB35_307:                             # %cond.end.1816
	movl	-868(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -296(%rbp)
	testb	$1, %cl
	jne	.LBB35_472
	jmp	.LBB35_471
.LBB35_308:                             # %cond.false.1819
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB35_310
# BB#309:                               # %cond.true.1825
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -872(%rbp)        # 4-byte Spill
	jmp	.LBB35_311
.LBB35_310:                             # %cond.false.1829
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -872(%rbp)        # 4-byte Spill
.LBB35_311:                             # %cond.end.1835
	movl	-872(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -296(%rbp)
	testb	$1, %dl
	jne	.LBB35_472
	jmp	.LBB35_471
.LBB35_312:                             # %cond.false.1838
	movb	$1, %al
	testb	$1, %al
	jne	.LBB35_313
	jmp	.LBB35_392
.LBB35_313:                             # %cond.true.1839
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB35_314
	jmp	.LBB35_353
.LBB35_314:                             # %cond.true.1840
	movq	-288(%rbp), %rax
	addq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB35_316
# BB#315:                               # %cond.true.1847
	xorl	%eax, %eax
	movq	-288(%rbp), %rcx
	addq	$2, %rcx
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
	movq	-288(%rbp), %rdi
	addq	$2, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -880(%rbp)        # 8-byte Spill
	jmp	.LBB35_317
.LBB35_316:                             # %cond.false.1866
	movq	-288(%rbp), %rax
	addq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -880(%rbp)        # 8-byte Spill
.LBB35_317:                             # %cond.end.1871
	movq	-880(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB35_319
# BB#318:                               # %land.lhs.true.1875
	movq	-288(%rbp), %rax
	addq	$2, %rax
	cmpq	$0, %rax
	jl	.LBB35_345
.LBB35_319:                             # %lor.lhs.false.1879
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB35_320
	jmp	.LBB35_331
.LBB35_320:                             # %cond.true.1880
	movq	-288(%rbp), %rax
	addq	$2, %rax
	cmpq	$0, %rax
	jge	.LBB35_325
# BB#321:                               # %cond.true.1884
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movq	-288(%rbp), %rcx
	addq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -888(%rbp)        # 8-byte Spill
	jge	.LBB35_323
# BB#322:                               # %cond.true.1892
	movq	-288(%rbp), %rax
	addq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -896(%rbp)        # 8-byte Spill
	jmp	.LBB35_324
.LBB35_323:                             # %cond.false.1901
	movq	-288(%rbp), %rax
	addq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -896(%rbp)        # 8-byte Spill
.LBB35_324:                             # %cond.end.1906
	movq	-896(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -904(%rbp)        # 8-byte Spill
	cqto
	movq	-904(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-888(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB35_345
	jmp	.LBB35_342
.LBB35_325:                             # %cond.false.1911
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB35_326
	jmp	.LBB35_327
.LBB35_326:                             # %cond.true.1912
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB35_345
	jmp	.LBB35_342
.LBB35_327:                             # %cond.false.1913
	movq	-288(%rbp), %rax
	addq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB35_329
# BB#328:                               # %cond.true.1920
	xorl	%eax, %eax
	movq	-288(%rbp), %rcx
	addq	$2, %rcx
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
	movq	-288(%rbp), %rdi
	addq	$2, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -912(%rbp)        # 8-byte Spill
	jmp	.LBB35_330
.LBB35_329:                             # %cond.false.1939
	movq	-288(%rbp), %rax
	addq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -912(%rbp)        # 8-byte Spill
.LBB35_330:                             # %cond.end.1944
	movq	-912(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -920(%rbp)        # 8-byte Spill
	cqto
	movq	-920(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-288(%rbp), %rdi
	addq	$2, %rdi
	cmpq	%rdi, %rax
	jl	.LBB35_345
	jmp	.LBB35_342
.LBB35_331:                             # %cond.false.1950
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB35_332
	jmp	.LBB35_333
.LBB35_332:                             # %cond.true.1951
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB35_345
	jmp	.LBB35_342
.LBB35_333:                             # %cond.false.1952
	movq	-288(%rbp), %rax
	addq	$2, %rax
	cmpq	$0, %rax
	jge	.LBB35_338
# BB#334:                               # %cond.true.1956
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movq	-288(%rbp), %rcx
	addq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -928(%rbp)        # 8-byte Spill
	jge	.LBB35_336
# BB#335:                               # %cond.true.1964
	xorl	%eax, %eax
	movq	-288(%rbp), %rcx
	addq	$2, %rcx
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
	movq	-288(%rbp), %rdi
	addq	$2, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -936(%rbp)        # 8-byte Spill
	jmp	.LBB35_337
.LBB35_336:                             # %cond.false.1983
	movq	-288(%rbp), %rax
	addq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -936(%rbp)        # 8-byte Spill
.LBB35_337:                             # %cond.end.1988
	movq	-936(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -944(%rbp)        # 8-byte Spill
	cqto
	movq	-944(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-928(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB35_345
	jmp	.LBB35_342
.LBB35_338:                             # %cond.false.1993
	movq	-288(%rbp), %rax
	addq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB35_340
# BB#339:                               # %cond.true.2000
	movq	-288(%rbp), %rax
	addq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -952(%rbp)        # 8-byte Spill
	jmp	.LBB35_341
.LBB35_340:                             # %cond.false.2009
	movq	-288(%rbp), %rax
	addq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -952(%rbp)        # 8-byte Spill
.LBB35_341:                             # %cond.end.2014
	movq	-952(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -960(%rbp)        # 8-byte Spill
	cqto
	movq	-960(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-288(%rbp), %rdi
	addq	$2, %rdi
	cmpq	%rdi, %rax
	jl	.LBB35_345
.LBB35_342:                             # %lor.lhs.false.2020
	movq	-288(%rbp), %rax
	addq	$2, %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB35_344
# BB#343:                               # %land.lhs.true.2027
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-288(%rbp), %rcx
	addq	$2, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB35_345
.LBB35_344:                             # %lor.lhs.false.2032
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-288(%rbp), %rcx
	addq	$2, %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB35_349
.LBB35_345:                             # %cond.true.2037
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-288(%rbp), %rcx
	addq	$2, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB35_347
# BB#346:                               # %cond.true.2042
	movq	-288(%rbp), %rax
	addq	$2, %rax
	shlq	$3, %rax
	movq	%rax, -968(%rbp)        # 8-byte Spill
	jmp	.LBB35_348
.LBB35_347:                             # %cond.false.2045
	movq	-288(%rbp), %rax
	addq	$2, %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -968(%rbp)        # 8-byte Spill
.LBB35_348:                             # %cond.end.2050
	movq	-968(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -296(%rbp)
	testb	$1, %cl
	jne	.LBB35_472
	jmp	.LBB35_471
.LBB35_349:                             # %cond.false.2052
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-288(%rbp), %rcx
	addq	$2, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB35_351
# BB#350:                               # %cond.true.2057
	movq	-288(%rbp), %rax
	addq	$2, %rax
	shlq	$3, %rax
	movq	%rax, -976(%rbp)        # 8-byte Spill
	jmp	.LBB35_352
.LBB35_351:                             # %cond.false.2060
	movq	-288(%rbp), %rax
	addq	$2, %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -976(%rbp)        # 8-byte Spill
.LBB35_352:                             # %cond.end.2065
	movq	-976(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -296(%rbp)
	testb	$1, %dl
	jne	.LBB35_472
	jmp	.LBB35_471
.LBB35_353:                             # %cond.false.2067
	movq	-288(%rbp), %rax
	addq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB35_355
# BB#354:                               # %cond.true.2074
	xorl	%eax, %eax
	movq	-288(%rbp), %rcx
	addq	$2, %rcx
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
	movq	-288(%rbp), %rdi
	addq	$2, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -984(%rbp)        # 8-byte Spill
	jmp	.LBB35_356
.LBB35_355:                             # %cond.false.2093
	movq	-288(%rbp), %rax
	addq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -984(%rbp)        # 8-byte Spill
.LBB35_356:                             # %cond.end.2098
	movq	-984(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB35_358
# BB#357:                               # %land.lhs.true.2102
	movq	-288(%rbp), %rax
	addq	$2, %rax
	cmpq	$0, %rax
	jl	.LBB35_384
.LBB35_358:                             # %lor.lhs.false.2106
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB35_359
	jmp	.LBB35_370
.LBB35_359:                             # %cond.true.2107
	movq	-288(%rbp), %rax
	addq	$2, %rax
	cmpq	$0, %rax
	jge	.LBB35_364
# BB#360:                               # %cond.true.2111
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movq	-288(%rbp), %rcx
	addq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -992(%rbp)        # 8-byte Spill
	jge	.LBB35_362
# BB#361:                               # %cond.true.2119
	movq	-288(%rbp), %rax
	addq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1000(%rbp)       # 8-byte Spill
	jmp	.LBB35_363
.LBB35_362:                             # %cond.false.2128
	movq	-288(%rbp), %rax
	addq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1000(%rbp)       # 8-byte Spill
.LBB35_363:                             # %cond.end.2133
	movq	-1000(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1008(%rbp)       # 8-byte Spill
	cqto
	movq	-1008(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-992(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB35_384
	jmp	.LBB35_381
.LBB35_364:                             # %cond.false.2138
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB35_365
	jmp	.LBB35_366
.LBB35_365:                             # %cond.true.2139
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB35_384
	jmp	.LBB35_381
.LBB35_366:                             # %cond.false.2140
	movq	-288(%rbp), %rax
	addq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB35_368
# BB#367:                               # %cond.true.2147
	xorl	%eax, %eax
	movq	-288(%rbp), %rcx
	addq	$2, %rcx
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
	movq	-288(%rbp), %rdi
	addq	$2, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1016(%rbp)       # 8-byte Spill
	jmp	.LBB35_369
.LBB35_368:                             # %cond.false.2166
	movq	-288(%rbp), %rax
	addq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1016(%rbp)       # 8-byte Spill
.LBB35_369:                             # %cond.end.2171
	movq	-1016(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1024(%rbp)       # 8-byte Spill
	cqto
	movq	-1024(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-288(%rbp), %rdi
	addq	$2, %rdi
	cmpq	%rdi, %rax
	jl	.LBB35_384
	jmp	.LBB35_381
.LBB35_370:                             # %cond.false.2177
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB35_371
	jmp	.LBB35_372
.LBB35_371:                             # %cond.true.2178
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB35_384
	jmp	.LBB35_381
.LBB35_372:                             # %cond.false.2179
	movq	-288(%rbp), %rax
	addq	$2, %rax
	cmpq	$0, %rax
	jge	.LBB35_377
# BB#373:                               # %cond.true.2183
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movq	-288(%rbp), %rcx
	addq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1032(%rbp)       # 8-byte Spill
	jge	.LBB35_375
# BB#374:                               # %cond.true.2191
	xorl	%eax, %eax
	movq	-288(%rbp), %rcx
	addq	$2, %rcx
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
	movq	-288(%rbp), %rdi
	addq	$2, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1040(%rbp)       # 8-byte Spill
	jmp	.LBB35_376
.LBB35_375:                             # %cond.false.2210
	movq	-288(%rbp), %rax
	addq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1040(%rbp)       # 8-byte Spill
.LBB35_376:                             # %cond.end.2215
	movq	-1040(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1048(%rbp)       # 8-byte Spill
	cqto
	movq	-1048(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1032(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB35_384
	jmp	.LBB35_381
.LBB35_377:                             # %cond.false.2220
	movq	-288(%rbp), %rax
	addq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB35_379
# BB#378:                               # %cond.true.2227
	movq	-288(%rbp), %rax
	addq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1056(%rbp)       # 8-byte Spill
	jmp	.LBB35_380
.LBB35_379:                             # %cond.false.2236
	movq	-288(%rbp), %rax
	addq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1056(%rbp)       # 8-byte Spill
.LBB35_380:                             # %cond.end.2241
	movq	-1056(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1064(%rbp)       # 8-byte Spill
	cqto
	movq	-1064(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-288(%rbp), %rdi
	addq	$2, %rdi
	cmpq	%rdi, %rax
	jl	.LBB35_384
.LBB35_381:                             # %lor.lhs.false.2247
	movq	-288(%rbp), %rax
	addq	$2, %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB35_383
# BB#382:                               # %land.lhs.true.2254
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-288(%rbp), %rcx
	addq	$2, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB35_384
.LBB35_383:                             # %lor.lhs.false.2259
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-288(%rbp), %rcx
	addq	$2, %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB35_388
.LBB35_384:                             # %cond.true.2264
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-288(%rbp), %rcx
	addq	$2, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB35_386
# BB#385:                               # %cond.true.2269
	movq	-288(%rbp), %rax
	addq	$2, %rax
	shlq	$3, %rax
	movq	%rax, -1072(%rbp)       # 8-byte Spill
	jmp	.LBB35_387
.LBB35_386:                             # %cond.false.2272
	movq	-288(%rbp), %rax
	addq	$2, %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1072(%rbp)       # 8-byte Spill
.LBB35_387:                             # %cond.end.2277
	movq	-1072(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -296(%rbp)
	testb	$1, %cl
	jne	.LBB35_472
	jmp	.LBB35_471
.LBB35_388:                             # %cond.false.2279
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-288(%rbp), %rcx
	addq	$2, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB35_390
# BB#389:                               # %cond.true.2284
	movq	-288(%rbp), %rax
	addq	$2, %rax
	shlq	$3, %rax
	movq	%rax, -1080(%rbp)       # 8-byte Spill
	jmp	.LBB35_391
.LBB35_390:                             # %cond.false.2287
	movq	-288(%rbp), %rax
	addq	$2, %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1080(%rbp)       # 8-byte Spill
.LBB35_391:                             # %cond.end.2292
	movq	-1080(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -296(%rbp)
	testb	$1, %dl
	jne	.LBB35_472
	jmp	.LBB35_471
.LBB35_392:                             # %cond.false.2294
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB35_393
	jmp	.LBB35_432
.LBB35_393:                             # %cond.true.2295
	movq	-288(%rbp), %rax
	addq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB35_395
# BB#394:                               # %cond.true.2302
	xorl	%eax, %eax
	movq	-288(%rbp), %rcx
	addq	$2, %rcx
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
	movq	-288(%rbp), %rdi
	addq	$2, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1088(%rbp)       # 8-byte Spill
	jmp	.LBB35_396
.LBB35_395:                             # %cond.false.2321
	movq	-288(%rbp), %rax
	addq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1088(%rbp)       # 8-byte Spill
.LBB35_396:                             # %cond.end.2326
	movq	-1088(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB35_398
# BB#397:                               # %land.lhs.true.2330
	movq	-288(%rbp), %rax
	addq	$2, %rax
	cmpq	$0, %rax
	jl	.LBB35_424
.LBB35_398:                             # %lor.lhs.false.2334
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB35_399
	jmp	.LBB35_410
.LBB35_399:                             # %cond.true.2335
	movq	-288(%rbp), %rax
	addq	$2, %rax
	cmpq	$0, %rax
	jge	.LBB35_404
# BB#400:                               # %cond.true.2339
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movq	-288(%rbp), %rcx
	addq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1096(%rbp)       # 8-byte Spill
	jge	.LBB35_402
# BB#401:                               # %cond.true.2347
	movq	-288(%rbp), %rax
	addq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1104(%rbp)       # 8-byte Spill
	jmp	.LBB35_403
.LBB35_402:                             # %cond.false.2356
	movq	-288(%rbp), %rax
	addq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1104(%rbp)       # 8-byte Spill
.LBB35_403:                             # %cond.end.2361
	movq	-1104(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1112(%rbp)       # 8-byte Spill
	cqto
	movq	-1112(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1096(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB35_424
	jmp	.LBB35_421
.LBB35_404:                             # %cond.false.2366
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB35_405
	jmp	.LBB35_406
.LBB35_405:                             # %cond.true.2367
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB35_424
	jmp	.LBB35_421
.LBB35_406:                             # %cond.false.2368
	movq	-288(%rbp), %rax
	addq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB35_408
# BB#407:                               # %cond.true.2375
	xorl	%eax, %eax
	movq	-288(%rbp), %rcx
	addq	$2, %rcx
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
	movq	-288(%rbp), %rdi
	addq	$2, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1120(%rbp)       # 8-byte Spill
	jmp	.LBB35_409
.LBB35_408:                             # %cond.false.2394
	movq	-288(%rbp), %rax
	addq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1120(%rbp)       # 8-byte Spill
.LBB35_409:                             # %cond.end.2399
	movq	-1120(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1128(%rbp)       # 8-byte Spill
	cqto
	movq	-1128(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-288(%rbp), %rdi
	addq	$2, %rdi
	cmpq	%rdi, %rax
	jl	.LBB35_424
	jmp	.LBB35_421
.LBB35_410:                             # %cond.false.2405
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB35_411
	jmp	.LBB35_412
.LBB35_411:                             # %cond.true.2406
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB35_424
	jmp	.LBB35_421
.LBB35_412:                             # %cond.false.2407
	movq	-288(%rbp), %rax
	addq	$2, %rax
	cmpq	$0, %rax
	jge	.LBB35_417
# BB#413:                               # %cond.true.2411
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movq	-288(%rbp), %rcx
	addq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1136(%rbp)       # 8-byte Spill
	jge	.LBB35_415
# BB#414:                               # %cond.true.2419
	xorl	%eax, %eax
	movq	-288(%rbp), %rcx
	addq	$2, %rcx
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
	movq	-288(%rbp), %rdi
	addq	$2, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1144(%rbp)       # 8-byte Spill
	jmp	.LBB35_416
.LBB35_415:                             # %cond.false.2438
	movq	-288(%rbp), %rax
	addq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1144(%rbp)       # 8-byte Spill
.LBB35_416:                             # %cond.end.2443
	movq	-1144(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1152(%rbp)       # 8-byte Spill
	cqto
	movq	-1152(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1136(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB35_424
	jmp	.LBB35_421
.LBB35_417:                             # %cond.false.2448
	movq	-288(%rbp), %rax
	addq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB35_419
# BB#418:                               # %cond.true.2455
	movq	-288(%rbp), %rax
	addq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1160(%rbp)       # 8-byte Spill
	jmp	.LBB35_420
.LBB35_419:                             # %cond.false.2464
	movq	-288(%rbp), %rax
	addq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1160(%rbp)       # 8-byte Spill
.LBB35_420:                             # %cond.end.2469
	movq	-1160(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1168(%rbp)       # 8-byte Spill
	cqto
	movq	-1168(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-288(%rbp), %rdi
	addq	$2, %rdi
	cmpq	%rdi, %rax
	jl	.LBB35_424
.LBB35_421:                             # %lor.lhs.false.2475
	movq	-288(%rbp), %rax
	addq	$2, %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB35_423
# BB#422:                               # %land.lhs.true.2482
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-288(%rbp), %rcx
	addq	$2, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB35_424
.LBB35_423:                             # %lor.lhs.false.2487
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-288(%rbp), %rcx
	addq	$2, %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB35_428
.LBB35_424:                             # %cond.true.2492
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-288(%rbp), %rcx
	addq	$2, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB35_426
# BB#425:                               # %cond.true.2497
	movq	-288(%rbp), %rax
	addq	$2, %rax
	shlq	$3, %rax
	movq	%rax, -1176(%rbp)       # 8-byte Spill
	jmp	.LBB35_427
.LBB35_426:                             # %cond.false.2500
	movq	-288(%rbp), %rax
	addq	$2, %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1176(%rbp)       # 8-byte Spill
.LBB35_427:                             # %cond.end.2505
	movq	-1176(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -296(%rbp)
	testb	$1, %cl
	jne	.LBB35_472
	jmp	.LBB35_471
.LBB35_428:                             # %cond.false.2507
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-288(%rbp), %rcx
	addq	$2, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB35_430
# BB#429:                               # %cond.true.2512
	movq	-288(%rbp), %rax
	addq	$2, %rax
	shlq	$3, %rax
	movq	%rax, -1184(%rbp)       # 8-byte Spill
	jmp	.LBB35_431
.LBB35_430:                             # %cond.false.2515
	movq	-288(%rbp), %rax
	addq	$2, %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1184(%rbp)       # 8-byte Spill
.LBB35_431:                             # %cond.end.2520
	movq	-1184(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -296(%rbp)
	testb	$1, %dl
	jne	.LBB35_472
	jmp	.LBB35_471
.LBB35_432:                             # %cond.false.2522
	movq	-288(%rbp), %rax
	addq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB35_434
# BB#433:                               # %cond.true.2529
	xorl	%eax, %eax
	movq	-288(%rbp), %rcx
	addq	$2, %rcx
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
	movq	-288(%rbp), %rdi
	addq	$2, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1192(%rbp)       # 8-byte Spill
	jmp	.LBB35_435
.LBB35_434:                             # %cond.false.2548
	movq	-288(%rbp), %rax
	addq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1192(%rbp)       # 8-byte Spill
.LBB35_435:                             # %cond.end.2553
	movq	-1192(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB35_437
# BB#436:                               # %land.lhs.true.2557
	movq	-288(%rbp), %rax
	addq	$2, %rax
	cmpq	$0, %rax
	jl	.LBB35_463
.LBB35_437:                             # %lor.lhs.false.2561
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB35_438
	jmp	.LBB35_449
.LBB35_438:                             # %cond.true.2562
	movq	-288(%rbp), %rax
	addq	$2, %rax
	cmpq	$0, %rax
	jge	.LBB35_443
# BB#439:                               # %cond.true.2566
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movq	-288(%rbp), %rcx
	addq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1200(%rbp)       # 8-byte Spill
	jge	.LBB35_441
# BB#440:                               # %cond.true.2574
	movq	-288(%rbp), %rax
	addq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1208(%rbp)       # 8-byte Spill
	jmp	.LBB35_442
.LBB35_441:                             # %cond.false.2583
	movq	-288(%rbp), %rax
	addq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1208(%rbp)       # 8-byte Spill
.LBB35_442:                             # %cond.end.2588
	movq	-1208(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1216(%rbp)       # 8-byte Spill
	cqto
	movq	-1216(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1200(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB35_463
	jmp	.LBB35_460
.LBB35_443:                             # %cond.false.2593
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB35_444
	jmp	.LBB35_445
.LBB35_444:                             # %cond.true.2594
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB35_463
	jmp	.LBB35_460
.LBB35_445:                             # %cond.false.2595
	movq	-288(%rbp), %rax
	addq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB35_447
# BB#446:                               # %cond.true.2602
	xorl	%eax, %eax
	movq	-288(%rbp), %rcx
	addq	$2, %rcx
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
	movq	-288(%rbp), %rdi
	addq	$2, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1224(%rbp)       # 8-byte Spill
	jmp	.LBB35_448
.LBB35_447:                             # %cond.false.2621
	movq	-288(%rbp), %rax
	addq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1224(%rbp)       # 8-byte Spill
.LBB35_448:                             # %cond.end.2626
	movq	-1224(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1232(%rbp)       # 8-byte Spill
	cqto
	movq	-1232(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-288(%rbp), %rdi
	addq	$2, %rdi
	cmpq	%rdi, %rax
	jl	.LBB35_463
	jmp	.LBB35_460
.LBB35_449:                             # %cond.false.2632
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB35_450
	jmp	.LBB35_451
.LBB35_450:                             # %cond.true.2633
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB35_463
	jmp	.LBB35_460
.LBB35_451:                             # %cond.false.2634
	movq	-288(%rbp), %rax
	addq	$2, %rax
	cmpq	$0, %rax
	jge	.LBB35_456
# BB#452:                               # %cond.true.2638
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movq	-288(%rbp), %rcx
	addq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1240(%rbp)       # 8-byte Spill
	jge	.LBB35_454
# BB#453:                               # %cond.true.2646
	xorl	%eax, %eax
	movq	-288(%rbp), %rcx
	addq	$2, %rcx
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
	movq	-288(%rbp), %rdi
	addq	$2, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1248(%rbp)       # 8-byte Spill
	jmp	.LBB35_455
.LBB35_454:                             # %cond.false.2665
	movq	-288(%rbp), %rax
	addq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1248(%rbp)       # 8-byte Spill
.LBB35_455:                             # %cond.end.2670
	movq	-1248(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1256(%rbp)       # 8-byte Spill
	cqto
	movq	-1256(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1240(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB35_463
	jmp	.LBB35_460
.LBB35_456:                             # %cond.false.2675
	movq	-288(%rbp), %rax
	addq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB35_458
# BB#457:                               # %cond.true.2682
	movq	-288(%rbp), %rax
	addq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1264(%rbp)       # 8-byte Spill
	jmp	.LBB35_459
.LBB35_458:                             # %cond.false.2691
	movq	-288(%rbp), %rax
	addq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1264(%rbp)       # 8-byte Spill
.LBB35_459:                             # %cond.end.2696
	movq	-1264(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1272(%rbp)       # 8-byte Spill
	cqto
	movq	-1272(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-288(%rbp), %rdi
	addq	$2, %rdi
	cmpq	%rdi, %rax
	jl	.LBB35_463
.LBB35_460:                             # %lor.lhs.false.2702
	movq	-288(%rbp), %rax
	addq	$2, %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB35_462
# BB#461:                               # %land.lhs.true.2709
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-288(%rbp), %rcx
	addq	$2, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB35_463
.LBB35_462:                             # %lor.lhs.false.2714
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-288(%rbp), %rcx
	addq	$2, %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB35_467
.LBB35_463:                             # %cond.true.2719
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-288(%rbp), %rcx
	addq	$2, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB35_465
# BB#464:                               # %cond.true.2724
	movq	-288(%rbp), %rax
	addq	$2, %rax
	shlq	$3, %rax
	movq	%rax, -1280(%rbp)       # 8-byte Spill
	jmp	.LBB35_466
.LBB35_465:                             # %cond.false.2727
	movq	-288(%rbp), %rax
	addq	$2, %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1280(%rbp)       # 8-byte Spill
.LBB35_466:                             # %cond.end.2732
	movq	-1280(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -296(%rbp)
	testb	$1, %cl
	jne	.LBB35_472
	jmp	.LBB35_471
.LBB35_467:                             # %cond.false.2734
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-288(%rbp), %rcx
	addq	$2, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB35_469
# BB#468:                               # %cond.true.2739
	movq	-288(%rbp), %rax
	addq	$2, %rax
	shlq	$3, %rax
	movq	%rax, -1288(%rbp)       # 8-byte Spill
	jmp	.LBB35_470
.LBB35_469:                             # %cond.false.2742
	movq	-288(%rbp), %rax
	addq	$2, %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1288(%rbp)       # 8-byte Spill
.LBB35_470:                             # %cond.end.2747
	movq	-1288(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -296(%rbp)
	testb	$1, %dl
	jne	.LBB35_472
.LBB35_471:                             # %lor.lhs.false.2749
	movq	$-1, %rax
	cmpq	-296(%rbp), %rax
	jae	.LBB35_473
.LBB35_472:                             # %if.then.2752
	movq	$-1, %rdi
	callq	memory_full
.LBB35_473:                             # %if.else.2753
	movq	-296(%rbp), %rax
	cmpq	-192(%rbp), %rax
	jg	.LBB35_475
# BB#474:                               # %if.then.2756
	movq	-296(%rbp), %rax
	movq	-192(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -192(%rbp)
	movq	-296(%rbp), %rax
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -104(%rbp)
	jmp	.LBB35_476
.LBB35_475:                             # %if.else.2758
	movq	-296(%rbp), %rdi
	callq	xmalloc
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rdi
	movq	-288(%rbp), %rax
	addq	$2, %rax
	movq	%rax, %rsi
	callq	make_save_memory
	movabsq	$free_save_value, %rdi
	movq	%rax, -304(%rbp)
	movb	$1, -201(%rbp)
	movq	-304(%rbp), %rsi
	callq	record_unwind_protect
.LBB35_476:                             # %if.end.2762
	jmp	.LBB35_477
.LBB35_477:                             # %if.end.2763
	jmp	.LBB35_478
.LBB35_478:                             # %do.end
	movl	$0, -168(%rbp)
.LBB35_479:                             # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-280(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB35_482
# BB#480:                               # %for.body
                                        #   in Loop: Header=BB35_479 Depth=1
	movq	-280(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movslq	-168(%rbp), %rcx
	movq	-104(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
# BB#481:                               # %for.inc
                                        #   in Loop: Header=BB35_479 Depth=1
	movl	-168(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -168(%rbp)
	movq	-280(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -280(%rbp)
	jmp	.LBB35_479
.LBB35_482:                             # %for.end
	movl	$2, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -1296(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1296(%rbp), %rsi       # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB35_484
# BB#483:                               # %if.then.2775
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movl	-168(%rbp), %edi
	movl	%edi, %ecx
	addl	$1, %ecx
	movl	%ecx, -168(%rbp)
	movslq	%edi, %rdx
	movq	-104(%rbp), %rsi
	movq	%rax, (%rsi,%rdx,8)
.LBB35_484:                             # %if.end.2780
	movq	zero_vector, %rax
	movslq	-168(%rbp), %rcx
	movq	-104(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	jmp	.LBB35_488
.LBB35_485:                             # %if.else.2783
	movl	$2, %eax
	movl	%eax, %esi
	leaq	-272(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movl	$0, -168(%rbp)
	movq	-64(%rbp), %rcx
	movl	-168(%rbp), %eax
	movl	%eax, %edx
	addl	$1, %edx
	movl	%edx, -168(%rbp)
	movslq	%eax, %rdi
	movq	-104(%rbp), %r8
	movq	%rcx, (%r8,%rdi,8)
	movq	-32(%rbp), %rdi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -1304(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1304(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB35_487
# BB#486:                               # %if.then.2792
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movl	-168(%rbp), %edi
	movl	%edi, %ecx
	addl	$1, %ecx
	movl	%ecx, -168(%rbp)
	movslq	%edi, %rdx
	movq	-104(%rbp), %rsi
	movq	%rax, (%rsi,%rdx,8)
.LBB35_487:                             # %if.end.2797
	movq	zero_vector, %rax
	movslq	-168(%rbp), %rcx
	movq	-104(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
.LBB35_488:                             # %if.end.2800
	jmp	.LBB35_489
.LBB35_489:                             # %if.end.2801
	movl	$0, -168(%rbp)
.LBB35_490:                             # %for.cond.2802
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB35_492 Depth 2
                                        #       Child Loop BB35_494 Depth 3
                                        #         Child Loop BB35_496 Depth 4
	movslq	-168(%rbp), %rax
	movq	-104(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	andq	$7, %rax
	movl	%eax, %edx
	cmpl	$0, %edx
	jne	.LBB35_513
# BB#491:                               # %for.body.2809
                                        #   in Loop: Header=BB35_490 Depth=1
	movl	$2, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	movslq	-168(%rbp), %rcx
	movq	-104(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rdx
	callq	ASET
	movl	$0, -172(%rbp)
.LBB35_492:                             # %for.cond.2812
                                        #   Parent Loop BB35_490 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB35_494 Depth 3
                                        #         Child Loop BB35_496 Depth 4
	movslq	-172(%rbp), %rax
	movq	-96(%rbp,%rax,8), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB35_511
# BB#493:                               # %for.body.2819
                                        #   in Loop: Header=BB35_492 Depth=2
	movl	$1, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	movslq	-172(%rbp), %rcx
	movq	-96(%rbp,%rcx,8), %rdx
	callq	ASET
	movl	$0, -176(%rbp)
.LBB35_494:                             # %for.cond.2822
                                        #   Parent Loop BB35_490 Depth=1
                                        #     Parent Loop BB35_492 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB35_496 Depth 4
	movslq	-176(%rbp), %rax
	movq	-128(%rbp,%rax,8), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB35_509
# BB#495:                               # %for.body.2829
                                        #   in Loop: Header=BB35_494 Depth=3
	movl	$4, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	movslq	-176(%rbp), %rcx
	movq	-128(%rbp,%rcx,8), %rdx
	callq	ASET
	movl	$0, -180(%rbp)
.LBB35_496:                             # %for.cond.2832
                                        #   Parent Loop BB35_490 Depth=1
                                        #     Parent Loop BB35_492 Depth=2
                                        #       Parent Loop BB35_494 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movslq	-180(%rbp), %rax
	movq	-160(%rbp,%rax,8), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB35_507
# BB#497:                               # %for.body.2839
                                        #   in Loop: Header=BB35_496 Depth=4
	movl	$3, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	movslq	-180(%rbp), %rcx
	movq	-160(%rbp,%rcx,8), %rdx
	callq	ASET
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	font_list_entities
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -1312(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1312(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB35_505
# BB#498:                               # %if.then.2846
                                        #   in Loop: Header=BB35_496 Depth=4
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	-164(%rbp), %ecx
	movl	-36(%rbp), %r8d
	callq	font_select_entity
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -1320(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1320(%rbp), %rdx       # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB35_504
# BB#499:                               # %if.then.2851
	jmp	.LBB35_500
.LBB35_500:                             # %do.body.2852
	testb	$1, -201(%rbp)
	je	.LBB35_502
# BB#501:                               # %if.then.2854
	xorl	%edi, %edi
	movb	$0, -201(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, -1328(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1328(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -1336(%rbp)       # 8-byte Spill
.LBB35_502:                             # %if.end.2857
	jmp	.LBB35_503
.LBB35_503:                             # %do.end.2858
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB35_518
.LBB35_504:                             # %if.end.2859
                                        #   in Loop: Header=BB35_496 Depth=4
	jmp	.LBB35_505
.LBB35_505:                             # %if.end.2860
                                        #   in Loop: Header=BB35_496 Depth=4
	jmp	.LBB35_506
.LBB35_506:                             # %for.inc.2861
                                        #   in Loop: Header=BB35_496 Depth=4
	movl	-180(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -180(%rbp)
	jmp	.LBB35_496
.LBB35_507:                             # %for.end.2863
                                        #   in Loop: Header=BB35_494 Depth=3
	jmp	.LBB35_508
.LBB35_508:                             # %for.inc.2864
                                        #   in Loop: Header=BB35_494 Depth=3
	movl	-176(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -176(%rbp)
	jmp	.LBB35_494
.LBB35_509:                             # %for.end.2866
                                        #   in Loop: Header=BB35_492 Depth=2
	jmp	.LBB35_510
.LBB35_510:                             # %for.inc.2867
                                        #   in Loop: Header=BB35_492 Depth=2
	movl	-172(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -172(%rbp)
	jmp	.LBB35_492
.LBB35_511:                             # %for.end.2869
                                        #   in Loop: Header=BB35_490 Depth=1
	jmp	.LBB35_512
.LBB35_512:                             # %for.inc.2870
                                        #   in Loop: Header=BB35_490 Depth=1
	movl	-168(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -168(%rbp)
	jmp	.LBB35_490
.LBB35_513:                             # %for.end.2872
	jmp	.LBB35_514
.LBB35_514:                             # %do.body.2873
	testb	$1, -201(%rbp)
	je	.LBB35_516
# BB#515:                               # %if.then.2875
	xorl	%edi, %edi
	movb	$0, -201(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, -1344(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1344(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -1352(%rbp)       # 8-byte Spill
.LBB35_516:                             # %if.end.2878
	jmp	.LBB35_517
.LBB35_517:                             # %do.end.2879
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB35_518:                             # %return
	movq	-8(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	font_find_for_lface, .Lfunc_end35-font_find_for_lface
	.cfi_endproc

	.align	16, 0x90
	.type	font_select_entity,@function
font_select_entity:                     # @font_select_entity
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp113:
	.cfi_def_cfa_offset 16
.Ltmp114:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp115:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	%r8d, -40(%rbp)
	movq	-24(%rbp), %rdx
	subq	$3, %rdx
	movq	8(%rdx), %rdx
	movl	%eax, %edi
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB36_6
# BB#1:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	ASIZE
	cmpq	$1, %rax
	jne	.LBB36_6
# BB#2:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rdi
	callq	AREF
	movq	%rax, -48(%rbp)
	cmpl	$0, -40(%rbp)
	jl	.LBB36_4
# BB#3:                                 # %lor.lhs.false
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	-40(%rbp), %edx
	callq	font_has_char
	cmpl	$0, %eax
	jle	.LBB36_5
.LBB36_4:                               # %if.then.10
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB36_23
.LBB36_5:                               # %if.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB36_23
.LBB36_6:                               # %if.end.12
	movq	scratch_font_prefer, %rax
	movq	%rax, -56(%rbp)
	movl	$5, -60(%rbp)
.LBB36_7:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$8, -60(%rbp)
	jg	.LBB36_10
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB36_7 Depth=1
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movslq	-60(%rbp), %rsi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
# BB#9:                                 # %for.inc
                                        #   in Loop: Header=BB36_7 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB36_7
.LBB36_10:                              # %for.end
	movq	-32(%rbp), %rax
	movq	120(%rax), %rdi
	callq	FONTP
	testb	$1, %al
	jne	.LBB36_11
	jmp	.LBB36_16
.LBB36_11:                              # %if.then.16
	movq	-32(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -72(%rbp)
	movl	$5, -60(%rbp)
.LBB36_12:                              # %for.cond.18
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$8, -60(%rbp)
	jg	.LBB36_15
# BB#13:                                # %for.body.21
                                        #   in Loop: Header=BB36_12 Depth=1
	movq	-56(%rbp), %rdi
	movslq	-60(%rbp), %rsi
	movq	-72(%rbp), %rax
	movslq	-60(%rbp), %rcx
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	callq	AREF
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
# BB#14:                                # %for.inc.25
                                        #   in Loop: Header=BB36_12 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB36_12
.LBB36_15:                              # %for.end.27
	jmp	.LBB36_16
.LBB36_16:                              # %if.end.28
	movl	$5, %eax
	movl	%eax, %esi
	movq	-56(%rbp), %rdi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB36_18
# BB#17:                                # %if.then.33
	movl	$5, %edi
	movl	$1, %edx
	movq	-56(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	40(%rcx), %rsi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	font_style_to_value
	movl	$5, %edx
	movl	%edx, %esi
	movslq	%eax, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, %rdx
	callq	ASET
.LBB36_18:                              # %if.end.37
	movl	$6, %eax
	movl	%eax, %esi
	movq	-56(%rbp), %rdi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB36_20
# BB#19:                                # %if.then.42
	movl	$6, %edi
	movl	$1, %edx
	movq	-56(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	48(%rcx), %rsi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	font_style_to_value
	movl	$6, %edx
	movl	%edx, %esi
	movslq	%eax, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, %rdx
	callq	ASET
.LBB36_20:                              # %if.end.48
	movl	$7, %eax
	movl	%eax, %esi
	movq	-56(%rbp), %rdi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB36_22
# BB#21:                                # %if.then.53
	movl	$7, %edi
	movl	$1, %edx
	movq	-56(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	24(%rcx), %rsi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	font_style_to_value
	movl	$7, %edx
	movl	%edx, %esi
	movslq	%eax, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, %rdx
	callq	ASET
.LBB36_22:                              # %if.end.59
	movl	$8, %eax
	movl	%eax, %esi
	movq	-56(%rbp), %rdi
	movslq	-36(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, %rdx
	callq	ASET
	movq	-24(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movl	-40(%rbp), %ecx
	callq	font_sort_entities
	movq	%rax, -8(%rbp)
.LBB36_23:                              # %return
	movq	-8(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	font_select_entity, .Lfunc_end36-font_select_entity
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI37_0:
	.quad	4602678819172646912     # double 0.5
.LCPI37_1:
	.quad	4634785966078589665     # double 72.269999999999996
.LCPI37_2:
	.quad	4621819117588971520     # double 10
	.text
	.globl	font_open_for_lface
	.align	16, 0x90
	.type	font_open_for_lface,@function
font_open_for_lface:                    # @font_open_for_lface
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp116:
	.cfi_def_cfa_offset 16
.Ltmp117:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp118:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movl	$8, %eax
	movl	%eax, %r8d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	%r8, %rsi
	callq	AREF
	andq	$7, %rax
	movl	%eax, %r9d
	andl	$-5, %r9d
	cmpl	$2, %r9d
	jne	.LBB37_3
# BB#1:                                 # %land.lhs.true
	movl	$8, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	AREF
	sarq	$2, %rax
	cmpq	$0, %rax
	jle	.LBB37_3
# BB#2:                                 # %if.then
	movl	$8, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	AREF
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -36(%rbp)
	jmp	.LBB37_16
.LBB37_3:                               # %if.else
	movq	-32(%rbp), %rdi
	callq	FONT_SPEC_P
	testb	$1, %al
	jne	.LBB37_4
	jmp	.LBB37_6
.LBB37_4:                               # %land.lhs.true.11
	movl	$8, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB37_6
# BB#5:                                 # %if.then.16
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	font_pixel_size
	movl	%eax, -36(%rbp)
	jmp	.LBB37_15
.LBB37_6:                               # %if.else.18
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB37_8
# BB#7:                                 # %if.then.24
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	sarq	$2, %rax
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, -48(%rbp)
	jmp	.LBB37_14
.LBB37_8:                               # %if.else.28
	movb	$1, %al
	testb	$1, %al
	jne	.LBB37_9
	jmp	.LBB37_10
.LBB37_9:                               # %cond.true
	xorl	%eax, %eax
	movq	-8(%rbp), %rcx
	movq	160(%rcx), %rcx
	movl	32(%rcx), %edx
	addl	$0, %edx
	cmpl	%edx, %eax
	jb	.LBB37_11
	jmp	.LBB37_12
.LBB37_10:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movq	160(%rdx), %rdx
	movslq	32(%rdx), %rdx
	addq	$0, %rdx
	cmpq	%rdx, %rcx
	jae	.LBB37_12
.LBB37_11:                              # %cond.true.37
	movq	-8(%rbp), %rax
	movq	160(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB37_13
.LBB37_12:                              # %cond.false.40
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB37_13
.LBB37_13:                              # %cond.end
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	sarq	$2, %rax
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, -48(%rbp)
.LBB37_14:                              # %if.end
	movsd	.LCPI37_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI37_1, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI37_2, %xmm2        # xmm2 = mem[0],zero
	movsd	-48(%rbp), %xmm3        # xmm3 = mem[0],zero
	divsd	%xmm2, %xmm3
	movsd	%xmm3, -48(%rbp)
	movsd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	mulsd	64(%rax), %xmm2
	divsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %ecx
	movl	%ecx, -36(%rbp)
.LBB37_15:                              # %if.end.47
	movq	-16(%rbp), %rdi
	callq	font_rescale_ratio
	cvtsi2sdl	-36(%rbp), %xmm1
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -36(%rbp)
.LBB37_16:                              # %if.end.52
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-36(%rbp), %edx
	callq	font_open_entity
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	font_open_for_lface, .Lfunc_end37-font_open_for_lface
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI38_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	font_rescale_ratio,@function
font_rescale_ratio:                     # @font_rescale_ratio
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp119:
	.cfi_def_cfa_offset 16
.Ltmp120:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp121:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -40(%rbp)
	movq	globals+704, %rax
	movq	%rax, -24(%rbp)
.LBB38_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB38_17
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB38_1 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$7, %ecx
	jne	.LBB38_15
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB38_1 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB38_4
	jmp	.LBB38_9
.LBB38_4:                               # %if.then.10
                                        #   in Loop: Header=BB38_1 Depth=1
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB38_6
# BB#5:                                 # %if.then.14
                                        #   in Loop: Header=BB38_1 Depth=1
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Ffont_xlfd_name
	movq	%rax, -40(%rbp)
.LBB38_6:                               # %if.end
                                        #   in Loop: Header=BB38_1 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rsi
	callq	fast_string_match_ignore_case
	cmpq	$0, %rax
	jl	.LBB38_8
# BB#7:                                 # %if.then.22
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	XFLOAT_DATA
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB38_18
.LBB38_8:                               # %if.end.27
                                        #   in Loop: Header=BB38_1 Depth=1
	jmp	.LBB38_14
.LBB38_9:                               # %if.else
                                        #   in Loop: Header=BB38_1 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	FONT_SPEC_P
	testb	$1, %al
	jne	.LBB38_10
	jmp	.LBB38_13
.LBB38_10:                              # %if.then.31
                                        #   in Loop: Header=BB38_1 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	font_match_p
	testb	$1, %al
	jne	.LBB38_11
	jmp	.LBB38_12
.LBB38_11:                              # %if.then.35
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	XFLOAT_DATA
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB38_18
.LBB38_12:                              # %if.end.40
                                        #   in Loop: Header=BB38_1 Depth=1
	jmp	.LBB38_13
.LBB38_13:                              # %if.end.41
                                        #   in Loop: Header=BB38_1 Depth=1
	jmp	.LBB38_14
.LBB38_14:                              # %if.end.42
                                        #   in Loop: Header=BB38_1 Depth=1
	jmp	.LBB38_15
.LBB38_15:                              # %if.end.43
                                        #   in Loop: Header=BB38_1 Depth=1
	jmp	.LBB38_16
.LBB38_16:                              # %for.inc
                                        #   in Loop: Header=BB38_1 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB38_1
.LBB38_17:                              # %for.end
	movsd	.LCPI38_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
.LBB38_18:                              # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	font_rescale_ratio, .Lfunc_end38-font_rescale_ratio
	.cfi_endproc

	.align	16, 0x90
	.type	font_open_entity,@function
font_open_entity:                       # @font_open_entity
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp122:
	.cfi_def_cfa_offset 16
.Ltmp123:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp124:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movl	$8, %eax
	movl	%eax, %ecx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rcx, %rsi
	callq	AREF
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	je	.LBB39_2
# BB#1:                                 # %if.then
	movq	-56(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -28(%rbp)
.LBB39_2:                               # %if.end
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rdi
	callq	AREF
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	392(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB39_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -40(%rbp)
	movb	%cl, -113(%rbp)         # 1-byte Spill
	je	.LBB39_5
# BB#4:                                 # %land.rhs
                                        #   in Loop: Header=BB39_3 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	sete	%cl
	xorb	$-1, %cl
	movb	%cl, -113(%rbp)         # 1-byte Spill
.LBB39_5:                               # %land.end
                                        #   in Loop: Header=BB39_3 Depth=1
	movb	-113(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB39_6
	jmp	.LBB39_8
.LBB39_6:                               # %for.body
                                        #   in Loop: Header=BB39_3 Depth=1
	jmp	.LBB39_7
.LBB39_7:                               # %for.inc
                                        #   in Loop: Header=BB39_3 Depth=1
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB39_3
.LBB39_8:                               # %for.end
	cmpq	$0, -40(%rbp)
	jne	.LBB39_10
# BB#9:                                 # %if.then.6
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB39_51
.LBB39_10:                              # %if.end.8
	movl	$13, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rdi
	callq	AREF
	movq	%rax, -48(%rbp)
.LBB39_11:                              # %for.cond.10
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB39_20
# BB#12:                                # %for.body.14
                                        #   in Loop: Header=BB39_11 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -104(%rbp)
	movq	-104(%rbp), %rdi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB39_18
# BB#13:                                # %land.lhs.true
                                        #   in Loop: Header=BB39_11 Depth=1
	movq	-104(%rbp), %rdi
	callq	XFONT_OBJECT
	movl	152(%rax), %ecx
	cmpl	-28(%rbp), %ecx
	jne	.LBB39_18
# BB#14:                                # %if.then.23
                                        #   in Loop: Header=BB39_11 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$0, 208(%rax)
	je	.LBB39_16
# BB#15:                                # %lor.lhs.false
                                        #   in Loop: Header=BB39_11 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	208(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-104(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	*%rax
	testb	$1, %al
	jne	.LBB39_16
	jmp	.LBB39_17
.LBB39_16:                              # %if.then.31
	movq	-104(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB39_51
.LBB39_17:                              # %if.end.32
                                        #   in Loop: Header=BB39_11 Depth=1
	jmp	.LBB39_18
.LBB39_18:                              # %if.end.33
                                        #   in Loop: Header=BB39_11 Depth=1
	jmp	.LBB39_19
.LBB39_19:                              # %for.inc.34
                                        #   in Loop: Header=BB39_11 Depth=1
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB39_11
.LBB39_20:                              # %for.end.36
	movl	-28(%rbp), %eax
	movl	%eax, -92(%rbp)
.LBB39_21:                              # %for.cond.37
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	56(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-92(%rbp), %edx
	callq	*%rax
	xorl	%edi, %edi
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB39_23
# BB#22:                                # %if.then.43
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB39_51
.LBB39_23:                              # %if.end.45
                                        #   in Loop: Header=BB39_21 Depth=1
	movq	-72(%rbp), %rdi
	callq	XFONT_OBJECT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	cmpl	$0, 164(%rax)
	jle	.LBB39_26
# BB#24:                                # %land.lhs.true.49
                                        #   in Loop: Header=BB39_21 Depth=1
	movq	-80(%rbp), %rax
	cmpl	$0, 156(%rax)
	jle	.LBB39_26
# BB#25:                                # %if.then.53
	jmp	.LBB39_28
.LBB39_26:                              # %if.end.54
                                        #   in Loop: Header=BB39_21 Depth=1
	jmp	.LBB39_27
.LBB39_27:                              # %for.inc.55
                                        #   in Loop: Header=BB39_21 Depth=1
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB39_21
.LBB39_28:                              # %for.end.56
	movl	$8, %eax
	movl	%eax, %esi
	movq	-72(%rbp), %rdi
	movslq	-28(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, %rdx
	callq	ASET
# BB#29:                                # %do.body
	movl	$901, %edi              # imm = 0x385
	movq	globals+832, %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB39_31
# BB#30:                                # %if.then.61
	movabsq	$.L.str.85, %rdi
	movq	-24(%rbp), %rsi
	movq	-72(%rbp), %rdx
	callq	font_add_log
.LBB39_31:                              # %if.end.62
	jmp	.LBB39_32
.LBB39_32:                              # %do.end
	movl	$13, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rdi
	movq	-72(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	callq	AREF
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movl	$13, %r8d
	movl	%r8d, %esi
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	movq	-72(%rbp), %rdi
	callq	XFONT_OBJECT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	cmpl	$0, 144(%rax)
	je	.LBB39_34
# BB#33:                                # %cond.true
	movq	-80(%rbp), %rax
	movl	144(%rax), %ecx
	movl	%ecx, -164(%rbp)        # 4-byte Spill
	jmp	.LBB39_41
.LBB39_34:                              # %cond.false
	movq	-80(%rbp), %rax
	cmpl	$0, 164(%rax)
	je	.LBB39_36
# BB#35:                                # %cond.true.71
	movq	-80(%rbp), %rax
	movl	164(%rax), %ecx
	movl	%ecx, -168(%rbp)        # 4-byte Spill
	jmp	.LBB39_40
.LBB39_36:                              # %cond.false.73
	movq	-80(%rbp), %rax
	cmpl	$0, 160(%rax)
	je	.LBB39_38
# BB#37:                                # %cond.true.75
	movq	-80(%rbp), %rax
	movl	160(%rax), %ecx
	movl	%ecx, -172(%rbp)        # 4-byte Spill
	jmp	.LBB39_39
.LBB39_38:                              # %cond.false.77
	movl	$1, %eax
	movl	%eax, -172(%rbp)        # 4-byte Spill
	jmp	.LBB39_39
.LBB39_39:                              # %cond.end
	movl	-172(%rbp), %eax        # 4-byte Reload
	movl	%eax, -168(%rbp)        # 4-byte Spill
.LBB39_40:                              # %cond.end.78
	movl	-168(%rbp), %eax        # 4-byte Reload
	movl	%eax, -164(%rbp)        # 4-byte Spill
.LBB39_41:                              # %cond.end.80
	movl	-164(%rbp), %eax        # 4-byte Reload
	leaq	-108(%rbp), %rsi
	leaq	-112(%rbp), %rdx
	movl	%eax, -84(%rbp)
	movq	-80(%rbp), %rdi
	callq	get_font_ascent_descent
	movl	-108(%rbp), %eax
	addl	-112(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	jg	.LBB39_43
# BB#42:                                # %if.then.85
	movl	$1, -88(%rbp)
.LBB39_43:                              # %if.end.86
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movl	272(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 272(%rax)
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	cmpl	$1, 272(%rax)
	jne	.LBB39_45
# BB#44:                                # %if.then.94
	movl	-84(%rbp), %eax
	movq	-16(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	424(%rcx), %rcx
	movl	%eax, 168(%rcx)
	movl	-88(%rbp), %eax
	movq	-16(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	424(%rcx), %rcx
	movl	%eax, 172(%rcx)
	movq	-16(%rbp), %rcx
	movq	208(%rcx), %rdx
	andq	$-65, %rdx
	orq	$64, %rdx
	movq	%rdx, 208(%rcx)
	jmp	.LBB39_50
.LBB39_45:                              # %if.else
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movl	168(%rax), %ecx
	cmpl	-84(%rbp), %ecx
	jle	.LBB39_47
# BB#46:                                # %if.then.107
	movl	-84(%rbp), %eax
	movq	-16(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	424(%rcx), %rcx
	movl	%eax, 168(%rcx)
	movq	-16(%rbp), %rcx
	movq	208(%rcx), %rdx
	andq	$-65, %rdx
	orq	$64, %rdx
	movq	%rdx, 208(%rcx)
.LBB39_47:                              # %if.end.116
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movl	172(%rax), %ecx
	cmpl	-88(%rbp), %ecx
	jle	.LBB39_49
# BB#48:                                # %if.then.123
	movl	-88(%rbp), %eax
	movq	-16(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	424(%rcx), %rcx
	movl	%eax, 172(%rcx)
	movq	-16(%rbp), %rcx
	movq	208(%rcx), %rdx
	andq	$-65, %rdx
	orq	$64, %rdx
	movq	%rdx, 208(%rcx)
.LBB39_49:                              # %if.end.132
	jmp	.LBB39_50
.LBB39_50:                              # %if.end.133
	movq	-72(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB39_51:                              # %return
	movq	-8(%rbp), %rax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	font_open_entity, .Lfunc_end39-font_open_entity
	.cfi_endproc

	.globl	font_load_for_lface
	.align	16, 0x90
	.type	font_load_for_lface,@function
font_load_for_lface:                    # @font_load_for_lface
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp125:
	.cfi_def_cfa_offset 16
.Ltmp126:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp127:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	font_find_for_lface
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB40_19
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	font_matching_entity
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB40_16
# BB#2:                                 # %if.then.5
	movl	$133, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Ffont_get
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB40_3
	jmp	.LBB40_15
.LBB40_3:                               # %if.then.9
	movq	-48(%rbp), %rdi
	callq	SSDATA
	movl	$45, %esi
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	strrchr
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB40_14
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movsbl	1(%rax), %edi
	callq	c_isdigit
	testb	$1, %al
	jne	.LBB40_5
	jmp	.LBB40_14
.LBB40_5:                               # %if.then.15
	leaq	-72(%rbp), %rsi
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	strtod
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -80(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB40_13
# BB#6:                                 # %land.lhs.true.19
	movq	-72(%rbp), %rax
	movq	-64(%rbp), %rcx
	addq	$1, %rcx
	cmpq	%rcx, %rax
	je	.LBB40_13
# BB#7:                                 # %if.then.23
	movl	$118, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Ffont_get
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$7, %ecx
	jne	.LBB40_9
# BB#8:                                 # %land.lhs.true.29
	movq	-88(%rbp), %rdi
	callq	XFLOAT_DATA
	ucomisd	-80(%rbp), %xmm0
	jne	.LBB40_9
	jp	.LBB40_9
	jmp	.LBB40_11
.LBB40_9:                               # %lor.lhs.false
	movq	-88(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB40_12
# BB#10:                                # %land.lhs.true.38
	movq	-88(%rbp), %rax
	sarq	$2, %rax
	cvtsi2sdq	%rax, %xmm0
	ucomisd	-80(%rbp), %xmm0
	jne	.LBB40_12
	jp	.LBB40_12
.LBB40_11:                              # %if.then.42
	movl	$1, %edx
	movq	-32(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	-56(%rbp), %rsi
	subq	%rsi, %rcx
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	font_intern_prop
	movl	$2, %edx
	movl	%edx, %esi
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$8, %edi
	movl	%edi, %esi
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	font_matching_entity
	movq	%rax, -40(%rbp)
.LBB40_12:                              # %if.end
	jmp	.LBB40_13
.LBB40_13:                              # %if.end.46
	jmp	.LBB40_14
.LBB40_14:                              # %if.end.47
	jmp	.LBB40_15
.LBB40_15:                              # %if.end.48
	jmp	.LBB40_16
.LBB40_16:                              # %if.end.49
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB40_18
# BB#17:                                # %if.then.53
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB40_24
.LBB40_18:                              # %if.end.55
	jmp	.LBB40_19
.LBB40_19:                              # %if.end.56
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	font_open_for_lface
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB40_23
# BB#20:                                # %if.then.61
	movl	$133, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Ffont_get
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB40_21
	jmp	.LBB40_22
.LBB40_21:                              # %if.then.65
	movl	$133, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rdx
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	font_put_extra
	movq	%rax, -176(%rbp)        # 8-byte Spill
.LBB40_22:                              # %if.end.68
	jmp	.LBB40_23
.LBB40_23:                              # %if.end.69
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB40_24:                              # %return
	movq	-8(%rbp), %rax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	font_load_for_lface, .Lfunc_end40-font_load_for_lface
	.cfi_endproc

	.align	16, 0x90
	.type	font_matching_entity,@function
font_matching_entity:                   # @font_matching_entity
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp128:
	.cfi_def_cfa_offset 16
.Ltmp129:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp130:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	392(%rdx), %rdx
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	copy_font_spec
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rdi
	callq	AREF
	movl	$8, %ecx
	movl	%ecx, %esi
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	AREF
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$7, %ecx
	jne	.LBB41_2
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	font_pixel_size
	movl	$8, %ecx
	movl	%ecx, %esi
	movslq	%eax, %rdi
	shlq	$2, %rdi
	addq	$2, %rdi
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-104(%rbp), %rdx        # 8-byte Reload
	callq	ASET
.LBB41_2:                               # %if.end
	movl	$5, %edi
	movl	$1, %edx
	movq	-64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	40(%rcx), %rsi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	font_style_to_value
	movl	$5, %edx
	movl	%edx, %esi
	movslq	%eax, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, %rdx
	callq	ASET
	movl	$6, %edi
	movl	$1, %edx
	movq	-64(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	48(%rsi), %rsi
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	callq	font_style_to_value
	movl	$6, %edx
	movl	%edx, %esi
	movslq	%eax, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, %rdx
	callq	ASET
	movl	$7, %edi
	movl	$1, %edx
	movq	-64(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	24(%rsi), %rsi
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	callq	font_style_to_value
	movl	$7, %edx
	movl	%edx, %esi
	movslq	%eax, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, %rdx
	callq	ASET
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -56(%rbp)
.LBB41_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB41_17
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB41_3 Depth=1
	movq	-32(%rbp), %rax
	testb	$1, (%rax)
	je	.LBB41_15
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB41_3 Depth=1
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB41_7
# BB#6:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB41_3 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB41_15
.LBB41_7:                               # %if.then.28
                                        #   in Loop: Header=BB41_3 Depth=1
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	8(%rax), %rsi
	callq	font_get_cache
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rdx
	callq	ASET
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rsi
	callq	assoc_no_quit
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB41_9
# BB#8:                                 # %if.then.38
                                        #   in Loop: Header=BB41_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-56(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rdi
	callq	AREF
	movq	%rax, -56(%rbp)
	jmp	.LBB41_12
.LBB41_9:                               # %if.else
                                        #   in Loop: Header=BB41_3 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	32(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	*%rax
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB41_11
# BB#10:                                # %if.then.48
                                        #   in Loop: Header=BB41_3 Depth=1
	movq	-64(%rbp), %rdi
	callq	copy_font_spec
	movl	$1, %ecx
	movl	%ecx, %edi
	leaq	-56(%rbp), %rsi
	movq	%rax, -80(%rbp)
	callq	Fvector
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rdx
	callq	ASET
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	-88(%rbp), %rsi
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	Fcons
	movq	-72(%rbp), %rdx
	subq	$3, %rdx
	movq	8(%rdx), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	XSETCDR
.LBB41_11:                              # %if.end.59
                                        #   in Loop: Header=BB41_3 Depth=1
	jmp	.LBB41_12
.LBB41_12:                              # %if.end.60
                                        #   in Loop: Header=BB41_3 Depth=1
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB41_14
# BB#13:                                # %if.then.64
	jmp	.LBB41_17
.LBB41_14:                              # %if.end.65
                                        #   in Loop: Header=BB41_3 Depth=1
	jmp	.LBB41_15
.LBB41_15:                              # %if.end.66
                                        #   in Loop: Header=BB41_3 Depth=1
	jmp	.LBB41_16
.LBB41_16:                              # %for.inc
                                        #   in Loop: Header=BB41_3 Depth=1
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB41_3
.LBB41_17:                              # %for.end
	jmp	.LBB41_18
.LBB41_18:                              # %do.body
	movl	$901, %edi              # imm = 0x385
	movq	globals+832, %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB41_20
# BB#19:                                # %if.then.70
	movabsq	$.L.str.86, %rdi
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rdx
	callq	font_add_log
.LBB41_20:                              # %if.end.71
	jmp	.LBB41_21
.LBB41_21:                              # %do.end
	movq	-56(%rbp), %rax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	font_matching_entity, .Lfunc_end41-font_matching_entity
	.cfi_endproc

	.globl	font_prepare_for_face
	.align	16, 0x90
	.type	font_prepare_for_face,@function
font_prepare_for_face:                  # @font_prepare_for_face
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp131:
	.cfi_def_cfa_offset 16
.Ltmp132:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp133:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	224(%rsi), %rsi
	movq	208(%rsi), %rsi
	cmpq	$0, 72(%rsi)
	je	.LBB42_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	224(%rax), %rax
	movq	208(%rax), %rax
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
.LBB42_2:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end42:
	.size	font_prepare_for_face, .Lfunc_end42-font_prepare_for_face
	.cfi_endproc

	.globl	font_done_for_face
	.align	16, 0x90
	.type	font_done_for_face,@function
font_done_for_face:                     # @font_done_for_face
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp134:
	.cfi_def_cfa_offset 16
.Ltmp135:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp136:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	224(%rsi), %rsi
	movq	208(%rsi), %rsi
	cmpq	$0, 80(%rsi)
	je	.LBB43_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	224(%rax), %rax
	movq	208(%rax), %rax
	movq	80(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
.LBB43_2:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end43:
	.size	font_done_for_face, .Lfunc_end43-font_done_for_face
	.cfi_endproc

	.globl	font_open_by_spec
	.align	16, 0x90
	.type	font_open_by_spec,@function
font_open_by_spec:                      # @font_open_by_spec
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp137:
	.cfi_def_cfa_offset 16
.Ltmp138:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp139:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movl	$707, %edi              # imm = 0x2C3
	movq	%rax, -160(%rbp)
	movq	%rax, -168(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -128(%rbp)
	movq	%rax, -136(%rbp)
	movq	%rax, -152(%rbp)
	movq	$482, -144(%rbp)        # imm = 0x1E2
	callq	builtin_lisp_symbol
	leaq	-176(%rbp), %rsi
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	callq	font_load_for_lface
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end44:
	.size	font_open_by_spec, .Lfunc_end44-font_open_by_spec
	.cfi_endproc

	.globl	font_open_by_name
	.align	16, 0x90
	.type	font_open_by_name,@function
font_open_by_name:                      # @font_open_by_name
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp140:
	.cfi_def_cfa_offset 16
.Ltmp141:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp142:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movl	$86, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movl	$2, %edi
                                        # kill: RDI<def> EDI<kill>
	leaq	-40(%rbp), %rsi
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	Ffont_spec
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	font_open_by_spec
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB45_2
# BB#1:                                 # %if.then
	movl	$133, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	font_put_extra
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB45_2:                               # %if.end
	movq	-48(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end45:
	.size	font_open_by_name, .Lfunc_end45-font_open_by_name
	.cfi_endproc

	.globl	register_font_driver
	.align	16, 0x90
	.type	register_font_driver,@function
register_font_driver:                   # @register_font_driver
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp143:
	.cfi_def_cfa_offset 16
.Ltmp144:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp145:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB46_2
# BB#1:                                 # %cond.true
	movq	-16(%rbp), %rax
	movq	392(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB46_3
.LBB46_2:                               # %cond.false
	movq	font_driver_list, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB46_3:                               # %cond.end
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB46_6
# BB#4:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	cmpq	$0, 112(%rax)
	jne	.LBB46_6
# BB#5:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SDATA
	movabsq	$.L.str.16, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	error
.LBB46_6:                               # %if.end
	movq	$0, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB46_7:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB46_12
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB46_7 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	(%rcx), %rax
	jne	.LBB46_10
# BB#9:                                 # %if.then.8
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SDATA
	movabsq	$.L.str.17, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	error
.LBB46_10:                              # %if.end.12
                                        #   in Loop: Header=BB46_7 Depth=1
	jmp	.LBB46_11
.LBB46_11:                              # %for.inc
                                        #   in Loop: Header=BB46_7 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB46_7
.LBB46_12:                              # %for.end
	movl	$24, %eax
	movl	%eax, %edi
	callq	xmalloc
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movb	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdi
	movq	%rax, 8(%rdi)
	movq	-40(%rbp), %rax
	movq	$0, 16(%rax)
	cmpq	$0, -32(%rbp)
	je	.LBB46_14
# BB#13:                                # %if.then.17
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 16(%rcx)
	jmp	.LBB46_18
.LBB46_14:                              # %if.else
	cmpq	$0, -16(%rbp)
	je	.LBB46_16
# BB#15:                                # %if.then.20
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 392(%rcx)
	jmp	.LBB46_17
.LBB46_16:                              # %if.else.22
	movq	-40(%rbp), %rax
	movq	%rax, font_driver_list
.LBB46_17:                              # %if.end.23
	jmp	.LBB46_18
.LBB46_18:                              # %if.end.24
	cmpq	$0, -16(%rbp)
	jne	.LBB46_20
# BB#19:                                # %if.then.26
	movl	num_font_drivers, %eax
	addl	$1, %eax
	movl	%eax, num_font_drivers
.LBB46_20:                              # %if.end.27
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end46:
	.size	register_font_driver, .Lfunc_end46-register_font_driver
	.cfi_endproc

	.globl	free_font_driver_list
	.align	16, 0x90
	.type	free_font_driver_list,@function
free_font_driver_list:                  # @free_font_driver_list
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp146:
	.cfi_def_cfa_offset 16
.Ltmp147:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp148:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	392(%rdi), %rdi
	movq	%rdi, -16(%rbp)
.LBB47_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB47_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB47_1 Depth=1
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB47_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB47_1
.LBB47_4:                               # %for.end
	movq	-8(%rbp), %rax
	movq	$0, 392(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end47:
	.size	free_font_driver_list, .Lfunc_end47-free_font_driver_list
	.cfi_endproc

	.globl	font_update_drivers
	.align	16, 0x90
	.type	font_update_drivers,@function
font_update_drivers:                    # @font_update_drivers
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp149:
	.cfi_def_cfa_offset 16
.Ltmp150:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp151:
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	392(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB48_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB48_16
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB48_1 Depth=1
	movl	$901, %edi              # imm = 0x385
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movb	$1, %cl
	movq	-120(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	movb	%cl, -121(%rbp)         # 1-byte Spill
	je	.LBB48_4
# BB#3:                                 # %lor.rhs
                                        #   in Loop: Header=BB48_1 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	Fmemq
	xorl	%edi, %edi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%cl
	xorb	$-1, %cl
	movb	%cl, -121(%rbp)         # 1-byte Spill
.LBB48_4:                               # %lor.end
                                        #   in Loop: Header=BB48_1 Depth=1
	movb	-121(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movq	-40(%rbp), %rdx
	movb	(%rdx), %al
	andb	$1, %al
	movzbl	%al, %esi
	cmpl	%esi, %ecx
	je	.LBB48_14
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB48_1 Depth=1
	movq	-40(%rbp), %rax
	testb	$1, (%rax)
	je	.LBB48_9
# BB#6:                                 # %if.then.11
                                        #   in Loop: Header=BB48_1 Depth=1
	movq	-48(%rbp), %rax
	cmpq	$0, 168(%rax)
	je	.LBB48_8
# BB#7:                                 # %if.then.13
                                        #   in Loop: Header=BB48_1 Depth=1
	movq	-48(%rbp), %rax
	movq	168(%rax), %rax
	movq	-16(%rbp), %rdi
	callq	*%rax
	movl	%eax, -140(%rbp)        # 4-byte Spill
.LBB48_8:                               # %if.end
                                        #   in Loop: Header=BB48_1 Depth=1
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	font_finish_cache
	movq	-40(%rbp), %rsi
	movb	$0, (%rsi)
	jmp	.LBB48_13
.LBB48_9:                               # %if.else
                                        #   in Loop: Header=BB48_1 Depth=1
	movq	-48(%rbp), %rax
	cmpq	$0, 160(%rax)
	je	.LBB48_11
# BB#10:                                # %lor.lhs.false
                                        #   in Loop: Header=BB48_1 Depth=1
	movq	-48(%rbp), %rax
	movq	160(%rax), %rax
	movq	-16(%rbp), %rdi
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB48_12
.LBB48_11:                              # %if.then.22
                                        #   in Loop: Header=BB48_1 Depth=1
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	font_prepare_cache
	movq	-40(%rbp), %rsi
	movb	$1, (%rsi)
.LBB48_12:                              # %if.end.24
                                        #   in Loop: Header=BB48_1 Depth=1
	jmp	.LBB48_13
.LBB48_13:                              # %if.end.25
                                        #   in Loop: Header=BB48_1 Depth=1
	jmp	.LBB48_14
.LBB48_14:                              # %if.end.26
                                        #   in Loop: Header=BB48_1 Depth=1
	jmp	.LBB48_15
.LBB48_15:                              # %for.inc
                                        #   in Loop: Header=BB48_1 Depth=1
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB48_1
.LBB48_16:                              # %for.end
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB48_18
# BB#17:                                # %if.then.30
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB48_68
.LBB48_18:                              # %if.end.32
	movl	$901, %edi              # imm = 0x385
	movq	-24(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB48_61
# BB#19:                                # %if.then.36
	movq	$16384, -88(%rbp)       # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -96(%rbp)
	movb	$0, -97(%rbp)
# BB#20:                                # %do.body
	movl	num_font_drivers, %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-88(%rbp), %rdx
	shrq	$3, %rdx
	shrq	$0, %rdx
	cmpq	%rdx, %rcx
	ja	.LBB48_22
# BB#21:                                # %if.then.43
	movl	num_font_drivers(%rip), %eax
	incl	%eax
	movslq	%eax, %rcx
	shlq	$3, %rcx
	movq	-88(%rbp), %rdx
	subq	%rcx, %rdx
	movq	%rdx, -88(%rbp)
	movl	num_font_drivers(%rip), %eax
	incl	%eax
	movslq	%eax, %rcx
	leaq	15(,%rcx,8), %rcx
	andq	$-16, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
	movq	%rdx, %rsp
	movq	%rdx, -56(%rbp)
	jmp	.LBB48_23
.LBB48_22:                              # %if.else.49
	movl	$8, %eax
	movl	%eax, %esi
	movl	num_font_drivers, %eax
	addl	$1, %eax
	movslq	%eax, %rdi
	callq	xnmalloc
	movabsq	$xfree, %rdi
	movq	%rax, -56(%rbp)
	movb	$1, -97(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	callq	record_unwind_protect_ptr
.LBB48_23:                              # %if.end.53
	jmp	.LBB48_24
.LBB48_24:                              # %do.end
	movl	$0, -76(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)
.LBB48_25:                              # %for.cond.54
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB48_27 Depth 2
	xorl	%edi, %edi
	movq	-72(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB48_26
	jmp	.LBB48_37
.LBB48_26:                              # %for.body.59
                                        #   in Loop: Header=BB48_25 Depth=1
	movq	-16(%rbp), %rax
	movq	392(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB48_27:                              # %for.cond.61
                                        #   Parent Loop BB48_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -40(%rbp)
	je	.LBB48_33
# BB#28:                                # %for.body.63
                                        #   in Loop: Header=BB48_27 Depth=2
	movq	-40(%rbp), %rax
	testb	$1, (%rax)
	je	.LBB48_31
# BB#29:                                # %land.lhs.true
                                        #   in Loop: Header=BB48_27 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	-72(%rbp), %rcx
	subq	$3, %rcx
	cmpq	(%rcx), %rax
	jne	.LBB48_31
# BB#30:                                # %if.then.72
                                        #   in Loop: Header=BB48_25 Depth=1
	jmp	.LBB48_33
.LBB48_31:                              # %if.end.73
                                        #   in Loop: Header=BB48_27 Depth=2
	jmp	.LBB48_32
.LBB48_32:                              # %for.inc.74
                                        #   in Loop: Header=BB48_27 Depth=2
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB48_27
.LBB48_33:                              # %for.end.76
                                        #   in Loop: Header=BB48_25 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB48_35
# BB#34:                                # %if.then.78
                                        #   in Loop: Header=BB48_25 Depth=1
	movq	-40(%rbp), %rax
	movl	-76(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -76(%rbp)
	movslq	%ecx, %rsi
	movq	-56(%rbp), %rdi
	movq	%rax, (%rdi,%rsi,8)
.LBB48_35:                              # %if.end.79
                                        #   in Loop: Header=BB48_25 Depth=1
	jmp	.LBB48_36
.LBB48_36:                              # %for.inc.80
                                        #   in Loop: Header=BB48_25 Depth=1
	movq	-72(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB48_25
.LBB48_37:                              # %for.end.82
	movq	-16(%rbp), %rax
	movq	392(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB48_38:                              # %for.cond.84
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB48_43
# BB#39:                                # %for.body.86
                                        #   in Loop: Header=BB48_38 Depth=1
	movq	-40(%rbp), %rax
	testb	$1, (%rax)
	jne	.LBB48_41
# BB#40:                                # %if.then.89
                                        #   in Loop: Header=BB48_38 Depth=1
	movq	-40(%rbp), %rax
	movl	-76(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -76(%rbp)
	movslq	%ecx, %rsi
	movq	-56(%rbp), %rdi
	movq	%rax, (%rdi,%rsi,8)
.LBB48_41:                              # %if.end.93
                                        #   in Loop: Header=BB48_38 Depth=1
	jmp	.LBB48_42
.LBB48_42:                              # %for.inc.94
                                        #   in Loop: Header=BB48_38 Depth=1
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB48_38
.LBB48_43:                              # %for.end.96
	movslq	-76(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	$0, (%rcx,%rax,8)
	movq	-16(%rbp), %rax
	addq	$392, %rax              # imm = 0x188
	movq	%rax, -64(%rbp)
	movl	$0, -76(%rbp)
.LBB48_44:                              # %for.cond.100
                                        # =>This Inner Loop Header: Depth=1
	movslq	-76(%rbp), %rax
	movq	-56(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB48_47
# BB#45:                                # %for.body.104
                                        #   in Loop: Header=BB48_44 Depth=1
	movslq	-76(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movq	%rax, -64(%rbp)
# BB#46:                                # %for.inc.108
                                        #   in Loop: Header=BB48_44 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB48_44
.LBB48_47:                              # %for.end.110
	movq	-64(%rbp), %rax
	movq	$0, (%rax)
# BB#48:                                # %do.body.111
	testb	$1, -97(%rbp)
	je	.LBB48_50
# BB#49:                                # %if.then.113
	xorl	%edi, %edi
	movb	$0, -97(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -184(%rbp)        # 8-byte Spill
.LBB48_50:                              # %if.end.116
	jmp	.LBB48_51
.LBB48_51:                              # %do.end.117
	movq	-16(%rbp), %rax
	movq	392(%rax), %rax
	testb	$1, (%rax)
	jne	.LBB48_60
# BB#52:                                # %if.then.121
	movq	-16(%rbp), %rax
	movq	392(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB48_53:                              # %for.cond.123
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB48_59
# BB#54:                                # %for.body.125
                                        #   in Loop: Header=BB48_53 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	cmpq	$0, 160(%rax)
	je	.LBB48_56
# BB#55:                                # %lor.lhs.false.130
                                        #   in Loop: Header=BB48_53 Depth=1
	movq	-112(%rbp), %rax
	movq	160(%rax), %rax
	movq	-16(%rbp), %rdi
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB48_57
.LBB48_56:                              # %if.then.135
                                        #   in Loop: Header=BB48_53 Depth=1
	movq	-16(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	font_prepare_cache
	movq	-40(%rbp), %rsi
	movb	$1, (%rsi)
.LBB48_57:                              # %if.end.137
                                        #   in Loop: Header=BB48_53 Depth=1
	jmp	.LBB48_58
.LBB48_58:                              # %for.inc.138
                                        #   in Loop: Header=BB48_53 Depth=1
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB48_53
.LBB48_59:                              # %for.end.140
	jmp	.LBB48_60
.LBB48_60:                              # %if.end.141
	jmp	.LBB48_61
.LBB48_61:                              # %if.end.142
	movq	-16(%rbp), %rax
	movq	392(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB48_62:                              # %for.cond.144
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB48_67
# BB#63:                                # %for.body.146
                                        #   in Loop: Header=BB48_62 Depth=1
	movq	-40(%rbp), %rax
	testb	$1, (%rax)
	je	.LBB48_65
# BB#64:                                # %if.then.149
                                        #   in Loop: Header=BB48_62 Depth=1
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	list1
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	nconc2
	movq	%rax, -32(%rbp)
.LBB48_65:                              # %if.end.154
                                        #   in Loop: Header=BB48_62 Depth=1
	jmp	.LBB48_66
.LBB48_66:                              # %for.inc.155
                                        #   in Loop: Header=BB48_62 Depth=1
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB48_62
.LBB48_67:                              # %for.end.157
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB48_68:                              # %return
	movq	-8(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end48:
	.size	font_update_drivers, .Lfunc_end48-font_update_drivers
	.cfi_endproc

	.align	16, 0x90
	.type	font_finish_cache,@function
font_finish_cache:                      # @font_finish_cache
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp152:
	.cfi_def_cfa_offset 16
.Ltmp153:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp154:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	16(%rsi), %rsi
	movq	-8(%rbp), %rdi
	callq	*%rsi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB49_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -41(%rbp)          # 1-byte Spill
	jne	.LBB49_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB49_1 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	(%rcx), %rax
	sete	%dl
	xorb	$-1, %dl
	movb	%dl, -41(%rbp)          # 1-byte Spill
.LBB49_3:                               # %land.end
                                        #   in Loop: Header=BB49_1 Depth=1
	movb	-41(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB49_4
	jmp	.LBB49_5
.LBB49_4:                               # %while.body
                                        #   in Loop: Header=BB49_1 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB49_1
.LBB49_5:                               # %while.end
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	subq	$1, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rsi
	callq	XSETCAR
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jne	.LBB49_7
# BB#6:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rsi
	movq	-16(%rbp), %rdx
	callq	font_clear_cache
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rsi
	callq	XSETCDR
.LBB49_7:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end49:
	.size	font_finish_cache, .Lfunc_end49-font_finish_cache
	.cfi_endproc

	.align	16, 0x90
	.type	font_prepare_cache,@function
font_prepare_cache:                     # @font_prepare_cache
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp155:
	.cfi_def_cfa_offset 16
.Ltmp156:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp157:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	16(%rsi), %rsi
	movq	-8(%rbp), %rdi
	callq	*%rsi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB50_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -33(%rbp)          # 1-byte Spill
	jne	.LBB50_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB50_1 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	(%rcx), %rax
	sete	%dl
	xorb	$-1, %dl
	movb	%dl, -33(%rbp)          # 1-byte Spill
.LBB50_3:                               # %land.end
                                        #   in Loop: Header=BB50_1 Depth=1
	movb	-33(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB50_4
	jmp	.LBB50_5
.LBB50_4:                               # %while.body
                                        #   in Loop: Header=BB50_1 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB50_1
.LBB50_5:                               # %while.end
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB50_7
# BB#6:                                 # %if.then
	movl	$6, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rdi
	callq	list2
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rsi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	Fcons
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	XSETCDR
	jmp	.LBB50_8
.LBB50_7:                               # %if.else
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	addq	$1, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rsi
	callq	XSETCAR
.LBB50_8:                               # %if.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end50:
	.size	font_prepare_cache, .Lfunc_end50-font_prepare_cache
	.cfi_endproc

	.globl	font_put_frame_data
	.align	16, 0x90
	.type	font_put_frame_data,@function
font_put_frame_data:                    # @font_put_frame_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp158:
	.cfi_def_cfa_offset 16
.Ltmp159:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp160:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movq	152(%rdx), %rsi
	callq	assq_no_quit
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB51_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	152(%rcx), %rsi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	Fdelq
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	fset_font_data
	jmp	.LBB51_6
.LBB51_2:                               # %if.else
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB51_4
# BB#3:                                 # %if.then.4
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	make_save_ptr
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-8(%rbp), %rcx
	movq	152(%rcx), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	fset_font_data
	jmp	.LBB51_5
.LBB51_4:                               # %if.else.9
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	make_save_ptr
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	XSETCDR
.LBB51_5:                               # %if.end
	jmp	.LBB51_6
.LBB51_6:                               # %if.end.11
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end51:
	.size	font_put_frame_data, .Lfunc_end51-font_put_frame_data
	.cfi_endproc

	.align	16, 0x90
	.type	fset_font_data,@function
fset_font_data:                         # @fset_font_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp161:
	.cfi_def_cfa_offset 16
.Ltmp162:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp163:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 152(%rdi)
	popq	%rbp
	retq
.Lfunc_end52:
	.size	fset_font_data, .Lfunc_end52-fset_font_data
	.cfi_endproc

	.globl	font_get_frame_data
	.align	16, 0x90
	.type	font_get_frame_data,@function
font_get_frame_data:                    # @font_get_frame_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp164:
	.cfi_def_cfa_offset 16
.Ltmp165:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp166:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	152(%rsi), %rsi
	callq	assq_no_quit
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB53_2
# BB#1:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	jmp	.LBB53_3
.LBB53_2:                               # %cond.false
	xorl	%esi, %esi
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	XSAVE_POINTER
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB53_3:                               # %cond.end
	movq	-40(%rbp), %rax         # 8-byte Reload
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end53:
	.size	font_get_frame_data, .Lfunc_end53-font_get_frame_data
	.cfi_endproc

	.globl	font_filter_properties
	.align	16, 0x90
	.type	font_filter_properties,@function
font_filter_properties:                 # @font_filter_properties
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp167:
	.cfi_def_cfa_offset 16
.Ltmp168:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp169:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	$0, -44(%rbp)
.LBB54_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB54_3 Depth 2
	movslq	-44(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB54_25
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB54_1 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB54_3:                               # %for.cond.1
                                        #   Parent Loop BB54_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB54_4
	jmp	.LBB54_23
.LBB54_4:                               # %for.body.3
                                        #   in Loop: Header=BB54_3 Depth=2
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SSDATA
	movq	%rax, -72(%rbp)
	movslq	-44(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	(%rdi,%rax,8), %rdi
	movq	-72(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB54_21
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB54_3 Depth=2
	movq	-64(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB54_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB54_3 Depth=2
	movabsq	$.L.str.19, %rax
	movabsq	$.L.str.18, %rcx
	movq	-64(%rbp), %rdx
	sarq	$2, %rdx
	cmpq	$0, %rdx
	cmovneq	%rcx, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB54_11
.LBB54_7:                               # %cond.false
                                        #   in Loop: Header=BB54_3 Depth=2
	movq	-64(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB54_9
# BB#8:                                 # %cond.true.22
                                        #   in Loop: Header=BB54_3 Depth=2
	movq	-64(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SSDATA
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB54_10
.LBB54_9:                               # %cond.false.25
                                        #   in Loop: Header=BB54_3 Depth=2
	movabsq	$.L.str.18, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB54_10
.LBB54_10:                              # %cond.end
                                        #   in Loop: Header=BB54_3 Depth=2
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB54_11:                              # %cond.end.27
                                        #   in Loop: Header=BB54_3 Depth=2
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rsi
	movl	$.L.str.19, %ecx
	movl	%ecx, %edi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB54_18
# BB#12:                                # %lor.lhs.false
                                        #   in Loop: Header=BB54_3 Depth=2
	movq	-80(%rbp), %rsi
	movl	$.L.str.20, %eax
	movl	%eax, %edi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB54_18
# BB#13:                                # %lor.lhs.false.35
                                        #   in Loop: Header=BB54_3 Depth=2
	movq	-80(%rbp), %rsi
	movl	$.L.str.21, %eax
	movl	%eax, %edi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB54_18
# BB#14:                                # %lor.lhs.false.39
                                        #   in Loop: Header=BB54_3 Depth=2
	movq	-80(%rbp), %rsi
	movl	$.L.str.22, %eax
	movl	%eax, %edi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB54_18
# BB#15:                                # %lor.lhs.false.43
                                        #   in Loop: Header=BB54_3 Depth=2
	movq	-80(%rbp), %rsi
	movl	$.L.str.23, %eax
	movl	%eax, %edi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB54_18
# BB#16:                                # %lor.lhs.false.47
                                        #   in Loop: Header=BB54_3 Depth=2
	movq	-80(%rbp), %rsi
	movl	$.L.str.24, %eax
	movl	%eax, %edi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB54_18
# BB#17:                                # %lor.lhs.false.51
                                        #   in Loop: Header=BB54_3 Depth=2
	movq	-80(%rbp), %rsi
	movl	$.L.str.25, %eax
	movl	%eax, %edi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB54_19
.LBB54_18:                              # %if.then.55
                                        #   in Loop: Header=BB54_3 Depth=2
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -64(%rbp)
	jmp	.LBB54_20
.LBB54_19:                              # %if.else
                                        #   in Loop: Header=BB54_3 Depth=2
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -64(%rbp)
.LBB54_20:                              # %if.end
                                        #   in Loop: Header=BB54_3 Depth=2
	movq	-8(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-64(%rbp), %rdx
	callq	Ffont_put
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB54_21:                              # %if.end.59
                                        #   in Loop: Header=BB54_3 Depth=2
	jmp	.LBB54_22
.LBB54_22:                              # %for.inc
                                        #   in Loop: Header=BB54_3 Depth=2
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB54_3
.LBB54_23:                              # %for.end
                                        #   in Loop: Header=BB54_1 Depth=1
	jmp	.LBB54_24
.LBB54_24:                              # %for.inc.63
                                        #   in Loop: Header=BB54_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB54_1
.LBB54_25:                              # %for.end.64
	movl	$0, -44(%rbp)
.LBB54_26:                              # %for.cond.65
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB54_28 Depth 2
	movslq	-44(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB54_35
# BB#27:                                # %for.body.70
                                        #   in Loop: Header=BB54_26 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB54_28:                              # %for.cond.71
                                        #   Parent Loop BB54_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB54_29
	jmp	.LBB54_33
.LBB54_29:                              # %for.body.76
                                        #   in Loop: Header=BB54_28 Depth=2
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-88(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SSDATA
	movq	%rax, -104(%rbp)
	movslq	-44(%rbp), %rax
	movq	-32(%rbp), %rdi
	movq	(%rdi,%rax,8), %rdi
	movq	-104(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB54_31
# BB#30:                                # %if.then.96
                                        #   in Loop: Header=BB54_28 Depth=2
	movq	-8(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movq	-96(%rbp), %rdx
	callq	Ffont_put
	movq	%rax, -152(%rbp)        # 8-byte Spill
.LBB54_31:                              # %if.end.98
                                        #   in Loop: Header=BB54_28 Depth=2
	jmp	.LBB54_32
.LBB54_32:                              # %for.inc.99
                                        #   in Loop: Header=BB54_28 Depth=2
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB54_28
.LBB54_33:                              # %for.end.103
                                        #   in Loop: Header=BB54_26 Depth=1
	jmp	.LBB54_34
.LBB54_34:                              # %for.inc.104
                                        #   in Loop: Header=BB54_26 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB54_26
.LBB54_35:                              # %for.end.106
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end54:
	.size	font_filter_properties, .Lfunc_end54-font_filter_properties
	.cfi_endproc

	.globl	font_range
	.align	16, 0x90
	.type	font_range,@function
font_range:                             # @font_range
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp170:
	.cfi_def_cfa_offset 16
.Ltmp171:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp172:
	.cfi_def_cfa_register %rbp
	subq	$224, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -80(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB55_9
# BB#1:                                 # %if.then
	cmpq	$0, -48(%rbp)
	jne	.LBB55_8
# BB#2:                                 # %if.then.2
	leaq	-64(%rbp), %rdx
	xorl	%r8d, %r8d
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	callq	face_at_buffer_position
	movb	$1, %r10b
	movl	%eax, -84(%rbp)
	testb	$1, %r10b
	jne	.LBB55_3
	jmp	.LBB55_4
.LBB55_3:                               # %cond.true
	movl	-84(%rbp), %eax
	addl	$0, %eax
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	$5, %rcx
	movq	160(%rcx), %rcx
	movl	32(%rcx), %edx
	addl	$0, %edx
	cmpl	%edx, %eax
	jb	.LBB55_5
	jmp	.LBB55_6
.LBB55_4:                               # %cond.false
	movslq	-84(%rbp), %rax
	addq	$0, %rax
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	$5, %rcx
	movq	160(%rcx), %rcx
	movslq	32(%rcx), %rcx
	addq	$0, %rcx
	cmpq	%rcx, %rax
	jae	.LBB55_6
.LBB55_5:                               # %cond.true.15
	movslq	-84(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	$5, %rcx
	movq	160(%rcx), %rcx
	movq	16(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB55_7
.LBB55_6:                               # %cond.false.19
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB55_7
.LBB55_7:                               # %cond.end
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, -48(%rbp)
.LBB55_8:                               # %if.end
	jmp	.LBB55_10
.LBB55_9:                               # %if.else
	jmp	.LBB55_10
.LBB55_10:                              # %if.end.20
	jmp	.LBB55_11
.LBB55_11:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	(%rcx), %rax
	jge	.LBB55_59
# BB#12:                                # %while.body
                                        #   in Loop: Header=BB55_11 Depth=1
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB55_28
# BB#13:                                # %if.then.26
                                        #   in Loop: Header=BB55_11 Depth=1
	jmp	.LBB55_14
.LBB55_14:                              # %do.body
                                        #   in Loop: Header=BB55_11 Depth=1
	movq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB55_16
# BB#15:                                # %cond.true.29
                                        #   in Loop: Header=BB55_11 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB55_17
.LBB55_16:                              # %cond.false.31
                                        #   in Loop: Header=BB55_11 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	jmp	.LBB55_17
.LBB55_17:                              # %cond.end.32
                                        #   in Loop: Header=BB55_11 Depth=1
	movq	-160(%rbp), %rax        # 8-byte Reload
	addq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movzbl	(%rax), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	jne	.LBB55_19
# BB#18:                                # %cond.true.40
                                        #   in Loop: Header=BB55_11 Depth=1
	movl	$1, -108(%rbp)
	movq	-104(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -164(%rbp)        # 4-byte Spill
	jmp	.LBB55_26
.LBB55_19:                              # %cond.false.43
                                        #   in Loop: Header=BB55_11 Depth=1
	movq	-104(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB55_21
# BB#20:                                # %cond.true.48
                                        #   in Loop: Header=BB55_11 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -108(%rbp)
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
	movl	%esi, -168(%rbp)        # 4-byte Spill
	jmp	.LBB55_25
.LBB55_21:                              # %cond.false.61
                                        #   in Loop: Header=BB55_11 Depth=1
	movq	-104(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB55_23
# BB#22:                                # %cond.true.66
                                        #   in Loop: Header=BB55_11 Depth=1
	movl	$3, -108(%rbp)
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
	movl	%ecx, -172(%rbp)        # 4-byte Spill
	jmp	.LBB55_24
.LBB55_23:                              # %cond.false.80
                                        #   in Loop: Header=BB55_11 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-108(%rbp), %rdx
	movq	-104(%rbp), %rdi
	callq	string_char
	movl	%eax, -172(%rbp)        # 4-byte Spill
.LBB55_24:                              # %cond.end.82
                                        #   in Loop: Header=BB55_11 Depth=1
	movl	-172(%rbp), %eax        # 4-byte Reload
	movl	%eax, -168(%rbp)        # 4-byte Spill
.LBB55_25:                              # %cond.end.84
                                        #   in Loop: Header=BB55_11 Depth=1
	movl	-168(%rbp), %eax        # 4-byte Reload
	movl	%eax, -164(%rbp)        # 4-byte Spill
.LBB55_26:                              # %cond.end.86
                                        #   in Loop: Header=BB55_11 Depth=1
	movl	-164(%rbp), %eax        # 4-byte Reload
	movl	%eax, -68(%rbp)
	movslq	-108(%rbp), %rcx
	addq	-24(%rbp), %rcx
	movq	%rcx, -24(%rbp)
	movq	-16(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
# BB#27:                                # %do.end
                                        #   in Loop: Header=BB55_11 Depth=1
	jmp	.LBB55_40
.LBB55_28:                              # %if.else.90
                                        #   in Loop: Header=BB55_11 Depth=1
	jmp	.LBB55_29
.LBB55_29:                              # %do.body.91
                                        #   in Loop: Header=BB55_11 Depth=1
	movq	-24(%rbp), %rax
	movq	-56(%rbp), %rdi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	SDATA
	movq	-184(%rbp), %rdi        # 8-byte Reload
	addq	%rdi, %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB55_31
# BB#30:                                # %cond.true.98
                                        #   in Loop: Header=BB55_11 Depth=1
	movl	$1, -124(%rbp)
	movq	-120(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -188(%rbp)        # 4-byte Spill
	jmp	.LBB55_38
.LBB55_31:                              # %cond.false.101
                                        #   in Loop: Header=BB55_11 Depth=1
	movq	-120(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB55_33
# BB#32:                                # %cond.true.106
                                        #   in Loop: Header=BB55_11 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -124(%rbp)
	movq	-120(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-120(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-120(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -192(%rbp)        # 4-byte Spill
	jmp	.LBB55_37
.LBB55_33:                              # %cond.false.121
                                        #   in Loop: Header=BB55_11 Depth=1
	movq	-120(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB55_35
# BB#34:                                # %cond.true.126
                                        #   in Loop: Header=BB55_11 Depth=1
	movl	$3, -124(%rbp)
	movq	-120(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-120(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-120(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -196(%rbp)        # 4-byte Spill
	jmp	.LBB55_36
.LBB55_35:                              # %cond.false.140
                                        #   in Loop: Header=BB55_11 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-124(%rbp), %rdx
	movq	-120(%rbp), %rdi
	callq	string_char
	movl	%eax, -196(%rbp)        # 4-byte Spill
.LBB55_36:                              # %cond.end.142
                                        #   in Loop: Header=BB55_11 Depth=1
	movl	-196(%rbp), %eax        # 4-byte Reload
	movl	%eax, -192(%rbp)        # 4-byte Spill
.LBB55_37:                              # %cond.end.144
                                        #   in Loop: Header=BB55_11 Depth=1
	movl	-192(%rbp), %eax        # 4-byte Reload
	movl	%eax, -188(%rbp)        # 4-byte Spill
.LBB55_38:                              # %cond.end.146
                                        #   in Loop: Header=BB55_11 Depth=1
	movl	-188(%rbp), %eax        # 4-byte Reload
	movl	%eax, -68(%rbp)
	movslq	-124(%rbp), %rcx
	addq	-24(%rbp), %rcx
	movq	%rcx, -24(%rbp)
	movq	-16(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
# BB#39:                                # %do.end.151
                                        #   in Loop: Header=BB55_11 Depth=1
	jmp	.LBB55_40
.LBB55_40:                              # %if.end.152
                                        #   in Loop: Header=BB55_11 Depth=1
	movq	globals+2512, %rdi
	movl	-68(%rbp), %esi
	callq	CHAR_TABLE_REF
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %esi
	andl	$-5, %esi
	cmpl	$2, %esi
	jne	.LBB55_52
# BB#41:                                # %land.lhs.true
                                        #   in Loop: Header=BB55_11 Depth=1
	movq	-96(%rbp), %rax
	sarq	$2, %rax
	cmpq	$27, %rax
	je	.LBB55_51
# BB#42:                                # %lor.lhs.false
                                        #   in Loop: Header=BB55_11 Depth=1
	cmpl	$65024, -68(%rbp)       # imm = 0xFE00
	jge	.LBB55_44
# BB#43:                                # %cond.true.163
                                        #   in Loop: Header=BB55_11 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB55_51
	jmp	.LBB55_52
.LBB55_44:                              # %cond.false.164
                                        #   in Loop: Header=BB55_11 Depth=1
	cmpl	$65039, -68(%rbp)       # imm = 0xFE0F
	jg	.LBB55_46
# BB#45:                                # %cond.true.167
                                        #   in Loop: Header=BB55_11 Depth=1
	movl	-68(%rbp), %eax
	subl	$65024, %eax            # imm = 0xFE00
	addl	$1, %eax
	cmpl	$0, %eax
	jne	.LBB55_51
	jmp	.LBB55_52
.LBB55_46:                              # %cond.false.171
                                        #   in Loop: Header=BB55_11 Depth=1
	cmpl	$917760, -68(%rbp)      # imm = 0xE0100
	jge	.LBB55_48
# BB#47:                                # %cond.true.174
                                        #   in Loop: Header=BB55_11 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB55_51
	jmp	.LBB55_52
.LBB55_48:                              # %cond.false.175
                                        #   in Loop: Header=BB55_11 Depth=1
	cmpl	$917999, -68(%rbp)      # imm = 0xE01EF
	jg	.LBB55_50
# BB#49:                                # %cond.true.178
                                        #   in Loop: Header=BB55_11 Depth=1
	movl	-68(%rbp), %eax
	subl	$917760, %eax           # imm = 0xE0100
	addl	$17, %eax
	cmpl	$0, %eax
	jne	.LBB55_51
	jmp	.LBB55_52
.LBB55_50:                              # %cond.false.182
                                        #   in Loop: Header=BB55_11 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB55_51
	jmp	.LBB55_52
.LBB55_51:                              # %if.then.183
                                        #   in Loop: Header=BB55_11 Depth=1
	jmp	.LBB55_11
.LBB55_52:                              # %if.end.184
                                        #   in Loop: Header=BB55_11 Depth=1
	xorl	%edi, %edi
	movq	-80(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB55_56
# BB#53:                                # %if.then.188
                                        #   in Loop: Header=BB55_11 Depth=1
	movq	-48(%rbp), %rdi
	movl	-68(%rbp), %esi
	movq	-16(%rbp), %rax
	subq	$1, %rax
	movq	-56(%rbp), %rcx
	movq	%rax, %rdx
	callq	font_for_char
	xorl	%edi, %edi
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB55_55
# BB#54:                                # %if.then.194
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB55_60
.LBB55_55:                              # %if.end.196
                                        #   in Loop: Header=BB55_11 Depth=1
	jmp	.LBB55_11
.LBB55_56:                              # %if.end.197
                                        #   in Loop: Header=BB55_11 Depth=1
	movq	-80(%rbp), %rdi
	movl	-68(%rbp), %esi
	callq	font_encode_char
	cmpl	$-1, %eax
	jne	.LBB55_58
# BB#57:                                # %if.then.201
                                        #   in Loop: Header=BB55_11 Depth=1
	movq	-16(%rbp), %rax
	subq	$1, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB55_58:                              # %if.end.203
                                        #   in Loop: Header=BB55_11 Depth=1
	jmp	.LBB55_11
.LBB55_59:                              # %while.end
	movq	-80(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB55_60:                              # %return
	movq	-8(%rbp), %rax
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end55:
	.size	font_range, .Lfunc_end55-font_range
	.cfi_endproc

	.globl	Ffontp
	.align	16, 0x90
	.type	Ffontp,@function
Ffontp:                                 # @Ffontp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp173:
	.cfi_def_cfa_offset 16
.Ltmp174:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp175:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movl	%eax, %edi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB56_5
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	FONTP
	testb	$1, %al
	jne	.LBB56_2
	jmp	.LBB56_3
.LBB56_2:                               # %cond.true
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB56_4
.LBB56_3:                               # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB56_4:                               # %cond.end
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, -8(%rbp)
	jmp	.LBB56_21
.LBB56_5:                               # %if.end
	movl	$446, %edi              # imm = 0x1BE
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB56_10
# BB#6:                                 # %if.then.6
	movq	-16(%rbp), %rdi
	callq	FONT_SPEC_P
	testb	$1, %al
	jne	.LBB56_7
	jmp	.LBB56_8
.LBB56_7:                               # %cond.true.8
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB56_9
.LBB56_8:                               # %cond.false.10
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB56_9:                               # %cond.end.12
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -8(%rbp)
	jmp	.LBB56_21
.LBB56_10:                              # %if.end.14
	movl	$441, %edi              # imm = 0x1B9
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB56_15
# BB#11:                                # %if.then.17
	movq	-16(%rbp), %rdi
	callq	FONT_ENTITY_P
	testb	$1, %al
	jne	.LBB56_12
	jmp	.LBB56_13
.LBB56_12:                              # %cond.true.19
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB56_14
.LBB56_13:                              # %cond.false.21
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB56_14:                              # %cond.end.23
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, -8(%rbp)
	jmp	.LBB56_21
.LBB56_15:                              # %if.end.25
	movl	$443, %edi              # imm = 0x1BB
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB56_20
# BB#16:                                # %if.then.28
	movq	-16(%rbp), %rdi
	callq	FONT_OBJECT_P
	testb	$1, %al
	jne	.LBB56_17
	jmp	.LBB56_18
.LBB56_17:                              # %cond.true.30
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB56_19
.LBB56_18:                              # %cond.false.32
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB56_19:                              # %cond.end.34
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -8(%rbp)
	jmp	.LBB56_21
.LBB56_20:                              # %if.end.36
	movabsq	$.L.str.26, %rdi
	callq	intern
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB56_21:                              # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end56:
	.size	Ffontp, .Lfunc_end56-Ffontp
	.cfi_endproc

	.align	16, 0x90
	.type	font_make_spec,@function
font_make_spec:                         # @font_make_spec
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp176:
	.cfi_def_cfa_offset 16
.Ltmp177:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp178:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$13, %eax
	movl	$17, %ecx
	movl	%eax, %edi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	allocate_pseudovector
	movl	$5, %esi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end57:
	.size	font_make_spec, .Lfunc_end57-font_make_spec
	.cfi_endproc

	.align	16, 0x90
	.type	get_font_prop_index,@function
get_font_prop_index:                    # @get_font_prop_index
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp179:
	.cfi_def_cfa_offset 16
.Ltmp180:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp181:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB58_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-20(%rbp), %rax
	cmpq	$15, %rax
	jae	.LBB58_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB58_1 Depth=1
	movabsq	$font_property_table, %rax
	movq	-16(%rbp), %rcx
	movslq	-20(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edi
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB58_4
# BB#3:                                 # %if.then
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB58_7
.LBB58_4:                               # %if.end
                                        #   in Loop: Header=BB58_1 Depth=1
	jmp	.LBB58_5
.LBB58_5:                               # %for.inc
                                        #   in Loop: Header=BB58_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB58_1
.LBB58_6:                               # %for.end
	movl	$-1, -4(%rbp)
.LBB58_7:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end58:
	.size	get_font_prop_index, .Lfunc_end58-get_font_prop_index
	.cfi_endproc

	.align	16, 0x90
	.type	font_prop_validate,@function
font_prop_validate:                     # @font_prop_validate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp182:
	.cfi_def_cfa_offset 16
.Ltmp183:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp184:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	xorl	%eax, %eax
	movl	%edi, -12(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movl	%eax, %edi
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB59_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB59_10
.LBB59_2:                               # %if.end
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB59_4
# BB#3:                                 # %if.then.3
	movabsq	$font_property_table, %rax
	movslq	-12(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %edi
	callq	builtin_lisp_symbol
	movq	%rax, -24(%rbp)
	jmp	.LBB59_7
.LBB59_4:                               # %if.else
	movq	-24(%rbp), %rdi
	callq	get_font_prop_index
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jge	.LBB59_6
# BB#5:                                 # %if.then.7
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB59_10
.LBB59_6:                               # %if.end.8
	jmp	.LBB59_7
.LBB59_7:                               # %if.end.9
	movabsq	$font_property_table, %rax
	movslq	-12(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	*%rax
	movl	$372, %edi              # imm = 0x174
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB59_9
# BB#8:                                 # %if.then.15
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	Fcons
	movabsq	$.L.str.87, %rdi
	movq	%rax, %rsi
	callq	signal_error
.LBB59_9:                               # %if.end.17
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB59_10:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end59:
	.size	font_prop_validate, .Lfunc_end59-font_prop_validate
	.cfi_endproc

	.globl	merge_font_spec
	.align	16, 0x90
	.type	merge_font_spec,@function
merge_font_spec:                        # @merge_font_spec
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp185:
	.cfi_def_cfa_offset 16
.Ltmp186:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp187:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_FONT
	movq	-16(%rbp), %rdi
	callq	CHECK_FONT
	movq	-16(%rbp), %rdi
	callq	copy_font_spec
	movq	%rax, -16(%rbp)
	movl	$0, -36(%rbp)
.LBB60_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$12, -36(%rbp)
	jge	.LBB60_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB60_1 Depth=1
	movq	-16(%rbp), %rdi
	movslq	-36(%rbp), %rsi
	movq	-8(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	callq	AREF
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB60_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB60_1
.LBB60_4:                               # %for.end
	movl	$12, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	AREF
	movl	$12, %ecx
	movl	%ecx, %esi
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	AREF
	movq	%rax, -32(%rbp)
.LBB60_5:                               # %for.cond.5
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB60_13
# BB#6:                                 # %for.body.9
                                        #   in Loop: Header=BB60_5 Depth=1
	movl	$441, %edi              # imm = 0x1B9
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB60_11
# BB#7:                                 # %if.then
                                        #   in Loop: Header=BB60_5 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	assq_no_quit
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB60_9
# BB#8:                                 # %if.then.23
                                        #   in Loop: Header=BB60_5 Depth=1
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rsi
	callq	XSETCDR
	jmp	.LBB60_10
.LBB60_9:                               # %if.else
                                        #   in Loop: Header=BB60_5 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rsi
	callq	Fcons
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -24(%rbp)
.LBB60_10:                              # %if.end
                                        #   in Loop: Header=BB60_5 Depth=1
	jmp	.LBB60_11
.LBB60_11:                              # %if.end.38
                                        #   in Loop: Header=BB60_5 Depth=1
	jmp	.LBB60_12
.LBB60_12:                              # %for.inc.39
                                        #   in Loop: Header=BB60_5 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB60_5
.LBB60_13:                              # %for.end.43
	movl	$12, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rdx
	callq	ASET
	movq	-16(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end60:
	.size	merge_font_spec, .Lfunc_end60-merge_font_spec
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI61_0:
	.quad	4634785966078589665     # double 72.269999999999996
.LCPI61_1:
	.quad	4602678819172646912     # double 0.5
.LCPI61_2:
	.quad	4890909195324358656     # double 9.2233720368547758E+18
	.text
	.globl	Ffont_face_attributes
	.align	16, 0x90
	.type	Ffont_face_attributes,@function
Ffont_face_attributes:                  # @Ffont_face_attributes
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp188:
	.cfi_def_cfa_offset 16
.Ltmp189:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp190:
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	decode_live_frame
	movq	%rax, -24(%rbp)
	movl	$0, -124(%rbp)
	movq	-8(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB61_1
	jmp	.LBB61_6
.LBB61_1:                               # %if.then
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	callq	fs_query_fontset
	movl	%eax, -128(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -136(%rbp)
	cmpl	$0, -128(%rbp)
	jl	.LBB61_3
# BB#2:                                 # %if.then.3
	movl	-128(%rbp), %edi
	callq	fontset_ascii
	movq	%rax, -8(%rbp)
.LBB61_3:                               # %if.end
	movq	-136(%rbp), %rdi
	callq	font_spec_from_name
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	FONTP
	testb	$1, %al
	jne	.LBB61_5
# BB#4:                                 # %if.then.7
	movabsq	$.L.str.29, %rdi
	movq	-136(%rbp), %rsi
	callq	signal_error
.LBB61_5:                               # %if.end.8
	jmp	.LBB61_9
.LBB61_6:                               # %if.else
	movq	-8(%rbp), %rdi
	callq	FONTP
	testb	$1, %al
	jne	.LBB61_8
# BB#7:                                 # %if.then.10
	movabsq	$.L.str.30, %rdi
	movq	-8(%rbp), %rsi
	callq	signal_error
.LBB61_8:                               # %if.end.11
	jmp	.LBB61_9
.LBB61_9:                               # %if.end.12
	movl	$2, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB61_11
# BB#10:                                # %if.then.16
	movl	$40, %edi
	callq	builtin_lisp_symbol
	movl	-124(%rbp), %edi
	movl	%edi, %ecx
	addl	$1, %ecx
	movl	%ecx, -124(%rbp)
	movslq	%edi, %rdx
	movq	%rax, -112(%rbp,%rdx,8)
	movq	-120(%rbp), %rdi
	callq	SYMBOL_NAME
	movl	-124(%rbp), %ecx
	movl	%ecx, %esi
	addl	$1, %esi
	movl	%esi, -124(%rbp)
	movslq	%ecx, %rdx
	movq	%rax, -112(%rbp,%rdx,8)
.LBB61_11:                              # %if.end.22
	movl	$8, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	AREF
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB61_16
# BB#12:                                # %if.then.27
	movl	$9, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	AREF
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB61_14
# BB#13:                                # %cond.true
	movq	-144(%rbp), %rax
	sarq	$2, %rax
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
	jmp	.LBB61_15
.LBB61_14:                              # %cond.false
	movq	-24(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movsd	64(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
.LBB61_15:                              # %cond.end
	movsd	-168(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -148(%rbp)
	movl	$58, %edi
	callq	builtin_lisp_symbol
	movslq	-124(%rbp), %rcx
	movl	%ecx, %edi
	incl	%edi
	movl	%edi, -124(%rbp)
	movq	%rax, -112(%rbp,%rcx,8)
	movq	-120(%rbp), %rax
	sarq	$2, %rax
	addq	%rax, %rax
	leaq	(%rax,%rax,4), %rax
	cvtsi2sdq	%rax, %xmm0
	movsd	.LCPI61_0(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvtsi2sdl	-148(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	.LCPI61_1(%rip), %xmm1  # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	.LCPI61_2(%rip), %xmm1  # xmm1 = mem[0],zero
	movaps	%xmm0, %xmm2
	subsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	cvttsd2si	%xmm0, %rcx
	ucomisd	%xmm1, %xmm0
	cmovbq	%rcx, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movl	-124(%rbp), %edi
	movl	%edi, %edx
	addl	$1, %edx
	movl	%edx, -124(%rbp)
	movslq	%edi, %rcx
	movq	%rax, -112(%rbp,%rcx,8)
	jmp	.LBB61_19
.LBB61_16:                              # %if.else.49
	movq	-120(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$7, %ecx
	jne	.LBB61_18
# BB#17:                                # %if.then.54
	movl	$58, %edi
	callq	builtin_lisp_symbol
	movl	-124(%rbp), %edi
	movl	%edi, %ecx
	addl	$1, %ecx
	movl	%ecx, -124(%rbp)
	movslq	%edi, %rdx
	movq	%rax, -112(%rbp,%rdx,8)
	movq	-120(%rbp), %rdi
	callq	XFLOAT_DATA
	cvttsd2si	%xmm0, %ecx
	imull	$10, %ecx, %ecx
	movslq	%ecx, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movl	-124(%rbp), %ecx
	movl	%ecx, %esi
	addl	$1, %esi
	movl	%esi, -124(%rbp)
	movslq	%ecx, %rdx
	movq	%rax, -112(%rbp,%rdx,8)
.LBB61_18:                              # %if.end.68
	jmp	.LBB61_19
.LBB61_19:                              # %if.end.69
	movl	$5, %esi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	callq	font_style_symbolic
	xorl	%edi, %edi
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB61_21
# BB#20:                                # %if.then.74
	movl	$138, %edi
	callq	builtin_lisp_symbol
	movl	-124(%rbp), %edi
	movl	%edi, %ecx
	addl	$1, %ecx
	movl	%ecx, -124(%rbp)
	movslq	%edi, %rdx
	movq	%rax, -112(%rbp,%rdx,8)
	movq	-120(%rbp), %rax
	movl	-124(%rbp), %ecx
	movl	%ecx, %edi
	addl	$1, %edi
	movl	%edi, -124(%rbp)
	movslq	%ecx, %rdx
	movq	%rax, -112(%rbp,%rdx,8)
.LBB61_21:                              # %if.end.82
	movl	$6, %esi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	callq	font_style_symbolic
	xorl	%edi, %edi
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB61_23
# BB#22:                                # %if.then.87
	movl	$119, %edi
	callq	builtin_lisp_symbol
	movl	-124(%rbp), %edi
	movl	%edi, %ecx
	addl	$1, %ecx
	movl	%ecx, -124(%rbp)
	movslq	%edi, %rdx
	movq	%rax, -112(%rbp,%rdx,8)
	movq	-120(%rbp), %rax
	movl	-124(%rbp), %ecx
	movl	%ecx, %edi
	addl	$1, %edi
	movl	%edi, -124(%rbp)
	movslq	%ecx, %rdx
	movq	%rax, -112(%rbp,%rdx,8)
.LBB61_23:                              # %if.end.95
	movl	$7, %esi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	callq	font_style_symbolic
	xorl	%edi, %edi
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB61_25
# BB#24:                                # %if.then.100
	movl	$139, %edi
	callq	builtin_lisp_symbol
	movl	-124(%rbp), %edi
	movl	%edi, %ecx
	addl	$1, %ecx
	movl	%ecx, -124(%rbp)
	movslq	%edi, %rdx
	movq	%rax, -112(%rbp,%rdx,8)
	movq	-120(%rbp), %rax
	movl	-124(%rbp), %ecx
	movl	%ecx, %edi
	addl	$1, %edi
	movl	%edi, -124(%rbp)
	movslq	%ecx, %rdx
	movq	%rax, -112(%rbp,%rdx,8)
.LBB61_25:                              # %if.end.108
	leaq	-112(%rbp), %rsi
	movslq	-124(%rbp), %rdi
	callq	Flist
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end61:
	.size	Ffont_face_attributes, .Lfunc_end61-Ffont_face_attributes
	.cfi_endproc

	.globl	Flist_fonts
	.align	16, 0x90
	.type	Flist_fonts,@function
Flist_fonts:                            # @Flist_fonts
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp191:
	.cfi_def_cfa_offset 16
.Ltmp192:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp193:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	decode_live_frame
	movq	%rax, -48(%rbp)
	movq	$0, -72(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHECK_FONT_SPEC
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB62_7
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB62_3
# BB#2:                                 # %cond.true
	jmp	.LBB62_4
.LBB62_3:                               # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB62_4:                               # %cond.end
	movq	-32(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jg	.LBB62_6
# BB#5:                                 # %if.then.8
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB62_26
.LBB62_6:                               # %if.end
	jmp	.LBB62_7
.LBB62_7:                               # %if.end.10
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB62_9
# BB#8:                                 # %if.then.14
	movq	-40(%rbp), %rdi
	callq	CHECK_FONT_SPEC
.LBB62_9:                               # %if.end.15
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	font_list_entities
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB62_11
# BB#10:                                # %if.then.20
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB62_26
.LBB62_11:                              # %if.end.22
	xorl	%edi, %edi
	movq	-64(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB62_14
# BB#12:                                # %land.lhs.true
	movq	-64(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	ASIZE
	cmpq	$1, %rax
	jne	.LBB62_14
# BB#13:                                # %if.then.30
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-64(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rdi
	callq	AREF
	movq	%rax, %rdi
	callq	list1
	movq	%rax, -8(%rbp)
	jmp	.LBB62_26
.LBB62_14:                              # %if.end.35
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB62_16
# BB#15:                                # %if.then.39
	xorl	%ecx, %ecx
	movq	-64(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	font_sort_entities
	movq	%rax, -56(%rbp)
	jmp	.LBB62_17
.LBB62_16:                              # %if.else
	movq	-64(%rbp), %rdi
	callq	font_vconcat_entity_vectors
	movq	%rax, -56(%rbp)
.LBB62_17:                              # %if.end.42
	cmpq	$0, -72(%rbp)
	je	.LBB62_19
# BB#18:                                # %lor.lhs.false
	movq	-72(%rbp), %rax
	movq	-56(%rbp), %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	ASIZE
	movq	-144(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB62_20
.LBB62_19:                              # %if.then.48
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	builtin_lisp_symbol
	movl	$2, %edi
                                        # kill: RDI<def> EDI<kill>
	leaq	-88(%rbp), %rsi
	movq	%rax, -80(%rbp)
	callq	Fappend
	movq	%rax, -64(%rbp)
	jmp	.LBB62_25
.LBB62_20:                              # %if.else.51
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -64(%rbp)
	movq	-72(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -72(%rbp)
.LBB62_21:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -72(%rbp)
	jl	.LBB62_24
# BB#22:                                # %for.body
                                        #   in Loop: Header=BB62_21 Depth=1
	movq	-56(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	AREF
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -64(%rbp)
# BB#23:                                # %for.inc
                                        #   in Loop: Header=BB62_21 Depth=1
	movq	-72(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB62_21
.LBB62_24:                              # %for.end
	jmp	.LBB62_25
.LBB62_25:                              # %if.end.58
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB62_26:                              # %return
	movq	-8(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end62:
	.size	Flist_fonts, .Lfunc_end62-Flist_fonts
	.cfi_endproc

	.align	16, 0x90
	.type	font_sort_entities,@function
font_sort_entities:                     # @font_sort_entities
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp194:
	.cfi_def_cfa_offset 16
.Ltmp195:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp196:
	.cfi_def_cfa_register %rbp
	subq	$304, %rsp              # imm = 0x130
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	$16384, -208(%rbp)      # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -216(%rbp)
	movb	$0, -217(%rbp)
	movl	$5, -156(%rbp)
.LBB63_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$11, -156(%rbp)
	jg	.LBB63_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB63_1 Depth=1
	movq	-16(%rbp), %rdi
	movslq	-156(%rbp), %rsi
	callq	AREF
	movslq	-156(%rbp), %rsi
	movq	%rax, -144(%rbp,%rsi,8)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB63_1 Depth=1
	movl	-156(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -156(%rbp)
	jmp	.LBB63_1
.LBB63_4:                               # %for.end
	movq	-80(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$7, %ecx
	jne	.LBB63_6
# BB#5:                                 # %if.then
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	font_pixel_size
	movslq	%eax, %rsi
	shlq	$2, %rsi
	addq	$2, %rsi
	movq	%rsi, -80(%rbp)
.LBB63_6:                               # %if.end
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-240(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB63_8
# BB#7:                                 # %if.then.12
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rdi
	callq	ASIZE
	movl	%eax, %ecx
	movl	%ecx, -152(%rbp)
	jmp	.LBB63_18
.LBB63_8:                               # %if.else
	cmpl	$0, -28(%rbp)
	je	.LBB63_16
# BB#9:                                 # %if.then.16
	movl	$0, -152(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -192(%rbp)
.LBB63_10:                              # %for.cond.17
                                        # =>This Inner Loop Header: Depth=1
	movq	-192(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB63_15
# BB#11:                                # %for.body.22
                                        #   in Loop: Header=BB63_10 Depth=1
	movslq	-152(%rbp), %rax
	movq	-192(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rdi
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	ASIZE
	movq	-248(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jge	.LBB63_13
# BB#12:                                # %if.then.29
                                        #   in Loop: Header=BB63_10 Depth=1
	movq	-192(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	ASIZE
	movl	%eax, %ecx
	movl	%ecx, -152(%rbp)
.LBB63_13:                              # %if.end.34
                                        #   in Loop: Header=BB63_10 Depth=1
	jmp	.LBB63_14
.LBB63_14:                              # %for.inc.35
                                        #   in Loop: Header=BB63_10 Depth=1
	movq	-192(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -192(%rbp)
	jmp	.LBB63_10
.LBB63_15:                              # %for.end.39
	jmp	.LBB63_17
.LBB63_16:                              # %if.else.40
	movq	-8(%rbp), %rdi
	callq	font_vconcat_entity_vectors
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rdi
	callq	ASIZE
	movl	%eax, %ecx
	movl	%ecx, -152(%rbp)
.LBB63_17:                              # %if.end.44
	jmp	.LBB63_18
.LBB63_18:                              # %if.end.45
	movslq	-152(%rbp), %rax
	shlq	$4, %rax
	cmpq	-208(%rbp), %rax
	ja	.LBB63_20
# BB#19:                                # %cond.true
	movslq	-152(%rbp), %rax
	shlq	$4, %rax
	movq	-208(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -208(%rbp)
	movslq	-152(%rbp), %rax
	shlq	$4, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	jmp	.LBB63_21
.LBB63_20:                              # %cond.false
	movb	$1, -217(%rbp)
	movslq	-152(%rbp), %rax
	shlq	$4, %rax
	movq	%rax, %rdi
	callq	record_xmalloc
	movq	%rax, -256(%rbp)        # 8-byte Spill
.LBB63_21:                              # %cond.end
	movq	-256(%rbp), %rax        # 8-byte Reload
	xorl	%edi, %edi
	movq	%rax, -168(%rbp)
	movl	$-1, -172(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -184(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -192(%rbp)
.LBB63_22:                              # %for.cond.58
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB63_26 Depth 2
	movq	-192(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB63_49
# BB#23:                                # %for.body.63
                                        #   in Loop: Header=BB63_22 Depth=1
	movl	$0, -224(%rbp)
	cmpl	$0, -28(%rbp)
	je	.LBB63_25
# BB#24:                                # %if.then.65
                                        #   in Loop: Header=BB63_22 Depth=1
	movq	-192(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -200(%rbp)
.LBB63_25:                              # %if.end.68
                                        #   in Loop: Header=BB63_22 Depth=1
	movq	-200(%rbp), %rdi
	callq	ASIZE
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	%eax, %ecx
	movl	%ecx, -148(%rbp)
	movq	-200(%rbp), %rdi
	callq	AREF
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movq	%rax, -232(%rbp)
	movl	$0, -156(%rbp)
.LBB63_26:                              # %for.cond.73
                                        #   Parent Loop BB63_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-156(%rbp), %eax
	cmpl	-148(%rbp), %eax
	jge	.LBB63_40
# BB#27:                                # %for.body.76
                                        #   in Loop: Header=BB63_26 Depth=2
	movq	-200(%rbp), %rdi
	movslq	-156(%rbp), %rsi
	callq	AREF
	movslq	-156(%rbp), %rsi
	shlq	$4, %rsi
	addq	-168(%rbp), %rsi
	movq	%rax, 8(%rsi)
	cmpl	$0, -28(%rbp)
	jle	.LBB63_29
# BB#28:                                # %lor.lhs.false
                                        #   in Loop: Header=BB63_26 Depth=2
	movq	-24(%rbp), %rdi
	movslq	-156(%rbp), %rax
	shlq	$4, %rax
	addq	-168(%rbp), %rax
	movq	8(%rax), %rsi
	movl	-28(%rbp), %edx
	callq	font_has_char
	cmpl	$0, %eax
	jle	.LBB63_30
.LBB63_29:                              # %cond.true.89
                                        #   in Loop: Header=BB63_26 Depth=2
	leaq	-144(%rbp), %rsi
	movslq	-156(%rbp), %rax
	shlq	$4, %rax
	addq	-168(%rbp), %rax
	movq	8(%rax), %rdi
	callq	font_score
	movl	%eax, -260(%rbp)        # 4-byte Spill
	jmp	.LBB63_31
.LBB63_30:                              # %cond.false.94
                                        #   in Loop: Header=BB63_26 Depth=2
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -260(%rbp)        # 4-byte Spill
	jmp	.LBB63_31
.LBB63_31:                              # %cond.end.95
                                        #   in Loop: Header=BB63_26 Depth=2
	movl	-260(%rbp), %eax        # 4-byte Reload
	movslq	-156(%rbp), %rcx
	shlq	$4, %rcx
	addq	-168(%rbp), %rcx
	movl	%eax, (%rcx)
	cmpl	$0, -28(%rbp)
	je	.LBB63_36
# BB#32:                                # %land.lhs.true
                                        #   in Loop: Header=BB63_26 Depth=2
	movl	-172(%rbp), %eax
	movslq	-156(%rbp), %rcx
	shlq	$4, %rcx
	addq	-168(%rbp), %rcx
	cmpl	(%rcx), %eax
	jbe	.LBB63_36
# BB#33:                                # %if.then.105
                                        #   in Loop: Header=BB63_26 Depth=2
	movslq	-156(%rbp), %rax
	shlq	$4, %rax
	addq	-168(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -172(%rbp)
	movslq	-156(%rbp), %rax
	shlq	$4, %rax
	addq	-168(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -184(%rbp)
	cmpl	$0, -172(%rbp)
	jne	.LBB63_35
# BB#34:                                # %if.then.114
                                        #   in Loop: Header=BB63_22 Depth=1
	jmp	.LBB63_40
.LBB63_35:                              # %if.end.115
                                        #   in Loop: Header=BB63_26 Depth=2
	jmp	.LBB63_36
.LBB63_36:                              # %if.end.116
                                        #   in Loop: Header=BB63_26 Depth=2
	movq	-232(%rbp), %rax
	movq	-200(%rbp), %rdi
	movslq	-156(%rbp), %rsi
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	AREF
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movq	-272(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB63_38
# BB#37:                                # %if.then.122
                                        #   in Loop: Header=BB63_26 Depth=2
	movq	-200(%rbp), %rdi
	movslq	-156(%rbp), %rsi
	callq	AREF
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movq	%rax, -232(%rbp)
	movl	-224(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -224(%rbp)
.LBB63_38:                              # %if.end.127
                                        #   in Loop: Header=BB63_26 Depth=2
	movl	-224(%rbp), %eax
	movslq	-156(%rbp), %rcx
	shlq	$4, %rcx
	addq	-168(%rbp), %rcx
	movl	%eax, 4(%rcx)
# BB#39:                                # %for.inc.131
                                        #   in Loop: Header=BB63_26 Depth=2
	movl	-156(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -156(%rbp)
	jmp	.LBB63_26
.LBB63_40:                              # %for.end.133
                                        #   in Loop: Header=BB63_22 Depth=1
	cmpl	$0, -28(%rbp)
	jne	.LBB63_46
# BB#41:                                # %if.then.135
	movl	$16, %eax
	movl	%eax, %edx
	movabsq	$font_compare, %rcx
	movq	-168(%rbp), %rsi
	movslq	-148(%rbp), %rdi
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-280(%rbp), %rsi        # 8-byte Reload
	callq	qsort
	movl	$0, -156(%rbp)
.LBB63_42:                              # %for.cond.137
                                        # =>This Inner Loop Header: Depth=1
	movl	-156(%rbp), %eax
	cmpl	-148(%rbp), %eax
	jge	.LBB63_45
# BB#43:                                # %for.body.140
                                        #   in Loop: Header=BB63_42 Depth=1
	movq	-200(%rbp), %rdi
	movslq	-156(%rbp), %rsi
	movslq	-156(%rbp), %rax
	shlq	$4, %rax
	addq	-168(%rbp), %rax
	movq	8(%rax), %rdx
	callq	ASET
# BB#44:                                # %for.inc.145
                                        #   in Loop: Header=BB63_42 Depth=1
	movl	-156(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -156(%rbp)
	jmp	.LBB63_42
.LBB63_45:                              # %for.end.147
	jmp	.LBB63_49
.LBB63_46:                              # %if.else.148
                                        #   in Loop: Header=BB63_22 Depth=1
	movq	-184(%rbp), %rax
	movq	%rax, -200(%rbp)
# BB#47:                                # %if.end.149
                                        #   in Loop: Header=BB63_22 Depth=1
	jmp	.LBB63_48
.LBB63_48:                              # %for.inc.150
                                        #   in Loop: Header=BB63_22 Depth=1
	movq	-192(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -192(%rbp)
	jmp	.LBB63_22
.LBB63_49:                              # %for.end.154
	jmp	.LBB63_50
.LBB63_50:                              # %do.body
	testb	$1, -217(%rbp)
	je	.LBB63_52
# BB#51:                                # %if.then.156
	xorl	%edi, %edi
	movb	$0, -217(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -296(%rbp)        # 8-byte Spill
.LBB63_52:                              # %if.end.159
	jmp	.LBB63_53
.LBB63_53:                              # %do.end
	jmp	.LBB63_54
.LBB63_54:                              # %do.body.160
	movl	$901, %edi              # imm = 0x385
	movq	globals+832, %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-304(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB63_56
# BB#55:                                # %if.then.164
	movabsq	$.L.str.88, %rdi
	movq	-16(%rbp), %rsi
	movq	-200(%rbp), %rdx
	callq	font_add_log
.LBB63_56:                              # %if.end.165
	jmp	.LBB63_57
.LBB63_57:                              # %do.end.166
	movq	-200(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end63:
	.size	font_sort_entities, .Lfunc_end63-font_sort_entities
	.cfi_endproc

	.align	16, 0x90
	.type	font_vconcat_entity_vectors,@function
font_vconcat_entity_vectors:            # @font_vconcat_entity_vectors
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp197:
	.cfi_def_cfa_offset 16
.Ltmp198:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp199:
	.cfi_def_cfa_register %rbp
	subq	$928, %rsp              # imm = 0x3A0
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	Flength
	sarq	$2, %rax
	movq	%rax, -16(%rbp)
	movq	$16384, -32(%rbp)       # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -40(%rbp)
	movb	$0, -41(%rbp)
# BB#1:                                 # %do.body
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB64_2
	jmp	.LBB64_81
.LBB64_2:                               # %cond.true
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB64_3
	jmp	.LBB64_42
.LBB64_3:                               # %cond.true.2
	movq	-16(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB64_5
# BB#4:                                 # %cond.true.5
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
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
	movq	-16(%rbp), %rcx
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
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jmp	.LBB64_6
.LBB64_5:                               # %cond.false
	movq	-16(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -84(%rbp)         # 4-byte Spill
.LBB64_6:                               # %cond.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB64_8
# BB#7:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jl	.LBB64_34
.LBB64_8:                               # %lor.lhs.false
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB64_9
	jmp	.LBB64_20
.LBB64_9:                               # %cond.true.34
	movq	-16(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB64_14
# BB#10:                                # %cond.true.39
	movq	-16(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-16(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -88(%rbp)         # 4-byte Spill
	jge	.LBB64_12
# BB#11:                                # %cond.true.49
	movq	-16(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -92(%rbp)         # 4-byte Spill
	jmp	.LBB64_13
.LBB64_12:                              # %cond.false.59
	movq	-16(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -92(%rbp)         # 4-byte Spill
.LBB64_13:                              # %cond.end.65
	movl	-92(%rbp), %eax         # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-88(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB64_34
	jmp	.LBB64_31
.LBB64_14:                              # %cond.false.69
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB64_15
	jmp	.LBB64_16
.LBB64_15:                              # %cond.true.70
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB64_34
	jmp	.LBB64_31
.LBB64_16:                              # %cond.false.71
	movq	-16(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB64_18
# BB#17:                                # %cond.true.79
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
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
	movq	-16(%rbp), %rcx
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
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jmp	.LBB64_19
.LBB64_18:                              # %cond.false.99
	movq	-16(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -96(%rbp)         # 4-byte Spill
.LBB64_19:                              # %cond.end.105
	movl	-96(%rbp), %eax         # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-16(%rbp), %rsi
	movb	%sil, %dil
	movsbl	%dil, %ecx
	cmpl	%ecx, %eax
	jl	.LBB64_34
	jmp	.LBB64_31
.LBB64_20:                              # %cond.false.112
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB64_21
	jmp	.LBB64_22
.LBB64_21:                              # %cond.true.113
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB64_34
	jmp	.LBB64_31
.LBB64_22:                              # %cond.false.114
	movq	-16(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB64_27
# BB#23:                                # %cond.true.119
	movq	-16(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-16(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -100(%rbp)        # 4-byte Spill
	jge	.LBB64_25
# BB#24:                                # %cond.true.129
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
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
	movq	-16(%rbp), %rcx
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
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB64_26
.LBB64_25:                              # %cond.false.149
	movq	-16(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -104(%rbp)        # 4-byte Spill
.LBB64_26:                              # %cond.end.155
	movl	-104(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-100(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB64_34
	jmp	.LBB64_31
.LBB64_27:                              # %cond.false.160
	movq	-16(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB64_29
# BB#28:                                # %cond.true.168
	movq	-16(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -108(%rbp)        # 4-byte Spill
	jmp	.LBB64_30
.LBB64_29:                              # %cond.false.178
	movq	-16(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -108(%rbp)        # 4-byte Spill
.LBB64_30:                              # %cond.end.184
	movl	-108(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-16(%rbp), %rsi
	movb	%sil, %dil
	movsbl	%dil, %ecx
	cmpl	%ecx, %eax
	jl	.LBB64_34
.LBB64_31:                              # %lor.lhs.false.191
	movq	-16(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	shll	$3, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB64_33
# BB#32:                                # %land.lhs.true.199
	movq	-16(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	shll	$3, %edx
	cmpl	$-128, %edx
	jl	.LBB64_34
.LBB64_33:                              # %lor.lhs.false.205
	movl	$127, %eax
	movq	-16(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	shll	$3, %esi
	cmpl	%esi, %eax
	jge	.LBB64_38
.LBB64_34:                              # %cond.true.211
	movq	-16(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB64_36
# BB#35:                                # %cond.true.217
	movq	-16(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -112(%rbp)        # 4-byte Spill
	jmp	.LBB64_37
.LBB64_36:                              # %cond.false.223
	movq	-16(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -112(%rbp)        # 4-byte Spill
.LBB64_37:                              # %cond.end.231
	movl	-112(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -56(%rbp)
	testb	$1, %cl
	jne	.LBB64_401
	jmp	.LBB64_400
.LBB64_38:                              # %cond.false.234
	movq	-16(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB64_40
# BB#39:                                # %cond.true.240
	movq	-16(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -116(%rbp)        # 4-byte Spill
	jmp	.LBB64_41
.LBB64_40:                              # %cond.false.246
	movq	-16(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -116(%rbp)        # 4-byte Spill
.LBB64_41:                              # %cond.end.254
	movl	-116(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -56(%rbp)
	testb	$1, %dl
	jne	.LBB64_401
	jmp	.LBB64_400
.LBB64_42:                              # %cond.false.257
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB64_44
# BB#43:                                # %cond.true.263
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
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
	movq	-16(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB64_45
.LBB64_44:                              # %cond.false.280
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB64_45:                              # %cond.end.284
	movq	-128(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB64_47
# BB#46:                                # %land.lhs.true.288
	cmpq	$0, -16(%rbp)
	jl	.LBB64_73
.LBB64_47:                              # %lor.lhs.false.291
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB64_48
	jmp	.LBB64_59
.LBB64_48:                              # %cond.true.292
	cmpq	$0, -16(%rbp)
	jge	.LBB64_53
# BB#49:                                # %cond.true.295
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jge	.LBB64_51
# BB#50:                                # %cond.true.301
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB64_52
.LBB64_51:                              # %cond.false.309
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB64_52:                              # %cond.end.313
	movq	-144(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	cqto
	movq	-152(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-136(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB64_73
	jmp	.LBB64_70
.LBB64_53:                              # %cond.false.318
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB64_54
	jmp	.LBB64_55
.LBB64_54:                              # %cond.true.319
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB64_73
	jmp	.LBB64_70
.LBB64_55:                              # %cond.false.320
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB64_57
# BB#56:                                # %cond.true.326
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
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
	movq	-16(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	jmp	.LBB64_58
.LBB64_57:                              # %cond.false.343
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
.LBB64_58:                              # %cond.end.347
	movq	-160(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -168(%rbp)        # 8-byte Spill
	cqto
	movq	-168(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-16(%rbp), %rax
	jl	.LBB64_73
	jmp	.LBB64_70
.LBB64_59:                              # %cond.false.352
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB64_60
	jmp	.LBB64_61
.LBB64_60:                              # %cond.true.353
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB64_73
	jmp	.LBB64_70
.LBB64_61:                              # %cond.false.354
	cmpq	$0, -16(%rbp)
	jge	.LBB64_66
# BB#62:                                # %cond.true.357
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jge	.LBB64_64
# BB#63:                                # %cond.true.363
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
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
	movq	-16(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	jmp	.LBB64_65
.LBB64_64:                              # %cond.false.380
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
.LBB64_65:                              # %cond.end.384
	movq	-184(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -192(%rbp)        # 8-byte Spill
	cqto
	movq	-192(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-176(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB64_73
	jmp	.LBB64_70
.LBB64_66:                              # %cond.false.389
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB64_68
# BB#67:                                # %cond.true.395
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	jmp	.LBB64_69
.LBB64_68:                              # %cond.false.403
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
.LBB64_69:                              # %cond.end.407
	movq	-200(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -208(%rbp)        # 8-byte Spill
	cqto
	movq	-208(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-16(%rbp), %rax
	jl	.LBB64_73
.LBB64_70:                              # %lor.lhs.false.412
	movq	-16(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB64_72
# BB#71:                                # %land.lhs.true.418
	movq	-16(%rbp), %rax
	shlq	$3, %rax
	cmpq	$-128, %rax
	jl	.LBB64_73
.LBB64_72:                              # %lor.lhs.false.422
	movl	$127, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	shlq	$3, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB64_77
.LBB64_73:                              # %cond.true.426
	movq	-16(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB64_75
# BB#74:                                # %cond.true.432
	movq	-16(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -212(%rbp)        # 4-byte Spill
	jmp	.LBB64_76
.LBB64_75:                              # %cond.false.438
	movq	-16(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -212(%rbp)        # 4-byte Spill
.LBB64_76:                              # %cond.end.446
	movl	-212(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -56(%rbp)
	testb	$1, %cl
	jne	.LBB64_401
	jmp	.LBB64_400
.LBB64_77:                              # %cond.false.449
	movq	-16(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB64_79
# BB#78:                                # %cond.true.455
	movq	-16(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -216(%rbp)        # 4-byte Spill
	jmp	.LBB64_80
.LBB64_79:                              # %cond.false.461
	movq	-16(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -216(%rbp)        # 4-byte Spill
.LBB64_80:                              # %cond.end.469
	movl	-216(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -56(%rbp)
	testb	$1, %dl
	jne	.LBB64_401
	jmp	.LBB64_400
.LBB64_81:                              # %cond.false.472
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB64_82
	jmp	.LBB64_161
.LBB64_82:                              # %cond.true.473
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB64_83
	jmp	.LBB64_122
.LBB64_83:                              # %cond.true.474
	movq	-16(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB64_85
# BB#84:                                # %cond.true.482
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
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
	movq	-16(%rbp), %rcx
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
	movl	%eax, -220(%rbp)        # 4-byte Spill
	jmp	.LBB64_86
.LBB64_85:                              # %cond.false.502
	movq	-16(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -220(%rbp)        # 4-byte Spill
.LBB64_86:                              # %cond.end.508
	movl	-220(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB64_88
# BB#87:                                # %land.lhs.true.512
	movq	-16(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jl	.LBB64_114
.LBB64_88:                              # %lor.lhs.false.517
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB64_89
	jmp	.LBB64_100
.LBB64_89:                              # %cond.true.518
	movq	-16(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB64_94
# BB#90:                                # %cond.true.523
	movq	-16(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-16(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -224(%rbp)        # 4-byte Spill
	jge	.LBB64_92
# BB#91:                                # %cond.true.533
	movq	-16(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -228(%rbp)        # 4-byte Spill
	jmp	.LBB64_93
.LBB64_92:                              # %cond.false.543
	movq	-16(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -228(%rbp)        # 4-byte Spill
.LBB64_93:                              # %cond.end.549
	movl	-228(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-224(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB64_114
	jmp	.LBB64_111
.LBB64_94:                              # %cond.false.554
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB64_95
	jmp	.LBB64_96
.LBB64_95:                              # %cond.true.555
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB64_114
	jmp	.LBB64_111
.LBB64_96:                              # %cond.false.556
	movq	-16(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB64_98
# BB#97:                                # %cond.true.564
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
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
	movq	-16(%rbp), %rcx
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
	movl	%eax, -232(%rbp)        # 4-byte Spill
	jmp	.LBB64_99
.LBB64_98:                              # %cond.false.584
	movq	-16(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -232(%rbp)        # 4-byte Spill
.LBB64_99:                              # %cond.end.590
	movl	-232(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-16(%rbp), %rsi
	movw	%si, %di
	movswl	%di, %ecx
	cmpl	%ecx, %eax
	jl	.LBB64_114
	jmp	.LBB64_111
.LBB64_100:                             # %cond.false.597
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB64_101
	jmp	.LBB64_102
.LBB64_101:                             # %cond.true.598
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB64_114
	jmp	.LBB64_111
.LBB64_102:                             # %cond.false.599
	movq	-16(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB64_107
# BB#103:                               # %cond.true.604
	movq	-16(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-16(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -236(%rbp)        # 4-byte Spill
	jge	.LBB64_105
# BB#104:                               # %cond.true.614
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
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
	movq	-16(%rbp), %rcx
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
	movl	%eax, -240(%rbp)        # 4-byte Spill
	jmp	.LBB64_106
.LBB64_105:                             # %cond.false.634
	movq	-16(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -240(%rbp)        # 4-byte Spill
.LBB64_106:                             # %cond.end.640
	movl	-240(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-236(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB64_114
	jmp	.LBB64_111
.LBB64_107:                             # %cond.false.645
	movq	-16(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB64_109
# BB#108:                               # %cond.true.653
	movq	-16(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -244(%rbp)        # 4-byte Spill
	jmp	.LBB64_110
.LBB64_109:                             # %cond.false.663
	movq	-16(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -244(%rbp)        # 4-byte Spill
.LBB64_110:                             # %cond.end.669
	movl	-244(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-16(%rbp), %rsi
	movw	%si, %di
	movswl	%di, %ecx
	cmpl	%ecx, %eax
	jl	.LBB64_114
.LBB64_111:                             # %lor.lhs.false.676
	movq	-16(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	shll	$3, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB64_113
# BB#112:                               # %land.lhs.true.684
	movq	-16(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	shll	$3, %edx
	cmpl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB64_114
.LBB64_113:                             # %lor.lhs.false.690
	movl	$32767, %eax            # imm = 0x7FFF
	movq	-16(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	shll	$3, %esi
	cmpl	%esi, %eax
	jge	.LBB64_118
.LBB64_114:                             # %cond.true.696
	movq	-16(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB64_116
# BB#115:                               # %cond.true.702
	movq	-16(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -248(%rbp)        # 4-byte Spill
	jmp	.LBB64_117
.LBB64_116:                             # %cond.false.708
	movq	-16(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -248(%rbp)        # 4-byte Spill
.LBB64_117:                             # %cond.end.716
	movl	-248(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -56(%rbp)
	testb	$1, %cl
	jne	.LBB64_401
	jmp	.LBB64_400
.LBB64_118:                             # %cond.false.719
	movq	-16(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB64_120
# BB#119:                               # %cond.true.725
	movq	-16(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -252(%rbp)        # 4-byte Spill
	jmp	.LBB64_121
.LBB64_120:                             # %cond.false.731
	movq	-16(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -252(%rbp)        # 4-byte Spill
.LBB64_121:                             # %cond.end.739
	movl	-252(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -56(%rbp)
	testb	$1, %dl
	jne	.LBB64_401
	jmp	.LBB64_400
.LBB64_122:                             # %cond.false.742
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB64_124
# BB#123:                               # %cond.true.748
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
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
	movq	-16(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -264(%rbp)        # 8-byte Spill
	jmp	.LBB64_125
.LBB64_124:                             # %cond.false.765
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
.LBB64_125:                             # %cond.end.769
	movq	-264(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB64_127
# BB#126:                               # %land.lhs.true.773
	cmpq	$0, -16(%rbp)
	jl	.LBB64_153
.LBB64_127:                             # %lor.lhs.false.776
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB64_128
	jmp	.LBB64_139
.LBB64_128:                             # %cond.true.777
	cmpq	$0, -16(%rbp)
	jge	.LBB64_133
# BB#129:                               # %cond.true.780
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -272(%rbp)        # 8-byte Spill
	jge	.LBB64_131
# BB#130:                               # %cond.true.786
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	jmp	.LBB64_132
.LBB64_131:                             # %cond.false.794
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
.LBB64_132:                             # %cond.end.798
	movq	-280(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -288(%rbp)        # 8-byte Spill
	cqto
	movq	-288(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-272(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB64_153
	jmp	.LBB64_150
.LBB64_133:                             # %cond.false.803
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB64_134
	jmp	.LBB64_135
.LBB64_134:                             # %cond.true.804
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB64_153
	jmp	.LBB64_150
.LBB64_135:                             # %cond.false.805
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB64_137
# BB#136:                               # %cond.true.811
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
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
	movq	-16(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -296(%rbp)        # 8-byte Spill
	jmp	.LBB64_138
.LBB64_137:                             # %cond.false.828
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
.LBB64_138:                             # %cond.end.832
	movq	-296(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -304(%rbp)        # 8-byte Spill
	cqto
	movq	-304(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-16(%rbp), %rax
	jl	.LBB64_153
	jmp	.LBB64_150
.LBB64_139:                             # %cond.false.837
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB64_140
	jmp	.LBB64_141
.LBB64_140:                             # %cond.true.838
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB64_153
	jmp	.LBB64_150
.LBB64_141:                             # %cond.false.839
	cmpq	$0, -16(%rbp)
	jge	.LBB64_146
# BB#142:                               # %cond.true.842
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -312(%rbp)        # 8-byte Spill
	jge	.LBB64_144
# BB#143:                               # %cond.true.848
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
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
	movq	-16(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	jmp	.LBB64_145
.LBB64_144:                             # %cond.false.865
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
.LBB64_145:                             # %cond.end.869
	movq	-320(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -328(%rbp)        # 8-byte Spill
	cqto
	movq	-328(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-312(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB64_153
	jmp	.LBB64_150
.LBB64_146:                             # %cond.false.874
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB64_148
# BB#147:                               # %cond.true.880
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	jmp	.LBB64_149
.LBB64_148:                             # %cond.false.888
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
.LBB64_149:                             # %cond.end.892
	movq	-336(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -344(%rbp)        # 8-byte Spill
	cqto
	movq	-344(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-16(%rbp), %rax
	jl	.LBB64_153
.LBB64_150:                             # %lor.lhs.false.897
	movq	-16(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB64_152
# BB#151:                               # %land.lhs.true.903
	movq	-16(%rbp), %rax
	shlq	$3, %rax
	cmpq	$-32768, %rax           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB64_153
.LBB64_152:                             # %lor.lhs.false.907
	movl	$32767, %eax            # imm = 0x7FFF
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	shlq	$3, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB64_157
.LBB64_153:                             # %cond.true.911
	movq	-16(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB64_155
# BB#154:                               # %cond.true.917
	movq	-16(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -348(%rbp)        # 4-byte Spill
	jmp	.LBB64_156
.LBB64_155:                             # %cond.false.923
	movq	-16(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -348(%rbp)        # 4-byte Spill
.LBB64_156:                             # %cond.end.931
	movl	-348(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -56(%rbp)
	testb	$1, %cl
	jne	.LBB64_401
	jmp	.LBB64_400
.LBB64_157:                             # %cond.false.934
	movq	-16(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB64_159
# BB#158:                               # %cond.true.940
	movq	-16(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -352(%rbp)        # 4-byte Spill
	jmp	.LBB64_160
.LBB64_159:                             # %cond.false.946
	movq	-16(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -352(%rbp)        # 4-byte Spill
.LBB64_160:                             # %cond.end.954
	movl	-352(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -56(%rbp)
	testb	$1, %dl
	jne	.LBB64_401
	jmp	.LBB64_400
.LBB64_161:                             # %cond.false.957
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB64_162
	jmp	.LBB64_241
.LBB64_162:                             # %cond.true.958
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB64_163
	jmp	.LBB64_202
.LBB64_163:                             # %cond.true.959
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB64_165
# BB#164:                               # %cond.true.966
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
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
	movq	-16(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -356(%rbp)        # 4-byte Spill
	jmp	.LBB64_166
.LBB64_165:                             # %cond.false.984
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -356(%rbp)        # 4-byte Spill
.LBB64_166:                             # %cond.end.989
	movl	-356(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB64_168
# BB#167:                               # %land.lhs.true.993
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jl	.LBB64_194
.LBB64_168:                             # %lor.lhs.false.997
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB64_169
	jmp	.LBB64_180
.LBB64_169:                             # %cond.true.998
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB64_174
# BB#170:                               # %cond.true.1002
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	%eax, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -360(%rbp)        # 4-byte Spill
	jge	.LBB64_172
# BB#171:                               # %cond.true.1010
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -364(%rbp)        # 4-byte Spill
	jmp	.LBB64_173
.LBB64_172:                             # %cond.false.1019
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -364(%rbp)        # 4-byte Spill
.LBB64_173:                             # %cond.end.1024
	movl	-364(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-360(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB64_194
	jmp	.LBB64_191
.LBB64_174:                             # %cond.false.1029
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB64_175
	jmp	.LBB64_176
.LBB64_175:                             # %cond.true.1030
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB64_194
	jmp	.LBB64_191
.LBB64_176:                             # %cond.false.1031
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB64_178
# BB#177:                               # %cond.true.1038
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
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
	movq	-16(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -368(%rbp)        # 4-byte Spill
	jmp	.LBB64_179
.LBB64_178:                             # %cond.false.1056
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -368(%rbp)        # 4-byte Spill
.LBB64_179:                             # %cond.end.1061
	movl	-368(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-16(%rbp), %rsi
	movl	%esi, %ecx
	cmpl	%ecx, %eax
	jl	.LBB64_194
	jmp	.LBB64_191
.LBB64_180:                             # %cond.false.1067
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB64_181
	jmp	.LBB64_182
.LBB64_181:                             # %cond.true.1068
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB64_194
	jmp	.LBB64_191
.LBB64_182:                             # %cond.false.1069
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB64_187
# BB#183:                               # %cond.true.1073
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	%eax, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -372(%rbp)        # 4-byte Spill
	jge	.LBB64_185
# BB#184:                               # %cond.true.1081
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
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
	movq	-16(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -376(%rbp)        # 4-byte Spill
	jmp	.LBB64_186
.LBB64_185:                             # %cond.false.1099
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -376(%rbp)        # 4-byte Spill
.LBB64_186:                             # %cond.end.1104
	movl	-376(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-372(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB64_194
	jmp	.LBB64_191
.LBB64_187:                             # %cond.false.1109
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB64_189
# BB#188:                               # %cond.true.1116
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -380(%rbp)        # 4-byte Spill
	jmp	.LBB64_190
.LBB64_189:                             # %cond.false.1125
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -380(%rbp)        # 4-byte Spill
.LBB64_190:                             # %cond.end.1130
	movl	-380(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-16(%rbp), %rsi
	movl	%esi, %ecx
	cmpl	%ecx, %eax
	jl	.LBB64_194
.LBB64_191:                             # %lor.lhs.false.1136
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB64_193
# BB#192:                               # %land.lhs.true.1143
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	jl	.LBB64_194
.LBB64_193:                             # %lor.lhs.false.1148
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movq	-16(%rbp), %rcx
	movl	%ecx, %edx
	shll	$3, %edx
	cmpl	%edx, %eax
	jge	.LBB64_198
.LBB64_194:                             # %cond.true.1153
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB64_196
# BB#195:                               # %cond.true.1158
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -384(%rbp)        # 4-byte Spill
	jmp	.LBB64_197
.LBB64_196:                             # %cond.false.1161
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -384(%rbp)        # 4-byte Spill
.LBB64_197:                             # %cond.end.1166
	movl	-384(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -56(%rbp)
	testb	$1, %cl
	jne	.LBB64_401
	jmp	.LBB64_400
.LBB64_198:                             # %cond.false.1169
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB64_200
# BB#199:                               # %cond.true.1174
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -388(%rbp)        # 4-byte Spill
	jmp	.LBB64_201
.LBB64_200:                             # %cond.false.1177
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -388(%rbp)        # 4-byte Spill
.LBB64_201:                             # %cond.end.1182
	movl	-388(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -56(%rbp)
	testb	$1, %dl
	jne	.LBB64_401
	jmp	.LBB64_400
.LBB64_202:                             # %cond.false.1185
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB64_204
# BB#203:                               # %cond.true.1191
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
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
	movq	-16(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -400(%rbp)        # 8-byte Spill
	jmp	.LBB64_205
.LBB64_204:                             # %cond.false.1208
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
.LBB64_205:                             # %cond.end.1212
	movq	-400(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB64_207
# BB#206:                               # %land.lhs.true.1216
	cmpq	$0, -16(%rbp)
	jl	.LBB64_233
.LBB64_207:                             # %lor.lhs.false.1219
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB64_208
	jmp	.LBB64_219
.LBB64_208:                             # %cond.true.1220
	cmpq	$0, -16(%rbp)
	jge	.LBB64_213
# BB#209:                               # %cond.true.1223
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -408(%rbp)        # 8-byte Spill
	jge	.LBB64_211
# BB#210:                               # %cond.true.1229
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	jmp	.LBB64_212
.LBB64_211:                             # %cond.false.1237
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
.LBB64_212:                             # %cond.end.1241
	movq	-416(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -424(%rbp)        # 8-byte Spill
	cqto
	movq	-424(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-408(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB64_233
	jmp	.LBB64_230
.LBB64_213:                             # %cond.false.1246
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB64_214
	jmp	.LBB64_215
.LBB64_214:                             # %cond.true.1247
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB64_233
	jmp	.LBB64_230
.LBB64_215:                             # %cond.false.1248
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB64_217
# BB#216:                               # %cond.true.1254
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
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
	movq	-16(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -432(%rbp)        # 8-byte Spill
	jmp	.LBB64_218
.LBB64_217:                             # %cond.false.1271
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
.LBB64_218:                             # %cond.end.1275
	movq	-432(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -440(%rbp)        # 8-byte Spill
	cqto
	movq	-440(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-16(%rbp), %rax
	jl	.LBB64_233
	jmp	.LBB64_230
.LBB64_219:                             # %cond.false.1280
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB64_220
	jmp	.LBB64_221
.LBB64_220:                             # %cond.true.1281
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB64_233
	jmp	.LBB64_230
.LBB64_221:                             # %cond.false.1282
	cmpq	$0, -16(%rbp)
	jge	.LBB64_226
# BB#222:                               # %cond.true.1285
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -448(%rbp)        # 8-byte Spill
	jge	.LBB64_224
# BB#223:                               # %cond.true.1291
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
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
	movq	-16(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -456(%rbp)        # 8-byte Spill
	jmp	.LBB64_225
.LBB64_224:                             # %cond.false.1308
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
.LBB64_225:                             # %cond.end.1312
	movq	-456(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -464(%rbp)        # 8-byte Spill
	cqto
	movq	-464(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-448(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB64_233
	jmp	.LBB64_230
.LBB64_226:                             # %cond.false.1317
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB64_228
# BB#227:                               # %cond.true.1323
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	jmp	.LBB64_229
.LBB64_228:                             # %cond.false.1331
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
.LBB64_229:                             # %cond.end.1335
	movq	-472(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -480(%rbp)        # 8-byte Spill
	cqto
	movq	-480(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-16(%rbp), %rax
	jl	.LBB64_233
.LBB64_230:                             # %lor.lhs.false.1340
	movq	-16(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB64_232
# BB#231:                               # %land.lhs.true.1346
	movq	-16(%rbp), %rax
	shlq	$3, %rax
	cmpq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	jl	.LBB64_233
.LBB64_232:                             # %lor.lhs.false.1350
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	shlq	$3, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB64_237
.LBB64_233:                             # %cond.true.1354
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB64_235
# BB#234:                               # %cond.true.1359
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -484(%rbp)        # 4-byte Spill
	jmp	.LBB64_236
.LBB64_235:                             # %cond.false.1362
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -484(%rbp)        # 4-byte Spill
.LBB64_236:                             # %cond.end.1367
	movl	-484(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -56(%rbp)
	testb	$1, %cl
	jne	.LBB64_401
	jmp	.LBB64_400
.LBB64_237:                             # %cond.false.1370
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB64_239
# BB#238:                               # %cond.true.1375
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -488(%rbp)        # 4-byte Spill
	jmp	.LBB64_240
.LBB64_239:                             # %cond.false.1378
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -488(%rbp)        # 4-byte Spill
.LBB64_240:                             # %cond.end.1383
	movl	-488(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -56(%rbp)
	testb	$1, %dl
	jne	.LBB64_401
	jmp	.LBB64_400
.LBB64_241:                             # %cond.false.1386
	movb	$1, %al
	testb	$1, %al
	jne	.LBB64_242
	jmp	.LBB64_321
.LBB64_242:                             # %cond.true.1387
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB64_243
	jmp	.LBB64_282
.LBB64_243:                             # %cond.true.1388
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB64_245
# BB#244:                               # %cond.true.1394
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
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
	movq	-16(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -496(%rbp)        # 8-byte Spill
	jmp	.LBB64_246
.LBB64_245:                             # %cond.false.1411
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
.LBB64_246:                             # %cond.end.1415
	movq	-496(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB64_248
# BB#247:                               # %land.lhs.true.1419
	cmpq	$0, -16(%rbp)
	jl	.LBB64_274
.LBB64_248:                             # %lor.lhs.false.1422
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB64_249
	jmp	.LBB64_260
.LBB64_249:                             # %cond.true.1423
	cmpq	$0, -16(%rbp)
	jge	.LBB64_254
# BB#250:                               # %cond.true.1426
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -504(%rbp)        # 8-byte Spill
	jge	.LBB64_252
# BB#251:                               # %cond.true.1432
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	jmp	.LBB64_253
.LBB64_252:                             # %cond.false.1440
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
.LBB64_253:                             # %cond.end.1444
	movq	-512(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -520(%rbp)        # 8-byte Spill
	cqto
	movq	-520(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-504(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB64_274
	jmp	.LBB64_271
.LBB64_254:                             # %cond.false.1449
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB64_255
	jmp	.LBB64_256
.LBB64_255:                             # %cond.true.1450
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB64_274
	jmp	.LBB64_271
.LBB64_256:                             # %cond.false.1451
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB64_258
# BB#257:                               # %cond.true.1457
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
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
	movq	-16(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -528(%rbp)        # 8-byte Spill
	jmp	.LBB64_259
.LBB64_258:                             # %cond.false.1474
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
.LBB64_259:                             # %cond.end.1478
	movq	-528(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -536(%rbp)        # 8-byte Spill
	cqto
	movq	-536(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-16(%rbp), %rax
	jl	.LBB64_274
	jmp	.LBB64_271
.LBB64_260:                             # %cond.false.1483
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB64_261
	jmp	.LBB64_262
.LBB64_261:                             # %cond.true.1484
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB64_274
	jmp	.LBB64_271
.LBB64_262:                             # %cond.false.1485
	cmpq	$0, -16(%rbp)
	jge	.LBB64_267
# BB#263:                               # %cond.true.1488
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -544(%rbp)        # 8-byte Spill
	jge	.LBB64_265
# BB#264:                               # %cond.true.1494
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
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
	movq	-16(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -552(%rbp)        # 8-byte Spill
	jmp	.LBB64_266
.LBB64_265:                             # %cond.false.1511
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
.LBB64_266:                             # %cond.end.1515
	movq	-552(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -560(%rbp)        # 8-byte Spill
	cqto
	movq	-560(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-544(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB64_274
	jmp	.LBB64_271
.LBB64_267:                             # %cond.false.1520
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB64_269
# BB#268:                               # %cond.true.1526
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
	jmp	.LBB64_270
.LBB64_269:                             # %cond.false.1534
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
.LBB64_270:                             # %cond.end.1538
	movq	-568(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -576(%rbp)        # 8-byte Spill
	cqto
	movq	-576(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-16(%rbp), %rax
	jl	.LBB64_274
.LBB64_271:                             # %lor.lhs.false.1543
	movq	-16(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB64_273
# BB#272:                               # %land.lhs.true.1549
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-16(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB64_274
.LBB64_273:                             # %lor.lhs.false.1553
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-16(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB64_278
.LBB64_274:                             # %cond.true.1557
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-16(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB64_276
# BB#275:                               # %cond.true.1561
	movq	-16(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
	jmp	.LBB64_277
.LBB64_276:                             # %cond.false.1563
	movq	-16(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
.LBB64_277:                             # %cond.end.1567
	movq	-584(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -56(%rbp)
	testb	$1, %cl
	jne	.LBB64_401
	jmp	.LBB64_400
.LBB64_278:                             # %cond.false.1569
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-16(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB64_280
# BB#279:                               # %cond.true.1573
	movq	-16(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -592(%rbp)        # 8-byte Spill
	jmp	.LBB64_281
.LBB64_280:                             # %cond.false.1575
	movq	-16(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -592(%rbp)        # 8-byte Spill
.LBB64_281:                             # %cond.end.1579
	movq	-592(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -56(%rbp)
	testb	$1, %dl
	jne	.LBB64_401
	jmp	.LBB64_400
.LBB64_282:                             # %cond.false.1581
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB64_284
# BB#283:                               # %cond.true.1587
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
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
	movq	-16(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -600(%rbp)        # 8-byte Spill
	jmp	.LBB64_285
.LBB64_284:                             # %cond.false.1604
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
.LBB64_285:                             # %cond.end.1608
	movq	-600(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB64_287
# BB#286:                               # %land.lhs.true.1612
	cmpq	$0, -16(%rbp)
	jl	.LBB64_313
.LBB64_287:                             # %lor.lhs.false.1615
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB64_288
	jmp	.LBB64_299
.LBB64_288:                             # %cond.true.1616
	cmpq	$0, -16(%rbp)
	jge	.LBB64_293
# BB#289:                               # %cond.true.1619
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -608(%rbp)        # 8-byte Spill
	jge	.LBB64_291
# BB#290:                               # %cond.true.1625
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
	jmp	.LBB64_292
.LBB64_291:                             # %cond.false.1633
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
.LBB64_292:                             # %cond.end.1637
	movq	-616(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -624(%rbp)        # 8-byte Spill
	cqto
	movq	-624(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-608(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB64_313
	jmp	.LBB64_310
.LBB64_293:                             # %cond.false.1642
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB64_294
	jmp	.LBB64_295
.LBB64_294:                             # %cond.true.1643
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB64_313
	jmp	.LBB64_310
.LBB64_295:                             # %cond.false.1644
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB64_297
# BB#296:                               # %cond.true.1650
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
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
	movq	-16(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -632(%rbp)        # 8-byte Spill
	jmp	.LBB64_298
.LBB64_297:                             # %cond.false.1667
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -632(%rbp)        # 8-byte Spill
.LBB64_298:                             # %cond.end.1671
	movq	-632(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -640(%rbp)        # 8-byte Spill
	cqto
	movq	-640(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-16(%rbp), %rax
	jl	.LBB64_313
	jmp	.LBB64_310
.LBB64_299:                             # %cond.false.1676
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB64_300
	jmp	.LBB64_301
.LBB64_300:                             # %cond.true.1677
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB64_313
	jmp	.LBB64_310
.LBB64_301:                             # %cond.false.1678
	cmpq	$0, -16(%rbp)
	jge	.LBB64_306
# BB#302:                               # %cond.true.1681
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -648(%rbp)        # 8-byte Spill
	jge	.LBB64_304
# BB#303:                               # %cond.true.1687
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
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
	movq	-16(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -656(%rbp)        # 8-byte Spill
	jmp	.LBB64_305
.LBB64_304:                             # %cond.false.1704
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -656(%rbp)        # 8-byte Spill
.LBB64_305:                             # %cond.end.1708
	movq	-656(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -664(%rbp)        # 8-byte Spill
	cqto
	movq	-664(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-648(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB64_313
	jmp	.LBB64_310
.LBB64_306:                             # %cond.false.1713
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB64_308
# BB#307:                               # %cond.true.1719
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -672(%rbp)        # 8-byte Spill
	jmp	.LBB64_309
.LBB64_308:                             # %cond.false.1727
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -672(%rbp)        # 8-byte Spill
.LBB64_309:                             # %cond.end.1731
	movq	-672(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -680(%rbp)        # 8-byte Spill
	cqto
	movq	-680(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-16(%rbp), %rax
	jl	.LBB64_313
.LBB64_310:                             # %lor.lhs.false.1736
	movq	-16(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB64_312
# BB#311:                               # %land.lhs.true.1742
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-16(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB64_313
.LBB64_312:                             # %lor.lhs.false.1746
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-16(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB64_317
.LBB64_313:                             # %cond.true.1750
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-16(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB64_315
# BB#314:                               # %cond.true.1754
	movq	-16(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -688(%rbp)        # 8-byte Spill
	jmp	.LBB64_316
.LBB64_315:                             # %cond.false.1756
	movq	-16(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -688(%rbp)        # 8-byte Spill
.LBB64_316:                             # %cond.end.1760
	movq	-688(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -56(%rbp)
	testb	$1, %cl
	jne	.LBB64_401
	jmp	.LBB64_400
.LBB64_317:                             # %cond.false.1762
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-16(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB64_319
# BB#318:                               # %cond.true.1766
	movq	-16(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -696(%rbp)        # 8-byte Spill
	jmp	.LBB64_320
.LBB64_319:                             # %cond.false.1768
	movq	-16(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -696(%rbp)        # 8-byte Spill
.LBB64_320:                             # %cond.end.1772
	movq	-696(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -56(%rbp)
	testb	$1, %dl
	jne	.LBB64_401
	jmp	.LBB64_400
.LBB64_321:                             # %cond.false.1774
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB64_322
	jmp	.LBB64_361
.LBB64_322:                             # %cond.true.1775
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB64_324
# BB#323:                               # %cond.true.1781
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
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
	movq	-16(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -704(%rbp)        # 8-byte Spill
	jmp	.LBB64_325
.LBB64_324:                             # %cond.false.1798
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -704(%rbp)        # 8-byte Spill
.LBB64_325:                             # %cond.end.1802
	movq	-704(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB64_327
# BB#326:                               # %land.lhs.true.1806
	cmpq	$0, -16(%rbp)
	jl	.LBB64_353
.LBB64_327:                             # %lor.lhs.false.1809
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB64_328
	jmp	.LBB64_339
.LBB64_328:                             # %cond.true.1810
	cmpq	$0, -16(%rbp)
	jge	.LBB64_333
# BB#329:                               # %cond.true.1813
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -712(%rbp)        # 8-byte Spill
	jge	.LBB64_331
# BB#330:                               # %cond.true.1819
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -720(%rbp)        # 8-byte Spill
	jmp	.LBB64_332
.LBB64_331:                             # %cond.false.1827
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -720(%rbp)        # 8-byte Spill
.LBB64_332:                             # %cond.end.1831
	movq	-720(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -728(%rbp)        # 8-byte Spill
	cqto
	movq	-728(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-712(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB64_353
	jmp	.LBB64_350
.LBB64_333:                             # %cond.false.1836
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB64_334
	jmp	.LBB64_335
.LBB64_334:                             # %cond.true.1837
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB64_353
	jmp	.LBB64_350
.LBB64_335:                             # %cond.false.1838
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB64_337
# BB#336:                               # %cond.true.1844
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
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
	movq	-16(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -736(%rbp)        # 8-byte Spill
	jmp	.LBB64_338
.LBB64_337:                             # %cond.false.1861
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -736(%rbp)        # 8-byte Spill
.LBB64_338:                             # %cond.end.1865
	movq	-736(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -744(%rbp)        # 8-byte Spill
	cqto
	movq	-744(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-16(%rbp), %rax
	jl	.LBB64_353
	jmp	.LBB64_350
.LBB64_339:                             # %cond.false.1870
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB64_340
	jmp	.LBB64_341
.LBB64_340:                             # %cond.true.1871
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB64_353
	jmp	.LBB64_350
.LBB64_341:                             # %cond.false.1872
	cmpq	$0, -16(%rbp)
	jge	.LBB64_346
# BB#342:                               # %cond.true.1875
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -752(%rbp)        # 8-byte Spill
	jge	.LBB64_344
# BB#343:                               # %cond.true.1881
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
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
	movq	-16(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -760(%rbp)        # 8-byte Spill
	jmp	.LBB64_345
.LBB64_344:                             # %cond.false.1898
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -760(%rbp)        # 8-byte Spill
.LBB64_345:                             # %cond.end.1902
	movq	-760(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -768(%rbp)        # 8-byte Spill
	cqto
	movq	-768(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-752(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB64_353
	jmp	.LBB64_350
.LBB64_346:                             # %cond.false.1907
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB64_348
# BB#347:                               # %cond.true.1913
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -776(%rbp)        # 8-byte Spill
	jmp	.LBB64_349
.LBB64_348:                             # %cond.false.1921
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -776(%rbp)        # 8-byte Spill
.LBB64_349:                             # %cond.end.1925
	movq	-776(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -784(%rbp)        # 8-byte Spill
	cqto
	movq	-784(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-16(%rbp), %rax
	jl	.LBB64_353
.LBB64_350:                             # %lor.lhs.false.1930
	movq	-16(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB64_352
# BB#351:                               # %land.lhs.true.1936
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-16(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB64_353
.LBB64_352:                             # %lor.lhs.false.1940
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-16(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB64_357
.LBB64_353:                             # %cond.true.1944
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-16(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB64_355
# BB#354:                               # %cond.true.1948
	movq	-16(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -792(%rbp)        # 8-byte Spill
	jmp	.LBB64_356
.LBB64_355:                             # %cond.false.1950
	movq	-16(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -792(%rbp)        # 8-byte Spill
.LBB64_356:                             # %cond.end.1954
	movq	-792(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -56(%rbp)
	testb	$1, %cl
	jne	.LBB64_401
	jmp	.LBB64_400
.LBB64_357:                             # %cond.false.1956
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-16(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB64_359
# BB#358:                               # %cond.true.1960
	movq	-16(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -800(%rbp)        # 8-byte Spill
	jmp	.LBB64_360
.LBB64_359:                             # %cond.false.1962
	movq	-16(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -800(%rbp)        # 8-byte Spill
.LBB64_360:                             # %cond.end.1966
	movq	-800(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -56(%rbp)
	testb	$1, %dl
	jne	.LBB64_401
	jmp	.LBB64_400
.LBB64_361:                             # %cond.false.1968
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB64_363
# BB#362:                               # %cond.true.1974
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
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
	movq	-16(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -808(%rbp)        # 8-byte Spill
	jmp	.LBB64_364
.LBB64_363:                             # %cond.false.1991
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -808(%rbp)        # 8-byte Spill
.LBB64_364:                             # %cond.end.1995
	movq	-808(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB64_366
# BB#365:                               # %land.lhs.true.1999
	cmpq	$0, -16(%rbp)
	jl	.LBB64_392
.LBB64_366:                             # %lor.lhs.false.2002
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB64_367
	jmp	.LBB64_378
.LBB64_367:                             # %cond.true.2003
	cmpq	$0, -16(%rbp)
	jge	.LBB64_372
# BB#368:                               # %cond.true.2006
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -816(%rbp)        # 8-byte Spill
	jge	.LBB64_370
# BB#369:                               # %cond.true.2012
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -824(%rbp)        # 8-byte Spill
	jmp	.LBB64_371
.LBB64_370:                             # %cond.false.2020
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -824(%rbp)        # 8-byte Spill
.LBB64_371:                             # %cond.end.2024
	movq	-824(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -832(%rbp)        # 8-byte Spill
	cqto
	movq	-832(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-816(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB64_392
	jmp	.LBB64_389
.LBB64_372:                             # %cond.false.2029
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB64_373
	jmp	.LBB64_374
.LBB64_373:                             # %cond.true.2030
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB64_392
	jmp	.LBB64_389
.LBB64_374:                             # %cond.false.2031
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB64_376
# BB#375:                               # %cond.true.2037
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
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
	movq	-16(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -840(%rbp)        # 8-byte Spill
	jmp	.LBB64_377
.LBB64_376:                             # %cond.false.2054
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -840(%rbp)        # 8-byte Spill
.LBB64_377:                             # %cond.end.2058
	movq	-840(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -848(%rbp)        # 8-byte Spill
	cqto
	movq	-848(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-16(%rbp), %rax
	jl	.LBB64_392
	jmp	.LBB64_389
.LBB64_378:                             # %cond.false.2063
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB64_379
	jmp	.LBB64_380
.LBB64_379:                             # %cond.true.2064
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB64_392
	jmp	.LBB64_389
.LBB64_380:                             # %cond.false.2065
	cmpq	$0, -16(%rbp)
	jge	.LBB64_385
# BB#381:                               # %cond.true.2068
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -856(%rbp)        # 8-byte Spill
	jge	.LBB64_383
# BB#382:                               # %cond.true.2074
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
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
	movq	-16(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -864(%rbp)        # 8-byte Spill
	jmp	.LBB64_384
.LBB64_383:                             # %cond.false.2091
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -864(%rbp)        # 8-byte Spill
.LBB64_384:                             # %cond.end.2095
	movq	-864(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -872(%rbp)        # 8-byte Spill
	cqto
	movq	-872(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-856(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB64_392
	jmp	.LBB64_389
.LBB64_385:                             # %cond.false.2100
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB64_387
# BB#386:                               # %cond.true.2106
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -880(%rbp)        # 8-byte Spill
	jmp	.LBB64_388
.LBB64_387:                             # %cond.false.2114
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -880(%rbp)        # 8-byte Spill
.LBB64_388:                             # %cond.end.2118
	movq	-880(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -888(%rbp)        # 8-byte Spill
	cqto
	movq	-888(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-16(%rbp), %rax
	jl	.LBB64_392
.LBB64_389:                             # %lor.lhs.false.2123
	movq	-16(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB64_391
# BB#390:                               # %land.lhs.true.2129
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-16(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB64_392
.LBB64_391:                             # %lor.lhs.false.2133
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-16(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB64_396
.LBB64_392:                             # %cond.true.2137
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-16(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB64_394
# BB#393:                               # %cond.true.2141
	movq	-16(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -896(%rbp)        # 8-byte Spill
	jmp	.LBB64_395
.LBB64_394:                             # %cond.false.2143
	movq	-16(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -896(%rbp)        # 8-byte Spill
.LBB64_395:                             # %cond.end.2147
	movq	-896(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -56(%rbp)
	testb	$1, %cl
	jne	.LBB64_401
	jmp	.LBB64_400
.LBB64_396:                             # %cond.false.2149
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-16(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB64_398
# BB#397:                               # %cond.true.2153
	movq	-16(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -904(%rbp)        # 8-byte Spill
	jmp	.LBB64_399
.LBB64_398:                             # %cond.false.2155
	movq	-16(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -904(%rbp)        # 8-byte Spill
.LBB64_399:                             # %cond.end.2159
	movq	-904(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -56(%rbp)
	testb	$1, %dl
	jne	.LBB64_401
.LBB64_400:                             # %lor.lhs.false.2161
	movq	$-1, %rax
	cmpq	-56(%rbp), %rax
	jae	.LBB64_402
.LBB64_401:                             # %if.then
	movq	$-1, %rdi
	callq	memory_full
.LBB64_402:                             # %if.else
	movq	-56(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jg	.LBB64_404
# BB#403:                               # %if.then.2166
	movq	-56(%rbp), %rax
	movq	-32(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -32(%rbp)
	movq	-56(%rbp), %rax
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -24(%rbp)
	jmp	.LBB64_405
.LBB64_404:                             # %if.else.2168
	movq	-56(%rbp), %rdi
	callq	xmalloc
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	make_save_memory
	movabsq	$free_save_value, %rdi
	movq	%rax, -64(%rbp)
	movb	$1, -41(%rbp)
	movq	-64(%rbp), %rsi
	callq	record_unwind_protect
.LBB64_405:                             # %if.end
	jmp	.LBB64_406
.LBB64_406:                             # %if.end.2171
	jmp	.LBB64_407
.LBB64_407:                             # %do.end
	movq	$0, -72(%rbp)
.LBB64_408:                             # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-72(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jge	.LBB64_411
# BB#409:                               # %for.body
                                        #   in Loop: Header=BB64_408 Depth=1
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	-72(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
# BB#410:                               # %for.inc
                                        #   in Loop: Header=BB64_408 Depth=1
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB64_408
.LBB64_411:                             # %for.end
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	Fvconcat
	movq	%rax, -80(%rbp)
# BB#412:                               # %do.body.2177
	testb	$1, -41(%rbp)
	je	.LBB64_414
# BB#413:                               # %if.then.2178
	xorl	%edi, %edi
	movb	$0, -41(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -912(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-912(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -920(%rbp)        # 8-byte Spill
.LBB64_414:                             # %if.end.2181
	jmp	.LBB64_415
.LBB64_415:                             # %do.end.2182
	movq	-80(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end64:
	.size	font_vconcat_entity_vectors, .Lfunc_end64-font_vconcat_entity_vectors
	.cfi_endproc

	.globl	Ffont_family_list
	.align	16, 0x90
	.type	Ffont_family_list,@function
Ffont_family_list:                      # @Ffont_family_list
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp200:
	.cfi_def_cfa_offset 16
.Ltmp201:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp202:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_live_frame
	xorl	%edi, %edi
	movq	%rax, -16(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	392(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB65_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB65_4 Depth 2
	cmpq	$0, -24(%rbp)
	je	.LBB65_13
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB65_1 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$0, 40(%rax)
	je	.LBB65_11
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB65_1 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	40(%rax), %rax
	movq	-16(%rbp), %rdi
	callq	*%rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB65_4:                               # %for.cond.6
                                        #   Parent Loop BB65_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB65_10
# BB#5:                                 # %for.body.8
                                        #   in Loop: Header=BB65_4 Depth=2
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	movq	-48(%rbp), %rsi
	callq	Fmemq
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB65_8
# BB#6:                                 # %land.lhs.true
                                        #   in Loop: Header=BB65_4 Depth=2
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB65_8
# BB#7:                                 # %if.then.19
                                        #   in Loop: Header=BB65_4 Depth=2
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	SYMBOL_NAME
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -32(%rbp)
.LBB65_8:                               # %if.end
                                        #   in Loop: Header=BB65_4 Depth=2
	jmp	.LBB65_9
.LBB65_9:                               # %for.inc
                                        #   in Loop: Header=BB65_4 Depth=2
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB65_4
.LBB65_10:                              # %for.end
                                        #   in Loop: Header=BB65_1 Depth=1
	jmp	.LBB65_11
.LBB65_11:                              # %if.end.25
                                        #   in Loop: Header=BB65_1 Depth=1
	jmp	.LBB65_12
.LBB65_12:                              # %for.inc.26
                                        #   in Loop: Header=BB65_1 Depth=1
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB65_1
.LBB65_13:                              # %for.end.27
	movq	-32(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end65:
	.size	Ffont_family_list, .Lfunc_end65-Ffont_family_list
	.cfi_endproc

	.globl	Ffind_font
	.align	16, 0x90
	.type	Ffind_font,@function
Ffind_font:                             # @Ffind_font
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp203:
	.cfi_def_cfa_offset 16
.Ltmp204:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp205:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$6, %edi
	movl	%edi, %edx
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rcx
	callq	Flist_fonts
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %r8d
	cmpl	$3, %r8d
	jne	.LBB66_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB66_2:                               # %if.end
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end66:
	.size	Ffind_font, .Lfunc_end66-Ffind_font
	.cfi_endproc

	.globl	Ffont_xlfd_name
	.align	16, 0x90
	.type	Ffont_xlfd_name,@function
Ffont_xlfd_name:                        # @Ffont_xlfd_name
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp206:
	.cfi_def_cfa_offset 16
.Ltmp207:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp208:
	.cfi_def_cfa_register %rbp
	subq	$352, %rsp              # imm = 0x160
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$0, -296(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHECK_FONT
	movq	-16(%rbp), %rdi
	callq	FONT_OBJECT_P
	testb	$1, %al
	jne	.LBB67_1
	jmp	.LBB67_7
.LBB67_1:                               # %if.then
	movl	$14, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	AREF
	movq	%rax, -304(%rbp)
	movq	-304(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB67_2
	jmp	.LBB67_6
.LBB67_2:                               # %land.lhs.true
	movq	-304(%rbp), %rdi
	callq	SDATA
	movzbl	(%rax), %ecx
	cmpl	$45, %ecx
	jne	.LBB67_6
# BB#3:                                 # %if.then.5
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-328(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB67_5
# BB#4:                                 # %if.then.9
	movq	-304(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB67_16
.LBB67_5:                               # %if.end
	leaq	-288(%rbp), %rdi
	movq	-304(%rbp), %rsi
	callq	lispstpcpy
	movq	-304(%rbp), %rdi
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	SBYTES
	movl	%eax, %ecx
	movl	%ecx, -292(%rbp)
	jmp	.LBB67_10
.LBB67_6:                               # %if.end.13
	movq	-16(%rbp), %rdi
	callq	XFONT_OBJECT
	movl	152(%rax), %ecx
	movl	%ecx, -296(%rbp)
.LBB67_7:                               # %if.end.16
	movl	$256, %ecx              # imm = 0x100
	leaq	-288(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movl	-296(%rbp), %esi
	callq	font_unparse_xlfd
	movl	%eax, %ecx
	movl	%ecx, -292(%rbp)
	cmpl	$0, -292(%rbp)
	jge	.LBB67_9
# BB#8:                                 # %if.then.22
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB67_16
.LBB67_9:                               # %if.end.24
	jmp	.LBB67_10
.LBB67_10:                              # %done
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-344(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB67_15
# BB#11:                                # %if.then.28
	leaq	-288(%rbp), %rax
	movq	%rax, -312(%rbp)
.LBB67_12:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movabsq	$.L.str.31, %rsi
	movq	-312(%rbp), %rdi
	callq	strstr
	movq	%rax, -320(%rbp)
	cmpq	$0, %rax
	je	.LBB67_14
# BB#13:                                # %while.body
                                        #   in Loop: Header=BB67_12 Depth=1
	movq	-320(%rbp), %rdi
	movq	-320(%rbp), %rax
	addq	$2, %rax
	movq	%rax, %rsi
	callq	strcpy
	movl	-292(%rbp), %ecx
	subl	$2, %ecx
	movl	%ecx, -292(%rbp)
	movq	-320(%rbp), %rsi
	movq	%rsi, -312(%rbp)
	movq	%rax, -352(%rbp)        # 8-byte Spill
	jmp	.LBB67_12
.LBB67_14:                              # %while.end
	jmp	.LBB67_15
.LBB67_15:                              # %if.end.32
	leaq	-288(%rbp), %rdi
	movslq	-292(%rbp), %rsi
	callq	make_string
	movq	%rax, -8(%rbp)
.LBB67_16:                              # %return
	movq	-8(%rbp), %rax
	addq	$352, %rsp              # imm = 0x160
	popq	%rbp
	retq
.Lfunc_end67:
	.size	Ffont_xlfd_name, .Lfunc_end67-Ffont_xlfd_name
	.cfi_endproc

	.globl	clear_font_cache
	.align	16, 0x90
	.type	clear_font_cache,@function
clear_font_cache:                       # @clear_font_cache
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp209:
	.cfi_def_cfa_offset 16
.Ltmp210:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp211:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	392(%rdi), %rdi
	movq	%rdi, -16(%rbp)
.LBB68_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB68_4 Depth 2
	cmpq	$0, -16(%rbp)
	je	.LBB68_13
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB68_1 Depth=1
	movq	-16(%rbp), %rax
	testb	$1, (%rax)
	je	.LBB68_11
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB68_1 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB68_4:                               # %while.cond
                                        #   Parent Loop BB68_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movb	%dil, %cl
	movq	-48(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	movb	%cl, -49(%rbp)          # 1-byte Spill
	je	.LBB68_6
# BB#5:                                 # %land.rhs
                                        #   in Loop: Header=BB68_4 Depth=2
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	cmpq	(%rcx), %rax
	sete	%dl
	xorb	$-1, %dl
	movb	%dl, -49(%rbp)          # 1-byte Spill
.LBB68_6:                               # %land.end
                                        #   in Loop: Header=BB68_4 Depth=2
	movb	-49(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB68_7
	jmp	.LBB68_8
.LBB68_7:                               # %while.body
                                        #   in Loop: Header=BB68_4 Depth=2
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB68_4
.LBB68_8:                               # %while.end
                                        #   in Loop: Header=BB68_1 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jne	.LBB68_10
# BB#9:                                 # %if.then.20
                                        #   in Loop: Header=BB68_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	callq	font_clear_cache
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rsi
	callq	XSETCDR
.LBB68_10:                              # %if.end
                                        #   in Loop: Header=BB68_1 Depth=1
	jmp	.LBB68_11
.LBB68_11:                              # %if.end.27
                                        #   in Loop: Header=BB68_1 Depth=1
	jmp	.LBB68_12
.LBB68_12:                              # %for.inc
                                        #   in Loop: Header=BB68_1 Depth=1
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB68_1
.LBB68_13:                              # %for.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end68:
	.size	clear_font_cache, .Lfunc_end68-clear_font_cache
	.cfi_endproc

	.align	16, 0x90
	.type	font_clear_cache,@function
font_clear_cache:                       # @font_clear_cache
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp212:
	.cfi_def_cfa_offset 16
.Ltmp213:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp214:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	subq	$3, %rdx
	movq	8(%rdx), %rdx
	subq	$3, %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, -32(%rbp)
.LBB69_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB69_5 Depth 2
                                        #       Child Loop BB69_9 Depth 3
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB69_22
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB69_1 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB69_20
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB69_1 Depth=1
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	FONT_SPEC_P
	testb	$1, %al
	jne	.LBB69_4
	jmp	.LBB69_20
.LBB69_4:                               # %if.then
                                        #   in Loop: Header=BB69_1 Depth=1
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	$0, -56(%rbp)
.LBB69_5:                               # %for.cond.16
                                        #   Parent Loop BB69_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB69_9 Depth 3
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	ASIZE
	movq	-88(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	jge	.LBB69_19
# BB#6:                                 # %for.body.20
                                        #   in Loop: Header=BB69_5 Depth=2
	movq	-40(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	AREF
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	FONT_ENTITY_P
	testb	$1, %al
	jne	.LBB69_7
	jmp	.LBB69_17
.LBB69_7:                               # %land.lhs.true.24
                                        #   in Loop: Header=BB69_5 Depth=2
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-48(%rbp), %rdi
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	callq	AREF
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB69_17
# BB#8:                                 # %if.then.28
                                        #   in Loop: Header=BB69_5 Depth=2
	movl	$13, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	callq	AREF
	movq	%rax, -64(%rbp)
.LBB69_9:                               # %for.cond.30
                                        #   Parent Loop BB69_1 Depth=1
                                        #     Parent Loop BB69_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-64(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB69_14
# BB#10:                                # %for.body.35
                                        #   in Loop: Header=BB69_9 Depth=3
	movq	-64(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	XFONT_OBJECT
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rdi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB69_12
# BB#11:                                # %if.then.43
                                        #   in Loop: Header=BB69_9 Depth=3
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	-80(%rbp), %rdi
	callq	*%rax
.LBB69_12:                              # %if.end
                                        #   in Loop: Header=BB69_9 Depth=3
	jmp	.LBB69_13
.LBB69_13:                              # %for.inc
                                        #   in Loop: Header=BB69_9 Depth=3
	movq	-64(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB69_9
.LBB69_14:                              # %for.end
                                        #   in Loop: Header=BB69_5 Depth=2
	movq	-24(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB69_16
# BB#15:                                # %if.then.47
                                        #   in Loop: Header=BB69_5 Depth=2
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	-48(%rbp), %rdi
	callq	*%rax
.LBB69_16:                              # %if.end.49
                                        #   in Loop: Header=BB69_5 Depth=2
	jmp	.LBB69_17
.LBB69_17:                              # %if.end.50
                                        #   in Loop: Header=BB69_5 Depth=2
	jmp	.LBB69_18
.LBB69_18:                              # %for.inc.51
                                        #   in Loop: Header=BB69_5 Depth=2
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB69_5
.LBB69_19:                              # %for.end.52
                                        #   in Loop: Header=BB69_1 Depth=1
	jmp	.LBB69_20
.LBB69_20:                              # %if.end.53
                                        #   in Loop: Header=BB69_1 Depth=1
	jmp	.LBB69_21
.LBB69_21:                              # %for.inc.54
                                        #   in Loop: Header=BB69_1 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB69_1
.LBB69_22:                              # %for.end.58
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	XSETCDR
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end69:
	.size	font_clear_cache, .Lfunc_end69-font_clear_cache
	.cfi_endproc

	.globl	Fclear_font_cache
	.align	16, 0x90
	.type	Fclear_font_cache,@function
Fclear_font_cache:                      # @Fclear_font_cache
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp215:
	.cfi_def_cfa_offset 16
.Ltmp216:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp217:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	Vframe_list, %rax
	movq	%rax, -8(%rbp)
.LBB70_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -17(%rbp)          # 1-byte Spill
	jne	.LBB70_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB70_1 Depth=1
	movb	$1, %al
	movq	-8(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -16(%rbp)
	movb	%al, -17(%rbp)          # 1-byte Spill
.LBB70_3:                               # %land.end
                                        #   in Loop: Header=BB70_1 Depth=1
	movb	-17(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB70_4
	jmp	.LBB70_6
.LBB70_4:                               # %for.body
                                        #   in Loop: Header=BB70_1 Depth=1
	movq	-16(%rbp), %rax
	subq	$5, %rax
	movq	%rax, %rdi
	callq	clear_font_cache
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB70_1 Depth=1
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB70_1
.LBB70_6:                               # %for.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end70:
	.size	Fclear_font_cache, .Lfunc_end70-Fclear_font_cache
	.cfi_endproc

	.globl	font_fill_lglyph_metrics
	.align	16, 0x90
	.type	font_fill_lglyph_metrics,@function
font_fill_lglyph_metrics:               # @font_fill_lglyph_metrics
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp218:
	.cfi_def_cfa_offset 16
.Ltmp219:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp220:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	XFONT_OBJECT
	movl	$2, %ecx
	movl	%ecx, %esi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	96(%rax), %rax
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	AREF
	sarq	$2, %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	%ecx, %esi
	movq	-56(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	movl	%eax, -28(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$-1, -28(%rbp)
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	jne	.LBB71_2
# BB#1:                                 # %cond.true
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB71_11
.LBB71_2:                               # %cond.false
	xorl	%eax, %eax
	cmpl	-28(%rbp), %eax
	jbe	.LBB71_4
# BB#3:                                 # %lor.lhs.false
	movabsq	$-2305843009213693952, %rax # imm = 0xE000000000000000
	movl	-28(%rbp), %ecx
	movl	%ecx, %edx
	cmpq	%rdx, %rax
	jg	.LBB71_6
.LBB71_4:                               # %land.lhs.true
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	movl	-28(%rbp), %ecx
	movl	%ecx, %edx
	cmpq	%rax, %rdx
	jg	.LBB71_6
# BB#5:                                 # %cond.true.13
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB71_10
.LBB71_6:                               # %cond.false.15
	imull	$0, -28(%rbp), %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jae	.LBB71_8
# BB#7:                                 # %cond.true.18
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	callq	intbig_to_lisp
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB71_9
.LBB71_8:                               # %cond.false.21
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	callq	uintbig_to_lisp
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB71_9:                               # %cond.end
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB71_10:                              # %cond.end.24
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB71_11:                              # %cond.end.26
	movq	-72(%rbp), %rax         # 8-byte Reload
	movl	$3, %ecx
	movl	%ecx, %esi
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	leaq	-28(%rbp), %rsi
	movl	$1, %edx
	leaq	-40(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	104(%rax), %rax
	movq	-24(%rbp), %rdi
	callq	*%rax
	movl	$5, %edx
	movl	%edx, %esi
	movq	-8(%rbp), %rdi
	movswq	-40(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdx
	callq	ASET
	movl	$6, %r8d
	movl	%r8d, %esi
	movq	-8(%rbp), %rdi
	movswq	-38(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdx
	callq	ASET
	movl	$4, %r8d
	movl	%r8d, %esi
	movq	-8(%rbp), %rdi
	movswq	-36(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdx
	callq	ASET
	movl	$7, %r8d
	movl	%r8d, %esi
	movq	-8(%rbp), %rdi
	movswq	-34(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdx
	callq	ASET
	movl	$8, %r8d
	movl	%r8d, %esi
	movq	-8(%rbp), %rdi
	movswq	-32(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdx
	callq	ASET
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end71:
	.size	font_fill_lglyph_metrics, .Lfunc_end71-font_fill_lglyph_metrics
	.cfi_endproc

	.globl	Ffont_shape_gstring
	.align	16, 0x90
	.type	Ffont_shape_gstring,@function
Ffont_shape_gstring:                    # @Ffont_shape_gstring
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp221:
	.cfi_def_cfa_offset 16
.Ltmp222:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp223:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	composition_gstring_p
	testb	$1, %al
	jne	.LBB72_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.32, %rdi
	movq	-16(%rbp), %rsi
	callq	signal_error
.LBB72_2:                               # %if.end
	movl	$1, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB72_4
# BB#3:                                 # %if.then.3
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB72_33
.LBB72_4:                               # %if.end.4
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	AREF
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	CHECK_FONT_OBJECT
	movq	-32(%rbp), %rdi
	callq	XFONT_OBJECT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	cmpq	$0, 176(%rax)
	jne	.LBB72_6
# BB#5:                                 # %if.then.8
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB72_33
.LBB72_6:                               # %if.end.10
	movq	$0, -56(%rbp)
.LBB72_7:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$3, -56(%rbp)
	jge	.LBB72_12
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB72_7 Depth=1
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	176(%rax), %rax
	movq	-16(%rbp), %rdi
	callq	*%rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB72_10
# BB#9:                                 # %if.then.18
	jmp	.LBB72_12
.LBB72_10:                              # %if.end.19
                                        #   in Loop: Header=BB72_7 Depth=1
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	ASIZE
	movq	$-1, %rdx
	subq	$2, %rax
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	larger_vector
	movq	%rax, -16(%rbp)
# BB#11:                                # %for.inc
                                        #   in Loop: Header=BB72_7 Depth=1
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB72_7
.LBB72_12:                              # %for.end
	cmpq	$3, -56(%rbp)
	je	.LBB72_14
# BB#13:                                # %lor.lhs.false
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jne	.LBB72_15
.LBB72_14:                              # %if.then.26
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB72_33
.LBB72_15:                              # %if.end.28
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	ASIZE
	subq	$2, %rax
	movq	-96(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	jge	.LBB72_17
# BB#16:                                # %if.then.34
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rcx
	sarq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
.LBB72_17:                              # %if.end.37
	movl	$2, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	AREF
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	AREF
	movl	$1, %ecx
	movl	%ecx, %esi
	sarq	$2, %rax
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rdi
	callq	AREF
	sarq	$2, %rax
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB72_19
# BB#18:                                # %lor.lhs.false.45
	movq	-72(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jge	.LBB72_20
.LBB72_19:                              # %if.then.48
	jmp	.LBB72_32
.LBB72_20:                              # %if.end.49
	movq	$1, -56(%rbp)
.LBB72_21:                              # %for.cond.50
                                        # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	ASIZE
	subq	$2, %rax
	movq	-120(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jge	.LBB72_31
# BB#22:                                # %for.body.55
                                        #   in Loop: Header=BB72_21 Depth=1
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rax
	addq	$2, %rax
	movq	%rax, %rsi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB72_24
# BB#23:                                # %if.then.61
	jmp	.LBB72_31
.LBB72_24:                              # %if.end.62
                                        #   in Loop: Header=BB72_21 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	callq	AREF
	movl	$1, %ecx
	movl	%ecx, %esi
	sarq	$2, %rax
	movq	-48(%rbp), %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	AREF
	sarq	$2, %rax
	movq	-136(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jg	.LBB72_28
# BB#25:                                # %land.lhs.true
                                        #   in Loop: Header=BB72_21 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	callq	AREF
	sarq	$2, %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB72_27
# BB#26:                                # %cond.true
                                        #   in Loop: Header=BB72_21 Depth=1
	movl	$1, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	callq	AREF
	sarq	$2, %rax
	cmpq	-72(%rbp), %rax
	je	.LBB72_29
	jmp	.LBB72_28
.LBB72_27:                              # %cond.false
                                        #   in Loop: Header=BB72_21 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	callq	AREF
	sarq	$2, %rax
	movq	-72(%rbp), %rsi
	addq	$1, %rsi
	cmpq	%rsi, %rax
	je	.LBB72_29
.LBB72_28:                              # %if.then.82
	jmp	.LBB72_32
.LBB72_29:                              # %if.end.83
                                        #   in Loop: Header=BB72_21 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	callq	AREF
	movl	$1, %ecx
	movl	%ecx, %esi
	sarq	$2, %rax
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rdi
	callq	AREF
	sarq	$2, %rax
	movq	%rax, -72(%rbp)
# BB#30:                                # %for.inc.88
                                        #   in Loop: Header=BB72_21 Depth=1
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB72_21
.LBB72_31:                              # %for.end.90
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, %rsi
	callq	composition_gstring_put_cache
	movq	%rax, -8(%rbp)
	jmp	.LBB72_33
.LBB72_32:                              # %shaper_error
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB72_33:                              # %return
	movq	-8(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end72:
	.size	Ffont_shape_gstring, .Lfunc_end72-Ffont_shape_gstring
	.cfi_endproc

	.globl	Ffont_variation_glyphs
	.align	16, 0x90
	.type	Ffont_variation_glyphs,@function
Ffont_variation_glyphs:                 # @Ffont_variation_glyphs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp224:
	.cfi_def_cfa_offset 16
.Ltmp225:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp226:
	.cfi_def_cfa_register %rbp
	subq	$1136, %rsp             # imm = 0x470
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHECK_FONT_OBJECT
	movq	-24(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB73_1
	jmp	.LBB73_3
.LBB73_1:                               # %land.lhs.true
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jg	.LBB73_3
# BB#2:                                 # %cond.true
	jmp	.LBB73_4
.LBB73_3:                               # %cond.false
	movl	$260, %edi              # imm = 0x104
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -1104(%rbp)       # 8-byte Spill
.LBB73_4:                               # %cond.end
	movq	-16(%rbp), %rdi
	callq	XFONT_OBJECT
	movq	%rax, -1064(%rbp)
	movq	-1064(%rbp), %rax
	movq	208(%rax), %rax
	cmpq	$0, 192(%rax)
	jne	.LBB73_6
# BB#5:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB73_26
.LBB73_6:                               # %if.end
	leaq	-1056(%rbp), %rdx
	movq	-1064(%rbp), %rax
	movq	208(%rax), %rax
	movq	192(%rax), %rax
	movq	-1064(%rbp), %rdi
	movq	-24(%rbp), %rcx
	sarq	$2, %rcx
	movl	%ecx, %esi
	callq	*%rax
	movl	%eax, -1072(%rbp)
	cmpl	$0, -1072(%rbp)
	jne	.LBB73_8
# BB#7:                                 # %if.then.9
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB73_26
.LBB73_8:                               # %if.end.11
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -1080(%rbp)
	movl	$0, -1068(%rbp)
.LBB73_9:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$255, -1068(%rbp)
	jge	.LBB73_25
# BB#10:                                # %for.body
                                        #   in Loop: Header=BB73_9 Depth=1
	movslq	-1068(%rbp), %rax
	cmpl	$0, -1056(%rbp,%rax,4)
	je	.LBB73_23
# BB#11:                                # %if.then.16
                                        #   in Loop: Header=BB73_9 Depth=1
	cmpl	$16, -1068(%rbp)
	jge	.LBB73_13
# BB#12:                                # %cond.true.19
                                        #   in Loop: Header=BB73_9 Depth=1
	movl	-1068(%rbp), %eax
	addl	$65024, %eax            # imm = 0xFE00
	movl	%eax, -1108(%rbp)       # 4-byte Spill
	jmp	.LBB73_14
.LBB73_13:                              # %cond.false.20
                                        #   in Loop: Header=BB73_9 Depth=1
	movl	-1068(%rbp), %eax
	subl	$16, %eax
	addl	$917760, %eax           # imm = 0xE0100
	movl	%eax, -1108(%rbp)       # 4-byte Spill
.LBB73_14:                              # %cond.end.22
                                        #   in Loop: Header=BB73_9 Depth=1
	movl	-1108(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movl	%eax, -1084(%rbp)
	movslq	-1068(%rbp), %rdx
	cmpl	-1056(%rbp,%rdx,4), %ecx
	jbe	.LBB73_16
# BB#15:                                # %lor.lhs.false
                                        #   in Loop: Header=BB73_9 Depth=1
	movabsq	$-2305843009213693952, %rax # imm = 0xE000000000000000
	movslq	-1068(%rbp), %rcx
	movl	-1056(%rbp,%rcx,4), %edx
	movl	%edx, %ecx
	cmpq	%rcx, %rax
	jg	.LBB73_18
.LBB73_16:                              # %land.lhs.true.32
                                        #   in Loop: Header=BB73_9 Depth=1
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	movslq	-1068(%rbp), %rcx
	movl	-1056(%rbp,%rcx,4), %edx
	movl	%edx, %ecx
	cmpq	%rax, %rcx
	jg	.LBB73_18
# BB#17:                                # %cond.true.38
                                        #   in Loop: Header=BB73_9 Depth=1
	movslq	-1068(%rbp), %rax
	movl	-1056(%rbp,%rax,4), %ecx
	movl	%ecx, %eax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -1120(%rbp)       # 8-byte Spill
	jmp	.LBB73_22
.LBB73_18:                              # %cond.false.43
                                        #   in Loop: Header=BB73_9 Depth=1
	movslq	-1068(%rbp), %rax
	imull	$0, -1056(%rbp,%rax,4), %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jae	.LBB73_20
# BB#19:                                # %cond.true.49
                                        #   in Loop: Header=BB73_9 Depth=1
	movslq	-1068(%rbp), %rax
	movl	-1056(%rbp,%rax,4), %ecx
	movl	%ecx, %edi
	callq	intbig_to_lisp
	movq	%rax, -1128(%rbp)       # 8-byte Spill
	jmp	.LBB73_21
.LBB73_20:                              # %cond.false.54
                                        #   in Loop: Header=BB73_9 Depth=1
	movslq	-1068(%rbp), %rax
	movl	-1056(%rbp,%rax,4), %ecx
	movl	%ecx, %edi
	callq	uintbig_to_lisp
	movq	%rax, -1128(%rbp)       # 8-byte Spill
.LBB73_21:                              # %cond.end.59
                                        #   in Loop: Header=BB73_9 Depth=1
	movq	-1128(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1120(%rbp)       # 8-byte Spill
.LBB73_22:                              # %cond.end.61
                                        #   in Loop: Header=BB73_9 Depth=1
	movq	-1120(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1096(%rbp)
	movslq	-1084(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-1096(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	-1080(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -1080(%rbp)
.LBB73_23:                              # %if.end.68
                                        #   in Loop: Header=BB73_9 Depth=1
	jmp	.LBB73_24
.LBB73_24:                              # %for.inc
                                        #   in Loop: Header=BB73_9 Depth=1
	movl	-1068(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1068(%rbp)
	jmp	.LBB73_9
.LBB73_25:                              # %for.end
	movq	-1080(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB73_26:                              # %return
	movq	-8(%rbp), %rax
	addq	$1136, %rsp             # imm = 0x470
	popq	%rbp
	retq
.Lfunc_end73:
	.size	Ffont_variation_glyphs, .Lfunc_end73-Ffont_variation_glyphs
	.cfi_endproc

	.globl	Finternal_char_font
	.align	16, 0x90
	.type	Finternal_char_font,@function
Finternal_char_font:                    # @Finternal_char_font
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp227:
	.cfi_def_cfa_offset 16
.Ltmp228:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp229:
	.cfi_def_cfa_register %rbp
	subq	$256, %rsp              # imm = 0x100
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movl	%eax, %edi
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB74_6
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB74_2
	jmp	.LBB74_4
.LBB74_2:                               # %land.lhs.true
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jg	.LBB74_4
# BB#3:                                 # %cond.true
	jmp	.LBB74_5
.LBB74_4:                               # %cond.false
	movl	$260, %edi              # imm = 0x104
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB74_5:                               # %cond.end
	xorl	%esi, %esi
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -56(%rbp)
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	lookup_basic_face
	movl	%eax, -52(%rbp)
	movq	$-1, -32(%rbp)
	jmp	.LBB74_30
.LBB74_6:                               # %if.else
	jmp	.LBB74_7
.LBB74_7:                               # %do.body
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB74_10
# BB#8:                                 # %land.lhs.true.9
	movq	-16(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB74_10
# BB#9:                                 # %if.then.13
	movq	-16(%rbp), %rdi
	callq	marker_position
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -16(%rbp)
	jmp	.LBB74_14
.LBB74_10:                              # %if.else.16
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB74_12
# BB#11:                                # %cond.true.22
	jmp	.LBB74_13
.LBB74_12:                              # %cond.false.23
	movl	$558, %edi              # imm = 0x22E
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB74_13:                              # %cond.end.25
	jmp	.LBB74_14
.LBB74_14:                              # %if.end
	jmp	.LBB74_15
.LBB74_15:                              # %do.end
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	-16(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jg	.LBB74_17
# BB#16:                                # %land.lhs.true.29
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	jl	.LBB74_18
.LBB74_17:                              # %if.then.33
	movq	-16(%rbp), %rdi
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
.LBB74_18:                              # %if.end.38
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -32(%rbp)
	movq	current_buffer, %rdi
	movq	-32(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB74_26
# BB#19:                                # %if.then.44
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB74_21
# BB#20:                                # %cond.true.48
	movq	-40(%rbp), %rdi
	callq	FETCH_MULTIBYTE_CHAR
	movl	%eax, -148(%rbp)        # 4-byte Spill
	jmp	.LBB74_25
.LBB74_21:                              # %cond.false.50
	movq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB74_23
# BB#22:                                # %cond.true.53
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB74_24
.LBB74_23:                              # %cond.false.55
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	jmp	.LBB74_24
.LBB74_24:                              # %cond.end.56
	movq	-160(%rbp), %rax        # 8-byte Reload
	addq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, -148(%rbp)        # 4-byte Spill
.LBB74_25:                              # %cond.end.61
	movl	-148(%rbp), %eax        # 4-byte Reload
	movl	%eax, -56(%rbp)
	jmp	.LBB74_27
.LBB74_26:                              # %if.else.63
	movq	-24(%rbp), %rdi
	callq	CHECK_NATNUM
	movq	-24(%rbp), %rdi
	sarq	$2, %rdi
	movl	%edi, %eax
	movl	%eax, -56(%rbp)
.LBB74_27:                              # %if.end.66
	callq	Fcurrent_buffer
	xorl	%edi, %edi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget_buffer_window
	xorl	%edi, %edi
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB74_29
# BB#28:                                # %if.then.73
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB74_61
.LBB74_29:                              # %if.end.75
	movq	-72(%rbp), %rdi
	callq	XWINDOW
	leaq	-48(%rbp), %rdx
	xorl	%r8d, %r8d
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	%rax, -64(%rbp)
	movq	-80(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-32(%rbp), %rax
	addq	$100, %rax
	movq	%rax, %rcx
	callq	face_at_buffer_position
	movl	%eax, -52(%rbp)
.LBB74_30:                              # %if.end.80
	movb	$1, %al
	testb	$1, %al
	jne	.LBB74_31
	jmp	.LBB74_32
.LBB74_31:                              # %cond.true.81
	movl	-56(%rbp), %eax
	addl	$0, %eax
	cmpl	$4194303, %eax          # imm = 0x3FFFFF
	jbe	.LBB74_34
	jmp	.LBB74_33
.LBB74_32:                              # %cond.false.85
	movslq	-56(%rbp), %rax
	addq	$0, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jbe	.LBB74_34
.LBB74_33:                              # %if.then.90
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB74_61
.LBB74_34:                              # %if.end.92
	movq	-64(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	je	.LBB74_36
# BB#35:                                # %if.then.95
	movq	-64(%rbp), %rax
	movq	376(%rax), %rdi
	movl	-56(%rbp), %esi
	callq	terminal_glyph_code
	movq	%rax, -8(%rbp)
	jmp	.LBB74_61
.LBB74_36:                              # %if.end.97
	movq	-64(%rbp), %rax
	movq	160(%rax), %rax
	cmpl	$0, 32(%rax)
	jne	.LBB74_38
# BB#37:                                # %if.then.100
	movq	-64(%rbp), %rdi
	callq	recompute_basic_faces
.LBB74_38:                              # %if.end.101
	movb	$1, %al
	movq	-64(%rbp), %rdi
	testb	$1, %al
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	jne	.LBB74_39
	jmp	.LBB74_40
.LBB74_39:                              # %cond.true.102
	movl	-52(%rbp), %eax
	addl	$0, %eax
	movq	-64(%rbp), %rcx
	movq	160(%rcx), %rcx
	movl	32(%rcx), %edx
	addl	$0, %edx
	cmpl	%edx, %eax
	jb	.LBB74_41
	jmp	.LBB74_42
.LBB74_40:                              # %cond.false.109
	movslq	-52(%rbp), %rax
	addq	$0, %rax
	movq	-64(%rbp), %rcx
	movq	160(%rcx), %rcx
	movslq	32(%rcx), %rcx
	addq	$0, %rcx
	cmpq	%rcx, %rax
	jae	.LBB74_42
.LBB74_41:                              # %cond.true.118
	movslq	-52(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	160(%rcx), %rcx
	movq	16(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jmp	.LBB74_43
.LBB74_42:                              # %cond.false.120
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	jmp	.LBB74_43
.LBB74_43:                              # %cond.end.121
	movq	-192(%rbp), %rax        # 8-byte Reload
	xorl	%edi, %edi
	movl	-56(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	%rax, -200(%rbp)        # 8-byte Spill
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	movl	%edx, -212(%rbp)        # 4-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	-200(%rbp), %rsi        # 8-byte Reload
	movl	-212(%rbp), %edx        # 4-byte Reload
	movq	-208(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	callq	face_for_char
	movb	$1, %r9b
	movl	%eax, -52(%rbp)
	testb	$1, %r9b
	jne	.LBB74_44
	jmp	.LBB74_45
.LBB74_44:                              # %cond.true.125
	movl	-52(%rbp), %eax
	addl	$0, %eax
	movq	-64(%rbp), %rcx
	movq	160(%rcx), %rcx
	movl	32(%rcx), %edx
	addl	$0, %edx
	cmpl	%edx, %eax
	jb	.LBB74_46
	jmp	.LBB74_47
.LBB74_45:                              # %cond.false.132
	movslq	-52(%rbp), %rax
	addq	$0, %rax
	movq	-64(%rbp), %rcx
	movq	160(%rcx), %rcx
	movslq	32(%rcx), %rcx
	addq	$0, %rcx
	cmpq	%rcx, %rax
	jae	.LBB74_47
.LBB74_46:                              # %cond.true.141
	movslq	-52(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	160(%rcx), %rcx
	movq	16(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	jmp	.LBB74_48
.LBB74_47:                              # %cond.false.146
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	jmp	.LBB74_48
.LBB74_48:                              # %cond.end.147
	movq	-224(%rbp), %rax        # 8-byte Reload
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	cmpq	$0, 224(%rax)
	jne	.LBB74_50
# BB#49:                                # %if.then.149
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB74_61
.LBB74_50:                              # %if.end.151
	movq	-88(%rbp), %rax
	movq	224(%rax), %rax
	movq	208(%rax), %rax
	movq	96(%rax), %rax
	movq	-88(%rbp), %rcx
	movq	224(%rcx), %rdi
	movl	-56(%rbp), %esi
	callq	*%rax
	movl	%eax, -92(%rbp)
	cmpl	$-1, -92(%rbp)
	jne	.LBB74_52
# BB#51:                                # %if.then.157
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB74_61
.LBB74_52:                              # %if.end.159
	movl	$5, %esi
	movq	-88(%rbp), %rax
	movq	224(%rax), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	xorl	%esi, %esi
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rdi
	cmpl	-92(%rbp), %esi
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	jbe	.LBB74_54
# BB#53:                                # %lor.lhs.false
	movabsq	$-2305843009213693952, %rax # imm = 0xE000000000000000
	movl	-92(%rbp), %ecx
	movl	%ecx, %edx
	cmpq	%rdx, %rax
	jg	.LBB74_56
.LBB74_54:                              # %land.lhs.true.167
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	movl	-92(%rbp), %ecx
	movl	%ecx, %edx
	cmpq	%rax, %rdx
	jg	.LBB74_56
# BB#55:                                # %cond.true.171
	movl	-92(%rbp), %eax
	movl	%eax, %ecx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	jmp	.LBB74_60
.LBB74_56:                              # %cond.false.175
	imull	$0, -92(%rbp), %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jae	.LBB74_58
# BB#57:                                # %cond.true.179
	movl	-92(%rbp), %eax
	movl	%eax, %edi
	callq	intbig_to_lisp
	movq	%rax, -248(%rbp)        # 8-byte Spill
	jmp	.LBB74_59
.LBB74_58:                              # %cond.false.182
	movl	-92(%rbp), %eax
	movl	%eax, %edi
	callq	uintbig_to_lisp
	movq	%rax, -248(%rbp)        # 8-byte Spill
.LBB74_59:                              # %cond.end.185
	movq	-248(%rbp), %rax        # 8-byte Reload
	movq	%rax, -240(%rbp)        # 8-byte Spill
.LBB74_60:                              # %cond.end.187
	movq	-240(%rbp), %rax        # 8-byte Reload
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	%rax, -8(%rbp)
.LBB74_61:                              # %return
	movq	-8(%rbp), %rax
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end74:
	.size	Finternal_char_font, .Lfunc_end74-Finternal_char_font
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI75_0:
	.quad	4602678819172646912     # double 0.5
.LCPI75_1:
	.quad	4634785966078589665     # double 72.269999999999996
	.text
	.globl	Fopen_font
	.align	16, 0x90
	.type	Fopen_font,@function
Fopen_font:                             # @Fopen_font
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp230:
	.cfi_def_cfa_offset 16
.Ltmp231:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp232:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	decode_live_frame
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_FONT_ENTITY
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB75_2
# BB#1:                                 # %if.then
	movl	$8, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	AREF
	sarq	$2, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB75_11
.LBB75_2:                               # %if.else
	movq	-16(%rbp), %rdi
	callq	CHECK_NUMBER_OR_FLOAT
	movq	-16(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$7, %eax
	jne	.LBB75_4
# BB#3:                                 # %if.then.5
	movq	-16(%rbp), %rdi
	callq	XFLOAT_DATA
	movsd	.LCPI75_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI75_1, %xmm2        # xmm2 = mem[0],zero
	movq	-40(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	424(%rdi), %rdi
	mulsd	64(%rdi), %xmm0
	divsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %rdi
	movq	%rdi, -32(%rbp)
	jmp	.LBB75_5
.LBB75_4:                               # %if.else.8
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -32(%rbp)
.LBB75_5:                               # %if.end
	movq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	cmpq	-32(%rbp), %rax
	jg	.LBB75_7
# BB#6:                                 # %land.lhs.true
	cmpq	$2147483647, -32(%rbp)  # imm = 0x7FFFFFFF
	jle	.LBB75_8
.LBB75_7:                               # %if.then.14
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	args_out_of_range
.LBB75_8:                               # %if.end.15
	cmpq	$0, -32(%rbp)
	jne	.LBB75_10
# BB#9:                                 # %if.then.18
	movq	$120, -32(%rbp)
.LBB75_10:                              # %if.end.19
	jmp	.LBB75_11
.LBB75_11:                              # %if.end.20
	movq	-40(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, %edx
	callq	font_open_entity
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end75:
	.size	Fopen_font, .Lfunc_end75-Fopen_font
	.cfi_endproc

	.globl	Fclose_font
	.align	16, 0x90
	.type	Fclose_font,@function
Fclose_font:                            # @Fclose_font
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp233:
	.cfi_def_cfa_offset 16
.Ltmp234:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp235:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_FONT_OBJECT
	movq	-16(%rbp), %rdi
	callq	decode_live_frame
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	font_close_object
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end76:
	.size	Fclose_font, .Lfunc_end76-Fclose_font
	.cfi_endproc

	.align	16, 0x90
	.type	font_close_object,@function
font_close_object:                      # @font_close_object
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp236:
	.cfi_def_cfa_offset 16
.Ltmp237:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp238:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	XFONT_OBJECT
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB77_2
# BB#1:                                 # %if.then
	jmp	.LBB77_7
.LBB77_2:                               # %if.end
	jmp	.LBB77_3
.LBB77_3:                               # %do.body
	movl	$901, %edi              # imm = 0x385
	movq	globals+832, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB77_5
# BB#4:                                 # %if.then.5
	xorl	%edi, %edi
	movq	-16(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.89, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	font_add_log
.LBB77_5:                               # %if.end.7
	jmp	.LBB77_6
.LBB77_6:                               # %do.end
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	64(%rax), %rax
	movq	-24(%rbp), %rdi
	callq	*%rax
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movl	272(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 272(%rax)
.LBB77_7:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end77:
	.size	font_close_object, .Lfunc_end77-font_close_object
	.cfi_endproc

	.globl	Fquery_font
	.align	16, 0x90
	.type	Fquery_font,@function
Fquery_font:                            # @Fquery_font
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp239:
	.cfi_def_cfa_offset 16
.Ltmp240:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp241:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_FONT_GET_OBJECT
	movl	$9, %ecx
	movl	%ecx, %edi
	movq	%rax, -16(%rbp)
	callq	make_uninit_vector
	movl	$14, %ecx
	movl	%ecx, %esi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	AREF
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	movl	$16, %ecx
	movl	%ecx, %esi
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	AREF
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	movl	$2, %ecx
	movl	%ecx, %esi
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movslq	152(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdx
	callq	ASET
	movl	$3, %ecx
	movl	%ecx, %esi
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movslq	148(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdx
	callq	ASET
	movl	$4, %ecx
	movl	%ecx, %esi
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movslq	168(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdx
	callq	ASET
	movl	$5, %ecx
	movl	%ecx, %esi
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movslq	172(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdx
	callq	ASET
	movl	$6, %ecx
	movl	%ecx, %esi
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movslq	160(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdx
	callq	ASET
	movl	$7, %ecx
	movl	%ecx, %esi
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movslq	164(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdx
	callq	ASET
	movq	-16(%rbp), %rax
	movq	208(%rax), %rax
	cmpq	$0, 144(%rax)
	je	.LBB78_2
# BB#1:                                 # %if.then
	movl	$721, %edi              # imm = 0x2D1
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rcx
	movq	208(%rcx), %rcx
	movq	144(%rcx), %rcx
	movq	-16(%rbp), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	*%rcx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movl	$8, %edx
	movl	%edx, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	jmp	.LBB78_3
.LBB78_2:                               # %if.else
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$8, %edi
	movl	%edi, %esi
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
.LBB78_3:                               # %if.end
	movq	-24(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end78:
	.size	Fquery_font, .Lfunc_end78-Fquery_font
	.cfi_endproc

	.globl	Ffont_get_glyphs
	.align	16, 0x90
	.type	Ffont_get_glyphs,@function
Ffont_get_glyphs:                       # @Ffont_get_glyphs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp242:
	.cfi_def_cfa_offset 16
.Ltmp243:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp244:
	.cfi_def_cfa_register %rbp
	subq	$2112, %rsp             # imm = 0x840
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHECK_FONT_GET_OBJECT
	movq	%rax, -48(%rbp)
	movq	$16384, -88(%rbp)       # imm = 0x4000
	callq	SPECPDL_INDEX
	xorl	%edi, %edi
	movq	%rax, -96(%rbp)
	movb	$0, -97(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-272(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB79_435
# BB#1:                                 # %if.then
	leaq	-24(%rbp), %rdi
	leaq	-32(%rbp), %rsi
	callq	validate_region
	movq	-24(%rbp), %rsi
	cmpq	-32(%rbp), %rsi
	jne	.LBB79_3
# BB#2:                                 # %if.then.4
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB79_918
.LBB79_3:                               # %if.end
	movq	-32(%rbp), %rax
	sarq	$2, %rax
	movq	-24(%rbp), %rcx
	sarq	$2, %rcx
	subq	%rcx, %rax
	movq	%rax, -64(%rbp)
# BB#4:                                 # %do.body
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_5
	jmp	.LBB79_84
.LBB79_5:                               # %cond.true
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_6
	jmp	.LBB79_45
.LBB79_6:                               # %cond.true.7
	movq	-64(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB79_8
# BB#7:                                 # %cond.true.12
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx
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
	movq	-64(%rbp), %rcx
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
	movl	%eax, -276(%rbp)        # 4-byte Spill
	jmp	.LBB79_9
.LBB79_8:                               # %cond.false
	movq	-64(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -276(%rbp)        # 4-byte Spill
.LBB79_9:                               # %cond.end
	movl	-276(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB79_11
# BB#10:                                # %land.lhs.true
	movq	-64(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jl	.LBB79_37
.LBB79_11:                              # %lor.lhs.false
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_12
	jmp	.LBB79_23
.LBB79_12:                              # %cond.true.41
	movq	-64(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB79_17
# BB#13:                                # %cond.true.46
	movq	-64(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-64(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -280(%rbp)        # 4-byte Spill
	jge	.LBB79_15
# BB#14:                                # %cond.true.56
	movq	-64(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -284(%rbp)        # 4-byte Spill
	jmp	.LBB79_16
.LBB79_15:                              # %cond.false.66
	movq	-64(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -284(%rbp)        # 4-byte Spill
.LBB79_16:                              # %cond.end.72
	movl	-284(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-280(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB79_37
	jmp	.LBB79_34
.LBB79_17:                              # %cond.false.76
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_18
	jmp	.LBB79_19
.LBB79_18:                              # %cond.true.77
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_37
	jmp	.LBB79_34
.LBB79_19:                              # %cond.false.78
	movq	-64(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB79_21
# BB#20:                                # %cond.true.86
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx
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
	movq	-64(%rbp), %rcx
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
	movl	%eax, -288(%rbp)        # 4-byte Spill
	jmp	.LBB79_22
.LBB79_21:                              # %cond.false.106
	movq	-64(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -288(%rbp)        # 4-byte Spill
.LBB79_22:                              # %cond.end.112
	movl	-288(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-64(%rbp), %rsi
	movb	%sil, %dil
	movsbl	%dil, %ecx
	cmpl	%ecx, %eax
	jl	.LBB79_37
	jmp	.LBB79_34
.LBB79_23:                              # %cond.false.119
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_24
	jmp	.LBB79_25
.LBB79_24:                              # %cond.true.120
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_37
	jmp	.LBB79_34
.LBB79_25:                              # %cond.false.121
	movq	-64(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB79_30
# BB#26:                                # %cond.true.126
	movq	-64(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-64(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -292(%rbp)        # 4-byte Spill
	jge	.LBB79_28
# BB#27:                                # %cond.true.136
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx
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
	movq	-64(%rbp), %rcx
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
	movl	%eax, -296(%rbp)        # 4-byte Spill
	jmp	.LBB79_29
.LBB79_28:                              # %cond.false.156
	movq	-64(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -296(%rbp)        # 4-byte Spill
.LBB79_29:                              # %cond.end.162
	movl	-296(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-292(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB79_37
	jmp	.LBB79_34
.LBB79_30:                              # %cond.false.167
	movq	-64(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB79_32
# BB#31:                                # %cond.true.175
	movq	-64(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -300(%rbp)        # 4-byte Spill
	jmp	.LBB79_33
.LBB79_32:                              # %cond.false.185
	movq	-64(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -300(%rbp)        # 4-byte Spill
.LBB79_33:                              # %cond.end.191
	movl	-300(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-64(%rbp), %rsi
	movb	%sil, %dil
	movsbl	%dil, %ecx
	cmpl	%ecx, %eax
	jl	.LBB79_37
.LBB79_34:                              # %lor.lhs.false.198
	movq	-64(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	shll	$3, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB79_36
# BB#35:                                # %land.lhs.true.206
	movq	-64(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	shll	$3, %edx
	cmpl	$-128, %edx
	jl	.LBB79_37
.LBB79_36:                              # %lor.lhs.false.212
	movl	$127, %eax
	movq	-64(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	shll	$3, %esi
	cmpl	%esi, %eax
	jge	.LBB79_41
.LBB79_37:                              # %cond.true.218
	movq	-64(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB79_39
# BB#38:                                # %cond.true.224
	movq	-64(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -304(%rbp)        # 4-byte Spill
	jmp	.LBB79_40
.LBB79_39:                              # %cond.false.230
	movq	-64(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -304(%rbp)        # 4-byte Spill
.LBB79_40:                              # %cond.end.238
	movl	-304(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -128(%rbp)
	testb	$1, %cl
	jne	.LBB79_404
	jmp	.LBB79_403
.LBB79_41:                              # %cond.false.241
	movq	-64(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB79_43
# BB#42:                                # %cond.true.247
	movq	-64(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -308(%rbp)        # 4-byte Spill
	jmp	.LBB79_44
.LBB79_43:                              # %cond.false.253
	movq	-64(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -308(%rbp)        # 4-byte Spill
.LBB79_44:                              # %cond.end.261
	movl	-308(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -128(%rbp)
	testb	$1, %dl
	jne	.LBB79_404
	jmp	.LBB79_403
.LBB79_45:                              # %cond.false.264
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_47
# BB#46:                                # %cond.true.270
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx
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
	movq	-64(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	jmp	.LBB79_48
.LBB79_47:                              # %cond.false.287
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
.LBB79_48:                              # %cond.end.291
	movq	-320(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB79_50
# BB#49:                                # %land.lhs.true.295
	cmpq	$0, -64(%rbp)
	jl	.LBB79_76
.LBB79_50:                              # %lor.lhs.false.298
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_51
	jmp	.LBB79_62
.LBB79_51:                              # %cond.true.299
	cmpq	$0, -64(%rbp)
	jge	.LBB79_56
# BB#52:                                # %cond.true.302
	movq	-64(%rbp), %rax
	movq	-64(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -328(%rbp)        # 8-byte Spill
	jge	.LBB79_54
# BB#53:                                # %cond.true.308
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	jmp	.LBB79_55
.LBB79_54:                              # %cond.false.316
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
.LBB79_55:                              # %cond.end.320
	movq	-336(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -344(%rbp)        # 8-byte Spill
	cqto
	movq	-344(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-328(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB79_76
	jmp	.LBB79_73
.LBB79_56:                              # %cond.false.325
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_57
	jmp	.LBB79_58
.LBB79_57:                              # %cond.true.326
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_76
	jmp	.LBB79_73
.LBB79_58:                              # %cond.false.327
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_60
# BB#59:                                # %cond.true.333
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx
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
	movq	-64(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -352(%rbp)        # 8-byte Spill
	jmp	.LBB79_61
.LBB79_60:                              # %cond.false.350
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
.LBB79_61:                              # %cond.end.354
	movq	-352(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -360(%rbp)        # 8-byte Spill
	cqto
	movq	-360(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-64(%rbp), %rax
	jl	.LBB79_76
	jmp	.LBB79_73
.LBB79_62:                              # %cond.false.359
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_63
	jmp	.LBB79_64
.LBB79_63:                              # %cond.true.360
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_76
	jmp	.LBB79_73
.LBB79_64:                              # %cond.false.361
	cmpq	$0, -64(%rbp)
	jge	.LBB79_69
# BB#65:                                # %cond.true.364
	movq	-64(%rbp), %rax
	movq	-64(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -368(%rbp)        # 8-byte Spill
	jge	.LBB79_67
# BB#66:                                # %cond.true.370
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx
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
	movq	-64(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -376(%rbp)        # 8-byte Spill
	jmp	.LBB79_68
.LBB79_67:                              # %cond.false.387
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
.LBB79_68:                              # %cond.end.391
	movq	-376(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -384(%rbp)        # 8-byte Spill
	cqto
	movq	-384(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-368(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB79_76
	jmp	.LBB79_73
.LBB79_69:                              # %cond.false.396
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_71
# BB#70:                                # %cond.true.402
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	jmp	.LBB79_72
.LBB79_71:                              # %cond.false.410
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
.LBB79_72:                              # %cond.end.414
	movq	-392(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -400(%rbp)        # 8-byte Spill
	cqto
	movq	-400(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-64(%rbp), %rax
	jl	.LBB79_76
.LBB79_73:                              # %lor.lhs.false.419
	movq	-64(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_75
# BB#74:                                # %land.lhs.true.425
	movq	-64(%rbp), %rax
	shlq	$3, %rax
	cmpq	$-128, %rax
	jl	.LBB79_76
.LBB79_75:                              # %lor.lhs.false.429
	movl	$127, %eax
	movl	%eax, %ecx
	movq	-64(%rbp), %rdx
	shlq	$3, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB79_80
.LBB79_76:                              # %cond.true.433
	movq	-64(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB79_78
# BB#77:                                # %cond.true.439
	movq	-64(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -404(%rbp)        # 4-byte Spill
	jmp	.LBB79_79
.LBB79_78:                              # %cond.false.445
	movq	-64(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -404(%rbp)        # 4-byte Spill
.LBB79_79:                              # %cond.end.453
	movl	-404(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -128(%rbp)
	testb	$1, %cl
	jne	.LBB79_404
	jmp	.LBB79_403
.LBB79_80:                              # %cond.false.456
	movq	-64(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB79_82
# BB#81:                                # %cond.true.462
	movq	-64(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -408(%rbp)        # 4-byte Spill
	jmp	.LBB79_83
.LBB79_82:                              # %cond.false.468
	movq	-64(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -408(%rbp)        # 4-byte Spill
.LBB79_83:                              # %cond.end.476
	movl	-408(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -128(%rbp)
	testb	$1, %dl
	jne	.LBB79_404
	jmp	.LBB79_403
.LBB79_84:                              # %cond.false.479
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_85
	jmp	.LBB79_164
.LBB79_85:                              # %cond.true.480
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_86
	jmp	.LBB79_125
.LBB79_86:                              # %cond.true.481
	movq	-64(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB79_88
# BB#87:                                # %cond.true.489
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx
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
	movq	-64(%rbp), %rcx
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
	movl	%eax, -412(%rbp)        # 4-byte Spill
	jmp	.LBB79_89
.LBB79_88:                              # %cond.false.509
	movq	-64(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -412(%rbp)        # 4-byte Spill
.LBB79_89:                              # %cond.end.515
	movl	-412(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB79_91
# BB#90:                                # %land.lhs.true.519
	movq	-64(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jl	.LBB79_117
.LBB79_91:                              # %lor.lhs.false.524
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_92
	jmp	.LBB79_103
.LBB79_92:                              # %cond.true.525
	movq	-64(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB79_97
# BB#93:                                # %cond.true.530
	movq	-64(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-64(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -416(%rbp)        # 4-byte Spill
	jge	.LBB79_95
# BB#94:                                # %cond.true.540
	movq	-64(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -420(%rbp)        # 4-byte Spill
	jmp	.LBB79_96
.LBB79_95:                              # %cond.false.550
	movq	-64(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -420(%rbp)        # 4-byte Spill
.LBB79_96:                              # %cond.end.556
	movl	-420(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-416(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB79_117
	jmp	.LBB79_114
.LBB79_97:                              # %cond.false.561
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_98
	jmp	.LBB79_99
.LBB79_98:                              # %cond.true.562
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_117
	jmp	.LBB79_114
.LBB79_99:                              # %cond.false.563
	movq	-64(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB79_101
# BB#100:                               # %cond.true.571
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx
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
	movq	-64(%rbp), %rcx
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
	movl	%eax, -424(%rbp)        # 4-byte Spill
	jmp	.LBB79_102
.LBB79_101:                             # %cond.false.591
	movq	-64(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -424(%rbp)        # 4-byte Spill
.LBB79_102:                             # %cond.end.597
	movl	-424(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-64(%rbp), %rsi
	movw	%si, %di
	movswl	%di, %ecx
	cmpl	%ecx, %eax
	jl	.LBB79_117
	jmp	.LBB79_114
.LBB79_103:                             # %cond.false.604
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_104
	jmp	.LBB79_105
.LBB79_104:                             # %cond.true.605
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_117
	jmp	.LBB79_114
.LBB79_105:                             # %cond.false.606
	movq	-64(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB79_110
# BB#106:                               # %cond.true.611
	movq	-64(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-64(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -428(%rbp)        # 4-byte Spill
	jge	.LBB79_108
# BB#107:                               # %cond.true.621
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx
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
	movq	-64(%rbp), %rcx
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
	movl	%eax, -432(%rbp)        # 4-byte Spill
	jmp	.LBB79_109
.LBB79_108:                             # %cond.false.641
	movq	-64(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -432(%rbp)        # 4-byte Spill
.LBB79_109:                             # %cond.end.647
	movl	-432(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-428(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB79_117
	jmp	.LBB79_114
.LBB79_110:                             # %cond.false.652
	movq	-64(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB79_112
# BB#111:                               # %cond.true.660
	movq	-64(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -436(%rbp)        # 4-byte Spill
	jmp	.LBB79_113
.LBB79_112:                             # %cond.false.670
	movq	-64(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -436(%rbp)        # 4-byte Spill
.LBB79_113:                             # %cond.end.676
	movl	-436(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-64(%rbp), %rsi
	movw	%si, %di
	movswl	%di, %ecx
	cmpl	%ecx, %eax
	jl	.LBB79_117
.LBB79_114:                             # %lor.lhs.false.683
	movq	-64(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	shll	$3, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB79_116
# BB#115:                               # %land.lhs.true.691
	movq	-64(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	shll	$3, %edx
	cmpl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB79_117
.LBB79_116:                             # %lor.lhs.false.697
	movl	$32767, %eax            # imm = 0x7FFF
	movq	-64(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	shll	$3, %esi
	cmpl	%esi, %eax
	jge	.LBB79_121
.LBB79_117:                             # %cond.true.703
	movq	-64(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB79_119
# BB#118:                               # %cond.true.709
	movq	-64(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -440(%rbp)        # 4-byte Spill
	jmp	.LBB79_120
.LBB79_119:                             # %cond.false.715
	movq	-64(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -440(%rbp)        # 4-byte Spill
.LBB79_120:                             # %cond.end.723
	movl	-440(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -128(%rbp)
	testb	$1, %cl
	jne	.LBB79_404
	jmp	.LBB79_403
.LBB79_121:                             # %cond.false.726
	movq	-64(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB79_123
# BB#122:                               # %cond.true.732
	movq	-64(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -444(%rbp)        # 4-byte Spill
	jmp	.LBB79_124
.LBB79_123:                             # %cond.false.738
	movq	-64(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -444(%rbp)        # 4-byte Spill
.LBB79_124:                             # %cond.end.746
	movl	-444(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -128(%rbp)
	testb	$1, %dl
	jne	.LBB79_404
	jmp	.LBB79_403
.LBB79_125:                             # %cond.false.749
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_127
# BB#126:                               # %cond.true.755
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx
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
	movq	-64(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -456(%rbp)        # 8-byte Spill
	jmp	.LBB79_128
.LBB79_127:                             # %cond.false.772
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
.LBB79_128:                             # %cond.end.776
	movq	-456(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB79_130
# BB#129:                               # %land.lhs.true.780
	cmpq	$0, -64(%rbp)
	jl	.LBB79_156
.LBB79_130:                             # %lor.lhs.false.783
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_131
	jmp	.LBB79_142
.LBB79_131:                             # %cond.true.784
	cmpq	$0, -64(%rbp)
	jge	.LBB79_136
# BB#132:                               # %cond.true.787
	movq	-64(%rbp), %rax
	movq	-64(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -464(%rbp)        # 8-byte Spill
	jge	.LBB79_134
# BB#133:                               # %cond.true.793
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	jmp	.LBB79_135
.LBB79_134:                             # %cond.false.801
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
.LBB79_135:                             # %cond.end.805
	movq	-472(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -480(%rbp)        # 8-byte Spill
	cqto
	movq	-480(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-464(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB79_156
	jmp	.LBB79_153
.LBB79_136:                             # %cond.false.810
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_137
	jmp	.LBB79_138
.LBB79_137:                             # %cond.true.811
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_156
	jmp	.LBB79_153
.LBB79_138:                             # %cond.false.812
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_140
# BB#139:                               # %cond.true.818
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx
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
	movq	-64(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -488(%rbp)        # 8-byte Spill
	jmp	.LBB79_141
.LBB79_140:                             # %cond.false.835
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
.LBB79_141:                             # %cond.end.839
	movq	-488(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -496(%rbp)        # 8-byte Spill
	cqto
	movq	-496(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-64(%rbp), %rax
	jl	.LBB79_156
	jmp	.LBB79_153
.LBB79_142:                             # %cond.false.844
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_143
	jmp	.LBB79_144
.LBB79_143:                             # %cond.true.845
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_156
	jmp	.LBB79_153
.LBB79_144:                             # %cond.false.846
	cmpq	$0, -64(%rbp)
	jge	.LBB79_149
# BB#145:                               # %cond.true.849
	movq	-64(%rbp), %rax
	movq	-64(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -504(%rbp)        # 8-byte Spill
	jge	.LBB79_147
# BB#146:                               # %cond.true.855
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx
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
	movq	-64(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -512(%rbp)        # 8-byte Spill
	jmp	.LBB79_148
.LBB79_147:                             # %cond.false.872
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
.LBB79_148:                             # %cond.end.876
	movq	-512(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -520(%rbp)        # 8-byte Spill
	cqto
	movq	-520(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-504(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB79_156
	jmp	.LBB79_153
.LBB79_149:                             # %cond.false.881
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_151
# BB#150:                               # %cond.true.887
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	jmp	.LBB79_152
.LBB79_151:                             # %cond.false.895
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
.LBB79_152:                             # %cond.end.899
	movq	-528(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -536(%rbp)        # 8-byte Spill
	cqto
	movq	-536(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-64(%rbp), %rax
	jl	.LBB79_156
.LBB79_153:                             # %lor.lhs.false.904
	movq	-64(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_155
# BB#154:                               # %land.lhs.true.910
	movq	-64(%rbp), %rax
	shlq	$3, %rax
	cmpq	$-32768, %rax           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB79_156
.LBB79_155:                             # %lor.lhs.false.914
	movl	$32767, %eax            # imm = 0x7FFF
	movl	%eax, %ecx
	movq	-64(%rbp), %rdx
	shlq	$3, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB79_160
.LBB79_156:                             # %cond.true.918
	movq	-64(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB79_158
# BB#157:                               # %cond.true.924
	movq	-64(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -540(%rbp)        # 4-byte Spill
	jmp	.LBB79_159
.LBB79_158:                             # %cond.false.930
	movq	-64(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -540(%rbp)        # 4-byte Spill
.LBB79_159:                             # %cond.end.938
	movl	-540(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -128(%rbp)
	testb	$1, %cl
	jne	.LBB79_404
	jmp	.LBB79_403
.LBB79_160:                             # %cond.false.941
	movq	-64(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB79_162
# BB#161:                               # %cond.true.947
	movq	-64(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -544(%rbp)        # 4-byte Spill
	jmp	.LBB79_163
.LBB79_162:                             # %cond.false.953
	movq	-64(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -544(%rbp)        # 4-byte Spill
.LBB79_163:                             # %cond.end.961
	movl	-544(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -128(%rbp)
	testb	$1, %dl
	jne	.LBB79_404
	jmp	.LBB79_403
.LBB79_164:                             # %cond.false.964
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_165
	jmp	.LBB79_244
.LBB79_165:                             # %cond.true.965
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_166
	jmp	.LBB79_205
.LBB79_166:                             # %cond.true.966
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB79_168
# BB#167:                               # %cond.true.973
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx
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
	movq	-64(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -548(%rbp)        # 4-byte Spill
	jmp	.LBB79_169
.LBB79_168:                             # %cond.false.991
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -548(%rbp)        # 4-byte Spill
.LBB79_169:                             # %cond.end.996
	movl	-548(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB79_171
# BB#170:                               # %land.lhs.true.1000
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jl	.LBB79_197
.LBB79_171:                             # %lor.lhs.false.1004
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_172
	jmp	.LBB79_183
.LBB79_172:                             # %cond.true.1005
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB79_177
# BB#173:                               # %cond.true.1009
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	movq	-64(%rbp), %rax
	movl	%eax, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -552(%rbp)        # 4-byte Spill
	jge	.LBB79_175
# BB#174:                               # %cond.true.1017
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -556(%rbp)        # 4-byte Spill
	jmp	.LBB79_176
.LBB79_175:                             # %cond.false.1026
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -556(%rbp)        # 4-byte Spill
.LBB79_176:                             # %cond.end.1031
	movl	-556(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-552(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB79_197
	jmp	.LBB79_194
.LBB79_177:                             # %cond.false.1036
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_178
	jmp	.LBB79_179
.LBB79_178:                             # %cond.true.1037
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_197
	jmp	.LBB79_194
.LBB79_179:                             # %cond.false.1038
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB79_181
# BB#180:                               # %cond.true.1045
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx
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
	movq	-64(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -560(%rbp)        # 4-byte Spill
	jmp	.LBB79_182
.LBB79_181:                             # %cond.false.1063
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -560(%rbp)        # 4-byte Spill
.LBB79_182:                             # %cond.end.1068
	movl	-560(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-64(%rbp), %rsi
	movl	%esi, %ecx
	cmpl	%ecx, %eax
	jl	.LBB79_197
	jmp	.LBB79_194
.LBB79_183:                             # %cond.false.1074
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_184
	jmp	.LBB79_185
.LBB79_184:                             # %cond.true.1075
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_197
	jmp	.LBB79_194
.LBB79_185:                             # %cond.false.1076
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB79_190
# BB#186:                               # %cond.true.1080
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	movq	-64(%rbp), %rax
	movl	%eax, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -564(%rbp)        # 4-byte Spill
	jge	.LBB79_188
# BB#187:                               # %cond.true.1088
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx
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
	movq	-64(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -568(%rbp)        # 4-byte Spill
	jmp	.LBB79_189
.LBB79_188:                             # %cond.false.1106
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -568(%rbp)        # 4-byte Spill
.LBB79_189:                             # %cond.end.1111
	movl	-568(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-564(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB79_197
	jmp	.LBB79_194
.LBB79_190:                             # %cond.false.1116
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB79_192
# BB#191:                               # %cond.true.1123
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -572(%rbp)        # 4-byte Spill
	jmp	.LBB79_193
.LBB79_192:                             # %cond.false.1132
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -572(%rbp)        # 4-byte Spill
.LBB79_193:                             # %cond.end.1137
	movl	-572(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-64(%rbp), %rsi
	movl	%esi, %ecx
	cmpl	%ecx, %eax
	jl	.LBB79_197
.LBB79_194:                             # %lor.lhs.false.1143
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB79_196
# BB#195:                               # %land.lhs.true.1150
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	jl	.LBB79_197
.LBB79_196:                             # %lor.lhs.false.1155
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movq	-64(%rbp), %rcx
	movl	%ecx, %edx
	shll	$3, %edx
	cmpl	%edx, %eax
	jge	.LBB79_201
.LBB79_197:                             # %cond.true.1160
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB79_199
# BB#198:                               # %cond.true.1165
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -576(%rbp)        # 4-byte Spill
	jmp	.LBB79_200
.LBB79_199:                             # %cond.false.1168
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -576(%rbp)        # 4-byte Spill
.LBB79_200:                             # %cond.end.1173
	movl	-576(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -128(%rbp)
	testb	$1, %cl
	jne	.LBB79_404
	jmp	.LBB79_403
.LBB79_201:                             # %cond.false.1176
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB79_203
# BB#202:                               # %cond.true.1181
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -580(%rbp)        # 4-byte Spill
	jmp	.LBB79_204
.LBB79_203:                             # %cond.false.1184
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -580(%rbp)        # 4-byte Spill
.LBB79_204:                             # %cond.end.1189
	movl	-580(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -128(%rbp)
	testb	$1, %dl
	jne	.LBB79_404
	jmp	.LBB79_403
.LBB79_205:                             # %cond.false.1192
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_207
# BB#206:                               # %cond.true.1198
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx
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
	movq	-64(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -592(%rbp)        # 8-byte Spill
	jmp	.LBB79_208
.LBB79_207:                             # %cond.false.1215
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -592(%rbp)        # 8-byte Spill
.LBB79_208:                             # %cond.end.1219
	movq	-592(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB79_210
# BB#209:                               # %land.lhs.true.1223
	cmpq	$0, -64(%rbp)
	jl	.LBB79_236
.LBB79_210:                             # %lor.lhs.false.1226
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_211
	jmp	.LBB79_222
.LBB79_211:                             # %cond.true.1227
	cmpq	$0, -64(%rbp)
	jge	.LBB79_216
# BB#212:                               # %cond.true.1230
	movq	-64(%rbp), %rax
	movq	-64(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -600(%rbp)        # 8-byte Spill
	jge	.LBB79_214
# BB#213:                               # %cond.true.1236
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -608(%rbp)        # 8-byte Spill
	jmp	.LBB79_215
.LBB79_214:                             # %cond.false.1244
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -608(%rbp)        # 8-byte Spill
.LBB79_215:                             # %cond.end.1248
	movq	-608(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -616(%rbp)        # 8-byte Spill
	cqto
	movq	-616(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-600(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB79_236
	jmp	.LBB79_233
.LBB79_216:                             # %cond.false.1253
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_217
	jmp	.LBB79_218
.LBB79_217:                             # %cond.true.1254
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_236
	jmp	.LBB79_233
.LBB79_218:                             # %cond.false.1255
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_220
# BB#219:                               # %cond.true.1261
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx
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
	movq	-64(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -624(%rbp)        # 8-byte Spill
	jmp	.LBB79_221
.LBB79_220:                             # %cond.false.1278
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
.LBB79_221:                             # %cond.end.1282
	movq	-624(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -632(%rbp)        # 8-byte Spill
	cqto
	movq	-632(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-64(%rbp), %rax
	jl	.LBB79_236
	jmp	.LBB79_233
.LBB79_222:                             # %cond.false.1287
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_223
	jmp	.LBB79_224
.LBB79_223:                             # %cond.true.1288
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_236
	jmp	.LBB79_233
.LBB79_224:                             # %cond.false.1289
	cmpq	$0, -64(%rbp)
	jge	.LBB79_229
# BB#225:                               # %cond.true.1292
	movq	-64(%rbp), %rax
	movq	-64(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -640(%rbp)        # 8-byte Spill
	jge	.LBB79_227
# BB#226:                               # %cond.true.1298
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx
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
	movq	-64(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -648(%rbp)        # 8-byte Spill
	jmp	.LBB79_228
.LBB79_227:                             # %cond.false.1315
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -648(%rbp)        # 8-byte Spill
.LBB79_228:                             # %cond.end.1319
	movq	-648(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -656(%rbp)        # 8-byte Spill
	cqto
	movq	-656(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-640(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB79_236
	jmp	.LBB79_233
.LBB79_229:                             # %cond.false.1324
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_231
# BB#230:                               # %cond.true.1330
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -664(%rbp)        # 8-byte Spill
	jmp	.LBB79_232
.LBB79_231:                             # %cond.false.1338
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -664(%rbp)        # 8-byte Spill
.LBB79_232:                             # %cond.end.1342
	movq	-664(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -672(%rbp)        # 8-byte Spill
	cqto
	movq	-672(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-64(%rbp), %rax
	jl	.LBB79_236
.LBB79_233:                             # %lor.lhs.false.1347
	movq	-64(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_235
# BB#234:                               # %land.lhs.true.1353
	movq	-64(%rbp), %rax
	shlq	$3, %rax
	cmpq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	jl	.LBB79_236
.LBB79_235:                             # %lor.lhs.false.1357
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %ecx
	movq	-64(%rbp), %rdx
	shlq	$3, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB79_240
.LBB79_236:                             # %cond.true.1361
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB79_238
# BB#237:                               # %cond.true.1366
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -676(%rbp)        # 4-byte Spill
	jmp	.LBB79_239
.LBB79_238:                             # %cond.false.1369
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -676(%rbp)        # 4-byte Spill
.LBB79_239:                             # %cond.end.1374
	movl	-676(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -128(%rbp)
	testb	$1, %cl
	jne	.LBB79_404
	jmp	.LBB79_403
.LBB79_240:                             # %cond.false.1377
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB79_242
# BB#241:                               # %cond.true.1382
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -680(%rbp)        # 4-byte Spill
	jmp	.LBB79_243
.LBB79_242:                             # %cond.false.1385
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -680(%rbp)        # 4-byte Spill
.LBB79_243:                             # %cond.end.1390
	movl	-680(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -128(%rbp)
	testb	$1, %dl
	jne	.LBB79_404
	jmp	.LBB79_403
.LBB79_244:                             # %cond.false.1393
	movb	$1, %al
	testb	$1, %al
	jne	.LBB79_245
	jmp	.LBB79_324
.LBB79_245:                             # %cond.true.1394
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_246
	jmp	.LBB79_285
.LBB79_246:                             # %cond.true.1395
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_248
# BB#247:                               # %cond.true.1401
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx
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
	movq	-64(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -688(%rbp)        # 8-byte Spill
	jmp	.LBB79_249
.LBB79_248:                             # %cond.false.1418
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -688(%rbp)        # 8-byte Spill
.LBB79_249:                             # %cond.end.1422
	movq	-688(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB79_251
# BB#250:                               # %land.lhs.true.1426
	cmpq	$0, -64(%rbp)
	jl	.LBB79_277
.LBB79_251:                             # %lor.lhs.false.1429
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_252
	jmp	.LBB79_263
.LBB79_252:                             # %cond.true.1430
	cmpq	$0, -64(%rbp)
	jge	.LBB79_257
# BB#253:                               # %cond.true.1433
	movq	-64(%rbp), %rax
	movq	-64(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -696(%rbp)        # 8-byte Spill
	jge	.LBB79_255
# BB#254:                               # %cond.true.1439
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -704(%rbp)        # 8-byte Spill
	jmp	.LBB79_256
.LBB79_255:                             # %cond.false.1447
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -704(%rbp)        # 8-byte Spill
.LBB79_256:                             # %cond.end.1451
	movq	-704(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -712(%rbp)        # 8-byte Spill
	cqto
	movq	-712(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-696(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB79_277
	jmp	.LBB79_274
.LBB79_257:                             # %cond.false.1456
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_258
	jmp	.LBB79_259
.LBB79_258:                             # %cond.true.1457
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_277
	jmp	.LBB79_274
.LBB79_259:                             # %cond.false.1458
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_261
# BB#260:                               # %cond.true.1464
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx
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
	movq	-64(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -720(%rbp)        # 8-byte Spill
	jmp	.LBB79_262
.LBB79_261:                             # %cond.false.1481
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -720(%rbp)        # 8-byte Spill
.LBB79_262:                             # %cond.end.1485
	movq	-720(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -728(%rbp)        # 8-byte Spill
	cqto
	movq	-728(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-64(%rbp), %rax
	jl	.LBB79_277
	jmp	.LBB79_274
.LBB79_263:                             # %cond.false.1490
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_264
	jmp	.LBB79_265
.LBB79_264:                             # %cond.true.1491
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_277
	jmp	.LBB79_274
.LBB79_265:                             # %cond.false.1492
	cmpq	$0, -64(%rbp)
	jge	.LBB79_270
# BB#266:                               # %cond.true.1495
	movq	-64(%rbp), %rax
	movq	-64(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -736(%rbp)        # 8-byte Spill
	jge	.LBB79_268
# BB#267:                               # %cond.true.1501
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx
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
	movq	-64(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -744(%rbp)        # 8-byte Spill
	jmp	.LBB79_269
.LBB79_268:                             # %cond.false.1518
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -744(%rbp)        # 8-byte Spill
.LBB79_269:                             # %cond.end.1522
	movq	-744(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -752(%rbp)        # 8-byte Spill
	cqto
	movq	-752(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-736(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB79_277
	jmp	.LBB79_274
.LBB79_270:                             # %cond.false.1527
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_272
# BB#271:                               # %cond.true.1533
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -760(%rbp)        # 8-byte Spill
	jmp	.LBB79_273
.LBB79_272:                             # %cond.false.1541
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -760(%rbp)        # 8-byte Spill
.LBB79_273:                             # %cond.end.1545
	movq	-760(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -768(%rbp)        # 8-byte Spill
	cqto
	movq	-768(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-64(%rbp), %rax
	jl	.LBB79_277
.LBB79_274:                             # %lor.lhs.false.1550
	movq	-64(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_276
# BB#275:                               # %land.lhs.true.1556
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-64(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB79_277
.LBB79_276:                             # %lor.lhs.false.1560
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-64(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB79_281
.LBB79_277:                             # %cond.true.1564
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-64(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB79_279
# BB#278:                               # %cond.true.1568
	movq	-64(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -776(%rbp)        # 8-byte Spill
	jmp	.LBB79_280
.LBB79_279:                             # %cond.false.1570
	movq	-64(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -776(%rbp)        # 8-byte Spill
.LBB79_280:                             # %cond.end.1574
	movq	-776(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -128(%rbp)
	testb	$1, %cl
	jne	.LBB79_404
	jmp	.LBB79_403
.LBB79_281:                             # %cond.false.1576
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-64(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB79_283
# BB#282:                               # %cond.true.1580
	movq	-64(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -784(%rbp)        # 8-byte Spill
	jmp	.LBB79_284
.LBB79_283:                             # %cond.false.1582
	movq	-64(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -784(%rbp)        # 8-byte Spill
.LBB79_284:                             # %cond.end.1586
	movq	-784(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -128(%rbp)
	testb	$1, %dl
	jne	.LBB79_404
	jmp	.LBB79_403
.LBB79_285:                             # %cond.false.1588
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_287
# BB#286:                               # %cond.true.1594
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx
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
	movq	-64(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -792(%rbp)        # 8-byte Spill
	jmp	.LBB79_288
.LBB79_287:                             # %cond.false.1611
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -792(%rbp)        # 8-byte Spill
.LBB79_288:                             # %cond.end.1615
	movq	-792(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB79_290
# BB#289:                               # %land.lhs.true.1619
	cmpq	$0, -64(%rbp)
	jl	.LBB79_316
.LBB79_290:                             # %lor.lhs.false.1622
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_291
	jmp	.LBB79_302
.LBB79_291:                             # %cond.true.1623
	cmpq	$0, -64(%rbp)
	jge	.LBB79_296
# BB#292:                               # %cond.true.1626
	movq	-64(%rbp), %rax
	movq	-64(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -800(%rbp)        # 8-byte Spill
	jge	.LBB79_294
# BB#293:                               # %cond.true.1632
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -808(%rbp)        # 8-byte Spill
	jmp	.LBB79_295
.LBB79_294:                             # %cond.false.1640
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -808(%rbp)        # 8-byte Spill
.LBB79_295:                             # %cond.end.1644
	movq	-808(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -816(%rbp)        # 8-byte Spill
	cqto
	movq	-816(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-800(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB79_316
	jmp	.LBB79_313
.LBB79_296:                             # %cond.false.1649
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_297
	jmp	.LBB79_298
.LBB79_297:                             # %cond.true.1650
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_316
	jmp	.LBB79_313
.LBB79_298:                             # %cond.false.1651
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_300
# BB#299:                               # %cond.true.1657
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx
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
	movq	-64(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -824(%rbp)        # 8-byte Spill
	jmp	.LBB79_301
.LBB79_300:                             # %cond.false.1674
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -824(%rbp)        # 8-byte Spill
.LBB79_301:                             # %cond.end.1678
	movq	-824(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -832(%rbp)        # 8-byte Spill
	cqto
	movq	-832(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-64(%rbp), %rax
	jl	.LBB79_316
	jmp	.LBB79_313
.LBB79_302:                             # %cond.false.1683
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_303
	jmp	.LBB79_304
.LBB79_303:                             # %cond.true.1684
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_316
	jmp	.LBB79_313
.LBB79_304:                             # %cond.false.1685
	cmpq	$0, -64(%rbp)
	jge	.LBB79_309
# BB#305:                               # %cond.true.1688
	movq	-64(%rbp), %rax
	movq	-64(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -840(%rbp)        # 8-byte Spill
	jge	.LBB79_307
# BB#306:                               # %cond.true.1694
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx
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
	movq	-64(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -848(%rbp)        # 8-byte Spill
	jmp	.LBB79_308
.LBB79_307:                             # %cond.false.1711
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -848(%rbp)        # 8-byte Spill
.LBB79_308:                             # %cond.end.1715
	movq	-848(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -856(%rbp)        # 8-byte Spill
	cqto
	movq	-856(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-840(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB79_316
	jmp	.LBB79_313
.LBB79_309:                             # %cond.false.1720
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_311
# BB#310:                               # %cond.true.1726
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -864(%rbp)        # 8-byte Spill
	jmp	.LBB79_312
.LBB79_311:                             # %cond.false.1734
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -864(%rbp)        # 8-byte Spill
.LBB79_312:                             # %cond.end.1738
	movq	-864(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -872(%rbp)        # 8-byte Spill
	cqto
	movq	-872(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-64(%rbp), %rax
	jl	.LBB79_316
.LBB79_313:                             # %lor.lhs.false.1743
	movq	-64(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_315
# BB#314:                               # %land.lhs.true.1749
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-64(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB79_316
.LBB79_315:                             # %lor.lhs.false.1753
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-64(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB79_320
.LBB79_316:                             # %cond.true.1757
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-64(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB79_318
# BB#317:                               # %cond.true.1761
	movq	-64(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -880(%rbp)        # 8-byte Spill
	jmp	.LBB79_319
.LBB79_318:                             # %cond.false.1763
	movq	-64(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -880(%rbp)        # 8-byte Spill
.LBB79_319:                             # %cond.end.1767
	movq	-880(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -128(%rbp)
	testb	$1, %cl
	jne	.LBB79_404
	jmp	.LBB79_403
.LBB79_320:                             # %cond.false.1769
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-64(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB79_322
# BB#321:                               # %cond.true.1773
	movq	-64(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -888(%rbp)        # 8-byte Spill
	jmp	.LBB79_323
.LBB79_322:                             # %cond.false.1775
	movq	-64(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -888(%rbp)        # 8-byte Spill
.LBB79_323:                             # %cond.end.1779
	movq	-888(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -128(%rbp)
	testb	$1, %dl
	jne	.LBB79_404
	jmp	.LBB79_403
.LBB79_324:                             # %cond.false.1781
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_325
	jmp	.LBB79_364
.LBB79_325:                             # %cond.true.1782
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_327
# BB#326:                               # %cond.true.1788
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx
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
	movq	-64(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -896(%rbp)        # 8-byte Spill
	jmp	.LBB79_328
.LBB79_327:                             # %cond.false.1805
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -896(%rbp)        # 8-byte Spill
.LBB79_328:                             # %cond.end.1809
	movq	-896(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB79_330
# BB#329:                               # %land.lhs.true.1813
	cmpq	$0, -64(%rbp)
	jl	.LBB79_356
.LBB79_330:                             # %lor.lhs.false.1816
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_331
	jmp	.LBB79_342
.LBB79_331:                             # %cond.true.1817
	cmpq	$0, -64(%rbp)
	jge	.LBB79_336
# BB#332:                               # %cond.true.1820
	movq	-64(%rbp), %rax
	movq	-64(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -904(%rbp)        # 8-byte Spill
	jge	.LBB79_334
# BB#333:                               # %cond.true.1826
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -912(%rbp)        # 8-byte Spill
	jmp	.LBB79_335
.LBB79_334:                             # %cond.false.1834
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -912(%rbp)        # 8-byte Spill
.LBB79_335:                             # %cond.end.1838
	movq	-912(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -920(%rbp)        # 8-byte Spill
	cqto
	movq	-920(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-904(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB79_356
	jmp	.LBB79_353
.LBB79_336:                             # %cond.false.1843
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_337
	jmp	.LBB79_338
.LBB79_337:                             # %cond.true.1844
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_356
	jmp	.LBB79_353
.LBB79_338:                             # %cond.false.1845
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_340
# BB#339:                               # %cond.true.1851
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx
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
	movq	-64(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -928(%rbp)        # 8-byte Spill
	jmp	.LBB79_341
.LBB79_340:                             # %cond.false.1868
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -928(%rbp)        # 8-byte Spill
.LBB79_341:                             # %cond.end.1872
	movq	-928(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -936(%rbp)        # 8-byte Spill
	cqto
	movq	-936(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-64(%rbp), %rax
	jl	.LBB79_356
	jmp	.LBB79_353
.LBB79_342:                             # %cond.false.1877
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_343
	jmp	.LBB79_344
.LBB79_343:                             # %cond.true.1878
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_356
	jmp	.LBB79_353
.LBB79_344:                             # %cond.false.1879
	cmpq	$0, -64(%rbp)
	jge	.LBB79_349
# BB#345:                               # %cond.true.1882
	movq	-64(%rbp), %rax
	movq	-64(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -944(%rbp)        # 8-byte Spill
	jge	.LBB79_347
# BB#346:                               # %cond.true.1888
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx
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
	movq	-64(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -952(%rbp)        # 8-byte Spill
	jmp	.LBB79_348
.LBB79_347:                             # %cond.false.1905
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -952(%rbp)        # 8-byte Spill
.LBB79_348:                             # %cond.end.1909
	movq	-952(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -960(%rbp)        # 8-byte Spill
	cqto
	movq	-960(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-944(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB79_356
	jmp	.LBB79_353
.LBB79_349:                             # %cond.false.1914
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_351
# BB#350:                               # %cond.true.1920
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -968(%rbp)        # 8-byte Spill
	jmp	.LBB79_352
.LBB79_351:                             # %cond.false.1928
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -968(%rbp)        # 8-byte Spill
.LBB79_352:                             # %cond.end.1932
	movq	-968(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -976(%rbp)        # 8-byte Spill
	cqto
	movq	-976(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-64(%rbp), %rax
	jl	.LBB79_356
.LBB79_353:                             # %lor.lhs.false.1937
	movq	-64(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_355
# BB#354:                               # %land.lhs.true.1943
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-64(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB79_356
.LBB79_355:                             # %lor.lhs.false.1947
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-64(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB79_360
.LBB79_356:                             # %cond.true.1951
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-64(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB79_358
# BB#357:                               # %cond.true.1955
	movq	-64(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -984(%rbp)        # 8-byte Spill
	jmp	.LBB79_359
.LBB79_358:                             # %cond.false.1957
	movq	-64(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -984(%rbp)        # 8-byte Spill
.LBB79_359:                             # %cond.end.1961
	movq	-984(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -128(%rbp)
	testb	$1, %cl
	jne	.LBB79_404
	jmp	.LBB79_403
.LBB79_360:                             # %cond.false.1963
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-64(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB79_362
# BB#361:                               # %cond.true.1967
	movq	-64(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -992(%rbp)        # 8-byte Spill
	jmp	.LBB79_363
.LBB79_362:                             # %cond.false.1969
	movq	-64(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -992(%rbp)        # 8-byte Spill
.LBB79_363:                             # %cond.end.1973
	movq	-992(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -128(%rbp)
	testb	$1, %dl
	jne	.LBB79_404
	jmp	.LBB79_403
.LBB79_364:                             # %cond.false.1975
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_366
# BB#365:                               # %cond.true.1981
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx
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
	movq	-64(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1000(%rbp)       # 8-byte Spill
	jmp	.LBB79_367
.LBB79_366:                             # %cond.false.1998
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1000(%rbp)       # 8-byte Spill
.LBB79_367:                             # %cond.end.2002
	movq	-1000(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB79_369
# BB#368:                               # %land.lhs.true.2006
	cmpq	$0, -64(%rbp)
	jl	.LBB79_395
.LBB79_369:                             # %lor.lhs.false.2009
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_370
	jmp	.LBB79_381
.LBB79_370:                             # %cond.true.2010
	cmpq	$0, -64(%rbp)
	jge	.LBB79_375
# BB#371:                               # %cond.true.2013
	movq	-64(%rbp), %rax
	movq	-64(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1008(%rbp)       # 8-byte Spill
	jge	.LBB79_373
# BB#372:                               # %cond.true.2019
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1016(%rbp)       # 8-byte Spill
	jmp	.LBB79_374
.LBB79_373:                             # %cond.false.2027
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1016(%rbp)       # 8-byte Spill
.LBB79_374:                             # %cond.end.2031
	movq	-1016(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1024(%rbp)       # 8-byte Spill
	cqto
	movq	-1024(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1008(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB79_395
	jmp	.LBB79_392
.LBB79_375:                             # %cond.false.2036
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_376
	jmp	.LBB79_377
.LBB79_376:                             # %cond.true.2037
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_395
	jmp	.LBB79_392
.LBB79_377:                             # %cond.false.2038
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_379
# BB#378:                               # %cond.true.2044
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx
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
	movq	-64(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1032(%rbp)       # 8-byte Spill
	jmp	.LBB79_380
.LBB79_379:                             # %cond.false.2061
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1032(%rbp)       # 8-byte Spill
.LBB79_380:                             # %cond.end.2065
	movq	-1032(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1040(%rbp)       # 8-byte Spill
	cqto
	movq	-1040(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-64(%rbp), %rax
	jl	.LBB79_395
	jmp	.LBB79_392
.LBB79_381:                             # %cond.false.2070
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_382
	jmp	.LBB79_383
.LBB79_382:                             # %cond.true.2071
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_395
	jmp	.LBB79_392
.LBB79_383:                             # %cond.false.2072
	cmpq	$0, -64(%rbp)
	jge	.LBB79_388
# BB#384:                               # %cond.true.2075
	movq	-64(%rbp), %rax
	movq	-64(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1048(%rbp)       # 8-byte Spill
	jge	.LBB79_386
# BB#385:                               # %cond.true.2081
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx
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
	movq	-64(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1056(%rbp)       # 8-byte Spill
	jmp	.LBB79_387
.LBB79_386:                             # %cond.false.2098
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1056(%rbp)       # 8-byte Spill
.LBB79_387:                             # %cond.end.2102
	movq	-1056(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1064(%rbp)       # 8-byte Spill
	cqto
	movq	-1064(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1048(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB79_395
	jmp	.LBB79_392
.LBB79_388:                             # %cond.false.2107
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_390
# BB#389:                               # %cond.true.2113
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1072(%rbp)       # 8-byte Spill
	jmp	.LBB79_391
.LBB79_390:                             # %cond.false.2121
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1072(%rbp)       # 8-byte Spill
.LBB79_391:                             # %cond.end.2125
	movq	-1072(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1080(%rbp)       # 8-byte Spill
	cqto
	movq	-1080(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-64(%rbp), %rax
	jl	.LBB79_395
.LBB79_392:                             # %lor.lhs.false.2130
	movq	-64(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_394
# BB#393:                               # %land.lhs.true.2136
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-64(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB79_395
.LBB79_394:                             # %lor.lhs.false.2140
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-64(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB79_399
.LBB79_395:                             # %cond.true.2144
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-64(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB79_397
# BB#396:                               # %cond.true.2148
	movq	-64(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -1088(%rbp)       # 8-byte Spill
	jmp	.LBB79_398
.LBB79_397:                             # %cond.false.2150
	movq	-64(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1088(%rbp)       # 8-byte Spill
.LBB79_398:                             # %cond.end.2154
	movq	-1088(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -128(%rbp)
	testb	$1, %cl
	jne	.LBB79_404
	jmp	.LBB79_403
.LBB79_399:                             # %cond.false.2156
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-64(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB79_401
# BB#400:                               # %cond.true.2160
	movq	-64(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -1096(%rbp)       # 8-byte Spill
	jmp	.LBB79_402
.LBB79_401:                             # %cond.false.2162
	movq	-64(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1096(%rbp)       # 8-byte Spill
.LBB79_402:                             # %cond.end.2166
	movq	-1096(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -128(%rbp)
	testb	$1, %dl
	jne	.LBB79_404
.LBB79_403:                             # %lor.lhs.false.2168
	movq	$-1, %rax
	cmpq	-128(%rbp), %rax
	jae	.LBB79_405
.LBB79_404:                             # %if.then.2171
	movq	$-1, %rdi
	callq	memory_full
.LBB79_405:                             # %if.else
	movq	-128(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jg	.LBB79_407
# BB#406:                               # %if.then.2174
	movq	-128(%rbp), %rax
	movq	-88(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -88(%rbp)
	movq	-128(%rbp), %rax
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -72(%rbp)
	jmp	.LBB79_408
.LBB79_407:                             # %if.else.2176
	movq	-128(%rbp), %rdi
	callq	xmalloc
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	make_save_memory
	movabsq	$free_save_value, %rdi
	movq	%rax, -136(%rbp)
	movb	$1, -97(%rbp)
	movq	-136(%rbp), %rsi
	callq	record_unwind_protect
.LBB79_408:                             # %if.end.2179
	jmp	.LBB79_409
.LBB79_409:                             # %if.end.2180
	jmp	.LBB79_410
.LBB79_410:                             # %do.end
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -112(%rbp)
	movq	current_buffer, %rdi
	movq	-112(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -120(%rbp)
	movq	$0, -56(%rbp)
.LBB79_411:                             # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-112(%rbp), %rax
	movq	-32(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jge	.LBB79_434
# BB#412:                               # %for.body
                                        #   in Loop: Header=BB79_411 Depth=1
	jmp	.LBB79_413
.LBB79_413:                             # %do.body.2186
                                        #   in Loop: Header=BB79_411 Depth=1
	xorl	%edi, %edi
	movq	-112(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -112(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -1104(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1104(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB79_427
# BB#414:                               # %if.then.2190
                                        #   in Loop: Header=BB79_411 Depth=1
	movq	-120(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB79_416
# BB#415:                               # %cond.true.2193
                                        #   in Loop: Header=BB79_411 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -1112(%rbp)       # 8-byte Spill
	jmp	.LBB79_417
.LBB79_416:                             # %cond.false.2195
                                        #   in Loop: Header=BB79_411 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -1112(%rbp)       # 8-byte Spill
	jmp	.LBB79_417
.LBB79_417:                             # %cond.end.2196
                                        #   in Loop: Header=BB79_411 Depth=1
	movq	-1112(%rbp), %rax       # 8-byte Reload
	addq	-120(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movzbl	(%rax), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	jne	.LBB79_419
# BB#418:                               # %cond.true.2202
                                        #   in Loop: Header=BB79_411 Depth=1
	movl	$1, -156(%rbp)
	movq	-152(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -1116(%rbp)       # 4-byte Spill
	jmp	.LBB79_426
.LBB79_419:                             # %cond.false.2205
                                        #   in Loop: Header=BB79_411 Depth=1
	movq	-152(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB79_421
# BB#420:                               # %cond.true.2210
                                        #   in Loop: Header=BB79_411 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -156(%rbp)
	movq	-152(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-152(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-152(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -1120(%rbp)       # 4-byte Spill
	jmp	.LBB79_425
.LBB79_421:                             # %cond.false.2224
                                        #   in Loop: Header=BB79_411 Depth=1
	movq	-152(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB79_423
# BB#422:                               # %cond.true.2229
                                        #   in Loop: Header=BB79_411 Depth=1
	movl	$3, -156(%rbp)
	movq	-152(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-152(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-152(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -1124(%rbp)       # 4-byte Spill
	jmp	.LBB79_424
.LBB79_423:                             # %cond.false.2243
                                        #   in Loop: Header=BB79_411 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-156(%rbp), %rdx
	movq	-152(%rbp), %rdi
	callq	string_char
	movl	%eax, -1124(%rbp)       # 4-byte Spill
.LBB79_424:                             # %cond.end.2245
                                        #   in Loop: Header=BB79_411 Depth=1
	movl	-1124(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1120(%rbp)       # 4-byte Spill
.LBB79_425:                             # %cond.end.2247
                                        #   in Loop: Header=BB79_411 Depth=1
	movl	-1120(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1116(%rbp)       # 4-byte Spill
.LBB79_426:                             # %cond.end.2249
                                        #   in Loop: Header=BB79_411 Depth=1
	movl	-1116(%rbp), %eax       # 4-byte Reload
	movl	%eax, -140(%rbp)
	movslq	-156(%rbp), %rcx
	addq	-120(%rbp), %rcx
	movq	%rcx, -120(%rbp)
	jmp	.LBB79_431
.LBB79_427:                             # %if.else.2253
                                        #   in Loop: Header=BB79_411 Depth=1
	movq	-120(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB79_429
# BB#428:                               # %cond.true.2258
                                        #   in Loop: Header=BB79_411 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -1136(%rbp)       # 8-byte Spill
	jmp	.LBB79_430
.LBB79_429:                             # %cond.false.2261
                                        #   in Loop: Header=BB79_411 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -1136(%rbp)       # 8-byte Spill
	jmp	.LBB79_430
.LBB79_430:                             # %cond.end.2262
                                        #   in Loop: Header=BB79_411 Depth=1
	movq	-1136(%rbp), %rax       # 8-byte Reload
	addq	-120(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, -140(%rbp)
	movq	-120(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -120(%rbp)
.LBB79_431:                             # %if.end.2271
                                        #   in Loop: Header=BB79_411 Depth=1
	jmp	.LBB79_432
.LBB79_432:                             # %do.end.2272
                                        #   in Loop: Header=BB79_411 Depth=1
	movslq	-140(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-56(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
# BB#433:                               # %for.inc
                                        #   in Loop: Header=BB79_411 Depth=1
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB79_411
.LBB79_434:                             # %for.end
	jmp	.LBB79_894
.LBB79_435:                             # %if.else.2278
	movq	-40(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB79_436
	jmp	.LBB79_879
.LBB79_436:                             # %if.then.2280
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdi, -1144(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -1152(%rbp)       # 8-byte Spill
	movq	%rsi, -1160(%rbp)       # 8-byte Spill
	callq	SCHARS
	leaq	-176(%rbp), %r8
	leaq	-184(%rbp), %r9
	movq	-1144(%rbp), %rdi       # 8-byte Reload
	movq	-1160(%rbp), %rsi       # 8-byte Reload
	movq	-1152(%rbp), %rdx       # 8-byte Reload
	movq	%rax, %rcx
	callq	validate_subarray
	movq	-176(%rbp), %rax
	cmpq	-184(%rbp), %rax
	jne	.LBB79_438
# BB#437:                               # %if.then.2284
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB79_918
.LBB79_438:                             # %if.end.2286
	movq	-184(%rbp), %rax
	subq	-176(%rbp), %rax
	movq	%rax, -64(%rbp)
# BB#439:                               # %do.body.2288
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_440
	jmp	.LBB79_519
.LBB79_440:                             # %cond.true.2290
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_441
	jmp	.LBB79_480
.LBB79_441:                             # %cond.true.2291
	movq	-64(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB79_443
# BB#442:                               # %cond.true.2299
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx
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
	movq	-64(%rbp), %rcx
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
	movl	%eax, -1164(%rbp)       # 4-byte Spill
	jmp	.LBB79_444
.LBB79_443:                             # %cond.false.2319
	movq	-64(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -1164(%rbp)       # 4-byte Spill
.LBB79_444:                             # %cond.end.2325
	movl	-1164(%rbp), %eax       # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB79_446
# BB#445:                               # %land.lhs.true.2329
	movq	-64(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jl	.LBB79_472
.LBB79_446:                             # %lor.lhs.false.2334
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_447
	jmp	.LBB79_458
.LBB79_447:                             # %cond.true.2335
	movq	-64(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB79_452
# BB#448:                               # %cond.true.2340
	movq	-64(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-64(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -1168(%rbp)       # 4-byte Spill
	jge	.LBB79_450
# BB#449:                               # %cond.true.2350
	movq	-64(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -1172(%rbp)       # 4-byte Spill
	jmp	.LBB79_451
.LBB79_450:                             # %cond.false.2360
	movq	-64(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -1172(%rbp)       # 4-byte Spill
.LBB79_451:                             # %cond.end.2366
	movl	-1172(%rbp), %eax       # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-1168(%rbp), %ecx       # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB79_472
	jmp	.LBB79_469
.LBB79_452:                             # %cond.false.2371
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_453
	jmp	.LBB79_454
.LBB79_453:                             # %cond.true.2372
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_472
	jmp	.LBB79_469
.LBB79_454:                             # %cond.false.2373
	movq	-64(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB79_456
# BB#455:                               # %cond.true.2381
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx
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
	movq	-64(%rbp), %rcx
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
	movl	%eax, -1176(%rbp)       # 4-byte Spill
	jmp	.LBB79_457
.LBB79_456:                             # %cond.false.2401
	movq	-64(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -1176(%rbp)       # 4-byte Spill
.LBB79_457:                             # %cond.end.2407
	movl	-1176(%rbp), %eax       # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-64(%rbp), %rsi
	movb	%sil, %dil
	movsbl	%dil, %ecx
	cmpl	%ecx, %eax
	jl	.LBB79_472
	jmp	.LBB79_469
.LBB79_458:                             # %cond.false.2414
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_459
	jmp	.LBB79_460
.LBB79_459:                             # %cond.true.2415
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_472
	jmp	.LBB79_469
.LBB79_460:                             # %cond.false.2416
	movq	-64(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB79_465
# BB#461:                               # %cond.true.2421
	movq	-64(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-64(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -1180(%rbp)       # 4-byte Spill
	jge	.LBB79_463
# BB#462:                               # %cond.true.2431
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx
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
	movq	-64(%rbp), %rcx
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
	movl	%eax, -1184(%rbp)       # 4-byte Spill
	jmp	.LBB79_464
.LBB79_463:                             # %cond.false.2451
	movq	-64(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -1184(%rbp)       # 4-byte Spill
.LBB79_464:                             # %cond.end.2457
	movl	-1184(%rbp), %eax       # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-1180(%rbp), %ecx       # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB79_472
	jmp	.LBB79_469
.LBB79_465:                             # %cond.false.2462
	movq	-64(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB79_467
# BB#466:                               # %cond.true.2470
	movq	-64(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -1188(%rbp)       # 4-byte Spill
	jmp	.LBB79_468
.LBB79_467:                             # %cond.false.2480
	movq	-64(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -1188(%rbp)       # 4-byte Spill
.LBB79_468:                             # %cond.end.2486
	movl	-1188(%rbp), %eax       # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-64(%rbp), %rsi
	movb	%sil, %dil
	movsbl	%dil, %ecx
	cmpl	%ecx, %eax
	jl	.LBB79_472
.LBB79_469:                             # %lor.lhs.false.2493
	movq	-64(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	shll	$3, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB79_471
# BB#470:                               # %land.lhs.true.2501
	movq	-64(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	shll	$3, %edx
	cmpl	$-128, %edx
	jl	.LBB79_472
.LBB79_471:                             # %lor.lhs.false.2507
	movl	$127, %eax
	movq	-64(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	shll	$3, %esi
	cmpl	%esi, %eax
	jge	.LBB79_476
.LBB79_472:                             # %cond.true.2513
	movq	-64(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB79_474
# BB#473:                               # %cond.true.2519
	movq	-64(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -1192(%rbp)       # 4-byte Spill
	jmp	.LBB79_475
.LBB79_474:                             # %cond.false.2525
	movq	-64(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -1192(%rbp)       # 4-byte Spill
.LBB79_475:                             # %cond.end.2533
	movl	-1192(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -192(%rbp)
	testb	$1, %cl
	jne	.LBB79_839
	jmp	.LBB79_838
.LBB79_476:                             # %cond.false.2536
	movq	-64(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB79_478
# BB#477:                               # %cond.true.2542
	movq	-64(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -1196(%rbp)       # 4-byte Spill
	jmp	.LBB79_479
.LBB79_478:                             # %cond.false.2548
	movq	-64(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -1196(%rbp)       # 4-byte Spill
.LBB79_479:                             # %cond.end.2556
	movl	-1196(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -192(%rbp)
	testb	$1, %dl
	jne	.LBB79_839
	jmp	.LBB79_838
.LBB79_480:                             # %cond.false.2559
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_482
# BB#481:                               # %cond.true.2565
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx
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
	movq	-64(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1208(%rbp)       # 8-byte Spill
	jmp	.LBB79_483
.LBB79_482:                             # %cond.false.2582
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1208(%rbp)       # 8-byte Spill
.LBB79_483:                             # %cond.end.2586
	movq	-1208(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB79_485
# BB#484:                               # %land.lhs.true.2590
	cmpq	$0, -64(%rbp)
	jl	.LBB79_511
.LBB79_485:                             # %lor.lhs.false.2593
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_486
	jmp	.LBB79_497
.LBB79_486:                             # %cond.true.2594
	cmpq	$0, -64(%rbp)
	jge	.LBB79_491
# BB#487:                               # %cond.true.2597
	movq	-64(%rbp), %rax
	movq	-64(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1216(%rbp)       # 8-byte Spill
	jge	.LBB79_489
# BB#488:                               # %cond.true.2603
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1224(%rbp)       # 8-byte Spill
	jmp	.LBB79_490
.LBB79_489:                             # %cond.false.2611
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1224(%rbp)       # 8-byte Spill
.LBB79_490:                             # %cond.end.2615
	movq	-1224(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1232(%rbp)       # 8-byte Spill
	cqto
	movq	-1232(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1216(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB79_511
	jmp	.LBB79_508
.LBB79_491:                             # %cond.false.2620
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_492
	jmp	.LBB79_493
.LBB79_492:                             # %cond.true.2621
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_511
	jmp	.LBB79_508
.LBB79_493:                             # %cond.false.2622
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_495
# BB#494:                               # %cond.true.2628
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx
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
	movq	-64(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1240(%rbp)       # 8-byte Spill
	jmp	.LBB79_496
.LBB79_495:                             # %cond.false.2645
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1240(%rbp)       # 8-byte Spill
.LBB79_496:                             # %cond.end.2649
	movq	-1240(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1248(%rbp)       # 8-byte Spill
	cqto
	movq	-1248(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-64(%rbp), %rax
	jl	.LBB79_511
	jmp	.LBB79_508
.LBB79_497:                             # %cond.false.2654
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_498
	jmp	.LBB79_499
.LBB79_498:                             # %cond.true.2655
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_511
	jmp	.LBB79_508
.LBB79_499:                             # %cond.false.2656
	cmpq	$0, -64(%rbp)
	jge	.LBB79_504
# BB#500:                               # %cond.true.2659
	movq	-64(%rbp), %rax
	movq	-64(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1256(%rbp)       # 8-byte Spill
	jge	.LBB79_502
# BB#501:                               # %cond.true.2665
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx
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
	movq	-64(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1264(%rbp)       # 8-byte Spill
	jmp	.LBB79_503
.LBB79_502:                             # %cond.false.2682
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1264(%rbp)       # 8-byte Spill
.LBB79_503:                             # %cond.end.2686
	movq	-1264(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1272(%rbp)       # 8-byte Spill
	cqto
	movq	-1272(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1256(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB79_511
	jmp	.LBB79_508
.LBB79_504:                             # %cond.false.2691
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_506
# BB#505:                               # %cond.true.2697
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1280(%rbp)       # 8-byte Spill
	jmp	.LBB79_507
.LBB79_506:                             # %cond.false.2705
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1280(%rbp)       # 8-byte Spill
.LBB79_507:                             # %cond.end.2709
	movq	-1280(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1288(%rbp)       # 8-byte Spill
	cqto
	movq	-1288(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-64(%rbp), %rax
	jl	.LBB79_511
.LBB79_508:                             # %lor.lhs.false.2714
	movq	-64(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_510
# BB#509:                               # %land.lhs.true.2720
	movq	-64(%rbp), %rax
	shlq	$3, %rax
	cmpq	$-128, %rax
	jl	.LBB79_511
.LBB79_510:                             # %lor.lhs.false.2724
	movl	$127, %eax
	movl	%eax, %ecx
	movq	-64(%rbp), %rdx
	shlq	$3, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB79_515
.LBB79_511:                             # %cond.true.2728
	movq	-64(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB79_513
# BB#512:                               # %cond.true.2734
	movq	-64(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -1292(%rbp)       # 4-byte Spill
	jmp	.LBB79_514
.LBB79_513:                             # %cond.false.2740
	movq	-64(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -1292(%rbp)       # 4-byte Spill
.LBB79_514:                             # %cond.end.2748
	movl	-1292(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -192(%rbp)
	testb	$1, %cl
	jne	.LBB79_839
	jmp	.LBB79_838
.LBB79_515:                             # %cond.false.2751
	movq	-64(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB79_517
# BB#516:                               # %cond.true.2757
	movq	-64(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -1296(%rbp)       # 4-byte Spill
	jmp	.LBB79_518
.LBB79_517:                             # %cond.false.2763
	movq	-64(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -1296(%rbp)       # 4-byte Spill
.LBB79_518:                             # %cond.end.2771
	movl	-1296(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -192(%rbp)
	testb	$1, %dl
	jne	.LBB79_839
	jmp	.LBB79_838
.LBB79_519:                             # %cond.false.2774
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_520
	jmp	.LBB79_599
.LBB79_520:                             # %cond.true.2775
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_521
	jmp	.LBB79_560
.LBB79_521:                             # %cond.true.2776
	movq	-64(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB79_523
# BB#522:                               # %cond.true.2784
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx
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
	movq	-64(%rbp), %rcx
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
	movl	%eax, -1300(%rbp)       # 4-byte Spill
	jmp	.LBB79_524
.LBB79_523:                             # %cond.false.2804
	movq	-64(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -1300(%rbp)       # 4-byte Spill
.LBB79_524:                             # %cond.end.2810
	movl	-1300(%rbp), %eax       # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB79_526
# BB#525:                               # %land.lhs.true.2814
	movq	-64(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jl	.LBB79_552
.LBB79_526:                             # %lor.lhs.false.2819
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_527
	jmp	.LBB79_538
.LBB79_527:                             # %cond.true.2820
	movq	-64(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB79_532
# BB#528:                               # %cond.true.2825
	movq	-64(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-64(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -1304(%rbp)       # 4-byte Spill
	jge	.LBB79_530
# BB#529:                               # %cond.true.2835
	movq	-64(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -1308(%rbp)       # 4-byte Spill
	jmp	.LBB79_531
.LBB79_530:                             # %cond.false.2845
	movq	-64(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -1308(%rbp)       # 4-byte Spill
.LBB79_531:                             # %cond.end.2851
	movl	-1308(%rbp), %eax       # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-1304(%rbp), %ecx       # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB79_552
	jmp	.LBB79_549
.LBB79_532:                             # %cond.false.2856
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_533
	jmp	.LBB79_534
.LBB79_533:                             # %cond.true.2857
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_552
	jmp	.LBB79_549
.LBB79_534:                             # %cond.false.2858
	movq	-64(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB79_536
# BB#535:                               # %cond.true.2866
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx
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
	movq	-64(%rbp), %rcx
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
	movl	%eax, -1312(%rbp)       # 4-byte Spill
	jmp	.LBB79_537
.LBB79_536:                             # %cond.false.2886
	movq	-64(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -1312(%rbp)       # 4-byte Spill
.LBB79_537:                             # %cond.end.2892
	movl	-1312(%rbp), %eax       # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-64(%rbp), %rsi
	movw	%si, %di
	movswl	%di, %ecx
	cmpl	%ecx, %eax
	jl	.LBB79_552
	jmp	.LBB79_549
.LBB79_538:                             # %cond.false.2899
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_539
	jmp	.LBB79_540
.LBB79_539:                             # %cond.true.2900
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_552
	jmp	.LBB79_549
.LBB79_540:                             # %cond.false.2901
	movq	-64(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB79_545
# BB#541:                               # %cond.true.2906
	movq	-64(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-64(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -1316(%rbp)       # 4-byte Spill
	jge	.LBB79_543
# BB#542:                               # %cond.true.2916
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx
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
	movq	-64(%rbp), %rcx
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
	movl	%eax, -1320(%rbp)       # 4-byte Spill
	jmp	.LBB79_544
.LBB79_543:                             # %cond.false.2936
	movq	-64(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -1320(%rbp)       # 4-byte Spill
.LBB79_544:                             # %cond.end.2942
	movl	-1320(%rbp), %eax       # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-1316(%rbp), %ecx       # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB79_552
	jmp	.LBB79_549
.LBB79_545:                             # %cond.false.2947
	movq	-64(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB79_547
# BB#546:                               # %cond.true.2955
	movq	-64(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -1324(%rbp)       # 4-byte Spill
	jmp	.LBB79_548
.LBB79_547:                             # %cond.false.2965
	movq	-64(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -1324(%rbp)       # 4-byte Spill
.LBB79_548:                             # %cond.end.2971
	movl	-1324(%rbp), %eax       # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-64(%rbp), %rsi
	movw	%si, %di
	movswl	%di, %ecx
	cmpl	%ecx, %eax
	jl	.LBB79_552
.LBB79_549:                             # %lor.lhs.false.2978
	movq	-64(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	shll	$3, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB79_551
# BB#550:                               # %land.lhs.true.2986
	movq	-64(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	shll	$3, %edx
	cmpl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB79_552
.LBB79_551:                             # %lor.lhs.false.2992
	movl	$32767, %eax            # imm = 0x7FFF
	movq	-64(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	shll	$3, %esi
	cmpl	%esi, %eax
	jge	.LBB79_556
.LBB79_552:                             # %cond.true.2998
	movq	-64(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB79_554
# BB#553:                               # %cond.true.3004
	movq	-64(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -1328(%rbp)       # 4-byte Spill
	jmp	.LBB79_555
.LBB79_554:                             # %cond.false.3010
	movq	-64(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -1328(%rbp)       # 4-byte Spill
.LBB79_555:                             # %cond.end.3018
	movl	-1328(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -192(%rbp)
	testb	$1, %cl
	jne	.LBB79_839
	jmp	.LBB79_838
.LBB79_556:                             # %cond.false.3021
	movq	-64(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB79_558
# BB#557:                               # %cond.true.3027
	movq	-64(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -1332(%rbp)       # 4-byte Spill
	jmp	.LBB79_559
.LBB79_558:                             # %cond.false.3033
	movq	-64(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -1332(%rbp)       # 4-byte Spill
.LBB79_559:                             # %cond.end.3041
	movl	-1332(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -192(%rbp)
	testb	$1, %dl
	jne	.LBB79_839
	jmp	.LBB79_838
.LBB79_560:                             # %cond.false.3044
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_562
# BB#561:                               # %cond.true.3050
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx
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
	movq	-64(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1344(%rbp)       # 8-byte Spill
	jmp	.LBB79_563
.LBB79_562:                             # %cond.false.3067
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1344(%rbp)       # 8-byte Spill
.LBB79_563:                             # %cond.end.3071
	movq	-1344(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB79_565
# BB#564:                               # %land.lhs.true.3075
	cmpq	$0, -64(%rbp)
	jl	.LBB79_591
.LBB79_565:                             # %lor.lhs.false.3078
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_566
	jmp	.LBB79_577
.LBB79_566:                             # %cond.true.3079
	cmpq	$0, -64(%rbp)
	jge	.LBB79_571
# BB#567:                               # %cond.true.3082
	movq	-64(%rbp), %rax
	movq	-64(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1352(%rbp)       # 8-byte Spill
	jge	.LBB79_569
# BB#568:                               # %cond.true.3088
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1360(%rbp)       # 8-byte Spill
	jmp	.LBB79_570
.LBB79_569:                             # %cond.false.3096
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1360(%rbp)       # 8-byte Spill
.LBB79_570:                             # %cond.end.3100
	movq	-1360(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1368(%rbp)       # 8-byte Spill
	cqto
	movq	-1368(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1352(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB79_591
	jmp	.LBB79_588
.LBB79_571:                             # %cond.false.3105
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_572
	jmp	.LBB79_573
.LBB79_572:                             # %cond.true.3106
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_591
	jmp	.LBB79_588
.LBB79_573:                             # %cond.false.3107
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_575
# BB#574:                               # %cond.true.3113
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx
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
	movq	-64(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1376(%rbp)       # 8-byte Spill
	jmp	.LBB79_576
.LBB79_575:                             # %cond.false.3130
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1376(%rbp)       # 8-byte Spill
.LBB79_576:                             # %cond.end.3134
	movq	-1376(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1384(%rbp)       # 8-byte Spill
	cqto
	movq	-1384(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-64(%rbp), %rax
	jl	.LBB79_591
	jmp	.LBB79_588
.LBB79_577:                             # %cond.false.3139
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_578
	jmp	.LBB79_579
.LBB79_578:                             # %cond.true.3140
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_591
	jmp	.LBB79_588
.LBB79_579:                             # %cond.false.3141
	cmpq	$0, -64(%rbp)
	jge	.LBB79_584
# BB#580:                               # %cond.true.3144
	movq	-64(%rbp), %rax
	movq	-64(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1392(%rbp)       # 8-byte Spill
	jge	.LBB79_582
# BB#581:                               # %cond.true.3150
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx
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
	movq	-64(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1400(%rbp)       # 8-byte Spill
	jmp	.LBB79_583
.LBB79_582:                             # %cond.false.3167
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1400(%rbp)       # 8-byte Spill
.LBB79_583:                             # %cond.end.3171
	movq	-1400(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1408(%rbp)       # 8-byte Spill
	cqto
	movq	-1408(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1392(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB79_591
	jmp	.LBB79_588
.LBB79_584:                             # %cond.false.3176
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_586
# BB#585:                               # %cond.true.3182
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1416(%rbp)       # 8-byte Spill
	jmp	.LBB79_587
.LBB79_586:                             # %cond.false.3190
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1416(%rbp)       # 8-byte Spill
.LBB79_587:                             # %cond.end.3194
	movq	-1416(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1424(%rbp)       # 8-byte Spill
	cqto
	movq	-1424(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-64(%rbp), %rax
	jl	.LBB79_591
.LBB79_588:                             # %lor.lhs.false.3199
	movq	-64(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_590
# BB#589:                               # %land.lhs.true.3205
	movq	-64(%rbp), %rax
	shlq	$3, %rax
	cmpq	$-32768, %rax           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB79_591
.LBB79_590:                             # %lor.lhs.false.3209
	movl	$32767, %eax            # imm = 0x7FFF
	movl	%eax, %ecx
	movq	-64(%rbp), %rdx
	shlq	$3, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB79_595
.LBB79_591:                             # %cond.true.3213
	movq	-64(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB79_593
# BB#592:                               # %cond.true.3219
	movq	-64(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -1428(%rbp)       # 4-byte Spill
	jmp	.LBB79_594
.LBB79_593:                             # %cond.false.3225
	movq	-64(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -1428(%rbp)       # 4-byte Spill
.LBB79_594:                             # %cond.end.3233
	movl	-1428(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -192(%rbp)
	testb	$1, %cl
	jne	.LBB79_839
	jmp	.LBB79_838
.LBB79_595:                             # %cond.false.3236
	movq	-64(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB79_597
# BB#596:                               # %cond.true.3242
	movq	-64(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -1432(%rbp)       # 4-byte Spill
	jmp	.LBB79_598
.LBB79_597:                             # %cond.false.3248
	movq	-64(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -1432(%rbp)       # 4-byte Spill
.LBB79_598:                             # %cond.end.3256
	movl	-1432(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -192(%rbp)
	testb	$1, %dl
	jne	.LBB79_839
	jmp	.LBB79_838
.LBB79_599:                             # %cond.false.3259
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_600
	jmp	.LBB79_679
.LBB79_600:                             # %cond.true.3260
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_601
	jmp	.LBB79_640
.LBB79_601:                             # %cond.true.3261
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB79_603
# BB#602:                               # %cond.true.3268
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx
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
	movq	-64(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -1436(%rbp)       # 4-byte Spill
	jmp	.LBB79_604
.LBB79_603:                             # %cond.false.3286
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -1436(%rbp)       # 4-byte Spill
.LBB79_604:                             # %cond.end.3291
	movl	-1436(%rbp), %eax       # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB79_606
# BB#605:                               # %land.lhs.true.3295
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jl	.LBB79_632
.LBB79_606:                             # %lor.lhs.false.3299
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_607
	jmp	.LBB79_618
.LBB79_607:                             # %cond.true.3300
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB79_612
# BB#608:                               # %cond.true.3304
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	movq	-64(%rbp), %rax
	movl	%eax, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -1440(%rbp)       # 4-byte Spill
	jge	.LBB79_610
# BB#609:                               # %cond.true.3312
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -1444(%rbp)       # 4-byte Spill
	jmp	.LBB79_611
.LBB79_610:                             # %cond.false.3321
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -1444(%rbp)       # 4-byte Spill
.LBB79_611:                             # %cond.end.3326
	movl	-1444(%rbp), %eax       # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-1440(%rbp), %ecx       # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB79_632
	jmp	.LBB79_629
.LBB79_612:                             # %cond.false.3331
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_613
	jmp	.LBB79_614
.LBB79_613:                             # %cond.true.3332
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_632
	jmp	.LBB79_629
.LBB79_614:                             # %cond.false.3333
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB79_616
# BB#615:                               # %cond.true.3340
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx
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
	movq	-64(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -1448(%rbp)       # 4-byte Spill
	jmp	.LBB79_617
.LBB79_616:                             # %cond.false.3358
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -1448(%rbp)       # 4-byte Spill
.LBB79_617:                             # %cond.end.3363
	movl	-1448(%rbp), %eax       # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-64(%rbp), %rsi
	movl	%esi, %ecx
	cmpl	%ecx, %eax
	jl	.LBB79_632
	jmp	.LBB79_629
.LBB79_618:                             # %cond.false.3369
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_619
	jmp	.LBB79_620
.LBB79_619:                             # %cond.true.3370
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_632
	jmp	.LBB79_629
.LBB79_620:                             # %cond.false.3371
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB79_625
# BB#621:                               # %cond.true.3375
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	movq	-64(%rbp), %rax
	movl	%eax, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -1452(%rbp)       # 4-byte Spill
	jge	.LBB79_623
# BB#622:                               # %cond.true.3383
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx
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
	movq	-64(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -1456(%rbp)       # 4-byte Spill
	jmp	.LBB79_624
.LBB79_623:                             # %cond.false.3401
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -1456(%rbp)       # 4-byte Spill
.LBB79_624:                             # %cond.end.3406
	movl	-1456(%rbp), %eax       # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-1452(%rbp), %ecx       # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB79_632
	jmp	.LBB79_629
.LBB79_625:                             # %cond.false.3411
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB79_627
# BB#626:                               # %cond.true.3418
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -1460(%rbp)       # 4-byte Spill
	jmp	.LBB79_628
.LBB79_627:                             # %cond.false.3427
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -1460(%rbp)       # 4-byte Spill
.LBB79_628:                             # %cond.end.3432
	movl	-1460(%rbp), %eax       # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-64(%rbp), %rsi
	movl	%esi, %ecx
	cmpl	%ecx, %eax
	jl	.LBB79_632
.LBB79_629:                             # %lor.lhs.false.3438
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB79_631
# BB#630:                               # %land.lhs.true.3445
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	jl	.LBB79_632
.LBB79_631:                             # %lor.lhs.false.3450
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movq	-64(%rbp), %rcx
	movl	%ecx, %edx
	shll	$3, %edx
	cmpl	%edx, %eax
	jge	.LBB79_636
.LBB79_632:                             # %cond.true.3455
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB79_634
# BB#633:                               # %cond.true.3460
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -1464(%rbp)       # 4-byte Spill
	jmp	.LBB79_635
.LBB79_634:                             # %cond.false.3463
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -1464(%rbp)       # 4-byte Spill
.LBB79_635:                             # %cond.end.3468
	movl	-1464(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -192(%rbp)
	testb	$1, %cl
	jne	.LBB79_839
	jmp	.LBB79_838
.LBB79_636:                             # %cond.false.3471
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB79_638
# BB#637:                               # %cond.true.3476
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -1468(%rbp)       # 4-byte Spill
	jmp	.LBB79_639
.LBB79_638:                             # %cond.false.3479
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -1468(%rbp)       # 4-byte Spill
.LBB79_639:                             # %cond.end.3484
	movl	-1468(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -192(%rbp)
	testb	$1, %dl
	jne	.LBB79_839
	jmp	.LBB79_838
.LBB79_640:                             # %cond.false.3487
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_642
# BB#641:                               # %cond.true.3493
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx
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
	movq	-64(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1480(%rbp)       # 8-byte Spill
	jmp	.LBB79_643
.LBB79_642:                             # %cond.false.3510
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1480(%rbp)       # 8-byte Spill
.LBB79_643:                             # %cond.end.3514
	movq	-1480(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB79_645
# BB#644:                               # %land.lhs.true.3518
	cmpq	$0, -64(%rbp)
	jl	.LBB79_671
.LBB79_645:                             # %lor.lhs.false.3521
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_646
	jmp	.LBB79_657
.LBB79_646:                             # %cond.true.3522
	cmpq	$0, -64(%rbp)
	jge	.LBB79_651
# BB#647:                               # %cond.true.3525
	movq	-64(%rbp), %rax
	movq	-64(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1488(%rbp)       # 8-byte Spill
	jge	.LBB79_649
# BB#648:                               # %cond.true.3531
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1496(%rbp)       # 8-byte Spill
	jmp	.LBB79_650
.LBB79_649:                             # %cond.false.3539
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1496(%rbp)       # 8-byte Spill
.LBB79_650:                             # %cond.end.3543
	movq	-1496(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1504(%rbp)       # 8-byte Spill
	cqto
	movq	-1504(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1488(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB79_671
	jmp	.LBB79_668
.LBB79_651:                             # %cond.false.3548
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_652
	jmp	.LBB79_653
.LBB79_652:                             # %cond.true.3549
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_671
	jmp	.LBB79_668
.LBB79_653:                             # %cond.false.3550
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_655
# BB#654:                               # %cond.true.3556
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx
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
	movq	-64(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1512(%rbp)       # 8-byte Spill
	jmp	.LBB79_656
.LBB79_655:                             # %cond.false.3573
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1512(%rbp)       # 8-byte Spill
.LBB79_656:                             # %cond.end.3577
	movq	-1512(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1520(%rbp)       # 8-byte Spill
	cqto
	movq	-1520(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-64(%rbp), %rax
	jl	.LBB79_671
	jmp	.LBB79_668
.LBB79_657:                             # %cond.false.3582
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_658
	jmp	.LBB79_659
.LBB79_658:                             # %cond.true.3583
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_671
	jmp	.LBB79_668
.LBB79_659:                             # %cond.false.3584
	cmpq	$0, -64(%rbp)
	jge	.LBB79_664
# BB#660:                               # %cond.true.3587
	movq	-64(%rbp), %rax
	movq	-64(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1528(%rbp)       # 8-byte Spill
	jge	.LBB79_662
# BB#661:                               # %cond.true.3593
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx
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
	movq	-64(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1536(%rbp)       # 8-byte Spill
	jmp	.LBB79_663
.LBB79_662:                             # %cond.false.3610
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1536(%rbp)       # 8-byte Spill
.LBB79_663:                             # %cond.end.3614
	movq	-1536(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1544(%rbp)       # 8-byte Spill
	cqto
	movq	-1544(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1528(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB79_671
	jmp	.LBB79_668
.LBB79_664:                             # %cond.false.3619
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_666
# BB#665:                               # %cond.true.3625
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1552(%rbp)       # 8-byte Spill
	jmp	.LBB79_667
.LBB79_666:                             # %cond.false.3633
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1552(%rbp)       # 8-byte Spill
.LBB79_667:                             # %cond.end.3637
	movq	-1552(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1560(%rbp)       # 8-byte Spill
	cqto
	movq	-1560(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-64(%rbp), %rax
	jl	.LBB79_671
.LBB79_668:                             # %lor.lhs.false.3642
	movq	-64(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_670
# BB#669:                               # %land.lhs.true.3648
	movq	-64(%rbp), %rax
	shlq	$3, %rax
	cmpq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	jl	.LBB79_671
.LBB79_670:                             # %lor.lhs.false.3652
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %ecx
	movq	-64(%rbp), %rdx
	shlq	$3, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB79_675
.LBB79_671:                             # %cond.true.3656
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB79_673
# BB#672:                               # %cond.true.3661
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -1564(%rbp)       # 4-byte Spill
	jmp	.LBB79_674
.LBB79_673:                             # %cond.false.3664
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -1564(%rbp)       # 4-byte Spill
.LBB79_674:                             # %cond.end.3669
	movl	-1564(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -192(%rbp)
	testb	$1, %cl
	jne	.LBB79_839
	jmp	.LBB79_838
.LBB79_675:                             # %cond.false.3672
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB79_677
# BB#676:                               # %cond.true.3677
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -1568(%rbp)       # 4-byte Spill
	jmp	.LBB79_678
.LBB79_677:                             # %cond.false.3680
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -1568(%rbp)       # 4-byte Spill
.LBB79_678:                             # %cond.end.3685
	movl	-1568(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -192(%rbp)
	testb	$1, %dl
	jne	.LBB79_839
	jmp	.LBB79_838
.LBB79_679:                             # %cond.false.3688
	movb	$1, %al
	testb	$1, %al
	jne	.LBB79_680
	jmp	.LBB79_759
.LBB79_680:                             # %cond.true.3689
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_681
	jmp	.LBB79_720
.LBB79_681:                             # %cond.true.3690
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_683
# BB#682:                               # %cond.true.3696
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx
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
	movq	-64(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1576(%rbp)       # 8-byte Spill
	jmp	.LBB79_684
.LBB79_683:                             # %cond.false.3713
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1576(%rbp)       # 8-byte Spill
.LBB79_684:                             # %cond.end.3717
	movq	-1576(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB79_686
# BB#685:                               # %land.lhs.true.3721
	cmpq	$0, -64(%rbp)
	jl	.LBB79_712
.LBB79_686:                             # %lor.lhs.false.3724
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_687
	jmp	.LBB79_698
.LBB79_687:                             # %cond.true.3725
	cmpq	$0, -64(%rbp)
	jge	.LBB79_692
# BB#688:                               # %cond.true.3728
	movq	-64(%rbp), %rax
	movq	-64(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1584(%rbp)       # 8-byte Spill
	jge	.LBB79_690
# BB#689:                               # %cond.true.3734
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1592(%rbp)       # 8-byte Spill
	jmp	.LBB79_691
.LBB79_690:                             # %cond.false.3742
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1592(%rbp)       # 8-byte Spill
.LBB79_691:                             # %cond.end.3746
	movq	-1592(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1600(%rbp)       # 8-byte Spill
	cqto
	movq	-1600(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1584(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB79_712
	jmp	.LBB79_709
.LBB79_692:                             # %cond.false.3751
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_693
	jmp	.LBB79_694
.LBB79_693:                             # %cond.true.3752
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_712
	jmp	.LBB79_709
.LBB79_694:                             # %cond.false.3753
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_696
# BB#695:                               # %cond.true.3759
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx
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
	movq	-64(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1608(%rbp)       # 8-byte Spill
	jmp	.LBB79_697
.LBB79_696:                             # %cond.false.3776
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1608(%rbp)       # 8-byte Spill
.LBB79_697:                             # %cond.end.3780
	movq	-1608(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1616(%rbp)       # 8-byte Spill
	cqto
	movq	-1616(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-64(%rbp), %rax
	jl	.LBB79_712
	jmp	.LBB79_709
.LBB79_698:                             # %cond.false.3785
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_699
	jmp	.LBB79_700
.LBB79_699:                             # %cond.true.3786
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_712
	jmp	.LBB79_709
.LBB79_700:                             # %cond.false.3787
	cmpq	$0, -64(%rbp)
	jge	.LBB79_705
# BB#701:                               # %cond.true.3790
	movq	-64(%rbp), %rax
	movq	-64(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1624(%rbp)       # 8-byte Spill
	jge	.LBB79_703
# BB#702:                               # %cond.true.3796
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx
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
	movq	-64(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1632(%rbp)       # 8-byte Spill
	jmp	.LBB79_704
.LBB79_703:                             # %cond.false.3813
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1632(%rbp)       # 8-byte Spill
.LBB79_704:                             # %cond.end.3817
	movq	-1632(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1640(%rbp)       # 8-byte Spill
	cqto
	movq	-1640(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1624(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB79_712
	jmp	.LBB79_709
.LBB79_705:                             # %cond.false.3822
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_707
# BB#706:                               # %cond.true.3828
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1648(%rbp)       # 8-byte Spill
	jmp	.LBB79_708
.LBB79_707:                             # %cond.false.3836
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1648(%rbp)       # 8-byte Spill
.LBB79_708:                             # %cond.end.3840
	movq	-1648(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1656(%rbp)       # 8-byte Spill
	cqto
	movq	-1656(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-64(%rbp), %rax
	jl	.LBB79_712
.LBB79_709:                             # %lor.lhs.false.3845
	movq	-64(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_711
# BB#710:                               # %land.lhs.true.3851
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-64(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB79_712
.LBB79_711:                             # %lor.lhs.false.3855
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-64(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB79_716
.LBB79_712:                             # %cond.true.3859
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-64(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB79_714
# BB#713:                               # %cond.true.3863
	movq	-64(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -1664(%rbp)       # 8-byte Spill
	jmp	.LBB79_715
.LBB79_714:                             # %cond.false.3865
	movq	-64(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1664(%rbp)       # 8-byte Spill
.LBB79_715:                             # %cond.end.3869
	movq	-1664(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -192(%rbp)
	testb	$1, %cl
	jne	.LBB79_839
	jmp	.LBB79_838
.LBB79_716:                             # %cond.false.3871
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-64(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB79_718
# BB#717:                               # %cond.true.3875
	movq	-64(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -1672(%rbp)       # 8-byte Spill
	jmp	.LBB79_719
.LBB79_718:                             # %cond.false.3877
	movq	-64(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1672(%rbp)       # 8-byte Spill
.LBB79_719:                             # %cond.end.3881
	movq	-1672(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -192(%rbp)
	testb	$1, %dl
	jne	.LBB79_839
	jmp	.LBB79_838
.LBB79_720:                             # %cond.false.3883
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_722
# BB#721:                               # %cond.true.3889
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx
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
	movq	-64(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1680(%rbp)       # 8-byte Spill
	jmp	.LBB79_723
.LBB79_722:                             # %cond.false.3906
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1680(%rbp)       # 8-byte Spill
.LBB79_723:                             # %cond.end.3910
	movq	-1680(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB79_725
# BB#724:                               # %land.lhs.true.3914
	cmpq	$0, -64(%rbp)
	jl	.LBB79_751
.LBB79_725:                             # %lor.lhs.false.3917
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_726
	jmp	.LBB79_737
.LBB79_726:                             # %cond.true.3918
	cmpq	$0, -64(%rbp)
	jge	.LBB79_731
# BB#727:                               # %cond.true.3921
	movq	-64(%rbp), %rax
	movq	-64(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1688(%rbp)       # 8-byte Spill
	jge	.LBB79_729
# BB#728:                               # %cond.true.3927
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1696(%rbp)       # 8-byte Spill
	jmp	.LBB79_730
.LBB79_729:                             # %cond.false.3935
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1696(%rbp)       # 8-byte Spill
.LBB79_730:                             # %cond.end.3939
	movq	-1696(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1704(%rbp)       # 8-byte Spill
	cqto
	movq	-1704(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1688(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB79_751
	jmp	.LBB79_748
.LBB79_731:                             # %cond.false.3944
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_732
	jmp	.LBB79_733
.LBB79_732:                             # %cond.true.3945
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_751
	jmp	.LBB79_748
.LBB79_733:                             # %cond.false.3946
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_735
# BB#734:                               # %cond.true.3952
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx
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
	movq	-64(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1712(%rbp)       # 8-byte Spill
	jmp	.LBB79_736
.LBB79_735:                             # %cond.false.3969
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1712(%rbp)       # 8-byte Spill
.LBB79_736:                             # %cond.end.3973
	movq	-1712(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1720(%rbp)       # 8-byte Spill
	cqto
	movq	-1720(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-64(%rbp), %rax
	jl	.LBB79_751
	jmp	.LBB79_748
.LBB79_737:                             # %cond.false.3978
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_738
	jmp	.LBB79_739
.LBB79_738:                             # %cond.true.3979
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_751
	jmp	.LBB79_748
.LBB79_739:                             # %cond.false.3980
	cmpq	$0, -64(%rbp)
	jge	.LBB79_744
# BB#740:                               # %cond.true.3983
	movq	-64(%rbp), %rax
	movq	-64(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1728(%rbp)       # 8-byte Spill
	jge	.LBB79_742
# BB#741:                               # %cond.true.3989
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx
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
	movq	-64(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1736(%rbp)       # 8-byte Spill
	jmp	.LBB79_743
.LBB79_742:                             # %cond.false.4006
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1736(%rbp)       # 8-byte Spill
.LBB79_743:                             # %cond.end.4010
	movq	-1736(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1744(%rbp)       # 8-byte Spill
	cqto
	movq	-1744(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1728(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB79_751
	jmp	.LBB79_748
.LBB79_744:                             # %cond.false.4015
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_746
# BB#745:                               # %cond.true.4021
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1752(%rbp)       # 8-byte Spill
	jmp	.LBB79_747
.LBB79_746:                             # %cond.false.4029
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1752(%rbp)       # 8-byte Spill
.LBB79_747:                             # %cond.end.4033
	movq	-1752(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1760(%rbp)       # 8-byte Spill
	cqto
	movq	-1760(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-64(%rbp), %rax
	jl	.LBB79_751
.LBB79_748:                             # %lor.lhs.false.4038
	movq	-64(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_750
# BB#749:                               # %land.lhs.true.4044
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-64(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB79_751
.LBB79_750:                             # %lor.lhs.false.4048
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-64(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB79_755
.LBB79_751:                             # %cond.true.4052
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-64(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB79_753
# BB#752:                               # %cond.true.4056
	movq	-64(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -1768(%rbp)       # 8-byte Spill
	jmp	.LBB79_754
.LBB79_753:                             # %cond.false.4058
	movq	-64(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1768(%rbp)       # 8-byte Spill
.LBB79_754:                             # %cond.end.4062
	movq	-1768(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -192(%rbp)
	testb	$1, %cl
	jne	.LBB79_839
	jmp	.LBB79_838
.LBB79_755:                             # %cond.false.4064
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-64(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB79_757
# BB#756:                               # %cond.true.4068
	movq	-64(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -1776(%rbp)       # 8-byte Spill
	jmp	.LBB79_758
.LBB79_757:                             # %cond.false.4070
	movq	-64(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1776(%rbp)       # 8-byte Spill
.LBB79_758:                             # %cond.end.4074
	movq	-1776(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -192(%rbp)
	testb	$1, %dl
	jne	.LBB79_839
	jmp	.LBB79_838
.LBB79_759:                             # %cond.false.4076
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_760
	jmp	.LBB79_799
.LBB79_760:                             # %cond.true.4077
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_762
# BB#761:                               # %cond.true.4083
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx
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
	movq	-64(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1784(%rbp)       # 8-byte Spill
	jmp	.LBB79_763
.LBB79_762:                             # %cond.false.4100
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1784(%rbp)       # 8-byte Spill
.LBB79_763:                             # %cond.end.4104
	movq	-1784(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB79_765
# BB#764:                               # %land.lhs.true.4108
	cmpq	$0, -64(%rbp)
	jl	.LBB79_791
.LBB79_765:                             # %lor.lhs.false.4111
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_766
	jmp	.LBB79_777
.LBB79_766:                             # %cond.true.4112
	cmpq	$0, -64(%rbp)
	jge	.LBB79_771
# BB#767:                               # %cond.true.4115
	movq	-64(%rbp), %rax
	movq	-64(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1792(%rbp)       # 8-byte Spill
	jge	.LBB79_769
# BB#768:                               # %cond.true.4121
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1800(%rbp)       # 8-byte Spill
	jmp	.LBB79_770
.LBB79_769:                             # %cond.false.4129
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1800(%rbp)       # 8-byte Spill
.LBB79_770:                             # %cond.end.4133
	movq	-1800(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1808(%rbp)       # 8-byte Spill
	cqto
	movq	-1808(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1792(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB79_791
	jmp	.LBB79_788
.LBB79_771:                             # %cond.false.4138
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_772
	jmp	.LBB79_773
.LBB79_772:                             # %cond.true.4139
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_791
	jmp	.LBB79_788
.LBB79_773:                             # %cond.false.4140
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_775
# BB#774:                               # %cond.true.4146
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx
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
	movq	-64(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1816(%rbp)       # 8-byte Spill
	jmp	.LBB79_776
.LBB79_775:                             # %cond.false.4163
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1816(%rbp)       # 8-byte Spill
.LBB79_776:                             # %cond.end.4167
	movq	-1816(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1824(%rbp)       # 8-byte Spill
	cqto
	movq	-1824(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-64(%rbp), %rax
	jl	.LBB79_791
	jmp	.LBB79_788
.LBB79_777:                             # %cond.false.4172
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_778
	jmp	.LBB79_779
.LBB79_778:                             # %cond.true.4173
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_791
	jmp	.LBB79_788
.LBB79_779:                             # %cond.false.4174
	cmpq	$0, -64(%rbp)
	jge	.LBB79_784
# BB#780:                               # %cond.true.4177
	movq	-64(%rbp), %rax
	movq	-64(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1832(%rbp)       # 8-byte Spill
	jge	.LBB79_782
# BB#781:                               # %cond.true.4183
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx
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
	movq	-64(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1840(%rbp)       # 8-byte Spill
	jmp	.LBB79_783
.LBB79_782:                             # %cond.false.4200
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1840(%rbp)       # 8-byte Spill
.LBB79_783:                             # %cond.end.4204
	movq	-1840(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1848(%rbp)       # 8-byte Spill
	cqto
	movq	-1848(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1832(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB79_791
	jmp	.LBB79_788
.LBB79_784:                             # %cond.false.4209
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_786
# BB#785:                               # %cond.true.4215
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1856(%rbp)       # 8-byte Spill
	jmp	.LBB79_787
.LBB79_786:                             # %cond.false.4223
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1856(%rbp)       # 8-byte Spill
.LBB79_787:                             # %cond.end.4227
	movq	-1856(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1864(%rbp)       # 8-byte Spill
	cqto
	movq	-1864(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-64(%rbp), %rax
	jl	.LBB79_791
.LBB79_788:                             # %lor.lhs.false.4232
	movq	-64(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_790
# BB#789:                               # %land.lhs.true.4238
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-64(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB79_791
.LBB79_790:                             # %lor.lhs.false.4242
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-64(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB79_795
.LBB79_791:                             # %cond.true.4246
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-64(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB79_793
# BB#792:                               # %cond.true.4250
	movq	-64(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -1872(%rbp)       # 8-byte Spill
	jmp	.LBB79_794
.LBB79_793:                             # %cond.false.4252
	movq	-64(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1872(%rbp)       # 8-byte Spill
.LBB79_794:                             # %cond.end.4256
	movq	-1872(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -192(%rbp)
	testb	$1, %cl
	jne	.LBB79_839
	jmp	.LBB79_838
.LBB79_795:                             # %cond.false.4258
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-64(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB79_797
# BB#796:                               # %cond.true.4262
	movq	-64(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -1880(%rbp)       # 8-byte Spill
	jmp	.LBB79_798
.LBB79_797:                             # %cond.false.4264
	movq	-64(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1880(%rbp)       # 8-byte Spill
.LBB79_798:                             # %cond.end.4268
	movq	-1880(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -192(%rbp)
	testb	$1, %dl
	jne	.LBB79_839
	jmp	.LBB79_838
.LBB79_799:                             # %cond.false.4270
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_801
# BB#800:                               # %cond.true.4276
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx
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
	movq	-64(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1888(%rbp)       # 8-byte Spill
	jmp	.LBB79_802
.LBB79_801:                             # %cond.false.4293
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1888(%rbp)       # 8-byte Spill
.LBB79_802:                             # %cond.end.4297
	movq	-1888(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB79_804
# BB#803:                               # %land.lhs.true.4301
	cmpq	$0, -64(%rbp)
	jl	.LBB79_830
.LBB79_804:                             # %lor.lhs.false.4304
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_805
	jmp	.LBB79_816
.LBB79_805:                             # %cond.true.4305
	cmpq	$0, -64(%rbp)
	jge	.LBB79_810
# BB#806:                               # %cond.true.4308
	movq	-64(%rbp), %rax
	movq	-64(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1896(%rbp)       # 8-byte Spill
	jge	.LBB79_808
# BB#807:                               # %cond.true.4314
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1904(%rbp)       # 8-byte Spill
	jmp	.LBB79_809
.LBB79_808:                             # %cond.false.4322
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1904(%rbp)       # 8-byte Spill
.LBB79_809:                             # %cond.end.4326
	movq	-1904(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1912(%rbp)       # 8-byte Spill
	cqto
	movq	-1912(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1896(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB79_830
	jmp	.LBB79_827
.LBB79_810:                             # %cond.false.4331
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_811
	jmp	.LBB79_812
.LBB79_811:                             # %cond.true.4332
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_830
	jmp	.LBB79_827
.LBB79_812:                             # %cond.false.4333
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_814
# BB#813:                               # %cond.true.4339
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx
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
	movq	-64(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1920(%rbp)       # 8-byte Spill
	jmp	.LBB79_815
.LBB79_814:                             # %cond.false.4356
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1920(%rbp)       # 8-byte Spill
.LBB79_815:                             # %cond.end.4360
	movq	-1920(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1928(%rbp)       # 8-byte Spill
	cqto
	movq	-1928(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-64(%rbp), %rax
	jl	.LBB79_830
	jmp	.LBB79_827
.LBB79_816:                             # %cond.false.4365
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_817
	jmp	.LBB79_818
.LBB79_817:                             # %cond.true.4366
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_830
	jmp	.LBB79_827
.LBB79_818:                             # %cond.false.4367
	cmpq	$0, -64(%rbp)
	jge	.LBB79_823
# BB#819:                               # %cond.true.4370
	movq	-64(%rbp), %rax
	movq	-64(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1936(%rbp)       # 8-byte Spill
	jge	.LBB79_821
# BB#820:                               # %cond.true.4376
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx
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
	movq	-64(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1944(%rbp)       # 8-byte Spill
	jmp	.LBB79_822
.LBB79_821:                             # %cond.false.4393
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1944(%rbp)       # 8-byte Spill
.LBB79_822:                             # %cond.end.4397
	movq	-1944(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1952(%rbp)       # 8-byte Spill
	cqto
	movq	-1952(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1936(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB79_830
	jmp	.LBB79_827
.LBB79_823:                             # %cond.false.4402
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_825
# BB#824:                               # %cond.true.4408
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1960(%rbp)       # 8-byte Spill
	jmp	.LBB79_826
.LBB79_825:                             # %cond.false.4416
	movq	-64(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1960(%rbp)       # 8-byte Spill
.LBB79_826:                             # %cond.end.4420
	movq	-1960(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1968(%rbp)       # 8-byte Spill
	cqto
	movq	-1968(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-64(%rbp), %rax
	jl	.LBB79_830
.LBB79_827:                             # %lor.lhs.false.4425
	movq	-64(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB79_829
# BB#828:                               # %land.lhs.true.4431
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-64(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB79_830
.LBB79_829:                             # %lor.lhs.false.4435
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-64(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB79_834
.LBB79_830:                             # %cond.true.4439
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-64(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB79_832
# BB#831:                               # %cond.true.4443
	movq	-64(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -1976(%rbp)       # 8-byte Spill
	jmp	.LBB79_833
.LBB79_832:                             # %cond.false.4445
	movq	-64(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1976(%rbp)       # 8-byte Spill
.LBB79_833:                             # %cond.end.4449
	movq	-1976(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -192(%rbp)
	testb	$1, %cl
	jne	.LBB79_839
	jmp	.LBB79_838
.LBB79_834:                             # %cond.false.4451
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-64(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB79_836
# BB#835:                               # %cond.true.4455
	movq	-64(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -1984(%rbp)       # 8-byte Spill
	jmp	.LBB79_837
.LBB79_836:                             # %cond.false.4457
	movq	-64(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1984(%rbp)       # 8-byte Spill
.LBB79_837:                             # %cond.end.4461
	movq	-1984(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -192(%rbp)
	testb	$1, %dl
	jne	.LBB79_839
.LBB79_838:                             # %lor.lhs.false.4463
	movq	$-1, %rax
	cmpq	-192(%rbp), %rax
	jae	.LBB79_840
.LBB79_839:                             # %if.then.4466
	movq	$-1, %rdi
	callq	memory_full
.LBB79_840:                             # %if.else.4467
	movq	-192(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jg	.LBB79_842
# BB#841:                               # %if.then.4470
	movq	-192(%rbp), %rax
	movq	-88(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -88(%rbp)
	movq	-192(%rbp), %rax
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -72(%rbp)
	jmp	.LBB79_843
.LBB79_842:                             # %if.else.4472
	movq	-192(%rbp), %rdi
	callq	xmalloc
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	make_save_memory
	movabsq	$free_save_value, %rdi
	movq	%rax, -200(%rbp)
	movb	$1, -97(%rbp)
	movq	-200(%rbp), %rsi
	callq	record_unwind_protect
.LBB79_843:                             # %if.end.4476
	jmp	.LBB79_844
.LBB79_844:                             # %if.end.4477
	jmp	.LBB79_845
.LBB79_845:                             # %do.end.4478
	movq	-40(%rbp), %rdi
	callq	SDATA
	movq	%rax, -168(%rbp)
	movq	-40(%rbp), %rdi
	callq	STRING_MULTIBYTE
	testb	$1, %al
	jne	.LBB79_846
	jmp	.LBB79_873
.LBB79_846:                             # %if.then.4481
	movq	$0, -56(%rbp)
.LBB79_847:                             # %for.cond.4483
                                        # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax
	cmpq	-176(%rbp), %rax
	jge	.LBB79_859
# BB#848:                               # %for.body.4486
                                        #   in Loop: Header=BB79_847 Depth=1
	movq	-168(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB79_850
# BB#849:                               # %cond.true.4491
                                        #   in Loop: Header=BB79_847 Depth=1
	movq	-168(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -168(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -1988(%rbp)       # 4-byte Spill
	jmp	.LBB79_857
.LBB79_850:                             # %cond.false.4493
                                        #   in Loop: Header=BB79_847 Depth=1
	movq	-168(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB79_852
# BB#851:                               # %cond.true.4498
                                        #   in Loop: Header=BB79_847 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movq	-168(%rbp), %rdx
	addq	$2, %rdx
	movq	%rdx, -168(%rbp)
	movq	-168(%rbp), %rdx
	movzbl	-2(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-168(%rbp), %rdx
	movzbl	-1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-168(%rbp), %rdx
	movzbl	-2(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	orl	%eax, %esi
	movl	%esi, -1992(%rbp)       # 4-byte Spill
	jmp	.LBB79_856
.LBB79_852:                             # %cond.false.4514
                                        #   in Loop: Header=BB79_847 Depth=1
	movq	-168(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB79_854
# BB#853:                               # %cond.true.4519
                                        #   in Loop: Header=BB79_847 Depth=1
	movq	-168(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	movzbl	-3(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-168(%rbp), %rax
	movzbl	-2(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-168(%rbp), %rax
	movzbl	-1(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -1996(%rbp)       # 4-byte Spill
	jmp	.LBB79_855
.LBB79_854:                             # %cond.false.4534
                                        #   in Loop: Header=BB79_847 Depth=1
	leaq	-168(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-168(%rbp), %rdi
	callq	string_char
	movl	%eax, -1996(%rbp)       # 4-byte Spill
.LBB79_855:                             # %cond.end.4536
                                        #   in Loop: Header=BB79_847 Depth=1
	movl	-1996(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1992(%rbp)       # 4-byte Spill
.LBB79_856:                             # %cond.end.4538
                                        #   in Loop: Header=BB79_847 Depth=1
	movl	-1992(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1988(%rbp)       # 4-byte Spill
.LBB79_857:                             # %cond.end.4540
                                        #   in Loop: Header=BB79_847 Depth=1
	movl	-1988(%rbp), %eax       # 4-byte Reload
	movl	%eax, -204(%rbp)
# BB#858:                               # %for.inc.4542
                                        #   in Loop: Header=BB79_847 Depth=1
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB79_847
.LBB79_859:                             # %for.end.4544
	movq	$0, -56(%rbp)
.LBB79_860:                             # %for.cond.4545
                                        # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jge	.LBB79_872
# BB#861:                               # %for.body.4548
                                        #   in Loop: Header=BB79_860 Depth=1
	movq	-168(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB79_863
# BB#862:                               # %cond.true.4553
                                        #   in Loop: Header=BB79_860 Depth=1
	movq	-168(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -168(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -2000(%rbp)       # 4-byte Spill
	jmp	.LBB79_870
.LBB79_863:                             # %cond.false.4556
                                        #   in Loop: Header=BB79_860 Depth=1
	movq	-168(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB79_865
# BB#864:                               # %cond.true.4561
                                        #   in Loop: Header=BB79_860 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movq	-168(%rbp), %rdx
	addq	$2, %rdx
	movq	%rdx, -168(%rbp)
	movq	-168(%rbp), %rdx
	movzbl	-2(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-168(%rbp), %rdx
	movzbl	-1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-168(%rbp), %rdx
	movzbl	-2(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	orl	%eax, %esi
	movl	%esi, -2004(%rbp)       # 4-byte Spill
	jmp	.LBB79_869
.LBB79_865:                             # %cond.false.4577
                                        #   in Loop: Header=BB79_860 Depth=1
	movq	-168(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB79_867
# BB#866:                               # %cond.true.4582
                                        #   in Loop: Header=BB79_860 Depth=1
	movq	-168(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	movzbl	-3(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-168(%rbp), %rax
	movzbl	-2(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-168(%rbp), %rax
	movzbl	-1(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -2008(%rbp)       # 4-byte Spill
	jmp	.LBB79_868
.LBB79_867:                             # %cond.false.4597
                                        #   in Loop: Header=BB79_860 Depth=1
	leaq	-168(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-168(%rbp), %rdi
	callq	string_char
	movl	%eax, -2008(%rbp)       # 4-byte Spill
.LBB79_868:                             # %cond.end.4599
                                        #   in Loop: Header=BB79_860 Depth=1
	movl	-2008(%rbp), %eax       # 4-byte Reload
	movl	%eax, -2004(%rbp)       # 4-byte Spill
.LBB79_869:                             # %cond.end.4601
                                        #   in Loop: Header=BB79_860 Depth=1
	movl	-2004(%rbp), %eax       # 4-byte Reload
	movl	%eax, -2000(%rbp)       # 4-byte Spill
.LBB79_870:                             # %cond.end.4603
                                        #   in Loop: Header=BB79_860 Depth=1
	movl	-2000(%rbp), %eax       # 4-byte Reload
	movl	%eax, -204(%rbp)
	movslq	-204(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	-56(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	%rcx, (%rsi,%rdx,8)
# BB#871:                               # %for.inc.4609
                                        #   in Loop: Header=BB79_860 Depth=1
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB79_860
.LBB79_872:                             # %for.end.4611
	jmp	.LBB79_878
.LBB79_873:                             # %if.else.4612
	movq	$0, -56(%rbp)
.LBB79_874:                             # %for.cond.4613
                                        # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jge	.LBB79_877
# BB#875:                               # %for.body.4616
                                        #   in Loop: Header=BB79_874 Depth=1
	movq	-176(%rbp), %rax
	addq	-56(%rbp), %rax
	movq	-168(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, %eax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-56(%rbp), %rcx
	movq	-72(%rbp), %rsi
	movq	%rax, (%rsi,%rcx,8)
# BB#876:                               # %for.inc.4623
                                        #   in Loop: Header=BB79_874 Depth=1
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB79_874
.LBB79_877:                             # %for.end.4625
	jmp	.LBB79_878
.LBB79_878:                             # %if.end.4626
	jmp	.LBB79_893
.LBB79_879:                             # %if.else.4627
	movq	-40(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB79_880
	jmp	.LBB79_891
.LBB79_880:                             # %if.then.4629
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdi, -2016(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -2024(%rbp)       # 8-byte Spill
	movq	%rsi, -2032(%rbp)       # 8-byte Spill
	callq	ASIZE
	leaq	-216(%rbp), %r8
	leaq	-224(%rbp), %r9
	movq	-2016(%rbp), %rdi       # 8-byte Reload
	movq	-2032(%rbp), %rsi       # 8-byte Reload
	movq	-2024(%rbp), %rdx       # 8-byte Reload
	movq	%rax, %rcx
	callq	validate_subarray
	movq	-216(%rbp), %rax
	cmpq	-224(%rbp), %rax
	jne	.LBB79_882
# BB#881:                               # %if.then.4635
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB79_918
.LBB79_882:                             # %if.end.4637
	movq	-224(%rbp), %rax
	subq	-216(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	$0, -56(%rbp)
.LBB79_883:                             # %for.cond.4639
                                        # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jge	.LBB79_890
# BB#884:                               # %for.body.4642
                                        #   in Loop: Header=BB79_883 Depth=1
	movq	-40(%rbp), %rdi
	movq	-216(%rbp), %rax
	addq	-56(%rbp), %rax
	movq	%rax, %rsi
	callq	AREF
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB79_885
	jmp	.LBB79_887
.LBB79_885:                             # %land.lhs.true.4647
                                        #   in Loop: Header=BB79_883 Depth=1
	movq	-232(%rbp), %rax
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jg	.LBB79_887
# BB#886:                               # %cond.true.4651
                                        #   in Loop: Header=BB79_883 Depth=1
	jmp	.LBB79_888
.LBB79_887:                             # %cond.false.4652
	movl	$260, %edi              # imm = 0x104
	callq	builtin_lisp_symbol
	movq	-232(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -2040(%rbp)       # 8-byte Spill
.LBB79_888:                             # %cond.end.4654
                                        #   in Loop: Header=BB79_883 Depth=1
	jmp	.LBB79_889
.LBB79_889:                             # %for.inc.4655
                                        #   in Loop: Header=BB79_883 Depth=1
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB79_883
.LBB79_890:                             # %for.end.4657
	movq	-40(%rbp), %rdi
	movq	-216(%rbp), %rsi
	callq	aref_addr
	movq	%rax, -72(%rbp)
	jmp	.LBB79_892
.LBB79_891:                             # %if.else.4659
	movl	$179, %edi
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -2048(%rbp)       # 8-byte Spill
.LBB79_892:                             # %if.end.4661
	jmp	.LBB79_893
.LBB79_893:                             # %if.end.4662
	jmp	.LBB79_894
.LBB79_894:                             # %if.end.4663
	movq	-64(%rbp), %rdi
	callq	make_uninit_vector
	movq	%rax, -80(%rbp)
	movq	$0, -56(%rbp)
.LBB79_895:                             # %for.cond.4665
                                        # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jge	.LBB79_911
# BB#896:                               # %for.body.4668
                                        #   in Loop: Header=BB79_895 Depth=1
	movq	-56(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	sarq	$2, %rax
	movl	%eax, %edx
	movl	%edx, -244(%rbp)
	movq	-48(%rbp), %rax
	movq	208(%rax), %rax
	movq	96(%rax), %rax
	movq	-48(%rbp), %rdi
	movl	-244(%rbp), %esi
	callq	*%rax
	movl	%eax, -248(%rbp)
	cmpl	$-1, -248(%rbp)
	jne	.LBB79_898
# BB#897:                               # %if.then.4676
                                        #   in Loop: Header=BB79_895 Depth=1
	xorl	%edi, %edi
	movq	-80(%rbp), %rax
	movq	-56(%rbp), %rsi
	movq	%rsi, -2056(%rbp)       # 8-byte Spill
	movq	%rax, -2064(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-2064(%rbp), %rdi       # 8-byte Reload
	movq	-2056(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	jmp	.LBB79_910
.LBB79_898:                             # %if.end.4678
                                        #   in Loop: Header=BB79_895 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movl	$42, %edi
                                        # kill: RDI<def> EDI<kill>
	movq	%rax, %rsi
	callq	Fmake_vector
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -240(%rbp)
	movq	-240(%rbp), %rdi
	movq	-56(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdx
	callq	ASET
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	-240(%rbp), %rdi
	movq	-56(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdx
	callq	ASET
	movl	$2, %ecx
	movl	%ecx, %esi
	movq	-240(%rbp), %rdi
	movslq	-244(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdx
	callq	ASET
	movq	-240(%rbp), %rdi
	cmpl	$-1, -248(%rbp)
	movq	%rdi, -2072(%rbp)       # 8-byte Spill
	jne	.LBB79_900
# BB#899:                               # %cond.true.4690
                                        #   in Loop: Header=BB79_895 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -2080(%rbp)       # 8-byte Spill
	jmp	.LBB79_909
.LBB79_900:                             # %cond.false.4692
                                        #   in Loop: Header=BB79_895 Depth=1
	xorl	%eax, %eax
	cmpl	-248(%rbp), %eax
	jbe	.LBB79_902
# BB#901:                               # %lor.lhs.false.4695
                                        #   in Loop: Header=BB79_895 Depth=1
	movabsq	$-2305843009213693952, %rax # imm = 0xE000000000000000
	movl	-248(%rbp), %ecx
	movl	%ecx, %edx
	cmpq	%rdx, %rax
	jg	.LBB79_904
.LBB79_902:                             # %land.lhs.true.4699
                                        #   in Loop: Header=BB79_895 Depth=1
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	movl	-248(%rbp), %ecx
	movl	%ecx, %edx
	cmpq	%rax, %rdx
	jg	.LBB79_904
# BB#903:                               # %cond.true.4703
                                        #   in Loop: Header=BB79_895 Depth=1
	movl	-248(%rbp), %eax
	movl	%eax, %ecx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -2088(%rbp)       # 8-byte Spill
	jmp	.LBB79_908
.LBB79_904:                             # %cond.false.4707
                                        #   in Loop: Header=BB79_895 Depth=1
	imull	$0, -248(%rbp), %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jae	.LBB79_906
# BB#905:                               # %cond.true.4712
                                        #   in Loop: Header=BB79_895 Depth=1
	movl	-248(%rbp), %eax
	movl	%eax, %edi
	callq	intbig_to_lisp
	movq	%rax, -2096(%rbp)       # 8-byte Spill
	jmp	.LBB79_907
.LBB79_906:                             # %cond.false.4715
                                        #   in Loop: Header=BB79_895 Depth=1
	movl	-248(%rbp), %eax
	movl	%eax, %edi
	callq	uintbig_to_lisp
	movq	%rax, -2096(%rbp)       # 8-byte Spill
.LBB79_907:                             # %cond.end.4718
                                        #   in Loop: Header=BB79_895 Depth=1
	movq	-2096(%rbp), %rax       # 8-byte Reload
	movq	%rax, -2088(%rbp)       # 8-byte Spill
.LBB79_908:                             # %cond.end.4720
                                        #   in Loop: Header=BB79_895 Depth=1
	movq	-2088(%rbp), %rax       # 8-byte Reload
	movq	%rax, -2080(%rbp)       # 8-byte Spill
.LBB79_909:                             # %cond.end.4722
                                        #   in Loop: Header=BB79_895 Depth=1
	movq	-2080(%rbp), %rax       # 8-byte Reload
	movl	$3, %ecx
	movl	%ecx, %esi
	movq	-2072(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	leaq	-248(%rbp), %rsi
	movl	$1, %edx
	leaq	-264(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	208(%rax), %rax
	movq	104(%rax), %rax
	movq	-48(%rbp), %rdi
	callq	*%rax
	movl	$4, %edx
	movl	%edx, %esi
	movq	-240(%rbp), %rdi
	movswq	-260(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdx
	callq	ASET
	movl	$5, %r8d
	movl	%r8d, %esi
	movq	-240(%rbp), %rdi
	movswq	-264(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdx
	callq	ASET
	movl	$6, %r8d
	movl	%r8d, %esi
	movq	-240(%rbp), %rdi
	movswq	-262(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdx
	callq	ASET
	movl	$7, %r8d
	movl	%r8d, %esi
	movq	-240(%rbp), %rdi
	movswq	-258(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdx
	callq	ASET
	movl	$8, %r8d
	movl	%r8d, %esi
	movq	-240(%rbp), %rdi
	movswq	-256(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdx
	callq	ASET
	movq	-80(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-240(%rbp), %rdx
	callq	ASET
.LBB79_910:                             # %for.inc.4740
                                        #   in Loop: Header=BB79_895 Depth=1
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB79_895
.LBB79_911:                             # %for.end.4742
	movq	-40(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB79_917
# BB#912:                               # %if.then.4744
	jmp	.LBB79_913
.LBB79_913:                             # %do.body.4745
	testb	$1, -97(%rbp)
	je	.LBB79_915
# BB#914:                               # %if.then.4747
	xorl	%edi, %edi
	movb	$0, -97(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -2104(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-2104(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -2112(%rbp)       # 8-byte Spill
.LBB79_915:                             # %if.end.4750
	jmp	.LBB79_916
.LBB79_916:                             # %do.end.4751
	jmp	.LBB79_917
.LBB79_917:                             # %if.end.4752
	movq	-80(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB79_918:                             # %return
	movq	-8(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end79:
	.size	Ffont_get_glyphs, .Lfunc_end79-Ffont_get_glyphs
	.cfi_endproc

	.globl	Ffont_match_p
	.align	16, 0x90
	.type	Ffont_match_p,@function
Ffont_match_p:                          # @Ffont_match_p
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp245:
	.cfi_def_cfa_offset 16
.Ltmp246:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp247:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_FONT_SPEC
	movq	-16(%rbp), %rdi
	callq	CHECK_FONT
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	font_match_p
	testb	$1, %al
	jne	.LBB80_1
	jmp	.LBB80_2
.LBB80_1:                               # %cond.true
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB80_3
.LBB80_2:                               # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB80_3:                               # %cond.end
	movq	-24(%rbp), %rax         # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end80:
	.size	Ffont_match_p, .Lfunc_end80-Ffont_match_p
	.cfi_endproc

	.globl	Ffont_at
	.align	16, 0x90
	.type	Ffont_at,@function
Ffont_at:                               # @Ffont_at
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp248:
	.cfi_def_cfa_offset 16
.Ltmp249:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp250:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	decode_live_window
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB81_16
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	cmpq	current_buffer, %rax
	je	.LBB81_3
# BB#2:                                 # %if.then.4
	movabsq	$.L.str.33, %rdi
	movb	$0, %al
	callq	error
.LBB81_3:                               # %if.end
	jmp	.LBB81_4
.LBB81_4:                               # %do.body
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB81_7
# BB#5:                                 # %land.lhs.true
	movq	-8(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB81_7
# BB#6:                                 # %if.then.10
	movq	-8(%rbp), %rdi
	callq	marker_position
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -8(%rbp)
	jmp	.LBB81_11
.LBB81_7:                               # %if.else
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB81_9
# BB#8:                                 # %cond.true
	jmp	.LBB81_10
.LBB81_9:                               # %cond.false
	movl	$558, %edi              # imm = 0x22E
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB81_10:                              # %cond.end
	jmp	.LBB81_11
.LBB81_11:                              # %if.end.19
	jmp	.LBB81_12
.LBB81_12:                              # %do.end
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	-8(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jg	.LBB81_14
# BB#13:                                # %land.lhs.true.22
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	jl	.LBB81_15
.LBB81_14:                              # %if.then.26
	movq	-8(%rbp), %rdi
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
.LBB81_15:                              # %if.end.31
	jmp	.LBB81_23
.LBB81_16:                              # %if.else.32
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB81_18
# BB#17:                                # %cond.true.38
	jmp	.LBB81_19
.LBB81_18:                              # %cond.false.39
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB81_19:                              # %cond.end.41
	movq	-24(%rbp), %rdi
	callq	CHECK_STRING
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rdi
	jg	.LBB81_21
# BB#20:                                # %land.lhs.true.45
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	SCHARS
	movq	-64(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB81_22
.LBB81_21:                              # %if.then.50
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	args_out_of_range
.LBB81_22:                              # %if.end.51
	jmp	.LBB81_23
.LBB81_23:                              # %if.end.52
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	sarq	$2, %rcx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %r8
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	-72(%rbp), %rcx         # 8-byte Reload
	callq	font_at
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end81:
	.size	Ffont_at, .Lfunc_end81-Ffont_at
	.cfi_endproc

	.align	16, 0x90
	.type	font_at,@function
font_at:                                # @font_at
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp251:
	.cfi_def_cfa_offset 16
.Ltmp252:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp253:
	.cfi_def_cfa_register %rbp
	subq	$240, %rsp
	xorl	%eax, %eax
	movl	%edi, -12(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	-48(%rbp), %rcx
	movl	%eax, %edi
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB82_2
# BB#1:                                 # %cond.true
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	andb	$1, %dl
	movzbl	%dl, %edi
	movl	%edi, -140(%rbp)        # 4-byte Spill
	jmp	.LBB82_3
.LBB82_2:                               # %cond.false
	movq	-48(%rbp), %rdi
	callq	STRING_MULTIBYTE
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -140(%rbp)        # 4-byte Spill
.LBB82_3:                               # %cond.end
	movl	-140(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	setne	%cl
	andb	$1, %cl
	movb	%cl, -57(%rbp)
	cmpl	$0, -12(%rbp)
	jge	.LBB82_32
# BB#4:                                 # %if.then
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB82_18
# BB#5:                                 # %if.then.9
	testb	$1, -57(%rbp)
	je	.LBB82_13
# BB#6:                                 # %if.then.11
	movq	current_buffer, %rdi
	movq	-24(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	xorl	%edi, %edi
	movq	%rax, -80(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB82_8
# BB#7:                                 # %cond.true.17
	movq	-80(%rbp), %rdi
	callq	FETCH_MULTIBYTE_CHAR
	movl	%eax, -164(%rbp)        # 4-byte Spill
	jmp	.LBB82_12
.LBB82_8:                               # %cond.false.19
	movq	-80(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB82_10
# BB#9:                                 # %cond.true.22
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB82_11
.LBB82_10:                              # %cond.false.24
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	jmp	.LBB82_11
.LBB82_11:                              # %cond.end.25
	movq	-176(%rbp), %rax        # 8-byte Reload
	addq	-80(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, -164(%rbp)        # 4-byte Spill
.LBB82_12:                              # %cond.end.30
	movl	-164(%rbp), %eax        # 4-byte Reload
	movl	%eax, -12(%rbp)
	jmp	.LBB82_17
.LBB82_13:                              # %if.else
	movq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB82_15
# BB#14:                                # %cond.true.36
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB82_16
.LBB82_15:                              # %cond.false.39
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	jmp	.LBB82_16
.LBB82_16:                              # %cond.end.40
	movq	-184(%rbp), %rax        # 8-byte Reload
	addq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, -12(%rbp)
.LBB82_17:                              # %if.end
	jmp	.LBB82_31
.LBB82_18:                              # %if.else.48
	movq	-48(%rbp), %rdi
	callq	STRING_MULTIBYTE
	andb	$1, %al
	movb	%al, -57(%rbp)
	testb	$1, -57(%rbp)
	je	.LBB82_29
# BB#19:                                # %if.then.52
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	string_char_to_byte
	movq	%rax, -96(%rbp)
	movq	-48(%rbp), %rdi
	callq	SDATA
	addq	-96(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB82_21
# BB#20:                                # %cond.true.59
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -188(%rbp)        # 4-byte Spill
	jmp	.LBB82_28
.LBB82_21:                              # %cond.false.62
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB82_23
# BB#22:                                # %cond.true.67
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movq	-88(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-88(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-88(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -192(%rbp)        # 4-byte Spill
	jmp	.LBB82_27
.LBB82_23:                              # %cond.false.80
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB82_25
# BB#24:                                # %cond.true.85
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-88(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-88(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -196(%rbp)        # 4-byte Spill
	jmp	.LBB82_26
.LBB82_25:                              # %cond.false.99
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-88(%rbp), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	string_char
	movl	%eax, -196(%rbp)        # 4-byte Spill
.LBB82_26:                              # %cond.end.101
	movl	-196(%rbp), %eax        # 4-byte Reload
	movl	%eax, -192(%rbp)        # 4-byte Spill
.LBB82_27:                              # %cond.end.103
	movl	-192(%rbp), %eax        # 4-byte Reload
	movl	%eax, -188(%rbp)        # 4-byte Spill
.LBB82_28:                              # %cond.end.105
	movl	-188(%rbp), %eax        # 4-byte Reload
	movl	%eax, -12(%rbp)
	jmp	.LBB82_30
.LBB82_29:                              # %if.else.107
	movq	-24(%rbp), %rax
	movq	-48(%rbp), %rdi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	SDATA
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movzbl	(%rax,%rdi), %ecx
	movl	%ecx, -12(%rbp)
.LBB82_30:                              # %if.end.111
	jmp	.LBB82_31
.LBB82_31:                              # %if.end.112
	jmp	.LBB82_32
.LBB82_32:                              # %if.end.113
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	je	.LBB82_34
# BB#33:                                # %if.then.116
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB82_54
.LBB82_34:                              # %if.end.118
	cmpq	$0, -32(%rbp)
	jne	.LBB82_44
# BB#35:                                # %if.then.120
	movq	-48(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB82_36
	jmp	.LBB82_37
.LBB82_36:                              # %if.then.122
	xorl	%eax, %eax
	movl	%eax, %ecx
	leaq	-112(%rbp), %r8
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	$0, (%rsp)
	callq	face_at_string_position
	movl	%eax, -100(%rbp)
	jmp	.LBB82_38
.LBB82_37:                              # %if.else.124
	leaq	-112(%rbp), %rdx
	xorl	%r8d, %r8d
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-24(%rbp), %rax
	addq	$100, %rax
	movq	%rax, %rcx
	callq	face_at_buffer_position
	movl	%eax, -100(%rbp)
.LBB82_38:                              # %if.end.127
	movb	$1, %al
	testb	$1, %al
	jne	.LBB82_39
	jmp	.LBB82_40
.LBB82_39:                              # %cond.true.128
	movl	-100(%rbp), %eax
	addl	$0, %eax
	movq	-56(%rbp), %rcx
	movq	160(%rcx), %rcx
	movl	32(%rcx), %edx
	addl	$0, %edx
	cmpl	%edx, %eax
	jb	.LBB82_41
	jmp	.LBB82_42
.LBB82_40:                              # %cond.false.133
	movslq	-100(%rbp), %rax
	addq	$0, %rax
	movq	-56(%rbp), %rcx
	movq	160(%rcx), %rcx
	movslq	32(%rcx), %rcx
	addq	$0, %rcx
	cmpq	%rcx, %rax
	jae	.LBB82_42
.LBB82_41:                              # %cond.true.142
	movslq	-100(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	160(%rcx), %rcx
	movq	16(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	jmp	.LBB82_43
.LBB82_42:                              # %cond.false.145
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	jmp	.LBB82_43
.LBB82_43:                              # %cond.end.146
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	%rax, -32(%rbp)
.LBB82_44:                              # %if.end.148
	testb	$1, -57(%rbp)
	je	.LBB82_51
# BB#45:                                # %if.then.150
	movq	-56(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-12(%rbp), %edx
	movq	-24(%rbp), %rcx
	movq	-48(%rbp), %r8
	callq	face_for_char
	movb	$1, %r9b
	movl	%eax, -116(%rbp)
	testb	$1, %r9b
	jne	.LBB82_46
	jmp	.LBB82_47
.LBB82_46:                              # %cond.true.153
	movl	-116(%rbp), %eax
	addl	$0, %eax
	movq	-56(%rbp), %rcx
	movq	160(%rcx), %rcx
	movl	32(%rcx), %edx
	addl	$0, %edx
	cmpl	%edx, %eax
	jb	.LBB82_48
	jmp	.LBB82_49
.LBB82_47:                              # %cond.false.160
	movslq	-116(%rbp), %rax
	addq	$0, %rax
	movq	-56(%rbp), %rcx
	movq	160(%rcx), %rcx
	movslq	32(%rcx), %rcx
	addq	$0, %rcx
	cmpq	%rcx, %rax
	jae	.LBB82_49
.LBB82_48:                              # %cond.true.169
	movslq	-116(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	160(%rcx), %rcx
	movq	16(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	jmp	.LBB82_50
.LBB82_49:                              # %cond.false.174
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	jmp	.LBB82_50
.LBB82_50:                              # %cond.end.175
	movq	-224(%rbp), %rax        # 8-byte Reload
	movq	%rax, -32(%rbp)
.LBB82_51:                              # %if.end.177
	movq	-32(%rbp), %rax
	cmpq	$0, 224(%rax)
	jne	.LBB82_53
# BB#52:                                # %if.then.179
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB82_54
.LBB82_53:                              # %if.end.181
	movl	$5, %esi
	movq	-32(%rbp), %rax
	movq	224(%rax), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB82_54:                              # %return
	movq	-8(%rbp), %rax
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end82:
	.size	font_at, .Lfunc_end82-font_at
	.cfi_endproc

	.globl	Fframe_font_cache
	.align	16, 0x90
	.type	Fframe_font_cache,@function
Fframe_font_cache:                      # @Fframe_font_cache
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp254:
	.cfi_def_cfa_offset 16
.Ltmp255:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp256:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	decode_live_frame
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	.LBB83_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB83_3
.LBB83_2:                               # %if.else
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB83_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end83:
	.size	Fframe_font_cache, .Lfunc_end83-Fframe_font_cache
	.cfi_endproc

	.globl	Ffont_info
	.align	16, 0x90
	.type	Ffont_info,@function
Ffont_info:                             # @Ffont_info
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp257:
	.cfi_def_cfa_offset 16
.Ltmp258:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp259:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	FONTP
	testb	$1, %al
	jne	.LBB84_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	CHECK_STRING
.LBB84_2:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	decode_window_system_frame
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB84_3
	jmp	.LBB84_6
.LBB84_3:                               # %if.then.3
	xorl	%esi, %esi
	movq	-16(%rbp), %rdi
	callq	fs_query_fontset
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	jl	.LBB84_5
# BB#4:                                 # %if.then.5
	movl	-60(%rbp), %edi
	callq	fontset_ascii
	movq	%rax, -16(%rbp)
.LBB84_5:                               # %if.end.7
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	font_open_by_name
	movq	%rax, -56(%rbp)
	jmp	.LBB84_21
.LBB84_6:                               # %if.else
	movq	-16(%rbp), %rdi
	callq	FONT_OBJECT_P
	testb	$1, %al
	jne	.LBB84_7
	jmp	.LBB84_8
.LBB84_7:                               # %if.then.10
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB84_20
.LBB84_8:                               # %if.else.11
	movq	-16(%rbp), %rdi
	callq	FONT_ENTITY_P
	testb	$1, %al
	jne	.LBB84_9
	jmp	.LBB84_10
.LBB84_9:                               # %if.then.13
	xorl	%edx, %edx
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	font_open_entity
	movq	%rax, -56(%rbp)
	jmp	.LBB84_19
.LBB84_10:                              # %if.else.15
	movb	$1, %al
	testb	$1, %al
	jne	.LBB84_11
	jmp	.LBB84_12
.LBB84_11:                              # %cond.true
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	movq	160(%rcx), %rcx
	movl	32(%rcx), %edx
	addl	$0, %edx
	cmpl	%edx, %eax
	jb	.LBB84_13
	jmp	.LBB84_14
.LBB84_12:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movq	160(%rdx), %rdx
	movslq	32(%rdx), %rdx
	addq	$0, %rdx
	cmpq	%rdx, %rcx
	jae	.LBB84_14
.LBB84_13:                              # %cond.true.22
	movq	-32(%rbp), %rax
	movq	160(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB84_15
.LBB84_14:                              # %cond.false.24
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	jmp	.LBB84_15
.LBB84_15:                              # %cond.end
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-16(%rbp), %rdx
	callq	font_matching_entity
	xorl	%edi, %edi
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB84_17
# BB#16:                                # %cond.true.29
	xorl	%edx, %edx
	movq	-32(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	font_open_entity
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB84_18
.LBB84_17:                              # %cond.false.31
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB84_18:                              # %cond.end.33
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, -56(%rbp)
.LBB84_19:                              # %if.end.35
	jmp	.LBB84_20
.LBB84_20:                              # %if.end.36
	jmp	.LBB84_21
.LBB84_21:                              # %if.end.37
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB84_23
# BB#22:                                # %if.then.41
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB84_27
.LBB84_23:                              # %if.end.43
	movq	-56(%rbp), %rdi
	callq	XFONT_OBJECT
	movl	$14, %ecx
	movl	%ecx, %edi
	movq	%rax, -40(%rbp)
	callq	make_uninit_vector
	movl	$14, %ecx
	movl	%ecx, %esi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	AREF
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	movl	$15, %ecx
	movl	%ecx, %esi
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	AREF
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	movl	$2, %ecx
	movl	%ecx, %esi
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rax
	movslq	152(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdx
	callq	ASET
	movl	$3, %ecx
	movl	%ecx, %esi
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rax
	movslq	156(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdx
	callq	ASET
	movl	$4, %ecx
	movl	%ecx, %esi
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rax
	movslq	188(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdx
	callq	ASET
	movl	$5, %ecx
	movl	%ecx, %esi
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rax
	movslq	192(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdx
	callq	ASET
	movl	$6, %ecx
	movl	%ecx, %esi
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rax
	movslq	196(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdx
	callq	ASET
	movl	$7, %ecx
	movl	%ecx, %esi
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rax
	movslq	148(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdx
	callq	ASET
	movl	$8, %ecx
	movl	%ecx, %esi
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rax
	movslq	168(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdx
	callq	ASET
	movl	$9, %ecx
	movl	%ecx, %esi
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rax
	movslq	172(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdx
	callq	ASET
	movl	$10, %ecx
	movl	%ecx, %esi
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rax
	movslq	160(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdx
	callq	ASET
	movl	$11, %ecx
	movl	%ecx, %esi
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rax
	movslq	164(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdx
	callq	ASET
	movl	$16, %ecx
	movl	%ecx, %esi
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	AREF
	movl	$12, %ecx
	movl	%ecx, %esi
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	movq	-40(%rbp), %rax
	movq	208(%rax), %rax
	cmpq	$0, 144(%rax)
	je	.LBB84_25
# BB#24:                                # %if.then.78
	movl	$721, %edi              # imm = 0x2D1
	movq	-48(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx
	movq	208(%rcx), %rcx
	movq	144(%rcx), %rcx
	movq	-40(%rbp), %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	*%rcx
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movl	$13, %edx
	movl	%edx, %esi
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	jmp	.LBB84_26
.LBB84_25:                              # %if.else.84
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$13, %edi
	movl	%edi, %esi
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
.LBB84_26:                              # %if.end.86
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB84_27:                              # %return
	movq	-8(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end84:
	.size	Ffont_info, .Lfunc_end84-Ffont_info
	.cfi_endproc

	.globl	font_deferred_log
	.align	16, 0x90
	.type	font_deferred_log,@function
font_deferred_log:                      # @font_deferred_log
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp260:
	.cfi_def_cfa_offset 16
.Ltmp261:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp262:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$901, %eax              # imm = 0x385
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	globals+832, %rdx
	movl	%eax, %edi
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB85_2
# BB#1:                                 # %if.then
	jmp	.LBB85_3
.LBB85_2:                               # %if.end
	movq	Vfont_log_deferred, %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	build_string
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	Vfont_log_deferred, %rdi
	movq	-16(%rbp), %rdx
	callq	ASET
	movl	$2, %ecx
	movl	%ecx, %esi
	movq	Vfont_log_deferred, %rdi
	movq	-24(%rbp), %rdx
	callq	ASET
.LBB85_3:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end85:
	.size	font_deferred_log, .Lfunc_end85-font_deferred_log
	.cfi_endproc

	.globl	syms_of_font
	.align	16, 0x90
	.type	syms_of_font,@function
syms_of_font:                           # @syms_of_font
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp263:
	.cfi_def_cfa_offset 16
.Ltmp264:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp265:
	.cfi_def_cfa_register %rbp
	movabsq	$font_charset_alist, %rdi
	movl	$0, sort_shift_bits
	movl	$2, sort_shift_bits+24
	movl	$9, sort_shift_bits+20
	movl	$16, sort_shift_bits+32
	movl	$23, sort_shift_bits+28
	callq	staticpro
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$scratch_font_spec, %rdi
	movq	%rax, font_charset_alist
	callq	staticpro
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	Ffont_spec
	movabsq	$scratch_font_prefer, %rdi
	movq	%rax, scratch_font_spec
	callq	staticpro
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	Ffont_spec
	movabsq	$Vfont_log_deferred, %rdi
	movq	%rax, scratch_font_prefer
	callq	staticpro
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movl	$14, %ecx
	movl	%ecx, %edi
	movq	%rax, %rsi
	callq	Fmake_vector
	movabsq	$Sfontp, %rsi
	movq	%rax, Vfont_log_deferred
	movq	%rsi, %rdi
	callq	defsubr
	movabsq	$Sfont_spec, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sfont_get, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sfont_face_attributes, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sfont_put, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Slist_fonts, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sfont_family_list, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sfind_font, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sfont_xlfd_name, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sclear_font_cache, %rdi
	callq	defsubr
	movabsq	$Sfont_shape_gstring, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sfont_variation_glyphs, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sinternal_char_font, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sopen_font, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sclose_font, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Squery_font, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sfont_get_glyphs, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sfont_match_p, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sfont_at, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sframe_font_cache, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sfont_info, %rax
	movq	%rax, %rdi
	callq	defsubr
# BB#1:                                 # %do.body
	movabsq	$syms_of_font.o_fwd, %rdi
	movabsq	$.L.str.36, %rsi
	movabsq	$globals, %rax
	addq	$816, %rax              # imm = 0x330
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#2:                                 # %do.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+816
# BB#3:                                 # %do.body.6
	movabsq	$syms_of_font.o_fwd.37, %rdi
	movabsq	$.L.str.38, %rsi
	movabsq	$globals, %rax
	addq	$848, %rax              # imm = 0x350
	movq	%rax, %rdx
	callq	defvar_lisp_nopro
# BB#4:                                 # %do.end.7
	movabsq	$weight_table, %rdi
	movl	$10, %esi
	callq	build_style_table
	movabsq	$.L.str.38, %rdi
	movq	%rax, globals+848
	callq	intern_c_string
	subq	$0, %rax
	movw	lispsym(,%rax), %cx
	andw	$-49, %cx
	orw	$16, %cx
	movw	%cx, lispsym(,%rax)
# BB#5:                                 # %do.body.10
	movabsq	$syms_of_font.o_fwd.39, %rdi
	movabsq	$.L.str.40, %rsi
	movabsq	$globals, %rax
	addq	$840, %rax              # imm = 0x348
	movq	%rax, %rdx
	callq	defvar_lisp_nopro
# BB#6:                                 # %do.end.11
	movabsq	$slant_table, %rdi
	movl	$5, %esi
	callq	build_style_table
	movabsq	$.L.str.40, %rdi
	movq	%rax, globals+840
	callq	intern_c_string
	subq	$0, %rax
	movw	lispsym(,%rax), %cx
	andw	$-49, %cx
	orw	$16, %cx
	movw	%cx, lispsym(,%rax)
# BB#7:                                 # %do.body.19
	movabsq	$syms_of_font.o_fwd.41, %rdi
	movabsq	$.L.str.42, %rsi
	movabsq	$globals, %rax
	addq	$856, %rax              # imm = 0x358
	movq	%rax, %rdx
	callq	defvar_lisp_nopro
# BB#8:                                 # %do.end.20
	movabsq	$width_table, %rdi
	movl	$9, %esi
	callq	build_style_table
	movabsq	$.L.str.42, %rdi
	movq	%rax, globals+856
	callq	intern_c_string
	movabsq	$font_style_table, %rdi
	subq	$0, %rax
	movw	lispsym(,%rax), %cx
	andw	$-49, %cx
	orw	$16, %cx
	movw	%cx, lispsym(,%rax)
	callq	staticpro
	movl	$3, %esi
	movl	%esi, %edi
	callq	make_uninit_vector
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	%rax, font_style_table
	movq	font_style_table, %rdi
	movq	globals+848, %rdx
	callq	ASET
	movl	$1, %r8d
	movl	%r8d, %esi
	movq	font_style_table, %rdi
	movq	globals+840, %rdx
	callq	ASET
	movl	$2, %r8d
	movl	%r8d, %esi
	movq	font_style_table, %rdi
	movq	globals+856, %rdx
	callq	ASET
# BB#9:                                 # %do.body.29
	movabsq	$syms_of_font.o_fwd.43, %rdi
	movabsq	$.L.str.44, %rsi
	movabsq	$globals, %rax
	addq	$832, %rax              # imm = 0x340
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#10:                                # %do.end.30
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+832
	callq	syms_of_ftfont
	callq	syms_of_xfont
	callq	syms_of_ftxfont
	callq	syms_of_xftfont
	popq	%rbp
	retq
.Lfunc_end86:
	.size	syms_of_font, .Lfunc_end86-syms_of_font
	.cfi_endproc

	.align	16, 0x90
	.type	build_style_table,@function
build_style_table:                      # @build_style_table
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp266:
	.cfi_def_cfa_offset 16
.Ltmp267:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp268:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movslq	-12(%rbp), %rdi
	callq	make_uninit_vector
	movq	%rax, -32(%rbp)
	movl	$0, -16(%rbp)
.LBB87_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB87_3 Depth 2
                                        #     Child Loop BB87_7 Depth 2
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB87_12
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB87_1 Depth=1
	movl	$0, -20(%rbp)
.LBB87_3:                               # %for.cond.3
                                        #   Parent Loop BB87_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-20(%rbp), %rax
	movslq	-16(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	-8(%rbp), %rcx
	cmpq	$0, 8(%rcx,%rax,8)
	je	.LBB87_6
# BB#4:                                 # %for.body.6
                                        #   in Loop: Header=BB87_3 Depth=2
	jmp	.LBB87_5
.LBB87_5:                               # %for.inc
                                        #   in Loop: Header=BB87_3 Depth=2
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB87_3
.LBB87_6:                               # %for.end
                                        #   in Loop: Header=BB87_1 Depth=1
	xorl	%edi, %edi
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fmake_vector
	xorl	%edx, %edx
	movl	%edx, %esi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movslq	-16(%rbp), %rax
	imulq	$48, %rax, %rax
	addq	-8(%rbp), %rax
	movslq	(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdx
	callq	ASET
	movl	$0, -20(%rbp)
.LBB87_7:                               # %for.cond.16
                                        #   Parent Loop BB87_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-20(%rbp), %rax
	movslq	-16(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	-8(%rbp), %rcx
	cmpq	$0, 8(%rcx,%rax,8)
	je	.LBB87_10
# BB#8:                                 # %for.body.23
                                        #   in Loop: Header=BB87_7 Depth=2
	movq	-40(%rbp), %rdi
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rsi
	movslq	-20(%rbp), %rcx
	movslq	-16(%rbp), %rdx
	imulq	$48, %rdx, %rdx
	addq	-8(%rbp), %rdx
	movq	8(%rdx,%rcx,8), %rcx
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	intern_c_string
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
# BB#9:                                 # %for.inc.32
                                        #   in Loop: Header=BB87_7 Depth=2
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB87_7
.LBB87_10:                              # %for.end.34
                                        #   in Loop: Header=BB87_1 Depth=1
	movq	-32(%rbp), %rdi
	movslq	-16(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	ASET
# BB#11:                                # %for.inc.36
                                        #   in Loop: Header=BB87_1 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB87_1
.LBB87_12:                              # %for.end.38
	movq	-32(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end87:
	.size	build_style_table, .Lfunc_end87-build_style_table
	.cfi_endproc

	.globl	init_font
	.align	16, 0x90
	.type	init_font,@function
init_font:                              # @init_font
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp269:
	.cfi_def_cfa_offset 16
.Ltmp270:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp271:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$.L.str.45, %rdi
	callq	egetenv
	cmpq	$0, %rax
	je	.LBB88_2
# BB#1:                                 # %cond.true
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)          # 8-byte Spill
	jmp	.LBB88_3
.LBB88_2:                               # %cond.false
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)          # 8-byte Spill
.LBB88_3:                               # %cond.end
	movq	-8(%rbp), %rax          # 8-byte Reload
	movq	%rax, globals+832
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end88:
	.size	init_font, .Lfunc_end88-init_font
	.cfi_endproc

	.align	16, 0x90
	.type	font_check_otf_features,@function
font_check_otf_features:                # @font_check_otf_features
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp272:
	.cfi_def_cfa_offset 16
.Ltmp273:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp274:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	assq_no_quit
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB89_2
# BB#1:                                 # %if.then
	movb	$0, -1(%rbp)
	jmp	.LBB89_19
.LBB89_2:                               # %if.end
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB89_6
# BB#3:                                 # %if.then.4
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	assq_no_quit
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB89_5
# BB#4:                                 # %if.then.8
	movb	$0, -1(%rbp)
	jmp	.LBB89_19
.LBB89_5:                               # %if.end.9
	jmp	.LBB89_10
.LBB89_6:                               # %if.else
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	assq_no_quit
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB89_8
# BB#7:                                 # %if.then.14
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB89_9
.LBB89_8:                               # %if.else.16
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB89_9:                               # %if.end.17
	jmp	.LBB89_10
.LBB89_10:                              # %if.end.18
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movb	$0, -49(%rbp)
.LBB89_11:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB89_18
# BB#12:                                # %for.body
                                        #   in Loop: Header=BB89_11 Depth=1
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB89_14
# BB#13:                                # %if.then.29
                                        #   in Loop: Header=BB89_11 Depth=1
	movb	$1, -49(%rbp)
	jmp	.LBB89_17
.LBB89_14:                              # %if.end.30
                                        #   in Loop: Header=BB89_11 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rsi
	callq	Fmemq
	xorl	%edi, %edi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %edi
	movb	-49(%rbp), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	%edx, %edi
	je	.LBB89_16
# BB#15:                                # %if.then.40
	movb	$0, -1(%rbp)
	jmp	.LBB89_19
.LBB89_16:                              # %if.end.41
                                        #   in Loop: Header=BB89_11 Depth=1
	jmp	.LBB89_17
.LBB89_17:                              # %for.inc
                                        #   in Loop: Header=BB89_11 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB89_11
.LBB89_18:                              # %for.end
	movb	$1, -1(%rbp)
.LBB89_19:                              # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end89:
	.size	font_check_otf_features, .Lfunc_end89-font_check_otf_features
	.cfi_endproc

	.align	16, 0x90
	.type	font_parse_fcname,@function
font_parse_fcname:                      # @font_parse_fcname
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp275:
	.cfi_def_cfa_offset 16
.Ltmp276:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp277:
	.cfi_def_cfa_register %rbp
	subq	$560, %rsp              # imm = 0x230
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB90_2
# BB#1:                                 # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB90_213
.LBB90_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB90_3:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB90_11 Depth 2
	movq	-40(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB90_28
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB90_3 Depth=1
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$92, %ecx
	jne	.LBB90_7
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB90_3 Depth=1
	movq	-40(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB90_7
# BB#6:                                 # %if.then.5
                                        #   in Loop: Header=BB90_3 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB90_26
.LBB90_7:                               # %if.else
                                        #   in Loop: Header=BB90_3 Depth=1
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$58, %ecx
	jne	.LBB90_9
# BB#8:                                 # %if.then.9
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	%rax, -72(%rbp)
	jmp	.LBB90_28
.LBB90_9:                               # %if.else.10
                                        #   in Loop: Header=BB90_3 Depth=1
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$45, %ecx
	jne	.LBB90_24
# BB#10:                                # %if.then.14
                                        #   in Loop: Header=BB90_3 Depth=1
	movb	$0, -81(%rbp)
	movb	$1, -82(%rbp)
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
.LBB90_11:                              # %for.cond.15
                                        #   Parent Loop BB90_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -201(%rbp)         # 1-byte Spill
	je	.LBB90_13
# BB#12:                                # %land.rhs
                                        #   in Loop: Header=BB90_11 Depth=2
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$58, %ecx
	setne	%dl
	movb	%dl, -201(%rbp)         # 1-byte Spill
.LBB90_13:                              # %land.end
                                        #   in Loop: Header=BB90_11 Depth=2
	movb	-201(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB90_14
	jmp	.LBB90_21
.LBB90_14:                              # %for.body.21
                                        #   in Loop: Header=BB90_11 Depth=2
	movq	-48(%rbp), %rax
	movsbl	(%rax), %edi
	callq	c_isdigit
	testb	$1, %al
	jne	.LBB90_19
# BB#15:                                # %if.then.23
                                        #   in Loop: Header=BB90_11 Depth=2
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$46, %ecx
	jne	.LBB90_17
# BB#16:                                # %lor.lhs.false
                                        #   in Loop: Header=BB90_11 Depth=2
	testb	$1, -81(%rbp)
	je	.LBB90_18
.LBB90_17:                              # %if.then.29
                                        #   in Loop: Header=BB90_3 Depth=1
	movb	$0, -82(%rbp)
	jmp	.LBB90_21
.LBB90_18:                              # %if.end.30
                                        #   in Loop: Header=BB90_11 Depth=2
	movb	$1, -81(%rbp)
.LBB90_19:                              # %if.end.31
                                        #   in Loop: Header=BB90_11 Depth=2
	jmp	.LBB90_20
.LBB90_20:                              # %for.inc
                                        #   in Loop: Header=BB90_11 Depth=2
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB90_11
.LBB90_21:                              # %for.end
                                        #   in Loop: Header=BB90_3 Depth=1
	testb	$1, -82(%rbp)
	je	.LBB90_23
# BB#22:                                # %if.then.34
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB90_28
.LBB90_23:                              # %if.end.36
                                        #   in Loop: Header=BB90_3 Depth=1
	jmp	.LBB90_24
.LBB90_24:                              # %if.end.37
                                        #   in Loop: Header=BB90_3 Depth=1
	jmp	.LBB90_25
.LBB90_25:                              # %if.end.38
                                        #   in Loop: Header=BB90_3 Depth=1
	jmp	.LBB90_26
.LBB90_26:                              # %if.end.39
                                        #   in Loop: Header=BB90_3 Depth=1
	jmp	.LBB90_27
.LBB90_27:                              # %for.inc.40
                                        #   in Loop: Header=BB90_3 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB90_3
.LBB90_28:                              # %for.end.42
	cmpq	$0, -80(%rbp)
	je	.LBB90_106
# BB#29:                                # %if.then.44
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -96(%rbp)
	movq	-80(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jbe	.LBB90_31
# BB#30:                                # %if.then.48
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	-16(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, %rsi
	callq	font_intern_prop
	movl	$2, %edx
	movl	%edx, %esi
	movq	%rax, -104(%rbp)
	movq	-32(%rbp), %rdi
	movq	-104(%rbp), %rdx
	callq	ASET
.LBB90_31:                              # %if.end.50
	cmpq	$0, -56(%rbp)
	je	.LBB90_36
# BB#32:                                # %if.then.52
	leaq	-64(%rbp), %rsi
	movq	-56(%rbp), %rdi
	callq	strtod
	movsd	%xmm0, -112(%rbp)
	movq	-32(%rbp), %rdi
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	callq	make_float
	movl	$8, %ecx
	movl	%ecx, %esi
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	movq	-64(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$58, %ecx
	jne	.LBB90_35
# BB#33:                                # %land.lhs.true.58
	movq	-64(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB90_35
# BB#34:                                # %if.then.62
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
.LBB90_35:                              # %if.end.63
	jmp	.LBB90_36
.LBB90_36:                              # %if.end.64
	cmpq	$0, -72(%rbp)
	je	.LBB90_97
# BB#37:                                # %if.then.66
	movq	-72(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB90_38:                              # %for.cond.67
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB90_40 Depth 2
                                        #     Child Loop BB90_84 Depth 2
	movq	-40(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB90_96
# BB#39:                                # %for.body.69
                                        #   in Loop: Header=BB90_38 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
.LBB90_40:                              # %for.cond.71
                                        #   Parent Loop BB90_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -217(%rbp)         # 1-byte Spill
	je	.LBB90_43
# BB#41:                                # %land.lhs.true.74
                                        #   in Loop: Header=BB90_40 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$61, %eax
	movb	%cl, -217(%rbp)         # 1-byte Spill
	je	.LBB90_43
# BB#42:                                # %land.rhs.78
                                        #   in Loop: Header=BB90_40 Depth=2
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$58, %ecx
	setne	%dl
	movb	%dl, -217(%rbp)         # 1-byte Spill
.LBB90_43:                              # %land.end.82
                                        #   in Loop: Header=BB90_40 Depth=2
	movb	-217(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB90_44
	jmp	.LBB90_46
.LBB90_44:                              # %for.body.83
                                        #   in Loop: Header=BB90_40 Depth=2
	jmp	.LBB90_45
.LBB90_45:                              # %for.inc.84
                                        #   in Loop: Header=BB90_40 Depth=2
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB90_40
.LBB90_46:                              # %for.end.86
                                        #   in Loop: Header=BB90_38 Depth=1
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$61, %ecx
	je	.LBB90_79
# BB#47:                                # %if.then.90
                                        #   in Loop: Header=BB90_38 Depth=1
	movl	$1, %edx
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -128(%rbp)
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, %rsi
	callq	font_intern_prop
	movq	%rax, -120(%rbp)
	cmpq	$5, -128(%rbp)
	jne	.LBB90_49
# BB#48:                                # %land.lhs.true.101
                                        #   in Loop: Header=BB90_38 Depth=1
	movq	-40(%rbp), %rdi
	movl	$.L.str.58, %eax
	movl	%eax, %esi
	movl	$5, %eax
	movl	%eax, %edx
	callq	memcmp
	cmpl	$0, %eax
	je	.LBB90_57
.LBB90_49:                              # %lor.lhs.false.105
                                        #   in Loop: Header=BB90_38 Depth=1
	cmpq	$6, -128(%rbp)
	jne	.LBB90_51
# BB#50:                                # %land.lhs.true.108
                                        #   in Loop: Header=BB90_38 Depth=1
	movq	-40(%rbp), %rdi
	movl	$.L.str.59, %eax
	movl	%eax, %esi
	movl	$6, %eax
	movl	%eax, %edx
	callq	memcmp
	cmpl	$0, %eax
	je	.LBB90_57
.LBB90_51:                              # %lor.lhs.false.112
                                        #   in Loop: Header=BB90_38 Depth=1
	cmpq	$8, -128(%rbp)
	jne	.LBB90_53
# BB#52:                                # %land.lhs.true.115
                                        #   in Loop: Header=BB90_38 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movabsq	$7236281169743799652, %rcx # imm = 0x646C6F62696D6564
	subq	%rcx, %rax
	setne	%dl
	movzbl	%dl, %esi
	cmpl	$0, %esi
	movq	%rax, -232(%rbp)        # 8-byte Spill
	je	.LBB90_57
.LBB90_53:                              # %lor.lhs.false.119
                                        #   in Loop: Header=BB90_38 Depth=1
	cmpq	$4, -128(%rbp)
	jne	.LBB90_55
# BB#54:                                # %land.lhs.true.122
                                        #   in Loop: Header=BB90_38 Depth=1
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
	subl	$1684828002, %ecx       # imm = 0x646C6F62
	setne	%dl
	movzbl	%dl, %esi
	cmpl	$0, %esi
	movl	%ecx, -236(%rbp)        # 4-byte Spill
	je	.LBB90_57
.LBB90_55:                              # %lor.lhs.false.126
                                        #   in Loop: Header=BB90_38 Depth=1
	cmpq	$5, -128(%rbp)
	jne	.LBB90_58
# BB#56:                                # %land.lhs.true.129
                                        #   in Loop: Header=BB90_38 Depth=1
	movq	-40(%rbp), %rdi
	movl	$.L.str.62, %eax
	movl	%eax, %esi
	movl	$5, %eax
	movl	%eax, %edx
	callq	memcmp
	cmpl	$0, %eax
	jne	.LBB90_58
.LBB90_57:                              # %if.then.133
                                        #   in Loop: Header=BB90_38 Depth=1
	movl	$5, %edi
	movl	$1, %edx
	movq	-32(%rbp), %rax
	movq	-120(%rbp), %rsi
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	font_style_to_value
	movl	$5, %edx
	movl	%edx, %esi
	movslq	%eax, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, %rdx
	callq	ASET
	jmp	.LBB90_78
.LBB90_58:                              # %if.else.136
                                        #   in Loop: Header=BB90_38 Depth=1
	cmpq	$5, -128(%rbp)
	jne	.LBB90_60
# BB#59:                                # %land.lhs.true.139
                                        #   in Loop: Header=BB90_38 Depth=1
	movq	-40(%rbp), %rdi
	movl	$.L.str.63, %eax
	movl	%eax, %esi
	movl	$5, %eax
	movl	%eax, %edx
	callq	memcmp
	cmpl	$0, %eax
	je	.LBB90_64
.LBB90_60:                              # %lor.lhs.false.143
                                        #   in Loop: Header=BB90_38 Depth=1
	cmpq	$6, -128(%rbp)
	jne	.LBB90_62
# BB#61:                                # %land.lhs.true.146
                                        #   in Loop: Header=BB90_38 Depth=1
	movq	-40(%rbp), %rdi
	movl	$.L.str.64, %eax
	movl	%eax, %esi
	movl	$6, %eax
	movl	%eax, %edx
	callq	memcmp
	cmpl	$0, %eax
	je	.LBB90_64
.LBB90_62:                              # %lor.lhs.false.150
                                        #   in Loop: Header=BB90_38 Depth=1
	cmpq	$7, -128(%rbp)
	jne	.LBB90_65
# BB#63:                                # %land.lhs.true.153
                                        #   in Loop: Header=BB90_38 Depth=1
	movq	-40(%rbp), %rdi
	movl	$.L.str.65, %eax
	movl	%eax, %esi
	movl	$7, %eax
	movl	%eax, %edx
	callq	memcmp
	cmpl	$0, %eax
	jne	.LBB90_65
.LBB90_64:                              # %if.then.157
                                        #   in Loop: Header=BB90_38 Depth=1
	movl	$6, %edi
	movl	$1, %edx
	movq	-32(%rbp), %rax
	movq	-120(%rbp), %rsi
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	font_style_to_value
	movl	$6, %edx
	movl	%edx, %esi
	movslq	%eax, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, %rdx
	callq	ASET
	jmp	.LBB90_77
.LBB90_65:                              # %if.else.162
                                        #   in Loop: Header=BB90_38 Depth=1
	cmpq	$8, -128(%rbp)
	jne	.LBB90_68
# BB#66:                                # %land.lhs.true.165
                                        #   in Loop: Header=BB90_38 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movabsq	$7812730931376121955, %rcx # imm = 0x6C6C656372616863
	subq	%rcx, %rax
	setne	%dl
	movzbl	%dl, %esi
	cmpl	$0, %esi
	movq	%rax, -264(%rbp)        # 8-byte Spill
	jne	.LBB90_68
# BB#67:                                # %if.then.169
                                        #   in Loop: Header=BB90_38 Depth=1
	movl	$10, %eax
	movl	%eax, %esi
	movl	$442, %eax              # imm = 0x1BA
	movl	%eax, %edx
	movq	-32(%rbp), %rdi
	callq	ASET
	jmp	.LBB90_76
.LBB90_68:                              # %if.else.170
                                        #   in Loop: Header=BB90_38 Depth=1
	cmpq	$4, -128(%rbp)
	jne	.LBB90_71
# BB#69:                                # %land.lhs.true.173
                                        #   in Loop: Header=BB90_38 Depth=1
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
	subl	$1869508461, %ecx       # imm = 0x6F6E6F6D
	setne	%dl
	movzbl	%dl, %esi
	cmpl	$0, %esi
	movl	%ecx, -268(%rbp)        # 4-byte Spill
	jne	.LBB90_71
# BB#70:                                # %if.then.177
                                        #   in Loop: Header=BB90_38 Depth=1
	movl	$10, %eax
	movl	%eax, %esi
	movl	$402, %eax              # imm = 0x192
	movl	%eax, %edx
	movq	-32(%rbp), %rdi
	callq	ASET
	jmp	.LBB90_75
.LBB90_71:                              # %if.else.178
                                        #   in Loop: Header=BB90_38 Depth=1
	cmpq	$12, -128(%rbp)
	jne	.LBB90_74
# BB#72:                                # %land.lhs.true.181
                                        #   in Loop: Header=BB90_38 Depth=1
	movq	-40(%rbp), %rdi
	movl	$.L.str.68, %eax
	movl	%eax, %esi
	movl	$12, %eax
	movl	%eax, %edx
	callq	memcmp
	cmpl	$0, %eax
	jne	.LBB90_74
# BB#73:                                # %if.then.185
                                        #   in Loop: Header=BB90_38 Depth=1
	movl	$10, %eax
	movl	%eax, %esi
	movl	$2, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rdi
	callq	ASET
.LBB90_74:                              # %if.end.186
                                        #   in Loop: Header=BB90_38 Depth=1
	jmp	.LBB90_75
.LBB90_75:                              # %if.end.187
                                        #   in Loop: Header=BB90_38 Depth=1
	jmp	.LBB90_76
.LBB90_76:                              # %if.end.188
                                        #   in Loop: Header=BB90_38 Depth=1
	jmp	.LBB90_77
.LBB90_77:                              # %if.end.189
                                        #   in Loop: Header=BB90_38 Depth=1
	jmp	.LBB90_78
.LBB90_78:                              # %if.end.190
                                        #   in Loop: Header=BB90_38 Depth=1
	jmp	.LBB90_94
.LBB90_79:                              # %if.else.191
                                        #   in Loop: Header=BB90_38 Depth=1
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	subq	%rcx, %rax
	cmpq	$10, %rax
	jne	.LBB90_82
# BB#80:                                # %land.lhs.true.197
                                        #   in Loop: Header=BB90_38 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movl	$.L.str.69, %ecx
	movl	%ecx, %esi
	movl	$9, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	memcmp
	cmpl	$0, %eax
	jne	.LBB90_82
# BB#81:                                # %if.then.202
                                        #   in Loop: Header=BB90_38 Depth=1
	movl	$8, -140(%rbp)
	jmp	.LBB90_83
.LBB90_82:                              # %if.else.203
                                        #   in Loop: Header=BB90_38 Depth=1
	movl	$1, %edx
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, %rsi
	callq	font_intern_prop
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rdi
	callq	get_font_prop_index
	movl	%eax, -140(%rbp)
.LBB90_83:                              # %if.end.209
                                        #   in Loop: Header=BB90_38 Depth=1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB90_84:                              # %for.cond.211
                                        #   Parent Loop BB90_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -269(%rbp)         # 1-byte Spill
	je	.LBB90_86
# BB#85:                                # %land.rhs.214
                                        #   in Loop: Header=BB90_84 Depth=2
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$58, %ecx
	setne	%dl
	movb	%dl, -269(%rbp)         # 1-byte Spill
.LBB90_86:                              # %land.end.218
                                        #   in Loop: Header=BB90_84 Depth=2
	movb	-269(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB90_87
	jmp	.LBB90_89
.LBB90_87:                              # %for.body.219
                                        #   in Loop: Header=BB90_84 Depth=2
	jmp	.LBB90_88
.LBB90_88:                              # %for.inc.220
                                        #   in Loop: Header=BB90_84 Depth=2
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB90_84
.LBB90_89:                              # %for.end.222
                                        #   in Loop: Header=BB90_38 Depth=1
	xorl	%edx, %edx
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, %rsi
	callq	font_intern_prop
	movq	%rax, -120(%rbp)
	cmpl	$1, -140(%rbp)
	jl	.LBB90_92
# BB#90:                                # %land.lhs.true.229
                                        #   in Loop: Header=BB90_38 Depth=1
	cmpl	$12, -140(%rbp)
	jge	.LBB90_92
# BB#91:                                # %if.then.232
                                        #   in Loop: Header=BB90_38 Depth=1
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movslq	-140(%rbp), %rsi
	movl	-140(%rbp), %ecx
	movl	%ecx, -276(%rbp)        # 4-byte Spill
	movq	%rax, -288(%rbp)        # 8-byte Spill
	movq	%rsi, -296(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rdx
	movl	-276(%rbp), %edi        # 4-byte Reload
	movq	%rax, %rsi
	callq	font_prop_validate
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	-296(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	jmp	.LBB90_93
.LBB90_92:                              # %if.else.236
                                        #   in Loop: Header=BB90_38 Depth=1
	movq	-96(%rbp), %rdi
	movq	-136(%rbp), %rax
	movq	-120(%rbp), %rsi
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, %rdi
	callq	list1
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	nconc2
	movq	%rax, -96(%rbp)
.LBB90_93:                              # %if.end.240
                                        #   in Loop: Header=BB90_38 Depth=1
	jmp	.LBB90_94
.LBB90_94:                              # %if.end.241
                                        #   in Loop: Header=BB90_38 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
# BB#95:                                # %for.inc.242
                                        #   in Loop: Header=BB90_38 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB90_38
.LBB90_96:                              # %for.end.243
	jmp	.LBB90_97
.LBB90_97:                              # %if.end.244
	xorl	%edi, %edi
	movq	-96(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-312(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB90_105
# BB#98:                                # %if.then.248
	movq	font_driver_list, %rax
	movq	%rax, -152(%rbp)
.LBB90_99:                              # %for.cond.249
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -152(%rbp)
	je	.LBB90_104
# BB#100:                               # %for.body.251
                                        #   in Loop: Header=BB90_99 Depth=1
	movq	-152(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$0, 200(%rax)
	je	.LBB90_102
# BB#101:                               # %if.then.253
                                        #   in Loop: Header=BB90_99 Depth=1
	movq	-152(%rbp), %rax
	movq	8(%rax), %rax
	movq	200(%rax), %rax
	movq	-32(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	*%rax
.LBB90_102:                             # %if.end.256
                                        #   in Loop: Header=BB90_99 Depth=1
	jmp	.LBB90_103
.LBB90_103:                             # %for.inc.257
                                        #   in Loop: Header=BB90_99 Depth=1
	movq	-152(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -152(%rbp)
	jmp	.LBB90_99
.LBB90_104:                             # %for.end.258
	jmp	.LBB90_105
.LBB90_105:                             # %if.end.259
	jmp	.LBB90_212
.LBB90_106:                             # %if.else.260
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -160(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -168(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -176(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -184(%rbp)
	movq	-16(%rbp), %rax
	addq	-24(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rbp)
.LBB90_107:                             # %for.cond.268
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jb	.LBB90_112
# BB#108:                               # %for.body.271
                                        #   in Loop: Header=BB90_107 Depth=1
	movq	-40(%rbp), %rax
	movsbl	(%rax), %edi
	callq	c_isdigit
	testb	$1, %al
	jne	.LBB90_110
# BB#109:                               # %if.then.274
	jmp	.LBB90_112
.LBB90_110:                             # %if.end.275
                                        #   in Loop: Header=BB90_107 Depth=1
	jmp	.LBB90_111
.LBB90_111:                             # %for.inc.276
                                        #   in Loop: Header=BB90_107 Depth=1
	movq	-40(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB90_107
.LBB90_112:                             # %for.end.278
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	-24(%rbp), %rcx
	addq	$-1, %rcx
	cmpq	%rcx, %rax
	jae	.LBB90_116
# BB#113:                               # %land.lhs.true.283
	movq	-40(%rbp), %rax
	addq	$1, %rax
	cmpq	-16(%rbp), %rax
	je	.LBB90_115
# BB#114:                               # %lor.lhs.false.287
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$32, %ecx
	jne	.LBB90_116
.LBB90_115:                             # %if.then.291
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, %rdi
	callq	strtod
	callq	make_float
	movq	%rax, -184(%rbp)
	jmp	.LBB90_117
.LBB90_116:                             # %if.else.295
	movq	-16(%rbp), %rax
	addq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB90_117:                             # %if.end.297
	jmp	.LBB90_118
.LBB90_118:                             # %for.cond.298
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB90_120 Depth 2
	movq	-40(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jbe	.LBB90_201
# BB#119:                               # %for.body.301
                                        #   in Loop: Header=BB90_118 Depth=1
	movq	-40(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -48(%rbp)
.LBB90_120:                             # %for.cond.303
                                        #   Parent Loop BB90_118 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-48(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jb	.LBB90_129
# BB#121:                               # %for.body.306
                                        #   in Loop: Header=BB90_120 Depth=2
	movq	-48(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jbe	.LBB90_124
# BB#122:                               # %land.lhs.true.309
                                        #   in Loop: Header=BB90_120 Depth=2
	movq	-48(%rbp), %rax
	movsbl	-1(%rax), %ecx
	cmpl	$92, %ecx
	jne	.LBB90_124
# BB#123:                               # %if.then.314
                                        #   in Loop: Header=BB90_120 Depth=2
	movq	-48(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB90_127
.LBB90_124:                             # %if.else.316
                                        #   in Loop: Header=BB90_120 Depth=2
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$32, %ecx
	jne	.LBB90_126
# BB#125:                               # %if.then.320
                                        #   in Loop: Header=BB90_118 Depth=1
	jmp	.LBB90_129
.LBB90_126:                             # %if.end.321
                                        #   in Loop: Header=BB90_120 Depth=2
	jmp	.LBB90_127
.LBB90_127:                             # %if.end.322
                                        #   in Loop: Header=BB90_120 Depth=2
	jmp	.LBB90_128
.LBB90_128:                             # %for.inc.323
                                        #   in Loop: Header=BB90_120 Depth=2
	movq	-48(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB90_120
.LBB90_129:                             # %for.end.325
                                        #   in Loop: Header=BB90_118 Depth=1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -192(%rbp)
	movq	-40(%rbp), %rax
	movq	-192(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -200(%rbp)
	cmpq	$11, -200(%rbp)
	jne	.LBB90_135
# BB#130:                               # %land.lhs.true.332
                                        #   in Loop: Header=BB90_118 Depth=1
	movq	-192(%rbp), %rdi
	movl	$.L.str.70, %eax
	movl	%eax, %esi
	movl	$11, %eax
	movl	%eax, %edx
	callq	memcmp
	cmpl	$0, %eax
	jne	.LBB90_135
# BB#131:                               # %if.then.336
                                        #   in Loop: Header=BB90_118 Depth=1
	xorl	%edi, %edi
	movq	-160(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-320(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB90_133
# BB#132:                               # %cond.true
                                        #   in Loop: Header=BB90_118 Depth=1
	movabsq	$.L.str.71, %rdi
	movl	$11, %eax
	movl	%eax, %esi
	movl	$1, %edx
	callq	font_intern_prop
	movq	%rax, -328(%rbp)        # 8-byte Spill
	jmp	.LBB90_134
.LBB90_133:                             # %cond.false
                                        #   in Loop: Header=BB90_118 Depth=1
	movq	-160(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
.LBB90_134:                             # %cond.end
                                        #   in Loop: Header=BB90_118 Depth=1
	movq	-328(%rbp), %rax        # 8-byte Reload
	movq	%rax, -160(%rbp)
	jmp	.LBB90_199
.LBB90_135:                             # %if.else.341
                                        #   in Loop: Header=BB90_118 Depth=1
	cmpq	$5, -200(%rbp)
	jne	.LBB90_141
# BB#136:                               # %land.lhs.true.344
                                        #   in Loop: Header=BB90_118 Depth=1
	movq	-192(%rbp), %rdi
	movl	$.L.str.72, %eax
	movl	%eax, %esi
	movl	$5, %eax
	movl	%eax, %edx
	callq	memcmp
	cmpl	$0, %eax
	jne	.LBB90_141
# BB#137:                               # %if.then.348
                                        #   in Loop: Header=BB90_118 Depth=1
	xorl	%edi, %edi
	movq	-160(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-336(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB90_139
# BB#138:                               # %cond.true.352
                                        #   in Loop: Header=BB90_118 Depth=1
	movabsq	$.L.str.58, %rdi
	movl	$5, %eax
	movl	%eax, %esi
	movl	$1, %edx
	callq	font_intern_prop
	movq	%rax, -344(%rbp)        # 8-byte Spill
	jmp	.LBB90_140
.LBB90_139:                             # %cond.false.354
                                        #   in Loop: Header=BB90_118 Depth=1
	movq	-160(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
.LBB90_140:                             # %cond.end.355
                                        #   in Loop: Header=BB90_118 Depth=1
	movq	-344(%rbp), %rax        # 8-byte Reload
	movq	%rax, -160(%rbp)
	jmp	.LBB90_198
.LBB90_141:                             # %if.else.357
                                        #   in Loop: Header=BB90_118 Depth=1
	cmpq	$4, -200(%rbp)
	jne	.LBB90_147
# BB#142:                               # %land.lhs.true.360
                                        #   in Loop: Header=BB90_118 Depth=1
	movq	-192(%rbp), %rax
	movl	(%rax), %ecx
	subl	$1802465090, %ecx       # imm = 0x6B6F6F42
	setne	%dl
	movzbl	%dl, %esi
	cmpl	$0, %esi
	movl	%ecx, -348(%rbp)        # 4-byte Spill
	jne	.LBB90_147
# BB#143:                               # %if.then.364
                                        #   in Loop: Header=BB90_118 Depth=1
	xorl	%edi, %edi
	movq	-160(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-360(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB90_145
# BB#144:                               # %cond.true.368
                                        #   in Loop: Header=BB90_118 Depth=1
	movabsq	$.L.str.74, %rdi
	movl	$4, %eax
	movl	%eax, %esi
	movl	$1, %edx
	callq	font_intern_prop
	movq	%rax, -368(%rbp)        # 8-byte Spill
	jmp	.LBB90_146
.LBB90_145:                             # %cond.false.370
                                        #   in Loop: Header=BB90_118 Depth=1
	movq	-160(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
.LBB90_146:                             # %cond.end.371
                                        #   in Loop: Header=BB90_118 Depth=1
	movq	-368(%rbp), %rax        # 8-byte Reload
	movq	%rax, -160(%rbp)
	jmp	.LBB90_197
.LBB90_147:                             # %if.else.373
                                        #   in Loop: Header=BB90_118 Depth=1
	cmpq	$6, -200(%rbp)
	jne	.LBB90_153
# BB#148:                               # %land.lhs.true.376
                                        #   in Loop: Header=BB90_118 Depth=1
	movq	-192(%rbp), %rdi
	movl	$.L.str.75, %eax
	movl	%eax, %esi
	movl	$6, %eax
	movl	%eax, %edx
	callq	memcmp
	cmpl	$0, %eax
	jne	.LBB90_153
# BB#149:                               # %if.then.380
                                        #   in Loop: Header=BB90_118 Depth=1
	xorl	%edi, %edi
	movq	-160(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-376(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB90_151
# BB#150:                               # %cond.true.384
                                        #   in Loop: Header=BB90_118 Depth=1
	movabsq	$.L.str.59, %rdi
	movl	$6, %eax
	movl	%eax, %esi
	movl	$1, %edx
	callq	font_intern_prop
	movq	%rax, -384(%rbp)        # 8-byte Spill
	jmp	.LBB90_152
.LBB90_151:                             # %cond.false.386
                                        #   in Loop: Header=BB90_118 Depth=1
	movq	-160(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
.LBB90_152:                             # %cond.end.387
                                        #   in Loop: Header=BB90_118 Depth=1
	movq	-384(%rbp), %rax        # 8-byte Reload
	movq	%rax, -160(%rbp)
	jmp	.LBB90_196
.LBB90_153:                             # %if.else.389
                                        #   in Loop: Header=BB90_118 Depth=1
	cmpq	$9, -200(%rbp)
	jne	.LBB90_159
# BB#154:                               # %land.lhs.true.392
                                        #   in Loop: Header=BB90_118 Depth=1
	movq	-192(%rbp), %rdi
	movl	$.L.str.76, %eax
	movl	%eax, %esi
	movl	$9, %eax
	movl	%eax, %edx
	callq	memcmp
	cmpl	$0, %eax
	jne	.LBB90_159
# BB#155:                               # %if.then.396
                                        #   in Loop: Header=BB90_118 Depth=1
	xorl	%edi, %edi
	movq	-160(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-392(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB90_157
# BB#156:                               # %cond.true.400
                                        #   in Loop: Header=BB90_118 Depth=1
	movabsq	$.L.str.77, %rdi
	movl	$9, %eax
	movl	%eax, %esi
	movl	$1, %edx
	callq	font_intern_prop
	movq	%rax, -400(%rbp)        # 8-byte Spill
	jmp	.LBB90_158
.LBB90_157:                             # %cond.false.402
                                        #   in Loop: Header=BB90_118 Depth=1
	movq	-160(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
.LBB90_158:                             # %cond.end.403
                                        #   in Loop: Header=BB90_118 Depth=1
	movq	-400(%rbp), %rax        # 8-byte Reload
	movq	%rax, -160(%rbp)
	jmp	.LBB90_195
.LBB90_159:                             # %if.else.405
                                        #   in Loop: Header=BB90_118 Depth=1
	cmpq	$4, -200(%rbp)
	jne	.LBB90_165
# BB#160:                               # %land.lhs.true.408
                                        #   in Loop: Header=BB90_118 Depth=1
	movq	-192(%rbp), %rax
	movl	(%rax), %ecx
	subl	$1684827970, %ecx       # imm = 0x646C6F42
	setne	%dl
	movzbl	%dl, %esi
	cmpl	$0, %esi
	movl	%ecx, -404(%rbp)        # 4-byte Spill
	jne	.LBB90_165
# BB#161:                               # %if.then.412
                                        #   in Loop: Header=BB90_118 Depth=1
	xorl	%edi, %edi
	movq	-160(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-416(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB90_163
# BB#162:                               # %cond.true.416
                                        #   in Loop: Header=BB90_118 Depth=1
	movabsq	$.L.str.61, %rdi
	movl	$4, %eax
	movl	%eax, %esi
	movl	$1, %edx
	callq	font_intern_prop
	movq	%rax, -424(%rbp)        # 8-byte Spill
	jmp	.LBB90_164
.LBB90_163:                             # %cond.false.418
                                        #   in Loop: Header=BB90_118 Depth=1
	movq	-160(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
.LBB90_164:                             # %cond.end.419
                                        #   in Loop: Header=BB90_118 Depth=1
	movq	-424(%rbp), %rax        # 8-byte Reload
	movq	%rax, -160(%rbp)
	jmp	.LBB90_194
.LBB90_165:                             # %if.else.421
                                        #   in Loop: Header=BB90_118 Depth=1
	cmpq	$6, -200(%rbp)
	jne	.LBB90_171
# BB#166:                               # %land.lhs.true.424
                                        #   in Loop: Header=BB90_118 Depth=1
	movq	-192(%rbp), %rdi
	movl	$.L.str.79, %eax
	movl	%eax, %esi
	movl	$6, %eax
	movl	%eax, %edx
	callq	memcmp
	cmpl	$0, %eax
	jne	.LBB90_171
# BB#167:                               # %if.then.428
                                        #   in Loop: Header=BB90_118 Depth=1
	xorl	%edi, %edi
	movq	-168(%rbp), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-432(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB90_169
# BB#168:                               # %cond.true.432
                                        #   in Loop: Header=BB90_118 Depth=1
	movabsq	$.L.str.64, %rdi
	movl	$6, %eax
	movl	%eax, %esi
	movl	$1, %edx
	callq	font_intern_prop
	movq	%rax, -440(%rbp)        # 8-byte Spill
	jmp	.LBB90_170
.LBB90_169:                             # %cond.false.434
                                        #   in Loop: Header=BB90_118 Depth=1
	movq	-168(%rbp), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
.LBB90_170:                             # %cond.end.435
                                        #   in Loop: Header=BB90_118 Depth=1
	movq	-440(%rbp), %rax        # 8-byte Reload
	movq	%rax, -168(%rbp)
	jmp	.LBB90_193
.LBB90_171:                             # %if.else.437
                                        #   in Loop: Header=BB90_118 Depth=1
	cmpq	$7, -200(%rbp)
	jne	.LBB90_177
# BB#172:                               # %land.lhs.true.440
                                        #   in Loop: Header=BB90_118 Depth=1
	movq	-192(%rbp), %rdi
	movl	$.L.str.80, %eax
	movl	%eax, %esi
	movl	$7, %eax
	movl	%eax, %edx
	callq	memcmp
	cmpl	$0, %eax
	jne	.LBB90_177
# BB#173:                               # %if.then.444
                                        #   in Loop: Header=BB90_118 Depth=1
	xorl	%edi, %edi
	movq	-168(%rbp), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-448(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB90_175
# BB#174:                               # %cond.true.448
                                        #   in Loop: Header=BB90_118 Depth=1
	movabsq	$.L.str.65, %rdi
	movl	$7, %eax
	movl	%eax, %esi
	movl	$1, %edx
	callq	font_intern_prop
	movq	%rax, -456(%rbp)        # 8-byte Spill
	jmp	.LBB90_176
.LBB90_175:                             # %cond.false.450
                                        #   in Loop: Header=BB90_118 Depth=1
	movq	-168(%rbp), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
.LBB90_176:                             # %cond.end.451
                                        #   in Loop: Header=BB90_118 Depth=1
	movq	-456(%rbp), %rax        # 8-byte Reload
	movq	%rax, -168(%rbp)
	jmp	.LBB90_192
.LBB90_177:                             # %if.else.453
                                        #   in Loop: Header=BB90_118 Depth=1
	cmpq	$14, -200(%rbp)
	jne	.LBB90_183
# BB#178:                               # %land.lhs.true.456
                                        #   in Loop: Header=BB90_118 Depth=1
	movq	-192(%rbp), %rdi
	movl	$.L.str.81, %eax
	movl	%eax, %esi
	movl	$14, %eax
	movl	%eax, %edx
	callq	memcmp
	cmpl	$0, %eax
	jne	.LBB90_183
# BB#179:                               # %if.then.460
                                        #   in Loop: Header=BB90_118 Depth=1
	xorl	%edi, %edi
	movq	-176(%rbp), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-464(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB90_181
# BB#180:                               # %cond.true.464
                                        #   in Loop: Header=BB90_118 Depth=1
	movabsq	$.L.str.82, %rdi
	movl	$14, %eax
	movl	%eax, %esi
	movl	$1, %edx
	callq	font_intern_prop
	movq	%rax, -472(%rbp)        # 8-byte Spill
	jmp	.LBB90_182
.LBB90_181:                             # %cond.false.466
                                        #   in Loop: Header=BB90_118 Depth=1
	movq	-176(%rbp), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
.LBB90_182:                             # %cond.end.467
                                        #   in Loop: Header=BB90_118 Depth=1
	movq	-472(%rbp), %rax        # 8-byte Reload
	movq	%rax, -176(%rbp)
	jmp	.LBB90_191
.LBB90_183:                             # %if.else.469
                                        #   in Loop: Header=BB90_118 Depth=1
	cmpq	$9, -200(%rbp)
	jne	.LBB90_189
# BB#184:                               # %land.lhs.true.472
                                        #   in Loop: Header=BB90_118 Depth=1
	movq	-192(%rbp), %rdi
	movl	$.L.str.83, %eax
	movl	%eax, %esi
	movl	$9, %eax
	movl	%eax, %edx
	callq	memcmp
	cmpl	$0, %eax
	jne	.LBB90_189
# BB#185:                               # %if.then.476
                                        #   in Loop: Header=BB90_118 Depth=1
	xorl	%edi, %edi
	movq	-176(%rbp), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-480(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB90_187
# BB#186:                               # %cond.true.480
                                        #   in Loop: Header=BB90_118 Depth=1
	movabsq	$.L.str.84, %rdi
	movl	$9, %eax
	movl	%eax, %esi
	movl	$1, %edx
	callq	font_intern_prop
	movq	%rax, -488(%rbp)        # 8-byte Spill
	jmp	.LBB90_188
.LBB90_187:                             # %cond.false.482
                                        #   in Loop: Header=BB90_118 Depth=1
	movq	-176(%rbp), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
.LBB90_188:                             # %cond.end.483
                                        #   in Loop: Header=BB90_118 Depth=1
	movq	-488(%rbp), %rax        # 8-byte Reload
	movq	%rax, -176(%rbp)
	jmp	.LBB90_190
.LBB90_189:                             # %if.else.485
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB90_201
.LBB90_190:                             # %if.end.486
                                        #   in Loop: Header=BB90_118 Depth=1
	jmp	.LBB90_191
.LBB90_191:                             # %if.end.487
                                        #   in Loop: Header=BB90_118 Depth=1
	jmp	.LBB90_192
.LBB90_192:                             # %if.end.488
                                        #   in Loop: Header=BB90_118 Depth=1
	jmp	.LBB90_193
.LBB90_193:                             # %if.end.489
                                        #   in Loop: Header=BB90_118 Depth=1
	jmp	.LBB90_194
.LBB90_194:                             # %if.end.490
                                        #   in Loop: Header=BB90_118 Depth=1
	jmp	.LBB90_195
.LBB90_195:                             # %if.end.491
                                        #   in Loop: Header=BB90_118 Depth=1
	jmp	.LBB90_196
.LBB90_196:                             # %if.end.492
                                        #   in Loop: Header=BB90_118 Depth=1
	jmp	.LBB90_197
.LBB90_197:                             # %if.end.493
                                        #   in Loop: Header=BB90_118 Depth=1
	jmp	.LBB90_198
.LBB90_198:                             # %if.end.494
                                        #   in Loop: Header=BB90_118 Depth=1
	jmp	.LBB90_199
.LBB90_199:                             # %if.end.495
                                        #   in Loop: Header=BB90_118 Depth=1
	jmp	.LBB90_200
.LBB90_200:                             # %for.inc.496
                                        #   in Loop: Header=BB90_118 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB90_118
.LBB90_201:                             # %for.end.497
	cmpq	$0, -80(%rbp)
	je	.LBB90_203
# BB#202:                               # %if.then.499
	movl	$1, %edx
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	-16(%rbp), %rsi
	subq	%rsi, %rcx
	movq	%rdi, -496(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	font_intern_prop
	movl	$2, %edx
	movl	%edx, %esi
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
.LBB90_203:                             # %if.end.504
	xorl	%edi, %edi
	movq	-184(%rbp), %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-504(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB90_205
# BB#204:                               # %if.then.508
	movl	$8, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	movq	-184(%rbp), %rdx
	callq	ASET
.LBB90_205:                             # %if.end.509
	xorl	%edi, %edi
	movq	-160(%rbp), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-512(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB90_207
# BB#206:                               # %if.then.513
	movl	$5, %edi
	movl	$1, %edx
	movq	-32(%rbp), %rax
	movq	-160(%rbp), %rsi
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	font_style_to_value
	movl	$5, %edx
	movl	%edx, %esi
	movslq	%eax, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, %rdx
	callq	ASET
.LBB90_207:                             # %if.end.518
	xorl	%edi, %edi
	movq	-168(%rbp), %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-528(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB90_209
# BB#208:                               # %if.then.522
	movl	$6, %edi
	movl	$1, %edx
	movq	-32(%rbp), %rax
	movq	-168(%rbp), %rsi
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	font_style_to_value
	movl	$6, %edx
	movl	%edx, %esi
	movslq	%eax, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, %rdx
	callq	ASET
.LBB90_209:                             # %if.end.527
	xorl	%edi, %edi
	movq	-176(%rbp), %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-544(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB90_211
# BB#210:                               # %if.then.531
	movl	$7, %edi
	movl	$1, %edx
	movq	-32(%rbp), %rax
	movq	-176(%rbp), %rsi
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	font_style_to_value
	movl	$7, %edx
	movl	%edx, %esi
	movslq	%eax, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, %rdx
	callq	ASET
.LBB90_211:                             # %if.end.536
	jmp	.LBB90_212
.LBB90_212:                             # %if.end.537
	movl	$0, -4(%rbp)
.LBB90_213:                             # %return
	movl	-4(%rbp), %eax
	addq	$560, %rsp              # imm = 0x230
	popq	%rbp
	retq
.Lfunc_end90:
	.size	font_parse_fcname, .Lfunc_end90-font_parse_fcname
	.cfi_endproc

	.align	16, 0x90
	.type	font_prop_validate_symbol,@function
font_prop_validate_symbol:              # @font_prop_validate_symbol
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp278:
	.cfi_def_cfa_offset 16
.Ltmp279:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp280:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB91_1
	jmp	.LBB91_2
.LBB91_1:                               # %if.then
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fintern
	movq	%rax, -16(%rbp)
.LBB91_2:                               # %if.end
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB91_4
# BB#3:                                 # %if.then.4
	movl	$372, %edi              # imm = 0x174
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)
	jmp	.LBB91_7
.LBB91_4:                               # %if.else
	movl	$102, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB91_6
# BB#5:                                 # %if.then.9
	movq	-16(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	Fdowncase
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fintern
	movq	%rax, -16(%rbp)
.LBB91_6:                               # %if.end.14
	jmp	.LBB91_7
.LBB91_7:                               # %if.end.15
	movq	-16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end91:
	.size	font_prop_validate_symbol, .Lfunc_end91-font_prop_validate_symbol
	.cfi_endproc

	.align	16, 0x90
	.type	font_prop_validate_style,@function
font_prop_validate_style:               # @font_prop_validate_style
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp281:
	.cfi_def_cfa_offset 16
.Ltmp282:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp283:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movl	$138, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movl	%eax, %edi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB92_2
# BB#1:                                 # %cond.true
	movl	$5, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB92_3
.LBB92_2:                               # %cond.false
	movl	$119, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$7, %edi
	movl	$6, %ecx
	movq	-72(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	cmovel	%ecx, %edi
	movl	%edi, -60(%rbp)         # 4-byte Spill
.LBB92_3:                               # %cond.end
	movl	-60(%rbp), %eax         # 4-byte Reload
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rcx
	andq	$7, %rcx
	movl	%ecx, %eax
	andl	$-5, %eax
	cmpl	$2, %eax
	jne	.LBB92_16
# BB#4:                                 # %if.then
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -32(%rbp)
	movq	font_style_table, %rdi
	movl	-20(%rbp), %ecx
	subl	$5, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %esi
	callq	AREF
	movq	%rax, %rdi
	callq	CHECK_VECTOR
	movq	-32(%rbp), %rax
	sarq	$4, %rax
	andq	$15, %rax
	movq	font_style_table, %rdi
	movl	-20(%rbp), %ecx
	subl	$5, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	AREF
	movq	%rax, %rdi
	callq	ASIZE
	movq	-80(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jl	.LBB92_6
# BB#5:                                 # %if.then.17
	movl	$372, %edi              # imm = 0x174
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)
	jmp	.LBB92_15
.LBB92_6:                               # %if.else
	movq	font_style_table, %rdi
	movl	-20(%rbp), %eax
	subl	$5, %eax
	movl	%eax, %eax
	movl	%eax, %esi
	callq	AREF
	movq	-32(%rbp), %rsi
	sarq	$4, %rsi
	andq	$15, %rsi
	movq	%rax, %rdi
	callq	AREF
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	CHECK_VECTOR
	movq	-32(%rbp), %rax
	andq	$15, %rax
	addq	$1, %rax
	movq	-40(%rbp), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	ASIZE
	movq	-88(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jl	.LBB92_8
# BB#7:                                 # %if.then.29
	movl	$372, %edi              # imm = 0x174
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)
	jmp	.LBB92_14
.LBB92_8:                               # %if.else.31
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rdi
	callq	AREF
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB92_10
# BB#9:                                 # %cond.true.38
	jmp	.LBB92_11
.LBB92_10:                              # %cond.false.39
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %esi
	movq	-40(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	AREF
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	wrong_type_argument
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB92_11:                              # %cond.end.42
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rdi
	callq	AREF
	sarq	$2, %rax
	movq	-32(%rbp), %rsi
	sarq	$8, %rsi
	cmpq	%rsi, %rax
	je	.LBB92_13
# BB#12:                                # %if.then.48
	movl	$372, %edi              # imm = 0x174
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)
.LBB92_13:                              # %if.end
	jmp	.LBB92_14
.LBB92_14:                              # %if.end.50
	jmp	.LBB92_15
.LBB92_15:                              # %if.end.51
	jmp	.LBB92_23
.LBB92_16:                              # %if.else.52
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB92_21
# BB#17:                                # %if.then.57
	xorl	%edx, %edx
	movl	-20(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	font_style_to_value
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jl	.LBB92_19
# BB#18:                                # %cond.true.62
	movslq	-44(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB92_20
.LBB92_19:                              # %cond.false.65
	movl	$372, %edi              # imm = 0x174
	callq	builtin_lisp_symbol
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB92_20:                              # %cond.end.67
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, -16(%rbp)
	jmp	.LBB92_22
.LBB92_21:                              # %if.else.69
	movl	$372, %edi              # imm = 0x174
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)
.LBB92_22:                              # %if.end.71
	jmp	.LBB92_23
.LBB92_23:                              # %if.end.72
	movq	-16(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end92:
	.size	font_prop_validate_style, .Lfunc_end92-font_prop_validate_style
	.cfi_endproc

	.align	16, 0x90
	.type	font_prop_validate_non_neg,@function
font_prop_validate_non_neg:             # @font_prop_validate_non_neg
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp284:
	.cfi_def_cfa_offset 16
.Ltmp285:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp286:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB93_3
# BB#1:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$7, %ecx
	jne	.LBB93_4
# BB#2:                                 # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	XFLOAT_DATA
	xorps	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.LBB93_4
.LBB93_3:                               # %cond.true
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB93_5
.LBB93_4:                               # %cond.false
	movl	$372, %edi              # imm = 0x174
	callq	builtin_lisp_symbol
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB93_5:                               # %cond.end
	movq	-24(%rbp), %rax         # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end93:
	.size	font_prop_validate_non_neg, .Lfunc_end93-font_prop_validate_non_neg
	.cfi_endproc

	.align	16, 0x90
	.type	font_prop_validate_otf,@function
font_prop_validate_otf:                 # @font_prop_validate_otf
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp287:
	.cfi_def_cfa_offset 16
.Ltmp288:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp289:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	andq	$7, %rsi
	movl	%esi, %eax
	cmpl	$3, %eax
	je	.LBB94_2
# BB#1:                                 # %if.then
	movl	$372, %edi              # imm = 0x174
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB94_26
.LBB94_2:                               # %if.end
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB94_4
# BB#3:                                 # %if.then.7
	movl	$372, %edi              # imm = 0x174
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB94_26
.LBB94_4:                               # %if.end.9
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB94_6
# BB#5:                                 # %if.then.14
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB94_26
.LBB94_6:                               # %if.end.15
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB94_8
# BB#7:                                 # %lor.lhs.false
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB94_9
.LBB94_8:                               # %if.then.26
	movl	$372, %edi              # imm = 0x174
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB94_26
.LBB94_9:                               # %if.end.28
	movl	$0, -44(%rbp)
.LBB94_10:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB94_16 Depth 2
	cmpl	$2, -44(%rbp)
	jge	.LBB94_25
# BB#11:                                # %for.body
                                        #   in Loop: Header=BB94_10 Depth=1
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB94_13
# BB#12:                                # %if.then.37
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB94_26
.LBB94_13:                              # %if.end.38
                                        #   in Loop: Header=BB94_10 Depth=1
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB94_15
# BB#14:                                # %if.then.43
	movl	$372, %edi              # imm = 0x174
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB94_26
.LBB94_15:                              # %if.end.45
                                        #   in Loop: Header=BB94_10 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB94_16:                              # %for.cond.48
                                        #   Parent Loop BB94_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB94_21
# BB#17:                                # %for.body.53
                                        #   in Loop: Header=BB94_16 Depth=2
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB94_19
# BB#18:                                # %if.then.60
	movl	$372, %edi              # imm = 0x174
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB94_26
.LBB94_19:                              # %if.end.62
                                        #   in Loop: Header=BB94_16 Depth=2
	jmp	.LBB94_20
.LBB94_20:                              # %for.inc
                                        #   in Loop: Header=BB94_16 Depth=2
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB94_16
.LBB94_21:                              # %for.end
                                        #   in Loop: Header=BB94_10 Depth=1
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB94_23
# BB#22:                                # %if.then.69
	movl	$372, %edi              # imm = 0x174
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB94_26
.LBB94_23:                              # %if.end.71
                                        #   in Loop: Header=BB94_10 Depth=1
	jmp	.LBB94_24
.LBB94_24:                              # %for.inc.72
                                        #   in Loop: Header=BB94_10 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB94_10
.LBB94_25:                              # %for.end.73
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB94_26:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end94:
	.size	font_prop_validate_otf, .Lfunc_end94-font_prop_validate_otf
	.cfi_endproc

	.align	16, 0x90
	.type	font_compare,@function
font_compare:                           # @font_compare
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp290:
	.cfi_def_cfa_offset 16
.Ltmp291:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp292:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rsi, -40(%rbp)
	movq	-32(%rbp), %rsi
	movl	(%rsi), %eax
	movq	-40(%rbp), %rsi
	cmpl	(%rsi), %eax
	jae	.LBB95_2
# BB#1:                                 # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB95_6
.LBB95_2:                               # %if.else
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	movq	-40(%rbp), %rax
	cmpl	(%rax), %ecx
	jbe	.LBB95_4
# BB#3:                                 # %if.then.5
	movl	$1, -4(%rbp)
	jmp	.LBB95_6
.LBB95_4:                               # %if.end
	jmp	.LBB95_5
.LBB95_5:                               # %if.end.6
	movq	-32(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-40(%rbp), %rax
	subl	4(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB95_6:                               # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end95:
	.size	font_compare, .Lfunc_end95-font_compare
	.cfi_endproc

	.type	font_style_table,@object # @font_style_table
	.local	font_style_table
	.comm	font_style_table,8,8
	.type	font_charset_alist,@object # @font_charset_alist
	.local	font_charset_alist
	.comm	font_charset_alist,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"*-*"
	.size	.L.str, 4

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"*-"
	.size	.L.str.1, 3

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"-*"
	.size	.L.str.2, 3

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"-"
	.size	.L.str.3, 2

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"*"
	.size	.L.str.4, 2

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"%s%s-*"
	.size	.L.str.5, 7

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"%ld-*"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"*-%.0f"
	.size	.L.str.7, 7

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"%ld-%ld"
	.size	.L.str.8, 8

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"p"
	.size	.L.str.9, 2

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"d"
	.size	.L.str.10, 2

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"m"
	.size	.L.str.11, 2

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"c"
	.size	.L.str.12, 2

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"%ld"
	.size	.L.str.13, 4

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"-%s-%s-%s-%s-%s-%s-%s-%s-%s-%s-%s"
	.size	.L.str.14, 34

	.type	sort_shift_bits,@object # @sort_shift_bits
	.local	sort_shift_bits
	.comm	sort_shift_bits,36,16
	.type	scratch_font_spec,@object # @scratch_font_spec
	.local	scratch_font_spec
	.comm	scratch_font_spec,8,8
	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"list"
	.size	.L.str.15, 5

	.type	font_driver_list,@object # @font_driver_list
	.local	font_driver_list
	.comm	font_driver_list,8,8
	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Unusable font driver for a frame: %s"
	.size	.L.str.16, 37

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Duplicated font driver: %s"
	.size	.L.str.17, 27

	.type	num_font_drivers,@object # @num_font_drivers
	.local	num_font_drivers
	.comm	num_font_drivers,4,4
	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"true"
	.size	.L.str.18, 5

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"false"
	.size	.L.str.19, 6

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"False"
	.size	.L.str.20, 6

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"FALSE"
	.size	.L.str.21, 6

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"FcFalse"
	.size	.L.str.22, 8

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"off"
	.size	.L.str.23, 4

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"OFF"
	.size	.L.str.24, 4

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Off"
	.size	.L.str.25, 4

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"font-extra-type"
	.size	.L.str.26, 16

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"No value for key `%s'"
	.size	.L.str.27, 22

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Invalid font name: %s"
	.size	.L.str.28, 22

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Invalid font name"
	.size	.L.str.29, 18

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Invalid font object"
	.size	.L.str.30, 20

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"-*-*"
	.size	.L.str.31, 5

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Invalid glyph-string: "
	.size	.L.str.32, 23

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Specified window is not displaying the current buffer"
	.size	.L.str.33, 54

	.type	Vfont_log_deferred,@object # @Vfont_log_deferred
	.local	Vfont_log_deferred
	.comm	Vfont_log_deferred,8,8
	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"="
	.size	.L.str.34, 2

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	":"
	.size	.L.str.35, 2

	.type	scratch_font_prefer,@object # @scratch_font_prefer
	.local	scratch_font_prefer
	.comm	scratch_font_prefer,8,8
	.type	Sclear_font_cache,@object # @Sclear_font_cache
	.data
	.align	8
Sclear_font_cache:
	.quad	167772160               # 0xa000000
	.quad	Fclear_font_cache
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.99
	.quad	0
	.quad	0
	.size	Sclear_font_cache, 48

	.type	syms_of_font.o_fwd,@object # @syms_of_font.o_fwd
	.local	syms_of_font.o_fwd
	.comm	syms_of_font.o_fwd,16,8
	.type	.L.str.36,@object       # @.str.36
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.36:
	.asciz	"font-encoding-alist"
	.size	.L.str.36, 20

	.type	syms_of_font.o_fwd.37,@object # @syms_of_font.o_fwd.37
	.local	syms_of_font.o_fwd.37
	.comm	syms_of_font.o_fwd.37,16,8
	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"font-weight-table"
	.size	.L.str.38, 18

	.type	weight_table,@object    # @weight_table
	.section	.rodata,"a",@progbits
	.align	16
weight_table:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.111
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	20                      # 0x14
	.zero	4
	.quad	.L.str.71
	.quad	.L.str.112
	.quad	0
	.quad	0
	.quad	0
	.long	40                      # 0x28
	.zero	4
	.quad	.L.str.113
	.quad	.L.str.114
	.quad	0
	.quad	0
	.quad	0
	.long	50                      # 0x32
	.zero	4
	.quad	.L.str.58
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	75                      # 0x4b
	.zero	4
	.quad	.L.str.115
	.quad	.L.str.116
	.quad	.L.str.117
	.quad	.L.str.74
	.quad	0
	.long	100                     # 0x64
	.zero	4
	.quad	.L.str.118
	.quad	.L.str.59
	.quad	.L.str.119
	.quad	.L.str.120
	.quad	0
	.long	180                     # 0xb4
	.zero	4
	.quad	.L.str.77
	.quad	.L.str.121
	.quad	.L.str.60
	.quad	.L.str.122
	.quad	0
	.long	200                     # 0xc8
	.zero	4
	.quad	.L.str.61
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	205                     # 0xcd
	.zero	4
	.quad	.L.str.123
	.quad	.L.str.124
	.quad	0
	.quad	0
	.quad	0
	.long	210                     # 0xd2
	.zero	4
	.quad	.L.str.125
	.quad	.L.str.126
	.quad	.L.str.62
	.quad	0
	.quad	0
	.size	weight_table, 480

	.type	syms_of_font.o_fwd.39,@object # @syms_of_font.o_fwd.39
	.local	syms_of_font.o_fwd.39
	.comm	syms_of_font.o_fwd.39,16,8
	.type	.L.str.40,@object       # @.str.40
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.40:
	.asciz	"font-slant-table"
	.size	.L.str.40, 17

	.type	slant_table,@object     # @slant_table
	.section	.rodata,"a",@progbits
	.align	16
slant_table:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.127
	.quad	.L.str.128
	.quad	0
	.quad	0
	.quad	0
	.long	10                      # 0xa
	.zero	4
	.quad	.L.str.129
	.quad	.L.str.130
	.quad	0
	.quad	0
	.quad	0
	.long	100                     # 0x64
	.zero	4
	.quad	.L.str.118
	.quad	.L.str.131
	.quad	.L.str.120
	.quad	0
	.quad	0
	.long	200                     # 0xc8
	.zero	4
	.quad	.L.str.64
	.quad	.L.str.132
	.quad	.L.str.133
	.quad	0
	.quad	0
	.long	210                     # 0xd2
	.zero	4
	.quad	.L.str.65
	.quad	.L.str.134
	.quad	0
	.quad	0
	.quad	0
	.size	slant_table, 240

	.type	syms_of_font.o_fwd.41,@object # @syms_of_font.o_fwd.41
	.local	syms_of_font.o_fwd.41
	.comm	syms_of_font.o_fwd.41,16,8
	.type	.L.str.42,@object       # @.str.42
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.42:
	.asciz	"font-width-table"
	.size	.L.str.42, 17

	.type	width_table,@object     # @width_table
	.section	.rodata,"a",@progbits
	.align	16
width_table:
	.long	50                      # 0x32
	.zero	4
	.quad	.L.str.135
	.quad	.L.str.136
	.quad	0
	.quad	0
	.quad	0
	.long	63                      # 0x3f
	.zero	4
	.quad	.L.str.137
	.quad	.L.str.138
	.quad	0
	.quad	0
	.quad	0
	.long	75                      # 0x4b
	.zero	4
	.quad	.L.str.84
	.quad	.L.str.139
	.quad	.L.str.140
	.quad	0
	.quad	0
	.long	87                      # 0x57
	.zero	4
	.quad	.L.str.82
	.quad	.L.str.141
	.quad	.L.str.142
	.quad	0
	.quad	0
	.long	100                     # 0x64
	.zero	4
	.quad	.L.str.118
	.quad	.L.str.59
	.quad	.L.str.119
	.quad	.L.str.120
	.quad	0
	.long	113                     # 0x71
	.zero	4
	.quad	.L.str.143
	.quad	.L.str.144
	.quad	.L.str.145
	.quad	0
	.quad	0
	.long	125                     # 0x7d
	.zero	4
	.quad	.L.str.146
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	150                     # 0x96
	.zero	4
	.quad	.L.str.147
	.quad	.L.str.148
	.quad	0
	.quad	0
	.quad	0
	.long	200                     # 0xc8
	.zero	4
	.quad	.L.str.149
	.quad	.L.str.150
	.quad	.L.str.151
	.quad	0
	.quad	0
	.size	width_table, 432

	.type	syms_of_font.o_fwd.43,@object # @syms_of_font.o_fwd.43
	.local	syms_of_font.o_fwd.43
	.comm	syms_of_font.o_fwd.43,16,8
	.type	.L.str.44,@object       # @.str.44
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.44:
	.asciz	"font-log"
	.size	.L.str.44, 9

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"EMACS_FONT_LOG"
	.size	.L.str.45, 15

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"weight"
	.size	.L.str.46, 7

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"slant"
	.size	.L.str.47, 6

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"width"
	.size	.L.str.48, 6

	.type	.Lfont_unparse_fcname.style_names,@object # @font_unparse_fcname.style_names
	.section	.rodata,"a",@progbits
	.align	16
.Lfont_unparse_fcname.style_names:
	.quad	.L.str.46
	.quad	.L.str.47
	.quad	.L.str.48
	.size	.Lfont_unparse_fcname.style_names, 24

	.type	.L.str.49,@object       # @.str.49
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.49:
	.asciz	"%s"
	.size	.L.str.49, 3

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"-%d"
	.size	.L.str.50, 4

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	":pixelsize=%d"
	.size	.L.str.51, 14

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	":foundry=%s"
	.size	.L.str.52, 12

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	":%s=%s"
	.size	.L.str.53, 7

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	":dpi=%ld"
	.size	.L.str.54, 9

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	":spacing=%ld"
	.size	.L.str.55, 13

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	":scalable=true"
	.size	.L.str.56, 15

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	":scalable=false"
	.size	.L.str.57, 16

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"light"
	.size	.L.str.58, 6

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"medium"
	.size	.L.str.59, 7

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"demibold"
	.size	.L.str.60, 9

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"bold"
	.size	.L.str.61, 5

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"black"
	.size	.L.str.62, 6

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"roman"
	.size	.L.str.63, 6

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"italic"
	.size	.L.str.64, 7

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"oblique"
	.size	.L.str.65, 8

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"charcell"
	.size	.L.str.66, 9

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"mono"
	.size	.L.str.67, 5

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"proportional"
	.size	.L.str.68, 13

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"pixelsize"
	.size	.L.str.69, 10

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"Ultra-Light"
	.size	.L.str.70, 12

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"ultra-light"
	.size	.L.str.71, 12

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"Light"
	.size	.L.str.72, 6

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"Book"
	.size	.L.str.73, 5

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"book"
	.size	.L.str.74, 5

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"Medium"
	.size	.L.str.75, 7

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"Semi-Bold"
	.size	.L.str.76, 10

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"semi-bold"
	.size	.L.str.77, 10

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"Bold"
	.size	.L.str.78, 5

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"Italic"
	.size	.L.str.79, 7

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"Oblique"
	.size	.L.str.80, 8

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"Semi-Condensed"
	.size	.L.str.81, 15

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"semi-condensed"
	.size	.L.str.82, 15

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"Condensed"
	.size	.L.str.83, 10

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"condensed"
	.size	.L.str.84, 10

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"open"
	.size	.L.str.85, 5

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"match"
	.size	.L.str.86, 6

	.type	font_property_table,@object # @font_property_table
	.section	.rodata,"a",@progbits
	.align	16
font_property_table:
	.long	131                     # 0x83
	.zero	4
	.quad	font_prop_validate_symbol
	.long	48                      # 0x30
	.zero	4
	.quad	font_prop_validate_symbol
	.long	40                      # 0x28
	.zero	4
	.quad	font_prop_validate_symbol
	.long	5                       # 0x5
	.zero	4
	.quad	font_prop_validate_symbol
	.long	102                     # 0x66
	.zero	4
	.quad	font_prop_validate_symbol
	.long	138                     # 0x8a
	.zero	4
	.quad	font_prop_validate_style
	.long	119                     # 0x77
	.zero	4
	.quad	font_prop_validate_style
	.long	139                     # 0x8b
	.zero	4
	.quad	font_prop_validate_style
	.long	118                     # 0x76
	.zero	4
	.quad	font_prop_validate_non_neg
	.long	35                      # 0x23
	.zero	4
	.quad	font_prop_validate_non_neg
	.long	120                     # 0x78
	.zero	4
	.quad	font_prop_validate_spacing
	.long	12                      # 0xc
	.zero	4
	.quad	font_prop_validate_non_neg
	.long	73                      # 0x49
	.zero	4
	.quad	font_prop_validate_symbol
	.long	114                     # 0x72
	.zero	4
	.quad	font_prop_validate_symbol
	.long	89                      # 0x59
	.zero	4
	.quad	font_prop_validate_otf
	.size	font_property_table, 240

	.type	.L.str.87,@object       # @.str.87
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.87:
	.asciz	"invalid font property"
	.size	.L.str.87, 22

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"sort-by"
	.size	.L.str.88, 8

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"close"
	.size	.L.str.89, 6

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"fontp"
	.size	.L.str.90, 6

	.type	Sfontp,@object          # @Sfontp
	.data
	.align	8
Sfontp:
	.quad	167772160               # 0xa000000
	.quad	Ffontp
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.90
	.quad	0
	.quad	0
	.size	Sfontp, 48

	.type	.L.str.91,@object       # @.str.91
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.91:
	.asciz	"font-spec"
	.size	.L.str.91, 10

	.type	Sfont_spec,@object      # @Sfont_spec
	.data
	.align	8
Sfont_spec:
	.quad	167772160               # 0xa000000
	.quad	Ffont_spec
	.short	0                       # 0x0
	.short	65534                   # 0xfffe
	.zero	4
	.quad	.L.str.91
	.quad	0
	.quad	0
	.size	Sfont_spec, 48

	.type	.L.str.92,@object       # @.str.92
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.92:
	.asciz	"font-get"
	.size	.L.str.92, 9

	.type	Sfont_get,@object       # @Sfont_get
	.data
	.align	8
Sfont_get:
	.quad	167772160               # 0xa000000
	.quad	Ffont_get
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.92
	.quad	0
	.quad	0
	.size	Sfont_get, 48

	.type	.L.str.93,@object       # @.str.93
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.93:
	.asciz	"font-face-attributes"
	.size	.L.str.93, 21

	.type	Sfont_face_attributes,@object # @Sfont_face_attributes
	.data
	.align	8
Sfont_face_attributes:
	.quad	167772160               # 0xa000000
	.quad	Ffont_face_attributes
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.93
	.quad	0
	.quad	0
	.size	Sfont_face_attributes, 48

	.type	.L.str.94,@object       # @.str.94
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.94:
	.asciz	"font-put"
	.size	.L.str.94, 9

	.type	Sfont_put,@object       # @Sfont_put
	.data
	.align	8
Sfont_put:
	.quad	167772160               # 0xa000000
	.quad	Ffont_put
	.short	3                       # 0x3
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.94
	.quad	0
	.quad	0
	.size	Sfont_put, 48

	.type	.L.str.95,@object       # @.str.95
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.95:
	.asciz	"list-fonts"
	.size	.L.str.95, 11

	.type	Slist_fonts,@object     # @Slist_fonts
	.data
	.align	8
Slist_fonts:
	.quad	167772160               # 0xa000000
	.quad	Flist_fonts
	.short	1                       # 0x1
	.short	4                       # 0x4
	.zero	4
	.quad	.L.str.95
	.quad	0
	.quad	0
	.size	Slist_fonts, 48

	.type	.L.str.96,@object       # @.str.96
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.96:
	.asciz	"font-family-list"
	.size	.L.str.96, 17

	.type	Sfont_family_list,@object # @Sfont_family_list
	.data
	.align	8
Sfont_family_list:
	.quad	167772160               # 0xa000000
	.quad	Ffont_family_list
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.96
	.quad	0
	.quad	0
	.size	Sfont_family_list, 48

	.type	.L.str.97,@object       # @.str.97
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.97:
	.asciz	"find-font"
	.size	.L.str.97, 10

	.type	Sfind_font,@object      # @Sfind_font
	.data
	.align	8
Sfind_font:
	.quad	167772160               # 0xa000000
	.quad	Ffind_font
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.97
	.quad	0
	.quad	0
	.size	Sfind_font, 48

	.type	.L.str.98,@object       # @.str.98
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.98:
	.asciz	"font-xlfd-name"
	.size	.L.str.98, 15

	.type	Sfont_xlfd_name,@object # @Sfont_xlfd_name
	.data
	.align	8
Sfont_xlfd_name:
	.quad	167772160               # 0xa000000
	.quad	Ffont_xlfd_name
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.98
	.quad	0
	.quad	0
	.size	Sfont_xlfd_name, 48

	.type	.L.str.99,@object       # @.str.99
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.99:
	.asciz	"clear-font-cache"
	.size	.L.str.99, 17

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"font-shape-gstring"
	.size	.L.str.100, 19

	.type	Sfont_shape_gstring,@object # @Sfont_shape_gstring
	.data
	.align	8
Sfont_shape_gstring:
	.quad	167772160               # 0xa000000
	.quad	Ffont_shape_gstring
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.100
	.quad	0
	.quad	0
	.size	Sfont_shape_gstring, 48

	.type	.L.str.101,@object      # @.str.101
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.101:
	.asciz	"font-variation-glyphs"
	.size	.L.str.101, 22

	.type	Sfont_variation_glyphs,@object # @Sfont_variation_glyphs
	.data
	.align	8
Sfont_variation_glyphs:
	.quad	167772160               # 0xa000000
	.quad	Ffont_variation_glyphs
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.101
	.quad	0
	.quad	0
	.size	Sfont_variation_glyphs, 48

	.type	.L.str.102,@object      # @.str.102
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.102:
	.asciz	"internal-char-font"
	.size	.L.str.102, 19

	.type	Sinternal_char_font,@object # @Sinternal_char_font
	.data
	.align	8
Sinternal_char_font:
	.quad	167772160               # 0xa000000
	.quad	Finternal_char_font
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.102
	.quad	0
	.quad	0
	.size	Sinternal_char_font, 48

	.type	.L.str.103,@object      # @.str.103
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.103:
	.asciz	"open-font"
	.size	.L.str.103, 10

	.type	Sopen_font,@object      # @Sopen_font
	.data
	.align	8
Sopen_font:
	.quad	167772160               # 0xa000000
	.quad	Fopen_font
	.short	1                       # 0x1
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.103
	.quad	0
	.quad	0
	.size	Sopen_font, 48

	.type	.L.str.104,@object      # @.str.104
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.104:
	.asciz	"close-font"
	.size	.L.str.104, 11

	.type	Sclose_font,@object     # @Sclose_font
	.data
	.align	8
Sclose_font:
	.quad	167772160               # 0xa000000
	.quad	Fclose_font
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.104
	.quad	0
	.quad	0
	.size	Sclose_font, 48

	.type	.L.str.105,@object      # @.str.105
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.105:
	.asciz	"query-font"
	.size	.L.str.105, 11

	.type	Squery_font,@object     # @Squery_font
	.data
	.align	8
Squery_font:
	.quad	167772160               # 0xa000000
	.quad	Fquery_font
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.105
	.quad	0
	.quad	0
	.size	Squery_font, 48

	.type	.L.str.106,@object      # @.str.106
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.106:
	.asciz	"font-get-glyphs"
	.size	.L.str.106, 16

	.type	Sfont_get_glyphs,@object # @Sfont_get_glyphs
	.data
	.align	8
Sfont_get_glyphs:
	.quad	167772160               # 0xa000000
	.quad	Ffont_get_glyphs
	.short	3                       # 0x3
	.short	4                       # 0x4
	.zero	4
	.quad	.L.str.106
	.quad	0
	.quad	0
	.size	Sfont_get_glyphs, 48

	.type	.L.str.107,@object      # @.str.107
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.107:
	.asciz	"font-match-p"
	.size	.L.str.107, 13

	.type	Sfont_match_p,@object   # @Sfont_match_p
	.data
	.align	8
Sfont_match_p:
	.quad	167772160               # 0xa000000
	.quad	Ffont_match_p
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.107
	.quad	0
	.quad	0
	.size	Sfont_match_p, 48

	.type	.L.str.108,@object      # @.str.108
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.108:
	.asciz	"font-at"
	.size	.L.str.108, 8

	.type	Sfont_at,@object        # @Sfont_at
	.data
	.align	8
Sfont_at:
	.quad	167772160               # 0xa000000
	.quad	Ffont_at
	.short	1                       # 0x1
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.108
	.quad	0
	.quad	0
	.size	Sfont_at, 48

	.type	.L.str.109,@object      # @.str.109
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.109:
	.asciz	"frame-font-cache"
	.size	.L.str.109, 17

	.type	Sframe_font_cache,@object # @Sframe_font_cache
	.data
	.align	8
Sframe_font_cache:
	.quad	167772160               # 0xa000000
	.quad	Fframe_font_cache
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.109
	.quad	0
	.quad	0
	.size	Sframe_font_cache, 48

	.type	.L.str.110,@object      # @.str.110
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.110:
	.asciz	"font-info"
	.size	.L.str.110, 10

	.type	Sfont_info,@object      # @Sfont_info
	.data
	.align	8
Sfont_info:
	.quad	167772160               # 0xa000000
	.quad	Ffont_info
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.110
	.quad	0
	.quad	0
	.size	Sfont_info, 48

	.type	.L.str.111,@object      # @.str.111
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.111:
	.asciz	"thin"
	.size	.L.str.111, 5

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"ultralight"
	.size	.L.str.112, 11

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"extra-light"
	.size	.L.str.113, 12

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"extralight"
	.size	.L.str.114, 11

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"semi-light"
	.size	.L.str.115, 11

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"semilight"
	.size	.L.str.116, 10

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"demilight"
	.size	.L.str.117, 10

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"normal"
	.size	.L.str.118, 7

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"regular"
	.size	.L.str.119, 8

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"unspecified"
	.size	.L.str.120, 12

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"semibold"
	.size	.L.str.121, 9

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"demi"
	.size	.L.str.122, 5

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"extra-bold"
	.size	.L.str.123, 11

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"extrabold"
	.size	.L.str.124, 10

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"ultra-bold"
	.size	.L.str.125, 11

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"ultrabold"
	.size	.L.str.126, 10

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"reverse-oblique"
	.size	.L.str.127, 16

	.type	.L.str.128,@object      # @.str.128
.L.str.128:
	.asciz	"ro"
	.size	.L.str.128, 3

	.type	.L.str.129,@object      # @.str.129
.L.str.129:
	.asciz	"reverse-italic"
	.size	.L.str.129, 15

	.type	.L.str.130,@object      # @.str.130
.L.str.130:
	.asciz	"ri"
	.size	.L.str.130, 3

	.type	.L.str.131,@object      # @.str.131
.L.str.131:
	.asciz	"r"
	.size	.L.str.131, 2

	.type	.L.str.132,@object      # @.str.132
.L.str.132:
	.asciz	"i"
	.size	.L.str.132, 2

	.type	.L.str.133,@object      # @.str.133
.L.str.133:
	.asciz	"ot"
	.size	.L.str.133, 3

	.type	.L.str.134,@object      # @.str.134
.L.str.134:
	.asciz	"o"
	.size	.L.str.134, 2

	.type	.L.str.135,@object      # @.str.135
.L.str.135:
	.asciz	"ultra-condensed"
	.size	.L.str.135, 16

	.type	.L.str.136,@object      # @.str.136
.L.str.136:
	.asciz	"ultracondensed"
	.size	.L.str.136, 15

	.type	.L.str.137,@object      # @.str.137
.L.str.137:
	.asciz	"extra-condensed"
	.size	.L.str.137, 16

	.type	.L.str.138,@object      # @.str.138
.L.str.138:
	.asciz	"extracondensed"
	.size	.L.str.138, 15

	.type	.L.str.139,@object      # @.str.139
.L.str.139:
	.asciz	"compressed"
	.size	.L.str.139, 11

	.type	.L.str.140,@object      # @.str.140
.L.str.140:
	.asciz	"narrow"
	.size	.L.str.140, 7

	.type	.L.str.141,@object      # @.str.141
.L.str.141:
	.asciz	"semicondensed"
	.size	.L.str.141, 14

	.type	.L.str.142,@object      # @.str.142
.L.str.142:
	.asciz	"demicondensed"
	.size	.L.str.142, 14

	.type	.L.str.143,@object      # @.str.143
.L.str.143:
	.asciz	"semi-expanded"
	.size	.L.str.143, 14

	.type	.L.str.144,@object      # @.str.144
.L.str.144:
	.asciz	"semiexpanded"
	.size	.L.str.144, 13

	.type	.L.str.145,@object      # @.str.145
.L.str.145:
	.asciz	"demiexpanded"
	.size	.L.str.145, 13

	.type	.L.str.146,@object      # @.str.146
.L.str.146:
	.asciz	"expanded"
	.size	.L.str.146, 9

	.type	.L.str.147,@object      # @.str.147
.L.str.147:
	.asciz	"extra-expanded"
	.size	.L.str.147, 15

	.type	.L.str.148,@object      # @.str.148
.L.str.148:
	.asciz	"extraexpanded"
	.size	.L.str.148, 14

	.type	.L.str.149,@object      # @.str.149
.L.str.149:
	.asciz	"ultra-expanded"
	.size	.L.str.149, 15

	.type	.L.str.150,@object      # @.str.150
.L.str.150:
	.asciz	"ultraexpanded"
	.size	.L.str.150, 14

	.type	.L.str.151,@object      # @.str.151
.L.str.151:
	.asciz	"wide"
	.size	.L.str.151, 5


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
