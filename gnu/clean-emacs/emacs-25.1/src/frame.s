	.text
	.file	"frame.bc"
	.globl	decode_live_frame
	.align	16, 0x90
	.type	decode_live_frame,@function
decode_live_frame:                      # @decode_live_frame
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
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movq	selected_frame, %rax
	movq	%rax, -8(%rbp)
.LBB0_2:                                # %if.end
	movq	-8(%rbp), %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB0_3
	jmp	.LBB0_5
.LBB0_3:                                # %land.lhs.true
	movq	-8(%rbp), %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB0_5
# BB#4:                                 # %cond.true
	jmp	.LBB0_6
.LBB0_5:                                # %cond.false
	movl	$458, %edi              # imm = 0x1CA
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB0_6:                                # %cond.end
	movq	-8(%rbp), %rax
	subq	$5, %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	decode_live_frame, .Lfunc_end0-decode_live_frame
	.cfi_endproc

	.globl	decode_any_frame
	.align	16, 0x90
	.type	decode_any_frame,@function
decode_any_frame:                       # @decode_any_frame
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movq	selected_frame, %rax
	movq	%rax, -8(%rbp)
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB1_3
	jmp	.LBB1_4
.LBB1_3:                                # %cond.true
	jmp	.LBB1_5
.LBB1_4:                                # %cond.false
	movl	$461, %edi              # imm = 0x1CD
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB1_5:                                # %cond.end
	movq	-8(%rbp), %rax
	subq	$5, %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	decode_any_frame, .Lfunc_end1-decode_any_frame
	.cfi_endproc

	.globl	window_system_available
	.align	16, 0x90
	.type	window_system_available,@function
window_system_available:                # @window_system_available
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
	cmpq	$0, -8(%rbp)
	je	.LBB2_4
# BB#1:                                 # %cond.true
	movb	$1, %al
	movq	-8(%rbp), %rcx
	movq	208(%rcx), %rcx
	shrq	$23, %rcx
	andq	$7, %rcx
	movl	%ecx, %edx
	cmpl	$2, %edx
	movb	%al, -9(%rbp)           # 1-byte Spill
	je	.LBB2_3
# BB#2:                                 # %lor.rhs
	xorl	%eax, %eax
	movb	%al, %cl
	movb	%cl, -9(%rbp)           # 1-byte Spill
	jmp	.LBB2_3
.LBB2_3:                                # %lor.end
	movb	-9(%rbp), %al           # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -16(%rbp)         # 4-byte Spill
	jmp	.LBB2_5
.LBB2_4:                                # %cond.false
	cmpq	$0, x_display_list
	setne	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -16(%rbp)         # 4-byte Spill
.LBB2_5:                                # %cond.end
	movl	-16(%rbp), %eax         # 4-byte Reload
	cmpl	$0, %eax
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	popq	%rbp
	retq
.Lfunc_end2:
	.size	window_system_available, .Lfunc_end2-window_system_available
	.cfi_endproc

	.globl	decode_window_system_frame
	.align	16, 0x90
	.type	decode_window_system_frame,@function
decode_window_system_frame:             # @decode_window_system_frame
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
	callq	decode_live_frame
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	window_system_available
	testb	$1, %al
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	error
.LBB3_2:                                # %if.end
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	decode_window_system_frame, .Lfunc_end3-decode_window_system_frame
	.cfi_endproc

	.globl	check_window_system
	.align	16, 0x90
	.type	check_window_system,@function
check_window_system:                    # @check_window_system
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	window_system_available
	testb	$1, %al
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.1, %rax
	movabsq	$.L.str, %rcx
	cmpq	$0, -8(%rbp)
	cmovneq	%rcx, %rax
	movq	%rax, %rdi
	movb	$0, %al
	callq	error
.LBB4_2:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	check_window_system, .Lfunc_end4-check_window_system
	.cfi_endproc

	.globl	get_frame_param
	.align	16, 0x90
	.type	get_frame_param,@function
get_frame_param:                        # @get_frame_param
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	64(%rsi), %rsi
	callq	Fassq
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB5_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB5_3
.LBB5_2:                                # %if.end
	movq	-32(%rbp), %rdi
	callq	Fcdr
	movq	%rax, -8(%rbp)
.LBB5_3:                                # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	get_frame_param, .Lfunc_end5-get_frame_param
	.cfi_endproc

	.globl	frame_size_history_add
	.align	16, 0x90
	.type	frame_size_history_add,@function
frame_size_history_add:                 # @frame_size_history_add
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
	subq	$80, %rsp
	movl	$5, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	movl	%eax, %esi
	callq	make_lisp_ptr
	movq	%rax, -40(%rbp)
	movq	globals+2992, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB6_7
# BB#1:                                 # %land.lhs.true
	movq	globals+2992, %rax
	subq	$3, %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB6_7
# BB#2:                                 # %land.lhs.true.7
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	globals+2992, %rdx
	subq	$3, %rdx
	movq	(%rdx), %rdx
	sarq	$2, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB6_7
# BB#3:                                 # %if.then
	movq	globals+2992, %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	subq	$1, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rsi
	cmpl	$0, -20(%rbp)
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	jle	.LBB6_5
# BB#4:                                 # %cond.true
	movq	-8(%rbp), %rax
	movslq	288(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-8(%rbp), %rcx
	movslq	292(%rcx), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movslq	-20(%rbp), %rdx
	shlq	$2, %rdx
	addq	$2, %rdx
	movslq	-24(%rbp), %rsi
	shlq	$2, %rsi
	addq	$2, %rsi
	movq	%rax, %rdi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	-72(%rbp), %rcx         # 8-byte Reload
	callq	list4
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB6_6
.LBB6_5:                                # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB6_6:                                # %cond.end
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	-32(%rbp), %rcx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	list4
	movq	globals+2992, %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	%rax, globals+2992
.LBB6_7:                                # %if.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	frame_size_history_add, .Lfunc_end6-frame_size_history_add
	.cfi_endproc

	.globl	frame_inhibit_resize
	.align	16, 0x90
	.type	frame_inhibit_resize,@function
frame_inhibit_resize:                   # @frame_inhibit_resize
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
	movb	%sil, %al
	movl	$472, %esi              # imm = 0x1D8
	movq	%rdi, -8(%rbp)
	andb	$1, %al
	movb	%al, -9(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movl	%esi, %edi
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	get_frame_param
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$35, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB7_13
# BB#1:                                 # %cond.true
	movl	$901, %edi              # imm = 0x385
	movq	globals+2984, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movb	$1, %cl
	movq	-56(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	movb	%cl, -57(%rbp)          # 1-byte Spill
	je	.LBB7_12
# BB#2:                                 # %lor.lhs.false
	movq	globals+2984, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB7_4
# BB#3:                                 # %land.lhs.true
	movq	-24(%rbp), %rdi
	movq	globals+2984, %rsi
	callq	Fmemq
	xorl	%edi, %edi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movb	$1, %cl
	movq	-72(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	movb	%cl, -57(%rbp)          # 1-byte Spill
	jne	.LBB7_12
.LBB7_4:                                # %lor.lhs.false.9
	testb	$1, -9(%rbp)
	je	.LBB7_7
# BB#5:                                 # %land.lhs.true.11
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB7_7
# BB#6:                                 # %land.lhs.true.15
	movl	$471, %edi              # imm = 0x1D7
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movb	$1, %cl
	movq	-88(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	movb	%cl, -57(%rbp)          # 1-byte Spill
	jne	.LBB7_12
.LBB7_7:                                # %lor.lhs.false.19
	testb	$1, -9(%rbp)
	jne	.LBB7_10
# BB#8:                                 # %land.lhs.true.21
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB7_10
# BB#9:                                 # %land.lhs.true.25
	movl	$473, %edi              # imm = 0x1D9
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movb	$1, %cl
	movq	-104(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	movb	%cl, -57(%rbp)          # 1-byte Spill
	jne	.LBB7_12
.LBB7_10:                               # %lor.lhs.false.29
	movb	$1, %al
	movq	-8(%rbp), %rcx
	movq	208(%rcx), %rcx
	shrq	$23, %rcx
	andq	$7, %rcx
	movl	%ecx, %edx
	cmpl	$1, %edx
	movb	%al, -57(%rbp)          # 1-byte Spill
	je	.LBB7_12
# BB#11:                                # %lor.rhs
	xorl	%eax, %eax
	movb	%al, %cl
	movb	%cl, -57(%rbp)          # 1-byte Spill
	jmp	.LBB7_12
.LBB7_12:                               # %lor.end
	movb	-57(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	jmp	.LBB7_19
.LBB7_13:                               # %cond.false
	testb	$1, -9(%rbp)
	je	.LBB7_15
# BB#14:                                # %land.lhs.true.38
	movb	$1, %al
	movq	-8(%rbp), %rcx
	movq	208(%rcx), %rcx
	shrq	$38, %rcx
	andq	$1, %rcx
	testq	$1, %rcx
	movb	%al, -109(%rbp)         # 1-byte Spill
	jne	.LBB7_18
.LBB7_15:                               # %lor.rhs.44
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, -9(%rbp)
	movb	%cl, -110(%rbp)         # 1-byte Spill
	jne	.LBB7_17
# BB#16:                                # %land.rhs
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$39, %rax
	andq	$1, %rax
	movb	%al, %cl
	movb	%cl, -110(%rbp)         # 1-byte Spill
.LBB7_17:                               # %land.end
	movb	-110(%rbp), %al         # 1-byte Reload
	movb	%al, -109(%rbp)         # 1-byte Spill
.LBB7_18:                               # %lor.end.51
	movb	-109(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -108(%rbp)        # 4-byte Spill
.LBB7_19:                               # %cond.end
	movl	-108(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	setne	%cl
	andb	$1, %cl
	movb	%cl, -33(%rbp)
	testb	$1, -33(%rbp)
	je	.LBB7_28
# BB#20:                                # %land.lhs.true.57
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	je	.LBB7_28
# BB#21:                                # %if.then
	movl	$457, %edi              # imm = 0x1C9
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	testb	$1, -9(%rbp)
	movq	%rax, -128(%rbp)        # 8-byte Spill
	je	.LBB7_23
# BB#22:                                # %cond.true.68
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB7_24
.LBB7_23:                               # %cond.false.70
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB7_24:                               # %cond.end.72
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rcx
	movq	208(%rcx), %rcx
	shrq	$35, %rcx
	andq	$1, %rcx
	testq	$1, %rcx
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	je	.LBB7_26
# BB#25:                                # %cond.true.80
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB7_27
.LBB7_26:                               # %cond.false.82
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -160(%rbp)        # 8-byte Spill
.LBB7_27:                               # %cond.end.84
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	globals+2984, %rcx
	movq	-32(%rbp), %r8
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	-152(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	list5
	xorl	%r9d, %r9d
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movq	%rax, %r8
	callq	frame_size_history_add
.LBB7_28:                               # %if.end
	movb	-33(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	frame_inhibit_resize, .Lfunc_end7-frame_inhibit_resize
	.cfi_endproc

	.globl	Fframep
	.align	16, 0x90
	.type	Fframep,@function
Fframep:                                # @Fframep
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB8_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB8_9
.LBB8_2:                                # %if.end
	movq	-16(%rbp), %rax
	movq	203(%rax), %rax
	shrq	$23, %rax
	movl	%eax, %ecx
	andl	$7, %ecx
	movl	%ecx, %eax
	movl	%eax, %ecx
	subl	$5, %ecx
	movq	%rax, -24(%rbp)         # 8-byte Spill
	movl	%ecx, -28(%rbp)         # 4-byte Spill
	ja	.LBB8_8
# BB#10:                                # %if.end
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	.LJTI8_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB8_3:                                # %sw.bb
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB8_9
.LBB8_4:                                # %sw.bb.3
	movl	$1045, %edi             # imm = 0x415
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB8_9
.LBB8_5:                                # %sw.bb.5
	movl	$1009, %edi             # imm = 0x3F1
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB8_9
.LBB8_6:                                # %sw.bb.7
	movl	$744, %edi              # imm = 0x2E8
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB8_9
.LBB8_7:                                # %sw.bb.9
	movl	$708, %edi              # imm = 0x2C4
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB8_9
.LBB8_8:                                # %sw.default
	callq	emacs_abort
.LBB8_9:                                # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	Fframep, .Lfunc_end8-Fframep
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI8_0:
	.quad	.LBB8_3
	.quad	.LBB8_3
	.quad	.LBB8_4
	.quad	.LBB8_6
	.quad	.LBB8_5
	.quad	.LBB8_7

	.text
	.globl	Fframe_live_p
	.align	16, 0x90
	.type	Fframe_live_p,@function
Fframe_live_p:                          # @Fframe_live_p
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB9_1
	jmp	.LBB9_3
.LBB9_1:                                # %land.lhs.true
	movq	-8(%rbp), %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB9_3
# BB#2:                                 # %cond.true
	movq	-8(%rbp), %rdi
	callq	Fframep
	movq	%rax, -16(%rbp)         # 8-byte Spill
	jmp	.LBB9_4
.LBB9_3:                                # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB9_4:                                # %cond.end
	movq	-16(%rbp), %rax         # 8-byte Reload
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	Fframe_live_p, .Lfunc_end9-Fframe_live_p
	.cfi_endproc

	.globl	Fwindow_system
	.align	16, 0x90
	.type	Fwindow_system,@function
Fwindow_system:                         # @Fwindow_system
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
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB10_2
# BB#1:                                 # %if.then
	movq	selected_frame, %rax
	movq	%rax, -16(%rbp)
.LBB10_2:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	Fframep
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB10_4
# BB#3:                                 # %if.then.4
	movl	$461, %edi              # imm = 0x1CD
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB10_4:                               # %if.end.6
	movl	$901, %edi              # imm = 0x385
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB10_6
# BB#5:                                 # %if.then.9
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB10_7:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	Fwindow_system, .Lfunc_end10-Fwindow_system
	.cfi_endproc

	.globl	Fframe_windows_min_size
	.align	16, 0x90
	.type	Fframe_windows_min_size,@function
Fframe_windows_min_size:                # @Fframe_windows_min_size
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
	movl	$2, %eax
                                        # kill: RAX<def> EAX<kill>
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	popq	%rbp
	retq
.Lfunc_end11:
	.size	Fframe_windows_min_size, .Lfunc_end11-Fframe_windows_min_size
	.cfi_endproc

	.globl	adjust_frame_size
	.align	16, 0x90
	.type	adjust_frame_size,@function
adjust_frame_size:                      # @adjust_frame_size
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
	subq	$592, %rsp              # imm = 0x250
	movb	%r8b, %al
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	andb	$1, %al
	movb	%al, -21(%rbp)
	movq	%r9, -32(%rbp)
	movq	-8(%rbp), %rdi
	movl	364(%rdi), %ecx
	movl	%ecx, -36(%rbp)
	movq	-8(%rbp), %rdi
	movl	368(%rdi), %ecx
	movl	%ecx, -40(%rbp)
	movq	-8(%rbp), %rdi
	movl	312(%rdi), %ecx
	movl	%ecx, -44(%rbp)
	movq	-8(%rbp), %rdi
	movl	316(%rdi), %ecx
	movl	%ecx, -48(%rbp)
	movq	-8(%rbp), %rdi
	movl	272(%rdi), %ecx
	movl	%ecx, -52(%rbp)
	movq	-8(%rbp), %rdi
	movl	276(%rdi), %ecx
	movl	%ecx, -56(%rbp)
	movq	-8(%rbp), %rdi
	movl	312(%rdi), %ecx
	movq	-8(%rbp), %rdi
	movl	332(%rdi), %edx
	shll	$1, %edx
	subl	%edx, %ecx
	movl	%ecx, -68(%rbp)
	movq	-8(%rbp), %rdi
	movl	316(%rdi), %ecx
	movq	-8(%rbp), %rdi
	movl	360(%rdi), %edx
	movq	-8(%rbp), %rdi
	addl	220(%rdi), %edx
	subl	%edx, %ecx
	movq	-8(%rbp), %rdi
	movl	332(%rdi), %edx
	shll	$1, %edx
	subl	%edx, %ecx
	movl	%ecx, -72(%rbp)
	movq	-8(%rbp), %rdi
	movq	40(%rdi), %rdi
	callq	XWINDOW
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movl	256(%rax), %ecx
	movl	%ecx, -92(%rbp)
	movq	-88(%rbp), %rax
	movl	260(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdi
	movl	%ecx, -172(%rbp)        # 4-byte Spill
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB12_1
	jmp	.LBB12_4
.LBB12_1:                               # %land.lhs.true
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdi
	callq	XWINDOW
	movq	8(%rax), %rax
	subq	$5, %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB12_4
# BB#2:                                 # %land.lhs.true.13
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	56(%rcx), %rax
	je	.LBB12_4
# BB#3:                                 # %cond.true
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdi
	callq	XWINDOW
	movl	260(%rax), %ecx
	movl	%ecx, -176(%rbp)        # 4-byte Spill
	jmp	.LBB12_5
.LBB12_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, -176(%rbp)        # 4-byte Spill
	jmp	.LBB12_5
.LBB12_5:                               # %cond.end
	movl	-176(%rbp), %eax        # 4-byte Reload
	movl	-172(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movl	%ecx, -96(%rbp)
	movq	-8(%rbp), %rdx
	movl	288(%rdx), %eax
	movl	%eax, -108(%rbp)
	movq	-8(%rbp), %rdx
	movl	292(%rdx), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -12(%rbp)
	jl	.LBB12_7
# BB#6:                                 # %cond.true.22
	movl	-12(%rbp), %eax
	movl	%eax, -180(%rbp)        # 4-byte Spill
	jmp	.LBB12_8
.LBB12_7:                               # %cond.false.23
	movl	-108(%rbp), %eax
	movl	%eax, -180(%rbp)        # 4-byte Spill
.LBB12_8:                               # %cond.end.24
	movl	-180(%rbp), %eax        # 4-byte Reload
	movl	%eax, -116(%rbp)
	cmpl	$0, -16(%rbp)
	jl	.LBB12_10
# BB#9:                                 # %cond.true.27
	movl	-16(%rbp), %eax
	movl	%eax, -184(%rbp)        # 4-byte Spill
	jmp	.LBB12_11
.LBB12_10:                              # %cond.false.28
	movl	-112(%rbp), %eax
	movl	%eax, -184(%rbp)        # 4-byte Spill
.LBB12_11:                              # %cond.end.29
	movl	-184(%rbp), %eax        # 4-byte Reload
	movl	$5, %esi
	movl	%eax, -120(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	make_lisp_ptr
	movl	$162, %edi
	movq	%rax, -144(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	-116(%rbp), %edx
	movl	-120(%rbp), %ecx
	movq	-32(%rbp), %rdi
	movslq	-20(%rbp), %r8
	shlq	$2, %r8
	addq	$2, %r8
	movq	%r8, %rsi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	movl	%edx, -204(%rbp)        # 4-byte Spill
	movl	%ecx, -208(%rbp)        # 4-byte Spill
	callq	list2
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	-200(%rbp), %rsi        # 8-byte Reload
	movl	-204(%rbp), %edx        # 4-byte Reload
	movl	-208(%rbp), %ecx        # 4-byte Reload
	movq	%rax, %r8
	callq	frame_size_history_add
	movl	$901, %edi              # imm = 0x385
	movq	-144(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	cmpl	$5, -20(%rbp)
	movq	%rax, -224(%rbp)        # 8-byte Spill
	jne	.LBB12_13
# BB#12:                                # %cond.true.39
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -232(%rbp)        # 8-byte Spill
	jmp	.LBB12_14
.LBB12_13:                              # %cond.false.41
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -232(%rbp)        # 8-byte Spill
.LBB12_14:                              # %cond.end.43
	movq	-232(%rbp), %rax        # 8-byte Reload
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	-224(%rbp), %rsi        # 8-byte Reload
	movq	-240(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	frame_windows_min_size
	xorl	%edi, %edi
	movl	%eax, -76(%rbp)
	movq	-144(%rbp), %rcx
	movq	%rcx, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	cmpl	$5, -20(%rbp)
	movq	%rax, -256(%rbp)        # 8-byte Spill
	jne	.LBB12_16
# BB#15:                                # %cond.true.50
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -264(%rbp)        # 8-byte Spill
	jmp	.LBB12_17
.LBB12_16:                              # %cond.false.52
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -264(%rbp)        # 8-byte Spill
.LBB12_17:                              # %cond.end.54
	movq	-264(%rbp), %rax        # 8-byte Reload
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	-256(%rbp), %rsi        # 8-byte Reload
	movq	-272(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	frame_windows_min_size
	movl	%eax, -80(%rbp)
	cmpl	$2, -20(%rbp)
	jl	.LBB12_28
# BB#18:                                # %land.lhs.true.60
	cmpl	$4, -20(%rbp)
	jg	.LBB12_28
# BB#19:                                # %if.then
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-68(%rbp), %eax
	cmpl	-76(%rbp), %eax
	movb	%cl, -273(%rbp)         # 1-byte Spill
	jl	.LBB12_23
# BB#20:                                # %land.rhs
	movb	$1, %al
	cmpl	$4, -20(%rbp)
	movb	%al, -274(%rbp)         # 1-byte Spill
	je	.LBB12_22
# BB#21:                                # %lor.rhs
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rdx
	callq	frame_inhibit_resize
	movb	%al, -274(%rbp)         # 1-byte Spill
.LBB12_22:                              # %lor.end
	movb	-274(%rbp), %al         # 1-byte Reload
	movb	%al, -273(%rbp)         # 1-byte Spill
.LBB12_23:                              # %land.end
	movb	-273(%rbp), %al         # 1-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	andb	$1, %al
	movb	%al, -129(%rbp)
	movl	-72(%rbp), %ecx
	cmpl	-80(%rbp), %ecx
	movb	%dl, -275(%rbp)         # 1-byte Spill
	jl	.LBB12_27
# BB#24:                                # %land.rhs.72
	movb	$1, %al
	cmpl	$4, -20(%rbp)
	movb	%al, -276(%rbp)         # 1-byte Spill
	je	.LBB12_26
# BB#25:                                # %lor.rhs.75
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rdx
	callq	frame_inhibit_resize
	movb	%al, -276(%rbp)         # 1-byte Spill
.LBB12_26:                              # %lor.end.78
	movb	-276(%rbp), %al         # 1-byte Reload
	movb	%al, -275(%rbp)         # 1-byte Spill
.LBB12_27:                              # %land.end.79
	movb	-275(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -130(%rbp)
	jmp	.LBB12_29
.LBB12_28:                              # %if.else
	cmpl	$5, -20(%rbp)
	sete	%al
	movb	%al, %cl
	andb	$1, %cl
	movb	%cl, -130(%rbp)
	andb	$1, %al
	movb	%al, -129(%rbp)
.LBB12_29:                              # %if.end
	testb	$1, -129(%rbp)
	je	.LBB12_32
# BB#30:                                # %land.lhs.true.86
	cmpl	$5, -20(%rbp)
	jge	.LBB12_32
# BB#31:                                # %cond.true.89
	movl	-44(%rbp), %eax
	movl	%eax, -280(%rbp)        # 4-byte Spill
	jmp	.LBB12_42
.LBB12_32:                              # %cond.false.90
	movl	-116(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	208(%rcx), %rcx
	shrq	$30, %rcx
	andq	$3, %rcx
	movl	%ecx, %edx
	cmpl	$0, %edx
	movl	%eax, -284(%rbp)        # 4-byte Spill
	je	.LBB12_34
# BB#33:                                # %cond.true.93
	movq	-8(%rbp), %rax
	movl	420(%rax), %ecx
	movl	%ecx, -288(%rbp)        # 4-byte Spill
	jmp	.LBB12_35
.LBB12_34:                              # %cond.false.94
	xorl	%eax, %eax
	movl	%eax, -288(%rbp)        # 4-byte Spill
	jmp	.LBB12_35
.LBB12_35:                              # %cond.end.95
	movl	-288(%rbp), %eax        # 4-byte Reload
	movl	-284(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movl	344(%rdx), %eax
	movq	-8(%rbp), %rdx
	addl	348(%rdx), %eax
	addl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movl	332(%rdx), %eax
	shll	$1, %eax
	addl	%eax, %ecx
	movl	-76(%rbp), %eax
	movq	-8(%rbp), %rdx
	movl	332(%rdx), %esi
	shll	$1, %esi
	addl	%esi, %eax
	cmpl	%eax, %ecx
	jle	.LBB12_40
# BB#36:                                # %cond.true.108
	movl	-116(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	208(%rcx), %rcx
	shrq	$30, %rcx
	andq	$3, %rcx
	movl	%ecx, %edx
	cmpl	$0, %edx
	movl	%eax, -292(%rbp)        # 4-byte Spill
	je	.LBB12_38
# BB#37:                                # %cond.true.116
	movq	-8(%rbp), %rax
	movl	420(%rax), %ecx
	movl	%ecx, -296(%rbp)        # 4-byte Spill
	jmp	.LBB12_39
.LBB12_38:                              # %cond.false.118
	xorl	%eax, %eax
	movl	%eax, -296(%rbp)        # 4-byte Spill
	jmp	.LBB12_39
.LBB12_39:                              # %cond.end.119
	movl	-296(%rbp), %eax        # 4-byte Reload
	movl	-292(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movl	344(%rdx), %eax
	movq	-8(%rbp), %rdx
	addl	348(%rdx), %eax
	addl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movl	332(%rdx), %eax
	shll	$1, %eax
	addl	%eax, %ecx
	movl	%ecx, -300(%rbp)        # 4-byte Spill
	jmp	.LBB12_41
.LBB12_40:                              # %cond.false.129
	movl	-76(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	332(%rcx), %edx
	shll	$1, %edx
	addl	%edx, %eax
	movl	%eax, -300(%rbp)        # 4-byte Spill
.LBB12_41:                              # %cond.end.133
	movl	-300(%rbp), %eax        # 4-byte Reload
	movl	%eax, -280(%rbp)        # 4-byte Spill
.LBB12_42:                              # %cond.end.135
	movl	-280(%rbp), %eax        # 4-byte Reload
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	332(%rcx), %edx
	shll	$1, %edx
	subl	%edx, %eax
	movl	%eax, -100(%rbp)
	movl	-60(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	208(%rcx), %rcx
	shrq	$30, %rcx
	andq	$3, %rcx
	movl	%ecx, %edx
	cmpl	$0, %edx
	movl	%eax, -304(%rbp)        # 4-byte Spill
	je	.LBB12_44
# BB#43:                                # %cond.true.147
	movq	-8(%rbp), %rax
	movl	420(%rax), %ecx
	movl	%ecx, -308(%rbp)        # 4-byte Spill
	jmp	.LBB12_45
.LBB12_44:                              # %cond.false.149
	xorl	%eax, %eax
	movl	%eax, -308(%rbp)        # 4-byte Spill
	jmp	.LBB12_45
.LBB12_45:                              # %cond.end.150
	movl	-308(%rbp), %eax        # 4-byte Reload
	movl	-304(%rbp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movl	344(%rdx), %eax
	movq	-8(%rbp), %rdx
	addl	348(%rdx), %eax
	subl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movl	332(%rdx), %eax
	shll	$1, %eax
	subl	%eax, %ecx
	movl	%ecx, -116(%rbp)
	movl	-116(%rbp), %eax
	cltd
	idivl	-36(%rbp)
	movl	%eax, -124(%rbp)
	testb	$1, -130(%rbp)
	je	.LBB12_48
# BB#46:                                # %land.lhs.true.162
	cmpl	$5, -20(%rbp)
	jge	.LBB12_48
# BB#47:                                # %cond.true.165
	movl	-48(%rbp), %eax
	movl	%eax, -312(%rbp)        # 4-byte Spill
	jmp	.LBB12_58
.LBB12_48:                              # %cond.false.166
	movl	-120(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	360(%rcx), %edx
	movq	-8(%rbp), %rcx
	addl	220(%rcx), %edx
	addl	%edx, %eax
	movq	-8(%rbp), %rcx
	movq	208(%rcx), %rcx
	shrq	$32, %rcx
	andq	$1, %rcx
	testq	$1, %rcx
	movl	%eax, -316(%rbp)        # 4-byte Spill
	je	.LBB12_50
# BB#49:                                # %cond.true.176
	movq	-8(%rbp), %rax
	movl	428(%rax), %ecx
	movl	%ecx, -320(%rbp)        # 4-byte Spill
	jmp	.LBB12_51
.LBB12_50:                              # %cond.false.177
	xorl	%eax, %eax
	movl	%eax, -320(%rbp)        # 4-byte Spill
	jmp	.LBB12_51
.LBB12_51:                              # %cond.end.178
	movl	-320(%rbp), %eax        # 4-byte Reload
	movl	-316(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movl	332(%rdx), %eax
	shll	$1, %eax
	addl	%eax, %ecx
	movl	-80(%rbp), %eax
	movq	-8(%rbp), %rdx
	movl	360(%rdx), %esi
	movq	-8(%rbp), %rdx
	addl	220(%rdx), %esi
	addl	%esi, %eax
	movq	-8(%rbp), %rdx
	movl	332(%rdx), %esi
	shll	$1, %esi
	addl	%esi, %eax
	cmpl	%eax, %ecx
	jle	.LBB12_56
# BB#52:                                # %cond.true.193
	movl	-120(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	360(%rcx), %edx
	movq	-8(%rbp), %rcx
	addl	220(%rcx), %edx
	addl	%edx, %eax
	movq	-8(%rbp), %rcx
	movq	208(%rcx), %rcx
	shrq	$32, %rcx
	andq	$1, %rcx
	testq	$1, %rcx
	movl	%eax, -324(%rbp)        # 4-byte Spill
	je	.LBB12_54
# BB#53:                                # %cond.true.204
	movq	-8(%rbp), %rax
	movl	428(%rax), %ecx
	movl	%ecx, -328(%rbp)        # 4-byte Spill
	jmp	.LBB12_55
.LBB12_54:                              # %cond.false.206
	xorl	%eax, %eax
	movl	%eax, -328(%rbp)        # 4-byte Spill
	jmp	.LBB12_55
.LBB12_55:                              # %cond.end.207
	movl	-328(%rbp), %eax        # 4-byte Reload
	movl	-324(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movl	332(%rdx), %eax
	shll	$1, %eax
	addl	%eax, %ecx
	movl	%ecx, -332(%rbp)        # 4-byte Spill
	jmp	.LBB12_57
.LBB12_56:                              # %cond.false.213
	movl	-80(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	360(%rcx), %edx
	movq	-8(%rbp), %rcx
	addl	220(%rcx), %edx
	addl	%edx, %eax
	movq	-8(%rbp), %rcx
	movl	332(%rcx), %edx
	shll	$1, %edx
	addl	%edx, %eax
	movl	%eax, -332(%rbp)        # 4-byte Spill
.LBB12_57:                              # %cond.end.221
	movl	-332(%rbp), %eax        # 4-byte Reload
	movl	%eax, -312(%rbp)        # 4-byte Spill
.LBB12_58:                              # %cond.end.223
	movl	-312(%rbp), %eax        # 4-byte Reload
	movl	%eax, -64(%rbp)
	movl	-64(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	360(%rcx), %edx
	movq	-8(%rbp), %rcx
	addl	220(%rcx), %edx
	subl	%edx, %eax
	movq	-8(%rbp), %rcx
	movl	332(%rcx), %edx
	shll	$1, %edx
	subl	%edx, %eax
	movl	%eax, -104(%rbp)
	movl	-64(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	360(%rcx), %edx
	movq	-8(%rbp), %rcx
	addl	220(%rcx), %edx
	subl	%edx, %eax
	movq	-8(%rbp), %rcx
	movq	208(%rcx), %rcx
	shrq	$32, %rcx
	andq	$1, %rcx
	testq	$1, %rcx
	movl	%eax, -336(%rbp)        # 4-byte Spill
	je	.LBB12_60
# BB#59:                                # %cond.true.242
	movq	-8(%rbp), %rax
	movl	428(%rax), %ecx
	movl	%ecx, -340(%rbp)        # 4-byte Spill
	jmp	.LBB12_61
.LBB12_60:                              # %cond.false.244
	xorl	%eax, %eax
	movl	%eax, -340(%rbp)        # 4-byte Spill
	jmp	.LBB12_61
.LBB12_61:                              # %cond.end.245
	movl	-340(%rbp), %eax        # 4-byte Reload
	movl	-336(%rbp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movl	332(%rdx), %eax
	shll	$1, %eax
	subl	%eax, %ecx
	movl	%ecx, -120(%rbp)
	movl	-120(%rbp), %eax
	cltd
	idivl	-40(%rbp)
	movl	%eax, -128(%rbp)
	movq	-8(%rbp), %rsi
	movq	208(%rsi), %rsi
	shrq	$23, %rsi
	andq	$7, %rsi
	movl	%esi, %eax
	cmpl	$2, %eax
	jne	.LBB12_83
# BB#62:                                # %land.lhs.true.258
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$34, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB12_83
# BB#63:                                # %land.lhs.true.264
	testb	$1, -129(%rbp)
	jne	.LBB12_67
# BB#64:                                # %land.lhs.true.266
	movl	-60(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jne	.LBB12_71
# BB#65:                                # %lor.lhs.false
	cmpl	$0, -20(%rbp)
	je	.LBB12_71
# BB#66:                                # %lor.lhs.false.271
	cmpl	$2, -20(%rbp)
	je	.LBB12_71
.LBB12_67:                              # %lor.lhs.false.274
	testb	$1, -130(%rbp)
	jne	.LBB12_83
# BB#68:                                # %land.lhs.true.276
	movl	-64(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jne	.LBB12_71
# BB#69:                                # %lor.lhs.false.279
	cmpl	$0, -20(%rbp)
	je	.LBB12_71
# BB#70:                                # %lor.lhs.false.282
	cmpl	$2, -20(%rbp)
	jne	.LBB12_83
.LBB12_71:                              # %if.then.285
	testb	$1, -129(%rbp)
	je	.LBB12_73
# BB#72:                                # %if.then.287
	movl	-108(%rbp), %eax
	movl	%eax, -116(%rbp)
	jmp	.LBB12_76
.LBB12_73:                              # %if.else.288
	testb	$1, -130(%rbp)
	je	.LBB12_75
# BB#74:                                # %if.then.290
	movl	-112(%rbp), %eax
	movl	%eax, -120(%rbp)
.LBB12_75:                              # %if.end.291
	jmp	.LBB12_76
.LBB12_76:                              # %if.end.292
	movl	$163, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	-116(%rbp), %edx
	movl	-120(%rbp), %ecx
	testb	$1, -129(%rbp)
	movq	%rax, -360(%rbp)        # 8-byte Spill
	movl	%edx, -364(%rbp)        # 4-byte Spill
	movl	%ecx, -368(%rbp)        # 4-byte Spill
	je	.LBB12_78
# BB#77:                                # %cond.true.296
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -376(%rbp)        # 8-byte Spill
	jmp	.LBB12_79
.LBB12_78:                              # %cond.false.298
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -376(%rbp)        # 8-byte Spill
.LBB12_79:                              # %cond.end.300
	movq	-376(%rbp), %rax        # 8-byte Reload
	testb	$1, -130(%rbp)
	movq	%rax, -384(%rbp)        # 8-byte Spill
	je	.LBB12_81
# BB#80:                                # %cond.true.304
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -392(%rbp)        # 8-byte Spill
	jmp	.LBB12_82
.LBB12_81:                              # %cond.false.306
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -392(%rbp)        # 8-byte Spill
.LBB12_82:                              # %cond.end.308
	movq	-392(%rbp), %rax        # 8-byte Reload
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	list2
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	-360(%rbp), %rsi        # 8-byte Reload
	movl	-364(%rbp), %edx        # 4-byte Reload
	movl	-368(%rbp), %ecx        # 4-byte Reload
	movq	%rax, %r8
	callq	frame_size_history_add
	xorl	%esi, %esi
	movl	$1, %r8d
	movq	-8(%rbp), %rdi
	movl	-116(%rbp), %edx
	movl	-120(%rbp), %ecx
	callq	x_set_window_size
	movq	-8(%rbp), %rax
	movq	208(%rax), %rdi
	andq	$-3, %rdi
	orq	$2, %rdi
	movq	%rdi, 208(%rax)
	jmp	.LBB12_130
.LBB12_83:                              # %if.end.313
	movl	-116(%rbp), %eax
	cmpl	-108(%rbp), %eax
	jne	.LBB12_92
# BB#84:                                # %land.lhs.true.316
	movl	-120(%rbp), %eax
	cmpl	-112(%rbp), %eax
	jne	.LBB12_92
# BB#85:                                # %land.lhs.true.319
	movl	-100(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jne	.LBB12_92
# BB#86:                                # %land.lhs.true.322
	movl	-104(%rbp), %eax
	cmpl	-96(%rbp), %eax
	jne	.LBB12_92
# BB#87:                                # %land.lhs.true.325
	movl	-60(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jne	.LBB12_92
# BB#88:                                # %land.lhs.true.328
	movl	-64(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jne	.LBB12_92
# BB#89:                                # %land.lhs.true.331
	movl	-124(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jne	.LBB12_92
# BB#90:                                # %land.lhs.true.334
	movl	-128(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jne	.LBB12_92
# BB#91:                                # %if.then.337
	movl	$901, %edi              # imm = 0x385
	movq	-144(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	sanitize_window_sizes
	xorl	%edi, %edi
	movq	-144(%rbp), %rsi
	movq	%rax, -408(%rbp)        # 8-byte Spill
	movq	%rsi, -416(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	sanitize_window_sizes
	movq	%rax, -424(%rbp)        # 8-byte Spill
	jmp	.LBB12_130
.LBB12_92:                              # %if.end.342
	callq	block_input
	movl	-100(%rbp), %eax
	cmpl	-92(%rbp), %eax
	je	.LBB12_101
# BB#93:                                # %if.then.345
	movl	$1, %eax
	movq	-8(%rbp), %rdi
	movl	-100(%rbp), %esi
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	resize_frame_windows
	movq	-8(%rbp), %rdi
	movq	208(%rdi), %rdi
	shrq	$23, %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$1, %eax
	jne	.LBB12_100
# BB#94:                                # %land.lhs.true.353
	testb	$1, -21(%rbp)
	jne	.LBB12_100
# BB#95:                                # %if.then.355
	movl	-124(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	208(%rcx), %rcx
	shrq	$23, %rcx
	andq	$7, %rcx
	movl	%ecx, %edx
	cmpl	$1, %edx
	movl	%eax, -428(%rbp)        # 4-byte Spill
	je	.LBB12_97
# BB#96:                                # %lor.lhs.false.363
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB12_98
.LBB12_97:                              # %cond.true.371
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	jmp	.LBB12_99
.LBB12_98:                              # %cond.false.372
	callq	emacs_abort
.LBB12_99:                              # %cond.end.373
	movq	-440(%rbp), %rax        # 8-byte Reload
	movq	72(%rax), %rcx
	movl	-428(%rbp), %edx        # 4-byte Reload
	movl	%edx, 136(%rcx)
.LBB12_100:                             # %if.end.375
	jmp	.LBB12_104
.LBB12_101:                             # %if.else.376
	movl	-124(%rbp), %eax
	cmpl	-52(%rbp), %eax
	je	.LBB12_103
# BB#102:                               # %if.then.379
	movl	$1028, %edi             # imm = 0x404
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	-144(%rbp), %rsi
	movq	%rax, -448(%rbp)        # 8-byte Spill
	movq	%rsi, -456(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	-456(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	call2
	movq	%rax, -464(%rbp)        # 8-byte Spill
.LBB12_103:                             # %if.end.383
	jmp	.LBB12_104
.LBB12_104:                             # %if.end.384
	movl	-104(%rbp), %eax
	cmpl	-96(%rbp), %eax
	jne	.LBB12_106
# BB#105:                               # %lor.lhs.false.387
	movq	-88(%rbp), %rax
	movl	244(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	360(%rax), %edx
	movq	-8(%rbp), %rax
	addl	220(%rax), %edx
	cmpl	%edx, %ecx
	je	.LBB12_114
.LBB12_106:                             # %if.then.393
	xorl	%edx, %edx
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	movl	-104(%rbp), %esi
	callq	resize_frame_windows
	movq	-8(%rbp), %rdi
	movq	208(%rdi), %rdi
	shrq	$23, %rdi
	andq	$7, %rdi
	movl	%edi, %ecx
	cmpl	$1, %ecx
	jne	.LBB12_113
# BB#107:                               # %land.lhs.true.401
	testb	$1, -21(%rbp)
	jne	.LBB12_113
# BB#108:                               # %if.then.403
	movl	-128(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	356(%rcx), %edx
	movq	-8(%rbp), %rcx
	addl	216(%rcx), %edx
	addl	%edx, %eax
	movq	-8(%rbp), %rcx
	movq	208(%rcx), %rcx
	shrq	$23, %rcx
	andq	$7, %rcx
	movl	%ecx, %edx
	cmpl	$1, %edx
	movl	%eax, -468(%rbp)        # 4-byte Spill
	je	.LBB12_110
# BB#109:                               # %lor.lhs.false.413
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB12_111
.LBB12_110:                             # %cond.true.421
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	jmp	.LBB12_112
.LBB12_111:                             # %cond.false.425
	callq	emacs_abort
.LBB12_112:                             # %cond.end.426
	movq	-480(%rbp), %rax        # 8-byte Reload
	movq	72(%rax), %rcx
	movl	-468(%rbp), %edx        # 4-byte Reload
	movl	%edx, 140(%rcx)
.LBB12_113:                             # %if.end.429
	jmp	.LBB12_117
.LBB12_114:                             # %if.else.430
	movl	-128(%rbp), %eax
	cmpl	-56(%rbp), %eax
	je	.LBB12_116
# BB#115:                               # %if.then.433
	movl	$1028, %edi             # imm = 0x404
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-144(%rbp), %rsi
	movq	%rax, -488(%rbp)        # 8-byte Spill
	movq	%rsi, -496(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	-496(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	call2
	movq	%rax, -504(%rbp)        # 8-byte Spill
.LBB12_116:                             # %if.end.437
	jmp	.LBB12_117
.LBB12_117:                             # %if.end.438
	movl	$164, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	-116(%rbp), %edx
	movl	-120(%rbp), %ecx
	movslq	-44(%rbp), %rsi
	shlq	$2, %rsi
	addq	$2, %rsi
	movslq	-48(%rbp), %r8
	shlq	$2, %r8
	addq	$2, %r8
	movslq	-60(%rbp), %r9
	shlq	$2, %r9
	addq	$2, %r9
	movslq	-64(%rbp), %r10
	shlq	$2, %r10
	addq	$2, %r10
	movq	%rsi, %rdi
	movq	%r8, %rsi
	movl	%edx, -516(%rbp)        # 4-byte Spill
	movq	%r9, %rdx
	movl	%ecx, -520(%rbp)        # 4-byte Spill
	movq	%r10, %rcx
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	list4
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	-528(%rbp), %rsi        # 8-byte Reload
	movl	-516(%rbp), %edx        # 4-byte Reload
	movl	-520(%rbp), %ecx        # 4-byte Reload
	movq	%rax, %r8
	callq	frame_size_history_add
	movl	-116(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 288(%rax)
	movl	-120(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 292(%rax)
	movl	-60(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 312(%rax)
	movl	-64(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 316(%rax)
	movl	-124(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 272(%rax)
	movl	-124(%rbp), %ecx
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$30, %rax
	andq	$3, %rax
	movl	%eax, %edx
	cmpl	$0, %edx
	movl	%ecx, -532(%rbp)        # 4-byte Spill
	je	.LBB12_119
# BB#118:                               # %cond.true.465
	movq	-8(%rbp), %rax
	movl	424(%rax), %ecx
	movl	%ecx, -536(%rbp)        # 4-byte Spill
	jmp	.LBB12_120
.LBB12_119:                             # %cond.false.466
	xorl	%eax, %eax
	movl	%eax, -536(%rbp)        # 4-byte Spill
	jmp	.LBB12_120
.LBB12_120:                             # %cond.end.467
	movl	-536(%rbp), %eax        # 4-byte Reload
	movl	-532(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movq	-8(%rbp), %rdx
	addl	352(%rdx), %ecx
	movq	-8(%rbp), %rdx
	movl	%ecx, 280(%rdx)
	movl	-128(%rbp), %eax
	movq	-8(%rbp), %rdx
	movl	%eax, 276(%rdx)
	movl	-128(%rbp), %eax
	movq	-8(%rbp), %rdx
	movl	356(%rdx), %ecx
	movq	-8(%rbp), %rdx
	addl	216(%rdx), %ecx
	addl	%ecx, %eax
	movq	-8(%rbp), %rdx
	movq	208(%rdx), %rdx
	shrq	$32, %rdx
	andq	$1, %rdx
	testq	$1, %rdx
	movl	%eax, -540(%rbp)        # 4-byte Spill
	je	.LBB12_122
# BB#121:                               # %cond.true.482
	movq	-8(%rbp), %rax
	movl	432(%rax), %ecx
	movl	%ecx, -544(%rbp)        # 4-byte Spill
	jmp	.LBB12_123
.LBB12_122:                             # %cond.false.483
	xorl	%eax, %eax
	movl	%eax, -544(%rbp)        # 4-byte Spill
	jmp	.LBB12_123
.LBB12_123:                             # %cond.end.484
	movl	-544(%rbp), %eax        # 4-byte Reload
	movl	-540(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movl	%ecx, 284(%rdx)
	movq	-8(%rbp), %rdx
	movq	48(%rdx), %rdi
	callq	XWINDOW
	movl	$1, %esi
	leaq	-156(%rbp), %rdx
	leaq	-160(%rbp), %rcx
	leaq	-164(%rbp), %r8
	leaq	-168(%rbp), %r9
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rdi
	callq	window_box
	movq	-152(%rbp), %rax
	movl	352(%rax), %esi
	movl	-156(%rbp), %r10d
	addl	-164(%rbp), %r10d
	cmpl	%r10d, %esi
	jl	.LBB12_125
# BB#124:                               # %if.then.491
	movq	-152(%rbp), %rax
	movl	$0, 352(%rax)
	movq	-152(%rbp), %rax
	movl	$0, 360(%rax)
.LBB12_125:                             # %if.end.495
	movq	-152(%rbp), %rax
	movl	356(%rax), %ecx
	movl	-160(%rbp), %edx
	addl	-168(%rbp), %edx
	cmpl	%edx, %ecx
	jl	.LBB12_127
# BB#126:                               # %if.then.500
	movq	-152(%rbp), %rax
	movl	$0, 356(%rax)
	movq	-152(%rbp), %rax
	movl	$0, 364(%rax)
.LBB12_127:                             # %if.end.504
	movl	$901, %edi              # imm = 0x385
	movq	-144(%rbp), %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	sanitize_window_sizes
	xorl	%edi, %edi
	movq	-144(%rbp), %rsi
	movq	%rax, -560(%rbp)        # 8-byte Spill
	movq	%rsi, -568(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	sanitize_window_sizes
	movq	-8(%rbp), %rdi
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	adjust_frame_glyphs
	movq	-8(%rbp), %rdi
	callq	calculate_costs
	movb	$1, frame_garbaged
	movq	-8(%rbp), %rdi
	callq	fset_redisplay
	movb	$1, %cl
	movq	-8(%rbp), %rax
	movq	208(%rax), %rsi
	andq	$-8193, %rsi            # imm = 0xFFFFFFFFFFFFDFFF
	orq	$8192, %rsi             # imm = 0x2000
	movq	%rsi, 208(%rax)
	movl	-60(%rbp), %edx
	cmpl	-44(%rbp), %edx
	movb	%cl, -577(%rbp)         # 1-byte Spill
	jne	.LBB12_129
# BB#128:                               # %lor.rhs.514
	movl	-64(%rbp), %eax
	cmpl	-48(%rbp), %eax
	setne	%cl
	movb	%cl, -577(%rbp)         # 1-byte Spill
.LBB12_129:                             # %lor.end.517
	movb	-577(%rbp), %al         # 1-byte Reload
	movq	-8(%rbp), %rcx
	andb	$1, %al
	movzbl	%al, %edx
	movl	%edx, %esi
	movq	208(%rcx), %rdi
	shlq	$1, %rsi
	andq	$-3, %rdi
	orq	%rsi, %rdi
	movq	%rdi, 208(%rcx)
	callq	unblock_input
	movq	-8(%rbp), %rdi
	callq	run_window_configuration_change_hook
.LBB12_130:                             # %return
	addq	$592, %rsp              # imm = 0x250
	popq	%rbp
	retq
.Lfunc_end12:
	.size	adjust_frame_size, .Lfunc_end12-adjust_frame_size
	.cfi_endproc

	.align	16, 0x90
	.type	frame_windows_min_size,@function
frame_windows_min_size:                 # @frame_windows_min_size
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
	subq	$32, %rsp
	movl	$460, %eax              # imm = 0x1CC
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %r8
	movq	%rax, %rdi
	callq	call4
	sarq	$2, %rax
	movl	%eax, %r9d
	movl	%r9d, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	frame_windows_min_size, .Lfunc_end13-frame_windows_min_size
	.cfi_endproc

	.globl	make_frame
	.align	16, 0x90
	.type	make_frame,@function
make_frame:                             # @make_frame
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
	movb	%dil, %al
	andb	$1, %al
	movb	%al, -1(%rbp)
	callq	allocate_frame
	movl	$5, %esi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movl	$928, %edi              # imm = 0x3A0
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	fset_tool_bar_position
	movq	-24(%rbp), %rax
	movq	208(%rax), %rsi
	andq	$-16385, %rsi           # imm = 0xFFFFFFFFFFFFBFFF
	orq	$16384, %rsi            # imm = 0x4000
	movq	%rsi, 208(%rax)
	movq	-24(%rbp), %rax
	movq	208(%rax), %rsi
	andq	$-257, %rsi             # imm = 0xFFFFFFFFFFFFFEFF
	orq	$256, %rsi              # imm = 0x100
	movq	%rsi, 208(%rax)
	movq	-24(%rbp), %rax
	movq	208(%rax), %rsi
	andq	$-8193, %rsi            # imm = 0xFFFFFFFFFFFFDFFF
	orq	$8192, %rsi             # imm = 0x2000
	movq	%rsi, 208(%rax)
	movq	-24(%rbp), %rax
	movabsq	$-17179869185, %rsi     # imm = 0xFFFFFFFBFFFFFFFF
	andq	208(%rax), %rsi
	movq	%rsi, 208(%rax)
	movq	-24(%rbp), %rax
	movabsq	$-34359738369, %rsi     # imm = 0xFFFFFFF7FFFFFFFF
	andq	208(%rax), %rsi
	movq	%rsi, 208(%rax)
	movq	-24(%rbp), %rax
	movabsq	$-274877906945, %rsi    # imm = 0xFFFFFFBFFFFFFFFF
	andq	208(%rax), %rsi
	movq	%rsi, 208(%rax)
	movq	-24(%rbp), %rax
	movabsq	$-549755813889, %rsi    # imm = 0xFFFFFF7FFFFFFFFF
	andq	208(%rax), %rsi
	movq	%rsi, 208(%rax)
	movq	-24(%rbp), %rax
	movabsq	$-68719476737, %rsi     # imm = 0xFFFFFFEFFFFFFFFF
	andq	208(%rax), %rsi
	movq	%rsi, 208(%rax)
	movq	-24(%rbp), %rax
	movabsq	$-137438953473, %rsi    # imm = 0xFFFFFFDFFFFFFFFF
	andq	208(%rax), %rsi
	movq	%rsi, 208(%rax)
	movq	-24(%rbp), %rax
	movl	$1, 364(%rax)
	movq	-24(%rbp), %rax
	movl	$1, 368(%rax)
	movq	-24(%rbp), %rax
	movabsq	$-3221225473, %rsi      # imm = 0xFFFFFFFF3FFFFFFF
	andq	208(%rax), %rsi
	movq	%rsi, 208(%rax)
	movq	-24(%rbp), %rax
	movabsq	$-4294967297, %rsi      # imm = 0xFFFFFFFEFFFFFFFF
	andq	208(%rax), %rsi
	movq	%rsi, 208(%rax)
	movq	-24(%rbp), %rax
	movq	208(%rax), %rsi
	andq	$-1006632961, %rsi      # imm = 0xFFFFFFFFC3FFFFFF
	movq	%rsi, 208(%rax)
	callq	make_window
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	XWINDOW
	movq	%rax, -32(%rbp)
	testb	$1, -1(%rbp)
	je	.LBB14_2
# BB#1:                                 # %if.then
	callq	make_window
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	XWINDOW
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	wset_next
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	wset_prev
	movq	-40(%rbp), %rax
	movw	468(%rax), %cx
	andw	$-2, %cx
	orw	$1, %cx
	movw	%cx, 468(%rax)
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	wset_frame
	movq	-24(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	fset_minibuffer_window
	jmp	.LBB14_3
.LBB14_2:                               # %if.else
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	wset_next
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	fset_minibuffer_window
.LBB14_3:                               # %if.end
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	wset_frame
	movq	-24(%rbp), %rsi
	movl	$10, 272(%rsi)
	movq	-24(%rbp), %rsi
	movq	208(%rsi), %rsi
	shrq	$30, %rsi
	andq	$3, %rsi
	movl	%esi, %eax
	cmpl	$0, %eax
	je	.LBB14_5
# BB#4:                                 # %cond.true
	movq	-24(%rbp), %rax
	movl	424(%rax), %ecx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	jmp	.LBB14_6
.LBB14_5:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB14_6
.LBB14_6:                               # %cond.end
	movl	-92(%rbp), %eax         # 4-byte Reload
	addl	$10, %eax
	movq	-24(%rbp), %rcx
	addl	352(%rcx), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 280(%rcx)
	movq	-24(%rbp), %rcx
	movl	$10, 276(%rcx)
	movq	-24(%rbp), %rcx
	movl	356(%rcx), %eax
	movq	-24(%rbp), %rcx
	addl	216(%rcx), %eax
	addl	$10, %eax
	movq	-24(%rbp), %rcx
	movq	208(%rcx), %rcx
	shrq	$32, %rcx
	andq	$1, %rcx
	testq	$1, %rcx
	movl	%eax, -96(%rbp)         # 4-byte Spill
	je	.LBB14_8
# BB#7:                                 # %cond.true.48
	movq	-24(%rbp), %rax
	movl	432(%rax), %ecx
	movl	%ecx, -100(%rbp)        # 4-byte Spill
	jmp	.LBB14_9
.LBB14_8:                               # %cond.false.49
	xorl	%eax, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB14_9
.LBB14_9:                               # %cond.end.50
	movl	-100(%rbp), %eax        # 4-byte Reload
	movl	-96(%rbp), %ecx         # 4-byte Reload
	addl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movl	%ecx, 284(%rdx)
	movq	-24(%rbp), %rdx
	movl	272(%rdx), %eax
	movq	-24(%rbp), %rdx
	imull	364(%rdx), %eax
	movq	-24(%rbp), %rdx
	movl	%eax, 288(%rdx)
	movq	-24(%rbp), %rdx
	movl	272(%rdx), %eax
	movq	-24(%rbp), %rdx
	imull	364(%rdx), %eax
	movq	-24(%rbp), %rdx
	movq	208(%rdx), %rdx
	shrq	$30, %rdx
	andq	$3, %rdx
	movl	%edx, %ecx
	cmpl	$0, %ecx
	movl	%eax, -104(%rbp)        # 4-byte Spill
	je	.LBB14_11
# BB#10:                                # %cond.true.64
	movq	-24(%rbp), %rax
	movl	420(%rax), %ecx
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	jmp	.LBB14_12
.LBB14_11:                              # %cond.false.65
	xorl	%eax, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB14_12
.LBB14_12:                              # %cond.end.66
	movl	-108(%rbp), %eax        # 4-byte Reload
	movl	-104(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movl	344(%rdx), %eax
	movq	-24(%rbp), %rdx
	addl	348(%rdx), %eax
	addl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movl	332(%rdx), %eax
	shll	$1, %eax
	addl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movl	%ecx, 312(%rdx)
	movq	-24(%rbp), %rdx
	movl	276(%rdx), %eax
	movq	-24(%rbp), %rdx
	imull	368(%rdx), %eax
	movq	-24(%rbp), %rdx
	movl	%eax, 292(%rdx)
	movq	-24(%rbp), %rdx
	movl	276(%rdx), %eax
	movq	-24(%rbp), %rdx
	imull	368(%rdx), %eax
	movq	-24(%rbp), %rdx
	movl	360(%rdx), %ecx
	movq	-24(%rbp), %rdx
	addl	220(%rdx), %ecx
	addl	%ecx, %eax
	movq	-24(%rbp), %rdx
	movq	208(%rdx), %rdx
	shrq	$32, %rdx
	andq	$1, %rdx
	testq	$1, %rdx
	movl	%eax, -112(%rbp)        # 4-byte Spill
	je	.LBB14_14
# BB#13:                                # %cond.true.86
	movq	-24(%rbp), %rax
	movl	428(%rax), %ecx
	movl	%ecx, -116(%rbp)        # 4-byte Spill
	jmp	.LBB14_15
.LBB14_14:                              # %cond.false.87
	xorl	%eax, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB14_15
.LBB14_15:                              # %cond.end.88
	movl	-116(%rbp), %eax        # 4-byte Reload
	movl	$10, %ecx
	movl	$9, %edx
	movl	-112(%rbp), %esi        # 4-byte Reload
	addl	%eax, %esi
	movq	-24(%rbp), %rdi
	movl	332(%rdi), %eax
	shll	$1, %eax
	addl	%eax, %esi
	movq	-24(%rbp), %rdi
	movl	%esi, 316(%rdi)
	movq	-32(%rbp), %rdi
	movl	$10, 264(%rdi)
	movq	-32(%rbp), %rdi
	movl	264(%rdi), %eax
	movq	-24(%rbp), %rdi
	imull	364(%rdi), %eax
	movq	-32(%rbp), %rdi
	movl	%eax, 256(%rdi)
	movb	-1(%rbp), %r8b
	testb	$1, %r8b
	cmovnel	%edx, %ecx
	movq	-32(%rbp), %rdi
	movl	%ecx, 268(%rdi)
	movq	-32(%rbp), %rdi
	movl	268(%rdi), %eax
	movq	-24(%rbp), %rdi
	imull	368(%rdi), %eax
	movq	-32(%rbp), %rdi
	movl	%eax, 260(%rdi)
	testb	$1, -1(%rbp)
	je	.LBB14_17
# BB#16:                                # %if.then.107
	movq	-32(%rbp), %rax
	movl	268(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 252(%rax)
	movq	-32(%rbp), %rax
	movl	260(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 244(%rax)
	movq	-32(%rbp), %rax
	movl	264(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 264(%rax)
	movq	-32(%rbp), %rax
	movl	256(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 256(%rax)
	movq	-40(%rbp), %rax
	movl	$1, 268(%rax)
	movq	-24(%rbp), %rax
	movl	368(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 260(%rax)
.LBB14_17:                              # %if.end.117
	callq	Fcurrent_buffer
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	XBUFFER
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	8(%rax), %rdi
	callq	SREF
	movzbl	%al, %ecx
	cmpl	$32, %ecx
	jne	.LBB14_19
# BB#18:                                # %if.then.123
	movq	-64(%rbp), %rdi
	callq	other_buffer_safely
	movq	%rax, -64(%rbp)
.LBB14_19:                              # %if.end.125
	xorl	%eax, %eax
	movq	-48(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	set_window_buffer
	movq	-24(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	callq	list1
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	fset_buffer_list
	testb	$1, -1(%rbp)
	je	.LBB14_24
# BB#20:                                # %if.then.128
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	Vminibuffer_list, %rcx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB14_22
# BB#21:                                # %cond.true.132
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	get_minibuffer
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jmp	.LBB14_23
.LBB14_22:                              # %cond.false.134
	movq	Vminibuffer_list, %rdi
	callq	Fcar
	movq	%rax, -152(%rbp)        # 8-byte Spill
.LBB14_23:                              # %cond.end.136
	movq	-152(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movl	%ecx, %edx
	callq	set_window_buffer
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	wset_horizontal_scroll_bar
.LBB14_24:                              # %if.end.139
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	fset_root_window
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	fset_selected_window
	movq	window_select_count, %rsi
	addq	$1, %rsi
	movq	%rsi, window_select_count
	movq	-24(%rbp), %rdi
	movq	48(%rdi), %rdi
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	callq	XWINDOW
	movq	-168(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, 224(%rax)
	movq	-24(%rbp), %rax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	make_frame, .Lfunc_end14-make_frame
	.cfi_endproc

	.align	16, 0x90
	.type	allocate_frame,@function
allocate_frame:                         # @allocate_frame
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
	movl	$60, %eax
	movl	$19, %esi
	movl	$3, %ecx
	movl	%eax, %edi
	movl	%eax, %edx
	callq	allocate_pseudovector
	popq	%rbp
	retq
.Lfunc_end15:
	.size	allocate_frame, .Lfunc_end15-allocate_frame
	.cfi_endproc

	.align	16, 0x90
	.type	fset_minibuffer_window,@function
fset_minibuffer_window:                 # @fset_minibuffer_window
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 56(%rdi)
	popq	%rbp
	retq
.Lfunc_end16:
	.size	fset_minibuffer_window, .Lfunc_end16-fset_minibuffer_window
	.cfi_endproc

	.globl	make_frame_without_minibuffer
	.align	16, 0x90
	.type	make_frame_without_minibuffer,@function
make_frame_without_minibuffer:          # @make_frame_without_minibuffer
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
	subq	$112, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movl	%eax, %edi
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB17_6
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB17_2
	jmp	.LBB17_4
.LBB17_2:                               # %land.lhs.true
	movq	-8(%rbp), %rdi
	callq	XWINDOW
	movq	80(%rax), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB17_3
	jmp	.LBB17_4
.LBB17_3:                               # %cond.true
	jmp	.LBB17_5
.LBB17_4:                               # %cond.false
	movl	$1027, %edi             # imm = 0x403
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB17_5:                               # %cond.end
	jmp	.LBB17_6
.LBB17_6:                               # %if.end
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB17_9
# BB#7:                                 # %land.lhs.true.7
	movq	-8(%rbp), %rdi
	callq	XWINDOW
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	376(%rax), %rax
	movq	72(%rax), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB17_9
# BB#8:                                 # %if.then.10
	movabsq	$.L.str.2, %rdi
	movb	$0, %al
	callq	error
.LBB17_9:                               # %if.end.11
	xorl	%edi, %edi
	callq	make_frame
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB17_14
# BB#10:                                # %if.then.15
	movq	-16(%rbp), %rax
	movq	160(%rax), %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB17_11
	jmp	.LBB17_12
.LBB17_11:                              # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	160(%rax), %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	jne	.LBB17_13
.LBB17_12:                              # %if.then.21
	movl	$5, %esi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movabsq	$.L.str.3, %rdi
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	intern
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	call1
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	kset_default_minibuffer_frame
.LBB17_13:                              # %if.end.25
	movq	-16(%rbp), %rax
	movq	160(%rax), %rax
	subq	$5, %rax
	movq	56(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB17_14:                              # %if.end.28
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	fset_minibuffer_window
	movq	-8(%rbp), %rdi
	callq	XWINDOW
	movq	80(%rax), %rdi
	movq	Vminibuffer_list, %rsi
	callq	Fmemq
	xorl	%edi, %edi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB17_19
# BB#15:                                # %if.then.34
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	Vminibuffer_list, %rcx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB17_17
# BB#16:                                # %cond.true.37
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	get_minibuffer
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB17_18
.LBB17_17:                              # %cond.false.39
	movq	Vminibuffer_list, %rdi
	callq	Fcar
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB17_18:                              # %cond.end.41
	movq	-112(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movl	%ecx, %edx
	callq	set_window_buffer
.LBB17_19:                              # %if.end.42
	movq	-32(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	make_frame_without_minibuffer, .Lfunc_end17-make_frame_without_minibuffer
	.cfi_endproc

	.globl	make_minibuffer_frame
	.align	16, 0x90
	.type	make_minibuffer_frame,@function
make_minibuffer_frame:                  # @make_minibuffer_frame
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
	subq	$64, %rsp
	xorl	%edi, %edi
	callq	make_frame
	movl	$5, %esi
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	208(%rax), %rdi
	andq	$-32769, %rdi           # imm = 0xFFFFFFFFFFFF7FFF
	movq	%rdi, 208(%rax)
	movq	-8(%rbp), %rax
	movq	208(%rax), %rdi
	andq	$-65537, %rdi           # imm = 0xFFFFFFFFFFFEFFFF
	movq	%rdi, 208(%rax)
	movq	-8(%rbp), %rax
	movq	208(%rax), %rdi
	andq	$-131073, %rdi          # imm = 0xFFFFFFFFFFFDFFFF
	orq	$131072, %rdi           # imm = 0x20000
	movq	%rdi, 208(%rax)
	movq	-8(%rbp), %rax
	movq	208(%rax), %rdi
	andq	$-16385, %rdi           # imm = 0xFFFFFFFFFFFFBFFF
	movq	%rdi, 208(%rax)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	fset_minibuffer_window
	movq	-16(%rbp), %rdi
	callq	XWINDOW
	movw	468(%rax), %cx
	andw	$-2, %cx
	orw	$1, %cx
	movw	%cx, 468(%rax)
	movq	-16(%rbp), %rdi
	callq	XWINDOW
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	wset_next
	movq	-16(%rbp), %rdi
	callq	XWINDOW
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	wset_prev
	movq	-16(%rbp), %rdi
	callq	XWINDOW
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	wset_frame
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	Vminibuffer_list, %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB18_2
# BB#1:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	get_minibuffer
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB18_3
.LBB18_2:                               # %cond.false
	movq	Vminibuffer_list, %rdi
	callq	Fcar
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB18_3:                               # %cond.end
	movq	-64(%rbp), %rax         # 8-byte Reload
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movl	%ecx, %edx
	callq	set_window_buffer
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	make_minibuffer_frame, .Lfunc_end18-make_minibuffer_frame
	.cfi_endproc

	.globl	make_initial_frame
	.align	16, 0x90
	.type	make_initial_frame,@function
make_initial_frame:                     # @make_initial_frame
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
	xorl	%edi, %edi
	movq	Vframe_list, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB19_3
# BB#1:                                 # %lor.lhs.false
	movq	Vframe_list, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB19_3
# BB#2:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, Vframe_list
.LBB19_3:                               # %if.end
	callq	init_initial_terminal
	movl	$1, %edi
	movq	%rax, -16(%rbp)
	callq	make_frame
	movl	$5, %esi
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	Vframe_list, %rsi
	callq	Fcons
	movabsq	$.L.str.4, %rdi
	movq	%rax, Vframe_list
	movq	$1, tty_frame_count
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	build_pure_c_string
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	fset_name
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	callq	SET_FRAME_VISIBLE
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movl	56(%rax), %esi
	movq	-8(%rbp), %rax
	movl	%esi, %esi
	movl	%esi, %ecx
	movq	208(%rax), %rdx
	andq	$7, %rcx
	shlq	$23, %rcx
	andq	$-58720257, %rdx        # imm = 0xFFFFFFFFFC7FFFFF
	orq	%rcx, %rdx
	movq	%rdx, 208(%rax)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 376(%rcx)
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movl	52(%rax), %esi
	addl	$1, %esi
	movl	%esi, 52(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 384(%rax)
	movq	-8(%rbp), %rax
	movq	$-2, 480(%rax)
	movq	-8(%rbp), %rax
	movq	$-3, 472(%rax)
	movq	-8(%rbp), %rax
	movabsq	$-3221225473, %rcx      # imm = 0xFFFFFFFF3FFFFFFF
	andq	208(%rax), %rcx
	movq	%rcx, 208(%rax)
	movq	-8(%rbp), %rax
	movabsq	$-4294967297, %rcx      # imm = 0xFFFFFFFEFFFFFFFF
	andq	208(%rax), %rcx
	movq	%rcx, 208(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$6, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	set_menu_bar_lines
	movq	-8(%rbp), %rdi
	callq	adjust_frame_glyphs
	testb	$1, noninteractive
	jne	.LBB19_5
# BB#4:                                 # %if.then.16
	movq	-8(%rbp), %rdi
	callq	init_frame_faces
.LBB19_5:                               # %if.end.17
	movq	-8(%rbp), %rax
	movq	%rax, last_nonminibuf_frame
	movq	-8(%rbp), %rax
	movabsq	$-17179869185, %rcx     # imm = 0xFFFFFFFBFFFFFFFF
	andq	208(%rax), %rcx
	movabsq	$17179869184, %rdx      # imm = 0x400000000
	orq	%rdx, %rcx
	movq	%rcx, 208(%rax)
	movq	-8(%rbp), %rax
	movabsq	$-34359738369, %rcx     # imm = 0xFFFFFFF7FFFFFFFF
	andq	208(%rax), %rcx
	movabsq	$34359738368, %rdx      # imm = 0x800000000
	orq	%rdx, %rcx
	movq	%rcx, 208(%rax)
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	make_initial_frame, .Lfunc_end19-make_initial_frame
	.cfi_endproc

	.align	16, 0x90
	.type	set_menu_bar_lines,@function
set_menu_bar_lines:                     # @set_menu_bar_lines
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movl	356(%rdx), %eax
	movl	%eax, -32(%rbp)
	movq	-8(%rbp), %rdx
	movq	40(%rdx), %rdx
	movq	-8(%rbp), %rsi
	cmpq	56(%rsi), %rdx
	jne	.LBB20_2
# BB#1:                                 # %if.then
	jmp	.LBB20_11
.LBB20_2:                               # %if.end
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB20_8
# BB#3:                                 # %land.lhs.true
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_5
	jmp	.LBB20_4
.LBB20_4:                               # %cond.true
	movq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	movq	-16(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jle	.LBB20_6
	jmp	.LBB20_8
.LBB20_5:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	sarq	$2, %rdx
	cmpq	%rdx, %rcx
	jg	.LBB20_8
.LBB20_6:                               # %land.lhs.true.9
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	jg	.LBB20_8
# BB#7:                                 # %if.then.13
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -28(%rbp)
	jmp	.LBB20_9
.LBB20_8:                               # %if.else
	movl	$0, -28(%rbp)
.LBB20_9:                               # %if.end.16
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	je	.LBB20_11
# BB#10:                                # %if.then.19
	xorl	%eax, %eax
	movl	$1, %r8d
	movl	$14, windows_or_buffers_changed
	movl	-28(%rbp), %ecx
	movq	-8(%rbp), %rdx
	movl	%ecx, 356(%rdx)
	movl	-28(%rbp), %ecx
	movq	-8(%rbp), %rdx
	imull	368(%rdx), %ecx
	movq	-8(%rbp), %rdx
	movl	%ecx, 360(%rdx)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movl	272(%rdx), %esi
	movq	-8(%rbp), %rdx
	movl	276(%rdx), %ecx
	addl	-32(%rbp), %ecx
	subl	-28(%rbp), %ecx
	movl	%ecx, %edx
	movl	%eax, %ecx
	movl	%eax, %r9d
	movl	$0, (%rsp)
	callq	change_frame_size
.LBB20_11:                              # %if.end.21
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	set_menu_bar_lines, .Lfunc_end20-set_menu_bar_lines
	.cfi_endproc

	.globl	Fmake_terminal_frame
	.align	16, 0x90
	.type	Fmake_terminal_frame,@function
Fmake_terminal_frame:                   # @Fmake_terminal_frame
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
	subq	$352, %rsp              # imm = 0x160
	movq	%rdi, -8(%rbp)
	movq	$0, -24(%rbp)
	movq	selected_frame, %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB21_1
	jmp	.LBB21_3
.LBB21_1:                               # %land.lhs.true
	movq	selected_frame, %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB21_3
# BB#2:                                 # %cond.true
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB21_4
.LBB21_3:                               # %cond.false
	callq	emacs_abort
.LBB21_4:                               # %cond.end
	movl	$906, %edi              # imm = 0x38A
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, -48(%rbp)
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fassq
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB21_6
# BB#5:                                 # %if.then
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	decode_live_terminal
	movq	%rax, -24(%rbp)
.LBB21_6:                               # %if.end
	cmpq	$0, -24(%rbp)
	jne	.LBB21_40
# BB#7:                                 # %if.then.9
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$16384, -96(%rbp)       # imm = 0x4000
	callq	SPECPDL_INDEX
	movl	$938, %edi              # imm = 0x3AA
	movq	%rax, -104(%rbp)
	movb	$0, -105(%rbp)
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	selected_frame, %rcx
	subq	$5, %rcx
	movq	208(%rcx), %rcx
	shrq	$23, %rcx
	andq	$7, %rcx
	movl	%ecx, %edi
	cmpl	$1, %edi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	jne	.LBB21_13
# BB#8:                                 # %cond.true.15
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	je	.LBB21_10
# BB#9:                                 # %lor.lhs.false
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB21_11
.LBB21_10:                              # %cond.true.32
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	376(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jmp	.LBB21_12
.LBB21_11:                              # %cond.false.36
	callq	emacs_abort
.LBB21_12:                              # %cond.end.37
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	jmp	.LBB21_14
.LBB21_13:                              # %cond.false.40
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	jmp	.LBB21_14
.LBB21_14:                              # %cond.end.41
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	-144(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	get_future_frame_param
	xorl	%edi, %edi
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB21_21
# BB#15:                                # %if.then.47
	jmp	.LBB21_16
.LBB21_16:                              # %do.body
	movq	-80(%rbp), %rdi
	callq	SBYTES
	addq	$1, %rax
	cmpq	-96(%rbp), %rax
	jg	.LBB21_18
# BB#17:                                # %cond.true.51
	movq	-80(%rbp), %rdi
	callq	SBYTES
	incq	%rax
	movq	-96(%rbp), %rdi
	subq	%rax, %rdi
	movq	%rdi, -96(%rbp)
	movq	-80(%rbp), %rdi
	callq	SBYTES
	addq	$16, %rax
	andq	$-16, %rax
	movq	%rsp, %rdi
	subq	%rax, %rdi
	movq	%rdi, %rsp
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	jmp	.LBB21_19
.LBB21_18:                              # %cond.false.57
	movb	$1, -105(%rbp)
	movq	-80(%rbp), %rdi
	callq	SBYTES
	addq	$1, %rax
	movq	%rax, %rdi
	callq	record_xmalloc
	movq	%rax, -176(%rbp)        # 8-byte Spill
.LBB21_19:                              # %cond.end.61
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	SDATA
	movq	-80(%rbp), %rdi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	SBYTES
	addq	$1, %rax
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	-192(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	memcpy
# BB#20:                                # %do.end
	jmp	.LBB21_21
.LBB21_21:                              # %if.end.66
	movl	$955, %edi              # imm = 0x3BB
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	selected_frame, %rcx
	subq	$5, %rcx
	movq	208(%rcx), %rcx
	shrq	$23, %rcx
	andq	$7, %rcx
	movl	%ecx, %edi
	cmpl	$1, %edi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	movq	%rsi, -208(%rbp)        # 8-byte Spill
	jne	.LBB21_27
# BB#22:                                # %cond.true.76
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	je	.LBB21_24
# BB#23:                                # %lor.lhs.false.85
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB21_25
.LBB21_24:                              # %cond.true.94
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	376(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	jmp	.LBB21_26
.LBB21_25:                              # %cond.false.99
	callq	emacs_abort
.LBB21_26:                              # %cond.end.100
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	16(%rax), %rcx
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	jmp	.LBB21_28
.LBB21_27:                              # %cond.false.103
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	jmp	.LBB21_28
.LBB21_28:                              # %cond.end.104
	movq	-224(%rbp), %rax        # 8-byte Reload
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	-208(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	get_future_frame_param
	xorl	%edi, %edi
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-232(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB21_35
# BB#29:                                # %if.then.110
	jmp	.LBB21_30
.LBB21_30:                              # %do.body.111
	movq	-88(%rbp), %rdi
	callq	SBYTES
	addq	$1, %rax
	cmpq	-96(%rbp), %rax
	jg	.LBB21_32
# BB#31:                                # %cond.true.116
	movq	-88(%rbp), %rdi
	callq	SBYTES
	incq	%rax
	movq	-96(%rbp), %rdi
	subq	%rax, %rdi
	movq	%rdi, -96(%rbp)
	movq	-88(%rbp), %rdi
	callq	SBYTES
	addq	$16, %rax
	andq	$-16, %rax
	movq	%rsp, %rdi
	subq	%rax, %rdi
	movq	%rdi, %rsp
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	jmp	.LBB21_33
.LBB21_32:                              # %cond.false.122
	movb	$1, -105(%rbp)
	movq	-88(%rbp), %rdi
	callq	SBYTES
	addq	$1, %rax
	movq	%rax, %rdi
	callq	record_xmalloc
	movq	%rax, -240(%rbp)        # 8-byte Spill
.LBB21_33:                              # %cond.end.126
	movq	-240(%rbp), %rax        # 8-byte Reload
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	movq	-88(%rbp), %rax
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	SDATA
	movq	-88(%rbp), %rdi
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	SBYTES
	addq	$1, %rax
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	-256(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	memcpy
# BB#34:                                # %do.end.131
	jmp	.LBB21_35
.LBB21_35:                              # %if.end.132
	xorl	%edx, %edx
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	init_tty
	movq	%rax, -24(%rbp)
# BB#36:                                # %do.body.134
	testb	$1, -105(%rbp)
	je	.LBB21_38
# BB#37:                                # %if.then.136
	xorl	%edi, %edi
	movb	$0, -105(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -272(%rbp)        # 8-byte Spill
.LBB21_38:                              # %if.end.139
	jmp	.LBB21_39
.LBB21_39:                              # %do.end.140
	jmp	.LBB21_40
.LBB21_40:                              # %if.end.141
	movq	-24(%rbp), %rdi
	callq	make_terminal_frame
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	je	.LBB21_42
# BB#41:                                # %lor.lhs.false.150
	movq	-16(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB21_43
.LBB21_42:                              # %cond.true.158
	movq	-16(%rbp), %rax
	movq	376(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	jmp	.LBB21_44
.LBB21_43:                              # %cond.false.162
	callq	emacs_abort
.LBB21_44:                              # %cond.end.163
	movq	-280(%rbp), %rax        # 8-byte Reload
	movq	24(%rax), %rdi
	callq	fileno
	leaq	-112(%rbp), %rsi
	leaq	-116(%rbp), %rdx
	movl	%eax, %edi
	callq	get_tty_size
	movl	$907, %edi              # imm = 0x38B
	movq	-16(%rbp), %rdx
	movl	-112(%rbp), %esi
	movl	-116(%rbp), %eax
	movq	-16(%rbp), %rcx
	subl	356(%rcx), %eax
	movl	%eax, -284(%rbp)        # 4-byte Spill
	movq	%rdx, -296(%rbp)        # 8-byte Spill
	movl	%esi, -300(%rbp)        # 4-byte Spill
	callq	builtin_lisp_symbol
	movl	$5, %ecx
	xorl	%r8d, %r8d
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movl	-300(%rbp), %esi        # 4-byte Reload
	movl	-284(%rbp), %edx        # 4-byte Reload
	movq	%rax, %r9
	callq	adjust_frame_size
	movq	-16(%rbp), %rdi
	callq	adjust_frame_glyphs
	movq	-16(%rbp), %rdi
	callq	calculate_costs
	movl	$5, %esi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movl	$955, %edi              # imm = 0x3BB
	movq	%rax, -32(%rbp)
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %r9
	movq	88(%r9), %r9
	movq	16(%r9), %rdi
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	build_string
	leaq	-8(%rbp), %rdi
	movq	-312(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	store_in_alist
	movl	$938, %edi              # imm = 0x3AA
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rdx
	movq	88(%rdx), %rdx
	cmpq	$0, 8(%rdx)
	movq	%rax, -320(%rbp)        # 8-byte Spill
	je	.LBB21_46
# BB#45:                                # %cond.true.179
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	movq	8(%rax), %rdi
	callq	build_string
	movq	%rax, -328(%rbp)        # 8-byte Spill
	jmp	.LBB21_47
.LBB21_46:                              # %cond.false.184
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -328(%rbp)        # 8-byte Spill
.LBB21_47:                              # %cond.end.186
	movq	-328(%rbp), %rax        # 8-byte Reload
	leaq	-8(%rbp), %rdi
	movq	-320(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	store_in_alist
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	Fmodify_frame_parameters
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rdx
	movq	96(%rdx), %rdx
	movq	%rdi, -336(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	Fcopy_alist
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	fset_face_alist
	movq	-16(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB21_48:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB21_51
# BB#49:                                # %for.body
                                        #   in Loop: Header=BB21_48 Depth=1
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rdi, -352(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	Fcopy_sequence
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	XSETCDR
# BB#50:                                # %for.inc
                                        #   in Loop: Header=BB21_48 Depth=1
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB21_48
.LBB21_51:                              # %for.end
	movq	-16(%rbp), %rax
	movabsq	$-17179869185, %rcx     # imm = 0xFFFFFFFBFFFFFFFF
	andq	208(%rax), %rcx
	movabsq	$17179869184, %rdx      # imm = 0x400000000
	orq	%rdx, %rcx
	movq	%rcx, 208(%rax)
	movq	-16(%rbp), %rax
	movabsq	$-34359738369, %rcx     # imm = 0xFFFFFFF7FFFFFFFF
	andq	208(%rax), %rcx
	movabsq	$34359738368, %rdx      # imm = 0x800000000
	orq	%rdx, %rcx
	movq	%rcx, 208(%rax)
	movq	-32(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	Fmake_terminal_frame, .Lfunc_end21-Fmake_terminal_frame
	.cfi_endproc

	.align	16, 0x90
	.type	get_future_frame_param,@function
get_future_frame_param:                 # @get_future_frame_param
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	Fassq
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB22_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	64(%rax), %rsi
	callq	Fassq
	movq	%rax, -32(%rbp)
.LBB22_2:                               # %if.end
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB22_5
# BB#3:                                 # %land.lhs.true
	cmpq	$0, -24(%rbp)
	je	.LBB22_5
# BB#4:                                 # %if.then.6
	movq	-24(%rbp), %rdi
	callq	build_string
	movq	%rax, -32(%rbp)
.LBB22_5:                               # %if.end.8
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB22_8
# BB#6:                                 # %land.lhs.true.11
	movq	-32(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB22_8
# BB#7:                                 # %if.then.13
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB22_8:                               # %if.end.15
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB22_10
# BB#9:                                 # %lor.lhs.false
	movq	-32(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB22_11
.LBB22_10:                              # %if.then.19
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)
.LBB22_11:                              # %if.end.21
	movq	-32(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	get_future_frame_param, .Lfunc_end22-get_future_frame_param
	.cfi_endproc

	.align	16, 0x90
	.type	make_terminal_frame,@function
make_terminal_frame:                    # @make_terminal_frame
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 64(%rdi)
	jne	.LBB23_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.65, %rdi
	movb	$0, %al
	callq	error
.LBB23_2:                               # %if.end
	movl	$1, %edi
	callq	make_frame
	movl	$5, %esi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	Vframe_list, %rsi
	callq	Fcons
	movabsq	$.L.str.66, %rsi
	leaq	-48(%rbp), %rdi
	movq	%rax, Vframe_list
	movq	-16(%rbp), %rax
	movq	tty_frame_count, %rcx
	addq	$1, %rcx
	movq	%rcx, tty_frame_count
	movq	%rcx, %rdx
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movb	$0, %al
	callq	make_formatted_string
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	fset_name
	movl	$1, %esi
	movq	-16(%rbp), %rdi
	callq	SET_FRAME_VISIBLE
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 376(%rcx)
	movq	-16(%rbp), %rax
	movq	376(%rax), %rax
	movl	52(%rax), %esi
	addl	$1, %esi
	movl	%esi, 52(%rax)
	movq	-16(%rbp), %rax
	movq	208(%rax), %rcx
	andq	$-58720257, %rcx        # imm = 0xFFFFFFFFFC7FFFFF
	orq	$8388608, %rcx          # imm = 0x800000
	movq	%rcx, 208(%rax)
	movq	-16(%rbp), %rdi
	callq	create_tty_output
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	$-2, 480(%rax)
	movq	-16(%rbp), %rax
	movq	$-3, 472(%rax)
	movq	-16(%rbp), %rax
	movabsq	$-3221225473, %rcx      # imm = 0xFFFFFFFF3FFFFFFF
	andq	208(%rax), %rcx
	movq	%rcx, 208(%rax)
	movq	-16(%rbp), %rax
	movabsq	$-4294967297, %rcx      # imm = 0xFFFFFFFEFFFFFFFF
	andq	208(%rax), %rcx
	movq	%rcx, 208(%rax)
	movq	globals+1416, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$1, %esi
	xorl	%edi, %edi
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	cmovel	%edi, %esi
	movq	-16(%rbp), %rax
	movl	%esi, 356(%rax)
	movq	-16(%rbp), %rax
	movl	276(%rax), %esi
	movq	-16(%rbp), %rax
	subl	356(%rax), %esi
	movq	-16(%rbp), %rax
	movl	%esi, 276(%rax)
	movq	-16(%rbp), %rax
	movl	356(%rax), %esi
	movq	-16(%rbp), %rax
	imull	368(%rax), %esi
	movq	-16(%rbp), %rax
	movl	%esi, 360(%rax)
	movq	-16(%rbp), %rax
	movl	292(%rax), %esi
	movq	-16(%rbp), %rax
	subl	360(%rax), %esi
	movq	-16(%rbp), %rax
	movl	%esi, 292(%rax)
	movq	-16(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %esi
	cmpl	$1, %esi
	je	.LBB23_4
# BB#3:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB23_5
.LBB23_4:                               # %cond.true
	movq	-16(%rbp), %rax
	movq	376(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB23_6
.LBB23_5:                               # %cond.false
	callq	emacs_abort
.LBB23_6:                               # %cond.end
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	80(%rax), %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB23_7
	jmp	.LBB23_17
.LBB23_7:                               # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	je	.LBB23_9
# BB#8:                                 # %lor.lhs.false.38
	movq	-16(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB23_10
.LBB23_9:                               # %cond.true.45
	movq	-16(%rbp), %rax
	movq	376(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB23_11
.LBB23_10:                              # %cond.false.49
	callq	emacs_abort
.LBB23_11:                              # %cond.end.50
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	80(%rax), %rcx
	subq	$5, %rcx
	cmpq	$0, 376(%rcx)
	je	.LBB23_17
# BB#12:                                # %if.then.56
	movq	-16(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	je	.LBB23_14
# BB#13:                                # %lor.lhs.false.63
	movq	-16(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB23_15
.LBB23_14:                              # %cond.true.70
	movq	-16(%rbp), %rax
	movq	376(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB23_16
.LBB23_15:                              # %cond.false.74
	callq	emacs_abort
.LBB23_16:                              # %cond.end.75
	movl	$2, %esi
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	80(%rax), %rcx
	subq	$5, %rcx
	movq	%rcx, %rdi
	callq	SET_FRAME_VISIBLE
.LBB23_17:                              # %if.end.79
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	208(%rcx), %rcx
	shrq	$23, %rcx
	andq	$7, %rcx
	movl	%ecx, %edx
	cmpl	$1, %edx
	movq	%rax, -96(%rbp)         # 8-byte Spill
	je	.LBB23_19
# BB#18:                                # %lor.lhs.false.86
	movq	-16(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB23_20
.LBB23_19:                              # %cond.true.93
	movq	-16(%rbp), %rax
	movq	376(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB23_21
.LBB23_20:                              # %cond.false.97
	callq	emacs_abort
.LBB23_21:                              # %cond.end.98
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, 80(%rax)
	testb	$1, noninteractive
	jne	.LBB23_23
# BB#22:                                # %if.then.102
	movq	-16(%rbp), %rdi
	callq	init_frame_faces
.LBB23_23:                              # %if.end.103
	movq	-16(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	make_terminal_frame, .Lfunc_end23-make_terminal_frame
	.cfi_endproc

	.globl	store_in_alist
	.align	16, 0x90
	.type	store_in_alist,@function
store_in_alist:                         # @store_in_alist
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rsi
	callq	Fassq
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB24_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	Fcons
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	-8(%rbp), %rsi
	movq	%rax, (%rsi)
	jmp	.LBB24_3
.LBB24_2:                               # %if.else
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	Fsetcdr
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB24_3:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	store_in_alist, .Lfunc_end24-store_in_alist
	.cfi_endproc

	.globl	Fmodify_frame_parameters
	.align	16, 0x90
	.type	Fmodify_frame_parameters,@function
Fmodify_frame_parameters:               # @Fmodify_frame_parameters
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
	subq	$976, %rsp              # imm = 0x3D0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_live_frame
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHECK_LIST
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	.LBB25_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	x_set_frame_parameters
	jmp	.LBB25_424
.LBB25_2:                               # %if.else
	movq	-16(%rbp), %rdi
	callq	Flength
	sarq	$2, %rax
	movq	%rax, -48(%rbp)
	movq	$16384, -80(%rbp)       # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -88(%rbp)
	movb	$0, -89(%rbp)
# BB#3:                                 # %do.body
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB25_4
	jmp	.LBB25_83
.LBB25_4:                               # %cond.true
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB25_5
	jmp	.LBB25_44
.LBB25_5:                               # %cond.true.3
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB25_7
# BB#6:                                 # %cond.true.8
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
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
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
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
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jmp	.LBB25_8
.LBB25_7:                               # %cond.false
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -124(%rbp)        # 4-byte Spill
.LBB25_8:                               # %cond.end
	movl	-124(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB25_10
# BB#9:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jl	.LBB25_36
.LBB25_10:                              # %lor.lhs.false
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB25_11
	jmp	.LBB25_22
.LBB25_11:                              # %cond.true.41
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB25_16
# BB#12:                                # %cond.true.47
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -128(%rbp)        # 4-byte Spill
	jge	.LBB25_14
# BB#13:                                # %cond.true.59
	movq	-48(%rbp), %rax
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
	movl	%edx, -132(%rbp)        # 4-byte Spill
	jmp	.LBB25_15
.LBB25_14:                              # %cond.false.70
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -132(%rbp)        # 4-byte Spill
.LBB25_15:                              # %cond.end.77
	movl	-132(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-128(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB25_36
	jmp	.LBB25_33
.LBB25_16:                              # %cond.false.81
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB25_17
	jmp	.LBB25_18
.LBB25_17:                              # %cond.true.82
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB25_36
	jmp	.LBB25_33
.LBB25_18:                              # %cond.false.83
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB25_20
# BB#19:                                # %cond.true.92
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
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
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
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
	movl	%eax, -136(%rbp)        # 4-byte Spill
	jmp	.LBB25_21
.LBB25_20:                              # %cond.false.114
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -136(%rbp)        # 4-byte Spill
.LBB25_21:                              # %cond.end.121
	movl	-136(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-48(%rbp), %rsi
	shlq	$1, %rsi
	movb	%sil, %dil
	movsbl	%dil, %ecx
	cmpl	%ecx, %eax
	jl	.LBB25_36
	jmp	.LBB25_33
.LBB25_22:                              # %cond.false.129
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB25_23
	jmp	.LBB25_24
.LBB25_23:                              # %cond.true.130
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB25_36
	jmp	.LBB25_33
.LBB25_24:                              # %cond.false.131
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB25_29
# BB#25:                                # %cond.true.137
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -140(%rbp)        # 4-byte Spill
	jge	.LBB25_27
# BB#26:                                # %cond.true.149
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
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
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
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
	movl	%eax, -144(%rbp)        # 4-byte Spill
	jmp	.LBB25_28
.LBB25_27:                              # %cond.false.171
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -144(%rbp)        # 4-byte Spill
.LBB25_28:                              # %cond.end.178
	movl	-144(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-140(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB25_36
	jmp	.LBB25_33
.LBB25_29:                              # %cond.false.183
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB25_31
# BB#30:                                # %cond.true.192
	movq	-48(%rbp), %rax
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
	movl	%edx, -148(%rbp)        # 4-byte Spill
	jmp	.LBB25_32
.LBB25_31:                              # %cond.false.203
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -148(%rbp)        # 4-byte Spill
.LBB25_32:                              # %cond.end.210
	movl	-148(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-48(%rbp), %rsi
	shlq	$1, %rsi
	movb	%sil, %dil
	movsbl	%dil, %ecx
	cmpl	%ecx, %eax
	jl	.LBB25_36
.LBB25_33:                              # %lor.lhs.false.218
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	shll	$3, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB25_35
# BB#34:                                # %land.lhs.true.227
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	shll	$3, %edx
	cmpl	$-128, %edx
	jl	.LBB25_36
.LBB25_35:                              # %lor.lhs.false.234
	movl	$127, %eax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	shll	$3, %esi
	cmpl	%esi, %eax
	jge	.LBB25_40
.LBB25_36:                              # %cond.true.241
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB25_38
# BB#37:                                # %cond.true.248
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -152(%rbp)        # 4-byte Spill
	jmp	.LBB25_39
.LBB25_38:                              # %cond.false.255
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -152(%rbp)        # 4-byte Spill
.LBB25_39:                              # %cond.end.264
	movl	-152(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -104(%rbp)
	testb	$1, %cl
	jne	.LBB25_403
	jmp	.LBB25_402
.LBB25_40:                              # %cond.false.267
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB25_42
# BB#41:                                # %cond.true.274
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -156(%rbp)        # 4-byte Spill
	jmp	.LBB25_43
.LBB25_42:                              # %cond.false.281
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -156(%rbp)        # 4-byte Spill
.LBB25_43:                              # %cond.end.290
	movl	-156(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -104(%rbp)
	testb	$1, %dl
	jne	.LBB25_403
	jmp	.LBB25_402
.LBB25_44:                              # %cond.false.293
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB25_46
# BB#45:                                # %cond.true.300
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
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
	movq	-48(%rbp), %rdi
	shlq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	jmp	.LBB25_47
.LBB25_46:                              # %cond.false.319
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
.LBB25_47:                              # %cond.end.324
	movq	-168(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB25_49
# BB#48:                                # %land.lhs.true.328
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	cmpq	$0, %rax
	jl	.LBB25_75
.LBB25_49:                              # %lor.lhs.false.332
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB25_50
	jmp	.LBB25_61
.LBB25_50:                              # %cond.true.333
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB25_55
# BB#51:                                # %cond.true.337
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jge	.LBB25_53
# BB#52:                                # %cond.true.345
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB25_54
.LBB25_53:                              # %cond.false.354
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
.LBB25_54:                              # %cond.end.359
	movq	-184(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -192(%rbp)        # 8-byte Spill
	cqto
	movq	-192(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-176(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB25_75
	jmp	.LBB25_72
.LBB25_55:                              # %cond.false.364
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB25_56
	jmp	.LBB25_57
.LBB25_56:                              # %cond.true.365
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB25_75
	jmp	.LBB25_72
.LBB25_57:                              # %cond.false.366
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB25_59
# BB#58:                                # %cond.true.373
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
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
	movq	-48(%rbp), %rdi
	shlq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	jmp	.LBB25_60
.LBB25_59:                              # %cond.false.392
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
.LBB25_60:                              # %cond.end.397
	movq	-200(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -208(%rbp)        # 8-byte Spill
	cqto
	movq	-208(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-48(%rbp), %rdi
	shlq	$1, %rdi
	cmpq	%rdi, %rax
	jl	.LBB25_75
	jmp	.LBB25_72
.LBB25_61:                              # %cond.false.403
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB25_62
	jmp	.LBB25_63
.LBB25_62:                              # %cond.true.404
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB25_75
	jmp	.LBB25_72
.LBB25_63:                              # %cond.false.405
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB25_68
# BB#64:                                # %cond.true.409
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -216(%rbp)        # 8-byte Spill
	jge	.LBB25_66
# BB#65:                                # %cond.true.417
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
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
	movq	-48(%rbp), %rdi
	shlq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	jmp	.LBB25_67
.LBB25_66:                              # %cond.false.436
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
.LBB25_67:                              # %cond.end.441
	movq	-224(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -232(%rbp)        # 8-byte Spill
	cqto
	movq	-232(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-216(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB25_75
	jmp	.LBB25_72
.LBB25_68:                              # %cond.false.446
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB25_70
# BB#69:                                # %cond.true.453
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	jmp	.LBB25_71
.LBB25_70:                              # %cond.false.462
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
.LBB25_71:                              # %cond.end.467
	movq	-240(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -248(%rbp)        # 8-byte Spill
	cqto
	movq	-248(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-48(%rbp), %rdi
	shlq	$1, %rdi
	cmpq	%rdi, %rax
	jl	.LBB25_75
.LBB25_72:                              # %lor.lhs.false.473
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB25_74
# BB#73:                                # %land.lhs.true.480
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	shlq	$3, %rax
	cmpq	$-128, %rax
	jl	.LBB25_75
.LBB25_74:                              # %lor.lhs.false.485
	movl	$127, %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	shlq	$1, %rdx
	shlq	$3, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB25_79
.LBB25_75:                              # %cond.true.490
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB25_77
# BB#76:                                # %cond.true.497
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -252(%rbp)        # 4-byte Spill
	jmp	.LBB25_78
.LBB25_77:                              # %cond.false.504
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -252(%rbp)        # 4-byte Spill
.LBB25_78:                              # %cond.end.513
	movl	-252(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -104(%rbp)
	testb	$1, %cl
	jne	.LBB25_403
	jmp	.LBB25_402
.LBB25_79:                              # %cond.false.516
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB25_81
# BB#80:                                # %cond.true.523
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -256(%rbp)        # 4-byte Spill
	jmp	.LBB25_82
.LBB25_81:                              # %cond.false.530
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -256(%rbp)        # 4-byte Spill
.LBB25_82:                              # %cond.end.539
	movl	-256(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -104(%rbp)
	testb	$1, %dl
	jne	.LBB25_403
	jmp	.LBB25_402
.LBB25_83:                              # %cond.false.542
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB25_84
	jmp	.LBB25_163
.LBB25_84:                              # %cond.true.543
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB25_85
	jmp	.LBB25_124
.LBB25_85:                              # %cond.true.544
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB25_87
# BB#86:                                # %cond.true.553
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
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
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
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
	movl	%eax, -260(%rbp)        # 4-byte Spill
	jmp	.LBB25_88
.LBB25_87:                              # %cond.false.575
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -260(%rbp)        # 4-byte Spill
.LBB25_88:                              # %cond.end.582
	movl	-260(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB25_90
# BB#89:                                # %land.lhs.true.586
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jl	.LBB25_116
.LBB25_90:                              # %lor.lhs.false.592
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB25_91
	jmp	.LBB25_102
.LBB25_91:                              # %cond.true.593
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB25_96
# BB#92:                                # %cond.true.599
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -264(%rbp)        # 4-byte Spill
	jge	.LBB25_94
# BB#93:                                # %cond.true.611
	movq	-48(%rbp), %rax
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
	movl	%edx, -268(%rbp)        # 4-byte Spill
	jmp	.LBB25_95
.LBB25_94:                              # %cond.false.622
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -268(%rbp)        # 4-byte Spill
.LBB25_95:                              # %cond.end.629
	movl	-268(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-264(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB25_116
	jmp	.LBB25_113
.LBB25_96:                              # %cond.false.634
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB25_97
	jmp	.LBB25_98
.LBB25_97:                              # %cond.true.635
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB25_116
	jmp	.LBB25_113
.LBB25_98:                              # %cond.false.636
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB25_100
# BB#99:                                # %cond.true.645
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
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
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
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
	movl	%eax, -272(%rbp)        # 4-byte Spill
	jmp	.LBB25_101
.LBB25_100:                             # %cond.false.667
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -272(%rbp)        # 4-byte Spill
.LBB25_101:                             # %cond.end.674
	movl	-272(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-48(%rbp), %rsi
	shlq	$1, %rsi
	movw	%si, %di
	movswl	%di, %ecx
	cmpl	%ecx, %eax
	jl	.LBB25_116
	jmp	.LBB25_113
.LBB25_102:                             # %cond.false.682
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB25_103
	jmp	.LBB25_104
.LBB25_103:                             # %cond.true.683
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB25_116
	jmp	.LBB25_113
.LBB25_104:                             # %cond.false.684
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB25_109
# BB#105:                               # %cond.true.690
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -276(%rbp)        # 4-byte Spill
	jge	.LBB25_107
# BB#106:                               # %cond.true.702
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
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
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
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
	movl	%eax, -280(%rbp)        # 4-byte Spill
	jmp	.LBB25_108
.LBB25_107:                             # %cond.false.724
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -280(%rbp)        # 4-byte Spill
.LBB25_108:                             # %cond.end.731
	movl	-280(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-276(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB25_116
	jmp	.LBB25_113
.LBB25_109:                             # %cond.false.736
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB25_111
# BB#110:                               # %cond.true.745
	movq	-48(%rbp), %rax
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
	movl	%edx, -284(%rbp)        # 4-byte Spill
	jmp	.LBB25_112
.LBB25_111:                             # %cond.false.756
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -284(%rbp)        # 4-byte Spill
.LBB25_112:                             # %cond.end.763
	movl	-284(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-48(%rbp), %rsi
	shlq	$1, %rsi
	movw	%si, %di
	movswl	%di, %ecx
	cmpl	%ecx, %eax
	jl	.LBB25_116
.LBB25_113:                             # %lor.lhs.false.771
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	shll	$3, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB25_115
# BB#114:                               # %land.lhs.true.780
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	shll	$3, %edx
	cmpl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB25_116
.LBB25_115:                             # %lor.lhs.false.787
	movl	$32767, %eax            # imm = 0x7FFF
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	shll	$3, %esi
	cmpl	%esi, %eax
	jge	.LBB25_120
.LBB25_116:                             # %cond.true.794
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB25_118
# BB#117:                               # %cond.true.801
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -288(%rbp)        # 4-byte Spill
	jmp	.LBB25_119
.LBB25_118:                             # %cond.false.808
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -288(%rbp)        # 4-byte Spill
.LBB25_119:                             # %cond.end.817
	movl	-288(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -104(%rbp)
	testb	$1, %cl
	jne	.LBB25_403
	jmp	.LBB25_402
.LBB25_120:                             # %cond.false.820
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB25_122
# BB#121:                               # %cond.true.827
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -292(%rbp)        # 4-byte Spill
	jmp	.LBB25_123
.LBB25_122:                             # %cond.false.834
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -292(%rbp)        # 4-byte Spill
.LBB25_123:                             # %cond.end.843
	movl	-292(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -104(%rbp)
	testb	$1, %dl
	jne	.LBB25_403
	jmp	.LBB25_402
.LBB25_124:                             # %cond.false.846
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB25_126
# BB#125:                               # %cond.true.853
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
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
	movq	-48(%rbp), %rdi
	shlq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -304(%rbp)        # 8-byte Spill
	jmp	.LBB25_127
.LBB25_126:                             # %cond.false.872
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
.LBB25_127:                             # %cond.end.877
	movq	-304(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB25_129
# BB#128:                               # %land.lhs.true.881
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	cmpq	$0, %rax
	jl	.LBB25_155
.LBB25_129:                             # %lor.lhs.false.885
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB25_130
	jmp	.LBB25_141
.LBB25_130:                             # %cond.true.886
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB25_135
# BB#131:                               # %cond.true.890
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -312(%rbp)        # 8-byte Spill
	jge	.LBB25_133
# BB#132:                               # %cond.true.898
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	jmp	.LBB25_134
.LBB25_133:                             # %cond.false.907
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
.LBB25_134:                             # %cond.end.912
	movq	-320(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -328(%rbp)        # 8-byte Spill
	cqto
	movq	-328(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-312(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB25_155
	jmp	.LBB25_152
.LBB25_135:                             # %cond.false.917
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB25_136
	jmp	.LBB25_137
.LBB25_136:                             # %cond.true.918
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB25_155
	jmp	.LBB25_152
.LBB25_137:                             # %cond.false.919
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB25_139
# BB#138:                               # %cond.true.926
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
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
	movq	-48(%rbp), %rdi
	shlq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -336(%rbp)        # 8-byte Spill
	jmp	.LBB25_140
.LBB25_139:                             # %cond.false.945
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
.LBB25_140:                             # %cond.end.950
	movq	-336(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -344(%rbp)        # 8-byte Spill
	cqto
	movq	-344(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-48(%rbp), %rdi
	shlq	$1, %rdi
	cmpq	%rdi, %rax
	jl	.LBB25_155
	jmp	.LBB25_152
.LBB25_141:                             # %cond.false.956
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB25_142
	jmp	.LBB25_143
.LBB25_142:                             # %cond.true.957
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB25_155
	jmp	.LBB25_152
.LBB25_143:                             # %cond.false.958
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB25_148
# BB#144:                               # %cond.true.962
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -352(%rbp)        # 8-byte Spill
	jge	.LBB25_146
# BB#145:                               # %cond.true.970
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
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
	movq	-48(%rbp), %rdi
	shlq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -360(%rbp)        # 8-byte Spill
	jmp	.LBB25_147
.LBB25_146:                             # %cond.false.989
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
.LBB25_147:                             # %cond.end.994
	movq	-360(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -368(%rbp)        # 8-byte Spill
	cqto
	movq	-368(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-352(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB25_155
	jmp	.LBB25_152
.LBB25_148:                             # %cond.false.999
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB25_150
# BB#149:                               # %cond.true.1006
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	jmp	.LBB25_151
.LBB25_150:                             # %cond.false.1015
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
.LBB25_151:                             # %cond.end.1020
	movq	-376(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -384(%rbp)        # 8-byte Spill
	cqto
	movq	-384(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-48(%rbp), %rdi
	shlq	$1, %rdi
	cmpq	%rdi, %rax
	jl	.LBB25_155
.LBB25_152:                             # %lor.lhs.false.1026
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB25_154
# BB#153:                               # %land.lhs.true.1033
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	shlq	$3, %rax
	cmpq	$-32768, %rax           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB25_155
.LBB25_154:                             # %lor.lhs.false.1038
	movl	$32767, %eax            # imm = 0x7FFF
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	shlq	$1, %rdx
	shlq	$3, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB25_159
.LBB25_155:                             # %cond.true.1043
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB25_157
# BB#156:                               # %cond.true.1050
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -388(%rbp)        # 4-byte Spill
	jmp	.LBB25_158
.LBB25_157:                             # %cond.false.1057
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -388(%rbp)        # 4-byte Spill
.LBB25_158:                             # %cond.end.1066
	movl	-388(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -104(%rbp)
	testb	$1, %cl
	jne	.LBB25_403
	jmp	.LBB25_402
.LBB25_159:                             # %cond.false.1069
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB25_161
# BB#160:                               # %cond.true.1076
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -392(%rbp)        # 4-byte Spill
	jmp	.LBB25_162
.LBB25_161:                             # %cond.false.1083
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -392(%rbp)        # 4-byte Spill
.LBB25_162:                             # %cond.end.1092
	movl	-392(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -104(%rbp)
	testb	$1, %dl
	jne	.LBB25_403
	jmp	.LBB25_402
.LBB25_163:                             # %cond.false.1095
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB25_164
	jmp	.LBB25_243
.LBB25_164:                             # %cond.true.1096
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB25_165
	jmp	.LBB25_204
.LBB25_165:                             # %cond.true.1097
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB25_167
# BB#166:                               # %cond.true.1105
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
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
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -396(%rbp)        # 4-byte Spill
	jmp	.LBB25_168
.LBB25_167:                             # %cond.false.1125
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -396(%rbp)        # 4-byte Spill
.LBB25_168:                             # %cond.end.1131
	movl	-396(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB25_170
# BB#169:                               # %land.lhs.true.1135
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jl	.LBB25_196
.LBB25_170:                             # %lor.lhs.false.1140
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB25_171
	jmp	.LBB25_182
.LBB25_171:                             # %cond.true.1141
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB25_176
# BB#172:                               # %cond.true.1146
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -400(%rbp)        # 4-byte Spill
	jge	.LBB25_174
# BB#173:                               # %cond.true.1156
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -404(%rbp)        # 4-byte Spill
	jmp	.LBB25_175
.LBB25_174:                             # %cond.false.1166
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -404(%rbp)        # 4-byte Spill
.LBB25_175:                             # %cond.end.1172
	movl	-404(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-400(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB25_196
	jmp	.LBB25_193
.LBB25_176:                             # %cond.false.1177
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB25_177
	jmp	.LBB25_178
.LBB25_177:                             # %cond.true.1178
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB25_196
	jmp	.LBB25_193
.LBB25_178:                             # %cond.false.1179
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB25_180
# BB#179:                               # %cond.true.1187
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
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
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -408(%rbp)        # 4-byte Spill
	jmp	.LBB25_181
.LBB25_180:                             # %cond.false.1207
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -408(%rbp)        # 4-byte Spill
.LBB25_181:                             # %cond.end.1213
	movl	-408(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-48(%rbp), %rsi
	shlq	$1, %rsi
	movl	%esi, %ecx
	cmpl	%ecx, %eax
	jl	.LBB25_196
	jmp	.LBB25_193
.LBB25_182:                             # %cond.false.1220
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB25_183
	jmp	.LBB25_184
.LBB25_183:                             # %cond.true.1221
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB25_196
	jmp	.LBB25_193
.LBB25_184:                             # %cond.false.1222
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB25_189
# BB#185:                               # %cond.true.1227
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -412(%rbp)        # 4-byte Spill
	jge	.LBB25_187
# BB#186:                               # %cond.true.1237
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
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
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -416(%rbp)        # 4-byte Spill
	jmp	.LBB25_188
.LBB25_187:                             # %cond.false.1257
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -416(%rbp)        # 4-byte Spill
.LBB25_188:                             # %cond.end.1263
	movl	-416(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-412(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB25_196
	jmp	.LBB25_193
.LBB25_189:                             # %cond.false.1268
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB25_191
# BB#190:                               # %cond.true.1276
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -420(%rbp)        # 4-byte Spill
	jmp	.LBB25_192
.LBB25_191:                             # %cond.false.1286
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -420(%rbp)        # 4-byte Spill
.LBB25_192:                             # %cond.end.1292
	movl	-420(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-48(%rbp), %rsi
	shlq	$1, %rsi
	movl	%esi, %ecx
	cmpl	%ecx, %eax
	jl	.LBB25_196
.LBB25_193:                             # %lor.lhs.false.1299
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB25_195
# BB#194:                               # %land.lhs.true.1307
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	jl	.LBB25_196
.LBB25_195:                             # %lor.lhs.false.1313
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	movl	%ecx, %edx
	shll	$3, %edx
	cmpl	%edx, %eax
	jge	.LBB25_200
.LBB25_196:                             # %cond.true.1319
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB25_198
# BB#197:                               # %cond.true.1325
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -424(%rbp)        # 4-byte Spill
	jmp	.LBB25_199
.LBB25_198:                             # %cond.false.1329
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -424(%rbp)        # 4-byte Spill
.LBB25_199:                             # %cond.end.1335
	movl	-424(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -104(%rbp)
	testb	$1, %cl
	jne	.LBB25_403
	jmp	.LBB25_402
.LBB25_200:                             # %cond.false.1338
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB25_202
# BB#201:                               # %cond.true.1344
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -428(%rbp)        # 4-byte Spill
	jmp	.LBB25_203
.LBB25_202:                             # %cond.false.1348
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -428(%rbp)        # 4-byte Spill
.LBB25_203:                             # %cond.end.1354
	movl	-428(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -104(%rbp)
	testb	$1, %dl
	jne	.LBB25_403
	jmp	.LBB25_402
.LBB25_204:                             # %cond.false.1357
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB25_206
# BB#205:                               # %cond.true.1364
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
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
	movq	-48(%rbp), %rdi
	shlq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -440(%rbp)        # 8-byte Spill
	jmp	.LBB25_207
.LBB25_206:                             # %cond.false.1383
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
.LBB25_207:                             # %cond.end.1388
	movq	-440(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB25_209
# BB#208:                               # %land.lhs.true.1392
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	cmpq	$0, %rax
	jl	.LBB25_235
.LBB25_209:                             # %lor.lhs.false.1396
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB25_210
	jmp	.LBB25_221
.LBB25_210:                             # %cond.true.1397
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB25_215
# BB#211:                               # %cond.true.1401
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -448(%rbp)        # 8-byte Spill
	jge	.LBB25_213
# BB#212:                               # %cond.true.1409
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	jmp	.LBB25_214
.LBB25_213:                             # %cond.false.1418
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
.LBB25_214:                             # %cond.end.1423
	movq	-456(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -464(%rbp)        # 8-byte Spill
	cqto
	movq	-464(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-448(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB25_235
	jmp	.LBB25_232
.LBB25_215:                             # %cond.false.1428
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB25_216
	jmp	.LBB25_217
.LBB25_216:                             # %cond.true.1429
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB25_235
	jmp	.LBB25_232
.LBB25_217:                             # %cond.false.1430
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB25_219
# BB#218:                               # %cond.true.1437
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
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
	movq	-48(%rbp), %rdi
	shlq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -472(%rbp)        # 8-byte Spill
	jmp	.LBB25_220
.LBB25_219:                             # %cond.false.1456
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
.LBB25_220:                             # %cond.end.1461
	movq	-472(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -480(%rbp)        # 8-byte Spill
	cqto
	movq	-480(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-48(%rbp), %rdi
	shlq	$1, %rdi
	cmpq	%rdi, %rax
	jl	.LBB25_235
	jmp	.LBB25_232
.LBB25_221:                             # %cond.false.1467
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB25_222
	jmp	.LBB25_223
.LBB25_222:                             # %cond.true.1468
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB25_235
	jmp	.LBB25_232
.LBB25_223:                             # %cond.false.1469
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB25_228
# BB#224:                               # %cond.true.1473
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -488(%rbp)        # 8-byte Spill
	jge	.LBB25_226
# BB#225:                               # %cond.true.1481
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
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
	movq	-48(%rbp), %rdi
	shlq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -496(%rbp)        # 8-byte Spill
	jmp	.LBB25_227
.LBB25_226:                             # %cond.false.1500
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
.LBB25_227:                             # %cond.end.1505
	movq	-496(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -504(%rbp)        # 8-byte Spill
	cqto
	movq	-504(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-488(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB25_235
	jmp	.LBB25_232
.LBB25_228:                             # %cond.false.1510
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB25_230
# BB#229:                               # %cond.true.1517
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	jmp	.LBB25_231
.LBB25_230:                             # %cond.false.1526
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
.LBB25_231:                             # %cond.end.1531
	movq	-512(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -520(%rbp)        # 8-byte Spill
	cqto
	movq	-520(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-48(%rbp), %rdi
	shlq	$1, %rdi
	cmpq	%rdi, %rax
	jl	.LBB25_235
.LBB25_232:                             # %lor.lhs.false.1537
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB25_234
# BB#233:                               # %land.lhs.true.1544
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	shlq	$3, %rax
	cmpq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	jl	.LBB25_235
.LBB25_234:                             # %lor.lhs.false.1549
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	shlq	$1, %rdx
	shlq	$3, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB25_239
.LBB25_235:                             # %cond.true.1554
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB25_237
# BB#236:                               # %cond.true.1560
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -524(%rbp)        # 4-byte Spill
	jmp	.LBB25_238
.LBB25_237:                             # %cond.false.1564
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -524(%rbp)        # 4-byte Spill
.LBB25_238:                             # %cond.end.1570
	movl	-524(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -104(%rbp)
	testb	$1, %cl
	jne	.LBB25_403
	jmp	.LBB25_402
.LBB25_239:                             # %cond.false.1573
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB25_241
# BB#240:                               # %cond.true.1579
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -528(%rbp)        # 4-byte Spill
	jmp	.LBB25_242
.LBB25_241:                             # %cond.false.1583
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -528(%rbp)        # 4-byte Spill
.LBB25_242:                             # %cond.end.1589
	movl	-528(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -104(%rbp)
	testb	$1, %dl
	jne	.LBB25_403
	jmp	.LBB25_402
.LBB25_243:                             # %cond.false.1592
	movb	$1, %al
	testb	$1, %al
	jne	.LBB25_244
	jmp	.LBB25_323
.LBB25_244:                             # %cond.true.1593
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB25_245
	jmp	.LBB25_284
.LBB25_245:                             # %cond.true.1594
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB25_247
# BB#246:                               # %cond.true.1601
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
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
	movq	-48(%rbp), %rdi
	shlq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -536(%rbp)        # 8-byte Spill
	jmp	.LBB25_248
.LBB25_247:                             # %cond.false.1620
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -536(%rbp)        # 8-byte Spill
.LBB25_248:                             # %cond.end.1625
	movq	-536(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB25_250
# BB#249:                               # %land.lhs.true.1629
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	cmpq	$0, %rax
	jl	.LBB25_276
.LBB25_250:                             # %lor.lhs.false.1633
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB25_251
	jmp	.LBB25_262
.LBB25_251:                             # %cond.true.1634
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB25_256
# BB#252:                               # %cond.true.1638
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -544(%rbp)        # 8-byte Spill
	jge	.LBB25_254
# BB#253:                               # %cond.true.1646
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
	jmp	.LBB25_255
.LBB25_254:                             # %cond.false.1655
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
.LBB25_255:                             # %cond.end.1660
	movq	-552(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -560(%rbp)        # 8-byte Spill
	cqto
	movq	-560(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-544(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB25_276
	jmp	.LBB25_273
.LBB25_256:                             # %cond.false.1665
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB25_257
	jmp	.LBB25_258
.LBB25_257:                             # %cond.true.1666
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB25_276
	jmp	.LBB25_273
.LBB25_258:                             # %cond.false.1667
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB25_260
# BB#259:                               # %cond.true.1674
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
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
	movq	-48(%rbp), %rdi
	shlq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -568(%rbp)        # 8-byte Spill
	jmp	.LBB25_261
.LBB25_260:                             # %cond.false.1693
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
.LBB25_261:                             # %cond.end.1698
	movq	-568(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -576(%rbp)        # 8-byte Spill
	cqto
	movq	-576(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-48(%rbp), %rdi
	shlq	$1, %rdi
	cmpq	%rdi, %rax
	jl	.LBB25_276
	jmp	.LBB25_273
.LBB25_262:                             # %cond.false.1704
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB25_263
	jmp	.LBB25_264
.LBB25_263:                             # %cond.true.1705
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB25_276
	jmp	.LBB25_273
.LBB25_264:                             # %cond.false.1706
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB25_269
# BB#265:                               # %cond.true.1710
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -584(%rbp)        # 8-byte Spill
	jge	.LBB25_267
# BB#266:                               # %cond.true.1718
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
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
	movq	-48(%rbp), %rdi
	shlq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -592(%rbp)        # 8-byte Spill
	jmp	.LBB25_268
.LBB25_267:                             # %cond.false.1737
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -592(%rbp)        # 8-byte Spill
.LBB25_268:                             # %cond.end.1742
	movq	-592(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -600(%rbp)        # 8-byte Spill
	cqto
	movq	-600(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-584(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB25_276
	jmp	.LBB25_273
.LBB25_269:                             # %cond.false.1747
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB25_271
# BB#270:                               # %cond.true.1754
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -608(%rbp)        # 8-byte Spill
	jmp	.LBB25_272
.LBB25_271:                             # %cond.false.1763
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -608(%rbp)        # 8-byte Spill
.LBB25_272:                             # %cond.end.1768
	movq	-608(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -616(%rbp)        # 8-byte Spill
	cqto
	movq	-616(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-48(%rbp), %rdi
	shlq	$1, %rdi
	cmpq	%rdi, %rax
	jl	.LBB25_276
.LBB25_273:                             # %lor.lhs.false.1774
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB25_275
# BB#274:                               # %land.lhs.true.1781
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB25_276
.LBB25_275:                             # %lor.lhs.false.1786
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB25_280
.LBB25_276:                             # %cond.true.1791
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB25_278
# BB#277:                               # %cond.true.1796
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	shlq	$3, %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
	jmp	.LBB25_279
.LBB25_278:                             # %cond.false.1799
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
.LBB25_279:                             # %cond.end.1804
	movq	-624(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -104(%rbp)
	testb	$1, %cl
	jne	.LBB25_403
	jmp	.LBB25_402
.LBB25_280:                             # %cond.false.1806
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB25_282
# BB#281:                               # %cond.true.1811
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	shlq	$3, %rax
	movq	%rax, -632(%rbp)        # 8-byte Spill
	jmp	.LBB25_283
.LBB25_282:                             # %cond.false.1814
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -632(%rbp)        # 8-byte Spill
.LBB25_283:                             # %cond.end.1819
	movq	-632(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -104(%rbp)
	testb	$1, %dl
	jne	.LBB25_403
	jmp	.LBB25_402
.LBB25_284:                             # %cond.false.1821
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB25_286
# BB#285:                               # %cond.true.1828
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
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
	movq	-48(%rbp), %rdi
	shlq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -640(%rbp)        # 8-byte Spill
	jmp	.LBB25_287
.LBB25_286:                             # %cond.false.1847
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
.LBB25_287:                             # %cond.end.1852
	movq	-640(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB25_289
# BB#288:                               # %land.lhs.true.1856
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	cmpq	$0, %rax
	jl	.LBB25_315
.LBB25_289:                             # %lor.lhs.false.1860
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB25_290
	jmp	.LBB25_301
.LBB25_290:                             # %cond.true.1861
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB25_295
# BB#291:                               # %cond.true.1865
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -648(%rbp)        # 8-byte Spill
	jge	.LBB25_293
# BB#292:                               # %cond.true.1873
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -656(%rbp)        # 8-byte Spill
	jmp	.LBB25_294
.LBB25_293:                             # %cond.false.1882
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -656(%rbp)        # 8-byte Spill
.LBB25_294:                             # %cond.end.1887
	movq	-656(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -664(%rbp)        # 8-byte Spill
	cqto
	movq	-664(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-648(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB25_315
	jmp	.LBB25_312
.LBB25_295:                             # %cond.false.1892
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB25_296
	jmp	.LBB25_297
.LBB25_296:                             # %cond.true.1893
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB25_315
	jmp	.LBB25_312
.LBB25_297:                             # %cond.false.1894
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB25_299
# BB#298:                               # %cond.true.1901
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
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
	movq	-48(%rbp), %rdi
	shlq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -672(%rbp)        # 8-byte Spill
	jmp	.LBB25_300
.LBB25_299:                             # %cond.false.1920
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -672(%rbp)        # 8-byte Spill
.LBB25_300:                             # %cond.end.1925
	movq	-672(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -680(%rbp)        # 8-byte Spill
	cqto
	movq	-680(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-48(%rbp), %rdi
	shlq	$1, %rdi
	cmpq	%rdi, %rax
	jl	.LBB25_315
	jmp	.LBB25_312
.LBB25_301:                             # %cond.false.1931
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB25_302
	jmp	.LBB25_303
.LBB25_302:                             # %cond.true.1932
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB25_315
	jmp	.LBB25_312
.LBB25_303:                             # %cond.false.1933
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB25_308
# BB#304:                               # %cond.true.1937
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -688(%rbp)        # 8-byte Spill
	jge	.LBB25_306
# BB#305:                               # %cond.true.1945
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
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
	movq	-48(%rbp), %rdi
	shlq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -696(%rbp)        # 8-byte Spill
	jmp	.LBB25_307
.LBB25_306:                             # %cond.false.1964
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -696(%rbp)        # 8-byte Spill
.LBB25_307:                             # %cond.end.1969
	movq	-696(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -704(%rbp)        # 8-byte Spill
	cqto
	movq	-704(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-688(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB25_315
	jmp	.LBB25_312
.LBB25_308:                             # %cond.false.1974
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB25_310
# BB#309:                               # %cond.true.1981
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -712(%rbp)        # 8-byte Spill
	jmp	.LBB25_311
.LBB25_310:                             # %cond.false.1990
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -712(%rbp)        # 8-byte Spill
.LBB25_311:                             # %cond.end.1995
	movq	-712(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -720(%rbp)        # 8-byte Spill
	cqto
	movq	-720(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-48(%rbp), %rdi
	shlq	$1, %rdi
	cmpq	%rdi, %rax
	jl	.LBB25_315
.LBB25_312:                             # %lor.lhs.false.2001
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB25_314
# BB#313:                               # %land.lhs.true.2008
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB25_315
.LBB25_314:                             # %lor.lhs.false.2013
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB25_319
.LBB25_315:                             # %cond.true.2018
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB25_317
# BB#316:                               # %cond.true.2023
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	shlq	$3, %rax
	movq	%rax, -728(%rbp)        # 8-byte Spill
	jmp	.LBB25_318
.LBB25_317:                             # %cond.false.2026
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -728(%rbp)        # 8-byte Spill
.LBB25_318:                             # %cond.end.2031
	movq	-728(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -104(%rbp)
	testb	$1, %cl
	jne	.LBB25_403
	jmp	.LBB25_402
.LBB25_319:                             # %cond.false.2033
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB25_321
# BB#320:                               # %cond.true.2038
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	shlq	$3, %rax
	movq	%rax, -736(%rbp)        # 8-byte Spill
	jmp	.LBB25_322
.LBB25_321:                             # %cond.false.2041
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -736(%rbp)        # 8-byte Spill
.LBB25_322:                             # %cond.end.2046
	movq	-736(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -104(%rbp)
	testb	$1, %dl
	jne	.LBB25_403
	jmp	.LBB25_402
.LBB25_323:                             # %cond.false.2048
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB25_324
	jmp	.LBB25_363
.LBB25_324:                             # %cond.true.2049
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB25_326
# BB#325:                               # %cond.true.2056
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
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
	movq	-48(%rbp), %rdi
	shlq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -744(%rbp)        # 8-byte Spill
	jmp	.LBB25_327
.LBB25_326:                             # %cond.false.2075
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -744(%rbp)        # 8-byte Spill
.LBB25_327:                             # %cond.end.2080
	movq	-744(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB25_329
# BB#328:                               # %land.lhs.true.2084
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	cmpq	$0, %rax
	jl	.LBB25_355
.LBB25_329:                             # %lor.lhs.false.2088
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB25_330
	jmp	.LBB25_341
.LBB25_330:                             # %cond.true.2089
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB25_335
# BB#331:                               # %cond.true.2093
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -752(%rbp)        # 8-byte Spill
	jge	.LBB25_333
# BB#332:                               # %cond.true.2101
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -760(%rbp)        # 8-byte Spill
	jmp	.LBB25_334
.LBB25_333:                             # %cond.false.2110
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -760(%rbp)        # 8-byte Spill
.LBB25_334:                             # %cond.end.2115
	movq	-760(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -768(%rbp)        # 8-byte Spill
	cqto
	movq	-768(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-752(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB25_355
	jmp	.LBB25_352
.LBB25_335:                             # %cond.false.2120
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB25_336
	jmp	.LBB25_337
.LBB25_336:                             # %cond.true.2121
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB25_355
	jmp	.LBB25_352
.LBB25_337:                             # %cond.false.2122
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB25_339
# BB#338:                               # %cond.true.2129
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
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
	movq	-48(%rbp), %rdi
	shlq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -776(%rbp)        # 8-byte Spill
	jmp	.LBB25_340
.LBB25_339:                             # %cond.false.2148
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -776(%rbp)        # 8-byte Spill
.LBB25_340:                             # %cond.end.2153
	movq	-776(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -784(%rbp)        # 8-byte Spill
	cqto
	movq	-784(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-48(%rbp), %rdi
	shlq	$1, %rdi
	cmpq	%rdi, %rax
	jl	.LBB25_355
	jmp	.LBB25_352
.LBB25_341:                             # %cond.false.2159
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB25_342
	jmp	.LBB25_343
.LBB25_342:                             # %cond.true.2160
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB25_355
	jmp	.LBB25_352
.LBB25_343:                             # %cond.false.2161
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB25_348
# BB#344:                               # %cond.true.2165
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -792(%rbp)        # 8-byte Spill
	jge	.LBB25_346
# BB#345:                               # %cond.true.2173
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
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
	movq	-48(%rbp), %rdi
	shlq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -800(%rbp)        # 8-byte Spill
	jmp	.LBB25_347
.LBB25_346:                             # %cond.false.2192
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -800(%rbp)        # 8-byte Spill
.LBB25_347:                             # %cond.end.2197
	movq	-800(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -808(%rbp)        # 8-byte Spill
	cqto
	movq	-808(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-792(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB25_355
	jmp	.LBB25_352
.LBB25_348:                             # %cond.false.2202
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB25_350
# BB#349:                               # %cond.true.2209
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -816(%rbp)        # 8-byte Spill
	jmp	.LBB25_351
.LBB25_350:                             # %cond.false.2218
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -816(%rbp)        # 8-byte Spill
.LBB25_351:                             # %cond.end.2223
	movq	-816(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -824(%rbp)        # 8-byte Spill
	cqto
	movq	-824(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-48(%rbp), %rdi
	shlq	$1, %rdi
	cmpq	%rdi, %rax
	jl	.LBB25_355
.LBB25_352:                             # %lor.lhs.false.2229
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB25_354
# BB#353:                               # %land.lhs.true.2236
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB25_355
.LBB25_354:                             # %lor.lhs.false.2241
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB25_359
.LBB25_355:                             # %cond.true.2246
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB25_357
# BB#356:                               # %cond.true.2251
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	shlq	$3, %rax
	movq	%rax, -832(%rbp)        # 8-byte Spill
	jmp	.LBB25_358
.LBB25_357:                             # %cond.false.2254
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -832(%rbp)        # 8-byte Spill
.LBB25_358:                             # %cond.end.2259
	movq	-832(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -104(%rbp)
	testb	$1, %cl
	jne	.LBB25_403
	jmp	.LBB25_402
.LBB25_359:                             # %cond.false.2261
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB25_361
# BB#360:                               # %cond.true.2266
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	shlq	$3, %rax
	movq	%rax, -840(%rbp)        # 8-byte Spill
	jmp	.LBB25_362
.LBB25_361:                             # %cond.false.2269
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -840(%rbp)        # 8-byte Spill
.LBB25_362:                             # %cond.end.2274
	movq	-840(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -104(%rbp)
	testb	$1, %dl
	jne	.LBB25_403
	jmp	.LBB25_402
.LBB25_363:                             # %cond.false.2276
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB25_365
# BB#364:                               # %cond.true.2283
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
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
	movq	-48(%rbp), %rdi
	shlq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -848(%rbp)        # 8-byte Spill
	jmp	.LBB25_366
.LBB25_365:                             # %cond.false.2302
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -848(%rbp)        # 8-byte Spill
.LBB25_366:                             # %cond.end.2307
	movq	-848(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB25_368
# BB#367:                               # %land.lhs.true.2311
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	cmpq	$0, %rax
	jl	.LBB25_394
.LBB25_368:                             # %lor.lhs.false.2315
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB25_369
	jmp	.LBB25_380
.LBB25_369:                             # %cond.true.2316
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB25_374
# BB#370:                               # %cond.true.2320
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -856(%rbp)        # 8-byte Spill
	jge	.LBB25_372
# BB#371:                               # %cond.true.2328
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -864(%rbp)        # 8-byte Spill
	jmp	.LBB25_373
.LBB25_372:                             # %cond.false.2337
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -864(%rbp)        # 8-byte Spill
.LBB25_373:                             # %cond.end.2342
	movq	-864(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -872(%rbp)        # 8-byte Spill
	cqto
	movq	-872(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-856(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB25_394
	jmp	.LBB25_391
.LBB25_374:                             # %cond.false.2347
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB25_375
	jmp	.LBB25_376
.LBB25_375:                             # %cond.true.2348
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB25_394
	jmp	.LBB25_391
.LBB25_376:                             # %cond.false.2349
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB25_378
# BB#377:                               # %cond.true.2356
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
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
	movq	-48(%rbp), %rdi
	shlq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -880(%rbp)        # 8-byte Spill
	jmp	.LBB25_379
.LBB25_378:                             # %cond.false.2375
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -880(%rbp)        # 8-byte Spill
.LBB25_379:                             # %cond.end.2380
	movq	-880(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -888(%rbp)        # 8-byte Spill
	cqto
	movq	-888(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-48(%rbp), %rdi
	shlq	$1, %rdi
	cmpq	%rdi, %rax
	jl	.LBB25_394
	jmp	.LBB25_391
.LBB25_380:                             # %cond.false.2386
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB25_381
	jmp	.LBB25_382
.LBB25_381:                             # %cond.true.2387
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB25_394
	jmp	.LBB25_391
.LBB25_382:                             # %cond.false.2388
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB25_387
# BB#383:                               # %cond.true.2392
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -896(%rbp)        # 8-byte Spill
	jge	.LBB25_385
# BB#384:                               # %cond.true.2400
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
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
	movq	-48(%rbp), %rdi
	shlq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -904(%rbp)        # 8-byte Spill
	jmp	.LBB25_386
.LBB25_385:                             # %cond.false.2419
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -904(%rbp)        # 8-byte Spill
.LBB25_386:                             # %cond.end.2424
	movq	-904(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -912(%rbp)        # 8-byte Spill
	cqto
	movq	-912(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-896(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB25_394
	jmp	.LBB25_391
.LBB25_387:                             # %cond.false.2429
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB25_389
# BB#388:                               # %cond.true.2436
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -920(%rbp)        # 8-byte Spill
	jmp	.LBB25_390
.LBB25_389:                             # %cond.false.2445
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -920(%rbp)        # 8-byte Spill
.LBB25_390:                             # %cond.end.2450
	movq	-920(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -928(%rbp)        # 8-byte Spill
	cqto
	movq	-928(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-48(%rbp), %rdi
	shlq	$1, %rdi
	cmpq	%rdi, %rax
	jl	.LBB25_394
.LBB25_391:                             # %lor.lhs.false.2456
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB25_393
# BB#392:                               # %land.lhs.true.2463
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB25_394
.LBB25_393:                             # %lor.lhs.false.2468
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB25_398
.LBB25_394:                             # %cond.true.2473
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB25_396
# BB#395:                               # %cond.true.2478
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	shlq	$3, %rax
	movq	%rax, -936(%rbp)        # 8-byte Spill
	jmp	.LBB25_397
.LBB25_396:                             # %cond.false.2481
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -936(%rbp)        # 8-byte Spill
.LBB25_397:                             # %cond.end.2486
	movq	-936(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -104(%rbp)
	testb	$1, %cl
	jne	.LBB25_403
	jmp	.LBB25_402
.LBB25_398:                             # %cond.false.2488
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-48(%rbp), %rcx
	shlq	$1, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB25_400
# BB#399:                               # %cond.true.2493
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	shlq	$3, %rax
	movq	%rax, -944(%rbp)        # 8-byte Spill
	jmp	.LBB25_401
.LBB25_400:                             # %cond.false.2496
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -944(%rbp)        # 8-byte Spill
.LBB25_401:                             # %cond.end.2501
	movq	-944(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -104(%rbp)
	testb	$1, %dl
	jne	.LBB25_403
.LBB25_402:                             # %lor.lhs.false.2503
	movq	$-1, %rax
	cmpq	-104(%rbp), %rax
	jae	.LBB25_404
.LBB25_403:                             # %if.then.2506
	movq	$-1, %rdi
	callq	memory_full
.LBB25_404:                             # %if.else.2507
	movq	-104(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jg	.LBB25_406
# BB#405:                               # %if.then.2510
	movq	-104(%rbp), %rax
	movq	-80(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -80(%rbp)
	movq	-104(%rbp), %rax
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -64(%rbp)
	jmp	.LBB25_407
.LBB25_406:                             # %if.else.2512
	movq	-104(%rbp), %rdi
	callq	xmalloc
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movq	-48(%rbp), %rax
	shlq	$1, %rax
	movq	%rax, %rsi
	callq	make_save_memory
	movabsq	$free_save_value, %rdi
	movq	%rax, -112(%rbp)
	movb	$1, -89(%rbp)
	movq	-112(%rbp), %rsi
	callq	record_unwind_protect
.LBB25_407:                             # %if.end
	jmp	.LBB25_408
.LBB25_408:                             # %if.end.2516
	jmp	.LBB25_409
.LBB25_409:                             # %do.end
	movq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	%rax, -72(%rbp)
	movq	$0, -56(%rbp)
.LBB25_410:                             # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB25_413
# BB#411:                               # %for.body
                                        #   in Loop: Header=BB25_410 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rdi
	callq	Fcar
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx,%rdi,8)
	movq	-120(%rbp), %rdi
	callq	Fcdr
	movq	-56(%rbp), %rcx
	movq	-72(%rbp), %rdi
	movq	%rax, (%rdi,%rcx,8)
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
# BB#412:                               # %for.inc
                                        #   in Loop: Header=BB25_410 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB25_410
.LBB25_413:                             # %for.end
	jmp	.LBB25_414
.LBB25_414:                             # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -56(%rbp)
	cmpq	$0, %rax
	jl	.LBB25_419
# BB#415:                               # %while.body
                                        #   in Loop: Header=BB25_414 Depth=1
	movq	-56(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	store_frame_param
	movl	$451, %edi              # imm = 0x1C3
	movq	-32(%rbp), %rax
	movq	%rax, -952(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-952(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB25_417
# BB#416:                               # %lor.lhs.false.2532
                                        #   in Loop: Header=BB25_414 Depth=1
	movl	$193, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-960(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB25_418
.LBB25_417:                             # %if.then.2536
                                        #   in Loop: Header=BB25_414 Depth=1
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	update_face_from_frame_parameter
.LBB25_418:                             # %if.end.2537
                                        #   in Loop: Header=BB25_414 Depth=1
	jmp	.LBB25_414
.LBB25_419:                             # %while.end
	jmp	.LBB25_420
.LBB25_420:                             # %do.body.2538
	testb	$1, -89(%rbp)
	je	.LBB25_422
# BB#421:                               # %if.then.2539
	xorl	%edi, %edi
	movb	$0, -89(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -968(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-968(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -976(%rbp)        # 8-byte Spill
.LBB25_422:                             # %if.end.2542
	jmp	.LBB25_423
.LBB25_423:                             # %do.end.2543
	jmp	.LBB25_424
.LBB25_424:                             # %if.end.2544
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	Fmodify_frame_parameters, .Lfunc_end25-Fmodify_frame_parameters
	.cfi_endproc

	.globl	do_switch_frame
	.align	16, 0x90
	.type	do_switch_frame,@function
do_switch_frame:                        # @do_switch_frame
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
	subq	$160, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	selected_frame, %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB26_1
	jmp	.LBB26_3
.LBB26_1:                               # %land.lhs.true
	movq	selected_frame, %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB26_3
# BB#2:                                 # %cond.true
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB26_4
.LBB26_3:                               # %cond.false
	callq	emacs_abort
.LBB26_4:                               # %cond.end
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rcx
	andq	$7, %rcx
	movl	%ecx, %edx
	cmpl	$3, %edx
	jne	.LBB26_8
# BB#5:                                 # %land.lhs.true.4
	movl	$895, %edi              # imm = 0x37F
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB26_8
# BB#6:                                 # %land.lhs.true.9
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB26_8
# BB#7:                                 # %if.then
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
.LBB26_8:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB26_9
	jmp	.LBB26_10
.LBB26_9:                               # %cond.true.22
	jmp	.LBB26_11
.LBB26_10:                              # %cond.false.23
	movl	$461, %edi              # imm = 0x1CD
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB26_11:                              # %cond.end.25
	movq	-16(%rbp), %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	jne	.LBB26_13
# BB#12:                                # %if.then.30
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB26_48
.LBB26_13:                              # %if.end.32
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	subq	$5, %rcx
	cmpq	%rcx, %rax
	jne	.LBB26_15
# BB#14:                                # %if.then.36
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB26_48
.LBB26_15:                              # %if.end.37
	cmpl	$0, -20(%rbp)
	je	.LBB26_27
# BB#16:                                # %land.lhs.true.38
	movq	-16(%rbp), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	.LBB26_27
# BB#17:                                # %if.then.42
	movq	-16(%rbp), %rax
	subq	$5, %rax
	movq	%rax, %rdi
	callq	x_get_focus_frame
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB26_18
	jmp	.LBB26_26
.LBB26_18:                              # %if.then.46
	movq	-56(%rbp), %rax
	subq	$5, %rax
	movq	32(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB26_19
	jmp	.LBB26_25
.LBB26_19:                              # %land.lhs.true.50
	movq	-48(%rbp), %rax
	subq	$5, %rax
	movq	selected_frame, %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB26_20
	jmp	.LBB26_22
.LBB26_20:                              # %land.lhs.true.54
	movq	selected_frame, %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB26_22
# BB#21:                                # %cond.true.59
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB26_23
.LBB26_22:                              # %cond.false.61
	callq	emacs_abort
.LBB26_23:                              # %cond.end.62
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-120(%rbp), %rcx        # 8-byte Reload
	cmpq	%rcx, %rax
	jne	.LBB26_25
# BB#24:                                # %if.then.66
	movq	-56(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	Fredirect_frame_focus
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB26_25:                              # %if.end.68
	jmp	.LBB26_26
.LBB26_26:                              # %if.end.69
	jmp	.LBB26_27
.LBB26_27:                              # %if.end.70
	cmpl	$0, -24(%rbp)
	jne	.LBB26_31
# BB#28:                                # %land.lhs.true.72
	movq	-40(%rbp), %rax
	movq	56(%rax), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB26_29
	jmp	.LBB26_31
.LBB26_29:                              # %land.lhs.true.75
	movq	-40(%rbp), %rax
	movq	56(%rax), %rdi
	callq	XWINDOW
	movq	8(%rax), %rax
	subq	$5, %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB26_31
# BB#30:                                # %if.then.82
	movq	-40(%rbp), %rax
	movq	56(%rax), %rdi
	callq	XWINDOW
	movl	$1, %esi
	movq	%rax, %rdi
	callq	resize_mini_window
	movb	%al, -129(%rbp)         # 1-byte Spill
.LBB26_31:                              # %if.end.86
	movq	-16(%rbp), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB26_45
# BB#32:                                # %if.then.95
	movq	-16(%rbp), %rax
	subq	$5, %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	je	.LBB26_34
# BB#33:                                # %lor.lhs.false
	movq	-64(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB26_35
.LBB26_34:                              # %cond.true.111
	movq	-64(%rbp), %rax
	movq	376(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB26_36
.LBB26_35:                              # %cond.false.114
	callq	emacs_abort
.LBB26_36:                              # %cond.end.115
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rcx
	movq	80(%rcx), %rcx
	movq	%rcx, -80(%rbp)
	movq	-16(%rbp), %rcx
	cmpq	-80(%rbp), %rcx
	je	.LBB26_44
# BB#37:                                # %if.then.120
	movq	-80(%rbp), %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB26_38
	jmp	.LBB26_39
.LBB26_38:                              # %if.then.122
	movl	$2, %esi
	movq	-80(%rbp), %rax
	subq	$5, %rax
	movq	%rax, %rdi
	callq	SET_FRAME_VISIBLE
.LBB26_39:                              # %if.end.124
	movl	$1, %esi
	movq	-64(%rbp), %rdi
	callq	SET_FRAME_VISIBLE
	movq	-64(%rbp), %rdi
	movl	272(%rdi), %esi
	movq	-72(%rbp), %rdi
	movq	72(%rdi), %rdi
	cmpl	136(%rdi), %esi
	je	.LBB26_41
# BB#40:                                # %if.then.127
	movq	-64(%rbp), %rax
	movl	272(%rax), %ecx
	movq	-72(%rbp), %rax
	movq	72(%rax), %rax
	movl	%ecx, 136(%rax)
.LBB26_41:                              # %if.end.131
	movq	-64(%rbp), %rax
	movl	284(%rax), %ecx
	movq	-72(%rbp), %rax
	movq	72(%rax), %rax
	cmpl	140(%rax), %ecx
	je	.LBB26_43
# BB#42:                                # %if.then.135
	movq	-64(%rbp), %rax
	movl	284(%rax), %ecx
	movq	-72(%rbp), %rax
	movq	72(%rax), %rax
	movl	%ecx, 140(%rax)
.LBB26_43:                              # %if.end.139
	jmp	.LBB26_44
.LBB26_44:                              # %if.end.140
	movq	-16(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, 80(%rcx)
.LBB26_45:                              # %if.end.142
	movq	-16(%rbp), %rax
	movq	%rax, selected_frame
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	40(%rax), %rax
	movq	selected_frame, %rcx
	subq	$5, %rcx
	cmpq	56(%rcx), %rax
	je	.LBB26_47
# BB#46:                                # %if.then.148
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	%rax, last_nonminibuf_frame
.LBB26_47:                              # %if.end.150
	movq	-16(%rbp), %rax
	subq	$5, %rax
	movq	48(%rax), %rdi
	movq	-32(%rbp), %rsi
	callq	Fselect_window
	xorl	%edi, %edi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	%rax, internal_last_event_frame
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB26_48:                              # %return
	movq	-8(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	do_switch_frame, .Lfunc_end26-do_switch_frame
	.cfi_endproc

	.globl	Fredirect_frame_focus
	.align	16, 0x90
	.type	Fredirect_frame_focus,@function
Fredirect_frame_focus:                  # @Fredirect_frame_focus
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_any_frame
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB27_6
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB27_2
	jmp	.LBB27_4
.LBB27_2:                               # %land.lhs.true
	movq	-16(%rbp), %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB27_4
# BB#3:                                 # %cond.true
	jmp	.LBB27_5
.LBB27_4:                               # %cond.false
	movl	$458, %edi              # imm = 0x1CA
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB27_5:                               # %cond.end
	jmp	.LBB27_6
.LBB27_6:                               # %if.end
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	fset_focus_frame
	movq	-24(%rbp), %rsi
	movq	376(%rsi), %rsi
	cmpq	$0, 256(%rsi)
	je	.LBB27_8
# BB#7:                                 # %if.then.6
	movq	-24(%rbp), %rax
	movq	376(%rax), %rax
	movq	256(%rax), %rax
	movq	-24(%rbp), %rdi
	callq	*%rax
.LBB27_8:                               # %if.end.9
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	Fredirect_frame_focus, .Lfunc_end27-Fredirect_frame_focus
	.cfi_endproc

	.globl	Fselect_frame
	.align	16, 0x90
	.type	Fselect_frame,@function
Fselect_frame:                          # @Fselect_frame
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
	subq	$16, %rsp
	movl	$1, %eax
	xorl	%edx, %edx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movl	%eax, %esi
	callq	do_switch_frame
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	Fselect_frame, .Lfunc_end28-Fselect_frame
	.cfi_endproc

	.globl	Fhandle_switch_frame
	.align	16, 0x90
	.type	Fhandle_switch_frame,@function
Fhandle_switch_frame:                   # @Fhandle_switch_frame
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	current_kboard, %rdi
	movq	globals+400, %rsi
	callq	kset_prefix_arg
	movl	$689, %edi              # imm = 0x2B1
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	run_hook
	movabsq	$.L.str.5, %rdi
	callq	intern
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	call1
	xorl	%edi, %edi
	movq	-8(%rbp), %rsi
	movq	%rax, -16(%rbp)         # 8-byte Spill
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movl	%edi, -28(%rbp)         # 4-byte Spill
	movq	%rsi, %rdi
	movl	-28(%rbp), %esi         # 4-byte Reload
	movl	-28(%rbp), %edx         # 4-byte Reload
	movq	%rax, %rcx
	callq	do_switch_frame
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	Fhandle_switch_frame, .Lfunc_end29-Fhandle_switch_frame
	.cfi_endproc

	.globl	Fselected_frame
	.align	16, 0x90
	.type	Fselected_frame,@function
Fselected_frame:                        # @Fselected_frame
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
	movq	selected_frame, %rax
	popq	%rbp
	retq
.Lfunc_end30:
	.size	Fselected_frame, .Lfunc_end30-Fselected_frame
	.cfi_endproc

	.globl	Fframe_list
	.align	16, 0x90
	.type	Fframe_list,@function
Fframe_list:                            # @Fframe_list
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
	subq	$16, %rsp
	movq	Vframe_list, %rdi
	callq	Fcopy_sequence
	movq	%rax, -8(%rbp)
	movq	tip_frame, %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB31_1
	jmp	.LBB31_2
.LBB31_1:                               # %if.then
	movq	tip_frame, %rdi
	movq	-8(%rbp), %rsi
	callq	Fdelq
	movq	%rax, -8(%rbp)
.LBB31_2:                               # %if.end
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	Fframe_list, .Lfunc_end31-Fframe_list
	.cfi_endproc

	.globl	Fnext_frame
	.align	16, 0x90
	.type	Fnext_frame,@function
Fnext_frame:                            # @Fnext_frame
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
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movl	%eax, %edi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB32_2
# BB#1:                                 # %if.then
	movq	selected_frame, %rax
	movq	%rax, -8(%rbp)
.LBB32_2:                               # %if.end
	movq	-8(%rbp), %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB32_3
	jmp	.LBB32_5
.LBB32_3:                               # %land.lhs.true
	movq	-8(%rbp), %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB32_5
# BB#4:                                 # %cond.true
	jmp	.LBB32_6
.LBB32_5:                               # %cond.false
	movl	$458, %edi              # imm = 0x1CA
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB32_6:                               # %cond.end
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	next_frame
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	Fnext_frame, .Lfunc_end32-Fnext_frame
	.cfi_endproc

	.align	16, 0x90
	.type	next_frame,@function
next_frame:                             # @next_frame
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$0, -44(%rbp)
.LBB33_1:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB33_3 Depth 2
	cmpl	$2, -44(%rbp)
	jge	.LBB33_15
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB33_1 Depth=1
	movq	Vframe_list, %rax
	movq	%rax, -40(%rbp)
.LBB33_3:                               # %for.cond
                                        #   Parent Loop BB33_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -45(%rbp)          # 1-byte Spill
	jne	.LBB33_5
# BB#4:                                 # %land.rhs
                                        #   in Loop: Header=BB33_3 Depth=2
	movb	$1, %al
	movq	-40(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -32(%rbp)
	movb	%al, -45(%rbp)          # 1-byte Spill
.LBB33_5:                               # %land.end
                                        #   in Loop: Header=BB33_3 Depth=2
	movb	-45(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB33_6
	jmp	.LBB33_14
.LBB33_6:                               # %for.body
                                        #   in Loop: Header=BB33_3 Depth=2
	cmpl	$0, -44(%rbp)
	je	.LBB33_10
# BB#7:                                 # %if.then
                                        #   in Loop: Header=BB33_3 Depth=2
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	candidate_frame
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB33_9
# BB#8:                                 # %if.then.6
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB33_16
.LBB33_9:                               # %if.end
                                        #   in Loop: Header=BB33_3 Depth=2
	jmp	.LBB33_10
.LBB33_10:                              # %if.end.7
                                        #   in Loop: Header=BB33_3 Depth=2
	movq	-16(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB33_12
# BB#11:                                # %if.then.10
                                        #   in Loop: Header=BB33_3 Depth=2
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
.LBB33_12:                              # %if.end.11
                                        #   in Loop: Header=BB33_3 Depth=2
	jmp	.LBB33_13
.LBB33_13:                              # %for.inc
                                        #   in Loop: Header=BB33_3 Depth=2
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB33_3
.LBB33_14:                              # %for.end
                                        #   in Loop: Header=BB33_1 Depth=1
	jmp	.LBB33_1
.LBB33_15:                              # %while.end
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB33_16:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	next_frame, .Lfunc_end33-next_frame
	.cfi_endproc

	.globl	Fprevious_frame
	.align	16, 0x90
	.type	Fprevious_frame,@function
Fprevious_frame:                        # @Fprevious_frame
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
	subq	$32, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movl	%eax, %edi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB34_2
# BB#1:                                 # %if.then
	movq	selected_frame, %rax
	movq	%rax, -8(%rbp)
.LBB34_2:                               # %if.end
	movq	-8(%rbp), %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB34_3
	jmp	.LBB34_5
.LBB34_3:                               # %land.lhs.true
	movq	-8(%rbp), %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB34_5
# BB#4:                                 # %cond.true
	jmp	.LBB34_6
.LBB34_5:                               # %cond.false
	movl	$458, %edi              # imm = 0x1CA
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB34_6:                               # %cond.end
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	prev_frame
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	Fprevious_frame, .Lfunc_end34-Fprevious_frame
	.cfi_endproc

	.align	16, 0x90
	.type	prev_frame,@function
prev_frame:                             # @prev_frame
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
	subq	$80, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -48(%rbp)
	movq	Vframe_list, %rax
	movq	%rax, -40(%rbp)
.LBB35_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -49(%rbp)          # 1-byte Spill
	jne	.LBB35_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB35_1 Depth=1
	movb	$1, %al
	movq	-40(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -32(%rbp)
	movb	%al, -49(%rbp)          # 1-byte Spill
.LBB35_3:                               # %land.end
                                        #   in Loop: Header=BB35_1 Depth=1
	movb	-49(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB35_4
	jmp	.LBB35_11
.LBB35_4:                               # %for.body
                                        #   in Loop: Header=BB35_1 Depth=1
	movq	-16(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB35_7
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB35_1 Depth=1
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB35_7
# BB#6:                                 # %if.then
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB35_14
.LBB35_7:                               # %if.end
                                        #   in Loop: Header=BB35_1 Depth=1
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	candidate_frame
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB35_9
# BB#8:                                 # %if.then.11
                                        #   in Loop: Header=BB35_1 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB35_9:                               # %if.end.12
                                        #   in Loop: Header=BB35_1 Depth=1
	jmp	.LBB35_10
.LBB35_10:                              # %for.inc
                                        #   in Loop: Header=BB35_1 Depth=1
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB35_1
.LBB35_11:                              # %for.end
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB35_13
# BB#12:                                # %if.then.17
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB35_14
.LBB35_13:                              # %if.else
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB35_14:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	prev_frame, .Lfunc_end35-prev_frame
	.cfi_endproc

	.globl	Flast_nonminibuf_frame
	.align	16, 0x90
	.type	Flast_nonminibuf_frame,@function
Flast_nonminibuf_frame:                 # @Flast_nonminibuf_frame
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
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	cmpq	$0, last_nonminibuf_frame
	je	.LBB36_2
# BB#1:                                 # %if.then
	movl	$5, %esi
	movq	last_nonminibuf_frame, %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -8(%rbp)
.LBB36_2:                               # %if.end
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	Flast_nonminibuf_frame, .Lfunc_end36-Flast_nonminibuf_frame
	.cfi_endproc

	.globl	delete_frame
	.align	16, 0x90
	.type	delete_frame,@function
delete_frame:                           # @delete_frame
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
	subq	$528, %rsp              # imm = 0x210
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	decode_any_frame
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$0, 376(%rax)
	jne	.LBB37_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB37_136
.LBB37_2:                               # %if.end
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB37_5
# BB#3:                                 # %land.lhs.true
	movq	-32(%rbp), %rdi
	callq	other_visible_frames
	cmpl	$0, %eax
	jne	.LBB37_5
# BB#4:                                 # %if.then.5
	movabsq	$.L.str.6, %rdi
	movb	$0, %al
	callq	error
.LBB37_5:                               # %if.end.6
	xorl	%edi, %edi
	movq	Vframe_list, %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB37_8
# BB#6:                                 # %land.lhs.true.9
	movl	$704, %edi              # imm = 0x2C0
	movq	-24(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-232(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB37_8
# BB#7:                                 # %if.then.12
	movabsq	$.L.str.7, %rdi
	movb	$0, %al
	callq	error
.LBB37_8:                               # %if.end.13
	movl	$5, %esi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	56(%rax), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB37_9
	jmp	.LBB37_25
.LBB37_9:                               # %land.lhs.true.16
	movq	-32(%rbp), %rax
	movq	56(%rax), %rdi
	callq	XWINDOW
	movq	8(%rax), %rax
	subq	$5, %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB37_25
# BB#10:                                # %if.then.22
	movq	Vframe_list, %rax
	movq	%rax, -64(%rbp)
.LBB37_11:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-64(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -233(%rbp)         # 1-byte Spill
	jne	.LBB37_13
# BB#12:                                # %land.rhs
                                        #   in Loop: Header=BB37_11 Depth=1
	movb	$1, %al
	movq	-64(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -72(%rbp)
	movb	%al, -233(%rbp)         # 1-byte Spill
.LBB37_13:                              # %land.end
                                        #   in Loop: Header=BB37_11 Depth=1
	movb	-233(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB37_14
	jmp	.LBB37_24
.LBB37_14:                              # %for.body
                                        #   in Loop: Header=BB37_11 Depth=1
	movq	-72(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB37_16
# BB#15:                                # %if.then.28
                                        #   in Loop: Header=BB37_11 Depth=1
	jmp	.LBB37_23
.LBB37_16:                              # %if.end.29
                                        #   in Loop: Header=BB37_11 Depth=1
	movq	-72(%rbp), %rax
	subq	$5, %rax
	movq	56(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB37_17
	jmp	.LBB37_22
.LBB37_17:                              # %land.lhs.true.34
                                        #   in Loop: Header=BB37_11 Depth=1
	movq	-16(%rbp), %rax
	movq	-80(%rbp), %rdi
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	XWINDOW
	movq	-248(%rbp), %rdi        # 8-byte Reload
	cmpq	8(%rax), %rdi
	jne	.LBB37_22
# BB#18:                                # %if.then.39
                                        #   in Loop: Header=BB37_11 Depth=1
	movl	$704, %edi              # imm = 0x2C0
	movq	-24(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-256(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB37_20
# BB#19:                                # %if.then.43
                                        #   in Loop: Header=BB37_11 Depth=1
	movl	$704, %edi              # imm = 0x2C0
	movq	-72(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	delete_frame
	movq	%rax, -272(%rbp)        # 8-byte Spill
	jmp	.LBB37_21
.LBB37_20:                              # %if.else
	movabsq	$.L.str.8, %rdi
	movb	$0, %al
	callq	error
.LBB37_21:                              # %if.end.46
                                        #   in Loop: Header=BB37_11 Depth=1
	jmp	.LBB37_22
.LBB37_22:                              # %if.end.47
                                        #   in Loop: Header=BB37_11 Depth=1
	jmp	.LBB37_23
.LBB37_23:                              # %for.inc
                                        #   in Loop: Header=BB37_11 Depth=1
	movq	-64(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB37_11
.LBB37_24:                              # %for.end
	jmp	.LBB37_25
.LBB37_25:                              # %if.end.51
	movl	$927, %edi              # imm = 0x39F
	movq	-16(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fframe_parameter
	xorl	%edi, %edi
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-288(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -56(%rbp)
	movq	Vrun_hooks, %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-296(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB37_27
# BB#26:                                # %lor.lhs.false
	cmpl	$0, -56(%rbp)
	je	.LBB37_28
.LBB37_27:                              # %if.then.61
	jmp	.LBB37_32
.LBB37_28:                              # %if.else.62
	movl	$704, %edi              # imm = 0x2C0
	movq	-24(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-304(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB37_30
# BB#29:                                # %if.then.66
	movl	$821, %edi              # imm = 0x335
	callq	builtin_lisp_symbol
	movl	$335, %edi              # imm = 0x14F
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdx
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	list3
	movq	pending_funcalls, %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, pending_funcalls
	jmp	.LBB37_31
.LBB37_30:                              # %if.else.71
	movq	-16(%rbp), %rdi
	callq	x_clipboard_manager_save_frame
	movl	$821, %edi              # imm = 0x335
	callq	builtin_lisp_symbol
	movl	$335, %edi              # imm = 0x14F
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdx
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	safe_call2
	movq	%rax, -328(%rbp)        # 8-byte Spill
.LBB37_31:                              # %if.end.75
	jmp	.LBB37_32
.LBB37_32:                              # %if.end.76
	movq	-32(%rbp), %rax
	cmpq	$0, 376(%rax)
	jne	.LBB37_34
# BB#33:                                # %if.then.80
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB37_136
.LBB37_34:                              # %if.end.82
	movq	minibuf_window, %rax
	cmpq	selected_window, %rax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -52(%rbp)
	movq	selected_frame, %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB37_35
	jmp	.LBB37_37
.LBB37_35:                              # %land.lhs.true.87
	movq	selected_frame, %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB37_37
# BB#36:                                # %cond.true
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	jmp	.LBB37_38
.LBB37_37:                              # %cond.false
	callq	emacs_abort
.LBB37_38:                              # %cond.end
	movq	-336(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rcx
	cmpq	-40(%rbp), %rcx
	jne	.LBB37_74
# BB#39:                                # %if.then.95
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -96(%rbp)
	movq	Vframe_list, %rax
	movq	%rax, -88(%rbp)
.LBB37_40:                              # %for.cond.97
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-88(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -337(%rbp)         # 1-byte Spill
	jne	.LBB37_42
# BB#41:                                # %land.rhs.102
                                        #   in Loop: Header=BB37_40 Depth=1
	movb	$1, %al
	movq	-88(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -96(%rbp)
	movb	%al, -337(%rbp)         # 1-byte Spill
.LBB37_42:                              # %land.end.105
                                        #   in Loop: Header=BB37_40 Depth=1
	movb	-337(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB37_43
	jmp	.LBB37_49
.LBB37_43:                              # %for.body.106
                                        #   in Loop: Header=BB37_40 Depth=1
	movq	-16(%rbp), %rax
	cmpq	-96(%rbp), %rax
	je	.LBB37_47
# BB#44:                                # %land.lhs.true.109
                                        #   in Loop: Header=BB37_40 Depth=1
	movq	-16(%rbp), %rax
	subq	$5, %rax
	movq	376(%rax), %rax
	movq	-96(%rbp), %rcx
	subq	$5, %rcx
	cmpq	376(%rcx), %rax
	jne	.LBB37_47
# BB#45:                                # %land.lhs.true.116
                                        #   in Loop: Header=BB37_40 Depth=1
	movq	-96(%rbp), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$10, %rax
	andq	$3, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB37_47
# BB#46:                                # %if.then.119
	jmp	.LBB37_49
.LBB37_47:                              # %if.end.120
                                        #   in Loop: Header=BB37_40 Depth=1
	jmp	.LBB37_48
.LBB37_48:                              # %for.inc.121
                                        #   in Loop: Header=BB37_40 Depth=1
	movq	-88(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB37_40
.LBB37_49:                              # %for.end.125
	xorl	%edi, %edi
	movq	-96(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-352(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB37_51
# BB#50:                                # %lor.lhs.false.129
	movq	-96(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB37_69
.LBB37_51:                              # %if.then.132
	movq	Vframe_list, %rax
	movq	%rax, -88(%rbp)
.LBB37_52:                              # %for.cond.133
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-88(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -353(%rbp)         # 1-byte Spill
	jne	.LBB37_54
# BB#53:                                # %land.rhs.138
                                        #   in Loop: Header=BB37_52 Depth=1
	movb	$1, %al
	movq	-88(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -96(%rbp)
	movb	%al, -353(%rbp)         # 1-byte Spill
.LBB37_54:                              # %land.end.141
                                        #   in Loop: Header=BB37_52 Depth=1
	movb	-353(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB37_55
	jmp	.LBB37_68
.LBB37_55:                              # %for.body.142
                                        #   in Loop: Header=BB37_52 Depth=1
	movq	-16(%rbp), %rax
	cmpq	-96(%rbp), %rax
	je	.LBB37_66
# BB#56:                                # %land.lhs.true.145
                                        #   in Loop: Header=BB37_52 Depth=1
	movq	-96(%rbp), %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB37_66
# BB#57:                                # %if.then.150
	movq	-96(%rbp), %rax
	subq	$5, %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB37_65
# BB#58:                                # %if.then.158
	movq	-104(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	je	.LBB37_60
# BB#59:                                # %lor.lhs.false.166
	movq	-104(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB37_61
.LBB37_60:                              # %cond.true.174
	movq	-104(%rbp), %rax
	movq	376(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	jmp	.LBB37_62
.LBB37_61:                              # %cond.false.176
	callq	emacs_abort
.LBB37_62:                              # %cond.end.177
	movq	-368(%rbp), %rax        # 8-byte Reload
	movq	80(%rax), %rcx
	movq	%rcx, -112(%rbp)
	movq	-112(%rbp), %rcx
	cmpq	-16(%rbp), %rcx
	je	.LBB37_64
# BB#63:                                # %if.then.182
	movq	-112(%rbp), %rax
	movq	%rax, -96(%rbp)
.LBB37_64:                              # %if.end.183
	jmp	.LBB37_65
.LBB37_65:                              # %if.end.184
	jmp	.LBB37_68
.LBB37_66:                              # %if.end.185
                                        #   in Loop: Header=BB37_52 Depth=1
	jmp	.LBB37_67
.LBB37_67:                              # %for.inc.186
                                        #   in Loop: Header=BB37_52 Depth=1
	movq	-88(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB37_52
.LBB37_68:                              # %for.end.190
	jmp	.LBB37_69
.LBB37_69:                              # %if.end.191
	xorl	%edi, %edi
	movq	-96(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%esi, %esi
	movl	$1, %edx
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	callq	do_switch_frame
	movq	selected_frame, %rdi
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB37_70
	jmp	.LBB37_72
.LBB37_70:                              # %land.lhs.true.196
	movq	selected_frame, %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB37_72
# BB#71:                                # %cond.true.201
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	jmp	.LBB37_73
.LBB37_72:                              # %cond.false.203
	callq	emacs_abort
.LBB37_73:                              # %cond.end.204
	movq	-392(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
.LBB37_74:                              # %if.end.206
	movq	-16(%rbp), %rdi
	movl	-52(%rbp), %esi
	callq	check_minibuf_window
	movq	-32(%rbp), %rdi
	movq	56(%rdi), %rdi
	cmpq	echo_area_window, %rdi
	jne	.LBB37_76
# BB#75:                                # %if.then.210
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, echo_area_window
.LBB37_76:                              # %if.end.212
	movq	-32(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	.LBB37_78
# BB#77:                                # %if.then.220
	movq	-32(%rbp), %rdi
	callq	x_clear_frame_selections
.LBB37_78:                              # %if.end.221
	movq	-32(%rbp), %rdi
	callq	free_glyphs
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	font_update_drivers
	movq	-32(%rbp), %rsi
	movq	40(%rsi), %rdi
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	delete_all_child_windows
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	fset_root_window
	movq	-16(%rbp), %rdi
	movq	Vframe_list, %rsi
	callq	Fdelq
	xorl	%esi, %esi
	movq	%rax, Vframe_list
	movq	-32(%rbp), %rdi
	callq	SET_FRAME_VISIBLE
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	fset_menu_bar_vector
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	fset_buffer_list
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	fset_buried_buffer_list
	movq	-32(%rbp), %rdi
	callq	free_font_driver_list
	movq	-32(%rbp), %rax
	movq	232(%rax), %rdi
	callq	xfree
	movq	-32(%rbp), %rax
	movq	240(%rax), %rax
	movq	%rax, %rdi
	callq	xfree
	movq	-32(%rbp), %rax
	movq	264(%rax), %rax
	movq	%rax, %rdi
	callq	xfree
	movq	-32(%rbp), %rax
	movq	256(%rax), %rax
	movq	%rax, %rdi
	callq	xfree
	movq	-32(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, %rdi
	callq	xfree
	callq	block_input
	movq	-32(%rbp), %rax
	movq	376(%rax), %rax
	cmpq	$0, 352(%rax)
	je	.LBB37_80
# BB#79:                                # %if.then.232
	movq	-32(%rbp), %rax
	movq	376(%rax), %rax
	movq	352(%rax), %rax
	movq	-32(%rbp), %rdi
	callq	*%rax
.LBB37_80:                              # %if.end.235
	movq	-32(%rbp), %rax
	movq	376(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-32(%rbp), %rax
	movq	$0, 384(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 376(%rax)
	callq	unblock_input
	movq	-120(%rbp), %rax
	movl	52(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 52(%rax)
	movq	-120(%rbp), %rax
	cmpl	$0, 52(%rax)
	jne	.LBB37_83
# BB#81:                                # %land.lhs.true.241
	movq	-120(%rbp), %rax
	cmpl	$2, 56(%rax)
	jne	.LBB37_83
# BB#82:                                # %if.then.244
	movq	-120(%rbp), %rax
	movl	$1, 52(%rax)
.LBB37_83:                              # %if.end.246
	movq	-120(%rbp), %rax
	cmpl	$0, 52(%rax)
	jne	.LBB37_88
# BB#84:                                # %if.then.250
	movl	$5, %esi
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	xorl	%edi, %edi
	movq	%rax, -128(%rbp)
	movq	$0, -48(%rbp)
	movq	-128(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, -448(%rbp)        # 8-byte Spill
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-448(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB37_86
# BB#85:                                # %cond.true.255
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -464(%rbp)        # 8-byte Spill
	jmp	.LBB37_87
.LBB37_86:                              # %cond.false.257
	movq	-24(%rbp), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
.LBB37_87:                              # %cond.end.258
	movq	-464(%rbp), %rax        # 8-byte Reload
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fdelete_terminal
	movq	%rax, -472(%rbp)        # 8-byte Spill
	jmp	.LBB37_89
.LBB37_88:                              # %if.else.261
	movq	-120(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB37_89:                              # %if.end.262
	movq	-32(%rbp), %rax
	cmpq	last_nonminibuf_frame, %rax
	jne	.LBB37_99
# BB#90:                                # %if.then.265
	movq	$0, last_nonminibuf_frame
	movq	Vframe_list, %rax
	movq	%rax, -136(%rbp)
.LBB37_91:                              # %for.cond.270
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-136(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -473(%rbp)         # 1-byte Spill
	jne	.LBB37_93
# BB#92:                                # %land.rhs.275
                                        #   in Loop: Header=BB37_91 Depth=1
	movb	$1, %al
	movq	-136(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -144(%rbp)
	movb	%al, -473(%rbp)         # 1-byte Spill
.LBB37_93:                              # %land.end.278
                                        #   in Loop: Header=BB37_91 Depth=1
	movb	-473(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB37_94
	jmp	.LBB37_98
.LBB37_94:                              # %for.body.279
                                        #   in Loop: Header=BB37_91 Depth=1
	movq	-144(%rbp), %rax
	subq	$5, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	movq	-32(%rbp), %rcx
	cmpq	56(%rcx), %rax
	je	.LBB37_96
# BB#95:                                # %if.then.285
	movq	-32(%rbp), %rax
	movq	%rax, last_nonminibuf_frame
	jmp	.LBB37_98
.LBB37_96:                              # %if.end.286
                                        #   in Loop: Header=BB37_91 Depth=1
	jmp	.LBB37_97
.LBB37_97:                              # %for.inc.287
                                        #   in Loop: Header=BB37_91 Depth=1
	movq	-136(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -136(%rbp)
	jmp	.LBB37_91
.LBB37_98:                              # %for.end.291
	jmp	.LBB37_99
.LBB37_99:                              # %if.end.292
	cmpq	$0, -48(%rbp)
	je	.LBB37_111
# BB#100:                               # %if.then.295
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -168(%rbp)
	movq	Vframe_list, %rax
	movq	%rax, -152(%rbp)
.LBB37_101:                             # %for.cond.302
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-152(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -474(%rbp)         # 1-byte Spill
	jne	.LBB37_103
# BB#102:                               # %land.rhs.307
                                        #   in Loop: Header=BB37_101 Depth=1
	movb	$1, %al
	movq	-152(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -160(%rbp)
	movb	%al, -474(%rbp)         # 1-byte Spill
.LBB37_103:                             # %land.end.310
                                        #   in Loop: Header=BB37_101 Depth=1
	movb	-474(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB37_104
	jmp	.LBB37_108
.LBB37_104:                             # %for.body.311
                                        #   in Loop: Header=BB37_101 Depth=1
	movq	-48(%rbp), %rax
	movq	-160(%rbp), %rcx
	subq	$5, %rcx
	movq	376(%rcx), %rcx
	cmpq	72(%rcx), %rax
	jne	.LBB37_106
# BB#105:                               # %if.then.317
                                        #   in Loop: Header=BB37_101 Depth=1
	movq	-160(%rbp), %rax
	movq	%rax, -168(%rbp)
.LBB37_106:                             # %if.end.318
                                        #   in Loop: Header=BB37_101 Depth=1
	jmp	.LBB37_107
.LBB37_107:                             # %for.inc.319
                                        #   in Loop: Header=BB37_101 Depth=1
	movq	-152(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -152(%rbp)
	jmp	.LBB37_101
.LBB37_108:                             # %for.end.323
	xorl	%edi, %edi
	movq	-168(%rbp), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-488(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB37_110
# BB#109:                               # %if.then.327
	movq	-48(%rbp), %rdi
	callq	not_single_kboard_state
.LBB37_110:                             # %if.end.328
	jmp	.LBB37_111
.LBB37_111:                             # %if.end.329
	cmpq	$0, -48(%rbp)
	je	.LBB37_133
# BB#112:                               # %land.lhs.true.332
	movq	-16(%rbp), %rax
	movq	-48(%rbp), %rcx
	cmpq	160(%rcx), %rax
	jne	.LBB37_133
# BB#113:                               # %if.then.335
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -192(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -200(%rbp)
	movq	Vframe_list, %rax
	movq	%rax, -176(%rbp)
.LBB37_114:                             # %for.cond.345
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-176(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -489(%rbp)         # 1-byte Spill
	jne	.LBB37_116
# BB#115:                               # %land.rhs.350
                                        #   in Loop: Header=BB37_114 Depth=1
	movb	$1, %al
	movq	-176(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -184(%rbp)
	movb	%al, -489(%rbp)         # 1-byte Spill
.LBB37_116:                             # %land.end.353
                                        #   in Loop: Header=BB37_114 Depth=1
	movb	-489(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB37_117
	jmp	.LBB37_127
.LBB37_117:                             # %for.body.354
                                        #   in Loop: Header=BB37_114 Depth=1
	movq	-184(%rbp), %rax
	subq	$5, %rax
	movq	%rax, -208(%rbp)
	movq	-48(%rbp), %rax
	movq	-208(%rbp), %rcx
	movq	376(%rcx), %rcx
	cmpq	72(%rcx), %rax
	jne	.LBB37_123
# BB#118:                               # %land.lhs.true.362
                                        #   in Loop: Header=BB37_114 Depth=1
	movq	-208(%rbp), %rax
	movq	56(%rax), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB37_119
	jmp	.LBB37_123
.LBB37_119:                             # %land.lhs.true.366
                                        #   in Loop: Header=BB37_114 Depth=1
	movq	-208(%rbp), %rax
	movq	56(%rax), %rdi
	callq	XWINDOW
	movq	8(%rax), %rax
	subq	$5, %rax
	cmpq	-208(%rbp), %rax
	jne	.LBB37_123
# BB#120:                               # %if.then.373
                                        #   in Loop: Header=BB37_114 Depth=1
	movq	-184(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-208(%rbp), %rax
	movq	40(%rax), %rax
	movq	-208(%rbp), %rcx
	cmpq	56(%rcx), %rax
	jne	.LBB37_122
# BB#121:                               # %if.then.378
	jmp	.LBB37_127
.LBB37_122:                             # %if.end.379
                                        #   in Loop: Header=BB37_114 Depth=1
	jmp	.LBB37_123
.LBB37_123:                             # %if.end.380
                                        #   in Loop: Header=BB37_114 Depth=1
	movq	-48(%rbp), %rax
	movq	-208(%rbp), %rcx
	movq	376(%rcx), %rcx
	cmpq	72(%rcx), %rax
	jne	.LBB37_125
# BB#124:                               # %if.then.385
                                        #   in Loop: Header=BB37_114 Depth=1
	movq	-184(%rbp), %rax
	movq	%rax, -200(%rbp)
.LBB37_125:                             # %if.end.386
                                        #   in Loop: Header=BB37_114 Depth=1
	jmp	.LBB37_126
.LBB37_126:                             # %for.inc.387
                                        #   in Loop: Header=BB37_114 Depth=1
	movq	-176(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -176(%rbp)
	jmp	.LBB37_114
.LBB37_127:                             # %for.end.391
	xorl	%edi, %edi
	movq	-200(%rbp), %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-504(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB37_131
# BB#128:                               # %if.then.395
	xorl	%edi, %edi
	movq	-192(%rbp), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-512(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB37_130
# BB#129:                               # %if.then.399
	callq	emacs_abort
.LBB37_130:                             # %if.end.400
	movq	-48(%rbp), %rdi
	movq	-192(%rbp), %rsi
	callq	kset_default_minibuffer_frame
	jmp	.LBB37_132
.LBB37_131:                             # %if.else.401
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	kset_default_minibuffer_frame
.LBB37_132:                             # %if.end.403
	jmp	.LBB37_133
.LBB37_133:                             # %if.end.404
	cmpl	$0, -56(%rbp)
	jne	.LBB37_135
# BB#134:                               # %if.then.406
	movl	$15, update_mode_lines
.LBB37_135:                             # %if.end.407
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB37_136:                             # %return
	movq	-8(%rbp), %rax
	addq	$528, %rsp              # imm = 0x210
	popq	%rbp
	retq
.Lfunc_end37:
	.size	delete_frame, .Lfunc_end37-delete_frame
	.cfi_endproc

	.align	16, 0x90
	.type	other_visible_frames,@function
other_visible_frames:                   # @other_visible_frames
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	Vframe_list, %rdi
	movq	%rdi, -24(%rbp)
.LBB38_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -33(%rbp)          # 1-byte Spill
	jne	.LBB38_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB38_1 Depth=1
	movb	$1, %al
	movq	-24(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -32(%rbp)
	movb	%al, -33(%rbp)          # 1-byte Spill
.LBB38_3:                               # %land.end
                                        #   in Loop: Header=BB38_1 Depth=1
	movb	-33(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB38_4
	jmp	.LBB38_15
.LBB38_4:                               # %for.body
                                        #   in Loop: Header=BB38_1 Depth=1
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	subq	$5, %rcx
	cmpq	%rcx, %rax
	jne	.LBB38_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB38_1 Depth=1
	jmp	.LBB38_14
.LBB38_6:                               # %if.end
                                        #   in Loop: Header=BB38_1 Depth=1
	movq	-32(%rbp), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	.LBB38_8
# BB#7:                                 # %if.then.8
                                        #   in Loop: Header=BB38_1 Depth=1
	movq	-32(%rbp), %rax
	subq	$5, %rax
	movq	%rax, %rdi
	callq	x_sync
.LBB38_8:                               # %if.end.10
                                        #   in Loop: Header=BB38_1 Depth=1
	movq	-32(%rbp), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$10, %rax
	andq	$3, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB38_12
# BB#9:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB38_1 Depth=1
	movq	-32(%rbp), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$12, %rax
	andq	$1, %rax
	testq	$1, %rax
	jne	.LBB38_12
# BB#10:                                # %lor.lhs.false.22
                                        #   in Loop: Header=BB38_1 Depth=1
	movq	-32(%rbp), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	.LBB38_13
# BB#11:                                # %land.lhs.true
                                        #   in Loop: Header=BB38_1 Depth=1
	movq	-16(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	je	.LBB38_13
.LBB38_12:                              # %if.then.38
	movl	$1, -4(%rbp)
	jmp	.LBB38_16
.LBB38_13:                              # %if.end.39
                                        #   in Loop: Header=BB38_1 Depth=1
	jmp	.LBB38_14
.LBB38_14:                              # %for.inc
                                        #   in Loop: Header=BB38_1 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB38_1
.LBB38_15:                              # %for.end
	movl	$0, -4(%rbp)
.LBB38_16:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	other_visible_frames, .Lfunc_end38-other_visible_frames
	.cfi_endproc

	.globl	Fframe_parameter
	.align	16, 0x90
	.type	Fframe_parameter,@function
Fframe_parameter:                       # @Fframe_parameter
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_any_frame
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %edi
	cmpl	$0, %edi
	jne	.LBB39_2
# BB#1:                                 # %cond.true
	jmp	.LBB39_3
.LBB39_2:                               # %cond.false
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB39_3:                               # %cond.end
	movl	$5, %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 376(%rax)
	je	.LBB39_28
# BB#4:                                 # %if.then
	movl	$696, %edi              # imm = 0x2B8
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB39_6
# BB#5:                                 # %if.then.10
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB39_27
.LBB39_6:                               # %if.else
	movl	$344, %edi              # imm = 0x158
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB39_9
# BB#7:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	.LBB39_9
# BB#8:                                 # %if.then.16
	movq	-24(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	32(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB39_26
.LBB39_9:                               # %if.else.17
	movl	$193, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB39_11
# BB#10:                                # %lor.lhs.false
	movl	$451, %edi              # imm = 0x1C3
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB39_20
.LBB39_11:                              # %if.then.24
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	64(%rax), %rsi
	callq	Fassq
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB39_18
# BB#12:                                # %if.then.30
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB39_13
	jmp	.LBB39_17
.LBB39_13:                              # %land.lhs.true.34
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	je	.LBB39_17
# BB#14:                                # %if.then.42
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	frame_unspecified_color
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB39_16
# BB#15:                                # %if.then.47
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB39_16:                              # %if.end
	jmp	.LBB39_17
.LBB39_17:                              # %if.end.48
	jmp	.LBB39_19
.LBB39_18:                              # %if.else.49
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	Fframe_parameters
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fassq
	movq	%rax, %rdi
	callq	Fcdr
	movq	%rax, -32(%rbp)
.LBB39_19:                              # %if.end.53
	jmp	.LBB39_25
.LBB39_20:                              # %if.else.54
	movl	$347, %edi              # imm = 0x15B
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB39_22
# BB#21:                                # %lor.lhs.false.58
	movl	$194, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB39_23
.LBB39_22:                              # %if.then.62
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	64(%rax), %rsi
	callq	Fassq
	movq	%rax, %rdi
	callq	Fcdr
	movq	%rax, -32(%rbp)
	jmp	.LBB39_24
.LBB39_23:                              # %if.else.66
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	Fframe_parameters
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fassq
	movq	%rax, %rdi
	callq	Fcdr
	movq	%rax, -32(%rbp)
.LBB39_24:                              # %if.end.70
	jmp	.LBB39_25
.LBB39_25:                              # %if.end.71
	jmp	.LBB39_26
.LBB39_26:                              # %if.end.72
	jmp	.LBB39_27
.LBB39_27:                              # %if.end.73
	jmp	.LBB39_28
.LBB39_28:                              # %if.end.74
	movq	-32(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	Fframe_parameter, .Lfunc_end39-Fframe_parameter
	.cfi_endproc

	.align	16, 0x90
	.type	check_minibuf_window,@function
check_minibuf_window:                   # @check_minibuf_window
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_live_frame
	movl	$5, %esi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -8(%rbp)
	movq	minibuf_window, %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB40_1
	jmp	.LBB40_22
.LBB40_1:                               # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	cmpq	minibuf_window, %rax
	jne	.LBB40_22
# BB#2:                                 # %if.then
	movq	$2, -48(%rbp)
	movq	-8(%rbp), %rax
	cmpq	selected_frame, %rax
	je	.LBB40_6
# BB#3:                                 # %land.lhs.true.4
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	56(%rax), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB40_4
	jmp	.LBB40_6
.LBB40_4:                               # %land.lhs.true.7
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	56(%rax), %rdi
	callq	XWINDOW
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	selected_frame, %rdi
	subq	$5, %rdi
	cmpq	%rdi, %rax
	jne	.LBB40_6
# BB#5:                                 # %if.then.15
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	56(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB40_17
.LBB40_6:                               # %if.else
	movq	Vframe_list, %rax
	movq	%rax, -32(%rbp)
.LBB40_7:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -49(%rbp)          # 1-byte Spill
	jne	.LBB40_9
# BB#8:                                 # %land.rhs
                                        #   in Loop: Header=BB40_7 Depth=1
	movb	$1, %al
	movq	-32(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	movb	%al, -49(%rbp)          # 1-byte Spill
.LBB40_9:                               # %land.end
                                        #   in Loop: Header=BB40_7 Depth=1
	movb	-49(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB40_10
	jmp	.LBB40_16
.LBB40_10:                              # %for.body
                                        #   in Loop: Header=BB40_7 Depth=1
	movq	-40(%rbp), %rax
	cmpq	-8(%rbp), %rax
	je	.LBB40_14
# BB#11:                                # %land.lhs.true.23
                                        #   in Loop: Header=BB40_7 Depth=1
	movq	-40(%rbp), %rax
	subq	$5, %rax
	movq	56(%rax), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB40_12
	jmp	.LBB40_14
.LBB40_12:                              # %land.lhs.true.28
                                        #   in Loop: Header=BB40_7 Depth=1
	movq	-40(%rbp), %rax
	subq	$5, %rax
	movq	56(%rax), %rdi
	callq	XWINDOW
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	-40(%rbp), %rdi
	subq	$5, %rdi
	cmpq	%rdi, %rax
	jne	.LBB40_14
# BB#13:                                # %if.then.37
	movq	-40(%rbp), %rax
	subq	$5, %rax
	movq	56(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB40_16
.LBB40_14:                              # %if.end
                                        #   in Loop: Header=BB40_7 Depth=1
	jmp	.LBB40_15
.LBB40_15:                              # %for.inc
                                        #   in Loop: Header=BB40_7 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB40_7
.LBB40_16:                              # %for.end
	jmp	.LBB40_17
.LBB40_17:                              # %if.end.41
	movq	-48(%rbp), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB40_18
	jmp	.LBB40_21
.LBB40_18:                              # %if.then.43
	movq	-48(%rbp), %rdi
	movq	minibuf_window, %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	XWINDOW
	xorl	%ecx, %ecx
	movq	80(%rax), %rsi
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movl	%ecx, %edx
	callq	set_window_buffer
	movq	-48(%rbp), %rax
	movq	%rax, minibuf_window
	cmpl	$0, -12(%rbp)
	je	.LBB40_20
# BB#19:                                # %if.then.45
	xorl	%edi, %edi
	movq	minibuf_window, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fselect_window
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB40_20:                              # %if.end.48
	jmp	.LBB40_21
.LBB40_21:                              # %if.end.49
	jmp	.LBB40_22
.LBB40_22:                              # %if.end.50
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	check_minibuf_window, .Lfunc_end40-check_minibuf_window
	.cfi_endproc

	.globl	Fdelete_frame
	.align	16, 0x90
	.type	Fdelete_frame,@function
Fdelete_frame:                          # @Fdelete_frame
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
	subq	$48, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB41_2
# BB#1:                                 # %cond.true
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB41_3
.LBB41_2:                               # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB41_3:                               # %cond.end
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	delete_frame
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	Fdelete_frame, .Lfunc_end41-Fdelete_frame
	.cfi_endproc

	.globl	Fmouse_position
	.align	16, 0x90
	.type	Fmouse_position,@function
Fmouse_position:                        # @Fmouse_position
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
	subq	$112, %rsp
	movq	selected_frame, %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB42_1
	jmp	.LBB42_3
.LBB42_1:                               # %land.lhs.true
	movq	selected_frame, %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB42_3
# BB#2:                                 # %cond.true
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB42_4
.LBB42_3:                               # %cond.false
	callq	emacs_abort
.LBB42_4:                               # %cond.end
	xorl	%edi, %edi
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, -8(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	cmpq	$0, 248(%rax)
	je	.LBB42_6
# BB#5:                                 # %if.then
	leaq	-8(%rbp), %rdi
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	leaq	-16(%rbp), %rdx
	leaq	-44(%rbp), %rcx
	leaq	-24(%rbp), %r8
	leaq	-32(%rbp), %r9
	leaq	-56(%rbp), %rax
	movq	-8(%rbp), %r10
	movq	376(%r10), %r10
	movq	%rax, (%rsp)
	callq	*248(%r10)
.LBB42_6:                               # %if.end
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB42_8
# BB#7:                                 # %if.then.9
	leaq	-60(%rbp), %rcx
	leaq	-64(%rbp), %r8
	xorl	%eax, %eax
	movl	%eax, %r9d
	movl	$1, %eax
	movq	-24(%rbp), %rdx
	sarq	$2, %rdx
	movl	%edx, %esi
	movl	%esi, -60(%rbp)
	movq	-32(%rbp), %rdx
	sarq	$2, %rdx
	movl	%edx, %esi
	movl	%esi, -64(%rbp)
	movq	-8(%rbp), %rdi
	movl	-60(%rbp), %esi
	movl	-64(%rbp), %edx
	movl	$1, (%rsp)
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	pixel_to_glyph_coords
	movslq	-60(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -24(%rbp)
	movslq	-64(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -32(%rbp)
.LBB42_8:                               # %if.end.16
	movl	$5, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rsi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	Fcons
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	globals+1632, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB42_10
# BB#9:                                 # %if.then.23
	movq	globals+1632, %rdi
	movq	-40(%rbp), %rsi
	callq	call1
	movq	%rax, -40(%rbp)
.LBB42_10:                              # %if.end.25
	movq	-40(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end42:
	.size	Fmouse_position, .Lfunc_end42-Fmouse_position
	.cfi_endproc

	.globl	Fmouse_pixel_position
	.align	16, 0x90
	.type	Fmouse_pixel_position,@function
Fmouse_pixel_position:                  # @Fmouse_pixel_position
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
	subq	$96, %rsp
	movq	selected_frame, %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB43_1
	jmp	.LBB43_3
.LBB43_1:                               # %land.lhs.true
	movq	selected_frame, %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB43_3
# BB#2:                                 # %cond.true
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB43_4
.LBB43_3:                               # %cond.false
	callq	emacs_abort
.LBB43_4:                               # %cond.end
	xorl	%edi, %edi
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, -8(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	cmpq	$0, 248(%rax)
	je	.LBB43_6
# BB#5:                                 # %if.then
	leaq	-8(%rbp), %rdi
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	leaq	-16(%rbp), %rdx
	leaq	-44(%rbp), %rcx
	leaq	-24(%rbp), %r8
	leaq	-32(%rbp), %r9
	leaq	-56(%rbp), %rax
	movq	-8(%rbp), %r10
	movq	376(%r10), %r10
	movq	%rax, (%rsp)
	callq	*248(%r10)
.LBB43_6:                               # %if.end
	movl	$5, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rsi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	Fcons
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	globals+1632, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB43_8
# BB#7:                                 # %if.then.12
	movq	globals+1632, %rdi
	movq	-40(%rbp), %rsi
	callq	call1
	movq	%rax, -40(%rbp)
.LBB43_8:                               # %if.end.14
	movq	-40(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end43:
	.size	Fmouse_pixel_position, .Lfunc_end43-Fmouse_pixel_position
	.cfi_endproc

	.globl	Fset_mouse_position
	.align	16, 0x90
	.type	Fset_mouse_position,@function
Fset_mouse_position:                    # @Fset_mouse_position
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB44_1
	jmp	.LBB44_3
.LBB44_1:                               # %land.lhs.true
	movq	-8(%rbp), %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB44_3
# BB#2:                                 # %cond.true
	jmp	.LBB44_4
.LBB44_3:                               # %cond.false
	movl	$458, %edi              # imm = 0x1CA
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB44_4:                               # %cond.end
	jmp	.LBB44_5
.LBB44_5:                               # %do.body
	jmp	.LBB44_6
.LBB44_6:                               # %do.body.2
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB44_8
# BB#7:                                 # %cond.true.6
	jmp	.LBB44_9
.LBB44_8:                               # %cond.false.7
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB44_9:                               # %cond.end.9
	movq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	movq	-16(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jg	.LBB44_11
# BB#10:                                # %land.lhs.true.12
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	jle	.LBB44_12
.LBB44_11:                              # %if.then
	movabsq	$-8589934590, %rsi      # imm = 0xFFFFFFFE00000002
	movabsq	$8589934590, %rdx       # imm = 0x1FFFFFFFE
	movq	-16(%rbp), %rdi
	callq	args_out_of_range_3
.LBB44_12:                              # %if.end
	jmp	.LBB44_13
.LBB44_13:                              # %do.end
	jmp	.LBB44_14
.LBB44_14:                              # %do.end.16
	jmp	.LBB44_15
.LBB44_15:                              # %do.body.17
	jmp	.LBB44_16
.LBB44_16:                              # %do.body.18
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB44_18
# BB#17:                                # %cond.true.24
	jmp	.LBB44_19
.LBB44_18:                              # %cond.false.25
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB44_19:                              # %cond.end.27
	movq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	movq	-24(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jg	.LBB44_21
# BB#20:                                # %land.lhs.true.31
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	jle	.LBB44_22
.LBB44_21:                              # %if.then.35
	movabsq	$-8589934590, %rsi      # imm = 0xFFFFFFFE00000002
	movabsq	$8589934590, %rdx       # imm = 0x1FFFFFFFE
	movq	-24(%rbp), %rdi
	callq	args_out_of_range_3
.LBB44_22:                              # %if.end.36
	jmp	.LBB44_23
.LBB44_23:                              # %do.end.37
	jmp	.LBB44_24
.LBB44_24:                              # %do.end.38
	movq	-8(%rbp), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	.LBB44_26
# BB#25:                                # %if.then.42
	movq	-8(%rbp), %rax
	subq	$5, %rax
	movq	-16(%rbp), %rcx
	sarq	$2, %rcx
	movl	%ecx, %edx
	movq	-24(%rbp), %rcx
	sarq	$2, %rcx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movl	%esi, -52(%rbp)         # 4-byte Spill
	movl	%edx, %esi
	movl	-52(%rbp), %edx         # 4-byte Reload
	callq	frame_set_mouse_position
.LBB44_26:                              # %if.end.48
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end44:
	.size	Fset_mouse_position, .Lfunc_end44-Fset_mouse_position
	.cfi_endproc

	.align	16, 0x90
	.type	frame_set_mouse_position,@function
frame_set_mouse_position:               # @frame_set_mouse_position
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
	subq	$32, %rsp
	leaq	-20(%rbp), %rcx
	leaq	-24(%rbp), %r8
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	callq	frame_char_to_pixel_position
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	callq	frame_set_mouse_pixel_position
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end45:
	.size	frame_set_mouse_position, .Lfunc_end45-frame_set_mouse_position
	.cfi_endproc

	.globl	Fset_mouse_pixel_position
	.align	16, 0x90
	.type	Fset_mouse_pixel_position,@function
Fset_mouse_pixel_position:              # @Fset_mouse_pixel_position
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB46_1
	jmp	.LBB46_3
.LBB46_1:                               # %land.lhs.true
	movq	-8(%rbp), %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB46_3
# BB#2:                                 # %cond.true
	jmp	.LBB46_4
.LBB46_3:                               # %cond.false
	movl	$458, %edi              # imm = 0x1CA
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB46_4:                               # %cond.end
	jmp	.LBB46_5
.LBB46_5:                               # %do.body
	jmp	.LBB46_6
.LBB46_6:                               # %do.body.2
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB46_8
# BB#7:                                 # %cond.true.6
	jmp	.LBB46_9
.LBB46_8:                               # %cond.false.7
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB46_9:                               # %cond.end.9
	movq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	movq	-16(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jg	.LBB46_11
# BB#10:                                # %land.lhs.true.12
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	jle	.LBB46_12
.LBB46_11:                              # %if.then
	movabsq	$-8589934590, %rsi      # imm = 0xFFFFFFFE00000002
	movabsq	$8589934590, %rdx       # imm = 0x1FFFFFFFE
	movq	-16(%rbp), %rdi
	callq	args_out_of_range_3
.LBB46_12:                              # %if.end
	jmp	.LBB46_13
.LBB46_13:                              # %do.end
	jmp	.LBB46_14
.LBB46_14:                              # %do.end.16
	jmp	.LBB46_15
.LBB46_15:                              # %do.body.17
	jmp	.LBB46_16
.LBB46_16:                              # %do.body.18
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB46_18
# BB#17:                                # %cond.true.24
	jmp	.LBB46_19
.LBB46_18:                              # %cond.false.25
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB46_19:                              # %cond.end.27
	movq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	movq	-24(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jg	.LBB46_21
# BB#20:                                # %land.lhs.true.31
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	jle	.LBB46_22
.LBB46_21:                              # %if.then.35
	movabsq	$-8589934590, %rsi      # imm = 0xFFFFFFFE00000002
	movabsq	$8589934590, %rdx       # imm = 0x1FFFFFFFE
	movq	-24(%rbp), %rdi
	callq	args_out_of_range_3
.LBB46_22:                              # %if.end.36
	jmp	.LBB46_23
.LBB46_23:                              # %do.end.37
	jmp	.LBB46_24
.LBB46_24:                              # %do.end.38
	movq	-8(%rbp), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	.LBB46_26
# BB#25:                                # %if.then.42
	movq	-8(%rbp), %rax
	subq	$5, %rax
	movq	-16(%rbp), %rcx
	sarq	$2, %rcx
	movl	%ecx, %edx
	movq	-24(%rbp), %rcx
	sarq	$2, %rcx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movl	%esi, -52(%rbp)         # 4-byte Spill
	movl	%edx, %esi
	movl	-52(%rbp), %edx         # 4-byte Reload
	callq	frame_set_mouse_pixel_position
.LBB46_26:                              # %if.end.48
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end46:
	.size	Fset_mouse_pixel_position, .Lfunc_end46-Fset_mouse_pixel_position
	.cfi_endproc

	.globl	Fmake_frame_visible
	.align	16, 0x90
	.type	Fmake_frame_visible,@function
Fmake_frame_visible:                    # @Fmake_frame_visible
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_live_frame
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	.LBB47_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	x_make_frame_visible
.LBB47_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	callq	make_frame_visible_1
	movl	$5, %esi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end47:
	.size	Fmake_frame_visible, .Lfunc_end47-Fmake_frame_visible
	.cfi_endproc

	.align	16, 0x90
	.type	make_frame_visible_1,@function
make_frame_visible_1:                   # @make_frame_visible_1
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
.LBB48_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB48_2
	jmp	.LBB48_7
.LBB48_2:                               # %for.body
                                        #   in Loop: Header=BB48_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	XWINDOW
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB48_3
	jmp	.LBB48_4
.LBB48_3:                               # %if.then
                                        #   in Loop: Header=BB48_1 Depth=1
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	callq	make_frame_visible_1
	jmp	.LBB48_5
.LBB48_4:                               # %if.else
                                        #   in Loop: Header=BB48_1 Depth=1
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	Fcurrent_time
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_display_time
.LBB48_5:                               # %if.end
                                        #   in Loop: Header=BB48_1 Depth=1
	jmp	.LBB48_6
.LBB48_6:                               # %for.inc
                                        #   in Loop: Header=BB48_1 Depth=1
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB48_1
.LBB48_7:                               # %for.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end48:
	.size	make_frame_visible_1, .Lfunc_end48-make_frame_visible_1
	.cfi_endproc

	.globl	Fmake_frame_invisible
	.align	16, 0x90
	.type	Fmake_frame_invisible,@function
Fmake_frame_invisible:                  # @Fmake_frame_invisible
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_live_frame
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB49_3
# BB#1:                                 # %land.lhs.true
	movq	-24(%rbp), %rdi
	callq	other_visible_frames
	cmpl	$0, %eax
	jne	.LBB49_3
# BB#2:                                 # %if.then
	movabsq	$.L.str.9, %rdi
	movb	$0, %al
	callq	error
.LBB49_3:                               # %if.end
	movq	-8(%rbp), %rdi
	movq	minibuf_window, %rax
	cmpq	selected_window, %rax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %esi
	callq	check_minibuf_window
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %esi
	cmpl	$2, %esi
	jne	.LBB49_5
# BB#4:                                 # %if.then.6
	movq	-24(%rbp), %rdi
	callq	x_make_frame_invisible
.LBB49_5:                               # %if.end.7
	xorl	%edi, %edi
	movl	$16, windows_or_buffers_changed
	callq	builtin_lisp_symbol
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end49:
	.size	Fmake_frame_invisible, .Lfunc_end49-Fmake_frame_invisible
	.cfi_endproc

	.globl	Ficonify_frame
	.align	16, 0x90
	.type	Ficonify_frame,@function
Ficonify_frame:                         # @Ficonify_frame
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_live_frame
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	minibuf_window, %rax
	cmpq	selected_window, %rax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %esi
	callq	check_minibuf_window
	movq	-16(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %esi
	cmpl	$2, %esi
	jne	.LBB50_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	x_iconify_frame
.LBB50_2:                               # %if.end
	xorl	%edi, %edi
	movl	$17, windows_or_buffers_changed
	callq	builtin_lisp_symbol
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end50:
	.size	Ficonify_frame, .Lfunc_end50-Ficonify_frame
	.cfi_endproc

	.globl	Fframe_visible_p
	.align	16, 0x90
	.type	Fframe_visible_p,@function
Fframe_visible_p:                       # @Fframe_visible_p
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB51_1
	jmp	.LBB51_3
.LBB51_1:                               # %land.lhs.true
	movq	-16(%rbp), %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB51_3
# BB#2:                                 # %cond.true
	jmp	.LBB51_4
.LBB51_3:                               # %cond.false
	movl	$458, %edi              # imm = 0x1CA
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB51_4:                               # %cond.end
	movq	-16(%rbp), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$10, %rax
	andq	$3, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB51_6
# BB#5:                                 # %if.then
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB51_9
.LBB51_6:                               # %if.end
	movq	-16(%rbp), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$12, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB51_8
# BB#7:                                 # %if.then.9
	movl	$528, %edi              # imm = 0x210
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB51_9
.LBB51_8:                               # %if.end.11
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB51_9:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end51:
	.size	Fframe_visible_p, .Lfunc_end51-Fframe_visible_p
	.cfi_endproc

	.globl	Fvisible_frame_list
	.align	16, 0x90
	.type	Fvisible_frame_list,@function
Fvisible_frame_list:                    # @Fvisible_frame_list
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
	subq	$32, %rsp
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -24(%rbp)
	movq	Vframe_list, %rax
	movq	%rax, -8(%rbp)
.LBB52_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB52_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB52_1 Depth=1
	movb	$1, %al
	movq	-8(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -16(%rbp)
	movb	%al, -25(%rbp)          # 1-byte Spill
.LBB52_3:                               # %land.end
                                        #   in Loop: Header=BB52_1 Depth=1
	movb	-25(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB52_4
	jmp	.LBB52_8
.LBB52_4:                               # %for.body
                                        #   in Loop: Header=BB52_1 Depth=1
	movq	-16(%rbp), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$10, %rax
	andq	$3, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB52_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB52_1 Depth=1
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	Fcons
	movq	%rax, -24(%rbp)
.LBB52_6:                               # %if.end
                                        #   in Loop: Header=BB52_1 Depth=1
	jmp	.LBB52_7
.LBB52_7:                               # %for.inc
                                        #   in Loop: Header=BB52_1 Depth=1
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB52_1
.LBB52_8:                               # %for.end
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end52:
	.size	Fvisible_frame_list, .Lfunc_end52-Fvisible_frame_list
	.cfi_endproc

	.globl	Fraise_frame
	.align	16, 0x90
	.type	Fraise_frame,@function
Fraise_frame:                           # @Fraise_frame
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_live_frame
	movl	$5, %esi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %esi
	cmpl	$1, %esi
	jne	.LBB53_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fselect_frame
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB53_3
.LBB53_2:                               # %if.else
	movq	-8(%rbp), %rdi
	callq	Fmake_frame_visible
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB53_3:                               # %if.end
	movq	-16(%rbp), %rax
	movq	376(%rax), %rax
	cmpq	$0, 264(%rax)
	je	.LBB53_5
# BB#4:                                 # %if.then.5
	movl	$1, %esi
	movq	-16(%rbp), %rax
	movq	376(%rax), %rax
	movq	264(%rax), %rax
	movq	-16(%rbp), %rdi
	callq	*%rax
.LBB53_5:                               # %if.end.8
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end53:
	.size	Fraise_frame, .Lfunc_end53-Fraise_frame
	.cfi_endproc

	.globl	Flower_frame
	.align	16, 0x90
	.type	Flower_frame,@function
Flower_frame:                           # @Flower_frame
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp162:
	.cfi_def_cfa_offset 16
.Ltmp163:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp164:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_live_frame
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	376(%rax), %rax
	cmpq	$0, 264(%rax)
	je	.LBB54_2
# BB#1:                                 # %if.then
	xorl	%esi, %esi
	movq	-16(%rbp), %rax
	movq	376(%rax), %rax
	movq	264(%rax), %rax
	movq	-16(%rbp), %rdi
	callq	*%rax
.LBB54_2:                               # %if.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end54:
	.size	Flower_frame, .Lfunc_end54-Flower_frame
	.cfi_endproc

	.globl	Fframe_focus
	.align	16, 0x90
	.type	Fframe_focus,@function
Fframe_focus:                           # @Fframe_focus
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_live_frame
	movq	32(%rax), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end55:
	.size	Fframe_focus, .Lfunc_end55-Fframe_focus
	.cfi_endproc

	.globl	Fx_focus_frame
	.align	16, 0x90
	.type	Fx_focus_frame,@function
Fx_focus_frame:                         # @Fx_focus_frame
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp168:
	.cfi_def_cfa_offset 16
.Ltmp169:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp170:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_window_system_frame
	movq	%rax, %rdi
	callq	x_focus_frame
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end56:
	.size	Fx_focus_frame, .Lfunc_end56-Fx_focus_frame
	.cfi_endproc

	.globl	Fframe_after_make_frame
	.align	16, 0x90
	.type	Fframe_after_make_frame,@function
Fframe_after_make_frame:                # @Fframe_after_make_frame
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_live_frame
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%cl
	xorb	$-1, %cl
	movq	-24(%rbp), %rax
	andb	$1, %cl
	movzbl	%cl, %edi
	movl	%edi, %edx
	movq	208(%rax), %r8
	shlq	$35, %rdx
	movabsq	$-34359738369, %r9      # imm = 0xFFFFFFF7FFFFFFFF
	andq	%r9, %r8
	orq	%rdx, %r8
	movq	%r8, 208(%rax)
	movq	-24(%rbp), %rax
	movabsq	$-274877906945, %rdx    # imm = 0xFFFFFFBFFFFFFFFF
	andq	208(%rax), %rdx
	movq	%rdx, 208(%rax)
	movq	-24(%rbp), %rax
	movabsq	$-549755813889, %rdx    # imm = 0xFFFFFF7FFFFFFFFF
	andq	208(%rax), %rdx
	movq	%rdx, 208(%rax)
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end57:
	.size	Fframe_after_make_frame, .Lfunc_end57-Fframe_after_make_frame
	.cfi_endproc

	.globl	frames_discard_buffer
	.align	16, 0x90
	.type	frames_discard_buffer,@function
frames_discard_buffer:                  # @frames_discard_buffer
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	Vframe_list, %rdi
	movq	%rdi, -24(%rbp)
.LBB58_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB58_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB58_1 Depth=1
	movb	$1, %al
	movq	-24(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -16(%rbp)
	movb	%al, -25(%rbp)          # 1-byte Spill
.LBB58_3:                               # %land.end
                                        #   in Loop: Header=BB58_1 Depth=1
	movb	-25(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB58_4
	jmp	.LBB58_6
.LBB58_4:                               # %for.body
                                        #   in Loop: Header=BB58_1 Depth=1
	movq	-16(%rbp), %rax
	subq	$5, %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rcx
	subq	$5, %rcx
	movq	120(%rcx), %rsi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	Fdelq
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	fset_buffer_list
	movq	-16(%rbp), %rax
	subq	$5, %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rcx
	subq	$5, %rcx
	movq	128(%rcx), %rsi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	Fdelq
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	fset_buried_buffer_list
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB58_1 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB58_1
.LBB58_6:                               # %for.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end58:
	.size	frames_discard_buffer, .Lfunc_end58-frames_discard_buffer
	.cfi_endproc

	.globl	store_frame_param
	.align	16, 0x90
	.type	store_frame_param,@function
store_frame_param:                      # @store_frame_param
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
	subq	$224, %rsp
	movl	$222, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movl	%eax, %edi
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB59_8
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -40(%rbp)
.LBB59_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB59_7
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB59_2 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	Fbuffer_live_p
	xorl	%edi, %edi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB59_5
# BB#4:                                 # %if.then.8
                                        #   in Loop: Header=BB59_2 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rsi
	callq	Fcons
	movq	%rax, -40(%rbp)
.LBB59_5:                               # %if.end
                                        #   in Loop: Header=BB59_2 Depth=1
	jmp	.LBB59_6
.LBB59_6:                               # %for.inc
                                        #   in Loop: Header=BB59_2 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB59_2
.LBB59_7:                               # %for.end
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	Fnreverse
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	fset_buffer_list
	jmp	.LBB59_62
.LBB59_8:                               # %if.end.14
	movl	$231, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB59_16
# BB#9:                                 # %if.then.18
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -48(%rbp)
.LBB59_10:                              # %for.cond.21
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB59_15
# BB#11:                                # %for.body.26
                                        #   in Loop: Header=BB59_10 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	Fbuffer_live_p
	xorl	%edi, %edi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB59_13
# BB#12:                                # %if.then.33
                                        #   in Loop: Header=BB59_10 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	movq	-48(%rbp), %rsi
	callq	Fcons
	movq	%rax, -48(%rbp)
.LBB59_13:                              # %if.end.37
                                        #   in Loop: Header=BB59_10 Depth=1
	jmp	.LBB59_14
.LBB59_14:                              # %for.inc.38
                                        #   in Loop: Header=BB59_10 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB59_10
.LBB59_15:                              # %for.end.42
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	Fnreverse
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	fset_buried_buffer_list
	jmp	.LBB59_62
.LBB59_16:                              # %if.end.44
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB59_28
# BB#17:                                # %if.then.49
	movabsq	$lispsym, %rax
	movq	-16(%rbp), %rcx
	subq	$0, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
.LBB59_18:                              # %start
                                        # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax
	movzwl	(%rax), %ecx
	shrl	%ecx
	andl	$7, %ecx
	movl	%ecx, %edx
	subl	$1, %edx
	movl	%ecx, -116(%rbp)        # 4-byte Spill
	movl	%edx, -120(%rbp)        # 4-byte Spill
	je	.LBB59_19
	jmp	.LBB59_63
.LBB59_63:                              # %start
	movl	-116(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	je	.LBB59_21
	jmp	.LBB59_64
.LBB59_64:                              # %start
	movl	-116(%rbp), %eax        # 4-byte Reload
	addl	$-3, %eax
	subl	$2, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	jb	.LBB59_20
	jmp	.LBB59_26
.LBB59_19:                              # %sw.bb
                                        #   in Loop: Header=BB59_18 Depth=1
	movq	-56(%rbp), %rdi
	callq	indirect_variable
	movq	%rax, -56(%rbp)
	jmp	.LBB59_18
.LBB59_20:                              # %sw.bb.52
	jmp	.LBB59_27
.LBB59_21:                              # %sw.bb.53
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movb	(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB59_25
# BB#22:                                # %land.lhs.true
	movq	-64(%rbp), %rdi
	callq	blv_found
	cmpl	$0, %eax
	je	.LBB59_25
# BB#23:                                # %land.lhs.true.62
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	subq	$5, %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB59_25
# BB#24:                                # %if.then.66
	movq	-56(%rbp), %rdi
	callq	swap_in_global_binding
.LBB59_25:                              # %if.end.67
	jmp	.LBB59_27
.LBB59_26:                              # %sw.default
	callq	emacs_abort
.LBB59_27:                              # %sw.epilog
	jmp	.LBB59_28
.LBB59_28:                              # %if.end.68
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB59_40
# BB#29:                                # %land.lhs.true.75
	movl	$942, %edi              # imm = 0x3AE
	movq	-16(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB59_40
# BB#30:                                # %land.lhs.true.79
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	208(%rcx), %rcx
	shrq	$23, %rcx
	andq	$7, %rcx
	movl	%ecx, %edx
	cmpl	$1, %edx
	movq	%rax, -144(%rbp)        # 8-byte Spill
	je	.LBB59_32
# BB#31:                                # %lor.lhs.false
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB59_33
.LBB59_32:                              # %cond.true
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jmp	.LBB59_34
.LBB59_33:                              # %cond.false
	callq	emacs_abort
.LBB59_34:                              # %cond.end
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	-152(%rbp), %rcx        # 8-byte Reload
	cmpq	88(%rcx), %rax
	jne	.LBB59_40
# BB#35:                                # %if.then.96
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	je	.LBB59_37
# BB#36:                                # %lor.lhs.false.104
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB59_38
.LBB59_37:                              # %cond.true.112
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB59_39
.LBB59_38:                              # %cond.false.116
	callq	emacs_abort
.LBB59_39:                              # %cond.end.117
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	$0, 88(%rax)
.LBB59_40:                              # %if.end.120
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	64(%rax), %rsi
	callq	Fassq
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB59_42
# BB#41:                                # %if.then.125
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	Fcons
	movq	-8(%rbp), %rsi
	movq	64(%rsi), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	fset_param_alist
	jmp	.LBB59_43
.LBB59_42:                              # %if.else
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	Fsetcdr
	movq	%rax, -184(%rbp)        # 8-byte Spill
.LBB59_43:                              # %if.end.130
	movl	$227, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB59_45
# BB#44:                                # %if.then.134
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	fset_buffer_predicate
.LBB59_45:                              # %if.end.135
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	je	.LBB59_52
# BB#46:                                # %if.then.143
	movl	$653, %edi              # imm = 0x28D
	movq	-16(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-200(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB59_48
# BB#47:                                # %if.then.147
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rax
	movslq	356(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdx
	callq	set_menu_bar_lines
	jmp	.LBB59_51
.LBB59_48:                              # %if.else.149
	movl	$696, %edi              # imm = 0x2B8
	movq	-16(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB59_50
# BB#49:                                # %if.then.153
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	set_term_frame_name
.LBB59_50:                              # %if.end.154
	jmp	.LBB59_51
.LBB59_51:                              # %if.end.155
	jmp	.LBB59_52
.LBB59_52:                              # %if.end.156
	movl	$661, %edi              # imm = 0x295
	movq	-16(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB59_62
# BB#53:                                # %land.lhs.true.160
	movq	-24(%rbp), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB59_54
	jmp	.LBB59_62
.LBB59_54:                              # %if.then.163
	movq	-24(%rbp), %rdi
	callq	XWINDOW
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB59_56
# BB#55:                                # %if.then.168
	movabsq	$.L.str.10, %rdi
	movb	$0, %al
	callq	error
.LBB59_56:                              # %if.end.169
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB59_57
	jmp	.LBB59_58
.LBB59_57:                              # %land.lhs.true.172
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdi
	callq	XWINDOW
	movq	8(%rax), %rax
	subq	$5, %rax
	cmpq	-8(%rbp), %rax
	je	.LBB59_59
.LBB59_58:                              # %lor.lhs.false.178
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	56(%rcx), %rax
	jne	.LBB59_61
.LBB59_59:                              # %land.lhs.true.182
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	56(%rcx), %rax
	je	.LBB59_61
# BB#60:                                # %if.then.186
	movabsq	$.L.str.11, %rdi
	movb	$0, %al
	callq	error
.LBB59_61:                              # %if.end.187
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	fset_minibuffer_window
.LBB59_62:                              # %if.end.188
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end59:
	.size	store_frame_param, .Lfunc_end59-store_frame_param
	.cfi_endproc

	.align	16, 0x90
	.type	fset_buffer_predicate,@function
fset_buffer_predicate:                  # @fset_buffer_predicate
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 112(%rdi)
	popq	%rbp
	retq
.Lfunc_end60:
	.size	fset_buffer_predicate, .Lfunc_end60-fset_buffer_predicate
	.cfi_endproc

	.align	16, 0x90
	.type	set_term_frame_name,@function
set_term_frame_name:                    # @set_term_frame_name
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
	subq	$96, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movl	%eax, %edi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%cl
	xorb	$-1, %cl
	movq	-8(%rbp), %rax
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, %r8d
	movq	208(%rax), %r9
	shlq	$18, %r8
	andq	$-262145, %r9           # imm = 0xFFFFFFFFFFFBFFFF
	orq	%r8, %r9
	movq	%r9, 208(%rax)
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB61_4
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	SSDATA
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	SBYTES
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	frame_name_fnn_p
	cmpl	$0, %eax
	je	.LBB61_3
# BB#2:                                 # %if.then.9
	jmp	.LBB61_10
.LBB61_3:                               # %if.end
	movabsq	$.L.str.66, %rsi
	leaq	-48(%rbp), %rdi
	movq	tty_frame_count, %rax
	addq	$1, %rax
	movq	%rax, tty_frame_count
	movq	%rax, %rdx
	movb	$0, %al
	callq	make_formatted_string
	movq	%rax, -16(%rbp)
	jmp	.LBB61_9
.LBB61_4:                               # %if.else
	movq	-16(%rbp), %rdi
	callq	CHECK_STRING
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rsi
	callq	Fstring_equal
	xorl	%edi, %edi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB61_6
# BB#5:                                 # %if.then.15
	jmp	.LBB61_10
.LBB61_6:                               # %if.end.16
	movq	-16(%rbp), %rdi
	callq	SSDATA
	movq	-16(%rbp), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	SBYTES
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	frame_name_fnn_p
	cmpl	$0, %eax
	je	.LBB61_8
# BB#7:                                 # %if.then.21
	movabsq	$.L.str.67, %rdi
	movb	$0, %al
	callq	error
.LBB61_8:                               # %if.end.22
	jmp	.LBB61_9
.LBB61_9:                               # %if.end.23
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	fset_name
	movl	$16, update_mode_lines
.LBB61_10:                              # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end61:
	.size	set_term_frame_name, .Lfunc_end61-set_term_frame_name
	.cfi_endproc

	.globl	Fframe_parameters
	.align	16, 0x90
	.type	Fframe_parameters,@function
Fframe_parameters:                      # @Fframe_parameters
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp186:
	.cfi_def_cfa_offset 16
.Ltmp187:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp188:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	decode_any_frame
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$0, 376(%rax)
	jne	.LBB62_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB62_45
.LBB62_2:                               # %if.end
	movq	-32(%rbp), %rax
	movq	64(%rax), %rdi
	callq	Fcopy_alist
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	je	.LBB62_16
# BB#3:                                 # %if.then.4
	movl	$451, %edi              # imm = 0x1C3
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fassq
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB62_8
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB62_5
	jmp	.LBB62_8
.LBB62_5:                               # %if.then.11
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rsi
	callq	frame_unspecified_color
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB62_7
# BB#6:                                 # %if.then.19
	movl	$451, %edi              # imm = 0x1C3
	callq	builtin_lisp_symbol
	leaq	-24(%rbp), %rdi
	movq	-48(%rbp), %rdx
	movq	%rax, %rsi
	callq	store_in_alist
.LBB62_7:                               # %if.end.21
	jmp	.LBB62_9
.LBB62_8:                               # %if.else
	movl	$451, %edi              # imm = 0x1C3
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	480(%rcx), %rcx
	movl	%ecx, %edx
	movl	%edx, %esi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	tty_color_name
	leaq	-24(%rbp), %rdi
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	store_in_alist
.LBB62_9:                               # %if.end.25
	movl	$193, %edi
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fassq
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB62_14
# BB#10:                                # %land.lhs.true.32
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB62_11
	jmp	.LBB62_14
.LBB62_11:                              # %if.then.38
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rsi
	callq	frame_unspecified_color
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB62_13
# BB#12:                                # %if.then.46
	movl	$193, %edi
	callq	builtin_lisp_symbol
	leaq	-24(%rbp), %rdi
	movq	-48(%rbp), %rdx
	movq	%rax, %rsi
	callq	store_in_alist
.LBB62_13:                              # %if.end.48
	jmp	.LBB62_15
.LBB62_14:                              # %if.else.49
	movl	$193, %edi
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	472(%rcx), %rcx
	movl	%ecx, %edx
	movl	%edx, %esi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	tty_color_name
	leaq	-24(%rbp), %rdi
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	store_in_alist
.LBB62_15:                              # %if.end.53
	movl	$439, %edi              # imm = 0x1B7
	callq	builtin_lisp_symbol
	movabsq	$.L.str.12, %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	build_string
	leaq	-24(%rbp), %rdi
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	store_in_alist
.LBB62_16:                              # %if.end.56
	movl	$696, %edi              # imm = 0x2B8
	callq	builtin_lisp_symbol
	leaq	-24(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	8(%rcx), %rdx
	movq	%rax, %rsi
	callq	store_in_alist
	movq	-32(%rbp), %rax
	cmpl	$0, 300(%rax)
	je	.LBB62_21
# BB#17:                                # %cond.true
	movq	-32(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$33, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB62_19
# BB#18:                                # %cond.true.63
	movq	-32(%rbp), %rax
	movl	300(%rax), %eax
	movq	-32(%rbp), %rcx
	cltd
	idivl	368(%rcx)
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB62_20
.LBB62_19:                              # %cond.false
	movq	-32(%rbp), %rax
	movl	300(%rax), %ecx
	movl	%ecx, -100(%rbp)        # 4-byte Spill
.LBB62_20:                              # %cond.end
	movl	-100(%rbp), %eax        # 4-byte Reload
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB62_22
.LBB62_21:                              # %cond.false.66
	movq	-32(%rbp), %rax
	movl	276(%rax), %ecx
	movl	%ecx, -104(%rbp)        # 4-byte Spill
.LBB62_22:                              # %cond.end.67
	movl	-104(%rbp), %eax        # 4-byte Reload
	movl	$515, %edi              # imm = 0x203
	movl	%eax, -36(%rbp)
	callq	builtin_lisp_symbol
	leaq	-24(%rbp), %rdi
	movslq	-36(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	store_in_alist
	movq	-32(%rbp), %rax
	cmpl	$0, 296(%rax)
	je	.LBB62_27
# BB#23:                                # %cond.true.72
	movq	-32(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$33, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB62_25
# BB#24:                                # %cond.true.79
	movq	-32(%rbp), %rax
	movl	296(%rax), %eax
	movq	-32(%rbp), %rcx
	cltd
	idivl	364(%rcx)
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB62_26
.LBB62_25:                              # %cond.false.82
	movq	-32(%rbp), %rax
	movl	296(%rax), %ecx
	movl	%ecx, -108(%rbp)        # 4-byte Spill
.LBB62_26:                              # %cond.end.84
	movl	-108(%rbp), %eax        # 4-byte Reload
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB62_28
.LBB62_27:                              # %cond.false.86
	movq	-32(%rbp), %rax
	movl	272(%rax), %ecx
	movl	%ecx, -112(%rbp)        # 4-byte Spill
.LBB62_28:                              # %cond.end.87
	movl	-112(%rbp), %eax        # 4-byte Reload
	movl	$1017, %edi             # imm = 0x3F9
	movl	%eax, -40(%rbp)
	callq	builtin_lisp_symbol
	leaq	-24(%rbp), %rdi
	movslq	-40(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	store_in_alist
	movl	$675, %edi              # imm = 0x2A3
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx
	movq	208(%rcx), %rcx
	shrq	$14, %rcx
	andq	$1, %rcx
	testq	$1, %rcx
	movq	%rax, -120(%rbp)        # 8-byte Spill
	je	.LBB62_30
# BB#29:                                # %cond.true.99
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB62_31
.LBB62_30:                              # %cond.false.101
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB62_31:                              # %cond.end.103
	movq	-128(%rbp), %rax        # 8-byte Reload
	leaq	-24(%rbp), %rdi
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	store_in_alist
	movl	$661, %edi              # imm = 0x295
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rdx
	movq	56(%rdx), %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB62_32
	jmp	.LBB62_33
.LBB62_32:                              # %land.lhs.true.108
	movq	-32(%rbp), %rax
	movq	56(%rax), %rdi
	callq	XWINDOW
	movq	8(%rax), %rax
	subq	$5, %rax
	cmpq	-32(%rbp), %rax
	je	.LBB62_34
.LBB62_33:                              # %cond.true.115
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB62_38
.LBB62_34:                              # %cond.false.117
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	movq	-32(%rbp), %rcx
	cmpq	56(%rcx), %rax
	jne	.LBB62_36
# BB#35:                                # %cond.true.121
	movl	$717, %edi              # imm = 0x2CD
	callq	builtin_lisp_symbol
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jmp	.LBB62_37
.LBB62_36:                              # %cond.false.123
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
.LBB62_37:                              # %cond.end.125
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB62_38:                              # %cond.end.127
	movq	-144(%rbp), %rax        # 8-byte Reload
	leaq	-24(%rbp), %rdi
	movq	-136(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	store_in_alist
	movl	$976, %edi              # imm = 0x3D0
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rdx
	movq	208(%rdx), %rdx
	shrq	$17, %rdx
	andq	$1, %rdx
	testq	$1, %rdx
	movq	%rax, -160(%rbp)        # 8-byte Spill
	je	.LBB62_40
# BB#39:                                # %cond.true.135
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB62_41
.LBB62_40:                              # %cond.false.137
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -168(%rbp)        # 8-byte Spill
.LBB62_41:                              # %cond.end.139
	movq	-168(%rbp), %rax        # 8-byte Reload
	leaq	-24(%rbp), %rdi
	movq	-160(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	store_in_alist
	movl	$222, %edi
	callq	builtin_lisp_symbol
	leaq	-24(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movq	120(%rdx), %rdx
	movq	%rax, %rsi
	callq	store_in_alist
	movl	$231, %edi
	callq	builtin_lisp_symbol
	leaq	-24(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movq	128(%rdx), %rdx
	movq	%rax, %rsi
	callq	store_in_alist
	movq	-32(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	.LBB62_43
# BB#42:                                # %if.then.150
	leaq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	x_report_frame_params
	jmp	.LBB62_44
.LBB62_43:                              # %if.else.151
	movq	-32(%rbp), %rax
	movslq	356(%rax), %rdi
	callq	make_natnum
	movl	$653, %edi              # imm = 0x28D
	movq	%rax, -56(%rbp)
	callq	builtin_lisp_symbol
	leaq	-24(%rbp), %rdi
	movq	-56(%rbp), %rdx
	movq	%rax, %rsi
	callq	store_in_alist
.LBB62_44:                              # %if.end.155
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB62_45:                              # %return
	movq	-8(%rbp), %rax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end62:
	.size	Fframe_parameters, .Lfunc_end62-Fframe_parameters
	.cfi_endproc

	.align	16, 0x90
	.type	frame_unspecified_color,@function
frame_unspecified_color:                # @frame_unspecified_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp189:
	.cfi_def_cfa_offset 16
.Ltmp190:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp191:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	SSDATA
	movq	-16(%rbp), %rdi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	SBYTES
	movabsq	$unspecified_bg, %rsi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB63_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	472(%rax), %rax
	movl	%eax, %ecx
	movl	%ecx, %esi
	callq	tty_color_name
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB63_6
.LBB63_2:                               # %cond.false
	movq	-16(%rbp), %rdi
	callq	SSDATA
	movq	-16(%rbp), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	SBYTES
	movabsq	$unspecified_fg, %rsi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB63_4
# BB#3:                                 # %cond.true.8
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	480(%rax), %rax
	movl	%eax, %ecx
	movl	%ecx, %esi
	callq	tty_color_name
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB63_5
.LBB63_4:                               # %cond.false.11
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB63_5:                               # %cond.end
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB63_6:                               # %cond.end.13
	movq	-32(%rbp), %rax         # 8-byte Reload
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end63:
	.size	frame_unspecified_color, .Lfunc_end63-frame_unspecified_color
	.cfi_endproc

	.align	16, 0x90
	.type	x_report_frame_params,@function
x_report_frame_params:                  # @x_report_frame_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp192:
	.cfi_def_cfa_offset 16
.Ltmp193:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp194:
	.cfi_def_cfa_register %rbp
	subq	$368, %rsp              # imm = 0x170
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movslq	304(%rsi), %rsi
	shlq	$2, %rsi
	addq	$2, %rsi
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rsi
	cmpl	$0, 304(%rsi)
	jl	.LBB64_2
# BB#1:                                 # %if.then
	movl	$607, %edi              # imm = 0x25F
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	store_in_alist
	jmp	.LBB64_3
.LBB64_2:                               # %if.else
	movl	$607, %edi              # imm = 0x25F
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$752, %edi              # imm = 0x2F0
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	list2
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	store_in_alist
.LBB64_3:                               # %if.end
	movq	-8(%rbp), %rax
	movslq	308(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$0, 308(%rax)
	jl	.LBB64_5
# BB#4:                                 # %if.then.12
	movl	$928, %edi              # imm = 0x3A0
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rdx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	store_in_alist
	jmp	.LBB64_6
.LBB64_5:                               # %if.else.14
	movl	$928, %edi              # imm = 0x3A0
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$752, %edi              # imm = 0x2F0
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	list2
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	store_in_alist
.LBB64_6:                               # %if.end.18
	movl	$210, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rcx
	movslq	328(%rcx), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	store_in_alist
	movl	$563, %edi              # imm = 0x233
	movq	-16(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rcx
	movslq	332(%rcx), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	store_in_alist
	movl	$813, %edi              # imm = 0x32D
	movq	-16(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rcx
	movslq	336(%rcx), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	store_in_alist
	movl	$215, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rcx
	movslq	340(%rcx), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	store_in_alist
	movl	$608, %edi              # imm = 0x260
	movq	-16(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rcx
	movslq	344(%rcx), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	store_in_alist
	movl	$814, %edi              # imm = 0x32E
	movq	-16(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rcx
	movslq	348(%rcx), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	store_in_alist
	movl	$835, %edi              # imm = 0x343
	movq	-16(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rcx
	movq	208(%rcx), %rcx
	shrq	$30, %rcx
	andq	$3, %rcx
	movl	%ecx, %edi
	cmpl	$0, %edi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jne	.LBB64_8
# BB#7:                                 # %cond.true
	movl	$2, %eax
	movl	%eax, %ecx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	jmp	.LBB64_12
.LBB64_8:                               # %cond.false
	movq	-8(%rbp), %rax
	cmpl	$0, 420(%rax)
	jle	.LBB64_10
# BB#9:                                 # %cond.true.48
	movq	-8(%rbp), %rax
	movslq	420(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jmp	.LBB64_11
.LBB64_10:                              # %cond.false.53
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -192(%rbp)        # 8-byte Spill
.LBB64_11:                              # %cond.end
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	%rax, -184(%rbp)        # 8-byte Spill
.LBB64_12:                              # %cond.end.55
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	-176(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	store_in_alist
	movl	$833, %edi              # imm = 0x341
	movq	-16(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rdx
	movq	208(%rdx), %rdx
	shrq	$32, %rdx
	andq	$1, %rdx
	testq	$1, %rdx
	movq	%rax, -208(%rbp)        # 8-byte Spill
	jne	.LBB64_14
# BB#13:                                # %cond.true.62
	movl	$2, %eax
	movl	%eax, %ecx
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	jmp	.LBB64_18
.LBB64_14:                              # %cond.false.63
	movq	-8(%rbp), %rax
	cmpl	$0, 428(%rax)
	jle	.LBB64_16
# BB#15:                                # %cond.true.66
	movq	-8(%rbp), %rax
	movslq	428(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	jmp	.LBB64_17
.LBB64_16:                              # %cond.false.71
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -224(%rbp)        # 8-byte Spill
.LBB64_17:                              # %cond.end.73
	movq	-224(%rbp), %rax        # 8-byte Reload
	movq	%rax, -216(%rbp)        # 8-byte Spill
.LBB64_18:                              # %cond.end.75
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	-208(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	store_in_alist
	movl	$1026, %edi             # imm = 0x402
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.68, %rsi
	leaq	-64(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movq	%rax, -240(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	make_formatted_string
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	-240(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	store_in_alist
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 80(%rax)
	je	.LBB64_24
# BB#19:                                # %cond.true.81
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 80(%rax)
	je	.LBB64_22
# BB#20:                                # %land.lhs.true
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rdi
	callq	gtk_widget_get_window
	cmpq	$0, %rax
	je	.LBB64_22
# BB#21:                                # %cond.true.91
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rdi
	callq	gtk_widget_get_window
	movq	%rax, %rdi
	callq	gdk_x11_drawable_get_xid
	movq	%rax, -248(%rbp)        # 8-byte Spill
	jmp	.LBB64_23
.LBB64_22:                              # %cond.false.97
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -248(%rbp)        # 8-byte Spill
	jmp	.LBB64_23
.LBB64_23:                              # %cond.end.98
	movq	-248(%rbp), %rax        # 8-byte Reload
	movq	%rax, -256(%rbp)        # 8-byte Spill
	jmp	.LBB64_25
.LBB64_24:                              # %cond.false.100
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
.LBB64_25:                              # %cond.end.104
	movq	-256(%rbp), %rax        # 8-byte Reload
	movl	$727, %edi              # imm = 0x2D7
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.68, %rsi
	leaq	-64(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movq	%rax, -272(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	make_formatted_string
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	-272(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	store_in_alist
	movl	$530, %edi              # imm = 0x212
	movq	-16(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rdx
	movq	16(%rdx), %rdx
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	store_in_alist
	movl	$1004, %edi             # imm = 0x3EC
	movq	-16(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rdx
	movq	208(%rdx), %rdx
	shrq	$10, %rdx
	andq	$3, %rdx
	movl	%edx, %edi
	cmpl	$0, %edi
	movq	%rax, -296(%rbp)        # 8-byte Spill
	je	.LBB64_27
# BB#26:                                # %cond.true.116
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -304(%rbp)        # 8-byte Spill
	jmp	.LBB64_31
.LBB64_27:                              # %cond.false.118
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$12, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB64_29
# BB#28:                                # %cond.true.124
	movl	$528, %edi              # imm = 0x210
	callq	builtin_lisp_symbol
	movq	%rax, -312(%rbp)        # 8-byte Spill
	jmp	.LBB64_30
.LBB64_29:                              # %cond.false.126
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -312(%rbp)        # 8-byte Spill
.LBB64_30:                              # %cond.end.128
	movq	-312(%rbp), %rax        # 8-byte Reload
	movq	%rax, -304(%rbp)        # 8-byte Spill
.LBB64_31:                              # %cond.end.130
	movq	-304(%rbp), %rax        # 8-byte Reload
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	-296(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	store_in_alist
	movl	$344, %edi              # imm = 0x158
	movq	-16(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rdx
	movq	384(%rdx), %rdx
	movq	424(%rdx), %rdx
	movq	32(%rdx), %rdx
	subq	$3, %rdx
	movq	(%rdx), %rdx
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	store_in_alist
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	384(%rdx), %rdx
	movq	424(%rdx), %rdx
	cmpq	104(%rdx), %rax
	jne	.LBB64_33
# BB#32:                                # %if.then.142
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -24(%rbp)
	jmp	.LBB64_34
.LBB64_33:                              # %if.else.144
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	72(%rax), %rdi
	callq	make_natnum
	movq	%rax, -24(%rbp)
.LBB64_34:                              # %if.end.149
	movl	$391, %edi              # imm = 0x187
	movq	-16(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rcx
	movq	208(%rcx), %rcx
	shrq	$18, %rcx
	andq	$1, %rcx
	testq	$1, %rcx
	movq	%rax, -336(%rbp)        # 8-byte Spill
	je	.LBB64_36
# BB#35:                                # %cond.true.156
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -344(%rbp)        # 8-byte Spill
	jmp	.LBB64_37
.LBB64_36:                              # %cond.false.158
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -344(%rbp)        # 8-byte Spill
.LBB64_37:                              # %cond.end.160
	movq	-344(%rbp), %rax        # 8-byte Reload
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	-336(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	store_in_alist
	movl	$742, %edi              # imm = 0x2E6
	movq	-16(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rdx
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	store_in_alist
	movl	$924, %edi              # imm = 0x39C
	movq	-16(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rdx
	movq	144(%rdx), %rdx
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	store_in_alist
	addq	$368, %rsp              # imm = 0x170
	popq	%rbp
	retq
.Lfunc_end64:
	.size	x_report_frame_params, .Lfunc_end64-x_report_frame_params
	.cfi_endproc

	.globl	x_set_frame_parameters
	.align	16, 0x90
	.type	x_set_frame_parameters,@function
x_set_frame_parameters:                 # @x_set_frame_parameters
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp195:
	.cfi_def_cfa_offset 16
.Ltmp196:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp197:
	.cfi_def_cfa_register %rbp
	subq	$1424, %rsp             # imm = 0x590
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movb	$0, -33(%rbp)
	movb	$0, -34(%rbp)
	movb	$0, -81(%rbp)
	movb	$0, -121(%rbp)
	movb	$0, -122(%rbp)
	movb	$0, -123(%rbp)
	movb	$0, -124(%rbp)
	movq	$0, -112(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
.LBB65_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB65_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB65_1 Depth=1
	movq	-112(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -112(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB65_1 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB65_1
.LBB65_4:                               # %for.end
	movq	$16384, -136(%rbp)      # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -144(%rbp)
	movb	$0, -145(%rbp)
# BB#5:                                 # %do.body
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB65_6
	jmp	.LBB65_85
.LBB65_6:                               # %cond.true
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB65_7
	jmp	.LBB65_46
.LBB65_7:                               # %cond.true.2
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB65_9
# BB#8:                                 # %cond.true.9
	xorl	%eax, %eax
	movq	-112(%rbp), %rcx
	shlq	$1, %rcx
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
	movq	-112(%rbp), %rcx
	shlq	$1, %rcx
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
	movl	%eax, -268(%rbp)        # 4-byte Spill
	jmp	.LBB65_10
.LBB65_9:                               # %cond.false
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -268(%rbp)        # 4-byte Spill
.LBB65_10:                              # %cond.end
	movl	-268(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB65_12
# BB#11:                                # %land.lhs.true
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jl	.LBB65_38
.LBB65_12:                              # %lor.lhs.false
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB65_13
	jmp	.LBB65_24
.LBB65_13:                              # %cond.true.42
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB65_18
# BB#14:                                # %cond.true.48
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -272(%rbp)        # 4-byte Spill
	jge	.LBB65_16
# BB#15:                                # %cond.true.60
	movq	-112(%rbp), %rax
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
	movl	%edx, -276(%rbp)        # 4-byte Spill
	jmp	.LBB65_17
.LBB65_16:                              # %cond.false.71
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -276(%rbp)        # 4-byte Spill
.LBB65_17:                              # %cond.end.78
	movl	-276(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-272(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB65_38
	jmp	.LBB65_35
.LBB65_18:                              # %cond.false.82
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB65_19
	jmp	.LBB65_20
.LBB65_19:                              # %cond.true.83
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB65_38
	jmp	.LBB65_35
.LBB65_20:                              # %cond.false.84
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB65_22
# BB#21:                                # %cond.true.93
	xorl	%eax, %eax
	movq	-112(%rbp), %rcx
	shlq	$1, %rcx
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
	movq	-112(%rbp), %rcx
	shlq	$1, %rcx
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
	movl	%eax, -280(%rbp)        # 4-byte Spill
	jmp	.LBB65_23
.LBB65_22:                              # %cond.false.115
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -280(%rbp)        # 4-byte Spill
.LBB65_23:                              # %cond.end.122
	movl	-280(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-112(%rbp), %rsi
	shlq	$1, %rsi
	movb	%sil, %dil
	movsbl	%dil, %ecx
	cmpl	%ecx, %eax
	jl	.LBB65_38
	jmp	.LBB65_35
.LBB65_24:                              # %cond.false.130
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB65_25
	jmp	.LBB65_26
.LBB65_25:                              # %cond.true.131
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB65_38
	jmp	.LBB65_35
.LBB65_26:                              # %cond.false.132
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB65_31
# BB#27:                                # %cond.true.138
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -284(%rbp)        # 4-byte Spill
	jge	.LBB65_29
# BB#28:                                # %cond.true.150
	xorl	%eax, %eax
	movq	-112(%rbp), %rcx
	shlq	$1, %rcx
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
	movq	-112(%rbp), %rcx
	shlq	$1, %rcx
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
	jmp	.LBB65_30
.LBB65_29:                              # %cond.false.172
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -288(%rbp)        # 4-byte Spill
.LBB65_30:                              # %cond.end.179
	movl	-288(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-284(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB65_38
	jmp	.LBB65_35
.LBB65_31:                              # %cond.false.184
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB65_33
# BB#32:                                # %cond.true.193
	movq	-112(%rbp), %rax
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
	movl	%edx, -292(%rbp)        # 4-byte Spill
	jmp	.LBB65_34
.LBB65_33:                              # %cond.false.204
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -292(%rbp)        # 4-byte Spill
.LBB65_34:                              # %cond.end.211
	movl	-292(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-112(%rbp), %rsi
	shlq	$1, %rsi
	movb	%sil, %dil
	movsbl	%dil, %ecx
	cmpl	%ecx, %eax
	jl	.LBB65_38
.LBB65_35:                              # %lor.lhs.false.219
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	shll	$3, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB65_37
# BB#36:                                # %land.lhs.true.228
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	shll	$3, %edx
	cmpl	$-128, %edx
	jl	.LBB65_38
.LBB65_37:                              # %lor.lhs.false.235
	movl	$127, %eax
	movq	-112(%rbp), %rcx
	shlq	$1, %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	shll	$3, %esi
	cmpl	%esi, %eax
	jge	.LBB65_42
.LBB65_38:                              # %cond.true.242
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB65_40
# BB#39:                                # %cond.true.249
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -296(%rbp)        # 4-byte Spill
	jmp	.LBB65_41
.LBB65_40:                              # %cond.false.256
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -296(%rbp)        # 4-byte Spill
.LBB65_41:                              # %cond.end.265
	movl	-296(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -160(%rbp)
	testb	$1, %cl
	jne	.LBB65_405
	jmp	.LBB65_404
.LBB65_42:                              # %cond.false.268
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB65_44
# BB#43:                                # %cond.true.275
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -300(%rbp)        # 4-byte Spill
	jmp	.LBB65_45
.LBB65_44:                              # %cond.false.282
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -300(%rbp)        # 4-byte Spill
.LBB65_45:                              # %cond.end.291
	movl	-300(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -160(%rbp)
	testb	$1, %dl
	jne	.LBB65_405
	jmp	.LBB65_404
.LBB65_46:                              # %cond.false.294
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB65_48
# BB#47:                                # %cond.true.301
	xorl	%eax, %eax
	movq	-112(%rbp), %rcx
	shlq	$1, %rcx
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
	movq	-112(%rbp), %rdi
	shlq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -312(%rbp)        # 8-byte Spill
	jmp	.LBB65_49
.LBB65_48:                              # %cond.false.320
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
.LBB65_49:                              # %cond.end.325
	movq	-312(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB65_51
# BB#50:                                # %land.lhs.true.329
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	cmpq	$0, %rax
	jl	.LBB65_77
.LBB65_51:                              # %lor.lhs.false.333
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB65_52
	jmp	.LBB65_63
.LBB65_52:                              # %cond.true.334
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB65_57
# BB#53:                                # %cond.true.338
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movq	-112(%rbp), %rcx
	shlq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -320(%rbp)        # 8-byte Spill
	jge	.LBB65_55
# BB#54:                                # %cond.true.346
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	jmp	.LBB65_56
.LBB65_55:                              # %cond.false.355
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
.LBB65_56:                              # %cond.end.360
	movq	-328(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -336(%rbp)        # 8-byte Spill
	cqto
	movq	-336(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-320(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB65_77
	jmp	.LBB65_74
.LBB65_57:                              # %cond.false.365
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB65_58
	jmp	.LBB65_59
.LBB65_58:                              # %cond.true.366
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB65_77
	jmp	.LBB65_74
.LBB65_59:                              # %cond.false.367
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB65_61
# BB#60:                                # %cond.true.374
	xorl	%eax, %eax
	movq	-112(%rbp), %rcx
	shlq	$1, %rcx
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
	movq	-112(%rbp), %rdi
	shlq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -344(%rbp)        # 8-byte Spill
	jmp	.LBB65_62
.LBB65_61:                              # %cond.false.393
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
.LBB65_62:                              # %cond.end.398
	movq	-344(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -352(%rbp)        # 8-byte Spill
	cqto
	movq	-352(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-112(%rbp), %rdi
	shlq	$1, %rdi
	cmpq	%rdi, %rax
	jl	.LBB65_77
	jmp	.LBB65_74
.LBB65_63:                              # %cond.false.404
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB65_64
	jmp	.LBB65_65
.LBB65_64:                              # %cond.true.405
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB65_77
	jmp	.LBB65_74
.LBB65_65:                              # %cond.false.406
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB65_70
# BB#66:                                # %cond.true.410
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movq	-112(%rbp), %rcx
	shlq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -360(%rbp)        # 8-byte Spill
	jge	.LBB65_68
# BB#67:                                # %cond.true.418
	xorl	%eax, %eax
	movq	-112(%rbp), %rcx
	shlq	$1, %rcx
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
	movq	-112(%rbp), %rdi
	shlq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	jmp	.LBB65_69
.LBB65_68:                              # %cond.false.437
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
.LBB65_69:                              # %cond.end.442
	movq	-368(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -376(%rbp)        # 8-byte Spill
	cqto
	movq	-376(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-360(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB65_77
	jmp	.LBB65_74
.LBB65_70:                              # %cond.false.447
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB65_72
# BB#71:                                # %cond.true.454
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	jmp	.LBB65_73
.LBB65_72:                              # %cond.false.463
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
.LBB65_73:                              # %cond.end.468
	movq	-384(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -392(%rbp)        # 8-byte Spill
	cqto
	movq	-392(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-112(%rbp), %rdi
	shlq	$1, %rdi
	cmpq	%rdi, %rax
	jl	.LBB65_77
.LBB65_74:                              # %lor.lhs.false.474
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB65_76
# BB#75:                                # %land.lhs.true.481
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	shlq	$3, %rax
	cmpq	$-128, %rax
	jl	.LBB65_77
.LBB65_76:                              # %lor.lhs.false.486
	movl	$127, %eax
	movl	%eax, %ecx
	movq	-112(%rbp), %rdx
	shlq	$1, %rdx
	shlq	$3, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB65_81
.LBB65_77:                              # %cond.true.491
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB65_79
# BB#78:                                # %cond.true.498
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -396(%rbp)        # 4-byte Spill
	jmp	.LBB65_80
.LBB65_79:                              # %cond.false.505
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -396(%rbp)        # 4-byte Spill
.LBB65_80:                              # %cond.end.514
	movl	-396(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -160(%rbp)
	testb	$1, %cl
	jne	.LBB65_405
	jmp	.LBB65_404
.LBB65_81:                              # %cond.false.517
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB65_83
# BB#82:                                # %cond.true.524
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -400(%rbp)        # 4-byte Spill
	jmp	.LBB65_84
.LBB65_83:                              # %cond.false.531
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -400(%rbp)        # 4-byte Spill
.LBB65_84:                              # %cond.end.540
	movl	-400(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -160(%rbp)
	testb	$1, %dl
	jne	.LBB65_405
	jmp	.LBB65_404
.LBB65_85:                              # %cond.false.543
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB65_86
	jmp	.LBB65_165
.LBB65_86:                              # %cond.true.544
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB65_87
	jmp	.LBB65_126
.LBB65_87:                              # %cond.true.545
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB65_89
# BB#88:                                # %cond.true.554
	xorl	%eax, %eax
	movq	-112(%rbp), %rcx
	shlq	$1, %rcx
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
	movq	-112(%rbp), %rcx
	shlq	$1, %rcx
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
	movl	%eax, -404(%rbp)        # 4-byte Spill
	jmp	.LBB65_90
.LBB65_89:                              # %cond.false.576
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -404(%rbp)        # 4-byte Spill
.LBB65_90:                              # %cond.end.583
	movl	-404(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB65_92
# BB#91:                                # %land.lhs.true.587
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jl	.LBB65_118
.LBB65_92:                              # %lor.lhs.false.593
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB65_93
	jmp	.LBB65_104
.LBB65_93:                              # %cond.true.594
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB65_98
# BB#94:                                # %cond.true.600
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -408(%rbp)        # 4-byte Spill
	jge	.LBB65_96
# BB#95:                                # %cond.true.612
	movq	-112(%rbp), %rax
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
	jmp	.LBB65_97
.LBB65_96:                              # %cond.false.623
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -412(%rbp)        # 4-byte Spill
.LBB65_97:                              # %cond.end.630
	movl	-412(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-408(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB65_118
	jmp	.LBB65_115
.LBB65_98:                              # %cond.false.635
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB65_99
	jmp	.LBB65_100
.LBB65_99:                              # %cond.true.636
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB65_118
	jmp	.LBB65_115
.LBB65_100:                             # %cond.false.637
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB65_102
# BB#101:                               # %cond.true.646
	xorl	%eax, %eax
	movq	-112(%rbp), %rcx
	shlq	$1, %rcx
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
	movq	-112(%rbp), %rcx
	shlq	$1, %rcx
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
	movl	%eax, -416(%rbp)        # 4-byte Spill
	jmp	.LBB65_103
.LBB65_102:                             # %cond.false.668
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -416(%rbp)        # 4-byte Spill
.LBB65_103:                             # %cond.end.675
	movl	-416(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-112(%rbp), %rsi
	shlq	$1, %rsi
	movw	%si, %di
	movswl	%di, %ecx
	cmpl	%ecx, %eax
	jl	.LBB65_118
	jmp	.LBB65_115
.LBB65_104:                             # %cond.false.683
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB65_105
	jmp	.LBB65_106
.LBB65_105:                             # %cond.true.684
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB65_118
	jmp	.LBB65_115
.LBB65_106:                             # %cond.false.685
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB65_111
# BB#107:                               # %cond.true.691
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -420(%rbp)        # 4-byte Spill
	jge	.LBB65_109
# BB#108:                               # %cond.true.703
	xorl	%eax, %eax
	movq	-112(%rbp), %rcx
	shlq	$1, %rcx
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
	movq	-112(%rbp), %rcx
	shlq	$1, %rcx
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
	jmp	.LBB65_110
.LBB65_109:                             # %cond.false.725
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -424(%rbp)        # 4-byte Spill
.LBB65_110:                             # %cond.end.732
	movl	-424(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-420(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB65_118
	jmp	.LBB65_115
.LBB65_111:                             # %cond.false.737
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB65_113
# BB#112:                               # %cond.true.746
	movq	-112(%rbp), %rax
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
	movl	%edx, -428(%rbp)        # 4-byte Spill
	jmp	.LBB65_114
.LBB65_113:                             # %cond.false.757
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -428(%rbp)        # 4-byte Spill
.LBB65_114:                             # %cond.end.764
	movl	-428(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-112(%rbp), %rsi
	shlq	$1, %rsi
	movw	%si, %di
	movswl	%di, %ecx
	cmpl	%ecx, %eax
	jl	.LBB65_118
.LBB65_115:                             # %lor.lhs.false.772
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	shll	$3, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB65_117
# BB#116:                               # %land.lhs.true.781
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	shll	$3, %edx
	cmpl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB65_118
.LBB65_117:                             # %lor.lhs.false.788
	movl	$32767, %eax            # imm = 0x7FFF
	movq	-112(%rbp), %rcx
	shlq	$1, %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	shll	$3, %esi
	cmpl	%esi, %eax
	jge	.LBB65_122
.LBB65_118:                             # %cond.true.795
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB65_120
# BB#119:                               # %cond.true.802
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -432(%rbp)        # 4-byte Spill
	jmp	.LBB65_121
.LBB65_120:                             # %cond.false.809
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -432(%rbp)        # 4-byte Spill
.LBB65_121:                             # %cond.end.818
	movl	-432(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -160(%rbp)
	testb	$1, %cl
	jne	.LBB65_405
	jmp	.LBB65_404
.LBB65_122:                             # %cond.false.821
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB65_124
# BB#123:                               # %cond.true.828
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -436(%rbp)        # 4-byte Spill
	jmp	.LBB65_125
.LBB65_124:                             # %cond.false.835
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -436(%rbp)        # 4-byte Spill
.LBB65_125:                             # %cond.end.844
	movl	-436(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -160(%rbp)
	testb	$1, %dl
	jne	.LBB65_405
	jmp	.LBB65_404
.LBB65_126:                             # %cond.false.847
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB65_128
# BB#127:                               # %cond.true.854
	xorl	%eax, %eax
	movq	-112(%rbp), %rcx
	shlq	$1, %rcx
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
	movq	-112(%rbp), %rdi
	shlq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -448(%rbp)        # 8-byte Spill
	jmp	.LBB65_129
.LBB65_128:                             # %cond.false.873
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
.LBB65_129:                             # %cond.end.878
	movq	-448(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB65_131
# BB#130:                               # %land.lhs.true.882
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	cmpq	$0, %rax
	jl	.LBB65_157
.LBB65_131:                             # %lor.lhs.false.886
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB65_132
	jmp	.LBB65_143
.LBB65_132:                             # %cond.true.887
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB65_137
# BB#133:                               # %cond.true.891
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movq	-112(%rbp), %rcx
	shlq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -456(%rbp)        # 8-byte Spill
	jge	.LBB65_135
# BB#134:                               # %cond.true.899
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	jmp	.LBB65_136
.LBB65_135:                             # %cond.false.908
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
.LBB65_136:                             # %cond.end.913
	movq	-464(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -472(%rbp)        # 8-byte Spill
	cqto
	movq	-472(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-456(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB65_157
	jmp	.LBB65_154
.LBB65_137:                             # %cond.false.918
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB65_138
	jmp	.LBB65_139
.LBB65_138:                             # %cond.true.919
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB65_157
	jmp	.LBB65_154
.LBB65_139:                             # %cond.false.920
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB65_141
# BB#140:                               # %cond.true.927
	xorl	%eax, %eax
	movq	-112(%rbp), %rcx
	shlq	$1, %rcx
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
	movq	-112(%rbp), %rdi
	shlq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -480(%rbp)        # 8-byte Spill
	jmp	.LBB65_142
.LBB65_141:                             # %cond.false.946
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
.LBB65_142:                             # %cond.end.951
	movq	-480(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -488(%rbp)        # 8-byte Spill
	cqto
	movq	-488(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-112(%rbp), %rdi
	shlq	$1, %rdi
	cmpq	%rdi, %rax
	jl	.LBB65_157
	jmp	.LBB65_154
.LBB65_143:                             # %cond.false.957
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB65_144
	jmp	.LBB65_145
.LBB65_144:                             # %cond.true.958
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB65_157
	jmp	.LBB65_154
.LBB65_145:                             # %cond.false.959
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB65_150
# BB#146:                               # %cond.true.963
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movq	-112(%rbp), %rcx
	shlq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -496(%rbp)        # 8-byte Spill
	jge	.LBB65_148
# BB#147:                               # %cond.true.971
	xorl	%eax, %eax
	movq	-112(%rbp), %rcx
	shlq	$1, %rcx
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
	movq	-112(%rbp), %rdi
	shlq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -504(%rbp)        # 8-byte Spill
	jmp	.LBB65_149
.LBB65_148:                             # %cond.false.990
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
.LBB65_149:                             # %cond.end.995
	movq	-504(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -512(%rbp)        # 8-byte Spill
	cqto
	movq	-512(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-496(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB65_157
	jmp	.LBB65_154
.LBB65_150:                             # %cond.false.1000
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB65_152
# BB#151:                               # %cond.true.1007
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	jmp	.LBB65_153
.LBB65_152:                             # %cond.false.1016
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
.LBB65_153:                             # %cond.end.1021
	movq	-520(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -528(%rbp)        # 8-byte Spill
	cqto
	movq	-528(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-112(%rbp), %rdi
	shlq	$1, %rdi
	cmpq	%rdi, %rax
	jl	.LBB65_157
.LBB65_154:                             # %lor.lhs.false.1027
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB65_156
# BB#155:                               # %land.lhs.true.1034
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	shlq	$3, %rax
	cmpq	$-32768, %rax           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB65_157
.LBB65_156:                             # %lor.lhs.false.1039
	movl	$32767, %eax            # imm = 0x7FFF
	movl	%eax, %ecx
	movq	-112(%rbp), %rdx
	shlq	$1, %rdx
	shlq	$3, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB65_161
.LBB65_157:                             # %cond.true.1044
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB65_159
# BB#158:                               # %cond.true.1051
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -532(%rbp)        # 4-byte Spill
	jmp	.LBB65_160
.LBB65_159:                             # %cond.false.1058
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -532(%rbp)        # 4-byte Spill
.LBB65_160:                             # %cond.end.1067
	movl	-532(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -160(%rbp)
	testb	$1, %cl
	jne	.LBB65_405
	jmp	.LBB65_404
.LBB65_161:                             # %cond.false.1070
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB65_163
# BB#162:                               # %cond.true.1077
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -536(%rbp)        # 4-byte Spill
	jmp	.LBB65_164
.LBB65_163:                             # %cond.false.1084
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -536(%rbp)        # 4-byte Spill
.LBB65_164:                             # %cond.end.1093
	movl	-536(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -160(%rbp)
	testb	$1, %dl
	jne	.LBB65_405
	jmp	.LBB65_404
.LBB65_165:                             # %cond.false.1096
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB65_166
	jmp	.LBB65_245
.LBB65_166:                             # %cond.true.1097
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB65_167
	jmp	.LBB65_206
.LBB65_167:                             # %cond.true.1098
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB65_169
# BB#168:                               # %cond.true.1106
	xorl	%eax, %eax
	movq	-112(%rbp), %rcx
	shlq	$1, %rcx
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
	movq	-112(%rbp), %rcx
	shlq	$1, %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -540(%rbp)        # 4-byte Spill
	jmp	.LBB65_170
.LBB65_169:                             # %cond.false.1126
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -540(%rbp)        # 4-byte Spill
.LBB65_170:                             # %cond.end.1132
	movl	-540(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB65_172
# BB#171:                               # %land.lhs.true.1136
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jl	.LBB65_198
.LBB65_172:                             # %lor.lhs.false.1141
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB65_173
	jmp	.LBB65_184
.LBB65_173:                             # %cond.true.1142
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB65_178
# BB#174:                               # %cond.true.1147
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %ecx
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -544(%rbp)        # 4-byte Spill
	jge	.LBB65_176
# BB#175:                               # %cond.true.1157
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -548(%rbp)        # 4-byte Spill
	jmp	.LBB65_177
.LBB65_176:                             # %cond.false.1167
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -548(%rbp)        # 4-byte Spill
.LBB65_177:                             # %cond.end.1173
	movl	-548(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-544(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB65_198
	jmp	.LBB65_195
.LBB65_178:                             # %cond.false.1178
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB65_179
	jmp	.LBB65_180
.LBB65_179:                             # %cond.true.1179
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB65_198
	jmp	.LBB65_195
.LBB65_180:                             # %cond.false.1180
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB65_182
# BB#181:                               # %cond.true.1188
	xorl	%eax, %eax
	movq	-112(%rbp), %rcx
	shlq	$1, %rcx
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
	movq	-112(%rbp), %rcx
	shlq	$1, %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -552(%rbp)        # 4-byte Spill
	jmp	.LBB65_183
.LBB65_182:                             # %cond.false.1208
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -552(%rbp)        # 4-byte Spill
.LBB65_183:                             # %cond.end.1214
	movl	-552(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-112(%rbp), %rsi
	shlq	$1, %rsi
	movl	%esi, %ecx
	cmpl	%ecx, %eax
	jl	.LBB65_198
	jmp	.LBB65_195
.LBB65_184:                             # %cond.false.1221
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB65_185
	jmp	.LBB65_186
.LBB65_185:                             # %cond.true.1222
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB65_198
	jmp	.LBB65_195
.LBB65_186:                             # %cond.false.1223
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB65_191
# BB#187:                               # %cond.true.1228
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %ecx
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -556(%rbp)        # 4-byte Spill
	jge	.LBB65_189
# BB#188:                               # %cond.true.1238
	xorl	%eax, %eax
	movq	-112(%rbp), %rcx
	shlq	$1, %rcx
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
	movq	-112(%rbp), %rcx
	shlq	$1, %rcx
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
	jmp	.LBB65_190
.LBB65_189:                             # %cond.false.1258
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -560(%rbp)        # 4-byte Spill
.LBB65_190:                             # %cond.end.1264
	movl	-560(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-556(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB65_198
	jmp	.LBB65_195
.LBB65_191:                             # %cond.false.1269
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB65_193
# BB#192:                               # %cond.true.1277
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -564(%rbp)        # 4-byte Spill
	jmp	.LBB65_194
.LBB65_193:                             # %cond.false.1287
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -564(%rbp)        # 4-byte Spill
.LBB65_194:                             # %cond.end.1293
	movl	-564(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-112(%rbp), %rsi
	shlq	$1, %rsi
	movl	%esi, %ecx
	cmpl	%ecx, %eax
	jl	.LBB65_198
.LBB65_195:                             # %lor.lhs.false.1300
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB65_197
# BB#196:                               # %land.lhs.true.1308
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	jl	.LBB65_198
.LBB65_197:                             # %lor.lhs.false.1314
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movq	-112(%rbp), %rcx
	shlq	$1, %rcx
	movl	%ecx, %edx
	shll	$3, %edx
	cmpl	%edx, %eax
	jge	.LBB65_202
.LBB65_198:                             # %cond.true.1320
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB65_200
# BB#199:                               # %cond.true.1326
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -568(%rbp)        # 4-byte Spill
	jmp	.LBB65_201
.LBB65_200:                             # %cond.false.1330
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -568(%rbp)        # 4-byte Spill
.LBB65_201:                             # %cond.end.1336
	movl	-568(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -160(%rbp)
	testb	$1, %cl
	jne	.LBB65_405
	jmp	.LBB65_404
.LBB65_202:                             # %cond.false.1339
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB65_204
# BB#203:                               # %cond.true.1345
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -572(%rbp)        # 4-byte Spill
	jmp	.LBB65_205
.LBB65_204:                             # %cond.false.1349
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -572(%rbp)        # 4-byte Spill
.LBB65_205:                             # %cond.end.1355
	movl	-572(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -160(%rbp)
	testb	$1, %dl
	jne	.LBB65_405
	jmp	.LBB65_404
.LBB65_206:                             # %cond.false.1358
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB65_208
# BB#207:                               # %cond.true.1365
	xorl	%eax, %eax
	movq	-112(%rbp), %rcx
	shlq	$1, %rcx
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
	movq	-112(%rbp), %rdi
	shlq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -584(%rbp)        # 8-byte Spill
	jmp	.LBB65_209
.LBB65_208:                             # %cond.false.1384
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
.LBB65_209:                             # %cond.end.1389
	movq	-584(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB65_211
# BB#210:                               # %land.lhs.true.1393
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	cmpq	$0, %rax
	jl	.LBB65_237
.LBB65_211:                             # %lor.lhs.false.1397
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB65_212
	jmp	.LBB65_223
.LBB65_212:                             # %cond.true.1398
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB65_217
# BB#213:                               # %cond.true.1402
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movq	-112(%rbp), %rcx
	shlq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -592(%rbp)        # 8-byte Spill
	jge	.LBB65_215
# BB#214:                               # %cond.true.1410
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
	jmp	.LBB65_216
.LBB65_215:                             # %cond.false.1419
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
.LBB65_216:                             # %cond.end.1424
	movq	-600(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -608(%rbp)        # 8-byte Spill
	cqto
	movq	-608(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-592(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB65_237
	jmp	.LBB65_234
.LBB65_217:                             # %cond.false.1429
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB65_218
	jmp	.LBB65_219
.LBB65_218:                             # %cond.true.1430
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB65_237
	jmp	.LBB65_234
.LBB65_219:                             # %cond.false.1431
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB65_221
# BB#220:                               # %cond.true.1438
	xorl	%eax, %eax
	movq	-112(%rbp), %rcx
	shlq	$1, %rcx
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
	movq	-112(%rbp), %rdi
	shlq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -616(%rbp)        # 8-byte Spill
	jmp	.LBB65_222
.LBB65_221:                             # %cond.false.1457
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
.LBB65_222:                             # %cond.end.1462
	movq	-616(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -624(%rbp)        # 8-byte Spill
	cqto
	movq	-624(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-112(%rbp), %rdi
	shlq	$1, %rdi
	cmpq	%rdi, %rax
	jl	.LBB65_237
	jmp	.LBB65_234
.LBB65_223:                             # %cond.false.1468
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB65_224
	jmp	.LBB65_225
.LBB65_224:                             # %cond.true.1469
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB65_237
	jmp	.LBB65_234
.LBB65_225:                             # %cond.false.1470
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB65_230
# BB#226:                               # %cond.true.1474
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movq	-112(%rbp), %rcx
	shlq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -632(%rbp)        # 8-byte Spill
	jge	.LBB65_228
# BB#227:                               # %cond.true.1482
	xorl	%eax, %eax
	movq	-112(%rbp), %rcx
	shlq	$1, %rcx
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
	movq	-112(%rbp), %rdi
	shlq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -640(%rbp)        # 8-byte Spill
	jmp	.LBB65_229
.LBB65_228:                             # %cond.false.1501
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
.LBB65_229:                             # %cond.end.1506
	movq	-640(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -648(%rbp)        # 8-byte Spill
	cqto
	movq	-648(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-632(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB65_237
	jmp	.LBB65_234
.LBB65_230:                             # %cond.false.1511
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB65_232
# BB#231:                               # %cond.true.1518
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -656(%rbp)        # 8-byte Spill
	jmp	.LBB65_233
.LBB65_232:                             # %cond.false.1527
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -656(%rbp)        # 8-byte Spill
.LBB65_233:                             # %cond.end.1532
	movq	-656(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -664(%rbp)        # 8-byte Spill
	cqto
	movq	-664(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-112(%rbp), %rdi
	shlq	$1, %rdi
	cmpq	%rdi, %rax
	jl	.LBB65_237
.LBB65_234:                             # %lor.lhs.false.1538
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB65_236
# BB#235:                               # %land.lhs.true.1545
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	shlq	$3, %rax
	cmpq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	jl	.LBB65_237
.LBB65_236:                             # %lor.lhs.false.1550
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %ecx
	movq	-112(%rbp), %rdx
	shlq	$1, %rdx
	shlq	$3, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB65_241
.LBB65_237:                             # %cond.true.1555
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB65_239
# BB#238:                               # %cond.true.1561
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -668(%rbp)        # 4-byte Spill
	jmp	.LBB65_240
.LBB65_239:                             # %cond.false.1565
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -668(%rbp)        # 4-byte Spill
.LBB65_240:                             # %cond.end.1571
	movl	-668(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -160(%rbp)
	testb	$1, %cl
	jne	.LBB65_405
	jmp	.LBB65_404
.LBB65_241:                             # %cond.false.1574
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB65_243
# BB#242:                               # %cond.true.1580
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -672(%rbp)        # 4-byte Spill
	jmp	.LBB65_244
.LBB65_243:                             # %cond.false.1584
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -672(%rbp)        # 4-byte Spill
.LBB65_244:                             # %cond.end.1590
	movl	-672(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -160(%rbp)
	testb	$1, %dl
	jne	.LBB65_405
	jmp	.LBB65_404
.LBB65_245:                             # %cond.false.1593
	movb	$1, %al
	testb	$1, %al
	jne	.LBB65_246
	jmp	.LBB65_325
.LBB65_246:                             # %cond.true.1594
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB65_247
	jmp	.LBB65_286
.LBB65_247:                             # %cond.true.1595
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB65_249
# BB#248:                               # %cond.true.1602
	xorl	%eax, %eax
	movq	-112(%rbp), %rcx
	shlq	$1, %rcx
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
	movq	-112(%rbp), %rdi
	shlq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -680(%rbp)        # 8-byte Spill
	jmp	.LBB65_250
.LBB65_249:                             # %cond.false.1621
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -680(%rbp)        # 8-byte Spill
.LBB65_250:                             # %cond.end.1626
	movq	-680(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB65_252
# BB#251:                               # %land.lhs.true.1630
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	cmpq	$0, %rax
	jl	.LBB65_278
.LBB65_252:                             # %lor.lhs.false.1634
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB65_253
	jmp	.LBB65_264
.LBB65_253:                             # %cond.true.1635
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB65_258
# BB#254:                               # %cond.true.1639
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movq	-112(%rbp), %rcx
	shlq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -688(%rbp)        # 8-byte Spill
	jge	.LBB65_256
# BB#255:                               # %cond.true.1647
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -696(%rbp)        # 8-byte Spill
	jmp	.LBB65_257
.LBB65_256:                             # %cond.false.1656
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -696(%rbp)        # 8-byte Spill
.LBB65_257:                             # %cond.end.1661
	movq	-696(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -704(%rbp)        # 8-byte Spill
	cqto
	movq	-704(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-688(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB65_278
	jmp	.LBB65_275
.LBB65_258:                             # %cond.false.1666
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB65_259
	jmp	.LBB65_260
.LBB65_259:                             # %cond.true.1667
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB65_278
	jmp	.LBB65_275
.LBB65_260:                             # %cond.false.1668
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB65_262
# BB#261:                               # %cond.true.1675
	xorl	%eax, %eax
	movq	-112(%rbp), %rcx
	shlq	$1, %rcx
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
	movq	-112(%rbp), %rdi
	shlq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -712(%rbp)        # 8-byte Spill
	jmp	.LBB65_263
.LBB65_262:                             # %cond.false.1694
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -712(%rbp)        # 8-byte Spill
.LBB65_263:                             # %cond.end.1699
	movq	-712(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -720(%rbp)        # 8-byte Spill
	cqto
	movq	-720(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-112(%rbp), %rdi
	shlq	$1, %rdi
	cmpq	%rdi, %rax
	jl	.LBB65_278
	jmp	.LBB65_275
.LBB65_264:                             # %cond.false.1705
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB65_265
	jmp	.LBB65_266
.LBB65_265:                             # %cond.true.1706
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB65_278
	jmp	.LBB65_275
.LBB65_266:                             # %cond.false.1707
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB65_271
# BB#267:                               # %cond.true.1711
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movq	-112(%rbp), %rcx
	shlq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -728(%rbp)        # 8-byte Spill
	jge	.LBB65_269
# BB#268:                               # %cond.true.1719
	xorl	%eax, %eax
	movq	-112(%rbp), %rcx
	shlq	$1, %rcx
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
	movq	-112(%rbp), %rdi
	shlq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -736(%rbp)        # 8-byte Spill
	jmp	.LBB65_270
.LBB65_269:                             # %cond.false.1738
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -736(%rbp)        # 8-byte Spill
.LBB65_270:                             # %cond.end.1743
	movq	-736(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -744(%rbp)        # 8-byte Spill
	cqto
	movq	-744(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-728(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB65_278
	jmp	.LBB65_275
.LBB65_271:                             # %cond.false.1748
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB65_273
# BB#272:                               # %cond.true.1755
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -752(%rbp)        # 8-byte Spill
	jmp	.LBB65_274
.LBB65_273:                             # %cond.false.1764
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -752(%rbp)        # 8-byte Spill
.LBB65_274:                             # %cond.end.1769
	movq	-752(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -760(%rbp)        # 8-byte Spill
	cqto
	movq	-760(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-112(%rbp), %rdi
	shlq	$1, %rdi
	cmpq	%rdi, %rax
	jl	.LBB65_278
.LBB65_275:                             # %lor.lhs.false.1775
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB65_277
# BB#276:                               # %land.lhs.true.1782
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-112(%rbp), %rcx
	shlq	$1, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB65_278
.LBB65_277:                             # %lor.lhs.false.1787
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-112(%rbp), %rcx
	shlq	$1, %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB65_282
.LBB65_278:                             # %cond.true.1792
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-112(%rbp), %rcx
	shlq	$1, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB65_280
# BB#279:                               # %cond.true.1797
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	shlq	$3, %rax
	movq	%rax, -768(%rbp)        # 8-byte Spill
	jmp	.LBB65_281
.LBB65_280:                             # %cond.false.1800
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -768(%rbp)        # 8-byte Spill
.LBB65_281:                             # %cond.end.1805
	movq	-768(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -160(%rbp)
	testb	$1, %cl
	jne	.LBB65_405
	jmp	.LBB65_404
.LBB65_282:                             # %cond.false.1807
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-112(%rbp), %rcx
	shlq	$1, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB65_284
# BB#283:                               # %cond.true.1812
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	shlq	$3, %rax
	movq	%rax, -776(%rbp)        # 8-byte Spill
	jmp	.LBB65_285
.LBB65_284:                             # %cond.false.1815
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -776(%rbp)        # 8-byte Spill
.LBB65_285:                             # %cond.end.1820
	movq	-776(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -160(%rbp)
	testb	$1, %dl
	jne	.LBB65_405
	jmp	.LBB65_404
.LBB65_286:                             # %cond.false.1822
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB65_288
# BB#287:                               # %cond.true.1829
	xorl	%eax, %eax
	movq	-112(%rbp), %rcx
	shlq	$1, %rcx
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
	movq	-112(%rbp), %rdi
	shlq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -784(%rbp)        # 8-byte Spill
	jmp	.LBB65_289
.LBB65_288:                             # %cond.false.1848
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -784(%rbp)        # 8-byte Spill
.LBB65_289:                             # %cond.end.1853
	movq	-784(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB65_291
# BB#290:                               # %land.lhs.true.1857
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	cmpq	$0, %rax
	jl	.LBB65_317
.LBB65_291:                             # %lor.lhs.false.1861
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB65_292
	jmp	.LBB65_303
.LBB65_292:                             # %cond.true.1862
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB65_297
# BB#293:                               # %cond.true.1866
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movq	-112(%rbp), %rcx
	shlq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -792(%rbp)        # 8-byte Spill
	jge	.LBB65_295
# BB#294:                               # %cond.true.1874
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -800(%rbp)        # 8-byte Spill
	jmp	.LBB65_296
.LBB65_295:                             # %cond.false.1883
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -800(%rbp)        # 8-byte Spill
.LBB65_296:                             # %cond.end.1888
	movq	-800(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -808(%rbp)        # 8-byte Spill
	cqto
	movq	-808(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-792(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB65_317
	jmp	.LBB65_314
.LBB65_297:                             # %cond.false.1893
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB65_298
	jmp	.LBB65_299
.LBB65_298:                             # %cond.true.1894
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB65_317
	jmp	.LBB65_314
.LBB65_299:                             # %cond.false.1895
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB65_301
# BB#300:                               # %cond.true.1902
	xorl	%eax, %eax
	movq	-112(%rbp), %rcx
	shlq	$1, %rcx
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
	movq	-112(%rbp), %rdi
	shlq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -816(%rbp)        # 8-byte Spill
	jmp	.LBB65_302
.LBB65_301:                             # %cond.false.1921
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -816(%rbp)        # 8-byte Spill
.LBB65_302:                             # %cond.end.1926
	movq	-816(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -824(%rbp)        # 8-byte Spill
	cqto
	movq	-824(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-112(%rbp), %rdi
	shlq	$1, %rdi
	cmpq	%rdi, %rax
	jl	.LBB65_317
	jmp	.LBB65_314
.LBB65_303:                             # %cond.false.1932
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB65_304
	jmp	.LBB65_305
.LBB65_304:                             # %cond.true.1933
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB65_317
	jmp	.LBB65_314
.LBB65_305:                             # %cond.false.1934
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB65_310
# BB#306:                               # %cond.true.1938
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movq	-112(%rbp), %rcx
	shlq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -832(%rbp)        # 8-byte Spill
	jge	.LBB65_308
# BB#307:                               # %cond.true.1946
	xorl	%eax, %eax
	movq	-112(%rbp), %rcx
	shlq	$1, %rcx
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
	movq	-112(%rbp), %rdi
	shlq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -840(%rbp)        # 8-byte Spill
	jmp	.LBB65_309
.LBB65_308:                             # %cond.false.1965
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -840(%rbp)        # 8-byte Spill
.LBB65_309:                             # %cond.end.1970
	movq	-840(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -848(%rbp)        # 8-byte Spill
	cqto
	movq	-848(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-832(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB65_317
	jmp	.LBB65_314
.LBB65_310:                             # %cond.false.1975
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB65_312
# BB#311:                               # %cond.true.1982
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -856(%rbp)        # 8-byte Spill
	jmp	.LBB65_313
.LBB65_312:                             # %cond.false.1991
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -856(%rbp)        # 8-byte Spill
.LBB65_313:                             # %cond.end.1996
	movq	-856(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -864(%rbp)        # 8-byte Spill
	cqto
	movq	-864(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-112(%rbp), %rdi
	shlq	$1, %rdi
	cmpq	%rdi, %rax
	jl	.LBB65_317
.LBB65_314:                             # %lor.lhs.false.2002
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB65_316
# BB#315:                               # %land.lhs.true.2009
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-112(%rbp), %rcx
	shlq	$1, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB65_317
.LBB65_316:                             # %lor.lhs.false.2014
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-112(%rbp), %rcx
	shlq	$1, %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB65_321
.LBB65_317:                             # %cond.true.2019
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-112(%rbp), %rcx
	shlq	$1, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB65_319
# BB#318:                               # %cond.true.2024
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	shlq	$3, %rax
	movq	%rax, -872(%rbp)        # 8-byte Spill
	jmp	.LBB65_320
.LBB65_319:                             # %cond.false.2027
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -872(%rbp)        # 8-byte Spill
.LBB65_320:                             # %cond.end.2032
	movq	-872(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -160(%rbp)
	testb	$1, %cl
	jne	.LBB65_405
	jmp	.LBB65_404
.LBB65_321:                             # %cond.false.2034
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-112(%rbp), %rcx
	shlq	$1, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB65_323
# BB#322:                               # %cond.true.2039
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	shlq	$3, %rax
	movq	%rax, -880(%rbp)        # 8-byte Spill
	jmp	.LBB65_324
.LBB65_323:                             # %cond.false.2042
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -880(%rbp)        # 8-byte Spill
.LBB65_324:                             # %cond.end.2047
	movq	-880(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -160(%rbp)
	testb	$1, %dl
	jne	.LBB65_405
	jmp	.LBB65_404
.LBB65_325:                             # %cond.false.2049
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB65_326
	jmp	.LBB65_365
.LBB65_326:                             # %cond.true.2050
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB65_328
# BB#327:                               # %cond.true.2057
	xorl	%eax, %eax
	movq	-112(%rbp), %rcx
	shlq	$1, %rcx
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
	movq	-112(%rbp), %rdi
	shlq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -888(%rbp)        # 8-byte Spill
	jmp	.LBB65_329
.LBB65_328:                             # %cond.false.2076
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -888(%rbp)        # 8-byte Spill
.LBB65_329:                             # %cond.end.2081
	movq	-888(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB65_331
# BB#330:                               # %land.lhs.true.2085
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	cmpq	$0, %rax
	jl	.LBB65_357
.LBB65_331:                             # %lor.lhs.false.2089
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB65_332
	jmp	.LBB65_343
.LBB65_332:                             # %cond.true.2090
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB65_337
# BB#333:                               # %cond.true.2094
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movq	-112(%rbp), %rcx
	shlq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -896(%rbp)        # 8-byte Spill
	jge	.LBB65_335
# BB#334:                               # %cond.true.2102
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -904(%rbp)        # 8-byte Spill
	jmp	.LBB65_336
.LBB65_335:                             # %cond.false.2111
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -904(%rbp)        # 8-byte Spill
.LBB65_336:                             # %cond.end.2116
	movq	-904(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -912(%rbp)        # 8-byte Spill
	cqto
	movq	-912(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-896(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB65_357
	jmp	.LBB65_354
.LBB65_337:                             # %cond.false.2121
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB65_338
	jmp	.LBB65_339
.LBB65_338:                             # %cond.true.2122
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB65_357
	jmp	.LBB65_354
.LBB65_339:                             # %cond.false.2123
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB65_341
# BB#340:                               # %cond.true.2130
	xorl	%eax, %eax
	movq	-112(%rbp), %rcx
	shlq	$1, %rcx
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
	movq	-112(%rbp), %rdi
	shlq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -920(%rbp)        # 8-byte Spill
	jmp	.LBB65_342
.LBB65_341:                             # %cond.false.2149
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -920(%rbp)        # 8-byte Spill
.LBB65_342:                             # %cond.end.2154
	movq	-920(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -928(%rbp)        # 8-byte Spill
	cqto
	movq	-928(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-112(%rbp), %rdi
	shlq	$1, %rdi
	cmpq	%rdi, %rax
	jl	.LBB65_357
	jmp	.LBB65_354
.LBB65_343:                             # %cond.false.2160
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB65_344
	jmp	.LBB65_345
.LBB65_344:                             # %cond.true.2161
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB65_357
	jmp	.LBB65_354
.LBB65_345:                             # %cond.false.2162
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB65_350
# BB#346:                               # %cond.true.2166
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movq	-112(%rbp), %rcx
	shlq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -936(%rbp)        # 8-byte Spill
	jge	.LBB65_348
# BB#347:                               # %cond.true.2174
	xorl	%eax, %eax
	movq	-112(%rbp), %rcx
	shlq	$1, %rcx
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
	movq	-112(%rbp), %rdi
	shlq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -944(%rbp)        # 8-byte Spill
	jmp	.LBB65_349
.LBB65_348:                             # %cond.false.2193
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -944(%rbp)        # 8-byte Spill
.LBB65_349:                             # %cond.end.2198
	movq	-944(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -952(%rbp)        # 8-byte Spill
	cqto
	movq	-952(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-936(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB65_357
	jmp	.LBB65_354
.LBB65_350:                             # %cond.false.2203
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB65_352
# BB#351:                               # %cond.true.2210
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB65_353
.LBB65_352:                             # %cond.false.2219
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
.LBB65_353:                             # %cond.end.2224
	movq	-960(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -968(%rbp)        # 8-byte Spill
	cqto
	movq	-968(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-112(%rbp), %rdi
	shlq	$1, %rdi
	cmpq	%rdi, %rax
	jl	.LBB65_357
.LBB65_354:                             # %lor.lhs.false.2230
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB65_356
# BB#355:                               # %land.lhs.true.2237
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-112(%rbp), %rcx
	shlq	$1, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB65_357
.LBB65_356:                             # %lor.lhs.false.2242
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-112(%rbp), %rcx
	shlq	$1, %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB65_361
.LBB65_357:                             # %cond.true.2247
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-112(%rbp), %rcx
	shlq	$1, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB65_359
# BB#358:                               # %cond.true.2252
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	shlq	$3, %rax
	movq	%rax, -976(%rbp)        # 8-byte Spill
	jmp	.LBB65_360
.LBB65_359:                             # %cond.false.2255
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -976(%rbp)        # 8-byte Spill
.LBB65_360:                             # %cond.end.2260
	movq	-976(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -160(%rbp)
	testb	$1, %cl
	jne	.LBB65_405
	jmp	.LBB65_404
.LBB65_361:                             # %cond.false.2262
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-112(%rbp), %rcx
	shlq	$1, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB65_363
# BB#362:                               # %cond.true.2267
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	shlq	$3, %rax
	movq	%rax, -984(%rbp)        # 8-byte Spill
	jmp	.LBB65_364
.LBB65_363:                             # %cond.false.2270
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -984(%rbp)        # 8-byte Spill
.LBB65_364:                             # %cond.end.2275
	movq	-984(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -160(%rbp)
	testb	$1, %dl
	jne	.LBB65_405
	jmp	.LBB65_404
.LBB65_365:                             # %cond.false.2277
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB65_367
# BB#366:                               # %cond.true.2284
	xorl	%eax, %eax
	movq	-112(%rbp), %rcx
	shlq	$1, %rcx
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
	movq	-112(%rbp), %rdi
	shlq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -992(%rbp)        # 8-byte Spill
	jmp	.LBB65_368
.LBB65_367:                             # %cond.false.2303
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -992(%rbp)        # 8-byte Spill
.LBB65_368:                             # %cond.end.2308
	movq	-992(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB65_370
# BB#369:                               # %land.lhs.true.2312
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	cmpq	$0, %rax
	jl	.LBB65_396
.LBB65_370:                             # %lor.lhs.false.2316
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB65_371
	jmp	.LBB65_382
.LBB65_371:                             # %cond.true.2317
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB65_376
# BB#372:                               # %cond.true.2321
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movq	-112(%rbp), %rcx
	shlq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1000(%rbp)       # 8-byte Spill
	jge	.LBB65_374
# BB#373:                               # %cond.true.2329
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1008(%rbp)       # 8-byte Spill
	jmp	.LBB65_375
.LBB65_374:                             # %cond.false.2338
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1008(%rbp)       # 8-byte Spill
.LBB65_375:                             # %cond.end.2343
	movq	-1008(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1016(%rbp)       # 8-byte Spill
	cqto
	movq	-1016(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1000(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB65_396
	jmp	.LBB65_393
.LBB65_376:                             # %cond.false.2348
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB65_377
	jmp	.LBB65_378
.LBB65_377:                             # %cond.true.2349
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB65_396
	jmp	.LBB65_393
.LBB65_378:                             # %cond.false.2350
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB65_380
# BB#379:                               # %cond.true.2357
	xorl	%eax, %eax
	movq	-112(%rbp), %rcx
	shlq	$1, %rcx
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
	movq	-112(%rbp), %rdi
	shlq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1024(%rbp)       # 8-byte Spill
	jmp	.LBB65_381
.LBB65_380:                             # %cond.false.2376
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1024(%rbp)       # 8-byte Spill
.LBB65_381:                             # %cond.end.2381
	movq	-1024(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1032(%rbp)       # 8-byte Spill
	cqto
	movq	-1032(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-112(%rbp), %rdi
	shlq	$1, %rdi
	cmpq	%rdi, %rax
	jl	.LBB65_396
	jmp	.LBB65_393
.LBB65_382:                             # %cond.false.2387
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB65_383
	jmp	.LBB65_384
.LBB65_383:                             # %cond.true.2388
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB65_396
	jmp	.LBB65_393
.LBB65_384:                             # %cond.false.2389
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB65_389
# BB#385:                               # %cond.true.2393
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movq	-112(%rbp), %rcx
	shlq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1040(%rbp)       # 8-byte Spill
	jge	.LBB65_387
# BB#386:                               # %cond.true.2401
	xorl	%eax, %eax
	movq	-112(%rbp), %rcx
	shlq	$1, %rcx
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
	movq	-112(%rbp), %rdi
	shlq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1048(%rbp)       # 8-byte Spill
	jmp	.LBB65_388
.LBB65_387:                             # %cond.false.2420
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1048(%rbp)       # 8-byte Spill
.LBB65_388:                             # %cond.end.2425
	movq	-1048(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1056(%rbp)       # 8-byte Spill
	cqto
	movq	-1056(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1040(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB65_396
	jmp	.LBB65_393
.LBB65_389:                             # %cond.false.2430
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB65_391
# BB#390:                               # %cond.true.2437
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1064(%rbp)       # 8-byte Spill
	jmp	.LBB65_392
.LBB65_391:                             # %cond.false.2446
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1064(%rbp)       # 8-byte Spill
.LBB65_392:                             # %cond.end.2451
	movq	-1064(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1072(%rbp)       # 8-byte Spill
	cqto
	movq	-1072(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-112(%rbp), %rdi
	shlq	$1, %rdi
	cmpq	%rdi, %rax
	jl	.LBB65_396
.LBB65_393:                             # %lor.lhs.false.2457
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB65_395
# BB#394:                               # %land.lhs.true.2464
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-112(%rbp), %rcx
	shlq	$1, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB65_396
.LBB65_395:                             # %lor.lhs.false.2469
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-112(%rbp), %rcx
	shlq	$1, %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB65_400
.LBB65_396:                             # %cond.true.2474
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-112(%rbp), %rcx
	shlq	$1, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB65_398
# BB#397:                               # %cond.true.2479
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	shlq	$3, %rax
	movq	%rax, -1080(%rbp)       # 8-byte Spill
	jmp	.LBB65_399
.LBB65_398:                             # %cond.false.2482
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1080(%rbp)       # 8-byte Spill
.LBB65_399:                             # %cond.end.2487
	movq	-1080(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -160(%rbp)
	testb	$1, %cl
	jne	.LBB65_405
	jmp	.LBB65_404
.LBB65_400:                             # %cond.false.2489
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-112(%rbp), %rcx
	shlq	$1, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB65_402
# BB#401:                               # %cond.true.2494
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	shlq	$3, %rax
	movq	%rax, -1088(%rbp)       # 8-byte Spill
	jmp	.LBB65_403
.LBB65_402:                             # %cond.false.2497
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1088(%rbp)       # 8-byte Spill
.LBB65_403:                             # %cond.end.2502
	movq	-1088(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -160(%rbp)
	testb	$1, %dl
	jne	.LBB65_405
.LBB65_404:                             # %lor.lhs.false.2504
	movq	$-1, %rax
	cmpq	-160(%rbp), %rax
	jae	.LBB65_406
.LBB65_405:                             # %if.then
	movq	$-1, %rdi
	callq	memory_full
.LBB65_406:                             # %if.else
	movq	-160(%rbp), %rax
	cmpq	-136(%rbp), %rax
	jg	.LBB65_408
# BB#407:                               # %if.then.2509
	movq	-160(%rbp), %rax
	movq	-136(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -136(%rbp)
	movq	-160(%rbp), %rax
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -96(%rbp)
	jmp	.LBB65_409
.LBB65_408:                             # %if.else.2511
	movq	-160(%rbp), %rdi
	callq	xmalloc
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movq	%rax, %rsi
	callq	make_save_memory
	movabsq	$free_save_value, %rdi
	movq	%rax, -168(%rbp)
	movb	$1, -145(%rbp)
	movq	-168(%rbp), %rsi
	callq	record_unwind_protect
.LBB65_409:                             # %if.end
	jmp	.LBB65_410
.LBB65_410:                             # %if.end.2515
	jmp	.LBB65_411
.LBB65_411:                             # %do.end
	movq	-96(%rbp), %rax
	movq	-112(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	%rax, -104(%rbp)
	movq	$0, -112(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB65_412:                             # %for.cond.2516
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB65_415
# BB#413:                               # %for.body.2521
                                        #   in Loop: Header=BB65_412 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rdi
	callq	Fcar
	movq	-112(%rbp), %rdi
	movq	-96(%rbp), %rcx
	movq	%rax, (%rcx,%rdi,8)
	movq	-176(%rbp), %rdi
	callq	Fcdr
	movq	-112(%rbp), %rcx
	movq	-104(%rbp), %rdi
	movq	%rax, (%rdi,%rcx,8)
	movq	-112(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -112(%rbp)
# BB#414:                               # %for.inc.2527
                                        #   in Loop: Header=BB65_412 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB65_412
.LBB65_415:                             # %for.end.2531
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movl	$957, %edi              # imm = 0x3BD
	movq	%rax, -24(%rbp)
	movq	%rax, -16(%rbp)
	callq	builtin_lisp_symbol
	movl	$957, %edi              # imm = 0x3BD
	movq	%rax, -48(%rbp)
	movq	%rax, -56(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -72(%rbp)
	movq	%rax, -64(%rbp)
	movq	$0, -120(%rbp)
.LBB65_416:                             # %for.cond.2535
                                        # =>This Inner Loop Header: Depth=1
	movq	-120(%rbp), %rax
	cmpq	-112(%rbp), %rax
	jge	.LBB65_429
# BB#417:                               # %for.body.2538
                                        #   in Loop: Header=BB65_416 Depth=1
	movl	$451, %edi              # imm = 0x1C3
	movq	-120(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -184(%rbp)
	movq	-120(%rbp), %rax
	movq	-104(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -192(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -1096(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1096(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB65_420
# BB#418:                               # %lor.lhs.false.2544
                                        #   in Loop: Header=BB65_416 Depth=1
	movl	$193, %edi
	movq	-184(%rbp), %rax
	movq	%rax, -1104(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1104(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB65_420
# BB#419:                               # %lor.lhs.false.2548
                                        #   in Loop: Header=BB65_416 Depth=1
	movl	$439, %edi              # imm = 0x1B7
	movq	-184(%rbp), %rax
	movq	%rax, -1112(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1112(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB65_427
.LBB65_420:                             # %if.then.2552
                                        #   in Loop: Header=BB65_416 Depth=1
	movq	-8(%rbp), %rdi
	movq	-184(%rbp), %rsi
	callq	get_frame_param
	movq	%rax, -208(%rbp)
	movq	-192(%rbp), %rdi
	movq	-208(%rbp), %rsi
	callq	Fequal
	xorl	%edi, %edi
	movq	%rax, -1120(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1120(%rbp), %rsi       # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB65_426
# BB#421:                               # %if.then.2558
                                        #   in Loop: Header=BB65_416 Depth=1
	movq	-8(%rbp), %rdi
	movq	-184(%rbp), %rsi
	movq	-192(%rbp), %rdx
	callq	store_frame_param
	movl	$1049, %edi             # imm = 0x419
	movq	-184(%rbp), %rdx
	movq	%rdx, -1128(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1128(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB65_422
	jmp	.LBB65_425
.LBB65_422:                             # %land.lhs.true.2563
                                        #   in Loop: Header=BB65_416 Depth=1
	movq	-200(%rbp), %rax
	sarq	$2, %rax
	cmpq	$37, %rax
	jae	.LBB65_425
# BB#423:                               # %land.lhs.true.2566
                                        #   in Loop: Header=BB65_416 Depth=1
	movq	-200(%rbp), %rax
	sarq	$2, %rax
	movq	-8(%rbp), %rcx
	movq	376(%rcx), %rcx
	movq	112(%rcx), %rcx
	movq	(%rcx), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB65_425
# BB#424:                               # %if.then.2569
                                        #   in Loop: Header=BB65_416 Depth=1
	movq	-200(%rbp), %rax
	sarq	$2, %rax
	movq	-8(%rbp), %rcx
	movq	376(%rcx), %rcx
	movq	112(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-8(%rbp), %rdi
	movq	-192(%rbp), %rsi
	movq	-208(%rbp), %rdx
	callq	*%rax
.LBB65_425:                             # %if.end.2575
                                        #   in Loop: Header=BB65_416 Depth=1
	jmp	.LBB65_426
.LBB65_426:                             # %if.end.2576
                                        #   in Loop: Header=BB65_416 Depth=1
	jmp	.LBB65_427
.LBB65_427:                             # %if.end.2577
                                        #   in Loop: Header=BB65_416 Depth=1
	jmp	.LBB65_428
.LBB65_428:                             # %for.inc.2578
                                        #   in Loop: Header=BB65_416 Depth=1
	movq	-120(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -120(%rbp)
	jmp	.LBB65_416
.LBB65_429:                             # %for.end.2580
	jmp	.LBB65_430
.LBB65_430:                             # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -112(%rbp)
	cmpq	$0, %rax
	je	.LBB65_476
# BB#431:                               # %while.body
                                        #   in Loop: Header=BB65_430 Depth=1
	movl	$1017, %edi             # imm = 0x3F9
	movq	-112(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -216(%rbp)
	movq	-112(%rbp), %rax
	movq	-104(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -224(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, -1136(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1136(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB65_440
# BB#432:                               # %if.then.2590
                                        #   in Loop: Header=BB65_430 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %edx
	movq	-224(%rbp), %rsi
	callq	RANGED_INTEGERP
	testb	$1, %al
	jne	.LBB65_433
	jmp	.LBB65_434
.LBB65_433:                             # %if.then.2592
                                        #   in Loop: Header=BB65_430 Depth=1
	movq	-224(%rbp), %rax
	sarq	$2, %rax
	movq	-8(%rbp), %rcx
	movslq	364(%rcx), %rcx
	imulq	%rcx, %rax
	movl	%eax, %edx
	movl	%edx, -28(%rbp)
	movb	$1, -33(%rbp)
	jmp	.LBB65_439
.LBB65_434:                             # %if.else.2597
                                        #   in Loop: Header=BB65_430 Depth=1
	movq	-224(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB65_438
# BB#435:                               # %land.lhs.true.2602
                                        #   in Loop: Header=BB65_430 Depth=1
	movl	$912, %edi              # imm = 0x390
	movq	-224(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -1144(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1144(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB65_438
# BB#436:                               # %land.lhs.true.2608
                                        #   in Loop: Header=BB65_430 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %edx
	movq	-224(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rsi
	callq	RANGED_INTEGERP
	testb	$1, %al
	jne	.LBB65_437
	jmp	.LBB65_438
.LBB65_437:                             # %if.then.2614
                                        #   in Loop: Header=BB65_430 Depth=1
	movq	-224(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -28(%rbp)
	movb	$1, -33(%rbp)
.LBB65_438:                             # %if.end.2620
                                        #   in Loop: Header=BB65_430 Depth=1
	jmp	.LBB65_439
.LBB65_439:                             # %if.end.2621
                                        #   in Loop: Header=BB65_430 Depth=1
	jmp	.LBB65_475
.LBB65_440:                             # %if.else.2622
                                        #   in Loop: Header=BB65_430 Depth=1
	movl	$515, %edi              # imm = 0x203
	movq	-216(%rbp), %rax
	movq	%rax, -1152(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1152(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB65_449
# BB#441:                               # %if.then.2626
                                        #   in Loop: Header=BB65_430 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %edx
	movq	-224(%rbp), %rsi
	callq	RANGED_INTEGERP
	testb	$1, %al
	jne	.LBB65_442
	jmp	.LBB65_443
.LBB65_442:                             # %if.then.2628
                                        #   in Loop: Header=BB65_430 Depth=1
	movq	-224(%rbp), %rax
	sarq	$2, %rax
	movq	-8(%rbp), %rcx
	movslq	368(%rcx), %rcx
	imulq	%rcx, %rax
	movl	%eax, %edx
	movl	%edx, -32(%rbp)
	movb	$1, -34(%rbp)
	jmp	.LBB65_448
.LBB65_443:                             # %if.else.2633
                                        #   in Loop: Header=BB65_430 Depth=1
	movq	-224(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB65_447
# BB#444:                               # %land.lhs.true.2638
                                        #   in Loop: Header=BB65_430 Depth=1
	movl	$912, %edi              # imm = 0x390
	movq	-224(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -1160(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1160(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB65_447
# BB#445:                               # %land.lhs.true.2644
                                        #   in Loop: Header=BB65_430 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %edx
	movq	-224(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rsi
	callq	RANGED_INTEGERP
	testb	$1, %al
	jne	.LBB65_446
	jmp	.LBB65_447
.LBB65_446:                             # %if.then.2650
                                        #   in Loop: Header=BB65_430 Depth=1
	movq	-224(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -32(%rbp)
	movb	$1, -34(%rbp)
.LBB65_447:                             # %if.end.2656
                                        #   in Loop: Header=BB65_430 Depth=1
	jmp	.LBB65_448
.LBB65_448:                             # %if.end.2657
                                        #   in Loop: Header=BB65_430 Depth=1
	jmp	.LBB65_474
.LBB65_449:                             # %if.else.2658
                                        #   in Loop: Header=BB65_430 Depth=1
	movl	$928, %edi              # imm = 0x3A0
	movq	-216(%rbp), %rax
	movq	%rax, -1168(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1168(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB65_451
# BB#450:                               # %if.then.2662
                                        #   in Loop: Header=BB65_430 Depth=1
	movq	-224(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB65_473
.LBB65_451:                             # %if.else.2663
                                        #   in Loop: Header=BB65_430 Depth=1
	movl	$607, %edi              # imm = 0x25F
	movq	-216(%rbp), %rax
	movq	%rax, -1176(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1176(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB65_453
# BB#452:                               # %if.then.2667
                                        #   in Loop: Header=BB65_430 Depth=1
	movq	-224(%rbp), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB65_472
.LBB65_453:                             # %if.else.2668
                                        #   in Loop: Header=BB65_430 Depth=1
	movl	$531, %edi              # imm = 0x213
	movq	-216(%rbp), %rax
	movq	%rax, -1184(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1184(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB65_455
# BB#454:                               # %if.then.2672
                                        #   in Loop: Header=BB65_430 Depth=1
	movq	-224(%rbp), %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB65_471
.LBB65_455:                             # %if.else.2673
                                        #   in Loop: Header=BB65_430 Depth=1
	movl	$529, %edi              # imm = 0x211
	movq	-216(%rbp), %rax
	movq	%rax, -1192(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1192(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB65_457
# BB#456:                               # %if.then.2677
                                        #   in Loop: Header=BB65_430 Depth=1
	movq	-224(%rbp), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB65_470
.LBB65_457:                             # %if.else.2678
                                        #   in Loop: Header=BB65_430 Depth=1
	movl	$472, %edi              # imm = 0x1D8
	movq	-216(%rbp), %rax
	movq	%rax, -1200(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1200(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB65_459
# BB#458:                               # %if.then.2682
                                        #   in Loop: Header=BB65_430 Depth=1
	movq	-224(%rbp), %rax
	movq	%rax, -80(%rbp)
	movb	$1, -81(%rbp)
	jmp	.LBB65_469
.LBB65_459:                             # %if.else.2683
                                        #   in Loop: Header=BB65_430 Depth=1
	movl	$451, %edi              # imm = 0x1C3
	movq	-216(%rbp), %rax
	movq	%rax, -1208(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1208(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB65_462
# BB#460:                               # %lor.lhs.false.2687
                                        #   in Loop: Header=BB65_430 Depth=1
	movl	$193, %edi
	movq	-216(%rbp), %rax
	movq	%rax, -1216(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1216(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB65_462
# BB#461:                               # %lor.lhs.false.2691
                                        #   in Loop: Header=BB65_430 Depth=1
	movl	$439, %edi              # imm = 0x1B7
	movq	-216(%rbp), %rax
	movq	%rax, -1224(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1224(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB65_463
.LBB65_462:                             # %if.then.2695
                                        #   in Loop: Header=BB65_430 Depth=1
	jmp	.LBB65_430
.LBB65_463:                             # %if.else.2696
                                        #   in Loop: Header=BB65_430 Depth=1
	movq	-8(%rbp), %rdi
	movq	-216(%rbp), %rsi
	callq	get_frame_param
	movq	%rax, -240(%rbp)
	movq	-8(%rbp), %rdi
	movq	-216(%rbp), %rsi
	movq	-224(%rbp), %rdx
	callq	store_frame_param
	movl	$1049, %edi             # imm = 0x419
	movq	-216(%rbp), %rax
	movq	%rax, -1232(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1232(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB65_464
	jmp	.LBB65_467
.LBB65_464:                             # %land.lhs.true.2704
                                        #   in Loop: Header=BB65_430 Depth=1
	movq	-232(%rbp), %rax
	sarq	$2, %rax
	cmpq	$37, %rax
	jae	.LBB65_467
# BB#465:                               # %land.lhs.true.2708
                                        #   in Loop: Header=BB65_430 Depth=1
	movq	-232(%rbp), %rax
	sarq	$2, %rax
	movq	-8(%rbp), %rcx
	movq	376(%rcx), %rcx
	movq	112(%rcx), %rcx
	movq	(%rcx), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB65_467
# BB#466:                               # %if.then.2715
                                        #   in Loop: Header=BB65_430 Depth=1
	movq	-232(%rbp), %rax
	sarq	$2, %rax
	movq	-8(%rbp), %rcx
	movq	376(%rcx), %rcx
	movq	112(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-8(%rbp), %rdi
	movq	-224(%rbp), %rsi
	movq	-240(%rbp), %rdx
	callq	*%rax
.LBB65_467:                             # %if.end.2721
                                        #   in Loop: Header=BB65_430 Depth=1
	jmp	.LBB65_468
.LBB65_468:                             # %if.end.2722
                                        #   in Loop: Header=BB65_430 Depth=1
	jmp	.LBB65_469
.LBB65_469:                             # %if.end.2723
                                        #   in Loop: Header=BB65_430 Depth=1
	jmp	.LBB65_470
.LBB65_470:                             # %if.end.2724
                                        #   in Loop: Header=BB65_430 Depth=1
	jmp	.LBB65_471
.LBB65_471:                             # %if.end.2725
                                        #   in Loop: Header=BB65_430 Depth=1
	jmp	.LBB65_472
.LBB65_472:                             # %if.end.2726
                                        #   in Loop: Header=BB65_430 Depth=1
	jmp	.LBB65_473
.LBB65_473:                             # %if.end.2727
                                        #   in Loop: Header=BB65_430 Depth=1
	jmp	.LBB65_474
.LBB65_474:                             # %if.end.2728
                                        #   in Loop: Header=BB65_430 Depth=1
	jmp	.LBB65_475
.LBB65_475:                             # %if.end.2729
                                        #   in Loop: Header=BB65_430 Depth=1
	jmp	.LBB65_430
.LBB65_476:                             # %while.end
	movl	$957, %edi              # imm = 0x3BD
	movq	-48(%rbp), %rax
	movq	%rax, -1240(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1240(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB65_481
# BB#477:                               # %if.then.2733
	movb	$1, -121(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$0, 304(%rax)
	jge	.LBB65_479
# BB#478:                               # %if.then.2736
	movl	$752, %edi              # imm = 0x2F0
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rcx
	movslq	304(%rcx), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	list2
	movq	%rax, -48(%rbp)
	jmp	.LBB65_480
.LBB65_479:                             # %if.else.2743
	movq	-8(%rbp), %rax
	movslq	304(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -48(%rbp)
.LBB65_480:                             # %if.end.2748
	jmp	.LBB65_481
.LBB65_481:                             # %if.end.2749
	movl	$957, %edi              # imm = 0x3BD
	movq	-56(%rbp), %rax
	movq	%rax, -1248(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1248(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB65_486
# BB#482:                               # %if.then.2753
	movb	$1, -122(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$0, 308(%rax)
	jge	.LBB65_484
# BB#483:                               # %if.then.2756
	movl	$752, %edi              # imm = 0x2F0
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rcx
	movslq	308(%rcx), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	list2
	movq	%rax, -56(%rbp)
	jmp	.LBB65_485
.LBB65_484:                             # %if.else.2763
	movq	-8(%rbp), %rax
	movslq	308(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -56(%rbp)
.LBB65_485:                             # %if.end.2768
	jmp	.LBB65_486
.LBB65_486:                             # %if.end.2769
	movq	-64(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB65_491
# BB#487:                               # %land.lhs.true.2775
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB65_489
	jmp	.LBB65_488
.LBB65_488:                             # %cond.true.2776
	movq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	movq	-64(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jle	.LBB65_490
	jmp	.LBB65_491
.LBB65_489:                             # %cond.false.2780
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-64(%rbp), %rdx
	sarq	$2, %rdx
	cmpq	%rdx, %rcx
	jg	.LBB65_491
.LBB65_490:                             # %land.lhs.true.2784
	movq	-64(%rbp), %rax
	sarq	$2, %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	jle	.LBB65_494
.LBB65_491:                             # %if.then.2788
	movl	$529, %edi              # imm = 0x211
	movb	$1, -123(%rbp)
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rcx
	movq	64(%rcx), %rsi
	movq	%rax, %rdi
	callq	Fassq
	movq	%rax, %rdi
	callq	Fcdr
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -1256(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1256(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB65_493
# BB#492:                               # %if.then.2795
	movq	$2, -64(%rbp)
.LBB65_493:                             # %if.end.2796
	jmp	.LBB65_494
.LBB65_494:                             # %if.end.2797
	movq	-72(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB65_499
# BB#495:                               # %land.lhs.true.2803
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB65_497
	jmp	.LBB65_496
.LBB65_496:                             # %cond.true.2804
	movq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	movq	-72(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jle	.LBB65_498
	jmp	.LBB65_499
.LBB65_497:                             # %cond.false.2808
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-72(%rbp), %rdx
	sarq	$2, %rdx
	cmpq	%rdx, %rcx
	jg	.LBB65_499
.LBB65_498:                             # %land.lhs.true.2812
	movq	-72(%rbp), %rax
	sarq	$2, %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	jle	.LBB65_502
.LBB65_499:                             # %if.then.2816
	movl	$531, %edi              # imm = 0x213
	movb	$1, -124(%rbp)
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rcx
	movq	64(%rcx), %rsi
	movq	%rax, %rdi
	callq	Fassq
	movq	%rax, %rdi
	callq	Fcdr
	xorl	%edi, %edi
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -1264(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1264(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB65_501
# BB#500:                               # %if.then.2824
	movq	$2, -72(%rbp)
.LBB65_501:                             # %if.end.2825
	jmp	.LBB65_502
.LBB65_502:                             # %if.end.2826
	movl	$5, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -248(%rbp)
	testb	$1, -33(%rbp)
	je	.LBB65_504
# BB#503:                               # %land.lhs.true.2830
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	288(%rcx), %eax
	jne	.LBB65_506
.LBB65_504:                             # %lor.lhs.false.2833
	testb	$1, -34(%rbp)
	je	.LBB65_513
# BB#505:                               # %land.lhs.true.2836
	movl	-32(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	292(%rcx), %eax
	je	.LBB65_513
.LBB65_506:                             # %if.then.2839
	movq	-8(%rbp), %rdi
	testb	$1, -33(%rbp)
	movq	%rdi, -1272(%rbp)       # 8-byte Spill
	je	.LBB65_508
# BB#507:                               # %cond.true.2842
	movl	-28(%rbp), %eax
	movl	%eax, -1276(%rbp)       # 4-byte Spill
	jmp	.LBB65_509
.LBB65_508:                             # %cond.false.2843
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -1276(%rbp)       # 4-byte Spill
	jmp	.LBB65_509
.LBB65_509:                             # %cond.end.2844
	movl	-1276(%rbp), %eax       # 4-byte Reload
	testb	$1, -34(%rbp)
	movl	%eax, -1280(%rbp)       # 4-byte Spill
	je	.LBB65_511
# BB#510:                               # %cond.true.2848
	movl	-32(%rbp), %eax
	movl	%eax, -1284(%rbp)       # 4-byte Spill
	jmp	.LBB65_512
.LBB65_511:                             # %cond.false.2849
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -1284(%rbp)       # 4-byte Spill
	jmp	.LBB65_512
.LBB65_512:                             # %cond.end.2850
	movl	-1284(%rbp), %eax       # 4-byte Reload
	movl	$1056, %edi             # imm = 0x420
	movl	%eax, -1288(%rbp)       # 4-byte Spill
	callq	builtin_lisp_symbol
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-1272(%rbp), %rdi       # 8-byte Reload
	movl	-1280(%rbp), %esi       # 4-byte Reload
	movl	-1288(%rbp), %edx       # 4-byte Reload
	movq	%rax, %r9
	callq	adjust_frame_size
.LBB65_513:                             # %if.end.2853
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -1296(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1296(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB65_515
# BB#514:                               # %lor.lhs.false.2857
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -1304(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1304(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB65_576
.LBB65_515:                             # %land.lhs.true.2861
	testb	$1, -121(%rbp)
	je	.LBB65_517
# BB#516:                               # %land.lhs.true.2864
	testb	$1, -122(%rbp)
	jne	.LBB65_576
.LBB65_517:                             # %land.lhs.true.2867
	movq	-48(%rbp), %rdi
	callq	NUMBERP
	testb	$1, %al
	jne	.LBB65_518
	jmp	.LBB65_521
.LBB65_518:                             # %land.lhs.true.2870
	movq	-48(%rbp), %rax
	sarq	$2, %rax
	movq	-8(%rbp), %rcx
	movslq	304(%rcx), %rcx
	cmpq	%rcx, %rax
	jne	.LBB65_521
# BB#519:                               # %land.lhs.true.2876
	movq	-56(%rbp), %rdi
	callq	NUMBERP
	testb	$1, %al
	jne	.LBB65_520
	jmp	.LBB65_521
.LBB65_520:                             # %land.lhs.true.2879
	movq	-56(%rbp), %rax
	sarq	$2, %rax
	movq	-8(%rbp), %rcx
	movslq	308(%rcx), %rcx
	cmpq	%rcx, %rax
	je	.LBB65_576
.LBB65_521:                             # %if.then.2885
	movl	$668, %edi              # imm = 0x29C
	movl	$0, -252(%rbp)
	movl	$0, -256(%rbp)
	movq	-8(%rbp), %rax
	movl	324(%rax), %ecx
	andl	$-49, %ecx
	movl	%ecx, 324(%rax)
	movq	-48(%rbp), %rax
	movq	%rax, -1312(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1312(%rbp), %rdx       # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB65_523
# BB#522:                               # %if.then.2890
	movq	-8(%rbp), %rax
	movl	324(%rax), %ecx
	orl	$16, %ecx
	movl	%ecx, 324(%rax)
	jmp	.LBB65_548
.LBB65_523:                             # %if.else.2892
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB65_531
# BB#524:                               # %land.lhs.true.2898
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB65_526
	jmp	.LBB65_525
.LBB65_525:                             # %cond.true.2899
	movq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	movq	-48(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jle	.LBB65_527
	jmp	.LBB65_531
.LBB65_526:                             # %cond.false.2903
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	sarq	$2, %rdx
	cmpq	%rdx, %rcx
	jg	.LBB65_531
.LBB65_527:                             # %land.lhs.true.2907
	movq	-48(%rbp), %rax
	sarq	$2, %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	jg	.LBB65_531
# BB#528:                               # %if.then.2911
	movq	-48(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -252(%rbp)
	cmpl	$0, -252(%rbp)
	jge	.LBB65_530
# BB#529:                               # %if.then.2916
	movq	-8(%rbp), %rax
	movl	324(%rax), %ecx
	orl	$16, %ecx
	movl	%ecx, 324(%rax)
.LBB65_530:                             # %if.end.2919
	jmp	.LBB65_547
.LBB65_531:                             # %if.else.2920
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB65_536
# BB#532:                               # %land.lhs.true.2925
	movl	$668, %edi              # imm = 0x29C
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -1320(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1320(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB65_536
# BB#533:                               # %land.lhs.true.2931
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB65_536
# BB#534:                               # %land.lhs.true.2939
	movq	$-2147483647, %rdi      # imm = 0xFFFFFFFF80000001
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %edx
	movq	-48(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rsi
	callq	RANGED_INTEGERP
	testb	$1, %al
	jne	.LBB65_535
	jmp	.LBB65_536
.LBB65_535:                             # %if.then.2947
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	subq	$3, %rdx
	movq	8(%rdx), %rdx
	subq	$3, %rdx
	movq	(%rdx), %rdx
	sarq	$2, %rdx
	subq	%rdx, %rcx
	movl	%ecx, %eax
	movl	%eax, -252(%rbp)
	movq	-8(%rbp), %rcx
	movl	324(%rcx), %eax
	orl	$16, %eax
	movl	%eax, 324(%rcx)
	jmp	.LBB65_546
.LBB65_536:                             # %if.else.2958
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB65_545
# BB#537:                               # %land.lhs.true.2963
	movl	$752, %edi              # imm = 0x2F0
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -1328(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1328(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB65_545
# BB#538:                               # %land.lhs.true.2969
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB65_545
# BB#539:                               # %land.lhs.true.2977
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB65_545
# BB#540:                               # %land.lhs.true.2988
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB65_542
	jmp	.LBB65_541
.LBB65_541:                             # %cond.true.2989
	movq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	movq	-48(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jle	.LBB65_543
	jmp	.LBB65_545
.LBB65_542:                             # %cond.false.2998
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	subq	$3, %rdx
	movq	8(%rdx), %rdx
	subq	$3, %rdx
	movq	(%rdx), %rdx
	sarq	$2, %rdx
	cmpq	%rdx, %rcx
	jg	.LBB65_545
.LBB65_543:                             # %land.lhs.true.3007
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	jg	.LBB65_545
# BB#544:                               # %if.then.3016
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -252(%rbp)
.LBB65_545:                             # %if.end.3024
	jmp	.LBB65_546
.LBB65_546:                             # %if.end.3025
	jmp	.LBB65_547
.LBB65_547:                             # %if.end.3026
	jmp	.LBB65_548
.LBB65_548:                             # %if.end.3027
	movl	$668, %edi              # imm = 0x29C
	movq	-56(%rbp), %rax
	movq	%rax, -1336(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1336(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB65_550
# BB#549:                               # %if.then.3031
	movq	-8(%rbp), %rax
	movl	324(%rax), %ecx
	orl	$32, %ecx
	movl	%ecx, 324(%rax)
	jmp	.LBB65_575
.LBB65_550:                             # %if.else.3034
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB65_558
# BB#551:                               # %land.lhs.true.3040
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB65_553
	jmp	.LBB65_552
.LBB65_552:                             # %cond.true.3041
	movq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	movq	-56(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jle	.LBB65_554
	jmp	.LBB65_558
.LBB65_553:                             # %cond.false.3045
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-56(%rbp), %rdx
	sarq	$2, %rdx
	cmpq	%rdx, %rcx
	jg	.LBB65_558
.LBB65_554:                             # %land.lhs.true.3049
	movq	-56(%rbp), %rax
	sarq	$2, %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	jg	.LBB65_558
# BB#555:                               # %if.then.3053
	movq	-56(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -256(%rbp)
	cmpl	$0, -256(%rbp)
	jge	.LBB65_557
# BB#556:                               # %if.then.3058
	movq	-8(%rbp), %rax
	movl	324(%rax), %ecx
	orl	$32, %ecx
	movl	%ecx, 324(%rax)
.LBB65_557:                             # %if.end.3061
	jmp	.LBB65_574
.LBB65_558:                             # %if.else.3062
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB65_563
# BB#559:                               # %land.lhs.true.3067
	movl	$668, %edi              # imm = 0x29C
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -1344(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1344(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB65_563
# BB#560:                               # %land.lhs.true.3073
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB65_563
# BB#561:                               # %land.lhs.true.3081
	movq	$-2147483647, %rdi      # imm = 0xFFFFFFFF80000001
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %edx
	movq	-56(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rsi
	callq	RANGED_INTEGERP
	testb	$1, %al
	jne	.LBB65_562
	jmp	.LBB65_563
.LBB65_562:                             # %if.then.3089
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-56(%rbp), %rdx
	subq	$3, %rdx
	movq	8(%rdx), %rdx
	subq	$3, %rdx
	movq	(%rdx), %rdx
	sarq	$2, %rdx
	subq	%rdx, %rcx
	movl	%ecx, %eax
	movl	%eax, -256(%rbp)
	movq	-8(%rbp), %rcx
	movl	324(%rcx), %eax
	orl	$32, %eax
	movl	%eax, 324(%rcx)
	jmp	.LBB65_573
.LBB65_563:                             # %if.else.3100
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB65_572
# BB#564:                               # %land.lhs.true.3105
	movl	$752, %edi              # imm = 0x2F0
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -1352(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1352(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB65_572
# BB#565:                               # %land.lhs.true.3111
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB65_572
# BB#566:                               # %land.lhs.true.3119
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB65_572
# BB#567:                               # %land.lhs.true.3130
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB65_569
	jmp	.LBB65_568
.LBB65_568:                             # %cond.true.3131
	movq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	movq	-56(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jle	.LBB65_570
	jmp	.LBB65_572
.LBB65_569:                             # %cond.false.3140
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-56(%rbp), %rdx
	subq	$3, %rdx
	movq	8(%rdx), %rdx
	subq	$3, %rdx
	movq	(%rdx), %rdx
	sarq	$2, %rdx
	cmpq	%rdx, %rcx
	jg	.LBB65_572
.LBB65_570:                             # %land.lhs.true.3149
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	jg	.LBB65_572
# BB#571:                               # %if.then.3158
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -256(%rbp)
.LBB65_572:                             # %if.end.3166
	jmp	.LBB65_573
.LBB65_573:                             # %if.end.3167
	jmp	.LBB65_574
.LBB65_574:                             # %if.end.3168
	jmp	.LBB65_575
.LBB65_575:                             # %if.end.3169
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	-256(%rbp), %eax
	movq	-8(%rbp), %rdx
	movl	%eax, 308(%rdx)
	movl	-252(%rbp), %eax
	movq	-8(%rbp), %rdx
	movl	%eax, 304(%rdx)
	movq	-8(%rbp), %rdx
	movl	$1, 320(%rdx)
	movq	-8(%rbp), %rdi
	movl	-252(%rbp), %esi
	movl	-256(%rbp), %edx
	callq	x_set_offset
.LBB65_576:                             # %if.end.3172
	testb	$1, -81(%rbp)
	je	.LBB65_580
# BB#577:                               # %if.then.3174
	movl	$472, %edi              # imm = 0x1D8
	movq	-8(%rbp), %rax
	movq	%rax, -1360(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1360(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	get_frame_param
	movl	$1057, %edi             # imm = 0x421
	movq	%rax, -264(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -1368(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-264(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	%rax, -1376(%rbp)       # 8-byte Spill
	callq	list2
	xorl	%ecx, %ecx
	movq	-1368(%rbp), %rdi       # 8-byte Reload
	movq	-1376(%rbp), %rsi       # 8-byte Reload
	movl	%ecx, %edx
	movq	%rax, %r8
	callq	frame_size_history_add
	movl	$472, %edi              # imm = 0x1D8
	movq	-8(%rbp), %rax
	movq	%rax, -1384(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rdx
	movq	-1384(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	store_frame_param
	movq	-80(%rbp), %rax
	cmpq	-264(%rbp), %rax
	je	.LBB65_579
# BB#578:                               # %if.then.3183
	movq	-8(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-264(%rbp), %rdx
	callq	x_set_fullscreen
.LBB65_579:                             # %if.end.3184
	jmp	.LBB65_580
.LBB65_580:                             # %if.end.3185
	xorl	%edi, %edi
	movq	-64(%rbp), %rax
	movq	%rax, -1392(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1392(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB65_582
# BB#581:                               # %lor.lhs.false.3189
	xorl	%edi, %edi
	movq	-72(%rbp), %rax
	movq	%rax, -1400(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1400(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB65_585
.LBB65_582:                             # %land.lhs.true.3193
	testb	$1, -123(%rbp)
	je	.LBB65_584
# BB#583:                               # %land.lhs.true.3196
	testb	$1, -124(%rbp)
	jne	.LBB65_585
.LBB65_584:                             # %if.then.3199
	movq	-8(%rbp), %rdi
	movq	-64(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movq	-72(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %edx
	movl	%ecx, %esi
	callq	x_wm_set_icon_position
.LBB65_585:                             # %if.end.3204
	jmp	.LBB65_586
.LBB65_586:                             # %do.body.3205
	testb	$1, -145(%rbp)
	je	.LBB65_588
# BB#587:                               # %if.then.3207
	xorl	%edi, %edi
	movb	$0, -145(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -1408(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1408(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -1416(%rbp)       # 8-byte Spill
.LBB65_588:                             # %if.end.3210
	jmp	.LBB65_589
.LBB65_589:                             # %do.end.3211
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end65:
	.size	x_set_frame_parameters, .Lfunc_end65-x_set_frame_parameters
	.cfi_endproc

	.globl	Fframe_char_height
	.align	16, 0x90
	.type	Fframe_char_height,@function
Fframe_char_height:                     # @Fframe_char_height
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp198:
	.cfi_def_cfa_offset 16
.Ltmp199:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp200:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	decode_any_frame
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	.LBB66_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movslq	368(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB66_3
.LBB66_2:                               # %if.else
	movq	$6, -8(%rbp)
.LBB66_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end66:
	.size	Fframe_char_height, .Lfunc_end66-Fframe_char_height
	.cfi_endproc

	.globl	Fframe_char_width
	.align	16, 0x90
	.type	Fframe_char_width,@function
Fframe_char_width:                      # @Fframe_char_width
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp201:
	.cfi_def_cfa_offset 16
.Ltmp202:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp203:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	decode_any_frame
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	.LBB67_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movslq	364(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB67_3
.LBB67_2:                               # %if.else
	movq	$6, -8(%rbp)
.LBB67_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end67:
	.size	Fframe_char_width, .Lfunc_end67-Fframe_char_width
	.cfi_endproc

	.globl	Fframe_pixel_height
	.align	16, 0x90
	.type	Fframe_pixel_height,@function
Fframe_pixel_height:                    # @Fframe_pixel_height
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp204:
	.cfi_def_cfa_offset 16
.Ltmp205:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp206:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	decode_any_frame
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	.LBB68_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movslq	316(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB68_3
.LBB68_2:                               # %if.else
	movq	-24(%rbp), %rax
	movslq	284(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -8(%rbp)
.LBB68_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end68:
	.size	Fframe_pixel_height, .Lfunc_end68-Fframe_pixel_height
	.cfi_endproc

	.globl	Fframe_pixel_width
	.align	16, 0x90
	.type	Fframe_pixel_width,@function
Fframe_pixel_width:                     # @Fframe_pixel_width
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp207:
	.cfi_def_cfa_offset 16
.Ltmp208:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp209:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	decode_any_frame
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	.LBB69_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movslq	312(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB69_3
.LBB69_2:                               # %if.else
	movq	-24(%rbp), %rax
	movslq	280(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -8(%rbp)
.LBB69_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end69:
	.size	Fframe_pixel_width, .Lfunc_end69-Fframe_pixel_width
	.cfi_endproc

	.globl	Ftool_bar_pixel_width
	.align	16, 0x90
	.type	Ftool_bar_pixel_width,@function
Ftool_bar_pixel_width:                  # @Ftool_bar_pixel_width
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp210:
	.cfi_def_cfa_offset 16
.Ltmp211:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp212:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	decode_any_frame
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	.LBB70_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	384(%rax), %rax
	movl	12(%rax), %ecx
	movq	-24(%rbp), %rax
	movq	384(%rax), %rax
	addl	16(%rax), %ecx
	movslq	%ecx, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB70_3
.LBB70_2:                               # %if.end
	movq	$2, -8(%rbp)
.LBB70_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end70:
	.size	Ftool_bar_pixel_width, .Lfunc_end70-Ftool_bar_pixel_width
	.cfi_endproc

	.globl	Fframe_text_cols
	.align	16, 0x90
	.type	Fframe_text_cols,@function
Fframe_text_cols:                       # @Fframe_text_cols
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp213:
	.cfi_def_cfa_offset 16
.Ltmp214:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp215:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_any_frame
	movslq	272(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end71:
	.size	Fframe_text_cols, .Lfunc_end71-Fframe_text_cols
	.cfi_endproc

	.globl	Fframe_text_lines
	.align	16, 0x90
	.type	Fframe_text_lines,@function
Fframe_text_lines:                      # @Fframe_text_lines
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp216:
	.cfi_def_cfa_offset 16
.Ltmp217:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp218:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_any_frame
	movslq	276(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end72:
	.size	Fframe_text_lines, .Lfunc_end72-Fframe_text_lines
	.cfi_endproc

	.globl	Fframe_total_cols
	.align	16, 0x90
	.type	Fframe_total_cols,@function
Fframe_total_cols:                      # @Fframe_total_cols
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp219:
	.cfi_def_cfa_offset 16
.Ltmp220:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp221:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_any_frame
	movslq	280(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end73:
	.size	Fframe_total_cols, .Lfunc_end73-Fframe_total_cols
	.cfi_endproc

	.globl	Fframe_total_lines
	.align	16, 0x90
	.type	Fframe_total_lines,@function
Fframe_total_lines:                     # @Fframe_total_lines
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp222:
	.cfi_def_cfa_offset 16
.Ltmp223:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp224:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_any_frame
	movslq	284(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end74:
	.size	Fframe_total_lines, .Lfunc_end74-Fframe_total_lines
	.cfi_endproc

	.globl	Fframe_text_width
	.align	16, 0x90
	.type	Fframe_text_width,@function
Fframe_text_width:                      # @Fframe_text_width
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp225:
	.cfi_def_cfa_offset 16
.Ltmp226:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp227:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_any_frame
	movslq	288(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end75:
	.size	Fframe_text_width, .Lfunc_end75-Fframe_text_width
	.cfi_endproc

	.globl	Fframe_text_height
	.align	16, 0x90
	.type	Fframe_text_height,@function
Fframe_text_height:                     # @Fframe_text_height
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp228:
	.cfi_def_cfa_offset 16
.Ltmp229:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp230:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_any_frame
	movslq	292(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end76:
	.size	Fframe_text_height, .Lfunc_end76-Fframe_text_height
	.cfi_endproc

	.globl	Fscroll_bar_width
	.align	16, 0x90
	.type	Fscroll_bar_width,@function
Fscroll_bar_width:                      # @Fscroll_bar_width
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp231:
	.cfi_def_cfa_offset 16
.Ltmp232:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp233:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_any_frame
	movq	208(%rax), %rax
	shrq	$30, %rax
	andq	$3, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB77_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rdi
	callq	decode_any_frame
	movl	420(%rax), %ecx
	movl	%ecx, -12(%rbp)         # 4-byte Spill
	jmp	.LBB77_3
.LBB77_2:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, -12(%rbp)         # 4-byte Spill
	jmp	.LBB77_3
.LBB77_3:                               # %cond.end
	movl	-12(%rbp), %eax         # 4-byte Reload
	movslq	%eax, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end77:
	.size	Fscroll_bar_width, .Lfunc_end77-Fscroll_bar_width
	.cfi_endproc

	.globl	Fscroll_bar_height
	.align	16, 0x90
	.type	Fscroll_bar_height,@function
Fscroll_bar_height:                     # @Fscroll_bar_height
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp234:
	.cfi_def_cfa_offset 16
.Ltmp235:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp236:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_any_frame
	movq	208(%rax), %rax
	shrq	$32, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB78_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rdi
	callq	decode_any_frame
	movl	428(%rax), %ecx
	movl	%ecx, -12(%rbp)         # 4-byte Spill
	jmp	.LBB78_3
.LBB78_2:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, -12(%rbp)         # 4-byte Spill
	jmp	.LBB78_3
.LBB78_3:                               # %cond.end
	movl	-12(%rbp), %eax         # 4-byte Reload
	movslq	%eax, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end78:
	.size	Fscroll_bar_height, .Lfunc_end78-Fscroll_bar_height
	.cfi_endproc

	.globl	Ffringe_width
	.align	16, 0x90
	.type	Ffringe_width,@function
Ffringe_width:                          # @Ffringe_width
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp237:
	.cfi_def_cfa_offset 16
.Ltmp238:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp239:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_any_frame
	movl	344(%rax), %ecx
	movq	-8(%rbp), %rdi
	movl	%ecx, -12(%rbp)         # 4-byte Spill
	callq	decode_any_frame
	movl	-12(%rbp), %ecx         # 4-byte Reload
	addl	348(%rax), %ecx
	movslq	%ecx, %rax
	shlq	$2, %rax
	addq	$2, %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end79:
	.size	Ffringe_width, .Lfunc_end79-Ffringe_width
	.cfi_endproc

	.globl	Fborder_width
	.align	16, 0x90
	.type	Fborder_width,@function
Fborder_width:                          # @Fborder_width
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp240:
	.cfi_def_cfa_offset 16
.Ltmp241:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp242:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_any_frame
	movslq	332(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end80:
	.size	Fborder_width, .Lfunc_end80-Fborder_width
	.cfi_endproc

	.globl	Fright_divider_width
	.align	16, 0x90
	.type	Fright_divider_width,@function
Fright_divider_width:                   # @Fright_divider_width
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp243:
	.cfi_def_cfa_offset 16
.Ltmp244:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp245:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_any_frame
	movslq	336(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end81:
	.size	Fright_divider_width, .Lfunc_end81-Fright_divider_width
	.cfi_endproc

	.globl	Fbottom_divider_width
	.align	16, 0x90
	.type	Fbottom_divider_width,@function
Fbottom_divider_width:                  # @Fbottom_divider_width
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp246:
	.cfi_def_cfa_offset 16
.Ltmp247:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp248:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_any_frame
	movslq	340(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end82:
	.size	Fbottom_divider_width, .Lfunc_end82-Fbottom_divider_width
	.cfi_endproc

	.globl	Fset_frame_height
	.align	16, 0x90
	.type	Fset_frame_height,@function
Fset_frame_height:                      # @Fset_frame_height
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp249:
	.cfi_def_cfa_offset 16
.Ltmp250:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp251:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_live_frame
	movq	%rax, -40(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB83_2
.LBB83_2:                               # %do.body.1
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB83_4
# BB#3:                                 # %cond.true
	jmp	.LBB83_5
.LBB83_4:                               # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB83_5:                               # %cond.end
	movq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	movq	-16(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jg	.LBB83_7
# BB#6:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	jle	.LBB83_8
.LBB83_7:                               # %if.then
	movabsq	$-8589934590, %rsi      # imm = 0xFFFFFFFE00000002
	movabsq	$8589934590, %rdx       # imm = 0x1FFFFFFFE
	movq	-16(%rbp), %rdi
	callq	args_out_of_range_3
.LBB83_8:                               # %if.end
	jmp	.LBB83_9
.LBB83_9:                               # %do.end
	jmp	.LBB83_10
.LBB83_10:                              # %do.end.10
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB83_12
# BB#11:                                # %cond.true.14
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB83_13
.LBB83_12:                              # %cond.false.16
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	-40(%rbp), %rcx
	movslq	368(%rcx), %rcx
	imulq	%rcx, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB83_13:                              # %cond.end.19
	movq	-72(%rbp), %rax         # 8-byte Reload
	xorl	%edi, %edi
	movl	%eax, %ecx
	movl	%ecx, -44(%rbp)
	movq	-40(%rbp), %rax
	movl	-44(%rbp), %edx
	movq	-24(%rbp), %rsi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movl	%edx, -92(%rbp)         # 4-byte Spill
	callq	builtin_lisp_symbol
	movl	$515, %edi              # imm = 0x203
	movq	-80(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%r8b
	xorb	$-1, %r8b
	movb	%r8b, -93(%rbp)         # 1-byte Spill
	callq	builtin_lisp_symbol
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$1, %edx
	movb	-93(%rbp), %r8b         # 1-byte Reload
	movzbl	%r8b, %edi
	andl	$1, %edi
	movl	$-1, %esi
	movl	$1, %r9d
	movq	-88(%rbp), %r10         # 8-byte Reload
	movl	%edi, -100(%rbp)        # 4-byte Spill
	movq	%r10, %rdi
	movl	-92(%rbp), %r11d        # 4-byte Reload
	movl	%edx, -104(%rbp)        # 4-byte Spill
	movl	%r11d, %edx
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	movl	%r9d, %ecx
	movl	-100(%rbp), %r8d        # 4-byte Reload
	movq	%rax, %r9
	callq	adjust_frame_size
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end83:
	.size	Fset_frame_height, .Lfunc_end83-Fset_frame_height
	.cfi_endproc

	.globl	Fset_frame_width
	.align	16, 0x90
	.type	Fset_frame_width,@function
Fset_frame_width:                       # @Fset_frame_width
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp252:
	.cfi_def_cfa_offset 16
.Ltmp253:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp254:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_live_frame
	movq	%rax, -40(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB84_2
.LBB84_2:                               # %do.body.1
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB84_4
# BB#3:                                 # %cond.true
	jmp	.LBB84_5
.LBB84_4:                               # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB84_5:                               # %cond.end
	movq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	movq	-16(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jg	.LBB84_7
# BB#6:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	jle	.LBB84_8
.LBB84_7:                               # %if.then
	movabsq	$-8589934590, %rsi      # imm = 0xFFFFFFFE00000002
	movabsq	$8589934590, %rdx       # imm = 0x1FFFFFFFE
	movq	-16(%rbp), %rdi
	callq	args_out_of_range_3
.LBB84_8:                               # %if.end
	jmp	.LBB84_9
.LBB84_9:                               # %do.end
	jmp	.LBB84_10
.LBB84_10:                              # %do.end.10
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB84_12
# BB#11:                                # %cond.true.14
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB84_13
.LBB84_12:                              # %cond.false.16
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	-40(%rbp), %rcx
	movslq	364(%rcx), %rcx
	imulq	%rcx, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB84_13:                              # %cond.end.19
	movq	-72(%rbp), %rax         # 8-byte Reload
	xorl	%edi, %edi
	movl	%eax, %ecx
	movl	%ecx, -44(%rbp)
	movq	-40(%rbp), %rax
	movl	-44(%rbp), %esi
	movq	-24(%rbp), %rdx
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	callq	builtin_lisp_symbol
	movl	$1017, %edi             # imm = 0x3F9
	movq	-80(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	sete	%r8b
	xorb	$-1, %r8b
	movb	%r8b, -93(%rbp)         # 1-byte Spill
	callq	builtin_lisp_symbol
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$1, %esi
	movb	-93(%rbp), %r8b         # 1-byte Reload
	movzbl	%r8b, %edi
	andl	$1, %edi
	movl	$-1, %edx
	movl	$1, %r9d
	movq	-88(%rbp), %r10         # 8-byte Reload
	movl	%edi, -100(%rbp)        # 4-byte Spill
	movq	%r10, %rdi
	movl	-92(%rbp), %r11d        # 4-byte Reload
	movl	%esi, -104(%rbp)        # 4-byte Spill
	movl	%r11d, %esi
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	movl	%r9d, %ecx
	movl	-100(%rbp), %r8d        # 4-byte Reload
	movq	%rax, %r9
	callq	adjust_frame_size
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end84:
	.size	Fset_frame_width, .Lfunc_end84-Fset_frame_width
	.cfi_endproc

	.globl	Fset_frame_size
	.align	16, 0x90
	.type	Fset_frame_size,@function
Fset_frame_size:                        # @Fset_frame_size
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp255:
	.cfi_def_cfa_offset 16
.Ltmp256:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp257:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_live_frame
	movq	%rax, -40(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB85_2
.LBB85_2:                               # %do.body.1
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB85_4
# BB#3:                                 # %cond.true
	jmp	.LBB85_5
.LBB85_4:                               # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB85_5:                               # %cond.end
	movq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	movq	-16(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jg	.LBB85_7
# BB#6:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	jle	.LBB85_8
.LBB85_7:                               # %if.then
	movabsq	$-8589934590, %rsi      # imm = 0xFFFFFFFE00000002
	movabsq	$8589934590, %rdx       # imm = 0x1FFFFFFFE
	movq	-16(%rbp), %rdi
	callq	args_out_of_range_3
.LBB85_8:                               # %if.end
	jmp	.LBB85_9
.LBB85_9:                               # %do.end
	jmp	.LBB85_10
.LBB85_10:                              # %do.end.10
	jmp	.LBB85_11
.LBB85_11:                              # %do.body.11
	jmp	.LBB85_12
.LBB85_12:                              # %do.body.12
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB85_14
# BB#13:                                # %cond.true.18
	jmp	.LBB85_15
.LBB85_14:                              # %cond.false.19
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB85_15:                              # %cond.end.21
	movq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	movq	-24(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jg	.LBB85_17
# BB#16:                                # %land.lhs.true.25
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	jle	.LBB85_18
.LBB85_17:                              # %if.then.29
	movabsq	$-8589934590, %rsi      # imm = 0xFFFFFFFE00000002
	movabsq	$8589934590, %rdx       # imm = 0x1FFFFFFFE
	movq	-24(%rbp), %rdi
	callq	args_out_of_range_3
.LBB85_18:                              # %if.end.30
	jmp	.LBB85_19
.LBB85_19:                              # %do.end.31
	jmp	.LBB85_20
.LBB85_20:                              # %do.end.32
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB85_22
# BB#21:                                # %cond.true.36
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB85_23
.LBB85_22:                              # %cond.false.38
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	-40(%rbp), %rcx
	movslq	364(%rcx), %rcx
	imulq	%rcx, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB85_23:                              # %cond.end.41
	movq	-80(%rbp), %rax         # 8-byte Reload
	xorl	%edi, %edi
	movl	%eax, %ecx
	movl	%ecx, -44(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB85_25
# BB#24:                                # %cond.true.46
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB85_26
.LBB85_25:                              # %cond.false.48
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	movq	-40(%rbp), %rcx
	movslq	368(%rcx), %rcx
	imulq	%rcx, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB85_26:                              # %cond.end.52
	movq	-96(%rbp), %rax         # 8-byte Reload
	movl	$864, %edi              # imm = 0x360
	movl	%eax, %ecx
	movl	%ecx, -48(%rbp)
	movq	-40(%rbp), %rax
	movl	-44(%rbp), %esi
	movl	-48(%rbp), %edx
	movl	%edx, -100(%rbp)        # 4-byte Spill
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movl	%esi, -116(%rbp)        # 4-byte Spill
	callq	builtin_lisp_symbol
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movl	-116(%rbp), %esi        # 4-byte Reload
	movl	-100(%rbp), %edx        # 4-byte Reload
	movq	%rax, %r9
	callq	adjust_frame_size
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end85:
	.size	Fset_frame_size, .Lfunc_end85-Fset_frame_size
	.cfi_endproc

	.globl	Fframe_position
	.align	16, 0x90
	.type	Fframe_position,@function
Fframe_position:                        # @Fframe_position
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp258:
	.cfi_def_cfa_offset 16
.Ltmp259:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp260:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_live_frame
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movslq	304(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-16(%rbp), %rdi
	movslq	308(%rdi), %rdi
	shlq	$2, %rdi
	addq	$2, %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-24(%rbp), %rsi         # 8-byte Reload
	callq	Fcons
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end86:
	.size	Fframe_position, .Lfunc_end86-Fframe_position
	.cfi_endproc

	.globl	Fset_frame_position
	.align	16, 0x90
	.type	Fset_frame_position,@function
Fset_frame_position:                    # @Fset_frame_position
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp261:
	.cfi_def_cfa_offset 16
.Ltmp262:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp263:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_live_frame
	movq	%rax, -32(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB87_2
.LBB87_2:                               # %do.body.1
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB87_4
# BB#3:                                 # %cond.true
	jmp	.LBB87_5
.LBB87_4:                               # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB87_5:                               # %cond.end
	movq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	movq	-16(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jg	.LBB87_7
# BB#6:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	jle	.LBB87_8
.LBB87_7:                               # %if.then
	movabsq	$-8589934590, %rsi      # imm = 0xFFFFFFFE00000002
	movabsq	$8589934590, %rdx       # imm = 0x1FFFFFFFE
	movq	-16(%rbp), %rdi
	callq	args_out_of_range_3
.LBB87_8:                               # %if.end
	jmp	.LBB87_9
.LBB87_9:                               # %do.end
	jmp	.LBB87_10
.LBB87_10:                              # %do.end.10
	jmp	.LBB87_11
.LBB87_11:                              # %do.body.11
	jmp	.LBB87_12
.LBB87_12:                              # %do.body.12
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB87_14
# BB#13:                                # %cond.true.18
	jmp	.LBB87_15
.LBB87_14:                              # %cond.false.19
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB87_15:                              # %cond.end.21
	movq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	movq	-24(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jg	.LBB87_17
# BB#16:                                # %land.lhs.true.25
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	jle	.LBB87_18
.LBB87_17:                              # %if.then.29
	movabsq	$-8589934590, %rsi      # imm = 0xFFFFFFFE00000002
	movabsq	$8589934590, %rdx       # imm = 0x1FFFFFFFE
	movq	-24(%rbp), %rdi
	callq	args_out_of_range_3
.LBB87_18:                              # %if.end.30
	jmp	.LBB87_19
.LBB87_19:                              # %do.end.31
	jmp	.LBB87_20
.LBB87_20:                              # %do.end.32
	movq	-32(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	.LBB87_22
# BB#21:                                # %if.then.35
	movl	$1, %ecx
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %esi
	movl	%esi, -52(%rbp)         # 4-byte Spill
	movl	%edx, %esi
	movl	-52(%rbp), %edx         # 4-byte Reload
	callq	x_set_offset
.LBB87_22:                              # %if.end.40
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end87:
	.size	Fset_frame_position, .Lfunc_end87-Fset_frame_position
	.cfi_endproc

	.globl	x_set_fullscreen
	.align	16, 0x90
	.type	x_set_fullscreen,@function
x_set_fullscreen:                       # @x_set_fullscreen
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp264:
	.cfi_def_cfa_offset 16
.Ltmp265:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp266:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movl	%eax, %edi
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB88_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	208(%rax), %rcx
	andq	$-1006632961, %rcx      # imm = 0xFFFFFFFFC3FFFFFF
	movq	%rcx, 208(%rax)
	jmp	.LBB88_15
.LBB88_2:                               # %if.else
	movl	$470, %edi              # imm = 0x1D6
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB88_4
# BB#3:                                 # %lor.lhs.false
	movl	$472, %edi              # imm = 0x1D8
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB88_5
.LBB88_4:                               # %if.then.5
	movq	-8(%rbp), %rax
	movq	208(%rax), %rcx
	andq	$-1006632961, %rcx      # imm = 0xFFFFFFFFC3FFFFFF
	orq	$201326592, %rcx        # imm = 0xC000000
	movq	%rcx, 208(%rax)
	jmp	.LBB88_14
.LBB88_5:                               # %if.else.9
	movl	$473, %edi              # imm = 0x1D9
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB88_7
# BB#6:                                 # %if.then.12
	movq	-8(%rbp), %rax
	movq	208(%rax), %rcx
	andq	$-1006632961, %rcx      # imm = 0xFFFFFFFFC3FFFFFF
	orq	$67108864, %rcx         # imm = 0x4000000
	movq	%rcx, 208(%rax)
	jmp	.LBB88_13
.LBB88_7:                               # %if.else.17
	movl	$471, %edi              # imm = 0x1D7
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB88_9
# BB#8:                                 # %if.then.20
	movq	-8(%rbp), %rax
	movq	208(%rax), %rcx
	andq	$-1006632961, %rcx      # imm = 0xFFFFFFFFC3FFFFFF
	orq	$134217728, %rcx        # imm = 0x8000000
	movq	%rcx, 208(%rax)
	jmp	.LBB88_12
.LBB88_9:                               # %if.else.25
	movl	$648, %edi              # imm = 0x288
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB88_11
# BB#10:                                # %if.then.28
	movq	-8(%rbp), %rax
	movq	208(%rax), %rcx
	andq	$-1006632961, %rcx      # imm = 0xFFFFFFFFC3FFFFFF
	orq	$268435456, %rcx        # imm = 0x10000000
	movq	%rcx, 208(%rax)
.LBB88_11:                              # %if.end
	jmp	.LBB88_12
.LBB88_12:                              # %if.end.33
	jmp	.LBB88_13
.LBB88_13:                              # %if.end.34
	jmp	.LBB88_14
.LBB88_14:                              # %if.end.35
	jmp	.LBB88_15
.LBB88_15:                              # %if.end.36
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	cmpq	$0, 272(%rax)
	je	.LBB88_17
# BB#16:                                # %if.then.38
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	272(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB88_17:                              # %if.end.41
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end88:
	.size	x_set_fullscreen, .Lfunc_end88-x_set_fullscreen
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI89_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	x_set_line_spacing
	.align	16, 0x90
	.type	x_set_line_spacing,@function
x_set_line_spacing:                     # @x_set_line_spacing
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp267:
	.cfi_def_cfa_offset 16
.Ltmp268:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp269:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movl	%eax, %edi
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB89_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	$0, 464(%rax)
	jmp	.LBB89_12
.LBB89_2:                               # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %edx
	movq	-16(%rbp), %rsi
	callq	RANGED_INTEGERP
	testb	$1, %al
	jne	.LBB89_3
	jmp	.LBB89_4
.LBB89_3:                               # %if.then.2
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 464(%rax)
	jmp	.LBB89_11
.LBB89_4:                               # %if.else.4
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$7, %ecx
	jne	.LBB89_9
# BB#5:                                 # %if.then.8
	movq	-16(%rbp), %rdi
	callq	XFLOAT_DATA
	movsd	.LCPI89_0, %xmm1        # xmm1 = mem[0],zero
	movq	-8(%rbp), %rdi
	cvtsi2sdl	368(%rdi), %xmm2
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jl	.LBB89_7
# BB#6:                                 # %if.then.14
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 464(%rcx)
	jmp	.LBB89_8
.LBB89_7:                               # %if.else.16
	movabsq	$.L.str.13, %rdi
	movq	-16(%rbp), %rsi
	callq	signal_error
.LBB89_8:                               # %if.end
	jmp	.LBB89_10
.LBB89_9:                               # %if.else.17
	movabsq	$.L.str.13, %rdi
	movq	-16(%rbp), %rsi
	callq	signal_error
.LBB89_10:                              # %if.end.18
	jmp	.LBB89_11
.LBB89_11:                              # %if.end.19
	jmp	.LBB89_12
.LBB89_12:                              # %if.end.20
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$10, %rax
	andq	$3, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB89_14
# BB#13:                                # %if.then.21
	movq	-8(%rbp), %rdi
	callq	redraw_frame
.LBB89_14:                              # %if.end.22
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end89:
	.size	x_set_line_spacing, .Lfunc_end89-x_set_line_spacing
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI90_0:
	.quad	4607182418800017408     # double 1
.LCPI90_1:
	.quad	4601859164040465482     # double 0.45450000000000002
	.text
	.globl	x_set_screen_gamma
	.align	16, 0x90
	.type	x_set_screen_gamma,@function
x_set_screen_gamma:                     # @x_set_screen_gamma
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp270:
	.cfi_def_cfa_offset 16
.Ltmp271:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp272:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movl	%eax, %edi
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB90_2
# BB#1:                                 # %if.then
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, 456(%rax)
	jmp	.LBB90_7
.LBB90_2:                               # %if.else
	movq	-16(%rbp), %rdi
	callq	NUMBERP
	testb	$1, %al
	jne	.LBB90_3
	jmp	.LBB90_5
.LBB90_3:                               # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	XFLOATINT
	xorps	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB90_5
# BB#4:                                 # %if.then.4
	movq	-16(%rbp), %rdi
	callq	XFLOATINT
	movsd	.LCPI90_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI90_1, %xmm2        # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	divsd	%xmm2, %xmm1
	movq	-8(%rbp), %rdi
	movsd	%xmm1, 456(%rdi)
	jmp	.LBB90_6
.LBB90_5:                               # %if.else.7
	movabsq	$.L.str.14, %rdi
	movq	-16(%rbp), %rsi
	callq	signal_error
.LBB90_6:                               # %if.end
	jmp	.LBB90_7
.LBB90_7:                               # %if.end.8
	movl	$193, %edi
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rcx
	movq	64(%rcx), %rsi
	movq	%rax, %rdi
	callq	Fassq
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %edx
	cmpl	$3, %edx
	jne	.LBB90_14
# BB#8:                                 # %land.lhs.true.13
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB90_9
	jmp	.LBB90_14
.LBB90_9:                               # %if.then.16
	movl	$193, %edi
	callq	builtin_lisp_symbol
	movl	$1049, %edi             # imm = 0x419
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB90_10
	jmp	.LBB90_13
.LBB90_10:                              # %land.lhs.true.22
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	cmpq	$37, %rax
	jae	.LBB90_13
# BB#11:                                # %land.lhs.true.25
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movq	-8(%rbp), %rcx
	movq	376(%rcx), %rcx
	movq	112(%rcx), %rcx
	movq	(%rcx), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB90_13
# BB#12:                                # %if.then.27
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movq	-8(%rbp), %rcx
	movq	376(%rcx), %rcx
	movq	112(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-8(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	movq	-72(%rbp), %rax         # 8-byte Reload
	callq	*%rax
.LBB90_13:                              # %if.end.34
	jmp	.LBB90_14
.LBB90_14:                              # %if.end.35
	movl	$1, %edi
	callq	clear_face_cache
	movq	-8(%rbp), %rdi
	callq	fset_redisplay
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end90:
	.size	x_set_screen_gamma, .Lfunc_end90-x_set_screen_gamma
	.cfi_endproc

	.globl	x_set_font
	.align	16, 0x90
	.type	x_set_font,@function
x_set_font:                             # @x_set_font
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp273:
	.cfi_def_cfa_offset 16
.Ltmp274:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp275:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movl	$439, %eax              # imm = 0x1B7
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$-1, -36(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	store_frame_param
	movq	-16(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB91_1
	jmp	.LBB91_12
.LBB91_1:                               # %if.then
	xorl	%esi, %esi
	movq	-16(%rbp), %rdi
	callq	fs_query_fontset
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jge	.LBB91_5
# BB#2:                                 # %if.then.3
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	font_open_by_name
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB91_4
# BB#3:                                 # %if.then.7
	movq	-16(%rbp), %rdi
	callq	SSDATA
	movabsq	$.L.str.15, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	error
.LBB91_4:                               # %if.end
	movl	$14, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	callq	AREF
	movq	%rax, -16(%rbp)
	jmp	.LBB91_11
.LBB91_5:                               # %if.else
	cmpl	$0, -36(%rbp)
	jle	.LBB91_9
# BB#6:                                 # %if.then.11
	movq	-8(%rbp), %rdi
	movl	-36(%rbp), %eax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	fontset_ascii
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	font_open_by_name
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB91_8
# BB#7:                                 # %if.then.16
	movq	-16(%rbp), %rdi
	callq	SDATA
	movabsq	$.L.str.15, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	error
.LBB91_8:                               # %if.end.18
	movl	$14, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	callq	AREF
	movq	%rax, -16(%rbp)
	jmp	.LBB91_10
.LBB91_9:                               # %if.else.20
	movabsq	$.L.str.16, %rdi
	movb	$0, %al
	callq	error
.LBB91_10:                              # %if.end.21
	jmp	.LBB91_11
.LBB91_11:                              # %if.end.22
	jmp	.LBB91_28
.LBB91_12:                              # %if.else.23
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB91_18
# BB#13:                                # %land.lhs.true
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB91_14
	jmp	.LBB91_18
.LBB91_14:                              # %land.lhs.true.28
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	FONT_OBJECT_P
	testb	$1, %al
	jne	.LBB91_15
	jmp	.LBB91_18
.LBB91_15:                              # %if.then.32
	xorl	%esi, %esi
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	fs_query_fontset
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jge	.LBB91_17
# BB#16:                                # %if.then.38
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	SDATA
	movabsq	$.L.str.17, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	error
.LBB91_17:                              # %if.end.42
	movl	$14, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	AREF
	movl	$86, %edi
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Ffont_get
	movq	%rax, -48(%rbp)
	jmp	.LBB91_27
.LBB91_18:                              # %if.else.49
	movq	-16(%rbp), %rdi
	callq	FONT_OBJECT_P
	testb	$1, %al
	jne	.LBB91_19
	jmp	.LBB91_25
.LBB91_19:                              # %if.then.51
	movl	$86, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Ffont_get
	movl	$14, %ecx
	movl	%ecx, %esi
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rdi
	callq	AREF
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movl	244(%rax), %ecx
	movl	%ecx, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jl	.LBB91_24
# BB#20:                                # %if.then.58
	movl	-36(%rbp), %edi
	callq	fontset_ascii
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	font_spec_from_name
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB91_22
# BB#21:                                # %lor.lhs.false
	movq	-64(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	font_match_p
	testb	$1, %al
	jne	.LBB91_23
.LBB91_22:                              # %if.then.65
	movl	$-1, -36(%rbp)
.LBB91_23:                              # %if.end.66
	jmp	.LBB91_24
.LBB91_24:                              # %if.end.67
	jmp	.LBB91_26
.LBB91_25:                              # %if.else.68
	movabsq	$.L.str.18, %rdi
	movq	-16(%rbp), %rsi
	callq	signal_error
.LBB91_26:                              # %if.end.69
	jmp	.LBB91_27
.LBB91_27:                              # %if.end.70
	jmp	.LBB91_28
.LBB91_28:                              # %if.end.71
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	Fequal
	xorl	%edi, %edi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB91_30
# BB#29:                                # %if.then.76
	jmp	.LBB91_31
.LBB91_30:                              # %if.end.77
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-36(%rbp), %edx
	callq	x_new_font
	movl	$439, %edi              # imm = 0x1B7
	movq	-8(%rbp), %rsi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdx
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	store_frame_param
	movl	$444, %edi              # imm = 0x1BC
	movq	-8(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rdx
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	store_frame_param
	movq	-8(%rbp), %rax
	movl	$0, 224(%rax)
	movq	-8(%rbp), %rdi
	callq	clear_current_matrices
	movb	$1, frame_garbaged
	movq	-8(%rbp), %rdi
	callq	fset_redisplay
	movq	-8(%rbp), %rax
	movq	208(%rax), %rdx
	andq	$-8193, %rdx            # imm = 0xFFFFFFFFFFFFDFFF
	orq	$8192, %rdx             # imm = 0x2000
	movq	%rdx, 208(%rax)
	movq	-8(%rbp), %rax
	movq	208(%rax), %rdx
	andq	$-65, %rdx
	orq	$64, %rdx
	movq	%rdx, 208(%rax)
	movq	-8(%rbp), %rdi
	callq	recompute_basic_faces
	xorl	%edi, %edi
	callq	do_pending_window_change
.LBB91_31:                              # %return
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end91:
	.size	x_set_font, .Lfunc_end91-x_set_font
	.cfi_endproc

	.globl	x_set_font_backend
	.align	16, 0x90
	.type	x_set_font_backend,@function
x_set_font_backend:                     # @x_set_font_backend
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp276:
	.cfi_def_cfa_offset 16
.Ltmp277:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp278:
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movl	%eax, %edi
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB92_21
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB92_21
# BB#2:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	CHECK_STRING
	movq	-16(%rbp), %rdi
	callq	SSDATA
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	%rax, -32(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)
.LBB92_3:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB92_5 Depth 2
                                        #     Child Loop BB92_14 Depth 2
	movq	-32(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB92_20
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB92_3 Depth=1
	jmp	.LBB92_5
.LBB92_5:                               # %while.cond.5
                                        #   Parent Loop BB92_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -65(%rbp)          # 1-byte Spill
	je	.LBB92_8
# BB#6:                                 # %land.lhs.true.8
                                        #   in Loop: Header=BB92_5 Depth=2
	movq	-40(%rbp), %rax
	movsbl	(%rax), %edi
	callq	c_isspace
	xorl	%edi, %edi
	movb	%dil, %cl
	testb	$1, %al
	movb	%cl, -65(%rbp)          # 1-byte Spill
	jne	.LBB92_8
# BB#7:                                 # %land.rhs
                                        #   in Loop: Header=BB92_5 Depth=2
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$44, %ecx
	setne	%dl
	movb	%dl, -65(%rbp)          # 1-byte Spill
.LBB92_8:                               # %land.end
                                        #   in Loop: Header=BB92_5 Depth=2
	movb	-65(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB92_9
	jmp	.LBB92_10
.LBB92_9:                               # %while.body.14
                                        #   in Loop: Header=BB92_5 Depth=2
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB92_5
.LBB92_10:                              # %while.end
                                        #   in Loop: Header=BB92_3 Depth=1
	movq	-32(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jae	.LBB92_12
# BB#11:                                # %if.then.17
                                        #   in Loop: Header=BB92_3 Depth=1
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, %rsi
	callq	make_string
	xorl	%edi, %edi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fintern
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -16(%rbp)
.LBB92_12:                              # %if.end
                                        #   in Loop: Header=BB92_3 Depth=1
	movq	-40(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB92_19
# BB#13:                                # %if.then.23
                                        #   in Loop: Header=BB92_3 Depth=1
	jmp	.LBB92_14
.LBB92_14:                              # %while.cond.24
                                        #   Parent Loop BB92_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -40(%rbp)
	movsbl	1(%rdx), %eax
	movl	%eax, -44(%rbp)
	cmpl	$0, %eax
	movb	%cl, -81(%rbp)          # 1-byte Spill
	je	.LBB92_16
# BB#15:                                # %land.rhs.28
                                        #   in Loop: Header=BB92_14 Depth=2
	movl	-44(%rbp), %edi
	callq	c_isspace
	movb	%al, -81(%rbp)          # 1-byte Spill
.LBB92_16:                              # %land.end.31
                                        #   in Loop: Header=BB92_14 Depth=2
	movb	-81(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB92_17
	jmp	.LBB92_18
.LBB92_17:                              # %while.body.32
                                        #   in Loop: Header=BB92_14 Depth=2
	jmp	.LBB92_14
.LBB92_18:                              # %while.end.33
                                        #   in Loop: Header=BB92_3 Depth=1
	jmp	.LBB92_19
.LBB92_19:                              # %if.end.34
                                        #   in Loop: Header=BB92_3 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB92_3
.LBB92_20:                              # %while.end.35
	movq	-16(%rbp), %rdi
	callq	Fnreverse
	movq	%rax, -16(%rbp)
.LBB92_21:                              # %if.end.37
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB92_24
# BB#22:                                # %land.lhs.true.41
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	Fequal
	xorl	%edi, %edi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB92_24
# BB#23:                                # %if.then.46
	jmp	.LBB92_35
.LBB92_24:                              # %if.end.47
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 232(%rax)
	je	.LBB92_26
# BB#25:                                # %if.then.49
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	free_all_realized_faces
.LBB92_26:                              # %if.end.51
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB92_28
# BB#27:                                # %cond.true
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB92_29
.LBB92_28:                              # %cond.false
	movq	-16(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB92_29:                              # %cond.end
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	font_update_drivers
	xorl	%edi, %edi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB92_33
# BB#30:                                # %if.then.60
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB92_32
# BB#31:                                # %if.then.64
	movabsq	$.L.str.19, %rdi
	movb	$0, %al
	callq	error
.LBB92_32:                              # %if.end.65
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	font_update_drivers
	movabsq	$.L.str.20, %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	error
.LBB92_33:                              # %if.end.67
	movl	$440, %edi              # imm = 0x1B8
	movq	-8(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdx
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	store_frame_param
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 232(%rax)
	je	.LBB92_35
# BB#34:                                # %if.then.73
	movl	$5, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movl	$439, %edi              # imm = 0x1B7
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fframe_parameter
	xorl	%edi, %edi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	-184(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	x_set_font
	movb	$1, face_change
	movl	$18, windows_or_buffers_changed
.LBB92_35:                              # %if.end.78
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end92:
	.size	x_set_font_backend, .Lfunc_end92-x_set_font_backend
	.cfi_endproc

	.globl	x_set_left_fringe
	.align	16, 0x90
	.type	x_set_left_fringe,@function
x_set_left_fringe:                      # @x_set_left_fringe
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp279:
	.cfi_def_cfa_offset 16
.Ltmp280:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp281:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	$-2147483647, %rax      # imm = 0xFFFFFFFF80000001
	movl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	movl	%ecx, %r8d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movl	364(%rdx), %ecx
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rdx
	movl	344(%rdx), %ecx
	movl	%ecx, -32(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	movq	%r8, %rdx
	callq	RANGED_INTEGERP
	testb	$1, %al
	jne	.LBB93_1
	jmp	.LBB93_5
.LBB93_1:                               # %cond.true
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jge	.LBB93_3
# BB#2:                                 # %cond.true.1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	sarq	$2, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB93_4
.LBB93_3:                               # %cond.false
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB93_4:                               # %cond.end
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB93_6
.LBB93_5:                               # %cond.false.4
	movl	$8, %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB93_6
.LBB93_6:                               # %cond.end.5
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	%eax, %ecx
	movl	%ecx, -36(%rbp)
	movl	-36(%rbp), %ecx
	cmpl	-32(%rbp), %ecx
	je	.LBB93_10
# BB#7:                                 # %if.then
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 344(%rcx)
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rcx
	addl	348(%rcx), %eax
	addl	-28(%rbp), %eax
	subl	$1, %eax
	cltd
	idivl	-28(%rbp)
	movq	-8(%rbp), %rcx
	movl	%eax, 352(%rcx)
	movq	-8(%rbp), %rcx
	movq	384(%rcx), %rcx
	cmpq	$0, 56(%rcx)
	je	.LBB93_9
# BB#8:                                 # %if.then.14
	movl	$608, %edi              # imm = 0x260
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	movl	$3, %ecx
	xorl	%r8d, %r8d
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movl	%edi, -68(%rbp)         # 4-byte Spill
	movq	%rdx, %rdi
	movl	-68(%rbp), %esi         # 4-byte Reload
	movl	-68(%rbp), %edx         # 4-byte Reload
	movq	%rax, %r9
	callq	adjust_frame_size
.LBB93_9:                               # %if.end
	movb	$1, frame_garbaged
	movq	-8(%rbp), %rdi
	callq	fset_redisplay
	movq	-8(%rbp), %rdi
	movq	208(%rdi), %rax
	andq	$-8193, %rax            # imm = 0xFFFFFFFFFFFFDFFF
	orq	$8192, %rax             # imm = 0x2000
	movq	%rax, 208(%rdi)
.LBB93_10:                              # %if.end.16
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end93:
	.size	x_set_left_fringe, .Lfunc_end93-x_set_left_fringe
	.cfi_endproc

	.globl	x_set_right_fringe
	.align	16, 0x90
	.type	x_set_right_fringe,@function
x_set_right_fringe:                     # @x_set_right_fringe
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp282:
	.cfi_def_cfa_offset 16
.Ltmp283:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp284:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	$-2147483647, %rax      # imm = 0xFFFFFFFF80000001
	movl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	movl	%ecx, %r8d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movl	364(%rdx), %ecx
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rdx
	movl	348(%rdx), %ecx
	movl	%ecx, -32(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	movq	%r8, %rdx
	callq	RANGED_INTEGERP
	testb	$1, %al
	jne	.LBB94_1
	jmp	.LBB94_5
.LBB94_1:                               # %cond.true
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jge	.LBB94_3
# BB#2:                                 # %cond.true.1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	sarq	$2, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB94_4
.LBB94_3:                               # %cond.false
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB94_4:                               # %cond.end
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB94_6
.LBB94_5:                               # %cond.false.4
	movl	$8, %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB94_6
.LBB94_6:                               # %cond.end.5
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	%eax, %ecx
	movl	%ecx, -36(%rbp)
	movl	-36(%rbp), %ecx
	cmpl	-32(%rbp), %ecx
	je	.LBB94_10
# BB#7:                                 # %if.then
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 348(%rcx)
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rcx
	addl	344(%rcx), %eax
	addl	-28(%rbp), %eax
	subl	$1, %eax
	cltd
	idivl	-28(%rbp)
	movq	-8(%rbp), %rcx
	movl	%eax, 352(%rcx)
	movq	-8(%rbp), %rcx
	movq	384(%rcx), %rcx
	cmpq	$0, 56(%rcx)
	je	.LBB94_9
# BB#8:                                 # %if.then.14
	movl	$814, %edi              # imm = 0x32E
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	movl	$3, %ecx
	xorl	%r8d, %r8d
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movl	%edi, -68(%rbp)         # 4-byte Spill
	movq	%rdx, %rdi
	movl	-68(%rbp), %esi         # 4-byte Reload
	movl	-68(%rbp), %edx         # 4-byte Reload
	movq	%rax, %r9
	callq	adjust_frame_size
.LBB94_9:                               # %if.end
	movb	$1, frame_garbaged
	movq	-8(%rbp), %rdi
	callq	fset_redisplay
	movq	-8(%rbp), %rdi
	movq	208(%rdi), %rax
	andq	$-8193, %rax            # imm = 0xFFFFFFFFFFFFDFFF
	orq	$8192, %rax             # imm = 0x2000
	movq	%rax, 208(%rdi)
.LBB94_10:                              # %if.end.16
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end94:
	.size	x_set_right_fringe, .Lfunc_end94-x_set_right_fringe
	.cfi_endproc

	.globl	x_set_border_width
	.align	16, 0x90
	.type	x_set_border_width,@function
x_set_border_width:                     # @x_set_border_width
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp285:
	.cfi_def_cfa_offset 16
.Ltmp286:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp287:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB95_2
.LBB95_2:                               # %do.body.1
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB95_4
# BB#3:                                 # %cond.true
	jmp	.LBB95_5
.LBB95_4:                               # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB95_5:                               # %cond.end
	movq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	movq	-16(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jg	.LBB95_7
# BB#6:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	jle	.LBB95_8
.LBB95_7:                               # %if.then
	movabsq	$-8589934590, %rsi      # imm = 0xFFFFFFFE00000002
	movabsq	$8589934590, %rdx       # imm = 0x1FFFFFFFE
	movq	-16(%rbp), %rdi
	callq	args_out_of_range_3
.LBB95_8:                               # %if.end
	jmp	.LBB95_9
.LBB95_9:                               # %do.end
	jmp	.LBB95_10
.LBB95_10:                              # %do.end.9
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	-8(%rbp), %rcx
	movslq	328(%rcx), %rcx
	cmpq	%rcx, %rax
	jne	.LBB95_12
# BB#11:                                # %if.then.14
	jmp	.LBB95_15
.LBB95_12:                              # %if.end.15
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 56(%rax)
	je	.LBB95_14
# BB#13:                                # %if.then.18
	movabsq	$.L.str.21, %rdi
	movb	$0, %al
	callq	error
.LBB95_14:                              # %if.end.19
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 328(%rax)
.LBB95_15:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end95:
	.size	x_set_border_width, .Lfunc_end95-x_set_border_width
	.cfi_endproc

	.globl	x_set_right_divider_width
	.align	16, 0x90
	.type	x_set_right_divider_width,@function
x_set_right_divider_width:              # @x_set_right_divider_width
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp288:
	.cfi_def_cfa_offset 16
.Ltmp289:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp290:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movl	336(%rdx), %eax
	movl	%eax, -28(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB96_2
.LBB96_2:                               # %do.body.1
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB96_4
# BB#3:                                 # %cond.true
	jmp	.LBB96_5
.LBB96_4:                               # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB96_5:                               # %cond.end
	movq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	movq	-16(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jg	.LBB96_7
# BB#6:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	jle	.LBB96_8
.LBB96_7:                               # %if.then
	movabsq	$-8589934590, %rsi      # imm = 0xFFFFFFFE00000002
	movabsq	$8589934590, %rdx       # imm = 0x1FFFFFFFE
	movq	-16(%rbp), %rdi
	callq	args_out_of_range_3
.LBB96_8:                               # %if.end
	jmp	.LBB96_9
.LBB96_9:                               # %do.end
	jmp	.LBB96_10
.LBB96_10:                              # %do.end.9
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 336(%rax)
	movq	-8(%rbp), %rax
	cmpl	$0, 336(%rax)
	jge	.LBB96_12
# BB#11:                                # %if.then.16
	movq	-8(%rbp), %rax
	movl	$0, 336(%rax)
.LBB96_12:                              # %if.end.18
	movq	-8(%rbp), %rax
	movl	336(%rax), %ecx
	cmpl	-28(%rbp), %ecx
	je	.LBB96_14
# BB#13:                                # %if.then.22
	movl	$813, %edi              # imm = 0x32D
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	movl	$4, %ecx
	xorl	%r8d, %r8d
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	%edi, -52(%rbp)         # 4-byte Spill
	movq	%rdx, %rdi
	movl	-52(%rbp), %esi         # 4-byte Reload
	movl	-52(%rbp), %edx         # 4-byte Reload
	movq	%rax, %r9
	callq	adjust_frame_size
	movq	-8(%rbp), %rdi
	callq	adjust_frame_glyphs
	movb	$1, frame_garbaged
	movq	-8(%rbp), %rdi
	callq	fset_redisplay
	movq	-8(%rbp), %rax
	movq	208(%rax), %rdi
	andq	$-8193, %rdi            # imm = 0xFFFFFFFFFFFFDFFF
	orq	$8192, %rdi             # imm = 0x2000
	movq	%rdi, 208(%rax)
.LBB96_14:                              # %if.end.24
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end96:
	.size	x_set_right_divider_width, .Lfunc_end96-x_set_right_divider_width
	.cfi_endproc

	.globl	x_set_bottom_divider_width
	.align	16, 0x90
	.type	x_set_bottom_divider_width,@function
x_set_bottom_divider_width:             # @x_set_bottom_divider_width
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp291:
	.cfi_def_cfa_offset 16
.Ltmp292:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp293:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movl	340(%rdx), %eax
	movl	%eax, -28(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB97_2
.LBB97_2:                               # %do.body.1
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB97_4
# BB#3:                                 # %cond.true
	jmp	.LBB97_5
.LBB97_4:                               # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB97_5:                               # %cond.end
	movq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	movq	-16(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jg	.LBB97_7
# BB#6:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	jle	.LBB97_8
.LBB97_7:                               # %if.then
	movabsq	$-8589934590, %rsi      # imm = 0xFFFFFFFE00000002
	movabsq	$8589934590, %rdx       # imm = 0x1FFFFFFFE
	movq	-16(%rbp), %rdi
	callq	args_out_of_range_3
.LBB97_8:                               # %if.end
	jmp	.LBB97_9
.LBB97_9:                               # %do.end
	jmp	.LBB97_10
.LBB97_10:                              # %do.end.9
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 340(%rax)
	movq	-8(%rbp), %rax
	cmpl	$0, 340(%rax)
	jge	.LBB97_12
# BB#11:                                # %if.then.16
	movq	-8(%rbp), %rax
	movl	$0, 340(%rax)
.LBB97_12:                              # %if.end.18
	movq	-8(%rbp), %rax
	movl	340(%rax), %ecx
	cmpl	-28(%rbp), %ecx
	je	.LBB97_14
# BB#13:                                # %if.then.22
	movl	$215, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	movl	$4, %ecx
	xorl	%r8d, %r8d
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	%edi, -52(%rbp)         # 4-byte Spill
	movq	%rdx, %rdi
	movl	-52(%rbp), %esi         # 4-byte Reload
	movl	-52(%rbp), %edx         # 4-byte Reload
	movq	%rax, %r9
	callq	adjust_frame_size
	movq	-8(%rbp), %rdi
	callq	adjust_frame_glyphs
	movb	$1, frame_garbaged
	movq	-8(%rbp), %rdi
	callq	fset_redisplay
	movq	-8(%rbp), %rax
	movq	208(%rax), %rdi
	andq	$-8193, %rdi            # imm = 0xFFFFFFFFFFFFDFFF
	orq	$8192, %rdi             # imm = 0x2000
	movq	%rdi, 208(%rax)
.LBB97_14:                              # %if.end.24
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end97:
	.size	x_set_bottom_divider_width, .Lfunc_end97-x_set_bottom_divider_width
	.cfi_endproc

	.globl	x_set_visibility
	.align	16, 0x90
	.type	x_set_visibility,@function
x_set_visibility:                       # @x_set_visibility
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp294:
	.cfi_def_cfa_offset 16
.Ltmp295:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp296:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movl	$5, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, %rdi
	movl	%eax, %esi
	callq	make_lisp_ptr
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB98_2
# BB#1:                                 # %if.then
	movl	$901, %edi              # imm = 0x385
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fmake_frame_invisible
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB98_6
.LBB98_2:                               # %if.else
	movl	$528, %edi              # imm = 0x210
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB98_4
# BB#3:                                 # %if.then.6
	movq	-32(%rbp), %rdi
	callq	Ficonify_frame
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB98_5
.LBB98_4:                               # %if.else.8
	movq	-32(%rbp), %rdi
	callq	Fmake_frame_visible
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB98_5:                               # %if.end
	jmp	.LBB98_6
.LBB98_6:                               # %if.end.10
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end98:
	.size	x_set_visibility, .Lfunc_end98-x_set_visibility
	.cfi_endproc

	.globl	x_set_autoraise
	.align	16, 0x90
	.type	x_set_autoraise,@function
x_set_autoraise:                        # @x_set_autoraise
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp297:
	.cfi_def_cfa_offset 16
.Ltmp298:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp299:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	cmpq	-16(%rbp), %rax
	sete	%cl
	xorb	$-1, %cl
	movq	-8(%rbp), %rax
	andb	$1, %cl
	movzbl	%cl, %edi
	movl	%edi, %edx
	movq	208(%rax), %rsi
	shlq	$15, %rdx
	andq	$-32769, %rsi           # imm = 0xFFFFFFFFFFFF7FFF
	orq	%rdx, %rsi
	movq	%rsi, 208(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end99:
	.size	x_set_autoraise, .Lfunc_end99-x_set_autoraise
	.cfi_endproc

	.globl	x_set_autolower
	.align	16, 0x90
	.type	x_set_autolower,@function
x_set_autolower:                        # @x_set_autolower
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp300:
	.cfi_def_cfa_offset 16
.Ltmp301:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp302:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	cmpq	-16(%rbp), %rax
	sete	%cl
	xorb	$-1, %cl
	movq	-8(%rbp), %rax
	andb	$1, %cl
	movzbl	%cl, %edi
	movl	%edi, %edx
	movq	208(%rax), %rsi
	shlq	$16, %rdx
	andq	$-65537, %rsi           # imm = 0xFFFFFFFFFFFEFFFF
	orq	%rdx, %rsi
	movq	%rsi, 208(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end100:
	.size	x_set_autolower, .Lfunc_end100-x_set_autolower
	.cfi_endproc

	.globl	x_set_unsplittable
	.align	16, 0x90
	.type	x_set_unsplittable,@function
x_set_unsplittable:                     # @x_set_unsplittable
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp303:
	.cfi_def_cfa_offset 16
.Ltmp304:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp305:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movl	%eax, %edi
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	sete	%cl
	xorb	$-1, %cl
	movq	-8(%rbp), %rax
	andb	$1, %cl
	movzbl	%cl, %edi
	movl	%edi, %esi
	movq	208(%rax), %r8
	shlq	$17, %rsi
	andq	$-131073, %r8           # imm = 0xFFFFFFFFFFFDFFFF
	orq	%rsi, %r8
	movq	%r8, 208(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end101:
	.size	x_set_unsplittable, .Lfunc_end101-x_set_unsplittable
	.cfi_endproc

	.globl	x_set_vertical_scroll_bars
	.align	16, 0x90
	.type	x_set_vertical_scroll_bars,@function
x_set_vertical_scroll_bars:             # @x_set_vertical_scroll_bars
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp306:
	.cfi_def_cfa_offset 16
.Ltmp307:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp308:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movl	$607, %eax              # imm = 0x25F
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movl	%eax, %edi
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB102_2
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$30, %rax
	andq	$3, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	je	.LBB102_8
.LBB102_2:                              # %lor.lhs.false
	movl	$811, %edi              # imm = 0x32B
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB102_4
# BB#3:                                 # %land.lhs.true.4
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$30, %rax
	andq	$3, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	je	.LBB102_8
.LBB102_4:                              # %lor.lhs.false.11
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB102_6
# BB#5:                                 # %land.lhs.true.14
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$30, %rax
	andq	$3, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB102_8
.LBB102_6:                              # %lor.lhs.false.21
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB102_23
# BB#7:                                 # %land.lhs.true.24
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$30, %rax
	andq	$3, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB102_23
.LBB102_8:                              # %if.then
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB102_10
# BB#9:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB102_20
.LBB102_10:                             # %cond.false
	movl	$607, %edi              # imm = 0x25F
	callq	builtin_lisp_symbol
	cmpq	-16(%rbp), %rax
	jne	.LBB102_12
# BB#11:                                # %cond.true.35
	movl	$1, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jmp	.LBB102_19
.LBB102_12:                             # %cond.false.36
	movl	$811, %edi              # imm = 0x32B
	callq	builtin_lisp_symbol
	cmpq	-16(%rbp), %rax
	jne	.LBB102_14
# BB#13:                                # %cond.true.39
	movl	$2, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB102_18
.LBB102_14:                             # %cond.false.40
	movl	$607, %edi              # imm = 0x25F
	callq	builtin_lisp_symbol
	cmpq	globals+488, %rax
	jne	.LBB102_16
# BB#15:                                # %cond.true.43
	movl	$1, %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	jmp	.LBB102_17
.LBB102_16:                             # %cond.false.44
	movl	$811, %edi              # imm = 0x32B
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	$2, %ecx
	cmpq	globals+488, %rax
	cmovel	%ecx, %edi
	movl	%edi, -80(%rbp)         # 4-byte Spill
.LBB102_17:                             # %cond.end
	movl	-80(%rbp), %eax         # 4-byte Reload
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB102_18:                             # %cond.end.48
	movl	-76(%rbp), %eax         # 4-byte Reload
	movl	%eax, -72(%rbp)         # 4-byte Spill
.LBB102_19:                             # %cond.end.50
	movl	-72(%rbp), %eax         # 4-byte Reload
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB102_20:                             # %cond.end.52
	movl	-68(%rbp), %eax         # 4-byte Reload
	movq	-8(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	movq	208(%rcx), %rsi
	andq	$3, %rdx
	shlq	$30, %rdx
	movabsq	$-3221225473, %rdi      # imm = 0xFFFFFFFF3FFFFFFF
	andq	%rdi, %rsi
	orq	%rdx, %rsi
	movq	%rsi, 208(%rcx)
	movq	-8(%rbp), %rcx
	movq	384(%rcx), %rcx
	cmpq	$0, 56(%rcx)
	je	.LBB102_22
# BB#21:                                # %if.then.57
	movl	$1003, %edi             # imm = 0x3EB
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	movl	$3, %ecx
	xorl	%r8d, %r8d
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movl	%edi, -92(%rbp)         # 4-byte Spill
	movq	%rdx, %rdi
	movl	-92(%rbp), %esi         # 4-byte Reload
	movl	-92(%rbp), %edx         # 4-byte Reload
	movq	%rax, %r9
	callq	adjust_frame_size
.LBB102_22:                             # %if.end
	movb	$1, frame_garbaged
	movq	-8(%rbp), %rdi
	callq	fset_redisplay
	movq	-8(%rbp), %rdi
	movq	208(%rdi), %rax
	andq	$-8193, %rax            # imm = 0xFFFFFFFFFFFFDFFF
	orq	$8192, %rax             # imm = 0x2000
	movq	%rax, 208(%rdi)
.LBB102_23:                             # %if.end.62
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end102:
	.size	x_set_vertical_scroll_bars, .Lfunc_end102-x_set_vertical_scroll_bars
	.cfi_endproc

	.globl	x_set_horizontal_scroll_bars
	.align	16, 0x90
	.type	x_set_horizontal_scroll_bars,@function
x_set_horizontal_scroll_bars:           # @x_set_horizontal_scroll_bars
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp309:
	.cfi_def_cfa_offset 16
.Ltmp310:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp311:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movl	%eax, %edi
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB103_2
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$32, %rax
	andq	$1, %rax
	testq	$1, %rax
	jne	.LBB103_4
.LBB103_2:                              # %lor.lhs.false
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB103_7
# BB#3:                                 # %land.lhs.true.3
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$32, %rax
	andq	$1, %rax
	testq	$1, %rax
	jne	.LBB103_7
.LBB103_4:                              # %if.then
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$1, %edi
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	cmovel	%ecx, %edi
	cmpl	$0, %edi
	setne	%sil
	movq	-8(%rbp), %rax
	andb	$1, %sil
	movzbl	%sil, %ecx
	movl	%ecx, %r8d
	movq	208(%rax), %r9
	shlq	$32, %r8
	movabsq	$-4294967297, %r10      # imm = 0xFFFFFFFEFFFFFFFF
	andq	%r10, %r9
	orq	%r8, %r9
	movq	%r9, 208(%rax)
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 56(%rax)
	je	.LBB103_6
# BB#5:                                 # %if.then.16
	movl	$525, %edi              # imm = 0x20D
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	movl	$3, %ecx
	xorl	%r8d, %r8d
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movl	%edi, -60(%rbp)         # 4-byte Spill
	movq	%rdx, %rdi
	movl	-60(%rbp), %esi         # 4-byte Reload
	movl	-60(%rbp), %edx         # 4-byte Reload
	movq	%rax, %r9
	callq	adjust_frame_size
.LBB103_6:                              # %if.end
	movb	$1, frame_garbaged
	movq	-8(%rbp), %rdi
	callq	fset_redisplay
	movq	-8(%rbp), %rdi
	movq	208(%rdi), %rax
	andq	$-8193, %rax            # imm = 0xFFFFFFFFFFFFDFFF
	orq	$8192, %rax             # imm = 0x2000
	movq	%rax, 208(%rdi)
.LBB103_7:                              # %if.end.21
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end103:
	.size	x_set_horizontal_scroll_bars, .Lfunc_end103-x_set_horizontal_scroll_bars
	.cfi_endproc

	.globl	x_set_scroll_bar_width
	.align	16, 0x90
	.type	x_set_scroll_bar_width,@function
x_set_scroll_bar_width:                 # @x_set_scroll_bar_width
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp312:
	.cfi_def_cfa_offset 16
.Ltmp313:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp314:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movl	364(%rdx), %ecx
	movl	%ecx, -28(%rbp)
	movq	-16(%rbp), %rdx
	movl	%eax, %edi
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB104_4
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	x_set_scroll_bar_default_width
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	cmpq	$0, 56(%rdi)
	je	.LBB104_3
# BB#2:                                 # %if.then.1
	movl	$835, %edi              # imm = 0x343
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	movl	$3, %ecx
	xorl	%r8d, %r8d
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	%edi, -52(%rbp)         # 4-byte Spill
	movq	%rdx, %rdi
	movl	-52(%rbp), %esi         # 4-byte Reload
	movl	-52(%rbp), %edx         # 4-byte Reload
	movq	%rax, %r9
	callq	adjust_frame_size
.LBB104_3:                              # %if.end
	movb	$1, frame_garbaged
	movq	-8(%rbp), %rdi
	callq	fset_redisplay
	movq	-8(%rbp), %rdi
	movq	208(%rdi), %rax
	andq	$-8193, %rax            # imm = 0xFFFFFFFFFFFFDFFF
	orq	$8192, %rax             # imm = 0x2000
	movq	%rax, 208(%rdi)
	jmp	.LBB104_10
.LBB104_4:                              # %if.else
	movl	$1, %eax
	movl	%eax, %edi
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %edx
	movq	-16(%rbp), %rsi
	callq	RANGED_INTEGERP
	testb	$1, %al
	jne	.LBB104_5
	jmp	.LBB104_9
.LBB104_5:                              # %land.lhs.true
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	-8(%rbp), %rcx
	movslq	420(%rcx), %rcx
	cmpq	%rcx, %rax
	je	.LBB104_9
# BB#6:                                 # %if.then.6
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 420(%rax)
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movslq	-28(%rbp), %rdx
	addq	%rdx, %rax
	subq	$1, %rax
	movslq	-28(%rbp), %rdx
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	cqto
	movq	-64(%rbp), %rsi         # 8-byte Reload
	idivq	%rsi
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 424(%rax)
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 56(%rax)
	je	.LBB104_8
# BB#7:                                 # %if.then.18
	movl	$835, %edi              # imm = 0x343
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	movl	$3, %ecx
	xorl	%r8d, %r8d
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movl	%edi, -76(%rbp)         # 4-byte Spill
	movq	%rdx, %rdi
	movl	-76(%rbp), %esi         # 4-byte Reload
	movl	-76(%rbp), %edx         # 4-byte Reload
	movq	%rax, %r9
	callq	adjust_frame_size
.LBB104_8:                              # %if.end.20
	movb	$1, frame_garbaged
	movq	-8(%rbp), %rdi
	callq	fset_redisplay
	movq	-8(%rbp), %rdi
	movq	208(%rdi), %rax
	andq	$-8193, %rax            # imm = 0xFFFFFFFFFFFFDFFF
	orq	$8192, %rax             # imm = 0x2000
	movq	%rax, 208(%rdi)
.LBB104_9:                              # %if.end.25
	jmp	.LBB104_10
.LBB104_10:                             # %if.end.26
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	XWINDOW
	movl	$0, 360(%rax)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	XWINDOW
	movl	$0, 352(%rax)
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end104:
	.size	x_set_scroll_bar_width, .Lfunc_end104-x_set_scroll_bar_width
	.cfi_endproc

	.globl	x_set_scroll_bar_height
	.align	16, 0x90
	.type	x_set_scroll_bar_height,@function
x_set_scroll_bar_height:                # @x_set_scroll_bar_height
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp315:
	.cfi_def_cfa_offset 16
.Ltmp316:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp317:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movl	368(%rdx), %ecx
	movl	%ecx, -28(%rbp)
	movq	-16(%rbp), %rdx
	movl	%eax, %edi
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB105_4
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	x_set_scroll_bar_default_height
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	cmpq	$0, 56(%rdi)
	je	.LBB105_3
# BB#2:                                 # %if.then.1
	movl	$833, %edi              # imm = 0x341
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	movl	$3, %ecx
	xorl	%r8d, %r8d
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	%edi, -52(%rbp)         # 4-byte Spill
	movq	%rdx, %rdi
	movl	-52(%rbp), %esi         # 4-byte Reload
	movl	-52(%rbp), %edx         # 4-byte Reload
	movq	%rax, %r9
	callq	adjust_frame_size
.LBB105_3:                              # %if.end
	movb	$1, frame_garbaged
	movq	-8(%rbp), %rdi
	callq	fset_redisplay
	movq	-8(%rbp), %rdi
	movq	208(%rdi), %rax
	andq	$-8193, %rax            # imm = 0xFFFFFFFFFFFFDFFF
	orq	$8192, %rax             # imm = 0x2000
	movq	%rax, 208(%rdi)
	jmp	.LBB105_10
.LBB105_4:                              # %if.else
	movl	$1, %eax
	movl	%eax, %edi
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %edx
	movq	-16(%rbp), %rsi
	callq	RANGED_INTEGERP
	testb	$1, %al
	jne	.LBB105_5
	jmp	.LBB105_9
.LBB105_5:                              # %land.lhs.true
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	-8(%rbp), %rcx
	movslq	428(%rcx), %rcx
	cmpq	%rcx, %rax
	je	.LBB105_9
# BB#6:                                 # %if.then.6
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 428(%rax)
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movslq	-28(%rbp), %rdx
	addq	%rdx, %rax
	subq	$1, %rax
	movslq	-28(%rbp), %rdx
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	cqto
	movq	-64(%rbp), %rsi         # 8-byte Reload
	idivq	%rsi
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 432(%rax)
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 56(%rax)
	je	.LBB105_8
# BB#7:                                 # %if.then.18
	movl	$833, %edi              # imm = 0x341
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	movl	$3, %ecx
	xorl	%r8d, %r8d
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movl	%edi, -76(%rbp)         # 4-byte Spill
	movq	%rdx, %rdi
	movl	-76(%rbp), %esi         # 4-byte Reload
	movl	-76(%rbp), %edx         # 4-byte Reload
	movq	%rax, %r9
	callq	adjust_frame_size
.LBB105_8:                              # %if.end.20
	movb	$1, frame_garbaged
	movq	-8(%rbp), %rdi
	callq	fset_redisplay
	movq	-8(%rbp), %rdi
	movq	208(%rdi), %rax
	andq	$-8193, %rax            # imm = 0xFFFFFFFFFFFFDFFF
	orq	$8192, %rax             # imm = 0x2000
	movq	%rax, 208(%rdi)
.LBB105_9:                              # %if.end.25
	jmp	.LBB105_10
.LBB105_10:                             # %if.end.26
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	XWINDOW
	movl	$0, 364(%rax)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	XWINDOW
	movl	$0, 356(%rax)
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end105:
	.size	x_set_scroll_bar_height, .Lfunc_end105-x_set_scroll_bar_height
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI106_0:
	.quad	4607182418800017408     # double 1
.LCPI106_1:
	.quad	4636737291354636288     # double 100
.LCPI106_2:
	.quad	-4616189618054758400    # double -1
	.text
	.globl	x_set_alpha
	.align	16, 0x90
	.type	x_set_alpha,@function
x_set_alpha:                            # @x_set_alpha
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp318:
	.cfi_def_cfa_offset 16
.Ltmp319:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp320:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movsd	.LCPI106_0, %xmm0       # xmm0 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movl	$0, -52(%rbp)
.LBB106_1:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$2, -52(%rbp)
	jge	.LBB106_22
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB106_1 Depth=1
	movsd	.LCPI106_0, %xmm0       # xmm0 = mem[0],zero
	movslq	-52(%rbp), %rax
	movsd	%xmm0, -48(%rbp,%rax,8)
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB106_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB106_1 Depth=1
	movq	-16(%rbp), %rdi
	callq	CAR
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rdi
	callq	CDR
	movq	%rax, -16(%rbp)
	jmp	.LBB106_5
.LBB106_4:                              # %if.else
                                        #   in Loop: Header=BB106_1 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
.LBB106_5:                              # %if.end
                                        #   in Loop: Header=BB106_1 Depth=1
	xorl	%edi, %edi
	movq	-64(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB106_7
# BB#6:                                 # %if.then.7
                                        #   in Loop: Header=BB106_1 Depth=1
	movsd	.LCPI106_2, %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	jmp	.LBB106_20
.LBB106_7:                              # %if.else.8
                                        #   in Loop: Header=BB106_1 Depth=1
	movq	-64(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$7, %ecx
	jne	.LBB106_12
# BB#8:                                 # %if.then.13
                                        #   in Loop: Header=BB106_1 Depth=1
	movq	-64(%rbp), %rdi
	callq	XFLOAT_DATA
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -32(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jb	.LBB106_10
# BB#9:                                 # %land.lhs.true
                                        #   in Loop: Header=BB106_1 Depth=1
	movsd	.LCPI106_0, %xmm0       # xmm0 = mem[0],zero
	ucomisd	-32(%rbp), %xmm0
	jae	.LBB106_11
.LBB106_10:                             # %if.then.19
	xorps	%xmm0, %xmm0
	callq	make_float
	movsd	.LCPI106_0, %xmm0       # xmm0 = mem[0],zero
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	make_float
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	args_out_of_range
.LBB106_11:                             # %if.end.22
                                        #   in Loop: Header=BB106_1 Depth=1
	jmp	.LBB106_19
.LBB106_12:                             # %if.else.23
                                        #   in Loop: Header=BB106_1 Depth=1
	movq	-64(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB106_17
# BB#13:                                # %if.then.29
                                        #   in Loop: Header=BB106_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-64(%rbp), %rdx
	sarq	$2, %rdx
	movq	%rdx, -72(%rbp)
	cmpq	-72(%rbp), %rcx
	jg	.LBB106_15
# BB#14:                                # %land.lhs.true.32
                                        #   in Loop: Header=BB106_1 Depth=1
	movsd	.LCPI106_1, %xmm0       # xmm0 = mem[0],zero
	ucomisd	-32(%rbp), %xmm0
	jae	.LBB106_16
.LBB106_15:                             # %if.then.35
	movl	$2, %eax
	movl	%eax, %edi
	movl	$402, %eax              # imm = 0x192
	movl	%eax, %esi
	callq	args_out_of_range
.LBB106_16:                             # %if.end.36
                                        #   in Loop: Header=BB106_1 Depth=1
	movsd	.LCPI106_1, %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdq	-72(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -32(%rbp)
	jmp	.LBB106_18
.LBB106_17:                             # %if.else.38
	movl	$711, %edi              # imm = 0x2C7
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB106_18:                             # %if.end.40
                                        #   in Loop: Header=BB106_1 Depth=1
	jmp	.LBB106_19
.LBB106_19:                             # %if.end.41
                                        #   in Loop: Header=BB106_1 Depth=1
	jmp	.LBB106_20
.LBB106_20:                             # %if.end.42
                                        #   in Loop: Header=BB106_1 Depth=1
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-52(%rbp), %rax
	movsd	%xmm0, -48(%rbp,%rax,8)
# BB#21:                                # %for.inc
                                        #   in Loop: Header=BB106_1 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB106_1
.LBB106_22:                             # %for.end
	movl	$0, -52(%rbp)
.LBB106_23:                             # %for.cond.45
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$2, -52(%rbp)
	jge	.LBB106_26
# BB#24:                                # %for.body.48
                                        #   in Loop: Header=BB106_23 Depth=1
	movslq	-52(%rbp), %rax
	movsd	-48(%rbp,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movslq	-52(%rbp), %rax
	movq	-8(%rbp), %rcx
	movsd	%xmm0, 440(%rcx,%rax,8)
# BB#25:                                # %for.inc.54
                                        #   in Loop: Header=BB106_23 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB106_23
.LBB106_26:                             # %for.end.56
	callq	block_input
	movq	-8(%rbp), %rdi
	callq	x_set_frame_alpha
	callq	unblock_input
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end106:
	.size	x_set_alpha, .Lfunc_end106-x_set_alpha
	.cfi_endproc

	.globl	x_mouse_grabbed
	.align	16, 0x90
	.type	x_mouse_grabbed,@function
x_mouse_grabbed:                        # @x_mouse_grabbed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp321:
	.cfi_def_cfa_offset 16
.Ltmp322:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp323:
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	movb	%al, %cl
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$0, 92(%rdi)
	movb	%cl, -9(%rbp)           # 1-byte Spill
	je	.LBB107_3
# BB#1:                                 # %land.lhs.true
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	cmpq	$0, 632(%rdx)
	movb	%cl, -9(%rbp)           # 1-byte Spill
	je	.LBB107_3
# BB#2:                                 # %land.rhs
	movq	-8(%rbp), %rax
	movq	632(%rax), %rax
	cmpq	$0, 376(%rax)
	setne	%cl
	movb	%cl, -9(%rbp)           # 1-byte Spill
.LBB107_3:                              # %land.end
	movb	-9(%rbp), %al           # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end107:
	.size	x_mouse_grabbed, .Lfunc_end107-x_mouse_grabbed
	.cfi_endproc

	.globl	x_redo_mouse_highlight
	.align	16, 0x90
	.type	x_redo_mouse_highlight,@function
x_redo_mouse_highlight:                 # @x_redo_mouse_highlight
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp324:
	.cfi_def_cfa_offset 16
.Ltmp325:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp326:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 648(%rdi)
	je	.LBB108_3
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movq	648(%rax), %rax
	cmpq	$0, 376(%rax)
	je	.LBB108_3
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	648(%rax), %rdi
	movq	-8(%rbp), %rax
	movl	672(%rax), %esi
	movq	-8(%rbp), %rax
	movl	676(%rax), %edx
	callq	note_mouse_highlight
.LBB108_3:                              # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end108:
	.size	x_redo_mouse_highlight, .Lfunc_end108-x_redo_mouse_highlight
	.cfi_endproc

	.globl	validate_x_resource_name
	.align	16, 0x90
	.type	validate_x_resource_name,@function
validate_x_resource_name:               # @validate_x_resource_name
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp327:
	.cfi_def_cfa_offset 16
.Ltmp328:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp329:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	globals+2848, %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB109_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.22, %rdi
	callq	build_string
	movq	%rax, globals+2848
.LBB109_2:                              # %if.end
	movq	globals+2856, %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB109_3
	jmp	.LBB109_18
.LBB109_3:                              # %if.then.3
	movq	globals+2856, %rdi
	callq	SDATA
	movq	%rax, -48(%rbp)
	movq	globals+2856, %rdi
	callq	SBYTES
	movq	%rax, -8(%rbp)
	movq	$0, -40(%rbp)
.LBB109_4:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jge	.LBB109_17
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB109_4 Depth=1
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, -52(%rbp)
	cmpl	$97, -52(%rbp)
	jl	.LBB109_7
# BB#6:                                 # %land.lhs.true
                                        #   in Loop: Header=BB109_4 Depth=1
	cmpl	$122, -52(%rbp)
	jle	.LBB109_14
.LBB109_7:                              # %lor.lhs.false
                                        #   in Loop: Header=BB109_4 Depth=1
	cmpl	$65, -52(%rbp)
	jl	.LBB109_9
# BB#8:                                 # %land.lhs.true.12
                                        #   in Loop: Header=BB109_4 Depth=1
	cmpl	$90, -52(%rbp)
	jle	.LBB109_14
.LBB109_9:                              # %lor.lhs.false.15
                                        #   in Loop: Header=BB109_4 Depth=1
	cmpl	$48, -52(%rbp)
	jl	.LBB109_11
# BB#10:                                # %land.lhs.true.18
                                        #   in Loop: Header=BB109_4 Depth=1
	cmpl	$57, -52(%rbp)
	jle	.LBB109_14
.LBB109_11:                             # %lor.lhs.false.21
                                        #   in Loop: Header=BB109_4 Depth=1
	cmpl	$45, -52(%rbp)
	je	.LBB109_14
# BB#12:                                # %lor.lhs.false.24
                                        #   in Loop: Header=BB109_4 Depth=1
	cmpl	$95, -52(%rbp)
	je	.LBB109_14
# BB#13:                                # %if.then.27
                                        #   in Loop: Header=BB109_4 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB109_15
.LBB109_14:                             # %if.else
                                        #   in Loop: Header=BB109_4 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
.LBB109_15:                             # %if.end.29
                                        #   in Loop: Header=BB109_4 Depth=1
	jmp	.LBB109_16
.LBB109_16:                             # %for.inc
                                        #   in Loop: Header=BB109_4 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB109_4
.LBB109_17:                             # %for.end
	jmp	.LBB109_19
.LBB109_18:                             # %if.else.31
	movq	$5, -24(%rbp)
	movq	$0, -16(%rbp)
.LBB109_19:                             # %if.end.32
	cmpq	$0, -24(%rbp)
	jne	.LBB109_21
# BB#20:                                # %if.then.35
	jmp	.LBB109_37
.LBB109_21:                             # %if.end.36
	cmpq	$2, -16(%rbp)
	jl	.LBB109_23
# BB#22:                                # %lor.lhs.false.39
	movl	$16369, %eax            # imm = 0x3FF1
	movl	%eax, %ecx
	cmpq	-8(%rbp), %rcx
	jae	.LBB109_24
.LBB109_23:                             # %if.then.42
	movabsq	$.L.str.23, %rdi
	callq	build_string
	movq	%rax, globals+2856
	jmp	.LBB109_37
.LBB109_24:                             # %if.end.44
	movq	globals+2856, %rdi
	callq	Fcopy_sequence
	movq	%rax, -32(%rbp)
	movq	%rax, globals+2856
	movq	$0, -40(%rbp)
.LBB109_25:                             # %for.cond.46
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jge	.LBB109_37
# BB#26:                                # %for.body.49
                                        #   in Loop: Header=BB109_25 Depth=1
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	SREF
	movzbl	%al, %ecx
	movl	%ecx, -56(%rbp)
	cmpl	$97, -56(%rbp)
	jl	.LBB109_28
# BB#27:                                # %land.lhs.true.55
                                        #   in Loop: Header=BB109_25 Depth=1
	cmpl	$122, -56(%rbp)
	jle	.LBB109_35
.LBB109_28:                             # %lor.lhs.false.58
                                        #   in Loop: Header=BB109_25 Depth=1
	cmpl	$65, -56(%rbp)
	jl	.LBB109_30
# BB#29:                                # %land.lhs.true.61
                                        #   in Loop: Header=BB109_25 Depth=1
	cmpl	$90, -56(%rbp)
	jle	.LBB109_35
.LBB109_30:                             # %lor.lhs.false.64
                                        #   in Loop: Header=BB109_25 Depth=1
	cmpl	$48, -56(%rbp)
	jl	.LBB109_32
# BB#31:                                # %land.lhs.true.67
                                        #   in Loop: Header=BB109_25 Depth=1
	cmpl	$57, -56(%rbp)
	jle	.LBB109_35
.LBB109_32:                             # %lor.lhs.false.70
                                        #   in Loop: Header=BB109_25 Depth=1
	cmpl	$45, -56(%rbp)
	je	.LBB109_35
# BB#33:                                # %lor.lhs.false.73
                                        #   in Loop: Header=BB109_25 Depth=1
	cmpl	$95, -56(%rbp)
	je	.LBB109_35
# BB#34:                                # %if.then.76
                                        #   in Loop: Header=BB109_25 Depth=1
	movl	$95, %edx
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	SSET
.LBB109_35:                             # %if.end.77
                                        #   in Loop: Header=BB109_25 Depth=1
	jmp	.LBB109_36
.LBB109_36:                             # %for.inc.78
                                        #   in Loop: Header=BB109_25 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB109_25
.LBB109_37:                             # %for.end.80
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end109:
	.size	validate_x_resource_name, .Lfunc_end109-validate_x_resource_name
	.cfi_endproc

	.globl	Fx_get_resource
	.align	16, 0x90
	.type	Fx_get_resource,@function
Fx_get_resource:                        # @Fx_get_resource
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp330:
	.cfi_def_cfa_offset 16
.Ltmp331:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp332:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%eax, %eax
	movl	%eax, %r8d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, %rdi
	callq	check_window_system
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	check_x_display_info
	movq	160(%rax), %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %r8
	callq	xrdb_get_resource
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end110:
	.size	Fx_get_resource, .Lfunc_end110-Fx_get_resource
	.cfi_endproc

	.align	16, 0x90
	.type	xrdb_get_resource,@function
xrdb_get_resource:                      # @xrdb_get_resource
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp333:
	.cfi_def_cfa_offset 16
.Ltmp334:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp335:
	.cfi_def_cfa_register %rbp
	subq	$272, %rsp              # imm = 0x110
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	-24(%rbp), %rdi
	callq	CHECK_STRING
	movq	-32(%rbp), %rdi
	callq	CHECK_STRING
	xorl	%edi, %edi
	movq	-40(%rbp), %rcx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB111_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rdi
	callq	CHECK_STRING
.LBB111_2:                              # %if.end
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB111_4
# BB#3:                                 # %if.then.3
	movq	-48(%rbp), %rdi
	callq	CHECK_STRING
.LBB111_4:                              # %if.end.4
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-152(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movq	-48(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movl	%esi, -164(%rbp)        # 4-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movl	-164(%rbp), %edi        # 4-byte Reload
	cmpl	%esi, %edi
	je	.LBB111_6
# BB#5:                                 # %if.then.12
	movabsq	$.L.str.69, %rdi
	movb	$0, %al
	callq	error
.LBB111_6:                              # %if.end.13
	callq	validate_x_resource_name
	movq	globals+2856, %rdi
	callq	SBYTES
	movq	-40(%rbp), %rdi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	STRINGP
	testb	$1, %al
	jne	.LBB111_7
	jmp	.LBB111_8
.LBB111_7:                              # %cond.true
	movq	-40(%rbp), %rdi
	callq	SBYTES
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB111_9
.LBB111_8:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	jmp	.LBB111_9
.LBB111_9:                              # %cond.end
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	-176(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	movq	-24(%rbp), %rdi
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	callq	SBYTES
	movq	-192(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	addq	$3, %rcx
	movq	%rcx, -56(%rbp)
	movq	globals+2848, %rdi
	callq	SBYTES
	movq	-32(%rbp), %rdi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	SBYTES
	movq	-200(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	movq	-48(%rbp), %rdi
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	callq	STRINGP
	testb	$1, %al
	jne	.LBB111_10
	jmp	.LBB111_11
.LBB111_10:                             # %cond.true.26
	movq	-48(%rbp), %rdi
	callq	SBYTES
	movq	%rax, -216(%rbp)        # 8-byte Spill
	jmp	.LBB111_12
.LBB111_11:                             # %cond.false.28
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	jmp	.LBB111_12
.LBB111_12:                             # %cond.end.29
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	-208(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	addq	$3, %rcx
	movq	%rcx, -64(%rbp)
	movq	$16384, -72(%rbp)       # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -80(%rbp)
	movb	$0, -81(%rbp)
	movq	-56(%rbp), %rax
	addq	-64(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jg	.LBB111_14
# BB#13:                                # %cond.true.37
	movq	-56(%rbp), %rax
	movq	-64(%rbp), %rcx
	addq	%rcx, %rax
	movq	-72(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	-64(%rbp), %rcx
	leaq	15(%rax,%rcx), %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	jmp	.LBB111_15
.LBB111_14:                             # %cond.false.40
	movb	$1, -81(%rbp)
	movq	-56(%rbp), %rax
	addq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	record_xmalloc
	movq	%rax, -224(%rbp)        # 8-byte Spill
.LBB111_15:                             # %cond.end.43
	movq	-224(%rbp), %rax        # 8-byte Reload
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	addq	-56(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-96(%rbp), %rdi
	movq	globals+2856, %rsi
	callq	lispstpcpy
	movq	%rax, -112(%rbp)
	movq	-104(%rbp), %rdi
	movq	globals+2848, %rsi
	callq	lispstpcpy
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, -120(%rbp)
	movb	$46, (%rax)
	movq	-120(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	lispstpcpy
	xorl	%edi, %edi
	movq	%rax, -120(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-232(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB111_17
# BB#16:                                # %if.then.51
	movq	-120(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -120(%rbp)
	movb	$46, (%rax)
	movq	-120(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	lispstpcpy
	movq	-112(%rbp), %rcx
	movq	%rcx, %rsi
	addq	$1, %rsi
	movq	%rsi, -112(%rbp)
	movb	$46, (%rcx)
	movq	-112(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	lispstpcpy
	movq	%rax, -112(%rbp)
.LBB111_17:                             # %if.end.56
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -112(%rbp)
	movb	$46, (%rax)
	movq	-112(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	lispstpcpy
	movq	-16(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movq	-104(%rbp), %rdx
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	x_get_string_resource
	movq	%rax, -128(%rbp)
# BB#18:                                # %do.body
	testb	$1, -81(%rbp)
	je	.LBB111_20
# BB#19:                                # %if.then.60
	xorl	%edi, %edi
	movb	$0, -81(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -264(%rbp)        # 8-byte Spill
.LBB111_20:                             # %if.end.63
	jmp	.LBB111_21
.LBB111_21:                             # %do.end
	cmpq	$0, -128(%rbp)
	je	.LBB111_24
# BB#22:                                # %land.lhs.true
	movq	-128(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB111_24
# BB#23:                                # %if.then.67
	movq	-128(%rbp), %rdi
	callq	build_string
	movq	%rax, -8(%rbp)
	jmp	.LBB111_25
.LBB111_24:                             # %if.else
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB111_25:                             # %return
	movq	-8(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end111:
	.size	xrdb_get_resource, .Lfunc_end111-xrdb_get_resource
	.cfi_endproc

	.globl	display_x_get_resource
	.align	16, 0x90
	.type	display_x_get_resource,@function
display_x_get_resource:                 # @display_x_get_resource
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp336:
	.cfi_def_cfa_offset 16
.Ltmp337:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp338:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-8(%rbp), %rcx
	movq	160(%rcx), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r8
	callq	xrdb_get_resource
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end112:
	.size	display_x_get_resource, .Lfunc_end112-display_x_get_resource
	.cfi_endproc

	.globl	x_get_arg
	.align	16, 0x90
	.type	x_get_arg,@function
x_get_arg:                              # @x_get_arg
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp339:
	.cfi_def_cfa_offset 16
.Ltmp340:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp341:
	.cfi_def_cfa_register %rbp
	subq	$288, %rsp              # imm = 0x120
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movl	%r9d, -52(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	Fassq
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB113_9
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	movq	-64(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	XSETCAR
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)
.LBB113_2:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-72(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB113_8
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB113_2 Depth=1
	movq	-72(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB113_6
# BB#4:                                 # %land.lhs.true
                                        #   in Loop: Header=BB113_2 Depth=1
	movq	-72(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB113_6
# BB#5:                                 # %if.then.15
                                        #   in Loop: Header=BB113_2 Depth=1
	xorl	%edi, %edi
	movq	-72(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	XSETCAR
.LBB113_6:                              # %if.end
                                        #   in Loop: Header=BB113_2 Depth=1
	jmp	.LBB113_7
.LBB113_7:                              # %for.inc
                                        #   in Loop: Header=BB113_2 Depth=1
	movq	-72(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB113_2
.LBB113_8:                              # %for.end
	jmp	.LBB113_10
.LBB113_9:                              # %if.else
	movq	-32(%rbp), %rdi
	movq	globals+480, %rsi
	callq	Fassq
	movq	%rax, -64(%rbp)
.LBB113_10:                             # %if.end.21
	xorl	%edi, %edi
	movq	-64(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB113_36
# BB#11:                                # %if.then.25
	cmpq	$0, -40(%rbp)
	je	.LBB113_35
# BB#12:                                # %land.lhs.true.26
	cmpq	$0, -16(%rbp)
	je	.LBB113_35
# BB#13:                                # %if.then.28
	movl	$4, %esi
	leaq	-112(%rbp), %rax
	movq	-40(%rbp), %rdi
	movl	%esi, -196(%rbp)        # 4-byte Spill
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	strlen
	movq	%rax, -112(%rbp)
	movq	$-1, -104(%rbp)
	movq	$0, -96(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-208(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rdi
	movl	-196(%rbp), %esi        # 4-byte Reload
	callq	make_lisp_ptr
	movl	$4, %esi
	leaq	-152(%rbp), %rdi
	movq	%rax, -80(%rbp)
	movq	-48(%rbp), %rax
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%esi, -220(%rbp)        # 4-byte Spill
	callq	strlen
	movq	%rax, -152(%rbp)
	movq	$-1, -144(%rbp)
	movq	$0, -136(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rdi
	movl	-220(%rbp), %esi        # 4-byte Reload
	callq	make_lisp_ptr
	xorl	%edi, %edi
	movq	%rax, -120(%rbp)
	movq	-16(%rbp), %rax
	movq	-80(%rbp), %rsi
	movq	-120(%rbp), %rdx
	movq	%rdx, -232(%rbp)        # 8-byte Spill
	movq	%rax, -240(%rbp)        # 8-byte Spill
	movq	%rsi, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	-248(%rbp), %rsi        # 8-byte Reload
	movq	-232(%rbp), %rdx        # 8-byte Reload
	movq	-256(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	callq	display_x_get_resource
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-264(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB113_15
# BB#14:                                # %if.then.47
	movl	$957, %edi              # imm = 0x3BD
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB113_37
.LBB113_15:                             # %if.end.49
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$5, %rdx
	movq	%rcx, -272(%rbp)        # 8-byte Spill
	movq	%rdx, -280(%rbp)        # 8-byte Spill
	ja	.LBB113_34
# BB#38:                                # %if.end.49
	movq	-272(%rbp), %rax        # 8-byte Reload
	movq	.LJTI113_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB113_16:                             # %sw.bb
	movq	-64(%rbp), %rdi
	callq	SSDATA
	movq	%rax, %rdi
	callq	atoi
	movslq	%eax, %rdi
	shlq	$2, %rdi
	addq	$2, %rdi
	movq	%rdi, -8(%rbp)
	jmp	.LBB113_37
.LBB113_17:                             # %sw.bb.53
	movq	-64(%rbp), %rdi
	callq	SSDATA
	movl	$.L.str.24, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB113_19
# BB#18:                                # %lor.lhs.false
	movq	-64(%rbp), %rdi
	callq	SSDATA
	movl	$.L.str.25, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB113_20
.LBB113_19:                             # %if.then.60
	movq	$6, -8(%rbp)
	jmp	.LBB113_37
.LBB113_20:                             # %if.end.61
	movq	-64(%rbp), %rdi
	callq	SSDATA
	movq	%rax, %rdi
	callq	atoi
	movslq	%eax, %rdi
	shlq	$2, %rdi
	addq	$2, %rdi
	movq	%rdi, -8(%rbp)
	jmp	.LBB113_37
.LBB113_21:                             # %sw.bb.67
	movq	-64(%rbp), %rdi
	callq	SSDATA
	movq	%rax, %rdi
	callq	atof
	callq	make_float
	movq	%rax, -8(%rbp)
	jmp	.LBB113_37
.LBB113_22:                             # %sw.bb.71
	movq	-64(%rbp), %rdi
	callq	Fdowncase
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	SSDATA
	movl	$.L.str.24, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB113_24
# BB#23:                                # %lor.lhs.false.76
	movq	-64(%rbp), %rdi
	callq	SSDATA
	movl	$.L.str.25, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB113_25
.LBB113_24:                             # %if.then.80
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB113_37
.LBB113_25:                             # %if.else.82
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB113_37
.LBB113_26:                             # %sw.bb.84
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB113_37
.LBB113_27:                             # %sw.bb.85
	movq	-64(%rbp), %rdi
	callq	Fdowncase
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rdi
	callq	SSDATA
	movl	$.L.str.24, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB113_29
# BB#28:                                # %lor.lhs.false.90
	movq	-160(%rbp), %rdi
	callq	SSDATA
	movl	$.L.str.25, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB113_30
.LBB113_29:                             # %if.then.94
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB113_37
.LBB113_30:                             # %if.else.96
	movq	-160(%rbp), %rdi
	callq	SSDATA
	movl	$.L.str.26, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB113_32
# BB#31:                                # %lor.lhs.false.100
	movq	-160(%rbp), %rdi
	callq	SSDATA
	movl	$.L.str.27, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB113_33
.LBB113_32:                             # %if.then.104
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB113_37
.LBB113_33:                             # %if.else.106
	xorl	%edi, %edi
	movq	-64(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fintern
	movq	%rax, -8(%rbp)
	jmp	.LBB113_37
.LBB113_34:                             # %sw.default
	callq	emacs_abort
.LBB113_35:                             # %if.else.109
	movl	$957, %edi              # imm = 0x3BD
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB113_37
.LBB113_36:                             # %if.end.111
	movq	-64(%rbp), %rdi
	callq	Fcdr
	movq	%rax, -8(%rbp)
.LBB113_37:                             # %return
	movq	-8(%rbp), %rax
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end113:
	.size	x_get_arg, .Lfunc_end113-x_get_arg
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI113_0:
	.quad	.LBB113_16
	.quad	.LBB113_21
	.quad	.LBB113_22
	.quad	.LBB113_26
	.quad	.LBB113_27
	.quad	.LBB113_17

	.text
	.globl	x_frame_get_and_record_arg
	.align	16, 0x90
	.type	x_frame_get_and_record_arg,@function
x_frame_get_and_record_arg:             # @x_frame_get_and_record_arg
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp342:
	.cfi_def_cfa_offset 16
.Ltmp343:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp344:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	%r9d, -44(%rbp)
	movq	-8(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	424(%rcx), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r8
	movl	-44(%rbp), %r9d
	callq	x_get_arg
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB114_3
# BB#1:                                 # %land.lhs.true
	movl	$957, %edi              # imm = 0x3BD
	movq	-56(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB114_3
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-56(%rbp), %rdx
	callq	store_frame_param
.LBB114_3:                              # %if.end
	movq	-56(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end114:
	.size	x_frame_get_and_record_arg, .Lfunc_end114-x_frame_get_and_record_arg
	.cfi_endproc

	.globl	x_default_parameter
	.align	16, 0x90
	.type	x_default_parameter,@function
x_default_parameter:                    # @x_default_parameter
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp345:
	.cfi_def_cfa_offset 16
.Ltmp346:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp347:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	%eax, -52(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %r8
	movl	-52(%rbp), %r9d
	callq	x_frame_get_arg
	movl	$957, %edi              # imm = 0x3BD
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB115_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
.LBB115_2:                              # %if.end
	movl	$3, %esi
	leaq	-104(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movq	-64(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movq	%rax, %rdi
	callq	make_lisp_ptr
	xorl	%edi, %edi
	movq	%rax, -88(%rbp)
	callq	builtin_lisp_symbol
	movl	$3, %esi
	leaq	-88(%rbp), %rcx
	movq	%rax, -80(%rbp)
	movq	%rcx, %rdi
	callq	make_lisp_ptr
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	x_set_frame_parameters
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end115:
	.size	x_default_parameter, .Lfunc_end115-x_default_parameter
	.cfi_endproc

	.align	16, 0x90
	.type	x_frame_get_arg,@function
x_frame_get_arg:                        # @x_frame_get_arg
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp348:
	.cfi_def_cfa_offset 16
.Ltmp349:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp350:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	%r9d, -44(%rbp)
	movq	-8(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	424(%rcx), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r8
	movl	-44(%rbp), %r9d
	callq	x_get_arg
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end116:
	.size	x_frame_get_arg, .Lfunc_end116-x_frame_get_arg
	.cfi_endproc

	.globl	Fx_parse_geometry
	.align	16, 0x90
	.type	Fx_parse_geometry,@function
Fx_parse_geometry:                      # @Fx_parse_geometry
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp351:
	.cfi_def_cfa_offset 16
.Ltmp352:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp353:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_STRING
	movq	-8(%rbp), %rdi
	callq	SSDATA
	leaq	-16(%rbp), %rsi
	leaq	-20(%rbp), %rdx
	leaq	-24(%rbp), %rcx
	leaq	-28(%rbp), %r8
	movq	%rax, %rdi
	callq	XParseGeometry
	xorl	%edi, %edi
	movl	%eax, -12(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %edi
	andl	$1, %edi
	cmpl	$0, %edi
	je	.LBB117_10
# BB#1:                                 # %if.then
	cmpl	$0, -16(%rbp)
	jl	.LBB117_4
# BB#2:                                 # %land.lhs.true
	movl	-12(%rbp), %eax
	andl	$16, %eax
	cmpl	$0, %eax
	je	.LBB117_4
# BB#3:                                 # %if.then.5
	movl	$607, %edi              # imm = 0x25F
	callq	builtin_lisp_symbol
	movl	$668, %edi              # imm = 0x29C
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	subl	-16(%rbp), %edi
	movslq	%edi, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	list3
	movq	%rax, -48(%rbp)
	jmp	.LBB117_9
.LBB117_4:                              # %if.else
	cmpl	$0, -16(%rbp)
	jge	.LBB117_7
# BB#5:                                 # %land.lhs.true.11
	movl	-12(%rbp), %eax
	andl	$16, %eax
	cmpl	$0, %eax
	jne	.LBB117_7
# BB#6:                                 # %if.then.14
	movl	$607, %edi              # imm = 0x25F
	callq	builtin_lisp_symbol
	movl	$752, %edi              # imm = 0x2F0
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movslq	-16(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	list3
	movq	%rax, -48(%rbp)
	jmp	.LBB117_8
.LBB117_7:                              # %if.else.21
	movl	$607, %edi              # imm = 0x25F
	callq	builtin_lisp_symbol
	movslq	-16(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	Fcons
	movq	%rax, -48(%rbp)
.LBB117_8:                              # %if.end
	jmp	.LBB117_9
.LBB117_9:                              # %if.end.27
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	Fcons
	movq	%rax, -40(%rbp)
.LBB117_10:                             # %if.end.29
	movl	-12(%rbp), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	.LBB117_20
# BB#11:                                # %if.then.32
	cmpl	$0, -20(%rbp)
	jl	.LBB117_14
# BB#12:                                # %land.lhs.true.36
	movl	-12(%rbp), %eax
	andl	$32, %eax
	cmpl	$0, %eax
	je	.LBB117_14
# BB#13:                                # %if.then.39
	movl	$928, %edi              # imm = 0x3A0
	callq	builtin_lisp_symbol
	movl	$668, %edi              # imm = 0x29C
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	subl	-20(%rbp), %edi
	movslq	%edi, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	list3
	movq	%rax, -56(%rbp)
	jmp	.LBB117_19
.LBB117_14:                             # %if.else.47
	cmpl	$0, -20(%rbp)
	jge	.LBB117_17
# BB#15:                                # %land.lhs.true.50
	movl	-12(%rbp), %eax
	andl	$32, %eax
	cmpl	$0, %eax
	jne	.LBB117_17
# BB#16:                                # %if.then.53
	movl	$928, %edi              # imm = 0x3A0
	callq	builtin_lisp_symbol
	movl	$752, %edi              # imm = 0x2F0
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movslq	-20(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	list3
	movq	%rax, -56(%rbp)
	jmp	.LBB117_18
.LBB117_17:                             # %if.else.60
	movl	$928, %edi              # imm = 0x3A0
	callq	builtin_lisp_symbol
	movslq	-20(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	Fcons
	movq	%rax, -56(%rbp)
.LBB117_18:                             # %if.end.66
	jmp	.LBB117_19
.LBB117_19:                             # %if.end.67
	movq	-56(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	Fcons
	movq	%rax, -40(%rbp)
.LBB117_20:                             # %if.end.69
	movl	-12(%rbp), %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB117_22
# BB#21:                                # %if.then.72
	movl	$1017, %edi             # imm = 0x3F9
	callq	builtin_lisp_symbol
	movl	-24(%rbp), %edi
	movl	%edi, %ecx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	Fcons
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -40(%rbp)
.LBB117_22:                             # %if.end.79
	movl	-12(%rbp), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB117_24
# BB#23:                                # %if.then.82
	movl	$515, %edi              # imm = 0x203
	callq	builtin_lisp_symbol
	movl	-28(%rbp), %edi
	movl	%edi, %ecx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	Fcons
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -40(%rbp)
.LBB117_24:                             # %if.end.89
	movq	-40(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end117:
	.size	Fx_parse_geometry, .Lfunc_end117-Fx_parse_geometry
	.cfi_endproc

	.globl	x_figure_window_size
	.align	16, 0x90
	.type	x_figure_window_size,@function
x_figure_window_size:                   # @x_figure_window_size
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp354:
	.cfi_def_cfa_offset 16
.Ltmp355:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp356:
	.cfi_def_cfa_register %rbp
	subq	$576, %rsp              # imm = 0x240
	movb	%dl, %al
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	andb	$1, %al
	movb	%al, -17(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	$0, -96(%rbp)
	movq	-8(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	424(%rcx), %rcx
	movq	%rcx, -104(%rbp)
	movq	-8(%rbp), %rcx
	imull	$80, 364(%rcx), %edx
	movq	-8(%rbp), %rcx
	movl	%edx, 288(%rcx)
	movq	-8(%rbp), %rcx
	imull	$80, 364(%rcx), %edx
	movq	-8(%rbp), %rcx
	movq	208(%rcx), %rcx
	shrq	$30, %rcx
	andq	$3, %rcx
	movl	%ecx, %r9d
	cmpl	$0, %r9d
	movl	%edx, -116(%rbp)        # 4-byte Spill
	je	.LBB118_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rax
	movl	420(%rax), %ecx
	movl	%ecx, -120(%rbp)        # 4-byte Spill
	jmp	.LBB118_3
.LBB118_2:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB118_3
.LBB118_3:                              # %cond.end
	movl	-120(%rbp), %eax        # 4-byte Reload
	movl	-116(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movl	344(%rdx), %eax
	movq	-8(%rbp), %rdx
	addl	348(%rdx), %eax
	addl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movl	332(%rdx), %eax
	shll	$1, %eax
	addl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movl	%ecx, 312(%rdx)
	movq	-8(%rbp), %rdx
	movl	$80, 272(%rdx)
	movq	-8(%rbp), %rdx
	movq	208(%rdx), %rdx
	shrq	$30, %rdx
	andq	$3, %rdx
	movl	%edx, %eax
	cmpl	$0, %eax
	je	.LBB118_5
# BB#4:                                 # %cond.true.13
	movq	-8(%rbp), %rax
	movl	424(%rax), %ecx
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	jmp	.LBB118_6
.LBB118_5:                              # %cond.false.14
	xorl	%eax, %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jmp	.LBB118_6
.LBB118_6:                              # %cond.end.15
	movl	-124(%rbp), %eax        # 4-byte Reload
	addl	$80, %eax
	movq	-8(%rbp), %rcx
	addl	352(%rcx), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 280(%rcx)
	movq	-8(%rbp), %rcx
	imull	$36, 368(%rcx), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 292(%rcx)
	movq	-8(%rbp), %rcx
	imull	$36, 368(%rcx), %eax
	movq	-8(%rbp), %rcx
	movl	360(%rcx), %edx
	movq	-8(%rbp), %rcx
	addl	220(%rcx), %edx
	addl	%edx, %eax
	movq	-8(%rbp), %rcx
	movq	208(%rcx), %rcx
	shrq	$32, %rcx
	andq	$1, %rcx
	testq	$1, %rcx
	movl	%eax, -128(%rbp)        # 4-byte Spill
	je	.LBB118_8
# BB#7:                                 # %cond.true.28
	movq	-8(%rbp), %rax
	movl	428(%rax), %ecx
	movl	%ecx, -132(%rbp)        # 4-byte Spill
	jmp	.LBB118_9
.LBB118_8:                              # %cond.false.29
	xorl	%eax, %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jmp	.LBB118_9
.LBB118_9:                              # %cond.end.30
	movl	-132(%rbp), %eax        # 4-byte Reload
	movl	-128(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movl	332(%rdx), %eax
	shll	$1, %eax
	addl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movl	%ecx, 316(%rdx)
	movq	-8(%rbp), %rdx
	movl	$36, 276(%rdx)
	movq	-8(%rbp), %rdx
	movl	356(%rdx), %eax
	movq	-8(%rbp), %rdx
	addl	216(%rdx), %eax
	addl	$36, %eax
	movq	-8(%rbp), %rdx
	movq	208(%rdx), %rdx
	shrq	$32, %rdx
	andq	$1, %rdx
	testq	$1, %rdx
	movl	%eax, -136(%rbp)        # 4-byte Spill
	je	.LBB118_11
# BB#10:                                # %cond.true.43
	movq	-8(%rbp), %rax
	movl	432(%rax), %ecx
	movl	%ecx, -140(%rbp)        # 4-byte Spill
	jmp	.LBB118_12
.LBB118_11:                             # %cond.false.44
	xorl	%eax, %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
	jmp	.LBB118_12
.LBB118_12:                             # %cond.end.45
	movl	-140(%rbp), %eax        # 4-byte Reload
	movl	-136(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movl	%ecx, 284(%rdx)
	movq	-8(%rbp), %rdx
	movl	$0, 308(%rdx)
	movq	-8(%rbp), %rdx
	movl	$0, 304(%rdx)
	testb	$1, -17(%rbp)
	je	.LBB118_25
# BB#13:                                # %land.lhs.true
	movq	-8(%rbp), %rax
	cmpl	$0, 216(%rax)
	je	.LBB118_25
# BB#14:                                # %if.then
	cmpq	$0, globals+3304
	jl	.LBB118_16
# BB#15:                                # %cond.true.51
	movq	globals+3304, %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jmp	.LBB118_17
.LBB118_16:                             # %cond.false.52
	movl	$1, %eax
	movl	%eax, %ecx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	jmp	.LBB118_17
.LBB118_17:                             # %cond.end.53
	movq	-152(%rbp), %rax        # 8-byte Reload
	movl	$1, %ecx
	movl	%ecx, %edi
	movl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	movl	%ecx, %edx
	movl	%eax, %ecx
	movl	%ecx, -112(%rbp)
	movq	globals+2400, %rsi
	callq	RANGED_INTEGERP
	testb	$1, %al
	jne	.LBB118_18
	jmp	.LBB118_19
.LBB118_18:                             # %if.then.55
	movq	globals+2400, %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -108(%rbp)
	jmp	.LBB118_24
.LBB118_19:                             # %if.else
	movq	globals+2400, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB118_22
# BB#20:                                # %land.lhs.true.60
	movl	$1, %eax
	movl	%eax, %edi
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %edx
	movq	globals+2400, %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rsi
	callq	RANGED_INTEGERP
	testb	$1, %al
	jne	.LBB118_21
	jmp	.LBB118_22
.LBB118_21:                             # %if.then.63
	movq	globals+2400, %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -108(%rbp)
	jmp	.LBB118_23
.LBB118_22:                             # %if.else.69
	movl	$0, -108(%rbp)
.LBB118_23:                             # %if.end
	jmp	.LBB118_24
.LBB118_24:                             # %if.end.70
	movl	-108(%rbp), %eax
	shll	$1, %eax
	addl	$24, %eax
	movl	-112(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	movq	-8(%rbp), %rdx
	movl	%eax, 220(%rdx)
.LBB118_25:                             # %if.end.76
	movl	$515, %edi              # imm = 0x203
	movq	-8(%rbp), %rax
	movl	$0, 300(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 296(%rax)
	movq	-104(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	%rsi, -160(%rbp)        # 8-byte Spill
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %esi
	xorl	%r9d, %r9d
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	-160(%rbp), %rcx        # 8-byte Reload
	movq	%rsi, -176(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	movq	%rax, %rdx
	movq	-176(%rbp), %rcx        # 8-byte Reload
	movq	-176(%rbp), %r8         # 8-byte Reload
	callq	x_get_arg
	movl	$1017, %edi             # imm = 0x3F9
	movq	%rax, -48(%rbp)
	movq	-104(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	%rsi, -184(%rbp)        # 8-byte Spill
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %ecx
	xorl	%r9d, %r9d
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	-184(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	movq	-200(%rbp), %r8         # 8-byte Reload
	callq	x_get_arg
	movl	$957, %edi              # imm = 0x3BD
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB118_27
# BB#26:                                # %lor.lhs.false
	movl	$957, %edi              # imm = 0x3BD
	movq	-48(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB118_80
.LBB118_27:                             # %if.then.87
	movl	$957, %edi              # imm = 0x3BD
	movq	-56(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB118_51
# BB#28:                                # %if.then.91
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB118_40
# BB#29:                                # %land.lhs.true.96
	movl	$912, %edi              # imm = 0x390
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-232(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB118_40
# BB#30:                                # %if.then.101
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB118_32
# BB#31:                                # %cond.true.110
	jmp	.LBB118_33
.LBB118_32:                             # %cond.false.111
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -240(%rbp)        # 8-byte Spill
.LBB118_33:                             # %cond.end.116
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jl	.LBB118_35
# BB#34:                                # %lor.lhs.false.123
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	sarq	$2, %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	jle	.LBB118_36
.LBB118_35:                             # %if.then.130
	movl	$177, %edi
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rsi
	movq	%rax, %rdi
	callq	xsignal1
.LBB118_36:                             # %if.end.135
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 288(%rax)
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	sarq	$2, %rax
	movq	-8(%rbp), %rdx
	movq	208(%rdx), %rdx
	shrq	$30, %rdx
	andq	$3, %rdx
	movl	%edx, %ecx
	cmpl	$0, %ecx
	movq	%rax, -248(%rbp)        # 8-byte Spill
	je	.LBB118_38
# BB#37:                                # %cond.true.153
	movq	-8(%rbp), %rax
	movl	420(%rax), %ecx
	movl	%ecx, -252(%rbp)        # 4-byte Spill
	jmp	.LBB118_39
.LBB118_38:                             # %cond.false.155
	xorl	%eax, %eax
	movl	%eax, -252(%rbp)        # 4-byte Spill
	jmp	.LBB118_39
.LBB118_39:                             # %cond.end.156
	movl	-252(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-248(%rbp), %rdx        # 8-byte Reload
	addq	%rcx, %rdx
	movq	-8(%rbp), %rcx
	movl	344(%rcx), %eax
	movq	-8(%rbp), %rcx
	addl	348(%rcx), %eax
	movslq	%eax, %rcx
	addq	%rcx, %rdx
	movq	-8(%rbp), %rcx
	movl	332(%rcx), %eax
	shll	$1, %eax
	movslq	%eax, %rcx
	addq	%rcx, %rdx
	movl	%edx, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 312(%rcx)
	movq	-8(%rbp), %rcx
	movabsq	$-274877906945, %rdx    # imm = 0xFFFFFFBFFFFFFFFF
	andq	208(%rcx), %rdx
	movabsq	$274877906944, %rsi     # imm = 0x4000000000
	orq	%rsi, %rdx
	movq	%rdx, 208(%rcx)
	movq	-56(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rcx
	sarq	$2, %rcx
	movl	%ecx, %eax
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
	jmp	.LBB118_50
.LBB118_40:                             # %if.else.178
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB118_42
# BB#41:                                # %cond.true.184
	jmp	.LBB118_43
.LBB118_42:                             # %cond.false.185
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -264(%rbp)        # 8-byte Spill
.LBB118_43:                             # %cond.end.187
	movq	-56(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jl	.LBB118_45
# BB#44:                                # %lor.lhs.false.191
	movq	-56(%rbp), %rax
	sarq	$2, %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	jle	.LBB118_46
.LBB118_45:                             # %if.then.195
	movl	$177, %edi
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	xsignal1
.LBB118_46:                             # %if.end.197
	movq	-56(%rbp), %rax
	sarq	$2, %rax
	movq	-8(%rbp), %rcx
	movslq	364(%rcx), %rcx
	imulq	%rcx, %rax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 288(%rax)
	movq	-56(%rbp), %rax
	sarq	$2, %rax
	movq	-8(%rbp), %rcx
	movslq	364(%rcx), %rcx
	imulq	%rcx, %rax
	movq	-8(%rbp), %rcx
	movq	208(%rcx), %rcx
	shrq	$30, %rcx
	andq	$3, %rcx
	movl	%ecx, %edx
	cmpl	$0, %edx
	movq	%rax, -272(%rbp)        # 8-byte Spill
	je	.LBB118_48
# BB#47:                                # %cond.true.215
	movq	-8(%rbp), %rax
	movl	420(%rax), %ecx
	movl	%ecx, -276(%rbp)        # 4-byte Spill
	jmp	.LBB118_49
.LBB118_48:                             # %cond.false.217
	xorl	%eax, %eax
	movl	%eax, -276(%rbp)        # 4-byte Spill
	jmp	.LBB118_49
.LBB118_49:                             # %cond.end.218
	movl	-276(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-272(%rbp), %rdx        # 8-byte Reload
	addq	%rcx, %rdx
	movq	-8(%rbp), %rcx
	movl	344(%rcx), %eax
	movq	-8(%rbp), %rcx
	addl	348(%rcx), %eax
	movslq	%eax, %rcx
	addq	%rcx, %rdx
	movq	-8(%rbp), %rcx
	movl	332(%rcx), %eax
	shll	$1, %eax
	movslq	%eax, %rcx
	addq	%rcx, %rdx
	movl	%edx, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 312(%rcx)
.LBB118_50:                             # %if.end.233
	jmp	.LBB118_51
.LBB118_51:                             # %if.end.234
	movl	$957, %edi              # imm = 0x3BD
	movq	-48(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-288(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB118_75
# BB#52:                                # %if.then.238
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB118_64
# BB#53:                                # %land.lhs.true.243
	movl	$912, %edi              # imm = 0x390
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-296(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB118_64
# BB#54:                                # %if.then.249
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB118_56
# BB#55:                                # %cond.true.258
	jmp	.LBB118_57
.LBB118_56:                             # %cond.false.259
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -304(%rbp)        # 8-byte Spill
.LBB118_57:                             # %cond.end.264
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jl	.LBB118_59
# BB#58:                                # %lor.lhs.false.271
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	sarq	$2, %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	jle	.LBB118_60
.LBB118_59:                             # %if.then.278
	movl	$177, %edi
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rsi
	movq	%rax, %rdi
	callq	xsignal1
.LBB118_60:                             # %if.end.283
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 292(%rax)
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	sarq	$2, %rax
	movq	-8(%rbp), %rdx
	movl	360(%rdx), %ecx
	movq	-8(%rbp), %rdx
	addl	220(%rdx), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	-8(%rbp), %rdx
	movq	208(%rdx), %rdx
	shrq	$32, %rdx
	andq	$1, %rdx
	testq	$1, %rdx
	movq	%rax, -312(%rbp)        # 8-byte Spill
	je	.LBB118_62
# BB#61:                                # %cond.true.305
	movq	-8(%rbp), %rax
	movl	428(%rax), %ecx
	movl	%ecx, -316(%rbp)        # 4-byte Spill
	jmp	.LBB118_63
.LBB118_62:                             # %cond.false.307
	xorl	%eax, %eax
	movl	%eax, -316(%rbp)        # 4-byte Spill
	jmp	.LBB118_63
.LBB118_63:                             # %cond.end.308
	movl	-316(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-312(%rbp), %rdx        # 8-byte Reload
	addq	%rcx, %rdx
	movq	-8(%rbp), %rcx
	movl	332(%rcx), %eax
	shll	$1, %eax
	movslq	%eax, %rcx
	addq	%rcx, %rdx
	movl	%edx, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 316(%rcx)
	movq	-8(%rbp), %rcx
	movabsq	$-549755813889, %rdx    # imm = 0xFFFFFF7FFFFFFFFF
	andq	208(%rcx), %rdx
	movabsq	$549755813888, %rsi     # imm = 0x8000000000
	orq	%rsi, %rdx
	movq	%rdx, 208(%rcx)
	movq	-48(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rcx
	sarq	$2, %rcx
	movl	%ecx, %eax
	movq	-40(%rbp), %rcx
	movl	%eax, (%rcx)
	jmp	.LBB118_74
.LBB118_64:                             # %if.else.326
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB118_66
# BB#65:                                # %cond.true.332
	jmp	.LBB118_67
.LBB118_66:                             # %cond.false.333
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -328(%rbp)        # 8-byte Spill
.LBB118_67:                             # %cond.end.335
	movq	-48(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jl	.LBB118_69
# BB#68:                                # %lor.lhs.false.339
	movq	-48(%rbp), %rax
	sarq	$2, %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	jle	.LBB118_70
.LBB118_69:                             # %if.then.343
	movl	$177, %edi
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	xsignal1
.LBB118_70:                             # %if.end.345
	movq	-48(%rbp), %rax
	sarq	$2, %rax
	movq	-8(%rbp), %rcx
	movslq	368(%rcx), %rcx
	imulq	%rcx, %rax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 292(%rax)
	movq	-48(%rbp), %rax
	sarq	$2, %rax
	movq	-8(%rbp), %rcx
	movslq	368(%rcx), %rcx
	imulq	%rcx, %rax
	movq	-8(%rbp), %rcx
	movl	360(%rcx), %edx
	movq	-8(%rbp), %rcx
	addl	220(%rcx), %edx
	movslq	%edx, %rcx
	addq	%rcx, %rax
	movq	-8(%rbp), %rcx
	movq	208(%rcx), %rcx
	shrq	$32, %rcx
	andq	$1, %rcx
	testq	$1, %rcx
	movq	%rax, -336(%rbp)        # 8-byte Spill
	je	.LBB118_72
# BB#71:                                # %cond.true.367
	movq	-8(%rbp), %rax
	movl	428(%rax), %ecx
	movl	%ecx, -340(%rbp)        # 4-byte Spill
	jmp	.LBB118_73
.LBB118_72:                             # %cond.false.369
	xorl	%eax, %eax
	movl	%eax, -340(%rbp)        # 4-byte Spill
	jmp	.LBB118_73
.LBB118_73:                             # %cond.end.370
	movl	-340(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-336(%rbp), %rdx        # 8-byte Reload
	addq	%rcx, %rdx
	movq	-8(%rbp), %rcx
	movl	332(%rcx), %eax
	shll	$1, %eax
	movslq	%eax, %rcx
	addq	%rcx, %rdx
	movl	%edx, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 316(%rcx)
.LBB118_74:                             # %if.end.380
	jmp	.LBB118_75
.LBB118_75:                             # %if.end.381
	movl	$985, %edi              # imm = 0x3D9
	movq	-104(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	%rsi, -352(%rbp)        # 8-byte Spill
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %esi
	xorl	%r9d, %r9d
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	-352(%rbp), %rcx        # 8-byte Reload
	movq	%rsi, -368(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	movq	%rax, %rdx
	movq	-368(%rbp), %rcx        # 8-byte Reload
	movq	-368(%rbp), %r8         # 8-byte Reload
	callq	x_get_arg
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-376(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB118_78
# BB#76:                                # %land.lhs.true.387
	movl	$957, %edi              # imm = 0x3BD
	movq	-64(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-384(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB118_78
# BB#77:                                # %if.then.391
	movq	-96(%rbp), %rax
	orq	$2, %rax
	movq	%rax, -96(%rbp)
	jmp	.LBB118_79
.LBB118_78:                             # %if.else.392
	movq	-96(%rbp), %rax
	orq	$8, %rax
	movq	%rax, -96(%rbp)
.LBB118_79:                             # %if.end.394
	jmp	.LBB118_80
.LBB118_80:                             # %if.end.395
	movl	$928, %edi              # imm = 0x3A0
	movq	-104(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	%rsi, -392(%rbp)        # 8-byte Spill
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %esi
	xorl	%r9d, %r9d
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	-392(%rbp), %rcx        # 8-byte Reload
	movq	%rsi, -408(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	movq	%rax, %rdx
	movq	-408(%rbp), %rcx        # 8-byte Reload
	movq	-408(%rbp), %r8         # 8-byte Reload
	callq	x_get_arg
	movl	$607, %edi              # imm = 0x25F
	movq	%rax, -72(%rbp)
	movq	-104(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	%rsi, -416(%rbp)        # 8-byte Spill
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %ecx
	xorl	%r9d, %r9d
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	-416(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movq	%rcx, -432(%rbp)        # 8-byte Spill
	movq	-432(%rbp), %r8         # 8-byte Reload
	callq	x_get_arg
	movl	$982, %edi              # imm = 0x3D6
	movq	%rax, -80(%rbp)
	movq	-104(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	%rsi, -440(%rbp)        # 8-byte Spill
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %ecx
	xorl	%r9d, %r9d
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	-440(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movq	%rcx, -456(%rbp)        # 8-byte Spill
	movq	-456(%rbp), %r8         # 8-byte Reload
	callq	x_get_arg
	movl	$957, %edi              # imm = 0x3BD
	movq	%rax, -88(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-464(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB118_82
# BB#81:                                # %lor.lhs.false.405
	movl	$957, %edi              # imm = 0x3BD
	movq	-80(%rbp), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-472(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB118_155
.LBB118_82:                             # %if.then.409
	movl	$668, %edi              # imm = 0x29C
	movq	-72(%rbp), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-480(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB118_84
# BB#83:                                # %if.then.413
	movq	-8(%rbp), %rax
	movl	$0, 308(%rax)
	movq	-96(%rbp), %rax
	orq	$32, %rax
	movq	%rax, -96(%rbp)
	jmp	.LBB118_116
.LBB118_84:                             # %if.else.416
	movq	-72(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB118_89
# BB#85:                                # %land.lhs.true.421
	movl	$668, %edi              # imm = 0x29C
	movq	-72(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-488(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB118_89
# BB#86:                                # %land.lhs.true.427
	movq	-72(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB118_89
# BB#87:                                # %land.lhs.true.435
	movq	$-2147483647, %rdi      # imm = 0xFFFFFFFF80000001
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %edx
	movq	-72(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rsi
	callq	RANGED_INTEGERP
	testb	$1, %al
	jne	.LBB118_88
	jmp	.LBB118_89
.LBB118_88:                             # %if.then.443
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-72(%rbp), %rdx
	subq	$3, %rdx
	movq	8(%rdx), %rdx
	subq	$3, %rdx
	movq	(%rdx), %rdx
	sarq	$2, %rdx
	subq	%rdx, %rcx
	movl	%ecx, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 308(%rcx)
	movq	-96(%rbp), %rcx
	orq	$32, %rcx
	movq	%rcx, -96(%rbp)
	jmp	.LBB118_115
.LBB118_89:                             # %if.else.454
	movq	-72(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB118_98
# BB#90:                                # %land.lhs.true.459
	movl	$752, %edi              # imm = 0x2F0
	movq	-72(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-496(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB118_98
# BB#91:                                # %land.lhs.true.465
	movq	-72(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB118_98
# BB#92:                                # %land.lhs.true.473
	movq	-72(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB118_98
# BB#93:                                # %land.lhs.true.484
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB118_95
	jmp	.LBB118_94
.LBB118_94:                             # %cond.true.485
	movq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	movq	-72(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jle	.LBB118_96
	jmp	.LBB118_98
.LBB118_95:                             # %cond.false.494
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-72(%rbp), %rdx
	subq	$3, %rdx
	movq	8(%rdx), %rdx
	subq	$3, %rdx
	movq	(%rdx), %rdx
	sarq	$2, %rdx
	cmpq	%rdx, %rcx
	jg	.LBB118_98
.LBB118_96:                             # %land.lhs.true.503
	movq	-72(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	jg	.LBB118_98
# BB#97:                                # %if.then.512
	movq	-72(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 308(%rax)
	jmp	.LBB118_114
.LBB118_98:                             # %if.else.521
	movl	$957, %edi              # imm = 0x3BD
	movq	-72(%rbp), %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-504(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB118_100
# BB#99:                                # %if.then.525
	movq	-8(%rbp), %rax
	movl	$0, 308(%rax)
	jmp	.LBB118_113
.LBB118_100:                            # %if.else.527
	jmp	.LBB118_101
.LBB118_101:                            # %do.body
	jmp	.LBB118_102
.LBB118_102:                            # %do.body.528
	movq	-72(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB118_104
# BB#103:                               # %cond.true.534
	jmp	.LBB118_105
.LBB118_104:                            # %cond.false.535
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -512(%rbp)        # 8-byte Spill
.LBB118_105:                            # %cond.end.537
	movq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	movq	-72(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jg	.LBB118_107
# BB#106:                               # %land.lhs.true.541
	movq	-72(%rbp), %rax
	sarq	$2, %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	jle	.LBB118_108
.LBB118_107:                            # %if.then.545
	movabsq	$-8589934590, %rsi      # imm = 0xFFFFFFFE00000002
	movabsq	$8589934590, %rdx       # imm = 0x1FFFFFFFE
	movq	-72(%rbp), %rdi
	callq	args_out_of_range_3
.LBB118_108:                            # %if.end.546
	jmp	.LBB118_109
.LBB118_109:                            # %do.end
	jmp	.LBB118_110
.LBB118_110:                            # %do.end.547
	movq	-72(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 308(%rax)
	movq	-8(%rbp), %rax
	cmpl	$0, 308(%rax)
	jge	.LBB118_112
# BB#111:                               # %if.then.554
	movq	-96(%rbp), %rax
	orq	$32, %rax
	movq	%rax, -96(%rbp)
.LBB118_112:                            # %if.end.556
	jmp	.LBB118_113
.LBB118_113:                            # %if.end.557
	jmp	.LBB118_114
.LBB118_114:                            # %if.end.558
	jmp	.LBB118_115
.LBB118_115:                            # %if.end.559
	jmp	.LBB118_116
.LBB118_116:                            # %if.end.560
	movl	$668, %edi              # imm = 0x29C
	movq	-80(%rbp), %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-520(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB118_118
# BB#117:                               # %if.then.564
	movq	-8(%rbp), %rax
	movl	$0, 304(%rax)
	movq	-96(%rbp), %rax
	orq	$16, %rax
	movq	%rax, -96(%rbp)
	jmp	.LBB118_150
.LBB118_118:                            # %if.else.567
	movq	-80(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB118_123
# BB#119:                               # %land.lhs.true.572
	movl	$668, %edi              # imm = 0x29C
	movq	-80(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-528(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB118_123
# BB#120:                               # %land.lhs.true.578
	movq	-80(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB118_123
# BB#121:                               # %land.lhs.true.586
	movq	$-2147483647, %rdi      # imm = 0xFFFFFFFF80000001
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %edx
	movq	-80(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rsi
	callq	RANGED_INTEGERP
	testb	$1, %al
	jne	.LBB118_122
	jmp	.LBB118_123
.LBB118_122:                            # %if.then.594
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-80(%rbp), %rdx
	subq	$3, %rdx
	movq	8(%rdx), %rdx
	subq	$3, %rdx
	movq	(%rdx), %rdx
	sarq	$2, %rdx
	subq	%rdx, %rcx
	movl	%ecx, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 304(%rcx)
	movq	-96(%rbp), %rcx
	orq	$16, %rcx
	movq	%rcx, -96(%rbp)
	jmp	.LBB118_149
.LBB118_123:                            # %if.else.605
	movq	-80(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB118_132
# BB#124:                               # %land.lhs.true.610
	movl	$752, %edi              # imm = 0x2F0
	movq	-80(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-536(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB118_132
# BB#125:                               # %land.lhs.true.616
	movq	-80(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB118_132
# BB#126:                               # %land.lhs.true.624
	movq	-80(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB118_132
# BB#127:                               # %land.lhs.true.635
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB118_129
	jmp	.LBB118_128
.LBB118_128:                            # %cond.true.636
	movq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	movq	-80(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jle	.LBB118_130
	jmp	.LBB118_132
.LBB118_129:                            # %cond.false.645
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-80(%rbp), %rdx
	subq	$3, %rdx
	movq	8(%rdx), %rdx
	subq	$3, %rdx
	movq	(%rdx), %rdx
	sarq	$2, %rdx
	cmpq	%rdx, %rcx
	jg	.LBB118_132
.LBB118_130:                            # %land.lhs.true.654
	movq	-80(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	jg	.LBB118_132
# BB#131:                               # %if.then.663
	movq	-80(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 304(%rax)
	jmp	.LBB118_148
.LBB118_132:                            # %if.else.672
	movl	$957, %edi              # imm = 0x3BD
	movq	-80(%rbp), %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-544(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB118_134
# BB#133:                               # %if.then.676
	movq	-8(%rbp), %rax
	movl	$0, 304(%rax)
	jmp	.LBB118_147
.LBB118_134:                            # %if.else.678
	jmp	.LBB118_135
.LBB118_135:                            # %do.body.679
	jmp	.LBB118_136
.LBB118_136:                            # %do.body.680
	movq	-80(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB118_138
# BB#137:                               # %cond.true.686
	jmp	.LBB118_139
.LBB118_138:                            # %cond.false.687
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -552(%rbp)        # 8-byte Spill
.LBB118_139:                            # %cond.end.689
	movq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	movq	-80(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jg	.LBB118_141
# BB#140:                               # %land.lhs.true.693
	movq	-80(%rbp), %rax
	sarq	$2, %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	jle	.LBB118_142
.LBB118_141:                            # %if.then.697
	movabsq	$-8589934590, %rsi      # imm = 0xFFFFFFFE00000002
	movabsq	$8589934590, %rdx       # imm = 0x1FFFFFFFE
	movq	-80(%rbp), %rdi
	callq	args_out_of_range_3
.LBB118_142:                            # %if.end.698
	jmp	.LBB118_143
.LBB118_143:                            # %do.end.699
	jmp	.LBB118_144
.LBB118_144:                            # %do.end.700
	movq	-80(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 304(%rax)
	movq	-8(%rbp), %rax
	cmpl	$0, 304(%rax)
	jge	.LBB118_146
# BB#145:                               # %if.then.707
	movq	-96(%rbp), %rax
	orq	$16, %rax
	movq	%rax, -96(%rbp)
.LBB118_146:                            # %if.end.709
	jmp	.LBB118_147
.LBB118_147:                            # %if.end.710
	jmp	.LBB118_148
.LBB118_148:                            # %if.end.711
	jmp	.LBB118_149
.LBB118_149:                            # %if.end.712
	jmp	.LBB118_150
.LBB118_150:                            # %if.end.713
	xorl	%edi, %edi
	movq	-88(%rbp), %rax
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-560(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB118_153
# BB#151:                               # %land.lhs.true.717
	movl	$957, %edi              # imm = 0x3BD
	movq	-88(%rbp), %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-568(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB118_153
# BB#152:                               # %if.then.721
	movq	-96(%rbp), %rax
	orq	$1, %rax
	movq	%rax, -96(%rbp)
	jmp	.LBB118_154
.LBB118_153:                            # %if.else.723
	movq	-96(%rbp), %rax
	orq	$4, %rax
	movq	%rax, -96(%rbp)
.LBB118_154:                            # %if.end.725
	jmp	.LBB118_155
.LBB118_155:                            # %if.end.726
	movq	-96(%rbp), %rax
	andq	$16, %rax
	cmpq	$0, %rax
	je	.LBB118_160
# BB#156:                               # %if.then.729
	movq	-96(%rbp), %rax
	andq	$32, %rax
	cmpq	$0, %rax
	je	.LBB118_158
# BB#157:                               # %if.then.732
	movq	-8(%rbp), %rax
	movl	$9, 320(%rax)
	jmp	.LBB118_159
.LBB118_158:                            # %if.else.733
	movq	-8(%rbp), %rax
	movl	$3, 320(%rax)
.LBB118_159:                            # %if.end.735
	jmp	.LBB118_164
.LBB118_160:                            # %if.else.736
	movq	-96(%rbp), %rax
	andq	$32, %rax
	cmpq	$0, %rax
	je	.LBB118_162
# BB#161:                               # %if.then.739
	movq	-8(%rbp), %rax
	movl	$7, 320(%rax)
	jmp	.LBB118_163
.LBB118_162:                            # %if.else.741
	movq	-8(%rbp), %rax
	movl	$1, 320(%rax)
.LBB118_163:                            # %if.end.743
	jmp	.LBB118_164
.LBB118_164:                            # %if.end.744
	movq	-96(%rbp), %rax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 324(%rax)
	movq	-96(%rbp), %rax
	addq	$576, %rsp              # imm = 0x240
	popq	%rbp
	retq
.Lfunc_end118:
	.size	x_figure_window_size, .Lfunc_end118-x_figure_window_size
	.cfi_endproc

	.globl	frame_make_pointer_invisible
	.align	16, 0x90
	.type	frame_make_pointer_invisible,@function
frame_make_pointer_invisible:           # @frame_make_pointer_invisible
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp357:
	.cfi_def_cfa_offset 16
.Ltmp358:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp359:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	globals+1360, %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB119_7
# BB#1:                                 # %if.then
	cmpq	$0, -8(%rbp)
	je	.LBB119_6
# BB#2:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	cmpq	$0, 376(%rax)
	je	.LBB119_6
# BB#3:                                 # %land.lhs.true.2
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$21, %rax
	andq	$1, %rax
	testq	$1, %rax
	jne	.LBB119_6
# BB#4:                                 # %land.lhs.true.3
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	cmpq	$0, 200(%rax)
	je	.LBB119_6
# BB#5:                                 # %if.then.6
	movl	$1, %esi
	movq	-8(%rbp), %rax
	movq	208(%rax), %rcx
	andq	$-1048577, %rcx         # imm = 0xFFFFFFFFFFEFFFFF
	movq	%rcx, 208(%rax)
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	200(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	movq	-8(%rbp), %rax
	movq	208(%rax), %rcx
	andq	$-2097153, %rcx         # imm = 0xFFFFFFFFFFDFFFFF
	orq	$2097152, %rcx          # imm = 0x200000
	movq	%rcx, 208(%rax)
.LBB119_6:                              # %if.end
	jmp	.LBB119_7
.LBB119_7:                              # %if.end.14
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end119:
	.size	frame_make_pointer_invisible, .Lfunc_end119-frame_make_pointer_invisible
	.cfi_endproc

	.globl	frame_make_pointer_visible
	.align	16, 0x90
	.type	frame_make_pointer_visible,@function
frame_make_pointer_visible:             # @frame_make_pointer_visible
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp360:
	.cfi_def_cfa_offset 16
.Ltmp361:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp362:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB120_6
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	cmpq	$0, 376(%rax)
	je	.LBB120_6
# BB#2:                                 # %land.lhs.true.1
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$21, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB120_6
# BB#3:                                 # %land.lhs.true.2
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$20, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB120_6
# BB#4:                                 # %land.lhs.true.7
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	cmpq	$0, 200(%rax)
	je	.LBB120_6
# BB#5:                                 # %if.then
	xorl	%esi, %esi
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	200(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	movq	-8(%rbp), %rax
	movq	208(%rax), %rdi
	andq	$-2097153, %rdi         # imm = 0xFFFFFFFFFFDFFFFF
	movq	%rdi, 208(%rax)
.LBB120_6:                              # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end120:
	.size	frame_make_pointer_visible, .Lfunc_end120-frame_make_pointer_visible
	.cfi_endproc

	.globl	Fframe_pointer_visible_p
	.align	16, 0x90
	.type	Fframe_pointer_visible_p,@function
Fframe_pointer_visible_p:               # @Fframe_pointer_visible_p
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp363:
	.cfi_def_cfa_offset 16
.Ltmp364:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp365:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_any_frame
	movq	208(%rax), %rax
	shrq	$21, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB121_2
# BB#1:                                 # %cond.true
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)         # 8-byte Spill
	jmp	.LBB121_3
.LBB121_2:                              # %cond.false
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB121_3:                              # %cond.end
	movq	-16(%rbp), %rax         # 8-byte Reload
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end121:
	.size	Fframe_pointer_visible_p, .Lfunc_end121-Fframe_pointer_visible_p
	.cfi_endproc

	.globl	make_monitor_attribute_list
	.align	16, 0x90
	.type	make_monitor_attribute_list,@function
make_monitor_attribute_list:            # @make_monitor_attribute_list
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp366:
	.cfi_def_cfa_offset 16
.Ltmp367:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp368:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -48(%rbp)
	movl	$0, -52(%rbp)
.LBB122_1:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB122_11
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB122_1 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -80(%rbp)
	movslq	-52(%rbp), %rax
	shlq	$5, %rax
	addq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movzwl	4(%rax), %edi
	cmpl	$0, %edi
	jne	.LBB122_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB122_1 Depth=1
	jmp	.LBB122_10
.LBB122_4:                              # %if.end
                                        #   in Loop: Header=BB122_1 Depth=1
	movq	-88(%rbp), %rax
	movswq	8(%rax), %rdi
	movq	-88(%rbp), %rax
	movswq	10(%rax), %rsi
	movq	-88(%rbp), %rax
	movzwl	12(%rax), %ecx
	movl	%ecx, %edx
	movq	-88(%rbp), %rax
	movzwl	14(%rax), %ecx
                                        # kill: RCX<def> ECX<kill>
	callq	list4i
	movq	%rax, -72(%rbp)
	movq	-88(%rbp), %rax
	movswq	(%rax), %rdi
	movq	-88(%rbp), %rax
	movswq	2(%rax), %rsi
	movq	-88(%rbp), %rax
	movzwl	4(%rax), %r8d
	movl	%r8d, %edx
	movq	-88(%rbp), %rax
	movzwl	6(%rax), %r8d
	movl	%r8d, %ecx
	callq	list4i
	movl	$867, %edi              # imm = 0x363
	movq	%rax, -64(%rbp)
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	build_string
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movl	$462, %edi              # imm = 0x1CE
	movq	%rax, -80(%rbp)
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rdi
	movslq	-52(%rbp), %rsi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	AREF
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movl	$670, %edi              # imm = 0x29E
	movq	%rax, -80(%rbp)
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx
	movslq	16(%rcx), %rdi
	movq	-88(%rbp), %rcx
	movslq	20(%rcx), %rsi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	list2i
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movl	$1038, %edi             # imm = 0x40E
	movq	%rax, -80(%rbp)
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movl	$482, %edi              # imm = 0x1E2
	movq	%rax, -80(%rbp)
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -80(%rbp)
	movq	-88(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB122_6
# BB#5:                                 # %if.then.48
                                        #   in Loop: Header=BB122_1 Depth=1
	movl	$696, %edi              # imm = 0x2B8
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx
	movq	24(%rcx), %rdi
	movq	-88(%rbp), %rcx
	movq	24(%rcx), %rcx
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	strlen
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	make_string
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -80(%rbp)
.LBB122_6:                              # %if.end.56
                                        #   in Loop: Header=BB122_1 Depth=1
	movl	-52(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jne	.LBB122_8
# BB#7:                                 # %if.then.59
                                        #   in Loop: Header=BB122_1 Depth=1
	movq	-80(%rbp), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB122_9
.LBB122_8:                              # %if.else
                                        #   in Loop: Header=BB122_1 Depth=1
	movq	-80(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	Fcons
	movq	%rax, -40(%rbp)
.LBB122_9:                              # %if.end.61
                                        #   in Loop: Header=BB122_1 Depth=1
	jmp	.LBB122_10
.LBB122_10:                             # %for.inc
                                        #   in Loop: Header=BB122_1 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB122_1
.LBB122_11:                             # %for.end
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB122_13
# BB#12:                                # %if.then.65
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	Fcons
	movq	%rax, -40(%rbp)
.LBB122_13:                             # %if.end.67
	movq	-40(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end122:
	.size	make_monitor_attribute_list, .Lfunc_end122-make_monitor_attribute_list
	.cfi_endproc

	.globl	syms_of_frame
	.align	16, 0x90
	.type	syms_of_frame,@function
syms_of_frame:                          # @syms_of_frame
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp369:
	.cfi_def_cfa_offset 16
.Ltmp370:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp371:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$0, -4(%rbp)
.LBB123_1:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-4(%rbp), %rax
	cmpq	$37, %rax
	jae	.LBB123_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB123_1 Depth=1
	movabsq	$frame_parms, %rax
	movslq	-4(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	cmpl	$0, 8(%rax)
	jge	.LBB123_4
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB123_1 Depth=1
	movabsq	$frame_parms, %rax
	movslq	-4(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rdi
	callq	intern_c_string
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB123_5
.LBB123_4:                              # %cond.false
                                        #   in Loop: Header=BB123_1 Depth=1
	movabsq	$frame_parms, %rax
	movslq	-4(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %edi
	callq	builtin_lisp_symbol
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB123_5:                              # %cond.end
                                        #   in Loop: Header=BB123_1 Depth=1
	movq	-24(%rbp), %rax         # 8-byte Reload
	movl	$1049, %edi             # imm = 0x419
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movslq	-4(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	Fput
	movq	%rax, -40(%rbp)         # 8-byte Spill
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB123_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB123_1
.LBB123_7:                              # %for.end
	jmp	.LBB123_8
.LBB123_8:                              # %do.body
	movabsq	$syms_of_frame.o_fwd, %rdi
	movabsq	$.L.str.28, %rsi
	movabsq	$globals, %rax
	addq	$2856, %rax             # imm = 0xB28
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#9:                                 # %do.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+2856
# BB#10:                                # %do.body.14
	movabsq	$syms_of_frame.o_fwd.29, %rdi
	movabsq	$.L.str.30, %rsi
	movabsq	$globals, %rax
	addq	$2848, %rax             # imm = 0xB20
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#11:                                # %do.end.15
	movabsq	$.L.str.22, %rdi
	callq	build_string
	movq	%rax, globals+2848
# BB#12:                                # %do.body.17
	movabsq	$syms_of_frame.o_fwd.31, %rdi
	movabsq	$.L.str.32, %rsi
	movabsq	$globals, %rax
	addq	$880, %rax              # imm = 0x370
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#13:                                # %do.end.18
	movq	$82, globals+880
# BB#14:                                # %do.body.19
	movabsq	$syms_of_frame.o_fwd.33, %rdi
	movabsq	$.L.str.34, %rsi
	movabsq	$globals, %rax
	addq	$480, %rax              # imm = 0x1E0
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#15:                                # %do.end.20
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+480
# BB#16:                                # %do.body.22
	movabsq	$syms_of_frame.o_fwd.35, %rdi
	movabsq	$.L.str.36, %rsi
	movabsq	$globals, %rax
	addq	$488, %rax              # imm = 0x1E8
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#17:                                # %do.end.23
	movl	$811, %edi              # imm = 0x32B
	callq	builtin_lisp_symbol
	movq	%rax, globals+488
# BB#18:                                # %do.body.25
	movabsq	$syms_of_frame.b_fwd, %rdi
	movabsq	$.L.str.37, %rsi
	movabsq	$globals, %rax
	addq	$3428, %rax             # imm = 0xD64
	movq	%rax, %rdx
	callq	defvar_bool
# BB#19:                                # %do.end.26
	movb	$1, globals+3428
# BB#20:                                # %do.body.27
	movabsq	$syms_of_frame.o_fwd.38, %rdi
	movabsq	$.L.str.39, %rsi
	movabsq	$globals, %rax
	addq	$2320, %rax             # imm = 0x910
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#21:                                # %do.end.28
	jmp	.LBB123_22
.LBB123_22:                             # %do.body.29
	movabsq	$syms_of_frame.o_fwd.40, %rdi
	movabsq	$.L.str.41, %rsi
	movabsq	$globals, %rax
	addq	$1632, %rax             # imm = 0x660
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#23:                                # %do.end.30
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+1632
# BB#24:                                # %do.body.32
	movabsq	$syms_of_frame.o_fwd.42, %rdi
	movabsq	$.L.str.43, %rsi
	movabsq	$globals, %rax
	addq	$1616, %rax             # imm = 0x650
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#25:                                # %do.end.33
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, globals+1616
# BB#26:                                # %do.body.35
	movabsq	$syms_of_frame.o_fwd.44, %rdi
	movabsq	$.L.str.45, %rsi
	movabsq	$globals, %rax
	addq	$1360, %rax             # imm = 0x550
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#27:                                # %do.end.36
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, globals+1360
# BB#28:                                # %do.body.38
	movabsq	$syms_of_frame.o_fwd.46, %rdi
	movabsq	$.L.str.47, %rsi
	movabsq	$globals, %rax
	addq	$792, %rax              # imm = 0x318
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#29:                                # %do.end.39
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+792
# BB#30:                                # %do.body.41
	movabsq	$syms_of_frame.o_fwd.48, %rdi
	movabsq	$.L.str.49, %rsi
	movabsq	$globals, %rax
	addq	$800, %rax              # imm = 0x320
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#31:                                # %do.end.42
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+800
# BB#32:                                # %do.body.44
	movabsq	$syms_of_frame.o_fwd.50, %rdi
	movabsq	$.L.str.51, %rsi
	movabsq	$globals, %rax
	addq	$544, %rax              # imm = 0x220
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#33:                                # %do.end.45
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+544
# BB#34:                                # %do.body.47
	movabsq	$syms_of_frame.o_fwd.52, %rdi
	movabsq	$.L.str.53, %rsi
	movabsq	$globals, %rax
	addq	$1416, %rax             # imm = 0x588
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#35:                                # %do.end.48
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, globals+1416
# BB#36:                                # %do.body.50
	movabsq	$syms_of_frame.o_fwd.54, %rdi
	movabsq	$.L.str.55, %rsi
	movabsq	$globals, %rax
	addq	$2408, %rax             # imm = 0x968
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#37:                                # %do.end.51
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, globals+2408
# BB#38:                                # %do.body.53
	movabsq	$syms_of_frame.ko_fwd, %rdi
	movabsq	$.L.str.56, %rsi
	movl	$160, %edx
	callq	defvar_kboard
# BB#39:                                # %do.end.54
	jmp	.LBB123_40
.LBB123_40:                             # %do.body.55
	movabsq	$syms_of_frame.b_fwd.57, %rdi
	movabsq	$.L.str.58, %rsi
	movabsq	$globals, %rax
	addq	$3380, %rax             # imm = 0xD34
	movq	%rax, %rdx
	callq	defvar_bool
# BB#41:                                # %do.end.56
	movb	$0, globals+3380
# BB#42:                                # %do.body.57
	movabsq	$syms_of_frame.b_fwd.59, %rdi
	movabsq	$.L.str.60, %rsi
	movabsq	$globals, %rax
	addq	$3382, %rax             # imm = 0xD36
	movq	%rax, %rdx
	callq	defvar_bool
# BB#43:                                # %do.end.58
	movb	$0, globals+3382
# BB#44:                                # %do.body.59
	movabsq	$syms_of_frame.o_fwd.61, %rdi
	movabsq	$.L.str.62, %rsi
	movabsq	$globals, %rax
	addq	$2984, %rax             # imm = 0xBA8
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#45:                                # %do.end.60
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+2984
# BB#46:                                # %do.body.62
	movabsq	$syms_of_frame.o_fwd.63, %rdi
	movabsq	$.L.str.64, %rsi
	movabsq	$globals, %rax
	addq	$2992, %rax             # imm = 0xBB0
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#47:                                # %do.end.63
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$Vframe_list, %rdi
	movq	%rax, globals+2992
	callq	staticpro
	movabsq	$Sframep, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sframe_live_p, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Swindow_system, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sframe_windows_min_size, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Smake_terminal_frame, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Shandle_switch_frame, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sselect_frame, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sselected_frame, %rdi
	callq	defsubr
	movabsq	$Sframe_list, %rdi
	callq	defsubr
	movabsq	$Snext_frame, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sprevious_frame, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Slast_nonminibuf_frame, %rdi
	callq	defsubr
	movabsq	$Sdelete_frame, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Smouse_position, %rdi
	callq	defsubr
	movabsq	$Smouse_pixel_position, %rdi
	callq	defsubr
	movabsq	$Sset_mouse_position, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sset_mouse_pixel_position, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Smake_frame_visible, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Smake_frame_invisible, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Siconify_frame, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sframe_visible_p, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Svisible_frame_list, %rdi
	callq	defsubr
	movabsq	$Sraise_frame, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Slower_frame, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sx_focus_frame, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sframe_after_make_frame, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sredirect_frame_focus, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sframe_focus, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sframe_parameters, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sframe_parameter, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Smodify_frame_parameters, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sframe_char_height, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sframe_char_width, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sframe_pixel_height, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sframe_pixel_width, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sframe_text_cols, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sframe_text_lines, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sframe_total_cols, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sframe_total_lines, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sframe_text_width, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sframe_text_height, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sscroll_bar_width, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sscroll_bar_height, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sfringe_width, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sborder_width, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sright_divider_width, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sbottom_divider_width, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Stool_bar_pixel_width, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sset_frame_height, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sset_frame_width, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sset_frame_size, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sframe_position, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sset_frame_position, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sframe_pointer_visible_p, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sx_get_resource, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sx_parse_geometry, %rax
	movq	%rax, %rdi
	callq	defsubr
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end123:
	.size	syms_of_frame, .Lfunc_end123-syms_of_frame
	.cfi_endproc

	.align	16, 0x90
	.type	candidate_frame,@function
candidate_frame:                        # @candidate_frame
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp372:
	.cfi_def_cfa_offset 16
.Ltmp373:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp374:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	subq	$5, %rdx
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rdx
	subq	$5, %rdx
	movq	%rdx, -48(%rbp)
	movq	-40(%rbp), %rdx
	movq	208(%rdx), %rdx
	shrq	$23, %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$1, %eax
	je	.LBB124_3
# BB#1:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	je	.LBB124_3
# BB#2:                                 # %land.lhs.true.8
	movq	-40(%rbp), %rax
	movq	376(%rax), %rax
	movq	72(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	376(%rcx), %rcx
	cmpq	72(%rcx), %rax
	je	.LBB124_14
.LBB124_3:                              # %lor.lhs.false
	movq	-40(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB124_38
# BB#4:                                 # %land.lhs.true.18
	movq	-48(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB124_38
# BB#5:                                 # %land.lhs.true.25
	movq	-40(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	je	.LBB124_7
# BB#6:                                 # %lor.lhs.false.32
	movq	-40(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB124_8
.LBB124_7:                              # %cond.true
	movq	-40(%rbp), %rax
	movq	376(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB124_9
.LBB124_8:                              # %cond.false
	callq	emacs_abort
.LBB124_9:                              # %cond.end
	movq	-48(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	je	.LBB124_11
# BB#10:                                # %lor.lhs.false.46
	movq	-48(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB124_12
.LBB124_11:                             # %cond.true.53
	movq	-48(%rbp), %rax
	movq	376(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB124_13
.LBB124_12:                             # %cond.false.57
	callq	emacs_abort
.LBB124_13:                             # %cond.end.58
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rcx, %rax
	jne	.LBB124_38
.LBB124_14:                             # %if.then
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB124_18
# BB#15:                                # %if.then.62
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	-40(%rbp), %rcx
	cmpq	56(%rcx), %rax
	je	.LBB124_17
# BB#16:                                # %if.then.64
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB124_39
.LBB124_17:                             # %if.end
	jmp	.LBB124_37
.LBB124_18:                             # %if.else
	movl	$1005, %edi             # imm = 0x3ED
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB124_22
# BB#19:                                # %if.then.67
	movq	-40(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$10, %rax
	andq	$3, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB124_21
# BB#20:                                # %if.then.72
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB124_39
.LBB124_21:                             # %if.end.73
	jmp	.LBB124_36
.LBB124_22:                             # %if.else.74
	movq	-32(%rbp), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB124_23
	jmp	.LBB124_28
.LBB124_23:                             # %if.then.76
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB124_26
# BB#24:                                # %lor.lhs.false.79
	movq	-32(%rbp), %rdi
	callq	XWINDOW
	movq	8(%rax), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB124_26
# BB#25:                                # %lor.lhs.false.83
	movq	-32(%rbp), %rdi
	callq	XWINDOW
	movq	8(%rax), %rax
	movq	-40(%rbp), %rdi
	cmpq	32(%rdi), %rax
	jne	.LBB124_27
.LBB124_26:                             # %if.then.87
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB124_39
.LBB124_27:                             # %if.end.88
	jmp	.LBB124_35
.LBB124_28:                             # %if.else.89
	movq	-32(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jne	.LBB124_33
# BB#29:                                # %if.then.91
	movq	-40(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$10, %rax
	andq	$3, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB124_31
# BB#30:                                # %lor.lhs.false.98
	movq	-40(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$12, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB124_32
.LBB124_31:                             # %if.then.103
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB124_39
.LBB124_32:                             # %if.end.104
	jmp	.LBB124_34
.LBB124_33:                             # %if.else.105
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB124_39
.LBB124_34:                             # %if.end.106
	jmp	.LBB124_35
.LBB124_35:                             # %if.end.107
	jmp	.LBB124_36
.LBB124_36:                             # %if.end.108
	jmp	.LBB124_37
.LBB124_37:                             # %if.end.109
	jmp	.LBB124_38
.LBB124_38:                             # %if.end.110
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB124_39:                             # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end124:
	.size	candidate_frame, .Lfunc_end124-candidate_frame
	.cfi_endproc

	.align	16, 0x90
	.type	frame_char_to_pixel_position,@function
frame_char_to_pixel_position:           # @frame_char_to_pixel_position
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp375:
	.cfi_def_cfa_offset 16
.Ltmp376:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp377:
	.cfi_def_cfa_register %rbp
	movl	$2, %eax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rcx
	movl	332(%rcx), %edx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rcx
	imull	364(%rcx), %esi
	addl	%esi, %edx
	movq	-8(%rbp), %rcx
	movl	364(%rcx), %esi
	movl	%eax, -36(%rbp)         # 4-byte Spill
	movl	%esi, %eax
	movl	%edx, -40(%rbp)         # 4-byte Spill
	cltd
	movl	-36(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	movl	-40(%rbp), %r9d         # 4-byte Reload
	addl	%eax, %r9d
	movq	-24(%rbp), %rcx
	movl	%r9d, (%rcx)
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	356(%rcx), %r9d
	movq	-8(%rbp), %rcx
	addl	216(%rcx), %r9d
	cmpl	%r9d, %eax
	jge	.LBB125_2
# BB#1:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB125_3
.LBB125_2:                              # %cond.false
	movq	-8(%rbp), %rax
	movl	332(%rax), %ecx
	movl	%ecx, -44(%rbp)         # 4-byte Spill
.LBB125_3:                              # %cond.end
	movl	-44(%rbp), %eax         # 4-byte Reload
	movl	$2, %ecx
	movl	-16(%rbp), %edx
	movq	-8(%rbp), %rsi
	imull	368(%rsi), %edx
	addl	%edx, %eax
	movq	-8(%rbp), %rsi
	movl	368(%rsi), %edx
	movl	%eax, -48(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movl	-48(%rbp), %ecx         # 4-byte Reload
	addl	%eax, %ecx
	movq	-32(%rbp), %rsi
	movl	%ecx, (%rsi)
	movq	-24(%rbp), %rsi
	cmpl	$0, (%rsi)
	jge	.LBB125_5
# BB#4:                                 # %if.then
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
.LBB125_5:                              # %if.end
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	movq	-8(%rbp), %rax
	cmpl	312(%rax), %ecx
	jle	.LBB125_7
# BB#6:                                 # %if.then.12
	movq	-8(%rbp), %rax
	movl	312(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
.LBB125_7:                              # %if.end.14
	movq	-32(%rbp), %rax
	cmpl	$0, (%rax)
	jge	.LBB125_9
# BB#8:                                 # %if.then.16
	movq	-32(%rbp), %rax
	movl	$0, (%rax)
.LBB125_9:                              # %if.end.17
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	movq	-8(%rbp), %rax
	cmpl	316(%rax), %ecx
	jle	.LBB125_11
# BB#10:                                # %if.then.19
	movq	-8(%rbp), %rax
	movl	316(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
.LBB125_11:                             # %if.end.21
	popq	%rbp
	retq
.Lfunc_end125:
	.size	frame_char_to_pixel_position, .Lfunc_end125-frame_char_to_pixel_position
	.cfi_endproc

	.align	16, 0x90
	.type	frame_name_fnn_p,@function
frame_name_fnn_p:                       # @frame_name_fnn_p
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp378:
	.cfi_def_cfa_offset 16
.Ltmp379:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp380:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	cmpq	$1, -24(%rbp)
	jle	.LBB126_12
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$70, %ecx
	jne	.LBB126_12
# BB#2:                                 # %land.lhs.true.3
	movl	$48, %eax
	movq	-16(%rbp), %rcx
	movsbl	1(%rcx), %edx
	cmpl	%edx, %eax
	jg	.LBB126_12
# BB#3:                                 # %land.lhs.true.8
	movq	-16(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$57, %ecx
	jg	.LBB126_12
# BB#4:                                 # %if.then
	movq	-16(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -32(%rbp)
.LBB126_5:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	$48, %eax
	movq	-32(%rbp), %rdx
	movsbl	(%rdx), %esi
	cmpl	%esi, %eax
	movb	%cl, -33(%rbp)          # 1-byte Spill
	jg	.LBB126_7
# BB#6:                                 # %land.rhs
                                        #   in Loop: Header=BB126_5 Depth=1
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$57, %ecx
	setle	%dl
	movb	%dl, -33(%rbp)          # 1-byte Spill
.LBB126_7:                              # %land.end
                                        #   in Loop: Header=BB126_5 Depth=1
	movb	-33(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB126_8
	jmp	.LBB126_9
.LBB126_8:                              # %while.body
                                        #   in Loop: Header=BB126_5 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB126_5
.LBB126_9:                              # %while.end
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	-24(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB126_11
# BB#10:                                # %if.then.22
	movl	$1, -4(%rbp)
	jmp	.LBB126_13
.LBB126_11:                             # %if.end
	jmp	.LBB126_12
.LBB126_12:                             # %if.end.23
	movl	$0, -4(%rbp)
.LBB126_13:                             # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end126:
	.size	frame_name_fnn_p, .Lfunc_end126-frame_name_fnn_p
	.cfi_endproc

	.type	selected_frame,@object  # @selected_frame
	.comm	selected_frame,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Window system frame should be used"
	.size	.L.str, 35

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Window system is not in use or not initialized"
	.size	.L.str.1, 47

	.type	frame_garbaged,@object  # @frame_garbaged
	.comm	frame_garbaged,1,1
	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Frame and minibuffer must be on the same terminal"
	.size	.L.str.2, 50

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"make-initial-minibuffer-frame"
	.size	.L.str.3, 30

	.type	Vframe_list,@object     # @Vframe_list
	.comm	Vframe_list,8,8
	.type	tty_frame_count,@object # @tty_frame_count
	.local	tty_frame_count
	.comm	tty_frame_count,8,8
	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"F1"
	.size	.L.str.4, 3

	.type	last_nonminibuf_frame,@object # @last_nonminibuf_frame
	.local	last_nonminibuf_frame
	.comm	last_nonminibuf_frame,8,8
	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"handle-focus-in"
	.size	.L.str.5, 16

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Attempt to delete the sole visible or iconified frame"
	.size	.L.str.6, 54

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Attempt to delete the only frame"
	.size	.L.str.7, 33

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Attempt to delete a surrogate minibuffer frame"
	.size	.L.str.8, 47

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Attempt to make invisible the sole visible or iconified frame"
	.size	.L.str.9, 62

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Surrogate minibuffer windows must be minibuffer windows"
	.size	.L.str.10, 56

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Can't change the surrogate minibuffer of a frame with its own minibuffer"
	.size	.L.str.11, 73

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"tty"
	.size	.L.str.12, 4

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Invalid line-spacing"
	.size	.L.str.13, 21

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Invalid screen-gamma"
	.size	.L.str.14, 21

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Font `%s' is not defined"
	.size	.L.str.15, 25

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"The default fontset can't be used for a frame font"
	.size	.L.str.16, 51

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Unknown fontset: %s"
	.size	.L.str.17, 20

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Invalid font"
	.size	.L.str.18, 13

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"No font backend available"
	.size	.L.str.19, 26

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"None of specified font backends are available"
	.size	.L.str.20, 46

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Cannot change the border width of a frame"
	.size	.L.str.21, 42

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Emacs"
	.size	.L.str.22, 6

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"emacs"
	.size	.L.str.23, 6

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"on"
	.size	.L.str.24, 3

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"true"
	.size	.L.str.25, 5

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"off"
	.size	.L.str.26, 4

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"false"
	.size	.L.str.27, 6

	.type	frame_parms,@object     # @frame_parms
	.section	.rodata,"a",@progbits
	.align	16
frame_parms:
	.quad	.L.str.70
	.long	189                     # 0xbd
	.zero	4
	.quad	.L.str.71
	.long	188                     # 0xbc
	.zero	4
	.quad	.L.str.72
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	.L.str.73
	.long	209                     # 0xd1
	.zero	4
	.quad	.L.str.74
	.long	210                     # 0xd2
	.zero	4
	.quad	.L.str.75
	.long	307                     # 0x133
	.zero	4
	.quad	.L.str.76
	.long	309                     # 0x135
	.zero	4
	.quad	.L.str.77
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	.L.str.78
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	.L.str.79
	.long	530                     # 0x212
	.zero	4
	.quad	.L.str.80
	.long	532                     # 0x214
	.zero	4
	.quad	.L.str.81
	.long	563                     # 0x233
	.zero	4
	.quad	.L.str.82
	.long	813                     # 0x32d
	.zero	4
	.quad	.L.str.83
	.long	215                     # 0xd7
	.zero	4
	.quad	.L.str.84
	.long	653                     # 0x28d
	.zero	4
	.quad	.L.str.85
	.long	686                     # 0x2ae
	.zero	4
	.quad	.L.str.86
	.long	696                     # 0x2b8
	.zero	4
	.quad	.L.str.87
	.long	835                     # 0x343
	.zero	4
	.quad	.L.str.88
	.long	833                     # 0x341
	.zero	4
	.quad	.L.str.89
	.long	919                     # 0x397
	.zero	4
	.quad	.L.str.90
	.long	976                     # 0x3d0
	.zero	4
	.quad	.L.str.91
	.long	1003                    # 0x3eb
	.zero	4
	.quad	.L.str.92
	.long	525                     # 0x20d
	.zero	4
	.quad	.L.str.93
	.long	1004                    # 0x3ec
	.zero	4
	.quad	.L.str.94
	.long	923                     # 0x39b
	.zero	4
	.quad	.L.str.95
	.long	832                     # 0x340
	.zero	4
	.quad	.L.str.96
	.long	831                     # 0x33f
	.zero	4
	.quad	.L.str.97
	.long	829                     # 0x33d
	.zero	4
	.quad	.L.str.98
	.long	623                     # 0x26f
	.zero	4
	.quad	.L.str.99
	.long	608                     # 0x260
	.zero	4
	.quad	.L.str.100
	.long	814                     # 0x32e
	.zero	4
	.quad	.L.str.101
	.long	1010                    # 0x3f2
	.zero	4
	.quad	.L.str.102
	.long	472                     # 0x1d8
	.zero	4
	.quad	.L.str.103
	.long	440                     # 0x1b8
	.zero	4
	.quad	.L.str.104
	.long	170                     # 0xaa
	.zero	4
	.quad	.L.str.105
	.long	878                     # 0x36e
	.zero	4
	.quad	.L.str.106
	.long	924                     # 0x39c
	.zero	4
	.size	frame_parms, 592

	.type	syms_of_frame.o_fwd,@object # @syms_of_frame.o_fwd
	.local	syms_of_frame.o_fwd
	.comm	syms_of_frame.o_fwd,16,8
	.type	.L.str.28,@object       # @.str.28
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.28:
	.asciz	"x-resource-name"
	.size	.L.str.28, 16

	.type	syms_of_frame.o_fwd.29,@object # @syms_of_frame.o_fwd.29
	.local	syms_of_frame.o_fwd.29
	.comm	syms_of_frame.o_fwd.29,16,8
	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"x-resource-class"
	.size	.L.str.30, 17

	.type	syms_of_frame.o_fwd.31,@object # @syms_of_frame.o_fwd.31
	.local	syms_of_frame.o_fwd.31
	.comm	syms_of_frame.o_fwd.31,16,8
	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"frame-alpha-lower-limit"
	.size	.L.str.32, 24

	.type	syms_of_frame.o_fwd.33,@object # @syms_of_frame.o_fwd.33
	.local	syms_of_frame.o_fwd.33
	.comm	syms_of_frame.o_fwd.33,16,8
	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"default-frame-alist"
	.size	.L.str.34, 20

	.type	syms_of_frame.o_fwd.35,@object # @syms_of_frame.o_fwd.35
	.local	syms_of_frame.o_fwd.35
	.comm	syms_of_frame.o_fwd.35,16,8
	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"default-frame-scroll-bars"
	.size	.L.str.36, 26

	.type	syms_of_frame.b_fwd,@object # @syms_of_frame.b_fwd
	.local	syms_of_frame.b_fwd
	.comm	syms_of_frame.b_fwd,16,8
	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"scroll-bar-adjust-thumb-portion"
	.size	.L.str.37, 32

	.type	syms_of_frame.o_fwd.38,@object # @syms_of_frame.o_fwd.38
	.local	syms_of_frame.o_fwd.38
	.comm	syms_of_frame.o_fwd.38,16,8
	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"terminal-frame"
	.size	.L.str.39, 15

	.type	syms_of_frame.o_fwd.40,@object # @syms_of_frame.o_fwd.40
	.local	syms_of_frame.o_fwd.40
	.comm	syms_of_frame.o_fwd.40,16,8
	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"mouse-position-function"
	.size	.L.str.41, 24

	.type	syms_of_frame.o_fwd.42,@object # @syms_of_frame.o_fwd.42
	.local	syms_of_frame.o_fwd.42
	.comm	syms_of_frame.o_fwd.42,16,8
	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"mouse-highlight"
	.size	.L.str.43, 16

	.type	syms_of_frame.o_fwd.44,@object # @syms_of_frame.o_fwd.44
	.local	syms_of_frame.o_fwd.44
	.comm	syms_of_frame.o_fwd.44,16,8
	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"make-pointer-invisible"
	.size	.L.str.45, 23

	.type	syms_of_frame.o_fwd.46,@object # @syms_of_frame.o_fwd.46
	.local	syms_of_frame.o_fwd.46
	.comm	syms_of_frame.o_fwd.46,16,8
	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"focus-in-hook"
	.size	.L.str.47, 14

	.type	syms_of_frame.o_fwd.48,@object # @syms_of_frame.o_fwd.48
	.local	syms_of_frame.o_fwd.48
	.comm	syms_of_frame.o_fwd.48,16,8
	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"focus-out-hook"
	.size	.L.str.49, 15

	.type	syms_of_frame.o_fwd.50,@object # @syms_of_frame.o_fwd.50
	.local	syms_of_frame.o_fwd.50
	.comm	syms_of_frame.o_fwd.50,16,8
	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"delete-frame-functions"
	.size	.L.str.51, 23

	.type	syms_of_frame.o_fwd.52,@object # @syms_of_frame.o_fwd.52
	.local	syms_of_frame.o_fwd.52
	.comm	syms_of_frame.o_fwd.52,16,8
	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"menu-bar-mode"
	.size	.L.str.53, 14

	.type	syms_of_frame.o_fwd.54,@object # @syms_of_frame.o_fwd.54
	.local	syms_of_frame.o_fwd.54
	.comm	syms_of_frame.o_fwd.54,16,8
	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"tool-bar-mode"
	.size	.L.str.55, 14

	.type	syms_of_frame.ko_fwd,@object # @syms_of_frame.ko_fwd
	.local	syms_of_frame.ko_fwd
	.comm	syms_of_frame.ko_fwd,8,4
	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"default-minibuffer-frame"
	.size	.L.str.56, 25

	.type	syms_of_frame.b_fwd.57,@object # @syms_of_frame.b_fwd.57
	.local	syms_of_frame.b_fwd.57
	.comm	syms_of_frame.b_fwd.57,16,8
	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"focus-follows-mouse"
	.size	.L.str.58, 20

	.type	syms_of_frame.b_fwd.59,@object # @syms_of_frame.b_fwd.59
	.local	syms_of_frame.b_fwd.59
	.comm	syms_of_frame.b_fwd.59,16,8
	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"frame-resize-pixelwise"
	.size	.L.str.60, 23

	.type	syms_of_frame.o_fwd.61,@object # @syms_of_frame.o_fwd.61
	.local	syms_of_frame.o_fwd.61
	.comm	syms_of_frame.o_fwd.61,16,8
	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"frame-inhibit-implied-resize"
	.size	.L.str.62, 29

	.type	syms_of_frame.o_fwd.63,@object # @syms_of_frame.o_fwd.63
	.local	syms_of_frame.o_fwd.63
	.comm	syms_of_frame.o_fwd.63,16,8
	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"frame-size-history"
	.size	.L.str.64, 19

	.type	Sselected_frame,@object # @Sselected_frame
	.data
	.align	8
Sselected_frame:
	.quad	167772160               # 0xa000000
	.quad	Fselected_frame
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.116
	.quad	0
	.quad	0
	.size	Sselected_frame, 48

	.type	Sframe_list,@object     # @Sframe_list
	.align	8
Sframe_list:
	.quad	167772160               # 0xa000000
	.quad	Fframe_list
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.117
	.quad	0
	.quad	0
	.size	Sframe_list, 48

	.type	Slast_nonminibuf_frame,@object # @Slast_nonminibuf_frame
	.align	8
Slast_nonminibuf_frame:
	.quad	167772160               # 0xa000000
	.quad	Flast_nonminibuf_frame
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.120
	.quad	0
	.quad	0
	.size	Slast_nonminibuf_frame, 48

	.type	Smouse_position,@object # @Smouse_position
	.align	8
Smouse_position:
	.quad	167772160               # 0xa000000
	.quad	Fmouse_position
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.123
	.quad	0
	.quad	0
	.size	Smouse_position, 48

	.type	Smouse_pixel_position,@object # @Smouse_pixel_position
	.align	8
Smouse_pixel_position:
	.quad	167772160               # 0xa000000
	.quad	Fmouse_pixel_position
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.124
	.quad	0
	.quad	0
	.size	Smouse_pixel_position, 48

	.type	Svisible_frame_list,@object # @Svisible_frame_list
	.align	8
Svisible_frame_list:
	.quad	167772160               # 0xa000000
	.quad	Fvisible_frame_list
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.131
	.quad	0
	.quad	0
	.size	Svisible_frame_list, 48

	.type	.L.str.65,@object       # @.str.65
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.65:
	.asciz	"Terminal is not live, can't create new frames on it"
	.size	.L.str.65, 52

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"F%ld"
	.size	.L.str.66, 5

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"Frame names of the form F<num> are usurped by Emacs"
	.size	.L.str.67, 52

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"%lu"
	.size	.L.str.68, 4

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"x-get-resource: must specify both COMPONENT and SUBCLASS or neither"
	.size	.L.str.69, 68

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"auto-raise"
	.size	.L.str.70, 11

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"auto-lower"
	.size	.L.str.71, 11

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"background-color"
	.size	.L.str.72, 17

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"border-color"
	.size	.L.str.73, 13

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"border-width"
	.size	.L.str.74, 13

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"cursor-color"
	.size	.L.str.75, 13

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"cursor-type"
	.size	.L.str.76, 12

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"font"
	.size	.L.str.77, 5

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"foreground-color"
	.size	.L.str.78, 17

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"icon-name"
	.size	.L.str.79, 10

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"icon-type"
	.size	.L.str.80, 10

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"internal-border-width"
	.size	.L.str.81, 22

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"right-divider-width"
	.size	.L.str.82, 20

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"bottom-divider-width"
	.size	.L.str.83, 21

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"menu-bar-lines"
	.size	.L.str.84, 15

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"mouse-color"
	.size	.L.str.85, 12

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"name"
	.size	.L.str.86, 5

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"scroll-bar-width"
	.size	.L.str.87, 17

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"scroll-bar-height"
	.size	.L.str.88, 18

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"title"
	.size	.L.str.89, 6

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"unsplittable"
	.size	.L.str.90, 13

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"vertical-scroll-bars"
	.size	.L.str.91, 21

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"horizontal-scroll-bars"
	.size	.L.str.92, 23

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"visibility"
	.size	.L.str.93, 11

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"tool-bar-lines"
	.size	.L.str.94, 15

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"scroll-bar-foreground"
	.size	.L.str.95, 22

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"scroll-bar-background"
	.size	.L.str.96, 22

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"screen-gamma"
	.size	.L.str.97, 13

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"line-spacing"
	.size	.L.str.98, 13

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"left-fringe"
	.size	.L.str.99, 12

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"right-fringe"
	.size	.L.str.100, 13

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"wait-for-wm"
	.size	.L.str.101, 12

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"fullscreen"
	.size	.L.str.102, 11

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"font-backend"
	.size	.L.str.103, 13

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"alpha"
	.size	.L.str.104, 6

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"sticky"
	.size	.L.str.105, 7

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"tool-bar-position"
	.size	.L.str.106, 18

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"framep"
	.size	.L.str.107, 7

	.type	Sframep,@object         # @Sframep
	.data
	.align	8
Sframep:
	.quad	167772160               # 0xa000000
	.quad	Fframep
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.107
	.quad	0
	.quad	0
	.size	Sframep, 48

	.type	.L.str.108,@object      # @.str.108
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.108:
	.asciz	"frame-live-p"
	.size	.L.str.108, 13

	.type	Sframe_live_p,@object   # @Sframe_live_p
	.data
	.align	8
Sframe_live_p:
	.quad	167772160               # 0xa000000
	.quad	Fframe_live_p
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.108
	.quad	0
	.quad	0
	.size	Sframe_live_p, 48

	.type	.L.str.109,@object      # @.str.109
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.109:
	.asciz	"window-system"
	.size	.L.str.109, 14

	.type	Swindow_system,@object  # @Swindow_system
	.data
	.align	8
Swindow_system:
	.quad	167772160               # 0xa000000
	.quad	Fwindow_system
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.109
	.quad	0
	.quad	0
	.size	Swindow_system, 48

	.type	.L.str.110,@object      # @.str.110
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.110:
	.asciz	"frame-windows-min-size"
	.size	.L.str.110, 23

	.type	Sframe_windows_min_size,@object # @Sframe_windows_min_size
	.data
	.align	8
Sframe_windows_min_size:
	.quad	167772160               # 0xa000000
	.quad	Fframe_windows_min_size
	.short	4                       # 0x4
	.short	4                       # 0x4
	.zero	4
	.quad	.L.str.110
	.quad	0
	.quad	0
	.size	Sframe_windows_min_size, 48

	.type	.L.str.111,@object      # @.str.111
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.111:
	.asciz	"make-terminal-frame"
	.size	.L.str.111, 20

	.type	Smake_terminal_frame,@object # @Smake_terminal_frame
	.data
	.align	8
Smake_terminal_frame:
	.quad	167772160               # 0xa000000
	.quad	Fmake_terminal_frame
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.111
	.quad	0
	.quad	0
	.size	Smake_terminal_frame, 48

	.type	.L.str.112,@object      # @.str.112
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.112:
	.asciz	"handle-switch-frame"
	.size	.L.str.112, 20

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"^e"
	.size	.L.str.113, 3

	.type	Shandle_switch_frame,@object # @Shandle_switch_frame
	.data
	.align	8
Shandle_switch_frame:
	.quad	167772160               # 0xa000000
	.quad	Fhandle_switch_frame
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.112
	.quad	.L.str.113
	.quad	0
	.size	Shandle_switch_frame, 48

	.type	.L.str.114,@object      # @.str.114
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.114:
	.asciz	"select-frame"
	.size	.L.str.114, 13

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"e"
	.size	.L.str.115, 2

	.type	Sselect_frame,@object   # @Sselect_frame
	.data
	.align	8
Sselect_frame:
	.quad	167772160               # 0xa000000
	.quad	Fselect_frame
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.114
	.quad	.L.str.115
	.quad	0
	.size	Sselect_frame, 48

	.type	.L.str.116,@object      # @.str.116
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.116:
	.asciz	"selected-frame"
	.size	.L.str.116, 15

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"frame-list"
	.size	.L.str.117, 11

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"next-frame"
	.size	.L.str.118, 11

	.type	Snext_frame,@object     # @Snext_frame
	.data
	.align	8
Snext_frame:
	.quad	167772160               # 0xa000000
	.quad	Fnext_frame
	.short	0                       # 0x0
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.118
	.quad	0
	.quad	0
	.size	Snext_frame, 48

	.type	.L.str.119,@object      # @.str.119
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.119:
	.asciz	"previous-frame"
	.size	.L.str.119, 15

	.type	Sprevious_frame,@object # @Sprevious_frame
	.data
	.align	8
Sprevious_frame:
	.quad	167772160               # 0xa000000
	.quad	Fprevious_frame
	.short	0                       # 0x0
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.119
	.quad	0
	.quad	0
	.size	Sprevious_frame, 48

	.type	.L.str.120,@object      # @.str.120
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.120:
	.asciz	"last-nonminibuffer-frame"
	.size	.L.str.120, 25

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"delete-frame"
	.size	.L.str.121, 13

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.zero	1
	.size	.L.str.122, 1

	.type	Sdelete_frame,@object   # @Sdelete_frame
	.data
	.align	8
Sdelete_frame:
	.quad	167772160               # 0xa000000
	.quad	Fdelete_frame
	.short	0                       # 0x0
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.121
	.quad	.L.str.122
	.quad	0
	.size	Sdelete_frame, 48

	.type	.L.str.123,@object      # @.str.123
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.123:
	.asciz	"mouse-position"
	.size	.L.str.123, 15

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"mouse-pixel-position"
	.size	.L.str.124, 21

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"set-mouse-position"
	.size	.L.str.125, 19

	.type	Sset_mouse_position,@object # @Sset_mouse_position
	.data
	.align	8
Sset_mouse_position:
	.quad	167772160               # 0xa000000
	.quad	Fset_mouse_position
	.short	3                       # 0x3
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.125
	.quad	0
	.quad	0
	.size	Sset_mouse_position, 48

	.type	.L.str.126,@object      # @.str.126
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.126:
	.asciz	"set-mouse-pixel-position"
	.size	.L.str.126, 25

	.type	Sset_mouse_pixel_position,@object # @Sset_mouse_pixel_position
	.data
	.align	8
Sset_mouse_pixel_position:
	.quad	167772160               # 0xa000000
	.quad	Fset_mouse_pixel_position
	.short	3                       # 0x3
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.126
	.quad	0
	.quad	0
	.size	Sset_mouse_pixel_position, 48

	.type	.L.str.127,@object      # @.str.127
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.127:
	.asciz	"make-frame-visible"
	.size	.L.str.127, 19

	.type	Smake_frame_visible,@object # @Smake_frame_visible
	.data
	.align	8
Smake_frame_visible:
	.quad	167772160               # 0xa000000
	.quad	Fmake_frame_visible
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.127
	.quad	.L.str.122
	.quad	0
	.size	Smake_frame_visible, 48

	.type	.L.str.128,@object      # @.str.128
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.128:
	.asciz	"make-frame-invisible"
	.size	.L.str.128, 21

	.type	Smake_frame_invisible,@object # @Smake_frame_invisible
	.data
	.align	8
Smake_frame_invisible:
	.quad	167772160               # 0xa000000
	.quad	Fmake_frame_invisible
	.short	0                       # 0x0
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.128
	.quad	.L.str.122
	.quad	0
	.size	Smake_frame_invisible, 48

	.type	.L.str.129,@object      # @.str.129
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.129:
	.asciz	"iconify-frame"
	.size	.L.str.129, 14

	.type	Siconify_frame,@object  # @Siconify_frame
	.data
	.align	8
Siconify_frame:
	.quad	167772160               # 0xa000000
	.quad	Ficonify_frame
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.129
	.quad	.L.str.122
	.quad	0
	.size	Siconify_frame, 48

	.type	.L.str.130,@object      # @.str.130
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.130:
	.asciz	"frame-visible-p"
	.size	.L.str.130, 16

	.type	Sframe_visible_p,@object # @Sframe_visible_p
	.data
	.align	8
Sframe_visible_p:
	.quad	167772160               # 0xa000000
	.quad	Fframe_visible_p
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.130
	.quad	0
	.quad	0
	.size	Sframe_visible_p, 48

	.type	.L.str.131,@object      # @.str.131
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.131:
	.asciz	"visible-frame-list"
	.size	.L.str.131, 19

	.type	.L.str.132,@object      # @.str.132
.L.str.132:
	.asciz	"raise-frame"
	.size	.L.str.132, 12

	.type	Sraise_frame,@object    # @Sraise_frame
	.data
	.align	8
Sraise_frame:
	.quad	167772160               # 0xa000000
	.quad	Fraise_frame
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.132
	.quad	.L.str.122
	.quad	0
	.size	Sraise_frame, 48

	.type	.L.str.133,@object      # @.str.133
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.133:
	.asciz	"lower-frame"
	.size	.L.str.133, 12

	.type	Slower_frame,@object    # @Slower_frame
	.data
	.align	8
Slower_frame:
	.quad	167772160               # 0xa000000
	.quad	Flower_frame
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.133
	.quad	.L.str.122
	.quad	0
	.size	Slower_frame, 48

	.type	.L.str.134,@object      # @.str.134
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.134:
	.asciz	"x-focus-frame"
	.size	.L.str.134, 14

	.type	Sx_focus_frame,@object  # @Sx_focus_frame
	.data
	.align	8
Sx_focus_frame:
	.quad	167772160               # 0xa000000
	.quad	Fx_focus_frame
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.134
	.quad	0
	.quad	0
	.size	Sx_focus_frame, 48

	.type	.L.str.135,@object      # @.str.135
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.135:
	.asciz	"frame-after-make-frame"
	.size	.L.str.135, 23

	.type	Sframe_after_make_frame,@object # @Sframe_after_make_frame
	.data
	.align	8
Sframe_after_make_frame:
	.quad	167772160               # 0xa000000
	.quad	Fframe_after_make_frame
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.135
	.quad	0
	.quad	0
	.size	Sframe_after_make_frame, 48

	.type	.L.str.136,@object      # @.str.136
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.136:
	.asciz	"redirect-frame-focus"
	.size	.L.str.136, 21

	.type	Sredirect_frame_focus,@object # @Sredirect_frame_focus
	.data
	.align	8
Sredirect_frame_focus:
	.quad	167772160               # 0xa000000
	.quad	Fredirect_frame_focus
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.136
	.quad	0
	.quad	0
	.size	Sredirect_frame_focus, 48

	.type	.L.str.137,@object      # @.str.137
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.137:
	.asciz	"frame-focus"
	.size	.L.str.137, 12

	.type	Sframe_focus,@object    # @Sframe_focus
	.data
	.align	8
Sframe_focus:
	.quad	167772160               # 0xa000000
	.quad	Fframe_focus
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.137
	.quad	0
	.quad	0
	.size	Sframe_focus, 48

	.type	.L.str.138,@object      # @.str.138
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.138:
	.asciz	"frame-parameters"
	.size	.L.str.138, 17

	.type	Sframe_parameters,@object # @Sframe_parameters
	.data
	.align	8
Sframe_parameters:
	.quad	167772160               # 0xa000000
	.quad	Fframe_parameters
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.138
	.quad	0
	.quad	0
	.size	Sframe_parameters, 48

	.type	.L.str.139,@object      # @.str.139
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.139:
	.asciz	"frame-parameter"
	.size	.L.str.139, 16

	.type	Sframe_parameter,@object # @Sframe_parameter
	.data
	.align	8
Sframe_parameter:
	.quad	167772160               # 0xa000000
	.quad	Fframe_parameter
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.139
	.quad	0
	.quad	0
	.size	Sframe_parameter, 48

	.type	.L.str.140,@object      # @.str.140
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.140:
	.asciz	"modify-frame-parameters"
	.size	.L.str.140, 24

	.type	Smodify_frame_parameters,@object # @Smodify_frame_parameters
	.data
	.align	8
Smodify_frame_parameters:
	.quad	167772160               # 0xa000000
	.quad	Fmodify_frame_parameters
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.140
	.quad	0
	.quad	0
	.size	Smodify_frame_parameters, 48

	.type	.L.str.141,@object      # @.str.141
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.141:
	.asciz	"frame-char-height"
	.size	.L.str.141, 18

	.type	Sframe_char_height,@object # @Sframe_char_height
	.data
	.align	8
Sframe_char_height:
	.quad	167772160               # 0xa000000
	.quad	Fframe_char_height
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.141
	.quad	0
	.quad	0
	.size	Sframe_char_height, 48

	.type	.L.str.142,@object      # @.str.142
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.142:
	.asciz	"frame-char-width"
	.size	.L.str.142, 17

	.type	Sframe_char_width,@object # @Sframe_char_width
	.data
	.align	8
Sframe_char_width:
	.quad	167772160               # 0xa000000
	.quad	Fframe_char_width
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.142
	.quad	0
	.quad	0
	.size	Sframe_char_width, 48

	.type	.L.str.143,@object      # @.str.143
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.143:
	.asciz	"frame-pixel-height"
	.size	.L.str.143, 19

	.type	Sframe_pixel_height,@object # @Sframe_pixel_height
	.data
	.align	8
Sframe_pixel_height:
	.quad	167772160               # 0xa000000
	.quad	Fframe_pixel_height
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.143
	.quad	0
	.quad	0
	.size	Sframe_pixel_height, 48

	.type	.L.str.144,@object      # @.str.144
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.144:
	.asciz	"frame-pixel-width"
	.size	.L.str.144, 18

	.type	Sframe_pixel_width,@object # @Sframe_pixel_width
	.data
	.align	8
Sframe_pixel_width:
	.quad	167772160               # 0xa000000
	.quad	Fframe_pixel_width
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.144
	.quad	0
	.quad	0
	.size	Sframe_pixel_width, 48

	.type	.L.str.145,@object      # @.str.145
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.145:
	.asciz	"frame-text-cols"
	.size	.L.str.145, 16

	.type	Sframe_text_cols,@object # @Sframe_text_cols
	.data
	.align	8
Sframe_text_cols:
	.quad	167772160               # 0xa000000
	.quad	Fframe_text_cols
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.145
	.quad	0
	.quad	0
	.size	Sframe_text_cols, 48

	.type	.L.str.146,@object      # @.str.146
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.146:
	.asciz	"frame-text-lines"
	.size	.L.str.146, 17

	.type	Sframe_text_lines,@object # @Sframe_text_lines
	.data
	.align	8
Sframe_text_lines:
	.quad	167772160               # 0xa000000
	.quad	Fframe_text_lines
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.146
	.quad	0
	.quad	0
	.size	Sframe_text_lines, 48

	.type	.L.str.147,@object      # @.str.147
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.147:
	.asciz	"frame-total-cols"
	.size	.L.str.147, 17

	.type	Sframe_total_cols,@object # @Sframe_total_cols
	.data
	.align	8
Sframe_total_cols:
	.quad	167772160               # 0xa000000
	.quad	Fframe_total_cols
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.147
	.quad	0
	.quad	0
	.size	Sframe_total_cols, 48

	.type	.L.str.148,@object      # @.str.148
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.148:
	.asciz	"frame-total-lines"
	.size	.L.str.148, 18

	.type	Sframe_total_lines,@object # @Sframe_total_lines
	.data
	.align	8
Sframe_total_lines:
	.quad	167772160               # 0xa000000
	.quad	Fframe_total_lines
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.148
	.quad	0
	.quad	0
	.size	Sframe_total_lines, 48

	.type	.L.str.149,@object      # @.str.149
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.149:
	.asciz	"frame-text-width"
	.size	.L.str.149, 17

	.type	Sframe_text_width,@object # @Sframe_text_width
	.data
	.align	8
Sframe_text_width:
	.quad	167772160               # 0xa000000
	.quad	Fframe_text_width
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.149
	.quad	0
	.quad	0
	.size	Sframe_text_width, 48

	.type	.L.str.150,@object      # @.str.150
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.150:
	.asciz	"frame-text-height"
	.size	.L.str.150, 18

	.type	Sframe_text_height,@object # @Sframe_text_height
	.data
	.align	8
Sframe_text_height:
	.quad	167772160               # 0xa000000
	.quad	Fframe_text_height
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.150
	.quad	0
	.quad	0
	.size	Sframe_text_height, 48

	.type	.L.str.151,@object      # @.str.151
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.151:
	.asciz	"frame-scroll-bar-width"
	.size	.L.str.151, 23

	.type	Sscroll_bar_width,@object # @Sscroll_bar_width
	.data
	.align	8
Sscroll_bar_width:
	.quad	167772160               # 0xa000000
	.quad	Fscroll_bar_width
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.151
	.quad	0
	.quad	0
	.size	Sscroll_bar_width, 48

	.type	.L.str.152,@object      # @.str.152
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.152:
	.asciz	"frame-scroll-bar-height"
	.size	.L.str.152, 24

	.type	Sscroll_bar_height,@object # @Sscroll_bar_height
	.data
	.align	8
Sscroll_bar_height:
	.quad	167772160               # 0xa000000
	.quad	Fscroll_bar_height
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.152
	.quad	0
	.quad	0
	.size	Sscroll_bar_height, 48

	.type	.L.str.153,@object      # @.str.153
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.153:
	.asciz	"frame-fringe-width"
	.size	.L.str.153, 19

	.type	Sfringe_width,@object   # @Sfringe_width
	.data
	.align	8
Sfringe_width:
	.quad	167772160               # 0xa000000
	.quad	Ffringe_width
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.153
	.quad	0
	.quad	0
	.size	Sfringe_width, 48

	.type	.L.str.154,@object      # @.str.154
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.154:
	.asciz	"frame-border-width"
	.size	.L.str.154, 19

	.type	Sborder_width,@object   # @Sborder_width
	.data
	.align	8
Sborder_width:
	.quad	167772160               # 0xa000000
	.quad	Fborder_width
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.154
	.quad	0
	.quad	0
	.size	Sborder_width, 48

	.type	.L.str.155,@object      # @.str.155
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.155:
	.asciz	"frame-right-divider-width"
	.size	.L.str.155, 26

	.type	Sright_divider_width,@object # @Sright_divider_width
	.data
	.align	8
Sright_divider_width:
	.quad	167772160               # 0xa000000
	.quad	Fright_divider_width
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.155
	.quad	0
	.quad	0
	.size	Sright_divider_width, 48

	.type	.L.str.156,@object      # @.str.156
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.156:
	.asciz	"frame-bottom-divider-width"
	.size	.L.str.156, 27

	.type	Sbottom_divider_width,@object # @Sbottom_divider_width
	.data
	.align	8
Sbottom_divider_width:
	.quad	167772160               # 0xa000000
	.quad	Fbottom_divider_width
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.156
	.quad	0
	.quad	0
	.size	Sbottom_divider_width, 48

	.type	.L.str.157,@object      # @.str.157
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.157:
	.asciz	"tool-bar-pixel-width"
	.size	.L.str.157, 21

	.type	Stool_bar_pixel_width,@object # @Stool_bar_pixel_width
	.data
	.align	8
Stool_bar_pixel_width:
	.quad	167772160               # 0xa000000
	.quad	Ftool_bar_pixel_width
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.157
	.quad	0
	.quad	0
	.size	Stool_bar_pixel_width, 48

	.type	.L.str.158,@object      # @.str.158
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.158:
	.asciz	"set-frame-height"
	.size	.L.str.158, 17

	.type	Sset_frame_height,@object # @Sset_frame_height
	.data
	.align	8
Sset_frame_height:
	.quad	167772160               # 0xa000000
	.quad	Fset_frame_height
	.short	2                       # 0x2
	.short	4                       # 0x4
	.zero	4
	.quad	.L.str.158
	.quad	0
	.quad	0
	.size	Sset_frame_height, 48

	.type	.L.str.159,@object      # @.str.159
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.159:
	.asciz	"set-frame-width"
	.size	.L.str.159, 16

	.type	Sset_frame_width,@object # @Sset_frame_width
	.data
	.align	8
Sset_frame_width:
	.quad	167772160               # 0xa000000
	.quad	Fset_frame_width
	.short	2                       # 0x2
	.short	4                       # 0x4
	.zero	4
	.quad	.L.str.159
	.quad	0
	.quad	0
	.size	Sset_frame_width, 48

	.type	.L.str.160,@object      # @.str.160
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.160:
	.asciz	"set-frame-size"
	.size	.L.str.160, 15

	.type	Sset_frame_size,@object # @Sset_frame_size
	.data
	.align	8
Sset_frame_size:
	.quad	167772160               # 0xa000000
	.quad	Fset_frame_size
	.short	3                       # 0x3
	.short	4                       # 0x4
	.zero	4
	.quad	.L.str.160
	.quad	0
	.quad	0
	.size	Sset_frame_size, 48

	.type	.L.str.161,@object      # @.str.161
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.161:
	.asciz	"frame-position"
	.size	.L.str.161, 15

	.type	Sframe_position,@object # @Sframe_position
	.data
	.align	8
Sframe_position:
	.quad	167772160               # 0xa000000
	.quad	Fframe_position
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.161
	.quad	0
	.quad	0
	.size	Sframe_position, 48

	.type	.L.str.162,@object      # @.str.162
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.162:
	.asciz	"set-frame-position"
	.size	.L.str.162, 19

	.type	Sset_frame_position,@object # @Sset_frame_position
	.data
	.align	8
Sset_frame_position:
	.quad	167772160               # 0xa000000
	.quad	Fset_frame_position
	.short	3                       # 0x3
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.162
	.quad	0
	.quad	0
	.size	Sset_frame_position, 48

	.type	.L.str.163,@object      # @.str.163
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.163:
	.asciz	"frame-pointer-visible-p"
	.size	.L.str.163, 24

	.type	Sframe_pointer_visible_p,@object # @Sframe_pointer_visible_p
	.data
	.align	8
Sframe_pointer_visible_p:
	.quad	167772160               # 0xa000000
	.quad	Fframe_pointer_visible_p
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.163
	.quad	0
	.quad	0
	.size	Sframe_pointer_visible_p, 48

	.type	.L.str.164,@object      # @.str.164
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.164:
	.asciz	"x-get-resource"
	.size	.L.str.164, 15

	.type	Sx_get_resource,@object # @Sx_get_resource
	.data
	.align	8
Sx_get_resource:
	.quad	167772160               # 0xa000000
	.quad	Fx_get_resource
	.short	2                       # 0x2
	.short	4                       # 0x4
	.zero	4
	.quad	.L.str.164
	.quad	0
	.quad	0
	.size	Sx_get_resource, 48

	.type	.L.str.165,@object      # @.str.165
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.165:
	.asciz	"x-parse-geometry"
	.size	.L.str.165, 17

	.type	Sx_parse_geometry,@object # @Sx_parse_geometry
	.data
	.align	8
Sx_parse_geometry:
	.quad	167772160               # 0xa000000
	.quad	Fx_parse_geometry
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.165
	.quad	0
	.quad	0
	.size	Sx_parse_geometry, 48


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
