	.text
	.file	"ftxfont.bc"
	.globl	syms_of_ftxfont
	.align	16, 0x90
	.type	syms_of_ftxfont,@function
syms_of_ftxfont:                        # @syms_of_ftxfont
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
	pushq	%rbx
	pushq	%rax
.Ltmp3:
	.cfi_offset %rbx, -24
	movl	$469, %edi              # imm = 0x1D5
	movabsq	$ftxfont_driver, %rax
	movabsq	$ftfont_driver, %rcx
	movl	$224, %edx
                                        # kill: RDX<def> EDX<kill>
	movl	%edi, -12(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	memcpy
	movl	-12(%rbp), %edi         # 4-byte Reload
	callq	builtin_lisp_symbol
	movabsq	$ftxfont_driver, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movabsq	$ftxfont_end_for_frame, %rcx
	movabsq	$ftxfont_draw, %rdx
	movabsq	$ftxfont_close, %r9
	movabsq	$ftxfont_open, %r10
	movabsq	$ftxfont_match, %r11
	movabsq	$ftxfont_list, %rbx
	movq	%rax, ftxfont_driver
	movq	%rbx, ftxfont_driver+24
	movq	%r11, ftxfont_driver+32
	movq	%r10, ftxfont_driver+56
	movq	%r9, ftxfont_driver+64
	movq	%rdx, ftxfont_driver+112
	movq	%rcx, ftxfont_driver+168
	callq	register_font_driver
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	syms_of_ftxfont, .Lfunc_end0-syms_of_ftxfont
	.cfi_endproc

	.align	16, 0x90
	.type	ftxfont_list,@function
ftxfont_list:                           # @ftxfont_list
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp4:
	.cfi_def_cfa_offset 16
.Ltmp5:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp6:
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
	movl	$469, %edi              # imm = 0x1D5
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
	.size	ftxfont_list, .Lfunc_end1-ftxfont_list
	.cfi_endproc

	.align	16, 0x90
	.type	ftxfont_match,@function
ftxfont_match:                          # @ftxfont_match
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp7:
	.cfi_def_cfa_offset 16
.Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp9:
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
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB2_1
	jmp	.LBB2_2
.LBB2_1:                                # %if.then
	movl	$469, %edi              # imm = 0x1D5
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %esi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
.LBB2_2:                                # %if.end
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	ftxfont_match, .Lfunc_end2-ftxfont_match
	.cfi_endproc

	.align	16, 0x90
	.type	ftxfont_open,@function
ftxfont_open:                           # @ftxfont_open
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp10:
	.cfi_def_cfa_offset 16
.Ltmp11:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp12:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	ftfont_driver+56, %rsi
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %edx
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-56(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB3_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB3_3
.LBB3_2:                                # %if.end
	movq	-40(%rbp), %rdi
	callq	XFONT_OBJECT
	movabsq	$ftxfont_driver, %rdi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rdi, 208(%rax)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB3_3:                                # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	ftxfont_open, .Lfunc_end3-ftxfont_open
	.cfi_endproc

	.align	16, 0x90
	.type	ftxfont_close,@function
ftxfont_close:                          # @ftxfont_close
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
.Ltmp14:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp15:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	ftfont_driver+64, %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-16(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	ftxfont_close, .Lfunc_end4-ftxfont_close
	.cfi_endproc

	.align	16, 0x90
	.type	ftxfont_draw,@function
ftxfont_draw:                           # @ftxfont_draw
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp16:
	.cfi_def_cfa_offset 16
.Ltmp17:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp18:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$7512, %rsp             # imm = 0x1D58
.Ltmp19:
	.cfi_offset %rbx, -56
.Ltmp20:
	.cfi_offset %r12, -48
.Ltmp21:
	.cfi_offset %r13, -40
.Ltmp22:
	.cfi_offset %r14, -32
.Ltmp23:
	.cfi_offset %r15, -24
	movb	%r9b, %al
	movq	%rdi, -48(%rbp)
	movl	%esi, -52(%rbp)
	movl	%edx, -56(%rbp)
	movl	%ecx, -60(%rbp)
	movl	%r8d, -64(%rbp)
	andb	$1, %al
	movb	%al, -65(%rbp)
	movq	-48(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rdi, -80(%rbp)
	movq	-48(%rbp), %rdi
	movq	96(%rdi), %rdi
	movq	%rdi, -88(%rbp)
	movq	-48(%rbp), %rdi
	movq	104(%rdi), %rdi
	movq	%rdi, -96(%rbp)
	movl	-56(%rbp), %ecx
	subl	-52(%rbp), %ecx
	movl	%ecx, -7308(%rbp)
	movl	$0, -7272(%rbp)
	movl	$0, -7276(%rbp)
	movl	$0, -7280(%rbp)
	movl	$0, -7284(%rbp)
	movl	$0, -7288(%rbp)
	movl	$0, -7292(%rbp)
	movl	$0, -7296(%rbp)
	movq	$16384, -7336(%rbp)     # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -7344(%rbp)
	movb	$0, -7345(%rbp)
# BB#1:                                 # %do.body
	movslq	-7308(%rbp), %rax
	movq	-7336(%rbp), %rcx
	shrq	$2, %rcx
	shrq	$0, %rcx
	cmpq	%rcx, %rax
	ja	.LBB5_3
# BB#2:                                 # %if.then
	movslq	-7308(%rbp), %rax
	shlq	$2, %rax
	movq	-7336(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -7336(%rbp)
	movslq	-7308(%rbp), %rax
	leaq	15(,%rax,4), %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -7304(%rbp)
	jmp	.LBB5_4
.LBB5_3:                                # %if.else
	movl	$4, %eax
	movl	%eax, %esi
	movslq	-7308(%rbp), %rdi
	callq	xnmalloc
	movabsq	$xfree, %rdi
	movq	%rax, -7304(%rbp)
	movb	$1, -7345(%rbp)
	movq	-7304(%rbp), %rax
	movq	%rax, %rsi
	callq	record_unwind_protect_ptr
.LBB5_4:                                # %if.end
	jmp	.LBB5_5
.LBB5_5:                                # %do.end
	callq	block_input
	testb	$1, -65(%rbp)
	je	.LBB5_7
# BB#6:                                 # %if.then.18
	movq	-80(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	144(%rax), %rdx
	movl	-60(%rbp), %ecx
	movl	-64(%rbp), %r8d
	movq	-48(%rbp), %rax
	movl	12(%rax), %r9d
	callq	ftxfont_draw_background
.LBB5_7:                                # %if.end.19
	movl	$0, -7312(%rbp)
.LBB5_8:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-7312(%rbp), %eax
	cmpl	-7308(%rbp), %eax
	jge	.LBB5_11
# BB#9:                                 # %for.body
                                        #   in Loop: Header=BB5_8 Depth=1
	movq	-48(%rbp), %rax
	movq	80(%rax), %rax
	movslq	-52(%rbp), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	movslq	-7312(%rbp), %rcx
	movzbl	(%rax,%rcx,2), %edx
	shll	$8, %edx
	movq	-48(%rbp), %rax
	movq	80(%rax), %rax
	movslq	-52(%rbp), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	movslq	-7312(%rbp), %rcx
	movzbl	1(%rax,%rcx,2), %esi
	orl	%esi, %edx
	movslq	-7312(%rbp), %rax
	movq	-7304(%rbp), %rcx
	movl	%edx, (%rcx,%rax,4)
# BB#10:                                # %for.inc
                                        #   in Loop: Header=BB5_8 Depth=1
	movl	-7312(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -7312(%rbp)
	jmp	.LBB5_8
.LBB5_11:                               # %for.end
	movq	-88(%rbp), %rax
	movq	160(%rax), %rax
	movq	-48(%rbp), %rcx
	cmpq	144(%rcx), %rax
	jne	.LBB5_13
# BB#12:                                # %if.then.36
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rax
	movq	176(%rax), %rsi
	movq	-88(%rbp), %rax
	movq	184(%rax), %rdx
	callq	ftxfont_get_gcs
	movq	%rax, -7320(%rbp)
	jmp	.LBB5_14
.LBB5_13:                               # %if.else.38
	leaq	-7480(%rbp), %rcx
	movq	$12, -7488(%rbp)
	movq	-80(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-48(%rbp), %rax
	movq	144(%rax), %rsi
	movq	-7488(%rbp), %rdx
	callq	XGetGCValues
	movq	-80(%rbp), %rdi
	movq	-7464(%rbp), %rsi
	movq	-7456(%rbp), %rdx
	movl	%eax, -7492(%rbp)       # 4-byte Spill
	callq	ftxfont_get_gcs
	movq	%rax, -7320(%rbp)
.LBB5_14:                               # %if.end.45
	cmpq	$0, -7320(%rbp)
	je	.LBB5_35
# BB#15:                                # %if.then.47
	movq	-48(%rbp), %rax
	cmpl	$0, 216(%rax)
	je	.LBB5_21
# BB#16:                                # %if.then.49
	movl	$0, -7312(%rbp)
.LBB5_17:                               # %for.cond.50
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$6, -7312(%rbp)
	jge	.LBB5_20
# BB#18:                                # %for.body.53
                                        #   in Loop: Header=BB5_17 Depth=1
	xorl	%eax, %eax
	movq	-80(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	424(%rcx), %rcx
	movq	16(%rcx), %rdi
	movslq	-7312(%rbp), %rcx
	movq	-7320(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rsi
	movq	-48(%rbp), %rcx
	addq	$200, %rcx
	movq	-48(%rbp), %rdx
	movl	216(%rdx), %r9d
	subq	$16, %rsp
	movl	%eax, %edx
	movq	%rcx, -7504(%rbp)       # 8-byte Spill
	movl	%eax, %ecx
	movq	-7504(%rbp), %r8        # 8-byte Reload
	movl	$0, (%rsp)
	callq	XSetClipRectangles
	addq	$16, %rsp
	movl	%eax, -7508(%rbp)       # 4-byte Spill
# BB#19:                                # %for.inc.62
                                        #   in Loop: Header=BB5_17 Depth=1
	movl	-7312(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -7312(%rbp)
	jmp	.LBB5_17
.LBB5_20:                               # %for.end.64
	jmp	.LBB5_21
.LBB5_21:                               # %if.end.65
	movl	$0, -7312(%rbp)
.LBB5_22:                               # %for.cond.66
                                        # =>This Inner Loop Header: Depth=1
	movl	-7312(%rbp), %eax
	cmpl	-7308(%rbp), %eax
	jge	.LBB5_28
# BB#23:                                # %for.body.69
                                        #   in Loop: Header=BB5_22 Depth=1
	movl	$256, %eax              # imm = 0x100
	leaq	-7296(%rbp), %rcx
	leaq	-7264(%rbp), %rdx
	movq	-80(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	144(%rsi), %rsi
	movq	-7320(%rbp), %r8
	movq	-96(%rbp), %r9
	movslq	-7312(%rbp), %r10
	movq	-7304(%rbp), %r11
	movl	(%r11,%r10,4), %ebx
	movl	-60(%rbp), %r14d
	movl	-64(%rbp), %r15d
	movl	-7312(%rbp), %r12d
	addl	$1, %r12d
	cmpl	-7308(%rbp), %r12d
	sete	%r13b
	subq	$48, %rsp
	movq	%rsp, %r10
	movq	%rcx, 24(%r10)
	movq	%rdx, 8(%r10)
	movl	%r15d, (%r10)
	movzbl	%r13b, %r15d
	andl	$1, %r15d
	movl	%r15d, 32(%r10)
	movl	$256, 16(%r10)          # imm = 0x100
	movq	%r8, %rdx
	movq	%r9, %rcx
	movl	%ebx, %r8d
	movl	%r14d, %r9d
	movl	%eax, -7512(%rbp)       # 4-byte Spill
	callq	ftxfont_draw_bitmap
	addq	$48, %rsp
	movl	%eax, -7324(%rbp)
	movq	-48(%rbp), %rcx
	movb	136(%rcx), %r13b
	shrb	$7, %r13b
	testb	$1, %r13b
	je	.LBB5_25
# BB#24:                                # %cond.true
                                        #   in Loop: Header=BB5_22 Depth=1
	movl	$1, %eax
	movl	%eax, -7516(%rbp)       # 4-byte Spill
	jmp	.LBB5_26
.LBB5_25:                               # %cond.false
                                        #   in Loop: Header=BB5_22 Depth=1
	movl	-7324(%rbp), %eax
	movl	%eax, -7516(%rbp)       # 4-byte Spill
.LBB5_26:                               # %cond.end
                                        #   in Loop: Header=BB5_22 Depth=1
	movl	-7516(%rbp), %eax       # 4-byte Reload
	addl	-60(%rbp), %eax
	movl	%eax, -60(%rbp)
# BB#27:                                # %for.inc.80
                                        #   in Loop: Header=BB5_22 Depth=1
	movl	-7312(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -7312(%rbp)
	jmp	.LBB5_22
.LBB5_28:                               # %for.end.82
	movq	-48(%rbp), %rax
	cmpl	$0, 216(%rax)
	je	.LBB5_34
# BB#29:                                # %if.then.85
	movl	$0, -7312(%rbp)
.LBB5_30:                               # %for.cond.86
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$6, -7312(%rbp)
	jge	.LBB5_33
# BB#31:                                # %for.body.89
                                        #   in Loop: Header=BB5_30 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-80(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	424(%rcx), %rcx
	movq	16(%rcx), %rdi
	movslq	-7312(%rbp), %rcx
	movq	-7320(%rbp), %rsi
	movq	(%rsi,%rcx,8), %rsi
	callq	XSetClipMask
	movl	%eax, -7520(%rbp)       # 4-byte Spill
# BB#32:                                # %for.inc.97
                                        #   in Loop: Header=BB5_30 Depth=1
	movl	-7312(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -7312(%rbp)
	jmp	.LBB5_30
.LBB5_33:                               # %for.end.99
	jmp	.LBB5_34
.LBB5_34:                               # %if.end.100
	jmp	.LBB5_43
.LBB5_35:                               # %if.else.101
	movl	$0, -7312(%rbp)
.LBB5_36:                               # %for.cond.102
                                        # =>This Inner Loop Header: Depth=1
	movl	-7312(%rbp), %eax
	cmpl	-7308(%rbp), %eax
	jge	.LBB5_42
# BB#37:                                # %for.body.105
                                        #   in Loop: Header=BB5_36 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	$1792, %eax             # imm = 0x700
	leaq	-7296(%rbp), %rdx
	leaq	-7264(%rbp), %rsi
	movq	-80(%rbp), %rdi
	movq	-48(%rbp), %r8
	movq	144(%r8), %r8
	movq	-96(%rbp), %r9
	movslq	-7312(%rbp), %r10
	movq	-7304(%rbp), %r11
	movl	(%r11,%r10,4), %ebx
	movl	-60(%rbp), %r14d
	movl	-64(%rbp), %r15d
	movl	-7312(%rbp), %r12d
	addl	$1, %r12d
	cmpl	-7308(%rbp), %r12d
	sete	%r13b
	subq	$48, %rsp
	movq	%rsp, %r10
	movq	%rdx, 24(%r10)
	movq	%rsi, 8(%r10)
	movl	%r15d, (%r10)
	movzbl	%r13b, %r15d
	andl	$1, %r15d
	movl	%r15d, 32(%r10)
	movl	$1792, 16(%r10)         # imm = 0x700
	xorl	%r15d, %r15d
	movl	%r15d, %edx
	movq	%r8, %rsi
	movq	%rcx, -7528(%rbp)       # 8-byte Spill
	movq	%r9, %rcx
	movl	%ebx, %r8d
	movl	%r14d, %r9d
	movl	%eax, -7532(%rbp)       # 4-byte Spill
	callq	ftxfont_draw_bitmap
	addq	$48, %rsp
	movl	%eax, -7324(%rbp)
	movq	-48(%rbp), %rcx
	movb	136(%rcx), %r13b
	shrb	$7, %r13b
	testb	$1, %r13b
	je	.LBB5_39
# BB#38:                                # %cond.true.120
                                        #   in Loop: Header=BB5_36 Depth=1
	movl	$1, %eax
	movl	%eax, -7536(%rbp)       # 4-byte Spill
	jmp	.LBB5_40
.LBB5_39:                               # %cond.false.121
                                        #   in Loop: Header=BB5_36 Depth=1
	movl	-7324(%rbp), %eax
	movl	%eax, -7536(%rbp)       # 4-byte Spill
.LBB5_40:                               # %cond.end.122
                                        #   in Loop: Header=BB5_36 Depth=1
	movl	-7536(%rbp), %eax       # 4-byte Reload
	addl	-60(%rbp), %eax
	movl	%eax, -60(%rbp)
# BB#41:                                # %for.inc.125
                                        #   in Loop: Header=BB5_36 Depth=1
	movl	-7312(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -7312(%rbp)
	jmp	.LBB5_36
.LBB5_42:                               # %for.end.127
	jmp	.LBB5_43
.LBB5_43:                               # %if.end.128
	callq	unblock_input
# BB#44:                                # %do.body.129
	testb	$1, -7345(%rbp)
	je	.LBB5_46
# BB#45:                                # %if.then.131
	xorl	%edi, %edi
	movb	$0, -7345(%rbp)
	movq	-7344(%rbp), %rax
	movq	%rax, -7544(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-7544(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -7552(%rbp)       # 8-byte Spill
.LBB5_46:                               # %if.end.134
	jmp	.LBB5_47
.LBB5_47:                               # %do.end.135
	movl	-7308(%rbp), %eax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	ftxfont_draw, .Lfunc_end5-ftxfont_draw
	.cfi_endproc

	.align	16, 0x90
	.type	ftxfont_end_for_frame,@function
ftxfont_end_for_frame:                  # @ftxfont_end_for_frame
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
	subq	$64, %rsp
	movl	$469, %eax              # imm = 0x1D5
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	font_get_frame_data
	movq	%rax, -16(%rbp)
	callq	block_input
.LBB6_1:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_3 Depth 2
	cmpq	$0, -16(%rbp)
	je	.LBB6_7
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-16(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -24(%rbp)
	movl	$0, -28(%rbp)
.LBB6_3:                                # %for.cond
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$6, -28(%rbp)
	jge	.LBB6_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB6_3 Depth=2
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	32(%rcx,%rax,8), %rsi
	callq	XFreeGC
	movl	%eax, -44(%rbp)         # 4-byte Spill
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB6_3 Depth=2
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB6_3
.LBB6_6:                                # %for.end
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB6_1
.LBB6_7:                                # %while.end
	callq	unblock_input
	movl	$469, %edi              # imm = 0x1D5
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %edx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	font_put_frame_data
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	ftxfont_end_for_frame, .Lfunc_end6-ftxfont_end_for_frame
	.cfi_endproc

	.align	16, 0x90
	.type	ftxfont_draw_background,@function
ftxfont_draw_background:                # @ftxfont_draw_background
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
	pushq	%rbx
	subq	$200, %rsp
.Ltmp30:
	.cfi_offset %rbx, -24
	movl	$12, %eax
	movl	%eax, %r10d
	leaq	-176(%rbp), %r11
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	%r8d, -40(%rbp)
	movl	%r9d, -44(%rbp)
	movq	-16(%rbp), %rdx
	movq	384(%rdx), %rdx
	movq	424(%rdx), %rdx
	movq	16(%rdx), %rdi
	movq	-32(%rbp), %rsi
	movq	%r10, %rdx
	movq	%r11, %rcx
	callq	XGetGCValues
	movq	-16(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	424(%rcx), %rcx
	movq	16(%rcx), %rdi
	movq	-32(%rbp), %rsi
	movq	-152(%rbp), %rdx
	movl	%eax, -180(%rbp)        # 4-byte Spill
	callq	XSetForeground
	movq	-16(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	424(%rcx), %rcx
	movq	16(%rcx), %rdi
	movq	-16(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	56(%rcx), %rsi
	movq	-32(%rbp), %rdx
	movl	-36(%rbp), %ecx
	movl	-40(%rbp), %r8d
	movq	-24(%rbp), %r10
	subl	168(%r10), %r8d
	movl	-44(%rbp), %r9d
	movq	-24(%rbp), %r10
	movl	156(%r10), %ebx
	movl	%ebx, (%rsp)
	movl	%eax, -184(%rbp)        # 4-byte Spill
	callq	XFillRectangle
	movq	-16(%rbp), %rdx
	movq	384(%rdx), %rdx
	movq	424(%rdx), %rdx
	movq	16(%rdx), %rdi
	movq	-32(%rbp), %rsi
	movq	-160(%rbp), %rdx
	movl	%eax, -188(%rbp)        # 4-byte Spill
	callq	XSetForeground
	movl	%eax, -192(%rbp)        # 4-byte Spill
	addq	$200, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end7:
	.size	ftxfont_draw_background, .Lfunc_end7-ftxfont_draw_background
	.cfi_endproc

	.align	16, 0x90
	.type	ftxfont_get_gcs,@function
ftxfont_get_gcs:                        # @ftxfont_get_gcs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
.Ltmp32:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp33:
	.cfi_def_cfa_register %rbp
	subq	$272, %rsp              # imm = 0x110
	movl	$469, %eax              # imm = 0x1D5
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	font_get_frame_data
	movq	%rax, -192(%rbp)
	movq	$0, -200(%rbp)
	movq	$0, -208(%rbp)
	cmpq	$0, -192(%rbp)
	je	.LBB8_14
# BB#1:                                 # %if.then
	movq	-192(%rbp), %rax
	movq	%rax, -208(%rbp)
.LBB8_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -208(%rbp)
	je	.LBB8_13
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB8_2 Depth=1
	movq	-208(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jae	.LBB8_5
# BB#4:                                 # %if.then.3
                                        #   in Loop: Header=BB8_2 Depth=1
	jmp	.LBB8_12
.LBB8_5:                                # %if.end
                                        #   in Loop: Header=BB8_2 Depth=1
	movq	-208(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jbe	.LBB8_7
# BB#6:                                 # %if.then.8
	jmp	.LBB8_13
.LBB8_7:                                # %if.end.9
                                        #   in Loop: Header=BB8_2 Depth=1
	movq	-208(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	-24(%rbp), %rax
	jae	.LBB8_9
# BB#8:                                 # %if.then.14
                                        #   in Loop: Header=BB8_2 Depth=1
	jmp	.LBB8_12
.LBB8_9:                                # %if.end.15
	movq	-208(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	-24(%rbp), %rax
	jbe	.LBB8_11
# BB#10:                                # %if.then.20
	jmp	.LBB8_13
.LBB8_11:                               # %if.end.21
	movq	-208(%rbp), %rax
	addq	$32, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB8_34
.LBB8_12:                               # %for.inc
                                        #   in Loop: Header=BB8_2 Depth=1
	movq	-208(%rbp), %rax
	movq	%rax, -200(%rbp)
	movq	-208(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -208(%rbp)
	jmp	.LBB8_2
.LBB8_13:                               # %for.end
	jmp	.LBB8_14
.LBB8_14:                               # %if.end.22
	movl	$88, %eax
	movl	%eax, %edi
	callq	xmalloc
	movq	%rax, -216(%rbp)
	movq	-208(%rbp), %rax
	movq	-216(%rbp), %rdi
	movq	%rax, 80(%rdi)
	cmpq	$0, -200(%rbp)
	je	.LBB8_16
# BB#15:                                # %if.then.26
	movq	-216(%rbp), %rax
	movq	-200(%rbp), %rcx
	movq	%rax, 80(%rcx)
.LBB8_16:                               # %if.end.28
	movl	$469, %edi              # imm = 0x1D5
	movq	-16(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rcx
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	font_put_frame_data
	movq	-32(%rbp), %rax
	movq	-216(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	-216(%rbp), %rcx
	movq	%rax, 16(%rcx)
	callq	block_input
	movl	$2, %ecx
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	80(%rax), %rsi
	movq	-216(%rbp), %rdx
	callq	XQueryColors
	movl	$1, -180(%rbp)
	movl	%eax, -236(%rbp)        # 4-byte Spill
.LBB8_17:                               # %for.cond.42
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$7, -180(%rbp)
	jge	.LBB8_22
# BB#18:                                # %for.body.44
                                        #   in Loop: Header=BB8_17 Depth=1
	leaq	-48(%rbp), %rdx
	movl	$8, %eax
	movq	-216(%rbp), %rcx
	movzwl	24(%rcx), %esi
	imull	-180(%rbp), %esi
	movq	-216(%rbp), %rcx
	movzwl	8(%rcx), %edi
	movl	%eax, %r8d
	subl	-180(%rbp), %r8d
	imull	%r8d, %edi
	addl	%edi, %esi
	movl	%eax, -240(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	movq	%rdx, -248(%rbp)        # 8-byte Spill
	cltd
	movl	-240(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movw	%ax, %r9w
	movw	%r9w, -40(%rbp)
	movq	-216(%rbp), %rcx
	movzwl	26(%rcx), %eax
	imull	-180(%rbp), %eax
	movq	-216(%rbp), %rcx
	movzwl	10(%rcx), %edi
	subl	-180(%rbp), %esi
	imull	%esi, %edi
	addl	%edi, %eax
	cltd
	movl	-240(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movw	%ax, %r9w
	movw	%r9w, -38(%rbp)
	movq	-216(%rbp), %rcx
	movzwl	28(%rcx), %eax
	imull	-180(%rbp), %eax
	movq	-216(%rbp), %rcx
	movzwl	12(%rcx), %edi
	subl	-180(%rbp), %esi
	imull	%esi, %edi
	addl	%edi, %eax
	cltd
	movl	-240(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movw	%ax, %r9w
	movw	%r9w, -36(%rbp)
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	424(%rcx), %rcx
	movq	80(%rcx), %rsi
	movq	-248(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, %rdx
	callq	x_alloc_nearest_color
	testb	$1, %al
	jne	.LBB8_20
# BB#19:                                # %if.then.87
	jmp	.LBB8_22
.LBB8_20:                               # %if.end.88
                                        #   in Loop: Header=BB8_17 Depth=1
	movl	$4, %eax
	movl	%eax, %edx
	leaq	-176(%rbp), %rcx
	movq	-48(%rbp), %rsi
	movq	%rsi, -160(%rbp)
	movq	-16(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	424(%rsi), %rsi
	movq	16(%rsi), %rdi
	movq	-16(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	56(%rsi), %rsi
	callq	XCreateGC
	movl	-180(%rbp), %r8d
	subl	$1, %r8d
	movslq	%r8d, %rcx
	movq	-216(%rbp), %rdx
	movq	%rax, 32(%rdx,%rcx,8)
# BB#21:                                # %for.inc.101
                                        #   in Loop: Header=BB8_17 Depth=1
	movl	-180(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -180(%rbp)
	jmp	.LBB8_17
.LBB8_22:                               # %for.end.102
	callq	unblock_input
	cmpl	$7, -180(%rbp)
	jge	.LBB8_33
# BB#23:                                # %if.then.105
	callq	block_input
	movl	-180(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -180(%rbp)
.LBB8_24:                               # %for.cond.106
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -180(%rbp)
	jl	.LBB8_27
# BB#25:                                # %for.body.109
                                        #   in Loop: Header=BB8_24 Depth=1
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movslq	-180(%rbp), %rax
	movq	-216(%rbp), %rcx
	movq	32(%rcx,%rax,8), %rsi
	callq	XFreeGC
	movl	%eax, -252(%rbp)        # 4-byte Spill
# BB#26:                                # %for.inc.118
                                        #   in Loop: Header=BB8_24 Depth=1
	movl	-180(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -180(%rbp)
	jmp	.LBB8_24
.LBB8_27:                               # %for.end.120
	callq	unblock_input
	cmpq	$0, -200(%rbp)
	je	.LBB8_29
# BB#28:                                # %if.then.122
	movq	-216(%rbp), %rax
	movq	80(%rax), %rax
	movq	-200(%rbp), %rcx
	movq	%rax, 80(%rcx)
	jmp	.LBB8_32
.LBB8_29:                               # %if.else
	cmpq	$0, -192(%rbp)
	je	.LBB8_31
# BB#30:                                # %if.then.126
	movl	$469, %edi              # imm = 0x1D5
	movq	-16(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rcx
	movq	80(%rcx), %rcx
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	font_put_frame_data
.LBB8_31:                               # %if.end.129
	jmp	.LBB8_32
.LBB8_32:                               # %if.end.130
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
	movq	$0, -8(%rbp)
	jmp	.LBB8_34
.LBB8_33:                               # %if.end.131
	movq	-216(%rbp), %rax
	addq	$32, %rax
	movq	%rax, -8(%rbp)
.LBB8_34:                               # %return
	movq	-8(%rbp), %rax
	addq	$272, %rsp              # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end8:
	.size	ftxfont_get_gcs, .Lfunc_end8-ftxfont_get_gcs
	.cfi_endproc

	.align	16, 0x90
	.type	ftxfont_draw_bitmap,@function
ftxfont_draw_bitmap:                    # @ftxfont_draw_bitmap
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp34:
	.cfi_def_cfa_offset 16
.Ltmp35:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp36:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$248, %rsp
.Ltmp37:
	.cfi_offset %rbx, -56
.Ltmp38:
	.cfi_offset %r12, -48
.Ltmp39:
	.cfi_offset %r13, -40
.Ltmp40:
	.cfi_offset %r14, -32
.Ltmp41:
	.cfi_offset %r15, -24
	movb	48(%rbp), %al
	movq	40(%rbp), %r10
	movl	32(%rbp), %r11d
	movq	24(%rbp), %rbx
	movl	16(%rbp), %r14d
	leaq	-168(%rbp), %r15
	movl	$8, %r12d
	movl	$1, %r13d
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movl	%r8d, -84(%rbp)
	movl	%r9d, -88(%rbp)
	movl	%r14d, -92(%rbp)
	movq	%rbx, -104(%rbp)
	movl	%r11d, -108(%rbp)
	movq	%r10, -120(%rbp)
	andb	$1, %al
	movb	%al, -121(%rbp)
	movq	ftfont_driver+120, %rcx
	movq	-80(%rbp), %rdi
	movl	-84(%rbp), %esi
	cmpl	$256, -108(%rbp)        # imm = 0x100
	cmovgl	%r13d, %r12d
	movq	%r15, %rdx
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	movl	%r12d, %ecx
	movq	-208(%rbp), %r10        # 8-byte Reload
	callq	*%r10
	cmpl	$0, %eax
	jge	.LBB9_2
# BB#1:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB9_51
.LBB9_2:                                # %if.end
	cmpl	$256, -108(%rbp)        # imm = 0x100
	jle	.LBB9_19
# BB#3:                                 # %if.then.3
	movl	$0, -180(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -176(%rbp)
.LBB9_4:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_6 Depth 2
	movl	-180(%rbp), %eax
	cmpl	-164(%rbp), %eax
	jge	.LBB9_15
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB9_4 Depth=1
	movl	$0, -184(%rbp)
.LBB9_6:                                # %for.cond.5
                                        #   Parent Loop BB9_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-184(%rbp), %eax
	cmpl	-160(%rbp), %eax
	jge	.LBB9_13
# BB#7:                                 # %for.body.7
                                        #   in Loop: Header=BB9_6 Depth=2
	movl	$1, %eax
	movl	$7, %ecx
	movl	$8, %edx
	movl	-184(%rbp), %esi
	movl	%eax, -212(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	movl	%edx, -216(%rbp)        # 4-byte Spill
	cltd
	movl	-216(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movslq	%eax, %rdi
	movq	-176(%rbp), %r8
	movzbl	(%r8,%rdi), %eax
	movl	-184(%rbp), %r9d
	movl	%eax, -220(%rbp)        # 4-byte Spill
	movl	%r9d, %eax
	cltd
	idivl	%esi
	subl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-212(%rbp), %edx        # 4-byte Reload
	shll	%cl, %edx
	movl	-220(%rbp), %r9d        # 4-byte Reload
	andl	%edx, %r9d
	cmpl	$0, %r9d
	je	.LBB9_11
# BB#8:                                 # %if.then.8
                                        #   in Loop: Header=BB9_6 Depth=2
	movl	-88(%rbp), %eax
	addl	-144(%rbp), %eax
	addl	-184(%rbp), %eax
	movw	%ax, %cx
	movq	-120(%rbp), %rdx
	movslq	(%rdx), %rdx
	movq	-104(%rbp), %rsi
	movw	%cx, (%rsi,%rdx,4)
	movl	-92(%rbp), %eax
	subl	-140(%rbp), %eax
	addl	-180(%rbp), %eax
	movw	%ax, %cx
	movq	-120(%rbp), %rdx
	movslq	(%rdx), %rdx
	movq	-104(%rbp), %rsi
	movw	%cx, 2(%rsi,%rdx,4)
	movq	-120(%rbp), %rdx
	movl	(%rdx), %eax
	addl	$1, %eax
	movl	%eax, (%rdx)
	cmpl	-108(%rbp), %eax
	jne	.LBB9_10
# BB#9:                                 # %if.then.25
                                        #   in Loop: Header=BB9_6 Depth=2
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-56(%rbp), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rsi
	movq	-64(%rbp), %rdx
	movq	-104(%rbp), %rcx
	movl	-108(%rbp), %r8d
	callq	XDrawPoints
	movq	-120(%rbp), %rcx
	movl	$0, (%rcx)
	movl	%eax, -224(%rbp)        # 4-byte Spill
.LBB9_10:                               # %if.end.31
                                        #   in Loop: Header=BB9_6 Depth=2
	jmp	.LBB9_11
.LBB9_11:                               # %if.end.32
                                        #   in Loop: Header=BB9_6 Depth=2
	jmp	.LBB9_12
.LBB9_12:                               # %for.inc
                                        #   in Loop: Header=BB9_6 Depth=2
	movl	-184(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -184(%rbp)
	jmp	.LBB9_6
.LBB9_13:                               # %for.end
                                        #   in Loop: Header=BB9_4 Depth=1
	jmp	.LBB9_14
.LBB9_14:                               # %for.inc.34
                                        #   in Loop: Header=BB9_4 Depth=1
	movl	-180(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -180(%rbp)
	movl	-156(%rbp), %eax
	movq	-176(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -176(%rbp)
	jmp	.LBB9_4
.LBB9_15:                               # %for.end.36
	testb	$1, -121(%rbp)
	je	.LBB9_18
# BB#16:                                # %land.lhs.true
	movq	-120(%rbp), %rax
	cmpl	$0, (%rax)
	jle	.LBB9_18
# BB#17:                                # %if.then.42
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-56(%rbp), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rsi
	movq	-64(%rbp), %rdx
	movq	-104(%rbp), %rcx
	movq	-120(%rbp), %rax
	movl	(%rax), %r8d
	callq	XDrawPoints
	movl	%eax, -228(%rbp)        # 4-byte Spill
.LBB9_18:                               # %if.end.52
	jmp	.LBB9_48
.LBB9_19:                               # %if.else
	movl	$0, -180(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -176(%rbp)
.LBB9_20:                               # %for.cond.54
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_22 Depth 2
	movl	-180(%rbp), %eax
	cmpl	-164(%rbp), %eax
	jge	.LBB9_37
# BB#21:                                # %for.body.58
                                        #   in Loop: Header=BB9_20 Depth=1
	movl	$0, -184(%rbp)
.LBB9_22:                               # %for.cond.59
                                        #   Parent Loop BB9_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-184(%rbp), %eax
	cmpl	-160(%rbp), %eax
	jge	.LBB9_35
# BB#23:                                # %for.body.63
                                        #   in Loop: Header=BB9_22 Depth=2
	cmpl	$1, -168(%rbp)
	jne	.LBB9_25
# BB#24:                                # %cond.true
                                        #   in Loop: Header=BB9_22 Depth=2
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	$6, %ecx
	movl	$1, %edx
	movl	$7, %esi
	movl	$8, %edi
	movl	-184(%rbp), %r8d
	movl	%eax, -232(%rbp)        # 4-byte Spill
	movl	%r8d, %eax
	movl	%edx, -236(%rbp)        # 4-byte Spill
	cltd
	idivl	%edi
	movslq	%eax, %r9
	movq	-176(%rbp), %r10
	movzbl	(%r10,%r9), %eax
	movl	-184(%rbp), %r8d
	movl	%eax, -240(%rbp)        # 4-byte Spill
	movl	%r8d, %eax
	cltd
	idivl	%edi
	subl	%edx, %esi
	movl	%ecx, -244(%rbp)        # 4-byte Spill
	movl	%esi, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-236(%rbp), %edx        # 4-byte Reload
	shll	%cl, %edx
	movl	-240(%rbp), %esi        # 4-byte Reload
	andl	%edx, %esi
	cmpl	$0, %esi
	movl	-232(%rbp), %edx        # 4-byte Reload
	movl	-244(%rbp), %esi        # 4-byte Reload
	cmovnel	%esi, %edx
	movl	%edx, -248(%rbp)        # 4-byte Spill
	jmp	.LBB9_26
.LBB9_25:                               # %cond.false
                                        #   in Loop: Header=BB9_22 Depth=2
	movslq	-184(%rbp), %rax
	movq	-176(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	sarl	$5, %edx
	subl	$1, %edx
	movl	%edx, -248(%rbp)        # 4-byte Spill
.LBB9_26:                               # %cond.end
                                        #   in Loop: Header=BB9_22 Depth=2
	movl	-248(%rbp), %eax        # 4-byte Reload
	movl	%eax, -188(%rbp)
	cmpl	$0, -188(%rbp)
	jl	.LBB9_33
# BB#27:                                # %if.then.83
                                        #   in Loop: Header=BB9_22 Depth=2
	movq	-104(%rbp), %rax
	movl	-108(%rbp), %ecx
	imull	-188(%rbp), %ecx
	movslq	%ecx, %rdx
	shlq	$2, %rdx
	addq	%rdx, %rax
	movq	%rax, -200(%rbp)
	movl	-88(%rbp), %ecx
	addl	-144(%rbp), %ecx
	addl	-184(%rbp), %ecx
	movw	%cx, %si
	movslq	-188(%rbp), %rax
	movq	-120(%rbp), %rdx
	movslq	(%rdx,%rax,4), %rax
	movq	-200(%rbp), %rdx
	movw	%si, (%rdx,%rax,4)
	movl	-92(%rbp), %ecx
	subl	-140(%rbp), %ecx
	addl	-180(%rbp), %ecx
	movw	%cx, %si
	movslq	-188(%rbp), %rax
	movq	-120(%rbp), %rdx
	movslq	(%rdx,%rax,4), %rax
	movq	-200(%rbp), %rdx
	movw	%si, 2(%rdx,%rax,4)
	movslq	-188(%rbp), %rax
	movq	-120(%rbp), %rdx
	movl	(%rdx,%rax,4), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rdx,%rax,4)
	cmpl	-108(%rbp), %ecx
	jne	.LBB9_32
# BB#28:                                # %if.then.109
                                        #   in Loop: Header=BB9_22 Depth=2
	movq	-56(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-56(%rbp), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rsi
	cmpl	$6, -188(%rbp)
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movq	%rsi, -264(%rbp)        # 8-byte Spill
	jne	.LBB9_30
# BB#29:                                # %cond.true.119
                                        #   in Loop: Header=BB9_22 Depth=2
	movq	-64(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	jmp	.LBB9_31
.LBB9_30:                               # %cond.false.120
                                        #   in Loop: Header=BB9_22 Depth=2
	movslq	-188(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
.LBB9_31:                               # %cond.end.123
                                        #   in Loop: Header=BB9_22 Depth=2
	movq	-272(%rbp), %rax        # 8-byte Reload
	xorl	%r9d, %r9d
	movq	-200(%rbp), %rcx
	movl	-108(%rbp), %r8d
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	-264(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	XDrawPoints
	movslq	-188(%rbp), %rcx
	movq	-120(%rbp), %rdx
	movl	$0, (%rdx,%rcx,4)
	movl	%eax, -276(%rbp)        # 4-byte Spill
.LBB9_32:                               # %if.end.128
                                        #   in Loop: Header=BB9_22 Depth=2
	jmp	.LBB9_33
.LBB9_33:                               # %if.end.129
                                        #   in Loop: Header=BB9_22 Depth=2
	jmp	.LBB9_34
.LBB9_34:                               # %for.inc.130
                                        #   in Loop: Header=BB9_22 Depth=2
	movl	-184(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -184(%rbp)
	jmp	.LBB9_22
.LBB9_35:                               # %for.end.132
                                        #   in Loop: Header=BB9_20 Depth=1
	jmp	.LBB9_36
.LBB9_36:                               # %for.inc.133
                                        #   in Loop: Header=BB9_20 Depth=1
	movl	-180(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -180(%rbp)
	movl	-156(%rbp), %eax
	movq	-176(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -176(%rbp)
	jmp	.LBB9_20
.LBB9_37:                               # %for.end.138
	testb	$1, -121(%rbp)
	je	.LBB9_47
# BB#38:                                # %if.then.140
	movl	$0, -180(%rbp)
.LBB9_39:                               # %for.cond.141
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$6, -180(%rbp)
	jge	.LBB9_44
# BB#40:                                # %for.body.144
                                        #   in Loop: Header=BB9_39 Depth=1
	movslq	-180(%rbp), %rax
	movq	-120(%rbp), %rcx
	cmpl	$0, (%rcx,%rax,4)
	jle	.LBB9_42
# BB#41:                                # %if.then.149
                                        #   in Loop: Header=BB9_39 Depth=1
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-56(%rbp), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rsi
	movslq	-180(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdx
	movq	-104(%rbp), %rax
	movl	-180(%rbp), %r8d
	shll	$8, %r8d
	movslq	%r8d, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movslq	-180(%rbp), %rcx
	movq	-120(%rbp), %r10
	movl	(%r10,%rcx,4), %r8d
	movq	%rax, %rcx
	callq	XDrawPoints
	movl	%eax, -280(%rbp)        # 4-byte Spill
.LBB9_42:                               # %if.end.165
                                        #   in Loop: Header=BB9_39 Depth=1
	jmp	.LBB9_43
.LBB9_43:                               # %for.inc.166
                                        #   in Loop: Header=BB9_39 Depth=1
	movl	-180(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -180(%rbp)
	jmp	.LBB9_39
.LBB9_44:                               # %for.end.168
	movq	-120(%rbp), %rax
	cmpl	$0, 24(%rax)
	jle	.LBB9_46
# BB#45:                                # %if.then.172
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-56(%rbp), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rsi
	movq	-64(%rbp), %rdx
	movq	-104(%rbp), %rax
	addq	$6144, %rax             # imm = 0x1800
	movq	-120(%rbp), %rcx
	movl	24(%rcx), %r8d
	movq	%rax, %rcx
	callq	XDrawPoints
	movl	%eax, -284(%rbp)        # 4-byte Spill
.LBB9_46:                               # %if.end.183
	jmp	.LBB9_47
.LBB9_47:                               # %if.end.184
	jmp	.LBB9_48
.LBB9_48:                               # %if.end.185
	cmpq	$0, ftfont_driver+128
	je	.LBB9_50
# BB#49:                                # %if.then.187
	leaq	-168(%rbp), %rsi
	movq	ftfont_driver+128, %rax
	movq	-80(%rbp), %rdi
	callq	*%rax
.LBB9_50:                               # %if.end.188
	movl	-136(%rbp), %eax
	movl	%eax, -44(%rbp)
.LBB9_51:                               # %return
	movl	-44(%rbp), %eax
	addq	$248, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	ftxfont_draw_bitmap, .Lfunc_end9-ftxfont_draw_bitmap
	.cfi_endproc

	.type	ftxfont_driver,@object  # @ftxfont_driver
	.comm	ftxfont_driver,224,8

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
