	.text
	.file	"xftfont.bc"
	.globl	syms_of_xftfont
	.align	16, 0x90
	.type	syms_of_xftfont,@function
syms_of_xftfont:                        # @syms_of_xftfont
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
.Ltmp3:
	.cfi_offset %rbx, -56
.Ltmp4:
	.cfi_offset %r12, -48
.Ltmp5:
	.cfi_offset %r13, -40
.Ltmp6:
	.cfi_offset %r14, -32
.Ltmp7:
	.cfi_offset %r15, -24
	jmp	.LBB0_1
.LBB0_1:                                # %do.body
	movabsq	$syms_of_xftfont.b_fwd, %rdi
	movabsq	$.L.str, %rsi
	movabsq	$globals, %rax
	addq	$3450, %rax             # imm = 0xD7A
	movq	%rax, %rdx
	callq	defvar_bool
# BB#2:                                 # %do.end
	movl	$1063, %edi             # imm = 0x427
	movabsq	$xftfont_driver, %rax
	movabsq	$ftfont_driver, %rcx
	movl	$224, %edx
                                        # kill: RDX<def> EDX<kill>
	movb	$0, globals+3450
	movb	$0, ascii_printable
	movl	%edi, -44(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	memcpy
	movl	-44(%rbp), %edi         # 4-byte Reload
	callq	builtin_lisp_symbol
	movabsq	$xftfont_driver, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movabsq	$xftfont_cached_font_ok, %rcx
	movabsq	$xftfont_end_for_frame, %rdx
	movabsq	$xftfont_draw, %r9
	movabsq	$xftfont_text_extents, %r10
	movabsq	$xftfont_encode_char, %r11
	movabsq	$xftfont_has_char, %rbx
	movabsq	$xftfont_done_face, %r14
	movabsq	$xftfont_prepare_face, %r15
	movabsq	$xftfont_close, %r12
	movabsq	$xftfont_open, %r13
	movabsq	$xftfont_match, %r8
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movabsq	$xftfont_list, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, xftfont_driver
	movq	xfont_driver+16, %rax
	movq	%rax, xftfont_driver+16
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, xftfont_driver+24
	movq	%r8, xftfont_driver+32
	movq	%r13, xftfont_driver+56
	movq	%r12, xftfont_driver+64
	movq	%r15, xftfont_driver+72
	movq	%r14, xftfont_driver+80
	movq	%rbx, xftfont_driver+88
	movq	%r11, xftfont_driver+96
	movq	%r10, xftfont_driver+104
	movq	%r9, xftfont_driver+112
	movq	%rdx, xftfont_driver+168
	movq	%rcx, xftfont_driver+208
	callq	register_font_driver
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	syms_of_xftfont, .Lfunc_end0-syms_of_xftfont
	.cfi_endproc

	.align	16, 0x90
	.type	xftfont_list,@function
xftfont_list:                           # @xftfont_list
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp8:
	.cfi_def_cfa_offset 16
.Ltmp9:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp10:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	ftfont_driver+24, %rsi
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-40(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB1_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB1_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	$1063, %edi             # imm = 0x427
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB1_1
.LBB1_4:                                # %for.end
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	xftfont_list, .Lfunc_end1-xftfont_list
	.cfi_endproc

	.align	16, 0x90
	.type	xftfont_match,@function
xftfont_match:                          # @xftfont_match
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp11:
	.cfi_def_cfa_offset 16
.Ltmp12:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp13:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	ftfont_driver+32, %rsi
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-32(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB2_2
# BB#1:                                 # %if.then
	movl	$1063, %edi             # imm = 0x427
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
.LBB2_2:                                # %if.end
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	xftfont_match, .Lfunc_end2-xftfont_match
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4679240012837945344     # double 65536
	.text
	.align	16, 0x90
	.type	xftfont_open,@function
xftfont_open:                           # @xftfont_open
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp14:
	.cfi_def_cfa_offset 16
.Ltmp15:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp16:
	.cfi_def_cfa_register %rbp
	subq	$400, %rsp              # imm = 0x190
	movl	$45, %eax
	xorps	%xmm0, %xmm0
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	-16(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	424(%rsi), %rsi
	movq	16(%rsi), %rsi
	movq	%rsi, -40(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -96(%rbp)
	movsd	%xmm0, -112(%rbp)
	movq	$0, -120(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movl	$12, %edx
	movl	%edx, %esi
	movq	-24(%rbp), %rdi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	AREF
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	assq_no_quit
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %edx
	cmpl	$3, %edx
	je	.LBB3_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB3_69
.LBB3_2:                                # %if.end
	movl	$8, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -48(%rbp)
	movq	-48(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -56(%rbp)
	movq	-48(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -64(%rbp)
	movq	-24(%rbp), %rdi
	callq	AREF
	xorps	%xmm0, %xmm0
	sarq	$2, %rax
	cvtsi2sdq	%rax, %xmm1
	movsd	%xmm1, -112(%rbp)
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB3_4
	jp	.LBB3_4
# BB#3:                                 # %if.then.14
	cvtsi2sdl	-28(%rbp), %xmm0
	movsd	%xmm0, -112(%rbp)
.LBB3_4:                                # %if.end.16
	callq	FcPatternCreate
	movl	$5, %ecx
	movl	%ecx, %esi
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	AREF
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB3_6
# BB#5:                                 # %cond.true
	movl	$5, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rdi
	callq	AREF
	sarq	$2, %rax
	sarq	$8, %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	jmp	.LBB3_7
.LBB3_6:                                # %cond.false
	movq	$-1, %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	jmp	.LBB3_7
.LBB3_7:                                # %cond.end
	movq	-216(%rbp), %rax        # 8-byte Reload
	movabsq	$.L.str.1, %rsi
	movl	%eax, %ecx
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %edx
	callq	FcPatternAddInteger
	movl	$6, %ecx
	movl	%ecx, %esi
	movq	-24(%rbp), %rdi
	movl	%eax, -220(%rbp)        # 4-byte Spill
	callq	AREF
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB3_9
# BB#8:                                 # %cond.true.35
	movl	$6, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rdi
	callq	AREF
	sarq	$2, %rax
	sarq	$8, %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	jmp	.LBB3_10
.LBB3_9:                                # %cond.false.39
	movq	$-1, %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	jmp	.LBB3_10
.LBB3_10:                               # %cond.end.40
	movq	-232(%rbp), %rax        # 8-byte Reload
	subq	$100, %rax
	movl	%eax, %ecx
	movl	%ecx, -128(%rbp)
	cmpl	$0, -128(%rbp)
	jge	.LBB3_12
# BB#11:                                # %if.then.46
	movl	$0, -128(%rbp)
.LBB3_12:                               # %if.end.47
	movabsq	$.L.str.2, %rsi
	movq	-80(%rbp), %rdi
	movl	-128(%rbp), %edx
	callq	FcPatternAddInteger
	movl	$7, %edx
	movl	%edx, %esi
	movq	-80(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movl	%eax, -244(%rbp)        # 4-byte Spill
	callq	AREF
	andq	$7, %rax
	movl	%eax, %edx
	andl	$-5, %edx
	cmpl	$2, %edx
	jne	.LBB3_14
# BB#13:                                # %cond.true.55
	movl	$7, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rdi
	callq	AREF
	sarq	$2, %rax
	sarq	$8, %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	jmp	.LBB3_15
.LBB3_14:                               # %cond.false.59
	movq	$-1, %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	jmp	.LBB3_15
.LBB3_15:                               # %cond.end.60
	movq	-256(%rbp), %rax        # 8-byte Reload
	movabsq	$.L.str.3, %rsi
	movl	%eax, %ecx
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %edx
	callq	FcPatternAddInteger
	movabsq	$.L.str.4, %rsi
	movq	-80(%rbp), %rdi
	cvtsi2sdl	-28(%rbp), %xmm0
	movl	%eax, -260(%rbp)        # 4-byte Spill
	callq	FcPatternAddDouble
	movl	$2, %ecx
	movl	%ecx, %esi
	movq	-24(%rbp), %rdi
	movl	%eax, -264(%rbp)        # 4-byte Spill
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-272(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB3_17
# BB#16:                                # %if.then.70
	movq	-80(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SDATA
	movabsq	$.L.str.5, %rsi
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	FcPatternAddString
	movl	%eax, -284(%rbp)        # 4-byte Spill
.LBB3_17:                               # %if.end.74
	movl	$1, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rdi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-296(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB3_19
# BB#18:                                # %if.then.79
	movq	-80(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SDATA
	movabsq	$.L.str.6, %rsi
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	FcPatternAddString
	movl	%eax, -308(%rbp)        # 4-byte Spill
.LBB3_19:                               # %if.end.83
	movl	$10, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rdi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-320(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB3_21
# BB#20:                                # %if.then.88
	movabsq	$.L.str.7, %rsi
	movq	-80(%rbp), %rdi
	movq	-48(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, %edx
	callq	FcPatternAddInteger
	movl	%eax, -324(%rbp)        # 4-byte Spill
.LBB3_21:                               # %if.end.92
	movl	$9, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rdi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-336(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB3_23
# BB#22:                                # %if.then.97
	movabsq	$.L.str.8, %rsi
	movq	-48(%rbp), %rax
	sarq	$2, %rax
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, -168(%rbp)
	movq	-80(%rbp), %rdi
	movsd	-168(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	FcPatternAddDouble
	movl	%eax, -340(%rbp)        # 4-byte Spill
.LBB3_23:                               # %if.end.101
	movl	$11, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rdi
	callq	AREF
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB3_26
# BB#24:                                # %land.lhs.true
	movq	-48(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jne	.LBB3_26
# BB#25:                                # %if.then.111
	movabsq	$.L.str.9, %rsi
	movl	$1, %edx
	movq	-80(%rbp), %rdi
	callq	FcPatternAddBool
	movl	%eax, -344(%rbp)        # 4-byte Spill
.LBB3_26:                               # %if.end.113
	movq	-80(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -352(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	ftfont_get_fc_charset
	movabsq	$.L.str.10, %rsi
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	FcPatternAddCharSet
	movq	-80(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	%eax, -356(%rbp)        # 4-byte Spill
	callq	xftfont_add_rendering_parameters
	movq	-80(%rbp), %rdi
	movq	-56(%rbp), %rdx
	movq	%rdi, -368(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	callq	SDATA
	movabsq	$.L.str.11, %rsi
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	FcPatternAddString
	movabsq	$.L.str.12, %rsi
	movq	-80(%rbp), %rdi
	movq	-64(%rbp), %rdx
	sarq	$2, %rdx
	movl	%edx, %ecx
	movl	%ecx, %edx
	movl	%eax, -372(%rbp)        # 4-byte Spill
	callq	FcPatternAddInteger
	movl	%eax, -376(%rbp)        # 4-byte Spill
	callq	block_input
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	424(%rsi), %rsi
	movq	48(%rsi), %rsi
	movq	%rdi, -384(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	callq	XScreenNumberOfScreen
	movq	-80(%rbp), %rdx
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	XftDefaultSubstitute
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	384(%rdx), %rdx
	movq	424(%rdx), %rdx
	movq	48(%rdx), %rdx
	movq	%rdi, -392(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	callq	XScreenNumberOfScreen
	leaq	-32(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	XftFontMatch
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	xftfont_fix_match
	movq	-80(%rbp), %rdi
	callq	FcPatternDestroy
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	XftFontOpenPattern
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.LBB3_28
# BB#27:                                # %if.then.132
	callq	unblock_input
	movq	-88(%rbp), %rdi
	callq	FcPatternDestroy
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB3_69
.LBB3_28:                               # %if.end.134
	movq	-120(%rbp), %rdi
	callq	XftLockFace
	movq	%rax, -152(%rbp)
	callq	unblock_input
	movl	$1063, %edi             # imm = 0x427
	callq	builtin_lisp_symbol
	movl	$35, %edi
	movq	-24(%rbp), %rdx
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	%rax, %rsi
	callq	font_build_object
	movl	$16, %edi
	movl	%edi, %esi
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	movq	-56(%rbp), %rdx
	callq	ASET
	movq	-72(%rbp), %rdi
	callq	XFONT_OBJECT
	movabsq	$.L.str.13, %rsi
	xorl	%edx, %edx
	leaq	-160(%rbp), %rcx
	movabsq	$xftfont_driver, %rdi
	movq	%rax, -104(%rbp)
	cvttsd2si	-112(%rbp), %r8d
	movq	-104(%rbp), %rax
	movl	%r8d, 152(%rax)
	movq	-104(%rbp), %rax
	movq	%rdi, 208(%rax)
	movq	-104(%rbp), %rax
	movl	$-1, 204(%rax)
	movq	-104(%rbp), %rax
	movl	$-1, 200(%rax)
	movq	-104(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-40(%rbp), %rax
	movq	-96(%rbp), %rdi
	movq	%rax, 264(%rdi)
	movq	-120(%rbp), %rax
	movq	-96(%rbp), %rdi
	movq	%rax, 272(%rdi)
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movl	256(%rax), %r8d
	movq	-96(%rbp), %rax
	movl	%r8d, 280(%rax)
	movq	-96(%rbp), %rax
	movq	$0, 232(%rax)
	movq	-120(%rbp), %rax
	movq	24(%rax), %rdi
	callq	FcPatternGetMatrix
	cmpl	$0, %eax
	jne	.LBB3_30
# BB#29:                                # %if.then.150
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movq	-160(%rbp), %rax
	movaps	%xmm0, %xmm1
	mulsd	(%rax), %xmm1
	cvttsd2si	%xmm1, %rax
	movq	-96(%rbp), %rcx
	movq	%rax, 232(%rcx)
	movq	-160(%rbp), %rax
	movaps	%xmm0, %xmm1
	mulsd	24(%rax), %xmm1
	cvttsd2si	%xmm1, %rax
	movq	-96(%rbp), %rcx
	movq	%rax, 256(%rcx)
	movq	-160(%rbp), %rax
	movaps	%xmm0, %xmm1
	mulsd	8(%rax), %xmm1
	cvttsd2si	%xmm1, %rax
	movq	-96(%rbp), %rcx
	movq	%rax, 240(%rcx)
	movq	-160(%rbp), %rax
	mulsd	16(%rax), %xmm0
	cvttsd2si	%xmm0, %rax
	movq	-96(%rbp), %rcx
	movq	%rax, 248(%rcx)
.LBB3_30:                               # %if.end.167
	movl	$10, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rdi
	callq	AREF
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB3_32
# BB#31:                                # %if.then.174
	movl	$10, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rdi
	callq	AREF
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -124(%rbp)
	jmp	.LBB3_33
.LBB3_32:                               # %if.else
	movl	$0, -124(%rbp)
.LBB3_33:                               # %if.end.178
	cmpb	$0, ascii_printable
	jne	.LBB3_39
# BB#34:                                # %if.then.180
	movl	$0, -172(%rbp)
.LBB3_35:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$95, -172(%rbp)
	jge	.LBB3_38
# BB#36:                                # %for.body
                                        #   in Loop: Header=BB3_35 Depth=1
	movl	-172(%rbp), %eax
	addl	$32, %eax
	movb	%al, %cl
	movslq	-172(%rbp), %rdx
	movb	%cl, ascii_printable(,%rdx)
# BB#37:                                # %for.inc
                                        #   in Loop: Header=BB3_35 Depth=1
	movl	-172(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -172(%rbp)
	jmp	.LBB3_35
.LBB3_38:                               # %for.end
	jmp	.LBB3_39
.LBB3_39:                               # %if.end.184
	callq	block_input
	cmpl	$0, -124(%rbp)
	je	.LBB3_42
# BB#40:                                # %land.lhs.true.187
	cmpl	$90, -124(%rbp)
	je	.LBB3_42
# BB#41:                                # %if.then.190
	movabsq	$ascii_printable, %rax
	addq	$1, %rax
	movl	$94, %ecx
	leaq	-144(%rbp), %r8
	movq	-120(%rbp), %rdx
	movl	12(%rdx), %esi
	movq	-104(%rbp), %rdx
	movl	%esi, 160(%rdx)
	movq	-104(%rbp), %rdx
	movl	%esi, 164(%rdx)
	movq	-104(%rbp), %rdx
	movl	%esi, 148(%rdx)
	movq	-104(%rbp), %rdx
	movl	%esi, 144(%rdx)
	movq	-40(%rbp), %rdi
	movq	-120(%rbp), %rsi
	movq	%rax, %rdx
	callq	XftTextExtents8
	jmp	.LBB3_45
.LBB3_42:                               # %if.else.191
	movabsq	$ascii_printable, %rdx
	movl	$1, %ecx
	leaq	-144(%rbp), %r8
	movq	-40(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	XftTextExtents8
	movswl	-136(%rbp), %ecx
	movq	-104(%rbp), %rdx
	movl	%ecx, 160(%rdx)
	movq	-104(%rbp), %rdx
	movl	%ecx, 148(%rdx)
	movq	-104(%rbp), %rdx
	movl	%ecx, 144(%rdx)
	movq	-104(%rbp), %rdx
	cmpl	$0, 160(%rdx)
	jg	.LBB3_44
# BB#43:                                # %if.then.199
	movl	-28(%rbp), %eax
	movq	-104(%rbp), %rcx
	movl	%eax, 160(%rcx)
.LBB3_44:                               # %if.end.201
	movabsq	$ascii_printable, %rax
	addq	$1, %rax
	movl	$94, %ecx
	leaq	-144(%rbp), %r8
	movq	-40(%rbp), %rdi
	movq	-120(%rbp), %rsi
	movq	%rax, %rdx
	callq	XftTextExtents8
	movl	$95, %ecx
	movq	-104(%rbp), %rax
	movl	160(%rax), %r9d
	movswl	-136(%rbp), %r10d
	addl	%r10d, %r9d
	movl	%r9d, %eax
	cltd
	idivl	%ecx
	movq	-104(%rbp), %rsi
	movl	%eax, 164(%rsi)
.LBB3_45:                               # %if.end.207
	callq	unblock_input
	movq	-120(%rbp), %rax
	movl	(%rax), %ecx
	movq	-104(%rbp), %rax
	movl	%ecx, 168(%rax)
	movq	-120(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-104(%rbp), %rax
	movl	%ecx, 172(%rax)
	cmpl	$5, -28(%rbp)
	jl	.LBB3_52
# BB#46:                                # %land.lhs.true.212
	testb	$1, globals+3450
	je	.LBB3_52
# BB#47:                                # %if.then.215
	movq	-104(%rbp), %rax
	movl	168(%rax), %ecx
	movswl	-138(%rbp), %edx
	cmpl	%edx, %ecx
	jge	.LBB3_49
# BB#48:                                # %if.then.220
	movswl	-138(%rbp), %eax
	movq	-104(%rbp), %rcx
	movl	%eax, 168(%rcx)
.LBB3_49:                               # %if.end.224
	movq	-104(%rbp), %rax
	movl	172(%rax), %ecx
	movzwl	-142(%rbp), %edx
	movswl	-138(%rbp), %esi
	subl	%esi, %edx
	cmpl	%edx, %ecx
	jge	.LBB3_51
# BB#50:                                # %if.then.232
	movzwl	-142(%rbp), %eax
	movswl	-138(%rbp), %ecx
	subl	%ecx, %eax
	movq	-104(%rbp), %rdx
	movl	%eax, 172(%rdx)
.LBB3_51:                               # %if.end.239
	jmp	.LBB3_52
.LBB3_52:                               # %if.end.240
	movl	$8, %eax
	movl	%eax, %esi
	movq	-104(%rbp), %rcx
	movl	168(%rcx), %eax
	movq	-104(%rbp), %rcx
	addl	172(%rcx), %eax
	movq	-104(%rbp), %rcx
	movl	%eax, 156(%rcx)
	movq	-24(%rbp), %rdi
	callq	AREF
	sarq	$2, %rax
	cmpq	$0, %rax
	jne	.LBB3_56
# BB#53:                                # %if.then.249
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
	movzwl	136(%rcx), %edx
	movl	%edx, -176(%rbp)
	movq	-152(%rbp), %rcx
	movswl	148(%rcx), %edx
	subl	%edx, %eax
	cvtsi2sdl	%eax, %xmm0
	mulsd	-112(%rbp), %xmm0
	cvtsi2sdl	-176(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movq	-104(%rbp), %rcx
	movl	%eax, 180(%rcx)
	movq	-152(%rbp), %rcx
	movswl	150(%rcx), %eax
	cvtsi2sdl	%eax, %xmm0
	mulsd	-112(%rbp), %xmm0
	cvtsi2sdl	-176(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movq	-104(%rbp), %rcx
	movl	%eax, 176(%rcx)
	movq	-104(%rbp), %rcx
	cmpl	$2, 176(%rcx)
	jle	.LBB3_55
# BB#54:                                # %if.then.269
	movl	$2, %eax
	movq	-104(%rbp), %rcx
	movl	176(%rcx), %edx
	movl	%eax, -396(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-396(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movq	-104(%rbp), %rcx
	movl	180(%rcx), %edi
	subl	%eax, %edi
	movl	%edi, 180(%rcx)
.LBB3_55:                               # %if.end.274
	jmp	.LBB3_57
.LBB3_56:                               # %if.else.275
	movq	-104(%rbp), %rax
	movl	$-1, 180(%rax)
	movq	-104(%rbp), %rax
	movl	$0, 176(%rax)
.LBB3_57:                               # %if.end.278
	movq	-152(%rbp), %rax
	movq	160(%rax), %rax
	movq	-96(%rbp), %rcx
	movq	%rax, 216(%rcx)
	movq	-104(%rbp), %rax
	movl	$0, 188(%rax)
	movq	-104(%rbp), %rax
	movl	$0, 192(%rax)
	movq	-104(%rbp), %rax
	movl	$0, 196(%rax)
	movq	-104(%rbp), %rax
	movb	$0, 184(%rax)
	movq	-152(%rbp), %rax
	movq	16(%rax), %rax
	andq	$8, %rax
	cmpq	$0, %rax
	jne	.LBB3_68
# BB#58:                                # %if.then.282
	movabsq	$.L.str.14, %rsi
	leaq	-192(%rbp), %rdx
	movq	-152(%rbp), %rdi
	callq	FT_Get_BDF_Property
	cmpl	$0, %eax
	jne	.LBB3_61
# BB#59:                                # %land.lhs.true.286
	cmpl	$2, -192(%rbp)
	jne	.LBB3_61
# BB#60:                                # %if.then.289
	movl	-184(%rbp), %eax
	movq	-104(%rbp), %rcx
	movl	%eax, 188(%rcx)
.LBB3_61:                               # %if.end.292
	movabsq	$.L.str.15, %rsi
	leaq	-192(%rbp), %rdx
	movq	-152(%rbp), %rdi
	callq	FT_Get_BDF_Property
	cmpl	$0, %eax
	jne	.LBB3_64
# BB#62:                                # %land.lhs.true.296
	cmpl	$2, -192(%rbp)
	jne	.LBB3_64
# BB#63:                                # %if.then.300
	movl	-184(%rbp), %eax
	movq	-104(%rbp), %rcx
	movl	%eax, 192(%rcx)
.LBB3_64:                               # %if.end.304
	movabsq	$.L.str.16, %rsi
	leaq	-192(%rbp), %rdx
	movq	-152(%rbp), %rdi
	callq	FT_Get_BDF_Property
	cmpl	$0, %eax
	jne	.LBB3_67
# BB#65:                                # %land.lhs.true.308
	cmpl	$2, -192(%rbp)
	jne	.LBB3_67
# BB#66:                                # %if.then.312
	movl	-184(%rbp), %eax
	movq	-104(%rbp), %rcx
	movl	%eax, 196(%rcx)
.LBB3_67:                               # %if.end.316
	jmp	.LBB3_68
.LBB3_68:                               # %if.end.317
	movq	-72(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB3_69:                               # %return
	movq	-8(%rbp), %rax
	addq	$400, %rsp              # imm = 0x190
	popq	%rbp
	retq
.Lfunc_end3:
	.size	xftfont_open, .Lfunc_end3-xftfont_open
	.cfi_endproc

	.align	16, 0x90
	.type	xftfont_close,@function
xftfont_close:                          # @xftfont_close
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	cmpq	$0, 272(%rdi)
	je	.LBB4_4
# BB#1:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	264(%rax), %rdi
	callq	x_display_info_for_display
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	je	.LBB4_4
# BB#2:                                 # %land.lhs.true.2
	movq	-24(%rbp), %rax
	movl	280(%rax), %ecx
	movq	-16(%rbp), %rax
	cmpl	256(%rax), %ecx
	jne	.LBB4_4
# BB#3:                                 # %if.then
	callq	block_input
	movq	-24(%rbp), %rax
	movq	272(%rax), %rdi
	callq	XftUnlockFace
	movq	-24(%rbp), %rax
	movq	264(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	272(%rax), %rsi
	callq	XftFontClose
	callq	unblock_input
	movq	-24(%rbp), %rax
	movq	$0, 272(%rax)
.LBB4_4:                                # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	xftfont_close, .Lfunc_end4-xftfont_close
	.cfi_endproc

	.align	16, 0x90
	.type	xftfont_prepare_face,@function
xftfont_prepare_face:                   # @xftfont_prepare_face
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
	subq	$32, %rsp
	movl	$32, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rcx, %rdi
	callq	xmalloc
	xorl	%edx, %edx
	movl	%edx, %ecx
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	160(%rax), %rdx
	movq	-24(%rbp), %r8
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %r9
	callq	xftfont_get_colors
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 272(%rcx)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	xftfont_prepare_face, .Lfunc_end5-xftfont_prepare_face
	.cfi_endproc

	.align	16, 0x90
	.type	xftfont_done_face,@function
xftfont_done_face:                      # @xftfont_done_face
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	272(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
	movq	-16(%rbp), %rax
	movq	$0, 272(%rax)
.LBB6_2:                                # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	xftfont_done_face, .Lfunc_end6-xftfont_done_face
	.cfi_endproc

	.align	16, 0x90
	.type	xftfont_has_char,@function
xftfont_has_char:                       # @xftfont_has_char
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
	subq	$112, %rsp
	movl	$3, %eax
	movl	%eax, %ecx
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	$0, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rcx, %rsi
	callq	AREF
	movl	$583, %edi              # imm = 0x247
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB7_3
# BB#1:                                 # %land.lhs.true
	cmpl	$0, charset_jisx0208
	jl	.LBB7_3
# BB#2:                                 # %if.then
	movq	charset_table, %rax
	movslq	charset_jisx0208, %rcx
	imulq	$328, %rcx, %rcx        # imm = 0x148
	addq	%rcx, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB7_7
.LBB7_3:                                # %if.else
	movl	$3, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	AREF
	movl	$597, %edi              # imm = 0x255
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB7_6
# BB#4:                                 # %land.lhs.true.6
	cmpl	$0, charset_ksc5601
	jl	.LBB7_6
# BB#5:                                 # %if.then.8
	movq	charset_table, %rax
	movslq	charset_ksc5601, %rcx
	imulq	$328, %rcx, %rcx        # imm = 0x148
	addq	%rcx, %rax
	movq	%rax, -40(%rbp)
.LBB7_6:                                # %if.end
	jmp	.LBB7_7
.LBB7_7:                                # %if.end.11
	cmpq	$0, -40(%rbp)
	je	.LBB7_40
# BB#8:                                 # %if.then.12
	movb	$1, %al
	testb	$1, %al
	jne	.LBB7_9
	jmp	.LBB7_10
.LBB7_9:                                # %cond.true
	movl	-20(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB7_11
	jmp	.LBB7_13
.LBB7_10:                               # %cond.false
	movslq	-20(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB7_13
.LBB7_11:                               # %land.lhs.true.17
	movq	-40(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$2, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB7_13
# BB#12:                                # %cond.true.19
	movl	-20(%rbp), %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB7_39
.LBB7_13:                               # %cond.false.20
	movq	-40(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$5, %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB7_16
# BB#14:                                # %lor.lhs.false
	movq	-40(%rbp), %rax
	cmpl	$2, 104(%rax)
	je	.LBB7_16
# BB#15:                                # %lor.lhs.false.28
	movq	-40(%rbp), %rax
	cmpl	$3, 104(%rax)
	jne	.LBB7_17
.LBB7_16:                               # %cond.true.32
	movq	-40(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	encode_char
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jmp	.LBB7_38
.LBB7_17:                               # %cond.false.34
	movl	-20(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	120(%rcx), %eax
	jl	.LBB7_19
# BB#18:                                # %lor.lhs.false.37
	movl	-20(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	124(%rcx), %eax
	jle	.LBB7_20
.LBB7_19:                               # %cond.true.40
	movq	-40(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	jmp	.LBB7_37
.LBB7_20:                               # %cond.false.41
	movq	-40(%rbp), %rax
	cmpl	$0, 104(%rax)
	jne	.LBB7_25
# BB#21:                                # %cond.true.45
	movq	-40(%rbp), %rax
	movb	88(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB7_23
# BB#22:                                # %cond.true.50
	movl	-20(%rbp), %eax
	movq	-40(%rbp), %rcx
	subl	324(%rcx), %eax
	movq	-40(%rbp), %rcx
	addl	108(%rcx), %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jmp	.LBB7_24
.LBB7_23:                               # %cond.false.52
	movq	-40(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	encode_char
	movl	%eax, -72(%rbp)         # 4-byte Spill
.LBB7_24:                               # %cond.end
	movl	-72(%rbp), %eax         # 4-byte Reload
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB7_36
.LBB7_25:                               # %cond.false.54
	movq	-40(%rbp), %rax
	cmpl	$1, 104(%rax)
	jne	.LBB7_34
# BB#26:                                # %cond.true.58
	movq	-40(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$4, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB7_32
# BB#27:                                # %land.lhs.true.64
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-40(%rbp), %rdi
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
	jne	.LBB7_28
	jmp	.LBB7_32
.LBB7_28:                               # %cond.true.70
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-40(%rbp), %rdi
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
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB7_30
# BB#29:                                # %cond.true.79
	movq	-40(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	jmp	.LBB7_31
.LBB7_30:                               # %cond.false.81
	movq	charset_work, %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
.LBB7_31:                               # %cond.end.83
	movl	-92(%rbp), %eax         # 4-byte Reload
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jmp	.LBB7_33
.LBB7_32:                               # %cond.false.85
	movq	-40(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	encode_char
	movl	%eax, -96(%rbp)         # 4-byte Spill
.LBB7_33:                               # %cond.end.87
	movl	-96(%rbp), %eax         # 4-byte Reload
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB7_35
.LBB7_34:                               # %cond.false.89
	movq	-40(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	encode_char
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB7_35:                               # %cond.end.91
	movl	-100(%rbp), %eax        # 4-byte Reload
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB7_36:                               # %cond.end.93
	movl	-76(%rbp), %eax         # 4-byte Reload
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB7_37:                               # %cond.end.95
	movl	-68(%rbp), %eax         # 4-byte Reload
	movl	%eax, -64(%rbp)         # 4-byte Spill
.LBB7_38:                               # %cond.end.97
	movl	-64(%rbp), %eax         # 4-byte Reload
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB7_39:                               # %cond.end.99
	movl	-60(%rbp), %eax         # 4-byte Reload
	movq	-40(%rbp), %rcx
	cmpl	128(%rcx), %eax
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB7_43
.LBB7_40:                               # %if.end.104
	movq	-16(%rbp), %rdi
	callq	FONT_ENTITY_P
	testb	$1, %al
	jne	.LBB7_41
	jmp	.LBB7_42
.LBB7_41:                               # %if.then.106
	movq	ftfont_driver+88, %rax
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	*%rax
	movl	%eax, -4(%rbp)
	jmp	.LBB7_43
.LBB7_42:                               # %if.end.108
	movq	-16(%rbp), %rdi
	callq	XFONT_OBJECT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	264(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	272(%rax), %rsi
	movl	-20(%rbp), %edx
	callq	XftCharExists
	cmpl	$1, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -4(%rbp)
.LBB7_43:                               # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	xftfont_has_char, .Lfunc_end7-xftfont_has_char
	.cfi_endproc

	.align	16, 0x90
	.type	xftfont_encode_char,@function
xftfont_encode_char:                    # @xftfont_encode_char
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	264(%rdi), %rdi
	movq	-24(%rbp), %rax
	movq	272(%rax), %rsi
	movl	-12(%rbp), %edx
	callq	XftCharIndex
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.LBB8_2
# BB#1:                                 # %cond.true
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)         # 4-byte Spill
	jmp	.LBB8_3
.LBB8_2:                                # %cond.false
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -32(%rbp)         # 4-byte Spill
	jmp	.LBB8_3
.LBB8_3:                                # %cond.end
	movl	-32(%rbp), %eax         # 4-byte Reload
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	xftfont_encode_char, .Lfunc_end8-xftfont_encode_char
	.cfi_endproc

	.align	16, 0x90
	.type	xftfont_text_extents,@function
xftfont_text_extents:                   # @xftfont_text_extents
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	callq	block_input
	leaq	-56(%rbp), %r8
	movq	-40(%rbp), %rcx
	movq	264(%rcx), %rdi
	movq	-40(%rbp), %rcx
	movq	272(%rcx), %rsi
	movq	-16(%rbp), %rdx
	movl	-20(%rbp), %ecx
	callq	XftGlyphExtents
	callq	unblock_input
	xorl	%ecx, %ecx
	movswl	-52(%rbp), %eax
	movl	%ecx, %r9d
	subl	%eax, %r9d
	movw	%r9w, %r10w
	movq	-32(%rbp), %rdx
	movw	%r10w, (%rdx)
	movswl	-52(%rbp), %eax
	subl	%eax, %ecx
	movzwl	-56(%rbp), %eax
	addl	%eax, %ecx
	movw	%cx, %r10w
	movq	-32(%rbp), %rdx
	movw	%r10w, 2(%rdx)
	movw	-48(%rbp), %r10w
	movq	-32(%rbp), %rdx
	movw	%r10w, 4(%rdx)
	movw	-50(%rbp), %r10w
	movq	-32(%rbp), %rdx
	movw	%r10w, 6(%rdx)
	movzwl	-54(%rbp), %eax
	movswl	-50(%rbp), %ecx
	subl	%ecx, %eax
	movw	%ax, %r10w
	movq	-32(%rbp), %rdx
	movw	%r10w, 8(%rdx)
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	xftfont_text_extents, .Lfunc_end9-xftfont_text_extents
	.cfi_endproc

	.align	16, 0x90
	.type	xftfont_draw,@function
xftfont_draw:                           # @xftfont_draw
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
	subq	$192, %rsp
	movb	%r9b, %al
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	andb	$1, %al
	movb	%al, -25(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rdi, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	96(%rdi), %rdi
	movq	%rdi, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	104(%rdi), %rdi
	movq	%rdi, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	-40(%rbp), %rdi
	callq	xftfont_get_xft_draw
	movq	%rax, -72(%rbp)
	movl	-16(%rbp), %ecx
	subl	-12(%rbp), %ecx
	movl	%ecx, -116(%rbp)
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	movq	-48(%rbp), %rdi
	cmpq	224(%rdi), %rax
	jne	.LBB10_2
# BB#1:                                 # %if.then
	movq	-48(%rbp), %rax
	movq	272(%rax), %rax
	movq	%rax, -64(%rbp)
.LBB10_2:                               # %if.end
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	144(%rax), %rdx
	movq	-64(%rbp), %rcx
	testb	$1, -25(%rbp)
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	je	.LBB10_4
# BB#3:                                 # %cond.true
	leaq	-112(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB10_5
.LBB10_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	jmp	.LBB10_5
.LBB10_5:                               # %cond.end
	movq	-168(%rbp), %rax        # 8-byte Reload
	leaq	-96(%rbp), %r8
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	-144(%rbp), %rsi        # 8-byte Reload
	movq	-152(%rbp), %rdx        # 8-byte Reload
	movq	-160(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r9
	callq	xftfont_get_colors
	callq	block_input
	movq	-8(%rbp), %rax
	cmpl	$0, 216(%rax)
	jle	.LBB10_7
# BB#6:                                 # %if.then.6
	xorl	%eax, %eax
	movq	-72(%rbp), %rdi
	movq	-8(%rbp), %rcx
	addq	$200, %rcx
	movq	-8(%rbp), %rdx
	movl	216(%rdx), %r8d
	movl	%eax, %esi
	movl	%eax, %edx
	callq	XftDrawSetClipRectangles
	movl	%eax, -172(%rbp)        # 4-byte Spill
	jmp	.LBB10_8
.LBB10_7:                               # %if.else
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-72(%rbp), %rdi
	callq	XftDrawSetClip
	movl	%eax, -176(%rbp)        # 4-byte Spill
.LBB10_8:                               # %if.end.10
	testb	$1, -25(%rbp)
	je	.LBB10_14
# BB#9:                                 # %if.then.12
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	movl	156(%rax), %ecx
	movl	%ecx, -124(%rbp)
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	movl	168(%rax), %ecx
	movl	%ecx, -128(%rbp)
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	movl	24(%rax), %ecx
	andl	$7, %ecx
	cmpl	$2, %ecx
	jne	.LBB10_13
# BB#10:                                # %land.lhs.true
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	movl	40(%rax), %ecx
	andl	$3, %ecx
	cmpl	$3, %ecx
	je	.LBB10_12
# BB#11:                                # %lor.lhs.false
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	movl	40(%rax), %ecx
	andl	$3, %ecx
	cmpl	$2, %ecx
	jne	.LBB10_13
.LBB10_12:                              # %if.then.28
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	movswl	38(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	movswl	34(%rax), %edx
	subl	%edx, %ecx
	movl	%ecx, -128(%rbp)
	movl	%ecx, -124(%rbp)
.LBB10_13:                              # %if.end.36
	leaq	-112(%rbp), %rsi
	movq	-72(%rbp), %rdi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %eax
	subl	-128(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	12(%rcx), %r8d
	movl	-124(%rbp), %r9d
	movl	%eax, %ecx
	callq	XftDrawRect
.LBB10_14:                              # %if.end.38
	movslq	-116(%rbp), %rax
	leaq	15(,%rax,4), %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -80(%rbp)
	movl	$0, -120(%rbp)
.LBB10_15:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-120(%rbp), %eax
	cmpl	-116(%rbp), %eax
	jge	.LBB10_18
# BB#16:                                # %for.body
                                        #   in Loop: Header=BB10_15 Depth=1
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	movslq	-12(%rbp), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	movslq	-120(%rbp), %rcx
	movzbl	(%rax,%rcx,2), %edx
	shll	$8, %edx
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	movslq	-12(%rbp), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	movslq	-120(%rbp), %rcx
	movzbl	1(%rax,%rcx,2), %esi
	orl	%esi, %edx
	movslq	-120(%rbp), %rax
	movq	-80(%rbp), %rcx
	movl	%edx, (%rcx,%rax,4)
# BB#17:                                # %for.inc
                                        #   in Loop: Header=BB10_15 Depth=1
	movl	-120(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -120(%rbp)
	jmp	.LBB10_15
.LBB10_18:                              # %for.end
	movq	-8(%rbp), %rax
	movb	136(%rax), %cl
	shrb	$7, %cl
	testb	$1, %cl
	je	.LBB10_24
# BB#19:                                # %if.then.52
	movl	$0, -120(%rbp)
.LBB10_20:                              # %for.cond.53
                                        # =>This Inner Loop Header: Depth=1
	movl	-120(%rbp), %eax
	cmpl	-116(%rbp), %eax
	jge	.LBB10_23
# BB#21:                                # %for.body.56
                                        #   in Loop: Header=BB10_20 Depth=1
	leaq	-96(%rbp), %rsi
	movl	$1, %eax
	movq	-72(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movq	272(%rcx), %rdx
	movl	-20(%rbp), %r8d
	addl	-120(%rbp), %r8d
	movl	-24(%rbp), %r9d
	movq	-80(%rbp), %rcx
	movslq	-120(%rbp), %r10
	shlq	$2, %r10
	addq	%r10, %rcx
	subq	$16, %rsp
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movq	-184(%rbp), %r9         # 8-byte Reload
	movl	$1, (%rsp)
	movl	%eax, -188(%rbp)        # 4-byte Spill
	callq	XftDrawGlyphs
	addq	$16, %rsp
# BB#22:                                # %for.inc.59
                                        #   in Loop: Header=BB10_20 Depth=1
	movl	-120(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -120(%rbp)
	jmp	.LBB10_20
.LBB10_23:                              # %for.end.61
	jmp	.LBB10_25
.LBB10_24:                              # %if.else.62
	leaq	-96(%rbp), %rsi
	movq	-72(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	272(%rax), %rdx
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r8d
	movq	-80(%rbp), %r9
	movl	-116(%rbp), %r10d
	subq	$16, %rsp
	movl	%r10d, (%rsp)
	callq	XftDrawGlyphs
	addq	$16, %rsp
.LBB10_25:                              # %if.end.64
	callq	unblock_input
	movl	-116(%rbp), %eax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	xftfont_draw, .Lfunc_end10-xftfont_draw
	.cfi_endproc

	.align	16, 0x90
	.type	xftfont_end_for_frame,@function
xftfont_end_for_frame:                  # @xftfont_end_for_frame
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	424(%rdi), %rdi
	cmpq	$0, 16(%rdi)
	jne	.LBB11_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB11_5
.LBB11_2:                               # %if.end
	movl	$1063, %edi             # imm = 0x427
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	font_get_frame_data
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB11_4
# BB#3:                                 # %if.then.2
	callq	block_input
	movq	-24(%rbp), %rdi
	callq	XftDrawDestroy
	callq	unblock_input
	movl	$1063, %edi             # imm = 0x427
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %edx
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	font_put_frame_data
.LBB11_4:                               # %if.end.4
	movl	$0, -4(%rbp)
.LBB11_5:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	xftfont_end_for_frame, .Lfunc_end11-xftfont_end_for_frame
	.cfi_endproc

	.align	16, 0x90
	.type	xftfont_cached_font_ok,@function
xftfont_cached_font_ok:                 # @xftfont_cached_font_ok
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	XFONT_OBJECT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	272(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)
	callq	FcPatternCreate
	movq	%rax, -56(%rbp)
	movb	$0, -65(%rbp)
	movq	-56(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	xftfont_add_rendering_parameters
	movq	-48(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	48(%rax), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	XScreenNumberOfScreen
	movq	-56(%rbp), %rdx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	callq	XftDefaultSubstitute
	movabsq	$.L.str.17, %rsi
	xorl	%edx, %edx
	leaq	-60(%rbp), %rcx
	movq	-56(%rbp), %rdi
	callq	FcPatternGetBool
	movabsq	$.L.str.17, %rsi
	xorl	%edx, %edx
	leaq	-64(%rbp), %rcx
	movl	%eax, -80(%rbp)
	movq	-40(%rbp), %rdi
	callq	FcPatternGetBool
	movl	%eax, -84(%rbp)
	movl	-80(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jne	.LBB12_2
# BB#1:                                 # %lor.lhs.false
	movl	-60(%rbp), %eax
	cmpl	-64(%rbp), %eax
	je	.LBB12_3
.LBB12_2:                               # %if.then
	jmp	.LBB12_22
.LBB12_3:                               # %if.end
	movabsq	$.L.str.18, %rsi
	xorl	%edx, %edx
	leaq	-60(%rbp), %rcx
	movq	-56(%rbp), %rdi
	callq	FcPatternGetBool
	movabsq	$.L.str.18, %rsi
	xorl	%edx, %edx
	leaq	-64(%rbp), %rcx
	movl	%eax, -80(%rbp)
	movq	-40(%rbp), %rdi
	callq	FcPatternGetBool
	movl	%eax, -84(%rbp)
	movl	-80(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jne	.LBB12_5
# BB#4:                                 # %lor.lhs.false.13
	movl	-60(%rbp), %eax
	cmpl	-64(%rbp), %eax
	je	.LBB12_6
.LBB12_5:                               # %if.then.15
	jmp	.LBB12_22
.LBB12_6:                               # %if.end.16
	movabsq	$.L.str.19, %rsi
	xorl	%edx, %edx
	leaq	-60(%rbp), %rcx
	movq	-56(%rbp), %rdi
	callq	FcPatternGetBool
	movabsq	$.L.str.19, %rsi
	xorl	%edx, %edx
	leaq	-64(%rbp), %rcx
	movl	%eax, -80(%rbp)
	movq	-40(%rbp), %rdi
	callq	FcPatternGetBool
	movl	%eax, -84(%rbp)
	movl	-80(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jne	.LBB12_8
# BB#7:                                 # %lor.lhs.false.20
	movl	-60(%rbp), %eax
	cmpl	-64(%rbp), %eax
	je	.LBB12_9
.LBB12_8:                               # %if.then.22
	jmp	.LBB12_22
.LBB12_9:                               # %if.end.23
	movabsq	$.L.str.23, %rsi
	xorl	%edx, %edx
	leaq	-60(%rbp), %rcx
	movq	-56(%rbp), %rdi
	callq	FcPatternGetBool
	movabsq	$.L.str.23, %rsi
	xorl	%edx, %edx
	leaq	-64(%rbp), %rcx
	movl	%eax, -80(%rbp)
	movq	-40(%rbp), %rdi
	callq	FcPatternGetBool
	movl	%eax, -84(%rbp)
	movl	-80(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jne	.LBB12_11
# BB#10:                                # %lor.lhs.false.27
	movl	-60(%rbp), %eax
	cmpl	-64(%rbp), %eax
	je	.LBB12_12
.LBB12_11:                              # %if.then.29
	jmp	.LBB12_22
.LBB12_12:                              # %if.end.30
	movabsq	$.L.str.20, %rsi
	xorl	%edx, %edx
	leaq	-72(%rbp), %rcx
	movq	-56(%rbp), %rdi
	callq	FcPatternGetInteger
	movabsq	$.L.str.20, %rsi
	xorl	%edx, %edx
	leaq	-76(%rbp), %rcx
	movl	%eax, -80(%rbp)
	movq	-40(%rbp), %rdi
	callq	FcPatternGetInteger
	movl	%eax, -84(%rbp)
	movl	-80(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jne	.LBB12_14
# BB#13:                                # %lor.lhs.false.34
	movl	-72(%rbp), %eax
	cmpl	-76(%rbp), %eax
	je	.LBB12_15
.LBB12_14:                              # %if.then.36
	jmp	.LBB12_22
.LBB12_15:                              # %if.end.37
	movabsq	$.L.str.22, %rsi
	xorl	%edx, %edx
	leaq	-72(%rbp), %rcx
	movq	-56(%rbp), %rdi
	callq	FcPatternGetInteger
	movabsq	$.L.str.22, %rsi
	xorl	%edx, %edx
	leaq	-76(%rbp), %rcx
	movl	%eax, -80(%rbp)
	movq	-40(%rbp), %rdi
	callq	FcPatternGetInteger
	movl	%eax, -84(%rbp)
	movl	-80(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jne	.LBB12_17
# BB#16:                                # %lor.lhs.false.41
	movl	-72(%rbp), %eax
	cmpl	-76(%rbp), %eax
	je	.LBB12_18
.LBB12_17:                              # %if.then.43
	jmp	.LBB12_22
.LBB12_18:                              # %if.end.44
	movabsq	$.L.str.21, %rsi
	xorl	%edx, %edx
	leaq	-72(%rbp), %rcx
	movq	-56(%rbp), %rdi
	callq	FcPatternGetInteger
	movabsq	$.L.str.21, %rsi
	xorl	%edx, %edx
	leaq	-76(%rbp), %rcx
	movl	%eax, -80(%rbp)
	movq	-40(%rbp), %rdi
	callq	FcPatternGetInteger
	movl	%eax, -84(%rbp)
	movl	-80(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jne	.LBB12_20
# BB#19:                                # %lor.lhs.false.48
	movl	-72(%rbp), %eax
	cmpl	-76(%rbp), %eax
	je	.LBB12_21
.LBB12_20:                              # %if.then.50
	jmp	.LBB12_22
.LBB12_21:                              # %if.end.51
	movb	$1, -65(%rbp)
.LBB12_22:                              # %out
	movq	-56(%rbp), %rdi
	callq	FcPatternDestroy
	movb	-65(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	xftfont_cached_font_ok, .Lfunc_end12-xftfont_cached_font_ok
	.cfi_endproc

	.align	16, 0x90
	.type	xftfont_add_rendering_parameters,@function
xftfont_add_rendering_parameters:       # @xftfont_add_rendering_parameters
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
	subq	$224, %rsp
	movl	$12, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rcx, %rsi
	callq	AREF
	movq	%rax, -24(%rbp)
.LBB13_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB13_42
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	$8, %edi
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB13_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB13_1 Depth=1
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.17, %rsi
	movl	$1, %edi
	xorl	%edx, %edx
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	cmovel	%edx, %edi
	movq	-72(%rbp), %rax         # 8-byte Reload
	movl	%edi, -76(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	-76(%rbp), %edx         # 4-byte Reload
	callq	FcPatternAddBool
	movl	%eax, -80(%rbp)         # 4-byte Spill
	jmp	.LBB13_40
.LBB13_4:                               # %if.else
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	$61, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB13_6
# BB#5:                                 # %if.then.17
                                        #   in Loop: Header=BB13_1 Depth=1
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.18, %rsi
	movl	$1, %edi
	xorl	%edx, %edx
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	cmovel	%edx, %edi
	movq	-104(%rbp), %rax        # 8-byte Reload
	movl	%edi, -108(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	movl	-108(%rbp), %edx        # 4-byte Reload
	callq	FcPatternAddBool
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB13_39
.LBB13_6:                               # %if.else.23
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	$11, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB13_8
# BB#7:                                 # %if.then.27
                                        #   in Loop: Header=BB13_1 Depth=1
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.19, %rsi
	movl	$1, %edi
	xorl	%edx, %edx
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	cmovel	%edx, %edi
	movq	-136(%rbp), %rax        # 8-byte Reload
	movl	%edi, -140(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	movl	-140(%rbp), %edx        # 4-byte Reload
	callq	FcPatternAddBool
	movl	%eax, -144(%rbp)        # 4-byte Spill
	jmp	.LBB13_38
.LBB13_8:                               # %if.else.33
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	$62, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB13_16
# BB#9:                                 # %if.then.37
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB13_11
# BB#10:                                # %if.then.43
                                        #   in Loop: Header=BB13_1 Depth=1
	movabsq	$.L.str.20, %rsi
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, %edx
	callq	FcPatternAddInteger
	movl	%eax, -156(%rbp)        # 4-byte Spill
	jmp	.LBB13_15
.LBB13_11:                              # %if.else.46
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB13_14
# BB#12:                                # %land.lhs.true
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-48(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SDATA
	leaq	-28(%rbp), %rsi
	movq	%rax, %rdi
	callq	FcNameConstant
	cmpl	$0, %eax
	je	.LBB13_14
# BB#13:                                # %if.then.54
                                        #   in Loop: Header=BB13_1 Depth=1
	movabsq	$.L.str.20, %rsi
	movq	-8(%rbp), %rdi
	movl	-28(%rbp), %edx
	callq	FcPatternAddInteger
	movl	%eax, -160(%rbp)        # 4-byte Spill
.LBB13_14:                              # %if.end
                                        #   in Loop: Header=BB13_1 Depth=1
	jmp	.LBB13_15
.LBB13_15:                              # %if.end.56
                                        #   in Loop: Header=BB13_1 Depth=1
	jmp	.LBB13_37
.LBB13_16:                              # %if.else.57
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	$110, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB13_24
# BB#17:                                # %if.then.61
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB13_19
# BB#18:                                # %if.then.67
                                        #   in Loop: Header=BB13_1 Depth=1
	movabsq	$.L.str.21, %rsi
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, %edx
	callq	FcPatternAddInteger
	movl	%eax, -172(%rbp)        # 4-byte Spill
	jmp	.LBB13_23
.LBB13_19:                              # %if.else.71
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB13_22
# BB#20:                                # %land.lhs.true.76
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-48(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SDATA
	leaq	-28(%rbp), %rsi
	movq	%rax, %rdi
	callq	FcNameConstant
	cmpl	$0, %eax
	je	.LBB13_22
# BB#21:                                # %if.then.81
                                        #   in Loop: Header=BB13_1 Depth=1
	movabsq	$.L.str.21, %rsi
	movq	-8(%rbp), %rdi
	movl	-28(%rbp), %edx
	callq	FcPatternAddInteger
	movl	%eax, -176(%rbp)        # 4-byte Spill
.LBB13_22:                              # %if.end.83
                                        #   in Loop: Header=BB13_1 Depth=1
	jmp	.LBB13_23
.LBB13_23:                              # %if.end.84
                                        #   in Loop: Header=BB13_1 Depth=1
	jmp	.LBB13_36
.LBB13_24:                              # %if.else.85
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	$74, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB13_32
# BB#25:                                # %if.then.89
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB13_27
# BB#26:                                # %if.then.95
                                        #   in Loop: Header=BB13_1 Depth=1
	movabsq	$.L.str.22, %rsi
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -28(%rbp)
	movl	%ecx, %edx
	callq	FcPatternAddInteger
	movl	%eax, -188(%rbp)        # 4-byte Spill
	jmp	.LBB13_31
.LBB13_27:                              # %if.else.99
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB13_30
# BB#28:                                # %land.lhs.true.104
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-48(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SDATA
	leaq	-28(%rbp), %rsi
	movq	%rax, %rdi
	callq	FcNameConstant
	cmpl	$0, %eax
	je	.LBB13_30
# BB#29:                                # %if.then.109
                                        #   in Loop: Header=BB13_1 Depth=1
	movabsq	$.L.str.22, %rsi
	movq	-8(%rbp), %rdi
	movl	-28(%rbp), %edx
	callq	FcPatternAddInteger
	movl	%eax, -192(%rbp)        # 4-byte Spill
.LBB13_30:                              # %if.end.111
                                        #   in Loop: Header=BB13_1 Depth=1
	jmp	.LBB13_31
.LBB13_31:                              # %if.end.112
                                        #   in Loop: Header=BB13_1 Depth=1
	jmp	.LBB13_35
.LBB13_32:                              # %if.else.113
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	$36, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-200(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB13_34
# BB#33:                                # %if.then.117
                                        #   in Loop: Header=BB13_1 Depth=1
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.23, %rsi
	movl	$1, %edi
	xorl	%edx, %edx
	movq	-208(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	cmovel	%edx, %edi
	movq	-216(%rbp), %rax        # 8-byte Reload
	movl	%edi, -220(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	movl	-220(%rbp), %edx        # 4-byte Reload
	callq	FcPatternAddBool
	movl	%eax, -224(%rbp)        # 4-byte Spill
.LBB13_34:                              # %if.end.123
                                        #   in Loop: Header=BB13_1 Depth=1
	jmp	.LBB13_35
.LBB13_35:                              # %if.end.124
                                        #   in Loop: Header=BB13_1 Depth=1
	jmp	.LBB13_36
.LBB13_36:                              # %if.end.125
                                        #   in Loop: Header=BB13_1 Depth=1
	jmp	.LBB13_37
.LBB13_37:                              # %if.end.126
                                        #   in Loop: Header=BB13_1 Depth=1
	jmp	.LBB13_38
.LBB13_38:                              # %if.end.127
                                        #   in Loop: Header=BB13_1 Depth=1
	jmp	.LBB13_39
.LBB13_39:                              # %if.end.128
                                        #   in Loop: Header=BB13_1 Depth=1
	jmp	.LBB13_40
.LBB13_40:                              # %if.end.129
                                        #   in Loop: Header=BB13_1 Depth=1
	jmp	.LBB13_41
.LBB13_41:                              # %for.inc
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB13_1
.LBB13_42:                              # %for.end
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	xftfont_add_rendering_parameters, .Lfunc_end13-xftfont_add_rendering_parameters
	.cfi_endproc

	.align	16, 0x90
	.type	xftfont_fix_match,@function
xftfont_fix_match:                      # @xftfont_fix_match
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
	subq	$96, %rsp
	movabsq	$.L.str.17, %rax
	xorl	%edx, %edx
	leaq	-20(%rbp), %rcx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$1, -20(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	FcPatternGetBool
	cmpl	$0, -20(%rbp)
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jne	.LBB14_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.17, %rsi
	movq	-16(%rbp), %rdi
	callq	FcPatternDel
	movabsq	$.L.str.17, %rsi
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	movl	%eax, -40(%rbp)         # 4-byte Spill
	callq	FcPatternAddBool
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB14_2:                               # %if.end
	movabsq	$.L.str.18, %rsi
	xorl	%edx, %edx
	leaq	-20(%rbp), %rcx
	movq	-8(%rbp), %rdi
	callq	FcPatternGetBool
	cmpl	$0, -20(%rbp)
	movl	%eax, -48(%rbp)         # 4-byte Spill
	jne	.LBB14_4
# BB#3:                                 # %if.then.5
	movabsq	$.L.str.18, %rsi
	movq	-16(%rbp), %rdi
	callq	FcPatternDel
	movabsq	$.L.str.18, %rsi
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	FcPatternAddBool
	movl	%eax, -56(%rbp)         # 4-byte Spill
.LBB14_4:                               # %if.end.8
	movabsq	$.L.str.20, %rsi
	xorl	%edx, %edx
	leaq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdi
	callq	FcPatternGetInteger
	xorl	%edx, %edx
	cmpl	%eax, %edx
	jne	.LBB14_6
# BB#5:                                 # %if.then.10
	movabsq	$.L.str.20, %rsi
	movq	-16(%rbp), %rdi
	callq	FcPatternDel
	movabsq	$.L.str.20, %rsi
	movq	-16(%rbp), %rdi
	movl	-24(%rbp), %edx
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	FcPatternAddInteger
	movl	%eax, -64(%rbp)         # 4-byte Spill
.LBB14_6:                               # %if.end.13
	movabsq	$.L.str.22, %rsi
	xorl	%edx, %edx
	leaq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdi
	callq	FcPatternGetInteger
	xorl	%edx, %edx
	cmpl	%eax, %edx
	jne	.LBB14_8
# BB#7:                                 # %if.then.16
	movabsq	$.L.str.22, %rsi
	movq	-16(%rbp), %rdi
	callq	FcPatternDel
	movabsq	$.L.str.22, %rsi
	movq	-16(%rbp), %rdi
	movl	-24(%rbp), %edx
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	FcPatternAddInteger
	movl	%eax, -72(%rbp)         # 4-byte Spill
.LBB14_8:                               # %if.end.19
	movabsq	$.L.str.21, %rsi
	xorl	%edx, %edx
	leaq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdi
	callq	FcPatternGetInteger
	xorl	%edx, %edx
	cmpl	%eax, %edx
	jne	.LBB14_10
# BB#9:                                 # %if.then.22
	movabsq	$.L.str.21, %rsi
	movq	-16(%rbp), %rdi
	callq	FcPatternDel
	movabsq	$.L.str.21, %rsi
	movq	-16(%rbp), %rdi
	movl	-24(%rbp), %edx
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	FcPatternAddInteger
	movl	%eax, -80(%rbp)         # 4-byte Spill
.LBB14_10:                              # %if.end.25
	movabsq	$.L.str.8, %rsi
	xorl	%edx, %edx
	leaq	-32(%rbp), %rcx
	movq	-8(%rbp), %rdi
	callq	FcPatternGetDouble
	xorl	%edx, %edx
	cmpl	%eax, %edx
	jne	.LBB14_12
# BB#11:                                # %if.then.28
	movabsq	$.L.str.8, %rsi
	movq	-16(%rbp), %rdi
	callq	FcPatternDel
	movabsq	$.L.str.8, %rsi
	movq	-16(%rbp), %rdi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	FcPatternAddDouble
	movl	%eax, -88(%rbp)         # 4-byte Spill
.LBB14_12:                              # %if.end.31
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	xftfont_fix_match, .Lfunc_end14-xftfont_fix_match
	.cfi_endproc

	.align	16, 0x90
	.type	xftfont_get_colors,@function
xftfont_get_colors:                     # @xftfont_get_colors
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB15_5
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	160(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB15_5
# BB#2:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, (%rax)
	movq	8(%rcx), %rcx
	movq	%rcx, 8(%rax)
	cmpq	$0, -48(%rbp)
	je	.LBB15_4
# BB#3:                                 # %if.then.3
	movq	-48(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	16(%rcx), %rdx
	movq	%rdx, (%rax)
	movq	24(%rcx), %rcx
	movq	%rcx, 8(%rax)
.LBB15_4:                               # %if.end
	jmp	.LBB15_27
.LBB15_5:                               # %if.else
	movb	$0, -177(%rbp)
	movb	$0, -178(%rbp)
	callq	block_input
	movl	$12, %eax
	movl	%eax, %edx
	leaq	-176(%rbp), %rcx
	movq	-8(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	424(%rsi), %rsi
	movq	16(%rsi), %rdi
	movq	-24(%rbp), %rsi
	callq	XGetGCValues
	cmpq	$0, -32(%rbp)
	movl	%eax, -228(%rbp)        # 4-byte Spill
	je	.LBB15_20
# BB#6:                                 # %if.then.5
	movq	-160(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	176(%rcx), %rax
	jne	.LBB15_8
# BB#7:                                 # %if.then.8
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, (%rax)
	movq	8(%rcx), %rcx
	movq	%rcx, 8(%rax)
	movb	$1, -177(%rbp)
	jmp	.LBB15_11
.LBB15_8:                               # %if.else.10
	movq	-160(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	184(%rcx), %rax
	jne	.LBB15_10
# BB#9:                                 # %if.then.13
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	16(%rcx), %rdx
	movq	%rdx, (%rax)
	movq	24(%rcx), %rcx
	movq	%rcx, 8(%rax)
	movb	$1, -177(%rbp)
.LBB15_10:                              # %if.end.15
	jmp	.LBB15_11
.LBB15_11:                              # %if.end.16
	cmpq	$0, -48(%rbp)
	jne	.LBB15_13
# BB#12:                                # %if.then.18
	movb	$1, -178(%rbp)
	jmp	.LBB15_19
.LBB15_13:                              # %if.else.19
	movq	-152(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	184(%rcx), %rax
	jne	.LBB15_15
# BB#14:                                # %if.then.23
	movq	-48(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	16(%rcx), %rdx
	movq	%rdx, (%rax)
	movq	24(%rcx), %rcx
	movq	%rcx, 8(%rax)
	movb	$1, -178(%rbp)
	jmp	.LBB15_18
.LBB15_15:                              # %if.else.25
	movq	-152(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	176(%rcx), %rax
	jne	.LBB15_17
# BB#16:                                # %if.then.29
	movq	-48(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, (%rax)
	movq	8(%rcx), %rcx
	movq	%rcx, 8(%rax)
	movb	$1, -178(%rbp)
.LBB15_17:                              # %if.end.31
	jmp	.LBB15_18
.LBB15_18:                              # %if.end.32
	jmp	.LBB15_19
.LBB15_19:                              # %if.end.33
	jmp	.LBB15_20
.LBB15_20:                              # %if.end.34
	movb	-177(%rbp), %al
	andb	$1, %al
	movzbl	%al, %ecx
	movb	-178(%rbp), %al
	andb	$1, %al
	movzbl	%al, %edx
	andl	%edx, %ecx
	cmpl	$0, %ecx
	jne	.LBB15_26
# BB#21:                                # %if.then.39
	movq	-160(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -224(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB15_23
# BB#22:                                # %if.then.43
	movq	-152(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -208(%rbp)
.LBB15_23:                              # %if.end.48
	movl	$1, %eax
	movl	$2, %ecx
	leaq	-224(%rbp), %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -48(%rbp)
	cmovnel	%ecx, %eax
	movl	%eax, %edx
	callq	x_query_colors
	movq	-40(%rbp), %rsi
	movw	$-1, 14(%rsi)
	movw	-216(%rbp), %r8w
	movq	-40(%rbp), %rsi
	movw	%r8w, 8(%rsi)
	movw	-214(%rbp), %r8w
	movq	-40(%rbp), %rsi
	movw	%r8w, 10(%rsi)
	movw	-212(%rbp), %r8w
	movq	-40(%rbp), %rsi
	movw	%r8w, 12(%rsi)
	cmpq	$0, -48(%rbp)
	je	.LBB15_25
# BB#24:                                # %if.then.60
	movq	-48(%rbp), %rax
	movw	$-1, 14(%rax)
	movw	-200(%rbp), %cx
	movq	-48(%rbp), %rax
	movw	%cx, 8(%rax)
	movw	-198(%rbp), %cx
	movq	-48(%rbp), %rax
	movw	%cx, 10(%rax)
	movw	-196(%rbp), %cx
	movq	-48(%rbp), %rax
	movw	%cx, 12(%rax)
.LBB15_25:                              # %if.end.75
	jmp	.LBB15_26
.LBB15_26:                              # %if.end.76
	callq	unblock_input
.LBB15_27:                              # %if.end.77
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	xftfont_get_colors, .Lfunc_end15-xftfont_get_colors
	.cfi_endproc

	.align	16, 0x90
	.type	xftfont_get_xft_draw,@function
xftfont_get_xft_draw:                   # @xftfont_get_xft_draw
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
	subq	$32, %rsp
	movl	$1063, %eax             # imm = 0x427
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	font_get_frame_data
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB16_2
# BB#1:                                 # %if.then
	callq	block_input
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	72(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	80(%rax), %rcx
	callq	XftDrawCreate
	movq	%rax, -16(%rbp)
	callq	unblock_input
	movl	$1063, %edi             # imm = 0x427
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rcx
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	font_put_frame_data
.LBB16_2:                               # %if.end
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	xftfont_get_xft_draw, .Lfunc_end16-xftfont_get_xft_draw
	.cfi_endproc

	.type	syms_of_xftfont.b_fwd,@object # @syms_of_xftfont.b_fwd
	.local	syms_of_xftfont.b_fwd
	.comm	syms_of_xftfont.b_fwd,16,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"xft-font-ascent-descent-override"
	.size	.L.str, 33

	.type	ascii_printable,@object # @ascii_printable
	.local	ascii_printable
	.comm	ascii_printable,95,16
	.type	xftfont_driver,@object  # @xftfont_driver
	.comm	xftfont_driver,224,8
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"weight"
	.size	.L.str.1, 7

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"slant"
	.size	.L.str.2, 6

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"width"
	.size	.L.str.3, 6

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"pixelsize"
	.size	.L.str.4, 10

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"family"
	.size	.L.str.5, 7

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"foundry"
	.size	.L.str.6, 8

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"spacing"
	.size	.L.str.7, 8

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"dpi"
	.size	.L.str.8, 4

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"scalable"
	.size	.L.str.9, 9

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"charset"
	.size	.L.str.10, 8

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"file"
	.size	.L.str.11, 5

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"index"
	.size	.L.str.12, 6

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"matrix"
	.size	.L.str.13, 7

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"_MULE_BASELINE_OFFSET"
	.size	.L.str.14, 22

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"_MULE_RELATIVE_COMPOSE"
	.size	.L.str.15, 23

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"_MULE_DEFAULT_ASCENT"
	.size	.L.str.16, 21

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"antialias"
	.size	.L.str.17, 10

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"hinting"
	.size	.L.str.18, 8

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"autohint"
	.size	.L.str.19, 9

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"hintstyle"
	.size	.L.str.20, 10

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"rgba"
	.size	.L.str.21, 5

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"lcdfilter"
	.size	.L.str.22, 10

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"embolden"
	.size	.L.str.23, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
