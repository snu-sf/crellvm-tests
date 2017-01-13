	.text
	.file	"textprop.bc"
	.globl	validate_interval_range
	.align	16, 0x90
	.type	validate_interval_range,@function
validate_interval_range:                # @validate_interval_range
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
	subq	$224, %rsp
	movb	%cl, %al
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	andb	$1, %al
	movb	%al, -33(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHECK_STRING_OR_BUFFER
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB0_4
# BB#2:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB0_4
# BB#3:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	marker_position
	movq	%rax, %rdi
	callq	make_natnum
	movq	-24(%rbp), %rdi
	movq	%rax, (%rdi)
	jmp	.LBB0_8
.LBB0_4:                                # %if.else
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB0_6
# BB#5:                                 # %cond.true
	jmp	.LBB0_7
.LBB0_6:                                # %cond.false
	movl	$558, %edi              # imm = 0x22E
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB0_7:                                # %cond.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end
	jmp	.LBB0_9
.LBB0_9:                                # %do.end
	jmp	.LBB0_10
.LBB0_10:                               # %do.body.12
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB0_13
# BB#11:                                # %land.lhs.true.17
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB0_13
# BB#12:                                # %if.then.21
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	marker_position
	movq	%rax, %rdi
	callq	make_natnum
	movq	-32(%rbp), %rdi
	movq	%rax, (%rdi)
	jmp	.LBB0_17
.LBB0_13:                               # %if.else.24
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB0_15
# BB#14:                                # %cond.true.30
	jmp	.LBB0_16
.LBB0_15:                               # %cond.false.31
	movl	$558, %edi              # imm = 0x22E
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB0_16:                               # %cond.end.33
	jmp	.LBB0_17
.LBB0_17:                               # %if.end.34
	jmp	.LBB0_18
.LBB0_18:                               # %do.end.35
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	cmpq	(%rcx), %rax
	jne	.LBB0_21
# BB#19:                                # %land.lhs.true.38
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB0_21
# BB#20:                                # %if.then.41
	movq	$0, -8(%rbp)
	jmp	.LBB0_70
.LBB0_21:                               # %if.end.42
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jle	.LBB0_23
# BB#22:                                # %if.then.46
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-64(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB0_23:                               # %if.end.47
	movq	-16(%rbp), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB0_24
	jmp	.LBB0_55
.LBB0_24:                               # %if.then.49
	movq	-16(%rbp), %rdi
	callq	XBUFFER
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpq	current_buffer, %rax
	jne	.LBB0_26
# BB#25:                                # %cond.true.53
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB0_30
.LBB0_26:                               # %cond.false.54
	xorl	%edi, %edi
	movq	-72(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB0_28
# BB#27:                                # %cond.true.58
	movq	-72(%rbp), %rax
	movq	752(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB0_29
.LBB0_28:                               # %cond.false.60
	movq	-72(%rbp), %rax
	movq	368(%rax), %rdi
	callq	marker_position
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB0_29:                               # %cond.end.63
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB0_30:                               # %cond.end.64
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jg	.LBB0_39
# BB#31:                                # %land.lhs.true.69
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jg	.LBB0_39
# BB#32:                                # %land.lhs.true.74
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	movq	-72(%rbp), %rcx
	cmpq	current_buffer, %rcx
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jne	.LBB0_34
# BB#33:                                # %cond.true.78
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB0_38
.LBB0_34:                               # %cond.false.79
	xorl	%edi, %edi
	movq	-72(%rbp), %rax
	movq	376(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB0_36
# BB#35:                                # %cond.true.83
	movq	-72(%rbp), %rax
	movq	768(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jmp	.LBB0_37
.LBB0_36:                               # %cond.false.85
	movq	-72(%rbp), %rax
	movq	376(%rax), %rdi
	callq	marker_position
	movq	%rax, -152(%rbp)        # 8-byte Spill
.LBB0_37:                               # %cond.end.88
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB0_38:                               # %cond.end.90
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jle	.LBB0_40
.LBB0_39:                               # %if.then.94
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	(%rax), %rsi
	callq	args_out_of_range
.LBB0_40:                               # %if.end.95
	movq	-72(%rbp), %rdi
	callq	buffer_intervals
	movq	%rax, -48(%rbp)
	movq	-72(%rbp), %rax
	cmpq	current_buffer, %rax
	jne	.LBB0_42
# BB#41:                                # %cond.true.99
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB0_46
.LBB0_42:                               # %cond.false.101
	xorl	%edi, %edi
	movq	-72(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB0_44
# BB#43:                                # %cond.true.106
	movq	-72(%rbp), %rax
	movq	752(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB0_45
.LBB0_44:                               # %cond.false.108
	movq	-72(%rbp), %rax
	movq	368(%rax), %rdi
	callq	marker_position
	movq	%rax, -176(%rbp)        # 8-byte Spill
.LBB0_45:                               # %cond.end.111
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, -160(%rbp)        # 8-byte Spill
.LBB0_46:                               # %cond.end.113
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	-72(%rbp), %rcx
	cmpq	current_buffer, %rcx
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jne	.LBB0_48
# BB#47:                                # %cond.true.117
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jmp	.LBB0_52
.LBB0_48:                               # %cond.false.119
	xorl	%edi, %edi
	movq	-72(%rbp), %rax
	movq	376(%rax), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-200(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB0_50
# BB#49:                                # %cond.true.124
	movq	-72(%rbp), %rax
	movq	768(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	jmp	.LBB0_51
.LBB0_50:                               # %cond.false.126
	movq	-72(%rbp), %rax
	movq	376(%rax), %rdi
	callq	marker_position
	movq	%rax, -208(%rbp)        # 8-byte Spill
.LBB0_51:                               # %cond.end.129
	movq	-208(%rbp), %rax        # 8-byte Reload
	movq	%rax, -192(%rbp)        # 8-byte Spill
.LBB0_52:                               # %cond.end.131
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	-184(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB0_54
# BB#53:                                # %if.then.135
	movq	$0, -8(%rbp)
	jmp	.LBB0_70
.LBB0_54:                               # %if.end.136
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB0_64
.LBB0_55:                               # %if.else.138
	movq	-16(%rbp), %rdi
	callq	SCHARS
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	%rax, -80(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	cmpq	%rax, %rdi
	jg	.LBB0_58
# BB#56:                                # %land.lhs.true.143
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jg	.LBB0_58
# BB#57:                                # %land.lhs.true.148
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	cmpq	-80(%rbp), %rax
	jle	.LBB0_59
.LBB0_58:                               # %if.then.152
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	(%rax), %rsi
	callq	args_out_of_range
.LBB0_59:                               # %if.end.153
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	movq	%rax, %rdi
	callq	make_natnum
	movq	-24(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB0_61
# BB#60:                                # %if.then.158
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	movq	%rax, %rdi
	callq	make_natnum
	movq	-32(%rbp), %rdi
	movq	%rax, (%rdi)
.LBB0_61:                               # %if.end.161
	movq	-16(%rbp), %rdi
	callq	string_intervals
	movq	%rax, -48(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB0_63
# BB#62:                                # %if.then.165
	movq	$0, -8(%rbp)
	jmp	.LBB0_70
.LBB0_63:                               # %if.end.166
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	movq	%rax, -56(%rbp)
.LBB0_64:                               # %if.end.168
	cmpq	$0, -48(%rbp)
	jne	.LBB0_69
# BB#65:                                # %if.then.169
	testb	$1, -33(%rbp)
	je	.LBB0_67
# BB#66:                                # %cond.true.172
	movq	-16(%rbp), %rdi
	callq	create_root_interval
	movq	%rax, -216(%rbp)        # 8-byte Spill
	jmp	.LBB0_68
.LBB0_67:                               # %cond.false.174
	movq	-48(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
.LBB0_68:                               # %cond.end.175
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	%rax, -8(%rbp)
	jmp	.LBB0_70
.LBB0_69:                               # %if.end.177
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	find_interval
	movq	%rax, -8(%rbp)
.LBB0_70:                               # %return
	movq	-8(%rbp), %rax
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	validate_interval_range, .Lfunc_end0-validate_interval_range
	.cfi_endproc

	.align	16, 0x90
	.type	CHECK_STRING_OR_BUFFER,@function
CHECK_STRING_OR_BUFFER:                 # @CHECK_STRING_OR_BUFFER
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
	callq	STRINGP
	testb	$1, %al
	jne	.LBB1_2
# BB#1:                                 # %lor.lhs.false
	movq	-8(%rbp), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB1_2
	jmp	.LBB1_3
.LBB1_2:                                # %cond.true
	jmp	.LBB1_4
.LBB1_3:                                # %cond.false
	movl	$225, %edi
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB1_4:                                # %cond.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	CHECK_STRING_OR_BUFFER, .Lfunc_end1-CHECK_STRING_OR_BUFFER
	.cfi_endproc

	.globl	interval_of
	.align	16, 0x90
	.type	interval_of,@function
interval_of:                            # @interval_of
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
	subq	$128, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movl	%eax, %edi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movl	$5, %esi
	movq	current_buffer, %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -24(%rbp)
	jmp	.LBB2_5
.LBB2_2:                                # %if.else
	movl	$901, %edi              # imm = 0x385
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB2_4
# BB#3:                                 # %if.then.4
	movq	$0, -8(%rbp)
	jmp	.LBB2_27
.LBB2_4:                                # %if.end
	jmp	.LBB2_5
.LBB2_5:                                # %if.end.5
	movq	-24(%rbp), %rdi
	callq	CHECK_STRING_OR_BUFFER
	movq	-24(%rbp), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB2_6
	jmp	.LBB2_19
.LBB2_6:                                # %if.then.7
	movq	-24(%rbp), %rdi
	callq	XBUFFER
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpq	current_buffer, %rax
	jne	.LBB2_8
# BB#7:                                 # %cond.true
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB2_12
.LBB2_8:                                # %cond.false
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB2_10
# BB#9:                                 # %cond.true.12
	movq	-56(%rbp), %rax
	movq	752(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB2_11
.LBB2_10:                               # %cond.false.14
	movq	-56(%rbp), %rax
	movq	368(%rax), %rdi
	callq	marker_position
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB2_11:                               # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB2_12:                               # %cond.end.17
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	cmpq	current_buffer, %rax
	jne	.LBB2_14
# BB#13:                                # %cond.true.20
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB2_18
.LBB2_14:                               # %cond.false.21
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	376(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB2_16
# BB#15:                                # %cond.true.24
	movq	-56(%rbp), %rax
	movq	768(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB2_17
.LBB2_16:                               # %cond.false.26
	movq	-56(%rbp), %rax
	movq	376(%rax), %rdi
	callq	marker_position
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB2_17:                               # %cond.end.29
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB2_18:                               # %cond.end.31
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rdi
	callq	buffer_intervals
	movq	%rax, -32(%rbp)
	jmp	.LBB2_20
.LBB2_19:                               # %if.else.34
	movq	$0, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	SCHARS
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rdi
	callq	string_intervals
	movq	%rax, -32(%rbp)
.LBB2_20:                               # %if.end.37
	movq	-40(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jg	.LBB2_22
# BB#21:                                # %land.lhs.true
	movq	-16(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jle	.LBB2_23
.LBB2_22:                               # %if.then.40
	movq	-16(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-16(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	args_out_of_range
.LBB2_23:                               # %if.end.43
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.LBB2_25
# BB#24:                                # %lor.lhs.false
	cmpq	$0, -32(%rbp)
	jne	.LBB2_26
.LBB2_25:                               # %if.then.45
	movq	$0, -8(%rbp)
	jmp	.LBB2_27
.LBB2_26:                               # %if.end.46
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	find_interval
	movq	%rax, -8(%rbp)
.LBB2_27:                               # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	interval_of, .Lfunc_end2-interval_of
	.cfi_endproc

	.globl	Ftext_properties_at
	.align	16, 0x90
	.type	Ftext_properties_at,@function
Ftext_properties_at:                    # @Ftext_properties_at
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
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movl	%eax, %edi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movl	$5, %esi
	movq	current_buffer, %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -24(%rbp)
.LBB3_2:                                # %if.end
	leaq	-16(%rbp), %rax
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rdi
	movq	%rax, %rsi
	movq	%rax, %rdx
	callq	validate_interval_range
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB3_4
# BB#3:                                 # %if.then.3
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB3_19
.LBB3_4:                                # %if.end.5
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, -32(%rbp)
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jne	.LBB3_6
# BB#5:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB3_16
.LBB3_6:                                # %cond.false
	cmpq	$0, -32(%rbp)
	jne	.LBB3_8
# BB#7:                                 # %cond.true.8
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	jmp	.LBB3_9
.LBB3_8:                                # %cond.false.9
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB3_9:                                # %cond.end
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	-32(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jne	.LBB3_11
# BB#10:                                # %cond.true.11
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB3_12
.LBB3_11:                               # %cond.false.12
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB3_12:                               # %cond.end.15
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	-72(%rbp), %rcx         # 8-byte Reload
	subq	%rax, %rcx
	movq	-32(%rbp), %rax
	cmpq	$0, 16(%rax)
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	jne	.LBB3_14
# BB#13:                                # %cond.true.18
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB3_15
.LBB3_14:                               # %cond.false.19
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB3_15:                               # %cond.end.22
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-88(%rbp), %rcx         # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
.LBB3_16:                               # %cond.end.25
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	-32(%rbp), %rcx
	addq	8(%rcx), %rax
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB3_18
# BB#17:                                # %if.then.29
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB3_19
.LBB3_18:                               # %if.end.31
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB3_19:                               # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	Ftext_properties_at, .Lfunc_end3-Ftext_properties_at
	.cfi_endproc

	.globl	Fget_text_property
	.align	16, 0x90
	.type	Fget_text_property,@function
Fget_text_property:                     # @Fget_text_property
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	Ftext_properties_at
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	textget
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	Fget_text_property, .Lfunc_end4-Fget_text_property
	.cfi_endproc

	.globl	get_char_property_and_overlay
	.align	16, 0x90
	.type	get_char_property_and_overlay,@function
get_char_property_and_overlay:          # @get_char_property_and_overlay
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
	subq	$256, %rsp              # imm = 0x100
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	$0, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB5_4
# BB#2:                                 # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB5_4
# BB#3:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	marker_position
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -16(%rbp)
	jmp	.LBB5_8
.LBB5_4:                                # %if.else
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB5_6
# BB#5:                                 # %cond.true
	jmp	.LBB5_7
.LBB5_6:                                # %cond.false
	movl	$558, %edi              # imm = 0x22E
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB5_7:                                # %cond.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end
	jmp	.LBB5_9
.LBB5_9:                                # %do.end
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB5_11
# BB#10:                                # %if.then.15
	movl	$5, %esi
	movq	current_buffer, %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -32(%rbp)
.LBB5_11:                               # %if.end.17
	movq	-32(%rbp), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB5_12
	jmp	.LBB5_17
.LBB5_12:                               # %if.then.19
	movq	-32(%rbp), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB5_13
	jmp	.LBB5_15
.LBB5_13:                               # %land.lhs.true.22
	movq	-32(%rbp), %rdi
	callq	XWINDOW
	movq	80(%rax), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB5_14
	jmp	.LBB5_15
.LBB5_14:                               # %cond.true.26
	jmp	.LBB5_16
.LBB5_15:                               # %cond.false.27
	movl	$1027, %edi             # imm = 0x403
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB5_16:                               # %cond.end.29
	movq	-32(%rbp), %rdi
	callq	XWINDOW
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB5_17:                               # %if.end.32
	movq	-32(%rbp), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB5_18
	jmp	.LBB5_63
.LBB5_18:                               # %if.then.34
	movq	current_buffer, %rax
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	-32(%rbp), %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	XBUFFER
	cmpq	current_buffer, %rax
	jne	.LBB5_20
# BB#19:                                # %cond.true.38
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jmp	.LBB5_24
.LBB5_20:                               # %cond.false.39
	movq	-32(%rbp), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	368(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB5_22
# BB#21:                                # %cond.true.44
	movq	-32(%rbp), %rdi
	callq	XBUFFER
	movq	752(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB5_23
.LBB5_22:                               # %cond.false.47
	movq	-32(%rbp), %rdi
	callq	XBUFFER
	movq	368(%rax), %rdi
	callq	marker_position
	movq	%rax, -168(%rbp)        # 8-byte Spill
.LBB5_23:                               # %cond.end.51
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	%rax, -152(%rbp)        # 8-byte Spill
.LBB5_24:                               # %cond.end.52
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	-144(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB5_32
# BB#25:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	-32(%rbp), %rdi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	XBUFFER
	cmpq	current_buffer, %rax
	jne	.LBB5_27
# BB#26:                                # %cond.true.60
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB5_31
.LBB5_27:                               # %cond.false.61
	movq	-32(%rbp), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	376(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB5_29
# BB#28:                                # %cond.true.66
	movq	-32(%rbp), %rdi
	callq	XBUFFER
	movq	768(%rax), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	jmp	.LBB5_30
.LBB5_29:                               # %cond.false.69
	movq	-32(%rbp), %rdi
	callq	XBUFFER
	movq	376(%rax), %rdi
	callq	marker_position
	movq	%rax, -200(%rbp)        # 8-byte Spill
.LBB5_30:                               # %cond.end.73
	movq	-200(%rbp), %rax        # 8-byte Reload
	movq	%rax, -184(%rbp)        # 8-byte Spill
.LBB5_31:                               # %cond.end.75
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	-176(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jle	.LBB5_33
.LBB5_32:                               # %if.then.79
	movl	$177, %edi
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	xsignal1
.LBB5_33:                               # %if.end.81
	movq	-32(%rbp), %rdi
	callq	XBUFFER
	movq	%rax, %rdi
	callq	set_buffer_temp
	movq	$16384, -80(%rbp)       # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -88(%rbp)
	movb	$0, -89(%rbp)
# BB#34:                                # %do.body.84
	movq	$40, -104(%rbp)
# BB#35:                                # %do.body.85
	movq	-104(%rbp), %rax
	movq	-80(%rbp), %rcx
	shrq	$3, %rcx
	shrq	$0, %rcx
	cmpq	%rcx, %rax
	ja	.LBB5_37
# BB#36:                                # %if.then.89
	movq	-104(%rbp), %rax
	shlq	$3, %rax
	movq	-80(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -80(%rbp)
	movq	-104(%rbp), %rax
	leaq	15(,%rax,8), %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -64(%rbp)
	jmp	.LBB5_38
.LBB5_37:                               # %if.else.91
	movl	$8, %eax
	movl	%eax, %esi
	movq	-104(%rbp), %rdi
	callq	xnmalloc
	movabsq	$xfree, %rdi
	movq	%rax, -64(%rbp)
	movb	$1, -89(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	callq	record_unwind_protect_ptr
.LBB5_38:                               # %if.end.93
	jmp	.LBB5_39
.LBB5_39:                               # %do.end.94
	xorl	%esi, %esi
	leaq	-64(%rbp), %rdx
	leaq	-104(%rbp), %rcx
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	-16(%rbp), %r8
	sarq	$2, %r8
	subq	$16, %rsp
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	-208(%rbp), %r8         # 8-byte Reload
	movq	-208(%rbp), %r9         # 8-byte Reload
	movl	$0, (%rsp)
	callq	overlays_at
	addq	$16, %rsp
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jle	.LBB5_46
# BB#40:                                # %if.then.99
	movq	-56(%rbp), %rax
	movq	%rax, -104(%rbp)
# BB#41:                                # %do.body.100
	movq	-104(%rbp), %rax
	movq	-80(%rbp), %rcx
	shrq	$3, %rcx
	shrq	$0, %rcx
	cmpq	%rcx, %rax
	ja	.LBB5_43
# BB#42:                                # %if.then.105
	movq	-104(%rbp), %rax
	shlq	$3, %rax
	movq	-80(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -80(%rbp)
	movq	-104(%rbp), %rax
	leaq	15(,%rax,8), %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -64(%rbp)
	jmp	.LBB5_44
.LBB5_43:                               # %if.else.109
	movl	$8, %eax
	movl	%eax, %esi
	movq	-104(%rbp), %rdi
	callq	xnmalloc
	movabsq	$xfree, %rdi
	movq	%rax, -64(%rbp)
	movb	$1, -89(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	callq	record_unwind_protect_ptr
.LBB5_44:                               # %if.end.111
	jmp	.LBB5_45
.LBB5_45:                               # %do.end.112
	xorl	%esi, %esi
	leaq	-64(%rbp), %rdx
	leaq	-104(%rbp), %rcx
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	-16(%rbp), %r8
	sarq	$2, %r8
	subq	$16, %rsp
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	-216(%rbp), %r8         # 8-byte Reload
	movq	-216(%rbp), %r9         # 8-byte Reload
	movl	$0, (%rsp)
	callq	overlays_at
	addq	$16, %rsp
	movq	%rax, -56(%rbp)
.LBB5_46:                               # %if.end.115
	jmp	.LBB5_47
.LBB5_47:                               # %do.end.116
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	sort_overlays
	movq	%rax, -56(%rbp)
	movq	-72(%rbp), %rdi
	callq	set_buffer_temp
.LBB5_48:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -56(%rbp)
	cmpq	$0, %rax
	jl	.LBB5_58
# BB#49:                                # %while.body
                                        #   in Loop: Header=BB5_48 Depth=1
	movq	-56(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movq	-24(%rbp), %rsi
	callq	Foverlay_get
	xorl	%edi, %edi
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB5_57
# BB#50:                                # %if.then.124
	cmpq	$0, -40(%rbp)
	je	.LBB5_52
# BB#51:                                # %if.then.125
	movq	-56(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB5_52:                               # %if.end.127
	jmp	.LBB5_53
.LBB5_53:                               # %do.body.128
	testb	$1, -89(%rbp)
	je	.LBB5_55
# BB#54:                                # %if.then.130
	xorl	%edi, %edi
	movb	$0, -89(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -240(%rbp)        # 8-byte Spill
.LBB5_55:                               # %if.end.133
	jmp	.LBB5_56
.LBB5_56:                               # %do.end.134
	movq	-112(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB5_66
.LBB5_57:                               # %if.end.135
                                        #   in Loop: Header=BB5_48 Depth=1
	jmp	.LBB5_48
.LBB5_58:                               # %while.end
	jmp	.LBB5_59
.LBB5_59:                               # %do.body.136
	testb	$1, -89(%rbp)
	je	.LBB5_61
# BB#60:                                # %if.then.138
	xorl	%edi, %edi
	movb	$0, -89(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -256(%rbp)        # 8-byte Spill
.LBB5_61:                               # %if.end.141
	jmp	.LBB5_62
.LBB5_62:                               # %do.end.142
	jmp	.LBB5_63
.LBB5_63:                               # %if.end.143
	cmpq	$0, -40(%rbp)
	je	.LBB5_65
# BB#64:                                # %if.then.145
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB5_65:                               # %if.end.147
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	Fget_text_property
	movq	%rax, -8(%rbp)
.LBB5_66:                               # %return
	movq	-8(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	get_char_property_and_overlay, .Lfunc_end5-get_char_property_and_overlay
	.cfi_endproc

	.globl	Fget_char_property
	.align	16, 0x90
	.type	Fget_char_property,@function
Fget_char_property:                     # @Fget_char_property
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
	subq	$32, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	get_char_property_and_overlay
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	Fget_char_property, .Lfunc_end6-Fget_char_property
	.cfi_endproc

	.globl	Fget_char_property_and_overlay
	.align	16, 0x90
	.type	Fget_char_property_and_overlay,@function
Fget_char_property_and_overlay:         # @Fget_char_property_and_overlay
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
	leaq	-32(%rbp), %rcx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	get_char_property_and_overlay
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	Fcons
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	Fget_char_property_and_overlay, .Lfunc_end7-Fget_char_property_and_overlay
	.cfi_endproc

	.globl	Fnext_char_property_change
	.align	16, 0x90
	.type	Fnext_char_property_change,@function
Fnext_char_property_change:             # @Fnext_char_property_change
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	Fnext_overlay_change
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB8_13
# BB#1:                                 # %if.then
	jmp	.LBB8_2
.LBB8_2:                                # %do.body
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB8_5
# BB#3:                                 # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB8_5
# BB#4:                                 # %if.then.7
	movq	-16(%rbp), %rdi
	callq	marker_position
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -16(%rbp)
	jmp	.LBB8_9
.LBB8_5:                                # %if.else
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB8_7
# BB#6:                                 # %cond.true
	jmp	.LBB8_8
.LBB8_7:                                # %cond.false
	movl	$558, %edi              # imm = 0x22E
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB8_8:                                # %cond.end
	jmp	.LBB8_9
.LBB8_9:                                # %if.end
	jmp	.LBB8_10
.LBB8_10:                               # %do.end
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	-24(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jge	.LBB8_12
# BB#11:                                # %if.then.19
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB8_12:                               # %if.end.20
	jmp	.LBB8_13
.LBB8_13:                               # %if.end.21
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fnext_property_change
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	Fnext_char_property_change, .Lfunc_end8-Fnext_char_property_change
	.cfi_endproc

	.globl	Fnext_property_change
	.align	16, 0x90
	.type	Fnext_property_change,@function
Fnext_property_change:                  # @Fnext_property_change
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
	subq	$192, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movl	%eax, %edi
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB9_2
# BB#1:                                 # %if.then
	movl	$5, %esi
	movq	current_buffer, %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -24(%rbp)
.LBB9_2:                                # %if.end
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB9_14
# BB#3:                                 # %land.lhs.true
	movl	$901, %edi              # imm = 0x385
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB9_14
# BB#4:                                 # %if.then.6
	jmp	.LBB9_5
.LBB9_5:                                # %do.body
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB9_8
# BB#6:                                 # %land.lhs.true.9
	movq	-32(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB9_8
# BB#7:                                 # %if.then.13
	movq	-32(%rbp), %rdi
	callq	marker_position
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -32(%rbp)
	jmp	.LBB9_12
.LBB9_8:                                # %if.else
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB9_10
# BB#9:                                 # %cond.true
	jmp	.LBB9_11
.LBB9_10:                               # %cond.false
	movl	$558, %edi              # imm = 0x22E
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB9_11:                               # %cond.end
	jmp	.LBB9_12
.LBB9_12:                               # %if.end.22
	jmp	.LBB9_13
.LBB9_13:                               # %do.end
	jmp	.LBB9_14
.LBB9_14:                               # %if.end.23
	leaq	-16(%rbp), %rax
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rdi
	movq	%rax, %rsi
	movq	%rax, %rdx
	callq	validate_interval_range
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB9_31
# BB#15:                                # %if.then.28
	cmpq	$0, -40(%rbp)
	jne	.LBB9_17
# BB#16:                                # %if.then.29
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB9_18
.LBB9_17:                               # %if.else.30
	movq	-40(%rbp), %rdi
	callq	next_interval
	movq	%rax, -48(%rbp)
.LBB9_18:                               # %if.end.32
	cmpq	$0, -48(%rbp)
	jne	.LBB9_29
# BB#19:                                # %if.then.34
	movq	-24(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB9_20
	jmp	.LBB9_21
.LBB9_20:                               # %cond.true.37
	movq	-24(%rbp), %rdi
	callq	SCHARS
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB9_28
.LBB9_21:                               # %cond.false.39
	movq	-24(%rbp), %rdi
	callq	XBUFFER
	cmpq	current_buffer, %rax
	jne	.LBB9_23
# BB#22:                                # %cond.true.43
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB9_27
.LBB9_23:                               # %cond.false.44
	movq	-24(%rbp), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	376(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB9_25
# BB#24:                                # %cond.true.49
	movq	-24(%rbp), %rdi
	callq	XBUFFER
	movq	768(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB9_26
.LBB9_25:                               # %cond.false.52
	movq	-24(%rbp), %rdi
	callq	XBUFFER
	movq	376(%rax), %rdi
	callq	marker_position
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB9_26:                               # %cond.end.56
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB9_27:                               # %cond.end.57
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB9_28:                               # %cond.end.59
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -16(%rbp)
	jmp	.LBB9_30
.LBB9_29:                               # %if.else.62
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdi
	callq	make_natnum
	movq	%rax, -16(%rbp)
.LBB9_30:                               # %if.end.65
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB9_57
.LBB9_31:                               # %if.end.66
	cmpq	$0, -40(%rbp)
	jne	.LBB9_33
# BB#32:                                # %if.then.68
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB9_57
.LBB9_33:                               # %if.end.69
	movq	-40(%rbp), %rdi
	callq	next_interval
	movq	%rax, -48(%rbp)
.LBB9_34:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -48(%rbp)
	movb	%cl, -121(%rbp)         # 1-byte Spill
	je	.LBB9_39
# BB#35:                                # %land.lhs.true.72
                                        #   in Loop: Header=BB9_34 Depth=1
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	intervals_equal
	xorl	%ecx, %ecx
	movb	%cl, %dl
	testb	$1, %al
	movb	%dl, -121(%rbp)         # 1-byte Spill
	jne	.LBB9_36
	jmp	.LBB9_39
.LBB9_36:                               # %land.rhs
                                        #   in Loop: Header=BB9_34 Depth=1
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movb	$1, %cl
	movq	-136(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	movb	%cl, -137(%rbp)         # 1-byte Spill
	je	.LBB9_38
# BB#37:                                # %lor.rhs
                                        #   in Loop: Header=BB9_34 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	setl	%dl
	movb	%dl, -137(%rbp)         # 1-byte Spill
.LBB9_38:                               # %lor.end
                                        #   in Loop: Header=BB9_34 Depth=1
	movb	-137(%rbp), %al         # 1-byte Reload
	movb	%al, -121(%rbp)         # 1-byte Spill
.LBB9_39:                               # %land.end
                                        #   in Loop: Header=BB9_34 Depth=1
	movb	-121(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB9_40
	jmp	.LBB9_41
.LBB9_40:                               # %while.body
                                        #   in Loop: Header=BB9_34 Depth=1
	movq	-48(%rbp), %rdi
	callq	next_interval
	movq	%rax, -48(%rbp)
	jmp	.LBB9_34
.LBB9_41:                               # %while.end
	cmpq	$0, -48(%rbp)
	je	.LBB9_55
# BB#42:                                # %lor.lhs.false
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rcx
	andq	$7, %rcx
	movl	%ecx, %edx
	andl	$-5, %edx
	cmpl	$2, %edx
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jne	.LBB9_44
# BB#43:                                # %cond.true.89
	movq	-32(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB9_54
.LBB9_44:                               # %cond.false.91
	movq	-24(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB9_45
	jmp	.LBB9_46
.LBB9_45:                               # %cond.true.94
	movq	-24(%rbp), %rdi
	callq	SCHARS
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB9_53
.LBB9_46:                               # %cond.false.96
	movq	-24(%rbp), %rdi
	callq	XBUFFER
	cmpq	current_buffer, %rax
	jne	.LBB9_48
# BB#47:                                # %cond.true.100
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB9_52
.LBB9_48:                               # %cond.false.102
	movq	-24(%rbp), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	376(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB9_50
# BB#49:                                # %cond.true.108
	movq	-24(%rbp), %rdi
	callq	XBUFFER
	movq	768(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jmp	.LBB9_51
.LBB9_50:                               # %cond.false.111
	movq	-24(%rbp), %rdi
	callq	XBUFFER
	movq	376(%rax), %rdi
	callq	marker_position
	movq	%rax, -192(%rbp)        # 8-byte Spill
.LBB9_51:                               # %cond.end.115
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	%rax, -176(%rbp)        # 8-byte Spill
.LBB9_52:                               # %cond.end.117
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, -168(%rbp)        # 8-byte Spill
.LBB9_53:                               # %cond.end.119
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	%rax, -160(%rbp)        # 8-byte Spill
.LBB9_54:                               # %cond.end.121
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	-152(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB9_56
.LBB9_55:                               # %if.then.125
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB9_57
.LBB9_56:                               # %if.else.126
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -8(%rbp)
.LBB9_57:                               # %return
	movq	-8(%rbp), %rax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	Fnext_property_change, .Lfunc_end9-Fnext_property_change
	.cfi_endproc

	.globl	Fprevious_char_property_change
	.align	16, 0x90
	.type	Fprevious_char_property_change,@function
Fprevious_char_property_change:         # @Fprevious_char_property_change
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	Fprevious_overlay_change
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB10_13
# BB#1:                                 # %if.then
	jmp	.LBB10_2
.LBB10_2:                               # %do.body
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB10_5
# BB#3:                                 # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB10_5
# BB#4:                                 # %if.then.7
	movq	-16(%rbp), %rdi
	callq	marker_position
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -16(%rbp)
	jmp	.LBB10_9
.LBB10_5:                               # %if.else
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB10_7
# BB#6:                                 # %cond.true
	jmp	.LBB10_8
.LBB10_7:                               # %cond.false
	movl	$558, %edi              # imm = 0x22E
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB10_8:                               # %cond.end
	jmp	.LBB10_9
.LBB10_9:                               # %if.end
	jmp	.LBB10_10
.LBB10_10:                              # %do.end
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	-24(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jle	.LBB10_12
# BB#11:                                # %if.then.19
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB10_12:                              # %if.end.20
	jmp	.LBB10_13
.LBB10_13:                              # %if.end.21
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fprevious_property_change
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	Fprevious_char_property_change, .Lfunc_end10-Fprevious_char_property_change
	.cfi_endproc

	.globl	Fprevious_property_change
	.align	16, 0x90
	.type	Fprevious_property_change,@function
Fprevious_property_change:              # @Fprevious_property_change
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
	subq	$320, %rsp              # imm = 0x140
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movl	%eax, %edi
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB11_2
# BB#1:                                 # %if.then
	movl	$5, %esi
	movq	current_buffer, %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -24(%rbp)
.LBB11_2:                               # %if.end
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB11_13
# BB#3:                                 # %if.then.4
	jmp	.LBB11_4
.LBB11_4:                               # %do.body
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB11_7
# BB#5:                                 # %land.lhs.true
	movq	-32(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB11_7
# BB#6:                                 # %if.then.10
	movq	-32(%rbp), %rdi
	callq	marker_position
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -32(%rbp)
	jmp	.LBB11_11
.LBB11_7:                               # %if.else
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB11_9
# BB#8:                                 # %cond.true
	jmp	.LBB11_10
.LBB11_9:                               # %cond.false
	movl	$558, %edi              # imm = 0x22E
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB11_10:                              # %cond.end
	jmp	.LBB11_11
.LBB11_11:                              # %if.end.19
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	jmp	.LBB11_13
.LBB11_13:                              # %if.end.20
	leaq	-16(%rbp), %rax
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rdi
	movq	%rax, %rsi
	movq	%rax, %rdx
	callq	validate_interval_range
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB11_15
# BB#14:                                # %if.then.22
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB11_77
.LBB11_15:                              # %if.end.23
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jne	.LBB11_17
# BB#16:                                # %if.then.27
	movq	-40(%rbp), %rdi
	callq	previous_interval
	movq	%rax, -40(%rbp)
.LBB11_17:                              # %if.end.29
	movq	-40(%rbp), %rdi
	callq	previous_interval
	movq	%rax, -48(%rbp)
.LBB11_18:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -48(%rbp)
	movb	%cl, -73(%rbp)          # 1-byte Spill
	je	.LBB11_35
# BB#19:                                # %land.lhs.true.32
                                        #   in Loop: Header=BB11_18 Depth=1
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	intervals_equal
	xorl	%ecx, %ecx
	movb	%cl, %dl
	testb	$1, %al
	movb	%dl, -73(%rbp)          # 1-byte Spill
	jne	.LBB11_20
	jmp	.LBB11_35
.LBB11_20:                              # %land.rhs
                                        #   in Loop: Header=BB11_18 Depth=1
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movb	$1, %cl
	movq	-88(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	movb	%cl, -89(%rbp)          # 1-byte Spill
	je	.LBB11_34
# BB#21:                                # %lor.rhs
                                        #   in Loop: Header=BB11_18 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$0, -48(%rbp)
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jne	.LBB11_23
# BB#22:                                # %cond.true.41
                                        #   in Loop: Header=BB11_18 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB11_33
.LBB11_23:                              # %cond.false.42
                                        #   in Loop: Header=BB11_18 Depth=1
	cmpq	$0, -48(%rbp)
	jne	.LBB11_25
# BB#24:                                # %cond.true.45
                                        #   in Loop: Header=BB11_18 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB11_26
.LBB11_25:                              # %cond.false.46
                                        #   in Loop: Header=BB11_18 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB11_26:                              # %cond.end.47
                                        #   in Loop: Header=BB11_18 Depth=1
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	-48(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jne	.LBB11_28
# BB#27:                                # %cond.true.50
                                        #   in Loop: Header=BB11_18 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	jmp	.LBB11_29
.LBB11_28:                              # %cond.false.51
                                        #   in Loop: Header=BB11_18 Depth=1
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB11_29:                              # %cond.end.54
                                        #   in Loop: Header=BB11_18 Depth=1
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	-128(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	-48(%rbp), %rax
	cmpq	$0, 16(%rax)
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jne	.LBB11_31
# BB#30:                                # %cond.true.58
                                        #   in Loop: Header=BB11_18 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	jmp	.LBB11_32
.LBB11_31:                              # %cond.false.59
                                        #   in Loop: Header=BB11_18 Depth=1
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
.LBB11_32:                              # %cond.end.62
                                        #   in Loop: Header=BB11_18 Depth=1
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	-144(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
.LBB11_33:                              # %cond.end.65
                                        #   in Loop: Header=BB11_18 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-104(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	movq	-32(%rbp), %rax
	sarq	$2, %rax
	cmpq	%rax, %rcx
	setg	%dl
	movb	%dl, -89(%rbp)          # 1-byte Spill
.LBB11_34:                              # %lor.end
                                        #   in Loop: Header=BB11_18 Depth=1
	movb	-89(%rbp), %al          # 1-byte Reload
	movb	%al, -73(%rbp)          # 1-byte Spill
.LBB11_35:                              # %land.end
                                        #   in Loop: Header=BB11_18 Depth=1
	movb	-73(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB11_36
	jmp	.LBB11_37
.LBB11_36:                              # %while.body
                                        #   in Loop: Header=BB11_18 Depth=1
	movq	-48(%rbp), %rdi
	callq	previous_interval
	movq	%rax, -48(%rbp)
	jmp	.LBB11_18
.LBB11_37:                              # %while.end
	cmpq	$0, -48(%rbp)
	je	.LBB11_63
# BB#38:                                # %lor.lhs.false
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$0, -48(%rbp)
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jne	.LBB11_40
# BB#39:                                # %cond.true.75
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	jmp	.LBB11_50
.LBB11_40:                              # %cond.false.76
	cmpq	$0, -48(%rbp)
	jne	.LBB11_42
# BB#41:                                # %cond.true.79
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	jmp	.LBB11_43
.LBB11_42:                              # %cond.false.80
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
.LBB11_43:                              # %cond.end.82
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	-48(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jne	.LBB11_45
# BB#44:                                # %cond.true.87
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	jmp	.LBB11_46
.LBB11_45:                              # %cond.false.88
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
.LBB11_46:                              # %cond.end.91
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	-184(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	-48(%rbp), %rax
	cmpq	$0, 16(%rax)
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	jne	.LBB11_48
# BB#47:                                # %cond.true.97
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	jmp	.LBB11_49
.LBB11_48:                              # %cond.false.98
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
.LBB11_49:                              # %cond.end.101
	movq	-208(%rbp), %rax        # 8-byte Reload
	movq	-200(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
.LBB11_50:                              # %cond.end.104
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	-160(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %edx
	andl	$-5, %edx
	cmpl	$2, %edx
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	jne	.LBB11_52
# BB#51:                                # %cond.true.112
	movq	-32(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	jmp	.LBB11_62
.LBB11_52:                              # %cond.false.114
	movq	-24(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB11_53
	jmp	.LBB11_54
.LBB11_53:                              # %cond.true.117
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	jmp	.LBB11_61
.LBB11_54:                              # %cond.false.118
	movq	-24(%rbp), %rdi
	callq	XBUFFER
	cmpq	current_buffer, %rax
	jne	.LBB11_56
# BB#55:                                # %cond.true.122
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	jmp	.LBB11_60
.LBB11_56:                              # %cond.false.123
	movq	-24(%rbp), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	368(%rax), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-248(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB11_58
# BB#57:                                # %cond.true.128
	movq	-24(%rbp), %rdi
	callq	XBUFFER
	movq	752(%rax), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	jmp	.LBB11_59
.LBB11_58:                              # %cond.false.131
	movq	-24(%rbp), %rdi
	callq	XBUFFER
	movq	368(%rax), %rdi
	callq	marker_position
	movq	%rax, -256(%rbp)        # 8-byte Spill
.LBB11_59:                              # %cond.end.135
	movq	-256(%rbp), %rax        # 8-byte Reload
	movq	%rax, -240(%rbp)        # 8-byte Spill
.LBB11_60:                              # %cond.end.137
	movq	-240(%rbp), %rax        # 8-byte Reload
	movq	%rax, -232(%rbp)        # 8-byte Spill
.LBB11_61:                              # %cond.end.139
	movq	-232(%rbp), %rax        # 8-byte Reload
	movq	%rax, -224(%rbp)        # 8-byte Spill
.LBB11_62:                              # %cond.end.141
	movq	-224(%rbp), %rax        # 8-byte Reload
	movq	-216(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jg	.LBB11_64
.LBB11_63:                              # %if.then.145
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB11_77
.LBB11_64:                              # %if.else.146
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$0, -48(%rbp)
	movq	%rax, -264(%rbp)        # 8-byte Spill
	jne	.LBB11_66
# BB#65:                                # %cond.true.150
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -272(%rbp)        # 8-byte Spill
	jmp	.LBB11_76
.LBB11_66:                              # %cond.false.151
	cmpq	$0, -48(%rbp)
	jne	.LBB11_68
# BB#67:                                # %cond.true.154
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -280(%rbp)        # 8-byte Spill
	jmp	.LBB11_69
.LBB11_68:                              # %cond.false.155
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
.LBB11_69:                              # %cond.end.157
	movq	-280(%rbp), %rax        # 8-byte Reload
	movq	-48(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -288(%rbp)        # 8-byte Spill
	jne	.LBB11_71
# BB#70:                                # %cond.true.162
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -296(%rbp)        # 8-byte Spill
	jmp	.LBB11_72
.LBB11_71:                              # %cond.false.163
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
.LBB11_72:                              # %cond.end.166
	movq	-296(%rbp), %rax        # 8-byte Reload
	movq	-288(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	-48(%rbp), %rax
	cmpq	$0, 16(%rax)
	movq	%rcx, -304(%rbp)        # 8-byte Spill
	jne	.LBB11_74
# BB#73:                                # %cond.true.172
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -312(%rbp)        # 8-byte Spill
	jmp	.LBB11_75
.LBB11_74:                              # %cond.false.173
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
.LBB11_75:                              # %cond.end.176
	movq	-312(%rbp), %rax        # 8-byte Reload
	movq	-304(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -272(%rbp)        # 8-byte Spill
.LBB11_76:                              # %cond.end.179
	movq	-272(%rbp), %rax        # 8-byte Reload
	movq	-264(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -8(%rbp)
.LBB11_77:                              # %return
	movq	-8(%rbp), %rax
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	retq
.Lfunc_end11:
	.size	Fprevious_property_change, .Lfunc_end11-Fprevious_property_change
	.cfi_endproc

	.globl	Fnext_single_char_property_change
	.align	16, 0x90
	.type	Fnext_single_char_property_change,@function
Fnext_single_char_property_change:      # @Fnext_single_char_property_change
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB12_1
	jmp	.LBB12_10
.LBB12_1:                               # %if.then
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	Fnext_single_property_change
	xorl	%edi, %edi
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB12_9
# BB#2:                                 # %if.then.3
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB12_4
# BB#3:                                 # %if.then.6
	movq	-24(%rbp), %rdi
	callq	SCHARS
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB12_8
.LBB12_4:                               # %if.else
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB12_6
# BB#5:                                 # %cond.true
	jmp	.LBB12_7
.LBB12_6:                               # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB12_7:                               # %cond.end
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB12_8:                               # %if.end
	jmp	.LBB12_9
.LBB12_9:                               # %if.end.12
	jmp	.LBB12_48
.LBB12_10:                              # %if.else.13
	callq	SPECPDL_INDEX
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB12_12
# BB#11:                                # %if.then.18
	movq	-24(%rbp), %rdi
	callq	CHECK_BUFFER
.LBB12_12:                              # %if.end.19
	movq	-24(%rbp), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB12_13
	jmp	.LBB12_15
.LBB12_13:                              # %land.lhs.true
	movq	current_buffer, %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	XBUFFER
	movq	-96(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	je	.LBB12_15
# BB#14:                                # %if.then.25
	callq	record_unwind_current_buffer
	movq	-24(%rbp), %rdi
	callq	Fset_buffer
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB12_15:                              # %if.end.27
	jmp	.LBB12_16
.LBB12_16:                              # %do.body
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB12_19
# BB#17:                                # %land.lhs.true.32
	movq	-8(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB12_19
# BB#18:                                # %if.then.36
	movq	-8(%rbp), %rdi
	callq	marker_position
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -8(%rbp)
	jmp	.LBB12_23
.LBB12_19:                              # %if.else.39
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB12_21
# BB#20:                                # %cond.true.45
	jmp	.LBB12_22
.LBB12_21:                              # %cond.false.46
	movl	$558, %edi              # imm = 0x22E
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB12_22:                              # %cond.end.48
	jmp	.LBB12_23
.LBB12_23:                              # %if.end.49
	jmp	.LBB12_24
.LBB12_24:                              # %do.end
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	Fget_char_property
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB12_26
# BB#25:                                # %if.then.54
	movq	current_buffer, %rax
	movq	768(%rax), %rdi
	callq	make_natnum
	movq	%rax, -32(%rbp)
	jmp	.LBB12_36
.LBB12_26:                              # %if.else.56
	jmp	.LBB12_27
.LBB12_27:                              # %do.body.57
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB12_30
# BB#28:                                # %land.lhs.true.62
	movq	-32(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB12_30
# BB#29:                                # %if.then.66
	movq	-32(%rbp), %rdi
	callq	marker_position
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -32(%rbp)
	jmp	.LBB12_34
.LBB12_30:                              # %if.else.69
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB12_32
# BB#31:                                # %cond.true.75
	jmp	.LBB12_33
.LBB12_32:                              # %cond.false.76
	movl	$558, %edi              # imm = 0x22E
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB12_33:                              # %cond.end.78
	jmp	.LBB12_34
.LBB12_34:                              # %if.end.79
	jmp	.LBB12_35
.LBB12_35:                              # %do.end.80
	jmp	.LBB12_36
.LBB12_36:                              # %if.end.81
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	movq	-32(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jl	.LBB12_40
# BB#37:                                # %if.then.85
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	jle	.LBB12_39
# BB#38:                                # %if.then.90
	movq	current_buffer, %rax
	movq	768(%rax), %rdi
	callq	make_natnum
	movq	%rax, -8(%rbp)
.LBB12_39:                              # %if.end.93
	jmp	.LBB12_47
.LBB12_40:                              # %if.else.94
	jmp	.LBB12_41
.LBB12_41:                              # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	Fnext_char_property_change
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	movq	-32(%rbp), %rsi
	sarq	$2, %rsi
	cmpq	%rsi, %rax
	jl	.LBB12_43
# BB#42:                                # %if.then.100
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB12_46
.LBB12_43:                              # %if.end.101
                                        #   in Loop: Header=BB12_41 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	Fget_char_property
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpq	-40(%rbp), %rax
	je	.LBB12_45
# BB#44:                                # %if.then.105
	jmp	.LBB12_46
.LBB12_45:                              # %if.end.106
                                        #   in Loop: Header=BB12_41 Depth=1
	jmp	.LBB12_41
.LBB12_46:                              # %while.end
	jmp	.LBB12_47
.LBB12_47:                              # %if.end.107
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB12_48:                              # %if.end.110
	movq	-8(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	Fnext_single_char_property_change, .Lfunc_end12-Fnext_single_char_property_change
	.cfi_endproc

	.globl	Fnext_single_property_change
	.align	16, 0x90
	.type	Fnext_single_property_change,@function
Fnext_single_property_change:           # @Fnext_single_property_change
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-32(%rbp), %rcx
	movl	%eax, %edi
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB13_2
# BB#1:                                 # %if.then
	movl	$5, %esi
	movq	current_buffer, %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -32(%rbp)
.LBB13_2:                               # %if.end
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB13_13
# BB#3:                                 # %if.then.4
	jmp	.LBB13_4
.LBB13_4:                               # %do.body
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB13_7
# BB#5:                                 # %land.lhs.true
	movq	-40(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB13_7
# BB#6:                                 # %if.then.10
	movq	-40(%rbp), %rdi
	callq	marker_position
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -40(%rbp)
	jmp	.LBB13_11
.LBB13_7:                               # %if.else
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB13_9
# BB#8:                                 # %cond.true
	jmp	.LBB13_10
.LBB13_9:                               # %cond.false
	movl	$558, %edi              # imm = 0x22E
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB13_10:                              # %cond.end
	jmp	.LBB13_11
.LBB13_11:                              # %if.end.19
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	jmp	.LBB13_13
.LBB13_13:                              # %if.end.20
	leaq	-16(%rbp), %rax
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rdi
	movq	%rax, %rsi
	movq	%rax, %rdx
	callq	validate_interval_range
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB13_15
# BB#14:                                # %if.then.22
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB13_39
.LBB13_15:                              # %if.end.23
	movq	-48(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	textget
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rdi
	callq	next_interval
	movq	%rax, -56(%rbp)
.LBB13_16:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -56(%rbp)
	movb	%cl, -89(%rbp)          # 1-byte Spill
	je	.LBB13_21
# BB#17:                                # %land.lhs.true.27
                                        #   in Loop: Header=BB13_16 Depth=1
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	48(%rcx), %rdi
	movq	-24(%rbp), %rsi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	textget
	xorl	%edx, %edx
	movb	%dl, %r8b
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	movb	%r8b, -89(%rbp)         # 1-byte Spill
	jne	.LBB13_21
# BB#18:                                # %land.rhs
                                        #   in Loop: Header=BB13_16 Depth=1
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movb	$1, %cl
	movq	-112(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	movb	%cl, -113(%rbp)         # 1-byte Spill
	je	.LBB13_20
# BB#19:                                # %lor.rhs
                                        #   in Loop: Header=BB13_16 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	-40(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	setl	%dl
	movb	%dl, -113(%rbp)         # 1-byte Spill
.LBB13_20:                              # %lor.end
                                        #   in Loop: Header=BB13_16 Depth=1
	movb	-113(%rbp), %al         # 1-byte Reload
	movb	%al, -89(%rbp)          # 1-byte Spill
.LBB13_21:                              # %land.end
                                        #   in Loop: Header=BB13_16 Depth=1
	movb	-89(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB13_22
	jmp	.LBB13_23
.LBB13_22:                              # %while.body
                                        #   in Loop: Header=BB13_16 Depth=1
	movq	-56(%rbp), %rdi
	callq	next_interval
	movq	%rax, -56(%rbp)
	jmp	.LBB13_16
.LBB13_23:                              # %while.end
	cmpq	$0, -56(%rbp)
	je	.LBB13_37
# BB#24:                                # %lor.lhs.false
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	-40(%rbp), %rcx
	andq	$7, %rcx
	movl	%ecx, %edx
	andl	$-5, %edx
	cmpl	$2, %edx
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jne	.LBB13_26
# BB#25:                                # %cond.true.46
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB13_36
.LBB13_26:                              # %cond.false.48
	movq	-32(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB13_27
	jmp	.LBB13_28
.LBB13_27:                              # %cond.true.51
	movq	-32(%rbp), %rdi
	callq	SCHARS
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB13_35
.LBB13_28:                              # %cond.false.53
	movq	-32(%rbp), %rdi
	callq	XBUFFER
	cmpq	current_buffer, %rax
	jne	.LBB13_30
# BB#29:                                # %cond.true.57
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jmp	.LBB13_34
.LBB13_30:                              # %cond.false.58
	movq	-32(%rbp), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	376(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB13_32
# BB#31:                                # %cond.true.63
	movq	-32(%rbp), %rdi
	callq	XBUFFER
	movq	768(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB13_33
.LBB13_32:                              # %cond.false.66
	movq	-32(%rbp), %rdi
	callq	XBUFFER
	movq	376(%rax), %rdi
	callq	marker_position
	movq	%rax, -168(%rbp)        # 8-byte Spill
.LBB13_33:                              # %cond.end.70
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	%rax, -152(%rbp)        # 8-byte Spill
.LBB13_34:                              # %cond.end.71
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB13_35:                              # %cond.end.73
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB13_36:                              # %cond.end.75
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB13_38
.LBB13_37:                              # %if.then.79
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB13_39
.LBB13_38:                              # %if.else.80
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -8(%rbp)
.LBB13_39:                              # %return
	movq	-8(%rbp), %rax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	Fnext_single_property_change, .Lfunc_end13-Fnext_single_property_change
	.cfi_endproc

	.globl	Fprevious_single_char_property_change
	.align	16, 0x90
	.type	Fprevious_single_char_property_change,@function
Fprevious_single_char_property_change:  # @Fprevious_single_char_property_change
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB14_1
	jmp	.LBB14_10
.LBB14_1:                               # %if.then
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	Fprevious_single_property_change
	xorl	%edi, %edi
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB14_9
# BB#2:                                 # %if.then.3
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB14_4
# BB#3:                                 # %if.then.6
	movq	$2, -8(%rbp)
	jmp	.LBB14_8
.LBB14_4:                               # %if.else
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB14_6
# BB#5:                                 # %cond.true
	jmp	.LBB14_7
.LBB14_6:                               # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB14_7:                               # %cond.end
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB14_8:                               # %if.end
	jmp	.LBB14_9
.LBB14_9:                               # %if.end.11
	jmp	.LBB14_49
.LBB14_10:                              # %if.else.12
	callq	SPECPDL_INDEX
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB14_12
# BB#11:                                # %if.then.17
	movq	-24(%rbp), %rdi
	callq	CHECK_BUFFER
.LBB14_12:                              # %if.end.18
	movq	-24(%rbp), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB14_13
	jmp	.LBB14_15
.LBB14_13:                              # %land.lhs.true
	movq	current_buffer, %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	XBUFFER
	movq	-96(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	je	.LBB14_15
# BB#14:                                # %if.then.24
	callq	record_unwind_current_buffer
	movq	-24(%rbp), %rdi
	callq	Fset_buffer
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB14_15:                              # %if.end.26
	jmp	.LBB14_16
.LBB14_16:                              # %do.body
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB14_19
# BB#17:                                # %land.lhs.true.31
	movq	-8(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB14_19
# BB#18:                                # %if.then.35
	movq	-8(%rbp), %rdi
	callq	marker_position
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -8(%rbp)
	jmp	.LBB14_23
.LBB14_19:                              # %if.else.38
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB14_21
# BB#20:                                # %cond.true.44
	jmp	.LBB14_22
.LBB14_21:                              # %cond.false.45
	movl	$558, %edi              # imm = 0x22E
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB14_22:                              # %cond.end.47
	jmp	.LBB14_23
.LBB14_23:                              # %if.end.48
	jmp	.LBB14_24
.LBB14_24:                              # %do.end
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB14_26
# BB#25:                                # %if.then.52
	movq	current_buffer, %rax
	movq	752(%rax), %rdi
	callq	make_natnum
	movq	%rax, -32(%rbp)
	jmp	.LBB14_36
.LBB14_26:                              # %if.else.54
	jmp	.LBB14_27
.LBB14_27:                              # %do.body.55
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB14_30
# BB#28:                                # %land.lhs.true.60
	movq	-32(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB14_30
# BB#29:                                # %if.then.64
	movq	-32(%rbp), %rdi
	callq	marker_position
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -32(%rbp)
	jmp	.LBB14_34
.LBB14_30:                              # %if.else.67
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB14_32
# BB#31:                                # %cond.true.73
	jmp	.LBB14_33
.LBB14_32:                              # %cond.false.74
	movl	$558, %edi              # imm = 0x22E
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB14_33:                              # %cond.end.76
	jmp	.LBB14_34
.LBB14_34:                              # %if.end.77
	jmp	.LBB14_35
.LBB14_35:                              # %do.end.78
	jmp	.LBB14_36
.LBB14_36:                              # %if.end.79
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	movq	-32(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jg	.LBB14_40
# BB#37:                                # %if.then.83
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	movq	current_buffer, %rcx
	cmpq	752(%rcx), %rax
	jge	.LBB14_39
# BB#38:                                # %if.then.88
	movq	current_buffer, %rax
	movq	752(%rax), %rdi
	callq	make_natnum
	movq	%rax, -8(%rbp)
.LBB14_39:                              # %if.end.91
	jmp	.LBB14_48
.LBB14_40:                              # %if.else.92
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	subq	$1, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	Fget_char_property
	movq	%rax, -48(%rbp)
.LBB14_41:                              # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	Fprevious_char_property_change
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	movq	-32(%rbp), %rsi
	sarq	$2, %rsi
	cmpq	%rsi, %rax
	jg	.LBB14_43
# BB#42:                                # %if.then.100
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB14_47
.LBB14_43:                              # %if.else.101
                                        #   in Loop: Header=BB14_41 Depth=1
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	subq	$1, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	Fget_char_property
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.LBB14_45
# BB#44:                                # %if.then.109
	jmp	.LBB14_47
.LBB14_45:                              # %if.end.110
                                        #   in Loop: Header=BB14_41 Depth=1
	jmp	.LBB14_46
.LBB14_46:                              # %if.end.111
                                        #   in Loop: Header=BB14_41 Depth=1
	jmp	.LBB14_41
.LBB14_47:                              # %while.end
	jmp	.LBB14_48
.LBB14_48:                              # %if.end.112
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB14_49:                              # %if.end.115
	movq	-8(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	Fprevious_single_char_property_change, .Lfunc_end14-Fprevious_single_char_property_change
	.cfi_endproc

	.globl	Fprevious_single_property_change
	.align	16, 0x90
	.type	Fprevious_single_property_change,@function
Fprevious_single_property_change:       # @Fprevious_single_property_change
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
	subq	$336, %rsp              # imm = 0x150
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-32(%rbp), %rcx
	movl	%eax, %edi
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB15_2
# BB#1:                                 # %if.then
	movl	$5, %esi
	movq	current_buffer, %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -32(%rbp)
.LBB15_2:                               # %if.end
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB15_13
# BB#3:                                 # %if.then.4
	jmp	.LBB15_4
.LBB15_4:                               # %do.body
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB15_7
# BB#5:                                 # %land.lhs.true
	movq	-40(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB15_7
# BB#6:                                 # %if.then.10
	movq	-40(%rbp), %rdi
	callq	marker_position
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -40(%rbp)
	jmp	.LBB15_11
.LBB15_7:                               # %if.else
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB15_9
# BB#8:                                 # %cond.true
	jmp	.LBB15_10
.LBB15_9:                               # %cond.false
	movl	$558, %edi              # imm = 0x22E
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB15_10:                              # %cond.end
	jmp	.LBB15_11
.LBB15_11:                              # %if.end.19
	jmp	.LBB15_12
.LBB15_12:                              # %do.end
	jmp	.LBB15_13
.LBB15_13:                              # %if.end.20
	leaq	-16(%rbp), %rax
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rdi
	movq	%rax, %rsi
	movq	%rax, %rdx
	callq	validate_interval_range
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB15_16
# BB#14:                                # %land.lhs.true.22
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jne	.LBB15_16
# BB#15:                                # %if.then.26
	movq	-48(%rbp), %rdi
	callq	previous_interval
	movq	%rax, -48(%rbp)
.LBB15_16:                              # %if.end.28
	cmpq	$0, -48(%rbp)
	jne	.LBB15_18
# BB#17:                                # %if.then.30
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB15_78
.LBB15_18:                              # %if.end.31
	movq	-48(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	textget
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rdi
	callq	previous_interval
	movq	%rax, -56(%rbp)
.LBB15_19:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -56(%rbp)
	movb	%cl, -89(%rbp)          # 1-byte Spill
	je	.LBB15_36
# BB#20:                                # %land.lhs.true.35
                                        #   in Loop: Header=BB15_19 Depth=1
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	48(%rcx), %rdi
	movq	-24(%rbp), %rsi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	textget
	xorl	%edx, %edx
	movb	%dl, %r8b
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	movb	%r8b, -89(%rbp)         # 1-byte Spill
	jne	.LBB15_36
# BB#21:                                # %land.rhs
                                        #   in Loop: Header=BB15_19 Depth=1
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movb	$1, %cl
	movq	-112(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	movb	%cl, -113(%rbp)         # 1-byte Spill
	je	.LBB15_35
# BB#22:                                # %lor.rhs
                                        #   in Loop: Header=BB15_19 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$0, -56(%rbp)
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jne	.LBB15_24
# BB#23:                                # %cond.true.46
                                        #   in Loop: Header=BB15_19 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	jmp	.LBB15_34
.LBB15_24:                              # %cond.false.47
                                        #   in Loop: Header=BB15_19 Depth=1
	cmpq	$0, -56(%rbp)
	jne	.LBB15_26
# BB#25:                                # %cond.true.50
                                        #   in Loop: Header=BB15_19 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB15_27
.LBB15_26:                              # %cond.false.51
                                        #   in Loop: Header=BB15_19 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB15_27:                              # %cond.end.52
                                        #   in Loop: Header=BB15_19 Depth=1
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	-56(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jne	.LBB15_29
# BB#28:                                # %cond.true.55
                                        #   in Loop: Header=BB15_19 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	jmp	.LBB15_30
.LBB15_29:                              # %cond.false.56
                                        #   in Loop: Header=BB15_19 Depth=1
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
.LBB15_30:                              # %cond.end.59
                                        #   in Loop: Header=BB15_19 Depth=1
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	-152(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	-56(%rbp), %rax
	cmpq	$0, 16(%rax)
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	jne	.LBB15_32
# BB#31:                                # %cond.true.63
                                        #   in Loop: Header=BB15_19 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	jmp	.LBB15_33
.LBB15_32:                              # %cond.false.64
                                        #   in Loop: Header=BB15_19 Depth=1
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
.LBB15_33:                              # %cond.end.67
                                        #   in Loop: Header=BB15_19 Depth=1
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	-168(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
.LBB15_34:                              # %cond.end.70
                                        #   in Loop: Header=BB15_19 Depth=1
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	-128(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	cmpq	%rax, %rcx
	setg	%dl
	movb	%dl, -113(%rbp)         # 1-byte Spill
.LBB15_35:                              # %lor.end
                                        #   in Loop: Header=BB15_19 Depth=1
	movb	-113(%rbp), %al         # 1-byte Reload
	movb	%al, -89(%rbp)          # 1-byte Spill
.LBB15_36:                              # %land.end
                                        #   in Loop: Header=BB15_19 Depth=1
	movb	-89(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB15_37
	jmp	.LBB15_38
.LBB15_37:                              # %while.body
                                        #   in Loop: Header=BB15_19 Depth=1
	movq	-56(%rbp), %rdi
	callq	previous_interval
	movq	%rax, -56(%rbp)
	jmp	.LBB15_19
.LBB15_38:                              # %while.end
	cmpq	$0, -56(%rbp)
	je	.LBB15_64
# BB#39:                                # %lor.lhs.false
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$0, -56(%rbp)
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jne	.LBB15_41
# BB#40:                                # %cond.true.80
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	jmp	.LBB15_51
.LBB15_41:                              # %cond.false.81
	cmpq	$0, -56(%rbp)
	jne	.LBB15_43
# BB#42:                                # %cond.true.84
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	jmp	.LBB15_44
.LBB15_43:                              # %cond.false.85
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
.LBB15_44:                              # %cond.end.87
	movq	-200(%rbp), %rax        # 8-byte Reload
	movq	-56(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -208(%rbp)        # 8-byte Spill
	jne	.LBB15_46
# BB#45:                                # %cond.true.92
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	jmp	.LBB15_47
.LBB15_46:                              # %cond.false.93
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
.LBB15_47:                              # %cond.end.96
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	-208(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	-56(%rbp), %rax
	cmpq	$0, 16(%rax)
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	jne	.LBB15_49
# BB#48:                                # %cond.true.102
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	jmp	.LBB15_50
.LBB15_49:                              # %cond.false.103
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
.LBB15_50:                              # %cond.end.106
	movq	-232(%rbp), %rax        # 8-byte Reload
	movq	-224(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -192(%rbp)        # 8-byte Spill
.LBB15_51:                              # %cond.end.109
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	-184(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %edx
	andl	$-5, %edx
	cmpl	$2, %edx
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	jne	.LBB15_53
# BB#52:                                # %cond.true.117
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	jmp	.LBB15_63
.LBB15_53:                              # %cond.false.119
	movq	-32(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB15_54
	jmp	.LBB15_55
.LBB15_54:                              # %cond.true.122
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	jmp	.LBB15_62
.LBB15_55:                              # %cond.false.123
	movq	-32(%rbp), %rdi
	callq	XBUFFER
	cmpq	current_buffer, %rax
	jne	.LBB15_57
# BB#56:                                # %cond.true.127
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	jmp	.LBB15_61
.LBB15_57:                              # %cond.false.128
	movq	-32(%rbp), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	368(%rax), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-272(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB15_59
# BB#58:                                # %cond.true.133
	movq	-32(%rbp), %rdi
	callq	XBUFFER
	movq	752(%rax), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	jmp	.LBB15_60
.LBB15_59:                              # %cond.false.136
	movq	-32(%rbp), %rdi
	callq	XBUFFER
	movq	368(%rax), %rdi
	callq	marker_position
	movq	%rax, -280(%rbp)        # 8-byte Spill
.LBB15_60:                              # %cond.end.140
	movq	-280(%rbp), %rax        # 8-byte Reload
	movq	%rax, -264(%rbp)        # 8-byte Spill
.LBB15_61:                              # %cond.end.142
	movq	-264(%rbp), %rax        # 8-byte Reload
	movq	%rax, -256(%rbp)        # 8-byte Spill
.LBB15_62:                              # %cond.end.144
	movq	-256(%rbp), %rax        # 8-byte Reload
	movq	%rax, -248(%rbp)        # 8-byte Spill
.LBB15_63:                              # %cond.end.146
	movq	-248(%rbp), %rax        # 8-byte Reload
	movq	-240(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jg	.LBB15_65
.LBB15_64:                              # %if.then.150
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB15_78
.LBB15_65:                              # %if.else.151
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$0, -56(%rbp)
	movq	%rax, -288(%rbp)        # 8-byte Spill
	jne	.LBB15_67
# BB#66:                                # %cond.true.155
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -296(%rbp)        # 8-byte Spill
	jmp	.LBB15_77
.LBB15_67:                              # %cond.false.156
	cmpq	$0, -56(%rbp)
	jne	.LBB15_69
# BB#68:                                # %cond.true.159
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -304(%rbp)        # 8-byte Spill
	jmp	.LBB15_70
.LBB15_69:                              # %cond.false.160
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
.LBB15_70:                              # %cond.end.162
	movq	-304(%rbp), %rax        # 8-byte Reload
	movq	-56(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -312(%rbp)        # 8-byte Spill
	jne	.LBB15_72
# BB#71:                                # %cond.true.167
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	jmp	.LBB15_73
.LBB15_72:                              # %cond.false.168
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
.LBB15_73:                              # %cond.end.171
	movq	-320(%rbp), %rax        # 8-byte Reload
	movq	-312(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	-56(%rbp), %rax
	cmpq	$0, 16(%rax)
	movq	%rcx, -328(%rbp)        # 8-byte Spill
	jne	.LBB15_75
# BB#74:                                # %cond.true.177
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -336(%rbp)        # 8-byte Spill
	jmp	.LBB15_76
.LBB15_75:                              # %cond.false.178
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
.LBB15_76:                              # %cond.end.181
	movq	-336(%rbp), %rax        # 8-byte Reload
	movq	-328(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -296(%rbp)        # 8-byte Spill
.LBB15_77:                              # %cond.end.184
	movq	-296(%rbp), %rax        # 8-byte Reload
	movq	-288(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -8(%rbp)
.LBB15_78:                              # %return
	movq	-8(%rbp), %rax
	addq	$336, %rsp              # imm = 0x150
	popq	%rbp
	retq
.Lfunc_end15:
	.size	Fprevious_single_property_change, .Lfunc_end15-Fprevious_single_property_change
	.cfi_endproc

	.globl	Fadd_text_properties
	.align	16, 0x90
	.type	Fadd_text_properties,@function
Fadd_text_properties:                   # @Fadd_text_properties
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
	xorl	%r8d, %r8d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	add_text_properties_1
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	Fadd_text_properties, .Lfunc_end16-Fadd_text_properties
	.cfi_endproc

	.align	16, 0x90
	.type	add_text_properties_1,@function
add_text_properties_1:                  # @add_text_properties_1
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
	subq	$400, %rsp              # imm = 0x190
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movb	$0, -81(%rbp)
	movb	$1, -82(%rbp)
	movq	-32(%rbp), %rdi
	callq	validate_plist
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB17_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB17_103
.LBB17_2:                               # %if.end
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB17_4
# BB#3:                                 # %if.then.5
	movl	$5, %esi
	movq	current_buffer, %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -40(%rbp)
.LBB17_4:                               # %if.end.7
	jmp	.LBB17_5
.LBB17_5:                               # %retry
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_21 Depth 2
	leaq	-16(%rbp), %rsi
	leaq	-24(%rbp), %rdx
	movl	$1, %ecx
	movq	-40(%rbp), %rdi
	callq	validate_interval_range
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB17_7
# BB#6:                                 # %if.then.9
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB17_103
.LBB17_7:                               # %if.end.11
                                        #   in Loop: Header=BB17_5 Depth=1
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -72(%rbp)
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	subq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-32(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	interval_has_all_properties
	testb	$1, %al
	jne	.LBB17_8
	jmp	.LBB17_38
.LBB17_8:                               # %if.then.14
                                        #   in Loop: Header=BB17_5 Depth=1
	cmpq	$0, -56(%rbp)
	jne	.LBB17_10
# BB#9:                                 # %cond.true
                                        #   in Loop: Header=BB17_5 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	jmp	.LBB17_20
.LBB17_10:                              # %cond.false
                                        #   in Loop: Header=BB17_5 Depth=1
	cmpq	$0, -56(%rbp)
	jne	.LBB17_12
# BB#11:                                # %cond.true.17
                                        #   in Loop: Header=BB17_5 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB17_13
.LBB17_12:                              # %cond.false.18
                                        #   in Loop: Header=BB17_5 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB17_13:                              # %cond.end
                                        #   in Loop: Header=BB17_5 Depth=1
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	-56(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jne	.LBB17_15
# BB#14:                                # %cond.true.20
                                        #   in Loop: Header=BB17_5 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	jmp	.LBB17_16
.LBB17_15:                              # %cond.false.21
                                        #   in Loop: Header=BB17_5 Depth=1
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
.LBB17_16:                              # %cond.end.24
                                        #   in Loop: Header=BB17_5 Depth=1
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	-152(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	-56(%rbp), %rax
	cmpq	$0, 16(%rax)
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	jne	.LBB17_18
# BB#17:                                # %cond.true.28
                                        #   in Loop: Header=BB17_5 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	jmp	.LBB17_19
.LBB17_18:                              # %cond.false.29
                                        #   in Loop: Header=BB17_5 Depth=1
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
.LBB17_19:                              # %cond.end.32
                                        #   in Loop: Header=BB17_5 Depth=1
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	-168(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
.LBB17_20:                              # %cond.end.35
                                        #   in Loop: Header=BB17_5 Depth=1
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	-72(%rbp), %rcx
	movq	-56(%rbp), %rdx
	subq	8(%rdx), %rcx
	subq	%rcx, %rax
	movq	%rax, -96(%rbp)
.LBB17_21:                              # %do.body
                                        #   Parent Loop BB17_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-96(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jl	.LBB17_23
# BB#22:                                # %if.then.40
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB17_103
.LBB17_23:                              # %if.end.42
                                        #   in Loop: Header=BB17_21 Depth=2
	movq	-96(%rbp), %rax
	movq	-80(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -80(%rbp)
	movq	-56(%rbp), %rdi
	callq	next_interval
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB17_25
# BB#24:                                # %cond.true.46
                                        #   in Loop: Header=BB17_21 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	jmp	.LBB17_35
.LBB17_25:                              # %cond.false.47
                                        #   in Loop: Header=BB17_21 Depth=2
	cmpq	$0, -56(%rbp)
	jne	.LBB17_27
# BB#26:                                # %cond.true.49
                                        #   in Loop: Header=BB17_21 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	jmp	.LBB17_28
.LBB17_27:                              # %cond.false.50
                                        #   in Loop: Header=BB17_21 Depth=2
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
.LBB17_28:                              # %cond.end.52
                                        #   in Loop: Header=BB17_21 Depth=2
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	-56(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -200(%rbp)        # 8-byte Spill
	jne	.LBB17_30
# BB#29:                                # %cond.true.56
                                        #   in Loop: Header=BB17_21 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	jmp	.LBB17_31
.LBB17_30:                              # %cond.false.57
                                        #   in Loop: Header=BB17_21 Depth=2
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
.LBB17_31:                              # %cond.end.60
                                        #   in Loop: Header=BB17_21 Depth=2
	movq	-208(%rbp), %rax        # 8-byte Reload
	movq	-200(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	-56(%rbp), %rax
	cmpq	$0, 16(%rax)
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	jne	.LBB17_33
# BB#32:                                # %cond.true.65
                                        #   in Loop: Header=BB17_21 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	jmp	.LBB17_34
.LBB17_33:                              # %cond.false.66
                                        #   in Loop: Header=BB17_21 Depth=2
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
.LBB17_34:                              # %cond.end.69
                                        #   in Loop: Header=BB17_21 Depth=2
	movq	-224(%rbp), %rax        # 8-byte Reload
	movq	-216(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
.LBB17_35:                              # %cond.end.72
                                        #   in Loop: Header=BB17_21 Depth=2
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, -96(%rbp)
# BB#36:                                # %do.cond
                                        #   in Loop: Header=BB17_21 Depth=2
	movq	-32(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	interval_has_all_properties
	testb	$1, %al
	jne	.LBB17_21
# BB#37:                                # %do.end
                                        #   in Loop: Header=BB17_5 Depth=1
	jmp	.LBB17_41
.LBB17_38:                              # %if.else
                                        #   in Loop: Header=BB17_5 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-72(%rbp), %rax
	je	.LBB17_40
# BB#39:                                # %if.then.77
                                        #   in Loop: Header=BB17_5 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	-64(%rbp), %rcx
	subq	8(%rcx), %rax
	movq	%rax, %rsi
	callq	split_interval_right
	movq	%rax, -56(%rbp)
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	copy_properties
.LBB17_40:                              # %if.end.81
                                        #   in Loop: Header=BB17_5 Depth=1
	jmp	.LBB17_41
.LBB17_41:                              # %if.end.82
                                        #   in Loop: Header=BB17_5 Depth=1
	movq	-40(%rbp), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB17_42
	jmp	.LBB17_53
.LBB17_42:                              # %land.lhs.true
                                        #   in Loop: Header=BB17_5 Depth=1
	testb	$1, -82(%rbp)
	je	.LBB17_53
# BB#43:                                # %if.then.85
                                        #   in Loop: Header=BB17_5 Depth=1
	cmpq	$0, -56(%rbp)
	jne	.LBB17_45
# BB#44:                                # %cond.true.87
                                        #   in Loop: Header=BB17_5 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	jmp	.LBB17_46
.LBB17_45:                              # %cond.false.88
                                        #   in Loop: Header=BB17_5 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
.LBB17_46:                              # %cond.end.90
                                        #   in Loop: Header=BB17_5 Depth=1
	movq	-232(%rbp), %rax        # 8-byte Reload
	movq	%rax, -104(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	modify_text_properties
	cmpq	$0, -56(%rbp)
	jne	.LBB17_48
# BB#47:                                # %cond.true.94
                                        #   in Loop: Header=BB17_5 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	jmp	.LBB17_49
.LBB17_48:                              # %cond.false.95
                                        #   in Loop: Header=BB17_5 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
.LBB17_49:                              # %cond.end.97
                                        #   in Loop: Header=BB17_5 Depth=1
	movq	-240(%rbp), %rax        # 8-byte Reload
	cmpq	-104(%rbp), %rax
	jne	.LBB17_51
# BB#50:                                # %lor.lhs.false
                                        #   in Loop: Header=BB17_5 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-112(%rbp), %rax
	je	.LBB17_52
.LBB17_51:                              # %if.then.102
                                        #   in Loop: Header=BB17_5 Depth=1
	movb	$0, -82(%rbp)
	jmp	.LBB17_5
.LBB17_52:                              # %if.end.103
	jmp	.LBB17_53
.LBB17_53:                              # %if.end.104
	jmp	.LBB17_54
.LBB17_54:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -56(%rbp)
	jne	.LBB17_56
# BB#55:                                # %cond.true.106
                                        #   in Loop: Header=BB17_54 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -248(%rbp)        # 8-byte Spill
	jmp	.LBB17_66
.LBB17_56:                              # %cond.false.107
                                        #   in Loop: Header=BB17_54 Depth=1
	cmpq	$0, -56(%rbp)
	jne	.LBB17_58
# BB#57:                                # %cond.true.109
                                        #   in Loop: Header=BB17_54 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	jmp	.LBB17_59
.LBB17_58:                              # %cond.false.110
                                        #   in Loop: Header=BB17_54 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
.LBB17_59:                              # %cond.end.112
                                        #   in Loop: Header=BB17_54 Depth=1
	movq	-256(%rbp), %rax        # 8-byte Reload
	movq	-56(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -264(%rbp)        # 8-byte Spill
	jne	.LBB17_61
# BB#60:                                # %cond.true.116
                                        #   in Loop: Header=BB17_54 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -272(%rbp)        # 8-byte Spill
	jmp	.LBB17_62
.LBB17_61:                              # %cond.false.117
                                        #   in Loop: Header=BB17_54 Depth=1
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
.LBB17_62:                              # %cond.end.120
                                        #   in Loop: Header=BB17_54 Depth=1
	movq	-272(%rbp), %rax        # 8-byte Reload
	movq	-264(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	-56(%rbp), %rax
	cmpq	$0, 16(%rax)
	movq	%rcx, -280(%rbp)        # 8-byte Spill
	jne	.LBB17_64
# BB#63:                                # %cond.true.125
                                        #   in Loop: Header=BB17_54 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -288(%rbp)        # 8-byte Spill
	jmp	.LBB17_65
.LBB17_64:                              # %cond.false.126
                                        #   in Loop: Header=BB17_54 Depth=1
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
.LBB17_65:                              # %cond.end.129
                                        #   in Loop: Header=BB17_54 Depth=1
	movq	-288(%rbp), %rax        # 8-byte Reload
	movq	-280(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -248(%rbp)        # 8-byte Spill
.LBB17_66:                              # %cond.end.132
                                        #   in Loop: Header=BB17_54 Depth=1
	movq	-248(%rbp), %rax        # 8-byte Reload
	cmpq	-80(%rbp), %rax
	jl	.LBB17_90
# BB#67:                                # %if.then.135
	movq	-32(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	interval_has_all_properties
	testb	$1, %al
	jne	.LBB17_68
	jmp	.LBB17_71
.LBB17_68:                              # %if.then.137
	movq	-40(%rbp), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB17_69
	jmp	.LBB17_70
.LBB17_69:                              # %if.then.139
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	-24(%rbp), %rcx
	sarq	$2, %rcx
	movq	-16(%rbp), %rdx
	sarq	$2, %rdx
	subq	%rdx, %rcx
	movq	-24(%rbp), %rdx
	sarq	$2, %rdx
	movq	-16(%rbp), %rsi
	sarq	$2, %rsi
	subq	%rsi, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	signal_after_change
.LBB17_70:                              # %if.end.147
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB17_103
.LBB17_71:                              # %if.end.149
	cmpq	$0, -56(%rbp)
	jne	.LBB17_73
# BB#72:                                # %cond.true.151
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -296(%rbp)        # 8-byte Spill
	jmp	.LBB17_83
.LBB17_73:                              # %cond.false.152
	cmpq	$0, -56(%rbp)
	jne	.LBB17_75
# BB#74:                                # %cond.true.154
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -304(%rbp)        # 8-byte Spill
	jmp	.LBB17_76
.LBB17_75:                              # %cond.false.155
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
.LBB17_76:                              # %cond.end.157
	movq	-304(%rbp), %rax        # 8-byte Reload
	movq	-56(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -312(%rbp)        # 8-byte Spill
	jne	.LBB17_78
# BB#77:                                # %cond.true.161
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	jmp	.LBB17_79
.LBB17_78:                              # %cond.false.162
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
.LBB17_79:                              # %cond.end.165
	movq	-320(%rbp), %rax        # 8-byte Reload
	movq	-312(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	-56(%rbp), %rax
	cmpq	$0, 16(%rax)
	movq	%rcx, -328(%rbp)        # 8-byte Spill
	jne	.LBB17_81
# BB#80:                                # %cond.true.170
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -336(%rbp)        # 8-byte Spill
	jmp	.LBB17_82
.LBB17_81:                              # %cond.false.171
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
.LBB17_82:                              # %cond.end.174
	movq	-336(%rbp), %rax        # 8-byte Reload
	movq	-328(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -296(%rbp)        # 8-byte Spill
.LBB17_83:                              # %cond.end.177
	movq	-296(%rbp), %rax        # 8-byte Reload
	cmpq	-80(%rbp), %rax
	jne	.LBB17_87
# BB#84:                                # %if.then.180
	movq	-32(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movl	-44(%rbp), %ecx
	callq	add_properties
	movq	-40(%rbp), %rdi
	movb	%al, -337(%rbp)         # 1-byte Spill
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB17_85
	jmp	.LBB17_86
.LBB17_85:                              # %if.then.183
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	-24(%rbp), %rcx
	sarq	$2, %rcx
	movq	-16(%rbp), %rdx
	sarq	$2, %rdx
	subq	%rdx, %rcx
	movq	-24(%rbp), %rdx
	sarq	$2, %rdx
	movq	-16(%rbp), %rsi
	sarq	$2, %rsi
	subq	%rsi, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	signal_after_change
.LBB17_86:                              # %if.end.191
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB17_103
.LBB17_87:                              # %if.end.193
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	split_interval_left
	movq	%rax, -56(%rbp)
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	copy_properties
	movq	-32(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movl	-44(%rbp), %ecx
	callq	add_properties
	movq	-40(%rbp), %rdi
	movb	%al, -338(%rbp)         # 1-byte Spill
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB17_88
	jmp	.LBB17_89
.LBB17_88:                              # %if.then.197
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	-24(%rbp), %rcx
	sarq	$2, %rcx
	movq	-16(%rbp), %rdx
	sarq	$2, %rdx
	subq	%rdx, %rcx
	movq	-24(%rbp), %rdx
	sarq	$2, %rdx
	movq	-16(%rbp), %rsi
	sarq	$2, %rsi
	subq	%rsi, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	signal_after_change
.LBB17_89:                              # %if.end.205
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB17_103
.LBB17_90:                              # %if.end.207
                                        #   in Loop: Header=BB17_54 Depth=1
	cmpq	$0, -56(%rbp)
	jne	.LBB17_92
# BB#91:                                # %cond.true.209
                                        #   in Loop: Header=BB17_54 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -352(%rbp)        # 8-byte Spill
	jmp	.LBB17_102
.LBB17_92:                              # %cond.false.210
                                        #   in Loop: Header=BB17_54 Depth=1
	cmpq	$0, -56(%rbp)
	jne	.LBB17_94
# BB#93:                                # %cond.true.212
                                        #   in Loop: Header=BB17_54 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -360(%rbp)        # 8-byte Spill
	jmp	.LBB17_95
.LBB17_94:                              # %cond.false.213
                                        #   in Loop: Header=BB17_54 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
.LBB17_95:                              # %cond.end.215
                                        #   in Loop: Header=BB17_54 Depth=1
	movq	-360(%rbp), %rax        # 8-byte Reload
	movq	-56(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -368(%rbp)        # 8-byte Spill
	jne	.LBB17_97
# BB#96:                                # %cond.true.219
                                        #   in Loop: Header=BB17_54 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -376(%rbp)        # 8-byte Spill
	jmp	.LBB17_98
.LBB17_97:                              # %cond.false.220
                                        #   in Loop: Header=BB17_54 Depth=1
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
.LBB17_98:                              # %cond.end.223
                                        #   in Loop: Header=BB17_54 Depth=1
	movq	-376(%rbp), %rax        # 8-byte Reload
	movq	-368(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	-56(%rbp), %rax
	cmpq	$0, 16(%rax)
	movq	%rcx, -384(%rbp)        # 8-byte Spill
	jne	.LBB17_100
# BB#99:                                # %cond.true.228
                                        #   in Loop: Header=BB17_54 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -392(%rbp)        # 8-byte Spill
	jmp	.LBB17_101
.LBB17_100:                             # %cond.false.229
                                        #   in Loop: Header=BB17_54 Depth=1
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
.LBB17_101:                             # %cond.end.232
                                        #   in Loop: Header=BB17_54 Depth=1
	movq	-392(%rbp), %rax        # 8-byte Reload
	movq	-384(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -352(%rbp)        # 8-byte Spill
.LBB17_102:                             # %cond.end.235
                                        #   in Loop: Header=BB17_54 Depth=1
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	-80(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -80(%rbp)
	movq	-32(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movl	-44(%rbp), %ecx
	callq	add_properties
	andb	$1, %al
	movzbl	%al, %ecx
	movb	-81(%rbp), %al
	andb	$1, %al
	movzbl	%al, %r8d
	orl	%ecx, %r8d
	cmpl	$0, %r8d
	setne	%al
	andb	$1, %al
	movb	%al, -81(%rbp)
	movq	-56(%rbp), %rdi
	callq	next_interval
	movq	%rax, -56(%rbp)
	jmp	.LBB17_54
.LBB17_103:                             # %return
	movq	-8(%rbp), %rax
	addq	$400, %rsp              # imm = 0x190
	popq	%rbp
	retq
.Lfunc_end17:
	.size	add_text_properties_1, .Lfunc_end17-add_text_properties_1
	.cfi_endproc

	.globl	Fput_text_property
	.align	16, 0x90
	.type	Fput_text_property,@function
Fput_text_property:                     # @Fput_text_property
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
	subq	$96, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, -64(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -80(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movl	$3, %esi
	leaq	-80(%rbp), %rcx
	movq	%rax, -72(%rbp)
	movq	%rcx, %rdi
	callq	make_lisp_ptr
	movl	$3, %esi
	leaq	-64(%rbp), %rcx
	movq	%rax, -56(%rbp)
	movq	%rcx, %rdi
	callq	make_lisp_ptr
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	Fadd_text_properties
	xorl	%edi, %edi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	Fput_text_property, .Lfunc_end18-Fput_text_property
	.cfi_endproc

	.globl	Fset_text_properties
	.align	16, 0x90
	.type	Fset_text_properties,@function
Fset_text_properties:                   # @Fset_text_properties
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
	subq	$64, %rsp
	movl	$901, %eax              # imm = 0x385
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	%rax, %r8
	callq	set_text_properties
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	Fset_text_properties, .Lfunc_end19-Fset_text_properties
	.cfi_endproc

	.globl	set_text_properties
	.align	16, 0x90
	.type	set_text_properties,@function
set_text_properties:                    # @set_text_properties
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -64(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, -72(%rbp)
	movq	-32(%rbp), %rdi
	callq	validate_plist
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB20_2
# BB#1:                                 # %if.then
	movl	$5, %esi
	movq	current_buffer, %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -40(%rbp)
.LBB20_2:                               # %if.end
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB20_9
# BB#3:                                 # %land.lhs.true
	movq	-40(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB20_4
	jmp	.LBB20_9
.LBB20_4:                               # %land.lhs.true.6
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jne	.LBB20_9
# BB#5:                                 # %land.lhs.true.8
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	movq	-40(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	SCHARS
	movq	-96(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	jne	.LBB20_9
# BB#6:                                 # %if.then.12
	movq	-40(%rbp), %rdi
	callq	string_intervals
	cmpq	$0, %rax
	jne	.LBB20_8
# BB#7:                                 # %if.then.14
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB20_22
.LBB20_8:                               # %if.end.16
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rdi
	callq	set_string_intervals
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB20_22
.LBB20_9:                               # %if.end.18
	leaq	-16(%rbp), %rsi
	leaq	-24(%rbp), %rdx
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rdi
	callq	validate_interval_range
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB20_15
# BB#10:                                # %if.then.21
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB20_12
# BB#11:                                # %if.then.24
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB20_22
.LBB20_12:                              # %if.end.26
	leaq	-16(%rbp), %rsi
	leaq	-24(%rbp), %rdx
	movl	$1, %ecx
	movq	-64(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rdi
	callq	validate_interval_range
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB20_14
# BB#13:                                # %if.then.29
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB20_22
.LBB20_14:                              # %if.end.31
	jmp	.LBB20_15
.LBB20_15:                              # %if.end.32
	movq	-40(%rbp), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB20_16
	jmp	.LBB20_18
.LBB20_16:                              # %land.lhs.true.34
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB20_18
# BB#17:                                # %if.then.37
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	modify_text_properties
.LBB20_18:                              # %if.end.38
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-56(%rbp), %r8
	callq	set_text_properties_1
	movq	-40(%rbp), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB20_19
	jmp	.LBB20_21
.LBB20_19:                              # %land.lhs.true.40
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB20_21
# BB#20:                                # %if.then.43
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	-24(%rbp), %rcx
	sarq	$2, %rcx
	movq	-16(%rbp), %rdx
	sarq	$2, %rdx
	subq	%rdx, %rcx
	movq	-24(%rbp), %rdx
	sarq	$2, %rdx
	movq	-16(%rbp), %rsi
	sarq	$2, %rsi
	subq	%rsi, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	signal_after_change
.LBB20_21:                              # %if.end.50
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB20_22:                              # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	set_text_properties, .Lfunc_end20-set_text_properties
	.cfi_endproc

	.globl	Fadd_face_text_property
	.align	16, 0x90
	.type	Fadd_face_text_property,@function
Fadd_face_text_property:                # @Fadd_face_text_property
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
	subq	$144, %rsp
	movl	$397, %eax              # imm = 0x18D
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	builtin_lisp_symbol
	movl	$3, %esi
	leaq	-80(%rbp), %rcx
	movq	%rax, -72(%rbp)
	movq	%rcx, %rdi
	callq	make_lisp_ptr
	movl	$3, %esi
	leaq	-64(%rbp), %rcx
	movq	%rax, -56(%rbp)
	movq	%rcx, %rdi
	callq	make_lisp_ptr
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %r8
	movq	%r8, -88(%rbp)          # 8-byte Spill
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$2, %edi
	movl	$1, %r9d
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	cmovel	%r9d, %edi
	movq	-96(%rbp), %rax         # 8-byte Reload
	movl	%edi, -124(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movl	-124(%rbp), %r8d        # 4-byte Reload
	callq	add_text_properties_1
	xorl	%edi, %edi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	Fadd_face_text_property, .Lfunc_end21-Fadd_face_text_property
	.cfi_endproc

	.align	16, 0x90
	.type	validate_plist,@function
validate_plist:                         # @validate_plist
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
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB22_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB22_18
.LBB22_2:                               # %if.end
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB22_17
# BB#3:                                 # %if.then.4
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB22_4:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB22_6
# BB#5:                                 # %if.then.9
	movabsq	$.L.str.7, %rdi
	movb	$0, %al
	callq	error
.LBB22_6:                               # %if.end.10
                                        #   in Loop: Header=BB22_4 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
# BB#7:                                 # %do.body.14
                                        #   in Loop: Header=BB22_4 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB22_10
# BB#8:                                 # %land.lhs.true
                                        #   in Loop: Header=BB22_4 Depth=1
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB22_10
# BB#9:                                 # %if.then.21
                                        #   in Loop: Header=BB22_4 Depth=1
	callq	process_quit_flag
	jmp	.LBB22_13
.LBB22_10:                              # %if.else
                                        #   in Loop: Header=BB22_4 Depth=1
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB22_12
# BB#11:                                # %if.then.22
                                        #   in Loop: Header=BB22_4 Depth=1
	callq	process_pending_signals
.LBB22_12:                              # %if.end.23
                                        #   in Loop: Header=BB22_4 Depth=1
	jmp	.LBB22_13
.LBB22_13:                              # %if.end.24
                                        #   in Loop: Header=BB22_4 Depth=1
	jmp	.LBB22_14
.LBB22_14:                              # %do.end
                                        #   in Loop: Header=BB22_4 Depth=1
	jmp	.LBB22_15
.LBB22_15:                              # %do.cond
                                        #   in Loop: Header=BB22_4 Depth=1
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB22_4
# BB#16:                                # %do.end.29
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB22_18
.LBB22_17:                              # %if.end.30
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	list2
	movq	%rax, -8(%rbp)
.LBB22_18:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	validate_plist, .Lfunc_end22-validate_plist
	.cfi_endproc

	.align	16, 0x90
	.type	modify_text_properties,@function
modify_text_properties:                 # @modify_text_properties
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	sarq	$2, %rdx
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	sarq	$2, %rdx
	movq	%rdx, -40(%rbp)
	movq	-8(%rbp), %rdi
	callq	XBUFFER
	movq	%rax, -48(%rbp)
	movq	current_buffer, %rax
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	callq	set_buffer_internal
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	prepare_to_modify_buffer_1
# BB#1:                                 # %do.body
	movq	-48(%rbp), %rax
	movq	720(%rax), %rax
	movq	104(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	720(%rcx), %rcx
	cmpq	48(%rcx), %rax
	jne	.LBB23_4
# BB#2:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	720(%rax), %rax
	movq	112(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	720(%rcx), %rcx
	cmpq	72(%rcx), %rax
	jne	.LBB23_4
# BB#3:                                 # %if.then
	movq	-32(%rbp), %rax
	subq	$1, %rax
	subq	$1, %rax
	movq	-48(%rbp), %rcx
	movq	720(%rcx), %rcx
	movq	%rax, 88(%rcx)
	movq	-48(%rbp), %rax
	movq	720(%rax), %rax
	movq	16(%rax), %rax
	subq	-40(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	720(%rcx), %rcx
	movq	%rax, 96(%rcx)
	jmp	.LBB23_9
.LBB23_4:                               # %if.else
	movq	-48(%rbp), %rax
	movq	720(%rax), %rax
	movq	16(%rax), %rax
	subq	-40(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	720(%rcx), %rcx
	cmpq	96(%rcx), %rax
	jge	.LBB23_6
# BB#5:                                 # %if.then.17
	movq	-48(%rbp), %rax
	movq	720(%rax), %rax
	movq	16(%rax), %rax
	subq	-40(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	720(%rcx), %rcx
	movq	%rax, 96(%rcx)
.LBB23_6:                               # %if.end
	movq	-32(%rbp), %rax
	subq	$1, %rax
	subq	$1, %rax
	movq	-48(%rbp), %rcx
	movq	720(%rcx), %rcx
	cmpq	88(%rcx), %rax
	jge	.LBB23_8
# BB#7:                                 # %if.then.28
	movq	-32(%rbp), %rax
	subq	$1, %rax
	subq	$1, %rax
	movq	-48(%rbp), %rcx
	movq	720(%rcx), %rcx
	movq	%rax, 88(%rcx)
.LBB23_8:                               # %if.end.33
	jmp	.LBB23_9
.LBB23_9:                               # %if.end.34
	jmp	.LBB23_10
.LBB23_10:                              # %do.end
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	48(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	64(%rcx), %rax
	jg	.LBB23_12
# BB#11:                                # %if.then.39
	callq	record_first_change
.LBB23_12:                              # %if.end.40
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	48(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, 48(%rax)
	movq	current_buffer, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_point_before_scroll
	movq	-56(%rbp), %rdi
	callq	set_buffer_internal
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	modify_text_properties, .Lfunc_end23-modify_text_properties
	.cfi_endproc

	.globl	set_text_properties_1
	.align	16, 0x90
	.type	set_text_properties_1,@function
set_text_properties_1:                  # @set_text_properties_1
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
	subq	$368, %rsp              # imm = 0x170
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	-8(%rbp), %rcx
	sarq	$2, %rcx
	movq	-16(%rbp), %rdx
	sarq	$2, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB24_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	subq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB24_6
.LBB24_2:                               # %if.else
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	-8(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jge	.LBB24_4
# BB#3:                                 # %if.then.7
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	subq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB24_5
.LBB24_4:                               # %if.else.11
	jmp	.LBB24_96
.LBB24_5:                               # %if.end
	jmp	.LBB24_6
.LBB24_6:                               # %if.end.12
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-56(%rbp), %rax
	je	.LBB24_48
# BB#7:                                 # %if.then.14
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	-72(%rbp), %rcx
	subq	8(%rcx), %rax
	movq	%rax, %rsi
	callq	split_interval_right
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB24_9
# BB#8:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB24_19
.LBB24_9:                               # %cond.false
	cmpq	$0, -40(%rbp)
	jne	.LBB24_11
# BB#10:                                # %cond.true.19
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	jmp	.LBB24_12
.LBB24_11:                              # %cond.false.20
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB24_12:                              # %cond.end
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	-40(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jne	.LBB24_14
# BB#13:                                # %cond.true.22
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB24_15
.LBB24_14:                              # %cond.false.23
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB24_15:                              # %cond.end.26
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rcx         # 8-byte Reload
	subq	%rax, %rcx
	movq	-40(%rbp), %rax
	cmpq	$0, 16(%rax)
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jne	.LBB24_17
# BB#16:                                # %cond.true.30
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB24_18
.LBB24_17:                              # %cond.false.31
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB24_18:                              # %cond.end.34
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	-112(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
.LBB24_19:                              # %cond.end.37
	movq	-80(%rbp), %rax         # 8-byte Reload
	cmpq	-64(%rbp), %rax
	jle	.LBB24_21
# BB#20:                                # %if.then.40
	movq	-72(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	copy_properties
	movq	-40(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	split_interval_left
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	set_properties
	jmp	.LBB24_96
.LBB24_21:                              # %if.end.42
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	set_properties
	cmpq	$0, -40(%rbp)
	jne	.LBB24_23
# BB#22:                                # %cond.true.44
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB24_33
.LBB24_23:                              # %cond.false.45
	cmpq	$0, -40(%rbp)
	jne	.LBB24_25
# BB#24:                                # %cond.true.47
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	jmp	.LBB24_26
.LBB24_25:                              # %cond.false.48
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB24_26:                              # %cond.end.50
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	-40(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jne	.LBB24_28
# BB#27:                                # %cond.true.54
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	jmp	.LBB24_29
.LBB24_28:                              # %cond.false.55
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
.LBB24_29:                              # %cond.end.58
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	-144(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	-40(%rbp), %rax
	cmpq	$0, 16(%rax)
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	jne	.LBB24_31
# BB#30:                                # %cond.true.63
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	jmp	.LBB24_32
.LBB24_31:                              # %cond.false.64
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
.LBB24_32:                              # %cond.end.67
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	-160(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
.LBB24_33:                              # %cond.end.70
	movq	-128(%rbp), %rax        # 8-byte Reload
	cmpq	-64(%rbp), %rax
	jne	.LBB24_35
# BB#34:                                # %if.then.73
	jmp	.LBB24_96
.LBB24_35:                              # %if.end.74
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB24_37
# BB#36:                                # %cond.true.76
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	jmp	.LBB24_47
.LBB24_37:                              # %cond.false.77
	cmpq	$0, -40(%rbp)
	jne	.LBB24_39
# BB#38:                                # %cond.true.79
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	jmp	.LBB24_40
.LBB24_39:                              # %cond.false.80
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
.LBB24_40:                              # %cond.end.82
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	-40(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jne	.LBB24_42
# BB#41:                                # %cond.true.86
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	jmp	.LBB24_43
.LBB24_42:                              # %cond.false.87
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
.LBB24_43:                              # %cond.end.90
	movq	-200(%rbp), %rax        # 8-byte Reload
	movq	-192(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	-40(%rbp), %rax
	cmpq	$0, 16(%rax)
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	jne	.LBB24_45
# BB#44:                                # %cond.true.95
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	jmp	.LBB24_46
.LBB24_45:                              # %cond.false.96
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
.LBB24_46:                              # %cond.end.99
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	-208(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
.LBB24_47:                              # %cond.end.102
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	-64(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -64(%rbp)
	movq	-40(%rbp), %rdi
	callq	next_interval
	movq	%rax, -40(%rbp)
.LBB24_48:                              # %if.end.106
	jmp	.LBB24_49
.LBB24_49:                              # %do.body
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	jne	.LBB24_51
# BB#50:                                # %cond.true.108
                                        #   in Loop: Header=BB24_49 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	jmp	.LBB24_61
.LBB24_51:                              # %cond.false.109
                                        #   in Loop: Header=BB24_49 Depth=1
	cmpq	$0, -40(%rbp)
	jne	.LBB24_53
# BB#52:                                # %cond.true.111
                                        #   in Loop: Header=BB24_49 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	jmp	.LBB24_54
.LBB24_53:                              # %cond.false.112
                                        #   in Loop: Header=BB24_49 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
.LBB24_54:                              # %cond.end.114
                                        #   in Loop: Header=BB24_49 Depth=1
	movq	-232(%rbp), %rax        # 8-byte Reload
	movq	-40(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -240(%rbp)        # 8-byte Spill
	jne	.LBB24_56
# BB#55:                                # %cond.true.118
                                        #   in Loop: Header=BB24_49 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -248(%rbp)        # 8-byte Spill
	jmp	.LBB24_57
.LBB24_56:                              # %cond.false.119
                                        #   in Loop: Header=BB24_49 Depth=1
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
.LBB24_57:                              # %cond.end.122
                                        #   in Loop: Header=BB24_49 Depth=1
	movq	-248(%rbp), %rax        # 8-byte Reload
	movq	-240(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	-40(%rbp), %rax
	cmpq	$0, 16(%rax)
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	jne	.LBB24_59
# BB#58:                                # %cond.true.127
                                        #   in Loop: Header=BB24_49 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -264(%rbp)        # 8-byte Spill
	jmp	.LBB24_60
.LBB24_59:                              # %cond.false.128
                                        #   in Loop: Header=BB24_49 Depth=1
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
.LBB24_60:                              # %cond.end.131
                                        #   in Loop: Header=BB24_49 Depth=1
	movq	-264(%rbp), %rax        # 8-byte Reload
	movq	-256(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -224(%rbp)        # 8-byte Spill
.LBB24_61:                              # %cond.end.134
                                        #   in Loop: Header=BB24_49 Depth=1
	movq	-224(%rbp), %rax        # 8-byte Reload
	cmpq	-64(%rbp), %rax
	jl	.LBB24_79
# BB#62:                                # %if.then.137
	cmpq	$0, -40(%rbp)
	jne	.LBB24_64
# BB#63:                                # %cond.true.139
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -272(%rbp)        # 8-byte Spill
	jmp	.LBB24_74
.LBB24_64:                              # %cond.false.140
	cmpq	$0, -40(%rbp)
	jne	.LBB24_66
# BB#65:                                # %cond.true.142
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -280(%rbp)        # 8-byte Spill
	jmp	.LBB24_67
.LBB24_66:                              # %cond.false.143
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
.LBB24_67:                              # %cond.end.145
	movq	-280(%rbp), %rax        # 8-byte Reload
	movq	-40(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -288(%rbp)        # 8-byte Spill
	jne	.LBB24_69
# BB#68:                                # %cond.true.149
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -296(%rbp)        # 8-byte Spill
	jmp	.LBB24_70
.LBB24_69:                              # %cond.false.150
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
.LBB24_70:                              # %cond.end.153
	movq	-296(%rbp), %rax        # 8-byte Reload
	movq	-288(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	-40(%rbp), %rax
	cmpq	$0, 16(%rax)
	movq	%rcx, -304(%rbp)        # 8-byte Spill
	jne	.LBB24_72
# BB#71:                                # %cond.true.158
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -312(%rbp)        # 8-byte Spill
	jmp	.LBB24_73
.LBB24_72:                              # %cond.false.159
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
.LBB24_73:                              # %cond.end.162
	movq	-312(%rbp), %rax        # 8-byte Reload
	movq	-304(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -272(%rbp)        # 8-byte Spill
.LBB24_74:                              # %cond.end.165
	movq	-272(%rbp), %rax        # 8-byte Reload
	cmpq	-64(%rbp), %rax
	jle	.LBB24_76
# BB#75:                                # %if.then.168
	movq	-40(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	split_interval_left
	movq	%rax, -40(%rbp)
.LBB24_76:                              # %if.end.170
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	set_properties
	cmpq	$0, -48(%rbp)
	je	.LBB24_78
# BB#77:                                # %if.then.171
	movq	-40(%rbp), %rdi
	callq	merge_interval_left
	movq	%rax, -320(%rbp)        # 8-byte Spill
.LBB24_78:                              # %if.end.173
	jmp	.LBB24_96
.LBB24_79:                              # %if.end.174
                                        #   in Loop: Header=BB24_49 Depth=1
	cmpq	$0, -40(%rbp)
	jne	.LBB24_81
# BB#80:                                # %cond.true.176
                                        #   in Loop: Header=BB24_49 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -328(%rbp)        # 8-byte Spill
	jmp	.LBB24_91
.LBB24_81:                              # %cond.false.177
                                        #   in Loop: Header=BB24_49 Depth=1
	cmpq	$0, -40(%rbp)
	jne	.LBB24_83
# BB#82:                                # %cond.true.179
                                        #   in Loop: Header=BB24_49 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -336(%rbp)        # 8-byte Spill
	jmp	.LBB24_84
.LBB24_83:                              # %cond.false.180
                                        #   in Loop: Header=BB24_49 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
.LBB24_84:                              # %cond.end.182
                                        #   in Loop: Header=BB24_49 Depth=1
	movq	-336(%rbp), %rax        # 8-byte Reload
	movq	-40(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -344(%rbp)        # 8-byte Spill
	jne	.LBB24_86
# BB#85:                                # %cond.true.186
                                        #   in Loop: Header=BB24_49 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -352(%rbp)        # 8-byte Spill
	jmp	.LBB24_87
.LBB24_86:                              # %cond.false.187
                                        #   in Loop: Header=BB24_49 Depth=1
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
.LBB24_87:                              # %cond.end.190
                                        #   in Loop: Header=BB24_49 Depth=1
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	-344(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	-40(%rbp), %rax
	cmpq	$0, 16(%rax)
	movq	%rcx, -360(%rbp)        # 8-byte Spill
	jne	.LBB24_89
# BB#88:                                # %cond.true.195
                                        #   in Loop: Header=BB24_49 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	jmp	.LBB24_90
.LBB24_89:                              # %cond.false.196
                                        #   in Loop: Header=BB24_49 Depth=1
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
.LBB24_90:                              # %cond.end.199
                                        #   in Loop: Header=BB24_49 Depth=1
	movq	-368(%rbp), %rax        # 8-byte Reload
	movq	-360(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -328(%rbp)        # 8-byte Spill
.LBB24_91:                              # %cond.end.202
                                        #   in Loop: Header=BB24_49 Depth=1
	movq	-328(%rbp), %rax        # 8-byte Reload
	movq	-64(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -64(%rbp)
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	set_properties
	cmpq	$0, -48(%rbp)
	jne	.LBB24_93
# BB#92:                                # %if.then.206
                                        #   in Loop: Header=BB24_49 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB24_94
.LBB24_93:                              # %if.else.207
                                        #   in Loop: Header=BB24_49 Depth=1
	movq	-40(%rbp), %rdi
	callq	merge_interval_left
	movq	%rax, -40(%rbp)
	movq	%rax, -48(%rbp)
.LBB24_94:                              # %if.end.209
                                        #   in Loop: Header=BB24_49 Depth=1
	movq	-40(%rbp), %rdi
	callq	next_interval
	movq	%rax, -40(%rbp)
# BB#95:                                # %do.cond
                                        #   in Loop: Header=BB24_49 Depth=1
	cmpq	$0, -64(%rbp)
	jg	.LBB24_49
.LBB24_96:                              # %do.end
	addq	$368, %rsp              # imm = 0x170
	popq	%rbp
	retq
.Lfunc_end24:
	.size	set_text_properties_1, .Lfunc_end24-set_text_properties_1
	.cfi_endproc

	.align	16, 0x90
	.type	set_properties,@function
set_properties:                         # @set_properties
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
	subq	$208, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB25_1
	jmp	.LBB25_42
.LBB25_1:                               # %if.then
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB25_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -41(%rbp)          # 1-byte Spill
	jne	.LBB25_4
# BB#3:                                 # %land.rhs
                                        #   in Loop: Header=BB25_2 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	sete	%dl
	movb	%dl, -41(%rbp)          # 1-byte Spill
.LBB25_4:                               # %land.end
                                        #   in Loop: Header=BB25_2 Depth=1
	movb	-41(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB25_5
	jmp	.LBB25_21
.LBB25_5:                               # %for.body
                                        #   in Loop: Header=BB25_2 Depth=1
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rsi
	callq	property_value
	movq	-40(%rbp), %rsi
	subq	$3, %rsi
	cmpq	(%rsi), %rax
	je	.LBB25_19
# BB#6:                                 # %if.then.12
                                        #   in Loop: Header=BB25_2 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	cmpq	$0, -16(%rbp)
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	jne	.LBB25_8
# BB#7:                                 # %cond.true
                                        #   in Loop: Header=BB25_2 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	jmp	.LBB25_18
.LBB25_8:                               # %cond.false
                                        #   in Loop: Header=BB25_2 Depth=1
	cmpq	$0, -16(%rbp)
	jne	.LBB25_10
# BB#9:                                 # %cond.true.17
                                        #   in Loop: Header=BB25_2 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	jmp	.LBB25_11
.LBB25_10:                              # %cond.false.18
                                        #   in Loop: Header=BB25_2 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB25_11:                              # %cond.end
                                        #   in Loop: Header=BB25_2 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	-16(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jne	.LBB25_13
# BB#12:                                # %cond.true.21
                                        #   in Loop: Header=BB25_2 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	jmp	.LBB25_14
.LBB25_13:                              # %cond.false.22
                                        #   in Loop: Header=BB25_2 Depth=1
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB25_14:                              # %cond.end.25
                                        #   in Loop: Header=BB25_2 Depth=1
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	-80(%rbp), %rcx         # 8-byte Reload
	subq	%rax, %rcx
	movq	-16(%rbp), %rax
	cmpq	$0, 16(%rax)
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jne	.LBB25_16
# BB#15:                                # %cond.true.30
                                        #   in Loop: Header=BB25_2 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB25_17
.LBB25_16:                              # %cond.false.31
                                        #   in Loop: Header=BB25_2 Depth=1
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB25_17:                              # %cond.end.34
                                        #   in Loop: Header=BB25_2 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rcx         # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
.LBB25_18:                              # %cond.end.37
                                        #   in Loop: Header=BB25_2 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	-32(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rdx
	movq	-40(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	movq	-24(%rbp), %r8
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	record_property_change
.LBB25_19:                              # %if.end
                                        #   in Loop: Header=BB25_2 Depth=1
	jmp	.LBB25_20
.LBB25_20:                              # %for.inc
                                        #   in Loop: Header=BB25_2 Depth=1
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB25_2
.LBB25_21:                              # %for.end
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB25_22:                              # %for.cond.46
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -105(%rbp)         # 1-byte Spill
	jne	.LBB25_24
# BB#23:                                # %land.rhs.51
                                        #   in Loop: Header=BB25_22 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	sete	%dl
	movb	%dl, -105(%rbp)         # 1-byte Spill
.LBB25_24:                              # %land.end.59
                                        #   in Loop: Header=BB25_22 Depth=1
	movb	-105(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB25_25
	jmp	.LBB25_41
.LBB25_25:                              # %for.body.60
                                        #   in Loop: Header=BB25_22 Depth=1
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rsi
	callq	property_value
	movl	$957, %edi              # imm = 0x3BD
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB25_39
# BB#26:                                # %if.then.68
                                        #   in Loop: Header=BB25_22 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	cmpq	$0, -16(%rbp)
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	jne	.LBB25_28
# BB#27:                                # %cond.true.72
                                        #   in Loop: Header=BB25_22 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	jmp	.LBB25_38
.LBB25_28:                              # %cond.false.73
                                        #   in Loop: Header=BB25_22 Depth=1
	cmpq	$0, -16(%rbp)
	jne	.LBB25_30
# BB#29:                                # %cond.true.76
                                        #   in Loop: Header=BB25_22 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB25_31
.LBB25_30:                              # %cond.false.77
                                        #   in Loop: Header=BB25_22 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB25_31:                              # %cond.end.79
                                        #   in Loop: Header=BB25_22 Depth=1
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	-16(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jne	.LBB25_33
# BB#32:                                # %cond.true.84
                                        #   in Loop: Header=BB25_22 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	jmp	.LBB25_34
.LBB25_33:                              # %cond.false.85
                                        #   in Loop: Header=BB25_22 Depth=1
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
.LBB25_34:                              # %cond.end.88
                                        #   in Loop: Header=BB25_22 Depth=1
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	-152(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	-16(%rbp), %rax
	cmpq	$0, 16(%rax)
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	jne	.LBB25_36
# BB#35:                                # %cond.true.94
                                        #   in Loop: Header=BB25_22 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	jmp	.LBB25_37
.LBB25_36:                              # %cond.false.95
                                        #   in Loop: Header=BB25_22 Depth=1
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
.LBB25_37:                              # %cond.end.98
                                        #   in Loop: Header=BB25_22 Depth=1
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	-168(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
.LBB25_38:                              # %cond.end.101
                                        #   in Loop: Header=BB25_22 Depth=1
	movq	-136(%rbp), %rax        # 8-byte Reload
	xorl	%edi, %edi
	movq	-32(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rdx
	movq	%rax, -184(%rbp)        # 8-byte Spill
	movq	%rdx, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %r8
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	-184(%rbp), %rsi        # 8-byte Reload
	movq	-192(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	record_property_change
.LBB25_39:                              # %if.end.106
                                        #   in Loop: Header=BB25_22 Depth=1
	jmp	.LBB25_40
.LBB25_40:                              # %for.inc.107
                                        #   in Loop: Header=BB25_22 Depth=1
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB25_22
.LBB25_41:                              # %for.end.111
	jmp	.LBB25_42
.LBB25_42:                              # %if.end.112
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	Fcopy_sequence
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	set_interval_plist
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	set_properties, .Lfunc_end25-set_properties
	.cfi_endproc

	.globl	Fremove_text_properties
	.align	16, 0x90
	.type	Fremove_text_properties,@function
Fremove_text_properties:                # @Fremove_text_properties
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
	subq	$416, %rsp              # imm = 0x1A0
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movb	$0, -73(%rbp)
	movb	$1, -74(%rbp)
	movq	-40(%rbp), %rcx
	movl	%eax, %edi
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB26_2
# BB#1:                                 # %if.then
	movl	$5, %esi
	movq	current_buffer, %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -40(%rbp)
.LBB26_2:                               # %if.end
	jmp	.LBB26_3
.LBB26_3:                               # %retry
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB26_19 Depth 2
	leaq	-16(%rbp), %rsi
	leaq	-24(%rbp), %rdx
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rdi
	callq	validate_interval_range
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB26_5
# BB#4:                                 # %if.then.3
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB26_101
.LBB26_5:                               # %if.end.5
                                        #   in Loop: Header=BB26_3 Depth=1
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	subq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	interval_has_some_properties
	testb	$1, %al
	jne	.LBB26_36
# BB#6:                                 # %if.then.8
                                        #   in Loop: Header=BB26_3 Depth=1
	cmpq	$0, -48(%rbp)
	jne	.LBB26_8
# BB#7:                                 # %cond.true
                                        #   in Loop: Header=BB26_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB26_18
.LBB26_8:                               # %cond.false
                                        #   in Loop: Header=BB26_3 Depth=1
	cmpq	$0, -48(%rbp)
	jne	.LBB26_10
# BB#9:                                 # %cond.true.11
                                        #   in Loop: Header=BB26_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB26_11
.LBB26_10:                              # %cond.false.12
                                        #   in Loop: Header=BB26_3 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB26_11:                              # %cond.end
                                        #   in Loop: Header=BB26_3 Depth=1
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	-48(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jne	.LBB26_13
# BB#12:                                # %cond.true.14
                                        #   in Loop: Header=BB26_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB26_14
.LBB26_13:                              # %cond.false.15
                                        #   in Loop: Header=BB26_3 Depth=1
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB26_14:                              # %cond.end.18
                                        #   in Loop: Header=BB26_3 Depth=1
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	-136(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	-48(%rbp), %rax
	cmpq	$0, 16(%rax)
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	jne	.LBB26_16
# BB#15:                                # %cond.true.22
                                        #   in Loop: Header=BB26_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	jmp	.LBB26_17
.LBB26_16:                              # %cond.false.23
                                        #   in Loop: Header=BB26_3 Depth=1
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
.LBB26_17:                              # %cond.end.26
                                        #   in Loop: Header=BB26_3 Depth=1
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	-152(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
.LBB26_18:                              # %cond.end.29
                                        #   in Loop: Header=BB26_3 Depth=1
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	-64(%rbp), %rcx
	movq	-48(%rbp), %rdx
	subq	8(%rdx), %rcx
	subq	%rcx, %rax
	movq	%rax, -88(%rbp)
.LBB26_19:                              # %do.body
                                        #   Parent Loop BB26_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-88(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jl	.LBB26_21
# BB#20:                                # %if.then.34
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB26_101
.LBB26_21:                              # %if.end.36
                                        #   in Loop: Header=BB26_19 Depth=2
	movq	-88(%rbp), %rax
	movq	-72(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -72(%rbp)
	movq	-48(%rbp), %rdi
	callq	next_interval
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB26_23
# BB#22:                                # %cond.true.40
                                        #   in Loop: Header=BB26_19 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	jmp	.LBB26_33
.LBB26_23:                              # %cond.false.41
                                        #   in Loop: Header=BB26_19 Depth=2
	cmpq	$0, -48(%rbp)
	jne	.LBB26_25
# BB#24:                                # %cond.true.43
                                        #   in Loop: Header=BB26_19 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	jmp	.LBB26_26
.LBB26_25:                              # %cond.false.44
                                        #   in Loop: Header=BB26_19 Depth=2
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
.LBB26_26:                              # %cond.end.46
                                        #   in Loop: Header=BB26_19 Depth=2
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	-48(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jne	.LBB26_28
# BB#27:                                # %cond.true.50
                                        #   in Loop: Header=BB26_19 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	jmp	.LBB26_29
.LBB26_28:                              # %cond.false.51
                                        #   in Loop: Header=BB26_19 Depth=2
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
.LBB26_29:                              # %cond.end.54
                                        #   in Loop: Header=BB26_19 Depth=2
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	-184(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	-48(%rbp), %rax
	cmpq	$0, 16(%rax)
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	jne	.LBB26_31
# BB#30:                                # %cond.true.59
                                        #   in Loop: Header=BB26_19 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	jmp	.LBB26_32
.LBB26_31:                              # %cond.false.60
                                        #   in Loop: Header=BB26_19 Depth=2
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
.LBB26_32:                              # %cond.end.63
                                        #   in Loop: Header=BB26_19 Depth=2
	movq	-208(%rbp), %rax        # 8-byte Reload
	movq	-200(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
.LBB26_33:                              # %cond.end.66
                                        #   in Loop: Header=BB26_19 Depth=2
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	%rax, -88(%rbp)
# BB#34:                                # %do.cond
                                        #   in Loop: Header=BB26_19 Depth=2
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	interval_has_some_properties
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB26_19
# BB#35:                                # %do.end
                                        #   in Loop: Header=BB26_3 Depth=1
	jmp	.LBB26_39
.LBB26_36:                              # %if.else
                                        #   in Loop: Header=BB26_3 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-64(%rbp), %rax
	je	.LBB26_38
# BB#37:                                # %if.then.71
                                        #   in Loop: Header=BB26_3 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rcx
	subq	8(%rcx), %rax
	movq	%rax, %rsi
	callq	split_interval_right
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	copy_properties
.LBB26_38:                              # %if.end.75
                                        #   in Loop: Header=BB26_3 Depth=1
	jmp	.LBB26_39
.LBB26_39:                              # %if.end.76
                                        #   in Loop: Header=BB26_3 Depth=1
	movq	-40(%rbp), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB26_40
	jmp	.LBB26_51
.LBB26_40:                              # %land.lhs.true
                                        #   in Loop: Header=BB26_3 Depth=1
	testb	$1, -74(%rbp)
	je	.LBB26_51
# BB#41:                                # %if.then.79
                                        #   in Loop: Header=BB26_3 Depth=1
	cmpq	$0, -48(%rbp)
	jne	.LBB26_43
# BB#42:                                # %cond.true.81
                                        #   in Loop: Header=BB26_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	jmp	.LBB26_44
.LBB26_43:                              # %cond.false.82
                                        #   in Loop: Header=BB26_3 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
.LBB26_44:                              # %cond.end.84
                                        #   in Loop: Header=BB26_3 Depth=1
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	%rax, -96(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	modify_text_properties
	cmpq	$0, -48(%rbp)
	jne	.LBB26_46
# BB#45:                                # %cond.true.88
                                        #   in Loop: Header=BB26_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	jmp	.LBB26_47
.LBB26_46:                              # %cond.false.89
                                        #   in Loop: Header=BB26_3 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
.LBB26_47:                              # %cond.end.91
                                        #   in Loop: Header=BB26_3 Depth=1
	movq	-224(%rbp), %rax        # 8-byte Reload
	cmpq	-96(%rbp), %rax
	jne	.LBB26_49
# BB#48:                                # %lor.lhs.false
                                        #   in Loop: Header=BB26_3 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-104(%rbp), %rax
	je	.LBB26_50
.LBB26_49:                              # %if.then.96
                                        #   in Loop: Header=BB26_3 Depth=1
	movb	$0, -74(%rbp)
	jmp	.LBB26_3
.LBB26_50:                              # %if.end.97
	jmp	.LBB26_51
.LBB26_51:                              # %if.end.98
	jmp	.LBB26_52
.LBB26_52:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	jne	.LBB26_54
# BB#53:                                # %cond.true.100
                                        #   in Loop: Header=BB26_52 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	jmp	.LBB26_64
.LBB26_54:                              # %cond.false.101
                                        #   in Loop: Header=BB26_52 Depth=1
	cmpq	$0, -48(%rbp)
	jne	.LBB26_56
# BB#55:                                # %cond.true.103
                                        #   in Loop: Header=BB26_52 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	jmp	.LBB26_57
.LBB26_56:                              # %cond.false.104
                                        #   in Loop: Header=BB26_52 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
.LBB26_57:                              # %cond.end.106
                                        #   in Loop: Header=BB26_52 Depth=1
	movq	-240(%rbp), %rax        # 8-byte Reload
	movq	-48(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -248(%rbp)        # 8-byte Spill
	jne	.LBB26_59
# BB#58:                                # %cond.true.110
                                        #   in Loop: Header=BB26_52 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	jmp	.LBB26_60
.LBB26_59:                              # %cond.false.111
                                        #   in Loop: Header=BB26_52 Depth=1
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
.LBB26_60:                              # %cond.end.114
                                        #   in Loop: Header=BB26_52 Depth=1
	movq	-256(%rbp), %rax        # 8-byte Reload
	movq	-248(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	-48(%rbp), %rax
	cmpq	$0, 16(%rax)
	movq	%rcx, -264(%rbp)        # 8-byte Spill
	jne	.LBB26_62
# BB#61:                                # %cond.true.119
                                        #   in Loop: Header=BB26_52 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -272(%rbp)        # 8-byte Spill
	jmp	.LBB26_63
.LBB26_62:                              # %cond.false.120
                                        #   in Loop: Header=BB26_52 Depth=1
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
.LBB26_63:                              # %cond.end.123
                                        #   in Loop: Header=BB26_52 Depth=1
	movq	-272(%rbp), %rax        # 8-byte Reload
	movq	-264(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -232(%rbp)        # 8-byte Spill
.LBB26_64:                              # %cond.end.126
                                        #   in Loop: Header=BB26_52 Depth=1
	movq	-232(%rbp), %rax        # 8-byte Reload
	cmpq	-72(%rbp), %rax
	jl	.LBB26_88
# BB#65:                                # %if.then.129
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	interval_has_some_properties
	testb	$1, %al
	jne	.LBB26_69
# BB#66:                                # %if.then.131
	movq	-40(%rbp), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB26_67
	jmp	.LBB26_68
.LBB26_67:                              # %if.then.133
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	-24(%rbp), %rcx
	sarq	$2, %rcx
	movq	-16(%rbp), %rdx
	sarq	$2, %rdx
	subq	%rdx, %rcx
	movq	-24(%rbp), %rdx
	sarq	$2, %rdx
	movq	-16(%rbp), %rsi
	sarq	$2, %rsi
	subq	%rsi, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	signal_after_change
.LBB26_68:                              # %if.end.141
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB26_101
.LBB26_69:                              # %if.end.143
	cmpq	$0, -48(%rbp)
	jne	.LBB26_71
# BB#70:                                # %cond.true.145
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -280(%rbp)        # 8-byte Spill
	jmp	.LBB26_81
.LBB26_71:                              # %cond.false.146
	cmpq	$0, -48(%rbp)
	jne	.LBB26_73
# BB#72:                                # %cond.true.148
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -288(%rbp)        # 8-byte Spill
	jmp	.LBB26_74
.LBB26_73:                              # %cond.false.149
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
.LBB26_74:                              # %cond.end.151
	movq	-288(%rbp), %rax        # 8-byte Reload
	movq	-48(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -296(%rbp)        # 8-byte Spill
	jne	.LBB26_76
# BB#75:                                # %cond.true.155
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -304(%rbp)        # 8-byte Spill
	jmp	.LBB26_77
.LBB26_76:                              # %cond.false.156
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
.LBB26_77:                              # %cond.end.159
	movq	-304(%rbp), %rax        # 8-byte Reload
	movq	-296(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	-48(%rbp), %rax
	cmpq	$0, 16(%rax)
	movq	%rcx, -312(%rbp)        # 8-byte Spill
	jne	.LBB26_79
# BB#78:                                # %cond.true.164
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	jmp	.LBB26_80
.LBB26_79:                              # %cond.false.165
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
.LBB26_80:                              # %cond.end.168
	movq	-320(%rbp), %rax        # 8-byte Reload
	movq	-312(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -280(%rbp)        # 8-byte Spill
.LBB26_81:                              # %cond.end.171
	movq	-280(%rbp), %rax        # 8-byte Reload
	cmpq	-72(%rbp), %rax
	jne	.LBB26_85
# BB#82:                                # %if.then.174
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	remove_properties
	movq	-40(%rbp), %rdi
	movb	%al, -329(%rbp)         # 1-byte Spill
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB26_83
	jmp	.LBB26_84
.LBB26_83:                              # %if.then.178
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	-24(%rbp), %rcx
	sarq	$2, %rcx
	movq	-16(%rbp), %rdx
	sarq	$2, %rdx
	subq	%rdx, %rcx
	movq	-24(%rbp), %rdx
	sarq	$2, %rdx
	movq	-16(%rbp), %rsi
	sarq	$2, %rsi
	subq	%rsi, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	signal_after_change
.LBB26_84:                              # %if.end.186
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB26_101
.LBB26_85:                              # %if.end.188
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	split_interval_left
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	copy_properties
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	remove_properties
	movq	-40(%rbp), %rdi
	movb	%al, -345(%rbp)         # 1-byte Spill
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB26_86
	jmp	.LBB26_87
.LBB26_86:                              # %if.then.193
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	-24(%rbp), %rcx
	sarq	$2, %rcx
	movq	-16(%rbp), %rdx
	sarq	$2, %rdx
	subq	%rdx, %rcx
	movq	-24(%rbp), %rdx
	sarq	$2, %rdx
	movq	-16(%rbp), %rsi
	sarq	$2, %rsi
	subq	%rsi, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	signal_after_change
.LBB26_87:                              # %if.end.201
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB26_101
.LBB26_88:                              # %if.end.203
                                        #   in Loop: Header=BB26_52 Depth=1
	cmpq	$0, -48(%rbp)
	jne	.LBB26_90
# BB#89:                                # %cond.true.205
                                        #   in Loop: Header=BB26_52 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -360(%rbp)        # 8-byte Spill
	jmp	.LBB26_100
.LBB26_90:                              # %cond.false.206
                                        #   in Loop: Header=BB26_52 Depth=1
	cmpq	$0, -48(%rbp)
	jne	.LBB26_92
# BB#91:                                # %cond.true.208
                                        #   in Loop: Header=BB26_52 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	jmp	.LBB26_93
.LBB26_92:                              # %cond.false.209
                                        #   in Loop: Header=BB26_52 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
.LBB26_93:                              # %cond.end.211
                                        #   in Loop: Header=BB26_52 Depth=1
	movq	-368(%rbp), %rax        # 8-byte Reload
	movq	-48(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -376(%rbp)        # 8-byte Spill
	jne	.LBB26_95
# BB#94:                                # %cond.true.215
                                        #   in Loop: Header=BB26_52 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -384(%rbp)        # 8-byte Spill
	jmp	.LBB26_96
.LBB26_95:                              # %cond.false.216
                                        #   in Loop: Header=BB26_52 Depth=1
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
.LBB26_96:                              # %cond.end.219
                                        #   in Loop: Header=BB26_52 Depth=1
	movq	-384(%rbp), %rax        # 8-byte Reload
	movq	-376(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	-48(%rbp), %rax
	cmpq	$0, 16(%rax)
	movq	%rcx, -392(%rbp)        # 8-byte Spill
	jne	.LBB26_98
# BB#97:                                # %cond.true.224
                                        #   in Loop: Header=BB26_52 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -400(%rbp)        # 8-byte Spill
	jmp	.LBB26_99
.LBB26_98:                              # %cond.false.225
                                        #   in Loop: Header=BB26_52 Depth=1
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
.LBB26_99:                              # %cond.end.228
                                        #   in Loop: Header=BB26_52 Depth=1
	movq	-400(%rbp), %rax        # 8-byte Reload
	movq	-392(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -360(%rbp)        # 8-byte Spill
.LBB26_100:                             # %cond.end.231
                                        #   in Loop: Header=BB26_52 Depth=1
	movq	-360(%rbp), %rax        # 8-byte Reload
	xorl	%edi, %edi
	movq	-72(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -72(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	remove_properties
	andb	$1, %al
	movzbl	%al, %r8d
	movb	-73(%rbp), %al
	andb	$1, %al
	movzbl	%al, %r9d
	orl	%r8d, %r9d
	cmpl	$0, %r9d
	setne	%al
	andb	$1, %al
	movb	%al, -73(%rbp)
	movq	-48(%rbp), %rdi
	callq	next_interval
	movq	%rax, -48(%rbp)
	jmp	.LBB26_52
.LBB26_101:                             # %return
	movq	-8(%rbp), %rax
	addq	$416, %rsp              # imm = 0x1A0
	popq	%rbp
	retq
.Lfunc_end26:
	.size	Fremove_text_properties, .Lfunc_end26-Fremove_text_properties
	.cfi_endproc

	.align	16, 0x90
	.type	interval_has_some_properties,@function
interval_has_some_properties:           # @interval_has_some_properties
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)
.LBB27_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB27_3 Depth 2
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB27_10
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB27_1 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB27_3:                               # %for.cond.3
                                        #   Parent Loop BB27_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB27_8
# BB#4:                                 # %for.body.8
                                        #   in Loop: Header=BB27_3 Depth=2
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	subq	$3, %rcx
	cmpq	(%rcx), %rax
	jne	.LBB27_6
# BB#5:                                 # %if.then
	movb	$1, -1(%rbp)
	jmp	.LBB27_11
.LBB27_6:                               # %if.end
                                        #   in Loop: Header=BB27_3 Depth=2
	jmp	.LBB27_7
.LBB27_7:                               # %for.inc
                                        #   in Loop: Header=BB27_3 Depth=2
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	Fcdr
	movq	%rax, -40(%rbp)
	jmp	.LBB27_3
.LBB27_8:                               # %for.end
                                        #   in Loop: Header=BB27_1 Depth=1
	jmp	.LBB27_9
.LBB27_9:                               # %for.inc.14
                                        #   in Loop: Header=BB27_1 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	Fcdr
	movq	%rax, -32(%rbp)
	jmp	.LBB27_1
.LBB27_10:                              # %for.end.19
	movb	$0, -1(%rbp)
.LBB27_11:                              # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	interval_has_some_properties, .Lfunc_end27-interval_has_some_properties
	.cfi_endproc

	.align	16, 0x90
	.type	remove_properties,@function
remove_properties:                      # @remove_properties
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
	subq	$240, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movb	$0, -33(%rbp)
	movq	-8(%rbp), %rcx
	movl	%eax, %edi
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%r8b
	xorb	$-1, %r8b
	andb	$1, %r8b
	movb	%r8b, -34(%rbp)
	testb	$1, -34(%rbp)
	je	.LBB28_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB28_3
.LBB28_2:                               # %cond.false
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB28_3:                               # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -56(%rbp)
.LBB28_4:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB28_6 Depth 2
                                        #     Child Loop BB28_25 Depth 2
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB28_48
# BB#5:                                 # %while.body
                                        #   in Loop: Header=BB28_4 Depth=1
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
.LBB28_6:                               # %while.cond.4
                                        #   Parent Loop BB28_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-56(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -97(%rbp)          # 1-byte Spill
	jne	.LBB28_8
# BB#7:                                 # %land.rhs
                                        #   in Loop: Header=BB28_6 Depth=2
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rcx
	subq	$3, %rcx
	cmpq	(%rcx), %rax
	sete	%dl
	movb	%dl, -97(%rbp)          # 1-byte Spill
.LBB28_8:                               # %land.end
                                        #   in Loop: Header=BB28_6 Depth=2
	movb	-97(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB28_9
	jmp	.LBB28_24
.LBB28_9:                               # %while.body.13
                                        #   in Loop: Header=BB28_6 Depth=2
	movq	-32(%rbp), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB28_10
	jmp	.LBB28_23
.LBB28_10:                              # %if.then
                                        #   in Loop: Header=BB28_6 Depth=2
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	cmpq	$0, -24(%rbp)
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	jne	.LBB28_12
# BB#11:                                # %cond.true.17
                                        #   in Loop: Header=BB28_6 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB28_22
.LBB28_12:                              # %cond.false.18
                                        #   in Loop: Header=BB28_6 Depth=2
	cmpq	$0, -24(%rbp)
	jne	.LBB28_14
# BB#13:                                # %cond.true.21
                                        #   in Loop: Header=BB28_6 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB28_15
.LBB28_14:                              # %cond.false.22
                                        #   in Loop: Header=BB28_6 Depth=2
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB28_15:                              # %cond.end.23
                                        #   in Loop: Header=BB28_6 Depth=2
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	-24(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jne	.LBB28_17
# BB#16:                                # %cond.true.27
                                        #   in Loop: Header=BB28_6 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB28_18
.LBB28_17:                              # %cond.false.28
                                        #   in Loop: Header=BB28_6 Depth=2
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB28_18:                              # %cond.end.31
                                        #   in Loop: Header=BB28_6 Depth=2
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	-136(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	-24(%rbp), %rax
	cmpq	$0, 16(%rax)
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	jne	.LBB28_20
# BB#19:                                # %cond.true.36
                                        #   in Loop: Header=BB28_6 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	jmp	.LBB28_21
.LBB28_20:                              # %cond.false.37
                                        #   in Loop: Header=BB28_6 Depth=2
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
.LBB28_21:                              # %cond.end.40
                                        #   in Loop: Header=BB28_6 Depth=2
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	-152(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
.LBB28_22:                              # %cond.end.43
                                        #   in Loop: Header=BB28_6 Depth=2
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	movq	-32(%rbp), %r8
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	record_property_change
.LBB28_23:                              # %if.end
                                        #   in Loop: Header=BB28_6 Depth=2
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movb	$1, -33(%rbp)
	jmp	.LBB28_6
.LBB28_24:                              # %while.end
                                        #   in Loop: Header=BB28_4 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -72(%rbp)
.LBB28_25:                              # %while.cond.54
                                        #   Parent Loop BB28_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%edi, %edi
	movq	-72(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB28_26
	jmp	.LBB28_44
.LBB28_26:                              # %while.body.59
                                        #   in Loop: Header=BB28_25 Depth=2
	movq	-72(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB28_43
# BB#27:                                # %land.lhs.true
                                        #   in Loop: Header=BB28_25 Depth=2
	movq	-64(%rbp), %rax
	movq	-80(%rbp), %rcx
	subq	$3, %rcx
	cmpq	(%rcx), %rax
	jne	.LBB28_43
# BB#28:                                # %if.then.74
                                        #   in Loop: Header=BB28_25 Depth=2
	movq	-32(%rbp), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB28_29
	jmp	.LBB28_42
.LBB28_29:                              # %if.then.76
                                        #   in Loop: Header=BB28_25 Depth=2
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	cmpq	$0, -24(%rbp)
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	jne	.LBB28_31
# BB#30:                                # %cond.true.80
                                        #   in Loop: Header=BB28_25 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	jmp	.LBB28_41
.LBB28_31:                              # %cond.false.81
                                        #   in Loop: Header=BB28_25 Depth=2
	cmpq	$0, -24(%rbp)
	jne	.LBB28_33
# BB#32:                                # %cond.true.84
                                        #   in Loop: Header=BB28_25 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	jmp	.LBB28_34
.LBB28_33:                              # %cond.false.85
                                        #   in Loop: Header=BB28_25 Depth=2
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
.LBB28_34:                              # %cond.end.87
                                        #   in Loop: Header=BB28_25 Depth=2
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	-24(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -200(%rbp)        # 8-byte Spill
	jne	.LBB28_36
# BB#35:                                # %cond.true.92
                                        #   in Loop: Header=BB28_25 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	jmp	.LBB28_37
.LBB28_36:                              # %cond.false.93
                                        #   in Loop: Header=BB28_25 Depth=2
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
.LBB28_37:                              # %cond.end.96
                                        #   in Loop: Header=BB28_25 Depth=2
	movq	-208(%rbp), %rax        # 8-byte Reload
	movq	-200(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	-24(%rbp), %rax
	cmpq	$0, 16(%rax)
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	jne	.LBB28_39
# BB#38:                                # %cond.true.102
                                        #   in Loop: Header=BB28_25 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	jmp	.LBB28_40
.LBB28_39:                              # %cond.false.103
                                        #   in Loop: Header=BB28_25 Depth=2
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
.LBB28_40:                              # %cond.end.106
                                        #   in Loop: Header=BB28_25 Depth=2
	movq	-224(%rbp), %rax        # 8-byte Reload
	movq	-216(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
.LBB28_41:                              # %cond.end.109
                                        #   in Loop: Header=BB28_25 Depth=2
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	-64(%rbp), %rdx
	movq	-80(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	movq	-32(%rbp), %r8
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	record_property_change
.LBB28_42:                              # %if.end.116
                                        #   in Loop: Header=BB28_25 Depth=2
	movq	-72(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	movq	-80(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rsi
	callq	Fsetcdr
	movb	$1, -33(%rbp)
	movq	%rax, -232(%rbp)        # 8-byte Spill
.LBB28_43:                              # %if.end.127
                                        #   in Loop: Header=BB28_25 Depth=2
	movq	-80(%rbp), %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB28_25
.LBB28_44:                              # %while.end.128
                                        #   in Loop: Header=BB28_4 Depth=1
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	testb	$1, -34(%rbp)
	je	.LBB28_47
# BB#45:                                # %land.lhs.true.134
                                        #   in Loop: Header=BB28_4 Depth=1
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB28_47
# BB#46:                                # %if.then.139
                                        #   in Loop: Header=BB28_4 Depth=1
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB28_47:                              # %if.end.143
                                        #   in Loop: Header=BB28_4 Depth=1
	jmp	.LBB28_4
.LBB28_48:                              # %while.end.144
	testb	$1, -33(%rbp)
	je	.LBB28_50
# BB#49:                                # %if.then.146
	movq	-24(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	set_interval_plist
.LBB28_50:                              # %if.end.147
	movb	-33(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	remove_properties, .Lfunc_end28-remove_properties
	.cfi_endproc

	.globl	Fremove_list_of_text_properties
	.align	16, 0x90
	.type	Fremove_list_of_text_properties,@function
Fremove_list_of_text_properties:        # @Fremove_list_of_text_properties
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
	subq	$352, %rsp              # imm = 0x160
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movb	$0, -73(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -88(%rbp)
	movq	-40(%rbp), %rcx
	movl	%eax, %edi
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB29_2
# BB#1:                                 # %if.then
	movl	$5, %esi
	movq	current_buffer, %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -40(%rbp)
.LBB29_2:                               # %if.end
	leaq	-16(%rbp), %rsi
	leaq	-24(%rbp), %rdx
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rdi
	callq	validate_interval_range
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB29_4
# BB#3:                                 # %if.then.3
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB29_107
.LBB29_4:                               # %if.end.5
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	subq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-88(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	interval_has_some_properties_list
	testb	$1, %al
	jne	.LBB29_35
# BB#5:                                 # %if.then.8
	cmpq	$0, -48(%rbp)
	jne	.LBB29_7
# BB#6:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB29_17
.LBB29_7:                               # %cond.false
	cmpq	$0, -48(%rbp)
	jne	.LBB29_9
# BB#8:                                 # %cond.true.11
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB29_10
.LBB29_9:                               # %cond.false.12
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB29_10:                              # %cond.end
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	-48(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jne	.LBB29_12
# BB#11:                                # %cond.true.14
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	jmp	.LBB29_13
.LBB29_12:                              # %cond.false.15
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB29_13:                              # %cond.end.18
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	-128(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	-48(%rbp), %rax
	cmpq	$0, 16(%rax)
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jne	.LBB29_15
# BB#14:                                # %cond.true.22
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	jmp	.LBB29_16
.LBB29_15:                              # %cond.false.23
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
.LBB29_16:                              # %cond.end.26
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	-144(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
.LBB29_17:                              # %cond.end.29
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-64(%rbp), %rcx
	movq	-48(%rbp), %rdx
	subq	8(%rdx), %rcx
	subq	%rcx, %rax
	movq	%rax, -96(%rbp)
.LBB29_18:                              # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-96(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jl	.LBB29_20
# BB#19:                                # %if.then.34
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB29_107
.LBB29_20:                              # %if.end.36
                                        #   in Loop: Header=BB29_18 Depth=1
	movq	-96(%rbp), %rax
	movq	-72(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -72(%rbp)
	movq	-48(%rbp), %rdi
	callq	next_interval
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB29_22
# BB#21:                                # %cond.true.40
                                        #   in Loop: Header=BB29_18 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	jmp	.LBB29_32
.LBB29_22:                              # %cond.false.41
                                        #   in Loop: Header=BB29_18 Depth=1
	cmpq	$0, -48(%rbp)
	jne	.LBB29_24
# BB#23:                                # %cond.true.43
                                        #   in Loop: Header=BB29_18 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	jmp	.LBB29_25
.LBB29_24:                              # %cond.false.44
                                        #   in Loop: Header=BB29_18 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
.LBB29_25:                              # %cond.end.46
                                        #   in Loop: Header=BB29_18 Depth=1
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	-48(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jne	.LBB29_27
# BB#26:                                # %cond.true.50
                                        #   in Loop: Header=BB29_18 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	jmp	.LBB29_28
.LBB29_27:                              # %cond.false.51
                                        #   in Loop: Header=BB29_18 Depth=1
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
.LBB29_28:                              # %cond.end.54
                                        #   in Loop: Header=BB29_18 Depth=1
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	-176(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	-48(%rbp), %rax
	cmpq	$0, 16(%rax)
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	jne	.LBB29_30
# BB#29:                                # %cond.true.59
                                        #   in Loop: Header=BB29_18 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	jmp	.LBB29_31
.LBB29_30:                              # %cond.false.60
                                        #   in Loop: Header=BB29_18 Depth=1
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
.LBB29_31:                              # %cond.end.63
                                        #   in Loop: Header=BB29_18 Depth=1
	movq	-200(%rbp), %rax        # 8-byte Reload
	movq	-192(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
.LBB29_32:                              # %cond.end.66
                                        #   in Loop: Header=BB29_18 Depth=1
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	%rax, -96(%rbp)
# BB#33:                                # %do.cond
                                        #   in Loop: Header=BB29_18 Depth=1
	movq	-88(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	interval_has_some_properties_list
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB29_18
# BB#34:                                # %do.end
	jmp	.LBB29_38
.LBB29_35:                              # %if.else
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-64(%rbp), %rax
	je	.LBB29_37
# BB#36:                                # %if.then.71
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rcx
	subq	8(%rcx), %rax
	movq	%rax, %rsi
	callq	split_interval_right
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	copy_properties
.LBB29_37:                              # %if.end.75
	jmp	.LBB29_38
.LBB29_38:                              # %if.end.76
	jmp	.LBB29_39
.LBB29_39:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	jne	.LBB29_41
# BB#40:                                # %cond.true.78
                                        #   in Loop: Header=BB29_39 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	jmp	.LBB29_51
.LBB29_41:                              # %cond.false.79
                                        #   in Loop: Header=BB29_39 Depth=1
	cmpq	$0, -48(%rbp)
	jne	.LBB29_43
# BB#42:                                # %cond.true.81
                                        #   in Loop: Header=BB29_39 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	jmp	.LBB29_44
.LBB29_43:                              # %cond.false.82
                                        #   in Loop: Header=BB29_39 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
.LBB29_44:                              # %cond.end.84
                                        #   in Loop: Header=BB29_39 Depth=1
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	-48(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -224(%rbp)        # 8-byte Spill
	jne	.LBB29_46
# BB#45:                                # %cond.true.88
                                        #   in Loop: Header=BB29_39 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	jmp	.LBB29_47
.LBB29_46:                              # %cond.false.89
                                        #   in Loop: Header=BB29_39 Depth=1
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
.LBB29_47:                              # %cond.end.92
                                        #   in Loop: Header=BB29_39 Depth=1
	movq	-232(%rbp), %rax        # 8-byte Reload
	movq	-224(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	-48(%rbp), %rax
	cmpq	$0, 16(%rax)
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	jne	.LBB29_49
# BB#48:                                # %cond.true.97
                                        #   in Loop: Header=BB29_39 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -248(%rbp)        # 8-byte Spill
	jmp	.LBB29_50
.LBB29_49:                              # %cond.false.98
                                        #   in Loop: Header=BB29_39 Depth=1
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
.LBB29_50:                              # %cond.end.101
                                        #   in Loop: Header=BB29_39 Depth=1
	movq	-248(%rbp), %rax        # 8-byte Reload
	movq	-240(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -208(%rbp)        # 8-byte Spill
.LBB29_51:                              # %cond.end.104
                                        #   in Loop: Header=BB29_39 Depth=1
	movq	-208(%rbp), %rax        # 8-byte Reload
	cmpq	-72(%rbp), %rax
	jl	.LBB29_83
# BB#52:                                # %if.then.107
	movq	-88(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	interval_has_some_properties_list
	testb	$1, %al
	jne	.LBB29_58
# BB#53:                                # %if.then.109
	testb	$1, -73(%rbp)
	je	.LBB29_57
# BB#54:                                # %if.then.111
	movq	-40(%rbp), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB29_55
	jmp	.LBB29_56
.LBB29_55:                              # %if.then.113
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	-24(%rbp), %rcx
	sarq	$2, %rcx
	movq	-16(%rbp), %rdx
	sarq	$2, %rdx
	subq	%rdx, %rcx
	movq	-24(%rbp), %rdx
	sarq	$2, %rdx
	movq	-16(%rbp), %rsi
	sarq	$2, %rsi
	subq	%rsi, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	signal_after_change
.LBB29_56:                              # %if.end.121
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB29_107
.LBB29_57:                              # %if.else.123
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB29_107
.LBB29_58:                              # %if.else.125
	cmpq	$0, -48(%rbp)
	jne	.LBB29_60
# BB#59:                                # %cond.true.127
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	jmp	.LBB29_70
.LBB29_60:                              # %cond.false.128
	cmpq	$0, -48(%rbp)
	jne	.LBB29_62
# BB#61:                                # %cond.true.130
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -264(%rbp)        # 8-byte Spill
	jmp	.LBB29_63
.LBB29_62:                              # %cond.false.131
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
.LBB29_63:                              # %cond.end.133
	movq	-264(%rbp), %rax        # 8-byte Reload
	movq	-48(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -272(%rbp)        # 8-byte Spill
	jne	.LBB29_65
# BB#64:                                # %cond.true.137
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -280(%rbp)        # 8-byte Spill
	jmp	.LBB29_66
.LBB29_65:                              # %cond.false.138
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
.LBB29_66:                              # %cond.end.141
	movq	-280(%rbp), %rax        # 8-byte Reload
	movq	-272(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	-48(%rbp), %rax
	cmpq	$0, 16(%rax)
	movq	%rcx, -288(%rbp)        # 8-byte Spill
	jne	.LBB29_68
# BB#67:                                # %cond.true.146
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -296(%rbp)        # 8-byte Spill
	jmp	.LBB29_69
.LBB29_68:                              # %cond.false.147
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
.LBB29_69:                              # %cond.end.150
	movq	-296(%rbp), %rax        # 8-byte Reload
	movq	-288(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -256(%rbp)        # 8-byte Spill
.LBB29_70:                              # %cond.end.153
	movq	-256(%rbp), %rax        # 8-byte Reload
	cmpq	-72(%rbp), %rax
	jne	.LBB29_77
# BB#71:                                # %if.then.156
	testb	$1, -73(%rbp)
	jne	.LBB29_74
# BB#72:                                # %land.lhs.true
	movq	-40(%rbp), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB29_73
	jmp	.LBB29_74
.LBB29_73:                              # %if.then.159
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	modify_text_properties
.LBB29_74:                              # %if.end.160
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	%rax, %rdi
	callq	remove_properties
	movq	-40(%rbp), %rdi
	movb	%al, -297(%rbp)         # 1-byte Spill
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB29_75
	jmp	.LBB29_76
.LBB29_75:                              # %if.then.164
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	-24(%rbp), %rcx
	sarq	$2, %rcx
	movq	-16(%rbp), %rdx
	sarq	$2, %rdx
	subq	%rdx, %rcx
	movq	-24(%rbp), %rdx
	sarq	$2, %rdx
	movq	-16(%rbp), %rsi
	sarq	$2, %rsi
	subq	%rsi, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	signal_after_change
.LBB29_76:                              # %if.end.172
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB29_107
.LBB29_77:                              # %if.else.174
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	split_interval_left
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	copy_properties
	testb	$1, -73(%rbp)
	jne	.LBB29_80
# BB#78:                                # %land.lhs.true.177
	movq	-40(%rbp), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB29_79
	jmp	.LBB29_80
.LBB29_79:                              # %if.then.179
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	modify_text_properties
.LBB29_80:                              # %if.end.180
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	%rax, %rdi
	callq	remove_properties
	movq	-40(%rbp), %rdi
	movb	%al, -298(%rbp)         # 1-byte Spill
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB29_81
	jmp	.LBB29_82
.LBB29_81:                              # %if.then.184
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	-24(%rbp), %rcx
	sarq	$2, %rcx
	movq	-16(%rbp), %rdx
	sarq	$2, %rdx
	subq	%rdx, %rcx
	movq	-24(%rbp), %rdx
	sarq	$2, %rdx
	movq	-16(%rbp), %rsi
	sarq	$2, %rsi
	subq	%rsi, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	signal_after_change
.LBB29_82:                              # %if.end.192
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB29_107
.LBB29_83:                              # %if.end.194
                                        #   in Loop: Header=BB29_39 Depth=1
	movq	-88(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	interval_has_some_properties_list
	testb	$1, %al
	jne	.LBB29_84
	jmp	.LBB29_88
.LBB29_84:                              # %if.then.196
                                        #   in Loop: Header=BB29_39 Depth=1
	testb	$1, -73(%rbp)
	jne	.LBB29_87
# BB#85:                                # %land.lhs.true.198
                                        #   in Loop: Header=BB29_39 Depth=1
	movq	-40(%rbp), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB29_86
	jmp	.LBB29_87
.LBB29_86:                              # %if.then.200
                                        #   in Loop: Header=BB29_39 Depth=1
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	modify_text_properties
.LBB29_87:                              # %if.end.201
                                        #   in Loop: Header=BB29_39 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	%rax, %rdi
	callq	remove_properties
	movb	$1, -73(%rbp)
	movb	%al, -299(%rbp)         # 1-byte Spill
.LBB29_88:                              # %if.end.204
                                        #   in Loop: Header=BB29_39 Depth=1
	cmpq	$0, -48(%rbp)
	jne	.LBB29_90
# BB#89:                                # %cond.true.206
                                        #   in Loop: Header=BB29_39 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -312(%rbp)        # 8-byte Spill
	jmp	.LBB29_100
.LBB29_90:                              # %cond.false.207
                                        #   in Loop: Header=BB29_39 Depth=1
	cmpq	$0, -48(%rbp)
	jne	.LBB29_92
# BB#91:                                # %cond.true.209
                                        #   in Loop: Header=BB29_39 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	jmp	.LBB29_93
.LBB29_92:                              # %cond.false.210
                                        #   in Loop: Header=BB29_39 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
.LBB29_93:                              # %cond.end.212
                                        #   in Loop: Header=BB29_39 Depth=1
	movq	-320(%rbp), %rax        # 8-byte Reload
	movq	-48(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -328(%rbp)        # 8-byte Spill
	jne	.LBB29_95
# BB#94:                                # %cond.true.216
                                        #   in Loop: Header=BB29_39 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -336(%rbp)        # 8-byte Spill
	jmp	.LBB29_96
.LBB29_95:                              # %cond.false.217
                                        #   in Loop: Header=BB29_39 Depth=1
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
.LBB29_96:                              # %cond.end.220
                                        #   in Loop: Header=BB29_39 Depth=1
	movq	-336(%rbp), %rax        # 8-byte Reload
	movq	-328(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	-48(%rbp), %rax
	cmpq	$0, 16(%rax)
	movq	%rcx, -344(%rbp)        # 8-byte Spill
	jne	.LBB29_98
# BB#97:                                # %cond.true.225
                                        #   in Loop: Header=BB29_39 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -352(%rbp)        # 8-byte Spill
	jmp	.LBB29_99
.LBB29_98:                              # %cond.false.226
                                        #   in Loop: Header=BB29_39 Depth=1
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
.LBB29_99:                              # %cond.end.229
                                        #   in Loop: Header=BB29_39 Depth=1
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	-344(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -312(%rbp)        # 8-byte Spill
.LBB29_100:                             # %cond.end.232
                                        #   in Loop: Header=BB29_39 Depth=1
	movq	-312(%rbp), %rax        # 8-byte Reload
	movq	-72(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -72(%rbp)
	movq	-48(%rbp), %rdi
	callq	next_interval
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB29_106
# BB#101:                               # %if.then.237
	testb	$1, -73(%rbp)
	je	.LBB29_105
# BB#102:                               # %if.then.239
	movq	-40(%rbp), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB29_103
	jmp	.LBB29_104
.LBB29_103:                             # %if.then.241
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	-24(%rbp), %rcx
	sarq	$2, %rcx
	movq	-16(%rbp), %rdx
	sarq	$2, %rdx
	subq	%rdx, %rcx
	movq	-24(%rbp), %rdx
	sarq	$2, %rdx
	movq	-16(%rbp), %rsi
	sarq	$2, %rsi
	subq	%rsi, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	signal_after_change
.LBB29_104:                             # %if.end.249
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB29_107
.LBB29_105:                             # %if.else.251
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB29_107
.LBB29_106:                             # %if.end.253
                                        #   in Loop: Header=BB29_39 Depth=1
	jmp	.LBB29_39
.LBB29_107:                             # %return
	movq	-8(%rbp), %rax
	addq	$352, %rsp              # imm = 0x160
	popq	%rbp
	retq
.Lfunc_end29:
	.size	Fremove_list_of_text_properties, .Lfunc_end29-Fremove_list_of_text_properties
	.cfi_endproc

	.align	16, 0x90
	.type	interval_has_some_properties_list,@function
interval_has_some_properties_list:      # @interval_has_some_properties_list
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)
.LBB30_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB30_3 Depth 2
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB30_10
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB30_3:                               # %for.cond.2
                                        #   Parent Loop BB30_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB30_8
# BB#4:                                 # %for.body.7
                                        #   in Loop: Header=BB30_3 Depth=2
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	subq	$3, %rcx
	cmpq	(%rcx), %rax
	jne	.LBB30_6
# BB#5:                                 # %if.then
	movb	$1, -1(%rbp)
	jmp	.LBB30_11
.LBB30_6:                               # %if.end
                                        #   in Loop: Header=BB30_3 Depth=2
	jmp	.LBB30_7
.LBB30_7:                               # %for.inc
                                        #   in Loop: Header=BB30_3 Depth=2
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB30_3
.LBB30_8:                               # %for.end
                                        #   in Loop: Header=BB30_1 Depth=1
	jmp	.LBB30_9
.LBB30_9:                               # %for.inc.16
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB30_1
.LBB30_10:                              # %for.end.20
	movb	$0, -1(%rbp)
.LBB30_11:                              # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end30:
	.size	interval_has_some_properties_list, .Lfunc_end30-interval_has_some_properties_list
	.cfi_endproc

	.globl	Ftext_property_any
	.align	16, 0x90
	.type	Ftext_property_any,@function
Ftext_property_any:                     # @Ftext_property_any
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
	subq	$96, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	-48(%rbp), %rcx
	movl	%eax, %edi
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB31_2
# BB#1:                                 # %if.then
	movl	$5, %esi
	movq	current_buffer, %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -48(%rbp)
.LBB31_2:                               # %if.end
	leaq	-16(%rbp), %rsi
	leaq	-24(%rbp), %rdx
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rdi
	callq	validate_interval_range
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB31_8
# BB#3:                                 # %if.then.3
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB31_5
# BB#4:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB31_6
.LBB31_5:                               # %cond.true
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB31_7
.LBB31_6:                               # %cond.false
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB31_7:                               # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -8(%rbp)
	jmp	.LBB31_18
.LBB31_8:                               # %if.end.8
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -64(%rbp)
.LBB31_9:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB31_17
# BB#10:                                # %while.body
                                        #   in Loop: Header=BB31_9 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-64(%rbp), %rax
	jl	.LBB31_12
# BB#11:                                # %if.then.11
	jmp	.LBB31_17
.LBB31_12:                              # %if.end.12
                                        #   in Loop: Header=BB31_9 Depth=1
	movq	-56(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-32(%rbp), %rsi
	callq	textget
	cmpq	-40(%rbp), %rax
	jne	.LBB31_16
# BB#13:                                # %if.then.15
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	-16(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jge	.LBB31_15
# BB#14:                                # %if.then.19
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -72(%rbp)
.LBB31_15:                              # %if.end.21
	movq	-72(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB31_18
.LBB31_16:                              # %if.end.22
                                        #   in Loop: Header=BB31_9 Depth=1
	movq	-56(%rbp), %rdi
	callq	next_interval
	movq	%rax, -56(%rbp)
	jmp	.LBB31_9
.LBB31_17:                              # %while.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB31_18:                              # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	Ftext_property_any, .Lfunc_end31-Ftext_property_any
	.cfi_endproc

	.globl	Ftext_property_not_all
	.align	16, 0x90
	.type	Ftext_property_not_all,@function
Ftext_property_not_all:                 # @Ftext_property_not_all
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
	subq	$96, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	-48(%rbp), %rcx
	movl	%eax, %edi
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB32_2
# BB#1:                                 # %if.then
	movl	$5, %esi
	movq	current_buffer, %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -48(%rbp)
.LBB32_2:                               # %if.end
	leaq	-16(%rbp), %rsi
	leaq	-24(%rbp), %rdx
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rdi
	callq	validate_interval_range
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB32_8
# BB#3:                                 # %if.then.3
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB32_5
# BB#4:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB32_6
.LBB32_5:                               # %cond.true
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB32_7
.LBB32_6:                               # %cond.false
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB32_7:                               # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -8(%rbp)
	jmp	.LBB32_18
.LBB32_8:                               # %if.end.8
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -72(%rbp)
.LBB32_9:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB32_17
# BB#10:                                # %while.body
                                        #   in Loop: Header=BB32_9 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-72(%rbp), %rax
	jl	.LBB32_12
# BB#11:                                # %if.then.12
	jmp	.LBB32_17
.LBB32_12:                              # %if.end.13
                                        #   in Loop: Header=BB32_9 Depth=1
	movq	-56(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-32(%rbp), %rsi
	callq	textget
	cmpq	-40(%rbp), %rax
	je	.LBB32_16
# BB#13:                                # %if.then.16
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-64(%rbp), %rax
	jle	.LBB32_15
# BB#14:                                # %if.then.19
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
.LBB32_15:                              # %if.end.21
	movq	-64(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB32_18
.LBB32_16:                              # %if.end.22
                                        #   in Loop: Header=BB32_9 Depth=1
	movq	-56(%rbp), %rdi
	callq	next_interval
	movq	%rax, -56(%rbp)
	jmp	.LBB32_9
.LBB32_17:                              # %while.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB32_18:                              # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	Ftext_property_not_all, .Lfunc_end32-Ftext_property_not_all
	.cfi_endproc

	.globl	text_property_stickiness
	.align	16, 0x90
	.type	text_property_stickiness,@function
text_property_stickiness:               # @text_property_stickiness
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
	subq	$192, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	sarq	$2, %rdx
	subq	$1, %rdx
	shlq	$2, %rdx
	addq	$2, %rdx
	movq	%rdx, -48(%rbp)
	movb	$1, -57(%rbp)
	movb	$0, -58(%rbp)
	movq	-16(%rbp), %rdi
	movq	globals+2328, %rsi
	callq	Fassq
	xorl	%edi, %edi
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB33_2
# BB#1:                                 # %if.then
	movl	$5, %esi
	movq	current_buffer, %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -32(%rbp)
.LBB33_2:                               # %if.end
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	movq	-32(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	XBUFFER
	cmpq	current_buffer, %rax
	jne	.LBB33_4
# BB#3:                                 # %cond.true
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB33_8
.LBB33_4:                               # %cond.false
	movq	-32(%rbp), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	368(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB33_6
# BB#5:                                 # %cond.true.9
	movq	-32(%rbp), %rdi
	callq	XBUFFER
	movq	752(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB33_7
.LBB33_6:                               # %cond.false.12
	movq	-32(%rbp), %rdi
	callq	XBUFFER
	movq	368(%rax), %rdi
	callq	marker_position
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB33_7:                               # %cond.end
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB33_8:                               # %cond.end.16
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	setle	%dl
	andb	$1, %dl
	movb	%dl, -33(%rbp)
	testb	$1, -33(%rbp)
	jne	.LBB33_11
# BB#9:                                 # %lor.lhs.false
	movq	-72(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB33_12
# BB#10:                                # %land.lhs.true
	xorl	%edi, %edi
	movq	-72(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB33_12
.LBB33_11:                              # %if.then.25
	movb	$0, -57(%rbp)
	jmp	.LBB33_18
.LBB33_12:                              # %if.else
	movl	$794, %edi              # imm = 0x31A
	movq	-48(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rdx
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget_text_property
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB33_14
# BB#13:                                # %cond.true.32
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	Fmemq
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB33_15
.LBB33_14:                              # %cond.false.34
	movq	-80(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB33_15:                              # %cond.end.35
	movq	-144(%rbp), %rax        # 8-byte Reload
	xorl	%edi, %edi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB33_17
# BB#16:                                # %if.then.40
	movb	$0, -57(%rbp)
.LBB33_17:                              # %if.end.41
	jmp	.LBB33_18
.LBB33_18:                              # %if.end.42
	movl	$468, %edi              # imm = 0x1D4
	movq	-24(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rdx
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget_text_property
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB33_21
# BB#19:                                # %lor.lhs.false.48
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB33_22
# BB#20:                                # %land.lhs.true.53
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	Fmemq
	xorl	%edi, %edi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB33_22
.LBB33_21:                              # %if.then.58
	movb	$1, -58(%rbp)
.LBB33_22:                              # %if.end.59
	testb	$1, -57(%rbp)
	je	.LBB33_25
# BB#23:                                # %land.lhs.true.62
	testb	$1, -58(%rbp)
	jne	.LBB33_25
# BB#24:                                # %if.then.64
	movl	$-1, -4(%rbp)
	jmp	.LBB33_37
.LBB33_25:                              # %if.else.65
	testb	$1, -57(%rbp)
	jne	.LBB33_28
# BB#26:                                # %land.lhs.true.67
	testb	$1, -58(%rbp)
	je	.LBB33_28
# BB#27:                                # %if.then.70
	movl	$1, -4(%rbp)
	jmp	.LBB33_37
.LBB33_28:                              # %if.else.71
	testb	$1, -57(%rbp)
	jne	.LBB33_31
# BB#29:                                # %land.lhs.true.73
	testb	$1, -58(%rbp)
	jne	.LBB33_31
# BB#30:                                # %if.then.75
	movl	$0, -4(%rbp)
	jmp	.LBB33_37
.LBB33_31:                              # %if.end.76
	jmp	.LBB33_32
.LBB33_32:                              # %if.end.77
	jmp	.LBB33_33
.LBB33_33:                              # %if.end.78
	testb	$1, -33(%rbp)
	jne	.LBB33_35
# BB#34:                                # %lor.lhs.false.81
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	Fget_text_property
	xorl	%edi, %edi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB33_36
.LBB33_35:                              # %if.then.86
	movl	$1, -4(%rbp)
	jmp	.LBB33_37
.LBB33_36:                              # %if.else.87
	movl	$-1, -4(%rbp)
.LBB33_37:                              # %return
	movl	-4(%rbp), %eax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	text_property_stickiness, .Lfunc_end33-text_property_stickiness
	.cfi_endproc

	.globl	copy_text_properties
	.align	16, 0x90
	.type	copy_text_properties,@function
copy_text_properties:                   # @copy_text_properties
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
	subq	$304, %rsp              # imm = 0x130
	leaq	-16(%rbp), %rax
	leaq	-24(%rbp), %r10
	xorl	%r11d, %r11d
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movb	$0, -129(%rbp)
	movq	-32(%rbp), %rdi
	movq	%rax, %rsi
	movq	%r10, %rdx
	movl	%r11d, %ecx
	callq	validate_interval_range
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB34_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB34_50
.LBB34_2:                               # %if.end
	jmp	.LBB34_3
.LBB34_3:                               # %do.body
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB34_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB34_6
# BB#5:                                 # %if.then.6
	movq	-40(%rbp), %rdi
	callq	marker_position
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -40(%rbp)
	jmp	.LBB34_10
.LBB34_6:                               # %if.else
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB34_8
# BB#7:                                 # %cond.true
	jmp	.LBB34_9
.LBB34_8:                               # %cond.false
	movl	$558, %edi              # imm = 0x22E
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -160(%rbp)        # 8-byte Spill
.LBB34_9:                               # %cond.end
	jmp	.LBB34_10
.LBB34_10:                              # %if.end.15
	jmp	.LBB34_11
.LBB34_11:                              # %do.end
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	movq	-40(%rbp), %rcx
	sarq	$2, %rcx
	movq	-24(%rbp), %rdx
	sarq	$2, %rdx
	movq	-16(%rbp), %rsi
	sarq	$2, %rsi
	subq	%rsi, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -104(%rbp)
	cmpq	-104(%rbp), %rax
	jge	.LBB34_13
# BB#12:                                # %if.then.20
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	args_out_of_range
.LBB34_13:                              # %if.end.21
	movq	-40(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-104(%rbp), %rdi
	callq	make_natnum
	leaq	-144(%rbp), %rsi
	leaq	-152(%rbp), %rdx
	xorl	%ecx, %ecx
	movq	%rax, -152(%rbp)
	movq	-48(%rbp), %rdi
	callq	validate_interval_range
	xorl	%edi, %edi
	movq	-16(%rbp), %rdx
	sarq	$2, %rdx
	movq	%rdx, -96(%rbp)
	movq	-24(%rbp), %rdx
	sarq	$2, %rdx
	movq	%rdx, -104(%rbp)
	movq	-40(%rbp), %rdx
	sarq	$2, %rdx
	movq	%rdx, -120(%rbp)
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	%rax, -80(%rbp)
.LBB34_14:                              # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB34_31 Depth 2
	movq	-96(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jge	.LBB34_41
# BB#15:                                # %while.body
                                        #   in Loop: Header=BB34_14 Depth=1
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$0, -64(%rbp)
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jne	.LBB34_17
# BB#16:                                # %cond.true.32
                                        #   in Loop: Header=BB34_14 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	jmp	.LBB34_27
.LBB34_17:                              # %cond.false.33
                                        #   in Loop: Header=BB34_14 Depth=1
	cmpq	$0, -64(%rbp)
	jne	.LBB34_19
# BB#18:                                # %cond.true.36
                                        #   in Loop: Header=BB34_14 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	jmp	.LBB34_20
.LBB34_19:                              # %cond.false.37
                                        #   in Loop: Header=BB34_14 Depth=1
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
.LBB34_20:                              # %cond.end.38
                                        #   in Loop: Header=BB34_14 Depth=1
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	-64(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -200(%rbp)        # 8-byte Spill
	jne	.LBB34_22
# BB#21:                                # %cond.true.41
                                        #   in Loop: Header=BB34_14 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	jmp	.LBB34_23
.LBB34_22:                              # %cond.false.42
                                        #   in Loop: Header=BB34_14 Depth=1
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
.LBB34_23:                              # %cond.end.45
                                        #   in Loop: Header=BB34_14 Depth=1
	movq	-208(%rbp), %rax        # 8-byte Reload
	movq	-200(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	-64(%rbp), %rax
	cmpq	$0, 16(%rax)
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	jne	.LBB34_25
# BB#24:                                # %cond.true.50
                                        #   in Loop: Header=BB34_14 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	jmp	.LBB34_26
.LBB34_25:                              # %cond.false.51
                                        #   in Loop: Header=BB34_14 Depth=1
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
.LBB34_26:                              # %cond.end.54
                                        #   in Loop: Header=BB34_14 Depth=1
	movq	-224(%rbp), %rax        # 8-byte Reload
	movq	-216(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
.LBB34_27:                              # %cond.end.57
                                        #   in Loop: Header=BB34_14 Depth=1
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	-176(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	movq	%rcx, -112(%rbp)
	movq	-112(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jle	.LBB34_29
# BB#28:                                # %if.then.62
                                        #   in Loop: Header=BB34_14 Depth=1
	movq	-104(%rbp), %rax
	movq	%rax, -112(%rbp)
.LBB34_29:                              # %if.end.63
                                        #   in Loop: Header=BB34_14 Depth=1
	xorl	%edi, %edi
	movq	-112(%rbp), %rax
	subq	-96(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-64(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-232(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB34_36
# BB#30:                                # %if.then.69
                                        #   in Loop: Header=BB34_14 Depth=1
	jmp	.LBB34_31
.LBB34_31:                              # %while.cond.70
                                        #   Parent Loop BB34_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%edi, %edi
	movq	-88(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-240(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB34_32
	jmp	.LBB34_35
.LBB34_32:                              # %while.body.74
                                        #   in Loop: Header=BB34_31 Depth=2
	movq	-88(%rbp), %rdi
	callq	Fcar
	cmpq	-56(%rbp), %rax
	jne	.LBB34_34
# BB#33:                                # %if.then.78
                                        #   in Loop: Header=BB34_14 Depth=1
	movq	-56(%rbp), %rdi
	movq	-88(%rbp), %rax
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	Fcdr
	movq	%rax, %rdi
	callq	Fcar
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	list2
	movq	%rax, -88(%rbp)
	jmp	.LBB34_35
.LBB34_34:                              # %if.end.82
                                        #   in Loop: Header=BB34_31 Depth=2
	movq	-88(%rbp), %rdi
	callq	Fcdr
	movq	%rax, %rdi
	callq	Fcdr
	movq	%rax, -88(%rbp)
	jmp	.LBB34_31
.LBB34_35:                              # %while.end
                                        #   in Loop: Header=BB34_14 Depth=1
	jmp	.LBB34_36
.LBB34_36:                              # %if.end.85
                                        #   in Loop: Header=BB34_14 Depth=1
	xorl	%edi, %edi
	movq	-88(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-256(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB34_38
# BB#37:                                # %if.then.89
                                        #   in Loop: Header=BB34_14 Depth=1
	movq	-120(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-120(%rbp), %rcx
	addq	-128(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	-88(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	list3
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -80(%rbp)
.LBB34_38:                              # %if.end.96
                                        #   in Loop: Header=BB34_14 Depth=1
	movq	-64(%rbp), %rdi
	callq	next_interval
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB34_40
# BB#39:                                # %if.then.99
	jmp	.LBB34_41
.LBB34_40:                              # %if.end.100
                                        #   in Loop: Header=BB34_14 Depth=1
	movq	-128(%rbp), %rax
	addq	-120(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)
	jmp	.LBB34_14
.LBB34_41:                              # %while.end.103
	jmp	.LBB34_42
.LBB34_42:                              # %while.cond.104
                                        # =>This Inner Loop Header: Depth=1
	xorl	%edi, %edi
	movq	-80(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-264(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB34_43
	jmp	.LBB34_46
.LBB34_43:                              # %while.body.109
                                        #   in Loop: Header=BB34_42 Depth=1
	movq	-80(%rbp), %rdi
	callq	Fcar
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	Fcar
	movq	-72(%rbp), %rdi
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	Fcdr
	movq	%rax, %rdi
	callq	Fcar
	movq	-72(%rbp), %rdi
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	Fcdr
	movq	%rax, %rdi
	callq	Fcdr
	movq	%rax, %rdi
	callq	Fcar
	movq	-48(%rbp), %rcx
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	-280(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fadd_text_properties
	xorl	%edi, %edi
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-288(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB34_45
# BB#44:                                # %if.then.121
                                        #   in Loop: Header=BB34_42 Depth=1
	movb	$1, -129(%rbp)
.LBB34_45:                              # %if.end.122
                                        #   in Loop: Header=BB34_42 Depth=1
	movq	-80(%rbp), %rdi
	callq	Fcdr
	movq	%rax, -80(%rbp)
	jmp	.LBB34_42
.LBB34_46:                              # %while.end.124
	testb	$1, -129(%rbp)
	je	.LBB34_48
# BB#47:                                # %cond.true.127
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -296(%rbp)        # 8-byte Spill
	jmp	.LBB34_49
.LBB34_48:                              # %cond.false.129
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -296(%rbp)        # 8-byte Spill
.LBB34_49:                              # %cond.end.131
	movq	-296(%rbp), %rax        # 8-byte Reload
	movq	%rax, -8(%rbp)
.LBB34_50:                              # %return
	movq	-8(%rbp), %rax
	addq	$304, %rsp              # imm = 0x130
	popq	%rbp
	retq
.Lfunc_end34:
	.size	copy_text_properties, .Lfunc_end34-copy_text_properties
	.cfi_endproc

	.globl	text_property_list
	.align	16, 0x90
	.type	text_property_list,@function
text_property_list:                     # @text_property_list
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
	subq	$176, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	leaq	-16(%rbp), %rsi
	leaq	-24(%rbp), %rdx
	xorl	%ecx, %ecx
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rdi
	callq	validate_interval_range
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB35_31
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -64(%rbp)
.LBB35_2:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB35_19 Depth 2
	movq	-56(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jge	.LBB35_30
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB35_2 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$0, -40(%rbp)
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jne	.LBB35_5
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB35_2 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB35_15
.LBB35_5:                               # %cond.false
                                        #   in Loop: Header=BB35_2 Depth=1
	cmpq	$0, -40(%rbp)
	jne	.LBB35_7
# BB#6:                                 # %cond.true.5
                                        #   in Loop: Header=BB35_2 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB35_8
.LBB35_7:                               # %cond.false.6
                                        #   in Loop: Header=BB35_2 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB35_8:                               # %cond.end
                                        #   in Loop: Header=BB35_2 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-40(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jne	.LBB35_10
# BB#9:                                 # %cond.true.8
                                        #   in Loop: Header=BB35_2 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB35_11
.LBB35_10:                              # %cond.false.9
                                        #   in Loop: Header=BB35_2 Depth=1
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB35_11:                              # %cond.end.12
                                        #   in Loop: Header=BB35_2 Depth=1
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	-120(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	-40(%rbp), %rax
	cmpq	$0, 16(%rax)
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	jne	.LBB35_13
# BB#12:                                # %cond.true.15
                                        #   in Loop: Header=BB35_2 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB35_14
.LBB35_13:                              # %cond.false.16
                                        #   in Loop: Header=BB35_2 Depth=1
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB35_14:                              # %cond.end.19
                                        #   in Loop: Header=BB35_2 Depth=1
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	-136(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
.LBB35_15:                              # %cond.end.22
                                        #   in Loop: Header=BB35_2 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	movq	%rcx, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jle	.LBB35_17
# BB#16:                                # %if.then.25
                                        #   in Loop: Header=BB35_2 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
.LBB35_17:                              # %if.end
                                        #   in Loop: Header=BB35_2 Depth=1
	xorl	%edi, %edi
	movq	-72(%rbp), %rax
	subq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB35_25
# BB#18:                                # %if.then.30
                                        #   in Loop: Header=BB35_2 Depth=1
	jmp	.LBB35_19
.LBB35_19:                              # %for.cond
                                        #   Parent Loop BB35_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-88(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB35_24
# BB#20:                                # %for.body
                                        #   in Loop: Header=BB35_19 Depth=2
	movq	-88(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB35_22
# BB#21:                                # %if.then.36
                                        #   in Loop: Header=BB35_2 Depth=1
	movq	-32(%rbp), %rdi
	movq	-88(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	Fcar
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	list2
	movq	%rax, -88(%rbp)
	jmp	.LBB35_24
.LBB35_22:                              # %if.end.40
                                        #   in Loop: Header=BB35_19 Depth=2
	jmp	.LBB35_23
.LBB35_23:                              # %for.inc
                                        #   in Loop: Header=BB35_19 Depth=2
	movq	-88(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	Fcdr
	movq	%rax, -88(%rbp)
	jmp	.LBB35_19
.LBB35_24:                              # %for.end
                                        #   in Loop: Header=BB35_2 Depth=1
	jmp	.LBB35_25
.LBB35_25:                              # %if.end.45
                                        #   in Loop: Header=BB35_2 Depth=1
	xorl	%edi, %edi
	movq	-88(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB35_27
# BB#26:                                # %if.then.49
                                        #   in Loop: Header=BB35_2 Depth=1
	movq	-56(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-56(%rbp), %rcx
	addq	-80(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	-88(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	list3
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -48(%rbp)
.LBB35_27:                              # %if.end.56
                                        #   in Loop: Header=BB35_2 Depth=1
	movq	-40(%rbp), %rdi
	callq	next_interval
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB35_29
# BB#28:                                # %if.then.59
	jmp	.LBB35_30
.LBB35_29:                              # %if.end.60
                                        #   in Loop: Header=BB35_2 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB35_2
.LBB35_30:                              # %while.end
	jmp	.LBB35_31
.LBB35_31:                              # %if.end.62
	movq	-48(%rbp), %rax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	text_property_list, .Lfunc_end35-text_property_list
	.cfi_endproc

	.globl	add_text_properties_from_list
	.align	16, 0x90
	.type	add_text_properties_from_list,@function
add_text_properties_from_list:          # @add_text_properties_from_list
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
.LBB36_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB36_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB36_1 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	movq	-24(%rbp), %rcx
	sarq	$2, %rcx
	addq	%rcx, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	movq	-24(%rbp), %rcx
	sarq	$2, %rcx
	addq	%rcx, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdx
	movq	-8(%rbp), %rcx
	callq	Fadd_text_properties
	movq	%rax, -64(%rbp)         # 8-byte Spill
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB36_1 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB36_1
.LBB36_4:                               # %for.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	add_text_properties_from_list, .Lfunc_end36-add_text_properties_from_list
	.cfi_endproc

	.globl	extend_property_ranges
	.align	16, 0x90
	.type	extend_property_ranges,@function
extend_property_ranges:                 # @extend_property_ranges
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
	subq	$64, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -40(%rbp)
.LBB37_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB37_12
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB37_1 Depth=1
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	sarq	$2, %rax
	cmpq	-40(%rbp), %rax
	jl	.LBB37_7
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB37_1 Depth=1
	movq	-32(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB37_5
# BB#4:                                 # %if.then.12
                                        #   in Loop: Header=BB37_1 Depth=1
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB37_6
.LBB37_5:                               # %if.else
                                        #   in Loop: Header=BB37_1 Depth=1
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rsi
	callq	XSETCDR
.LBB37_6:                               # %if.end
                                        #   in Loop: Header=BB37_1 Depth=1
	jmp	.LBB37_10
.LBB37_7:                               # %if.else.19
                                        #   in Loop: Header=BB37_1 Depth=1
	movq	-64(%rbp), %rax
	sarq	$2, %rax
	cmpq	-40(%rbp), %rax
	jle	.LBB37_9
# BB#8:                                 # %if.then.23
                                        #   in Loop: Header=BB37_1 Depth=1
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	XSETCAR
.LBB37_9:                               # %if.end.27
                                        #   in Loop: Header=BB37_1 Depth=1
	jmp	.LBB37_10
.LBB37_10:                              # %if.end.28
                                        #   in Loop: Header=BB37_1 Depth=1
	jmp	.LBB37_11
.LBB37_11:                              # %for.inc
                                        #   in Loop: Header=BB37_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB37_1
.LBB37_12:                              # %for.end
	movq	-32(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	extend_property_ranges, .Lfunc_end37-extend_property_ranges
	.cfi_endproc

	.globl	verify_interval_modification
	.align	16, 0x90
	.type	verify_interval_modification,@function
verify_interval_modification:           # @verify_interval_modification
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
	subq	$688, %rsp              # imm = 0x2B0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	buffer_intervals
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, interval_insert_behind_hooks
	callq	builtin_lisp_symbol
	movq	%rax, interval_insert_in_front_hooks
	cmpq	$0, -32(%rbp)
	jne	.LBB38_2
# BB#1:                                 # %if.then
	jmp	.LBB38_124
.LBB38_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jle	.LBB38_4
# BB#3:                                 # %if.then.6
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB38_4:                               # %if.end.7
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB38_85
# BB#5:                                 # %if.then.9
	movq	$0, -80(%rbp)
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	find_interval
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rsi
	cmpq	current_buffer, %rsi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jne	.LBB38_7
# BB#6:                                 # %cond.true
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB38_11
.LBB38_7:                               # %cond.false
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB38_9
# BB#8:                                 # %cond.true.14
	movq	-8(%rbp), %rax
	movq	752(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jmp	.LBB38_10
.LBB38_9:                               # %cond.false.16
	movq	-8(%rbp), %rax
	movq	368(%rax), %rdi
	callq	marker_position
	movq	%rax, -152(%rbp)        # 8-byte Spill
.LBB38_10:                              # %cond.end
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB38_11:                              # %cond.end.19
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB38_13
# BB#12:                                # %if.then.22
	movq	$0, -80(%rbp)
	jmp	.LBB38_19
.LBB38_13:                              # %if.else
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB38_15
# BB#14:                                # %if.then.24
	movq	-40(%rbp), %rdi
	callq	previous_interval
	movq	%rax, -80(%rbp)
	jmp	.LBB38_18
.LBB38_15:                              # %if.else.26
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-16(%rbp), %rax
	jge	.LBB38_17
# BB#16:                                # %if.then.29
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)
.LBB38_17:                              # %if.end.30
	jmp	.LBB38_18
.LBB38_18:                              # %if.end.31
	jmp	.LBB38_19
.LBB38_19:                              # %if.end.32
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	current_buffer, %rcx
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jne	.LBB38_21
# BB#20:                                # %cond.true.34
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB38_25
.LBB38_21:                              # %cond.false.35
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB38_23
# BB#22:                                # %cond.true.38
	movq	-8(%rbp), %rax
	movq	768(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB38_24
.LBB38_23:                              # %cond.false.40
	movq	-8(%rbp), %rax
	movq	376(%rax), %rdi
	callq	marker_position
	movq	%rax, -184(%rbp)        # 8-byte Spill
.LBB38_24:                              # %cond.end.43
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, -168(%rbp)        # 8-byte Spill
.LBB38_25:                              # %cond.end.45
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	-160(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB38_27
# BB#26:                                # %if.then.48
	movq	$0, -40(%rbp)
.LBB38_27:                              # %if.end.49
	xorl	%edi, %edi
	movq	globals+1112, %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB38_29
# BB#28:                                # %lor.lhs.false
	movq	globals+1112, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB38_80
.LBB38_29:                              # %if.then.54
	movq	-40(%rbp), %rax
	cmpq	-80(%rbp), %rax
	je	.LBB38_57
# BB#30:                                # %if.then.57
	cmpq	$0, -40(%rbp)
	je	.LBB38_43
# BB#31:                                # %if.then.59
	movl	$792, %edi              # imm = 0x318
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	textget
	xorl	%edi, %edi
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB38_42
# BB#32:                                # %land.lhs.true
	movq	-96(%rbp), %rdi
	movq	globals+1112, %rsi
	callq	Fmemq
	xorl	%edi, %edi
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB38_42
# BB#33:                                # %if.then.69
	movl	$468, %edi              # imm = 0x1D4
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	textget
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB38_35
# BB#34:                                # %cond.true.77
	movl	$792, %edi              # imm = 0x318
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fmemq
	xorl	%edi, %edi
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-232(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB38_36
	jmp	.LBB38_40
.LBB38_35:                              # %cond.false.83
	xorl	%edi, %edi
	movq	-104(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-240(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB38_40
.LBB38_36:                              # %lor.lhs.false.87
	movl	$792, %edi              # imm = 0x318
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	xorl	%edi, %edi
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-256(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB38_41
# BB#37:                                # %land.lhs.true.94
	movq	-104(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB38_39
# BB#38:                                # %cond.true.99
	movl	$241, %edi
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fmemq
	xorl	%edi, %edi
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-264(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB38_41
	jmp	.LBB38_40
.LBB38_39:                              # %cond.false.105
	xorl	%edi, %edi
	movq	-104(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-272(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB38_41
.LBB38_40:                              # %if.then.109
	movq	-96(%rbp), %rdi
	callq	text_read_only
.LBB38_41:                              # %if.end.110
	jmp	.LBB38_42
.LBB38_42:                              # %if.end.111
	jmp	.LBB38_43
.LBB38_43:                              # %if.end.112
	cmpq	$0, -80(%rbp)
	je	.LBB38_56
# BB#44:                                # %if.then.114
	movl	$792, %edi              # imm = 0x318
	movq	-80(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	textget
	xorl	%edi, %edi
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-288(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB38_55
# BB#45:                                # %land.lhs.true.121
	movq	-88(%rbp), %rdi
	movq	globals+1112, %rsi
	callq	Fmemq
	xorl	%edi, %edi
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-296(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB38_55
# BB#46:                                # %if.then.126
	movl	$794, %edi              # imm = 0x31A
	movq	-80(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	textget
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB38_48
# BB#47:                                # %cond.true.135
	movl	$792, %edi              # imm = 0x318
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fmemq
	xorl	%edi, %edi
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-312(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB38_49
	jmp	.LBB38_54
.LBB38_48:                              # %cond.false.141
	xorl	%edi, %edi
	movq	-112(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-320(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB38_54
.LBB38_49:                              # %land.lhs.true.145
	movl	$792, %edi              # imm = 0x318
	movq	-80(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	xorl	%edi, %edi
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-336(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB38_53
# BB#50:                                # %lor.lhs.false.152
	movq	-112(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB38_52
# BB#51:                                # %cond.true.157
	movl	$241, %edi
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fmemq
	xorl	%edi, %edi
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-344(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB38_53
	jmp	.LBB38_54
.LBB38_52:                              # %cond.false.163
	xorl	%edi, %edi
	movq	-112(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-352(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB38_54
.LBB38_53:                              # %if.then.167
	movq	-88(%rbp), %rdi
	callq	text_read_only
.LBB38_54:                              # %if.end.168
	jmp	.LBB38_55
.LBB38_55:                              # %if.end.169
	jmp	.LBB38_56
.LBB38_56:                              # %if.end.170
	jmp	.LBB38_79
.LBB38_57:                              # %if.else.171
	cmpq	$0, -40(%rbp)
	je	.LBB38_78
# BB#58:                                # %if.then.173
	movl	$792, %edi              # imm = 0x318
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	textget
	xorl	%edi, %edi
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-368(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB38_77
# BB#59:                                # %land.lhs.true.180
	movq	-96(%rbp), %rdi
	movq	globals+1112, %rsi
	callq	Fmemq
	xorl	%edi, %edi
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-376(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB38_77
# BB#60:                                # %if.then.185
	movl	$468, %edi              # imm = 0x1D4
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	textget
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB38_62
# BB#61:                                # %cond.true.194
	movl	$792, %edi              # imm = 0x318
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fmemq
	xorl	%edi, %edi
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-392(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB38_63
	jmp	.LBB38_67
.LBB38_62:                              # %cond.false.200
	xorl	%edi, %edi
	movq	-120(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-400(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB38_67
.LBB38_63:                              # %lor.lhs.false.204
	movl	$792, %edi              # imm = 0x318
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	xorl	%edi, %edi
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-416(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB38_68
# BB#64:                                # %land.lhs.true.211
	movq	-120(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB38_66
# BB#65:                                # %cond.true.216
	movl	$241, %edi
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fmemq
	xorl	%edi, %edi
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-424(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB38_68
	jmp	.LBB38_67
.LBB38_66:                              # %cond.false.222
	xorl	%edi, %edi
	movq	-120(%rbp), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-432(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB38_68
.LBB38_67:                              # %if.then.226
	movq	-96(%rbp), %rdi
	callq	text_read_only
.LBB38_68:                              # %if.end.227
	movl	$794, %edi              # imm = 0x31A
	movq	-80(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	textget
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB38_70
# BB#69:                                # %cond.true.235
	movl	$792, %edi              # imm = 0x318
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fmemq
	xorl	%edi, %edi
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-448(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB38_71
	jmp	.LBB38_76
.LBB38_70:                              # %cond.false.241
	xorl	%edi, %edi
	movq	-120(%rbp), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-456(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB38_76
.LBB38_71:                              # %land.lhs.true.245
	movl	$792, %edi              # imm = 0x318
	movq	-80(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	xorl	%edi, %edi
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-472(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB38_75
# BB#72:                                # %lor.lhs.false.252
	movq	-120(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB38_74
# BB#73:                                # %cond.true.257
	movl	$241, %edi
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fmemq
	xorl	%edi, %edi
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-480(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB38_75
	jmp	.LBB38_76
.LBB38_74:                              # %cond.false.263
	xorl	%edi, %edi
	movq	-120(%rbp), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-488(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB38_76
.LBB38_75:                              # %if.then.267
	movq	-96(%rbp), %rdi
	callq	text_read_only
.LBB38_76:                              # %if.end.268
	jmp	.LBB38_77
.LBB38_77:                              # %if.end.269
	jmp	.LBB38_78
.LBB38_78:                              # %if.end.270
	jmp	.LBB38_79
.LBB38_79:                              # %if.end.271
	jmp	.LBB38_80
.LBB38_80:                              # %if.end.272
	cmpq	$0, -80(%rbp)
	je	.LBB38_82
# BB#81:                                # %if.then.274
	movl	$552, %edi              # imm = 0x228
	movq	-80(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	textget
	movq	%rax, interval_insert_behind_hooks
.LBB38_82:                              # %if.end.278
	cmpq	$0, -40(%rbp)
	je	.LBB38_84
# BB#83:                                # %if.then.280
	movl	$554, %edi              # imm = 0x22A
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	textget
	movq	%rax, interval_insert_in_front_hooks
.LBB38_84:                              # %if.end.284
	jmp	.LBB38_124
.LBB38_85:                              # %if.else.285
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	find_interval
	movq	%rax, -40(%rbp)
.LBB38_86:                              # %do.body
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB38_92
# BB#87:                                # %land.lhs.true.288
                                        #   in Loop: Header=BB38_86 Depth=1
	movl	$792, %edi              # imm = 0x318
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	textget
	xorl	%edi, %edi
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-520(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB38_93
# BB#88:                                # %lor.lhs.false.295
                                        #   in Loop: Header=BB38_86 Depth=1
	movl	$547, %edi              # imm = 0x223
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	textget
	xorl	%edi, %edi
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-536(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB38_93
# BB#89:                                # %lor.lhs.false.302
                                        #   in Loop: Header=BB38_86 Depth=1
	movq	globals+1112, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB38_91
# BB#90:                                # %cond.true.307
                                        #   in Loop: Header=BB38_86 Depth=1
	movl	$792, %edi              # imm = 0x318
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-544(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	textget
	movq	globals+1112, %rsi
	movq	%rax, %rdi
	callq	Fmemq
	xorl	%edi, %edi
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-552(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB38_92
	jmp	.LBB38_93
.LBB38_91:                              # %cond.false.315
                                        #   in Loop: Header=BB38_86 Depth=1
	xorl	%edi, %edi
	movq	globals+1112, %rax
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-560(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB38_93
.LBB38_92:                              # %if.then.319
	movl	$792, %edi              # imm = 0x318
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	textget
	movq	%rax, %rdi
	callq	text_read_only
.LBB38_93:                              # %if.end.323
                                        #   in Loop: Header=BB38_86 Depth=1
	testb	$1, globals+3396
	jne	.LBB38_98
# BB#94:                                # %if.then.325
                                        #   in Loop: Header=BB38_86 Depth=1
	movl	$676, %edi              # imm = 0x2A4
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-576(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	textget
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-584(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB38_97
# BB#95:                                # %land.lhs.true.332
                                        #   in Loop: Header=BB38_86 Depth=1
	movq	-64(%rbp), %rax
	cmpq	-56(%rbp), %rax
	je	.LBB38_97
# BB#96:                                # %if.then.335
                                        #   in Loop: Header=BB38_86 Depth=1
	movq	-64(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	Fcons
	movq	%rax, -48(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB38_97:                              # %if.end.337
                                        #   in Loop: Header=BB38_86 Depth=1
	jmp	.LBB38_98
.LBB38_98:                              # %if.end.338
                                        #   in Loop: Header=BB38_86 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$0, -40(%rbp)
	movq	%rax, -592(%rbp)        # 8-byte Spill
	jne	.LBB38_100
# BB#99:                                # %cond.true.342
                                        #   in Loop: Header=BB38_86 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -600(%rbp)        # 8-byte Spill
	jmp	.LBB38_110
.LBB38_100:                             # %cond.false.343
                                        #   in Loop: Header=BB38_86 Depth=1
	cmpq	$0, -40(%rbp)
	jne	.LBB38_102
# BB#101:                               # %cond.true.346
                                        #   in Loop: Header=BB38_86 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -608(%rbp)        # 8-byte Spill
	jmp	.LBB38_103
.LBB38_102:                             # %cond.false.347
                                        #   in Loop: Header=BB38_86 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -608(%rbp)        # 8-byte Spill
.LBB38_103:                             # %cond.end.348
                                        #   in Loop: Header=BB38_86 Depth=1
	movq	-608(%rbp), %rax        # 8-byte Reload
	movq	-40(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -616(%rbp)        # 8-byte Spill
	jne	.LBB38_105
# BB#104:                               # %cond.true.352
                                        #   in Loop: Header=BB38_86 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -624(%rbp)        # 8-byte Spill
	jmp	.LBB38_106
.LBB38_105:                             # %cond.false.353
                                        #   in Loop: Header=BB38_86 Depth=1
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
.LBB38_106:                             # %cond.end.356
                                        #   in Loop: Header=BB38_86 Depth=1
	movq	-624(%rbp), %rax        # 8-byte Reload
	movq	-616(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	-40(%rbp), %rax
	cmpq	$0, 16(%rax)
	movq	%rcx, -632(%rbp)        # 8-byte Spill
	jne	.LBB38_108
# BB#107:                               # %cond.true.360
                                        #   in Loop: Header=BB38_86 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -640(%rbp)        # 8-byte Spill
	jmp	.LBB38_109
.LBB38_108:                             # %cond.false.361
                                        #   in Loop: Header=BB38_86 Depth=1
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
.LBB38_109:                             # %cond.end.364
                                        #   in Loop: Header=BB38_86 Depth=1
	movq	-640(%rbp), %rax        # 8-byte Reload
	movq	-632(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -600(%rbp)        # 8-byte Spill
.LBB38_110:                             # %cond.end.367
                                        #   in Loop: Header=BB38_86 Depth=1
	movq	-600(%rbp), %rax        # 8-byte Reload
	movq	-592(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	cmpq	-24(%rbp), %rcx
	jge	.LBB38_114
# BB#111:                               # %land.lhs.true.371
                                        #   in Loop: Header=BB38_86 Depth=1
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	56(%rax), %rax
	movq	%rax, -648(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-648(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB38_114
# BB#112:                               # %land.lhs.true.375
                                        #   in Loop: Header=BB38_86 Depth=1
	xorl	%edi, %edi
	movq	globals+1112, %rax
	movq	%rax, -656(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-656(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB38_114
# BB#113:                               # %if.then.379
	movl	$228, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -664(%rbp)        # 8-byte Spill
	callq	Fcurrent_buffer
	movq	-664(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	xsignal1
.LBB38_114:                             # %if.end.382
                                        #   in Loop: Header=BB38_86 Depth=1
	movq	-40(%rbp), %rdi
	callq	next_interval
	movq	%rax, -40(%rbp)
# BB#115:                               # %do.cond
                                        #   in Loop: Header=BB38_86 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -40(%rbp)
	movb	%cl, -665(%rbp)         # 1-byte Spill
	je	.LBB38_117
# BB#116:                               # %land.rhs
                                        #   in Loop: Header=BB38_86 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-24(%rbp), %rax
	setl	%cl
	movb	%cl, -665(%rbp)         # 1-byte Spill
.LBB38_117:                             # %land.end
                                        #   in Loop: Header=BB38_86 Depth=1
	movb	-665(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB38_86
# BB#118:                               # %do.end
	testb	$1, globals+3396
	jne	.LBB38_123
# BB#119:                               # %if.then.389
	movq	-48(%rbp), %rdi
	callq	Fnreverse
	movq	%rax, -48(%rbp)
.LBB38_120:                             # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -680(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-680(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB38_121
	jmp	.LBB38_122
.LBB38_121:                             # %while.body
                                        #   in Loop: Header=BB38_120 Depth=1
	movq	-48(%rbp), %rdi
	callq	Fcar
	movq	-16(%rbp), %rdi
	shlq	$2, %rdi
	addq	$2, %rdi
	movq	-24(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rdi, -688(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-688(%rbp), %rsi        # 8-byte Reload
	movq	%rcx, %rdx
	callq	call_mod_hooks
	movq	-48(%rbp), %rdi
	callq	Fcdr
	movq	%rax, -48(%rbp)
	jmp	.LBB38_120
.LBB38_122:                             # %while.end
	jmp	.LBB38_123
.LBB38_123:                             # %if.end.399
	jmp	.LBB38_124
.LBB38_124:                             # %if.end.400
	addq	$688, %rsp              # imm = 0x2B0
	popq	%rbp
	retq
.Lfunc_end38:
	.size	verify_interval_modification, .Lfunc_end38-verify_interval_modification
	.cfi_endproc

	.align	16, 0x90
	.type	text_read_only,@function
text_read_only:                         # @text_read_only
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB39_1
	jmp	.LBB39_2
.LBB39_1:                               # %if.then
	movl	$913, %edi              # imm = 0x391
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	xsignal1
.LBB39_2:                               # %if.end
	movl	$913, %edi              # imm = 0x391
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	xsignal0
.Lfunc_end39:
	.size	text_read_only, .Lfunc_end39-text_read_only
	.cfi_endproc

	.align	16, 0x90
	.type	call_mod_hooks,@function
call_mod_hooks:                         # @call_mod_hooks
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
.LBB40_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB40_2
	jmp	.LBB40_3
.LBB40_2:                               # %while.body
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	Fcar
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	call2
	movq	-8(%rbp), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	Fcdr
	movq	%rax, -8(%rbp)
	jmp	.LBB40_1
.LBB40_3:                               # %while.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	call_mod_hooks, .Lfunc_end40-call_mod_hooks
	.cfi_endproc

	.globl	report_interval_modification
	.align	16, 0x90
	.type	report_interval_modification,@function
report_interval_modification:           # @report_interval_modification
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
	subq	$32, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	interval_insert_behind_hooks, %rsi
	movl	%eax, %edi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB41_2
# BB#1:                                 # %if.then
	movq	interval_insert_behind_hooks, %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	callq	call_mod_hooks
.LBB41_2:                               # %if.end
	xorl	%edi, %edi
	movq	interval_insert_in_front_hooks, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB41_5
# BB#3:                                 # %land.lhs.true
	movq	interval_insert_in_front_hooks, %rax
	cmpq	interval_insert_behind_hooks, %rax
	je	.LBB41_5
# BB#4:                                 # %if.then.4
	movq	interval_insert_in_front_hooks, %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	callq	call_mod_hooks
.LBB41_5:                               # %if.end.5
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	report_interval_modification, .Lfunc_end41-report_interval_modification
	.cfi_endproc

	.globl	syms_of_textprop
	.align	16, 0x90
	.type	syms_of_textprop,@function
syms_of_textprop:                       # @syms_of_textprop
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
	subq	$32, %rsp
	jmp	.LBB42_1
.LBB42_1:                               # %do.body
	movabsq	$syms_of_textprop.o_fwd, %rdi
	movabsq	$.L.str, %rsi
	movabsq	$globals, %rax
	addq	$504, %rax              # imm = 0x1F8
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#2:                                 # %do.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+504
# BB#3:                                 # %do.body.1
	movabsq	$syms_of_textprop.o_fwd.1, %rdi
	movabsq	$.L.str.2, %rsi
	movabsq	$globals, %rax
	addq	$208, %rax
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#4:                                 # %do.end.2
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+208
# BB#5:                                 # %do.body.4
	movabsq	$syms_of_textprop.o_fwd.3, %rdi
	movabsq	$.L.str.4, %rsi
	movabsq	$globals, %rax
	addq	$1096, %rax             # imm = 0x448
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#6:                                 # %do.end.5
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, globals+1096
# BB#7:                                 # %do.body.7
	movabsq	$syms_of_textprop.o_fwd.5, %rdi
	movabsq	$.L.str.6, %rsi
	movabsq	$globals, %rax
	addq	$2328, %rax             # imm = 0x918
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#8:                                 # %do.end.8
	movl	$899, %edi              # imm = 0x383
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -8(%rbp)          # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movl	$344, %edi              # imm = 0x158
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	list2
	movabsq	$interval_insert_behind_hooks, %rdi
	movq	%rax, globals+2328
	callq	staticpro
	movabsq	$interval_insert_in_front_hooks, %rdi
	callq	staticpro
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, interval_insert_behind_hooks
	callq	builtin_lisp_symbol
	movabsq	$Stext_properties_at, %rsi
	movq	%rax, interval_insert_in_front_hooks
	movq	%rsi, %rdi
	callq	defsubr
	movabsq	$Sget_text_property, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sget_char_property, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sget_char_property_and_overlay, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Snext_char_property_change, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sprevious_char_property_change, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Snext_single_char_property_change, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sprevious_single_char_property_change, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Snext_property_change, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Snext_single_property_change, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sprevious_property_change, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sprevious_single_property_change, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sadd_text_properties, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sput_text_property, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sset_text_properties, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sadd_face_text_property, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sremove_text_properties, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sremove_list_of_text_properties, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Stext_property_any, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Stext_property_not_all, %rax
	movq	%rax, %rdi
	callq	defsubr
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end42:
	.size	syms_of_textprop, .Lfunc_end42-syms_of_textprop
	.cfi_endproc

	.align	16, 0x90
	.type	interval_has_all_properties,@function
interval_has_all_properties:            # @interval_has_all_properties
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)
.LBB43_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB43_3 Depth 2
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB43_14
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movb	$0, -49(%rbp)
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB43_3:                               # %for.cond.3
                                        #   Parent Loop BB43_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB43_10
# BB#4:                                 # %for.body.8
                                        #   in Loop: Header=BB43_3 Depth=2
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	subq	$3, %rcx
	cmpq	(%rcx), %rax
	jne	.LBB43_8
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	Fcar
	movq	-40(%rbp), %rdi
	subq	$3, %rdi
	movq	8(%rdi), %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	Fcar
	movq	-64(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	je	.LBB43_7
# BB#6:                                 # %if.then.20
	movb	$0, -1(%rbp)
	jmp	.LBB43_15
.LBB43_7:                               # %if.end
                                        #   in Loop: Header=BB43_1 Depth=1
	movb	$1, -49(%rbp)
	jmp	.LBB43_10
.LBB43_8:                               # %if.end.21
                                        #   in Loop: Header=BB43_3 Depth=2
	jmp	.LBB43_9
.LBB43_9:                               # %for.inc
                                        #   in Loop: Header=BB43_3 Depth=2
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	Fcdr
	movq	%rax, -40(%rbp)
	jmp	.LBB43_3
.LBB43_10:                              # %for.end
                                        #   in Loop: Header=BB43_1 Depth=1
	testb	$1, -49(%rbp)
	jne	.LBB43_12
# BB#11:                                # %if.then.26
	movb	$0, -1(%rbp)
	jmp	.LBB43_15
.LBB43_12:                              # %if.end.27
                                        #   in Loop: Header=BB43_1 Depth=1
	jmp	.LBB43_13
.LBB43_13:                              # %for.inc.28
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	Fcdr
	movq	%rax, -32(%rbp)
	jmp	.LBB43_1
.LBB43_14:                              # %for.end.33
	movb	$1, -1(%rbp)
.LBB43_15:                              # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end43:
	.size	interval_has_all_properties, .Lfunc_end43-interval_has_all_properties
	.cfi_endproc

	.align	16, 0x90
	.type	add_properties,@function
add_properties:                         # @add_properties
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
	subq	$352, %rsp              # imm = 0x160
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movb	$0, -65(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -64(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB44_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB44_3 Depth 2
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB44_56
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB44_1 Depth=1
	movb	$0, -66(%rbp)
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	Fcar
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB44_3:                               # %for.cond.6
                                        #   Parent Loop BB44_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB44_38
# BB#4:                                 # %for.body.11
                                        #   in Loop: Header=BB44_3 Depth=2
	movq	-56(%rbp), %rax
	movq	-48(%rbp), %rcx
	subq	$3, %rcx
	cmpq	(%rcx), %rax
	jne	.LBB44_36
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB44_1 Depth=1
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
	movb	$1, -66(%rbp)
	movq	-64(%rbp), %rax
	movq	-80(%rbp), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	Fcar
	movq	-88(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	jne	.LBB44_7
# BB#6:                                 # %if.then.22
                                        #   in Loop: Header=BB44_1 Depth=1
	jmp	.LBB44_38
.LBB44_7:                               # %if.end
                                        #   in Loop: Header=BB44_1 Depth=1
	movq	-24(%rbp), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB44_8
	jmp	.LBB44_21
.LBB44_8:                               # %if.then.24
                                        #   in Loop: Header=BB44_1 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	cmpq	$0, -16(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	jne	.LBB44_10
# BB#9:                                 # %cond.true
                                        #   in Loop: Header=BB44_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB44_20
.LBB44_10:                              # %cond.false
                                        #   in Loop: Header=BB44_1 Depth=1
	cmpq	$0, -16(%rbp)
	jne	.LBB44_12
# BB#11:                                # %cond.true.29
                                        #   in Loop: Header=BB44_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB44_13
.LBB44_12:                              # %cond.false.30
                                        #   in Loop: Header=BB44_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB44_13:                              # %cond.end
                                        #   in Loop: Header=BB44_1 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-16(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jne	.LBB44_15
# BB#14:                                # %cond.true.33
                                        #   in Loop: Header=BB44_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB44_16
.LBB44_15:                              # %cond.false.34
                                        #   in Loop: Header=BB44_1 Depth=1
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB44_16:                              # %cond.end.37
                                        #   in Loop: Header=BB44_1 Depth=1
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	-120(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	-16(%rbp), %rax
	cmpq	$0, 16(%rax)
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	jne	.LBB44_18
# BB#17:                                # %cond.true.42
                                        #   in Loop: Header=BB44_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB44_19
.LBB44_18:                              # %cond.false.43
                                        #   in Loop: Header=BB44_1 Depth=1
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB44_19:                              # %cond.end.46
                                        #   in Loop: Header=BB44_1 Depth=1
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	-136(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
.LBB44_20:                              # %cond.end.49
                                        #   in Loop: Header=BB44_1 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-56(%rbp), %rdx
	movq	-80(%rbp), %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	callq	Fcar
	movq	-24(%rbp), %r8
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-152(%rbp), %rsi        # 8-byte Reload
	movq	-160(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	record_property_change
.LBB44_21:                              # %if.end.52
                                        #   in Loop: Header=BB44_1 Depth=1
	cmpl	$0, -28(%rbp)
	jne	.LBB44_23
# BB#22:                                # %if.then.55
                                        #   in Loop: Header=BB44_1 Depth=1
	movq	-80(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	Fsetcar
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB44_35
.LBB44_23:                              # %if.else
                                        #   in Loop: Header=BB44_1 Depth=1
	movq	-80(%rbp), %rdi
	callq	Fcar
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB44_30
# BB#24:                                # %land.lhs.true
                                        #   in Loop: Header=BB44_1 Depth=1
	movl	$397, %edi              # imm = 0x18D
	movq	-56(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB44_26
# BB#25:                                # %lor.lhs.false
                                        #   in Loop: Header=BB44_1 Depth=1
	movq	-80(%rbp), %rdi
	callq	Fcar
	movq	%rax, %rdi
	callq	Fcar
	movq	%rax, %rdi
	callq	Fkeywordp
	xorl	%edi, %edi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB44_30
.LBB44_26:                              # %if.then.71
                                        #   in Loop: Header=BB44_1 Depth=1
	cmpl	$1, -28(%rbp)
	jne	.LBB44_28
# BB#27:                                # %if.then.74
                                        #   in Loop: Header=BB44_1 Depth=1
	movq	-80(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	Fcar
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fsetcar
	movq	%rax, -208(%rbp)        # 8-byte Spill
	jmp	.LBB44_29
.LBB44_28:                              # %if.else.78
                                        #   in Loop: Header=BB44_1 Depth=1
	movq	-80(%rbp), %rdi
	callq	Fcar
	movq	-64(%rbp), %rdi
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	list1
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	nconc2
	movq	%rax, -224(%rbp)        # 8-byte Spill
.LBB44_29:                              # %if.end.82
                                        #   in Loop: Header=BB44_1 Depth=1
	jmp	.LBB44_34
.LBB44_30:                              # %if.else.83
                                        #   in Loop: Header=BB44_1 Depth=1
	cmpl	$1, -28(%rbp)
	jne	.LBB44_32
# BB#31:                                # %if.then.86
                                        #   in Loop: Header=BB44_1 Depth=1
	movq	-80(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	Fcar
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	list2
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fsetcar
	movq	%rax, -248(%rbp)        # 8-byte Spill
	jmp	.LBB44_33
.LBB44_32:                              # %if.else.90
                                        #   in Loop: Header=BB44_1 Depth=1
	movq	-80(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	Fcar
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	list2
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fsetcar
	movq	%rax, -264(%rbp)        # 8-byte Spill
.LBB44_33:                              # %if.end.94
                                        #   in Loop: Header=BB44_1 Depth=1
	jmp	.LBB44_34
.LBB44_34:                              # %if.end.95
                                        #   in Loop: Header=BB44_1 Depth=1
	jmp	.LBB44_35
.LBB44_35:                              # %if.end.96
                                        #   in Loop: Header=BB44_1 Depth=1
	movb	$1, -65(%rbp)
	jmp	.LBB44_38
.LBB44_36:                              # %if.end.97
                                        #   in Loop: Header=BB44_3 Depth=2
	jmp	.LBB44_37
.LBB44_37:                              # %for.inc
                                        #   in Loop: Header=BB44_3 Depth=2
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	Fcdr
	movq	%rax, -48(%rbp)
	jmp	.LBB44_3
.LBB44_38:                              # %for.end
                                        #   in Loop: Header=BB44_1 Depth=1
	testb	$1, -66(%rbp)
	jne	.LBB44_54
# BB#39:                                # %if.then.102
                                        #   in Loop: Header=BB44_1 Depth=1
	movq	-24(%rbp), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB44_40
	jmp	.LBB44_53
.LBB44_40:                              # %if.then.104
                                        #   in Loop: Header=BB44_1 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	cmpq	$0, -16(%rbp)
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	jne	.LBB44_42
# BB#41:                                # %cond.true.108
                                        #   in Loop: Header=BB44_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -280(%rbp)        # 8-byte Spill
	jmp	.LBB44_52
.LBB44_42:                              # %cond.false.109
                                        #   in Loop: Header=BB44_1 Depth=1
	cmpq	$0, -16(%rbp)
	jne	.LBB44_44
# BB#43:                                # %cond.true.112
                                        #   in Loop: Header=BB44_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -288(%rbp)        # 8-byte Spill
	jmp	.LBB44_45
.LBB44_44:                              # %cond.false.113
                                        #   in Loop: Header=BB44_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
.LBB44_45:                              # %cond.end.115
                                        #   in Loop: Header=BB44_1 Depth=1
	movq	-288(%rbp), %rax        # 8-byte Reload
	movq	-16(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -296(%rbp)        # 8-byte Spill
	jne	.LBB44_47
# BB#46:                                # %cond.true.120
                                        #   in Loop: Header=BB44_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -304(%rbp)        # 8-byte Spill
	jmp	.LBB44_48
.LBB44_47:                              # %cond.false.121
                                        #   in Loop: Header=BB44_1 Depth=1
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
.LBB44_48:                              # %cond.end.124
                                        #   in Loop: Header=BB44_1 Depth=1
	movq	-304(%rbp), %rax        # 8-byte Reload
	movq	-296(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	-16(%rbp), %rax
	cmpq	$0, 16(%rax)
	movq	%rcx, -312(%rbp)        # 8-byte Spill
	jne	.LBB44_50
# BB#49:                                # %cond.true.130
                                        #   in Loop: Header=BB44_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	jmp	.LBB44_51
.LBB44_50:                              # %cond.false.131
                                        #   in Loop: Header=BB44_1 Depth=1
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
.LBB44_51:                              # %cond.end.134
                                        #   in Loop: Header=BB44_1 Depth=1
	movq	-320(%rbp), %rax        # 8-byte Reload
	movq	-312(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -280(%rbp)        # 8-byte Spill
.LBB44_52:                              # %cond.end.137
                                        #   in Loop: Header=BB44_1 Depth=1
	movq	-280(%rbp), %rax        # 8-byte Reload
	xorl	%edi, %edi
	movq	-56(%rbp), %rdx
	movq	%rax, -328(%rbp)        # 8-byte Spill
	movq	%rdx, -336(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %r8
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	-328(%rbp), %rsi        # 8-byte Reload
	movq	-336(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	record_property_change
.LBB44_53:                              # %if.end.140
                                        #   in Loop: Header=BB44_1 Depth=1
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	48(%rdx), %rsi
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	Fcons
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	set_interval_plist
	movb	$1, -65(%rbp)
.LBB44_54:                              # %if.end.144
                                        #   in Loop: Header=BB44_1 Depth=1
	jmp	.LBB44_55
.LBB44_55:                              # %for.inc.145
                                        #   in Loop: Header=BB44_1 Depth=1
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	Fcdr
	movq	%rax, -40(%rbp)
	jmp	.LBB44_1
.LBB44_56:                              # %for.end.150
	movb	-65(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$352, %rsp              # imm = 0x160
	popq	%rbp
	retq
.Lfunc_end44:
	.size	add_properties, .Lfunc_end44-add_properties
	.cfi_endproc

	.align	16, 0x90
	.type	property_value,@function
property_value:                         # @property_value
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
.LBB45_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -33(%rbp)          # 1-byte Spill
	jne	.LBB45_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	sete	%dl
	movb	%dl, -33(%rbp)          # 1-byte Spill
.LBB45_3:                               # %land.end
                                        #   in Loop: Header=BB45_1 Depth=1
	movb	-33(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB45_4
	jmp	.LBB45_8
.LBB45_4:                               # %while.body
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB45_6
# BB#5:                                 # %if.then
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB45_9
.LBB45_6:                               # %if.else
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
# BB#7:                                 # %if.end
                                        #   in Loop: Header=BB45_1 Depth=1
	jmp	.LBB45_1
.LBB45_8:                               # %while.end
	movl	$957, %edi              # imm = 0x3BD
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB45_9:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end45:
	.size	property_value, .Lfunc_end45-property_value
	.cfi_endproc

	.type	interval_insert_behind_hooks,@object # @interval_insert_behind_hooks
	.local	interval_insert_behind_hooks
	.comm	interval_insert_behind_hooks,8,8
	.type	interval_insert_in_front_hooks,@object # @interval_insert_in_front_hooks
	.local	interval_insert_in_front_hooks
	.comm	interval_insert_in_front_hooks,8,8
	.type	syms_of_textprop.o_fwd,@object # @syms_of_textprop.o_fwd
	.local	syms_of_textprop.o_fwd
	.comm	syms_of_textprop.o_fwd,16,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"default-text-properties"
	.size	.L.str, 24

	.type	syms_of_textprop.o_fwd.1,@object # @syms_of_textprop.o_fwd.1
	.local	syms_of_textprop.o_fwd.1
	.comm	syms_of_textprop.o_fwd.1,16,8
	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"char-property-alias-alist"
	.size	.L.str.2, 26

	.type	syms_of_textprop.o_fwd.3,@object # @syms_of_textprop.o_fwd.3
	.local	syms_of_textprop.o_fwd.3
	.comm	syms_of_textprop.o_fwd.3,16,8
	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"inhibit-point-motion-hooks"
	.size	.L.str.4, 27

	.type	syms_of_textprop.o_fwd.5,@object # @syms_of_textprop.o_fwd.5
	.local	syms_of_textprop.o_fwd.5
	.comm	syms_of_textprop.o_fwd.5,16,8
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"text-property-default-nonsticky"
	.size	.L.str.6, 32

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Odd length text property list"
	.size	.L.str.7, 30

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"text-properties-at"
	.size	.L.str.8, 19

	.type	Stext_properties_at,@object # @Stext_properties_at
	.data
	.align	8
Stext_properties_at:
	.quad	167772160               # 0xa000000
	.quad	Ftext_properties_at
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.8
	.quad	0
	.quad	0
	.size	Stext_properties_at, 48

	.type	.L.str.9,@object        # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"get-text-property"
	.size	.L.str.9, 18

	.type	Sget_text_property,@object # @Sget_text_property
	.data
	.align	8
Sget_text_property:
	.quad	167772160               # 0xa000000
	.quad	Fget_text_property
	.short	2                       # 0x2
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.9
	.quad	0
	.quad	0
	.size	Sget_text_property, 48

	.type	.L.str.10,@object       # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"get-char-property"
	.size	.L.str.10, 18

	.type	Sget_char_property,@object # @Sget_char_property
	.data
	.align	8
Sget_char_property:
	.quad	167772160               # 0xa000000
	.quad	Fget_char_property
	.short	2                       # 0x2
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.10
	.quad	0
	.quad	0
	.size	Sget_char_property, 48

	.type	.L.str.11,@object       # @.str.11
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.11:
	.asciz	"get-char-property-and-overlay"
	.size	.L.str.11, 30

	.type	Sget_char_property_and_overlay,@object # @Sget_char_property_and_overlay
	.data
	.align	8
Sget_char_property_and_overlay:
	.quad	167772160               # 0xa000000
	.quad	Fget_char_property_and_overlay
	.short	2                       # 0x2
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.11
	.quad	0
	.quad	0
	.size	Sget_char_property_and_overlay, 48

	.type	.L.str.12,@object       # @.str.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.12:
	.asciz	"next-char-property-change"
	.size	.L.str.12, 26

	.type	Snext_char_property_change,@object # @Snext_char_property_change
	.data
	.align	8
Snext_char_property_change:
	.quad	167772160               # 0xa000000
	.quad	Fnext_char_property_change
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.12
	.quad	0
	.quad	0
	.size	Snext_char_property_change, 48

	.type	.L.str.13,@object       # @.str.13
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.13:
	.asciz	"previous-char-property-change"
	.size	.L.str.13, 30

	.type	Sprevious_char_property_change,@object # @Sprevious_char_property_change
	.data
	.align	8
Sprevious_char_property_change:
	.quad	167772160               # 0xa000000
	.quad	Fprevious_char_property_change
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.13
	.quad	0
	.quad	0
	.size	Sprevious_char_property_change, 48

	.type	.L.str.14,@object       # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"next-single-char-property-change"
	.size	.L.str.14, 33

	.type	Snext_single_char_property_change,@object # @Snext_single_char_property_change
	.data
	.align	8
Snext_single_char_property_change:
	.quad	167772160               # 0xa000000
	.quad	Fnext_single_char_property_change
	.short	2                       # 0x2
	.short	4                       # 0x4
	.zero	4
	.quad	.L.str.14
	.quad	0
	.quad	0
	.size	Snext_single_char_property_change, 48

	.type	.L.str.15,@object       # @.str.15
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.15:
	.asciz	"previous-single-char-property-change"
	.size	.L.str.15, 37

	.type	Sprevious_single_char_property_change,@object # @Sprevious_single_char_property_change
	.data
	.align	8
Sprevious_single_char_property_change:
	.quad	167772160               # 0xa000000
	.quad	Fprevious_single_char_property_change
	.short	2                       # 0x2
	.short	4                       # 0x4
	.zero	4
	.quad	.L.str.15
	.quad	0
	.quad	0
	.size	Sprevious_single_char_property_change, 48

	.type	.L.str.16,@object       # @.str.16
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.16:
	.asciz	"next-property-change"
	.size	.L.str.16, 21

	.type	Snext_property_change,@object # @Snext_property_change
	.data
	.align	8
Snext_property_change:
	.quad	167772160               # 0xa000000
	.quad	Fnext_property_change
	.short	1                       # 0x1
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.16
	.quad	0
	.quad	0
	.size	Snext_property_change, 48

	.type	.L.str.17,@object       # @.str.17
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.17:
	.asciz	"next-single-property-change"
	.size	.L.str.17, 28

	.type	Snext_single_property_change,@object # @Snext_single_property_change
	.data
	.align	8
Snext_single_property_change:
	.quad	167772160               # 0xa000000
	.quad	Fnext_single_property_change
	.short	2                       # 0x2
	.short	4                       # 0x4
	.zero	4
	.quad	.L.str.17
	.quad	0
	.quad	0
	.size	Snext_single_property_change, 48

	.type	.L.str.18,@object       # @.str.18
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.18:
	.asciz	"previous-property-change"
	.size	.L.str.18, 25

	.type	Sprevious_property_change,@object # @Sprevious_property_change
	.data
	.align	8
Sprevious_property_change:
	.quad	167772160               # 0xa000000
	.quad	Fprevious_property_change
	.short	1                       # 0x1
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.18
	.quad	0
	.quad	0
	.size	Sprevious_property_change, 48

	.type	.L.str.19,@object       # @.str.19
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.19:
	.asciz	"previous-single-property-change"
	.size	.L.str.19, 32

	.type	Sprevious_single_property_change,@object # @Sprevious_single_property_change
	.data
	.align	8
Sprevious_single_property_change:
	.quad	167772160               # 0xa000000
	.quad	Fprevious_single_property_change
	.short	2                       # 0x2
	.short	4                       # 0x4
	.zero	4
	.quad	.L.str.19
	.quad	0
	.quad	0
	.size	Sprevious_single_property_change, 48

	.type	.L.str.20,@object       # @.str.20
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.20:
	.asciz	"add-text-properties"
	.size	.L.str.20, 20

	.type	Sadd_text_properties,@object # @Sadd_text_properties
	.data
	.align	8
Sadd_text_properties:
	.quad	167772160               # 0xa000000
	.quad	Fadd_text_properties
	.short	3                       # 0x3
	.short	4                       # 0x4
	.zero	4
	.quad	.L.str.20
	.quad	0
	.quad	0
	.size	Sadd_text_properties, 48

	.type	.L.str.21,@object       # @.str.21
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.21:
	.asciz	"put-text-property"
	.size	.L.str.21, 18

	.type	Sput_text_property,@object # @Sput_text_property
	.data
	.align	8
Sput_text_property:
	.quad	167772160               # 0xa000000
	.quad	Fput_text_property
	.short	4                       # 0x4
	.short	5                       # 0x5
	.zero	4
	.quad	.L.str.21
	.quad	0
	.quad	0
	.size	Sput_text_property, 48

	.type	.L.str.22,@object       # @.str.22
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.22:
	.asciz	"set-text-properties"
	.size	.L.str.22, 20

	.type	Sset_text_properties,@object # @Sset_text_properties
	.data
	.align	8
Sset_text_properties:
	.quad	167772160               # 0xa000000
	.quad	Fset_text_properties
	.short	3                       # 0x3
	.short	4                       # 0x4
	.zero	4
	.quad	.L.str.22
	.quad	0
	.quad	0
	.size	Sset_text_properties, 48

	.type	.L.str.23,@object       # @.str.23
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.23:
	.asciz	"add-face-text-property"
	.size	.L.str.23, 23

	.type	Sadd_face_text_property,@object # @Sadd_face_text_property
	.data
	.align	8
Sadd_face_text_property:
	.quad	167772160               # 0xa000000
	.quad	Fadd_face_text_property
	.short	3                       # 0x3
	.short	5                       # 0x5
	.zero	4
	.quad	.L.str.23
	.quad	0
	.quad	0
	.size	Sadd_face_text_property, 48

	.type	.L.str.24,@object       # @.str.24
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.24:
	.asciz	"remove-text-properties"
	.size	.L.str.24, 23

	.type	Sremove_text_properties,@object # @Sremove_text_properties
	.data
	.align	8
Sremove_text_properties:
	.quad	167772160               # 0xa000000
	.quad	Fremove_text_properties
	.short	3                       # 0x3
	.short	4                       # 0x4
	.zero	4
	.quad	.L.str.24
	.quad	0
	.quad	0
	.size	Sremove_text_properties, 48

	.type	.L.str.25,@object       # @.str.25
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.25:
	.asciz	"remove-list-of-text-properties"
	.size	.L.str.25, 31

	.type	Sremove_list_of_text_properties,@object # @Sremove_list_of_text_properties
	.data
	.align	8
Sremove_list_of_text_properties:
	.quad	167772160               # 0xa000000
	.quad	Fremove_list_of_text_properties
	.short	3                       # 0x3
	.short	4                       # 0x4
	.zero	4
	.quad	.L.str.25
	.quad	0
	.quad	0
	.size	Sremove_list_of_text_properties, 48

	.type	.L.str.26,@object       # @.str.26
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.26:
	.asciz	"text-property-any"
	.size	.L.str.26, 18

	.type	Stext_property_any,@object # @Stext_property_any
	.data
	.align	8
Stext_property_any:
	.quad	167772160               # 0xa000000
	.quad	Ftext_property_any
	.short	4                       # 0x4
	.short	5                       # 0x5
	.zero	4
	.quad	.L.str.26
	.quad	0
	.quad	0
	.size	Stext_property_any, 48

	.type	.L.str.27,@object       # @.str.27
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.27:
	.asciz	"text-property-not-all"
	.size	.L.str.27, 22

	.type	Stext_property_not_all,@object # @Stext_property_not_all
	.data
	.align	8
Stext_property_not_all:
	.quad	167772160               # 0xa000000
	.quad	Ftext_property_not_all
	.short	4                       # 0x4
	.short	5                       # 0x5
	.zero	4
	.quad	.L.str.27
	.quad	0
	.quad	0
	.size	Stext_property_not_all, 48


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
