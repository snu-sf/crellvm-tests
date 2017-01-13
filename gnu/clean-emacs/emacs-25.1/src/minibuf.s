	.text
	.file	"minibuf.bc"
	.globl	Factive_minibuffer_window
	.align	16, 0x90
	.type	Factive_minibuffer_window,@function
Factive_minibuffer_window:              # @Factive_minibuffer_window
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
	cmpq	$0, minibuf_level
	je	.LBB0_2
# BB#1:                                 # %cond.true
	movq	minibuf_window, %rax
	movq	%rax, -8(%rbp)          # 8-byte Spill
	jmp	.LBB0_3
.LBB0_2:                                # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)          # 8-byte Spill
.LBB0_3:                                # %cond.end
	movq	-8(%rbp), %rax          # 8-byte Reload
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	Factive_minibuffer_window, .Lfunc_end0-Factive_minibuffer_window
	.cfi_endproc

	.globl	Fset_minibuffer_window
	.align	16, 0x90
	.type	Fset_minibuffer_window,@function
Fset_minibuffer_window:                 # @Fset_minibuffer_window
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_WINDOW
	movq	-8(%rbp), %rdi
	callq	XWINDOW
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	error
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, minibuf_window
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	Fset_minibuffer_window, .Lfunc_end1-Fset_minibuffer_window
	.cfi_endproc

	.globl	Fminibufferp
	.align	16, 0x90
	.type	Fminibufferp,@function
Fminibufferp:                           # @Fminibufferp
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
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB2_2
# BB#1:                                 # %if.then
	callq	Fcurrent_buffer
	movq	%rax, -8(%rbp)
	jmp	.LBB2_6
