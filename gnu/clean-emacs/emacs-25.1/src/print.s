	.text
	.file	"print.bc"
	.globl	Fwrite_char
	.align	16, 0x90
	.type	Fwrite_char,@function
Fwrite_char:                            # @Fwrite_char
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
	subq	$368, %rsp              # imm = 0x170
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movl	%eax, %edi
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movq	globals+2216, %rax
	movq	%rax, -16(%rbp)
.LBB0_2:                                # %if.end
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB0_4
# BB#3:                                 # %cond.true
	jmp	.LBB0_5
.LBB0_4:                                # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -152(%rbp)        # 8-byte Spill
.LBB0_5:                                # %cond.end
	movq	current_buffer, %rax
	movq	%rax, -24(%rbp)
	movq	$-1, -32(%rbp)
	movq	$-1, -40(%rbp)
	movq	$-1, -48(%rbp)
	movq	$-1, -56(%rbp)
	callq	SPECPDL_INDEX
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)
	movb	$0, -65(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-160(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	andb	$1, %dl
	movb	%dl, -66(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB0_7
# BB#6:                                 # %if.then.12
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)
.LBB0_7:                                # %if.end.14
	movq	-16(%rbp), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB0_8
	jmp	.LBB0_11
.LBB0_8:                                # %if.then.16
	movq	-16(%rbp), %rdi
	callq	XBUFFER
	cmpq	current_buffer, %rax
	je	.LBB0_10
# BB#9:                                 # %if.then.20
	movq	-16(%rbp), %rdi
	callq	Fset_buffer
	movq	%rax, -176(%rbp)        # 8-byte Spill
.LBB0_10:                               # %if.end.22
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)
.LBB0_11:                               # %if.end.24
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB0_21
# BB#12:                                # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB0_21
# BB#13:                                # %if.then.32
	movq	-16(%rbp), %rdi
	callq	XMARKER
	cmpq	$0, 8(%rax)
	jne	.LBB0_15
# BB#14:                                # %if.then.34
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	error
.LBB0_15:                               # %if.end.35
	movq	-16(%rbp), %rdi
	callq	XMARKER
	movq	8(%rax), %rax
	cmpq	current_buffer, %rax
	je	.LBB0_17
# BB#16:                                # %if.then.40
	movq	-16(%rbp), %rdi
	callq	XMARKER
	movq	8(%rax), %rdi
	callq	set_buffer_internal
.LBB0_17:                               # %if.end.43
	movq	-16(%rbp), %rdi
	callq	marker_position
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	current_buffer, %rdi
	cmpq	752(%rdi), %rax
	jl	.LBB0_19
# BB#18:                                # %lor.lhs.false
	movq	-88(%rbp), %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	jle	.LBB0_20
.LBB0_19:                               # %if.then.49
	movabsq	$.L.str.1, %rdi
	movq	-16(%rbp), %rsi
	callq	signal_error
.LBB0_20:                               # %if.end.50
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, -32(%rbp)
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	movq	%rax, -48(%rbp)
	movq	-88(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	marker_byte_position
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	set_point_both
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, -40(%rbp)
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	movq	%rax, -56(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)
.LBB0_21:                               # %if.end.58
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB0_32
# BB#22:                                # %if.then.62
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-200(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB0_25
# BB#23:                                # %land.lhs.true.67
	testb	$1, globals+3421
	jne	.LBB0_25
# BB#24:                                # %if.then.69
	movl	$770, %edi              # imm = 0x302
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
.LBB0_25:                               # %if.end.72
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB0_28
# BB#26:                                # %land.lhs.true.77
	testb	$1, globals+3423
	jne	.LBB0_28
# BB#27:                                # %if.then.79
	movl	$772, %edi              # imm = 0x304
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
.LBB0_28:                               # %if.end.82
	cmpq	$0, print_buffer
	je	.LBB0_30
# BB#29:                                # %if.then.85
	movq	print_buffer, %rdi
	movq	print_buffer_pos, %rsi
	movq	print_buffer_pos_byte, %rdx
	callq	make_string_from_bytes
	movabsq	$print_unwind, %rdi
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rsi
	callq	record_unwind_protect
	jmp	.LBB0_31
.LBB0_30:                               # %if.else
	movl	$1000, -100(%rbp)       # imm = 0x3E8
	movslq	-100(%rbp), %rdi
	callq	xmalloc
	movq	%rax, print_buffer
	movslq	-100(%rbp), %rax
	movq	%rax, print_buffer_size
	movb	$1, -65(%rbp)
.LBB0_31:                               # %if.end.90
	movq	$0, print_buffer_pos
	movq	$0, print_buffer_pos_byte
.LBB0_32:                               # %if.end.91
	movl	$901, %edi              # imm = 0x385
	movq	-16(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-232(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB0_35
# BB#33:                                # %land.lhs.true.95
	testb	$1, noninteractive
	jne	.LBB0_35
# BB#34:                                # %if.then.97
	movb	-66(%rbp), %al
	andb	$1, %al
	movzbl	%al, %edi
	callq	setup_echo_area_for_printing
.LBB0_35:                               # %if.end.99
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movq	-16(%rbp), %rsi
	movl	%ecx, %edi
	callq	printchar
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-240(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB0_48
# BB#36:                                # %if.then.104
	movq	print_buffer_pos, %rax
	cmpq	print_buffer_pos_byte, %rax
	je	.LBB0_46
# BB#37:                                # %land.lhs.true.107
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-248(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB0_46
# BB#38:                                # %if.then.112
	movq	$16384, -112(%rbp)      # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -120(%rbp)
	movb	$0, -121(%rbp)
	movq	print_buffer_pos, %rax
	addq	$1, %rax
	cmpq	-112(%rbp), %rax
	jg	.LBB0_40
# BB#39:                                # %cond.true.117
	movq	print_buffer_pos(%rip), %rax
	incq	%rax
	movq	-112(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -112(%rbp)
	movq	print_buffer_pos(%rip), %rax
	addq	$16, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	jmp	.LBB0_41
.LBB0_40:                               # %cond.false.120
	movb	$1, -121(%rbp)
	movq	print_buffer_pos, %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	record_xmalloc
	movq	%rax, -256(%rbp)        # 8-byte Spill
.LBB0_41:                               # %cond.end.123
	movq	-256(%rbp), %rax        # 8-byte Reload
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	%rax, -136(%rbp)
	movq	print_buffer, %rdi
	movq	-136(%rbp), %rsi
	movq	print_buffer_pos_byte, %rdx
	callq	copy_text
	xorl	%ecx, %ecx
	movl	$1, %r8d
	movq	-136(%rbp), %rdi
	movq	print_buffer_pos, %rsi
	movq	print_buffer_pos, %rdx
	movl	%ecx, -260(%rbp)        # 4-byte Spill
	movl	-260(%rbp), %r9d        # 4-byte Reload
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	insert_1_both
# BB#42:                                # %do.body
	testb	$1, -121(%rbp)
	je	.LBB0_44
# BB#43:                                # %if.then.126
	xorl	%edi, %edi
	movb	$0, -121(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -288(%rbp)        # 8-byte Spill
.LBB0_44:                               # %if.end.129
	jmp	.LBB0_45
.LBB0_45:                               # %do.end
	jmp	.LBB0_47
.LBB0_46:                               # %if.else.130
	xorl	%eax, %eax
	movl	$1, %r8d
	movq	print_buffer, %rdi
	movq	print_buffer_pos, %rsi
	movq	print_buffer_pos_byte, %rdx
	movl	%eax, %ecx
	movl	%eax, %r9d
	callq	insert_1_both
.LBB0_47:                               # %if.end.131
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	current_buffer, %rcx
	movq	736(%rcx), %rcx
	addq	$0, %rcx
	subq	print_buffer_pos, %rcx
	movq	print_buffer_pos, %rdx
	movq	%rcx, %rdi
	callq	signal_after_change
.LBB0_48:                               # %if.end.135
	testb	$1, -65(%rbp)
	je	.LBB0_50
# BB#49:                                # %if.then.137
	movq	print_buffer, %rdi
	callq	xfree
	movq	$0, print_buffer
.LBB0_50:                               # %if.end.138
	xorl	%edi, %edi
	movq	-64(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	-80(%rbp), %rsi
	andq	$7, %rsi
	movl	%esi, %ecx
	cmpl	$1, %ecx
	movq	%rax, -304(%rbp)        # 8-byte Spill
	jne	.LBB0_53
# BB#51:                                # %land.lhs.true.145
	movq	-80(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB0_53
# BB#52:                                # %if.then.149
	xorl	%edi, %edi
	movq	-80(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	current_buffer, %rcx
	movq	736(%rcx), %rcx
	addq	$0, %rcx
	movq	current_buffer, %rdx
	movq	744(%rdx), %rdx
	addq	$0, %rdx
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movq	%rdx, -320(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-320(%rbp), %rcx        # 8-byte Reload
	callq	set_marker_both
	movq	%rax, -328(%rbp)        # 8-byte Spill
.LBB0_53:                               # %if.end.156
	cmpq	$0, -32(%rbp)
	jl	.LBB0_61
# BB#54:                                # %if.then.159
	movq	-32(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	-40(%rbp), %rcx
	movq	%rax, -336(%rbp)        # 8-byte Spill
	jl	.LBB0_56
# BB#55:                                # %cond.true.162
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	subq	-40(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	jmp	.LBB0_57
.LBB0_56:                               # %cond.false.166
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -344(%rbp)        # 8-byte Spill
	jmp	.LBB0_57
.LBB0_57:                               # %cond.end.167
	movq	-344(%rbp), %rax        # 8-byte Reload
	movq	-336(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	movq	-48(%rbp), %rax
	movq	-48(%rbp), %rdx
	cmpq	-56(%rbp), %rdx
	movq	%rcx, -352(%rbp)        # 8-byte Spill
	movq	%rax, -360(%rbp)        # 8-byte Spill
	jl	.LBB0_59
# BB#58:                                # %cond.true.172
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	subq	-56(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	jmp	.LBB0_60
.LBB0_59:                               # %cond.false.176
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	jmp	.LBB0_60
.LBB0_60:                               # %cond.end.177
	movq	-368(%rbp), %rax        # 8-byte Reload
	movq	-360(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, %rsi
	callq	set_point_both
.LBB0_61:                               # %if.end.180
	movq	-24(%rbp), %rdi
	callq	set_buffer_internal
	movq	-8(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	Fwrite_char, .Lfunc_end0-Fwrite_char
	.cfi_endproc

	.align	16, 0x90
	.type	print_unwind,@function
print_unwind:                           # @print_unwind
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
	movq	print_buffer, %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	SDATA
	movq	-8(%rbp), %rdi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	SCHARS
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	memcpy
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	print_unwind, .Lfunc_end1-print_unwind
	.cfi_endproc

	.align	16, 0x90
	.type	printchar,@function
printchar:                              # @printchar
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
	xorl	%eax, %eax
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movl	%eax, %edi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB2_3
# BB#1:                                 # %land.lhs.true
	movl	$901, %edi              # imm = 0x385
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB2_3
# BB#2:                                 # %if.then
	movq	-16(%rbp), %rdi
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, %rsi
	callq	call1
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB2_40
.LBB2_3:                                # %if.else
	movb	$1, %al
	testb	$1, %al
	jne	.LBB2_4
	jmp	.LBB2_5
.LBB2_4:                                # %cond.true
	movl	-4(%rbp), %eax
	addl	$0, %eax
	cmpl	$127, %eax
	jbe	.LBB2_6
	jmp	.LBB2_7
.LBB2_5:                                # %cond.false
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	cmpq	$127, %rcx
	ja	.LBB2_7
.LBB2_6:                                # %cond.true.11
	movl	$1, %eax
	movl	-4(%rbp), %ecx
	movb	%cl, %dl
	movb	%dl, -21(%rbp)
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB2_18
.LBB2_7:                                # %cond.false.13
	movb	$1, %al
	testb	$1, %al
	jne	.LBB2_8
	jmp	.LBB2_9
.LBB2_8:                                # %cond.true.14
	movl	-4(%rbp), %eax
	addl	$0, %eax
	cmpl	$2047, %eax             # imm = 0x7FF
	jbe	.LBB2_10
	jmp	.LBB2_11
.LBB2_9:                                # %cond.false.18
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	cmpq	$2047, %rcx             # imm = 0x7FF
	ja	.LBB2_11
.LBB2_10:                               # %cond.true.23
	movl	$2, %eax
	movl	-4(%rbp), %ecx
	shrl	$6, %ecx
	orl	$192, %ecx
	movb	%cl, %dl
	movb	%dl, -21(%rbp)
	movl	-4(%rbp), %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movb	%dl, -20(%rbp)
	movl	%eax, -80(%rbp)         # 4-byte Spill
	jmp	.LBB2_17
.LBB2_11:                               # %cond.false.29
	movb	$1, %al
	testb	$1, %al
	jne	.LBB2_12
	jmp	.LBB2_13
.LBB2_12:                               # %cond.true.30
	movl	-4(%rbp), %eax
	addl	$0, %eax
	cmpl	$65535, %eax            # imm = 0xFFFF
	jbe	.LBB2_14
	jmp	.LBB2_15
.LBB2_13:                               # %cond.false.34
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	cmpq	$65535, %rcx            # imm = 0xFFFF
	ja	.LBB2_15
.LBB2_14:                               # %cond.true.39
	movl	$3, %eax
	movl	-4(%rbp), %ecx
	shrl	$12, %ecx
	orl	$224, %ecx
	movb	%cl, %dl
	movb	%dl, -21(%rbp)
	movl	-4(%rbp), %ecx
	shrl	$6, %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movb	%dl, -20(%rbp)
	movl	-4(%rbp), %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movb	%dl, -19(%rbp)
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jmp	.LBB2_16
.LBB2_15:                               # %cond.false.53
	leaq	-21(%rbp), %rsi
	movl	-4(%rbp), %edi
	callq	char_string
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB2_16:                               # %cond.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	movl	%eax, -80(%rbp)         # 4-byte Spill
.LBB2_17:                               # %cond.end.55
	movl	-80(%rbp), %eax         # 4-byte Reload
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB2_18:                               # %cond.end.57
	movl	-76(%rbp), %eax         # 4-byte Reload
	movl	%eax, -28(%rbp)
# BB#19:                                # %do.body
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB2_22
# BB#20:                                # %land.lhs.true.62
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB2_22
# BB#21:                                # %if.then.66
	callq	process_quit_flag
	jmp	.LBB2_25
.LBB2_22:                               # %if.else.67
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB2_24
# BB#23:                                # %if.then.68
	callq	process_pending_signals
.LBB2_24:                               # %if.end
	jmp	.LBB2_25
.LBB2_25:                               # %if.end.69
	jmp	.LBB2_26
.LBB2_26:                               # %do.end
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB2_30
# BB#27:                                # %if.then.73
	movslq	-28(%rbp), %rax
	movq	print_buffer_size, %rcx
	subq	print_buffer_pos_byte, %rcx
	subq	%rcx, %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jle	.LBB2_29
# BB#28:                                # %if.then.78
	movabsq	$print_buffer_size, %rsi
	movq	$-1, %rcx
	movl	$1, %eax
	movl	%eax, %r8d
	movq	print_buffer, %rdi
	movq	-40(%rbp), %rdx
	callq	xpalloc
	movq	%rax, print_buffer
.LBB2_29:                               # %if.end.80
	leaq	-21(%rbp), %rax
	movq	print_buffer, %rcx
	addq	print_buffer_pos_byte, %rcx
	movslq	-28(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	memcpy
	movq	print_buffer_pos, %rax
	addq	$1, %rax
	movq	%rax, print_buffer_pos
	movslq	-28(%rbp), %rax
	addq	print_buffer_pos_byte, %rax
	movq	%rax, print_buffer_pos_byte
	jmp	.LBB2_39
.LBB2_30:                               # %if.else.85
	testb	$1, noninteractive
	je	.LBB2_37
# BB#31:                                # %if.then.87
	movl	-4(%rbp), %eax
	movl	%eax, printchar_stdout_last
	movq	globals+2200, %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB2_32
	jmp	.LBB2_35
.LBB2_32:                               # %land.lhs.true.90
	movq	globals+2200, %rdi
	callq	XCHAR_TABLE
	movl	$346, %edi              # imm = 0x15A
	movq	24(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB2_35
# BB#33:                                # %land.lhs.true.95
	movq	globals+2200, %rdi
	callq	XCHAR_TABLE
	movq	%rax, %rdi
	callq	CHAR_TABLE_EXTRA_SLOTS
	cmpl	$6, %eax
	jne	.LBB2_35
# BB#34:                                # %if.then.100
	movl	-4(%rbp), %edi
	movq	stdout, %rsi
	callq	printchar_to_stream
	jmp	.LBB2_36
.LBB2_35:                               # %if.else.101
	movl	$1, %eax
	movl	%eax, %esi
	leaq	-21(%rbp), %rdi
	movslq	-28(%rbp), %rdx
	movq	stdout, %rcx
	callq	fwrite
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB2_36:                               # %if.end.105
	movb	$1, noninteractive_need_newline
	jmp	.LBB2_38
.LBB2_37:                               # %if.else.106
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
	movb	%dl, -41(%rbp)
	movb	-41(%rbp), %dl
	andb	$1, %dl
	movzbl	%dl, %edi
	callq	setup_echo_area_for_printing
	movl	-4(%rbp), %edi
	callq	insert_char
	xorl	%edx, %edx
	leaq	-21(%rbp), %rdi
	movslq	-28(%rbp), %rsi
	movb	-41(%rbp), %r8b
	andb	$1, %r8b
	movzbl	%r8b, %ecx
	callq	message_dolog
.LBB2_38:                               # %if.end.114
	jmp	.LBB2_39
.LBB2_39:                               # %if.end.115
	jmp	.LBB2_40
.LBB2_40:                               # %if.end.116
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	printchar, .Lfunc_end2-printchar
	.cfi_endproc

	.globl	write_string
	.align	16, 0x90
	.type	write_string,@function
write_string:                           # @write_string
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	globals+2216, %rsi
	callq	write_string_1
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	write_string, .Lfunc_end3-write_string
	.cfi_endproc

	.align	16, 0x90
	.type	write_string_1,@function
write_string_1:                         # @write_string_1
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
	subq	$352, %rsp              # imm = 0x160
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	current_buffer, %rsi
	movq	%rsi, -24(%rbp)
	movq	$-1, -32(%rbp)
	movq	$-1, -40(%rbp)
	movq	$-1, -48(%rbp)
	movq	$-1, -56(%rbp)
	callq	SPECPDL_INDEX
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)
	movb	$0, -65(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-144(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movb	%cl, -66(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)
.LBB4_2:                                # %if.end
	movq	-16(%rbp), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB4_3
	jmp	.LBB4_6
.LBB4_3:                                # %if.then.6
	movq	-16(%rbp), %rdi
	callq	XBUFFER
	cmpq	current_buffer, %rax
	je	.LBB4_5
# BB#4:                                 # %if.then.9
	movq	-16(%rbp), %rdi
	callq	Fset_buffer
	movq	%rax, -160(%rbp)        # 8-byte Spill
.LBB4_5:                                # %if.end.11
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)
.LBB4_6:                                # %if.end.13
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB4_16
# BB#7:                                 # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB4_16
# BB#8:                                 # %if.then.19
	movq	-16(%rbp), %rdi
	callq	XMARKER
	cmpq	$0, 8(%rax)
	jne	.LBB4_10
# BB#9:                                 # %if.then.21
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	error
.LBB4_10:                               # %if.end.22
	movq	-16(%rbp), %rdi
	callq	XMARKER
	movq	8(%rax), %rax
	cmpq	current_buffer, %rax
	je	.LBB4_12
# BB#11:                                # %if.then.27
	movq	-16(%rbp), %rdi
	callq	XMARKER
	movq	8(%rax), %rdi
	callq	set_buffer_internal
.LBB4_12:                               # %if.end.30
	movq	-16(%rbp), %rdi
	callq	marker_position
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	current_buffer, %rdi
	cmpq	752(%rdi), %rax
	jl	.LBB4_14
# BB#13:                                # %lor.lhs.false
	movq	-88(%rbp), %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	jle	.LBB4_15
.LBB4_14:                               # %if.then.36
	movabsq	$.L.str.1, %rdi
	movq	-16(%rbp), %rsi
	callq	signal_error
.LBB4_15:                               # %if.end.37
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, -32(%rbp)
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	movq	%rax, -48(%rbp)
	movq	-88(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	marker_byte_position
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	set_point_both
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, -40(%rbp)
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	movq	%rax, -56(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)
.LBB4_16:                               # %if.end.45
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB4_27
# BB#17:                                # %if.then.49
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB4_20
# BB#18:                                # %land.lhs.true.54
	testb	$1, globals+3421
	jne	.LBB4_20
# BB#19:                                # %if.then.56
	movl	$770, %edi              # imm = 0x302
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
.LBB4_20:                               # %if.end.59
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-200(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB4_23
# BB#21:                                # %land.lhs.true.64
	testb	$1, globals+3423
	jne	.LBB4_23
# BB#22:                                # %if.then.66
	movl	$772, %edi              # imm = 0x304
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
.LBB4_23:                               # %if.end.69
	cmpq	$0, print_buffer
	je	.LBB4_25
# BB#24:                                # %if.then.72
	movq	print_buffer, %rdi
	movq	print_buffer_pos, %rsi
	movq	print_buffer_pos_byte, %rdx
	callq	make_string_from_bytes
	movabsq	$print_unwind, %rdi
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rsi
	callq	record_unwind_protect
	jmp	.LBB4_26
.LBB4_25:                               # %if.else
	movl	$1000, -100(%rbp)       # imm = 0x3E8
	movslq	-100(%rbp), %rdi
	callq	xmalloc
	movq	%rax, print_buffer
	movslq	-100(%rbp), %rax
	movq	%rax, print_buffer_size
	movb	$1, -65(%rbp)
.LBB4_26:                               # %if.end.77
	movq	$0, print_buffer_pos
	movq	$0, print_buffer_pos_byte
.LBB4_27:                               # %if.end.78
	movl	$901, %edi              # imm = 0x385
	movq	-16(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB4_30
# BB#28:                                # %land.lhs.true.82
	testb	$1, noninteractive
	jne	.LBB4_30
# BB#29:                                # %if.then.84
	movb	-66(%rbp), %al
	andb	$1, %al
	movzbl	%al, %edi
	callq	setup_echo_area_for_printing
.LBB4_30:                               # %if.end.86
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	print_c_string
	xorl	%edi, %edi
	movq	-16(%rbp), %rsi
	movq	%rsi, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB4_43
# BB#31:                                # %if.then.90
	movq	print_buffer_pos, %rax
	cmpq	print_buffer_pos_byte, %rax
	je	.LBB4_41
# BB#32:                                # %land.lhs.true.93
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-232(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB4_41
# BB#33:                                # %if.then.98
	movq	$16384, -112(%rbp)      # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -120(%rbp)
	movb	$0, -121(%rbp)
	movq	print_buffer_pos, %rax
	addq	$1, %rax
	cmpq	-112(%rbp), %rax
	jg	.LBB4_35
# BB#34:                                # %cond.true
	movq	print_buffer_pos(%rip), %rax
	incq	%rax
	movq	-112(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -112(%rbp)
	movq	print_buffer_pos(%rip), %rax
	addq	$16, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	jmp	.LBB4_36
.LBB4_35:                               # %cond.false
	movb	$1, -121(%rbp)
	movq	print_buffer_pos, %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	record_xmalloc
	movq	%rax, -240(%rbp)        # 8-byte Spill
.LBB4_36:                               # %cond.end
	movq	-240(%rbp), %rax        # 8-byte Reload
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	%rax, -136(%rbp)
	movq	print_buffer, %rdi
	movq	-136(%rbp), %rsi
	movq	print_buffer_pos_byte, %rdx
	callq	copy_text
	xorl	%ecx, %ecx
	movl	$1, %r8d
	movq	-136(%rbp), %rdi
	movq	print_buffer_pos, %rsi
	movq	print_buffer_pos, %rdx
	movl	%ecx, -244(%rbp)        # 4-byte Spill
	movl	-244(%rbp), %r9d        # 4-byte Reload
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	insert_1_both
# BB#37:                                # %do.body
	testb	$1, -121(%rbp)
	je	.LBB4_39
# BB#38:                                # %if.then.109
	xorl	%edi, %edi
	movb	$0, -121(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -272(%rbp)        # 8-byte Spill
.LBB4_39:                               # %if.end.112
	jmp	.LBB4_40
.LBB4_40:                               # %do.end
	jmp	.LBB4_42
.LBB4_41:                               # %if.else.113
	xorl	%eax, %eax
	movl	$1, %r8d
	movq	print_buffer, %rdi
	movq	print_buffer_pos, %rsi
	movq	print_buffer_pos_byte, %rdx
	movl	%eax, %ecx
	movl	%eax, %r9d
	callq	insert_1_both
.LBB4_42:                               # %if.end.114
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	current_buffer, %rcx
	movq	736(%rcx), %rcx
	addq	$0, %rcx
	subq	print_buffer_pos, %rcx
	movq	print_buffer_pos, %rdx
	movq	%rcx, %rdi
	callq	signal_after_change
.LBB4_43:                               # %if.end.118
	testb	$1, -65(%rbp)
	je	.LBB4_45
# BB#44:                                # %if.then.120
	movq	print_buffer, %rdi
	callq	xfree
	movq	$0, print_buffer
.LBB4_45:                               # %if.end.121
	xorl	%edi, %edi
	movq	-64(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	-80(%rbp), %rsi
	andq	$7, %rsi
	movl	%esi, %ecx
	cmpl	$1, %ecx
	movq	%rax, -288(%rbp)        # 8-byte Spill
	jne	.LBB4_48
# BB#46:                                # %land.lhs.true.128
	movq	-80(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB4_48
# BB#47:                                # %if.then.132
	xorl	%edi, %edi
	movq	-80(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	current_buffer, %rcx
	movq	736(%rcx), %rcx
	addq	$0, %rcx
	movq	current_buffer, %rdx
	movq	744(%rdx), %rdx
	addq	$0, %rdx
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movq	%rdx, -304(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-304(%rbp), %rcx        # 8-byte Reload
	callq	set_marker_both
	movq	%rax, -312(%rbp)        # 8-byte Spill
.LBB4_48:                               # %if.end.139
	cmpq	$0, -32(%rbp)
	jl	.LBB4_56
# BB#49:                                # %if.then.142
	movq	-32(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	-40(%rbp), %rcx
	movq	%rax, -320(%rbp)        # 8-byte Spill
	jl	.LBB4_51
# BB#50:                                # %cond.true.145
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	subq	-40(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	jmp	.LBB4_52
.LBB4_51:                               # %cond.false.149
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -328(%rbp)        # 8-byte Spill
	jmp	.LBB4_52
.LBB4_52:                               # %cond.end.150
	movq	-328(%rbp), %rax        # 8-byte Reload
	movq	-320(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	movq	-48(%rbp), %rax
	movq	-48(%rbp), %rdx
	cmpq	-56(%rbp), %rdx
	movq	%rcx, -336(%rbp)        # 8-byte Spill
	movq	%rax, -344(%rbp)        # 8-byte Spill
	jl	.LBB4_54
# BB#53:                                # %cond.true.155
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	subq	-56(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	jmp	.LBB4_55
.LBB4_54:                               # %cond.false.159
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -352(%rbp)        # 8-byte Spill
	jmp	.LBB4_55
.LBB4_55:                               # %cond.end.160
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	-344(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, %rsi
	callq	set_point_both
.LBB4_56:                               # %if.end.163
	movq	-24(%rbp), %rdi
	callq	set_buffer_internal
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	write_string_1, .Lfunc_end4-write_string_1
	.cfi_endproc

	.globl	temp_output_buffer_setup
	.align	16, 0x90
	.type	temp_output_buffer_setup,@function
temp_output_buffer_setup:               # @temp_output_buffer_setup
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	callq	SPECPDL_INDEX
	movq	%rax, -16(%rbp)
	movq	current_buffer, %rax
	movq	%rax, -24(%rbp)
	callq	record_unwind_current_buffer
	movq	-8(%rbp), %rdi
	callq	build_string
	movq	%rax, %rdi
	callq	Fget_buffer_create
	movq	%rax, %rdi
	callq	Fset_buffer
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	Fkill_all_local_variables
	movq	current_buffer, %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	delete_all_overlays
	movq	current_buffer, %rdi
	movq	-24(%rbp), %rax
	movq	24(%rax), %rsi
	callq	bset_directory
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_read_only
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_filename
	movl	$901, %edi              # imm = 0x385
	movq	current_buffer, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_undo_list
	movq	current_buffer, %rdi
	movq	buffer_defaults+312, %rsi
	callq	bset_enable_multibyte_characters
	movl	$547, %edi              # imm = 0x223
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
	movl	$544, %edi              # imm = 0x220
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
	callq	Ferase_buffer
	movl	$5, %esi
	movq	current_buffer, %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	make_lisp_ptr
	movl	$904, %edi              # imm = 0x388
	movq	%rax, -32(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	run_hook
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movl	$871, %edi              # imm = 0x367
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	specbind
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	temp_output_buffer_setup, .Lfunc_end5-temp_output_buffer_setup
	.cfi_endproc

	.globl	Fterpri
	.align	16, 0x90
	.type	Fterpri,@function
Fterpri:                                # @Fterpri
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
	subq	$416, %rsp              # imm = 0x1A0
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movl	%eax, %edi
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movq	globals+2216, %rax
	movq	%rax, -8(%rbp)
.LBB6_2:                                # %if.end
	movq	current_buffer, %rax
	movq	%rax, -32(%rbp)
	movq	$-1, -40(%rbp)
	movq	$-1, -48(%rbp)
	movq	$-1, -56(%rbp)
	movq	$-1, -64(%rbp)
	callq	SPECPDL_INDEX
	xorl	%edi, %edi
	movq	%rax, -72(%rbp)
	movb	$0, -73(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-160(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	andb	$1, %dl
	movb	%dl, -74(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB6_4
# BB#3:                                 # %if.then.6
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB6_4:                                # %if.end.8
	movq	-8(%rbp), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB6_5
	jmp	.LBB6_8
.LBB6_5:                                # %if.then.10
	movq	-8(%rbp), %rdi
	callq	XBUFFER
	cmpq	current_buffer, %rax
	je	.LBB6_7
# BB#6:                                 # %if.then.13
	movq	-8(%rbp), %rdi
	callq	Fset_buffer
	movq	%rax, -176(%rbp)        # 8-byte Spill
.LBB6_7:                                # %if.end.15
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB6_8:                                # %if.end.17
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB6_18
# BB#9:                                 # %land.lhs.true
	movq	-8(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB6_18
# BB#10:                                # %if.then.23
	movq	-8(%rbp), %rdi
	callq	XMARKER
	cmpq	$0, 8(%rax)
	jne	.LBB6_12
# BB#11:                                # %if.then.25
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	error
.LBB6_12:                               # %if.end.26
	movq	-8(%rbp), %rdi
	callq	XMARKER
	movq	8(%rax), %rax
	cmpq	current_buffer, %rax
	je	.LBB6_14
# BB#13:                                # %if.then.31
	movq	-8(%rbp), %rdi
	callq	XMARKER
	movq	8(%rax), %rdi
	callq	set_buffer_internal
.LBB6_14:                               # %if.end.34
	movq	-8(%rbp), %rdi
	callq	marker_position
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	current_buffer, %rdi
	cmpq	752(%rdi), %rax
	jl	.LBB6_16
# BB#15:                                # %lor.lhs.false
	movq	-96(%rbp), %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	jle	.LBB6_17
.LBB6_16:                               # %if.then.40
	movabsq	$.L.str.1, %rdi
	movq	-8(%rbp), %rsi
	callq	signal_error
.LBB6_17:                               # %if.end.41
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, -40(%rbp)
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	movq	%rax, -56(%rbp)
	movq	-96(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	marker_byte_position
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	set_point_both
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, -48(%rbp)
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	movq	%rax, -64(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB6_18:                               # %if.end.49
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB6_29
# BB#19:                                # %if.then.53
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-200(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB6_22
# BB#20:                                # %land.lhs.true.58
	testb	$1, globals+3421
	jne	.LBB6_22
# BB#21:                                # %if.then.60
	movl	$770, %edi              # imm = 0x302
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
.LBB6_22:                               # %if.end.63
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB6_25
# BB#23:                                # %land.lhs.true.68
	testb	$1, globals+3423
	jne	.LBB6_25
# BB#24:                                # %if.then.70
	movl	$772, %edi              # imm = 0x304
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
.LBB6_25:                               # %if.end.73
	cmpq	$0, print_buffer
	je	.LBB6_27
# BB#26:                                # %if.then.76
	movq	print_buffer, %rdi
	movq	print_buffer_pos, %rsi
	movq	print_buffer_pos_byte, %rdx
	callq	make_string_from_bytes
	movabsq	$print_unwind, %rdi
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rsi
	callq	record_unwind_protect
	jmp	.LBB6_28
.LBB6_27:                               # %if.else
	movl	$1000, -108(%rbp)       # imm = 0x3E8
	movslq	-108(%rbp), %rdi
	callq	xmalloc
	movq	%rax, print_buffer
	movslq	-108(%rbp), %rax
	movq	%rax, print_buffer_size
	movb	$1, -73(%rbp)
.LBB6_28:                               # %if.end.81
	movq	$0, print_buffer_pos
	movq	$0, print_buffer_pos_byte
.LBB6_29:                               # %if.end.82
	movl	$901, %edi              # imm = 0x385
	movq	-8(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-232(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB6_32
# BB#30:                                # %land.lhs.true.86
	testb	$1, noninteractive
	jne	.LBB6_32
# BB#31:                                # %if.then.88
	movb	-74(%rbp), %al
	andb	$1, %al
	movzbl	%al, %edi
	callq	setup_echo_area_for_printing
.LBB6_32:                               # %if.end.90
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-240(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB6_34
# BB#33:                                # %if.then.94
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -24(%rbp)
	jmp	.LBB6_48
.LBB6_34:                               # %if.else.96
	movq	-8(%rbp), %rdi
	callq	FUNCTIONP
	testb	$1, %al
	jne	.LBB6_35
	jmp	.LBB6_36
.LBB6_35:                               # %if.then.98
	movabsq	$.L.str.2, %rdi
	movq	-8(%rbp), %rsi
	callq	signal_error
.LBB6_36:                               # %if.else.99
	testb	$1, noninteractive
	je	.LBB6_42
# BB#37:                                # %land.lhs.true.102
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-248(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB6_42
# BB#38:                                # %if.then.106
	cmpl	$10, printchar_stdout_last
	jne	.LBB6_40
# BB#39:                                # %cond.true
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -256(%rbp)        # 8-byte Spill
	jmp	.LBB6_41
.LBB6_40:                               # %cond.false
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -256(%rbp)        # 8-byte Spill
.LBB6_41:                               # %cond.end
	movq	-256(%rbp), %rax        # 8-byte Reload
	movq	%rax, -24(%rbp)
	jmp	.LBB6_46
.LBB6_42:                               # %if.else.111
	callq	Fbolp
	xorl	%edi, %edi
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-264(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB6_44
# BB#43:                                # %cond.true.116
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -272(%rbp)        # 8-byte Spill
	jmp	.LBB6_45
.LBB6_44:                               # %cond.false.118
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -272(%rbp)        # 8-byte Spill
.LBB6_45:                               # %cond.end.120
	movq	-272(%rbp), %rax        # 8-byte Reload
	movq	%rax, -24(%rbp)
.LBB6_46:                               # %if.end.122
	jmp	.LBB6_47
.LBB6_47:                               # %if.end.123
	jmp	.LBB6_48
.LBB6_48:                               # %if.end.124
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-280(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB6_50
# BB#49:                                # %if.then.128
	movl	$10, %edi
	movq	-8(%rbp), %rsi
	callq	printchar
.LBB6_50:                               # %if.end.129
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-288(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB6_63
# BB#51:                                # %if.then.133
	movq	print_buffer_pos, %rax
	cmpq	print_buffer_pos_byte, %rax
	je	.LBB6_61
# BB#52:                                # %land.lhs.true.136
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-296(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB6_61
# BB#53:                                # %if.then.141
	movq	$16384, -120(%rbp)      # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -128(%rbp)
	movb	$0, -129(%rbp)
	movq	print_buffer_pos, %rax
	addq	$1, %rax
	cmpq	-120(%rbp), %rax
	jg	.LBB6_55
# BB#54:                                # %cond.true.146
	movq	print_buffer_pos(%rip), %rax
	incq	%rax
	movq	-120(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -120(%rbp)
	movq	print_buffer_pos(%rip), %rax
	addq	$16, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -304(%rbp)        # 8-byte Spill
	jmp	.LBB6_56
.LBB6_55:                               # %cond.false.149
	movb	$1, -129(%rbp)
	movq	print_buffer_pos, %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	record_xmalloc
	movq	%rax, -304(%rbp)        # 8-byte Spill
.LBB6_56:                               # %cond.end.152
	movq	-304(%rbp), %rax        # 8-byte Reload
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	%rax, -144(%rbp)
	movq	print_buffer, %rdi
	movq	-144(%rbp), %rsi
	movq	print_buffer_pos_byte, %rdx
	callq	copy_text
	xorl	%ecx, %ecx
	movl	$1, %r8d
	movq	-144(%rbp), %rdi
	movq	print_buffer_pos, %rsi
	movq	print_buffer_pos, %rdx
	movl	%ecx, -308(%rbp)        # 4-byte Spill
	movl	-308(%rbp), %r9d        # 4-byte Reload
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	insert_1_both
# BB#57:                                # %do.body
	testb	$1, -129(%rbp)
	je	.LBB6_59
# BB#58:                                # %if.then.156
	xorl	%edi, %edi
	movb	$0, -129(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -336(%rbp)        # 8-byte Spill
.LBB6_59:                               # %if.end.159
	jmp	.LBB6_60
.LBB6_60:                               # %do.end
	jmp	.LBB6_62
.LBB6_61:                               # %if.else.160
	xorl	%eax, %eax
	movl	$1, %r8d
	movq	print_buffer, %rdi
	movq	print_buffer_pos, %rsi
	movq	print_buffer_pos_byte, %rdx
	movl	%eax, %ecx
	movl	%eax, %r9d
	callq	insert_1_both
.LBB6_62:                               # %if.end.161
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	current_buffer, %rcx
	movq	736(%rcx), %rcx
	addq	$0, %rcx
	subq	print_buffer_pos, %rcx
	movq	print_buffer_pos, %rdx
	movq	%rcx, %rdi
	callq	signal_after_change
.LBB6_63:                               # %if.end.165
	testb	$1, -73(%rbp)
	je	.LBB6_65
# BB#64:                                # %if.then.167
	movq	print_buffer, %rdi
	callq	xfree
	movq	$0, print_buffer
.LBB6_65:                               # %if.end.168
	xorl	%edi, %edi
	movq	-72(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	-88(%rbp), %rsi
	andq	$7, %rsi
	movl	%esi, %ecx
	cmpl	$1, %ecx
	movq	%rax, -352(%rbp)        # 8-byte Spill
	jne	.LBB6_68
# BB#66:                                # %land.lhs.true.175
	movq	-88(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB6_68
# BB#67:                                # %if.then.179
	xorl	%edi, %edi
	movq	-88(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	current_buffer, %rcx
	movq	736(%rcx), %rcx
	addq	$0, %rcx
	movq	current_buffer, %rdx
	movq	744(%rdx), %rdx
	addq	$0, %rdx
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movq	%rdx, -368(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-368(%rbp), %rcx        # 8-byte Reload
	callq	set_marker_both
	movq	%rax, -376(%rbp)        # 8-byte Spill
.LBB6_68:                               # %if.end.186
	cmpq	$0, -40(%rbp)
	jl	.LBB6_76
# BB#69:                                # %if.then.189
	movq	-40(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	-48(%rbp), %rcx
	movq	%rax, -384(%rbp)        # 8-byte Spill
	jl	.LBB6_71
# BB#70:                                # %cond.true.192
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	subq	-48(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	jmp	.LBB6_72
.LBB6_71:                               # %cond.false.196
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -392(%rbp)        # 8-byte Spill
	jmp	.LBB6_72
.LBB6_72:                               # %cond.end.197
	movq	-392(%rbp), %rax        # 8-byte Reload
	movq	-384(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	movq	-56(%rbp), %rax
	movq	-56(%rbp), %rdx
	cmpq	-64(%rbp), %rdx
	movq	%rcx, -400(%rbp)        # 8-byte Spill
	movq	%rax, -408(%rbp)        # 8-byte Spill
	jl	.LBB6_74
# BB#73:                                # %cond.true.202
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	subq	-64(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	jmp	.LBB6_75
.LBB6_74:                               # %cond.false.206
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -416(%rbp)        # 8-byte Spill
	jmp	.LBB6_75
.LBB6_75:                               # %cond.end.207
	movq	-416(%rbp), %rax        # 8-byte Reload
	movq	-408(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, %rsi
	callq	set_point_both
.LBB6_76:                               # %if.end.210
	movq	-32(%rbp), %rdi
	callq	set_buffer_internal
	movq	-24(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	Fterpri, .Lfunc_end6-Fterpri
	.cfi_endproc

	.globl	Fprin1
	.align	16, 0x90
	.type	Fprin1,@function
Fprin1:                                 # @Fprin1
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
	subq	$368, %rsp              # imm = 0x170
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movl	%eax, %edi
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB7_2
# BB#1:                                 # %if.then
	movq	globals+2216, %rax
	movq	%rax, -16(%rbp)
.LBB7_2:                                # %if.end
	movq	current_buffer, %rax
	movq	%rax, -24(%rbp)
	movq	$-1, -32(%rbp)
	movq	$-1, -40(%rbp)
	movq	$-1, -48(%rbp)
	movq	$-1, -56(%rbp)
	callq	SPECPDL_INDEX
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)
	movb	$0, -65(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-152(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	andb	$1, %dl
	movb	%dl, -66(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB7_4
# BB#3:                                 # %if.then.6
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)
.LBB7_4:                                # %if.end.8
	movq	-16(%rbp), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB7_5
	jmp	.LBB7_8
.LBB7_5:                                # %if.then.10
	movq	-16(%rbp), %rdi
	callq	XBUFFER
	cmpq	current_buffer, %rax
	je	.LBB7_7
# BB#6:                                 # %if.then.13
	movq	-16(%rbp), %rdi
	callq	Fset_buffer
	movq	%rax, -168(%rbp)        # 8-byte Spill
.LBB7_7:                                # %if.end.15
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)
.LBB7_8:                                # %if.end.17
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB7_18
# BB#9:                                 # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB7_18
# BB#10:                                # %if.then.23
	movq	-16(%rbp), %rdi
	callq	XMARKER
	cmpq	$0, 8(%rax)
	jne	.LBB7_12
# BB#11:                                # %if.then.25
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	error
.LBB7_12:                               # %if.end.26
	movq	-16(%rbp), %rdi
	callq	XMARKER
	movq	8(%rax), %rax
	cmpq	current_buffer, %rax
	je	.LBB7_14
# BB#13:                                # %if.then.31
	movq	-16(%rbp), %rdi
	callq	XMARKER
	movq	8(%rax), %rdi
	callq	set_buffer_internal
.LBB7_14:                               # %if.end.34
	movq	-16(%rbp), %rdi
	callq	marker_position
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	current_buffer, %rdi
	cmpq	752(%rdi), %rax
	jl	.LBB7_16
# BB#15:                                # %lor.lhs.false
	movq	-88(%rbp), %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	jle	.LBB7_17
.LBB7_16:                               # %if.then.40
	movabsq	$.L.str.1, %rdi
	movq	-16(%rbp), %rsi
	callq	signal_error
.LBB7_17:                               # %if.end.41
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, -32(%rbp)
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	movq	%rax, -48(%rbp)
	movq	-88(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	marker_byte_position
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	set_point_both
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, -40(%rbp)
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	movq	%rax, -56(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)
.LBB7_18:                               # %if.end.49
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB7_29
# BB#19:                                # %if.then.53
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB7_22
# BB#20:                                # %land.lhs.true.58
	testb	$1, globals+3421
	jne	.LBB7_22
# BB#21:                                # %if.then.60
	movl	$770, %edi              # imm = 0x302
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
.LBB7_22:                               # %if.end.63
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB7_25
# BB#23:                                # %land.lhs.true.68
	testb	$1, globals+3423
	jne	.LBB7_25
# BB#24:                                # %if.then.70
	movl	$772, %edi              # imm = 0x304
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
.LBB7_25:                               # %if.end.73
	cmpq	$0, print_buffer
	je	.LBB7_27
# BB#26:                                # %if.then.76
	movq	print_buffer, %rdi
	movq	print_buffer_pos, %rsi
	movq	print_buffer_pos_byte, %rdx
	callq	make_string_from_bytes
	movabsq	$print_unwind, %rdi
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rsi
	callq	record_unwind_protect
	jmp	.LBB7_28
.LBB7_27:                               # %if.else
	movl	$1000, -100(%rbp)       # imm = 0x3E8
	movslq	-100(%rbp), %rdi
	callq	xmalloc
	movq	%rax, print_buffer
	movslq	-100(%rbp), %rax
	movq	%rax, print_buffer_size
	movb	$1, -65(%rbp)
.LBB7_28:                               # %if.end.81
	movq	$0, print_buffer_pos
	movq	$0, print_buffer_pos_byte
.LBB7_29:                               # %if.end.82
	movl	$901, %edi              # imm = 0x385
	movq	-16(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB7_32
# BB#30:                                # %land.lhs.true.86
	testb	$1, noninteractive
	jne	.LBB7_32
# BB#31:                                # %if.then.88
	movb	-66(%rbp), %al
	andb	$1, %al
	movzbl	%al, %edi
	callq	setup_echo_area_for_printing
.LBB7_32:                               # %if.end.90
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	print
	xorl	%edi, %edi
	movq	-16(%rbp), %rsi
	movq	%rsi, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-232(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB7_45
# BB#33:                                # %if.then.94
	movq	print_buffer_pos, %rax
	cmpq	print_buffer_pos_byte, %rax
	je	.LBB7_43
# BB#34:                                # %land.lhs.true.97
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-240(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB7_43
# BB#35:                                # %if.then.102
	movq	$16384, -112(%rbp)      # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -120(%rbp)
	movb	$0, -121(%rbp)
	movq	print_buffer_pos, %rax
	addq	$1, %rax
	cmpq	-112(%rbp), %rax
	jg	.LBB7_37
# BB#36:                                # %cond.true
	movq	print_buffer_pos(%rip), %rax
	incq	%rax
	movq	-112(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -112(%rbp)
	movq	print_buffer_pos(%rip), %rax
	addq	$16, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -248(%rbp)        # 8-byte Spill
	jmp	.LBB7_38
.LBB7_37:                               # %cond.false
	movb	$1, -121(%rbp)
	movq	print_buffer_pos, %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	record_xmalloc
	movq	%rax, -248(%rbp)        # 8-byte Spill
.LBB7_38:                               # %cond.end
	movq	-248(%rbp), %rax        # 8-byte Reload
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	%rax, -136(%rbp)
	movq	print_buffer, %rdi
	movq	-136(%rbp), %rsi
	movq	print_buffer_pos_byte, %rdx
	callq	copy_text
	xorl	%ecx, %ecx
	movl	$1, %r8d
	movq	-136(%rbp), %rdi
	movq	print_buffer_pos, %rsi
	movq	print_buffer_pos, %rdx
	movl	%ecx, -252(%rbp)        # 4-byte Spill
	movl	-252(%rbp), %r9d        # 4-byte Reload
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	insert_1_both
# BB#39:                                # %do.body
	testb	$1, -121(%rbp)
	je	.LBB7_41
# BB#40:                                # %if.then.113
	xorl	%edi, %edi
	movb	$0, -121(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -280(%rbp)        # 8-byte Spill
.LBB7_41:                               # %if.end.116
	jmp	.LBB7_42
.LBB7_42:                               # %do.end
	jmp	.LBB7_44
.LBB7_43:                               # %if.else.117
	xorl	%eax, %eax
	movl	$1, %r8d
	movq	print_buffer, %rdi
	movq	print_buffer_pos, %rsi
	movq	print_buffer_pos_byte, %rdx
	movl	%eax, %ecx
	movl	%eax, %r9d
	callq	insert_1_both
.LBB7_44:                               # %if.end.118
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	current_buffer, %rcx
	movq	736(%rcx), %rcx
	addq	$0, %rcx
	subq	print_buffer_pos, %rcx
	movq	print_buffer_pos, %rdx
	movq	%rcx, %rdi
	callq	signal_after_change
.LBB7_45:                               # %if.end.122
	testb	$1, -65(%rbp)
	je	.LBB7_47
# BB#46:                                # %if.then.124
	movq	print_buffer, %rdi
	callq	xfree
	movq	$0, print_buffer
.LBB7_47:                               # %if.end.125
	xorl	%edi, %edi
	movq	-64(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	-80(%rbp), %rsi
	andq	$7, %rsi
	movl	%esi, %ecx
	cmpl	$1, %ecx
	movq	%rax, -296(%rbp)        # 8-byte Spill
	jne	.LBB7_50
# BB#48:                                # %land.lhs.true.132
	movq	-80(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB7_50
# BB#49:                                # %if.then.136
	xorl	%edi, %edi
	movq	-80(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	current_buffer, %rcx
	movq	736(%rcx), %rcx
	addq	$0, %rcx
	movq	current_buffer, %rdx
	movq	744(%rdx), %rdx
	addq	$0, %rdx
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movq	%rdx, -312(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-312(%rbp), %rcx        # 8-byte Reload
	callq	set_marker_both
	movq	%rax, -320(%rbp)        # 8-byte Spill
.LBB7_50:                               # %if.end.143
	cmpq	$0, -32(%rbp)
	jl	.LBB7_58
# BB#51:                                # %if.then.146
	movq	-32(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	-40(%rbp), %rcx
	movq	%rax, -328(%rbp)        # 8-byte Spill
	jl	.LBB7_53
# BB#52:                                # %cond.true.149
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	subq	-40(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	jmp	.LBB7_54
.LBB7_53:                               # %cond.false.153
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -336(%rbp)        # 8-byte Spill
	jmp	.LBB7_54
.LBB7_54:                               # %cond.end.154
	movq	-336(%rbp), %rax        # 8-byte Reload
	movq	-328(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	movq	-48(%rbp), %rax
	movq	-48(%rbp), %rdx
	cmpq	-56(%rbp), %rdx
	movq	%rcx, -344(%rbp)        # 8-byte Spill
	movq	%rax, -352(%rbp)        # 8-byte Spill
	jl	.LBB7_56
# BB#55:                                # %cond.true.159
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	subq	-56(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	jmp	.LBB7_57
.LBB7_56:                               # %cond.false.163
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -360(%rbp)        # 8-byte Spill
	jmp	.LBB7_57
.LBB7_57:                               # %cond.end.164
	movq	-360(%rbp), %rax        # 8-byte Reload
	movq	-352(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, %rsi
	callq	set_point_both
.LBB7_58:                               # %if.end.167
	movq	-24(%rbp), %rdi
	callq	set_buffer_internal
	movq	-8(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	Fprin1, .Lfunc_end7-Fprin1
	.cfi_endproc

	.align	16, 0x90
	.type	print,@function
print:                                  # @print
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
	movb	%dl, %al
	xorl	%edx, %edx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	andb	$1, %al
	movb	%al, -17(%rbp)
	movq	$0, new_backquote_output
	movq	globals+1840, %rsi
	movl	%edx, %edi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB8_2
# BB#1:                                 # %lor.lhs.false
	xorl	%edi, %edi
	movq	globals+1872, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB8_3
.LBB8_2:                                # %if.then
	xorl	%edi, %edi
	movq	$0, print_number_index
	callq	builtin_lisp_symbol
	movq	%rax, globals+1872
.LBB8_3:                                # %if.end
	xorl	%edi, %edi
	movq	globals+1848, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB8_5
# BB#4:                                 # %lor.lhs.false.6
	xorl	%edi, %edi
	movq	globals+1832, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB8_15
.LBB8_5:                                # %if.then.9
	movq	$0, print_depth
	movq	-8(%rbp), %rdi
	callq	print_preprocess
	movq	globals+1872, %rdi
	callq	HASH_TABLE_P
	testb	$1, %al
	jne	.LBB8_6
	jmp	.LBB8_14
.LBB8_6:                                # %if.then.11
	movq	globals+1872, %rdi
	callq	XHASH_TABLE
	movq	%rax, -32(%rbp)
	movq	$0, -40(%rbp)
.LBB8_7:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	HASH_TABLE_SIZE
	movq	-80(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	jge	.LBB8_13
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB8_7 Depth=1
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	HASH_HASH
	xorl	%edi, %edi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB8_11
# BB#9:                                 # %land.lhs.true
                                        #   in Loop: Header=BB8_7 Depth=1
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	HASH_VALUE
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB8_11
# BB#10:                                # %if.then.21
                                        #   in Loop: Header=BB8_7 Depth=1
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	HASH_KEY
	movq	globals+1872, %rsi
	movq	%rax, %rdi
	callq	Fremhash
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB8_11:                               # %if.end.24
                                        #   in Loop: Header=BB8_7 Depth=1
	jmp	.LBB8_12
.LBB8_12:                               # %for.inc
                                        #   in Loop: Header=BB8_7 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB8_7
.LBB8_13:                               # %for.end
	jmp	.LBB8_14
.LBB8_14:                               # %if.end.25
	jmp	.LBB8_15
.LBB8_15:                               # %if.end.26
	movq	$0, print_depth
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movb	-17(%rbp), %al
	andb	$1, %al
	movzbl	%al, %edx
	callq	print_object
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	print, .Lfunc_end8-print
	.cfi_endproc

	.globl	Fprin1_to_string
	.align	16, 0x90
	.type	Fprin1_to_string,@function
Fprin1_to_string:                       # @Fprin1_to_string
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
	subq	$448, %rsp              # imm = 0x1C0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	callq	SPECPDL_INDEX
	movl	$544, %edi              # imm = 0x220
	movq	%rax, -24(%rbp)
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
	movq	globals+416, %rax
	movq	%rax, -32(%rbp)
	movb	abort_on_gc, %cl
	andb	$1, %cl
	movb	%cl, -33(%rbp)
	movb	$1, abort_on_gc
	movq	Vprin1_to_string_buffer, %rax
	movq	%rax, -48(%rbp)
	movq	current_buffer, %rax
	movq	%rax, -56(%rbp)
	movq	$-1, -64(%rbp)
	movq	$-1, -72(%rbp)
	movq	$-1, -80(%rbp)
	movq	$-1, -88(%rbp)
	callq	SPECPDL_INDEX
	xorl	%edi, %edi
	movq	%rax, -96(%rbp)
	movb	$0, -97(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-192(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movb	%cl, -98(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-200(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB9_2
# BB#1:                                 # %if.then
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -48(%rbp)
.LBB9_2:                                # %if.end
	movq	-48(%rbp), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB9_3
	jmp	.LBB9_6
.LBB9_3:                                # %if.then.10
	movq	-48(%rbp), %rdi
	callq	XBUFFER
	cmpq	current_buffer, %rax
	je	.LBB9_5
# BB#4:                                 # %if.then.13
	movq	-48(%rbp), %rdi
	callq	Fset_buffer
	movq	%rax, -208(%rbp)        # 8-byte Spill
.LBB9_5:                                # %if.end.15
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -48(%rbp)
.LBB9_6:                                # %if.end.17
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB9_16
# BB#7:                                 # %land.lhs.true
	movq	-48(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB9_16
# BB#8:                                 # %if.then.23
	movq	-48(%rbp), %rdi
	callq	XMARKER
	cmpq	$0, 8(%rax)
	jne	.LBB9_10
# BB#9:                                 # %if.then.26
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	error
.LBB9_10:                               # %if.end.27
	movq	-48(%rbp), %rdi
	callq	XMARKER
	movq	8(%rax), %rax
	cmpq	current_buffer, %rax
	je	.LBB9_12
# BB#11:                                # %if.then.32
	movq	-48(%rbp), %rdi
	callq	XMARKER
	movq	8(%rax), %rdi
	callq	set_buffer_internal
.LBB9_12:                               # %if.end.35
	movq	-48(%rbp), %rdi
	callq	marker_position
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	current_buffer, %rdi
	cmpq	752(%rdi), %rax
	jl	.LBB9_14
# BB#13:                                # %lor.lhs.false
	movq	-120(%rbp), %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	jle	.LBB9_15
.LBB9_14:                               # %if.then.41
	movabsq	$.L.str.1, %rdi
	movq	-48(%rbp), %rsi
	callq	signal_error
.LBB9_15:                               # %if.end.42
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, -64(%rbp)
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	movq	%rax, -80(%rbp)
	movq	-120(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	marker_byte_position
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	set_point_both
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, -72(%rbp)
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	movq	%rax, -88(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -48(%rbp)
.LBB9_16:                               # %if.end.50
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB9_27
# BB#17:                                # %if.then.54
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-232(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB9_20
# BB#18:                                # %land.lhs.true.59
	testb	$1, globals+3421
	jne	.LBB9_20
# BB#19:                                # %if.then.61
	movl	$770, %edi              # imm = 0x302
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
.LBB9_20:                               # %if.end.64
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-248(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB9_23
# BB#21:                                # %land.lhs.true.69
	testb	$1, globals+3423
	jne	.LBB9_23
# BB#22:                                # %if.then.71
	movl	$772, %edi              # imm = 0x304
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
.LBB9_23:                               # %if.end.74
	cmpq	$0, print_buffer
	je	.LBB9_25
# BB#24:                                # %if.then.77
	movq	print_buffer, %rdi
	movq	print_buffer_pos, %rsi
	movq	print_buffer_pos_byte, %rdx
	callq	make_string_from_bytes
	movabsq	$print_unwind, %rdi
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rsi
	callq	record_unwind_protect
	jmp	.LBB9_26
.LBB9_25:                               # %if.else
	movl	$1000, -132(%rbp)       # imm = 0x3E8
	movslq	-132(%rbp), %rdi
	callq	xmalloc
	movq	%rax, print_buffer
	movslq	-132(%rbp), %rax
	movq	%rax, print_buffer_size
	movb	$1, -97(%rbp)
.LBB9_26:                               # %if.end.82
	movq	$0, print_buffer_pos
	movq	$0, print_buffer_pos_byte
.LBB9_27:                               # %if.end.83
	movl	$901, %edi              # imm = 0x385
	movq	-48(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-264(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB9_30
# BB#28:                                # %land.lhs.true.87
	testb	$1, noninteractive
	jne	.LBB9_30
# BB#29:                                # %if.then.89
	movb	-98(%rbp), %al
	andb	$1, %al
	movzbl	%al, %edi
	callq	setup_echo_area_for_printing
.LBB9_30:                               # %if.end.91
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	-48(%rbp), %rsi
	movq	-16(%rbp), %rcx
	movq	%rcx, -272(%rbp)        # 8-byte Spill
	movq	%rax, -280(%rbp)        # 8-byte Spill
	movq	%rsi, -288(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-272(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	movzbl	%dl, %edi
	andl	$1, %edi
	movq	-280(%rbp), %rax        # 8-byte Reload
	movl	%edi, -292(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	movq	-288(%rbp), %rsi        # 8-byte Reload
	movl	-292(%rbp), %edx        # 4-byte Reload
	callq	print
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-304(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB9_43
# BB#31:                                # %if.then.98
	movq	print_buffer_pos, %rax
	cmpq	print_buffer_pos_byte, %rax
	je	.LBB9_41
# BB#32:                                # %land.lhs.true.101
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-312(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB9_41
# BB#33:                                # %if.then.106
	movq	$16384, -144(%rbp)      # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -152(%rbp)
	movb	$0, -153(%rbp)
	movq	print_buffer_pos, %rax
	addq	$1, %rax
	cmpq	-144(%rbp), %rax
	jg	.LBB9_35
# BB#34:                                # %cond.true
	movq	print_buffer_pos(%rip), %rax
	incq	%rax
	movq	-144(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -144(%rbp)
	movq	print_buffer_pos(%rip), %rax
	addq	$16, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	jmp	.LBB9_36
.LBB9_35:                               # %cond.false
	movb	$1, -153(%rbp)
	movq	print_buffer_pos, %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	record_xmalloc
	movq	%rax, -320(%rbp)        # 8-byte Spill
.LBB9_36:                               # %cond.end
	movq	-320(%rbp), %rax        # 8-byte Reload
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	%rax, -168(%rbp)
	movq	print_buffer, %rdi
	movq	-168(%rbp), %rsi
	movq	print_buffer_pos_byte, %rdx
	callq	copy_text
	xorl	%ecx, %ecx
	movl	$1, %r8d
	movq	-168(%rbp), %rdi
	movq	print_buffer_pos, %rsi
	movq	print_buffer_pos, %rdx
	movl	%ecx, -324(%rbp)        # 4-byte Spill
	movl	-324(%rbp), %r9d        # 4-byte Reload
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	insert_1_both
# BB#37:                                # %do.body
	testb	$1, -153(%rbp)
	je	.LBB9_39
# BB#38:                                # %if.then.117
	xorl	%edi, %edi
	movb	$0, -153(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -352(%rbp)        # 8-byte Spill
.LBB9_39:                               # %if.end.120
	jmp	.LBB9_40
.LBB9_40:                               # %do.end
	jmp	.LBB9_42
.LBB9_41:                               # %if.else.121
	xorl	%eax, %eax
	movl	$1, %r8d
	movq	print_buffer, %rdi
	movq	print_buffer_pos, %rsi
	movq	print_buffer_pos_byte, %rdx
	movl	%eax, %ecx
	movl	%eax, %r9d
	callq	insert_1_both
.LBB9_42:                               # %if.end.122
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	current_buffer, %rcx
	movq	736(%rcx), %rcx
	addq	$0, %rcx
	subq	print_buffer_pos, %rcx
	movq	print_buffer_pos, %rdx
	movq	%rcx, %rdi
	callq	signal_after_change
.LBB9_43:                               # %if.end.126
	testb	$1, -97(%rbp)
	je	.LBB9_45
# BB#44:                                # %if.then.128
	movq	print_buffer, %rdi
	callq	xfree
	movq	$0, print_buffer
.LBB9_45:                               # %if.end.129
	xorl	%edi, %edi
	movq	-96(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	-112(%rbp), %rsi
	andq	$7, %rsi
	movl	%esi, %ecx
	cmpl	$1, %ecx
	movq	%rax, -368(%rbp)        # 8-byte Spill
	jne	.LBB9_48
# BB#46:                                # %land.lhs.true.136
	movq	-112(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB9_48
# BB#47:                                # %if.then.140
	xorl	%edi, %edi
	movq	-112(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	current_buffer, %rcx
	movq	736(%rcx), %rcx
	addq	$0, %rcx
	movq	current_buffer, %rdx
	movq	744(%rdx), %rdx
	addq	$0, %rdx
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movq	%rdx, -384(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-384(%rbp), %rcx        # 8-byte Reload
	callq	set_marker_both
	movq	%rax, -392(%rbp)        # 8-byte Spill
.LBB9_48:                               # %if.end.147
	cmpq	$0, -64(%rbp)
	jl	.LBB9_56
# BB#49:                                # %if.then.150
	movq	-64(%rbp), %rax
	movq	-64(%rbp), %rcx
	cmpq	-72(%rbp), %rcx
	movq	%rax, -400(%rbp)        # 8-byte Spill
	jl	.LBB9_51
# BB#50:                                # %cond.true.153
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	subq	-72(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	jmp	.LBB9_52
.LBB9_51:                               # %cond.false.157
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -408(%rbp)        # 8-byte Spill
	jmp	.LBB9_52
.LBB9_52:                               # %cond.end.158
	movq	-408(%rbp), %rax        # 8-byte Reload
	movq	-400(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	movq	-80(%rbp), %rax
	movq	-80(%rbp), %rdx
	cmpq	-88(%rbp), %rdx
	movq	%rcx, -416(%rbp)        # 8-byte Spill
	movq	%rax, -424(%rbp)        # 8-byte Spill
	jl	.LBB9_54
# BB#53:                                # %cond.true.163
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	subq	-88(%rbp), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	jmp	.LBB9_55
.LBB9_54:                               # %cond.false.167
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -432(%rbp)        # 8-byte Spill
	jmp	.LBB9_55
.LBB9_55:                               # %cond.end.168
	movq	-432(%rbp), %rax        # 8-byte Reload
	movq	-424(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, %rsi
	callq	set_point_both
.LBB9_56:                               # %if.end.171
	movq	-56(%rbp), %rdi
	callq	set_buffer_internal
	movq	current_buffer, %rdi
	movq	%rdi, -176(%rbp)
	movq	Vprin1_to_string_buffer, %rdi
	callq	XBUFFER
	movq	%rax, %rdi
	callq	set_buffer_internal
	callq	Fbuffer_string
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	SBYTES
	movq	-8(%rbp), %rdi
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	SCHARS
	movq	-440(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jne	.LBB9_63
# BB#57:                                # %if.then.178
	jmp	.LBB9_58
.LBB9_58:                               # %do.body.179
	movq	-8(%rbp), %rdi
	callq	XSTRING
	cmpq	$0, (%rax)
	jne	.LBB9_60
# BB#59:                                # %if.then.183
	movq	empty_unibyte_string, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB9_61
.LBB9_60:                               # %if.else.184
	movq	-8(%rbp), %rdi
	callq	XSTRING
	movq	$-1, 8(%rax)
.LBB9_61:                               # %if.end.186
	jmp	.LBB9_62
.LBB9_62:                               # %do.end.187
	jmp	.LBB9_63
.LBB9_63:                               # %if.end.188
	callq	Ferase_buffer
	movq	-176(%rbp), %rdi
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	set_buffer_internal
	movq	-32(%rbp), %rax
	movq	%rax, globals+416
	movb	-33(%rbp), %cl
	andb	$1, %cl
	movb	%cl, abort_on_gc
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	unbind_to
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	Fprin1_to_string, .Lfunc_end9-Fprin1_to_string
	.cfi_endproc

	.globl	Fprinc
	.align	16, 0x90
	.type	Fprinc,@function
Fprinc:                                 # @Fprinc
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
	subq	$368, %rsp              # imm = 0x170
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movl	%eax, %edi
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB10_2
# BB#1:                                 # %if.then
	movq	globals+2216, %rax
	movq	%rax, -16(%rbp)
.LBB10_2:                               # %if.end
	movq	current_buffer, %rax
	movq	%rax, -24(%rbp)
	movq	$-1, -32(%rbp)
	movq	$-1, -40(%rbp)
	movq	$-1, -48(%rbp)
	movq	$-1, -56(%rbp)
	callq	SPECPDL_INDEX
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)
	movb	$0, -65(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-152(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	andb	$1, %dl
	movb	%dl, -66(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB10_4
# BB#3:                                 # %if.then.6
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)
.LBB10_4:                               # %if.end.8
	movq	-16(%rbp), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB10_5
	jmp	.LBB10_8
.LBB10_5:                               # %if.then.10
	movq	-16(%rbp), %rdi
	callq	XBUFFER
	cmpq	current_buffer, %rax
	je	.LBB10_7
# BB#6:                                 # %if.then.13
	movq	-16(%rbp), %rdi
	callq	Fset_buffer
	movq	%rax, -168(%rbp)        # 8-byte Spill
.LBB10_7:                               # %if.end.15
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)
.LBB10_8:                               # %if.end.17
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB10_18
# BB#9:                                 # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB10_18
# BB#10:                                # %if.then.23
	movq	-16(%rbp), %rdi
	callq	XMARKER
	cmpq	$0, 8(%rax)
	jne	.LBB10_12
# BB#11:                                # %if.then.25
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	error
.LBB10_12:                              # %if.end.26
	movq	-16(%rbp), %rdi
	callq	XMARKER
	movq	8(%rax), %rax
	cmpq	current_buffer, %rax
	je	.LBB10_14
# BB#13:                                # %if.then.31
	movq	-16(%rbp), %rdi
	callq	XMARKER
	movq	8(%rax), %rdi
	callq	set_buffer_internal
.LBB10_14:                              # %if.end.34
	movq	-16(%rbp), %rdi
	callq	marker_position
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	current_buffer, %rdi
	cmpq	752(%rdi), %rax
	jl	.LBB10_16
# BB#15:                                # %lor.lhs.false
	movq	-88(%rbp), %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	jle	.LBB10_17
.LBB10_16:                              # %if.then.40
	movabsq	$.L.str.1, %rdi
	movq	-16(%rbp), %rsi
	callq	signal_error
.LBB10_17:                              # %if.end.41
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, -32(%rbp)
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	movq	%rax, -48(%rbp)
	movq	-88(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	marker_byte_position
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	set_point_both
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, -40(%rbp)
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	movq	%rax, -56(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)
.LBB10_18:                              # %if.end.49
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB10_29
# BB#19:                                # %if.then.53
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB10_22
# BB#20:                                # %land.lhs.true.58
	testb	$1, globals+3421
	jne	.LBB10_22
# BB#21:                                # %if.then.60
	movl	$770, %edi              # imm = 0x302
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
.LBB10_22:                              # %if.end.63
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB10_25
# BB#23:                                # %land.lhs.true.68
	testb	$1, globals+3423
	jne	.LBB10_25
# BB#24:                                # %if.then.70
	movl	$772, %edi              # imm = 0x304
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
.LBB10_25:                              # %if.end.73
	cmpq	$0, print_buffer
	je	.LBB10_27
# BB#26:                                # %if.then.76
	movq	print_buffer, %rdi
	movq	print_buffer_pos, %rsi
	movq	print_buffer_pos_byte, %rdx
	callq	make_string_from_bytes
	movabsq	$print_unwind, %rdi
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rsi
	callq	record_unwind_protect
	jmp	.LBB10_28
.LBB10_27:                              # %if.else
	movl	$1000, -100(%rbp)       # imm = 0x3E8
	movslq	-100(%rbp), %rdi
	callq	xmalloc
	movq	%rax, print_buffer
	movslq	-100(%rbp), %rax
	movq	%rax, print_buffer_size
	movb	$1, -65(%rbp)
.LBB10_28:                              # %if.end.81
	movq	$0, print_buffer_pos
	movq	$0, print_buffer_pos_byte
.LBB10_29:                              # %if.end.82
	movl	$901, %edi              # imm = 0x385
	movq	-16(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB10_32
# BB#30:                                # %land.lhs.true.86
	testb	$1, noninteractive
	jne	.LBB10_32
# BB#31:                                # %if.then.88
	movb	-66(%rbp), %al
	andb	$1, %al
	movzbl	%al, %edi
	callq	setup_echo_area_for_printing
.LBB10_32:                              # %if.end.90
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	print
	xorl	%edi, %edi
	movq	-16(%rbp), %rsi
	movq	%rsi, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-232(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB10_45
# BB#33:                                # %if.then.94
	movq	print_buffer_pos, %rax
	cmpq	print_buffer_pos_byte, %rax
	je	.LBB10_43
# BB#34:                                # %land.lhs.true.97
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-240(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB10_43
# BB#35:                                # %if.then.102
	movq	$16384, -112(%rbp)      # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -120(%rbp)
	movb	$0, -121(%rbp)
	movq	print_buffer_pos, %rax
	addq	$1, %rax
	cmpq	-112(%rbp), %rax
	jg	.LBB10_37
# BB#36:                                # %cond.true
	movq	print_buffer_pos(%rip), %rax
	incq	%rax
	movq	-112(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -112(%rbp)
	movq	print_buffer_pos(%rip), %rax
	addq	$16, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -248(%rbp)        # 8-byte Spill
	jmp	.LBB10_38
.LBB10_37:                              # %cond.false
	movb	$1, -121(%rbp)
	movq	print_buffer_pos, %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	record_xmalloc
	movq	%rax, -248(%rbp)        # 8-byte Spill
.LBB10_38:                              # %cond.end
	movq	-248(%rbp), %rax        # 8-byte Reload
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	%rax, -136(%rbp)
	movq	print_buffer, %rdi
	movq	-136(%rbp), %rsi
	movq	print_buffer_pos_byte, %rdx
	callq	copy_text
	xorl	%ecx, %ecx
	movl	$1, %r8d
	movq	-136(%rbp), %rdi
	movq	print_buffer_pos, %rsi
	movq	print_buffer_pos, %rdx
	movl	%ecx, -252(%rbp)        # 4-byte Spill
	movl	-252(%rbp), %r9d        # 4-byte Reload
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	insert_1_both
# BB#39:                                # %do.body
	testb	$1, -121(%rbp)
	je	.LBB10_41
# BB#40:                                # %if.then.113
	xorl	%edi, %edi
	movb	$0, -121(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -280(%rbp)        # 8-byte Spill
.LBB10_41:                              # %if.end.116
	jmp	.LBB10_42
.LBB10_42:                              # %do.end
	jmp	.LBB10_44
.LBB10_43:                              # %if.else.117
	xorl	%eax, %eax
	movl	$1, %r8d
	movq	print_buffer, %rdi
	movq	print_buffer_pos, %rsi
	movq	print_buffer_pos_byte, %rdx
	movl	%eax, %ecx
	movl	%eax, %r9d
	callq	insert_1_both
.LBB10_44:                              # %if.end.118
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	current_buffer, %rcx
	movq	736(%rcx), %rcx
	addq	$0, %rcx
	subq	print_buffer_pos, %rcx
	movq	print_buffer_pos, %rdx
	movq	%rcx, %rdi
	callq	signal_after_change
.LBB10_45:                              # %if.end.122
	testb	$1, -65(%rbp)
	je	.LBB10_47
# BB#46:                                # %if.then.124
	movq	print_buffer, %rdi
	callq	xfree
	movq	$0, print_buffer
.LBB10_47:                              # %if.end.125
	xorl	%edi, %edi
	movq	-64(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	-80(%rbp), %rsi
	andq	$7, %rsi
	movl	%esi, %ecx
	cmpl	$1, %ecx
	movq	%rax, -296(%rbp)        # 8-byte Spill
	jne	.LBB10_50
# BB#48:                                # %land.lhs.true.132
	movq	-80(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB10_50
# BB#49:                                # %if.then.136
	xorl	%edi, %edi
	movq	-80(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	current_buffer, %rcx
	movq	736(%rcx), %rcx
	addq	$0, %rcx
	movq	current_buffer, %rdx
	movq	744(%rdx), %rdx
	addq	$0, %rdx
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movq	%rdx, -312(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-312(%rbp), %rcx        # 8-byte Reload
	callq	set_marker_both
	movq	%rax, -320(%rbp)        # 8-byte Spill
.LBB10_50:                              # %if.end.143
	cmpq	$0, -32(%rbp)
	jl	.LBB10_58
# BB#51:                                # %if.then.146
	movq	-32(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	-40(%rbp), %rcx
	movq	%rax, -328(%rbp)        # 8-byte Spill
	jl	.LBB10_53
# BB#52:                                # %cond.true.149
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	subq	-40(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	jmp	.LBB10_54
.LBB10_53:                              # %cond.false.153
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -336(%rbp)        # 8-byte Spill
	jmp	.LBB10_54
.LBB10_54:                              # %cond.end.154
	movq	-336(%rbp), %rax        # 8-byte Reload
	movq	-328(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	movq	-48(%rbp), %rax
	movq	-48(%rbp), %rdx
	cmpq	-56(%rbp), %rdx
	movq	%rcx, -344(%rbp)        # 8-byte Spill
	movq	%rax, -352(%rbp)        # 8-byte Spill
	jl	.LBB10_56
# BB#55:                                # %cond.true.159
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	subq	-56(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	jmp	.LBB10_57
.LBB10_56:                              # %cond.false.163
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -360(%rbp)        # 8-byte Spill
	jmp	.LBB10_57
.LBB10_57:                              # %cond.end.164
	movq	-360(%rbp), %rax        # 8-byte Reload
	movq	-352(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, %rsi
	callq	set_point_both
.LBB10_58:                              # %if.end.167
	movq	-24(%rbp), %rdi
	callq	set_buffer_internal
	movq	-8(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	Fprinc, .Lfunc_end10-Fprinc
	.cfi_endproc

	.globl	Fprint
	.align	16, 0x90
	.type	Fprint,@function
Fprint:                                 # @Fprint
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
	subq	$368, %rsp              # imm = 0x170
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movl	%eax, %edi
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB11_2
# BB#1:                                 # %if.then
	movq	globals+2216, %rax
	movq	%rax, -16(%rbp)
.LBB11_2:                               # %if.end
	movq	current_buffer, %rax
	movq	%rax, -24(%rbp)
	movq	$-1, -32(%rbp)
	movq	$-1, -40(%rbp)
	movq	$-1, -48(%rbp)
	movq	$-1, -56(%rbp)
	callq	SPECPDL_INDEX
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)
	movb	$0, -65(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-152(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	andb	$1, %dl
	movb	%dl, -66(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB11_4
# BB#3:                                 # %if.then.6
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)
.LBB11_4:                               # %if.end.8
	movq	-16(%rbp), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB11_5
	jmp	.LBB11_8
.LBB11_5:                               # %if.then.10
	movq	-16(%rbp), %rdi
	callq	XBUFFER
	cmpq	current_buffer, %rax
	je	.LBB11_7
# BB#6:                                 # %if.then.13
	movq	-16(%rbp), %rdi
	callq	Fset_buffer
	movq	%rax, -168(%rbp)        # 8-byte Spill
.LBB11_7:                               # %if.end.15
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)
.LBB11_8:                               # %if.end.17
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB11_18
# BB#9:                                 # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB11_18
# BB#10:                                # %if.then.23
	movq	-16(%rbp), %rdi
	callq	XMARKER
	cmpq	$0, 8(%rax)
	jne	.LBB11_12
# BB#11:                                # %if.then.25
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	error
.LBB11_12:                              # %if.end.26
	movq	-16(%rbp), %rdi
	callq	XMARKER
	movq	8(%rax), %rax
	cmpq	current_buffer, %rax
	je	.LBB11_14
# BB#13:                                # %if.then.31
	movq	-16(%rbp), %rdi
	callq	XMARKER
	movq	8(%rax), %rdi
	callq	set_buffer_internal
.LBB11_14:                              # %if.end.34
	movq	-16(%rbp), %rdi
	callq	marker_position
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	current_buffer, %rdi
	cmpq	752(%rdi), %rax
	jl	.LBB11_16
# BB#15:                                # %lor.lhs.false
	movq	-88(%rbp), %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	jle	.LBB11_17
.LBB11_16:                              # %if.then.40
	movabsq	$.L.str.1, %rdi
	movq	-16(%rbp), %rsi
	callq	signal_error
.LBB11_17:                              # %if.end.41
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, -32(%rbp)
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	movq	%rax, -48(%rbp)
	movq	-88(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	marker_byte_position
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	set_point_both
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, -40(%rbp)
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	movq	%rax, -56(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)
.LBB11_18:                              # %if.end.49
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB11_29
# BB#19:                                # %if.then.53
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB11_22
# BB#20:                                # %land.lhs.true.58
	testb	$1, globals+3421
	jne	.LBB11_22
# BB#21:                                # %if.then.60
	movl	$770, %edi              # imm = 0x302
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
.LBB11_22:                              # %if.end.63
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB11_25
# BB#23:                                # %land.lhs.true.68
	testb	$1, globals+3423
	jne	.LBB11_25
# BB#24:                                # %if.then.70
	movl	$772, %edi              # imm = 0x304
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
.LBB11_25:                              # %if.end.73
	cmpq	$0, print_buffer
	je	.LBB11_27
# BB#26:                                # %if.then.76
	movq	print_buffer, %rdi
	movq	print_buffer_pos, %rsi
	movq	print_buffer_pos_byte, %rdx
	callq	make_string_from_bytes
	movabsq	$print_unwind, %rdi
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rsi
	callq	record_unwind_protect
	jmp	.LBB11_28
.LBB11_27:                              # %if.else
	movl	$1000, -100(%rbp)       # imm = 0x3E8
	movslq	-100(%rbp), %rdi
	callq	xmalloc
	movq	%rax, print_buffer
	movslq	-100(%rbp), %rax
	movq	%rax, print_buffer_size
	movb	$1, -65(%rbp)
.LBB11_28:                              # %if.end.81
	movq	$0, print_buffer_pos
	movq	$0, print_buffer_pos_byte
.LBB11_29:                              # %if.end.82
	movl	$901, %edi              # imm = 0x385
	movq	-16(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB11_32
# BB#30:                                # %land.lhs.true.86
	testb	$1, noninteractive
	jne	.LBB11_32
# BB#31:                                # %if.then.88
	movb	-66(%rbp), %al
	andb	$1, %al
	movzbl	%al, %edi
	callq	setup_echo_area_for_printing
.LBB11_32:                              # %if.end.90
	movl	$10, %edi
	movq	-16(%rbp), %rsi
	callq	printchar
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	print
	movl	$10, %edi
	movq	-16(%rbp), %rsi
	callq	printchar
	xorl	%edi, %edi
	movq	-16(%rbp), %rsi
	movq	%rsi, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-232(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB11_45
# BB#33:                                # %if.then.94
	movq	print_buffer_pos, %rax
	cmpq	print_buffer_pos_byte, %rax
	je	.LBB11_43
# BB#34:                                # %land.lhs.true.97
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-240(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB11_43
# BB#35:                                # %if.then.102
	movq	$16384, -112(%rbp)      # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -120(%rbp)
	movb	$0, -121(%rbp)
	movq	print_buffer_pos, %rax
	addq	$1, %rax
	cmpq	-112(%rbp), %rax
	jg	.LBB11_37
# BB#36:                                # %cond.true
	movq	print_buffer_pos(%rip), %rax
	incq	%rax
	movq	-112(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -112(%rbp)
	movq	print_buffer_pos(%rip), %rax
	addq	$16, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -248(%rbp)        # 8-byte Spill
	jmp	.LBB11_38
.LBB11_37:                              # %cond.false
	movb	$1, -121(%rbp)
	movq	print_buffer_pos, %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	record_xmalloc
	movq	%rax, -248(%rbp)        # 8-byte Spill
.LBB11_38:                              # %cond.end
	movq	-248(%rbp), %rax        # 8-byte Reload
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	%rax, -136(%rbp)
	movq	print_buffer, %rdi
	movq	-136(%rbp), %rsi
	movq	print_buffer_pos_byte, %rdx
	callq	copy_text
	xorl	%ecx, %ecx
	movl	$1, %r8d
	movq	-136(%rbp), %rdi
	movq	print_buffer_pos, %rsi
	movq	print_buffer_pos, %rdx
	movl	%ecx, -252(%rbp)        # 4-byte Spill
	movl	-252(%rbp), %r9d        # 4-byte Reload
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	insert_1_both
# BB#39:                                # %do.body
	testb	$1, -121(%rbp)
	je	.LBB11_41
# BB#40:                                # %if.then.113
	xorl	%edi, %edi
	movb	$0, -121(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -280(%rbp)        # 8-byte Spill
.LBB11_41:                              # %if.end.116
	jmp	.LBB11_42
.LBB11_42:                              # %do.end
	jmp	.LBB11_44
.LBB11_43:                              # %if.else.117
	xorl	%eax, %eax
	movl	$1, %r8d
	movq	print_buffer, %rdi
	movq	print_buffer_pos, %rsi
	movq	print_buffer_pos_byte, %rdx
	movl	%eax, %ecx
	movl	%eax, %r9d
	callq	insert_1_both
.LBB11_44:                              # %if.end.118
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	current_buffer, %rcx
	movq	736(%rcx), %rcx
	addq	$0, %rcx
	subq	print_buffer_pos, %rcx
	movq	print_buffer_pos, %rdx
	movq	%rcx, %rdi
	callq	signal_after_change
.LBB11_45:                              # %if.end.122
	testb	$1, -65(%rbp)
	je	.LBB11_47
# BB#46:                                # %if.then.124
	movq	print_buffer, %rdi
	callq	xfree
	movq	$0, print_buffer
.LBB11_47:                              # %if.end.125
	xorl	%edi, %edi
	movq	-64(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	-80(%rbp), %rsi
	andq	$7, %rsi
	movl	%esi, %ecx
	cmpl	$1, %ecx
	movq	%rax, -296(%rbp)        # 8-byte Spill
	jne	.LBB11_50
# BB#48:                                # %land.lhs.true.132
	movq	-80(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB11_50
# BB#49:                                # %if.then.136
	xorl	%edi, %edi
	movq	-80(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	current_buffer, %rcx
	movq	736(%rcx), %rcx
	addq	$0, %rcx
	movq	current_buffer, %rdx
	movq	744(%rdx), %rdx
	addq	$0, %rdx
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movq	%rdx, -312(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-312(%rbp), %rcx        # 8-byte Reload
	callq	set_marker_both
	movq	%rax, -320(%rbp)        # 8-byte Spill
.LBB11_50:                              # %if.end.143
	cmpq	$0, -32(%rbp)
	jl	.LBB11_58
# BB#51:                                # %if.then.146
	movq	-32(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	-40(%rbp), %rcx
	movq	%rax, -328(%rbp)        # 8-byte Spill
	jl	.LBB11_53
# BB#52:                                # %cond.true.149
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	subq	-40(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	jmp	.LBB11_54
.LBB11_53:                              # %cond.false.153
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -336(%rbp)        # 8-byte Spill
	jmp	.LBB11_54
.LBB11_54:                              # %cond.end.154
	movq	-336(%rbp), %rax        # 8-byte Reload
	movq	-328(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	movq	-48(%rbp), %rax
	movq	-48(%rbp), %rdx
	cmpq	-56(%rbp), %rdx
	movq	%rcx, -344(%rbp)        # 8-byte Spill
	movq	%rax, -352(%rbp)        # 8-byte Spill
	jl	.LBB11_56
# BB#55:                                # %cond.true.159
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	subq	-56(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	jmp	.LBB11_57
.LBB11_56:                              # %cond.false.163
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -360(%rbp)        # 8-byte Spill
	jmp	.LBB11_57
.LBB11_57:                              # %cond.end.164
	movq	-360(%rbp), %rax        # 8-byte Reload
	movq	-352(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, %rsi
	callq	set_point_both
.LBB11_58:                              # %if.end.167
	movq	-24(%rbp), %rdi
	callq	set_buffer_internal
	movq	-8(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	Fprint, .Lfunc_end11-Fprint
	.cfi_endproc

	.globl	Fexternal_debugging_output
	.align	16, 0x90
	.type	Fexternal_debugging_output,@function
Fexternal_debugging_output:             # @Fexternal_debugging_output
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
	andq	$7, %rdi
	movl	%edi, %eax
	andl	$-5, %eax
	cmpl	$2, %eax
	jne	.LBB12_2
# BB#1:                                 # %cond.true
	jmp	.LBB12_3
.LBB12_2:                               # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB12_3:                               # %cond.end
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movq	stderr, %rsi
	movl	%ecx, %edi
	callq	printchar_to_stream
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	Fexternal_debugging_output, .Lfunc_end12-Fexternal_debugging_output
	.cfi_endproc

	.align	16, 0x90
	.type	printchar_to_stream,@function
printchar_to_stream:                    # @printchar_to_stream
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
	subq	$176, %rsp
	xorl	%eax, %eax
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -32(%rbp)
	movq	$1, -40(%rbp)
	movq	globals+1344, %rsi
	movq	%rsi, -48(%rbp)
	movb	$0, -49(%rbp)
	movq	globals+288, %rsi
	movl	%eax, %edi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB13_2
# BB#1:                                 # %if.then
	movq	globals+288, %rax
	movq	%rax, -48(%rbp)
.LBB13_2:                               # %if.end
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB13_4
# BB#3:                                 # %if.then.3
	movb	$1, -49(%rbp)
.LBB13_4:                               # %if.end.4
	movb	$1, %al
	testb	$1, %al
	jne	.LBB13_5
	jmp	.LBB13_6
.LBB13_5:                               # %cond.true
	movl	-4(%rbp), %eax
	addl	$0, %eax
	cmpl	$4194303, %eax          # imm = 0x3FFFFF
	jbe	.LBB13_7
	jmp	.LBB13_24
.LBB13_6:                               # %cond.false
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	cmpq	$4194303, %rcx          # imm = 0x3FFFFF
	ja	.LBB13_24
.LBB13_7:                               # %land.lhs.true
	movq	globals+2200, %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB13_8
	jmp	.LBB13_24
.LBB13_8:                               # %land.lhs.true.11
	movq	globals+2200, %rdi
	callq	XCHAR_TABLE
	movl	$346, %edi              # imm = 0x15A
	movq	24(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB13_24
# BB#9:                                 # %land.lhs.true.16
	movq	globals+2200, %rdi
	callq	XCHAR_TABLE
	movq	%rax, %rdi
	callq	CHAR_TABLE_EXTRA_SLOTS
	cmpl	$6, %eax
	jne	.LBB13_24
# BB#10:                                # %if.then.21
	movb	$1, %al
	testb	$1, %al
	jne	.LBB13_11
	jmp	.LBB13_12
.LBB13_11:                              # %cond.true.22
	movl	-4(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB13_13
	jmp	.LBB13_20
.LBB13_12:                              # %cond.false.26
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	cmpq	$128, %rcx
	jae	.LBB13_20
.LBB13_13:                              # %cond.true.31
	movq	globals+2200, %rdi
	callq	XCHAR_TABLE
	xorl	%edi, %edi
	movq	32(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB13_15
# BB#14:                                # %cond.true.36
	movq	globals+2200, %rdi
	callq	XCHAR_TABLE
	movq	8(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB13_19
.LBB13_15:                              # %cond.false.38
	movq	globals+2200, %rdi
	callq	XCHAR_TABLE
	movq	32(%rax), %rdi
	callq	SUB_CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB13_16
	jmp	.LBB13_17
.LBB13_16:                              # %cond.true.43
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	movq	globals+2200, %rdi
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	callq	XCHAR_TABLE
	movq	32(%rax), %rdi
	callq	XSUB_CHAR_TABLE
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	16(%rax,%rcx,8), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB13_18
.LBB13_17:                              # %cond.false.47
	movq	globals+2200, %rdi
	callq	XCHAR_TABLE
	movq	32(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB13_18:                              # %cond.end
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB13_19:                              # %cond.end.50
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB13_21
.LBB13_20:                              # %cond.false.52
	movq	globals+2200, %rdi
	callq	XCHAR_TABLE
	movl	-4(%rbp), %esi
	movq	%rax, %rdi
	callq	disp_char_vector
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB13_21:                              # %cond.end.55
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB13_22
	jmp	.LBB13_23
.LBB13_22:                              # %if.then.58
	movq	-24(%rbp), %rdi
	callq	ASIZE
	movq	%rax, -40(%rbp)
	jmp	.LBB13_48
.LBB13_23:                              # %if.end.60
	jmp	.LBB13_24
.LBB13_24:                              # %if.end.61
	jmp	.LBB13_25
.LBB13_25:                              # %while.body
	movb	$1, %al
	testb	$1, %al
	jne	.LBB13_26
	jmp	.LBB13_27
.LBB13_26:                              # %cond.true.62
	movl	-4(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB13_28
	jmp	.LBB13_29
.LBB13_27:                              # %cond.false.66
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	cmpq	$128, %rcx
	jae	.LBB13_29
.LBB13_28:                              # %if.then.71
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	_IO_putc
	movl	%eax, -140(%rbp)        # 4-byte Spill
	jmp	.LBB13_47
.LBB13_29:                              # %if.else
	movb	$1, %al
	testb	$1, %al
	jne	.LBB13_30
	jmp	.LBB13_31
.LBB13_30:                              # %cond.true.73
	movl	-4(%rbp), %eax
	addl	$0, %eax
	cmpl	$127, %eax
	jbe	.LBB13_32
	jmp	.LBB13_33
.LBB13_31:                              # %cond.false.77
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	cmpq	$127, %rcx
	ja	.LBB13_33
.LBB13_32:                              # %cond.true.82
	movl	$1, %eax
	movl	-4(%rbp), %ecx
	movb	%cl, %dl
	movb	%dl, -54(%rbp)
	movl	%eax, -144(%rbp)        # 4-byte Spill
	jmp	.LBB13_44
.LBB13_33:                              # %cond.false.85
	movb	$1, %al
	testb	$1, %al
	jne	.LBB13_34
	jmp	.LBB13_35
.LBB13_34:                              # %cond.true.86
	movl	-4(%rbp), %eax
	addl	$0, %eax
	cmpl	$2047, %eax             # imm = 0x7FF
	jbe	.LBB13_36
	jmp	.LBB13_37
.LBB13_35:                              # %cond.false.90
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	cmpq	$2047, %rcx             # imm = 0x7FF
	ja	.LBB13_37
.LBB13_36:                              # %cond.true.95
	movl	$2, %eax
	movl	-4(%rbp), %ecx
	shrl	$6, %ecx
	orl	$192, %ecx
	movb	%cl, %dl
	movb	%dl, -54(%rbp)
	movl	-4(%rbp), %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movb	%dl, -53(%rbp)
	movl	%eax, -148(%rbp)        # 4-byte Spill
	jmp	.LBB13_43
.LBB13_37:                              # %cond.false.101
	movb	$1, %al
	testb	$1, %al
	jne	.LBB13_38
	jmp	.LBB13_39
.LBB13_38:                              # %cond.true.102
	movl	-4(%rbp), %eax
	addl	$0, %eax
	cmpl	$65535, %eax            # imm = 0xFFFF
	jbe	.LBB13_40
	jmp	.LBB13_41
.LBB13_39:                              # %cond.false.106
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	cmpq	$65535, %rcx            # imm = 0xFFFF
	ja	.LBB13_41
.LBB13_40:                              # %cond.true.111
	movl	$3, %eax
	movl	-4(%rbp), %ecx
	shrl	$12, %ecx
	orl	$224, %ecx
	movb	%cl, %dl
	movb	%dl, -54(%rbp)
	movl	-4(%rbp), %ecx
	shrl	$6, %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movb	%dl, -53(%rbp)
	movl	-4(%rbp), %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movb	%dl, -52(%rbp)
	movl	%eax, -152(%rbp)        # 4-byte Spill
	jmp	.LBB13_42
.LBB13_41:                              # %cond.false.125
	leaq	-54(%rbp), %rsi
	movl	-4(%rbp), %edi
	callq	char_string
	movl	%eax, -152(%rbp)        # 4-byte Spill
.LBB13_42:                              # %cond.end.127
	movl	-152(%rbp), %eax        # 4-byte Reload
	movl	%eax, -148(%rbp)        # 4-byte Spill
.LBB13_43:                              # %cond.end.129
	movl	-148(%rbp), %eax        # 4-byte Reload
	movl	%eax, -144(%rbp)        # 4-byte Spill
.LBB13_44:                              # %cond.end.131
	movl	-144(%rbp), %eax        # 4-byte Reload
	movl	$1, %ecx
	movl	%ecx, %esi
	leaq	-54(%rbp), %rdi
	movl	%eax, -60(%rbp)
	movslq	-60(%rbp), %rdx
	callq	make_multibyte_string
	movq	%rax, -72(%rbp)
	testb	$1, -49(%rbp)
	je	.LBB13_46
# BB#45:                                # %if.then.136
	movl	$1, %edx
	movq	-72(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	code_convert_string_norecord
	movq	%rax, -72(%rbp)
.LBB13_46:                              # %if.end.138
	movq	-72(%rbp), %rdi
	callq	SSDATA
	movq	-72(%rbp), %rdi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	SBYTES
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	-16(%rbp), %rcx
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	fwrite
	movq	%rax, -168(%rbp)        # 8-byte Spill
.LBB13_47:                              # %if.end.142
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
.LBB13_48:                              # %next_char
	jmp	.LBB13_49
.LBB13_49:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jge	.LBB13_55
# BB#50:                                # %for.body
                                        #   in Loop: Header=BB13_49 Depth=1
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	AREF
	movq	%rax, %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB13_51
	jmp	.LBB13_53
.LBB13_51:                              # %land.lhs.true.148
                                        #   in Loop: Header=BB13_49 Depth=1
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	AREF
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jg	.LBB13_53
# BB#52:                                # %if.then.153
	jmp	.LBB13_55
.LBB13_53:                              # %if.end.154
                                        #   in Loop: Header=BB13_49 Depth=1
	jmp	.LBB13_54
.LBB13_54:                              # %for.inc
                                        #   in Loop: Header=BB13_49 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB13_49
.LBB13_55:                              # %for.end
	movq	-32(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jl	.LBB13_57
# BB#56:                                # %if.then.158
	jmp	.LBB13_58
.LBB13_57:                              # %if.end.159
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	AREF
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB13_25
.LBB13_58:                              # %while.end
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	printchar_to_stream, .Lfunc_end13-printchar_to_stream
	.cfi_endproc

	.globl	debug_output_compilation_hack
	.align	16, 0x90
	.type	debug_output_compilation_hack,@function
debug_output_compilation_hack:          # @debug_output_compilation_hack
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
	movb	%dil, %al
	andb	$1, %al
	movb	%al, -1(%rbp)
	movb	-1(%rbp), %al
	andb	$1, %al
	movb	%al, print_output_debug_flag
	popq	%rbp
	retq
.Lfunc_end14:
	.size	debug_output_compilation_hack, .Lfunc_end14-debug_output_compilation_hack
	.cfi_endproc

	.globl	Fredirect_debugging_output
	.align	16, 0x90
	.type	Fredirect_debugging_output,@function
Fredirect_debugging_output:             # @Fredirect_debugging_output
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
	cmpq	$0, initial_stderr_stream
	je	.LBB15_2
# BB#1:                                 # %if.then
	callq	block_input
	movq	stderr, %rdi
	callq	fclose
	movl	%eax, -20(%rbp)         # 4-byte Spill
	callq	unblock_input
.LBB15_2:                               # %if.end
	movq	initial_stderr_stream, %rax
	movq	%rax, stderr
	movq	$0, initial_stderr_stream
	movq	-8(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB15_3
	jmp	.LBB15_6
.LBB15_3:                               # %if.then.2
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fexpand_file_name
	movq	%rax, -8(%rbp)
	movq	stderr, %rax
	movq	%rax, initial_stderr_stream
	movq	-8(%rbp), %rdi
	callq	SSDATA
	xorl	%edi, %edi
	movq	-16(%rbp), %rsi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.4, %rsi
	movabsq	$.L.str.3, %rcx
	movq	-48(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	cmoveq	%rcx, %rsi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	callq	emacs_fopen
	movq	%rax, stderr
	cmpq	$0, stderr
	jne	.LBB15_5
# BB#4:                                 # %if.then.10
	movabsq	$.L.str.5, %rdi
	movq	initial_stderr_stream, %rax
	movq	%rax, stderr
	movq	$0, initial_stderr_stream
	movq	-8(%rbp), %rsi
	callq	report_file_error
.LBB15_5:                               # %if.end.11
	jmp	.LBB15_6
.LBB15_6:                               # %if.end.12
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	Fredirect_debugging_output, .Lfunc_end15-Fredirect_debugging_output
	.cfi_endproc

	.globl	debug_print
	.align	16, 0x90
	.type	debug_print,@function
debug_print:                            # @debug_print
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
	subq	$32, %rsp
	movl	$394, %eax              # imm = 0x18A
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fprin1
	movabsq	$.L.str.6, %rsi
	movq	stderr, %rdi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	movb	$0, %al
	callq	fprintf
	movl	%eax, -28(%rbp)         # 4-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	debug_print, .Lfunc_end16-debug_print
	.cfi_endproc

	.globl	safe_debug_print
	.align	16, 0x90
	.type	safe_debug_print,@function
safe_debug_print:                       # @safe_debug_print
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	valid_lisp_object_p
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jle	.LBB17_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	debug_print
	jmp	.LBB17_3
.LBB17_2:                               # %if.else
	movabsq	$.L.str.7, %rsi
	movabsq	$.L.str.9, %rax
	movabsq	$.L.str.8, %rcx
	movq	-8(%rbp), %rdx
	movq	%rdx, -24(%rbp)
	movq	stderr, %rdi
	cmpl	$0, -12(%rbp)
	setne	%r8b
	xorb	$-1, %r8b
	testb	$1, %r8b
	cmovneq	%rcx, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB17_3:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	safe_debug_print, .Lfunc_end17-safe_debug_print
	.cfi_endproc

	.globl	Ferror_message_string
	.align	16, 0x90
	.type	Ferror_message_string,@function
Ferror_message_string:                  # @Ferror_message_string
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	current_buffer, %rdi
	movq	%rdi, -24(%rbp)
	movq	-16(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$3, %eax
	jne	.LBB18_6
# BB#1:                                 # %land.lhs.true
	movl	$372, %edi              # imm = 0x174
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB18_6
# BB#2:                                 # %land.lhs.true.4
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB18_6
# BB#3:                                 # %land.lhs.true.10
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB18_4
	jmp	.LBB18_6
.LBB18_4:                               # %land.lhs.true.18
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB18_6
# BB#5:                                 # %if.then
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB18_7
.LBB18_6:                               # %if.end
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	Vprin1_to_string_buffer, %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %edx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rcx
	callq	print_error_message
	movq	Vprin1_to_string_buffer, %rdi
	callq	XBUFFER
	movq	%rax, %rdi
	callq	set_buffer_internal
	callq	Fbuffer_string
	movq	%rax, -32(%rbp)
	callq	Ferase_buffer
	movq	-24(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	set_buffer_internal
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB18_7:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	Ferror_message_string, .Lfunc_end18-Ferror_message_string
	.cfi_endproc

	.globl	print_error_message
	.align	16, 0x90
	.type	print_error_message,@function
print_error_message:                    # @print_error_message
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
	subq	$288, %rsp              # imm = 0x120
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB19_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	write_string_1
.LBB19_2:                               # %if.end
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB19_12
# BB#3:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB19_12
# BB#4:                                 # %if.then.4
	movq	-32(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	SBYTES
	movq	%rax, -80(%rbp)
	movq	$16384, -88(%rbp)       # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -96(%rbp)
	movb	$0, -97(%rbp)
	movq	-80(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jg	.LBB19_6
# BB#5:                                 # %cond.true
	movq	-80(%rbp), %rax
	movq	-88(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	jmp	.LBB19_7
.LBB19_6:                               # %cond.false
	movb	$1, -97(%rbp)
	movq	-80(%rbp), %rdi
	callq	record_xmalloc
	movq	%rax, -152(%rbp)        # 8-byte Spill
.LBB19_7:                               # %cond.end
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	SDATA
	movq	-80(%rbp), %rdx
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	memcpy
	movq	-112(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -176(%rbp)        # 8-byte Spill
	callq	STRING_MULTIBYTE
	xorl	%ecx, %ecx
	movzbl	%al, %r8d
	andl	$1, %r8d
	xorl	%edx, %edx
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	-176(%rbp), %rsi        # 8-byte Reload
	movl	%ecx, -180(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	callq	message_dolog
	movabsq	$.L.str.10, %rdi
	movl	$2, %ecx
	movl	%ecx, %esi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	callq	message_dolog
# BB#8:                                 # %do.body
	testb	$1, -97(%rbp)
	je	.LBB19_10
# BB#9:                                 # %if.then.13
	xorl	%edi, %edi
	movb	$0, -97(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -200(%rbp)        # 8-byte Spill
.LBB19_10:                              # %if.end.16
	jmp	.LBB19_11
.LBB19_11:                              # %do.end
	jmp	.LBB19_12
.LBB19_12:                              # %if.end.17
	movq	-8(%rbp), %rdi
	callq	Fcar
	movl	$372, %edi              # imm = 0x174
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB19_16
# BB#13:                                # %if.then.22
	movq	-8(%rbp), %rdi
	callq	Fcdr
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB19_15
# BB#14:                                # %if.then.28
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB19_15:                              # %if.end.30
	movq	-8(%rbp), %rdi
	callq	Fcar
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -56(%rbp)
	jmp	.LBB19_17
.LBB19_16:                              # %if.else
	movl	$373, %edi              # imm = 0x175
	movq	-40(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget
	movl	$374, %edi              # imm = 0x176
	movq	%rax, -120(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget
	movl	$411, %edi              # imm = 0x19B
	movq	%rax, -48(%rbp)
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fmemq
	movq	%rax, -56(%rbp)
.LBB19_17:                              # %if.end.39
	movq	-8(%rbp), %rdi
	callq	Fcdr_safe
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-232(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB19_20
# BB#18:                                # %land.lhs.true.44
	movq	-64(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB19_20
# BB#19:                                # %if.then.49
	movq	-64(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-64(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
.LBB19_20:                              # %if.end.52
	movabsq	$.L.str.10, %rax
	movq	%rax, -128(%rbp)
	movq	-48(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB19_22
# BB#21:                                # %if.then.54
	movabsq	$.L.str.11, %rdi
	movq	-16(%rbp), %rsi
	callq	write_string_1
	jmp	.LBB19_26
.LBB19_22:                              # %if.else.55
	movq	-48(%rbp), %rdi
	callq	SCHARS
	cmpq	$0, %rax
	je	.LBB19_24
# BB#23:                                # %if.then.58
	movq	-48(%rbp), %rdi
	callq	Fsubstitute_command_keys
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fprinc
	movq	%rax, -240(%rbp)        # 8-byte Spill
	jmp	.LBB19_25
.LBB19_24:                              # %if.else.61
	movq	$0, -128(%rbp)
.LBB19_25:                              # %if.end.62
	jmp	.LBB19_26
.LBB19_26:                              # %if.end.63
	jmp	.LBB19_27
.LBB19_27:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB19_37
# BB#28:                                # %for.body
                                        #   in Loop: Header=BB19_27 Depth=1
	cmpq	$0, -128(%rbp)
	je	.LBB19_30
# BB#29:                                # %if.then.69
                                        #   in Loop: Header=BB19_27 Depth=1
	movq	-128(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	write_string_1
.LBB19_30:                              # %if.end.70
                                        #   in Loop: Header=BB19_27 Depth=1
	xorl	%edi, %edi
	movq	-64(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-248(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB19_33
# BB#31:                                # %lor.lhs.false
                                        #   in Loop: Header=BB19_27 Depth=1
	movl	$367, %edi              # imm = 0x16F
	movq	-40(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-256(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB19_33
# BB#32:                                # %lor.lhs.false.79
                                        #   in Loop: Header=BB19_27 Depth=1
	movl	$981, %edi              # imm = 0x3D5
	movq	-40(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-264(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB19_34
.LBB19_33:                              # %if.then.83
                                        #   in Loop: Header=BB19_27 Depth=1
	movq	-136(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	Fprinc
	movq	%rax, -272(%rbp)        # 8-byte Spill
	jmp	.LBB19_35
.LBB19_34:                              # %if.else.85
                                        #   in Loop: Header=BB19_27 Depth=1
	movq	-136(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	Fprin1
	movq	%rax, -280(%rbp)        # 8-byte Spill
.LBB19_35:                              # %if.end.87
                                        #   in Loop: Header=BB19_27 Depth=1
	jmp	.LBB19_36
.LBB19_36:                              # %for.inc
                                        #   in Loop: Header=BB19_27 Depth=1
	movabsq	$.L.str.12, %rax
	movq	-64(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -64(%rbp)
	movq	%rax, -128(%rbp)
	jmp	.LBB19_27
.LBB19_37:                              # %for.end
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	print_error_message, .Lfunc_end19-print_error_message
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI20_0:
	.quad	4611686018427387904     # double 2
.LCPI20_1:
	.quad	4607182418800017408     # double 1
.LCPI20_2:
	.quad	-4616189618054758400    # double -1
.LCPI20_3:
	.quad	-9223372036854775808    # double -0
	.text
	.globl	float_to_string
	.align	16, 0x90
	.type	float_to_string,@function
float_to_string:                        # @float_to_string
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
	movsd	.LCPI20_0, %xmm1        # xmm1 = mem[0],zero
	movq	%rdi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm2        # xmm2 = mem[0],zero
	divsd	%xmm1, %xmm2
	ucomisd	%xmm2, %xmm0
	jne	.LBB20_3
	jp	.LBB20_3
# BB#1:                                 # %land.lhs.true
	movsd	.LCPI20_1, %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB20_3
# BB#2:                                 # %if.then
	movq	-16(%rbp), %rdi
	movl	$float_to_string.infinity_string, %eax
	movl	%eax, %esi
	callq	strcpy
	movl	$8, -4(%rbp)
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB20_59
.LBB20_3:                               # %if.end
	movsd	.LCPI20_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-24(%rbp), %xmm2        # xmm2 = mem[0],zero
	divsd	%xmm0, %xmm2
	ucomisd	%xmm2, %xmm1
	jne	.LBB20_6
	jp	.LBB20_6
# BB#4:                                 # %land.lhs.true.4
	movsd	.LCPI20_2, %xmm0        # xmm0 = mem[0],zero
	ucomisd	-24(%rbp), %xmm0
	jbe	.LBB20_6
# BB#5:                                 # %if.then.6
	movq	-16(%rbp), %rdi
	movl	$float_to_string.minus_infinity_string, %eax
	movl	%eax, %esi
	callq	strcpy
	movl	$9, -4(%rbp)
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB20_59
.LBB20_6:                               # %if.end.8
	xorps	%xmm0, %xmm0
	movaps	%xmm0, %xmm1
	mulsd	-24(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jae	.LBB20_14
# BB#7:                                 # %if.then.10
	movsd	.LCPI20_3, %xmm0        # xmm0 = mem[0],zero
	movb	$0, -65(%rbp)
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, -56(%rbp)
	movsd	%xmm0, -64(%rbp)
	movl	$0, -44(%rbp)
.LBB20_8:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-44(%rbp), %rax
	cmpq	$8, %rax
	jae	.LBB20_13
# BB#9:                                 # %for.body
                                        #   in Loop: Header=BB20_8 Depth=1
	movslq	-44(%rbp), %rax
	movsbl	-56(%rbp,%rax), %ecx
	movslq	-44(%rbp), %rax
	movsbl	-64(%rbp,%rax), %edx
	andl	%edx, %ecx
	cmpl	$0, %ecx
	je	.LBB20_11
# BB#10:                                # %if.then.19
	movq	-16(%rbp), %rax
	movb	$45, (%rax)
	movb	$1, -65(%rbp)
	jmp	.LBB20_13
.LBB20_11:                              # %if.end.20
                                        #   in Loop: Header=BB20_8 Depth=1
	jmp	.LBB20_12
.LBB20_12:                              # %for.inc
                                        #   in Loop: Header=BB20_8 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB20_8
.LBB20_13:                              # %for.end
	movq	-16(%rbp), %rax
	movb	-65(%rbp), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	addq	%rsi, %rax
	movl	$float_to_string.NaN_string, %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	callq	strcpy
	movb	-65(%rbp), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, %esi
	addq	$9, %rsi
	subq	$1, %rsi
	movl	%esi, %edx
	movl	%edx, -4(%rbp)
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB20_59
.LBB20_14:                              # %if.end.27
	xorl	%edi, %edi
	movq	globals+784, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB20_16
# BB#15:                                # %lor.lhs.false
	movq	globals+784, %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB20_18
.LBB20_16:                              # %if.then.32
	jmp	.LBB20_17
.LBB20_17:                              # %lose
	movl	$348, %eax              # imm = 0x15C
	movl	%eax, %esi
	xorl	%eax, %eax
	movq	-16(%rbp), %rdi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	dtoastr
	movl	%eax, -40(%rbp)
	movl	$1, -36(%rbp)
	jmp	.LBB20_42
.LBB20_18:                              # %if.else
	movq	globals+784, %rdi
	callq	SSDATA
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$37, %ecx
	je	.LBB20_20
# BB#19:                                # %if.then.39
	jmp	.LBB20_17
.LBB20_20:                              # %if.end.40
	movq	-32(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$46, %ecx
	je	.LBB20_22
# BB#21:                                # %if.then.45
	jmp	.LBB20_17
.LBB20_22:                              # %if.end.46
	movl	$48, %eax
	movq	-32(%rbp), %rcx
	addq	$2, %rcx
	movq	%rcx, -32(%rbp)
	movl	$-1, -36(%rbp)
	movq	-32(%rbp), %rcx
	movsbl	(%rcx), %edx
	cmpl	%edx, %eax
	jg	.LBB20_35
# BB#23:                                # %land.lhs.true.51
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$57, %ecx
	jg	.LBB20_35
# BB#24:                                # %if.then.55
	movl	$0, -36(%rbp)
.LBB20_25:                              # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$15, %eax
	imull	$10, -36(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -32(%rbp)
	movsbl	(%rdx), %edi
	subl	$48, %edi
	addl	%edi, %ecx
	movl	%ecx, -36(%rbp)
	cmpl	-36(%rbp), %eax
	jge	.LBB20_27
# BB#26:                                # %if.then.62
	jmp	.LBB20_17
.LBB20_27:                              # %if.end.63
                                        #   in Loop: Header=BB20_25 Depth=1
	jmp	.LBB20_28
.LBB20_28:                              # %do.cond
                                        #   in Loop: Header=BB20_25 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$48, %eax
	movb	%cl, -105(%rbp)         # 1-byte Spill
	jl	.LBB20_30
# BB#29:                                # %land.rhs
                                        #   in Loop: Header=BB20_25 Depth=1
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$57, %ecx
	setle	%dl
	movb	%dl, -105(%rbp)         # 1-byte Spill
.LBB20_30:                              # %land.end
                                        #   in Loop: Header=BB20_25 Depth=1
	movb	-105(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB20_25
# BB#31:                                # %do.end
	cmpl	$0, -36(%rbp)
	jne	.LBB20_34
# BB#32:                                # %land.lhs.true.72
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$102, %ecx
	je	.LBB20_34
# BB#33:                                # %if.then.76
	jmp	.LBB20_17
.LBB20_34:                              # %if.end.77
	jmp	.LBB20_35
.LBB20_35:                              # %if.end.78
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$101, %ecx
	je	.LBB20_39
# BB#36:                                # %land.lhs.true.82
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$102, %ecx
	je	.LBB20_39
# BB#37:                                # %land.lhs.true.86
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$103, %ecx
	je	.LBB20_39
# BB#38:                                # %if.then.90
	jmp	.LBB20_17
.LBB20_39:                              # %if.end.91
	movq	-32(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB20_41
# BB#40:                                # %if.then.96
	jmp	.LBB20_17
.LBB20_41:                              # %if.end.97
	movq	-16(%rbp), %rdi
	movq	globals+784, %rax
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	SSDATA
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$1, %al
	callq	sprintf
	movl	%eax, -40(%rbp)
.LBB20_42:                              # %if.end.100
	cmpl	$0, -36(%rbp)
	je	.LBB20_58
# BB#43:                                # %if.then.103
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB20_44:                              # %for.cond.104
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB20_51
# BB#45:                                # %for.body.106
                                        #   in Loop: Header=BB20_44 Depth=1
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$48, %ecx
	jl	.LBB20_47
# BB#46:                                # %lor.lhs.false.110
                                        #   in Loop: Header=BB20_44 Depth=1
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$57, %ecx
	jle	.LBB20_49
.LBB20_47:                              # %land.lhs.true.114
                                        #   in Loop: Header=BB20_44 Depth=1
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$45, %ecx
	je	.LBB20_49
# BB#48:                                # %if.then.118
	jmp	.LBB20_51
.LBB20_49:                              # %if.end.119
                                        #   in Loop: Header=BB20_44 Depth=1
	jmp	.LBB20_50
.LBB20_50:                              # %for.inc.120
                                        #   in Loop: Header=BB20_44 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB20_44
.LBB20_51:                              # %for.end.122
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$46, %ecx
	jne	.LBB20_54
# BB#52:                                # %land.lhs.true.126
	movq	-32(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB20_54
# BB#53:                                # %if.then.131
	movq	-32(%rbp), %rax
	movb	$48, 1(%rax)
	movq	-32(%rbp), %rax
	movb	$0, 2(%rax)
	movl	-40(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -40(%rbp)
	jmp	.LBB20_57
.LBB20_54:                              # %if.else.135
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB20_56
# BB#55:                                # %if.then.139
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movb	$46, (%rax)
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movb	$48, (%rax)
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movb	$0, (%rax)
	movl	-40(%rbp), %edx
	addl	$2, %edx
	movl	%edx, -40(%rbp)
.LBB20_56:                              # %if.end.144
	jmp	.LBB20_57
.LBB20_57:                              # %if.end.145
	jmp	.LBB20_58
.LBB20_58:                              # %if.end.146
	movl	-40(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB20_59:                              # %return
	movl	-4(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	float_to_string, .Lfunc_end20-float_to_string
	.cfi_endproc

	.globl	init_print_once
	.align	16, 0x90
	.type	init_print_once,@function
init_print_once:                        # @init_print_once
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
	movabsq	$Sexternal_debugging_output, %rax
	movq	%rax, %rdi
	callq	defsubr
	popq	%rbp
	retq
.Lfunc_end21:
	.size	init_print_once, .Lfunc_end21-init_print_once
	.cfi_endproc

	.globl	syms_of_print
	.align	16, 0x90
	.type	syms_of_print,@function
syms_of_print:                          # @syms_of_print
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
	jmp	.LBB22_1
.LBB22_1:                               # %do.body
	movabsq	$syms_of_print.o_fwd, %rdi
	movabsq	$.L.str.13, %rsi
	movabsq	$globals, %rax
	addq	$2216, %rax             # imm = 0x8A8
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#2:                                 # %do.end
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, globals+2216
# BB#3:                                 # %do.body.1
	movabsq	$syms_of_print.o_fwd.14, %rdi
	movabsq	$.L.str.15, %rsi
	movabsq	$globals, %rax
	addq	$784, %rax              # imm = 0x310
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#4:                                 # %do.end.2
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+784
# BB#5:                                 # %do.body.4
	movabsq	$syms_of_print.o_fwd.16, %rdi
	movabsq	$.L.str.17, %rsi
	movabsq	$globals, %rax
	addq	$1856, %rax             # imm = 0x740
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#6:                                 # %do.end.5
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+1856
# BB#7:                                 # %do.body.7
	movabsq	$syms_of_print.o_fwd.18, %rdi
	movabsq	$.L.str.19, %rsi
	movabsq	$globals, %rax
	addq	$1864, %rax             # imm = 0x748
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#8:                                 # %do.end.8
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+1864
# BB#9:                                 # %do.body.10
	movabsq	$syms_of_print.b_fwd, %rdi
	movabsq	$.L.str.20, %rsi
	movabsq	$globals, %rax
	addq	$3422, %rax             # imm = 0xD5E
	movq	%rax, %rdx
	callq	defvar_bool
# BB#10:                                # %do.end.11
	movb	$0, globals+3422
# BB#11:                                # %do.body.12
	movabsq	$syms_of_print.b_fwd.21, %rdi
	movabsq	$.L.str.22, %rsi
	movabsq	$globals, %rax
	addq	$3423, %rax             # imm = 0xD5F
	movq	%rax, %rdx
	callq	defvar_bool
# BB#12:                                # %do.end.13
	movb	$0, globals+3423
# BB#13:                                # %do.body.14
	movabsq	$syms_of_print.b_fwd.23, %rdi
	movabsq	$.L.str.24, %rsi
	movabsq	$globals, %rax
	addq	$3421, %rax             # imm = 0xD5D
	movq	%rax, %rdx
	callq	defvar_bool
# BB#14:                                # %do.end.15
	movb	$0, globals+3421
# BB#15:                                # %do.body.16
	movabsq	$syms_of_print.b_fwd.25, %rdi
	movabsq	$.L.str.26, %rsi
	movabsq	$globals, %rax
	addq	$3424, %rax             # imm = 0xD60
	movq	%rax, %rdx
	callq	defvar_bool
# BB#16:                                # %do.end.17
	movb	$0, globals+3424
# BB#17:                                # %do.body.18
	movabsq	$syms_of_print.o_fwd.27, %rdi
	movabsq	$.L.str.28, %rsi
	movabsq	$globals, %rax
	addq	$1848, %rax             # imm = 0x738
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#18:                                # %do.end.19
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+1848
# BB#19:                                # %do.body.21
	movabsq	$syms_of_print.o_fwd.29, %rdi
	movabsq	$.L.str.30, %rsi
	movabsq	$globals, %rax
	addq	$1832, %rax             # imm = 0x728
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#20:                                # %do.end.22
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+1832
# BB#21:                                # %do.body.24
	movabsq	$syms_of_print.o_fwd.31, %rdi
	movabsq	$.L.str.32, %rsi
	movabsq	$globals, %rax
	addq	$1840, %rax             # imm = 0x730
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#22:                                # %do.end.25
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+1840
# BB#23:                                # %do.body.27
	movabsq	$syms_of_print.o_fwd.33, %rdi
	movabsq	$.L.str.34, %rsi
	movabsq	$globals, %rax
	addq	$1872, %rax             # imm = 0x750
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#24:                                # %do.end.28
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+1872
# BB#25:                                # %do.body.30
	movabsq	$syms_of_print.o_fwd.35, %rdi
	movabsq	$.L.str.36, %rsi
	movabsq	$globals, %rax
	addq	$1824, %rax             # imm = 0x720
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#26:                                # %do.end.31
	movl	$324, %edi              # imm = 0x144
	callq	builtin_lisp_symbol
	movabsq	$Vprin1_to_string_buffer, %rdi
	movq	%rax, globals+1824
	callq	staticpro
	movabsq	$Sprin1, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sprin1_to_string, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Serror_message_string, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sprinc, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sprint, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sterpri, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Swrite_char, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sredirect_debugging_output, %rax
	movq	%rax, %rdi
	callq	defsubr
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$print_prune_charset_plist, %rdi
	movq	%rax, print_prune_charset_plist
	callq	staticpro
	popq	%rbp
	retq
.Lfunc_end22:
	.size	syms_of_print, .Lfunc_end22-syms_of_print
	.cfi_endproc

	.align	16, 0x90
	.type	print_c_string,@function
print_c_string:                         # @print_c_string
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	strlen
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	callq	strout
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	print_c_string, .Lfunc_end23-print_c_string
	.cfi_endproc

	.align	16, 0x90
	.type	strout,@function
strout:                                 # @strout
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
	subq	$192, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movl	%eax, %edi
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB24_4
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	print_buffer_size, %rcx
	subq	print_buffer_pos_byte, %rcx
	subq	%rcx, %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jle	.LBB24_3
# BB#2:                                 # %if.then.3
	movabsq	$print_buffer_size, %rsi
	movq	$-1, %rcx
	movl	$1, %eax
	movl	%eax, %r8d
	movq	print_buffer, %rdi
	movq	-40(%rbp), %rdx
	callq	xpalloc
	movq	%rax, print_buffer
.LBB24_3:                               # %if.end
	movq	print_buffer, %rax
	addq	print_buffer_pos_byte, %rax
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	memcpy
	movq	-16(%rbp), %rax
	addq	print_buffer_pos, %rax
	movq	%rax, print_buffer_pos
	movq	-24(%rbp), %rax
	addq	print_buffer_pos_byte, %rax
	movq	%rax, print_buffer_pos_byte
	jmp	.LBB24_68
.LBB24_4:                               # %if.else
	testb	$1, noninteractive
	je	.LBB24_25
# BB#5:                                 # %land.lhs.true
	movl	$901, %edi              # imm = 0x385
	movq	-32(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB24_25
# BB#6:                                 # %if.then.8
	movq	globals+2200, %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB24_7
	jmp	.LBB24_23
.LBB24_7:                               # %land.lhs.true.10
	movq	globals+2200, %rdi
	callq	XCHAR_TABLE
	movl	$346, %edi              # imm = 0x15A
	movq	24(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB24_23
# BB#8:                                 # %land.lhs.true.14
	movq	globals+2200, %rdi
	callq	XCHAR_TABLE
	movq	%rax, %rdi
	callq	CHAR_TABLE_EXTRA_SLOTS
	cmpl	$6, %eax
	jne	.LBB24_23
# BB#9:                                 # %if.then.18
	movq	$0, -56(%rbp)
.LBB24_10:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jge	.LBB24_22
# BB#11:                                # %for.body
                                        #   in Loop: Header=BB24_10 Depth=1
	movq	-8(%rbp), %rax
	movq	-56(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	jne	.LBB24_13
# BB#12:                                # %cond.true
                                        #   in Loop: Header=BB24_10 Depth=1
	movl	$1, -44(%rbp)
	movq	-8(%rbp), %rax
	movq	-56(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	movl	%edx, -132(%rbp)        # 4-byte Spill
	jmp	.LBB24_20
.LBB24_13:                              # %cond.false
                                        #   in Loop: Header=BB24_10 Depth=1
	movq	-8(%rbp), %rax
	movq	-56(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	andl	$32, %edx
	cmpl	$0, %edx
	jne	.LBB24_15
# BB#14:                                # %cond.true.30
                                        #   in Loop: Header=BB24_10 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -44(%rbp)
	movq	-8(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movzbl	(%rdx,%rsi), %edi
	andl	$31, %edi
	shll	$6, %edi
	movq	-8(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movzbl	1(%rdx,%rsi), %r8d
	andl	$63, %r8d
	orl	%r8d, %edi
	movq	-8(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movzbl	(%rdx,%rsi), %r8d
	cmpl	$194, %r8d
	cmovll	%ecx, %eax
	addl	%eax, %edi
	movl	%edi, -136(%rbp)        # 4-byte Spill
	jmp	.LBB24_19
.LBB24_15:                              # %cond.false.45
                                        #   in Loop: Header=BB24_10 Depth=1
	movq	-8(%rbp), %rax
	movq	-56(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	andl	$16, %edx
	cmpl	$0, %edx
	jne	.LBB24_17
# BB#16:                                # %cond.true.51
                                        #   in Loop: Header=BB24_10 Depth=1
	movl	$3, -44(%rbp)
	movq	-8(%rbp), %rax
	movq	-56(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	andl	$15, %edx
	shll	$12, %edx
	movq	-8(%rbp), %rax
	movq	-56(%rbp), %rcx
	movzbl	1(%rax,%rcx), %esi
	andl	$63, %esi
	shll	$6, %esi
	orl	%esi, %edx
	movq	-8(%rbp), %rax
	movq	-56(%rbp), %rcx
	movzbl	2(%rax,%rcx), %esi
	andl	$63, %esi
	orl	%esi, %edx
	movl	%edx, -140(%rbp)        # 4-byte Spill
	jmp	.LBB24_18
.LBB24_17:                              # %cond.false.68
                                        #   in Loop: Header=BB24_10 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-44(%rbp), %rdx
	movq	-8(%rbp), %rcx
	addq	-56(%rbp), %rcx
	movq	%rcx, %rdi
	callq	string_char
	movl	%eax, -140(%rbp)        # 4-byte Spill
.LBB24_18:                              # %cond.end
                                        #   in Loop: Header=BB24_10 Depth=1
	movl	-140(%rbp), %eax        # 4-byte Reload
	movl	%eax, -136(%rbp)        # 4-byte Spill
.LBB24_19:                              # %cond.end.72
                                        #   in Loop: Header=BB24_10 Depth=1
	movl	-136(%rbp), %eax        # 4-byte Reload
	movl	%eax, -132(%rbp)        # 4-byte Spill
.LBB24_20:                              # %cond.end.74
                                        #   in Loop: Header=BB24_10 Depth=1
	movl	-132(%rbp), %eax        # 4-byte Reload
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %edi
	movq	stdout, %rsi
	callq	printchar_to_stream
# BB#21:                                # %for.inc
                                        #   in Loop: Header=BB24_10 Depth=1
	movslq	-44(%rbp), %rax
	addq	-56(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB24_10
.LBB24_22:                              # %for.end
	jmp	.LBB24_24
.LBB24_23:                              # %if.else.78
	movl	$1, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	stdout, %rcx
	callq	fwrite
	movq	%rax, -152(%rbp)        # 8-byte Spill
.LBB24_24:                              # %if.end.80
	movb	$1, noninteractive_need_newline
	jmp	.LBB24_67
.LBB24_25:                              # %if.else.81
	movl	$901, %edi              # imm = 0x385
	movq	-32(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB24_47
# BB#26:                                # %if.then.85
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	andb	$1, %dl
	movb	%dl, -65(%rbp)
	movb	-65(%rbp), %dl
	andb	$1, %dl
	movzbl	%dl, %edi
	callq	setup_echo_area_for_printing
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movb	-65(%rbp), %r8b
	andb	$1, %r8b
	movzbl	%r8b, %ecx
	callq	message_dolog
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB24_32
# BB#27:                                # %if.then.94
	movl	$0, -64(%rbp)
.LBB24_28:                              # %for.cond.95
                                        # =>This Inner Loop Header: Depth=1
	movslq	-64(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jge	.LBB24_31
# BB#29:                                # %for.body.99
                                        #   in Loop: Header=BB24_28 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -8(%rbp)
	movzbl	(%rax), %edi
	callq	insert_char
# BB#30:                                # %for.inc.101
                                        #   in Loop: Header=BB24_28 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB24_28
.LBB24_31:                              # %for.end.102
	jmp	.LBB24_46
.LBB24_32:                              # %if.else.103
	movl	$0, -64(%rbp)
.LBB24_33:                              # %for.cond.105
                                        # =>This Inner Loop Header: Depth=1
	movslq	-64(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jge	.LBB24_45
# BB#34:                                # %for.body.109
                                        #   in Loop: Header=BB24_33 Depth=1
	movq	-8(%rbp), %rax
	movslq	-64(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	jne	.LBB24_36
# BB#35:                                # %cond.true.116
                                        #   in Loop: Header=BB24_33 Depth=1
	movl	$1, -72(%rbp)
	movq	-8(%rbp), %rax
	movslq	-64(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	movl	%edx, -172(%rbp)        # 4-byte Spill
	jmp	.LBB24_43
.LBB24_36:                              # %cond.false.121
                                        #   in Loop: Header=BB24_33 Depth=1
	movq	-8(%rbp), %rax
	movslq	-64(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	andl	$32, %edx
	cmpl	$0, %edx
	jne	.LBB24_38
# BB#37:                                # %cond.true.128
                                        #   in Loop: Header=BB24_33 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -72(%rbp)
	movq	-8(%rbp), %rdx
	movslq	-64(%rbp), %rsi
	movzbl	(%rdx,%rsi), %edi
	andl	$31, %edi
	shll	$6, %edi
	movq	-8(%rbp), %rdx
	movslq	-64(%rbp), %rsi
	movzbl	1(%rdx,%rsi), %r8d
	andl	$63, %r8d
	orl	%r8d, %edi
	movq	-8(%rbp), %rdx
	movslq	-64(%rbp), %rsi
	movzbl	(%rdx,%rsi), %r8d
	cmpl	$194, %r8d
	cmovll	%ecx, %eax
	addl	%eax, %edi
	movl	%edi, -176(%rbp)        # 4-byte Spill
	jmp	.LBB24_42
.LBB24_38:                              # %cond.false.149
                                        #   in Loop: Header=BB24_33 Depth=1
	movq	-8(%rbp), %rax
	movslq	-64(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	andl	$16, %edx
	cmpl	$0, %edx
	jne	.LBB24_40
# BB#39:                                # %cond.true.156
                                        #   in Loop: Header=BB24_33 Depth=1
	movl	$3, -72(%rbp)
	movq	-8(%rbp), %rax
	movslq	-64(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	andl	$15, %edx
	shll	$12, %edx
	movq	-8(%rbp), %rax
	movslq	-64(%rbp), %rcx
	movzbl	1(%rax,%rcx), %esi
	andl	$63, %esi
	shll	$6, %esi
	orl	%esi, %edx
	movq	-8(%rbp), %rax
	movslq	-64(%rbp), %rcx
	movzbl	2(%rax,%rcx), %esi
	andl	$63, %esi
	orl	%esi, %edx
	movl	%edx, -180(%rbp)        # 4-byte Spill
	jmp	.LBB24_41
.LBB24_40:                              # %cond.false.176
                                        #   in Loop: Header=BB24_33 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-72(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movslq	-64(%rbp), %rdi
	addq	%rdi, %rcx
	movq	%rcx, %rdi
	callq	string_char
	movl	%eax, -180(%rbp)        # 4-byte Spill
.LBB24_41:                              # %cond.end.180
                                        #   in Loop: Header=BB24_33 Depth=1
	movl	-180(%rbp), %eax        # 4-byte Reload
	movl	%eax, -176(%rbp)        # 4-byte Spill
.LBB24_42:                              # %cond.end.182
                                        #   in Loop: Header=BB24_33 Depth=1
	movl	-176(%rbp), %eax        # 4-byte Reload
	movl	%eax, -172(%rbp)        # 4-byte Spill
.LBB24_43:                              # %cond.end.184
                                        #   in Loop: Header=BB24_33 Depth=1
	movl	-172(%rbp), %eax        # 4-byte Reload
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %edi
	callq	insert_char
# BB#44:                                # %for.inc.186
                                        #   in Loop: Header=BB24_33 Depth=1
	movl	-72(%rbp), %eax
	addl	-64(%rbp), %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB24_33
.LBB24_45:                              # %for.end.188
	jmp	.LBB24_46
.LBB24_46:                              # %if.end.189
	jmp	.LBB24_66
.LBB24_47:                              # %if.else.190
	movq	$0, -88(%rbp)
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB24_52
# BB#48:                                # %if.then.194
	jmp	.LBB24_49
.LBB24_49:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-88(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jge	.LBB24_51
# BB#50:                                # %while.body
                                        #   in Loop: Header=BB24_49 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -88(%rbp)
	movq	-8(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	movl	%edx, -92(%rbp)
	movl	-92(%rbp), %edi
	movq	-32(%rbp), %rsi
	callq	printchar
	jmp	.LBB24_49
.LBB24_51:                              # %while.end
	jmp	.LBB24_65
.LBB24_52:                              # %if.else.201
	jmp	.LBB24_53
.LBB24_53:                              # %while.cond.202
                                        # =>This Inner Loop Header: Depth=1
	movq	-88(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jge	.LBB24_64
# BB#54:                                # %while.body.205
                                        #   in Loop: Header=BB24_53 Depth=1
	movq	-8(%rbp), %rax
	movq	-88(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	jne	.LBB24_56
# BB#55:                                # %cond.true.213
                                        #   in Loop: Header=BB24_53 Depth=1
	movl	$1, -96(%rbp)
	movq	-8(%rbp), %rax
	movq	-88(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	movl	%edx, -184(%rbp)        # 4-byte Spill
	jmp	.LBB24_63
.LBB24_56:                              # %cond.false.217
                                        #   in Loop: Header=BB24_53 Depth=1
	movq	-8(%rbp), %rax
	movq	-88(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	andl	$32, %edx
	cmpl	$0, %edx
	jne	.LBB24_58
# BB#57:                                # %cond.true.223
                                        #   in Loop: Header=BB24_53 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -96(%rbp)
	movq	-8(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movzbl	(%rdx,%rsi), %edi
	andl	$31, %edi
	shll	$6, %edi
	movq	-8(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movzbl	1(%rdx,%rsi), %r8d
	andl	$63, %r8d
	orl	%r8d, %edi
	movq	-8(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movzbl	(%rdx,%rsi), %r8d
	cmpl	$194, %r8d
	cmovll	%ecx, %eax
	addl	%eax, %edi
	movl	%edi, -188(%rbp)        # 4-byte Spill
	jmp	.LBB24_62
.LBB24_58:                              # %cond.false.241
                                        #   in Loop: Header=BB24_53 Depth=1
	movq	-8(%rbp), %rax
	movq	-88(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	andl	$16, %edx
	cmpl	$0, %edx
	jne	.LBB24_60
# BB#59:                                # %cond.true.247
                                        #   in Loop: Header=BB24_53 Depth=1
	movl	$3, -96(%rbp)
	movq	-8(%rbp), %rax
	movq	-88(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	andl	$15, %edx
	shll	$12, %edx
	movq	-8(%rbp), %rax
	movq	-88(%rbp), %rcx
	movzbl	1(%rax,%rcx), %esi
	andl	$63, %esi
	shll	$6, %esi
	orl	%esi, %edx
	movq	-8(%rbp), %rax
	movq	-88(%rbp), %rcx
	movzbl	2(%rax,%rcx), %esi
	andl	$63, %esi
	orl	%esi, %edx
	movl	%edx, -192(%rbp)        # 4-byte Spill
	jmp	.LBB24_61
.LBB24_60:                              # %cond.false.264
                                        #   in Loop: Header=BB24_53 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-96(%rbp), %rdx
	movq	-8(%rbp), %rcx
	addq	-88(%rbp), %rcx
	movq	%rcx, %rdi
	callq	string_char
	movl	%eax, -192(%rbp)        # 4-byte Spill
.LBB24_61:                              # %cond.end.267
                                        #   in Loop: Header=BB24_53 Depth=1
	movl	-192(%rbp), %eax        # 4-byte Reload
	movl	%eax, -188(%rbp)        # 4-byte Spill
.LBB24_62:                              # %cond.end.269
                                        #   in Loop: Header=BB24_53 Depth=1
	movl	-188(%rbp), %eax        # 4-byte Reload
	movl	%eax, -184(%rbp)        # 4-byte Spill
.LBB24_63:                              # %cond.end.271
                                        #   in Loop: Header=BB24_53 Depth=1
	movl	-184(%rbp), %eax        # 4-byte Reload
	movl	%eax, -100(%rbp)
	movl	-100(%rbp), %edi
	movq	-32(%rbp), %rsi
	callq	printchar
	movslq	-96(%rbp), %rsi
	addq	-88(%rbp), %rsi
	movq	%rsi, -88(%rbp)
	jmp	.LBB24_53
.LBB24_64:                              # %while.end.275
	jmp	.LBB24_65
.LBB24_65:                              # %if.end.276
	jmp	.LBB24_66
.LBB24_66:                              # %if.end.277
	jmp	.LBB24_67
.LBB24_67:                              # %if.end.278
	jmp	.LBB24_68
.LBB24_68:                              # %if.end.279
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	strout, .Lfunc_end24-strout
	.cfi_endproc

	.align	16, 0x90
	.type	print_preprocess,@function
print_preprocess:                       # @print_preprocess
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
	subq	$176, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movl	$0, -28(%rbp)
	movq	globals+1832, %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB25_10
# BB#1:                                 # %if.then
	cmpq	$200, print_depth
	jl	.LBB25_3
# BB#2:                                 # %if.then.2
	movabsq	$.L.str.37, %rdi
	movb	$0, %al
	callq	error
.LBB25_3:                               # %if.end
	movl	$0, -12(%rbp)
.LBB25_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-12(%rbp), %rax
	cmpq	print_depth, %rax
	jge	.LBB25_9
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB25_4 Depth=1
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	cmpq	being_printed(,%rcx,8), %rax
	jne	.LBB25_7
# BB#6:                                 # %if.then.7
	jmp	.LBB25_56
.LBB25_7:                               # %if.end.8
                                        #   in Loop: Header=BB25_4 Depth=1
	jmp	.LBB25_8
.LBB25_8:                               # %for.inc
                                        #   in Loop: Header=BB25_4 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB25_4
.LBB25_9:                               # %for.end
	movq	-8(%rbp), %rax
	movq	print_depth, %rcx
	movq	%rax, being_printed(,%rcx,8)
.LBB25_10:                              # %if.end.10
	movq	print_depth, %rax
	addq	$1, %rax
	movq	%rax, print_depth
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB25_11:                              # %loop
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB25_23
# BB#12:                                # %lor.lhs.false
                                        #   in Loop: Header=BB25_11 Depth=1
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB25_23
# BB#13:                                # %lor.lhs.false.17
                                        #   in Loop: Header=BB25_11 Depth=1
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$5, %ecx
	jne	.LBB25_20
# BB#14:                                # %land.lhs.true
                                        #   in Loop: Header=BB25_11 Depth=1
	movq	-8(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB25_23
# BB#15:                                # %lor.lhs.false.24
                                        #   in Loop: Header=BB25_11 Depth=1
	movq	-8(%rbp), %rdi
	callq	COMPILEDP
	testb	$1, %al
	jne	.LBB25_23
# BB#16:                                # %lor.lhs.false.27
                                        #   in Loop: Header=BB25_11 Depth=1
	movq	-8(%rbp), %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB25_23
# BB#17:                                # %lor.lhs.false.30
                                        #   in Loop: Header=BB25_11 Depth=1
	movq	-8(%rbp), %rdi
	callq	SUB_CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB25_23
# BB#18:                                # %lor.lhs.false.33
                                        #   in Loop: Header=BB25_11 Depth=1
	movq	-8(%rbp), %rdi
	callq	HASH_TABLE_P
	testb	$1, %al
	jne	.LBB25_23
# BB#19:                                # %lor.lhs.false.36
                                        #   in Loop: Header=BB25_11 Depth=1
	movq	-8(%rbp), %rdi
	callq	FONTP
	testb	$1, %al
	jne	.LBB25_23
.LBB25_20:                              # %lor.lhs.false.39
                                        #   in Loop: Header=BB25_11 Depth=1
	xorl	%edi, %edi
	movq	globals+1848, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB25_55
# BB#21:                                # %land.lhs.true.43
                                        #   in Loop: Header=BB25_11 Depth=1
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB25_55
# BB#22:                                # %land.lhs.true.48
                                        #   in Loop: Header=BB25_11 Depth=1
	movq	-8(%rbp), %rdi
	callq	SYMBOL_INTERNED_P
	testb	$1, %al
	jne	.LBB25_55
.LBB25_23:                              # %if.then.50
                                        #   in Loop: Header=BB25_11 Depth=1
	movq	globals+1872, %rdi
	callq	HASH_TABLE_P
	testb	$1, %al
	jne	.LBB25_25
# BB#24:                                # %if.then.52
                                        #   in Loop: Header=BB25_11 Depth=1
	movl	$129, %edi
	callq	builtin_lisp_symbol
	movl	$369, %edi              # imm = 0x171
	movq	%rax, -56(%rbp)
	callq	builtin_lisp_symbol
	movl	$2, %edi
                                        # kill: RDI<def> EDI<kill>
	leaq	-56(%rbp), %rsi
	movq	%rax, -48(%rbp)
	callq	Fmake_hash_table
	movq	%rax, globals+1872
.LBB25_25:                              # %if.end.56
                                        #   in Loop: Header=BB25_11 Depth=1
	xorl	%edi, %edi
	movq	globals+1832, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB25_27
# BB#26:                                # %lor.lhs.false.60
                                        #   in Loop: Header=BB25_11 Depth=1
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB25_36
.LBB25_27:                              # %if.then.65
                                        #   in Loop: Header=BB25_11 Depth=1
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	globals+1872, %rsi
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fgethash
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB25_31
# BB#28:                                # %lor.lhs.false.71
                                        #   in Loop: Header=BB25_11 Depth=1
	xorl	%edi, %edi
	movq	globals+1840, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB25_34
# BB#29:                                # %land.lhs.true.75
                                        #   in Loop: Header=BB25_11 Depth=1
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB25_34
# BB#30:                                # %land.lhs.true.80
                                        #   in Loop: Header=BB25_11 Depth=1
	movq	-8(%rbp), %rdi
	callq	SYMBOL_INTERNED_P
	testb	$1, %al
	jne	.LBB25_34
.LBB25_31:                              # %if.then.82
	movq	-64(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	je	.LBB25_33
# BB#32:                                # %if.then.88
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	print_number_index, %rdx
	addq	$1, %rdx
	movq	%rdx, print_number_index
	movq	-8(%rbp), %rdi
	subq	print_number_index, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	globals+1872, %rdx
	movq	%rcx, %rsi
	callq	Fputhash
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB25_33:                              # %if.end.91
	movq	print_depth, %rax
	addq	$-1, %rax
	movq	%rax, print_depth
	jmp	.LBB25_56
.LBB25_34:                              # %if.else
                                        #   in Loop: Header=BB25_11 Depth=1
	movl	$901, %edi              # imm = 0x385
	movq	-8(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	globals+1872, %rdx
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fputhash
	movq	%rax, -152(%rbp)        # 8-byte Spill
# BB#35:                                # %if.end.94
                                        #   in Loop: Header=BB25_11 Depth=1
	jmp	.LBB25_36
.LBB25_36:                              # %if.end.95
                                        #   in Loop: Header=BB25_11 Depth=1
	movl	-8(%rbp), %eax
	andl	$7, %eax
	movl	%eax, %ecx
	subl	$3, %ecx
	movl	%eax, -156(%rbp)        # 4-byte Spill
	movl	%ecx, -160(%rbp)        # 4-byte Spill
	je	.LBB25_38
	jmp	.LBB25_57
.LBB25_57:                              # %if.end.95
	movl	-156(%rbp), %eax        # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -164(%rbp)        # 4-byte Spill
	je	.LBB25_37
	jmp	.LBB25_58
.LBB25_58:                              # %if.end.95
	movl	-156(%rbp), %eax        # 4-byte Reload
	subl	$5, %eax
	movl	%eax, -168(%rbp)        # 4-byte Spill
	je	.LBB25_44
	jmp	.LBB25_53
.LBB25_37:                              # %sw.bb
	movq	-8(%rbp), %rdi
	callq	string_intervals
	xorl	%edi, %edi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$print_preprocess_string, %rsi
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	traverse_intervals_noorder
	jmp	.LBB25_54
.LBB25_38:                              # %sw.bb.100
                                        #   in Loop: Header=BB25_11 Depth=1
	cmpl	$0, -28(%rbp)
	je	.LBB25_41
# BB#39:                                # %land.lhs.true.101
                                        #   in Loop: Header=BB25_11 Depth=1
	movq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB25_41
# BB#40:                                # %if.then.104
	jmp	.LBB25_54
.LBB25_41:                              # %if.end.105
                                        #   in Loop: Header=BB25_11 Depth=1
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	print_preprocess
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	-28(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -28(%rbp)
	movl	-28(%rbp), %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	jne	.LBB25_43
# BB#42:                                # %if.then.111
                                        #   in Loop: Header=BB25_11 Depth=1
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB25_43:                              # %if.end.115
                                        #   in Loop: Header=BB25_11 Depth=1
	jmp	.LBB25_11
.LBB25_44:                              # %sw.bb.116
	movq	-8(%rbp), %rdi
	callq	ASIZE
	movq	%rax, -24(%rbp)
	movabsq	$4611686018427387904, %rax # imm = 0x4000000000000000
	andq	-24(%rbp), %rax
	cmpq	$0, %rax
	je	.LBB25_46
# BB#45:                                # %if.then.120
	movq	-24(%rbp), %rax
	andq	$4095, %rax             # imm = 0xFFF
	movq	%rax, -24(%rbp)
.LBB25_46:                              # %if.end.122
	movq	-8(%rbp), %rdi
	callq	SUB_CHAR_TABLE_P
	xorl	%ecx, %ecx
	movl	$1, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -12(%rbp)
.LBB25_47:                              # %for.cond.125
                                        # =>This Inner Loop Header: Depth=1
	movslq	-12(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jge	.LBB25_50
# BB#48:                                # %for.body.129
                                        #   in Loop: Header=BB25_47 Depth=1
	movq	-8(%rbp), %rdi
	movslq	-12(%rbp), %rsi
	callq	AREF
	movq	%rax, %rdi
	callq	print_preprocess
# BB#49:                                # %for.inc.132
                                        #   in Loop: Header=BB25_47 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB25_47
.LBB25_50:                              # %for.end.134
	movq	-8(%rbp), %rdi
	callq	HASH_TABLE_P
	testb	$1, %al
	jne	.LBB25_51
	jmp	.LBB25_52
.LBB25_51:                              # %if.then.136
	movq	-8(%rbp), %rdi
	callq	XHASH_TABLE
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	72(%rax), %rdi
	callq	print_preprocess
.LBB25_52:                              # %if.end.138
	jmp	.LBB25_54
.LBB25_53:                              # %sw.default
	jmp	.LBB25_54
.LBB25_54:                              # %sw.epilog
	jmp	.LBB25_55
.LBB25_55:                              # %if.end.139
	movq	print_depth, %rax
	addq	$-1, %rax
	movq	%rax, print_depth
.LBB25_56:                              # %return
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	print_preprocess, .Lfunc_end25-print_preprocess
	.cfi_endproc

	.align	16, 0x90
	.type	print_object,@function
print_object:                           # @print_object
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
	subq	$1424, %rsp             # imm = 0x590
	movb	%dl, %al
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	andb	$1, %al
	movb	%al, -17(%rbp)
# BB#1:                                 # %do.body
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -920(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-920(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB26_4
# BB#2:                                 # %land.lhs.true
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -928(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-928(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB26_4
# BB#3:                                 # %if.then
	callq	process_quit_flag
	jmp	.LBB26_7
.LBB26_4:                               # %if.else
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB26_6
# BB#5:                                 # %if.then.3
	callq	process_pending_signals
.LBB26_6:                               # %if.end
	jmp	.LBB26_7
.LBB26_7:                               # %if.end.4
	jmp	.LBB26_8
.LBB26_8:                               # %do.end
	xorl	%edi, %edi
	movq	globals+1832, %rax
	movq	%rax, -936(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-936(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB26_18
# BB#9:                                 # %if.then.7
	cmpq	$200, print_depth
	jl	.LBB26_11
# BB#10:                                # %if.then.9
	movabsq	$.L.str.37, %rdi
	movb	$0, %al
	callq	error
.LBB26_11:                              # %if.end.10
	movl	$0, -84(%rbp)
.LBB26_12:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-84(%rbp), %rax
	cmpq	print_depth, %rax
	jge	.LBB26_17
# BB#13:                                # %for.body
                                        #   in Loop: Header=BB26_12 Depth=1
	movq	-8(%rbp), %rax
	movslq	-84(%rbp), %rcx
	cmpq	being_printed(,%rcx,8), %rax
	jne	.LBB26_15
# BB#14:                                # %if.then.15
	movabsq	$.L.str.38, %rsi
	leaq	-80(%rbp), %rdi
	movl	-84(%rbp), %edx
	movb	$0, %al
	callq	sprintf
	leaq	-80(%rbp), %rdi
	movl	%eax, -88(%rbp)
	movslq	-88(%rbp), %rsi
	movslq	-88(%rbp), %rdx
	movq	-16(%rbp), %rcx
	callq	strout
	jmp	.LBB26_438
.LBB26_15:                              # %if.end.20
                                        #   in Loop: Header=BB26_12 Depth=1
	jmp	.LBB26_16
.LBB26_16:                              # %for.inc
                                        #   in Loop: Header=BB26_12 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB26_12
.LBB26_17:                              # %for.end
	movq	-8(%rbp), %rax
	movq	print_depth, %rcx
	movq	%rax, being_printed(,%rcx,8)
	jmp	.LBB26_37
.LBB26_18:                              # %if.else.22
	movq	-8(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB26_30
# BB#19:                                # %lor.lhs.false
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB26_30
# BB#20:                                # %lor.lhs.false.28
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$5, %ecx
	jne	.LBB26_27
# BB#21:                                # %land.lhs.true.33
	movq	-8(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB26_30
# BB#22:                                # %lor.lhs.false.36
	movq	-8(%rbp), %rdi
	callq	COMPILEDP
	testb	$1, %al
	jne	.LBB26_30
# BB#23:                                # %lor.lhs.false.39
	movq	-8(%rbp), %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB26_30
# BB#24:                                # %lor.lhs.false.42
	movq	-8(%rbp), %rdi
	callq	SUB_CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB26_30
# BB#25:                                # %lor.lhs.false.45
	movq	-8(%rbp), %rdi
	callq	HASH_TABLE_P
	testb	$1, %al
	jne	.LBB26_30
# BB#26:                                # %lor.lhs.false.48
	movq	-8(%rbp), %rdi
	callq	FONTP
	testb	$1, %al
	jne	.LBB26_30
.LBB26_27:                              # %lor.lhs.false.51
	xorl	%edi, %edi
	movq	globals+1848, %rax
	movq	%rax, -944(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-944(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB26_36
# BB#28:                                # %land.lhs.true.55
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB26_36
# BB#29:                                # %land.lhs.true.60
	movq	-8(%rbp), %rdi
	callq	SYMBOL_INTERNED_P
	testb	$1, %al
	jne	.LBB26_36
.LBB26_30:                              # %if.then.62
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	globals+1872, %rsi
	movq	%rsi, -952(%rbp)        # 8-byte Spill
	movq	%rax, -960(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-960(%rbp), %rdi        # 8-byte Reload
	movq	-952(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fgethash
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB26_35
# BB#31:                                # %if.then.70
	movq	-96(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	jge	.LBB26_33
# BB#32:                                # %if.then.73
	movabsq	$.L.str.39, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	leaq	-80(%rbp), %rdi
	subq	-104(%rbp), %rcx
	movq	%rcx, %rdx
	movb	$0, %al
	callq	sprintf
	leaq	-80(%rbp), %rdi
	movl	%eax, -108(%rbp)
	movslq	-108(%rbp), %rsi
	movslq	-108(%rbp), %rdx
	movq	-16(%rbp), %rcx
	callq	strout
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdi
	subq	-104(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	globals+1872, %rdx
	movq	%rcx, %rsi
	callq	Fputhash
	movq	%rax, -968(%rbp)        # 8-byte Spill
	jmp	.LBB26_34
.LBB26_33:                              # %if.else.82
	movabsq	$.L.str.40, %rsi
	leaq	-80(%rbp), %rdi
	movq	-104(%rbp), %rdx
	movb	$0, %al
	callq	sprintf
	leaq	-80(%rbp), %rdi
	movl	%eax, -112(%rbp)
	movslq	-112(%rbp), %rsi
	movslq	-112(%rbp), %rdx
	movq	-16(%rbp), %rcx
	callq	strout
	jmp	.LBB26_438
.LBB26_34:                              # %if.end.89
	jmp	.LBB26_35
.LBB26_35:                              # %if.end.90
	jmp	.LBB26_36
.LBB26_36:                              # %if.end.91
	jmp	.LBB26_37
.LBB26_37:                              # %if.end.92
	movq	print_depth(%rip), %rax
	incq	%rax
	movq	%rax, print_depth(%rip)
	movq	-8(%rbp), %rax
	movl	%eax, %ecx
	andl	$7, %ecx
	movl	%ecx, %eax
	movl	%eax, %ecx
	subl	$7, %ecx
	movq	%rax, -976(%rbp)        # 8-byte Spill
	movl	%ecx, -980(%rbp)        # 4-byte Spill
	ja	.LBB26_429
# BB#439:                               # %if.end.92
	movq	-976(%rbp), %rax        # 8-byte Reload
	movq	.LJTI26_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB26_38:                              # %sw.bb
	movabsq	$.L.str.41, %rsi
	leaq	-80(%rbp), %rdi
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, %rdx
	movb	$0, %al
	callq	sprintf
	leaq	-80(%rbp), %rdi
	movl	%eax, -116(%rbp)
	movslq	-116(%rbp), %rsi
	movslq	-116(%rbp), %rdx
	movq	-16(%rbp), %rcx
	callq	strout
	jmp	.LBB26_437
.LBB26_39:                              # %sw.bb.103
	leaq	-480(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -992(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	XFLOAT_DATA
	movq	-992(%rbp), %rdi        # 8-byte Reload
	callq	float_to_string
	leaq	-480(%rbp), %rdi
	movl	%eax, -484(%rbp)
	movslq	-484(%rbp), %rsi
	movslq	-484(%rbp), %rdx
	movq	-16(%rbp), %rcx
	callq	strout
	jmp	.LBB26_437
.LBB26_40:                              # %sw.bb.111
	testb	$1, -17(%rbp)
	jne	.LBB26_42
# BB#41:                                # %if.then.113
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	print_string
	jmp	.LBB26_108
.LBB26_42:                              # %if.else.114
	movb	$0, -513(%rbp)
	movq	-8(%rbp), %rdi
	callq	STRING_MULTIBYTE
	movl	$901, %edi              # imm = 0x385
	andb	$1, %al
	movb	%al, -514(%rbp)
	movq	globals+1824, %rcx
	movq	%rcx, -1000(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1000(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB26_44
# BB#43:                                # %if.then.121
	movq	-8(%rbp), %rdi
	callq	print_prune_string_charset
	movq	%rax, -8(%rbp)
.LBB26_44:                              # %if.end.123
	movq	-8(%rbp), %rdi
	callq	string_intervals
	cmpq	$0, %rax
	je	.LBB26_46
# BB#45:                                # %if.then.126
	movabsq	$.L.str.42, %rdi
	movq	-16(%rbp), %rsi
	callq	print_c_string
.LBB26_46:                              # %if.end.127
	movl	$34, %edi
	movq	-16(%rbp), %rsi
	callq	printchar
	movq	-8(%rbp), %rdi
	callq	SBYTES
	movq	%rax, -512(%rbp)
	movq	$0, -496(%rbp)
	movq	$0, -504(%rbp)
.LBB26_47:                              # %for.cond.129
                                        # =>This Inner Loop Header: Depth=1
	movq	-504(%rbp), %rax
	cmpq	-512(%rbp), %rax
	jge	.LBB26_105
# BB#48:                                # %for.body.132
                                        #   in Loop: Header=BB26_47 Depth=1
	jmp	.LBB26_49
.LBB26_49:                              # %do.body.133
                                        #   in Loop: Header=BB26_47 Depth=1
	movq	-496(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -496(%rbp)
	movq	-8(%rbp), %rdi
	callq	STRING_MULTIBYTE
	testb	$1, %al
	jne	.LBB26_50
	jmp	.LBB26_60
.LBB26_50:                              # %if.then.136
                                        #   in Loop: Header=BB26_47 Depth=1
	movq	-504(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, -1008(%rbp)       # 8-byte Spill
	callq	SDATA
	movq	-1008(%rbp), %rdi       # 8-byte Reload
	addq	%rdi, %rax
	movq	%rax, -528(%rbp)
	movq	-528(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB26_52
# BB#51:                                # %cond.true
                                        #   in Loop: Header=BB26_47 Depth=1
	movl	$1, -532(%rbp)
	movq	-528(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -1012(%rbp)       # 4-byte Spill
	jmp	.LBB26_59
.LBB26_52:                              # %cond.false
                                        #   in Loop: Header=BB26_47 Depth=1
	movq	-528(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB26_54
# BB#53:                                # %cond.true.149
                                        #   in Loop: Header=BB26_47 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -532(%rbp)
	movq	-528(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-528(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-528(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -1016(%rbp)       # 4-byte Spill
	jmp	.LBB26_58
.LBB26_54:                              # %cond.false.162
                                        #   in Loop: Header=BB26_47 Depth=1
	movq	-528(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB26_56
# BB#55:                                # %cond.true.167
                                        #   in Loop: Header=BB26_47 Depth=1
	movl	$3, -532(%rbp)
	movq	-528(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-528(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-528(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -1020(%rbp)       # 4-byte Spill
	jmp	.LBB26_57
.LBB26_56:                              # %cond.false.181
                                        #   in Loop: Header=BB26_47 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-532(%rbp), %rdx
	movq	-528(%rbp), %rdi
	callq	string_char
	movl	%eax, -1020(%rbp)       # 4-byte Spill
.LBB26_57:                              # %cond.end
                                        #   in Loop: Header=BB26_47 Depth=1
	movl	-1020(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1016(%rbp)       # 4-byte Spill
.LBB26_58:                              # %cond.end.184
                                        #   in Loop: Header=BB26_47 Depth=1
	movl	-1016(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1012(%rbp)       # 4-byte Spill
.LBB26_59:                              # %cond.end.186
                                        #   in Loop: Header=BB26_47 Depth=1
	movl	-1012(%rbp), %eax       # 4-byte Reload
	movl	%eax, -520(%rbp)
	movslq	-532(%rbp), %rcx
	addq	-504(%rbp), %rcx
	movq	%rcx, -504(%rbp)
	jmp	.LBB26_61
.LBB26_60:                              # %if.else.190
                                        #   in Loop: Header=BB26_47 Depth=1
	movq	-8(%rbp), %rdi
	movq	-504(%rbp), %rsi
	callq	SREF
	movzbl	%al, %ecx
	movl	%ecx, -520(%rbp)
	movq	-504(%rbp), %rsi
	addq	$1, %rsi
	movq	%rsi, -504(%rbp)
.LBB26_61:                              # %if.end.194
                                        #   in Loop: Header=BB26_47 Depth=1
	jmp	.LBB26_62
.LBB26_62:                              # %do.end.195
                                        #   in Loop: Header=BB26_47 Depth=1
	jmp	.LBB26_63
.LBB26_63:                              # %do.body.196
                                        #   in Loop: Header=BB26_47 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -1032(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1032(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB26_66
# BB#64:                                # %land.lhs.true.200
                                        #   in Loop: Header=BB26_47 Depth=1
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -1040(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1040(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB26_66
# BB#65:                                # %if.then.204
                                        #   in Loop: Header=BB26_47 Depth=1
	callq	process_quit_flag
	jmp	.LBB26_69
.LBB26_66:                              # %if.else.205
                                        #   in Loop: Header=BB26_47 Depth=1
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB26_68
# BB#67:                                # %if.then.207
                                        #   in Loop: Header=BB26_47 Depth=1
	callq	process_pending_signals
.LBB26_68:                              # %if.end.208
                                        #   in Loop: Header=BB26_47 Depth=1
	jmp	.LBB26_69
.LBB26_69:                              # %if.end.209
                                        #   in Loop: Header=BB26_47 Depth=1
	jmp	.LBB26_70
.LBB26_70:                              # %do.end.210
                                        #   in Loop: Header=BB26_47 Depth=1
	testb	$1, -514(%rbp)
	je	.LBB26_76
# BB#71:                                # %cond.true.213
                                        #   in Loop: Header=BB26_47 Depth=1
	cmpl	$4194175, -520(%rbp)    # imm = 0x3FFF7F
	jle	.LBB26_84
# BB#72:                                # %land.lhs.true.216
                                        #   in Loop: Header=BB26_47 Depth=1
	cmpl	$4194175, -520(%rbp)    # imm = 0x3FFF7F
	jle	.LBB26_74
# BB#73:                                # %cond.true.219
                                        #   in Loop: Header=BB26_47 Depth=1
	movl	-520(%rbp), %eax
	subl	$4194048, %eax          # imm = 0x3FFF00
	movl	%eax, -1044(%rbp)       # 4-byte Spill
	jmp	.LBB26_75
.LBB26_74:                              # %cond.false.221
                                        #   in Loop: Header=BB26_47 Depth=1
	movl	-520(%rbp), %eax
	andl	$255, %eax
	movl	%eax, -1044(%rbp)       # 4-byte Spill
.LBB26_75:                              # %cond.end.223
                                        #   in Loop: Header=BB26_47 Depth=1
	movl	-1044(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movl	%eax, -520(%rbp)
	testb	$1, %cl
	jne	.LBB26_83
	jmp	.LBB26_84
.LBB26_76:                              # %cond.false.225
                                        #   in Loop: Header=BB26_47 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB26_77
	jmp	.LBB26_78
.LBB26_77:                              # %cond.true.226
                                        #   in Loop: Header=BB26_47 Depth=1
	movl	-520(%rbp), %eax
	addl	$0, %eax
	cmpl	$256, %eax              # imm = 0x100
	jb	.LBB26_79
	jmp	.LBB26_84
.LBB26_78:                              # %cond.false.230
                                        #   in Loop: Header=BB26_47 Depth=1
	movslq	-520(%rbp), %rax
	addq	$0, %rax
	cmpq	$256, %rax              # imm = 0x100
	jae	.LBB26_84
.LBB26_79:                              # %land.lhs.true.235
                                        #   in Loop: Header=BB26_47 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB26_80
	jmp	.LBB26_81
.LBB26_80:                              # %cond.true.236
                                        #   in Loop: Header=BB26_47 Depth=1
	movl	-520(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB26_84
	jmp	.LBB26_82
.LBB26_81:                              # %cond.false.240
                                        #   in Loop: Header=BB26_47 Depth=1
	movslq	-520(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jb	.LBB26_84
.LBB26_82:                              # %land.lhs.true.245
                                        #   in Loop: Header=BB26_47 Depth=1
	testb	$1, globals+3423
	je	.LBB26_84
.LBB26_83:                              # %if.then.248
                                        #   in Loop: Header=BB26_47 Depth=1
	movabsq	$.L.str.43, %rsi
	leaq	-537(%rbp), %rdi
	movl	-520(%rbp), %eax
	addl	$0, %eax
	movl	%eax, %edx
	movb	$0, %al
	callq	sprintf
	leaq	-537(%rbp), %rdi
	movl	%eax, -544(%rbp)
	movslq	-544(%rbp), %rsi
	movslq	-544(%rbp), %rdx
	movq	-16(%rbp), %rcx
	callq	strout
	movb	$0, -513(%rbp)
	jmp	.LBB26_104
.LBB26_84:                              # %if.else.256
                                        #   in Loop: Header=BB26_47 Depth=1
	testb	$1, -514(%rbp)
	je	.LBB26_90
# BB#85:                                # %land.lhs.true.259
                                        #   in Loop: Header=BB26_47 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB26_86
	jmp	.LBB26_87
.LBB26_86:                              # %cond.true.260
                                        #   in Loop: Header=BB26_47 Depth=1
	movl	-520(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB26_90
	jmp	.LBB26_88
.LBB26_87:                              # %cond.false.264
                                        #   in Loop: Header=BB26_47 Depth=1
	movslq	-520(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jb	.LBB26_90
.LBB26_88:                              # %land.lhs.true.269
                                        #   in Loop: Header=BB26_47 Depth=1
	testb	$1, globals+3421
	je	.LBB26_90
# BB#89:                                # %if.then.272
                                        #   in Loop: Header=BB26_47 Depth=1
	movabsq	$.L.str.44, %rsi
	leaq	-558(%rbp), %rdi
	movl	-520(%rbp), %eax
	addl	$0, %eax
	movl	%eax, %edx
	movb	$0, %al
	callq	sprintf
	leaq	-558(%rbp), %rdi
	movl	%eax, -564(%rbp)
	movslq	-564(%rbp), %rsi
	movslq	-564(%rbp), %rdx
	movq	-16(%rbp), %rcx
	callq	strout
	movb	$1, -513(%rbp)
	jmp	.LBB26_103
.LBB26_90:                              # %if.else.281
                                        #   in Loop: Header=BB26_47 Depth=1
	testb	$1, -513(%rbp)
	je	.LBB26_93
# BB#91:                                # %land.lhs.true.284
                                        #   in Loop: Header=BB26_47 Depth=1
	movl	-520(%rbp), %edi
	callq	c_isxdigit
	testb	$1, %al
	jne	.LBB26_92
	jmp	.LBB26_93
.LBB26_92:                              # %if.then.287
                                        #   in Loop: Header=BB26_47 Depth=1
	movabsq	$.L.str.45, %rdi
	movq	-16(%rbp), %rsi
	callq	print_c_string
.LBB26_93:                              # %if.end.288
                                        #   in Loop: Header=BB26_47 Depth=1
	cmpl	$10, -520(%rbp)
	jne	.LBB26_96
# BB#94:                                # %land.lhs.true.291
                                        #   in Loop: Header=BB26_47 Depth=1
	testb	$1, globals+3422
	je	.LBB26_96
# BB#95:                                # %cond.true.294
                                        #   in Loop: Header=BB26_47 Depth=1
	movb	$1, %al
	movl	$110, -520(%rbp)
	testb	$1, %al
	jne	.LBB26_101
	jmp	.LBB26_102
.LBB26_96:                              # %cond.false.295
                                        #   in Loop: Header=BB26_47 Depth=1
	cmpl	$12, -520(%rbp)
	jne	.LBB26_99
# BB#97:                                # %land.lhs.true.298
                                        #   in Loop: Header=BB26_47 Depth=1
	testb	$1, globals+3422
	je	.LBB26_99
# BB#98:                                # %cond.true.301
                                        #   in Loop: Header=BB26_47 Depth=1
	movb	$1, %al
	movl	$102, -520(%rbp)
	testb	$1, %al
	jne	.LBB26_101
	jmp	.LBB26_102
.LBB26_99:                              # %cond.false.302
                                        #   in Loop: Header=BB26_47 Depth=1
	cmpl	$34, -520(%rbp)
	je	.LBB26_101
# BB#100:                               # %lor.lhs.false.305
                                        #   in Loop: Header=BB26_47 Depth=1
	cmpl	$92, -520(%rbp)
	jne	.LBB26_102
.LBB26_101:                             # %if.then.308
                                        #   in Loop: Header=BB26_47 Depth=1
	movl	$92, %edi
	movq	-16(%rbp), %rsi
	callq	printchar
.LBB26_102:                             # %if.end.309
                                        #   in Loop: Header=BB26_47 Depth=1
	movl	-520(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	printchar
	movb	$0, -513(%rbp)
.LBB26_103:                             # %if.end.310
                                        #   in Loop: Header=BB26_47 Depth=1
	jmp	.LBB26_104
.LBB26_104:                             # %if.end.311
                                        #   in Loop: Header=BB26_47 Depth=1
	jmp	.LBB26_47
.LBB26_105:                             # %for.end.312
	movl	$34, %edi
	movq	-16(%rbp), %rsi
	callq	printchar
	movq	-8(%rbp), %rdi
	callq	string_intervals
	cmpq	$0, %rax
	je	.LBB26_107
# BB#106:                               # %if.then.315
	movq	-8(%rbp), %rdi
	callq	string_intervals
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$print_interval, %rdx
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	callq	traverse_intervals
	movl	$41, %edi
	movq	-16(%rbp), %rsi
	callq	printchar
.LBB26_107:                             # %if.end.317
	jmp	.LBB26_108
.LBB26_108:                             # %if.end.318
	jmp	.LBB26_437
.LBB26_109:                             # %sw.bb.319
	movq	-8(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SDATA
	movq	%rax, -576(%rbp)
	movq	-576(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, -1056(%rbp)       # 8-byte Spill
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SBYTES
	movq	-1056(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	movq	%rdi, -584(%rbp)
	movq	-8(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, -624(%rbp)
	movq	-576(%rbp), %rax
	cmpq	-584(%rbp), %rax
	je	.LBB26_113
# BB#110:                               # %land.lhs.true.331
	movq	-576(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$45, %ecx
	je	.LBB26_112
# BB#111:                               # %lor.lhs.false.335
	movq	-576(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$43, %ecx
	jne	.LBB26_113
.LBB26_112:                             # %if.then.339
	movq	-576(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -576(%rbp)
.LBB26_113:                             # %if.end.340
	movq	-576(%rbp), %rax
	cmpq	-584(%rbp), %rax
	jne	.LBB26_115
# BB#114:                               # %if.then.343
	movb	$0, -565(%rbp)
	jmp	.LBB26_131
.LBB26_115:                             # %if.else.344
	movq	-576(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$48, %ecx
	jl	.LBB26_129
# BB#116:                               # %land.lhs.true.348
	movq	-576(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$57, %ecx
	jg	.LBB26_129
# BB#117:                               # %land.lhs.true.352
	movq	-584(%rbp), %rax
	movzbl	-1(%rax), %ecx
	cmpl	$48, %ecx
	jl	.LBB26_129
# BB#118:                               # %land.lhs.true.357
	movq	-584(%rbp), %rax
	movzbl	-1(%rax), %ecx
	cmpl	$57, %ecx
	jg	.LBB26_129
# BB#119:                               # %if.then.362
	jmp	.LBB26_120
.LBB26_120:                             # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-576(%rbp), %rdx
	cmpq	-584(%rbp), %rdx
	movb	%cl, -1057(%rbp)        # 1-byte Spill
	je	.LBB26_126
# BB#121:                               # %land.rhs
                                        #   in Loop: Header=BB26_120 Depth=1
	movq	-576(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$48, %ecx
	jl	.LBB26_123
# BB#122:                               # %land.lhs.true.368
                                        #   in Loop: Header=BB26_120 Depth=1
	movb	$1, %al
	movq	-576(%rbp), %rcx
	movzbl	(%rcx), %edx
	cmpl	$57, %edx
	movb	%al, -1058(%rbp)        # 1-byte Spill
	jle	.LBB26_125
.LBB26_123:                             # %lor.lhs.false.372
                                        #   in Loop: Header=BB26_120 Depth=1
	movb	$1, %al
	movq	-576(%rbp), %rcx
	movzbl	(%rcx), %edx
	cmpl	$101, %edx
	movb	%al, -1058(%rbp)        # 1-byte Spill
	je	.LBB26_125
# BB#124:                               # %lor.rhs
                                        #   in Loop: Header=BB26_120 Depth=1
	movq	-576(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$69, %ecx
	sete	%dl
	movb	%dl, -1058(%rbp)        # 1-byte Spill
.LBB26_125:                             # %lor.end
                                        #   in Loop: Header=BB26_120 Depth=1
	movb	-1058(%rbp), %al        # 1-byte Reload
	movb	%al, -1057(%rbp)        # 1-byte Spill
.LBB26_126:                             # %land.end
                                        #   in Loop: Header=BB26_120 Depth=1
	movb	-1057(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB26_127
	jmp	.LBB26_128
.LBB26_127:                             # %while.body
                                        #   in Loop: Header=BB26_120 Depth=1
	movq	-576(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -576(%rbp)
	jmp	.LBB26_120
.LBB26_128:                             # %while.end
	movq	-584(%rbp), %rax
	cmpq	-576(%rbp), %rax
	sete	%cl
	andb	$1, %cl
	movb	%cl, -565(%rbp)
	jmp	.LBB26_130
.LBB26_129:                             # %if.else.383
	movb	$0, -565(%rbp)
.LBB26_130:                             # %if.end.384
	jmp	.LBB26_131
.LBB26_131:                             # %if.end.385
	movq	-624(%rbp), %rdi
	callq	SBYTES
	xorl	%edi, %edi
	movq	%rax, -616(%rbp)
	movq	globals+1848, %rax
	movq	%rax, -1072(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1072(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB26_134
# BB#132:                               # %land.lhs.true.390
	movq	-8(%rbp), %rdi
	callq	SYMBOL_INTERNED_P
	testb	$1, %al
	jne	.LBB26_134
# BB#133:                               # %if.then.392
	movabsq	$.L.str.46, %rdi
	movq	-16(%rbp), %rsi
	callq	print_c_string
	jmp	.LBB26_137
.LBB26_134:                             # %if.else.393
	cmpq	$0, -616(%rbp)
	jne	.LBB26_136
# BB#135:                               # %if.then.396
	movabsq	$.L.str.47, %rdi
	movq	-16(%rbp), %rsi
	callq	print_c_string
	jmp	.LBB26_437
.LBB26_136:                             # %if.end.397
	jmp	.LBB26_137
.LBB26_137:                             # %if.end.398
	movq	$0, -600(%rbp)
	movq	$0, -608(%rbp)
.LBB26_138:                             # %for.cond.399
                                        # =>This Inner Loop Header: Depth=1
	movq	-608(%rbp), %rax
	cmpq	-616(%rbp), %rax
	jge	.LBB26_180
# BB#139:                               # %for.body.402
                                        #   in Loop: Header=BB26_138 Depth=1
	jmp	.LBB26_140
.LBB26_140:                             # %do.body.403
                                        #   in Loop: Header=BB26_138 Depth=1
	movq	-600(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -600(%rbp)
	movq	-624(%rbp), %rdi
	callq	STRING_MULTIBYTE
	testb	$1, %al
	jne	.LBB26_141
	jmp	.LBB26_151
.LBB26_141:                             # %if.then.406
                                        #   in Loop: Header=BB26_138 Depth=1
	movq	-608(%rbp), %rax
	movq	-624(%rbp), %rdi
	movq	%rax, -1080(%rbp)       # 8-byte Spill
	callq	SDATA
	movq	-1080(%rbp), %rdi       # 8-byte Reload
	addq	%rdi, %rax
	movq	%rax, -632(%rbp)
	movq	-632(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB26_143
# BB#142:                               # %cond.true.415
                                        #   in Loop: Header=BB26_138 Depth=1
	movl	$1, -636(%rbp)
	movq	-632(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -1084(%rbp)       # 4-byte Spill
	jmp	.LBB26_150
.LBB26_143:                             # %cond.false.418
                                        #   in Loop: Header=BB26_138 Depth=1
	movq	-632(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB26_145
# BB#144:                               # %cond.true.423
                                        #   in Loop: Header=BB26_138 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -636(%rbp)
	movq	-632(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-632(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-632(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -1088(%rbp)       # 4-byte Spill
	jmp	.LBB26_149
.LBB26_145:                             # %cond.false.438
                                        #   in Loop: Header=BB26_138 Depth=1
	movq	-632(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB26_147
# BB#146:                               # %cond.true.443
                                        #   in Loop: Header=BB26_138 Depth=1
	movl	$3, -636(%rbp)
	movq	-632(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-632(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-632(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -1092(%rbp)       # 4-byte Spill
	jmp	.LBB26_148
.LBB26_147:                             # %cond.false.457
                                        #   in Loop: Header=BB26_138 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-636(%rbp), %rdx
	movq	-632(%rbp), %rdi
	callq	string_char
	movl	%eax, -1092(%rbp)       # 4-byte Spill
.LBB26_148:                             # %cond.end.459
                                        #   in Loop: Header=BB26_138 Depth=1
	movl	-1092(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1088(%rbp)       # 4-byte Spill
.LBB26_149:                             # %cond.end.461
                                        #   in Loop: Header=BB26_138 Depth=1
	movl	-1088(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1084(%rbp)       # 4-byte Spill
.LBB26_150:                             # %cond.end.463
                                        #   in Loop: Header=BB26_138 Depth=1
	movl	-1084(%rbp), %eax       # 4-byte Reload
	movl	%eax, -588(%rbp)
	movslq	-636(%rbp), %rcx
	addq	-608(%rbp), %rcx
	movq	%rcx, -608(%rbp)
	jmp	.LBB26_152
.LBB26_151:                             # %if.else.467
                                        #   in Loop: Header=BB26_138 Depth=1
	movq	-624(%rbp), %rdi
	movq	-608(%rbp), %rsi
	callq	SREF
	movzbl	%al, %ecx
	movl	%ecx, -588(%rbp)
	movq	-608(%rbp), %rsi
	addq	$1, %rsi
	movq	%rsi, -608(%rbp)
.LBB26_152:                             # %if.end.471
                                        #   in Loop: Header=BB26_138 Depth=1
	jmp	.LBB26_153
.LBB26_153:                             # %do.end.472
                                        #   in Loop: Header=BB26_138 Depth=1
	jmp	.LBB26_154
.LBB26_154:                             # %do.body.473
                                        #   in Loop: Header=BB26_138 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -1104(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1104(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB26_157
# BB#155:                               # %land.lhs.true.477
                                        #   in Loop: Header=BB26_138 Depth=1
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -1112(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1112(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB26_157
# BB#156:                               # %if.then.481
                                        #   in Loop: Header=BB26_138 Depth=1
	callq	process_quit_flag
	jmp	.LBB26_160
.LBB26_157:                             # %if.else.482
                                        #   in Loop: Header=BB26_138 Depth=1
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB26_159
# BB#158:                               # %if.then.484
                                        #   in Loop: Header=BB26_138 Depth=1
	callq	process_pending_signals
.LBB26_159:                             # %if.end.485
                                        #   in Loop: Header=BB26_138 Depth=1
	jmp	.LBB26_160
.LBB26_160:                             # %if.end.486
                                        #   in Loop: Header=BB26_138 Depth=1
	jmp	.LBB26_161
.LBB26_161:                             # %do.end.487
                                        #   in Loop: Header=BB26_138 Depth=1
	testb	$1, -17(%rbp)
	je	.LBB26_179
# BB#162:                               # %if.then.489
                                        #   in Loop: Header=BB26_138 Depth=1
	cmpl	$34, -588(%rbp)
	je	.LBB26_177
# BB#163:                               # %lor.lhs.false.492
                                        #   in Loop: Header=BB26_138 Depth=1
	cmpl	$92, -588(%rbp)
	je	.LBB26_177
# BB#164:                               # %lor.lhs.false.495
                                        #   in Loop: Header=BB26_138 Depth=1
	cmpl	$39, -588(%rbp)
	je	.LBB26_177
# BB#165:                               # %lor.lhs.false.498
                                        #   in Loop: Header=BB26_138 Depth=1
	cmpl	$59, -588(%rbp)
	je	.LBB26_177
# BB#166:                               # %lor.lhs.false.501
                                        #   in Loop: Header=BB26_138 Depth=1
	cmpl	$35, -588(%rbp)
	je	.LBB26_177
# BB#167:                               # %lor.lhs.false.504
                                        #   in Loop: Header=BB26_138 Depth=1
	cmpl	$40, -588(%rbp)
	je	.LBB26_177
# BB#168:                               # %lor.lhs.false.507
                                        #   in Loop: Header=BB26_138 Depth=1
	cmpl	$41, -588(%rbp)
	je	.LBB26_177
# BB#169:                               # %lor.lhs.false.510
                                        #   in Loop: Header=BB26_138 Depth=1
	cmpl	$44, -588(%rbp)
	je	.LBB26_177
# BB#170:                               # %lor.lhs.false.513
                                        #   in Loop: Header=BB26_138 Depth=1
	cmpl	$46, -588(%rbp)
	je	.LBB26_177
# BB#171:                               # %lor.lhs.false.516
                                        #   in Loop: Header=BB26_138 Depth=1
	cmpl	$96, -588(%rbp)
	je	.LBB26_177
# BB#172:                               # %lor.lhs.false.519
                                        #   in Loop: Header=BB26_138 Depth=1
	cmpl	$91, -588(%rbp)
	je	.LBB26_177
# BB#173:                               # %lor.lhs.false.522
                                        #   in Loop: Header=BB26_138 Depth=1
	cmpl	$93, -588(%rbp)
	je	.LBB26_177
# BB#174:                               # %lor.lhs.false.525
                                        #   in Loop: Header=BB26_138 Depth=1
	cmpl	$63, -588(%rbp)
	je	.LBB26_177
# BB#175:                               # %lor.lhs.false.528
                                        #   in Loop: Header=BB26_138 Depth=1
	cmpl	$32, -588(%rbp)
	jle	.LBB26_177
# BB#176:                               # %lor.lhs.false.531
                                        #   in Loop: Header=BB26_138 Depth=1
	testb	$1, -565(%rbp)
	je	.LBB26_178
.LBB26_177:                             # %if.then.534
                                        #   in Loop: Header=BB26_138 Depth=1
	movl	$92, %edi
	movq	-16(%rbp), %rsi
	callq	printchar
	movb	$0, -565(%rbp)
.LBB26_178:                             # %if.end.535
                                        #   in Loop: Header=BB26_138 Depth=1
	jmp	.LBB26_179
.LBB26_179:                             # %if.end.536
                                        #   in Loop: Header=BB26_138 Depth=1
	movl	-588(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	printchar
	jmp	.LBB26_138
.LBB26_180:                             # %for.end.537
	jmp	.LBB26_437
.LBB26_181:                             # %sw.bb.538
	movq	globals+1864, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB26_184
# BB#182:                               # %land.lhs.true.544
	movq	print_depth, %rax
	movq	globals+1864, %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jle	.LBB26_184
# BB#183:                               # %if.then.548
	movabsq	$.L.str.48, %rdi
	movq	-16(%rbp), %rsi
	callq	print_c_string
	jmp	.LBB26_237
.LBB26_184:                             # %if.else.549
	testb	$1, globals+3424
	je	.LBB26_189
# BB#185:                               # %land.lhs.true.552
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB26_189
# BB#186:                               # %land.lhs.true.558
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -1120(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1120(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB26_189
# BB#187:                               # %land.lhs.true.568
	movl	$783, %edi              # imm = 0x30F
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -1128(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1128(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB26_189
# BB#188:                               # %if.then.573
	movl	$39, %edi
	movq	-16(%rbp), %rsi
	callq	printchar
	movq	-8(%rbp), %rsi
	subq	$3, %rsi
	movq	8(%rsi), %rsi
	subq	$3, %rsi
	movq	(%rsi), %rdi
	movq	-16(%rbp), %rsi
	movb	-17(%rbp), %al
	andb	$1, %al
	movzbl	%al, %edx
	callq	print_object
	jmp	.LBB26_236
.LBB26_189:                             # %if.else.580
	testb	$1, globals+3424
	je	.LBB26_194
# BB#190:                               # %land.lhs.true.583
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB26_194
# BB#191:                               # %land.lhs.true.591
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -1136(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1136(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB26_194
# BB#192:                               # %land.lhs.true.601
	movl	$476, %edi              # imm = 0x1DC
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -1144(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1144(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB26_194
# BB#193:                               # %if.then.607
	movabsq	$.L.str.49, %rdi
	movq	-16(%rbp), %rsi
	callq	print_c_string
	movq	-8(%rbp), %rsi
	subq	$3, %rsi
	movq	8(%rsi), %rsi
	subq	$3, %rsi
	movq	(%rsi), %rdi
	movq	-16(%rbp), %rsi
	movb	-17(%rbp), %al
	andb	$1, %al
	movzbl	%al, %edx
	callq	print_object
	jmp	.LBB26_235
.LBB26_194:                             # %if.else.614
	testb	$1, globals+3424
	je	.LBB26_199
# BB#195:                               # %land.lhs.true.617
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB26_199
# BB#196:                               # %land.lhs.true.625
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -1152(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1152(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB26_199
# BB#197:                               # %land.lhs.true.635
	movl	$195, %edi
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -1160(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1160(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB26_199
# BB#198:                               # %if.then.641
	movl	$96, %edi
	movq	-16(%rbp), %rsi
	callq	printchar
	movq	new_backquote_output, %rsi
	addq	$1, %rsi
	movq	%rsi, new_backquote_output
	movq	-8(%rbp), %rsi
	subq	$3, %rsi
	movq	8(%rsi), %rsi
	subq	$3, %rsi
	movq	(%rsi), %rdi
	movq	-16(%rbp), %rsi
	movb	-17(%rbp), %al
	andb	$1, %al
	movzbl	%al, %edx
	callq	print_object
	movq	new_backquote_output, %rsi
	addq	$-1, %rsi
	movq	%rsi, new_backquote_output
	jmp	.LBB26_234
.LBB26_199:                             # %if.else.649
	testb	$1, globals+3424
	je	.LBB26_207
# BB#200:                               # %land.lhs.true.652
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB26_207
# BB#201:                               # %land.lhs.true.660
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -1168(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1168(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB26_207
# BB#202:                               # %land.lhs.true.670
	cmpq	$0, new_backquote_output
	je	.LBB26_207
# BB#203:                               # %land.lhs.true.672
	movl	$282, %edi              # imm = 0x11A
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -1176(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1176(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB26_206
# BB#204:                               # %lor.lhs.false.678
	movl	$283, %edi              # imm = 0x11B
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -1184(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1184(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB26_206
# BB#205:                               # %lor.lhs.false.684
	movl	$284, %edi              # imm = 0x11C
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -1192(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1192(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB26_207
.LBB26_206:                             # %if.then.690
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	print_object
	movq	new_backquote_output, %rax
	addq	$-1, %rax
	movq	%rax, new_backquote_output
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rsi
	movb	-17(%rbp), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	callq	print_object
	movq	new_backquote_output, %rax
	addq	$1, %rax
	movq	%rax, new_backquote_output
	jmp	.LBB26_233
.LBB26_207:                             # %if.else.701
	movl	$40, %edi
	movq	-16(%rbp), %rsi
	callq	printchar
	movq	-8(%rbp), %rsi
	movq	%rsi, -648(%rbp)
	movq	globals+1856, %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB26_208
	jmp	.LBB26_209
.LBB26_208:                             # %cond.true.704
	movq	globals+1856, %rax
	sarq	$2, %rax
	movq	%rax, -1200(%rbp)       # 8-byte Spill
	jmp	.LBB26_210
.LBB26_209:                             # %cond.false.706
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	%rax, -1200(%rbp)       # 8-byte Spill
	jmp	.LBB26_210
.LBB26_210:                             # %cond.end.707
	movq	-1200(%rbp), %rax       # 8-byte Reload
	movq	%rax, -656(%rbp)
	movq	$0, -664(%rbp)
.LBB26_211:                             # %while.cond.710
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB26_229
# BB#212:                               # %while.body.715
                                        #   in Loop: Header=BB26_211 Depth=1
	xorl	%edi, %edi
	movq	globals+1832, %rax
	movq	%rax, -1208(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1208(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB26_217
# BB#213:                               # %if.then.719
                                        #   in Loop: Header=BB26_211 Depth=1
	cmpq	$0, -664(%rbp)
	je	.LBB26_216
# BB#214:                               # %land.lhs.true.722
                                        #   in Loop: Header=BB26_211 Depth=1
	movq	-8(%rbp), %rax
	cmpq	-648(%rbp), %rax
	jne	.LBB26_216
# BB#215:                               # %if.then.725
	movabsq	$.L.str.50, %rsi
	movl	$2, %eax
	movl	%eax, %ecx
	leaq	-80(%rbp), %rdi
	movq	-664(%rbp), %rax
	cqto
	idivq	%rcx
	movq	%rax, %rdx
	movb	$0, %al
	callq	sprintf
	leaq	-80(%rbp), %rdi
	movl	%eax, -668(%rbp)
	movslq	-668(%rbp), %rsi
	movslq	-668(%rbp), %rdx
	movq	-16(%rbp), %rcx
	callq	strout
	jmp	.LBB26_232
.LBB26_216:                             # %if.end.732
                                        #   in Loop: Header=BB26_211 Depth=1
	jmp	.LBB26_222
.LBB26_217:                             # %if.else.733
                                        #   in Loop: Header=BB26_211 Depth=1
	cmpq	$0, -664(%rbp)
	je	.LBB26_221
# BB#218:                               # %if.then.736
                                        #   in Loop: Header=BB26_211 Depth=1
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	globals+1872, %rsi
	movq	%rsi, -1216(%rbp)       # 8-byte Spill
	movq	%rax, -1224(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1224(%rbp), %rdi       # 8-byte Reload
	movq	-1216(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	callq	Fgethash
	movq	%rax, -680(%rbp)
	movq	-680(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB26_220
# BB#219:                               # %if.then.745
	movabsq	$.L.str.51, %rdi
	movq	-16(%rbp), %rsi
	callq	print_c_string
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movb	-17(%rbp), %al
	andb	$1, %al
	movzbl	%al, %edx
	callq	print_object
	jmp	.LBB26_232
.LBB26_220:                             # %if.end.747
                                        #   in Loop: Header=BB26_211 Depth=1
	jmp	.LBB26_221
.LBB26_221:                             # %if.end.748
                                        #   in Loop: Header=BB26_211 Depth=1
	jmp	.LBB26_222
.LBB26_222:                             # %if.end.749
                                        #   in Loop: Header=BB26_211 Depth=1
	cmpq	$0, -664(%rbp)
	je	.LBB26_224
# BB#223:                               # %if.then.751
                                        #   in Loop: Header=BB26_211 Depth=1
	movl	$32, %edi
	movq	-16(%rbp), %rsi
	callq	printchar
.LBB26_224:                             # %if.end.752
                                        #   in Loop: Header=BB26_211 Depth=1
	movq	-656(%rbp), %rax
	cmpq	-664(%rbp), %rax
	jg	.LBB26_226
# BB#225:                               # %if.then.755
	movabsq	$.L.str.48, %rdi
	movq	-16(%rbp), %rsi
	callq	print_c_string
	jmp	.LBB26_232
.LBB26_226:                             # %if.end.756
                                        #   in Loop: Header=BB26_211 Depth=1
	movq	-664(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -664(%rbp)
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rsi
	movb	-17(%rbp), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	callq	print_object
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-664(%rbp), %rax
	andq	$1, %rax
	cmpq	$0, %rax
	jne	.LBB26_228
# BB#227:                               # %if.then.766
                                        #   in Loop: Header=BB26_211 Depth=1
	movq	-648(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -648(%rbp)
.LBB26_228:                             # %if.end.770
                                        #   in Loop: Header=BB26_211 Depth=1
	jmp	.LBB26_211
.LBB26_229:                             # %while.end.771
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -1232(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1232(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB26_231
# BB#230:                               # %if.then.775
	movabsq	$.L.str.51, %rdi
	movq	-16(%rbp), %rsi
	callq	print_c_string
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movb	-17(%rbp), %al
	andb	$1, %al
	movzbl	%al, %edx
	callq	print_object
.LBB26_231:                             # %if.end.777
	jmp	.LBB26_232
.LBB26_232:                             # %end_of_list
	movl	$41, %edi
	movq	-16(%rbp), %rsi
	callq	printchar
.LBB26_233:                             # %if.end.778
	jmp	.LBB26_234
.LBB26_234:                             # %if.end.779
	jmp	.LBB26_235
.LBB26_235:                             # %if.end.780
	jmp	.LBB26_236
.LBB26_236:                             # %if.end.781
	jmp	.LBB26_237
.LBB26_237:                             # %if.end.782
	jmp	.LBB26_437
.LBB26_238:                             # %sw.bb.783
	movq	-8(%rbp), %rdi
	callq	PROCESSP
	testb	$1, %al
	jne	.LBB26_239
	jmp	.LBB26_243
.LBB26_239:                             # %if.then.785
	testb	$1, -17(%rbp)
	je	.LBB26_241
# BB#240:                               # %if.then.787
	movabsq	$.L.str.52, %rdi
	movq	-16(%rbp), %rsi
	callq	print_c_string
	movq	-8(%rbp), %rdi
	callq	XPROCESS
	movq	16(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	print_string
	movl	$62, %edi
	movq	-16(%rbp), %rsi
	callq	printchar
	jmp	.LBB26_242
.LBB26_241:                             # %if.else.790
	movq	-8(%rbp), %rdi
	callq	XPROCESS
	movq	16(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	print_string
.LBB26_242:                             # %if.end.793
	jmp	.LBB26_381
.LBB26_243:                             # %if.else.794
	movq	-8(%rbp), %rdi
	callq	BOOL_VECTOR_P
	testb	$1, %al
	jne	.LBB26_244
	jmp	.LBB26_276
.LBB26_244:                             # %if.then.796
	movq	-8(%rbp), %rdi
	callq	bool_vector_size
	movq	%rax, -704(%rbp)
	movq	-704(%rbp), %rdi
	callq	bool_vector_bytes
	movabsq	$.L.str.53, %rsi
	leaq	-80(%rbp), %rdi
	movq	%rax, -712(%rbp)
	movq	-712(%rbp), %rax
	movq	%rax, -720(%rbp)
	movq	-704(%rbp), %rdx
	movb	$0, %al
	callq	sprintf
	leaq	-80(%rbp), %rdi
	movl	%eax, -724(%rbp)
	movslq	-724(%rbp), %rsi
	movslq	-724(%rbp), %rdx
	movq	-16(%rbp), %rcx
	callq	strout
	movq	globals+1856, %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB26_245
	jmp	.LBB26_247
.LBB26_245:                             # %land.lhs.true.809
	movq	globals+1856, %rax
	sarq	$2, %rax
	cmpq	-712(%rbp), %rax
	jge	.LBB26_247
# BB#246:                               # %if.then.813
	movq	globals+1856, %rax
	sarq	$2, %rax
	movq	%rax, -712(%rbp)
.LBB26_247:                             # %if.end.815
	movq	$0, -688(%rbp)
.LBB26_248:                             # %for.cond.816
                                        # =>This Inner Loop Header: Depth=1
	movq	-688(%rbp), %rax
	cmpq	-712(%rbp), %rax
	jge	.LBB26_273
# BB#249:                               # %for.body.819
                                        #   in Loop: Header=BB26_248 Depth=1
	jmp	.LBB26_250
.LBB26_250:                             # %do.body.820
                                        #   in Loop: Header=BB26_248 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -1240(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1240(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB26_253
# BB#251:                               # %land.lhs.true.824
                                        #   in Loop: Header=BB26_248 Depth=1
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -1248(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1248(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB26_253
# BB#252:                               # %if.then.828
                                        #   in Loop: Header=BB26_248 Depth=1
	callq	process_quit_flag
	jmp	.LBB26_256
.LBB26_253:                             # %if.else.829
                                        #   in Loop: Header=BB26_248 Depth=1
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB26_255
# BB#254:                               # %if.then.831
                                        #   in Loop: Header=BB26_248 Depth=1
	callq	process_pending_signals
.LBB26_255:                             # %if.end.832
                                        #   in Loop: Header=BB26_248 Depth=1
	jmp	.LBB26_256
.LBB26_256:                             # %if.end.833
                                        #   in Loop: Header=BB26_248 Depth=1
	jmp	.LBB26_257
.LBB26_257:                             # %do.end.834
                                        #   in Loop: Header=BB26_248 Depth=1
	movq	-688(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, -1256(%rbp)       # 8-byte Spill
	callq	bool_vector_uchar_data
	movq	-1256(%rbp), %rdi       # 8-byte Reload
	movb	(%rax,%rdi), %cl
	movb	%cl, -689(%rbp)
	movzbl	-689(%rbp), %edx
	cmpl	$10, %edx
	jne	.LBB26_260
# BB#258:                               # %land.lhs.true.840
                                        #   in Loop: Header=BB26_248 Depth=1
	testb	$1, globals+3422
	je	.LBB26_260
# BB#259:                               # %if.then.843
                                        #   in Loop: Header=BB26_248 Depth=1
	movabsq	$.L.str.54, %rdi
	movq	-16(%rbp), %rsi
	callq	print_c_string
	jmp	.LBB26_271
.LBB26_260:                             # %if.else.844
                                        #   in Loop: Header=BB26_248 Depth=1
	movzbl	-689(%rbp), %eax
	cmpl	$12, %eax
	jne	.LBB26_263
# BB#261:                               # %land.lhs.true.848
                                        #   in Loop: Header=BB26_248 Depth=1
	testb	$1, globals+3422
	je	.LBB26_263
# BB#262:                               # %if.then.851
                                        #   in Loop: Header=BB26_248 Depth=1
	movabsq	$.L.str.55, %rdi
	movq	-16(%rbp), %rsi
	callq	print_c_string
	jmp	.LBB26_270
.LBB26_263:                             # %if.else.852
                                        #   in Loop: Header=BB26_248 Depth=1
	movzbl	-689(%rbp), %eax
	cmpl	$127, %eax
	jle	.LBB26_265
# BB#264:                               # %if.then.856
                                        #   in Loop: Header=BB26_248 Depth=1
	movabsq	$.L.str.56, %rsi
	leaq	-80(%rbp), %rdi
	movzbl	-689(%rbp), %edx
	movb	$0, %al
	callq	sprintf
	leaq	-80(%rbp), %rdi
	movl	%eax, -724(%rbp)
	movslq	-724(%rbp), %rsi
	movslq	-724(%rbp), %rdx
	movq	-16(%rbp), %rcx
	callq	strout
	jmp	.LBB26_269
.LBB26_265:                             # %if.else.863
                                        #   in Loop: Header=BB26_248 Depth=1
	movzbl	-689(%rbp), %eax
	cmpl	$34, %eax
	je	.LBB26_267
# BB#266:                               # %lor.lhs.false.867
                                        #   in Loop: Header=BB26_248 Depth=1
	movzbl	-689(%rbp), %eax
	cmpl	$92, %eax
	jne	.LBB26_268
.LBB26_267:                             # %if.then.871
                                        #   in Loop: Header=BB26_248 Depth=1
	movl	$92, %edi
	movq	-16(%rbp), %rsi
	callq	printchar
.LBB26_268:                             # %if.end.872
                                        #   in Loop: Header=BB26_248 Depth=1
	movzbl	-689(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	printchar
.LBB26_269:                             # %if.end.874
                                        #   in Loop: Header=BB26_248 Depth=1
	jmp	.LBB26_270
.LBB26_270:                             # %if.end.875
                                        #   in Loop: Header=BB26_248 Depth=1
	jmp	.LBB26_271
.LBB26_271:                             # %if.end.876
                                        #   in Loop: Header=BB26_248 Depth=1
	jmp	.LBB26_272
.LBB26_272:                             # %for.inc.877
                                        #   in Loop: Header=BB26_248 Depth=1
	movq	-688(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -688(%rbp)
	jmp	.LBB26_248
.LBB26_273:                             # %for.end.879
	movq	-712(%rbp), %rax
	cmpq	-720(%rbp), %rax
	jge	.LBB26_275
# BB#274:                               # %if.then.882
	movabsq	$.L.str.57, %rdi
	movq	-16(%rbp), %rsi
	callq	print_c_string
.LBB26_275:                             # %if.end.883
	movl	$34, %edi
	movq	-16(%rbp), %rsi
	callq	printchar
	jmp	.LBB26_380
.LBB26_276:                             # %if.else.884
	movq	-8(%rbp), %rdi
	callq	SUBRP
	testb	$1, %al
	jne	.LBB26_277
	jmp	.LBB26_278
.LBB26_277:                             # %if.then.886
	movabsq	$.L.str.58, %rdi
	movq	-16(%rbp), %rsi
	callq	print_c_string
	movq	-8(%rbp), %rdi
	callq	XSUBR
	movq	24(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	print_c_string
	movl	$62, %edi
	movq	-16(%rbp), %rsi
	callq	printchar
	jmp	.LBB26_379
.LBB26_278:                             # %if.else.888
	movl	$12, %esi
	movq	-8(%rbp), %rdi
	callq	PSEUDOVECTORP
	testb	$1, %al
	jne	.LBB26_280
# BB#279:                               # %lor.lhs.false.891
	movl	$13, %esi
	movq	-8(%rbp), %rdi
	callq	PSEUDOVECTORP
	testb	$1, %al
	jne	.LBB26_280
	jmp	.LBB26_281
.LBB26_280:                             # %if.then.894
	movabsq	$.L.str.59, %rdi
	movq	-16(%rbp), %rsi
	callq	print_c_string
	movl	$62, %edi
	movq	-16(%rbp), %rsi
	callq	printchar
	jmp	.LBB26_378
.LBB26_281:                             # %if.else.895
	movq	-8(%rbp), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB26_282
	jmp	.LBB26_285
.LBB26_282:                             # %if.then.897
	leaq	-80(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -1264(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	callq	XWINDOW
	movabsq	$.L.str.60, %rsi
	movq	232(%rax), %rdx
	movq	-1264(%rbp), %rdi       # 8-byte Reload
	movb	$0, %al
	callq	sprintf
	leaq	-80(%rbp), %rdi
	movl	%eax, -728(%rbp)
	movslq	-728(%rbp), %rsi
	movslq	-728(%rbp), %rdx
	movq	-16(%rbp), %rcx
	callq	strout
	movq	-8(%rbp), %rdi
	callq	XWINDOW
	movq	80(%rax), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB26_283
	jmp	.LBB26_284
.LBB26_283:                             # %if.then.907
	movabsq	$.L.str.61, %rdi
	movq	-16(%rbp), %rsi
	callq	print_c_string
	movq	-8(%rbp), %rdi
	callq	XWINDOW
	movq	80(%rax), %rdi
	callq	XBUFFER
	movq	8(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	print_string
.LBB26_284:                             # %if.end.911
	movl	$62, %edi
	movq	-16(%rbp), %rsi
	callq	printchar
	jmp	.LBB26_377
.LBB26_285:                             # %if.else.912
	movq	-8(%rbp), %rdi
	callq	TERMINALP
	testb	$1, %al
	jne	.LBB26_286
	jmp	.LBB26_289
.LBB26_286:                             # %if.then.914
	movq	-8(%rbp), %rdi
	callq	XTERMINAL
	movabsq	$.L.str.62, %rsi
	leaq	-80(%rbp), %rdi
	movq	%rax, -736(%rbp)
	movq	-736(%rbp), %rax
	movl	48(%rax), %edx
	movb	$0, %al
	callq	sprintf
	leaq	-80(%rbp), %rdi
	movl	%eax, -740(%rbp)
	movslq	-740(%rbp), %rsi
	movslq	-740(%rbp), %rdx
	movq	-16(%rbp), %rcx
	callq	strout
	movq	-736(%rbp), %rcx
	cmpq	$0, 64(%rcx)
	je	.LBB26_288
# BB#287:                               # %if.then.924
	movabsq	$.L.str.61, %rdi
	movq	-16(%rbp), %rsi
	callq	print_c_string
	movq	-736(%rbp), %rsi
	movq	64(%rsi), %rdi
	movq	-16(%rbp), %rsi
	callq	print_c_string
.LBB26_288:                             # %if.end.926
	movl	$62, %edi
	movq	-16(%rbp), %rsi
	callq	printchar
	jmp	.LBB26_376
.LBB26_289:                             # %if.else.927
	movq	-8(%rbp), %rdi
	callq	HASH_TABLE_P
	testb	$1, %al
	jne	.LBB26_290
	jmp	.LBB26_312
.LBB26_290:                             # %if.then.929
	movq	-8(%rbp), %rdi
	callq	XHASH_TABLE
	leaq	-80(%rbp), %rdi
	movq	%rax, -752(%rbp)
	movq	-752(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rdi, -1272(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	callq	ASIZE
	movabsq	$.L.str.63, %rsi
	movq	-1272(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	sprintf
	leaq	-80(%rbp), %rdi
	movl	%eax, -780(%rbp)
	movslq	-780(%rbp), %rsi
	movslq	-780(%rbp), %rdx
	movq	-16(%rbp), %rcx
	callq	strout
	xorl	%edi, %edi
	movq	-752(%rbp), %rcx
	movq	80(%rcx), %rcx
	movq	%rcx, -1280(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1280(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB26_292
# BB#291:                               # %if.then.944
	movabsq	$.L.str.64, %rdi
	movq	-16(%rbp), %rsi
	callq	print_c_string
	movq	-752(%rbp), %rsi
	movq	80(%rsi), %rdi
	movq	-16(%rbp), %rsi
	movb	-17(%rbp), %al
	andb	$1, %al
	movzbl	%al, %edx
	callq	print_object
.LBB26_292:                             # %if.end.948
	xorl	%edi, %edi
	movq	-752(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -1288(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1288(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB26_294
# BB#293:                               # %if.then.952
	movabsq	$.L.str.65, %rdi
	movq	-16(%rbp), %rsi
	callq	print_c_string
	movq	-752(%rbp), %rsi
	movq	8(%rsi), %rdi
	movq	-16(%rbp), %rsi
	movb	-17(%rbp), %al
	andb	$1, %al
	movzbl	%al, %edx
	callq	print_object
.LBB26_294:                             # %if.end.955
	xorl	%edi, %edi
	movq	-752(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -1296(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1296(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB26_296
# BB#295:                               # %if.then.959
	movabsq	$.L.str.66, %rdi
	movq	-16(%rbp), %rsi
	callq	print_c_string
	movq	-752(%rbp), %rsi
	movq	16(%rsi), %rdi
	movq	-16(%rbp), %rsi
	movb	-17(%rbp), %al
	andb	$1, %al
	movzbl	%al, %edx
	callq	print_object
.LBB26_296:                             # %if.end.962
	xorl	%edi, %edi
	movq	-752(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -1304(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1304(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB26_298
# BB#297:                               # %if.then.966
	movabsq	$.L.str.67, %rdi
	movq	-16(%rbp), %rsi
	callq	print_c_string
	movq	-752(%rbp), %rsi
	movq	24(%rsi), %rdi
	movq	-16(%rbp), %rsi
	movb	-17(%rbp), %al
	andb	$1, %al
	movzbl	%al, %edx
	callq	print_object
.LBB26_298:                             # %if.end.969
	movabsq	$.L.str.68, %rdi
	movq	-16(%rbp), %rsi
	callq	print_c_string
	movq	-752(%rbp), %rdi
	callq	HASH_TABLE_SIZE
	movq	%rax, -768(%rbp)
	movq	-768(%rbp), %rax
	movq	%rax, -776(%rbp)
	movq	globals+1856, %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB26_299
	jmp	.LBB26_301
.LBB26_299:                             # %land.lhs.true.973
	movq	globals+1856, %rax
	sarq	$2, %rax
	cmpq	-776(%rbp), %rax
	jge	.LBB26_301
# BB#300:                               # %if.then.977
	movq	globals+1856, %rax
	sarq	$2, %rax
	movq	%rax, -776(%rbp)
.LBB26_301:                             # %if.end.979
	movl	$40, %edi
	movq	-16(%rbp), %rsi
	callq	printchar
	movq	$0, -760(%rbp)
.LBB26_302:                             # %for.cond.980
                                        # =>This Inner Loop Header: Depth=1
	movq	-760(%rbp), %rax
	cmpq	-776(%rbp), %rax
	jge	.LBB26_309
# BB#303:                               # %for.body.983
                                        #   in Loop: Header=BB26_302 Depth=1
	movq	-752(%rbp), %rdi
	movq	-760(%rbp), %rsi
	callq	HASH_HASH
	xorl	%edi, %edi
	movq	%rax, -1312(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1312(%rbp), %rsi       # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB26_307
# BB#304:                               # %if.then.988
                                        #   in Loop: Header=BB26_302 Depth=1
	cmpq	$0, -760(%rbp)
	je	.LBB26_306
# BB#305:                               # %if.then.990
                                        #   in Loop: Header=BB26_302 Depth=1
	movl	$32, %edi
	movq	-16(%rbp), %rsi
	callq	printchar
.LBB26_306:                             # %if.end.991
                                        #   in Loop: Header=BB26_302 Depth=1
	movq	-752(%rbp), %rdi
	movq	-760(%rbp), %rsi
	callq	HASH_KEY
	movq	-16(%rbp), %rsi
	movb	-17(%rbp), %cl
	andb	$1, %cl
	movq	%rax, %rdi
	movzbl	%cl, %edx
	callq	print_object
	movl	$32, %edi
	movq	-16(%rbp), %rsi
	callq	printchar
	movq	-752(%rbp), %rdi
	movq	-760(%rbp), %rsi
	callq	HASH_VALUE
	movq	-16(%rbp), %rsi
	movb	-17(%rbp), %cl
	andb	$1, %cl
	movq	%rax, %rdi
	movzbl	%cl, %edx
	callq	print_object
.LBB26_307:                             # %if.end.996
                                        #   in Loop: Header=BB26_302 Depth=1
	jmp	.LBB26_308
.LBB26_308:                             # %for.inc.997
                                        #   in Loop: Header=BB26_302 Depth=1
	movq	-760(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -760(%rbp)
	jmp	.LBB26_302
.LBB26_309:                             # %for.end.999
	movq	-776(%rbp), %rax
	cmpq	-768(%rbp), %rax
	jge	.LBB26_311
# BB#310:                               # %if.then.1002
	movabsq	$.L.str.57, %rdi
	movq	-16(%rbp), %rsi
	callq	print_c_string
.LBB26_311:                             # %if.end.1003
	movabsq	$.L.str.69, %rdi
	movq	-16(%rbp), %rsi
	callq	print_c_string
	jmp	.LBB26_375
.LBB26_312:                             # %if.else.1004
	movq	-8(%rbp), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB26_313
	jmp	.LBB26_320
.LBB26_313:                             # %if.then.1006
	movq	-8(%rbp), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	8(%rax), %rax
	movq	%rax, -1320(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1320(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB26_315
# BB#314:                               # %if.then.1012
	movabsq	$.L.str.70, %rdi
	movq	-16(%rbp), %rsi
	callq	print_c_string
	jmp	.LBB26_319
.LBB26_315:                             # %if.else.1013
	testb	$1, -17(%rbp)
	je	.LBB26_317
# BB#316:                               # %if.then.1015
	movabsq	$.L.str.71, %rdi
	movq	-16(%rbp), %rsi
	callq	print_c_string
	movq	-8(%rbp), %rdi
	callq	XBUFFER
	movq	8(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	print_string
	movl	$62, %edi
	movq	-16(%rbp), %rsi
	callq	printchar
	jmp	.LBB26_318
.LBB26_317:                             # %if.else.1018
	movq	-8(%rbp), %rdi
	callq	XBUFFER
	movq	8(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	print_string
.LBB26_318:                             # %if.end.1021
	jmp	.LBB26_319
.LBB26_319:                             # %if.end.1022
	jmp	.LBB26_374
.LBB26_320:                             # %if.else.1023
	movq	-8(%rbp), %rdi
	callq	WINDOW_CONFIGURATIONP
	testb	$1, %al
	jne	.LBB26_321
	jmp	.LBB26_322
.LBB26_321:                             # %if.then.1025
	movabsq	$.L.str.72, %rdi
	movq	-16(%rbp), %rsi
	callq	print_c_string
	jmp	.LBB26_373
.LBB26_322:                             # %if.else.1026
	movq	-8(%rbp), %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB26_323
	jmp	.LBB26_329
.LBB26_323:                             # %if.then.1028
	movabsq	$.L.str.74, %rax
	movabsq	$.L.str.73, %rcx
	movq	-8(%rbp), %rdx
	subq	$5, %rdx
	movq	%rdx, -792(%rbp)
	movq	-8(%rbp), %rdx
	subq	$5, %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, -800(%rbp)
	movq	-8(%rbp), %rdx
	subq	$5, %rdx
	cmpq	$0, 376(%rdx)
	cmovneq	%rcx, %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	print_c_string
	movq	-800(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB26_328
# BB#324:                               # %if.then.1038
	movq	-800(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB26_326
# BB#325:                               # %if.then.1043
	movq	-800(%rbp), %rdi
	callq	Fsymbol_name
	movq	%rax, -800(%rbp)
	jmp	.LBB26_327
.LBB26_326:                             # %if.else.1045
	movabsq	$.L.str.75, %rdi
	callq	build_string
	movq	%rax, -800(%rbp)
.LBB26_327:                             # %if.end.1047
	jmp	.LBB26_328
.LBB26_328:                             # %if.end.1048
	movq	-800(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	print_string
	movabsq	$.L.str.76, %rsi
	leaq	-80(%rbp), %rdi
	movq	-792(%rbp), %rdx
	movb	$0, %al
	callq	sprintf
	leaq	-80(%rbp), %rdi
	movl	%eax, -784(%rbp)
	movslq	-784(%rbp), %rsi
	movslq	-784(%rbp), %rdx
	movq	-16(%rbp), %rcx
	callq	strout
	jmp	.LBB26_372
.LBB26_329:                             # %if.else.1054
	movq	-8(%rbp), %rdi
	callq	FONTP
	testb	$1, %al
	jne	.LBB26_330
	jmp	.LBB26_345
.LBB26_330:                             # %if.then.1056
	movq	-8(%rbp), %rdi
	callq	FONT_OBJECT_P
	testb	$1, %al
	jne	.LBB26_343
# BB#331:                               # %if.then.1059
	movq	-8(%rbp), %rdi
	callq	FONT_SPEC_P
	testb	$1, %al
	jne	.LBB26_332
	jmp	.LBB26_333
.LBB26_332:                             # %if.then.1061
	movabsq	$.L.str.77, %rdi
	movq	-16(%rbp), %rsi
	callq	print_c_string
	jmp	.LBB26_334
.LBB26_333:                             # %if.else.1062
	movabsq	$.L.str.78, %rdi
	movq	-16(%rbp), %rsi
	callq	print_c_string
.LBB26_334:                             # %if.end.1063
	movl	$0, -804(%rbp)
.LBB26_335:                             # %for.cond.1064
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$13, -804(%rbp)
	jge	.LBB26_342
# BB#336:                               # %for.body.1067
                                        #   in Loop: Header=BB26_335 Depth=1
	movl	$32, %edi
	movq	-16(%rbp), %rsi
	callq	printchar
	cmpl	$5, -804(%rbp)
	jl	.LBB26_338
# BB#337:                               # %lor.lhs.false.1070
                                        #   in Loop: Header=BB26_335 Depth=1
	cmpl	$7, -804(%rbp)
	jle	.LBB26_339
.LBB26_338:                             # %if.then.1073
                                        #   in Loop: Header=BB26_335 Depth=1
	movq	-8(%rbp), %rdi
	movslq	-804(%rbp), %rsi
	callq	AREF
	movq	-16(%rbp), %rsi
	movb	-17(%rbp), %cl
	andb	$1, %cl
	movq	%rax, %rdi
	movzbl	%cl, %edx
	callq	print_object
	jmp	.LBB26_340
.LBB26_339:                             # %if.else.1077
                                        #   in Loop: Header=BB26_335 Depth=1
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	movl	-804(%rbp), %esi
	callq	font_style_symbolic
	movq	-16(%rbp), %rsi
	movb	-17(%rbp), %cl
	andb	$1, %cl
	movq	%rax, %rdi
	movzbl	%cl, %edx
	callq	print_object
.LBB26_340:                             # %if.end.1080
                                        #   in Loop: Header=BB26_335 Depth=1
	jmp	.LBB26_341
.LBB26_341:                             # %for.inc.1081
                                        #   in Loop: Header=BB26_335 Depth=1
	movl	-804(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -804(%rbp)
	jmp	.LBB26_335
.LBB26_342:                             # %for.end.1083
	jmp	.LBB26_344
.LBB26_343:                             # %if.else.1084
	movabsq	$.L.str.79, %rdi
	movq	-16(%rbp), %rsi
	callq	print_c_string
	movl	$14, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	AREF
	movq	-16(%rbp), %rsi
	movb	-17(%rbp), %cl
	andb	$1, %cl
	movq	%rax, %rdi
	movzbl	%cl, %edx
	callq	print_object
.LBB26_344:                             # %if.end.1087
	movl	$62, %edi
	movq	-16(%rbp), %rsi
	callq	printchar
	jmp	.LBB26_371
.LBB26_345:                             # %if.else.1088
	movq	-8(%rbp), %rdi
	callq	ASIZE
	movq	%rax, -816(%rbp)
	movq	-8(%rbp), %rdi
	callq	COMPILEDP
	testb	$1, %al
	jne	.LBB26_346
	jmp	.LBB26_347
.LBB26_346:                             # %if.then.1092
	movl	$35, %edi
	movq	-16(%rbp), %rsi
	callq	printchar
	movq	-816(%rbp), %rsi
	andq	$4095, %rsi             # imm = 0xFFF
	movq	%rsi, -816(%rbp)
.LBB26_347:                             # %if.end.1094
	movq	-8(%rbp), %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB26_349
# BB#348:                               # %lor.lhs.false.1097
	movq	-8(%rbp), %rdi
	callq	SUB_CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB26_349
	jmp	.LBB26_355
.LBB26_349:                             # %if.then.1100
	movq	-8(%rbp), %rdi
	callq	SUB_CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB26_350
	jmp	.LBB26_352
.LBB26_350:                             # %land.lhs.true.1103
	movq	-8(%rbp), %rdi
	callq	XSUB_CHAR_TABLE
	cmpl	$3, 8(%rax)
	jne	.LBB26_352
# BB#351:                               # %if.then.1107
	movl	$10, %edi
	movq	-16(%rbp), %rsi
	callq	printchar
.LBB26_352:                             # %if.end.1108
	movabsq	$.L.str.80, %rdi
	movq	-16(%rbp), %rsi
	callq	print_c_string
	movq	-8(%rbp), %rdi
	callq	SUB_CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB26_353
	jmp	.LBB26_354
.LBB26_353:                             # %if.then.1110
	movl	$94, %edi
	movq	-16(%rbp), %rsi
	callq	printchar
.LBB26_354:                             # %if.end.1111
	movq	-816(%rbp), %rax
	andq	$4095, %rax             # imm = 0xFFF
	movq	%rax, -816(%rbp)
.LBB26_355:                             # %if.end.1113
	movabsq	$4611686018427387904, %rax # imm = 0x4000000000000000
	andq	-816(%rbp), %rax
	cmpq	$0, %rax
	je	.LBB26_357
# BB#356:                               # %if.then.1116
	jmp	.LBB26_430
.LBB26_357:                             # %if.end.1117
	movl	$91, %edi
	movq	-16(%rbp), %rsi
	callq	printchar
	movq	-8(%rbp), %rdi
	callq	SUB_CHAR_TABLE_P
	xorl	%ecx, %ecx
	movl	$1, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -824(%rbp)
	movq	-816(%rbp), %rsi
	movq	%rsi, -840(%rbp)
	movq	-8(%rbp), %rdi
	callq	SUB_CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB26_358
	jmp	.LBB26_359
.LBB26_358:                             # %if.then.1124
	leaq	-80(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -1328(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	callq	XSUB_CHAR_TABLE
	movl	8(%rax), %edx
	movq	-8(%rbp), %rdi
	movl	%edx, -1332(%rbp)       # 4-byte Spill
	callq	XSUB_CHAR_TABLE
	movabsq	$.L.str.81, %rsi
	movl	12(%rax), %ecx
	movq	-1328(%rbp), %rdi       # 8-byte Reload
	movl	-1332(%rbp), %edx       # 4-byte Reload
	movb	$0, %al
	callq	sprintf
	leaq	-80(%rbp), %rdi
	movl	%eax, -820(%rbp)
	movslq	-820(%rbp), %rsi
	movslq	-820(%rbp), %rdx
	movq	-16(%rbp), %rcx
	callq	strout
.LBB26_359:                             # %if.end.1133
	movq	globals+1856, %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB26_360
	jmp	.LBB26_362
.LBB26_360:                             # %land.lhs.true.1136
	movq	globals+1856, %rax
	sarq	$2, %rax
	cmpq	-816(%rbp), %rax
	jge	.LBB26_362
# BB#361:                               # %if.then.1140
	movq	globals+1856, %rax
	sarq	$2, %rax
	movq	%rax, -816(%rbp)
.LBB26_362:                             # %if.end.1142
	movl	-824(%rbp), %eax
	movl	%eax, -820(%rbp)
.LBB26_363:                             # %for.cond.1143
                                        # =>This Inner Loop Header: Depth=1
	movslq	-820(%rbp), %rax
	cmpq	-816(%rbp), %rax
	jge	.LBB26_368
# BB#364:                               # %for.body.1147
                                        #   in Loop: Header=BB26_363 Depth=1
	cmpl	$0, -820(%rbp)
	je	.LBB26_366
# BB#365:                               # %if.then.1149
                                        #   in Loop: Header=BB26_363 Depth=1
	movl	$32, %edi
	movq	-16(%rbp), %rsi
	callq	printchar
.LBB26_366:                             # %if.end.1150
                                        #   in Loop: Header=BB26_363 Depth=1
	movq	-8(%rbp), %rdi
	movslq	-820(%rbp), %rsi
	callq	AREF
	movq	%rax, -832(%rbp)
	movq	-832(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movb	-17(%rbp), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	callq	print_object
# BB#367:                               # %for.inc.1154
                                        #   in Loop: Header=BB26_363 Depth=1
	movl	-820(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -820(%rbp)
	jmp	.LBB26_363
.LBB26_368:                             # %for.end.1156
	movq	-816(%rbp), %rax
	cmpq	-840(%rbp), %rax
	jge	.LBB26_370
# BB#369:                               # %if.then.1159
	movabsq	$.L.str.57, %rdi
	movq	-16(%rbp), %rsi
	callq	print_c_string
.LBB26_370:                             # %if.end.1160
	movl	$93, %edi
	movq	-16(%rbp), %rsi
	callq	printchar
.LBB26_371:                             # %if.end.1161
	jmp	.LBB26_372
.LBB26_372:                             # %if.end.1162
	jmp	.LBB26_373
.LBB26_373:                             # %if.end.1163
	jmp	.LBB26_374
.LBB26_374:                             # %if.end.1164
	jmp	.LBB26_375
.LBB26_375:                             # %if.end.1165
	jmp	.LBB26_376
.LBB26_376:                             # %if.end.1166
	jmp	.LBB26_377
.LBB26_377:                             # %if.end.1167
	jmp	.LBB26_378
.LBB26_378:                             # %if.end.1168
	jmp	.LBB26_379
.LBB26_379:                             # %if.end.1169
	jmp	.LBB26_380
.LBB26_380:                             # %if.end.1170
	jmp	.LBB26_381
.LBB26_381:                             # %if.end.1171
	jmp	.LBB26_437
.LBB26_382:                             # %sw.bb.1172
	movq	-8(%rbp), %rdi
	callq	XMISCTYPE
	addl	$-24235, %eax           # imm = 0xFFFFFFFFFFFFA155
	movl	%eax, %edi
	subl	$4, %eax
	movq	%rdi, -1344(%rbp)       # 8-byte Spill
	movl	%eax, -1348(%rbp)       # 4-byte Spill
	ja	.LBB26_427
# BB#440:                               # %sw.bb.1172
	movq	-1344(%rbp), %rax       # 8-byte Reload
	movq	.LJTI26_1(,%rax,8), %rcx
	jmpq	*%rcx
.LBB26_383:                             # %sw.bb.1174
	movabsq	$.L.str.82, %rdi
	movq	-16(%rbp), %rsi
	callq	print_c_string
	movq	-8(%rbp), %rdi
	callq	XMARKER
	movl	(%rax), %ecx
	shrl	$31, %ecx
	movb	%cl, %dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	cmpl	$0, %ecx
	je	.LBB26_385
# BB#384:                               # %if.then.1179
	movabsq	$.L.str.83, %rdi
	movq	-16(%rbp), %rsi
	callq	print_c_string
.LBB26_385:                             # %if.end.1180
	movq	-8(%rbp), %rdi
	callq	XMARKER
	cmpq	$0, 8(%rax)
	jne	.LBB26_387
# BB#386:                               # %if.then.1183
	movabsq	$.L.str.84, %rdi
	movq	-16(%rbp), %rsi
	callq	print_c_string
	jmp	.LBB26_388
.LBB26_387:                             # %if.else.1184
	leaq	-80(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -1360(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	callq	marker_position
	movabsq	$.L.str.85, %rsi
	movq	-1360(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	sprintf
	leaq	-80(%rbp), %rdi
	movl	%eax, -844(%rbp)
	movslq	-844(%rbp), %rsi
	movslq	-844(%rbp), %rdx
	movq	-16(%rbp), %rcx
	callq	strout
	movq	-8(%rbp), %rdi
	callq	XMARKER
	movq	8(%rax), %rax
	movq	8(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	print_string
.LBB26_388:                             # %if.end.1195
	movl	$62, %edi
	movq	-16(%rbp), %rsi
	callq	printchar
	jmp	.LBB26_428
.LBB26_389:                             # %sw.bb.1196
	movabsq	$.L.str.86, %rdi
	movq	-16(%rbp), %rsi
	callq	print_c_string
	movq	-8(%rbp), %rdi
	callq	XOVERLAY
	movq	16(%rax), %rdi
	callq	XMARKER
	cmpq	$0, 8(%rax)
	jne	.LBB26_391
# BB#390:                               # %if.then.1201
	movabsq	$.L.str.84, %rdi
	movq	-16(%rbp), %rsi
	callq	print_c_string
	jmp	.LBB26_392
.LBB26_391:                             # %if.else.1202
	leaq	-80(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -1368(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	callq	XOVERLAY
	movq	16(%rax), %rdi
	callq	marker_position
	movq	-8(%rbp), %rdi
	movq	%rax, -1376(%rbp)       # 8-byte Spill
	callq	XOVERLAY
	movq	24(%rax), %rdi
	callq	marker_position
	movabsq	$.L.str.87, %rsi
	movq	-1368(%rbp), %rdi       # 8-byte Reload
	movq	-1376(%rbp), %rdx       # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	sprintf
	leaq	-80(%rbp), %rdi
	movl	%eax, -848(%rbp)
	movslq	-848(%rbp), %rsi
	movslq	-848(%rbp), %rdx
	movq	-16(%rbp), %rcx
	callq	strout
	movq	-8(%rbp), %rdi
	callq	XOVERLAY
	movq	16(%rax), %rdi
	callq	XMARKER
	movq	8(%rax), %rax
	movq	8(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	print_string
.LBB26_392:                             # %if.end.1220
	movl	$62, %edi
	movq	-16(%rbp), %rsi
	callq	printchar
	jmp	.LBB26_428
.LBB26_393:                             # %sw.bb.1221
	movabsq	$.L.str.88, %rdi
	movq	-16(%rbp), %rsi
	callq	print_c_string
	movq	-8(%rbp), %rdi
	callq	XFINALIZER
	xorl	%edi, %edi
	movq	24(%rax), %rax
	movq	%rax, -1384(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1384(%rbp), %rsi       # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB26_395
# BB#394:                               # %if.then.1226
	movabsq	$.L.str.89, %rdi
	movq	-16(%rbp), %rsi
	callq	print_c_string
.LBB26_395:                             # %if.end.1227
	movl	$62, %edi
	movq	-16(%rbp), %rsi
	callq	printchar
	jmp	.LBB26_428
.LBB26_396:                             # %sw.bb.1228
	movabsq	$.L.str.90, %rdi
	movq	-16(%rbp), %rsi
	callq	print_c_string
	jmp	.LBB26_428
.LBB26_397:                             # %sw.bb.1229
	movq	-8(%rbp), %rdi
	callq	XSAVE_VALUE
	movabsq	$.L.str.91, %rdi
	movq	%rax, -864(%rbp)
	movq	-16(%rbp), %rsi
	callq	print_c_string
	movq	-864(%rbp), %rax
	movl	(%rax), %ecx
	shrl	$19, %ecx
	cmpl	$4107, %ecx             # imm = 0x100B
	jne	.LBB26_412
# BB#398:                               # %if.then.1236
	movq	-864(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -872(%rbp)
	cmpq	$8, -872(%rbp)
	jge	.LBB26_400
# BB#399:                               # %cond.true.1240
	movq	-872(%rbp), %rax
	movq	%rax, -1392(%rbp)       # 8-byte Spill
	jmp	.LBB26_401
.LBB26_400:                             # %cond.false.1241
	movl	$8, %eax
	movl	%eax, %ecx
	movq	%rcx, -1392(%rbp)       # 8-byte Spill
	jmp	.LBB26_401
.LBB26_401:                             # %cond.end.1242
	movq	-1392(%rbp), %rax       # 8-byte Reload
	movabsq	$.L.str.92, %rsi
	leaq	-80(%rbp), %rdi
	movl	%eax, %ecx
	movl	%ecx, -876(%rbp)
	movq	-864(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -888(%rbp)
	movq	-872(%rbp), %rdx
	movb	$0, %al
	callq	sprintf
	leaq	-80(%rbp), %rdi
	movl	%eax, -852(%rbp)
	movslq	-852(%rbp), %rsi
	movslq	-852(%rbp), %rdx
	movq	-16(%rbp), %rcx
	callq	strout
	movl	$0, -852(%rbp)
.LBB26_402:                             # %for.cond.1252
                                        # =>This Inner Loop Header: Depth=1
	movl	-852(%rbp), %eax
	cmpl	-876(%rbp), %eax
	jge	.LBB26_408
# BB#403:                               # %for.body.1255
                                        #   in Loop: Header=BB26_402 Depth=1
	movslq	-852(%rbp), %rax
	movq	-888(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -896(%rbp)
	movq	-896(%rbp), %rdi
	callq	valid_lisp_object_p
	movl	$32, %edi
	movl	%eax, -900(%rbp)
	movq	-16(%rbp), %rsi
	callq	printchar
	xorl	%eax, %eax
	cmpl	-900(%rbp), %eax
	jge	.LBB26_405
# BB#404:                               # %if.then.1261
                                        #   in Loop: Header=BB26_402 Depth=1
	movq	-896(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movb	-17(%rbp), %al
	andb	$1, %al
	movzbl	%al, %edx
	callq	print_object
	jmp	.LBB26_406
.LBB26_405:                             # %if.else.1263
                                        #   in Loop: Header=BB26_402 Depth=1
	movabsq	$.L.str.94, %rax
	movabsq	$.L.str.93, %rcx
	cmpl	$0, -900(%rbp)
	cmovlq	%rcx, %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	print_c_string
.LBB26_406:                             # %if.end.1267
                                        #   in Loop: Header=BB26_402 Depth=1
	jmp	.LBB26_407
.LBB26_407:                             # %for.inc.1268
                                        #   in Loop: Header=BB26_402 Depth=1
	movl	-852(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -852(%rbp)
	jmp	.LBB26_402
.LBB26_408:                             # %for.end.1270
	movl	-852(%rbp), %eax
	cmpl	-876(%rbp), %eax
	jne	.LBB26_411
# BB#409:                               # %land.lhs.true.1273
	movslq	-852(%rbp), %rax
	cmpq	-872(%rbp), %rax
	jge	.LBB26_411
# BB#410:                               # %if.then.1277
	movabsq	$.L.str.57, %rdi
	movq	-16(%rbp), %rsi
	callq	print_c_string
.LBB26_411:                             # %if.end.1278
	jmp	.LBB26_426
.LBB26_412:                             # %if.else.1279
	movl	$0, -904(%rbp)
.LBB26_413:                             # %for.cond.1280
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -904(%rbp)
	jge	.LBB26_425
# BB#414:                               # %for.body.1283
                                        #   in Loop: Header=BB26_413 Depth=1
	cmpl	$0, -904(%rbp)
	je	.LBB26_416
# BB#415:                               # %if.then.1285
                                        #   in Loop: Header=BB26_413 Depth=1
	movl	$32, %edi
	movq	-16(%rbp), %rsi
	callq	printchar
.LBB26_416:                             # %if.end.1286
                                        #   in Loop: Header=BB26_413 Depth=1
	movq	-864(%rbp), %rdi
	movl	-904(%rbp), %esi
	callq	save_type
	movl	%eax, %esi
	movl	%esi, %edi
	subl	$4, %eax
	movq	%rdi, -1400(%rbp)       # 8-byte Spill
	movl	%eax, -1404(%rbp)       # 4-byte Spill
	ja	.LBB26_422
# BB#441:                               # %if.end.1286
                                        #   in Loop: Header=BB26_413 Depth=1
	movq	-1400(%rbp), %rax       # 8-byte Reload
	movq	.LJTI26_2(,%rax,8), %rcx
	jmpq	*%rcx
.LBB26_417:                             # %sw.bb.1288
                                        #   in Loop: Header=BB26_413 Depth=1
	movabsq	$.L.str.95, %rsi
	leaq	-80(%rbp), %rdi
	movb	$0, %al
	callq	sprintf
	movl	%eax, -852(%rbp)
	jmp	.LBB26_423
.LBB26_418:                             # %sw.bb.1291
                                        #   in Loop: Header=BB26_413 Depth=1
	movabsq	$.L.str.96, %rsi
	leaq	-80(%rbp), %rdi
	movslq	-904(%rbp), %rax
	movq	-864(%rbp), %rcx
	movq	8(%rcx,%rax,8), %rdx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -852(%rbp)
	jmp	.LBB26_423
.LBB26_419:                             # %sw.bb.1298
                                        #   in Loop: Header=BB26_413 Depth=1
	movabsq	$.L.str.97, %rsi
	leaq	-80(%rbp), %rdi
	movslq	-904(%rbp), %rax
	movq	-864(%rbp), %rcx
	movq	8(%rcx,%rax,8), %rdx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -852(%rbp)
	jmp	.LBB26_423
.LBB26_420:                             # %sw.bb.1304
                                        #   in Loop: Header=BB26_413 Depth=1
	movabsq	$.L.str.98, %rsi
	leaq	-80(%rbp), %rdi
	movslq	-904(%rbp), %rax
	movq	-864(%rbp), %rcx
	movq	8(%rcx,%rax,8), %rdx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -852(%rbp)
	jmp	.LBB26_423
.LBB26_421:                             # %sw.bb.1311
                                        #   in Loop: Header=BB26_413 Depth=1
	movslq	-904(%rbp), %rax
	movq	-864(%rbp), %rcx
	movq	8(%rcx,%rax,8), %rdi
	movq	-16(%rbp), %rsi
	movb	-17(%rbp), %dl
	andb	$1, %dl
	movzbl	%dl, %edx
	callq	print_object
	jmp	.LBB26_424
.LBB26_422:                             # %sw.default
	callq	emacs_abort
.LBB26_423:                             # %sw.epilog
                                        #   in Loop: Header=BB26_413 Depth=1
	leaq	-80(%rbp), %rdi
	movslq	-852(%rbp), %rsi
	movslq	-852(%rbp), %rdx
	movq	-16(%rbp), %rcx
	callq	strout
.LBB26_424:                             # %for.inc.1319
                                        #   in Loop: Header=BB26_413 Depth=1
	movl	-904(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -904(%rbp)
	jmp	.LBB26_413
.LBB26_425:                             # %for.end.1321
	jmp	.LBB26_426
.LBB26_426:                             # %if.end.1322
	movl	$62, %edi
	movq	-16(%rbp), %rsi
	callq	printchar
	jmp	.LBB26_428
.LBB26_427:                             # %sw.default.1323
	jmp	.LBB26_430
.LBB26_428:                             # %sw.epilog.1324
	jmp	.LBB26_437
.LBB26_429:                             # %sw.default.1325
	jmp	.LBB26_430
.LBB26_430:                             # %badtype
	movabsq	$.L.str.99, %rdi
	movq	-16(%rbp), %rsi
	callq	print_c_string
	movq	-8(%rbp), %rsi
	andq	$7, %rsi
	movl	%esi, %eax
	cmpl	$1, %eax
	jne	.LBB26_432
# BB#431:                               # %if.then.1331
	leaq	-80(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -1416(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	callq	XMISCTYPE
	movabsq	$.L.str.100, %rsi
	movq	-1416(%rbp), %rdi       # 8-byte Reload
	movl	%eax, %edx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -908(%rbp)
	jmp	.LBB26_436
.LBB26_432:                             # %if.else.1335
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$5, %ecx
	jne	.LBB26_434
# BB#433:                               # %if.then.1340
	leaq	-80(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -1424(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	callq	ASIZE
	movabsq	$.L.str.101, %rsi
	movq	-1424(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -908(%rbp)
	jmp	.LBB26_435
.LBB26_434:                             # %if.else.1344
	movabsq	$.L.str.102, %rsi
	leaq	-80(%rbp), %rdi
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	movl	%ecx, %edx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -908(%rbp)
.LBB26_435:                             # %if.end.1349
	jmp	.LBB26_436
.LBB26_436:                             # %if.end.1350
	leaq	-80(%rbp), %rdi
	movslq	-908(%rbp), %rsi
	movslq	-908(%rbp), %rdx
	movq	-16(%rbp), %rcx
	callq	strout
	movabsq	$.L.str.103, %rdi
	movq	-16(%rbp), %rsi
	callq	print_c_string
.LBB26_437:                             # %sw.epilog.1354
	movq	print_depth, %rax
	addq	$-1, %rax
	movq	%rax, print_depth
.LBB26_438:                             # %return
	addq	$1424, %rsp             # imm = 0x590
	popq	%rbp
	retq
.Lfunc_end26:
	.size	print_object, .Lfunc_end26-print_object
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI26_0:
	.quad	.LBB26_109
	.quad	.LBB26_382
	.quad	.LBB26_38
	.quad	.LBB26_181
	.quad	.LBB26_40
	.quad	.LBB26_238
	.quad	.LBB26_38
	.quad	.LBB26_39
.LJTI26_1:
	.quad	.LBB26_396
	.quad	.LBB26_383
	.quad	.LBB26_389
	.quad	.LBB26_397
	.quad	.LBB26_393
.LJTI26_2:
	.quad	.LBB26_417
	.quad	.LBB26_420
	.quad	.LBB26_419
	.quad	.LBB26_418
	.quad	.LBB26_421

	.text
	.align	16, 0x90
	.type	print_preprocess_string,@function
print_preprocess_string:                # @print_preprocess_string
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	48(%rsi), %rdi
	callq	print_preprocess
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	print_preprocess_string, .Lfunc_end27-print_preprocess_string
	.cfi_endproc

	.align	16, 0x90
	.type	print_string,@function
print_string:                           # @print_string
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
	subq	$256, %rsp              # imm = 0x100
	movl	$901, %eax              # imm = 0x385
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movl	%eax, %edi
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB28_2
# BB#1:                                 # %lor.lhs.false
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB28_26
.LBB28_2:                               # %if.then
	testb	$1, globals+3423
	je	.LBB28_4
# BB#3:                                 # %if.then.3
	movq	-8(%rbp), %rdi
	callq	string_escape_byte8
	movq	%rax, -8(%rbp)
.LBB28_4:                               # %if.end
	movq	-8(%rbp), %rdi
	callq	STRING_MULTIBYTE
	testb	$1, %al
	jne	.LBB28_5
	jmp	.LBB28_6
.LBB28_5:                               # %if.then.6
	movq	-8(%rbp), %rdi
	callq	SCHARS
	movq	%rax, -24(%rbp)
	jmp	.LBB28_15
.LBB28_6:                               # %if.else
	testb	$1, globals+3423
	jne	.LBB28_13
# BB#7:                                 # %land.lhs.true
	movl	$901, %edi              # imm = 0x385
	movq	-16(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB28_9
# BB#8:                                 # %cond.true
	xorl	%edi, %edi
	movq	buffer_defaults+312, %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB28_13
	jmp	.LBB28_10
.LBB28_9:                               # %cond.false
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB28_13
.LBB28_10:                              # %if.then.15
	movq	-8(%rbp), %rdi
	callq	SBYTES
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	SDATA
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	count_size_as_multibyte
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jge	.LBB28_12
# BB#11:                                # %if.then.20
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	make_uninit_multibyte_string
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	SDATA
	movq	-8(%rbp), %rdi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	SDATA
	movq	-24(%rbp), %rdx
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	memcpy
	movq	-32(%rbp), %rdi
	callq	SDATA
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	str_to_multibyte
	movq	-32(%rbp), %rdx
	movq	%rdx, -8(%rbp)
	movq	%rax, -168(%rbp)        # 8-byte Spill
.LBB28_12:                              # %if.end.26
	jmp	.LBB28_14
.LBB28_13:                              # %if.else.27
	movq	-8(%rbp), %rdi
	callq	SBYTES
	movq	%rax, -24(%rbp)
.LBB28_14:                              # %if.end.29
	jmp	.LBB28_15
.LBB28_15:                              # %if.end.30
	movl	$901, %edi              # imm = 0x385
	movq	-16(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB28_24
# BB#16:                                # %if.then.33
	movq	-8(%rbp), %rdi
	callq	SBYTES
	movq	%rax, -48(%rbp)
	movq	$16384, -56(%rbp)       # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -64(%rbp)
	movb	$0, -65(%rbp)
	movq	-48(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jg	.LBB28_18
# BB#17:                                # %cond.true.37
	movq	-48(%rbp), %rax
	movq	-56(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -56(%rbp)
	movq	-48(%rbp), %rax
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	jmp	.LBB28_19
.LBB28_18:                              # %cond.false.38
	movb	$1, -65(%rbp)
	movq	-48(%rbp), %rdi
	callq	record_xmalloc
	movq	%rax, -184(%rbp)        # 8-byte Spill
.LBB28_19:                              # %cond.end
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	SDATA
	movq	-48(%rbp), %rdx
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	memcpy
	movq	-80(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rcx
	callq	strout
# BB#20:                                # %do.body
	testb	$1, -65(%rbp)
	je	.LBB28_22
# BB#21:                                # %if.then.42
	xorl	%edi, %edi
	movb	$0, -65(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -208(%rbp)        # 8-byte Spill
.LBB28_22:                              # %if.end.45
	jmp	.LBB28_23
.LBB28_23:                              # %do.end
	jmp	.LBB28_25
.LBB28_24:                              # %if.else.46
	movq	-8(%rbp), %rdi
	callq	SSDATA
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rax, -216(%rbp)        # 8-byte Spill
	movq	%rsi, -224(%rbp)        # 8-byte Spill
	callq	SBYTES
	movq	-16(%rbp), %rcx
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	-224(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	strout
.LBB28_25:                              # %if.end.49
	jmp	.LBB28_46
.LBB28_26:                              # %if.else.50
	movq	-8(%rbp), %rdi
	callq	SCHARS
	movq	%rax, -96(%rbp)
	movq	-8(%rbp), %rdi
	callq	SBYTES
	movq	%rax, -104(%rbp)
	movq	-96(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB28_32
# BB#27:                                # %if.then.54
	movq	$0, -88(%rbp)
.LBB28_28:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jge	.LBB28_31
# BB#29:                                # %for.body
                                        #   in Loop: Header=BB28_28 Depth=1
	movq	-8(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	SREF
	movzbl	%al, %edi
	movq	-16(%rbp), %rsi
	callq	printchar
# BB#30:                                # %for.inc
                                        #   in Loop: Header=BB28_28 Depth=1
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB28_28
.LBB28_31:                              # %for.end
	jmp	.LBB28_45
.LBB28_32:                              # %if.else.57
	movq	$0, -88(%rbp)
.LBB28_33:                              # %for.cond.58
                                        # =>This Inner Loop Header: Depth=1
	movq	-88(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jge	.LBB28_44
# BB#34:                                # %for.body.61
                                        #   in Loop: Header=BB28_33 Depth=1
	movq	-8(%rbp), %rdi
	callq	SDATA
	movq	-88(%rbp), %rdi
	movzbl	(%rax,%rdi), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB28_36
# BB#35:                                # %cond.true.65
                                        #   in Loop: Header=BB28_33 Depth=1
	movl	$1, -108(%rbp)
	movq	-8(%rbp), %rdi
	callq	SDATA
	movq	-88(%rbp), %rdi
	movzbl	(%rax,%rdi), %ecx
	movl	%ecx, -228(%rbp)        # 4-byte Spill
	jmp	.LBB28_43
.LBB28_36:                              # %cond.false.70
                                        #   in Loop: Header=BB28_33 Depth=1
	movq	-8(%rbp), %rdi
	callq	SDATA
	movq	-88(%rbp), %rdi
	movzbl	(%rax,%rdi), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB28_38
# BB#37:                                # %cond.true.77
                                        #   in Loop: Header=BB28_33 Depth=1
	movl	$2, -108(%rbp)
	movq	-8(%rbp), %rdi
	callq	SDATA
	movq	-88(%rbp), %rdi
	movzbl	(%rax,%rdi), %ecx
	andl	$31, %ecx
	shll	$6, %ecx
	movq	-8(%rbp), %rdi
	movl	%ecx, -232(%rbp)        # 4-byte Spill
	callq	SDATA
	movq	-88(%rbp), %rdi
	movzbl	1(%rax,%rdi), %ecx
	andl	$63, %ecx
	movl	-232(%rbp), %edx        # 4-byte Reload
	orl	%ecx, %edx
	movq	-8(%rbp), %rdi
	movl	%edx, -236(%rbp)        # 4-byte Spill
	callq	SDATA
	xorl	%ecx, %ecx
	movl	$4194176, %edx          # imm = 0x3FFF80
	movq	-88(%rbp), %rdi
	movzbl	(%rax,%rdi), %esi
	cmpl	$194, %esi
	cmovll	%edx, %ecx
	movl	-236(%rbp), %edx        # 4-byte Reload
	addl	%ecx, %edx
	movl	%edx, -240(%rbp)        # 4-byte Spill
	jmp	.LBB28_42
.LBB28_38:                              # %cond.false.95
                                        #   in Loop: Header=BB28_33 Depth=1
	movq	-8(%rbp), %rdi
	callq	SDATA
	movq	-88(%rbp), %rdi
	movzbl	(%rax,%rdi), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB28_40
# BB#39:                                # %cond.true.102
                                        #   in Loop: Header=BB28_33 Depth=1
	movl	$3, -108(%rbp)
	movq	-8(%rbp), %rdi
	callq	SDATA
	movq	-88(%rbp), %rdi
	movzbl	(%rax,%rdi), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-8(%rbp), %rdi
	movl	%ecx, -244(%rbp)        # 4-byte Spill
	callq	SDATA
	movq	-88(%rbp), %rdi
	movzbl	1(%rax,%rdi), %ecx
	andl	$63, %ecx
	shll	$6, %ecx
	movl	-244(%rbp), %edx        # 4-byte Reload
	orl	%ecx, %edx
	movq	-8(%rbp), %rdi
	movl	%edx, -248(%rbp)        # 4-byte Spill
	callq	SDATA
	movq	-88(%rbp), %rdi
	movzbl	2(%rax,%rdi), %ecx
	andl	$63, %ecx
	movl	-248(%rbp), %edx        # 4-byte Reload
	orl	%ecx, %edx
	movl	%edx, -252(%rbp)        # 4-byte Spill
	jmp	.LBB28_41
.LBB28_40:                              # %cond.false.122
                                        #   in Loop: Header=BB28_33 Depth=1
	movq	-8(%rbp), %rdi
	callq	SDATA
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	leaq	-108(%rbp), %rdx
	addq	-88(%rbp), %rax
	movq	%rax, %rdi
	callq	string_char
	movl	%eax, -252(%rbp)        # 4-byte Spill
.LBB28_41:                              # %cond.end.126
                                        #   in Loop: Header=BB28_33 Depth=1
	movl	-252(%rbp), %eax        # 4-byte Reload
	movl	%eax, -240(%rbp)        # 4-byte Spill
.LBB28_42:                              # %cond.end.128
                                        #   in Loop: Header=BB28_33 Depth=1
	movl	-240(%rbp), %eax        # 4-byte Reload
	movl	%eax, -228(%rbp)        # 4-byte Spill
.LBB28_43:                              # %cond.end.130
                                        #   in Loop: Header=BB28_33 Depth=1
	movl	-228(%rbp), %eax        # 4-byte Reload
	movl	%eax, -112(%rbp)
	movl	-112(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	printchar
	movslq	-108(%rbp), %rsi
	addq	-88(%rbp), %rsi
	movq	%rsi, -88(%rbp)
	jmp	.LBB28_33
.LBB28_44:                              # %for.end.134
	jmp	.LBB28_45
.LBB28_45:                              # %if.end.135
	jmp	.LBB28_46
.LBB28_46:                              # %if.end.136
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	print_string, .Lfunc_end28-print_string
	.cfi_endproc

	.align	16, 0x90
	.type	print_prune_string_charset,@function
print_prune_string_charset:             # @print_prune_string_charset
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, print_check_string_result
	movq	-8(%rbp), %rdi
	callq	string_intervals
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$print_check_string_charset_prop, %rdx
	movq	-8(%rbp), %rcx
	movq	%rax, %rdi
	callq	traverse_intervals
	movl	print_check_string_result, %r8d
	andl	$2, %r8d
	cmpl	$0, %r8d
	jne	.LBB29_7
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	Fcopy_sequence
	movq	%rax, -8(%rbp)
	movl	print_check_string_result, %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	je	.LBB29_5
# BB#2:                                 # %if.then.4
	xorl	%edi, %edi
	movq	print_prune_charset_plist, %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB29_4
# BB#3:                                 # %if.then.6
	movl	$261, %edi              # imm = 0x105
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	list1
	movq	%rax, print_prune_charset_plist
.LBB29_4:                               # %if.end
	movq	-8(%rbp), %rdi
	callq	SCHARS
	movl	$2, %ecx
	movl	%ecx, %edi
	shlq	$2, %rax
	addq	$2, %rax
	movq	print_prune_charset_plist, %rdx
	movq	-8(%rbp), %rcx
	movq	%rax, %rsi
	callq	Fremove_text_properties
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB29_6
.LBB29_5:                               # %if.else
	movq	-8(%rbp), %rdi
	callq	SCHARS
	xorl	%edi, %edi
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$2, %edi
                                        # kill: RDI<def> EDI<kill>
	movq	-8(%rbp), %rcx
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	Fset_text_properties
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB29_6:                               # %if.end.16
	jmp	.LBB29_7
.LBB29_7:                               # %if.end.17
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	print_prune_string_charset, .Lfunc_end29-print_prune_string_charset
	.cfi_endproc

	.align	16, 0x90
	.type	print_interval,@function
print_interval:                         # @print_interval
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
	subq	$80, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	48(%rsi), %rsi
	movl	%eax, %edi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB30_2
# BB#1:                                 # %if.then
	jmp	.LBB30_15
.LBB30_2:                               # %if.end
	movl	$32, %edi
	movq	-16(%rbp), %rsi
	callq	printchar
	movl	$1, %edx
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	shlq	$2, %rsi
	addq	$2, %rsi
	movq	-16(%rbp), %rax
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	print_object
	movl	$32, %edi
	movq	-16(%rbp), %rsi
	callq	printchar
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$0, -8(%rbp)
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jne	.LBB30_4
# BB#3:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	jmp	.LBB30_14
.LBB30_4:                               # %cond.false
	cmpq	$0, -8(%rbp)
	jne	.LBB30_6
# BB#5:                                 # %cond.true.4
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB30_7
.LBB30_6:                               # %cond.false.5
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB30_7:                               # %cond.end
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	-8(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jne	.LBB30_9
# BB#8:                                 # %cond.true.7
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	jmp	.LBB30_10
.LBB30_9:                               # %cond.false.8
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB30_10:                              # %cond.end.11
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	-56(%rbp), %rcx         # 8-byte Reload
	subq	%rax, %rcx
	movq	-8(%rbp), %rax
	cmpq	$0, 16(%rax)
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	jne	.LBB30_12
# BB#11:                                # %cond.true.14
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB30_13
.LBB30_12:                              # %cond.false.15
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB30_13:                              # %cond.end.18
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	-72(%rbp), %rcx         # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
.LBB30_14:                              # %cond.end.21
	movq	-40(%rbp), %rax         # 8-byte Reload
	movl	$1, %edx
	movq	-32(%rbp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	-16(%rbp), %rsi
	movq	%rcx, %rdi
	callq	print_object
	movl	$32, %edi
	movq	-16(%rbp), %rsi
	callq	printchar
	movl	$1, %edx
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	print_object
.LBB30_15:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	print_interval, .Lfunc_end30-print_interval
	.cfi_endproc

	.align	16, 0x90
	.type	print_check_string_charset_prop,@function
print_check_string_charset_prop:        # @print_check_string_charset_prop
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
	subq	$208, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	48(%rsi), %rsi
	movl	%eax, %edi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB31_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$3, print_check_string_result
	jne	.LBB31_3
.LBB31_2:                               # %if.then
	jmp	.LBB31_57
.LBB31_3:                               # %if.end
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB31_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -81(%rbp)          # 1-byte Spill
	jne	.LBB31_6
# BB#5:                                 # %land.rhs
                                        #   in Loop: Header=BB31_4 Depth=1
	movl	$261, %edi              # imm = 0x105
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	movb	%dl, -81(%rbp)          # 1-byte Spill
.LBB31_6:                               # %land.end
                                        #   in Loop: Header=BB31_4 Depth=1
	movb	-81(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB31_7
	jmp	.LBB31_9
.LBB31_7:                               # %for.body
                                        #   in Loop: Header=BB31_4 Depth=1
	jmp	.LBB31_8
.LBB31_8:                               # %for.inc
                                        #   in Loop: Header=BB31_4 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB31_4
.LBB31_9:                               # %for.end
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB31_11
# BB#10:                                # %if.then.16
	movl	print_check_string_result, %eax
	orl	$1, %eax
	movl	%eax, print_check_string_result
	jmp	.LBB31_57
.LBB31_11:                              # %if.end.17
	movl	print_check_string_result, %eax
	andl	$1, %eax
	cmpl	$0, %eax
	jne	.LBB31_16
# BB#12:                                # %if.then.19
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	48(%rcx), %rax
	jne	.LBB31_14
# BB#13:                                # %lor.lhs.false.23
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB31_15
.LBB31_14:                              # %if.then.34
	movl	print_check_string_result, %eax
	orl	$1, %eax
	movl	%eax, print_check_string_result
.LBB31_15:                              # %if.end.36
	jmp	.LBB31_16
.LBB31_16:                              # %if.end.37
	xorl	%edi, %edi
	movq	globals+1824, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB31_18
# BB#17:                                # %lor.lhs.false.41
	movl	print_check_string_result, %eax
	andl	$2, %eax
	cmpl	$0, %eax
	jne	.LBB31_57
.LBB31_18:                              # %if.then.44
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	string_char_to_byte
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movl	$0, -28(%rbp)
.LBB31_19:                              # %for.cond.51
                                        # =>This Inner Loop Header: Depth=1
	movslq	-28(%rbp), %rax
	cmpq	$0, -8(%rbp)
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jne	.LBB31_21
# BB#20:                                # %cond.true
                                        #   in Loop: Header=BB31_19 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB31_31
.LBB31_21:                              # %cond.false
                                        #   in Loop: Header=BB31_19 Depth=1
	cmpq	$0, -8(%rbp)
	jne	.LBB31_23
# BB#22:                                # %cond.true.57
                                        #   in Loop: Header=BB31_19 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB31_24
.LBB31_23:                              # %cond.false.58
                                        #   in Loop: Header=BB31_19 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB31_24:                              # %cond.end
                                        #   in Loop: Header=BB31_19 Depth=1
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jne	.LBB31_26
# BB#25:                                # %cond.true.61
                                        #   in Loop: Header=BB31_19 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB31_27
.LBB31_26:                              # %cond.false.62
                                        #   in Loop: Header=BB31_19 Depth=1
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB31_27:                              # %cond.end.65
                                        #   in Loop: Header=BB31_19 Depth=1
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	-136(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	-8(%rbp), %rax
	cmpq	$0, 16(%rax)
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	jne	.LBB31_29
# BB#28:                                # %cond.true.70
                                        #   in Loop: Header=BB31_19 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	jmp	.LBB31_30
.LBB31_29:                              # %cond.false.71
                                        #   in Loop: Header=BB31_19 Depth=1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
.LBB31_30:                              # %cond.end.74
                                        #   in Loop: Header=BB31_19 Depth=1
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	-152(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
.LBB31_31:                              # %cond.end.77
                                        #   in Loop: Header=BB31_19 Depth=1
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jge	.LBB31_56
# BB#32:                                # %for.body.81
                                        #   in Loop: Header=BB31_19 Depth=1
	jmp	.LBB31_33
.LBB31_33:                              # %do.body
                                        #   in Loop: Header=BB31_19 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	STRING_MULTIBYTE
	testb	$1, %al
	jne	.LBB31_34
	jmp	.LBB31_44
.LBB31_34:                              # %if.then.83
                                        #   in Loop: Header=BB31_19 Depth=1
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	SDATA
	movq	-168(%rbp), %rdi        # 8-byte Reload
	addq	%rdi, %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB31_36
# BB#35:                                # %cond.true.89
                                        #   in Loop: Header=BB31_19 Depth=1
	movl	$1, -68(%rbp)
	movq	-64(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -172(%rbp)        # 4-byte Spill
	jmp	.LBB31_43
.LBB31_36:                              # %cond.false.92
                                        #   in Loop: Header=BB31_19 Depth=1
	movq	-64(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB31_38
# BB#37:                                # %cond.true.97
                                        #   in Loop: Header=BB31_19 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -68(%rbp)
	movq	-64(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-64(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-64(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -176(%rbp)        # 4-byte Spill
	jmp	.LBB31_42
.LBB31_38:                              # %cond.false.110
                                        #   in Loop: Header=BB31_19 Depth=1
	movq	-64(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB31_40
# BB#39:                                # %cond.true.115
                                        #   in Loop: Header=BB31_19 Depth=1
	movl	$3, -68(%rbp)
	movq	-64(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-64(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-64(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -180(%rbp)        # 4-byte Spill
	jmp	.LBB31_41
.LBB31_40:                              # %cond.false.129
                                        #   in Loop: Header=BB31_19 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-68(%rbp), %rdx
	movq	-64(%rbp), %rdi
	callq	string_char
	movl	%eax, -180(%rbp)        # 4-byte Spill
.LBB31_41:                              # %cond.end.131
                                        #   in Loop: Header=BB31_19 Depth=1
	movl	-180(%rbp), %eax        # 4-byte Reload
	movl	%eax, -176(%rbp)        # 4-byte Spill
.LBB31_42:                              # %cond.end.133
                                        #   in Loop: Header=BB31_19 Depth=1
	movl	-176(%rbp), %eax        # 4-byte Reload
	movl	%eax, -172(%rbp)        # 4-byte Spill
.LBB31_43:                              # %cond.end.135
                                        #   in Loop: Header=BB31_19 Depth=1
	movl	-172(%rbp), %eax        # 4-byte Reload
	movl	%eax, -32(%rbp)
	movslq	-68(%rbp), %rcx
	addq	-48(%rbp), %rcx
	movq	%rcx, -48(%rbp)
	jmp	.LBB31_45
.LBB31_44:                              # %if.else
                                        #   in Loop: Header=BB31_19 Depth=1
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	SREF
	movzbl	%al, %ecx
	movl	%ecx, -32(%rbp)
	movq	-48(%rbp), %rsi
	addq	$1, %rsi
	movq	%rsi, -48(%rbp)
.LBB31_45:                              # %if.end.142
                                        #   in Loop: Header=BB31_19 Depth=1
	jmp	.LBB31_46
.LBB31_46:                              # %do.end
                                        #   in Loop: Header=BB31_19 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB31_47
	jmp	.LBB31_48
.LBB31_47:                              # %cond.true.143
                                        #   in Loop: Header=BB31_19 Depth=1
	movl	-32(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB31_54
	jmp	.LBB31_49
.LBB31_48:                              # %cond.false.147
                                        #   in Loop: Header=BB31_19 Depth=1
	movslq	-32(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jb	.LBB31_54
.LBB31_49:                              # %land.lhs.true
                                        #   in Loop: Header=BB31_19 Depth=1
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	cmpl	$128, -32(%rbp)
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jge	.LBB31_51
# BB#50:                                # %cond.true.155
                                        #   in Loop: Header=BB31_19 Depth=1
	movq	charset_table, %rax
	movslq	charset_ascii, %rcx
	imulq	$328, %rcx, %rcx        # imm = 0x148
	addq	%rcx, %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	jmp	.LBB31_52
.LBB31_51:                              # %cond.false.156
                                        #   in Loop: Header=BB31_19 Depth=1
	xorl	%edi, %edi
	movl	-32(%rbp), %eax
	movl	%eax, -204(%rbp)        # 4-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %edx
	movl	-204(%rbp), %edi        # 4-byte Reload
	movq	%rax, %rsi
	callq	char_charset
	movq	%rax, -200(%rbp)        # 8-byte Spill
.LBB31_52:                              # %cond.end.159
                                        #   in Loop: Header=BB31_19 Depth=1
	movq	-200(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rsi
	movq	-192(%rbp), %rdi        # 8-byte Reload
	callq	HASH_VALUE
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	cmpq	-56(%rbp), %rax
	je	.LBB31_54
# BB#53:                                # %if.then.165
	movl	print_check_string_result, %eax
	orl	$2, %eax
	movl	%eax, print_check_string_result
	jmp	.LBB31_56
.LBB31_54:                              # %if.end.167
                                        #   in Loop: Header=BB31_19 Depth=1
	jmp	.LBB31_55
.LBB31_55:                              # %for.inc.168
                                        #   in Loop: Header=BB31_19 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB31_19
.LBB31_56:                              # %for.end.170
	jmp	.LBB31_57
.LBB31_57:                              # %if.end.171
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	print_check_string_charset_prop, .Lfunc_end31-print_check_string_charset_prop
	.cfi_endproc

	.type	print_output_debug_flag,@object # @print_output_debug_flag
	.data
	.globl	print_output_debug_flag
print_output_debug_flag:
	.byte	1                       # 0x1
	.size	print_output_debug_flag, 1

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Marker does not point anywhere"
	.size	.L.str, 31

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Marker is outside the accessible part of the buffer"
	.size	.L.str.1, 52

	.type	print_buffer,@object    # @print_buffer
	.local	print_buffer
	.comm	print_buffer,8,8
	.type	print_buffer_pos,@object # @print_buffer_pos
	.local	print_buffer_pos
	.comm	print_buffer_pos,8,8
	.type	print_buffer_pos_byte,@object # @print_buffer_pos_byte
	.local	print_buffer_pos_byte
	.comm	print_buffer_pos_byte,8,8
	.type	print_buffer_size,@object # @print_buffer_size
	.local	print_buffer_size
	.comm	print_buffer_size,8,8
	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Unsupported function argument"
	.size	.L.str.2, 30

	.type	printchar_stdout_last,@object # @printchar_stdout_last
	.local	printchar_stdout_last
	.comm	printchar_stdout_last,4,4
	.type	Vprin1_to_string_buffer,@object # @Vprin1_to_string_buffer
	.comm	Vprin1_to_string_buffer,8,8
	.type	initial_stderr_stream,@object # @initial_stderr_stream
	.local	initial_stderr_stream
	.comm	initial_stderr_stream,8,8
	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"w"
	.size	.L.str.3, 2

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"a"
	.size	.L.str.4, 2

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Cannot open debugging output stream"
	.size	.L.str.5, 36

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"\r\n"
	.size	.L.str.6, 3

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"#<%s_LISP_OBJECT 0x%08lx>\r\n"
	.size	.L.str.7, 28

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"INVALID"
	.size	.L.str.8, 8

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"SOME"
	.size	.L.str.9, 5

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	": "
	.size	.L.str.10, 3

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"peculiar error"
	.size	.L.str.11, 15

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	", "
	.size	.L.str.12, 3

	.type	float_to_string.infinity_string,@object # @float_to_string.infinity_string
	.section	.rodata,"a",@progbits
float_to_string.infinity_string:
	.asciz	"1.0e+INF"
	.size	float_to_string.infinity_string, 9

	.type	float_to_string.minus_infinity_string,@object # @float_to_string.minus_infinity_string
float_to_string.minus_infinity_string:
	.asciz	"-1.0e+INF"
	.size	float_to_string.minus_infinity_string, 10

	.type	float_to_string.NaN_string,@object # @float_to_string.NaN_string
float_to_string.NaN_string:
	.asciz	"0.0e+NaN"
	.size	float_to_string.NaN_string, 9

	.type	syms_of_print.o_fwd,@object # @syms_of_print.o_fwd
	.local	syms_of_print.o_fwd
	.comm	syms_of_print.o_fwd,16,8
	.type	.L.str.13,@object       # @.str.13
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.13:
	.asciz	"standard-output"
	.size	.L.str.13, 16

	.type	syms_of_print.o_fwd.14,@object # @syms_of_print.o_fwd.14
	.local	syms_of_print.o_fwd.14
	.comm	syms_of_print.o_fwd.14,16,8
	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"float-output-format"
	.size	.L.str.15, 20

	.type	syms_of_print.o_fwd.16,@object # @syms_of_print.o_fwd.16
	.local	syms_of_print.o_fwd.16
	.comm	syms_of_print.o_fwd.16,16,8
	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"print-length"
	.size	.L.str.17, 13

	.type	syms_of_print.o_fwd.18,@object # @syms_of_print.o_fwd.18
	.local	syms_of_print.o_fwd.18
	.comm	syms_of_print.o_fwd.18,16,8
	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"print-level"
	.size	.L.str.19, 12

	.type	syms_of_print.b_fwd,@object # @syms_of_print.b_fwd
	.local	syms_of_print.b_fwd
	.comm	syms_of_print.b_fwd,16,8
	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"print-escape-newlines"
	.size	.L.str.20, 22

	.type	syms_of_print.b_fwd.21,@object # @syms_of_print.b_fwd.21
	.local	syms_of_print.b_fwd.21
	.comm	syms_of_print.b_fwd.21,16,8
	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"print-escape-nonascii"
	.size	.L.str.22, 22

	.type	syms_of_print.b_fwd.23,@object # @syms_of_print.b_fwd.23
	.local	syms_of_print.b_fwd.23
	.comm	syms_of_print.b_fwd.23,16,8
	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"print-escape-multibyte"
	.size	.L.str.24, 23

	.type	syms_of_print.b_fwd.25,@object # @syms_of_print.b_fwd.25
	.local	syms_of_print.b_fwd.25
	.comm	syms_of_print.b_fwd.25,16,8
	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"print-quoted"
	.size	.L.str.26, 13

	.type	syms_of_print.o_fwd.27,@object # @syms_of_print.o_fwd.27
	.local	syms_of_print.o_fwd.27
	.comm	syms_of_print.o_fwd.27,16,8
	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"print-gensym"
	.size	.L.str.28, 13

	.type	syms_of_print.o_fwd.29,@object # @syms_of_print.o_fwd.29
	.local	syms_of_print.o_fwd.29
	.comm	syms_of_print.o_fwd.29,16,8
	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"print-circle"
	.size	.L.str.30, 13

	.type	syms_of_print.o_fwd.31,@object # @syms_of_print.o_fwd.31
	.local	syms_of_print.o_fwd.31
	.comm	syms_of_print.o_fwd.31,16,8
	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"print-continuous-numbering"
	.size	.L.str.32, 27

	.type	syms_of_print.o_fwd.33,@object # @syms_of_print.o_fwd.33
	.local	syms_of_print.o_fwd.33
	.comm	syms_of_print.o_fwd.33,16,8
	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"print-number-table"
	.size	.L.str.34, 19

	.type	syms_of_print.o_fwd.35,@object # @syms_of_print.o_fwd.35
	.local	syms_of_print.o_fwd.35
	.comm	syms_of_print.o_fwd.35,16,8
	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"print-charset-text-property"
	.size	.L.str.36, 28

	.type	print_prune_charset_plist,@object # @print_prune_charset_plist
	.local	print_prune_charset_plist
	.comm	print_prune_charset_plist,8,8
	.type	new_backquote_output,@object # @new_backquote_output
	.local	new_backquote_output
	.comm	new_backquote_output,8,8
	.type	print_number_index,@object # @print_number_index
	.local	print_number_index
	.comm	print_number_index,8,8
	.type	print_depth,@object     # @print_depth
	.local	print_depth
	.comm	print_depth,8,8
	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Apparently circular structure being printed"
	.size	.L.str.37, 44

	.type	being_printed,@object   # @being_printed
	.local	being_printed
	.comm	being_printed,1600,16
	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"#%d"
	.size	.L.str.38, 4

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"#%ld="
	.size	.L.str.39, 6

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"#%ld#"
	.size	.L.str.40, 6

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"%ld"
	.size	.L.str.41, 4

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"#("
	.size	.L.str.42, 3

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"\\%03o"
	.size	.L.str.43, 6

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"\\x%04x"
	.size	.L.str.44, 7

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"\\ "
	.size	.L.str.45, 3

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"#:"
	.size	.L.str.46, 3

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"##"
	.size	.L.str.47, 3

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"..."
	.size	.L.str.48, 4

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"#'"
	.size	.L.str.49, 3

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	" . #%ld"
	.size	.L.str.50, 8

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	" . "
	.size	.L.str.51, 4

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"#<process "
	.size	.L.str.52, 11

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"#&%ld\""
	.size	.L.str.53, 7

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"\\n"
	.size	.L.str.54, 3

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"\\f"
	.size	.L.str.55, 3

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"\\%o"
	.size	.L.str.56, 4

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	" ..."
	.size	.L.str.57, 5

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"#<subr "
	.size	.L.str.58, 8

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"#<xwidget "
	.size	.L.str.59, 11

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"#<window %ld"
	.size	.L.str.60, 13

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	" on "
	.size	.L.str.61, 5

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"#<terminal %d"
	.size	.L.str.62, 14

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"#s(hash-table size %ld"
	.size	.L.str.63, 23

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	" test "
	.size	.L.str.64, 7

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	" weakness "
	.size	.L.str.65, 11

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	" rehash-size "
	.size	.L.str.66, 14

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	" rehash-threshold "
	.size	.L.str.67, 19

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	" data "
	.size	.L.str.68, 7

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"))"
	.size	.L.str.69, 3

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"#<killed buffer>"
	.size	.L.str.70, 17

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"#<buffer "
	.size	.L.str.71, 10

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"#<window-configuration>"
	.size	.L.str.72, 24

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"#<frame "
	.size	.L.str.73, 9

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"#<dead frame "
	.size	.L.str.74, 14

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"*INVALID*FRAME*NAME*"
	.size	.L.str.75, 21

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	" %p>"
	.size	.L.str.76, 5

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"#<font-spec"
	.size	.L.str.77, 12

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"#<font-entity"
	.size	.L.str.78, 14

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"#<font-object "
	.size	.L.str.79, 15

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"#^"
	.size	.L.str.80, 3

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"%d %d"
	.size	.L.str.81, 6

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"#<marker "
	.size	.L.str.82, 10

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"(moves after insertion) "
	.size	.L.str.83, 25

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"in no buffer"
	.size	.L.str.84, 13

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"at %ld in "
	.size	.L.str.85, 11

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"#<overlay "
	.size	.L.str.86, 11

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"from %ld to %ld in "
	.size	.L.str.87, 20

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"#<finalizer"
	.size	.L.str.88, 12

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	" used"
	.size	.L.str.89, 6

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"#<misc free cell>"
	.size	.L.str.90, 18

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"#<save-value "
	.size	.L.str.91, 14

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"with %ld objects"
	.size	.L.str.92, 17

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"<some>"
	.size	.L.str.93, 7

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"<invalid>"
	.size	.L.str.94, 10

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"<unused>"
	.size	.L.str.95, 9

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"<pointer %p>"
	.size	.L.str.96, 13

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"<funcpointer %p>"
	.size	.L.str.97, 17

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"<integer %ld>"
	.size	.L.str.98, 14

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"#<EMACS BUG: INVALID DATATYPE "
	.size	.L.str.99, 31

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"(MISC 0x%04x)"
	.size	.L.str.100, 14

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"(PVEC 0x%08zx)"
	.size	.L.str.101, 15

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"(0x%02x)"
	.size	.L.str.102, 9

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	" Save your buffers immediately and please report this bug>"
	.size	.L.str.103, 59

	.type	print_check_string_result,@object # @print_check_string_result
	.local	print_check_string_result
	.comm	print_check_string_result,4,4
	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"external-debugging-output"
	.size	.L.str.104, 26

	.type	Sexternal_debugging_output,@object # @Sexternal_debugging_output
	.data
	.align	8
Sexternal_debugging_output:
	.quad	167772160               # 0xa000000
	.quad	Fexternal_debugging_output
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.104
	.quad	0
	.quad	0
	.size	Sexternal_debugging_output, 48

	.type	.L.str.105,@object      # @.str.105
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.105:
	.asciz	"prin1"
	.size	.L.str.105, 6

	.type	Sprin1,@object          # @Sprin1
	.data
	.align	8
Sprin1:
	.quad	167772160               # 0xa000000
	.quad	Fprin1
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.105
	.quad	0
	.quad	0
	.size	Sprin1, 48

	.type	.L.str.106,@object      # @.str.106
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.106:
	.asciz	"prin1-to-string"
	.size	.L.str.106, 16

	.type	Sprin1_to_string,@object # @Sprin1_to_string
	.data
	.align	8
Sprin1_to_string:
	.quad	167772160               # 0xa000000
	.quad	Fprin1_to_string
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.106
	.quad	0
	.quad	0
	.size	Sprin1_to_string, 48

	.type	.L.str.107,@object      # @.str.107
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.107:
	.asciz	"error-message-string"
	.size	.L.str.107, 21

	.type	Serror_message_string,@object # @Serror_message_string
	.data
	.align	8
Serror_message_string:
	.quad	167772160               # 0xa000000
	.quad	Ferror_message_string
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.107
	.quad	0
	.quad	0
	.size	Serror_message_string, 48

	.type	.L.str.108,@object      # @.str.108
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.108:
	.asciz	"princ"
	.size	.L.str.108, 6

	.type	Sprinc,@object          # @Sprinc
	.data
	.align	8
Sprinc:
	.quad	167772160               # 0xa000000
	.quad	Fprinc
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.108
	.quad	0
	.quad	0
	.size	Sprinc, 48

	.type	.L.str.109,@object      # @.str.109
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.109:
	.asciz	"print"
	.size	.L.str.109, 6

	.type	Sprint,@object          # @Sprint
	.data
	.align	8
Sprint:
	.quad	167772160               # 0xa000000
	.quad	Fprint
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.109
	.quad	0
	.quad	0
	.size	Sprint, 48

	.type	.L.str.110,@object      # @.str.110
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.110:
	.asciz	"terpri"
	.size	.L.str.110, 7

	.type	Sterpri,@object         # @Sterpri
	.data
	.align	8
Sterpri:
	.quad	167772160               # 0xa000000
	.quad	Fterpri
	.short	0                       # 0x0
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.110
	.quad	0
	.quad	0
	.size	Sterpri, 48

	.type	.L.str.111,@object      # @.str.111
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.111:
	.asciz	"write-char"
	.size	.L.str.111, 11

	.type	Swrite_char,@object     # @Swrite_char
	.data
	.align	8
Swrite_char:
	.quad	167772160               # 0xa000000
	.quad	Fwrite_char
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.111
	.quad	0
	.quad	0
	.size	Swrite_char, 48

	.type	.L.str.112,@object      # @.str.112
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.112:
	.asciz	"redirect-debugging-output"
	.size	.L.str.112, 26

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"FDebug output file: \nP"
	.size	.L.str.113, 23

	.type	Sredirect_debugging_output,@object # @Sredirect_debugging_output
	.data
	.align	8
Sredirect_debugging_output:
	.quad	167772160               # 0xa000000
	.quad	Fredirect_debugging_output
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.112
	.quad	.L.str.113
	.quad	0
	.size	Sredirect_debugging_output, 48


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