.LBB2_2:                                # %if.else
	movq	-8(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB2_3
	jmp	.LBB2_4
.LBB2_3:                                # %if.then.3
	movq	-8(%rbp), %rdi
	callq	Fget_buffer
	movq	%rax, -8(%rbp)
	jmp	.LBB2_5
.LBB2_4:                                # %if.else.5
	movq	-8(%rbp), %rdi
	callq	CHECK_BUFFER
.LBB2_5:                                # %if.end
	jmp	.LBB2_6
.LBB2_6:                                # %if.end.6
	movq	-8(%rbp), %rdi
	movq	Vminibuffer_list, %rsi
	callq	Fmemq
	xorl	%edi, %edi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB2_8
# BB#7:                                 # %cond.true
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB2_9
.LBB2_8:                                # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB2_9:                                # %cond.end
	movq	-40(%rbp), %rax         # 8-byte Reload
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	Fminibufferp, .Lfunc_end2-Fminibufferp
	.cfi_endproc

	.globl	Fminibuffer_prompt_end
	.align	16, 0x90
	.type	Fminibuffer_prompt_end,@function
Fminibuffer_prompt_end:                 # @Fminibuffer_prompt_end
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
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -16(%rbp)
	callq	Fcurrent_buffer
	movq	Vminibuffer_list, %rsi
	movq	%rax, %rdi
	callq	Fmemq
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB3_6
.LBB3_2:                                # %if.end
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	Ffield_end
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	movq	current_buffer, %rdx
	cmpq	768(%rdx), %rax
	jne	.LBB3_5
# BB#3:                                 # %land.lhs.true
	movl	$403, %edi              # imm = 0x193
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	Fget_char_property
	xorl	%edi, %edi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB3_5
# BB#4:                                 # %if.then.12
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB3_6
.LBB3_5:                                # %if.else
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB3_6:                                # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	Fminibuffer_prompt_end, .Lfunc_end3-Fminibuffer_prompt_end
	.cfi_endproc

	.globl	Fminibuffer_contents
	.align	16, 0x90
	.type	Fminibuffer_contents,@function
Fminibuffer_contents:                   # @Fminibuffer_contents
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
	subq	$16, %rsp
	callq	Fminibuffer_prompt_end
	movl	$1, %edx
	sarq	$2, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	current_buffer, %rax
	movq	768(%rax), %rsi
	callq	make_buffer_string
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	Fminibuffer_contents, .Lfunc_end4-Fminibuffer_contents
	.cfi_endproc

	.globl	Fminibuffer_contents_no_properties
	.align	16, 0x90
	.type	Fminibuffer_contents_no_properties,@function
Fminibuffer_contents_no_properties:     # @Fminibuffer_contents_no_properties
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
	callq	Fminibuffer_prompt_end
	xorl	%edx, %edx
	sarq	$2, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	current_buffer, %rax
	movq	768(%rax), %rsi
	callq	make_buffer_string
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	Fminibuffer_contents_no_properties, .Lfunc_end5-Fminibuffer_contents_no_properties
	.cfi_endproc

	.globl	Fminibuffer_completion_contents
	.align	16, 0x90
	.type	Fminibuffer_completion_contents,@function
Fminibuffer_completion_contents:        # @Fminibuffer_completion_contents
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
	subq	$16, %rsp
	callq	Fminibuffer_prompt_end
	sarq	$2, %rax
	movq	%rax, -8(%rbp)
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	cmpq	-8(%rbp), %rax
	jge	.LBB6_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	error
.LBB6_2:                                # %if.end
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, %rsi
	callq	make_buffer_string
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	Fminibuffer_completion_contents, .Lfunc_end6-Fminibuffer_completion_contents
	.cfi_endproc

	.globl	get_minibuffer
	.align	16, 0x90
	.type	get_minibuffer,@function
get_minibuffer:                         # @get_minibuffer
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	make_natnum
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	Vminibuffer_list, %rsi
	callq	Fnthcdr
	xorl	%edi, %edi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB7_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	list1
	movq	%rax, -16(%rbp)
	movq	Vminibuffer_list, %rdi
	movq	-16(%rbp), %rsi
	callq	nconc2
	movq	%rax, Vminibuffer_list
.LBB7_2:                                # %if.end
	movq	-16(%rbp), %rdi
	callq	Fcar
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB7_4
# BB#3:                                 # %lor.lhs.false
	movq	-32(%rbp), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB7_5
.LBB7_4:                                # %if.then.12
	movabsq	$.L.str.2, %rsi
	leaq	-64(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movb	$0, %al
	callq	make_formatted_string
	movq	%rax, %rdi
	callq	Fget_buffer_create
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	Fbuffer_enable_undo
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	XSETCAR
	jmp	.LBB7_9
.LBB7_5:                                # %if.else
	callq	SPECPDL_INDEX
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rdi
	callq	XBUFFER
	movq	%rax, %rdi
	callq	delete_all_overlays
	movq	-32(%rbp), %rdi
	callq	XBUFFER
	movq	%rax, %rdi
	callq	reset_buffer
	callq	record_unwind_current_buffer
	movq	-32(%rbp), %rdi
	callq	Fset_buffer
	movabsq	$.L.str.3, %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	intern
	movq	%rax, %rdi
	callq	Ffboundp
	xorl	%edi, %edi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB7_7
# BB#6:                                 # %if.then.24
	movabsq	$.L.str.3, %rdi
	callq	intern
	movq	%rax, %rdi
	callq	call0
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB7_8
.LBB7_7:                                # %if.else.27
	callq	Fkill_all_local_variables
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB7_8:                                # %if.end.29
	xorl	%edi, %edi
	movq	-72(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -152(%rbp)        # 8-byte Spill
.LBB7_9:                                # %if.end.32
	movq	-32(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	get_minibuffer, .Lfunc_end7-get_minibuffer
	.cfi_endproc

	.globl	Fread_from_minibuffer
	.align	16, 0x90
	.type	Fread_from_minibuffer,@function
Fread_from_minibuffer:                  # @Fread_from_minibuffer
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
	subq	$208, %rsp
	movq	16(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_STRING
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB8_2
# BB#1:                                 # %if.then
	movq	globals+1520, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB8_3
.LBB8_2:                                # %if.else
	movl	$1, %esi
	xorl	%edx, %edx
	movq	-24(%rbp), %rdi
	callq	get_keymap
	movq	%rax, -24(%rbp)
.LBB8_3:                                # %if.end
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB8_5
# BB#4:                                 # %if.then.4
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -72(%rbp)
	jmp	.LBB8_6
.LBB8_5:                                # %if.else.6
	movq	-40(%rbp), %rdi
	callq	Fcar_safe
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rdi
	callq	Fcdr_safe
	movq	%rax, -72(%rbp)
.LBB8_6:                                # %if.end.9
	xorl	%edi, %edi
	movq	-64(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB8_8
# BB#7:                                 # %if.then.13
	movl	$665, %edi              # imm = 0x299
	callq	builtin_lisp_symbol
	movq	%rax, -64(%rbp)
.LBB8_8:                                # %if.end.15
	xorl	%edi, %edi
	movq	-72(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB8_10
# BB#9:                                 # %if.then.19
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	make_natnum
	movq	%rax, -72(%rbp)
.LBB8_10:                               # %if.end.21
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%r8b
	xorb	$-1, %r8b
	movq	-64(%rbp), %rax
	movq	-72(%rbp), %r9
	movq	-48(%rbp), %rdx
	movb	globals+3411, %r10b
	movq	-56(%rbp), %rsi
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	movb	%r8b, -145(%rbp)        # 1-byte Spill
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movq	%r9, -168(%rbp)         # 8-byte Spill
	movq	%rdx, -176(%rbp)        # 8-byte Spill
	movb	%r10b, -177(%rbp)       # 1-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%r8b
	xorb	$-1, %r8b
	movq	%rsp, %rax
	movq	-176(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, (%rax)
	movzbl	%r8b, %edi
	andl	$1, %edi
	movl	%edi, 16(%rax)
	movb	-177(%rbp), %r8b        # 1-byte Reload
	movzbl	%r8b, %edi
	andl	$1, %edi
	movl	%edi, 8(%rax)
	movb	-145(%rbp), %r10b       # 1-byte Reload
	movzbl	%r10b, %edi
	andl	$1, %edi
	movq	-120(%rbp), %rax        # 8-byte Reload
	movl	%edi, -184(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movq	-136(%rbp), %rdx        # 8-byte Reload
	movl	-184(%rbp), %ecx        # 4-byte Reload
	movq	-160(%rbp), %r8         # 8-byte Reload
	movq	-168(%rbp), %r9         # 8-byte Reload
	callq	read_minibuf
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	Fread_from_minibuffer, .Lfunc_end8-Fread_from_minibuffer
	.cfi_endproc

	.align	16, 0x90
	.type	read_minibuf,@function
read_minibuf:                           # @read_minibuf
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$904, %rsp              # imm = 0x388
.Ltmp30:
	.cfi_offset %rbx, -40
.Ltmp31:
	.cfi_offset %r14, -32
.Ltmp32:
	.cfi_offset %r15, -24
	movb	%cl, %al
	movb	32(%rbp), %r10b
	movb	24(%rbp), %r11b
	movq	16(%rbp), %rbx
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	andb	$1, %al
	movb	%al, -57(%rbp)
	movq	%r8, -72(%rbp)
	movq	%r9, -80(%rbp)
	movq	%rbx, -88(%rbp)
	andb	$1, %r11b
	movb	%r11b, -89(%rbp)
	andb	$1, %r10b
	movb	%r10b, -90(%rbp)
	callq	SPECPDL_INDEX
	movl	$663, %edi              # imm = 0x297
	movq	%rax, -112(%rbp)
	movq	$0, -160(%rbp)
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	specbind
	movl	$547, %edi              # imm = 0x223
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
	movabsq	$.L.str.33, %rdi
	callq	intern
	movq	globals+1456, %rsi
	movq	%rax, %rdi
	callq	specbind
	movl	$598, %edi              # imm = 0x256
	movq	globals+1456, %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-280(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB9_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+1456
.LBB9_2:                                # %if.end
	testb	$1, globals+3378
	je	.LBB9_4
# BB#3:                                 # %if.then.9
	callq	cancel_hourglass
.LBB9_4:                                # %if.end.10
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-288(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB9_17
# BB#5:                                 # %if.then.13
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB9_15
# BB#6:                                 # %if.then.16
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -208(%rbp)
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	CHECK_STRING
	xorl	%edi, %edi
	movq	-208(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-296(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB9_14
# BB#7:                                 # %if.then.21
	movq	-208(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB9_9
# BB#8:                                 # %cond.true
	jmp	.LBB9_10
.LBB9_9:                                # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -304(%rbp)        # 8-byte Spill
.LBB9_10:                               # %cond.end
	movq	-208(%rbp), %rax
	sarq	$2, %rax
	cmpq	$1, %rax
	jge	.LBB9_12
# BB#11:                                # %if.then.30
	movq	-48(%rbp), %rdi
	callq	SCHARS
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	subq	%rax, %rdi
	movq	%rdi, -160(%rbp)
	jmp	.LBB9_13
.LBB9_12:                               # %if.else
	movq	-208(%rbp), %rax
	sarq	$2, %rax
	subq	$1, %rax
	movq	-48(%rbp), %rdi
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	SCHARS
	movq	-312(%rbp), %rdi        # 8-byte Reload
	subq	%rax, %rdi
	movq	%rdi, -160(%rbp)
.LBB9_13:                               # %if.end.37
	jmp	.LBB9_14
.LBB9_14:                               # %if.end.38
	jmp	.LBB9_16
.LBB9_15:                               # %if.else.39
	movq	-48(%rbp), %rdi
	callq	CHECK_STRING
.LBB9_16:                               # %if.end.40
	jmp	.LBB9_17
.LBB9_17:                               # %if.end.41
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -104(%rbp)
	movq	current_buffer, %rax
	movq	24(%rax), %rax
	movq	%rax, -128(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -144(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -152(%rbp)
	movq	-56(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB9_19
# BB#18:                                # %if.then.46
	movq	empty_unibyte_string, %rax
	movq	%rax, -56(%rbp)
.LBB9_19:                               # %if.end.47
	testb	$1, globals+3379
	jne	.LBB9_24
# BB#20:                                # %land.lhs.true
	cmpq	$0, minibuf_level
	jle	.LBB9_24
# BB#21:                                # %if.then.51
	movq	selected_window, %rax
	cmpq	minibuf_window, %rax
	jne	.LBB9_23
# BB#22:                                # %if.then.54
	movabsq	$.L.str.50, %rdi
	movb	$0, %al
	callq	error
.LBB9_23:                               # %if.else.55
	movl	$387, %edi              # imm = 0x183
	callq	builtin_lisp_symbol
	movabsq	$.L.str.50, %rdi
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	build_string
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fthrow
	movq	%rax, -328(%rbp)        # 8-byte Spill
.LBB9_24:                               # %if.end.58
	testb	$1, noninteractive
	jne	.LBB9_27
# BB#25:                                # %lor.lhs.false
	cmpl	$0, daemon_pipe+4
	je	.LBB9_29
# BB#26:                                # %land.lhs.true.63
	cmpl	$0, daemon_pipe+4
	jl	.LBB9_29
.LBB9_27:                               # %land.lhs.true.66
	xorl	%edi, %edi
	movq	globals+688, %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-336(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB9_29
# BB#28:                                # %if.then.70
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdx
	movq	-160(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movb	-57(%rbp), %cl
	movq	-72(%rbp), %r9
	movq	-80(%rbp), %r8
	movq	-88(%rbp), %r10
	movb	-89(%rbp), %r11b
	movb	-90(%rbp), %bl
	andb	$1, %cl
	andb	$1, %r11b
	andb	$1, %bl
	movb	%cl, -337(%rbp)         # 1-byte Spill
	movq	%rax, %rcx
	movb	-337(%rbp), %r14b       # 1-byte Reload
	movzbl	%r14b, %r15d
	movq	%r8, -352(%rbp)         # 8-byte Spill
	movl	%r15d, %r8d
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	movzbl	%r11b, %r15d
	movl	%r15d, 16(%rsp)
	movzbl	%bl, %r15d
	movl	%r15d, 24(%rsp)
	callq	read_minibuf_noninteractive
	movq	%rax, -104(%rbp)
	movq	-112(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	unbind_to
	movq	%rax, -32(%rbp)
	jmp	.LBB9_115
.LBB9_29:                               # %if.end.76
	callq	Fcurrent_buffer
	movabsq	$restore_buffer, %rdi
	movq	%rax, %rsi
	callq	record_unwind_protect
	callq	choose_minibuf_frame
	movabsq	$choose_minibuf_frame, %rdi
	callq	record_unwind_protect_void
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	Fcurrent_window_configuration
	movabsq	$restore_window_configuration, %rdi
	movq	%rax, %rsi
	callq	record_unwind_protect
	movq	minibuf_window, %rdi
	callq	XWINDOW
	movq	8(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	cmpq	selected_frame, %rax
	je	.LBB9_31
# BB#30:                                # %if.then.84
	movq	-120(%rbp), %rdi
	callq	Fcurrent_window_configuration
	movabsq	$restore_window_configuration, %rdi
	movq	%rax, %rsi
	callq	record_unwind_protect
.LBB9_31:                               # %if.end.86
	movq	-120(%rbp), %rdi
	callq	Fmake_frame_visible
	testb	$1, globals+3412
	movq	%rax, -360(%rbp)        # 8-byte Spill
	je	.LBB9_33
# BB#32:                                # %if.then.89
	movq	-120(%rbp), %rdi
	callq	Fraise_frame
	movq	%rax, -368(%rbp)        # 8-byte Spill
.LBB9_33:                               # %if.end.91
	movq	-120(%rbp), %rax
	subq	$5, %rax
	movq	%rax, %rdi
	callq	temporarily_switch_to_single_kboard
	movq	globals+1728, %rdi
	movq	minibuf_window, %rax
	movq	minibuf_save_list, %rsi
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	Fcons
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	%rax, minibuf_save_list
	movq	minibuf_prompt, %rdi
	movq	minibuf_prompt_width, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	globals+984, %rsi
	movq	globals+400, %rcx
	movq	globals+1504, %rdx
	movq	globals+1512, %r8
	movq	minibuf_save_list, %r9
	movq	%rdi, -384(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	%rsi, -392(%rbp)        # 8-byte Spill
	movq	%r9, %rsi
	movq	%rdx, -400(%rbp)        # 8-byte Spill
	movq	%rax, -408(%rbp)        # 8-byte Spill
	movq	%rcx, -416(%rbp)        # 8-byte Spill
	callq	Fcons
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movabsq	$read_minibuf_unwind, %rdi
	movq	%rax, minibuf_save_list
	callq	record_unwind_protect_void
	movabsq	$run_exit_minibuf_hook, %rdi
	movq	minibuf_level, %rax
	addq	$1, %rax
	movq	%rax, minibuf_level
	callq	record_unwind_protect_void
	movq	$0, minibuf_prompt_width
	movq	-56(%rbp), %rdi
	callq	Fcopy_sequence
	xorl	%edi, %edi
	movq	%rax, minibuf_prompt
	movq	-80(%rbp), %rax
	movq	%rax, globals+1504
	movq	-72(%rbp), %rax
	movq	%rax, globals+1512
	movq	globals+1496, %rax
	movq	%rax, globals+984
	movq	globals+1456, %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-424(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB9_35
# BB#34:                                # %if.then.107
	movl	$598, %edi              # imm = 0x256
	callq	builtin_lisp_symbol
	movq	%rax, globals+1456
.LBB9_35:                               # %if.end.109
	movq	globals+1512, %rdi
	callq	find_symbol_value
	movl	$957, %edi              # imm = 0x3BD
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-432(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB9_37
# BB#36:                                # %if.then.114
	xorl	%edi, %edi
	movq	globals+1512, %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fset
	xorl	%edi, %edi
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	%rax, -176(%rbp)
.LBB9_37:                               # %if.end.118
	testb	$1, -90(%rbp)
	je	.LBB9_39
# BB#38:                                # %if.then.120
	movl	$304, %edi              # imm = 0x130
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	Fsymbol_value
	movq	%rax, -144(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -152(%rbp)
.LBB9_39:                               # %if.end.123
	movq	minibuf_level, %rdi
	callq	get_minibuffer
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rdi
	callq	Fset_buffer
	xorl	%edi, %edi
	movq	current_buffer, %rcx
	movq	%rax, -456(%rbp)        # 8-byte Spill
	movq	%rcx, -464(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_truncate_lines
	testb	$1, -90(%rbp)
	je	.LBB9_41
# BB#40:                                # %if.then.128
	movq	current_buffer, %rdi
	movq	-152(%rbp), %rsi
	callq	bset_enable_multibyte_characters
.LBB9_41:                               # %if.end.129
	movq	-128(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB9_42
	jmp	.LBB9_43
.LBB9_42:                               # %if.then.131
	movq	current_buffer, %rdi
	movq	-128(%rbp), %rsi
	callq	bset_directory
	jmp	.LBB9_52
.LBB9_43:                               # %if.else.132
	movq	Vbuffer_alist, %rax
	movq	%rax, -216(%rbp)
.LBB9_44:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-216(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -465(%rbp)         # 1-byte Spill
	jne	.LBB9_46
# BB#45:                                # %land.rhs
                                        #   in Loop: Header=BB9_44 Depth=1
	movb	$1, %al
	movq	-216(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -224(%rbp)
	movb	%al, -465(%rbp)         # 1-byte Spill
.LBB9_46:                               # %land.end
                                        #   in Loop: Header=BB9_44 Depth=1
	movb	-465(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB9_47
	jmp	.LBB9_51
.LBB9_47:                               # %for.body
                                        #   in Loop: Header=BB9_44 Depth=1
	movq	-224(%rbp), %rdi
	callq	XBUFFER
	movq	24(%rax), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB9_48
	jmp	.LBB9_49
.LBB9_48:                               # %if.then.145
	movq	current_buffer, %rdi
	movq	-224(%rbp), %rax
	movq	%rdi, -480(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	XBUFFER
	movq	24(%rax), %rsi
	movq	-480(%rbp), %rdi        # 8-byte Reload
	callq	bset_directory
	jmp	.LBB9_51
.LBB9_49:                               # %if.end.148
                                        #   in Loop: Header=BB9_44 Depth=1
	jmp	.LBB9_50
.LBB9_50:                               # %for.inc
                                        #   in Loop: Header=BB9_44 Depth=1
	movq	-216(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -216(%rbp)
	jmp	.LBB9_44
.LBB9_51:                               # %for.end
	jmp	.LBB9_52
.LBB9_52:                               # %if.end.152
	movq	-120(%rbp), %rax
	cmpq	selected_frame, %rax
	je	.LBB9_54
# BB#53:                                # %if.then.155
	movq	selected_frame, %rdi
	movq	-120(%rbp), %rsi
	callq	Fredirect_frame_focus
	movq	%rax, -488(%rbp)        # 8-byte Spill
.LBB9_54:                               # %if.end.157
	movq	selected_window, %rax
	movq	%rax, globals+1448
	cmpq	$1, minibuf_level
	je	.LBB9_56
# BB#55:                                # %lor.lhs.false.160
	movq	minibuf_window, %rax
	cmpq	selected_window, %rax
	je	.LBB9_57
.LBB9_56:                               # %if.then.163
	movq	selected_window, %rax
	movq	%rax, minibuf_selected_window
.LBB9_57:                               # %if.end.164
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	get_minibuffer
	movq	%rax, -184(%rbp)
	movq	Vframe_list, %rax
	movq	%rax, -192(%rbp)
.LBB9_58:                               # %for.cond.166
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-192(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -489(%rbp)         # 1-byte Spill
	jne	.LBB9_60
# BB#59:                                # %land.rhs.171
                                        #   in Loop: Header=BB9_58 Depth=1
	movb	$1, %al
	movq	-192(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -200(%rbp)
	movb	%al, -489(%rbp)         # 1-byte Spill
.LBB9_60:                               # %land.end.174
                                        #   in Loop: Header=BB9_58 Depth=1
	movb	-489(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB9_61
	jmp	.LBB9_67
.LBB9_61:                               # %for.body.175
                                        #   in Loop: Header=BB9_58 Depth=1
	movq	-200(%rbp), %rdi
	callq	Fframe_root_window
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rdi
	callq	XWINDOW
	xorl	%edi, %edi
	movq	16(%rax), %rax
	movq	%rax, -240(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-504(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB9_65
# BB#62:                                # %land.lhs.true.181
                                        #   in Loop: Header=BB9_58 Depth=1
	movq	-240(%rbp), %rax
	cmpq	minibuf_window, %rax
	je	.LBB9_65
# BB#63:                                # %land.lhs.true.184
                                        #   in Loop: Header=BB9_58 Depth=1
	movq	-240(%rbp), %rdi
	callq	Fwindow_minibuffer_p
	xorl	%edi, %edi
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-512(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB9_65
# BB#64:                                # %if.then.189
                                        #   in Loop: Header=BB9_58 Depth=1
	xorl	%eax, %eax
	movq	-240(%rbp), %rdi
	movq	-184(%rbp), %rsi
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	set_window_buffer
.LBB9_65:                               # %if.end.190
                                        #   in Loop: Header=BB9_58 Depth=1
	jmp	.LBB9_66
.LBB9_66:                               # %for.inc.191
                                        #   in Loop: Header=BB9_58 Depth=1
	movq	-192(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -192(%rbp)
	jmp	.LBB9_58
.LBB9_67:                               # %for.end.195
	movq	minibuf_window, %rdi
	movq	%rdi, -520(%rbp)        # 8-byte Spill
	callq	Fcurrent_buffer
	xorl	%ecx, %ecx
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movl	%ecx, %edx
	callq	set_window_buffer
	xorl	%edi, %edi
	movq	minibuf_window, %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fselect_window
	movq	minibuf_window, %rdi
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	XWINDOW
	movq	$0, 272(%rax)
	movq	minibuf_window, %rdi
	callq	XWINDOW
	movl	$771, %edi              # imm = 0x303
	movw	468(%rax), %r8w
	andw	$32767, %r8w            # imm = 0x7FFF
	movw	%r8w, 468(%rax)
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	Fmake_local_variable
	movb	$1, globals+3422
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	SPECPDL_INDEX
	movl	$547, %edi              # imm = 0x223
	movq	%rax, -248(%rbp)
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
	movl	$544, %edi              # imm = 0x220
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-560(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
	callq	Ferase_buffer
	xorl	%edi, %edi
	movq	current_buffer, %rsi
	movq	312(%rsi), %rsi
	movq	%rax, -568(%rbp)        # 8-byte Spill
	movq	%rsi, -576(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-576(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB9_70
# BB#68:                                # %land.lhs.true.213
	movq	minibuf_prompt, %rdi
	callq	STRING_MULTIBYTE
	testb	$1, %al
	jne	.LBB9_70
# BB#69:                                # %if.then.215
	movq	minibuf_prompt, %rdi
	callq	Fstring_make_multibyte
	movq	%rax, minibuf_prompt
.LBB9_70:                               # %if.end.217
	movl	$1, %eax
	movl	%eax, %edi
	movabsq	$minibuf_prompt, %rsi
	callq	Finsert
	movq	current_buffer, %rsi
	movq	736(%rsi), %rsi
	addq	$0, %rsi
	cmpq	$1, %rsi
	movq	%rax, -584(%rbp)        # 8-byte Spill
	jle	.LBB9_72
# BB#71:                                # %if.then.222
	movl	$468, %edi              # imm = 0x1D4
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -592(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -600(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$6, %edi
                                        # kill: RDI<def> EDI<kill>
	movq	-592(%rbp), %rsi        # 8-byte Reload
	movq	-600(%rbp), %rdx        # 8-byte Reload
	movq	-608(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	callq	Fput_text_property
	movl	$794, %edi              # imm = 0x31A
	movq	current_buffer, %rcx
	movq	736(%rcx), %rcx
	addq	$0, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rax, -616(%rbp)        # 8-byte Spill
	movq	%rcx, -624(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -632(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -640(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$6, %edi
                                        # kill: RDI<def> EDI<kill>
	movq	-624(%rbp), %rsi        # 8-byte Reload
	movq	-632(%rbp), %rdx        # 8-byte Reload
	movq	-640(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	callq	Fput_text_property
	movl	$403, %edi              # imm = 0x193
	movq	current_buffer, %rcx
	movq	736(%rcx), %rcx
	addq	$0, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rax, -648(%rbp)        # 8-byte Spill
	movq	%rcx, -656(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -664(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -672(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$6, %edi
                                        # kill: RDI<def> EDI<kill>
	movq	-656(%rbp), %rsi        # 8-byte Reload
	movq	-664(%rbp), %rdx        # 8-byte Reload
	movq	-672(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	callq	Fput_text_property
	xorl	%edi, %edi
	movq	current_buffer, %rcx
	movq	736(%rcx), %rcx
	addq	$0, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	globals+1544, %rdx
	movq	%rax, -680(%rbp)        # 8-byte Spill
	movq	%rdx, -688(%rbp)        # 8-byte Spill
	movq	%rcx, -696(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$6, %edi
                                        # kill: RDI<def> EDI<kill>
	movq	-696(%rbp), %rsi        # 8-byte Reload
	movq	-688(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	Fadd_text_properties
	movq	%rax, -704(%rbp)        # 8-byte Spill
.LBB9_72:                               # %if.end.253
	xorl	%edi, %edi
	movq	-248(%rbp), %rax
	movq	%rax, -712(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-712(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -720(%rbp)        # 8-byte Spill
	callq	current_column
	xorl	%edi, %edi
	movq	%rax, minibuf_prompt_width
	movq	-48(%rbp), %rax
	movq	%rax, -728(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-728(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB9_74
# BB#73:                                # %if.then.260
	movl	$1, %eax
	movl	%eax, %edi
	leaq	-48(%rbp), %rsi
	callq	Finsert
	movq	-160(%rbp), %rsi
	shlq	$2, %rsi
	addq	$2, %rsi
	movq	%rsi, %rdi
	movq	%rax, -736(%rbp)        # 8-byte Spill
	callq	Fforward_char
	movq	%rax, -744(%rbp)        # 8-byte Spill
.LBB9_74:                               # %if.end.265
	movl	$1, %eax
	movl	%eax, %edi
	movl	%eax, %esi
	callq	clear_message
	movq	current_buffer, %rdi
	movq	-40(%rbp), %rsi
	callq	bset_keymap
	movq	-144(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB9_75
	jmp	.LBB9_77
.LBB9_75:                               # %land.lhs.true.268
	movl	$159, %edi
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	Ffboundp
	xorl	%edi, %edi
	movq	%rax, -752(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-752(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB9_77
# BB#76:                                # %if.then.274
	movl	$159, %edi
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rsi
	movq	%rax, %rdi
	callq	call1
	movq	%rax, -760(%rbp)        # 8-byte Spill
.LBB9_77:                               # %if.end.277
	movl	$667, %edi              # imm = 0x29B
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	run_hook
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	%rax, -768(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-768(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_undo_list
	callq	recursive_edit_1
	movq	minibuf_window, %rdi
	movq	%rax, -776(%rbp)        # 8-byte Spill
	callq	XWINDOW
	cmpl	$0, 364(%rax)
	jl	.LBB9_80
# BB#78:                                # %land.lhs.true.284
	testb	$1, noninteractive
	jne	.LBB9_80
# BB#79:                                # %if.then.286
	movq	minibuf_window, %rdi
	callq	XWINDOW
	movl	$0, 360(%rax)
	movq	minibuf_window, %rdi
	callq	XWINDOW
	movl	$0, 352(%rax)
	movq	minibuf_window, %rdi
	callq	XWINDOW
	movl	$1, %ecx
	movw	468(%rax), %dx
	andw	$-1025, %dx             # imm = 0xFFFFFFFFFFFFFBFF
	orw	$1024, %dx              # imm = 0x400
	movw	%dx, 468(%rax)
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	update_frame
	movq	minibuf_window, %rdi
	movb	%al, -777(%rbp)         # 1-byte Spill
	callq	XWINDOW
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	%rax, %rdi
	callq	flush_frame
.LBB9_80:                               # %if.end.299
	movq	-136(%rbp), %rdi
	callq	Fset_buffer
	testb	$1, -89(%rbp)
	movq	%rax, -792(%rbp)        # 8-byte Spill
	je	.LBB9_82
# BB#81:                                # %if.then.302
	callq	Fminibuffer_contents
	movq	%rax, -104(%rbp)
	jmp	.LBB9_83
.LBB9_82:                               # %if.else.304
	callq	Fminibuffer_contents_no_properties
	movq	%rax, -104(%rbp)
.LBB9_83:                               # %if.end.306
	movq	-104(%rbp), %rax
	movq	%rax, last_minibuf_string
	movq	-104(%rbp), %rdi
	callq	SCHARS
	cmpq	$0, %rax
	je	.LBB9_85
# BB#84:                                # %if.then.310
	movq	-104(%rbp), %rax
	movq	%rax, -168(%rbp)
	jmp	.LBB9_93
.LBB9_85:                               # %if.else.311
	movq	-88(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB9_86
	jmp	.LBB9_87
.LBB9_86:                               # %if.then.313
	movq	-88(%rbp), %rax
	movq	%rax, -168(%rbp)
	jmp	.LBB9_92
.LBB9_87:                               # %if.else.314
	movq	-88(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB9_90
# BB#88:                                # %land.lhs.true.319
	movq	-88(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB9_89
	jmp	.LBB9_90
.LBB9_89:                               # %if.then.324
	movq	-88(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)
	jmp	.LBB9_91
.LBB9_90:                               # %if.else.327
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -168(%rbp)
.LBB9_91:                               # %if.end.329
	jmp	.LBB9_92
.LBB9_92:                               # %if.end.330
	jmp	.LBB9_93
.LBB9_93:                               # %if.end.331
	xorl	%edi, %edi
	movq	globals+992, %rax
	movq	%rax, -800(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-800(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB9_112
# BB#94:                                # %land.lhs.true.335
	movq	globals+1512, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB9_112
# BB#95:                                # %land.lhs.true.340
	xorl	%edi, %edi
	movq	-168(%rbp), %rax
	movq	%rax, -808(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-808(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB9_112
# BB#96:                                # %if.then.344
	xorl	%edi, %edi
	movq	-176(%rbp), %rax
	movq	%rax, -816(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-816(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB9_99
# BB#97:                                # %lor.lhs.false.348
	movq	-176(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB9_111
# BB#98:                                # %land.lhs.true.353
	movq	-168(%rbp), %rdi
	movq	-176(%rbp), %rax
	movq	%rdi, -824(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	Fcar
	movq	-824(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fequal
	xorl	%edi, %edi
	movq	%rax, -832(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-832(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB9_111
.LBB9_99:                               # %if.then.359
	testb	$1, globals+3385
	je	.LBB9_101
# BB#100:                               # %if.then.361
	movq	-168(%rbp), %rdi
	movq	-176(%rbp), %rsi
	callq	Fdelete
	movq	%rax, -840(%rbp)        # 8-byte Spill
.LBB9_101:                              # %if.end.363
	movq	-168(%rbp), %rdi
	movq	-176(%rbp), %rsi
	callq	Fcons
	movq	%rax, -176(%rbp)
	movq	globals+1512, %rdi
	movq	-176(%rbp), %rsi
	callq	Fset
	movl	$520, %edi              # imm = 0x208
	movq	globals+1512, %rsi
	movq	%rax, -848(%rbp)        # 8-byte Spill
	movq	%rsi, -856(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-856(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget
	xorl	%edi, %edi
	movq	%rax, -256(%rbp)
	movq	-256(%rbp), %rax
	movq	%rax, -864(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-864(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB9_103
# BB#102:                               # %if.then.371
	movq	globals+1000, %rax
	movq	%rax, -256(%rbp)
.LBB9_103:                              # %if.end.372
	movq	-256(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB9_110
# BB#104:                               # %if.then.378
	movq	-256(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jg	.LBB9_106
# BB#105:                               # %if.then.382
	xorl	%edi, %edi
	movq	globals+1512, %rax
	movq	%rax, -872(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-872(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fset
	movq	%rax, -880(%rbp)        # 8-byte Spill
	jmp	.LBB9_109
.LBB9_106:                              # %if.else.385
	movq	-256(%rbp), %rdi
	callq	Fsub1
	movq	-176(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fnthcdr
	movq	%rax, -264(%rbp)
	movq	-264(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB9_108
# BB#107:                               # %if.then.392
	xorl	%edi, %edi
	movq	-264(%rbp), %rax
	movq	%rax, -888(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-888(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fsetcdr
	movq	%rax, -896(%rbp)        # 8-byte Spill
.LBB9_108:                              # %if.end.395
	jmp	.LBB9_109
.LBB9_109:                              # %if.end.396
	jmp	.LBB9_110
.LBB9_110:                              # %if.end.397
	jmp	.LBB9_111
.LBB9_111:                              # %if.end.398
	jmp	.LBB9_112
.LBB9_112:                              # %if.end.399
	testb	$1, -57(%rbp)
	je	.LBB9_114
# BB#113:                               # %if.then.401
	movq	-104(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	string_to_object
	movq	%rax, -104(%rbp)
.LBB9_114:                              # %if.end.403
	movq	-112(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	unbind_to
	movq	%rax, -32(%rbp)
.LBB9_115:                              # %return
	movq	-32(%rbp), %rax
	addq	$904, %rsp              # imm = 0x388
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	read_minibuf, .Lfunc_end9-read_minibuf
	.cfi_endproc

	.globl	Fread_string
	.align	16, 0x90
	.type	Fread_string,@function
Fread_string:                           # @Fread_string
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	callq	SPECPDL_INDEX
	movl	$662, %edi              # imm = 0x296
	movq	%rax, -56(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %r8
	movq	-32(%rbp), %r9
	movq	-40(%rbp), %rcx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	Fread_from_minibuffer
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB10_1
	jmp	.LBB10_7
.LBB10_1:                               # %land.lhs.true
	movq	-48(%rbp), %rdi
	callq	SCHARS
	cmpq	$0, %rax
	jne	.LBB10_7
# BB#2:                                 # %land.lhs.true.8
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB10_7
# BB#3:                                 # %if.then
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB10_5
# BB#4:                                 # %cond.true
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB10_6
.LBB10_5:                               # %cond.false
	movq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB10_6:                               # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, -48(%rbp)
.LBB10_7:                               # %if.end
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	unbind_to
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	Fread_string, .Lfunc_end10-Fread_string
	.cfi_endproc

	.globl	Fread_no_blanks_input
	.align	16, 0x90
	.type	Fread_no_blanks_input,@function
Fread_no_blanks_input:                  # @Fread_no_blanks_input
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_STRING
	movl	$665, %edi              # imm = 0x299
	movq	globals+1528, %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-24(%rbp), %rdx
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	$2, %ecx
	movl	%ecx, %edx
	movq	-72(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%r8b
	xorb	$-1, %r8b
	movq	%rsp, %rax
	movq	-64(%rbp), %r9          # 8-byte Reload
	movq	%r9, (%rax)
	movzbl	%r8b, %ecx
	andl	$1, %ecx
	movl	%ecx, 16(%rax)
	movl	$0, 8(%rax)
	movl	$2, %ecx
	movl	%ecx, %r9d
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rax         # 8-byte Reload
	movl	%edi, -76(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	-32(%rbp), %r10         # 8-byte Reload
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	movq	%r10, %rdx
	movq	-56(%rbp), %r8          # 8-byte Reload
	callq	read_minibuf
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	Fread_no_blanks_input, .Lfunc_end11-Fread_no_blanks_input
	.cfi_endproc

	.globl	Fread_command
	.align	16, 0x90
	.type	Fread_command,@function
Fread_command:                          # @Fread_command
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
	subq	$144, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movl	%eax, %edi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB12_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -40(%rbp)
	jmp	.LBB12_6
.LBB12_2:                               # %if.else
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_4
# BB#3:                                 # %if.then.4
	movq	-24(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, -40(%rbp)
	jmp	.LBB12_5
.LBB12_4:                               # %if.else.6
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB12_5:                               # %if.end
	jmp	.LBB12_6
.LBB12_6:                               # %if.end.7
	movl	$286, %edi              # imm = 0x11E
	movq	-16(%rbp), %rax
	movq	globals+1656, %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-40(%rbp), %rsi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movq	-88(%rbp), %r8          # 8-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	callq	Fcompleting_read
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB12_8
# BB#7:                                 # %if.then.17
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB12_9
.LBB12_8:                               # %if.end.18
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fintern
	movq	%rax, -8(%rbp)
.LBB12_9:                               # %return
	movq	-8(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	Fread_command, .Lfunc_end12-Fread_command
	.cfi_endproc

	.globl	Fcompleting_read
	.align	16, 0x90
	.type	Fcompleting_read,@function
Fcompleting_read:                       # @Fcompleting_read
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
	pushq	%rbx
	subq	$136, %rsp
.Ltmp45:
	.cfi_offset %rbx, -24
	movq	24(%rbp), %rax
	movq	16(%rbp), %r10
	movabsq	$.L.str.7, %r11
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	%r10, -64(%rbp)
	movq	%rax, -72(%rbp)
	movq	%r11, %rdi
	callq	intern
	movq	%rax, %rdi
	callq	Fsymbol_value
	movl	$9, %ebx
	movl	%ebx, %edi
	leaq	-144(%rbp), %rsi
	movq	%rax, -144(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	Ffuncall
	addq	$136, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end13:
	.size	Fcompleting_read, .Lfunc_end13-Fcompleting_read
	.cfi_endproc

	.globl	Fread_variable
	.align	16, 0x90
	.type	Fread_variable,@function
Fread_variable:                         # @Fread_variable
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp46:
	.cfi_def_cfa_offset 16
.Ltmp47:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp48:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movl	%eax, %edi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB14_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -40(%rbp)
	jmp	.LBB14_6
.LBB14_2:                               # %if.else
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB14_4
# BB#3:                                 # %if.then.4
	movq	-24(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, -40(%rbp)
	jmp	.LBB14_5
.LBB14_4:                               # %if.else.6
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB14_5:                               # %if.end
	jmp	.LBB14_6
.LBB14_6:                               # %if.end.7
	movl	$310, %edi              # imm = 0x136
	movq	-16(%rbp), %rax
	movq	globals+1656, %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-40(%rbp), %rsi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movq	-88(%rbp), %r8          # 8-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	callq	Fcompleting_read
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB14_8
# BB#7:                                 # %if.then.17
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB14_9
.LBB14_8:                               # %if.end.18
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fintern
	movq	%rax, -8(%rbp)
.LBB14_9:                               # %return
	movq	-8(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	Fread_variable, .Lfunc_end14-Fread_variable
	.cfi_endproc

	.globl	Fread_buffer
	.align	16, 0x90
	.type	Fread_buffer,@function
Fread_buffer:                           # @Fread_buffer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp49:
	.cfi_def_cfa_offset 16
.Ltmp50:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp51:
	.cfi_def_cfa_register %rbp
	subq	$288, %rsp              # imm = 0x120
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	callq	SPECPDL_INDEX
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB15_1
	jmp	.LBB15_2
.LBB15_1:                               # %if.then
	movq	-16(%rbp), %rdi
	callq	XBUFFER
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
.LBB15_2:                               # %if.end
	movl	$289, %edi              # imm = 0x121
	callq	builtin_lisp_symbol
	testb	$1, globals+3425
	movq	%rax, -136(%rbp)        # 8-byte Spill
	je	.LBB15_4
# BB#3:                                 # %cond.true
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB15_5
.LBB15_4:                               # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB15_5:                               # %cond.end
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
	xorl	%edi, %edi
	movq	globals+1936, %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB15_23
# BB#6:                                 # %if.then.7
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB15_22
# BB#7:                                 # %if.then.10
	movq	-8(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB15_8
	jmp	.LBB15_18
.LBB15_8:                               # %if.then.12
	movq	-8(%rbp), %rdi
	callq	SSDATA
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rdi
	callq	SBYTES
	movq	%rax, -56(%rbp)
	cmpq	$2, -56(%rbp)
	jl	.LBB15_12
# BB#9:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	subq	$2, %rax
	movq	-48(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$58, %edx
	jne	.LBB15_12
# BB#10:                                # %land.lhs.true.18
	movq	-56(%rbp), %rax
	subq	$1, %rax
	movq	-48(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$32, %edx
	jne	.LBB15_12
# BB#11:                                # %if.then.24
	movq	-56(%rbp), %rax
	subq	$2, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB15_17
.LBB15_12:                              # %if.else
	cmpq	$1, -56(%rbp)
	jl	.LBB15_16
# BB#13:                                # %land.lhs.true.28
	movq	-56(%rbp), %rax
	subq	$1, %rax
	movq	-48(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$58, %edx
	je	.LBB15_15
# BB#14:                                # %lor.lhs.false
	movq	-56(%rbp), %rax
	subq	$1, %rax
	movq	-48(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$32, %edx
	jne	.LBB15_16
.LBB15_15:                              # %if.then.39
	movq	-56(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -56(%rbp)
.LBB15_16:                              # %if.end.40
	jmp	.LBB15_17
.LBB15_17:                              # %if.end.41
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -176(%rbp)        # 8-byte Spill
	callq	STRING_MULTIBYTE
	movq	$-1, %rdx
	movzbl	%al, %ecx
	andl	$1, %ecx
	movq	$-1, %rsi
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	-176(%rbp), %r8         # 8-byte Reload
	movq	%rdx, -184(%rbp)        # 8-byte Spill
	movq	%r8, %rdx
	callq	make_specified_string
	movq	%rax, -8(%rbp)
.LBB15_18:                              # %if.end.44
	movl	$4, %esi
	leaq	-104(%rbp), %rax
	movabsq	$.L.str.4, %rcx
	movq	$17, -104(%rbp)
	movq	$-1, -96(%rbp)
	movq	$0, -88(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%rax, %rdi
	callq	make_lisp_ptr
	leaq	-128(%rbp), %rcx
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -128(%rbp)
	addq	$8, %rcx
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)
	addq	$8, %rcx
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %esi
	cmpl	$3, %esi
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	jne	.LBB15_20
# BB#19:                                # %cond.true.53
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	jmp	.LBB15_21
.LBB15_20:                              # %cond.false.55
	movq	-16(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
.LBB15_21:                              # %cond.end.56
	movq	-200(%rbp), %rax        # 8-byte Reload
	movl	$3, %ecx
	movl	%ecx, %edi
	leaq	-128(%rbp), %rsi
	movq	-192(%rbp), %rdx        # 8-byte Reload
	movq	%rax, (%rdx)
	callq	Fformat
	movq	%rax, -8(%rbp)
.LBB15_22:                              # %if.end.59
	movabsq	$.L.str.5, %rdi
	movq	-8(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	intern
	xorl	%edi, %edi
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rax, -216(%rbp)        # 8-byte Spill
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	movq	%rdx, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$224, %edi
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-16(%rbp), %rcx
	movq	%rax, -248(%rbp)        # 8-byte Spill
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	-216(%rbp), %rsi        # 8-byte Reload
	movq	-232(%rbp), %rdx        # 8-byte Reload
	movq	-224(%rbp), %rcx        # 8-byte Reload
	movq	-240(%rbp), %r8         # 8-byte Reload
	movq	-248(%rbp), %r9         # 8-byte Reload
	movq	-256(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	callq	Fcompleting_read
	movq	%rax, -40(%rbp)
	jmp	.LBB15_27
.LBB15_23:                              # %if.else.65
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-264(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB15_25
# BB#24:                                # %cond.true.69
	movq	globals+1936, %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	callq	call3
	movq	%rax, -272(%rbp)        # 8-byte Spill
	jmp	.LBB15_26
.LBB15_25:                              # %cond.false.71
	movq	globals+1936, %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %r8
	callq	call4
	movq	%rax, -272(%rbp)        # 8-byte Spill
.LBB15_26:                              # %cond.end.73
	movq	-272(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
.LBB15_27:                              # %if.end.75
	movq	-64(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	unbind_to
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end15:
	.size	Fread_buffer, .Lfunc_end15-Fread_buffer
	.cfi_endproc

	.globl	Ftry_completion
	.align	16, 0x90
	.type	Ftry_completion,@function
Ftry_completion:                        # @Ftry_completion
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp52:
	.cfi_def_cfa_offset 16
.Ltmp53:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp54:
	.cfi_def_cfa_register %rbp
	subq	$736, %rsp              # imm = 0x2E0
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	$0, -72(%rbp)
	movq	-24(%rbp), %rdi
	callq	HASH_TABLE_P
	testb	$1, %al
	jne	.LBB16_1
	jmp	.LBB16_2
.LBB16_1:                               # %cond.true
	movl	$3, %eax
	movl	%eax, -172(%rbp)        # 4-byte Spill
	jmp	.LBB16_10
.LBB16_2:                               # %cond.false
	movq	-24(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB16_3
	jmp	.LBB16_4
.LBB16_3:                               # %cond.true.2
	movl	$2, %eax
	movl	%eax, -176(%rbp)        # 4-byte Spill
	jmp	.LBB16_9
.LBB16_4:                               # %cond.false.3
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movb	$1, %cl
	movq	-184(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	movb	%cl, -185(%rbp)         # 1-byte Spill
	je	.LBB16_8
# BB#5:                                 # %lor.rhs
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -186(%rbp)         # 1-byte Spill
	jne	.LBB16_7
# BB#6:                                 # %land.rhs
	movq	-24(%rbp), %rdi
	callq	FUNCTIONP
	xorb	$-1, %al
	movb	%al, -186(%rbp)         # 1-byte Spill
.LBB16_7:                               # %land.end
	movb	-186(%rbp), %al         # 1-byte Reload
	movb	%al, -185(%rbp)         # 1-byte Spill
.LBB16_8:                               # %lor.end
	movb	-185(%rbp), %al         # 1-byte Reload
	xorl	%ecx, %ecx
	movl	$1, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -176(%rbp)        # 4-byte Spill
.LBB16_9:                               # %cond.end
	movl	-176(%rbp), %eax        # 4-byte Reload
	movl	%eax, -172(%rbp)        # 4-byte Spill
.LBB16_10:                              # %cond.end.9
	movl	-172(%rbp), %eax        # 4-byte Reload
	movl	%eax, -92(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -112(%rbp)
	movl	$0, -116(%rbp)
	movq	$-1, -128(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHECK_STRING
	cmpl	$0, -92(%rbp)
	jne	.LBB16_12
# BB#11:                                # %if.then
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	%rdx, -200(%rbp)        # 8-byte Spill
	movq	%rax, -208(%rbp)        # 8-byte Spill
	movq	%rsi, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	-216(%rbp), %rsi        # 8-byte Reload
	movq	-200(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	call3
	movq	%rax, -8(%rbp)
	jmp	.LBB16_121
.LBB16_12:                              # %if.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -136(%rbp)
	movq	%rax, -40(%rbp)
	movq	$2, -144(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
	cmpl	$2, -92(%rbp)
	jne	.LBB16_14
# BB#13:                                # %if.then.18
	movq	-24(%rbp), %rdi
	callq	check_obarray
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	ASIZE
	movq	%rax, -112(%rbp)
	movq	-24(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	AREF
	movq	%rax, -136(%rbp)
.LBB16_14:                              # %if.end.22
	jmp	.LBB16_15
.LBB16_15:                              # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_35 Depth 2
                                        #     Child Loop BB16_53 Depth 2
	cmpl	$1, -92(%rbp)
	jne	.LBB16_22
# BB#16:                                # %if.then.25
                                        #   in Loop: Header=BB16_15 Depth=1
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB16_18
# BB#17:                                # %if.then.30
	jmp	.LBB16_109
.LBB16_18:                              # %if.end.31
                                        #   in Loop: Header=BB16_15 Depth=1
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB16_20
# BB#19:                                # %cond.true.36
                                        #   in Loop: Header=BB16_15 Depth=1
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	jmp	.LBB16_21
.LBB16_20:                              # %cond.false.39
                                        #   in Loop: Header=BB16_15 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
.LBB16_21:                              # %cond.end.40
                                        #   in Loop: Header=BB16_15 Depth=1
	movq	-224(%rbp), %rax        # 8-byte Reload
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB16_44
.LBB16_22:                              # %if.else
                                        #   in Loop: Header=BB16_15 Depth=1
	cmpl	$2, -92(%rbp)
	jne	.LBB16_34
# BB#23:                                # %if.then.45
                                        #   in Loop: Header=BB16_15 Depth=1
	movq	-136(%rbp), %rax
	cmpq	-144(%rbp), %rax
	je	.LBB16_30
# BB#24:                                # %if.then.48
                                        #   in Loop: Header=BB16_15 Depth=1
	movq	-136(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB16_26
# BB#25:                                # %if.then.53
	movabsq	$.L.str.6, %rdi
	movb	$0, %al
	callq	error
.LBB16_26:                              # %if.end.54
                                        #   in Loop: Header=BB16_15 Depth=1
	movq	-136(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-136(%rbp), %rax
	subq	$0, %rax
	cmpq	$0, lispsym+40(,%rax)
	je	.LBB16_28
# BB#27:                                # %if.then.56
                                        #   in Loop: Header=BB16_15 Depth=1
	movq	-136(%rbp), %rax
	subq	$0, %rax
	movq	lispsym+40(,%rax), %rdi
	callq	make_lisp_symbol
	movq	%rax, -136(%rbp)
	jmp	.LBB16_29
.LBB16_28:                              # %if.else.61
                                        #   in Loop: Header=BB16_15 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	make_natnum
	movq	%rax, -136(%rbp)
.LBB16_29:                              # %if.end.63
                                        #   in Loop: Header=BB16_15 Depth=1
	jmp	.LBB16_33
.LBB16_30:                              # %if.else.64
                                        #   in Loop: Header=BB16_15 Depth=1
	movq	-104(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -104(%rbp)
	cmpq	-112(%rbp), %rax
	jl	.LBB16_32
# BB#31:                                # %if.then.67
	jmp	.LBB16_109
.LBB16_32:                              # %if.else.68
                                        #   in Loop: Header=BB16_15 Depth=1
	movq	-24(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	AREF
	movq	%rax, -136(%rbp)
	jmp	.LBB16_15
.LBB16_33:                              # %if.end.70
                                        #   in Loop: Header=BB16_15 Depth=1
	jmp	.LBB16_43
.LBB16_34:                              # %if.else.71
                                        #   in Loop: Header=BB16_15 Depth=1
	jmp	.LBB16_35
.LBB16_35:                              # %while.cond.72
                                        #   Parent Loop BB16_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-104(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	XHASH_TABLE
	movq	%rax, %rdi
	callq	HASH_TABLE_SIZE
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	-232(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	movb	%dl, -233(%rbp)         # 1-byte Spill
	jge	.LBB16_37
# BB#36:                                # %land.rhs.77
                                        #   in Loop: Header=BB16_35 Depth=2
	movq	-24(%rbp), %rdi
	callq	XHASH_TABLE
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	callq	HASH_HASH
	xorl	%edi, %edi
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-248(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%cl
	movb	%cl, -233(%rbp)         # 1-byte Spill
.LBB16_37:                              # %land.end.83
                                        #   in Loop: Header=BB16_35 Depth=2
	movb	-233(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB16_38
	jmp	.LBB16_39
.LBB16_38:                              # %while.body.84
                                        #   in Loop: Header=BB16_35 Depth=2
	movq	-104(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB16_35
.LBB16_39:                              # %while.end
                                        #   in Loop: Header=BB16_15 Depth=1
	movq	-104(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	XHASH_TABLE
	movq	%rax, %rdi
	callq	HASH_TABLE_SIZE
	movq	-256(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB16_41
# BB#40:                                # %if.then.90
	jmp	.LBB16_109
.LBB16_41:                              # %if.else.91
                                        #   in Loop: Header=BB16_15 Depth=1
	movq	-24(%rbp), %rdi
	callq	XHASH_TABLE
	movq	-104(%rbp), %rdi
	movq	%rdi, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-264(%rbp), %rsi        # 8-byte Reload
	callq	HASH_KEY
	movq	%rax, -64(%rbp)
	movq	%rax, -56(%rbp)
# BB#42:                                # %if.end.95
                                        #   in Loop: Header=BB16_15 Depth=1
	jmp	.LBB16_43
.LBB16_43:                              # %if.end.96
                                        #   in Loop: Header=BB16_15 Depth=1
	jmp	.LBB16_44
.LBB16_44:                              # %if.end.97
                                        #   in Loop: Header=BB16_15 Depth=1
	movq	-64(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB16_46
# BB#45:                                # %if.then.102
                                        #   in Loop: Header=BB16_15 Depth=1
	movq	-64(%rbp), %rdi
	callq	Fsymbol_name
	movq	%rax, -64(%rbp)
.LBB16_46:                              # %if.end.104
                                        #   in Loop: Header=BB16_15 Depth=1
	movq	-64(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB16_47
	jmp	.LBB16_108
.LBB16_47:                              # %land.lhs.true
                                        #   in Loop: Header=BB16_15 Depth=1
	movq	-16(%rbp), %rdi
	callq	SCHARS
	movq	-64(%rbp), %rdi
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	SCHARS
	movq	-272(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jg	.LBB16_108
# BB#48:                                # %land.lhs.true.111
                                        #   in Loop: Header=BB16_15 Depth=1
	movq	-64(%rbp), %rdi
	movq	-144(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -288(%rbp)        # 8-byte Spill
	callq	SCHARS
	xorl	%edi, %edi
	shlq	$2, %rax
	addq	$2, %rax
	movq	-16(%rbp), %rcx
	movq	-144(%rbp), %r8
	movq	%r8, -296(%rbp)         # 8-byte Spill
	movq	%rax, -304(%rbp)        # 8-byte Spill
	movq	%rcx, -312(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	testb	$1, globals+3368
	movq	%rax, -320(%rbp)        # 8-byte Spill
	je	.LBB16_50
# BB#49:                                # %cond.true.116
                                        #   in Loop: Header=BB16_15 Depth=1
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -328(%rbp)        # 8-byte Spill
	jmp	.LBB16_51
.LBB16_50:                              # %cond.false.118
                                        #   in Loop: Header=BB16_15 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -328(%rbp)        # 8-byte Spill
.LBB16_51:                              # %cond.end.120
                                        #   in Loop: Header=BB16_15 Depth=1
	movq	-328(%rbp), %rax        # 8-byte Reload
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	-288(%rbp), %rsi        # 8-byte Reload
	movq	-304(%rbp), %rdx        # 8-byte Reload
	movq	-312(%rbp), %rcx        # 8-byte Reload
	movq	-296(%rbp), %r8         # 8-byte Reload
	movq	-320(%rbp), %r9         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	Fcompare_strings
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -160(%rbp)
	callq	builtin_lisp_symbol
	cmpq	-160(%rbp), %rax
	jne	.LBB16_108
# BB#52:                                # %if.then.126
                                        #   in Loop: Header=BB16_15 Depth=1
	movq	globals+352, %rax
	movq	%rax, -168(%rbp)
.LBB16_53:                              # %for.cond
                                        #   Parent Loop BB16_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-168(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB16_63
# BB#54:                                # %for.body
                                        #   in Loop: Header=BB16_53 Depth=2
	cmpq	$0, -128(%rbp)
	jge	.LBB16_59
# BB#55:                                # %if.then.133
                                        #   in Loop: Header=BB16_53 Depth=2
	callq	SPECPDL_INDEX
	movl	$238, %edi
	movq	%rax, -128(%rbp)
	callq	builtin_lisp_symbol
	testb	$1, globals+3368
	movq	%rax, -336(%rbp)        # 8-byte Spill
	je	.LBB16_57
# BB#56:                                # %cond.true.138
                                        #   in Loop: Header=BB16_53 Depth=2
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -344(%rbp)        # 8-byte Spill
	jmp	.LBB16_58
.LBB16_57:                              # %cond.false.140
                                        #   in Loop: Header=BB16_53 Depth=2
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -344(%rbp)        # 8-byte Spill
.LBB16_58:                              # %cond.end.142
                                        #   in Loop: Header=BB16_53 Depth=2
	movq	-344(%rbp), %rax        # 8-byte Reload
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
.LBB16_59:                              # %if.end.144
                                        #   in Loop: Header=BB16_53 Depth=2
	movq	-168(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	movq	-64(%rbp), %rsi
	movq	-144(%rbp), %rdx
	callq	Fstring_match
	xorl	%edi, %edi
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-352(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB16_61
# BB#60:                                # %if.then.151
                                        #   in Loop: Header=BB16_15 Depth=1
	jmp	.LBB16_63
.LBB16_61:                              # %if.end.152
                                        #   in Loop: Header=BB16_53 Depth=2
	jmp	.LBB16_62
.LBB16_62:                              # %for.inc
                                        #   in Loop: Header=BB16_53 Depth=2
	movq	-168(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -168(%rbp)
	jmp	.LBB16_53
.LBB16_63:                              # %for.end
                                        #   in Loop: Header=BB16_15 Depth=1
	movq	-168(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB16_65
# BB#64:                                # %if.then.160
                                        #   in Loop: Header=BB16_15 Depth=1
	jmp	.LBB16_15
.LBB16_65:                              # %if.end.161
                                        #   in Loop: Header=BB16_15 Depth=1
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-360(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB16_77
# BB#66:                                # %if.then.165
                                        #   in Loop: Header=BB16_15 Depth=1
	movl	$286, %edi              # imm = 0x11E
	movq	-32(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-368(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB16_68
# BB#67:                                # %if.then.169
                                        #   in Loop: Header=BB16_15 Depth=1
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcommandp
	movq	%rax, -160(%rbp)
	jmp	.LBB16_74
.LBB16_68:                              # %if.else.172
                                        #   in Loop: Header=BB16_15 Depth=1
	cmpq	$0, -128(%rbp)
	jl	.LBB16_70
# BB#69:                                # %if.then.175
                                        #   in Loop: Header=BB16_15 Depth=1
	xorl	%edi, %edi
	movq	-128(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	$-1, -128(%rbp)
	movq	%rax, -392(%rbp)        # 8-byte Spill
.LBB16_70:                              # %if.end.178
                                        #   in Loop: Header=BB16_15 Depth=1
	cmpl	$3, -92(%rbp)
	jne	.LBB16_72
# BB#71:                                # %cond.true.181
                                        #   in Loop: Header=BB16_15 Depth=1
	movq	-32(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, -400(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -408(%rbp)        # 8-byte Spill
	callq	XHASH_TABLE
	movq	-104(%rbp), %rsi
	subq	$1, %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	-408(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	call2
	movq	%rax, -416(%rbp)        # 8-byte Spill
	jmp	.LBB16_73
.LBB16_72:                              # %cond.false.186
                                        #   in Loop: Header=BB16_15 Depth=1
	movq	-32(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	call1
	movq	%rax, -416(%rbp)        # 8-byte Spill
.LBB16_73:                              # %cond.end.188
                                        #   in Loop: Header=BB16_15 Depth=1
	movq	-416(%rbp), %rax        # 8-byte Reload
	movq	%rax, -160(%rbp)
.LBB16_74:                              # %if.end.190
                                        #   in Loop: Header=BB16_15 Depth=1
	xorl	%edi, %edi
	movq	-160(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-424(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB16_76
# BB#75:                                # %if.then.194
                                        #   in Loop: Header=BB16_15 Depth=1
	jmp	.LBB16_15
.LBB16_76:                              # %if.end.195
                                        #   in Loop: Header=BB16_15 Depth=1
	jmp	.LBB16_77
.LBB16_77:                              # %if.end.196
                                        #   in Loop: Header=BB16_15 Depth=1
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-432(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB16_79
# BB#78:                                # %if.then.200
                                        #   in Loop: Header=BB16_15 Depth=1
	movl	$1, -116(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-64(%rbp), %rdi
	callq	SCHARS
	movq	%rax, -72(%rbp)
	jmp	.LBB16_107
.LBB16_79:                              # %if.else.202
                                        #   in Loop: Header=BB16_15 Depth=1
	movq	-72(%rbp), %rax
	movq	-64(%rbp), %rdi
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	SCHARS
	movq	-440(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jge	.LBB16_81
# BB#80:                                # %cond.true.206
                                        #   in Loop: Header=BB16_15 Depth=1
	movq	-72(%rbp), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	jmp	.LBB16_82
.LBB16_81:                              # %cond.false.207
                                        #   in Loop: Header=BB16_15 Depth=1
	movq	-64(%rbp), %rdi
	callq	SCHARS
	movq	%rax, -448(%rbp)        # 8-byte Spill
.LBB16_82:                              # %cond.end.209
                                        #   in Loop: Header=BB16_15 Depth=1
	movq	-448(%rbp), %rax        # 8-byte Reload
	movq	%rax, -80(%rbp)
	movq	-40(%rbp), %rdi
	movq	-144(%rbp), %rsi
	movq	-80(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-64(%rbp), %rcx
	movq	-144(%rbp), %r8
	movq	-80(%rbp), %rdx
	shlq	$2, %rdx
	addq	$2, %rdx
	testb	$1, globals+3368
	movq	%rdi, -456(%rbp)        # 8-byte Spill
	movq	%rsi, -464(%rbp)        # 8-byte Spill
	movq	%rax, -472(%rbp)        # 8-byte Spill
	movq	%rcx, -480(%rbp)        # 8-byte Spill
	movq	%r8, -488(%rbp)         # 8-byte Spill
	movq	%rdx, -496(%rbp)        # 8-byte Spill
	je	.LBB16_84
# BB#83:                                # %cond.true.217
                                        #   in Loop: Header=BB16_15 Depth=1
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -504(%rbp)        # 8-byte Spill
	jmp	.LBB16_85
.LBB16_84:                              # %cond.false.219
                                        #   in Loop: Header=BB16_15 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -504(%rbp)        # 8-byte Spill
.LBB16_85:                              # %cond.end.221
                                        #   in Loop: Header=BB16_15 Depth=1
	movq	-504(%rbp), %rax        # 8-byte Reload
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	-464(%rbp), %rsi        # 8-byte Reload
	movq	-472(%rbp), %rdx        # 8-byte Reload
	movq	-480(%rbp), %rcx        # 8-byte Reload
	movq	-488(%rbp), %r8         # 8-byte Reload
	movq	-496(%rbp), %r9         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	Fcompare_strings
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-512(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB16_87
# BB#86:                                # %cond.true.227
                                        #   in Loop: Header=BB16_15 Depth=1
	movq	-80(%rbp), %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	jmp	.LBB16_91
.LBB16_87:                              # %cond.false.228
                                        #   in Loop: Header=BB16_15 Depth=1
	movq	-160(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jge	.LBB16_89
# BB#88:                                # %cond.true.231
                                        #   in Loop: Header=BB16_15 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-160(%rbp), %rdx
	sarq	$2, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -528(%rbp)        # 8-byte Spill
	jmp	.LBB16_90
.LBB16_89:                              # %cond.false.234
                                        #   in Loop: Header=BB16_15 Depth=1
	movq	-160(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
.LBB16_90:                              # %cond.end.236
                                        #   in Loop: Header=BB16_15 Depth=1
	movq	-528(%rbp), %rax        # 8-byte Reload
	subq	$1, %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
.LBB16_91:                              # %cond.end.239
                                        #   in Loop: Header=BB16_15 Depth=1
	movq	-520(%rbp), %rax        # 8-byte Reload
	movq	%rax, -88(%rbp)
	testb	$1, globals+3368
	je	.LBB16_99
# BB#92:                                # %if.then.242
                                        #   in Loop: Header=BB16_15 Depth=1
	movq	-88(%rbp), %rax
	movq	-64(%rbp), %rdi
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	SCHARS
	movq	-536(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jne	.LBB16_94
# BB#93:                                # %land.lhs.true.246
                                        #   in Loop: Header=BB16_15 Depth=1
	movq	-88(%rbp), %rax
	movq	-40(%rbp), %rdi
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	SCHARS
	movq	-544(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB16_97
.LBB16_94:                              # %lor.lhs.false
                                        #   in Loop: Header=BB16_15 Depth=1
	movq	-88(%rbp), %rax
	movq	-64(%rbp), %rdi
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	SCHARS
	movq	-552(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movq	-88(%rbp), %rax
	movq	-40(%rbp), %rdi
	movq	%rax, -560(%rbp)        # 8-byte Spill
	movl	%edx, -564(%rbp)        # 4-byte Spill
	callq	SCHARS
	movq	-560(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	-564(%rbp), %esi        # 4-byte Reload
	cmpl	%edx, %esi
	jne	.LBB16_98
# BB#95:                                # %land.lhs.true.258
                                        #   in Loop: Header=BB16_15 Depth=1
	movq	-64(%rbp), %rdi
	movq	-144(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, -576(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -584(%rbp)        # 8-byte Spill
	callq	SCHARS
	xorl	%edi, %edi
	shlq	$2, %rax
	addq	$2, %rax
	movq	-16(%rbp), %rcx
	movq	-144(%rbp), %r8
	movq	%r8, -592(%rbp)         # 8-byte Spill
	movq	%rax, -600(%rbp)        # 8-byte Spill
	movq	%rcx, -608(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-576(%rbp), %rdi        # 8-byte Reload
	movq	-584(%rbp), %rsi        # 8-byte Reload
	movq	-600(%rbp), %rdx        # 8-byte Reload
	movq	-608(%rbp), %rcx        # 8-byte Reload
	movq	-592(%rbp), %r8         # 8-byte Reload
	movq	-616(%rbp), %r9         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	Fcompare_strings
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -160(%rbp)
	callq	builtin_lisp_symbol
	cmpq	-160(%rbp), %rax
	jne	.LBB16_98
# BB#96:                                # %land.lhs.true.268
                                        #   in Loop: Header=BB16_15 Depth=1
	movq	-40(%rbp), %rdi
	movq	-144(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, -624(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -632(%rbp)        # 8-byte Spill
	callq	SCHARS
	xorl	%edi, %edi
	shlq	$2, %rax
	addq	$2, %rax
	movq	-16(%rbp), %rcx
	movq	-144(%rbp), %r8
	movq	%r8, -640(%rbp)         # 8-byte Spill
	movq	%rax, -648(%rbp)        # 8-byte Spill
	movq	%rcx, -656(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -664(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-624(%rbp), %rdi        # 8-byte Reload
	movq	-632(%rbp), %rsi        # 8-byte Reload
	movq	-648(%rbp), %rdx        # 8-byte Reload
	movq	-656(%rbp), %rcx        # 8-byte Reload
	movq	-640(%rbp), %r8         # 8-byte Reload
	movq	-664(%rbp), %r9         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	Fcompare_strings
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -160(%rbp)
	callq	builtin_lisp_symbol
	cmpq	-160(%rbp), %rax
	sete	%r10b
	xorb	$-1, %r10b
	testb	$1, %r10b
	jne	.LBB16_97
	jmp	.LBB16_98
.LBB16_97:                              # %if.then.279
                                        #   in Loop: Header=BB16_15 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB16_98:                              # %if.end.280
                                        #   in Loop: Header=BB16_15 Depth=1
	jmp	.LBB16_99
.LBB16_99:                              # %if.end.281
                                        #   in Loop: Header=BB16_15 Depth=1
	movq	-72(%rbp), %rax
	movq	-64(%rbp), %rdi
	movq	%rax, -672(%rbp)        # 8-byte Spill
	callq	SCHARS
	movq	-672(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jne	.LBB16_101
# BB#100:                               # %lor.lhs.false.285
                                        #   in Loop: Header=BB16_15 Depth=1
	movq	-72(%rbp), %rax
	cmpq	-88(%rbp), %rax
	je	.LBB16_102
.LBB16_101:                             # %if.then.288
                                        #   in Loop: Header=BB16_15 Depth=1
	cmpl	$1, -116(%rbp)
	setle	%al
	andb	$1, %al
	movzbl	%al, %ecx
	addl	-116(%rbp), %ecx
	movl	%ecx, -116(%rbp)
.LBB16_102:                             # %if.end.292
                                        #   in Loop: Header=BB16_15 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-88(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -680(%rbp)        # 8-byte Spill
	callq	SCHARS
	movq	-680(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jg	.LBB16_106
# BB#103:                               # %land.lhs.true.296
                                        #   in Loop: Header=BB16_15 Depth=1
	testb	$1, globals+3368
	jne	.LBB16_106
# BB#104:                               # %land.lhs.true.298
                                        #   in Loop: Header=BB16_15 Depth=1
	cmpl	$1, -116(%rbp)
	jle	.LBB16_106
# BB#105:                               # %if.then.301
	jmp	.LBB16_109
.LBB16_106:                             # %if.end.302
                                        #   in Loop: Header=BB16_15 Depth=1
	jmp	.LBB16_107
.LBB16_107:                             # %if.end.303
                                        #   in Loop: Header=BB16_15 Depth=1
	jmp	.LBB16_108
.LBB16_108:                             # %if.end.304
                                        #   in Loop: Header=BB16_15 Depth=1
	jmp	.LBB16_15
.LBB16_109:                             # %while.end.305
	cmpq	$0, -128(%rbp)
	jl	.LBB16_111
# BB#110:                               # %if.then.308
	xorl	%edi, %edi
	movq	-128(%rbp), %rax
	movq	%rax, -688(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-688(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	$-1, -128(%rbp)
	movq	%rax, -696(%rbp)        # 8-byte Spill
.LBB16_111:                             # %if.end.311
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -704(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-704(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB16_113
# BB#112:                               # %if.then.315
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB16_121
.LBB16_113:                             # %if.end.317
	testb	$1, globals+3368
	je	.LBB16_117
# BB#114:                               # %land.lhs.true.320
	movq	-72(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -712(%rbp)        # 8-byte Spill
	callq	SCHARS
	movq	-712(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jne	.LBB16_117
# BB#115:                               # %land.lhs.true.324
	movq	-40(%rbp), %rdi
	callq	SCHARS
	cmpq	-72(%rbp), %rax
	jle	.LBB16_117
# BB#116:                               # %if.then.328
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	minibuf_conform_representation
	movq	%rax, -8(%rbp)
	jmp	.LBB16_121
.LBB16_117:                             # %if.end.330
	cmpl	$1, -116(%rbp)
	jne	.LBB16_120
# BB#118:                               # %land.lhs.true.333
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	Fequal
	xorl	%edi, %edi
	movq	%rax, -720(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-720(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB16_120
# BB#119:                               # %if.then.338
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB16_121
.LBB16_120:                             # %if.end.340
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	make_natnum
	movq	%rax, -144(%rbp)
	movq	-72(%rbp), %rdi
	callq	make_natnum
	movq	%rax, -152(%rbp)
	movq	-40(%rbp), %rdi
	movq	-144(%rbp), %rsi
	movq	-152(%rbp), %rdx
	callq	Fsubstring
	movq	%rax, -8(%rbp)
.LBB16_121:                             # %return
	movq	-8(%rbp), %rax
	addq	$736, %rsp              # imm = 0x2E0
	popq	%rbp
	retq
.Lfunc_end16:
	.size	Ftry_completion, .Lfunc_end16-Ftry_completion
	.cfi_endproc

	.align	16, 0x90
	.type	minibuf_conform_representation,@function
minibuf_conform_representation:         # @minibuf_conform_representation
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp55:
	.cfi_def_cfa_offset 16
.Ltmp56:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp57:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	STRING_MULTIBYTE
	andb	$1, %al
	movzbl	%al, %ecx
	movq	-24(%rbp), %rdi
	movl	%ecx, -28(%rbp)         # 4-byte Spill
	callq	STRING_MULTIBYTE
	andb	$1, %al
	movzbl	%al, %ecx
	movl	-28(%rbp), %edx         # 4-byte Reload
	cmpl	%ecx, %edx
	jne	.LBB17_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB17_5
.LBB17_2:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	STRING_MULTIBYTE
	testb	$1, %al
	jne	.LBB17_3
	jmp	.LBB17_4
.LBB17_3:                               # %if.then.5
	movq	-16(%rbp), %rdi
	callq	Fstring_make_unibyte
	movq	%rax, -8(%rbp)
	jmp	.LBB17_5
.LBB17_4:                               # %if.else
	movq	-16(%rbp), %rdi
	callq	Fstring_make_multibyte
	movq	%rax, -8(%rbp)
.LBB17_5:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	minibuf_conform_representation, .Lfunc_end17-minibuf_conform_representation
	.cfi_endproc

	.globl	Fall_completions
	.align	16, 0x90
	.type	Fall_completions,@function
Fall_completions:                       # @Fall_completions
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp58:
	.cfi_def_cfa_offset 16
.Ltmp59:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp60:
	.cfi_def_cfa_register %rbp
	subq	$432, %rsp              # imm = 0x1B0
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	HASH_TABLE_P
	testb	$1, %al
	jne	.LBB18_1
	jmp	.LBB18_2
.LBB18_1:                               # %cond.true
	movl	$3, %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
	jmp	.LBB18_10
.LBB18_2:                               # %cond.false
	movq	-24(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB18_3
	jmp	.LBB18_4
.LBB18_3:                               # %cond.true.2
	movl	$2, %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
	jmp	.LBB18_9
.LBB18_4:                               # %cond.false.3
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movb	$1, %cl
	movq	-152(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	movb	%cl, -153(%rbp)         # 1-byte Spill
	je	.LBB18_8
# BB#5:                                 # %lor.rhs
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -154(%rbp)         # 1-byte Spill
	jne	.LBB18_7
# BB#6:                                 # %land.rhs
	movq	-24(%rbp), %rdi
	callq	FUNCTIONP
	xorb	$-1, %al
	movb	%al, -154(%rbp)         # 1-byte Spill
.LBB18_7:                               # %land.end
	movb	-154(%rbp), %al         # 1-byte Reload
	movb	%al, -153(%rbp)         # 1-byte Spill
.LBB18_8:                               # %lor.end
	movb	-153(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -144(%rbp)        # 4-byte Spill
.LBB18_9:                               # %cond.end
	movl	-144(%rbp), %eax        # 4-byte Reload
	movl	%eax, -140(%rbp)        # 4-byte Spill
.LBB18_10:                              # %cond.end.8
	movl	-140(%rbp), %eax        # 4-byte Reload
	movl	%eax, -76(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	$-1, -104(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHECK_STRING
	cmpl	$0, -76(%rbp)
	jne	.LBB18_12
# BB#11:                                # %if.then
	movl	$901, %edi              # imm = 0x385
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	%rdx, -168(%rbp)        # 8-byte Spill
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movq	%rsi, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	-184(%rbp), %rsi        # 8-byte Reload
	movq	-168(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	call3
	movq	%rax, -8(%rbp)
	jmp	.LBB18_86
.LBB18_12:                              # %if.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -112(%rbp)
	movq	%rax, -72(%rbp)
	movq	$2, -128(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
	cmpl	$2, -76(%rbp)
	jne	.LBB18_14
# BB#13:                                # %if.then.17
	movq	-24(%rbp), %rdi
	callq	check_obarray
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	ASIZE
	movq	%rax, -96(%rbp)
	movq	-24(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	AREF
	movq	%rax, -112(%rbp)
.LBB18_14:                              # %if.end.21
	jmp	.LBB18_15
.LBB18_15:                              # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_35 Depth 2
                                        #     Child Loop BB18_57 Depth 2
	cmpl	$1, -76(%rbp)
	jne	.LBB18_22
# BB#16:                                # %if.then.24
                                        #   in Loop: Header=BB18_15 Depth=1
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB18_18
# BB#17:                                # %if.then.29
	jmp	.LBB18_83
.LBB18_18:                              # %if.end.30
                                        #   in Loop: Header=BB18_15 Depth=1
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB18_20
# BB#19:                                # %cond.true.35
                                        #   in Loop: Header=BB18_15 Depth=1
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jmp	.LBB18_21
.LBB18_20:                              # %cond.false.38
                                        #   in Loop: Header=BB18_15 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
.LBB18_21:                              # %cond.end.39
                                        #   in Loop: Header=BB18_15 Depth=1
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB18_44
.LBB18_22:                              # %if.else
                                        #   in Loop: Header=BB18_15 Depth=1
	cmpl	$2, -76(%rbp)
	jne	.LBB18_34
# BB#23:                                # %if.then.44
                                        #   in Loop: Header=BB18_15 Depth=1
	movq	-112(%rbp), %rax
	cmpq	-128(%rbp), %rax
	je	.LBB18_30
# BB#24:                                # %if.then.47
                                        #   in Loop: Header=BB18_15 Depth=1
	movq	-112(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB18_26
# BB#25:                                # %if.then.52
	movabsq	$.L.str.6, %rdi
	movb	$0, %al
	callq	error
.LBB18_26:                              # %if.end.53
                                        #   in Loop: Header=BB18_15 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-112(%rbp), %rax
	subq	$0, %rax
	cmpq	$0, lispsym+40(,%rax)
	je	.LBB18_28
# BB#27:                                # %if.then.55
                                        #   in Loop: Header=BB18_15 Depth=1
	movq	-112(%rbp), %rax
	subq	$0, %rax
	movq	lispsym+40(,%rax), %rdi
	callq	make_lisp_symbol
	movq	%rax, -112(%rbp)
	jmp	.LBB18_29
.LBB18_28:                              # %if.else.60
                                        #   in Loop: Header=BB18_15 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	make_natnum
	movq	%rax, -112(%rbp)
.LBB18_29:                              # %if.end.62
                                        #   in Loop: Header=BB18_15 Depth=1
	jmp	.LBB18_33
.LBB18_30:                              # %if.else.63
                                        #   in Loop: Header=BB18_15 Depth=1
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -88(%rbp)
	cmpq	-96(%rbp), %rax
	jl	.LBB18_32
# BB#31:                                # %if.then.66
	jmp	.LBB18_83
.LBB18_32:                              # %if.else.67
                                        #   in Loop: Header=BB18_15 Depth=1
	movq	-24(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	AREF
	movq	%rax, -112(%rbp)
	jmp	.LBB18_15
.LBB18_33:                              # %if.end.69
                                        #   in Loop: Header=BB18_15 Depth=1
	jmp	.LBB18_43
.LBB18_34:                              # %if.else.70
                                        #   in Loop: Header=BB18_15 Depth=1
	jmp	.LBB18_35
.LBB18_35:                              # %while.cond.71
                                        #   Parent Loop BB18_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-88(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	XHASH_TABLE
	movq	%rax, %rdi
	callq	HASH_TABLE_SIZE
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	-200(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	movb	%dl, -201(%rbp)         # 1-byte Spill
	jge	.LBB18_37
# BB#36:                                # %land.rhs.76
                                        #   in Loop: Header=BB18_35 Depth=2
	movq	-24(%rbp), %rdi
	callq	XHASH_TABLE
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	HASH_HASH
	xorl	%edi, %edi
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%cl
	movb	%cl, -201(%rbp)         # 1-byte Spill
.LBB18_37:                              # %land.end.82
                                        #   in Loop: Header=BB18_35 Depth=2
	movb	-201(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB18_38
	jmp	.LBB18_39
.LBB18_38:                              # %while.body.83
                                        #   in Loop: Header=BB18_35 Depth=2
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB18_35
.LBB18_39:                              # %while.end
                                        #   in Loop: Header=BB18_15 Depth=1
	movq	-88(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	XHASH_TABLE
	movq	%rax, %rdi
	callq	HASH_TABLE_SIZE
	movq	-224(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB18_41
# BB#40:                                # %if.then.89
	jmp	.LBB18_83
.LBB18_41:                              # %if.else.90
                                        #   in Loop: Header=BB18_15 Depth=1
	movq	-24(%rbp), %rdi
	callq	XHASH_TABLE
	movq	-88(%rbp), %rdi
	movq	%rdi, %rcx
	addq	$1, %rcx
	movq	%rcx, -88(%rbp)
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-232(%rbp), %rsi        # 8-byte Reload
	callq	HASH_KEY
	movq	%rax, -64(%rbp)
	movq	%rax, -56(%rbp)
# BB#42:                                # %if.end.94
                                        #   in Loop: Header=BB18_15 Depth=1
	jmp	.LBB18_43
.LBB18_43:                              # %if.end.95
                                        #   in Loop: Header=BB18_15 Depth=1
	jmp	.LBB18_44
.LBB18_44:                              # %if.end.96
                                        #   in Loop: Header=BB18_15 Depth=1
	movq	-64(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB18_46
# BB#45:                                # %if.then.101
                                        #   in Loop: Header=BB18_15 Depth=1
	movq	-64(%rbp), %rdi
	callq	Fsymbol_name
	movq	%rax, -64(%rbp)
.LBB18_46:                              # %if.end.103
                                        #   in Loop: Header=BB18_15 Depth=1
	movq	-64(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB18_47
	jmp	.LBB18_82
.LBB18_47:                              # %land.lhs.true
                                        #   in Loop: Header=BB18_15 Depth=1
	movq	-16(%rbp), %rdi
	callq	SCHARS
	movq	-64(%rbp), %rdi
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	SCHARS
	movq	-240(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jg	.LBB18_82
# BB#48:                                # %land.lhs.true.110
                                        #   in Loop: Header=BB18_15 Depth=1
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-248(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB18_52
# BB#49:                                # %lor.lhs.false
                                        #   in Loop: Header=BB18_15 Depth=1
	movq	-16(%rbp), %rdi
	callq	SBYTES
	cmpq	$0, %rax
	jle	.LBB18_51
# BB#50:                                # %land.lhs.true.117
                                        #   in Loop: Header=BB18_15 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	SREF
	movzbl	%al, %ecx
	cmpl	$32, %ecx
	je	.LBB18_52
.LBB18_51:                              # %lor.lhs.false.122
                                        #   in Loop: Header=BB18_15 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-64(%rbp), %rdi
	callq	SREF
	movzbl	%al, %ecx
	cmpl	$32, %ecx
	je	.LBB18_82
.LBB18_52:                              # %land.lhs.true.127
                                        #   in Loop: Header=BB18_15 Depth=1
	movq	-64(%rbp), %rdi
	movq	-128(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -264(%rbp)        # 8-byte Spill
	callq	SCHARS
	shlq	$2, %rax
	addq	$2, %rax
	movq	-16(%rbp), %rcx
	movq	-128(%rbp), %r8
	movq	-16(%rbp), %rdi
	movq	%rax, -272(%rbp)        # 8-byte Spill
	movq	%rcx, -280(%rbp)        # 8-byte Spill
	movq	%r8, -288(%rbp)         # 8-byte Spill
	callq	SCHARS
	shlq	$2, %rax
	addq	$2, %rax
	testb	$1, globals+3368
	movq	%rax, -296(%rbp)        # 8-byte Spill
	je	.LBB18_54
# BB#53:                                # %cond.true.134
                                        #   in Loop: Header=BB18_15 Depth=1
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -304(%rbp)        # 8-byte Spill
	jmp	.LBB18_55
.LBB18_54:                              # %cond.false.136
                                        #   in Loop: Header=BB18_15 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -304(%rbp)        # 8-byte Spill
.LBB18_55:                              # %cond.end.138
                                        #   in Loop: Header=BB18_15 Depth=1
	movq	-304(%rbp), %rax        # 8-byte Reload
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	-264(%rbp), %rsi        # 8-byte Reload
	movq	-272(%rbp), %rdx        # 8-byte Reload
	movq	-280(%rbp), %rcx        # 8-byte Reload
	movq	-288(%rbp), %r8         # 8-byte Reload
	movq	-296(%rbp), %r9         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	Fcompare_strings
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -120(%rbp)
	callq	builtin_lisp_symbol
	cmpq	-120(%rbp), %rax
	jne	.LBB18_82
# BB#56:                                # %if.then.144
                                        #   in Loop: Header=BB18_15 Depth=1
	movq	globals+352, %rax
	movq	%rax, -136(%rbp)
.LBB18_57:                              # %for.cond
                                        #   Parent Loop BB18_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-136(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB18_67
# BB#58:                                # %for.body
                                        #   in Loop: Header=BB18_57 Depth=2
	cmpq	$0, -104(%rbp)
	jge	.LBB18_63
# BB#59:                                # %if.then.151
                                        #   in Loop: Header=BB18_57 Depth=2
	callq	SPECPDL_INDEX
	movl	$238, %edi
	movq	%rax, -104(%rbp)
	callq	builtin_lisp_symbol
	testb	$1, globals+3368
	movq	%rax, -312(%rbp)        # 8-byte Spill
	je	.LBB18_61
# BB#60:                                # %cond.true.156
                                        #   in Loop: Header=BB18_57 Depth=2
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -320(%rbp)        # 8-byte Spill
	jmp	.LBB18_62
.LBB18_61:                              # %cond.false.158
                                        #   in Loop: Header=BB18_57 Depth=2
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -320(%rbp)        # 8-byte Spill
.LBB18_62:                              # %cond.end.160
                                        #   in Loop: Header=BB18_57 Depth=2
	movq	-320(%rbp), %rax        # 8-byte Reload
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
.LBB18_63:                              # %if.end.162
                                        #   in Loop: Header=BB18_57 Depth=2
	movq	-136(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	movq	-64(%rbp), %rsi
	movq	-128(%rbp), %rdx
	callq	Fstring_match
	xorl	%edi, %edi
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-328(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB18_65
# BB#64:                                # %if.then.169
                                        #   in Loop: Header=BB18_15 Depth=1
	jmp	.LBB18_67
.LBB18_65:                              # %if.end.170
                                        #   in Loop: Header=BB18_57 Depth=2
	jmp	.LBB18_66
.LBB18_66:                              # %for.inc
                                        #   in Loop: Header=BB18_57 Depth=2
	movq	-136(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -136(%rbp)
	jmp	.LBB18_57
.LBB18_67:                              # %for.end
                                        #   in Loop: Header=BB18_15 Depth=1
	movq	-136(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB18_69
# BB#68:                                # %if.then.178
                                        #   in Loop: Header=BB18_15 Depth=1
	jmp	.LBB18_15
.LBB18_69:                              # %if.end.179
                                        #   in Loop: Header=BB18_15 Depth=1
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-336(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB18_81
# BB#70:                                # %if.then.183
                                        #   in Loop: Header=BB18_15 Depth=1
	movl	$286, %edi              # imm = 0x11E
	movq	-32(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-344(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB18_72
# BB#71:                                # %if.then.187
                                        #   in Loop: Header=BB18_15 Depth=1
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcommandp
	movq	%rax, -120(%rbp)
	jmp	.LBB18_78
.LBB18_72:                              # %if.else.190
                                        #   in Loop: Header=BB18_15 Depth=1
	cmpq	$0, -104(%rbp)
	jl	.LBB18_74
# BB#73:                                # %if.then.193
                                        #   in Loop: Header=BB18_15 Depth=1
	xorl	%edi, %edi
	movq	-104(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	$-1, -104(%rbp)
	movq	%rax, -368(%rbp)        # 8-byte Spill
.LBB18_74:                              # %if.end.196
                                        #   in Loop: Header=BB18_15 Depth=1
	cmpl	$3, -76(%rbp)
	jne	.LBB18_76
# BB#75:                                # %cond.true.199
                                        #   in Loop: Header=BB18_15 Depth=1
	movq	-32(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -384(%rbp)        # 8-byte Spill
	callq	XHASH_TABLE
	movq	-88(%rbp), %rsi
	subq	$1, %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	-384(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	call2
	movq	%rax, -392(%rbp)        # 8-byte Spill
	jmp	.LBB18_77
.LBB18_76:                              # %cond.false.204
                                        #   in Loop: Header=BB18_15 Depth=1
	movq	-32(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	call1
	movq	%rax, -392(%rbp)        # 8-byte Spill
.LBB18_77:                              # %cond.end.206
                                        #   in Loop: Header=BB18_15 Depth=1
	movq	-392(%rbp), %rax        # 8-byte Reload
	movq	%rax, -120(%rbp)
.LBB18_78:                              # %if.end.208
                                        #   in Loop: Header=BB18_15 Depth=1
	xorl	%edi, %edi
	movq	-120(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-400(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB18_80
# BB#79:                                # %if.then.212
                                        #   in Loop: Header=BB18_15 Depth=1
	jmp	.LBB18_15
.LBB18_80:                              # %if.end.213
                                        #   in Loop: Header=BB18_15 Depth=1
	jmp	.LBB18_81
.LBB18_81:                              # %if.end.214
                                        #   in Loop: Header=BB18_15 Depth=1
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	Fcons
	movq	%rax, -72(%rbp)
.LBB18_82:                              # %if.end.216
                                        #   in Loop: Header=BB18_15 Depth=1
	jmp	.LBB18_15
.LBB18_83:                              # %while.end.217
	cmpq	$0, -104(%rbp)
	jl	.LBB18_85
# BB#84:                                # %if.then.220
	xorl	%edi, %edi
	movq	-104(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	$-1, -104(%rbp)
	movq	%rax, -416(%rbp)        # 8-byte Spill
.LBB18_85:                              # %if.end.223
	movq	-72(%rbp), %rdi
	callq	Fnreverse
	movq	%rax, -8(%rbp)
.LBB18_86:                              # %return
	movq	-8(%rbp), %rax
	addq	$432, %rsp              # imm = 0x1B0
	popq	%rbp
	retq
.Lfunc_end18:
	.size	Fall_completions, .Lfunc_end18-Fall_completions
	.cfi_endproc

	.globl	Ftest_completion
	.align	16, 0x90
	.type	Ftest_completion,@function
Ftest_completion:                       # @Ftest_completion
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp61:
	.cfi_def_cfa_offset 16
.Ltmp62:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp63:
	.cfi_def_cfa_register %rbp
	subq	$448, %rsp              # imm = 0x1C0
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHECK_STRING
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB19_3
# BB#1:                                 # %lor.lhs.false
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB19_9
# BB#2:                                 # %land.lhs.true
	movq	-24(%rbp), %rdi
	callq	FUNCTIONP
	testb	$1, %al
	jne	.LBB19_9
.LBB19_3:                               # %if.then
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	testb	$1, globals+3368
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	je	.LBB19_5
# BB#4:                                 # %cond.true
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB19_6
.LBB19_5:                               # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB19_6:                               # %cond.end
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fassoc_string
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB19_8
# BB#7:                                 # %if.then.12
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB19_77
.LBB19_8:                               # %if.end
	jmp	.LBB19_57
.LBB19_9:                               # %if.else
	movq	-24(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB19_10
	jmp	.LBB19_33
.LBB19_10:                              # %if.then.15
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	SSDATA
	movq	-16(%rbp), %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	SCHARS
	movq	-16(%rbp), %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	SBYTES
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	-144(%rbp), %rsi        # 8-byte Reload
	movq	-152(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	oblookup
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %r8d
	cmpl	$0, %r8d
	je	.LBB19_15
# BB#11:                                # %if.then.24
	movq	-16(%rbp), %rdi
	callq	STRING_MULTIBYTE
	testb	$1, %al
	jne	.LBB19_12
	jmp	.LBB19_13
.LBB19_12:                              # %if.then.26
	movq	-16(%rbp), %rdi
	callq	Fstring_make_unibyte
	movq	%rax, -16(%rbp)
	jmp	.LBB19_14
.LBB19_13:                              # %if.else.28
	movq	-16(%rbp), %rdi
	callq	Fstring_make_multibyte
	movq	%rax, -16(%rbp)
.LBB19_14:                              # %if.end.30
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	SSDATA
	movq	-16(%rbp), %rdi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	SCHARS
	movq	-16(%rbp), %rdi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	SBYTES
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	-168(%rbp), %rsi        # 8-byte Reload
	movq	-176(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	oblookup
	movq	%rax, -56(%rbp)
.LBB19_15:                              # %if.end.35
	testb	$1, globals+3368
	je	.LBB19_30
# BB#16:                                # %land.lhs.true.38
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB19_30
# BB#17:                                # %if.then.43
	movq	-24(%rbp), %rdi
	callq	ASIZE
	subq	$1, %rax
	movq	%rax, -64(%rbp)
.LBB19_18:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_21 Depth 2
	cmpq	$0, -64(%rbp)
	jl	.LBB19_29
# BB#19:                                # %for.body
                                        #   in Loop: Header=BB19_18 Depth=1
	movq	-24(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	AREF
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB19_27
# BB#20:                                # %if.then.52
                                        #   in Loop: Header=BB19_18 Depth=1
	jmp	.LBB19_21
.LBB19_21:                              # %while.body
                                        #   Parent Loop BB19_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rdi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	Fsymbol_name
	xorl	%edi, %edi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$2, %edi
	movl	%edi, %ecx
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, %rsi
	movq	-192(%rbp), %rdx        # 8-byte Reload
	movq	-200(%rbp), %r8         # 8-byte Reload
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	movq	%r8, %rcx
	movq	-216(%rbp), %r8         # 8-byte Reload
	movq	-208(%rbp), %r9         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	Fcompare_strings
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB19_23
# BB#22:                                # %if.then.61
                                        #   in Loop: Header=BB19_18 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB19_26
.LBB19_23:                              # %if.end.62
                                        #   in Loop: Header=BB19_21 Depth=2
	movq	-48(%rbp), %rax
	subq	$0, %rax
	cmpq	$0, lispsym+40(,%rax)
	jne	.LBB19_25
# BB#24:                                # %if.then.66
                                        #   in Loop: Header=BB19_18 Depth=1
	jmp	.LBB19_26
.LBB19_25:                              # %if.end.67
                                        #   in Loop: Header=BB19_21 Depth=2
	movq	-48(%rbp), %rax
	subq	$0, %rax
	movq	lispsym+40(,%rax), %rdi
	callq	make_lisp_symbol
	movq	%rax, -48(%rbp)
	jmp	.LBB19_21
.LBB19_26:                              # %while.end
                                        #   in Loop: Header=BB19_18 Depth=1
	jmp	.LBB19_27
.LBB19_27:                              # %if.end.72
                                        #   in Loop: Header=BB19_18 Depth=1
	jmp	.LBB19_28
.LBB19_28:                              # %for.inc
                                        #   in Loop: Header=BB19_18 Depth=1
	movq	-64(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB19_18
.LBB19_29:                              # %for.end
	jmp	.LBB19_30
.LBB19_30:                              # %if.end.73
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB19_32
# BB#31:                                # %if.then.78
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB19_77
.LBB19_32:                              # %if.end.80
	jmp	.LBB19_56
.LBB19_33:                              # %if.else.81
	movq	-24(%rbp), %rdi
	callq	HASH_TABLE_P
	testb	$1, %al
	jne	.LBB19_34
	jmp	.LBB19_54
.LBB19_34:                              # %if.then.83
	movq	-24(%rbp), %rdi
	callq	XHASH_TABLE
	xorl	%edi, %edi
	movq	%rax, -72(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %edx
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	hash_lookup
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jl	.LBB19_36
# BB#35:                                # %if.then.89
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	HASH_KEY
	movq	%rax, -56(%rbp)
	jmp	.LBB19_51
.LBB19_36:                              # %if.else.91
	movq	$0, -64(%rbp)
.LBB19_37:                              # %for.cond.92
                                        # =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rax
	movq	-72(%rbp), %rdi
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	HASH_TABLE_SIZE
	movq	-232(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jge	.LBB19_50
# BB#38:                                # %for.body.96
                                        #   in Loop: Header=BB19_37 Depth=1
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	HASH_HASH
	xorl	%edi, %edi
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-240(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB19_48
# BB#39:                                # %land.lhs.true.101
                                        #   in Loop: Header=BB19_37 Depth=1
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	HASH_KEY
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB19_41
# BB#40:                                # %cond.true.107
                                        #   in Loop: Header=BB19_37 Depth=1
	movq	-80(%rbp), %rdi
	callq	Fsymbol_name
	movq	%rax, -80(%rbp)
	jmp	.LBB19_42
.LBB19_41:                              # %cond.false.109
                                        #   in Loop: Header=BB19_37 Depth=1
	movq	-80(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
.LBB19_42:                              # %cond.end.110
                                        #   in Loop: Header=BB19_37 Depth=1
	movq	-80(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB19_43
	jmp	.LBB19_48
.LBB19_43:                              # %land.lhs.true.114
                                        #   in Loop: Header=BB19_37 Depth=1
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-80(%rbp), %rcx
	movq	%rax, -264(%rbp)        # 8-byte Spill
	movq	%rcx, -272(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	testb	$1, globals+3368
	movq	%rax, -280(%rbp)        # 8-byte Spill
	je	.LBB19_45
# BB#44:                                # %cond.true.119
                                        #   in Loop: Header=BB19_37 Depth=1
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -288(%rbp)        # 8-byte Spill
	jmp	.LBB19_46
.LBB19_45:                              # %cond.false.121
                                        #   in Loop: Header=BB19_37 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -288(%rbp)        # 8-byte Spill
.LBB19_46:                              # %cond.end.123
                                        #   in Loop: Header=BB19_37 Depth=1
	movq	-288(%rbp), %rax        # 8-byte Reload
	movl	$2, %ecx
	movl	%ecx, %edx
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rdx, %rsi
	movq	-264(%rbp), %r8         # 8-byte Reload
	movq	%rdx, -296(%rbp)        # 8-byte Spill
	movq	%r8, %rdx
	movq	-272(%rbp), %rcx        # 8-byte Reload
	movq	-296(%rbp), %r8         # 8-byte Reload
	movq	-280(%rbp), %r9         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	Fcompare_strings
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-304(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB19_48
# BB#47:                                # %if.then.129
	movq	-80(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB19_50
.LBB19_48:                              # %if.end.130
                                        #   in Loop: Header=BB19_37 Depth=1
	jmp	.LBB19_49
.LBB19_49:                              # %for.inc.131
                                        #   in Loop: Header=BB19_37 Depth=1
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB19_37
.LBB19_50:                              # %for.end.132
	jmp	.LBB19_51
.LBB19_51:                              # %if.end.133
	movq	-56(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB19_53
# BB#52:                                # %if.then.135
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB19_77
.LBB19_53:                              # %if.end.137
	jmp	.LBB19_55
.LBB19_54:                              # %if.else.138
	movl	$598, %edi              # imm = 0x256
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	%rdx, -312(%rbp)        # 8-byte Spill
	movq	%rax, -320(%rbp)        # 8-byte Spill
	movq	%rsi, -328(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	-328(%rbp), %rsi        # 8-byte Reload
	movq	-312(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	call3
	movq	%rax, -8(%rbp)
	jmp	.LBB19_77
.LBB19_55:                              # %if.end.141
	jmp	.LBB19_56
.LBB19_56:                              # %if.end.142
	jmp	.LBB19_57
.LBB19_57:                              # %if.end.143
	movq	globals+352, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB19_71
# BB#58:                                # %if.then.148
	callq	SPECPDL_INDEX
	movl	$238, %edi
	movq	%rax, -88(%rbp)
	callq	builtin_lisp_symbol
	testb	$1, globals+3368
	movq	%rax, -336(%rbp)        # 8-byte Spill
	je	.LBB19_60
# BB#59:                                # %cond.true.153
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -344(%rbp)        # 8-byte Spill
	jmp	.LBB19_61
.LBB19_60:                              # %cond.false.155
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -344(%rbp)        # 8-byte Spill
.LBB19_61:                              # %cond.end.157
	movq	-344(%rbp), %rax        # 8-byte Reload
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
	movq	globals+352, %rax
	movq	%rax, -40(%rbp)
.LBB19_62:                              # %for.cond.159
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB19_70
# BB#63:                                # %for.body.164
                                        #   in Loop: Header=BB19_62 Depth=1
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	movq	%rdi, -352(%rbp)        # 8-byte Spill
	jne	.LBB19_65
# BB#64:                                # %cond.true.170
                                        #   in Loop: Header=BB19_62 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	jmp	.LBB19_66
.LBB19_65:                              # %cond.false.171
                                        #   in Loop: Header=BB19_62 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
.LBB19_66:                              # %cond.end.172
                                        #   in Loop: Header=BB19_62 Depth=1
	movq	-360(%rbp), %rax        # 8-byte Reload
	xorl	%edi, %edi
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	-368(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fstring_match
	xorl	%edi, %edi
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-376(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB19_68
# BB#67:                                # %if.then.179
	xorl	%edi, %edi
	movq	-88(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -8(%rbp)
	jmp	.LBB19_77
.LBB19_68:                              # %if.end.182
                                        #   in Loop: Header=BB19_62 Depth=1
	jmp	.LBB19_69
.LBB19_69:                              # %for.inc.183
                                        #   in Loop: Header=BB19_62 Depth=1
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB19_62
.LBB19_70:                              # %for.end.185
	xorl	%edi, %edi
	movq	-88(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -400(%rbp)        # 8-byte Spill
.LBB19_71:                              # %if.end.188
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-408(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB19_76
# BB#72:                                # %if.then.192
	movq	-24(%rbp), %rdi
	callq	HASH_TABLE_P
	testb	$1, %al
	jne	.LBB19_73
	jmp	.LBB19_74
.LBB19_73:                              # %cond.true.195
	movq	-32(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, -416(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -424(%rbp)        # 8-byte Spill
	callq	XHASH_TABLE
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	-424(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	call2
	movq	%rax, -432(%rbp)        # 8-byte Spill
	jmp	.LBB19_75
.LBB19_74:                              # %cond.false.199
	movq	-32(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	call1
	movq	%rax, -432(%rbp)        # 8-byte Spill
.LBB19_75:                              # %cond.end.201
	movq	-432(%rbp), %rax        # 8-byte Reload
	movq	%rax, -8(%rbp)
	jmp	.LBB19_77
.LBB19_76:                              # %if.else.203
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB19_77:                              # %return
	movq	-8(%rbp), %rax
	addq	$448, %rsp              # imm = 0x1C0
	popq	%rbp
	retq
.Lfunc_end19:
	.size	Ftest_completion, .Lfunc_end19-Ftest_completion
	.cfi_endproc

	.globl	Fassoc_string
	.align	16, 0x90
	.type	Fassoc_string,@function
Fassoc_string:                          # @Fassoc_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp64:
	.cfi_def_cfa_offset 16
.Ltmp65:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp66:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$0, %eax
	jne	.LBB20_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	Fsymbol_name
	movq	%rax, -16(%rbp)
.LBB20_2:                               # %if.end
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB20_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB20_24
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB20_3 Depth=1
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB20_6
# BB#5:                                 # %cond.true
                                        #   in Loop: Header=BB20_3 Depth=1
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB20_7
.LBB20_6:                               # %cond.false
                                        #   in Loop: Header=BB20_3 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB20_7:                               # %cond.end
                                        #   in Loop: Header=BB20_3 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB20_9
# BB#8:                                 # %if.then.16
                                        #   in Loop: Header=BB20_3 Depth=1
	movq	-64(%rbp), %rdi
	callq	Fsymbol_name
	movq	%rax, -64(%rbp)
	jmp	.LBB20_12
.LBB20_9:                               # %if.else
                                        #   in Loop: Header=BB20_3 Depth=1
	movq	-64(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB20_11
# BB#10:                                # %if.then.19
                                        #   in Loop: Header=BB20_3 Depth=1
	jmp	.LBB20_23
.LBB20_11:                              # %if.end.20
                                        #   in Loop: Header=BB20_3 Depth=1
	jmp	.LBB20_12
.LBB20_12:                              # %if.end.21
                                        #   in Loop: Header=BB20_3 Depth=1
	xorl	%edi, %edi
	movq	-64(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-16(%rbp), %rcx
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$2, %edi
	movl	%edi, %ecx
	movq	-32(%rbp), %rdx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rcx, %rsi
	movq	-88(%rbp), %r8          # 8-byte Reload
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movq	%r8, %rdx
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	movq	%r9, %rcx
	movq	-112(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	Fcompare_strings
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB20_14
# BB#13:                                # %if.then.28
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB20_25
.LBB20_14:                              # %if.end.29
                                        #   in Loop: Header=BB20_3 Depth=1
	jmp	.LBB20_15
.LBB20_15:                              # %do.body
                                        #   in Loop: Header=BB20_3 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB20_18
# BB#16:                                # %land.lhs.true
                                        #   in Loop: Header=BB20_3 Depth=1
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB20_18
# BB#17:                                # %if.then.36
                                        #   in Loop: Header=BB20_3 Depth=1
	callq	process_quit_flag
	jmp	.LBB20_21
.LBB20_18:                              # %if.else.37
                                        #   in Loop: Header=BB20_3 Depth=1
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB20_20
# BB#19:                                # %if.then.38
                                        #   in Loop: Header=BB20_3 Depth=1
	callq	process_pending_signals
.LBB20_20:                              # %if.end.39
                                        #   in Loop: Header=BB20_3 Depth=1
	jmp	.LBB20_21
.LBB20_21:                              # %if.end.40
                                        #   in Loop: Header=BB20_3 Depth=1
	jmp	.LBB20_22
.LBB20_22:                              # %do.end
                                        #   in Loop: Header=BB20_3 Depth=1
	jmp	.LBB20_23
.LBB20_23:                              # %for.inc
                                        #   in Loop: Header=BB20_3 Depth=1
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB20_3
.LBB20_24:                              # %for.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB20_25:                              # %return
	movq	-8(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	Fassoc_string, .Lfunc_end20-Fassoc_string
	.cfi_endproc

	.globl	Finternal_complete_buffer
	.align	16, 0x90
	.type	Finternal_complete_buffer,@function
Finternal_complete_buffer:              # @Finternal_complete_buffer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp67:
	.cfi_def_cfa_offset 16
.Ltmp68:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp69:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movl	%eax, %edi
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB21_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	Vbuffer_alist, %rsi
	movq	-24(%rbp), %rdx
	callq	Ftry_completion
	movq	%rax, -8(%rbp)
	jmp	.LBB21_27
.LBB21_2:                               # %if.else
	movl	$901, %edi              # imm = 0x385
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB21_22
# BB#3:                                 # %if.then.4
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	Vbuffer_alist, %rsi
	movq	-24(%rbp), %rdx
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	callq	Fall_completions
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	SCHARS
	cmpq	$0, %rax
	jle	.LBB21_5
# BB#4:                                 # %if.then.9
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB21_27
.LBB21_5:                               # %if.else.10
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB21_6:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -89(%rbp)          # 1-byte Spill
	jne	.LBB21_8
# BB#7:                                 # %land.rhs
                                        #   in Loop: Header=BB21_6 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rdi
	callq	SREF
	movzbl	%al, %edx
	cmpl	$32, %edx
	sete	%al
	movb	%al, -89(%rbp)          # 1-byte Spill
.LBB21_8:                               # %land.end
                                        #   in Loop: Header=BB21_6 Depth=1
	movb	-89(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB21_9
	jmp	.LBB21_10
.LBB21_9:                               # %while.body
                                        #   in Loop: Header=BB21_6 Depth=1
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB21_6
.LBB21_10:                              # %while.end
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB21_15
# BB#11:                                # %if.then.21
	movq	-40(%rbp), %rdi
	callq	Flength
	movq	Vbuffer_alist, %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	Flength
	movq	-112(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jne	.LBB21_13
# BB#12:                                # %cond.true
	movq	-40(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB21_14
.LBB21_13:                              # %cond.false
	movq	-48(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB21_14:                              # %cond.end
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, -8(%rbp)
	jmp	.LBB21_27
.LBB21_15:                              # %if.end
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB21_16:                              # %while.cond.26
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB21_21
# BB#17:                                # %while.body.34
                                        #   in Loop: Header=BB21_16 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rdi
	callq	SREF
	movzbl	%al, %edx
	cmpl	$32, %edx
	jne	.LBB21_19
# BB#18:                                # %if.then.44
                                        #   in Loop: Header=BB21_16 Depth=1
	movq	-48(%rbp), %rdi
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rsi
	callq	XSETCDR
	jmp	.LBB21_20
.LBB21_19:                              # %if.else.51
                                        #   in Loop: Header=BB21_16 Depth=1
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB21_20:                              # %if.end.55
                                        #   in Loop: Header=BB21_16 Depth=1
	jmp	.LBB21_16
.LBB21_21:                              # %while.end.56
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB21_27
.LBB21_22:                              # %if.else.57
	movl	$598, %edi              # imm = 0x256
	movq	-32(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB21_24
# BB#23:                                # %if.then.61
	movq	-16(%rbp), %rdi
	movq	Vbuffer_alist, %rsi
	movq	-24(%rbp), %rdx
	callq	Ftest_completion
	movq	%rax, -8(%rbp)
	jmp	.LBB21_27
.LBB21_24:                              # %if.else.63
	movl	$659, %edi              # imm = 0x293
	movq	-32(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB21_26
# BB#25:                                # %if.then.67
	movl	$659, %edi              # imm = 0x293
	callq	builtin_lisp_symbol
	movl	$241, %edi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$219, %edi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	list2
	movq	%rax, -8(%rbp)
	jmp	.LBB21_27
.LBB21_26:                              # %if.else.73
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB21_27:                              # %return
	movq	-8(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	Finternal_complete_buffer, .Lfunc_end21-Finternal_complete_buffer
	.cfi_endproc

	.globl	Fminibuffer_depth
	.align	16, 0x90
	.type	Fminibuffer_depth,@function
Fminibuffer_depth:                      # @Fminibuffer_depth
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp70:
	.cfi_def_cfa_offset 16
.Ltmp71:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp72:
	.cfi_def_cfa_register %rbp
	movq	minibuf_level, %rax
	shlq	$2, %rax
	addq	$2, %rax
	popq	%rbp
	retq
.Lfunc_end22:
	.size	Fminibuffer_depth, .Lfunc_end22-Fminibuffer_depth
	.cfi_endproc

	.globl	Fminibuffer_prompt
	.align	16, 0x90
	.type	Fminibuffer_prompt,@function
Fminibuffer_prompt:                     # @Fminibuffer_prompt
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp73:
	.cfi_def_cfa_offset 16
.Ltmp74:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp75:
	.cfi_def_cfa_register %rbp
	movq	minibuf_prompt, %rdi
	callq	Fcopy_sequence
	popq	%rbp
	retq
.Lfunc_end23:
	.size	Fminibuffer_prompt, .Lfunc_end23-Fminibuffer_prompt
	.cfi_endproc

	.globl	init_minibuf_once
	.align	16, 0x90
	.type	init_minibuf_once,@function
init_minibuf_once:                      # @init_minibuf_once
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp76:
	.cfi_def_cfa_offset 16
.Ltmp77:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp78:
	.cfi_def_cfa_register %rbp
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$Vminibuffer_list, %rdi
	movq	%rax, Vminibuffer_list
	callq	staticpro
	popq	%rbp
	retq
.Lfunc_end24:
	.size	init_minibuf_once, .Lfunc_end24-init_minibuf_once
	.cfi_endproc

	.globl	syms_of_minibuf
	.align	16, 0x90
	.type	syms_of_minibuf,@function
syms_of_minibuf:                        # @syms_of_minibuf
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp79:
	.cfi_def_cfa_offset 16
.Ltmp80:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp81:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	xorl	%edi, %edi
	movq	$0, minibuf_level
	callq	builtin_lisp_symbol
	movabsq	$minibuf_prompt, %rdi
	movq	%rax, minibuf_prompt
	callq	staticpro
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$minibuf_save_list, %rdi
	movq	%rax, minibuf_save_list
	callq	staticpro
	movl	$663, %edi              # imm = 0x297
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -8(%rbp)          # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movq	%rax, %rsi
	callq	Fset
	movabsq	$last_minibuf_string, %rdi
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	staticpro
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movl	$224, %edi
	movq	%rax, last_minibuf_string
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fset
	movq	%rax, -32(%rbp)         # 8-byte Spill
# BB#1:                                 # %do.body
	movabsq	$syms_of_minibuf.o_fwd, %rdi
	movabsq	$.L.str.8, %rsi
	movabsq	$globals, %rax
	addq	$1952, %rax             # imm = 0x7A0
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#2:                                 # %do.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+1952
# BB#3:                                 # %do.body.10
	movabsq	$syms_of_minibuf.o_fwd.9, %rdi
	movabsq	$.L.str.10, %rsi
	movabsq	$globals, %rax
	addq	$1936, %rax             # imm = 0x790
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#4:                                 # %do.end.11
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+1936
# BB#5:                                 # %do.body.13
	movabsq	$syms_of_minibuf.b_fwd, %rdi
	movabsq	$.L.str.11, %rsi
	movabsq	$globals, %rax
	addq	$3425, %rax             # imm = 0xD61
	movq	%rax, %rdx
	callq	defvar_bool
# BB#6:                                 # %do.end.14
	movb	$0, globals+3425
# BB#7:                                 # %do.body.15
	movabsq	$syms_of_minibuf.o_fwd.12, %rdi
	movabsq	$.L.str.13, %rsi
	movabsq	$globals, %rax
	addq	$1552, %rax             # imm = 0x610
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#8:                                 # %do.end.16
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+1552
# BB#9:                                 # %do.body.18
	movabsq	$syms_of_minibuf.o_fwd.14, %rdi
	movabsq	$.L.str.15, %rsi
	movabsq	$globals, %rax
	addq	$1488, %rax             # imm = 0x5D0
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#10:                                # %do.end.19
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+1488
# BB#11:                                # %do.body.21
	movabsq	$syms_of_minibuf.o_fwd.16, %rdi
	movabsq	$.L.str.17, %rsi
	movabsq	$globals, %rax
	addq	$1000, %rax             # imm = 0x3E8
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#12:                                # %do.end.22
	movl	$100, %eax
	movl	%eax, %edi
	callq	make_natnum
	movq	%rax, globals+1000
# BB#13:                                # %do.body.24
	movabsq	$syms_of_minibuf.b_fwd.18, %rdi
	movabsq	$.L.str.19, %rsi
	movabsq	$globals, %rax
	addq	$3385, %rax             # imm = 0xD39
	movq	%rax, %rdx
	callq	defvar_bool
# BB#14:                                # %do.end.25
	movb	$0, globals+3385
# BB#15:                                # %do.body.26
	movabsq	$syms_of_minibuf.o_fwd.20, %rdi
	movabsq	$.L.str.21, %rsi
	movabsq	$globals, %rax
	addq	$992, %rax              # imm = 0x3E0
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#16:                                # %do.end.27
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, globals+992
# BB#17:                                # %do.body.29
	movabsq	$syms_of_minibuf.b_fwd.22, %rdi
	movabsq	$.L.str.23, %rsi
	movabsq	$globals, %rax
	addq	$3368, %rax             # imm = 0xD28
	movq	%rax, %rdx
	callq	defvar_bool
# BB#18:                                # %do.end.30
	movb	$0, globals+3368
# BB#19:                                # %do.body.31
	movabsq	$syms_of_minibuf.b_fwd.24, %rdi
	movabsq	$.L.str.25, %rsi
	movabsq	$globals, %rax
	addq	$3379, %rax             # imm = 0xD33
	movq	%rax, %rdx
	callq	defvar_bool
# BB#20:                                # %do.end.32
	movb	$0, globals+3379
# BB#21:                                # %do.body.33
	movabsq	$syms_of_minibuf.o_fwd.26, %rdi
	movabsq	$.L.str.27, %rsi
	movabsq	$globals, %rax
	addq	$1480, %rax             # imm = 0x5C8
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#22:                                # %do.end.34
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+1480
# BB#23:                                # %do.body.36
	movabsq	$syms_of_minibuf.o_fwd.28, %rdi
	movabsq	$.L.str.29, %rsi
	movabsq	$globals, %rax
	addq	$1472, %rax             # imm = 0x5C0
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#24:                                # %do.end.37
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+1472
# BB#25:                                # %do.body.39
	movabsq	$syms_of_minibuf.o_fwd.30, %rdi
	movabsq	$.L.str.31, %rsi
	movabsq	$globals, %rax
	addq	$1464, %rax             # imm = 0x5B8
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#26:                                # %do.end.40
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+1464
# BB#27:                                # %do.body.42
	movabsq	$syms_of_minibuf.o_fwd.32, %rdi
	movabsq	$.L.str.33, %rsi
	movabsq	$globals, %rax
	addq	$1456, %rax             # imm = 0x5B0
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#28:                                # %do.end.43
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+1456
# BB#29:                                # %do.body.45
	movabsq	$syms_of_minibuf.o_fwd.34, %rdi
	movabsq	$.L.str.35, %rsi
	movabsq	$globals, %rax
	addq	$1496, %rax             # imm = 0x5D8
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#30:                                # %do.end.46
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+1496
# BB#31:                                # %do.body.48
	movabsq	$syms_of_minibuf.o_fwd.36, %rdi
	movabsq	$.L.str.37, %rsi
	movabsq	$globals, %rax
	addq	$1512, %rax             # imm = 0x5E8
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#32:                                # %do.end.49
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	make_natnum
	movq	%rax, globals+1512
# BB#33:                                # %do.body.51
	movabsq	$syms_of_minibuf.o_fwd.38, %rdi
	movabsq	$.L.str.39, %rsi
	movabsq	$globals, %rax
	addq	$1504, %rax             # imm = 0x5E0
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#34:                                # %do.end.52
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+1504
# BB#35:                                # %do.body.54
	movabsq	$syms_of_minibuf.b_fwd.40, %rdi
	movabsq	$.L.str.41, %rsi
	movabsq	$globals, %rax
	addq	$3412, %rax             # imm = 0xD54
	movq	%rax, %rdx
	callq	defvar_bool
# BB#36:                                # %do.end.55
	movb	$0, globals+3412
# BB#37:                                # %do.body.56
	movabsq	$syms_of_minibuf.o_fwd.42, %rdi
	movabsq	$.L.str.43, %rsi
	movabsq	$globals, %rax
	addq	$352, %rax              # imm = 0x160
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#38:                                # %do.end.57
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+352
# BB#39:                                # %do.body.59
	movabsq	$syms_of_minibuf.b_fwd.44, %rdi
	movabsq	$.L.str.45, %rsi
	movabsq	$globals, %rax
	addq	$3411, %rax             # imm = 0xD53
	movq	%rax, %rdx
	callq	defvar_bool
# BB#40:                                # %do.end.60
	movb	$0, globals+3411
# BB#41:                                # %do.body.61
	movabsq	$syms_of_minibuf.o_fwd.46, %rdi
	movabsq	$.L.str.47, %rsi
	movabsq	$globals, %rax
	addq	$1544, %rax             # imm = 0x608
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#42:                                # %do.end.62
	movl	$792, %edi              # imm = 0x318
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	list2
	movq	%rax, globals+1544
# BB#43:                                # %do.body.66
	movabsq	$syms_of_minibuf.o_fwd.48, %rdi
	movabsq	$.L.str.49, %rsi
	movabsq	$globals, %rax
	addq	$1960, %rax             # imm = 0x7A8
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#44:                                # %do.end.67
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$Sactive_minibuffer_window, %rdi
	movq	%rax, globals+1960
	callq	defsubr
	movabsq	$Sset_minibuffer_window, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sread_from_minibuffer, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sread_string, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sread_command, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sread_variable, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sinternal_complete_buffer, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sread_buffer, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sread_no_blanks_input, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sminibuffer_depth, %rdi
	callq	defsubr
	movabsq	$Sminibuffer_prompt, %rdi
	callq	defsubr
	movabsq	$Sminibufferp, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sminibuffer_prompt_end, %rdi
	callq	defsubr
	movabsq	$Sminibuffer_contents, %rdi
	callq	defsubr
	movabsq	$Sminibuffer_contents_no_properties, %rdi
	callq	defsubr
	movabsq	$Sminibuffer_completion_contents, %rdi
	callq	defsubr
	movabsq	$Stry_completion, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sall_completions, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Stest_completion, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sassoc_string, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Scompleting_read, %rax
	movq	%rax, %rdi
	callq	defsubr
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	syms_of_minibuf, .Lfunc_end25-syms_of_minibuf
	.cfi_endproc

	.align	16, 0x90
	.type	read_minibuf_noninteractive,@function
read_minibuf_noninteractive:            # @read_minibuf_noninteractive
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp82:
	.cfi_def_cfa_offset 16
.Ltmp83:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp84:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$272, %rsp              # imm = 0x110
.Ltmp85:
	.cfi_offset %rbx, -32
.Ltmp86:
	.cfi_offset %r14, -24
	movb	%r8b, %al
	movb	40(%rbp), %r10b
	movb	32(%rbp), %r11b
	movq	24(%rbp), %rbx
	movq	16(%rbp), %r14
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	andb	$1, %al
	movb	%al, -49(%rbp)
	movq	%r9, -64(%rbp)
	movq	%r14, -72(%rbp)
	movq	%rbx, -80(%rbp)
	andb	$1, %r11b
	movb	%r11b, -81(%rbp)
	andb	$1, %r10b
	movb	%r10b, -82(%rbp)
	movb	$0, -125(%rbp)
	movq	globals+1960, %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB26_1
	jmp	.LBB26_3
.LBB26_1:                               # %land.lhs.true
	movq	globals+1960, %rax
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jg	.LBB26_3
# BB#2:                                 # %if.then
	movq	globals+1960, %rax
	sarq	$2, %rax
	movb	%al, %cl
	movb	%cl, -125(%rbp)
.LBB26_3:                               # %if.end
	cmpb	$0, -125(%rbp)
	je	.LBB26_7
# BB#4:                                 # %if.then.4
	movq	stdin, %rdi
	callq	fileno
	leaq	-192(%rbp), %rsi
	movl	%eax, %edi
	callq	emacs_get_tty
	cmpl	$0, %eax
	sete	%cl
	andb	$1, %cl
	movb	%cl, -193(%rbp)
	testb	$1, -193(%rbp)
	je	.LBB26_6
# BB#5:                                 # %if.then.11
	movq	stdin, %rdi
	callq	fileno
	xorl	%esi, %esi
	movl	%eax, %edi
	callq	set_binary_mode
	movl	%eax, -200(%rbp)        # 4-byte Spill
.LBB26_6:                               # %if.end.14
	movq	stdin, %rdi
	callq	fileno
	movl	%eax, %edi
	callq	suppress_echo_on_tty
.LBB26_7:                               # %if.end.16
	movq	-40(%rbp), %rdi
	callq	SDATA
	movq	-40(%rbp), %rdi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	SBYTES
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	stdout, %rcx
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	fwrite
	movq	stdout, %rdi
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	fflush
	xorl	%edi, %edi
	movl	%eax, -220(%rbp)        # 4-byte Spill
	callq	builtin_lisp_symbol
	movq	%rax, -120(%rbp)
	movq	$100, -96(%rbp)
	movq	$0, -104(%rbp)
	movq	-96(%rbp), %rdi
	callq	xmalloc
	movq	%rax, -112(%rbp)
.LBB26_8:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	callq	getchar
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movl	%eax, -124(%rbp)
	cmpl	$10, %eax
	movb	%dl, -221(%rbp)         # 1-byte Spill
	je	.LBB26_10
# BB#9:                                 # %land.rhs
                                        #   in Loop: Header=BB26_8 Depth=1
	cmpl	$13, -124(%rbp)
	setne	%al
	movb	%al, -221(%rbp)         # 1-byte Spill
.LBB26_10:                              # %land.end
                                        #   in Loop: Header=BB26_8 Depth=1
	movb	-221(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB26_11
	jmp	.LBB26_21
.LBB26_11:                              # %while.body
                                        #   in Loop: Header=BB26_8 Depth=1
	cmpl	$-1, -124(%rbp)
	jne	.LBB26_15
# BB#12:                                # %if.then.30
                                        #   in Loop: Header=BB26_8 Depth=1
	callq	__errno_location
	cmpl	$4, (%rax)
	je	.LBB26_14
# BB#13:                                # %if.then.34
	jmp	.LBB26_21
.LBB26_14:                              # %if.end.35
                                        #   in Loop: Header=BB26_8 Depth=1
	jmp	.LBB26_20
.LBB26_15:                              # %if.else
                                        #   in Loop: Header=BB26_8 Depth=1
	cmpb	$0, -125(%rbp)
	je	.LBB26_17
# BB#16:                                # %if.then.37
                                        #   in Loop: Header=BB26_8 Depth=1
	movabsq	$.L.str.51, %rsi
	movq	stdout, %rdi
	movzbl	-125(%rbp), %edx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -228(%rbp)        # 4-byte Spill
.LBB26_17:                              # %if.end.40
                                        #   in Loop: Header=BB26_8 Depth=1
	movq	-104(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB26_19
# BB#18:                                # %if.then.43
                                        #   in Loop: Header=BB26_8 Depth=1
	leaq	-96(%rbp), %rsi
	movl	$1, %eax
	movl	%eax, %ecx
	movq	$-1, %rdx
	movq	-112(%rbp), %rdi
	movq	%rdx, -240(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-240(%rbp), %r8         # 8-byte Reload
	movq	%rcx, -248(%rbp)        # 8-byte Spill
	movq	%r8, %rcx
	movq	-248(%rbp), %r8         # 8-byte Reload
	callq	xpalloc
	movq	%rax, -112(%rbp)
.LBB26_19:                              # %if.end.45
                                        #   in Loop: Header=BB26_8 Depth=1
	movl	-124(%rbp), %eax
	movb	%al, %cl
	movq	-104(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -104(%rbp)
	movq	-112(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
.LBB26_20:                              # %if.end.47
                                        #   in Loop: Header=BB26_8 Depth=1
	jmp	.LBB26_8
.LBB26_21:                              # %while.end
	cmpb	$0, -125(%rbp)
	je	.LBB26_25
# BB#22:                                # %if.then.49
	movabsq	$.L.str.52, %rsi
	movq	stdout, %rdi
	movb	$0, %al
	callq	fprintf
	testb	$1, -193(%rbp)
	movl	%eax, -252(%rbp)        # 4-byte Spill
	je	.LBB26_24
# BB#23:                                # %if.then.52
	movq	stdin, %rdi
	callq	fileno
	leaq	-192(%rbp), %rsi
	xorl	%edx, %edx
	movl	%eax, %edi
	callq	emacs_set_tty
	movq	stdin, %rdi
	movl	%eax, -256(%rbp)        # 4-byte Spill
	callq	fileno
	xorl	%esi, %esi
	movl	%eax, %edi
	callq	set_binary_mode
	movl	%eax, -260(%rbp)        # 4-byte Spill
.LBB26_24:                              # %if.end.57
	jmp	.LBB26_25
.LBB26_25:                              # %if.end.58
	cmpq	$0, -104(%rbp)
	jne	.LBB26_28
# BB#26:                                # %lor.lhs.false
	cmpl	$10, -124(%rbp)
	je	.LBB26_28
# BB#27:                                # %lor.lhs.false.62
	cmpl	$13, -124(%rbp)
	jne	.LBB26_29
.LBB26_28:                              # %if.then.65
	movq	-112(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	make_string
	movq	%rax, -120(%rbp)
	movq	-112(%rbp), %rdi
	callq	xfree
	jmp	.LBB26_30
.LBB26_29:                              # %if.else.67
	movq	-112(%rbp), %rdi
	callq	xfree
	movabsq	$.L.str.53, %rdi
	movb	$0, %al
	callq	error
.LBB26_30:                              # %if.end.68
	testb	$1, -49(%rbp)
	je	.LBB26_35
# BB#31:                                # %if.then.70
	movq	-120(%rbp), %rdi
	movq	-80(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	jne	.LBB26_33
# BB#32:                                # %cond.true
	movq	-80(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	jmp	.LBB26_34
.LBB26_33:                              # %cond.false
	movq	-80(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
.LBB26_34:                              # %cond.end
	movq	-280(%rbp), %rax        # 8-byte Reload
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	string_to_object
	movq	%rax, -120(%rbp)
.LBB26_35:                              # %if.end.75
	movq	-120(%rbp), %rax
	addq	$272, %rsp              # imm = 0x110
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end26:
	.size	read_minibuf_noninteractive, .Lfunc_end26-read_minibuf_noninteractive
	.cfi_endproc

	.align	16, 0x90
	.type	choose_minibuf_frame,@function
choose_minibuf_frame:                   # @choose_minibuf_frame
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
	subq	$80, %rsp
	movq	selected_frame, %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB27_1
	jmp	.LBB27_8
.LBB27_1:                               # %land.lhs.true
	movq	selected_frame, %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB27_8
# BB#2:                                 # %land.lhs.true.1
	movq	minibuf_window, %rax
	movq	selected_frame, %rcx
	subq	$5, %rcx
	cmpq	56(%rcx), %rax
	je	.LBB27_8
# BB#3:                                 # %if.then
	xorl	%edi, %edi
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB27_5
# BB#4:                                 # %if.then.8
	callq	emacs_abort
.LBB27_5:                               # %if.end
	movq	minibuf_window, %rdi
	callq	XWINDOW
	movq	80(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB27_6
	jmp	.LBB27_7
.LBB27_6:                               # %if.then.11
	xorl	%eax, %eax
	movq	-8(%rbp), %rcx
	movq	56(%rcx), %rdi
	movq	-16(%rbp), %rsi
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	set_window_buffer
.LBB27_7:                               # %if.end.13
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, minibuf_window
.LBB27_8:                               # %if.end.15
	movq	Vframe_list, %rax
	movq	%rax, -24(%rbp)
.LBB27_9:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -41(%rbp)          # 1-byte Spill
	jne	.LBB27_11
# BB#10:                                # %land.rhs
                                        #   in Loop: Header=BB27_9 Depth=1
	movb	$1, %al
	movq	-24(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -32(%rbp)
	movb	%al, -41(%rbp)          # 1-byte Spill
.LBB27_11:                              # %land.end
                                        #   in Loop: Header=BB27_9 Depth=1
	movb	-41(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB27_12
	jmp	.LBB27_18
.LBB27_12:                              # %for.body
                                        #   in Loop: Header=BB27_9 Depth=1
	movq	-32(%rbp), %rax
	subq	$5, %rax
	movq	48(%rax), %rdi
	callq	XWINDOW
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB27_16
# BB#13:                                # %land.lhs.true.22
                                        #   in Loop: Header=BB27_9 Depth=1
	movq	-32(%rbp), %rax
	cmpq	selected_frame, %rax
	jne	.LBB27_15
# BB#14:                                # %land.lhs.true.25
                                        #   in Loop: Header=BB27_9 Depth=1
	cmpq	$0, minibuf_level
	jg	.LBB27_16
.LBB27_15:                              # %if.then.28
                                        #   in Loop: Header=BB27_9 Depth=1
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	Fframe_first_window
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	Fset_frame_selected_window
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB27_16:                              # %if.end.32
                                        #   in Loop: Header=BB27_9 Depth=1
	jmp	.LBB27_17
.LBB27_17:                              # %for.inc
                                        #   in Loop: Header=BB27_9 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB27_9
.LBB27_18:                              # %for.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	choose_minibuf_frame, .Lfunc_end27-choose_minibuf_frame
	.cfi_endproc

	.align	16, 0x90
	.type	read_minibuf_unwind,@function
read_minibuf_unwind:                    # @read_minibuf_unwind
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
	subq	$96, %rsp
	movq	minibuf_level, %rax
	addq	$-1, %rax
	movq	%rax, minibuf_level
	movq	minibuf_window, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	XWINDOW
	movq	80(%rax), %rdi
	callq	Fset_buffer
	movq	minibuf_save_list, %rdi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	Fcar
	movq	%rax, minibuf_prompt
	movq	minibuf_save_list, %rdi
	callq	Fcdr
	movq	%rax, minibuf_save_list
	movq	minibuf_save_list, %rdi
	callq	Fcar
	sarq	$2, %rax
	movq	%rax, minibuf_prompt_width
	movq	minibuf_save_list, %rdi
	callq	Fcdr
	movq	%rax, minibuf_save_list
	movq	minibuf_save_list, %rdi
	callq	Fcar
	movq	%rax, globals+984
	movq	minibuf_save_list, %rdi
	callq	Fcdr
	movq	%rax, minibuf_save_list
	movq	minibuf_save_list, %rdi
	callq	Fcar
	movq	%rax, globals+400
	movq	minibuf_save_list, %rdi
	callq	Fcdr
	movq	%rax, minibuf_save_list
	movq	minibuf_save_list, %rdi
	callq	Fcar
	movq	%rax, globals+1504
	movq	minibuf_save_list, %rdi
	callq	Fcdr
	movq	%rax, minibuf_save_list
	movq	minibuf_save_list, %rdi
	callq	Fcar
	movq	%rax, globals+1512
	movq	minibuf_save_list, %rdi
	callq	Fcdr
	movq	%rax, minibuf_save_list
	movq	minibuf_save_list, %rdi
	callq	Fcar
	movq	%rax, globals+1728
	movq	minibuf_save_list, %rdi
	callq	Fcdr
	movq	%rax, minibuf_save_list
	movq	minibuf_save_list, %rdi
	callq	Fcdr
	movq	%rax, minibuf_save_list
	callq	SPECPDL_INDEX
	movl	$547, %edi              # imm = 0x223
	movq	%rax, -24(%rbp)
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
	movl	$544, %edi              # imm = 0x220
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
	movq	globals+416, %rax
	movq	%rax, -8(%rbp)
	callq	Ferase_buffer
	xorl	%edi, %edi
	movq	-8(%rbp), %rsi
	movq	%rsi, globals+416
	movq	-24(%rbp), %rsi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	cmpq	$0, minibuf_level
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jne	.LBB28_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	XWINDOW
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	resize_mini_window
	movb	%al, -73(%rbp)          # 1-byte Spill
.LBB28_2:                               # %if.end
	movabsq	$.L.str.3, %rdi
	callq	intern
	movq	%rax, %rdi
	callq	call0
	movq	%rax, -88(%rbp)         # 8-byte Spill
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	read_minibuf_unwind, .Lfunc_end28-read_minibuf_unwind
	.cfi_endproc

	.align	16, 0x90
	.type	run_exit_minibuf_hook,@function
run_exit_minibuf_hook:                  # @run_exit_minibuf_hook
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
	movl	$664, %edi              # imm = 0x298
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	safe_run_hooks
	popq	%rbp
	retq
.Lfunc_end29:
	.size	run_exit_minibuf_hook, .Lfunc_end29-run_exit_minibuf_hook
	.cfi_endproc

	.align	16, 0x90
	.type	string_to_object,@function
string_to_object:                       # @string_to_object
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB30_1
	jmp	.LBB30_9
.LBB30_1:                               # %land.lhs.true
	movq	-8(%rbp), %rdi
	callq	SCHARS
	cmpq	$0, %rax
	jne	.LBB30_9
# BB#2:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB30_3
	jmp	.LBB30_4
.LBB30_3:                               # %if.then.3
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB30_8
.LBB30_4:                               # %if.else
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB30_7
# BB#5:                                 # %land.lhs.true.6
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB30_6
	jmp	.LBB30_7
.LBB30_6:                               # %if.then.9
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB30_7:                               # %if.end
	jmp	.LBB30_8
.LBB30_8:                               # %if.end.12
	jmp	.LBB30_9
.LBB30_9:                               # %if.end.13
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	Fread_from_string
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	Fcdr
	sarq	$2, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	SCHARS
	movq	-72(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB30_19
# BB#10:                                # %if.then.21
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	string_char_to_byte
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB30_11:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	SBYTES
	movq	-80(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	jge	.LBB30_18
# BB#12:                                # %for.body
                                        #   in Loop: Header=BB30_11 Depth=1
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	SREF
	movzbl	%al, %ecx
	movl	%ecx, -44(%rbp)
	cmpl	$32, -44(%rbp)
	je	.LBB30_16
# BB#13:                                # %land.lhs.true.30
                                        #   in Loop: Header=BB30_11 Depth=1
	cmpl	$9, -44(%rbp)
	je	.LBB30_16
# BB#14:                                # %land.lhs.true.33
                                        #   in Loop: Header=BB30_11 Depth=1
	cmpl	$10, -44(%rbp)
	je	.LBB30_16
# BB#15:                                # %if.then.36
	movabsq	$.L.str.54, %rdi
	movb	$0, %al
	callq	error
.LBB30_16:                              # %if.end.37
                                        #   in Loop: Header=BB30_11 Depth=1
	jmp	.LBB30_17
.LBB30_17:                              # %for.inc
                                        #   in Loop: Header=BB30_11 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB30_11
.LBB30_18:                              # %for.end
	jmp	.LBB30_19
.LBB30_19:                              # %if.end.38
	movq	-24(%rbp), %rdi
	callq	Fcar
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	string_to_object, .Lfunc_end30-string_to_object
	.cfi_endproc

	.type	minibuf_level,@object   # @minibuf_level
	.comm	minibuf_level,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Window is not a minibuffer window"
	.size	.L.str, 34

	.type	Vminibuffer_list,@object # @Vminibuffer_list
	.comm	Vminibuffer_list,8,8
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Cannot do completion in the prompt"
	.size	.L.str.1, 35

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	" *Minibuf-%ld*"
	.size	.L.str.2, 15

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"minibuffer-inactive-mode"
	.size	.L.str.3, 25

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"%s (default %s): "
	.size	.L.str.4, 18

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"internal-complete-buffer"
	.size	.L.str.5, 25

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Bad data in guts of obarray"
	.size	.L.str.6, 28

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"completing-read-function"
	.size	.L.str.7, 25

	.type	minibuf_prompt,@object  # @minibuf_prompt
	.local	minibuf_prompt
	.comm	minibuf_prompt,8,8
	.type	minibuf_save_list,@object # @minibuf_save_list
	.local	minibuf_save_list
	.comm	minibuf_save_list,8,8
	.type	last_minibuf_string,@object # @last_minibuf_string
	.comm	last_minibuf_string,8,8
	.type	syms_of_minibuf.o_fwd,@object # @syms_of_minibuf.o_fwd
	.local	syms_of_minibuf.o_fwd
	.comm	syms_of_minibuf.o_fwd,16,8
	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"read-expression-history"
	.size	.L.str.8, 24

	.type	syms_of_minibuf.o_fwd.9,@object # @syms_of_minibuf.o_fwd.9
	.local	syms_of_minibuf.o_fwd.9
	.comm	syms_of_minibuf.o_fwd.9,16,8
	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"read-buffer-function"
	.size	.L.str.10, 21

	.type	syms_of_minibuf.b_fwd,@object # @syms_of_minibuf.b_fwd
	.local	syms_of_minibuf.b_fwd
	.comm	syms_of_minibuf.b_fwd,16,8
	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"read-buffer-completion-ignore-case"
	.size	.L.str.11, 35

	.type	syms_of_minibuf.o_fwd.12,@object # @syms_of_minibuf.o_fwd.12
	.local	syms_of_minibuf.o_fwd.12
	.comm	syms_of_minibuf.o_fwd.12,16,8
	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"minibuffer-setup-hook"
	.size	.L.str.13, 22

	.type	syms_of_minibuf.o_fwd.14,@object # @syms_of_minibuf.o_fwd.14
	.local	syms_of_minibuf.o_fwd.14
	.comm	syms_of_minibuf.o_fwd.14,16,8
	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"minibuffer-exit-hook"
	.size	.L.str.15, 21

	.type	syms_of_minibuf.o_fwd.16,@object # @syms_of_minibuf.o_fwd.16
	.local	syms_of_minibuf.o_fwd.16
	.comm	syms_of_minibuf.o_fwd.16,16,8
	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"history-length"
	.size	.L.str.17, 15

	.type	syms_of_minibuf.b_fwd.18,@object # @syms_of_minibuf.b_fwd.18
	.local	syms_of_minibuf.b_fwd.18
	.comm	syms_of_minibuf.b_fwd.18,16,8
	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"history-delete-duplicates"
	.size	.L.str.19, 26

	.type	syms_of_minibuf.o_fwd.20,@object # @syms_of_minibuf.o_fwd.20
	.local	syms_of_minibuf.o_fwd.20
	.comm	syms_of_minibuf.o_fwd.20,16,8
	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"history-add-new-input"
	.size	.L.str.21, 22

	.type	syms_of_minibuf.b_fwd.22,@object # @syms_of_minibuf.b_fwd.22
	.local	syms_of_minibuf.b_fwd.22
	.comm	syms_of_minibuf.b_fwd.22,16,8
	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"completion-ignore-case"
	.size	.L.str.23, 23

	.type	syms_of_minibuf.b_fwd.24,@object # @syms_of_minibuf.b_fwd.24
	.local	syms_of_minibuf.b_fwd.24
	.comm	syms_of_minibuf.b_fwd.24,16,8
	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"enable-recursive-minibuffers"
	.size	.L.str.25, 29

	.type	syms_of_minibuf.o_fwd.26,@object # @syms_of_minibuf.o_fwd.26
	.local	syms_of_minibuf.o_fwd.26
	.comm	syms_of_minibuf.o_fwd.26,16,8
	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"minibuffer-completion-table"
	.size	.L.str.27, 28

	.type	syms_of_minibuf.o_fwd.28,@object # @syms_of_minibuf.o_fwd.28
	.local	syms_of_minibuf.o_fwd.28
	.comm	syms_of_minibuf.o_fwd.28,16,8
	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"minibuffer-completion-predicate"
	.size	.L.str.29, 32

	.type	syms_of_minibuf.o_fwd.30,@object # @syms_of_minibuf.o_fwd.30
	.local	syms_of_minibuf.o_fwd.30
	.comm	syms_of_minibuf.o_fwd.30,16,8
	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"minibuffer-completion-confirm"
	.size	.L.str.31, 30

	.type	syms_of_minibuf.o_fwd.32,@object # @syms_of_minibuf.o_fwd.32
	.local	syms_of_minibuf.o_fwd.32
	.comm	syms_of_minibuf.o_fwd.32,16,8
	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"minibuffer-completing-file-name"
	.size	.L.str.33, 32

	.type	syms_of_minibuf.o_fwd.34,@object # @syms_of_minibuf.o_fwd.34
	.local	syms_of_minibuf.o_fwd.34
	.comm	syms_of_minibuf.o_fwd.34,16,8
	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"minibuffer-help-form"
	.size	.L.str.35, 21

	.type	syms_of_minibuf.o_fwd.36,@object # @syms_of_minibuf.o_fwd.36
	.local	syms_of_minibuf.o_fwd.36
	.comm	syms_of_minibuf.o_fwd.36,16,8
	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"minibuffer-history-variable"
	.size	.L.str.37, 28

	.type	syms_of_minibuf.o_fwd.38,@object # @syms_of_minibuf.o_fwd.38
	.local	syms_of_minibuf.o_fwd.38
	.comm	syms_of_minibuf.o_fwd.38,16,8
	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"minibuffer-history-position"
	.size	.L.str.39, 28

	.type	syms_of_minibuf.b_fwd.40,@object # @syms_of_minibuf.b_fwd.40
	.local	syms_of_minibuf.b_fwd.40
	.comm	syms_of_minibuf.b_fwd.40,16,8
	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"minibuffer-auto-raise"
	.size	.L.str.41, 22

	.type	syms_of_minibuf.o_fwd.42,@object # @syms_of_minibuf.o_fwd.42
	.local	syms_of_minibuf.o_fwd.42
	.comm	syms_of_minibuf.o_fwd.42,16,8
	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"completion-regexp-list"
	.size	.L.str.43, 23

	.type	syms_of_minibuf.b_fwd.44,@object # @syms_of_minibuf.b_fwd.44
	.local	syms_of_minibuf.b_fwd.44
	.comm	syms_of_minibuf.b_fwd.44,16,8
	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"minibuffer-allow-text-properties"
	.size	.L.str.45, 33

	.type	syms_of_minibuf.o_fwd.46,@object # @syms_of_minibuf.o_fwd.46
	.local	syms_of_minibuf.o_fwd.46
	.comm	syms_of_minibuf.o_fwd.46,16,8
	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"minibuffer-prompt-properties"
	.size	.L.str.47, 29

	.type	syms_of_minibuf.o_fwd.48,@object # @syms_of_minibuf.o_fwd.48
	.local	syms_of_minibuf.o_fwd.48
	.comm	syms_of_minibuf.o_fwd.48,16,8
	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"read-hide-char"
	.size	.L.str.49, 15

	.type	Sactive_minibuffer_window,@object # @Sactive_minibuffer_window
	.data
	.align	8
Sactive_minibuffer_window:
	.quad	167772160               # 0xa000000
	.quad	Factive_minibuffer_window
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.55
	.quad	0
	.quad	0
	.size	Sactive_minibuffer_window, 48

	.type	Sminibuffer_depth,@object # @Sminibuffer_depth
	.align	8
Sminibuffer_depth:
	.quad	167772160               # 0xa000000
	.quad	Fminibuffer_depth
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.63
	.quad	0
	.quad	0
	.size	Sminibuffer_depth, 48

	.type	Sminibuffer_prompt,@object # @Sminibuffer_prompt
	.align	8
Sminibuffer_prompt:
	.quad	167772160               # 0xa000000
	.quad	Fminibuffer_prompt
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.64
	.quad	0
	.quad	0
	.size	Sminibuffer_prompt, 48

	.type	Sminibuffer_prompt_end,@object # @Sminibuffer_prompt_end
	.align	8
Sminibuffer_prompt_end:
	.quad	167772160               # 0xa000000
	.quad	Fminibuffer_prompt_end
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.66
	.quad	0
	.quad	0
	.size	Sminibuffer_prompt_end, 48

	.type	Sminibuffer_contents,@object # @Sminibuffer_contents
	.align	8
Sminibuffer_contents:
	.quad	167772160               # 0xa000000
	.quad	Fminibuffer_contents
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.67
	.quad	0
	.quad	0
	.size	Sminibuffer_contents, 48

	.type	Sminibuffer_contents_no_properties,@object # @Sminibuffer_contents_no_properties
	.align	8
Sminibuffer_contents_no_properties:
	.quad	167772160               # 0xa000000
	.quad	Fminibuffer_contents_no_properties
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.68
	.quad	0
	.quad	0
	.size	Sminibuffer_contents_no_properties, 48

	.type	Sminibuffer_completion_contents,@object # @Sminibuffer_completion_contents
	.align	8
Sminibuffer_completion_contents:
	.quad	167772160               # 0xa000000
	.quad	Fminibuffer_completion_contents
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.69
	.quad	0
	.quad	0
	.size	Sminibuffer_completion_contents, 48

	.type	.L.str.50,@object       # @.str.50
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.50:
	.asciz	"Command attempted to use minibuffer while in minibuffer"
	.size	.L.str.50, 56

	.type	minibuf_prompt_width,@object # @minibuf_prompt_width
	.local	minibuf_prompt_width
	.comm	minibuf_prompt_width,8,8
	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"%c"
	.size	.L.str.51, 3

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"\n"
	.size	.L.str.52, 2

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"Error reading from stdin"
	.size	.L.str.53, 25

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"Trailing garbage following expression"
	.size	.L.str.54, 38

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"active-minibuffer-window"
	.size	.L.str.55, 25

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"set-minibuffer-window"
	.size	.L.str.56, 22

	.type	Sset_minibuffer_window,@object # @Sset_minibuffer_window
	.data
	.align	8
Sset_minibuffer_window:
	.quad	167772160               # 0xa000000
	.quad	Fset_minibuffer_window
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.56
	.quad	0
	.quad	0
	.size	Sset_minibuffer_window, 48

	.type	.L.str.57,@object       # @.str.57
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.57:
	.asciz	"read-from-minibuffer"
	.size	.L.str.57, 21

	.type	Sread_from_minibuffer,@object # @Sread_from_minibuffer
	.data
	.align	8
Sread_from_minibuffer:
	.quad	167772160               # 0xa000000
	.quad	Fread_from_minibuffer
	.short	1                       # 0x1
	.short	7                       # 0x7
	.zero	4
	.quad	.L.str.57
	.quad	0
	.quad	0
	.size	Sread_from_minibuffer, 48

	.type	.L.str.58,@object       # @.str.58
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.58:
	.asciz	"read-string"
	.size	.L.str.58, 12

	.type	Sread_string,@object    # @Sread_string
	.data
	.align	8
Sread_string:
	.quad	167772160               # 0xa000000
	.quad	Fread_string
	.short	1                       # 0x1
	.short	5                       # 0x5
	.zero	4
	.quad	.L.str.58
	.quad	0
	.quad	0
	.size	Sread_string, 48

	.type	.L.str.59,@object       # @.str.59
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.59:
	.asciz	"read-command"
	.size	.L.str.59, 13

	.type	Sread_command,@object   # @Sread_command
	.data
	.align	8
Sread_command:
	.quad	167772160               # 0xa000000
	.quad	Fread_command
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.59
	.quad	0
	.quad	0
	.size	Sread_command, 48

	.type	.L.str.60,@object       # @.str.60
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.60:
	.asciz	"read-variable"
	.size	.L.str.60, 14

	.type	Sread_variable,@object  # @Sread_variable
	.data
	.align	8
Sread_variable:
	.quad	167772160               # 0xa000000
	.quad	Fread_variable
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.60
	.quad	0
	.quad	0
	.size	Sread_variable, 48

	.type	Sinternal_complete_buffer,@object # @Sinternal_complete_buffer
	.align	8
Sinternal_complete_buffer:
	.quad	167772160               # 0xa000000
	.quad	Finternal_complete_buffer
	.short	3                       # 0x3
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.5
	.quad	0
	.quad	0
	.size	Sinternal_complete_buffer, 48

	.type	.L.str.61,@object       # @.str.61
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.61:
	.asciz	"read-buffer"
	.size	.L.str.61, 12

	.type	Sread_buffer,@object    # @Sread_buffer
	.data
	.align	8
Sread_buffer:
	.quad	167772160               # 0xa000000
	.quad	Fread_buffer
	.short	1                       # 0x1
	.short	4                       # 0x4
	.zero	4
	.quad	.L.str.61
	.quad	0
	.quad	0
	.size	Sread_buffer, 48

	.type	.L.str.62,@object       # @.str.62
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.62:
	.asciz	"read-no-blanks-input"
	.size	.L.str.62, 21

	.type	Sread_no_blanks_input,@object # @Sread_no_blanks_input
	.data
	.align	8
Sread_no_blanks_input:
	.quad	167772160               # 0xa000000
	.quad	Fread_no_blanks_input
	.short	1                       # 0x1
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.62
	.quad	0
	.quad	0
	.size	Sread_no_blanks_input, 48

	.type	.L.str.63,@object       # @.str.63
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.63:
	.asciz	"minibuffer-depth"
	.size	.L.str.63, 17

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"minibuffer-prompt"
	.size	.L.str.64, 18

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"minibufferp"
	.size	.L.str.65, 12

	.type	Sminibufferp,@object    # @Sminibufferp
	.data
	.align	8
Sminibufferp:
	.quad	167772160               # 0xa000000
	.quad	Fminibufferp
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.65
	.quad	0
	.quad	0
	.size	Sminibufferp, 48

	.type	.L.str.66,@object       # @.str.66
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.66:
	.asciz	"minibuffer-prompt-end"
	.size	.L.str.66, 22

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"minibuffer-contents"
	.size	.L.str.67, 20

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"minibuffer-contents-no-properties"
	.size	.L.str.68, 34

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"minibuffer-completion-contents"
	.size	.L.str.69, 31

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"try-completion"
	.size	.L.str.70, 15

	.type	Stry_completion,@object # @Stry_completion
	.data
	.align	8
Stry_completion:
	.quad	167772160               # 0xa000000
	.quad	Ftry_completion
	.short	2                       # 0x2
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.70
	.quad	0
	.quad	0
	.size	Stry_completion, 48

	.type	.L.str.71,@object       # @.str.71
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.71:
	.asciz	"all-completions"
	.size	.L.str.71, 16

	.type	Sall_completions,@object # @Sall_completions
	.data
	.align	8
Sall_completions:
	.quad	167772160               # 0xa000000
	.quad	Fall_completions
	.short	2                       # 0x2
	.short	4                       # 0x4
	.zero	4
	.quad	.L.str.71
	.quad	0
	.quad	0
	.size	Sall_completions, 48

	.type	.L.str.72,@object       # @.str.72
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.72:
	.asciz	"test-completion"
	.size	.L.str.72, 16

	.type	Stest_completion,@object # @Stest_completion
	.data
	.align	8
Stest_completion:
	.quad	167772160               # 0xa000000
	.quad	Ftest_completion
	.short	2                       # 0x2
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.72
	.quad	0
	.quad	0
	.size	Stest_completion, 48

	.type	.L.str.73,@object       # @.str.73
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.73:
	.asciz	"assoc-string"
	.size	.L.str.73, 13

	.type	Sassoc_string,@object   # @Sassoc_string
	.data
	.align	8
Sassoc_string:
	.quad	167772160               # 0xa000000
	.quad	Fassoc_string
	.short	2                       # 0x2
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.73
	.quad	0
	.quad	0
	.size	Sassoc_string, 48

	.type	.L.str.74,@object       # @.str.74
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.74:
	.asciz	"completing-read"
	.size	.L.str.74, 16

	.type	Scompleting_read,@object # @Scompleting_read
	.data
	.align	8
Scompleting_read:
	.quad	167772160               # 0xa000000
	.quad	Fcompleting_read
	.short	2                       # 0x2
	.short	8                       # 0x8
	.zero	4
	.quad	.L.str.74
	.quad	0
	.quad	0
	.size	Scompleting_read, 48


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
