	.text
	.file	"syntax.bc"
	.globl	syntax_prefix_flag_p
	.align	16, 0x90
	.type	syntax_prefix_flag_p,@function
syntax_prefix_flag_p:                   # @syntax_prefix_flag_p
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
	movl	$1, %esi
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	syntax_property_with_flags
	movl	%eax, %edi
	callq	SYNTAX_FLAGS_PREFIX
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	syntax_prefix_flag_p, .Lfunc_end0-syntax_prefix_flag_p
	.cfi_endproc

	.align	16, 0x90
	.type	SYNTAX_FLAGS_PREFIX,@function
SYNTAX_FLAGS_PREFIX:                    # @SYNTAX_FLAGS_PREFIX
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
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	sarl	$20, %edi
	andl	$1, %edi
	cmpl	$0, %edi
	setne	%al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end1:
	.size	SYNTAX_FLAGS_PREFIX, .Lfunc_end1-SYNTAX_FLAGS_PREFIX
	.cfi_endproc

	.globl	SETUP_SYNTAX_TABLE_FOR_OBJECT
	.align	16, 0x90
	.type	SETUP_SYNTAX_TABLE_FOR_OBJECT,@function
SETUP_SYNTAX_TABLE_FOR_OBJECT:          # @SETUP_SYNTAX_TABLE_FOR_OBJECT
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	callq	SETUP_BUFFER_SYNTAX_TABLE
	movq	-8(%rbp), %rdx
	movq	%rdx, gl_state
	movq	gl_state, %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB2_1
	jmp	.LBB2_20
.LBB2_1:                                # %if.then
	movq	gl_state, %rdi
	callq	XBUFFER
	movq	%rax, -32(%rbp)
	movq	$1, gl_state+56
	movq	-32(%rbp), %rax
	cmpq	current_buffer, %rax
	jne	.LBB2_3
# BB#2:                                 # %cond.true
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB2_7
.LBB2_3:                                # %cond.false
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	376(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB2_5
# BB#4:                                 # %cond.true.4
	movq	-32(%rbp), %rax
	movq	768(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB2_6
.LBB2_5:                                # %cond.false.6
	movq	-32(%rbp), %rax
	movq	376(%rax), %rdi
	callq	marker_position
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB2_6:                                # %cond.end
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB2_7:                                # %cond.end.9
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	-32(%rbp), %rcx
	cmpq	current_buffer, %rcx
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jne	.LBB2_9
# BB#8:                                 # %cond.true.12
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB2_13
.LBB2_9:                                # %cond.false.13
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB2_11
# BB#10:                                # %cond.true.16
	movq	-32(%rbp), %rax
	movq	752(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB2_12
.LBB2_11:                               # %cond.false.18
	movq	-32(%rbp), %rax
	movq	368(%rax), %rdi
	callq	marker_position
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB2_12:                               # %cond.end.21
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB2_13:                               # %cond.end.23
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	-64(%rbp), %rcx         # 8-byte Reload
	subq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, gl_state+64
	movq	-32(%rbp), %rax
	cmpq	current_buffer, %rax
	jne	.LBB2_15
# BB#14:                                # %cond.true.26
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB2_19
.LBB2_15:                               # %cond.false.28
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB2_17
# BB#16:                                # %cond.true.32
	movq	-32(%rbp), %rax
	movq	752(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB2_18
.LBB2_17:                               # %cond.false.34
	movq	-32(%rbp), %rax
	movq	368(%rax), %rdi
	callq	marker_position
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB2_18:                               # %cond.end.37
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB2_19:                               # %cond.end.39
	movq	-96(%rbp), %rax         # 8-byte Reload
	subq	$1, %rax
	movq	%rax, gl_state+96
	jmp	.LBB2_27
.LBB2_20:                               # %if.else
	xorl	%edi, %edi
	movq	gl_state, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB2_22
# BB#21:                                # %if.then.44
	movq	$1, gl_state+56
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	current_buffer, %rcx
	subq	752(%rcx), %rax
	addq	$1, %rax
	movq	%rax, gl_state+64
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	subq	$1, %rax
	movq	%rax, gl_state+96
	jmp	.LBB2_26
.LBB2_22:                               # %if.else.51
	movl	$901, %edi              # imm = 0x385
	movq	gl_state, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB2_24
# BB#23:                                # %if.then.54
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	$0, gl_state+56
	movq	%rax, gl_state+64
	movq	$0, gl_state+96
	jmp	.LBB2_25
.LBB2_24:                               # %if.else.55
	movq	$0, gl_state+56
	movq	gl_state, %rdi
	callq	SCHARS
	addq	$1, %rax
	movq	%rax, gl_state+64
	movq	$0, gl_state+96
.LBB2_25:                               # %if.end
	jmp	.LBB2_26
.LBB2_26:                               # %if.end.58
	jmp	.LBB2_27
.LBB2_27:                               # %if.end.59
	testb	$1, globals+3420
	je	.LBB2_29
# BB#28:                                # %if.then.60
	movl	$1, %edx
	movq	-16(%rbp), %rax
	addq	gl_state+96, %rax
	cmpq	$0, -24(%rbp)
	setle	%cl
	andb	$1, %cl
	movzbl	%cl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rax
	movq	-24(%rbp), %rsi
	movq	gl_state, %rcx
	movq	%rax, %rdi
	callq	update_syntax_table
.LBB2_29:                               # %if.end.65
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	SETUP_SYNTAX_TABLE_FOR_OBJECT, .Lfunc_end2-SETUP_SYNTAX_TABLE_FOR_OBJECT
	.cfi_endproc

	.globl	update_syntax_table
	.align	16, 0x90
	.type	update_syntax_table,@function
update_syntax_table:                    # @update_syntax_table
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
	subq	$624, %rsp              # imm = 0x270
	movb	%dl, %al
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	andb	$1, %al
	movb	%al, -17(%rbp)
	movq	%rcx, -32(%rbp)
	movl	$0, -44(%rbp)
	movb	$1, -45(%rbp)
	testb	$1, -17(%rbp)
	je	.LBB3_44
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, gl_state+48
	movq	gl_state+56, %rax
	movq	%rax, gl_state+8
	movq	gl_state+64, %rax
	movq	%rax, gl_state+16
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	interval_of
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, gl_state+80
	movq	%rax, gl_state+88
	movb	$0, -45(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then.3
	jmp	.LBB3_172
.LBB3_3:                                # %if.end
	jmp	.LBB3_4
.LBB3_4:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movb	$1, %al
	movq	-56(%rbp), %rcx
	movb	40(%rcx), %dl
	andb	$1, %dl
	testb	$1, %dl
	movb	%al, -57(%rbp)          # 1-byte Spill
	jne	.LBB3_6
# BB#5:                                 # %lor.rhs
                                        #   in Loop: Header=BB3_4 Depth=1
	movq	-56(%rbp), %rax
	cmpq	$0, 32(%rax)
	sete	%cl
	movb	%cl, -57(%rbp)          # 1-byte Spill
.LBB3_6:                                # %lor.end
                                        #   in Loop: Header=BB3_4 Depth=1
	movb	-57(%rbp), %al          # 1-byte Reload
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB3_7
	jmp	.LBB3_31
.LBB3_7:                                # %while.body
                                        #   in Loop: Header=BB3_4 Depth=1
	movq	-56(%rbp), %rax
	movb	40(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB3_23
# BB#8:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB3_4 Depth=1
	movq	-56(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB3_23
# BB#9:                                 # %land.lhs.true
                                        #   in Loop: Header=BB3_4 Depth=1
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB3_23
# BB#10:                                # %if.then.14
                                        #   in Loop: Header=BB3_4 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	-56(%rbp), %rcx
	cmpq	$0, 16(%rcx)
	movq	%rax, -72(%rbp)         # 8-byte Spill
	je	.LBB3_12
# BB#11:                                # %cond.true
                                        #   in Loop: Header=BB3_4 Depth=1
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB3_13
.LBB3_12:                               # %cond.false
                                        #   in Loop: Header=BB3_4 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB3_13
.LBB3_13:                               # %cond.end
                                        #   in Loop: Header=BB3_4 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	-72(%rbp), %rcx         # 8-byte Reload
	subq	%rax, %rcx
	cmpq	$0, -56(%rbp)
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	jne	.LBB3_15
# BB#14:                                # %cond.true.18
                                        #   in Loop: Header=BB3_4 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB3_16
.LBB3_15:                               # %cond.false.19
                                        #   in Loop: Header=BB3_4 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB3_16:                               # %cond.end.21
                                        #   in Loop: Header=BB3_4 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-88(%rbp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	movq	-56(%rbp), %rax
	cmpq	$0, 32(%rax)
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jne	.LBB3_18
# BB#17:                                # %cond.true.26
                                        #   in Loop: Header=BB3_4 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB3_19
.LBB3_18:                               # %cond.false.27
                                        #   in Loop: Header=BB3_4 Depth=1
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB3_19:                               # %cond.end.31
                                        #   in Loop: Header=BB3_4 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-104(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	$0, 16(%rax)
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	je	.LBB3_21
# BB#20:                                # %cond.true.38
                                        #   in Loop: Header=BB3_4 Depth=1
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB3_22
.LBB3_21:                               # %cond.false.43
                                        #   in Loop: Header=BB3_4 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB3_22
.LBB3_22:                               # %cond.end.44
                                        #   in Loop: Header=BB3_4 Depth=1
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	-120(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rcx, 8(%rax)
	jmp	.LBB3_30
.LBB3_23:                               # %if.else
                                        #   in Loop: Header=BB3_4 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	-56(%rbp), %rcx
	cmpq	$0, 16(%rcx)
	movq	%rax, -136(%rbp)        # 8-byte Spill
	je	.LBB3_25
# BB#24:                                # %cond.true.53
                                        #   in Loop: Header=BB3_4 Depth=1
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB3_26
.LBB3_25:                               # %cond.false.56
                                        #   in Loop: Header=BB3_4 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB3_26
.LBB3_26:                               # %cond.end.57
                                        #   in Loop: Header=BB3_4 Depth=1
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	-136(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	cmpq	$0, -56(%rbp)
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	jne	.LBB3_28
# BB#27:                                # %cond.true.61
                                        #   in Loop: Header=BB3_4 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	jmp	.LBB3_29
.LBB3_28:                               # %cond.false.62
                                        #   in Loop: Header=BB3_4 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
.LBB3_29:                               # %cond.end.64
                                        #   in Loop: Header=BB3_4 Depth=1
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	-152(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rcx, 8(%rax)
.LBB3_30:                               # %if.end.70
                                        #   in Loop: Header=BB3_4 Depth=1
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB3_4
.LBB3_31:                               # %while.end
	movq	gl_state+80, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	subq	gl_state+96, %rax
	movq	%rax, gl_state+56
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$0, -56(%rbp)
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jne	.LBB3_33
# BB#32:                                # %cond.true.77
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	jmp	.LBB3_43
.LBB3_33:                               # %cond.false.78
	cmpq	$0, -56(%rbp)
	jne	.LBB3_35
# BB#34:                                # %cond.true.80
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	jmp	.LBB3_36
.LBB3_35:                               # %cond.false.81
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
.LBB3_36:                               # %cond.end.83
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	-56(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jne	.LBB3_38
# BB#37:                                # %cond.true.87
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	jmp	.LBB3_39
.LBB3_38:                               # %cond.false.88
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
.LBB3_39:                               # %cond.end.91
	movq	-200(%rbp), %rax        # 8-byte Reload
	movq	-192(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	-56(%rbp), %rax
	cmpq	$0, 16(%rax)
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	jne	.LBB3_41
# BB#40:                                # %cond.true.96
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	jmp	.LBB3_42
.LBB3_41:                               # %cond.false.97
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
.LBB3_42:                               # %cond.end.100
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	-208(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
.LBB3_43:                               # %cond.end.103
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	-168(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	subq	gl_state+96, %rcx
	movq	%rcx, gl_state+64
	jmp	.LBB3_100
.LBB3_44:                               # %if.end.107
	cmpq	$0, -16(%rbp)
	jle	.LBB3_46
# BB#45:                                # %cond.true.109
	movq	gl_state+80, %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	jmp	.LBB3_47
.LBB3_46:                               # %cond.false.110
	movq	gl_state+88, %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
.LBB3_47:                               # %cond.end.111
	movq	-224(%rbp), %rax        # 8-byte Reload
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB3_49
# BB#48:                                # %if.then.114
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	error
.LBB3_49:                               # %if.else.115
	movq	-8(%rbp), %rax
	movq	-56(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jge	.LBB3_79
# BB#50:                                # %if.then.118
	cmpq	$0, -16(%rbp)
	jle	.LBB3_52
# BB#51:                                # %if.then.120
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	error
.LBB3_52:                               # %if.end.121
	movq	-56(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	update_interval
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$0, -56(%rbp)
	movq	%rax, -232(%rbp)        # 8-byte Spill
	jne	.LBB3_54
# BB#53:                                # %cond.true.125
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	jmp	.LBB3_64
.LBB3_54:                               # %cond.false.126
	cmpq	$0, -56(%rbp)
	jne	.LBB3_56
# BB#55:                                # %cond.true.128
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -248(%rbp)        # 8-byte Spill
	jmp	.LBB3_57
.LBB3_56:                               # %cond.false.129
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
.LBB3_57:                               # %cond.end.131
	movq	-248(%rbp), %rax        # 8-byte Reload
	movq	-56(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -256(%rbp)        # 8-byte Spill
	jne	.LBB3_59
# BB#58:                                # %cond.true.135
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -264(%rbp)        # 8-byte Spill
	jmp	.LBB3_60
.LBB3_59:                               # %cond.false.136
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
.LBB3_60:                               # %cond.end.139
	movq	-264(%rbp), %rax        # 8-byte Reload
	movq	-256(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	-56(%rbp), %rax
	cmpq	$0, 16(%rax)
	movq	%rcx, -272(%rbp)        # 8-byte Spill
	jne	.LBB3_62
# BB#61:                                # %cond.true.144
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -280(%rbp)        # 8-byte Spill
	jmp	.LBB3_63
.LBB3_62:                               # %cond.false.145
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
.LBB3_63:                               # %cond.end.148
	movq	-280(%rbp), %rax        # 8-byte Reload
	movq	-272(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -240(%rbp)        # 8-byte Spill
.LBB3_64:                               # %cond.end.151
	movq	-240(%rbp), %rax        # 8-byte Reload
	movq	-232(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	cmpq	gl_state+56, %rcx
	je	.LBB3_78
# BB#65:                                # %if.then.155
	movb	$0, -45(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, gl_state+80
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$0, -56(%rbp)
	movq	%rax, -288(%rbp)        # 8-byte Spill
	jne	.LBB3_67
# BB#66:                                # %cond.true.158
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -296(%rbp)        # 8-byte Spill
	jmp	.LBB3_77
.LBB3_67:                               # %cond.false.159
	cmpq	$0, -56(%rbp)
	jne	.LBB3_69
# BB#68:                                # %cond.true.161
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -304(%rbp)        # 8-byte Spill
	jmp	.LBB3_70
.LBB3_69:                               # %cond.false.162
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
.LBB3_70:                               # %cond.end.164
	movq	-304(%rbp), %rax        # 8-byte Reload
	movq	-56(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -312(%rbp)        # 8-byte Spill
	jne	.LBB3_72
# BB#71:                                # %cond.true.168
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	jmp	.LBB3_73
.LBB3_72:                               # %cond.false.169
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
.LBB3_73:                               # %cond.end.172
	movq	-320(%rbp), %rax        # 8-byte Reload
	movq	-312(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	-56(%rbp), %rax
	cmpq	$0, 16(%rax)
	movq	%rcx, -328(%rbp)        # 8-byte Spill
	jne	.LBB3_75
# BB#74:                                # %cond.true.177
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -336(%rbp)        # 8-byte Spill
	jmp	.LBB3_76
.LBB3_75:                               # %cond.false.178
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
.LBB3_76:                               # %cond.end.181
	movq	-336(%rbp), %rax        # 8-byte Reload
	movq	-328(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -296(%rbp)        # 8-byte Spill
.LBB3_77:                               # %cond.end.184
	movq	-296(%rbp), %rax        # 8-byte Reload
	movq	-288(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	subq	gl_state+96, %rcx
	movq	%rcx, gl_state+64
.LBB3_78:                               # %if.end.188
	jmp	.LBB3_98
.LBB3_79:                               # %if.else.189
	movq	-8(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	8(%rcx), %rcx
	cmpq	$0, -56(%rbp)
	movq	%rax, -344(%rbp)        # 8-byte Spill
	movq	%rcx, -352(%rbp)        # 8-byte Spill
	jne	.LBB3_81
# BB#80:                                # %cond.true.192
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -360(%rbp)        # 8-byte Spill
	jmp	.LBB3_91
.LBB3_81:                               # %cond.false.193
	cmpq	$0, -56(%rbp)
	jne	.LBB3_83
# BB#82:                                # %cond.true.195
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	jmp	.LBB3_84
.LBB3_83:                               # %cond.false.196
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
.LBB3_84:                               # %cond.end.198
	movq	-368(%rbp), %rax        # 8-byte Reload
	movq	-56(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -376(%rbp)        # 8-byte Spill
	jne	.LBB3_86
# BB#85:                                # %cond.true.202
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -384(%rbp)        # 8-byte Spill
	jmp	.LBB3_87
.LBB3_86:                               # %cond.false.203
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
.LBB3_87:                               # %cond.end.206
	movq	-384(%rbp), %rax        # 8-byte Reload
	movq	-376(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	-56(%rbp), %rax
	cmpq	$0, 16(%rax)
	movq	%rcx, -392(%rbp)        # 8-byte Spill
	jne	.LBB3_89
# BB#88:                                # %cond.true.211
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -400(%rbp)        # 8-byte Spill
	jmp	.LBB3_90
.LBB3_89:                               # %cond.false.212
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
.LBB3_90:                               # %cond.end.215
	movq	-400(%rbp), %rax        # 8-byte Reload
	movq	-392(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -360(%rbp)        # 8-byte Spill
.LBB3_91:                               # %cond.end.218
	movq	-360(%rbp), %rax        # 8-byte Reload
	movq	-352(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	movq	-344(%rbp), %rax        # 8-byte Reload
	cmpq	%rcx, %rax
	jl	.LBB3_97
# BB#92:                                # %if.then.222
	cmpq	$0, -16(%rbp)
	jge	.LBB3_94
# BB#93:                                # %if.then.224
	movabsq	$.L.str.2, %rdi
	movb	$0, %al
	callq	error
.LBB3_94:                               # %if.end.225
	movq	-56(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	update_interval
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	gl_state+64, %rax
	je	.LBB3_96
# BB#95:                                # %if.then.229
	movb	$0, -45(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, gl_state+88
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	subq	gl_state+96, %rax
	movq	%rax, gl_state+56
.LBB3_96:                               # %if.end.232
	jmp	.LBB3_97
.LBB3_97:                               # %if.end.233
	jmp	.LBB3_98
.LBB3_98:                               # %if.end.234
	jmp	.LBB3_99
.LBB3_99:                               # %if.end.235
	jmp	.LBB3_100
.LBB3_100:                              # %update
	movl	$899, %edi              # imm = 0x383
	movq	-56(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	textget
	movq	%rax, -40(%rbp)
	testb	$1, -45(%rbp)
	je	.LBB3_102
# BB#101:                               # %if.then.239
	movq	-40(%rbp), %rax
	cmpq	gl_state+48, %rax
	sete	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movb	%cl, -45(%rbp)
.LBB3_102:                              # %if.end.243
	testb	$1, -45(%rbp)
	je	.LBB3_119
# BB#103:                               # %if.then.245
	cmpq	$0, -16(%rbp)
	jle	.LBB3_105
# BB#104:                               # %if.then.247
	movq	-56(%rbp), %rax
	movq	%rax, gl_state+88
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	subq	gl_state+96, %rax
	movq	%rax, gl_state+56
	jmp	.LBB3_118
.LBB3_105:                              # %if.else.250
	movq	-56(%rbp), %rax
	movq	%rax, gl_state+80
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$0, -56(%rbp)
	movq	%rax, -416(%rbp)        # 8-byte Spill
	jne	.LBB3_107
# BB#106:                               # %cond.true.253
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -424(%rbp)        # 8-byte Spill
	jmp	.LBB3_117
.LBB3_107:                              # %cond.false.254
	cmpq	$0, -56(%rbp)
	jne	.LBB3_109
# BB#108:                               # %cond.true.256
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -432(%rbp)        # 8-byte Spill
	jmp	.LBB3_110
.LBB3_109:                              # %cond.false.257
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
.LBB3_110:                              # %cond.end.259
	movq	-432(%rbp), %rax        # 8-byte Reload
	movq	-56(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -440(%rbp)        # 8-byte Spill
	jne	.LBB3_112
# BB#111:                               # %cond.true.263
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -448(%rbp)        # 8-byte Spill
	jmp	.LBB3_113
.LBB3_112:                              # %cond.false.264
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
.LBB3_113:                              # %cond.end.267
	movq	-448(%rbp), %rax        # 8-byte Reload
	movq	-440(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	-56(%rbp), %rax
	cmpq	$0, 16(%rax)
	movq	%rcx, -456(%rbp)        # 8-byte Spill
	jne	.LBB3_115
# BB#114:                               # %cond.true.272
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -464(%rbp)        # 8-byte Spill
	jmp	.LBB3_116
.LBB3_115:                              # %cond.false.273
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
.LBB3_116:                              # %cond.end.276
	movq	-464(%rbp), %rax        # 8-byte Reload
	movq	-456(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -424(%rbp)        # 8-byte Spill
.LBB3_117:                              # %cond.end.279
	movq	-424(%rbp), %rax        # 8-byte Reload
	movq	-416(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	subq	gl_state+96, %rcx
	movq	%rcx, gl_state+64
.LBB3_118:                              # %if.end.283
	jmp	.LBB3_119
.LBB3_119:                              # %if.end.284
	movq	-40(%rbp), %rax
	cmpq	gl_state+48, %rax
	je	.LBB3_127
# BB#120:                               # %if.then.286
	movq	-40(%rbp), %rax
	movq	%rax, gl_state+40
	movq	-40(%rbp), %rax
	movq	%rax, gl_state+48
	movq	-40(%rbp), %rdi
	callq	Fsyntax_table_p
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-472(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB3_122
# BB#121:                               # %if.then.290
	movb	$0, gl_state+24
	jmp	.LBB3_126
.LBB3_122:                              # %if.else.291
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB3_124
# BB#123:                               # %if.then.294
	movb	$1, gl_state+24
	movq	-40(%rbp), %rax
	movq	%rax, gl_state+32
	jmp	.LBB3_125
.LBB3_124:                              # %if.else.295
	movb	$0, gl_state+24
	movq	current_buffer, %rax
	movq	128(%rax), %rax
	movq	%rax, gl_state+40
.LBB3_125:                              # %if.end.296
	jmp	.LBB3_126
.LBB3_126:                              # %if.end.297
	jmp	.LBB3_127
.LBB3_127:                              # %if.end.298
	jmp	.LBB3_128
.LBB3_128:                              # %while.cond.299
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB3_169
# BB#129:                               # %while.body.301
                                        #   in Loop: Header=BB3_128 Depth=1
	cmpl	$0, -44(%rbp)
	je	.LBB3_147
# BB#130:                               # %land.lhs.true.303
                                        #   in Loop: Header=BB3_128 Depth=1
	movl	$899, %edi              # imm = 0x383
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	%rcx, -480(%rbp)        # 8-byte Spill
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	textget
	movq	-488(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB3_147
# BB#131:                               # %if.then.309
	cmpq	$0, -16(%rbp)
	jle	.LBB3_133
# BB#132:                               # %if.then.312
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	subq	gl_state+96, %rax
	movq	%rax, gl_state+64
	movq	-56(%rbp), %rax
	movq	%rax, gl_state+80
	jmp	.LBB3_146
.LBB3_133:                              # %if.else.315
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$0, -56(%rbp)
	movq	%rax, -496(%rbp)        # 8-byte Spill
	jne	.LBB3_135
# BB#134:                               # %cond.true.319
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -504(%rbp)        # 8-byte Spill
	jmp	.LBB3_145
.LBB3_135:                              # %cond.false.320
	cmpq	$0, -56(%rbp)
	jne	.LBB3_137
# BB#136:                               # %cond.true.323
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -512(%rbp)        # 8-byte Spill
	jmp	.LBB3_138
.LBB3_137:                              # %cond.false.324
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
.LBB3_138:                              # %cond.end.326
	movq	-512(%rbp), %rax        # 8-byte Reload
	movq	-56(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -520(%rbp)        # 8-byte Spill
	jne	.LBB3_140
# BB#139:                               # %cond.true.331
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -528(%rbp)        # 8-byte Spill
	jmp	.LBB3_141
.LBB3_140:                              # %cond.false.332
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
.LBB3_141:                              # %cond.end.335
	movq	-528(%rbp), %rax        # 8-byte Reload
	movq	-520(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	-56(%rbp), %rax
	cmpq	$0, 16(%rax)
	movq	%rcx, -536(%rbp)        # 8-byte Spill
	jne	.LBB3_143
# BB#142:                               # %cond.true.341
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -544(%rbp)        # 8-byte Spill
	jmp	.LBB3_144
.LBB3_143:                              # %cond.false.342
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
.LBB3_144:                              # %cond.end.345
	movq	-544(%rbp), %rax        # 8-byte Reload
	movq	-536(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -504(%rbp)        # 8-byte Spill
.LBB3_145:                              # %cond.end.348
	movq	-504(%rbp), %rax        # 8-byte Reload
	movq	-496(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	subq	gl_state+96, %rcx
	movq	%rcx, gl_state+56
	movq	-56(%rbp), %rax
	movq	%rax, gl_state+88
.LBB3_146:                              # %if.end.352
	jmp	.LBB3_172
.LBB3_147:                              # %if.else.353
                                        #   in Loop: Header=BB3_128 Depth=1
	cmpl	$10, -44(%rbp)
	jne	.LBB3_164
# BB#148:                               # %if.then.356
	cmpq	$0, -16(%rbp)
	jle	.LBB3_162
# BB#149:                               # %if.then.359
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$0, -56(%rbp)
	movq	%rax, -552(%rbp)        # 8-byte Spill
	jne	.LBB3_151
# BB#150:                               # %cond.true.363
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -560(%rbp)        # 8-byte Spill
	jmp	.LBB3_161
.LBB3_151:                              # %cond.false.364
	cmpq	$0, -56(%rbp)
	jne	.LBB3_153
# BB#152:                               # %cond.true.367
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -568(%rbp)        # 8-byte Spill
	jmp	.LBB3_154
.LBB3_153:                              # %cond.false.368
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
.LBB3_154:                              # %cond.end.370
	movq	-568(%rbp), %rax        # 8-byte Reload
	movq	-56(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -576(%rbp)        # 8-byte Spill
	jne	.LBB3_156
# BB#155:                               # %cond.true.375
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -584(%rbp)        # 8-byte Spill
	jmp	.LBB3_157
.LBB3_156:                              # %cond.false.376
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
.LBB3_157:                              # %cond.end.379
	movq	-584(%rbp), %rax        # 8-byte Reload
	movq	-576(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	-56(%rbp), %rax
	cmpq	$0, 16(%rax)
	movq	%rcx, -592(%rbp)        # 8-byte Spill
	jne	.LBB3_159
# BB#158:                               # %cond.true.385
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -600(%rbp)        # 8-byte Spill
	jmp	.LBB3_160
.LBB3_159:                              # %cond.false.386
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
.LBB3_160:                              # %cond.end.389
	movq	-600(%rbp), %rax        # 8-byte Reload
	movq	-592(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -560(%rbp)        # 8-byte Spill
.LBB3_161:                              # %cond.end.392
	movq	-560(%rbp), %rax        # 8-byte Reload
	movq	-552(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	subq	gl_state+96, %rcx
	movq	-56(%rbp), %rdi
	movq	%rcx, -608(%rbp)        # 8-byte Spill
	callq	next_interval
	movl	$1, %edx
	xorl	%esi, %esi
	cmpq	$0, %rax
	cmovnel	%esi, %edx
	movslq	%edx, %rax
	movq	-608(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	movq	%rcx, gl_state+64
	movq	-56(%rbp), %rax
	movq	%rax, gl_state+80
	jmp	.LBB3_163
.LBB3_162:                              # %if.else.401
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	subq	gl_state+96, %rax
	movq	%rax, gl_state+56
	movq	-56(%rbp), %rax
	movq	%rax, gl_state+88
.LBB3_163:                              # %if.end.404
	jmp	.LBB3_172
.LBB3_164:                              # %if.end.405
                                        #   in Loop: Header=BB3_128 Depth=1
	jmp	.LBB3_165
.LBB3_165:                              # %if.end.406
                                        #   in Loop: Header=BB3_128 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	cmpq	$0, -16(%rbp)
	jle	.LBB3_167
# BB#166:                               # %cond.true.409
                                        #   in Loop: Header=BB3_128 Depth=1
	movq	-56(%rbp), %rdi
	callq	next_interval
	movq	%rax, -616(%rbp)        # 8-byte Spill
	jmp	.LBB3_168
.LBB3_167:                              # %cond.false.411
                                        #   in Loop: Header=BB3_128 Depth=1
	movq	-56(%rbp), %rdi
	callq	previous_interval
	movq	%rax, -616(%rbp)        # 8-byte Spill
.LBB3_168:                              # %cond.end.413
                                        #   in Loop: Header=BB3_128 Depth=1
	movq	-616(%rbp), %rax        # 8-byte Reload
	movq	%rax, -56(%rbp)
	jmp	.LBB3_128
.LBB3_169:                              # %while.end.415
	cmpq	$0, -16(%rbp)
	jle	.LBB3_171
# BB#170:                               # %if.then.418
	movq	gl_state+16, %rax
	movq	%rax, gl_state+64
	movq	-56(%rbp), %rax
	movq	%rax, gl_state+80
	jmp	.LBB3_172
.LBB3_171:                              # %if.else.419
	movq	gl_state+8, %rax
	movq	%rax, gl_state+56
.LBB3_172:                              # %if.end.420
	addq	$624, %rsp              # imm = 0x270
	popq	%rbp
	retq
.Lfunc_end3:
	.size	update_syntax_table, .Lfunc_end3-update_syntax_table
	.cfi_endproc

	.globl	Fsyntax_table_p
	.align	16, 0x90
	.type	Fsyntax_table_p,@function
Fsyntax_table_p:                        # @Fsyntax_table_p
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
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB4_1
	jmp	.LBB4_3
.LBB4_1:                                # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	XCHAR_TABLE
	movl	$899, %edi              # imm = 0x383
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB4_4
.LBB4_3:                                # %if.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB4_4:                                # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	Fsyntax_table_p, .Lfunc_end4-Fsyntax_table_p
	.cfi_endproc

	.globl	update_syntax_table_forward
	.align	16, 0x90
	.type	update_syntax_table_forward,@function
update_syntax_table_forward:            # @update_syntax_table_forward
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
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	andb	$1, %al
	movb	%al, -9(%rbp)
	movq	%rdx, -24(%rbp)
	testb	$1, gl_state+72
	je	.LBB5_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	parse_sexp_propertize
	jmp	.LBB5_6
.LBB5_2:                                # %if.else
	movl	$1, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	movb	-9(%rbp), %cl
	movq	-24(%rbp), %rdx
	andb	$1, %cl
	movzbl	%cl, %eax
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movq	-32(%rbp), %rcx         # 8-byte Reload
	callq	update_syntax_table
	xorl	%edi, %edi
	movq	-24(%rbp), %rcx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB5_5
# BB#3:                                 # %land.lhs.true
	movq	gl_state+64, %rax
	cmpq	globals+3296, %rax
	jle	.LBB5_5
# BB#4:                                 # %if.then.3
	movq	-8(%rbp), %rdi
	callq	parse_sexp_propertize
.LBB5_5:                                # %if.end
	jmp	.LBB5_6
.LBB5_6:                                # %if.end.4
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	update_syntax_table_forward, .Lfunc_end5-update_syntax_table_forward
	.cfi_endproc

	.align	16, 0x90
	.type	parse_sexp_propertize,@function
parse_sexp_propertize:                  # @parse_sexp_propertize
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	current_buffer, %rdi
	movq	768(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	globals+3296, %rdi
	cmpq	-8(%rbp), %rdi
	jg	.LBB6_11
# BB#1:                                 # %land.lhs.true
	movq	globals+3296, %rax
	cmpq	-16(%rbp), %rax
	jge	.LBB6_11
# BB#2:                                 # %if.then
	movl	$562, %edi              # imm = 0x232
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	56(%rax), %rax
	movq	%rax, -24(%rbp)
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	$1, %rdx
	cmpq	%rdx, %rcx
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jge	.LBB6_4
# BB#3:                                 # %cond.true
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB6_5
.LBB6_4:                                # %cond.false
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB6_5:                                # %cond.end
	movq	-40(%rbp), %rax         # 8-byte Reload
	shlq	$2, %rax
	addq	$2, %rax
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	safe_call1
	movq	-24(%rbp), %rsi
	movq	current_buffer, %rdi
	movq	720(%rdi), %rdi
	cmpq	56(%rdi), %rsi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	je	.LBB6_7
# BB#6:                                 # %if.then.10
	movabsq	$.L.str.58, %rdi
	movb	$0, %al
	callq	error
.LBB6_7:                                # %if.end
	movq	globals+3296, %rax
	cmpq	-8(%rbp), %rax
	jg	.LBB6_10
# BB#8:                                 # %land.lhs.true.12
	movq	globals+3296, %rax
	cmpq	-16(%rbp), %rax
	jge	.LBB6_10
# BB#9:                                 # %if.then.14
	movabsq	$.L.str.59, %rdi
	movb	$0, %al
	callq	error
.LBB6_10:                               # %if.end.15
	movl	$1, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	SETUP_SYNTAX_TABLE
	jmp	.LBB6_18
.LBB6_11:                               # %if.else
	movq	gl_state+64, %rax
	cmpq	globals+3296, %rax
	jle	.LBB6_13
# BB#12:                                # %if.then.17
	movq	globals+3296, %rax
	movq	%rax, gl_state+64
	movb	$1, gl_state+72
	jmp	.LBB6_17
.LBB6_13:                               # %if.else.18
	testb	$1, gl_state+72
	je	.LBB6_16
# BB#14:                                # %land.lhs.true.19
	movq	gl_state+64, %rax
	cmpq	globals+3296, %rax
	jge	.LBB6_16
# BB#15:                                # %if.then.21
	xorl	%edi, %edi
	movb	$0, gl_state+72
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%esi, %esi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	update_syntax_table_forward
.LBB6_16:                               # %if.end.23
	jmp	.LBB6_17
.LBB6_17:                               # %if.end.24
	jmp	.LBB6_18
.LBB6_18:                               # %if.end.25
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	parse_sexp_propertize, .Lfunc_end6-parse_sexp_propertize
	.cfi_endproc

	.globl	Fsyntax_table
	.align	16, 0x90
	.type	Fsyntax_table,@function
Fsyntax_table:                          # @Fsyntax_table
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
	movq	current_buffer, %rax
	movq	128(%rax), %rax
	popq	%rbp
	retq
.Lfunc_end7:
	.size	Fsyntax_table, .Lfunc_end7-Fsyntax_table
	.cfi_endproc

	.globl	Fstandard_syntax_table
	.align	16, 0x90
	.type	Fstandard_syntax_table,@function
Fstandard_syntax_table:                 # @Fstandard_syntax_table
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
	movq	buffer_defaults+128, %rax
	popq	%rbp
	retq
.Lfunc_end8:
	.size	Fstandard_syntax_table, .Lfunc_end8-Fstandard_syntax_table
	.cfi_endproc

	.globl	Fcopy_syntax_table
	.align	16, 0x90
	.type	Fcopy_syntax_table,@function
Fcopy_syntax_table:                     # @Fcopy_syntax_table
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
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB9_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	check_syntax_table
	jmp	.LBB9_3
.LBB9_2:                                # %if.else
	movq	buffer_defaults+128, %rax
	movq	%rax, -8(%rbp)
.LBB9_3:                                # %if.end
	movq	-8(%rbp), %rdi
	callq	Fcopy_sequence
	xorl	%edi, %edi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	set_char_table_defalt
	movq	-16(%rbp), %rdi
	callq	XCHAR_TABLE
	xorl	%edi, %edi
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB9_5
# BB#4:                                 # %if.then.6
	movq	-16(%rbp), %rdi
	movq	buffer_defaults+128, %rsi
	callq	Fset_char_table_parent
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB9_5:                                # %if.end.8
	movq	-16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	Fcopy_syntax_table, .Lfunc_end9-Fcopy_syntax_table
	.cfi_endproc

	.align	16, 0x90
	.type	check_syntax_table,@function
check_syntax_table:                     # @check_syntax_table
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB10_1
	jmp	.LBB10_3
.LBB10_1:                               # %land.lhs.true
	movq	-8(%rbp), %rdi
	callq	XCHAR_TABLE
	movl	$899, %edi              # imm = 0x383
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB10_3
# BB#2:                                 # %cond.true
	jmp	.LBB10_4
.LBB10_3:                               # %cond.false
	movl	$900, %edi              # imm = 0x384
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB10_4:                               # %cond.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	check_syntax_table, .Lfunc_end10-check_syntax_table
	.cfi_endproc

	.globl	Fset_syntax_table
	.align	16, 0x90
	.type	Fset_syntax_table,@function
Fset_syntax_table:                      # @Fset_syntax_table
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	check_syntax_table
	movq	current_buffer, %rdi
	movq	-8(%rbp), %rsi
	callq	bset_syntax_table
	movq	buffer_local_flags+128, %rsi
	sarq	$2, %rsi
	movl	%esi, %eax
	movl	%eax, -12(%rbp)
# BB#1:                                 # %do.body
	cmpl	$0, -12(%rbp)
	jl	.LBB11_3
# BB#2:                                 # %lor.lhs.false
	movl	-12(%rbp), %eax
	cmpl	last_per_buffer_idx, %eax
	jl	.LBB11_4
.LBB11_3:                               # %if.then
	callq	emacs_abort
.LBB11_4:                               # %if.end
	movslq	-12(%rbp), %rax
	movq	current_buffer, %rcx
	movb	$1, 800(%rcx,%rax)
# BB#5:                                 # %do.end
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	Fset_syntax_table, .Lfunc_end11-Fset_syntax_table
	.cfi_endproc

	.align	16, 0x90
	.type	bset_syntax_table,@function
bset_syntax_table:                      # @bset_syntax_table
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 128(%rdi)
	popq	%rbp
	retq
.Lfunc_end12:
	.size	bset_syntax_table, .Lfunc_end12-bset_syntax_table
	.cfi_endproc

	.globl	Fchar_syntax
	.align	16, 0x90
	.type	Fchar_syntax,@function
Fchar_syntax:                           # @Fchar_syntax
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB13_1
	jmp	.LBB13_3
.LBB13_1:                               # %land.lhs.true
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jg	.LBB13_3
# BB#2:                                 # %cond.true
	jmp	.LBB13_4
.LBB13_3:                               # %cond.false
	movl	$260, %edi              # imm = 0x104
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB13_4:                               # %cond.end
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -12(%rbp)
	callq	SETUP_BUFFER_SYNTAX_TABLE
	movl	$1, %esi
	movl	-12(%rbp), %edi
	callq	syntax_property
	movl	%eax, %eax
	movl	%eax, %edx
	movsbq	syntax_code_spec(,%rdx), %rdx
	shlq	$2, %rdx
	addq	$2, %rdx
	movq	%rdx, %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	Fchar_syntax, .Lfunc_end13-Fchar_syntax
	.cfi_endproc

	.globl	Fmatching_paren
	.align	16, 0x90
	.type	Fmatching_paren,@function
Fmatching_paren:                        # @Fmatching_paren
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB14_1
	jmp	.LBB14_3
.LBB14_1:                               # %land.lhs.true
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jg	.LBB14_3
# BB#2:                                 # %cond.true
	jmp	.LBB14_4
.LBB14_3:                               # %cond.false
	movl	$260, %edi              # imm = 0x104
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB14_4:                               # %cond.end
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -20(%rbp)
	callq	SETUP_BUFFER_SYNTAX_TABLE
	movl	$1, %esi
	movl	-20(%rbp), %edi
	callq	syntax_property
	movl	%eax, -24(%rbp)
	cmpl	$4, -24(%rbp)
	je	.LBB14_6
# BB#5:                                 # %lor.lhs.false
	cmpl	$5, -24(%rbp)
	jne	.LBB14_7
.LBB14_6:                               # %if.then
	movl	-20(%rbp), %edi
	callq	SYNTAX_MATCH
	movq	%rax, -8(%rbp)
	jmp	.LBB14_8
.LBB14_7:                               # %if.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB14_8:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	Fmatching_paren, .Lfunc_end14-Fmatching_paren
	.cfi_endproc

	.align	16, 0x90
	.type	SYNTAX_MATCH,@function
SYNTAX_MATCH:                           # @SYNTAX_MATCH
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
	subq	$32, %rsp
	movl	$1, %esi
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	syntax_property_entry
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %esi
	cmpl	$3, %esi
	jne	.LBB15_2
# BB#1:                                 # %cond.true
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB15_3
.LBB15_2:                               # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB15_3:                               # %cond.end
	movq	-24(%rbp), %rax         # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	SYNTAX_MATCH, .Lfunc_end15-SYNTAX_MATCH
	.cfi_endproc

	.globl	Fstring_to_syntax
	.align	16, 0x90
	.type	Fstring_to_syntax,@function
Fstring_to_syntax:                      # @Fstring_to_syntax
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHECK_STRING
	movq	-16(%rbp), %rdi
	callq	SDATA
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	addq	$1, %rdi
	movq	%rdi, -24(%rbp)
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movzbl	syntax_spec_code(,%rax), %ecx
	movl	%ecx, -28(%rbp)
	cmpl	$255, -28(%rbp)
	jne	.LBB16_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.3, %rdi
	movq	-24(%rbp), %rax
	movzbl	-1(%rax), %esi
	movb	$0, %al
	callq	error
.LBB16_2:                               # %if.end
	cmpl	$13, -28(%rbp)
	jne	.LBB16_4
# BB#3:                                 # %if.then.6
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB16_34
.LBB16_4:                               # %if.end.8
	movq	-24(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB16_17
# BB#5:                                 # %if.then.9
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB16_7
# BB#6:                                 # %cond.true
	movl	$1, -44(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	jmp	.LBB16_14
.LBB16_7:                               # %cond.false
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB16_9
# BB#8:                                 # %cond.true.19
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -44(%rbp)
	movq	-24(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-24(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-24(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -56(%rbp)         # 4-byte Spill
	jmp	.LBB16_13
.LBB16_9:                               # %cond.false.30
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB16_11
# BB#10:                                # %cond.true.35
	movl	$3, -44(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-24(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	jmp	.LBB16_12
.LBB16_11:                              # %cond.false.49
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-44(%rbp), %rdx
	movq	-24(%rbp), %rdi
	callq	string_char
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB16_12:                              # %cond.end
	movl	-60(%rbp), %eax         # 4-byte Reload
	movl	%eax, -56(%rbp)         # 4-byte Spill
.LBB16_13:                              # %cond.end.52
	movl	-56(%rbp), %eax         # 4-byte Reload
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB16_14:                              # %cond.end.54
	movl	-52(%rbp), %eax         # 4-byte Reload
	movl	%eax, -48(%rbp)
	movslq	-48(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -40(%rbp)
	movq	-40(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	$32, %rcx
	jne	.LBB16_16
# BB#15:                                # %if.then.61
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -40(%rbp)
.LBB16_16:                              # %if.end.63
	movl	-44(%rbp), %eax
	movq	-24(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -24(%rbp)
	jmp	.LBB16_18
.LBB16_17:                              # %if.else
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -40(%rbp)
.LBB16_18:                              # %if.end.65
	jmp	.LBB16_19
.LBB16_19:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB16_30
# BB#20:                                # %while.body
                                        #   in Loop: Header=BB16_19 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	incq	%rcx
	movq	%rcx, -24(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, %esi
	subl	$49, %esi
	movl	%edx, -64(%rbp)         # 4-byte Spill
	movl	%esi, -68(%rbp)         # 4-byte Spill
	je	.LBB16_21
	jmp	.LBB16_35
.LBB16_35:                              # %while.body
                                        #   in Loop: Header=BB16_19 Depth=1
	movl	-64(%rbp), %eax         # 4-byte Reload
	subl	$50, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	je	.LBB16_22
	jmp	.LBB16_36
.LBB16_36:                              # %while.body
                                        #   in Loop: Header=BB16_19 Depth=1
	movl	-64(%rbp), %eax         # 4-byte Reload
	subl	$51, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	je	.LBB16_23
	jmp	.LBB16_37
.LBB16_37:                              # %while.body
                                        #   in Loop: Header=BB16_19 Depth=1
	movl	-64(%rbp), %eax         # 4-byte Reload
	subl	$52, %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	je	.LBB16_24
	jmp	.LBB16_38
.LBB16_38:                              # %while.body
                                        #   in Loop: Header=BB16_19 Depth=1
	movl	-64(%rbp), %eax         # 4-byte Reload
	subl	$98, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB16_26
	jmp	.LBB16_39
.LBB16_39:                              # %while.body
                                        #   in Loop: Header=BB16_19 Depth=1
	movl	-64(%rbp), %eax         # 4-byte Reload
	subl	$99, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB16_28
	jmp	.LBB16_40
.LBB16_40:                              # %while.body
                                        #   in Loop: Header=BB16_19 Depth=1
	movl	-64(%rbp), %eax         # 4-byte Reload
	subl	$110, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB16_27
	jmp	.LBB16_41
.LBB16_41:                              # %while.body
                                        #   in Loop: Header=BB16_19 Depth=1
	movl	-64(%rbp), %eax         # 4-byte Reload
	subl	$112, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	je	.LBB16_25
	jmp	.LBB16_29
.LBB16_21:                              # %sw.bb
                                        #   in Loop: Header=BB16_19 Depth=1
	movl	-28(%rbp), %eax
	orl	$65536, %eax            # imm = 0x10000
	movl	%eax, -28(%rbp)
	jmp	.LBB16_29
.LBB16_22:                              # %sw.bb.70
                                        #   in Loop: Header=BB16_19 Depth=1
	movl	-28(%rbp), %eax
	orl	$131072, %eax           # imm = 0x20000
	movl	%eax, -28(%rbp)
	jmp	.LBB16_29
.LBB16_23:                              # %sw.bb.72
                                        #   in Loop: Header=BB16_19 Depth=1
	movl	-28(%rbp), %eax
	orl	$262144, %eax           # imm = 0x40000
	movl	%eax, -28(%rbp)
	jmp	.LBB16_29
.LBB16_24:                              # %sw.bb.74
                                        #   in Loop: Header=BB16_19 Depth=1
	movl	-28(%rbp), %eax
	orl	$524288, %eax           # imm = 0x80000
	movl	%eax, -28(%rbp)
	jmp	.LBB16_29
.LBB16_25:                              # %sw.bb.76
                                        #   in Loop: Header=BB16_19 Depth=1
	movl	-28(%rbp), %eax
	orl	$1048576, %eax          # imm = 0x100000
	movl	%eax, -28(%rbp)
	jmp	.LBB16_29
.LBB16_26:                              # %sw.bb.78
                                        #   in Loop: Header=BB16_19 Depth=1
	movl	-28(%rbp), %eax
	orl	$2097152, %eax          # imm = 0x200000
	movl	%eax, -28(%rbp)
	jmp	.LBB16_29
.LBB16_27:                              # %sw.bb.80
                                        #   in Loop: Header=BB16_19 Depth=1
	movl	-28(%rbp), %eax
	orl	$4194304, %eax          # imm = 0x400000
	movl	%eax, -28(%rbp)
	jmp	.LBB16_29
.LBB16_28:                              # %sw.bb.82
                                        #   in Loop: Header=BB16_19 Depth=1
	movl	-28(%rbp), %eax
	orl	$8388608, %eax          # imm = 0x800000
	movl	%eax, -28(%rbp)
.LBB16_29:                              # %sw.epilog
                                        #   in Loop: Header=BB16_19 Depth=1
	jmp	.LBB16_19
.LBB16_30:                              # %while.end
	movslq	-28(%rbp), %rax
	movq	Vsyntax_code_object, %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	ASIZE
	movq	-104(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jge	.LBB16_33
# BB#31:                                # %land.lhs.true
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB16_33
# BB#32:                                # %if.then.91
	movq	Vsyntax_code_object, %rdi
	movslq	-28(%rbp), %rsi
	callq	AREF
	movq	%rax, -8(%rbp)
	jmp	.LBB16_34
.LBB16_33:                              # %if.else.94
	movslq	-28(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -8(%rbp)
.LBB16_34:                              # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	Fstring_to_syntax, .Lfunc_end16-Fstring_to_syntax
	.cfi_endproc

	.globl	Fmodify_syntax_entry
	.align	16, 0x90
	.type	Fmodify_syntax_entry,@function
Fmodify_syntax_entry:                   # @Fmodify_syntax_entry
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	jne	.LBB17_14
# BB#1:                                 # %if.then
	jmp	.LBB17_2
.LBB17_2:                               # %do.body
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB17_3
	jmp	.LBB17_5
.LBB17_3:                               # %land.lhs.true
	movq	-32(%rbp), %rax
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jg	.LBB17_5
# BB#4:                                 # %cond.true
	jmp	.LBB17_6
.LBB17_5:                               # %cond.false
	movl	$260, %edi              # imm = 0x104
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB17_6:                               # %cond.end
	jmp	.LBB17_7
.LBB17_7:                               # %do.end
	jmp	.LBB17_8
.LBB17_8:                               # %do.body.6
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB17_9
	jmp	.LBB17_11
.LBB17_9:                               # %land.lhs.true.12
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jg	.LBB17_11
# BB#10:                                # %cond.true.16
	jmp	.LBB17_12
.LBB17_11:                              # %cond.false.17
	movl	$260, %edi              # imm = 0x104
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB17_12:                              # %cond.end.19
	jmp	.LBB17_13
.LBB17_13:                              # %do.end.20
	jmp	.LBB17_19
.LBB17_14:                              # %if.else
	movq	-8(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB17_15
	jmp	.LBB17_17
.LBB17_15:                              # %land.lhs.true.23
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jg	.LBB17_17
# BB#16:                                # %cond.true.27
	jmp	.LBB17_18
.LBB17_17:                              # %cond.false.28
	movl	$260, %edi              # imm = 0x104
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB17_18:                              # %cond.end.30
	jmp	.LBB17_19
.LBB17_19:                              # %if.end
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB17_21
# BB#20:                                # %if.then.34
	movq	current_buffer, %rax
	movq	128(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB17_22
.LBB17_21:                              # %if.else.35
	movq	-24(%rbp), %rdi
	callq	check_syntax_table
.LBB17_22:                              # %if.end.36
	movq	-16(%rbp), %rdi
	callq	Fstring_to_syntax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB17_24
# BB#23:                                # %if.then.42
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	callq	SET_RAW_SYNTAX_ENTRY_RANGE
	jmp	.LBB17_25
.LBB17_24:                              # %if.else.43
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movl	%ecx, %esi
	callq	SET_RAW_SYNTAX_ENTRY
.LBB17_25:                              # %if.end.46
	callq	clear_regexp_cache
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	Fmodify_syntax_entry, .Lfunc_end17-Fmodify_syntax_entry
	.cfi_endproc

	.align	16, 0x90
	.type	SET_RAW_SYNTAX_ENTRY_RANGE,@function
SET_RAW_SYNTAX_ENTRY_RANGE:             # @SET_RAW_SYNTAX_ENTRY_RANGE
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	Fset_char_table_range
	movq	%rax, -32(%rbp)         # 8-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	SET_RAW_SYNTAX_ENTRY_RANGE, .Lfunc_end18-SET_RAW_SYNTAX_ENTRY_RANGE
	.cfi_endproc

	.align	16, 0x90
	.type	SET_RAW_SYNTAX_ENTRY,@function
SET_RAW_SYNTAX_ENTRY:                   # @SET_RAW_SYNTAX_ENTRY
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
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	callq	CHAR_TABLE_SET
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	SET_RAW_SYNTAX_ENTRY, .Lfunc_end19-SET_RAW_SYNTAX_ENTRY
	.cfi_endproc

	.globl	Finternal_describe_syntax_value
	.align	16, 0x90
	.type	Finternal_describe_syntax_value,@function
Finternal_describe_syntax_value:        # @Finternal_describe_syntax_value
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
	subq	$160, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -64(%rbp)
	movq	-64(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB20_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.4, %rdi
	callq	insert_string
	movq	-16(%rbp), %rdi
	movq	%rdi, -8(%rbp)
	jmp	.LBB20_69
.LBB20_2:                               # %if.end
	movq	-64(%rbp), %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB20_3
	jmp	.LBB20_4
.LBB20_3:                               # %if.then.2
	movabsq	$.L.str.5, %rdi
	callq	insert_string
	movq	-16(%rbp), %rdi
	movq	%rdi, -8(%rbp)
	jmp	.LBB20_69
.LBB20_4:                               # %if.end.3
	movq	-64(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB20_6
# BB#5:                                 # %if.then.6
	movabsq	$.L.str.6, %rdi
	callq	insert_string
	movq	-16(%rbp), %rdi
	movq	%rdi, -8(%rbp)
	jmp	.LBB20_69
.LBB20_6:                               # %if.end.7
	movq	-64(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-64(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB20_10
# BB#7:                                 # %lor.lhs.false
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB20_11
# BB#8:                                 # %lor.lhs.false.17
	movq	-56(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB20_9
	jmp	.LBB20_10
.LBB20_9:                               # %land.lhs.true
	movq	-56(%rbp), %rax
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jle	.LBB20_11
.LBB20_10:                              # %if.then.22
	movabsq	$.L.str.6, %rdi
	callq	insert_string
	movq	-16(%rbp), %rdi
	movq	%rdi, -8(%rbp)
	jmp	.LBB20_69
.LBB20_11:                              # %if.end.23
	movq	-48(%rbp), %rax
	sarq	$2, %rax
	andq	$2147483647, %rax       # imm = 0x7FFFFFFF
	movl	%eax, %ecx
	movl	%ecx, -24(%rbp)
	movl	-24(%rbp), %ecx
	andl	$255, %ecx
	movl	%ecx, -20(%rbp)
	movl	-24(%rbp), %edi
	callq	SYNTAX_FLAGS_COMSTART_FIRST
	andb	$1, %al
	movb	%al, -25(%rbp)
	movl	-24(%rbp), %edi
	callq	SYNTAX_FLAGS_COMSTART_SECOND
	andb	$1, %al
	movb	%al, -26(%rbp)
	movl	-24(%rbp), %edi
	callq	SYNTAX_FLAGS_COMEND_FIRST
	andb	$1, %al
	movb	%al, -27(%rbp)
	movl	-24(%rbp), %edi
	callq	SYNTAX_FLAGS_COMEND_SECOND
	andb	$1, %al
	movb	%al, -28(%rbp)
	movl	-24(%rbp), %edi
	callq	SYNTAX_FLAGS_PREFIX
	andb	$1, %al
	movb	%al, -29(%rbp)
	movl	-24(%rbp), %edi
	callq	SYNTAX_FLAGS_COMMENT_STYLEB
	andb	$1, %al
	movb	%al, -30(%rbp)
	movl	-24(%rbp), %edi
	callq	SYNTAX_FLAGS_COMMENT_STYLEC
	andb	$1, %al
	movb	%al, -31(%rbp)
	movl	-24(%rbp), %edi
	callq	SYNTAX_FLAGS_COMMENT_NESTED
	movl	$16, %ecx
	andb	$1, %al
	movb	%al, -32(%rbp)
	cmpl	-20(%rbp), %ecx
	jg	.LBB20_13
# BB#12:                                # %if.then.45
	movabsq	$.L.str.6, %rdi
	callq	insert_string
	movq	-16(%rbp), %rdi
	movq	%rdi, -8(%rbp)
	jmp	.LBB20_69
.LBB20_13:                              # %if.end.46
	movl	$1, %eax
	movl	%eax, %esi
	leaq	-34(%rbp), %rdi
	movslq	-20(%rbp), %rcx
	movb	syntax_code_spec(,%rcx), %dl
	movb	%dl, -34(%rbp)
	movb	$0, -33(%rbp)
	callq	insert
	xorl	%edi, %edi
	movq	-56(%rbp), %rcx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB20_15
# BB#14:                                # %if.then.52
	movabsq	$.L.str.7, %rdi
	movl	$1, %eax
	movl	%eax, %esi
	callq	insert
	jmp	.LBB20_16
.LBB20_15:                              # %if.else
	movq	-56(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, %edi
	callq	insert_char
.LBB20_16:                              # %if.end.55
	testb	$1, -25(%rbp)
	je	.LBB20_18
# BB#17:                                # %if.then.56
	movabsq	$.L.str.8, %rdi
	movl	$1, %eax
	movl	%eax, %esi
	callq	insert
.LBB20_18:                              # %if.end.57
	testb	$1, -26(%rbp)
	je	.LBB20_20
# BB#19:                                # %if.then.59
	movabsq	$.L.str.9, %rdi
	movl	$1, %eax
	movl	%eax, %esi
	callq	insert
.LBB20_20:                              # %if.end.60
	testb	$1, -27(%rbp)
	je	.LBB20_22
# BB#21:                                # %if.then.62
	movabsq	$.L.str.10, %rdi
	movl	$1, %eax
	movl	%eax, %esi
	callq	insert
.LBB20_22:                              # %if.end.63
	testb	$1, -28(%rbp)
	je	.LBB20_24
# BB#23:                                # %if.then.65
	movabsq	$.L.str.11, %rdi
	movl	$1, %eax
	movl	%eax, %esi
	callq	insert
.LBB20_24:                              # %if.end.66
	testb	$1, -29(%rbp)
	je	.LBB20_26
# BB#25:                                # %if.then.68
	movabsq	$.L.str.12, %rdi
	movl	$1, %eax
	movl	%eax, %esi
	callq	insert
.LBB20_26:                              # %if.end.69
	testb	$1, -30(%rbp)
	je	.LBB20_28
# BB#27:                                # %if.then.71
	movabsq	$.L.str.13, %rdi
	movl	$1, %eax
	movl	%eax, %esi
	callq	insert
.LBB20_28:                              # %if.end.72
	testb	$1, -31(%rbp)
	je	.LBB20_30
# BB#29:                                # %if.then.74
	movabsq	$.L.str.14, %rdi
	movl	$1, %eax
	movl	%eax, %esi
	callq	insert
.LBB20_30:                              # %if.end.75
	testb	$1, -32(%rbp)
	je	.LBB20_32
# BB#31:                                # %if.then.77
	movabsq	$.L.str.15, %rdi
	movl	$1, %eax
	movl	%eax, %esi
	callq	insert
.LBB20_32:                              # %if.end.78
	movl	$.L.str.16, %eax
	movl	%eax, %edi
	callq	insert_string
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	movq	%rdi, %rcx
	subq	$15, %rcx
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	ja	.LBB20_49
# BB#70:                                # %if.end.78
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	.LJTI20_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB20_33:                              # %sw.bb
	movabsq	$.L.str.17, %rdi
	callq	insert_string
	jmp	.LBB20_50
.LBB20_34:                              # %sw.bb.79
	movabsq	$.L.str.18, %rdi
	callq	insert_string
	jmp	.LBB20_50
.LBB20_35:                              # %sw.bb.80
	movabsq	$.L.str.19, %rdi
	callq	insert_string
	jmp	.LBB20_50
.LBB20_36:                              # %sw.bb.81
	movabsq	$.L.str.20, %rdi
	callq	insert_string
	jmp	.LBB20_50
.LBB20_37:                              # %sw.bb.82
	movabsq	$.L.str.21, %rdi
	callq	insert_string
	jmp	.LBB20_50
.LBB20_38:                              # %sw.bb.83
	movabsq	$.L.str.22, %rdi
	callq	insert_string
	jmp	.LBB20_50
.LBB20_39:                              # %sw.bb.84
	movabsq	$.L.str.23, %rdi
	callq	insert_string
	jmp	.LBB20_50
.LBB20_40:                              # %sw.bb.85
	movabsq	$.L.str.24, %rdi
	callq	insert_string
	jmp	.LBB20_50
.LBB20_41:                              # %sw.bb.86
	movabsq	$.L.str.25, %rdi
	callq	insert_string
	jmp	.LBB20_50
.LBB20_42:                              # %sw.bb.87
	movabsq	$.L.str.26, %rdi
	callq	insert_string
	jmp	.LBB20_50
.LBB20_43:                              # %sw.bb.88
	movabsq	$.L.str.27, %rdi
	callq	insert_string
	jmp	.LBB20_50
.LBB20_44:                              # %sw.bb.89
	movabsq	$.L.str.28, %rdi
	callq	insert_string
	jmp	.LBB20_50
.LBB20_45:                              # %sw.bb.90
	movabsq	$.L.str.29, %rdi
	callq	insert_string
	jmp	.LBB20_50
.LBB20_46:                              # %sw.bb.91
	movabsq	$.L.str.30, %rdi
	callq	insert_string
	jmp	.LBB20_50
.LBB20_47:                              # %sw.bb.92
	movabsq	$.L.str.31, %rdi
	callq	insert_string
	jmp	.LBB20_50
.LBB20_48:                              # %sw.bb.93
	movabsq	$.L.str.32, %rdi
	callq	insert_string
	jmp	.LBB20_50
.LBB20_49:                              # %sw.default
	movabsq	$.L.str.6, %rdi
	callq	insert_string
	movq	-16(%rbp), %rdi
	movq	%rdi, -8(%rbp)
	jmp	.LBB20_69
.LBB20_50:                              # %sw.epilog
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB20_52
# BB#51:                                # %if.then.97
	movabsq	$.L.str.33, %rdi
	callq	insert_string
	movq	-56(%rbp), %rdi
	sarq	$2, %rdi
	movl	%edi, %eax
	movl	%eax, %edi
	callq	insert_char
.LBB20_52:                              # %if.end.100
	testb	$1, -25(%rbp)
	je	.LBB20_54
# BB#53:                                # %if.then.102
	movabsq	$.L.str.34, %rdi
	callq	insert_string
.LBB20_54:                              # %if.end.103
	testb	$1, -26(%rbp)
	je	.LBB20_56
# BB#55:                                # %if.then.105
	movabsq	$.L.str.35, %rdi
	callq	insert_string
.LBB20_56:                              # %if.end.106
	testb	$1, -27(%rbp)
	je	.LBB20_58
# BB#57:                                # %if.then.108
	movabsq	$.L.str.36, %rdi
	callq	insert_string
.LBB20_58:                              # %if.end.109
	testb	$1, -28(%rbp)
	je	.LBB20_60
# BB#59:                                # %if.then.111
	movabsq	$.L.str.37, %rdi
	callq	insert_string
.LBB20_60:                              # %if.end.112
	testb	$1, -30(%rbp)
	je	.LBB20_62
# BB#61:                                # %if.then.114
	movabsq	$.L.str.38, %rdi
	callq	insert_string
.LBB20_62:                              # %if.end.115
	testb	$1, -31(%rbp)
	je	.LBB20_64
# BB#63:                                # %if.then.117
	movabsq	$.L.str.39, %rdi
	callq	insert_string
.LBB20_64:                              # %if.end.118
	testb	$1, -32(%rbp)
	je	.LBB20_66
# BB#65:                                # %if.then.120
	movabsq	$.L.str.40, %rdi
	callq	insert_string
.LBB20_66:                              # %if.end.121
	testb	$1, -29(%rbp)
	je	.LBB20_68
# BB#67:                                # %if.then.123
	movl	$4, %esi
	leaq	-104(%rbp), %rax
	movabsq	$.L.str.41, %rcx
	movq	$54, -104(%rbp)
	movq	$-1, -96(%rbp)
	movq	$0, -88(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	Fsubstitute_command_keys
	movq	%rax, %rdi
	callq	insert1
.LBB20_68:                              # %if.end.127
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB20_69:                              # %return
	movq	-8(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	Finternal_describe_syntax_value, .Lfunc_end20-Finternal_describe_syntax_value
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI20_0:
	.quad	.LBB20_33
	.quad	.LBB20_34
	.quad	.LBB20_35
	.quad	.LBB20_36
	.quad	.LBB20_37
	.quad	.LBB20_38
	.quad	.LBB20_39
	.quad	.LBB20_40
	.quad	.LBB20_41
	.quad	.LBB20_42
	.quad	.LBB20_43
	.quad	.LBB20_44
	.quad	.LBB20_45
	.quad	.LBB20_46
	.quad	.LBB20_47
	.quad	.LBB20_48

	.text
	.align	16, 0x90
	.type	SYNTAX_FLAGS_COMSTART_FIRST,@function
SYNTAX_FLAGS_COMSTART_FIRST:            # @SYNTAX_FLAGS_COMSTART_FIRST
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
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	sarl	$16, %edi
	andl	$1, %edi
	cmpl	$0, %edi
	setne	%al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end21:
	.size	SYNTAX_FLAGS_COMSTART_FIRST, .Lfunc_end21-SYNTAX_FLAGS_COMSTART_FIRST
	.cfi_endproc

	.align	16, 0x90
	.type	SYNTAX_FLAGS_COMSTART_SECOND,@function
SYNTAX_FLAGS_COMSTART_SECOND:           # @SYNTAX_FLAGS_COMSTART_SECOND
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
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	sarl	$17, %edi
	andl	$1, %edi
	cmpl	$0, %edi
	setne	%al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end22:
	.size	SYNTAX_FLAGS_COMSTART_SECOND, .Lfunc_end22-SYNTAX_FLAGS_COMSTART_SECOND
	.cfi_endproc

	.align	16, 0x90
	.type	SYNTAX_FLAGS_COMEND_FIRST,@function
SYNTAX_FLAGS_COMEND_FIRST:              # @SYNTAX_FLAGS_COMEND_FIRST
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
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	sarl	$18, %edi
	andl	$1, %edi
	cmpl	$0, %edi
	setne	%al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end23:
	.size	SYNTAX_FLAGS_COMEND_FIRST, .Lfunc_end23-SYNTAX_FLAGS_COMEND_FIRST
	.cfi_endproc

	.align	16, 0x90
	.type	SYNTAX_FLAGS_COMEND_SECOND,@function
SYNTAX_FLAGS_COMEND_SECOND:             # @SYNTAX_FLAGS_COMEND_SECOND
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
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	sarl	$19, %edi
	andl	$1, %edi
	cmpl	$0, %edi
	setne	%al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end24:
	.size	SYNTAX_FLAGS_COMEND_SECOND, .Lfunc_end24-SYNTAX_FLAGS_COMEND_SECOND
	.cfi_endproc

	.align	16, 0x90
	.type	SYNTAX_FLAGS_COMMENT_STYLEB,@function
SYNTAX_FLAGS_COMMENT_STYLEB:            # @SYNTAX_FLAGS_COMMENT_STYLEB
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
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	sarl	$21, %edi
	andl	$1, %edi
	cmpl	$0, %edi
	setne	%al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end25:
	.size	SYNTAX_FLAGS_COMMENT_STYLEB, .Lfunc_end25-SYNTAX_FLAGS_COMMENT_STYLEB
	.cfi_endproc

	.align	16, 0x90
	.type	SYNTAX_FLAGS_COMMENT_STYLEC,@function
SYNTAX_FLAGS_COMMENT_STYLEC:            # @SYNTAX_FLAGS_COMMENT_STYLEC
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
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	sarl	$23, %edi
	andl	$1, %edi
	cmpl	$0, %edi
	setne	%al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end26:
	.size	SYNTAX_FLAGS_COMMENT_STYLEC, .Lfunc_end26-SYNTAX_FLAGS_COMMENT_STYLEC
	.cfi_endproc

	.align	16, 0x90
	.type	SYNTAX_FLAGS_COMMENT_NESTED,@function
SYNTAX_FLAGS_COMMENT_NESTED:            # @SYNTAX_FLAGS_COMMENT_NESTED
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
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	sarl	$22, %edi
	andl	$1, %edi
	cmpl	$0, %edi
	setne	%al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end27:
	.size	SYNTAX_FLAGS_COMMENT_NESTED, .Lfunc_end27-SYNTAX_FLAGS_COMMENT_NESTED
	.cfi_endproc

	.globl	scan_words
	.align	16, 0x90
	.type	scan_words,@function
scan_words:                             # @scan_words
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
	subq	$496, %rsp              # imm = 0x1F0
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	current_buffer, %rsi
	movq	752(%rsi), %rsi
	movq	%rsi, -32(%rbp)
	movq	current_buffer, %rsi
	movq	768(%rsi), %rsi
	movq	%rsi, -40(%rbp)
	movq	current_buffer, %rdi
	movq	-16(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -48(%rbp)
	movb	$1, immediate_quit
# BB#1:                                 # %do.body
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB28_4
# BB#2:                                 # %land.lhs.true
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB28_4
# BB#3:                                 # %if.then
	callq	process_quit_flag
	jmp	.LBB28_7
.LBB28_4:                               # %if.else
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB28_6
# BB#5:                                 # %if.then.4
	callq	process_pending_signals
.LBB28_6:                               # %if.end
	jmp	.LBB28_7
.LBB28_7:                               # %if.end.5
	jmp	.LBB28_8
.LBB28_8:                               # %do.end
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	SETUP_SYNTAX_TABLE
.LBB28_9:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB28_11 Depth 2
                                        #     Child Loop BB28_66 Depth 2
	cmpq	$0, -24(%rbp)
	jle	.LBB28_116
# BB#10:                                # %while.body
                                        #   in Loop: Header=BB28_9 Depth=1
	jmp	.LBB28_11
.LBB28_11:                              # %while.body.8
                                        #   Parent Loop BB28_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-16(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB28_13
# BB#12:                                # %if.then.10
	movb	$0, immediate_quit
	movq	$0, -8(%rbp)
	jmp	.LBB28_232
.LBB28_13:                              # %if.end.11
                                        #   in Loop: Header=BB28_11 Depth=2
	movq	-16(%rbp), %rdi
	callq	UPDATE_SYNTAX_TABLE_FORWARD
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB28_15
# BB#14:                                # %cond.true
                                        #   in Loop: Header=BB28_11 Depth=2
	movq	-48(%rbp), %rdi
	callq	FETCH_MULTIBYTE_CHAR
	movl	%eax, -148(%rbp)        # 4-byte Spill
	jmp	.LBB28_33
.LBB28_15:                              # %cond.false
                                        #   in Loop: Header=BB28_11 Depth=2
	movb	$1, %al
	testb	$1, %al
	jne	.LBB28_16
	jmp	.LBB28_20
.LBB28_16:                              # %cond.true.15
                                        #   in Loop: Header=BB28_11 Depth=2
	movq	-48(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB28_18
# BB#17:                                # %cond.true.17
                                        #   in Loop: Header=BB28_11 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB28_19
.LBB28_18:                              # %cond.false.19
                                        #   in Loop: Header=BB28_11 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	jmp	.LBB28_19
.LBB28_19:                              # %cond.end
                                        #   in Loop: Header=BB28_11 Depth=2
	movq	-160(%rbp), %rax        # 8-byte Reload
	addq	-48(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$0, %edx
	cmpl	$128, %edx
	jb	.LBB28_24
	jmp	.LBB28_28
.LBB28_20:                              # %cond.false.26
                                        #   in Loop: Header=BB28_11 Depth=2
	movq	-48(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB28_22
# BB#21:                                # %cond.true.31
                                        #   in Loop: Header=BB28_11 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB28_23
.LBB28_22:                              # %cond.false.34
                                        #   in Loop: Header=BB28_11 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	jmp	.LBB28_23
.LBB28_23:                              # %cond.end.35
                                        #   in Loop: Header=BB28_11 Depth=2
	movq	-168(%rbp), %rax        # 8-byte Reload
	addq	-48(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, %eax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB28_28
.LBB28_24:                              # %cond.true.46
                                        #   in Loop: Header=BB28_11 Depth=2
	movq	-48(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB28_26
# BB#25:                                # %cond.true.51
                                        #   in Loop: Header=BB28_11 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB28_27
.LBB28_26:                              # %cond.false.54
                                        #   in Loop: Header=BB28_11 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	jmp	.LBB28_27
.LBB28_27:                              # %cond.end.55
                                        #   in Loop: Header=BB28_11 Depth=2
	movq	-176(%rbp), %rax        # 8-byte Reload
	addq	-48(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, -180(%rbp)        # 4-byte Spill
	jmp	.LBB28_32
.LBB28_28:                              # %cond.false.63
                                        #   in Loop: Header=BB28_11 Depth=2
	movq	-48(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB28_30
# BB#29:                                # %cond.true.68
                                        #   in Loop: Header=BB28_11 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jmp	.LBB28_31
.LBB28_30:                              # %cond.false.71
                                        #   in Loop: Header=BB28_11 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	jmp	.LBB28_31
.LBB28_31:                              # %cond.end.72
                                        #   in Loop: Header=BB28_11 Depth=2
	movq	-192(%rbp), %rax        # 8-byte Reload
	addq	-48(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$4194048, %edx          # imm = 0x3FFF00
	movl	%edx, -180(%rbp)        # 4-byte Spill
.LBB28_32:                              # %cond.end.81
                                        #   in Loop: Header=BB28_11 Depth=2
	movl	-180(%rbp), %eax        # 4-byte Reload
	movl	%eax, -148(%rbp)        # 4-byte Spill
.LBB28_33:                              # %cond.end.83
                                        #   in Loop: Header=BB28_11 Depth=2
	movl	-148(%rbp), %eax        # 4-byte Reload
	movl	$1, %esi
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %edi
	callq	syntax_property
	movl	%eax, -52(%rbp)
# BB#34:                                # %do.body.86
                                        #   in Loop: Header=BB28_11 Depth=2
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-200(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB28_36
# BB#35:                                # %if.then.91
                                        #   in Loop: Header=BB28_11 Depth=2
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB28_51
.LBB28_36:                              # %if.else.93
                                        #   in Loop: Header=BB28_11 Depth=2
	jmp	.LBB28_37
.LBB28_37:                              # %do.body.94
                                        #   in Loop: Header=BB28_11 Depth=2
	movq	-48(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB28_39
# BB#38:                                # %cond.true.99
                                        #   in Loop: Header=BB28_11 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	jmp	.LBB28_40
.LBB28_39:                              # %cond.false.102
                                        #   in Loop: Header=BB28_11 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	jmp	.LBB28_40
.LBB28_40:                              # %cond.end.103
                                        #   in Loop: Header=BB28_11 Depth=2
	movq	-208(%rbp), %rax        # 8-byte Reload
	addq	-48(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	jne	.LBB28_42
# BB#41:                                # %cond.true.112
                                        #   in Loop: Header=BB28_11 Depth=2
	movl	$1, %eax
	movl	%eax, -212(%rbp)        # 4-byte Spill
	jmp	.LBB28_49
.LBB28_42:                              # %cond.false.113
                                        #   in Loop: Header=BB28_11 Depth=2
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB28_44
# BB#43:                                # %cond.true.117
                                        #   in Loop: Header=BB28_11 Depth=2
	movl	$2, %eax
	movl	%eax, -216(%rbp)        # 4-byte Spill
	jmp	.LBB28_48
.LBB28_44:                              # %cond.false.118
                                        #   in Loop: Header=BB28_11 Depth=2
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB28_46
# BB#45:                                # %cond.true.122
                                        #   in Loop: Header=BB28_11 Depth=2
	movl	$3, %eax
	movl	%eax, -220(%rbp)        # 4-byte Spill
	jmp	.LBB28_47
.LBB28_46:                              # %cond.false.123
                                        #   in Loop: Header=BB28_11 Depth=2
	movl	$5, %eax
	movl	$4, %ecx
	movq	-88(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$8, %esi
	cmpl	$0, %esi
	setne	%dil
	xorb	$-1, %dil
	testb	$1, %dil
	cmovnel	%ecx, %eax
	movl	%eax, -220(%rbp)        # 4-byte Spill
.LBB28_47:                              # %cond.end.128
                                        #   in Loop: Header=BB28_11 Depth=2
	movl	-220(%rbp), %eax        # 4-byte Reload
	movl	%eax, -216(%rbp)        # 4-byte Spill
.LBB28_48:                              # %cond.end.130
                                        #   in Loop: Header=BB28_11 Depth=2
	movl	-216(%rbp), %eax        # 4-byte Reload
	movl	%eax, -212(%rbp)        # 4-byte Spill
.LBB28_49:                              # %cond.end.132
                                        #   in Loop: Header=BB28_11 Depth=2
	movl	-212(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	addq	-48(%rbp), %rcx
	movq	%rcx, -48(%rbp)
# BB#50:                                # %do.end.136
                                        #   in Loop: Header=BB28_11 Depth=2
	jmp	.LBB28_51
.LBB28_51:                              # %if.end.137
                                        #   in Loop: Header=BB28_11 Depth=2
	jmp	.LBB28_52
.LBB28_52:                              # %do.end.138
                                        #   in Loop: Header=BB28_11 Depth=2
	testb	$1, globals+3439
	je	.LBB28_56
# BB#53:                                # %land.lhs.true.141
                                        #   in Loop: Header=BB28_11 Depth=2
	cmpl	$9, -52(%rbp)
	je	.LBB28_55
# BB#54:                                # %lor.lhs.false
                                        #   in Loop: Header=BB28_11 Depth=2
	cmpl	$10, -52(%rbp)
	jne	.LBB28_56
.LBB28_55:                              # %if.then.146
                                        #   in Loop: Header=BB28_9 Depth=1
	jmp	.LBB28_59
.LBB28_56:                              # %if.end.147
                                        #   in Loop: Header=BB28_11 Depth=2
	cmpl	$2, -52(%rbp)
	jne	.LBB28_58
# BB#57:                                # %if.then.150
                                        #   in Loop: Header=BB28_9 Depth=1
	jmp	.LBB28_59
.LBB28_58:                              # %if.end.151
                                        #   in Loop: Header=BB28_11 Depth=2
	jmp	.LBB28_11
.LBB28_59:                              # %while.end
                                        #   in Loop: Header=BB28_9 Depth=1
	movq	globals+768, %rdi
	movl	-56(%rbp), %esi
	callq	CHAR_TABLE_REF
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	Ffboundp
	xorl	%edi, %edi
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-232(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB28_65
# BB#60:                                # %if.then.157
                                        #   in Loop: Header=BB28_9 Depth=1
	movq	-72(%rbp), %rdi
	movq	-16(%rbp), %rax
	subq	$1, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-40(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	call2
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %r8d
	andl	$-5, %r8d
	cmpl	$2, %r8d
	jne	.LBB28_64
# BB#61:                                # %land.lhs.true.167
                                        #   in Loop: Header=BB28_9 Depth=1
	movq	-16(%rbp), %rax
	movq	-80(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jge	.LBB28_64
# BB#62:                                # %land.lhs.true.170
                                        #   in Loop: Header=BB28_9 Depth=1
	movq	-80(%rbp), %rax
	sarq	$2, %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	jg	.LBB28_64
# BB#63:                                # %if.then.175
                                        #   in Loop: Header=BB28_9 Depth=1
	movq	-80(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -16(%rbp)
	movq	current_buffer, %rdi
	movq	-16(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -48(%rbp)
.LBB28_64:                              # %if.end.178
                                        #   in Loop: Header=BB28_9 Depth=1
	jmp	.LBB28_115
.LBB28_65:                              # %if.else.179
                                        #   in Loop: Header=BB28_9 Depth=1
	jmp	.LBB28_66
.LBB28_66:                              # %while.body.181
                                        #   Parent Loop BB28_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-16(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB28_68
# BB#67:                                # %if.then.184
                                        #   in Loop: Header=BB28_9 Depth=1
	jmp	.LBB28_114
.LBB28_68:                              # %if.end.185
                                        #   in Loop: Header=BB28_66 Depth=2
	movq	-16(%rbp), %rdi
	callq	UPDATE_SYNTAX_TABLE_FORWARD
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-240(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB28_70
# BB#69:                                # %cond.true.190
                                        #   in Loop: Header=BB28_66 Depth=2
	movq	-48(%rbp), %rdi
	callq	FETCH_MULTIBYTE_CHAR
	movl	%eax, -244(%rbp)        # 4-byte Spill
	jmp	.LBB28_88
.LBB28_70:                              # %cond.false.192
                                        #   in Loop: Header=BB28_66 Depth=2
	movb	$1, %al
	testb	$1, %al
	jne	.LBB28_71
	jmp	.LBB28_75
.LBB28_71:                              # %cond.true.193
                                        #   in Loop: Header=BB28_66 Depth=2
	movq	-48(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB28_73
# BB#72:                                # %cond.true.198
                                        #   in Loop: Header=BB28_66 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	jmp	.LBB28_74
.LBB28_73:                              # %cond.false.201
                                        #   in Loop: Header=BB28_66 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	jmp	.LBB28_74
.LBB28_74:                              # %cond.end.202
                                        #   in Loop: Header=BB28_66 Depth=2
	movq	-256(%rbp), %rax        # 8-byte Reload
	addq	-48(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$0, %edx
	cmpl	$128, %edx
	jb	.LBB28_79
	jmp	.LBB28_83
.LBB28_75:                              # %cond.false.213
                                        #   in Loop: Header=BB28_66 Depth=2
	movq	-48(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB28_77
# BB#76:                                # %cond.true.218
                                        #   in Loop: Header=BB28_66 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	jmp	.LBB28_78
.LBB28_77:                              # %cond.false.221
                                        #   in Loop: Header=BB28_66 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -264(%rbp)        # 8-byte Spill
	jmp	.LBB28_78
.LBB28_78:                              # %cond.end.222
                                        #   in Loop: Header=BB28_66 Depth=2
	movq	-264(%rbp), %rax        # 8-byte Reload
	addq	-48(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, %eax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB28_83
.LBB28_79:                              # %cond.true.233
                                        #   in Loop: Header=BB28_66 Depth=2
	movq	-48(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB28_81
# BB#80:                                # %cond.true.238
                                        #   in Loop: Header=BB28_66 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	jmp	.LBB28_82
.LBB28_81:                              # %cond.false.241
                                        #   in Loop: Header=BB28_66 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -272(%rbp)        # 8-byte Spill
	jmp	.LBB28_82
.LBB28_82:                              # %cond.end.242
                                        #   in Loop: Header=BB28_66 Depth=2
	movq	-272(%rbp), %rax        # 8-byte Reload
	addq	-48(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, -276(%rbp)        # 4-byte Spill
	jmp	.LBB28_87
.LBB28_83:                              # %cond.false.250
                                        #   in Loop: Header=BB28_66 Depth=2
	movq	-48(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB28_85
# BB#84:                                # %cond.true.255
                                        #   in Loop: Header=BB28_66 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	jmp	.LBB28_86
.LBB28_85:                              # %cond.false.258
                                        #   in Loop: Header=BB28_66 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -288(%rbp)        # 8-byte Spill
	jmp	.LBB28_86
.LBB28_86:                              # %cond.end.259
                                        #   in Loop: Header=BB28_66 Depth=2
	movq	-288(%rbp), %rax        # 8-byte Reload
	addq	-48(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$4194048, %edx          # imm = 0x3FFF00
	movl	%edx, -276(%rbp)        # 4-byte Spill
.LBB28_87:                              # %cond.end.268
                                        #   in Loop: Header=BB28_66 Depth=2
	movl	-276(%rbp), %eax        # 4-byte Reload
	movl	%eax, -244(%rbp)        # 4-byte Spill
.LBB28_88:                              # %cond.end.270
                                        #   in Loop: Header=BB28_66 Depth=2
	movl	-244(%rbp), %eax        # 4-byte Reload
	movl	$1, %esi
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %edi
	callq	syntax_property
	movl	%eax, -52(%rbp)
	cmpl	$2, -52(%rbp)
	je	.LBB28_92
# BB#89:                                # %land.lhs.true.275
                                        #   in Loop: Header=BB28_66 Depth=2
	testb	$1, globals+3439
	je	.LBB28_93
# BB#90:                                # %lor.lhs.false.277
                                        #   in Loop: Header=BB28_66 Depth=2
	cmpl	$9, -52(%rbp)
	je	.LBB28_92
# BB#91:                                # %land.lhs.true.280
                                        #   in Loop: Header=BB28_66 Depth=2
	cmpl	$10, -52(%rbp)
	jne	.LBB28_93
.LBB28_92:                              # %lor.lhs.false.283
                                        #   in Loop: Header=BB28_66 Depth=2
	movl	-56(%rbp), %edi
	movl	-60(%rbp), %esi
	callq	word_boundary_p
	testb	$1, %al
	jne	.LBB28_93
	jmp	.LBB28_94
.LBB28_93:                              # %if.then.286
                                        #   in Loop: Header=BB28_9 Depth=1
	jmp	.LBB28_114
.LBB28_94:                              # %if.end.287
                                        #   in Loop: Header=BB28_66 Depth=2
	jmp	.LBB28_95
.LBB28_95:                              # %do.body.288
                                        #   in Loop: Header=BB28_66 Depth=2
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-296(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB28_97
# BB#96:                                # %if.then.294
                                        #   in Loop: Header=BB28_66 Depth=2
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB28_112
.LBB28_97:                              # %if.else.296
                                        #   in Loop: Header=BB28_66 Depth=2
	jmp	.LBB28_98
.LBB28_98:                              # %do.body.297
                                        #   in Loop: Header=BB28_66 Depth=2
	movq	-48(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB28_100
# BB#99:                                # %cond.true.303
                                        #   in Loop: Header=BB28_66 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	jmp	.LBB28_101
.LBB28_100:                             # %cond.false.306
                                        #   in Loop: Header=BB28_66 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -304(%rbp)        # 8-byte Spill
	jmp	.LBB28_101
.LBB28_101:                             # %cond.end.307
                                        #   in Loop: Header=BB28_66 Depth=2
	movq	-304(%rbp), %rax        # 8-byte Reload
	addq	-48(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movzbl	(%rax), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	jne	.LBB28_103
# BB#102:                               # %cond.true.317
                                        #   in Loop: Header=BB28_66 Depth=2
	movl	$1, %eax
	movl	%eax, -308(%rbp)        # 4-byte Spill
	jmp	.LBB28_110
.LBB28_103:                             # %cond.false.318
                                        #   in Loop: Header=BB28_66 Depth=2
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB28_105
# BB#104:                               # %cond.true.322
                                        #   in Loop: Header=BB28_66 Depth=2
	movl	$2, %eax
	movl	%eax, -312(%rbp)        # 4-byte Spill
	jmp	.LBB28_109
.LBB28_105:                             # %cond.false.323
                                        #   in Loop: Header=BB28_66 Depth=2
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB28_107
# BB#106:                               # %cond.true.327
                                        #   in Loop: Header=BB28_66 Depth=2
	movl	$3, %eax
	movl	%eax, -316(%rbp)        # 4-byte Spill
	jmp	.LBB28_108
.LBB28_107:                             # %cond.false.328
                                        #   in Loop: Header=BB28_66 Depth=2
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
	movl	%eax, -316(%rbp)        # 4-byte Spill
.LBB28_108:                             # %cond.end.334
                                        #   in Loop: Header=BB28_66 Depth=2
	movl	-316(%rbp), %eax        # 4-byte Reload
	movl	%eax, -312(%rbp)        # 4-byte Spill
.LBB28_109:                             # %cond.end.336
                                        #   in Loop: Header=BB28_66 Depth=2
	movl	-312(%rbp), %eax        # 4-byte Reload
	movl	%eax, -308(%rbp)        # 4-byte Spill
.LBB28_110:                             # %cond.end.338
                                        #   in Loop: Header=BB28_66 Depth=2
	movl	-308(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	addq	-48(%rbp), %rcx
	movq	%rcx, -48(%rbp)
# BB#111:                               # %do.end.342
                                        #   in Loop: Header=BB28_66 Depth=2
	jmp	.LBB28_112
.LBB28_112:                             # %if.end.343
                                        #   in Loop: Header=BB28_66 Depth=2
	jmp	.LBB28_113
.LBB28_113:                             # %do.end.344
                                        #   in Loop: Header=BB28_66 Depth=2
	movl	-60(%rbp), %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB28_66
.LBB28_114:                             # %while.end.345
                                        #   in Loop: Header=BB28_9 Depth=1
	jmp	.LBB28_115
.LBB28_115:                             # %if.end.346
                                        #   in Loop: Header=BB28_9 Depth=1
	movq	-24(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB28_9
.LBB28_116:                             # %while.end.347
	jmp	.LBB28_117
.LBB28_117:                             # %while.cond.348
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB28_119 Depth 2
                                        #       Child Loop BB28_129 Depth 3
                                        #     Child Loop BB28_168 Depth 2
                                        #       Child Loop BB28_178 Depth 3
	cmpq	$0, -24(%rbp)
	jge	.LBB28_231
# BB#118:                               # %while.body.351
                                        #   in Loop: Header=BB28_117 Depth=1
	jmp	.LBB28_119
.LBB28_119:                             # %while.body.353
                                        #   Parent Loop BB28_117 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB28_129 Depth 3
	movq	-16(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB28_121
# BB#120:                               # %if.then.356
	movb	$0, immediate_quit
	movq	$0, -8(%rbp)
	jmp	.LBB28_232
.LBB28_121:                             # %if.end.357
                                        #   in Loop: Header=BB28_119 Depth=2
	jmp	.LBB28_122
.LBB28_122:                             # %do.body.358
                                        #   in Loop: Header=BB28_119 Depth=2
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -16(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-328(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB28_124
# BB#123:                               # %if.then.364
                                        #   in Loop: Header=BB28_119 Depth=2
	movq	-48(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB28_133
.LBB28_124:                             # %if.else.366
                                        #   in Loop: Header=BB28_119 Depth=2
	jmp	.LBB28_125
.LBB28_125:                             # %do.body.367
                                        #   in Loop: Header=BB28_119 Depth=2
	movq	-48(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jge	.LBB28_127
# BB#126:                               # %if.then.374
                                        #   in Loop: Header=BB28_119 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	addq	-48(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB28_128
.LBB28_127:                             # %if.else.379
                                        #   in Loop: Header=BB28_119 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	40(%rcx), %rax
	addq	-48(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -104(%rbp)
.LBB28_128:                             # %if.end.387
                                        #   in Loop: Header=BB28_119 Depth=2
	jmp	.LBB28_129
.LBB28_129:                             # %while.cond.388
                                        #   Parent Loop BB28_117 Depth=1
                                        #     Parent Loop BB28_119 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-104(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	setne	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB28_130
	jmp	.LBB28_131
.LBB28_130:                             # %while.body.394
                                        #   in Loop: Header=BB28_129 Depth=3
	movq	-104(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -104(%rbp)
	movq	-48(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB28_129
.LBB28_131:                             # %while.end.396
                                        #   in Loop: Header=BB28_119 Depth=2
	jmp	.LBB28_132
.LBB28_132:                             # %do.end.397
                                        #   in Loop: Header=BB28_119 Depth=2
	jmp	.LBB28_133
.LBB28_133:                             # %if.end.398
                                        #   in Loop: Header=BB28_119 Depth=2
	jmp	.LBB28_134
.LBB28_134:                             # %do.end.399
                                        #   in Loop: Header=BB28_119 Depth=2
	movq	-16(%rbp), %rdi
	callq	UPDATE_SYNTAX_TABLE_BACKWARD
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-336(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB28_136
# BB#135:                               # %cond.true.404
                                        #   in Loop: Header=BB28_119 Depth=2
	movq	-48(%rbp), %rdi
	callq	FETCH_MULTIBYTE_CHAR
	movl	%eax, -340(%rbp)        # 4-byte Spill
	jmp	.LBB28_154
.LBB28_136:                             # %cond.false.406
                                        #   in Loop: Header=BB28_119 Depth=2
	movb	$1, %al
	testb	$1, %al
	jne	.LBB28_137
	jmp	.LBB28_141
.LBB28_137:                             # %cond.true.407
                                        #   in Loop: Header=BB28_119 Depth=2
	movq	-48(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB28_139
# BB#138:                               # %cond.true.412
                                        #   in Loop: Header=BB28_119 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	jmp	.LBB28_140
.LBB28_139:                             # %cond.false.415
                                        #   in Loop: Header=BB28_119 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -352(%rbp)        # 8-byte Spill
	jmp	.LBB28_140
.LBB28_140:                             # %cond.end.416
                                        #   in Loop: Header=BB28_119 Depth=2
	movq	-352(%rbp), %rax        # 8-byte Reload
	addq	-48(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$0, %edx
	cmpl	$128, %edx
	jb	.LBB28_145
	jmp	.LBB28_149
.LBB28_141:                             # %cond.false.427
                                        #   in Loop: Header=BB28_119 Depth=2
	movq	-48(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB28_143
# BB#142:                               # %cond.true.432
                                        #   in Loop: Header=BB28_119 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	jmp	.LBB28_144
.LBB28_143:                             # %cond.false.435
                                        #   in Loop: Header=BB28_119 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -360(%rbp)        # 8-byte Spill
	jmp	.LBB28_144
.LBB28_144:                             # %cond.end.436
                                        #   in Loop: Header=BB28_119 Depth=2
	movq	-360(%rbp), %rax        # 8-byte Reload
	addq	-48(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, %eax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB28_149
.LBB28_145:                             # %cond.true.447
                                        #   in Loop: Header=BB28_119 Depth=2
	movq	-48(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB28_147
# BB#146:                               # %cond.true.452
                                        #   in Loop: Header=BB28_119 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	jmp	.LBB28_148
.LBB28_147:                             # %cond.false.455
                                        #   in Loop: Header=BB28_119 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	jmp	.LBB28_148
.LBB28_148:                             # %cond.end.456
                                        #   in Loop: Header=BB28_119 Depth=2
	movq	-368(%rbp), %rax        # 8-byte Reload
	addq	-48(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, -372(%rbp)        # 4-byte Spill
	jmp	.LBB28_153
.LBB28_149:                             # %cond.false.464
                                        #   in Loop: Header=BB28_119 Depth=2
	movq	-48(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB28_151
# BB#150:                               # %cond.true.469
                                        #   in Loop: Header=BB28_119 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	jmp	.LBB28_152
.LBB28_151:                             # %cond.false.472
                                        #   in Loop: Header=BB28_119 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -384(%rbp)        # 8-byte Spill
	jmp	.LBB28_152
.LBB28_152:                             # %cond.end.473
                                        #   in Loop: Header=BB28_119 Depth=2
	movq	-384(%rbp), %rax        # 8-byte Reload
	addq	-48(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$4194048, %edx          # imm = 0x3FFF00
	movl	%edx, -372(%rbp)        # 4-byte Spill
.LBB28_153:                             # %cond.end.482
                                        #   in Loop: Header=BB28_119 Depth=2
	movl	-372(%rbp), %eax        # 4-byte Reload
	movl	%eax, -340(%rbp)        # 4-byte Spill
.LBB28_154:                             # %cond.end.484
                                        #   in Loop: Header=BB28_119 Depth=2
	movl	-340(%rbp), %eax        # 4-byte Reload
	movl	$1, %esi
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %edi
	callq	syntax_property
	movl	%eax, -52(%rbp)
	testb	$1, globals+3439
	je	.LBB28_158
# BB#155:                               # %land.lhs.true.489
                                        #   in Loop: Header=BB28_119 Depth=2
	cmpl	$9, -52(%rbp)
	je	.LBB28_157
# BB#156:                               # %lor.lhs.false.492
                                        #   in Loop: Header=BB28_119 Depth=2
	cmpl	$10, -52(%rbp)
	jne	.LBB28_158
.LBB28_157:                             # %if.then.495
                                        #   in Loop: Header=BB28_117 Depth=1
	jmp	.LBB28_161
.LBB28_158:                             # %if.end.496
                                        #   in Loop: Header=BB28_119 Depth=2
	cmpl	$2, -52(%rbp)
	jne	.LBB28_160
# BB#159:                               # %if.then.499
                                        #   in Loop: Header=BB28_117 Depth=1
	jmp	.LBB28_161
.LBB28_160:                             # %if.end.500
                                        #   in Loop: Header=BB28_119 Depth=2
	jmp	.LBB28_119
.LBB28_161:                             # %while.end.501
                                        #   in Loop: Header=BB28_117 Depth=1
	movq	globals+768, %rdi
	movl	-60(%rbp), %esi
	callq	CHAR_TABLE_REF
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	Ffboundp
	xorl	%edi, %edi
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-392(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB28_167
# BB#162:                               # %if.then.507
                                        #   in Loop: Header=BB28_117 Depth=1
	movq	-72(%rbp), %rdi
	movq	-16(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-32(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	call2
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %r8d
	andl	$-5, %r8d
	cmpl	$2, %r8d
	jne	.LBB28_166
# BB#163:                               # %land.lhs.true.518
                                        #   in Loop: Header=BB28_117 Depth=1
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	-80(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jg	.LBB28_166
# BB#164:                               # %land.lhs.true.523
                                        #   in Loop: Header=BB28_117 Depth=1
	movq	-80(%rbp), %rax
	sarq	$2, %rax
	cmpq	-16(%rbp), %rax
	jge	.LBB28_166
# BB#165:                               # %if.then.527
                                        #   in Loop: Header=BB28_117 Depth=1
	movq	-80(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -16(%rbp)
	movq	current_buffer, %rdi
	movq	-16(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -48(%rbp)
.LBB28_166:                             # %if.end.530
                                        #   in Loop: Header=BB28_117 Depth=1
	jmp	.LBB28_230
.LBB28_167:                             # %if.else.531
                                        #   in Loop: Header=BB28_117 Depth=1
	jmp	.LBB28_168
.LBB28_168:                             # %while.body.533
                                        #   Parent Loop BB28_117 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB28_178 Depth 3
	movq	-16(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB28_170
# BB#169:                               # %if.then.536
                                        #   in Loop: Header=BB28_117 Depth=1
	jmp	.LBB28_229
.LBB28_170:                             # %if.end.537
                                        #   in Loop: Header=BB28_168 Depth=2
	jmp	.LBB28_171
.LBB28_171:                             # %do.body.538
                                        #   in Loop: Header=BB28_168 Depth=2
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -16(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-400(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB28_173
# BB#172:                               # %if.then.544
                                        #   in Loop: Header=BB28_168 Depth=2
	movq	-48(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB28_182
.LBB28_173:                             # %if.else.546
                                        #   in Loop: Header=BB28_168 Depth=2
	jmp	.LBB28_174
.LBB28_174:                             # %do.body.547
                                        #   in Loop: Header=BB28_168 Depth=2
	movq	-48(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jge	.LBB28_176
# BB#175:                               # %if.then.554
                                        #   in Loop: Header=BB28_168 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	addq	-48(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -112(%rbp)
	jmp	.LBB28_177
.LBB28_176:                             # %if.else.559
                                        #   in Loop: Header=BB28_168 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	40(%rcx), %rax
	addq	-48(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -112(%rbp)
.LBB28_177:                             # %if.end.567
                                        #   in Loop: Header=BB28_168 Depth=2
	jmp	.LBB28_178
.LBB28_178:                             # %while.cond.568
                                        #   Parent Loop BB28_117 Depth=1
                                        #     Parent Loop BB28_168 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-112(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	setne	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB28_179
	jmp	.LBB28_180
.LBB28_179:                             # %while.body.574
                                        #   in Loop: Header=BB28_178 Depth=3
	movq	-112(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -112(%rbp)
	movq	-48(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB28_178
.LBB28_180:                             # %while.end.577
                                        #   in Loop: Header=BB28_168 Depth=2
	jmp	.LBB28_181
.LBB28_181:                             # %do.end.578
                                        #   in Loop: Header=BB28_168 Depth=2
	jmp	.LBB28_182
.LBB28_182:                             # %if.end.579
                                        #   in Loop: Header=BB28_168 Depth=2
	jmp	.LBB28_183
.LBB28_183:                             # %do.end.580
                                        #   in Loop: Header=BB28_168 Depth=2
	movq	-16(%rbp), %rdi
	callq	UPDATE_SYNTAX_TABLE_BACKWARD
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-408(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB28_185
# BB#184:                               # %cond.true.585
                                        #   in Loop: Header=BB28_168 Depth=2
	movq	-48(%rbp), %rdi
	callq	FETCH_MULTIBYTE_CHAR
	movl	%eax, -412(%rbp)        # 4-byte Spill
	jmp	.LBB28_203
.LBB28_185:                             # %cond.false.587
                                        #   in Loop: Header=BB28_168 Depth=2
	movb	$1, %al
	testb	$1, %al
	jne	.LBB28_186
	jmp	.LBB28_190
.LBB28_186:                             # %cond.true.588
                                        #   in Loop: Header=BB28_168 Depth=2
	movq	-48(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB28_188
# BB#187:                               # %cond.true.593
                                        #   in Loop: Header=BB28_168 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	jmp	.LBB28_189
.LBB28_188:                             # %cond.false.596
                                        #   in Loop: Header=BB28_168 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -424(%rbp)        # 8-byte Spill
	jmp	.LBB28_189
.LBB28_189:                             # %cond.end.597
                                        #   in Loop: Header=BB28_168 Depth=2
	movq	-424(%rbp), %rax        # 8-byte Reload
	addq	-48(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$0, %edx
	cmpl	$128, %edx
	jb	.LBB28_194
	jmp	.LBB28_198
.LBB28_190:                             # %cond.false.608
                                        #   in Loop: Header=BB28_168 Depth=2
	movq	-48(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB28_192
# BB#191:                               # %cond.true.613
                                        #   in Loop: Header=BB28_168 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	jmp	.LBB28_193
.LBB28_192:                             # %cond.false.616
                                        #   in Loop: Header=BB28_168 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -432(%rbp)        # 8-byte Spill
	jmp	.LBB28_193
.LBB28_193:                             # %cond.end.617
                                        #   in Loop: Header=BB28_168 Depth=2
	movq	-432(%rbp), %rax        # 8-byte Reload
	addq	-48(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, %eax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB28_198
.LBB28_194:                             # %cond.true.628
                                        #   in Loop: Header=BB28_168 Depth=2
	movq	-48(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB28_196
# BB#195:                               # %cond.true.633
                                        #   in Loop: Header=BB28_168 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	jmp	.LBB28_197
.LBB28_196:                             # %cond.false.636
                                        #   in Loop: Header=BB28_168 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -440(%rbp)        # 8-byte Spill
	jmp	.LBB28_197
.LBB28_197:                             # %cond.end.637
                                        #   in Loop: Header=BB28_168 Depth=2
	movq	-440(%rbp), %rax        # 8-byte Reload
	addq	-48(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, -444(%rbp)        # 4-byte Spill
	jmp	.LBB28_202
.LBB28_198:                             # %cond.false.645
                                        #   in Loop: Header=BB28_168 Depth=2
	movq	-48(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB28_200
# BB#199:                               # %cond.true.650
                                        #   in Loop: Header=BB28_168 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	jmp	.LBB28_201
.LBB28_200:                             # %cond.false.653
                                        #   in Loop: Header=BB28_168 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -456(%rbp)        # 8-byte Spill
	jmp	.LBB28_201
.LBB28_201:                             # %cond.end.654
                                        #   in Loop: Header=BB28_168 Depth=2
	movq	-456(%rbp), %rax        # 8-byte Reload
	addq	-48(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$4194048, %edx          # imm = 0x3FFF00
	movl	%edx, -444(%rbp)        # 4-byte Spill
.LBB28_202:                             # %cond.end.663
                                        #   in Loop: Header=BB28_168 Depth=2
	movl	-444(%rbp), %eax        # 4-byte Reload
	movl	%eax, -412(%rbp)        # 4-byte Spill
.LBB28_203:                             # %cond.end.665
                                        #   in Loop: Header=BB28_168 Depth=2
	movl	-412(%rbp), %eax        # 4-byte Reload
	movl	$1, %esi
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %edi
	callq	syntax_property
	movl	%eax, -52(%rbp)
	cmpl	$2, -52(%rbp)
	je	.LBB28_207
# BB#204:                               # %land.lhs.true.670
                                        #   in Loop: Header=BB28_168 Depth=2
	testb	$1, globals+3439
	je	.LBB28_208
# BB#205:                               # %lor.lhs.false.672
                                        #   in Loop: Header=BB28_168 Depth=2
	cmpl	$9, -52(%rbp)
	je	.LBB28_207
# BB#206:                               # %land.lhs.true.675
                                        #   in Loop: Header=BB28_168 Depth=2
	cmpl	$10, -52(%rbp)
	jne	.LBB28_208
.LBB28_207:                             # %lor.lhs.false.678
                                        #   in Loop: Header=BB28_168 Depth=2
	movl	-56(%rbp), %edi
	movl	-60(%rbp), %esi
	callq	word_boundary_p
	testb	$1, %al
	jne	.LBB28_208
	jmp	.LBB28_228
.LBB28_208:                             # %if.then.681
                                        #   in Loop: Header=BB28_117 Depth=1
	jmp	.LBB28_209
.LBB28_209:                             # %do.body.682
                                        #   in Loop: Header=BB28_117 Depth=1
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-464(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB28_211
# BB#210:                               # %if.then.688
                                        #   in Loop: Header=BB28_117 Depth=1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB28_226
.LBB28_211:                             # %if.else.690
                                        #   in Loop: Header=BB28_117 Depth=1
	jmp	.LBB28_212
.LBB28_212:                             # %do.body.691
                                        #   in Loop: Header=BB28_117 Depth=1
	movq	-48(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB28_214
# BB#213:                               # %cond.true.697
                                        #   in Loop: Header=BB28_117 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	jmp	.LBB28_215
.LBB28_214:                             # %cond.false.700
                                        #   in Loop: Header=BB28_117 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -472(%rbp)        # 8-byte Spill
	jmp	.LBB28_215
.LBB28_215:                             # %cond.end.701
                                        #   in Loop: Header=BB28_117 Depth=1
	movq	-472(%rbp), %rax        # 8-byte Reload
	addq	-48(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movzbl	(%rax), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	jne	.LBB28_217
# BB#216:                               # %cond.true.711
                                        #   in Loop: Header=BB28_117 Depth=1
	movl	$1, %eax
	movl	%eax, -476(%rbp)        # 4-byte Spill
	jmp	.LBB28_224
.LBB28_217:                             # %cond.false.712
                                        #   in Loop: Header=BB28_117 Depth=1
	movq	-120(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB28_219
# BB#218:                               # %cond.true.716
                                        #   in Loop: Header=BB28_117 Depth=1
	movl	$2, %eax
	movl	%eax, -480(%rbp)        # 4-byte Spill
	jmp	.LBB28_223
.LBB28_219:                             # %cond.false.717
                                        #   in Loop: Header=BB28_117 Depth=1
	movq	-120(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB28_221
# BB#220:                               # %cond.true.721
                                        #   in Loop: Header=BB28_117 Depth=1
	movl	$3, %eax
	movl	%eax, -484(%rbp)        # 4-byte Spill
	jmp	.LBB28_222
.LBB28_221:                             # %cond.false.722
                                        #   in Loop: Header=BB28_117 Depth=1
	movl	$5, %eax
	movl	$4, %ecx
	movq	-120(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$8, %esi
	cmpl	$0, %esi
	setne	%dil
	xorb	$-1, %dil
	testb	$1, %dil
	cmovnel	%ecx, %eax
	movl	%eax, -484(%rbp)        # 4-byte Spill
.LBB28_222:                             # %cond.end.728
                                        #   in Loop: Header=BB28_117 Depth=1
	movl	-484(%rbp), %eax        # 4-byte Reload
	movl	%eax, -480(%rbp)        # 4-byte Spill
.LBB28_223:                             # %cond.end.730
                                        #   in Loop: Header=BB28_117 Depth=1
	movl	-480(%rbp), %eax        # 4-byte Reload
	movl	%eax, -476(%rbp)        # 4-byte Spill
.LBB28_224:                             # %cond.end.732
                                        #   in Loop: Header=BB28_117 Depth=1
	movl	-476(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	addq	-48(%rbp), %rcx
	movq	%rcx, -48(%rbp)
# BB#225:                               # %do.end.736
                                        #   in Loop: Header=BB28_117 Depth=1
	jmp	.LBB28_226
.LBB28_226:                             # %if.end.737
                                        #   in Loop: Header=BB28_117 Depth=1
	jmp	.LBB28_227
.LBB28_227:                             # %do.end.738
                                        #   in Loop: Header=BB28_117 Depth=1
	jmp	.LBB28_229
.LBB28_228:                             # %if.end.739
                                        #   in Loop: Header=BB28_168 Depth=2
	movl	-56(%rbp), %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB28_168
.LBB28_229:                             # %while.end.740
                                        #   in Loop: Header=BB28_117 Depth=1
	jmp	.LBB28_230
.LBB28_230:                             # %if.end.741
                                        #   in Loop: Header=BB28_117 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB28_117
.LBB28_231:                             # %while.end.743
	movb	$0, immediate_quit
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB28_232:                             # %return
	movq	-8(%rbp), %rax
	addq	$496, %rsp              # imm = 0x1F0
	popq	%rbp
	retq
.Lfunc_end28:
	.size	scan_words, .Lfunc_end28-scan_words
	.cfi_endproc

	.align	16, 0x90
	.type	SETUP_SYNTAX_TABLE,@function
SETUP_SYNTAX_TABLE:                     # @SETUP_SYNTAX_TABLE
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
	movq	%rsi, -16(%rbp)
	callq	SETUP_BUFFER_SYNTAX_TABLE
	xorl	%edi, %edi
	movq	current_buffer, %rsi
	movq	752(%rsi), %rsi
	movq	%rsi, gl_state+56
	movq	current_buffer, %rsi
	movq	768(%rsi), %rsi
	addq	$1, %rsi
	movq	%rsi, gl_state+64
	callq	builtin_lisp_symbol
	movq	%rax, gl_state
	movq	$0, gl_state+96
	testb	$1, globals+3420
	je	.LBB29_7
# BB#1:                                 # %if.then
	cmpq	$0, -16(%rbp)
	jle	.LBB29_3
# BB#2:                                 # %if.then.1
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$1, %esi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	update_syntax_table_forward
	jmp	.LBB29_6
.LBB29_3:                               # %if.else
	movq	-8(%rbp), %rax
	movq	current_buffer, %rcx
	cmpq	752(%rcx), %rax
	jle	.LBB29_5
# BB#4:                                 # %if.then.5
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	subq	$1, %rax
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$1, %edx
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rcx
	callq	update_syntax_table
	movq	-8(%rbp), %rax
	subq	$1, %rax
	movq	%rax, %rdi
	callq	parse_sexp_propertize
.LBB29_5:                               # %if.end
	jmp	.LBB29_6
.LBB29_6:                               # %if.end.8
	jmp	.LBB29_7
.LBB29_7:                               # %if.end.9
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	SETUP_SYNTAX_TABLE, .Lfunc_end29-SETUP_SYNTAX_TABLE
	.cfi_endproc

	.globl	Fforward_word
	.align	16, 0x90
	.type	Fforward_word,@function
Fforward_word:                          # @Fforward_word
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
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB30_2
# BB#1:                                 # %if.then
	movl	$1, %eax
	movl	%eax, %edi
	callq	make_natnum
	movq	%rax, -8(%rbp)
	jmp	.LBB30_6
.LBB30_2:                               # %if.else
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB30_4
# BB#3:                                 # %cond.true
	jmp	.LBB30_5
.LBB30_4:                               # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB30_5:                               # %cond.end
	jmp	.LBB30_6
.LBB30_6:                               # %if.end
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	-8(%rbp), %rcx
	sarq	$2, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	scan_words
	movq	%rax, -24(%rbp)
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB30_11
# BB#7:                                 # %if.then.9
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jle	.LBB30_9
# BB#8:                                 # %cond.true.13
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB30_10
.LBB30_9:                               # %cond.false.14
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB30_10:                              # %cond.end.15
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
.LBB30_11:                              # %if.end.16
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	current_buffer, %rcx
	movq	736(%rcx), %rcx
	addq	$0, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	-80(%rbp), %rdx         # 8-byte Reload
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	%rax, %r8
	callq	Fconstrain_to_field
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	set_point
	movq	-32(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB30_13
# BB#12:                                # %cond.true.29
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB30_14
.LBB30_13:                              # %cond.false.31
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB30_14:                              # %cond.end.33
	movq	-96(%rbp), %rax         # 8-byte Reload
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	Fforward_word, .Lfunc_end30-Fforward_word
	.cfi_endproc

	.globl	Fskip_chars_forward
	.align	16, 0x90
	.type	Fskip_chars_forward,@function
Fskip_chars_forward:                    # @Fskip_chars_forward
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
	movl	$1, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movl	%eax, %edi
	movl	%eax, %ecx
	callq	skip_chars
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	Fskip_chars_forward, .Lfunc_end31-Fskip_chars_forward
	.cfi_endproc

	.align	16, 0x90
	.type	skip_chars,@function
skip_chars:                             # @skip_chars
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
	subq	$1120, %rsp             # imm = 0x460
	movb	%cl, %al
	movb	%dil, %r8b
	andb	$1, %r8b
	movb	%r8b, -1(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	andb	$1, %al
	movb	%al, -25(%rbp)
	movl	$0, -300(%rbp)
	movb	$0, -301(%rbp)
	movq	$16384, -368(%rbp)      # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -376(%rbp)
	movb	$0, -377(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHECK_STRING
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -360(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -728(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-728(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB32_5
# BB#1:                                 # %if.then
	testb	$1, -1(%rbp)
	je	.LBB32_3
# BB#2:                                 # %cond.true
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	%rax, -736(%rbp)        # 8-byte Spill
	jmp	.LBB32_4
.LBB32_3:                               # %cond.false
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	%rax, -736(%rbp)        # 8-byte Spill
.LBB32_4:                               # %cond.end
	movq	-736(%rbp), %rax        # 8-byte Reload
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB32_15
.LBB32_5:                               # %if.else
	jmp	.LBB32_6
.LBB32_6:                               # %do.body
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB32_9
# BB#7:                                 # %land.lhs.true
	movq	-24(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB32_9
# BB#8:                                 # %if.then.9
	movq	-24(%rbp), %rdi
	callq	marker_position
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -24(%rbp)
	jmp	.LBB32_13
.LBB32_9:                               # %if.else.12
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB32_11
# BB#10:                                # %cond.true.18
	jmp	.LBB32_12
.LBB32_11:                              # %cond.false.19
	movl	$558, %edi              # imm = 0x22E
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -744(%rbp)        # 8-byte Spill
.LBB32_12:                              # %cond.end.21
	jmp	.LBB32_13
.LBB32_13:                              # %if.end
	jmp	.LBB32_14
.LBB32_14:                              # %do.end
	jmp	.LBB32_15
.LBB32_15:                              # %if.end.22
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	jle	.LBB32_17
# BB#16:                                # %if.then.26
	movq	current_buffer, %rax
	movq	768(%rax), %rdi
	callq	make_natnum
	movq	%rax, -24(%rbp)
.LBB32_17:                              # %if.end.29
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	movq	current_buffer, %rcx
	cmpq	752(%rcx), %rax
	jge	.LBB32_19
# BB#18:                                # %if.then.34
	movq	current_buffer, %rax
	movq	752(%rax), %rdi
	callq	make_natnum
	movq	%rax, -24(%rbp)
.LBB32_19:                              # %if.end.37
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -752(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movb	%dil, %cl
	movq	-752(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	movb	%cl, -753(%rbp)         # 1-byte Spill
	je	.LBB32_21
# BB#20:                                # %land.rhs
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	movq	current_buffer, %rcx
	movq	736(%rcx), %rcx
	addq	$0, %rcx
	subq	%rcx, %rax
	movq	current_buffer, %rdi
	movq	-24(%rbp), %rcx
	sarq	$2, %rcx
	movq	%rcx, %rsi
	movq	%rax, -768(%rbp)        # 8-byte Spill
	callq	buf_charpos_to_bytepos
	movq	current_buffer, %rcx
	movq	744(%rcx), %rcx
	addq	$0, %rcx
	subq	%rcx, %rax
	movq	-768(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	setne	%dl
	movb	%dl, -753(%rbp)         # 1-byte Spill
.LBB32_21:                              # %land.end
	movb	-753(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -321(%rbp)
	movq	-16(%rbp), %rdi
	callq	SBYTES
	movq	-16(%rbp), %rdi
	movq	%rax, -776(%rbp)        # 8-byte Spill
	callq	SCHARS
	xorl	%esi, %esi
	movl	$256, %ecx              # imm = 0x100
	movl	%ecx, %edx
	leaq	-288(%rbp), %rdi
	movq	-776(%rbp), %r8         # 8-byte Reload
	cmpq	%rax, %r8
	setg	%r9b
	andb	$1, %r9b
	movb	%r9b, -322(%rbp)
	callq	memset
	movq	-16(%rbp), %rdi
	callq	SDATA
	movq	%rax, -344(%rbp)
	movq	-16(%rbp), %rdi
	callq	SBYTES
	movq	%rax, -336(%rbp)
	movq	$0, -320(%rbp)
	movq	-320(%rbp), %rax
	cmpq	-336(%rbp), %rax
	jge	.LBB32_24
# BB#22:                                # %land.lhs.true.59
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	SREF
	movzbl	%al, %ecx
	cmpl	$94, %ecx
	jne	.LBB32_24
# BB#23:                                # %if.then.64
	movb	$1, -301(%rbp)
	movq	-320(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -320(%rbp)
.LBB32_24:                              # %if.end.65
	testb	$1, -322(%rbp)
	jne	.LBB32_114
# BB#25:                                # %if.then.67
	movb	$0, -378(%rbp)
.LBB32_26:                              # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB32_34 Depth 2
                                        #     Child Loop BB32_58 Depth 2
	movq	-320(%rbp), %rax
	cmpq	-336(%rbp), %rax
	jge	.LBB32_72
# BB#27:                                # %while.body
                                        #   in Loop: Header=BB32_26 Depth=1
	movq	-320(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -320(%rbp)
	movq	-344(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, -32(%rbp)
	testb	$1, -25(%rbp)
	je	.LBB32_46
# BB#28:                                # %land.lhs.true.74
                                        #   in Loop: Header=BB32_26 Depth=1
	cmpl	$91, -32(%rbp)
	jne	.LBB32_46
# BB#29:                                # %land.lhs.true.77
                                        #   in Loop: Header=BB32_26 Depth=1
	movq	-320(%rbp), %rax
	cmpq	-336(%rbp), %rax
	jge	.LBB32_46
# BB#30:                                # %land.lhs.true.80
                                        #   in Loop: Header=BB32_26 Depth=1
	movq	-320(%rbp), %rax
	movq	-344(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$58, %edx
	jne	.LBB32_46
# BB#31:                                # %if.then.85
                                        #   in Loop: Header=BB32_26 Depth=1
	movq	-344(%rbp), %rax
	addq	-320(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -392(%rbp)
	movq	-392(%rbp), %rax
	movq	%rax, -400(%rbp)
	movq	-344(%rbp), %rax
	addq	-336(%rbp), %rax
	addq	$-2, %rax
	movq	%rax, -408(%rbp)
	movq	-408(%rbp), %rax
	movq	-392(%rbp), %rcx
	subq	%rcx, %rax
	cmpq	$9, %rax
	jle	.LBB32_33
# BB#32:                                # %if.then.91
                                        #   in Loop: Header=BB32_26 Depth=1
	movq	-392(%rbp), %rax
	addq	$9, %rax
	movq	%rax, -408(%rbp)
.LBB32_33:                              # %if.end.93
                                        #   in Loop: Header=BB32_26 Depth=1
	jmp	.LBB32_34
.LBB32_34:                              # %while.cond.94
                                        #   Parent Loop BB32_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-400(%rbp), %rdx
	cmpq	-408(%rbp), %rdx
	movb	%cl, -777(%rbp)         # 1-byte Spill
	jae	.LBB32_37
# BB#35:                                # %land.lhs.true.97
                                        #   in Loop: Header=BB32_34 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-400(%rbp), %rdx
	movzbl	(%rdx), %eax
	cmpl	$97, %eax
	movb	%cl, -777(%rbp)         # 1-byte Spill
	jl	.LBB32_37
# BB#36:                                # %land.rhs.101
                                        #   in Loop: Header=BB32_34 Depth=2
	movq	-400(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$122, %ecx
	setle	%dl
	movb	%dl, -777(%rbp)         # 1-byte Spill
.LBB32_37:                              # %land.end.105
                                        #   in Loop: Header=BB32_34 Depth=2
	movb	-777(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB32_38
	jmp	.LBB32_39
.LBB32_38:                              # %while.body.106
                                        #   in Loop: Header=BB32_34 Depth=2
	movq	-400(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -400(%rbp)
	jmp	.LBB32_34
.LBB32_39:                              # %while.end
                                        #   in Loop: Header=BB32_26 Depth=1
	movq	-400(%rbp), %rax
	cmpq	-392(%rbp), %rax
	je	.LBB32_42
# BB#40:                                # %lor.lhs.false
                                        #   in Loop: Header=BB32_26 Depth=1
	movq	-400(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$58, %ecx
	jne	.LBB32_42
# BB#41:                                # %lor.lhs.false.112
                                        #   in Loop: Header=BB32_26 Depth=1
	movq	-400(%rbp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$93, %ecx
	je	.LBB32_43
.LBB32_42:                              # %if.then.117
                                        #   in Loop: Header=BB32_26 Depth=1
	jmp	.LBB32_47
.LBB32_43:                              # %if.end.118
                                        #   in Loop: Header=BB32_26 Depth=1
	leaq	-418(%rbp), %rax
	movq	%rax, %rcx
	movq	-392(%rbp), %rsi
	movq	-400(%rbp), %rdx
	movq	-392(%rbp), %rdi
	subq	%rdi, %rdx
	movq	%rcx, %rdi
	movq	%rax, -792(%rbp)        # 8-byte Spill
	callq	memcpy
	movq	-400(%rbp), %rax
	movq	-392(%rbp), %rcx
	subq	%rcx, %rax
	movb	$0, -418(%rbp,%rax)
	movq	-792(%rbp), %rdi        # 8-byte Reload
	callq	re_wctype
	movl	%eax, -424(%rbp)
	cmpl	$0, -424(%rbp)
	jne	.LBB32_45
# BB#44:                                # %if.then.129
	movabsq	$.L.str.60, %rdi
	movb	$0, %al
	callq	error
.LBB32_45:                              # %if.end.130
                                        #   in Loop: Header=BB32_26 Depth=1
	movl	-424(%rbp), %eax
	movl	%eax, %ecx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	-360(%rbp), %rsi
	movq	%rcx, %rdi
	callq	Fcons
	movq	%rax, -360(%rbp)
	movq	-400(%rbp), %rax
	addq	$2, %rax
	movq	-344(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -320(%rbp)
	jmp	.LBB32_26
.LBB32_46:                              # %if.end.139
                                        #   in Loop: Header=BB32_26 Depth=1
	jmp	.LBB32_47
.LBB32_47:                              # %not_a_class_name
                                        #   in Loop: Header=BB32_26 Depth=1
	cmpl	$92, -32(%rbp)
	jne	.LBB32_51
# BB#48:                                # %if.then.142
                                        #   in Loop: Header=BB32_26 Depth=1
	movq	-320(%rbp), %rax
	cmpq	-336(%rbp), %rax
	jne	.LBB32_50
# BB#49:                                # %if.then.145
	jmp	.LBB32_72
.LBB32_50:                              # %if.end.146
                                        #   in Loop: Header=BB32_26 Depth=1
	movq	-320(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -320(%rbp)
	movq	-344(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, -32(%rbp)
.LBB32_51:                              # %if.end.150
                                        #   in Loop: Header=BB32_26 Depth=1
	movq	-320(%rbp), %rax
	addq	$1, %rax
	cmpq	-336(%rbp), %rax
	jge	.LBB32_66
# BB#52:                                # %land.lhs.true.154
                                        #   in Loop: Header=BB32_26 Depth=1
	movq	-320(%rbp), %rax
	movq	-344(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$45, %edx
	jne	.LBB32_66
# BB#53:                                # %if.then.159
                                        #   in Loop: Header=BB32_26 Depth=1
	movq	-320(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -320(%rbp)
	movq	-320(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -320(%rbp)
	movq	-344(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, -428(%rbp)
	cmpl	$92, -428(%rbp)
	jne	.LBB32_56
# BB#54:                                # %land.lhs.true.166
                                        #   in Loop: Header=BB32_26 Depth=1
	movq	-320(%rbp), %rax
	cmpq	-336(%rbp), %rax
	jge	.LBB32_56
# BB#55:                                # %if.then.169
                                        #   in Loop: Header=BB32_26 Depth=1
	movq	-320(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -320(%rbp)
	movq	-344(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, -428(%rbp)
.LBB32_56:                              # %if.end.173
                                        #   in Loop: Header=BB32_26 Depth=1
	movl	-32(%rbp), %eax
	cmpl	-428(%rbp), %eax
	jg	.LBB32_65
# BB#57:                                # %if.then.176
                                        #   in Loop: Header=BB32_26 Depth=1
	movl	-428(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -432(%rbp)
.LBB32_58:                              # %while.cond.178
                                        #   Parent Loop BB32_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-32(%rbp), %eax
	cmpl	-432(%rbp), %eax
	jge	.LBB32_60
# BB#59:                                # %while.body.181
                                        #   in Loop: Header=BB32_58 Depth=2
	movl	-32(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -32(%rbp)
	movslq	%eax, %rdx
	movb	$1, -288(%rbp,%rdx)
	jmp	.LBB32_58
.LBB32_60:                              # %while.end.184
                                        #   in Loop: Header=BB32_26 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB32_61
	jmp	.LBB32_62
.LBB32_61:                              # %cond.true.185
                                        #   in Loop: Header=BB32_26 Depth=1
	movl	-428(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB32_64
	jmp	.LBB32_63
.LBB32_62:                              # %cond.false.189
                                        #   in Loop: Header=BB32_26 Depth=1
	movslq	-428(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jb	.LBB32_64
.LBB32_63:                              # %if.then.194
                                        #   in Loop: Header=BB32_26 Depth=1
	movb	$1, -378(%rbp)
.LBB32_64:                              # %if.end.195
                                        #   in Loop: Header=BB32_26 Depth=1
	jmp	.LBB32_65
.LBB32_65:                              # %if.end.196
                                        #   in Loop: Header=BB32_26 Depth=1
	jmp	.LBB32_71
.LBB32_66:                              # %if.else.197
                                        #   in Loop: Header=BB32_26 Depth=1
	movb	$1, %al
	movslq	-32(%rbp), %rcx
	movb	$1, -288(%rbp,%rcx)
	testb	$1, %al
	jne	.LBB32_67
	jmp	.LBB32_68
.LBB32_67:                              # %cond.true.200
                                        #   in Loop: Header=BB32_26 Depth=1
	movl	-32(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB32_70
	jmp	.LBB32_69
.LBB32_68:                              # %cond.false.204
                                        #   in Loop: Header=BB32_26 Depth=1
	movslq	-32(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jb	.LBB32_70
.LBB32_69:                              # %if.then.209
                                        #   in Loop: Header=BB32_26 Depth=1
	movb	$1, -378(%rbp)
.LBB32_70:                              # %if.end.210
                                        #   in Loop: Header=BB32_26 Depth=1
	jmp	.LBB32_71
.LBB32_71:                              # %if.end.211
                                        #   in Loop: Header=BB32_26 Depth=1
	jmp	.LBB32_26
.LBB32_72:                              # %while.end.212
	testb	$1, -321(%rbp)
	je	.LBB32_113
# BB#73:                                # %land.lhs.true.215
	testb	$1, -378(%rbp)
	je	.LBB32_113
# BB#74:                                # %if.then.218
	xorl	%esi, %esi
	movl	$128, %eax
	movl	%eax, %ecx
	leaq	-288(%rbp), %rdx
	leaq	-576(%rbp), %rdi
	movq	%rdx, %r8
	addq	$128, %r8
	movl	%esi, -796(%rbp)        # 4-byte Spill
	movq	%r8, %rsi
	movq	%rdx, -808(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	%rcx, -816(%rbp)        # 8-byte Spill
	callq	memcpy
	movb	$0, -448(%rbp)
	movq	-808(%rbp), %rcx        # 8-byte Reload
	addq	$128, %rcx
	movq	%rcx, %rdi
	movl	-796(%rbp), %esi        # 4-byte Reload
	movq	-816(%rbp), %rdx        # 8-byte Reload
	callq	memset
# BB#75:                                # %do.body.224
	movl	$128, %eax
	movl	%eax, %ecx
	movq	-368(%rbp), %rdx
	shrq	$2, %rdx
	shrq	$1, %rdx
	cmpq	%rdx, %rcx
	ja	.LBB32_77
# BB#76:                                # %if.then.228
	movq	-368(%rbp), %rax
	addq	$-1024, %rax            # imm = 0xFFFFFFFFFFFFFC00
	movq	%rax, -368(%rbp)
	movq	%rsp, %rax
	addq	$-1024, %rax            # imm = 0xFFFFFFFFFFFFFC00
	movq	%rax, %rsp
	movq	%rax, -296(%rbp)
	jmp	.LBB32_78
.LBB32_77:                              # %if.else.230
	movl	$128, %eax
	movl	%eax, %edi
	movl	$8, %eax
	movl	%eax, %esi
	callq	xnmalloc
	movabsq	$xfree, %rdi
	movq	%rax, -296(%rbp)
	movb	$1, -377(%rbp)
	movq	-296(%rbp), %rax
	movq	%rax, %rsi
	callq	record_unwind_protect_ptr
.LBB32_78:                              # %if.end.232
	jmp	.LBB32_79
.LBB32_79:                              # %do.end.233
	movq	$0, -312(%rbp)
.LBB32_80:                              # %while.cond.234
                                        # =>This Inner Loop Header: Depth=1
	movl	$128, %eax
	movl	%eax, %ecx
	leaq	-576(%rbp), %rdx
	addq	-312(%rbp), %rdx
	subq	-312(%rbp), %rcx
	movl	$1, %esi
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	callq	memchr
	movq	%rax, -440(%rbp)
	cmpq	$0, %rax
	je	.LBB32_112
# BB#81:                                # %while.body.240
                                        #   in Loop: Header=BB32_80 Depth=1
	leaq	-576(%rbp), %rax
	movq	-440(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -312(%rbp)
	movq	-312(%rbp), %rax
	addq	$128, %rax
	addq	$4194048, %rax          # imm = 0x3FFF00
	movl	%eax, %edx
	movl	%edx, -32(%rbp)
	movq	-440(%rbp), %rdi
	callq	strlen
	addq	-312(%rbp), %rax
	movq	%rax, -312(%rbp)
	movq	-312(%rbp), %rax
	addq	$128, %rax
	subq	$1, %rax
	addq	$4194048, %rax          # imm = 0x3FFF00
	movl	%eax, %edx
	movl	%edx, -580(%rbp)
	movl	-32(%rbp), %edx
	movl	-300(%rbp), %esi
	movl	%esi, %r8d
	addl	$1, %r8d
	movl	%r8d, -300(%rbp)
	movslq	%esi, %rax
	movq	-296(%rbp), %rcx
	movl	%edx, (%rcx,%rax,4)
	movl	-580(%rbp), %edx
	movl	-300(%rbp), %esi
	movl	%esi, %r8d
	addl	$1, %r8d
	movl	%r8d, -300(%rbp)
	movslq	%esi, %rax
	movq	-296(%rbp), %rcx
	movl	%edx, (%rcx,%rax,4)
	cmpl	$127, -32(%rbp)
	jg	.LBB32_83
# BB#82:                                # %cond.true.263
                                        #   in Loop: Header=BB32_80 Depth=1
	movl	-32(%rbp), %eax
	movl	%eax, -820(%rbp)        # 4-byte Spill
	jmp	.LBB32_96
.LBB32_83:                              # %cond.false.264
                                        #   in Loop: Header=BB32_80 Depth=1
	cmpl	$2047, -32(%rbp)        # imm = 0x7FF
	jg	.LBB32_85
# BB#84:                                # %cond.true.267
                                        #   in Loop: Header=BB32_80 Depth=1
	movl	-32(%rbp), %eax
	sarl	$6, %eax
	orl	$192, %eax
	movl	%eax, -824(%rbp)        # 4-byte Spill
	jmp	.LBB32_95
.LBB32_85:                              # %cond.false.269
                                        #   in Loop: Header=BB32_80 Depth=1
	cmpl	$65535, -32(%rbp)       # imm = 0xFFFF
	jg	.LBB32_87
# BB#86:                                # %cond.true.272
                                        #   in Loop: Header=BB32_80 Depth=1
	movl	-32(%rbp), %eax
	sarl	$12, %eax
	orl	$224, %eax
	movl	%eax, -828(%rbp)        # 4-byte Spill
	jmp	.LBB32_94
.LBB32_87:                              # %cond.false.275
                                        #   in Loop: Header=BB32_80 Depth=1
	cmpl	$2097151, -32(%rbp)     # imm = 0x1FFFFF
	jg	.LBB32_89
# BB#88:                                # %cond.true.278
                                        #   in Loop: Header=BB32_80 Depth=1
	movl	-32(%rbp), %eax
	sarl	$18, %eax
	orl	$240, %eax
	movl	%eax, -832(%rbp)        # 4-byte Spill
	jmp	.LBB32_93
.LBB32_89:                              # %cond.false.281
                                        #   in Loop: Header=BB32_80 Depth=1
	cmpl	$4194175, -32(%rbp)     # imm = 0x3FFF7F
	jg	.LBB32_91
# BB#90:                                # %cond.true.284
                                        #   in Loop: Header=BB32_80 Depth=1
	movl	$248, %eax
	movl	%eax, -836(%rbp)        # 4-byte Spill
	jmp	.LBB32_92
.LBB32_91:                              # %cond.false.285
                                        #   in Loop: Header=BB32_80 Depth=1
	movl	-32(%rbp), %eax
	sarl	$6, %eax
	andl	$1, %eax
	orl	$192, %eax
	movl	%eax, -836(%rbp)        # 4-byte Spill
.LBB32_92:                              # %cond.end.289
                                        #   in Loop: Header=BB32_80 Depth=1
	movl	-836(%rbp), %eax        # 4-byte Reload
	movl	%eax, -832(%rbp)        # 4-byte Spill
.LBB32_93:                              # %cond.end.291
                                        #   in Loop: Header=BB32_80 Depth=1
	movl	-832(%rbp), %eax        # 4-byte Reload
	movl	%eax, -828(%rbp)        # 4-byte Spill
.LBB32_94:                              # %cond.end.293
                                        #   in Loop: Header=BB32_80 Depth=1
	movl	-828(%rbp), %eax        # 4-byte Reload
	movl	%eax, -824(%rbp)        # 4-byte Spill
.LBB32_95:                              # %cond.end.295
                                        #   in Loop: Header=BB32_80 Depth=1
	movl	-824(%rbp), %eax        # 4-byte Reload
	movl	%eax, -820(%rbp)        # 4-byte Spill
.LBB32_96:                              # %cond.end.297
                                        #   in Loop: Header=BB32_80 Depth=1
	movl	-820(%rbp), %eax        # 4-byte Reload
	leaq	-288(%rbp), %rcx
	movl	%eax, -584(%rbp)
	movslq	-584(%rbp), %rdx
	addq	%rdx, %rcx
	cmpl	$127, -580(%rbp)
	movq	%rcx, -848(%rbp)        # 8-byte Spill
	jg	.LBB32_98
# BB#97:                                # %cond.true.303
                                        #   in Loop: Header=BB32_80 Depth=1
	movl	-580(%rbp), %eax
	movl	%eax, -852(%rbp)        # 4-byte Spill
	jmp	.LBB32_111
.LBB32_98:                              # %cond.false.304
                                        #   in Loop: Header=BB32_80 Depth=1
	cmpl	$2047, -580(%rbp)       # imm = 0x7FF
	jg	.LBB32_100
# BB#99:                                # %cond.true.307
                                        #   in Loop: Header=BB32_80 Depth=1
	movl	-580(%rbp), %eax
	sarl	$6, %eax
	orl	$192, %eax
	movl	%eax, -856(%rbp)        # 4-byte Spill
	jmp	.LBB32_110
.LBB32_100:                             # %cond.false.310
                                        #   in Loop: Header=BB32_80 Depth=1
	cmpl	$65535, -580(%rbp)      # imm = 0xFFFF
	jg	.LBB32_102
# BB#101:                               # %cond.true.313
                                        #   in Loop: Header=BB32_80 Depth=1
	movl	-580(%rbp), %eax
	sarl	$12, %eax
	orl	$224, %eax
	movl	%eax, -860(%rbp)        # 4-byte Spill
	jmp	.LBB32_109
.LBB32_102:                             # %cond.false.316
                                        #   in Loop: Header=BB32_80 Depth=1
	cmpl	$2097151, -580(%rbp)    # imm = 0x1FFFFF
	jg	.LBB32_104
# BB#103:                               # %cond.true.319
                                        #   in Loop: Header=BB32_80 Depth=1
	movl	-580(%rbp), %eax
	sarl	$18, %eax
	orl	$240, %eax
	movl	%eax, -864(%rbp)        # 4-byte Spill
	jmp	.LBB32_108
.LBB32_104:                             # %cond.false.322
                                        #   in Loop: Header=BB32_80 Depth=1
	cmpl	$4194175, -580(%rbp)    # imm = 0x3FFF7F
	jg	.LBB32_106
# BB#105:                               # %cond.true.325
                                        #   in Loop: Header=BB32_80 Depth=1
	movl	$248, %eax
	movl	%eax, -868(%rbp)        # 4-byte Spill
	jmp	.LBB32_107
.LBB32_106:                             # %cond.false.326
                                        #   in Loop: Header=BB32_80 Depth=1
	movl	-580(%rbp), %eax
	sarl	$6, %eax
	andl	$1, %eax
	orl	$192, %eax
	movl	%eax, -868(%rbp)        # 4-byte Spill
.LBB32_107:                             # %cond.end.330
                                        #   in Loop: Header=BB32_80 Depth=1
	movl	-868(%rbp), %eax        # 4-byte Reload
	movl	%eax, -864(%rbp)        # 4-byte Spill
.LBB32_108:                             # %cond.end.332
                                        #   in Loop: Header=BB32_80 Depth=1
	movl	-864(%rbp), %eax        # 4-byte Reload
	movl	%eax, -860(%rbp)        # 4-byte Spill
.LBB32_109:                             # %cond.end.334
                                        #   in Loop: Header=BB32_80 Depth=1
	movl	-860(%rbp), %eax        # 4-byte Reload
	movl	%eax, -856(%rbp)        # 4-byte Spill
.LBB32_110:                             # %cond.end.336
                                        #   in Loop: Header=BB32_80 Depth=1
	movl	-856(%rbp), %eax        # 4-byte Reload
	movl	%eax, -852(%rbp)        # 4-byte Spill
.LBB32_111:                             # %cond.end.338
                                        #   in Loop: Header=BB32_80 Depth=1
	movl	-852(%rbp), %eax        # 4-byte Reload
	movl	$1, %esi
	subl	-584(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-848(%rbp), %rdi        # 8-byte Reload
	callq	memset
	jmp	.LBB32_80
.LBB32_112:                             # %while.end.343
	jmp	.LBB32_113
.LBB32_113:                             # %if.end.344
	jmp	.LBB32_260
.LBB32_114:                             # %if.else.345
	jmp	.LBB32_115
.LBB32_115:                             # %do.body.346
	movq	-16(%rbp), %rdi
	callq	SCHARS
	movq	-368(%rbp), %rdi
	shrq	$2, %rdi
	shrq	$1, %rdi
	cmpq	%rdi, %rax
	ja	.LBB32_117
# BB#116:                               # %if.then.352
	movq	-16(%rbp), %rdi
	callq	SCHARS
	shlq	$3, %rax
	movq	-368(%rbp), %rdi
	subq	%rax, %rdi
	movq	%rdi, -368(%rbp)
	movq	-16(%rbp), %rdi
	callq	SCHARS
	leaq	15(,%rax,8), %rax
	andq	$-16, %rax
	movq	%rsp, %rdi
	subq	%rax, %rdi
	movq	%rdi, %rsp
	movq	%rdi, -296(%rbp)
	jmp	.LBB32_118
.LBB32_117:                             # %if.else.357
	movq	-16(%rbp), %rdi
	callq	SCHARS
	movl	$8, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	xnmalloc
	movabsq	$xfree, %rdi
	movq	%rax, -296(%rbp)
	movb	$1, -377(%rbp)
	movq	-296(%rbp), %rax
	movq	%rax, %rsi
	callq	record_unwind_protect_ptr
.LBB32_118:                             # %if.end.360
	jmp	.LBB32_119
.LBB32_119:                             # %do.end.361
	jmp	.LBB32_120
.LBB32_120:                             # %while.cond.362
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB32_146 Depth 2
                                        #     Child Loop BB32_201 Depth 2
                                        #     Child Loop BB32_225 Depth 2
	movq	-320(%rbp), %rax
	cmpq	-336(%rbp), %rax
	jge	.LBB32_238
# BB#121:                               # %while.body.365
                                        #   in Loop: Header=BB32_120 Depth=1
	movq	-320(%rbp), %rax
	movq	-344(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, -588(%rbp)
	movq	-344(%rbp), %rax
	movq	-320(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	jne	.LBB32_123
# BB#122:                               # %cond.true.374
                                        #   in Loop: Header=BB32_120 Depth=1
	movl	$1, -348(%rbp)
	movq	-344(%rbp), %rax
	movq	-320(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	movl	%edx, -872(%rbp)        # 4-byte Spill
	jmp	.LBB32_130
.LBB32_123:                             # %cond.false.378
                                        #   in Loop: Header=BB32_120 Depth=1
	movq	-344(%rbp), %rax
	movq	-320(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	andl	$32, %edx
	cmpl	$0, %edx
	jne	.LBB32_125
# BB#124:                               # %cond.true.384
                                        #   in Loop: Header=BB32_120 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -348(%rbp)
	movq	-344(%rbp), %rdx
	movq	-320(%rbp), %rsi
	movzbl	(%rdx,%rsi), %edi
	andl	$31, %edi
	shll	$6, %edi
	movq	-344(%rbp), %rdx
	movq	-320(%rbp), %rsi
	movzbl	1(%rdx,%rsi), %r8d
	andl	$63, %r8d
	orl	%r8d, %edi
	movq	-344(%rbp), %rdx
	movq	-320(%rbp), %rsi
	movzbl	(%rdx,%rsi), %r8d
	cmpl	$194, %r8d
	cmovll	%ecx, %eax
	addl	%eax, %edi
	movl	%edi, -876(%rbp)        # 4-byte Spill
	jmp	.LBB32_129
.LBB32_125:                             # %cond.false.402
                                        #   in Loop: Header=BB32_120 Depth=1
	movq	-344(%rbp), %rax
	movq	-320(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	andl	$16, %edx
	cmpl	$0, %edx
	jne	.LBB32_127
# BB#126:                               # %cond.true.408
                                        #   in Loop: Header=BB32_120 Depth=1
	movl	$3, -348(%rbp)
	movq	-344(%rbp), %rax
	movq	-320(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	andl	$15, %edx
	shll	$12, %edx
	movq	-344(%rbp), %rax
	movq	-320(%rbp), %rcx
	movzbl	1(%rax,%rcx), %esi
	andl	$63, %esi
	shll	$6, %esi
	orl	%esi, %edx
	movq	-344(%rbp), %rax
	movq	-320(%rbp), %rcx
	movzbl	2(%rax,%rcx), %esi
	andl	$63, %esi
	orl	%esi, %edx
	movl	%edx, -880(%rbp)        # 4-byte Spill
	jmp	.LBB32_128
.LBB32_127:                             # %cond.false.425
                                        #   in Loop: Header=BB32_120 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-348(%rbp), %rdx
	movq	-344(%rbp), %rcx
	addq	-320(%rbp), %rcx
	movq	%rcx, %rdi
	callq	string_char
	movl	%eax, -880(%rbp)        # 4-byte Spill
.LBB32_128:                             # %cond.end.428
                                        #   in Loop: Header=BB32_120 Depth=1
	movl	-880(%rbp), %eax        # 4-byte Reload
	movl	%eax, -876(%rbp)        # 4-byte Spill
.LBB32_129:                             # %cond.end.430
                                        #   in Loop: Header=BB32_120 Depth=1
	movl	-876(%rbp), %eax        # 4-byte Reload
	movl	%eax, -872(%rbp)        # 4-byte Spill
.LBB32_130:                             # %cond.end.432
                                        #   in Loop: Header=BB32_120 Depth=1
	movl	-872(%rbp), %eax        # 4-byte Reload
	movl	%eax, -32(%rbp)
	movslq	-348(%rbp), %rcx
	addq	-320(%rbp), %rcx
	movq	%rcx, -320(%rbp)
	testb	$1, -25(%rbp)
	je	.LBB32_158
# BB#131:                               # %land.lhs.true.438
                                        #   in Loop: Header=BB32_120 Depth=1
	cmpl	$91, -32(%rbp)
	jne	.LBB32_158
# BB#132:                               # %land.lhs.true.441
                                        #   in Loop: Header=BB32_120 Depth=1
	movq	-320(%rbp), %rax
	cmpq	-336(%rbp), %rax
	jge	.LBB32_158
# BB#133:                               # %land.lhs.true.444
                                        #   in Loop: Header=BB32_120 Depth=1
	movq	-344(%rbp), %rax
	movq	-320(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	jne	.LBB32_135
# BB#134:                               # %cond.true.450
                                        #   in Loop: Header=BB32_120 Depth=1
	movq	-344(%rbp), %rax
	movq	-320(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	movl	%edx, -884(%rbp)        # 4-byte Spill
	jmp	.LBB32_142
.LBB32_135:                             # %cond.false.454
                                        #   in Loop: Header=BB32_120 Depth=1
	movq	-344(%rbp), %rax
	movq	-320(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	andl	$32, %edx
	cmpl	$0, %edx
	jne	.LBB32_137
# BB#136:                               # %cond.true.460
                                        #   in Loop: Header=BB32_120 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movq	-344(%rbp), %rdx
	movq	-320(%rbp), %rsi
	movzbl	(%rdx,%rsi), %edi
	andl	$31, %edi
	shll	$6, %edi
	movq	-344(%rbp), %rdx
	movq	-320(%rbp), %rsi
	movzbl	1(%rdx,%rsi), %r8d
	andl	$63, %r8d
	orl	%r8d, %edi
	movq	-344(%rbp), %rdx
	movq	-320(%rbp), %rsi
	movzbl	(%rdx,%rsi), %r8d
	cmpl	$194, %r8d
	cmovll	%ecx, %eax
	addl	%eax, %edi
	movl	%edi, -888(%rbp)        # 4-byte Spill
	jmp	.LBB32_141
.LBB32_137:                             # %cond.false.478
                                        #   in Loop: Header=BB32_120 Depth=1
	movq	-344(%rbp), %rax
	movq	-320(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	andl	$16, %edx
	cmpl	$0, %edx
	jne	.LBB32_139
# BB#138:                               # %cond.true.484
                                        #   in Loop: Header=BB32_120 Depth=1
	movq	-344(%rbp), %rax
	movq	-320(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	andl	$15, %edx
	shll	$12, %edx
	movq	-344(%rbp), %rax
	movq	-320(%rbp), %rcx
	movzbl	1(%rax,%rcx), %esi
	andl	$63, %esi
	shll	$6, %esi
	orl	%esi, %edx
	movq	-344(%rbp), %rax
	movq	-320(%rbp), %rcx
	movzbl	2(%rax,%rcx), %esi
	andl	$63, %esi
	orl	%esi, %edx
	movl	%edx, -892(%rbp)        # 4-byte Spill
	jmp	.LBB32_140
.LBB32_139:                             # %cond.false.501
                                        #   in Loop: Header=BB32_120 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-344(%rbp), %rdx
	addq	-320(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	string_char
	movl	%eax, -892(%rbp)        # 4-byte Spill
.LBB32_140:                             # %cond.end.504
                                        #   in Loop: Header=BB32_120 Depth=1
	movl	-892(%rbp), %eax        # 4-byte Reload
	movl	%eax, -888(%rbp)        # 4-byte Spill
.LBB32_141:                             # %cond.end.506
                                        #   in Loop: Header=BB32_120 Depth=1
	movl	-888(%rbp), %eax        # 4-byte Reload
	movl	%eax, -884(%rbp)        # 4-byte Spill
.LBB32_142:                             # %cond.end.508
                                        #   in Loop: Header=BB32_120 Depth=1
	movl	-884(%rbp), %eax        # 4-byte Reload
	cmpl	$58, %eax
	jne	.LBB32_158
# BB#143:                               # %if.then.512
                                        #   in Loop: Header=BB32_120 Depth=1
	movq	-344(%rbp), %rax
	addq	-320(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -600(%rbp)
	movq	-600(%rbp), %rax
	movq	%rax, -608(%rbp)
	movq	-344(%rbp), %rax
	addq	-336(%rbp), %rax
	addq	$-2, %rax
	movq	%rax, -616(%rbp)
	movq	-616(%rbp), %rax
	movq	-600(%rbp), %rcx
	subq	%rcx, %rax
	cmpq	$9, %rax
	jle	.LBB32_145
# BB#144:                               # %if.then.527
                                        #   in Loop: Header=BB32_120 Depth=1
	movq	-600(%rbp), %rax
	addq	$9, %rax
	movq	%rax, -616(%rbp)
.LBB32_145:                             # %if.end.529
                                        #   in Loop: Header=BB32_120 Depth=1
	jmp	.LBB32_146
.LBB32_146:                             # %while.cond.530
                                        #   Parent Loop BB32_120 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-608(%rbp), %rdx
	cmpq	-616(%rbp), %rdx
	movb	%cl, -893(%rbp)         # 1-byte Spill
	jae	.LBB32_149
# BB#147:                               # %land.lhs.true.533
                                        #   in Loop: Header=BB32_146 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-608(%rbp), %rdx
	movzbl	(%rdx), %eax
	cmpl	$97, %eax
	movb	%cl, -893(%rbp)         # 1-byte Spill
	jl	.LBB32_149
# BB#148:                               # %land.rhs.537
                                        #   in Loop: Header=BB32_146 Depth=2
	movq	-608(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$122, %ecx
	setle	%dl
	movb	%dl, -893(%rbp)         # 1-byte Spill
.LBB32_149:                             # %land.end.541
                                        #   in Loop: Header=BB32_146 Depth=2
	movb	-893(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB32_150
	jmp	.LBB32_151
.LBB32_150:                             # %while.body.542
                                        #   in Loop: Header=BB32_146 Depth=2
	movq	-608(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -608(%rbp)
	jmp	.LBB32_146
.LBB32_151:                             # %while.end.544
                                        #   in Loop: Header=BB32_120 Depth=1
	movq	-608(%rbp), %rax
	cmpq	-600(%rbp), %rax
	je	.LBB32_154
# BB#152:                               # %lor.lhs.false.547
                                        #   in Loop: Header=BB32_120 Depth=1
	movq	-608(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$58, %ecx
	jne	.LBB32_154
# BB#153:                               # %lor.lhs.false.551
                                        #   in Loop: Header=BB32_120 Depth=1
	movq	-608(%rbp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$93, %ecx
	je	.LBB32_155
.LBB32_154:                             # %if.then.556
                                        #   in Loop: Header=BB32_120 Depth=1
	jmp	.LBB32_159
.LBB32_155:                             # %if.end.557
                                        #   in Loop: Header=BB32_120 Depth=1
	leaq	-626(%rbp), %rax
	movq	%rax, %rcx
	movq	-600(%rbp), %rsi
	movq	-608(%rbp), %rdx
	movq	-600(%rbp), %rdi
	subq	%rdi, %rdx
	movq	%rcx, %rdi
	movq	%rax, -904(%rbp)        # 8-byte Spill
	callq	memcpy
	movq	-608(%rbp), %rax
	movq	-600(%rbp), %rcx
	subq	%rcx, %rax
	movb	$0, -626(%rbp,%rax)
	movq	-904(%rbp), %rdi        # 8-byte Reload
	callq	re_wctype
	movl	%eax, -632(%rbp)
	cmpl	$0, -632(%rbp)
	jne	.LBB32_157
# BB#156:                               # %if.then.569
	movabsq	$.L.str.60, %rdi
	movb	$0, %al
	callq	error
.LBB32_157:                             # %if.end.570
                                        #   in Loop: Header=BB32_120 Depth=1
	movl	-632(%rbp), %eax
	movl	%eax, %ecx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	-360(%rbp), %rsi
	movq	%rcx, %rdi
	callq	Fcons
	movq	%rax, -360(%rbp)
	movq	-608(%rbp), %rax
	addq	$2, %rax
	movq	-344(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -320(%rbp)
	jmp	.LBB32_120
.LBB32_158:                             # %if.end.579
                                        #   in Loop: Header=BB32_120 Depth=1
	jmp	.LBB32_159
.LBB32_159:                             # %not_a_class_name_multibyte
                                        #   in Loop: Header=BB32_120 Depth=1
	cmpl	$92, -32(%rbp)
	jne	.LBB32_172
# BB#160:                               # %if.then.582
                                        #   in Loop: Header=BB32_120 Depth=1
	movq	-320(%rbp), %rax
	cmpq	-336(%rbp), %rax
	jne	.LBB32_162
# BB#161:                               # %if.then.585
	jmp	.LBB32_238
.LBB32_162:                             # %if.end.586
                                        #   in Loop: Header=BB32_120 Depth=1
	movq	-320(%rbp), %rax
	movq	-344(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, -588(%rbp)
	movq	-344(%rbp), %rax
	movq	-320(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	jne	.LBB32_164
# BB#163:                               # %cond.true.594
                                        #   in Loop: Header=BB32_120 Depth=1
	movl	$1, -348(%rbp)
	movq	-344(%rbp), %rax
	movq	-320(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	movl	%edx, -908(%rbp)        # 4-byte Spill
	jmp	.LBB32_171
.LBB32_164:                             # %cond.false.598
                                        #   in Loop: Header=BB32_120 Depth=1
	movq	-344(%rbp), %rax
	movq	-320(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	andl	$32, %edx
	cmpl	$0, %edx
	jne	.LBB32_166
# BB#165:                               # %cond.true.604
                                        #   in Loop: Header=BB32_120 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -348(%rbp)
	movq	-344(%rbp), %rdx
	movq	-320(%rbp), %rsi
	movzbl	(%rdx,%rsi), %edi
	andl	$31, %edi
	shll	$6, %edi
	movq	-344(%rbp), %rdx
	movq	-320(%rbp), %rsi
	movzbl	1(%rdx,%rsi), %r8d
	andl	$63, %r8d
	orl	%r8d, %edi
	movq	-344(%rbp), %rdx
	movq	-320(%rbp), %rsi
	movzbl	(%rdx,%rsi), %r8d
	cmpl	$194, %r8d
	cmovll	%ecx, %eax
	addl	%eax, %edi
	movl	%edi, -912(%rbp)        # 4-byte Spill
	jmp	.LBB32_170
.LBB32_166:                             # %cond.false.622
                                        #   in Loop: Header=BB32_120 Depth=1
	movq	-344(%rbp), %rax
	movq	-320(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	andl	$16, %edx
	cmpl	$0, %edx
	jne	.LBB32_168
# BB#167:                               # %cond.true.628
                                        #   in Loop: Header=BB32_120 Depth=1
	movl	$3, -348(%rbp)
	movq	-344(%rbp), %rax
	movq	-320(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	andl	$15, %edx
	shll	$12, %edx
	movq	-344(%rbp), %rax
	movq	-320(%rbp), %rcx
	movzbl	1(%rax,%rcx), %esi
	andl	$63, %esi
	shll	$6, %esi
	orl	%esi, %edx
	movq	-344(%rbp), %rax
	movq	-320(%rbp), %rcx
	movzbl	2(%rax,%rcx), %esi
	andl	$63, %esi
	orl	%esi, %edx
	movl	%edx, -916(%rbp)        # 4-byte Spill
	jmp	.LBB32_169
.LBB32_168:                             # %cond.false.645
                                        #   in Loop: Header=BB32_120 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-348(%rbp), %rdx
	movq	-344(%rbp), %rcx
	addq	-320(%rbp), %rcx
	movq	%rcx, %rdi
	callq	string_char
	movl	%eax, -916(%rbp)        # 4-byte Spill
.LBB32_169:                             # %cond.end.648
                                        #   in Loop: Header=BB32_120 Depth=1
	movl	-916(%rbp), %eax        # 4-byte Reload
	movl	%eax, -912(%rbp)        # 4-byte Spill
.LBB32_170:                             # %cond.end.650
                                        #   in Loop: Header=BB32_120 Depth=1
	movl	-912(%rbp), %eax        # 4-byte Reload
	movl	%eax, -908(%rbp)        # 4-byte Spill
.LBB32_171:                             # %cond.end.652
                                        #   in Loop: Header=BB32_120 Depth=1
	movl	-908(%rbp), %eax        # 4-byte Reload
	movl	%eax, -32(%rbp)
	movslq	-348(%rbp), %rcx
	addq	-320(%rbp), %rcx
	movq	%rcx, -320(%rbp)
.LBB32_172:                             # %if.end.656
                                        #   in Loop: Header=BB32_120 Depth=1
	movq	-320(%rbp), %rax
	addq	$1, %rax
	cmpq	-336(%rbp), %rax
	jge	.LBB32_231
# BB#173:                               # %land.lhs.true.660
                                        #   in Loop: Header=BB32_120 Depth=1
	movq	-320(%rbp), %rax
	movq	-344(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$45, %edx
	jne	.LBB32_231
# BB#174:                               # %if.then.665
                                        #   in Loop: Header=BB32_120 Depth=1
	movq	-320(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -320(%rbp)
	movq	-320(%rbp), %rax
	movq	-344(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, -640(%rbp)
	movq	-344(%rbp), %rax
	movq	-320(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	jne	.LBB32_176
# BB#175:                               # %cond.true.675
                                        #   in Loop: Header=BB32_120 Depth=1
	movl	$1, -348(%rbp)
	movq	-344(%rbp), %rax
	movq	-320(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	movl	%edx, -920(%rbp)        # 4-byte Spill
	jmp	.LBB32_183
.LBB32_176:                             # %cond.false.679
                                        #   in Loop: Header=BB32_120 Depth=1
	movq	-344(%rbp), %rax
	movq	-320(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	andl	$32, %edx
	cmpl	$0, %edx
	jne	.LBB32_178
# BB#177:                               # %cond.true.685
                                        #   in Loop: Header=BB32_120 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -348(%rbp)
	movq	-344(%rbp), %rdx
	movq	-320(%rbp), %rsi
	movzbl	(%rdx,%rsi), %edi
	andl	$31, %edi
	shll	$6, %edi
	movq	-344(%rbp), %rdx
	movq	-320(%rbp), %rsi
	movzbl	1(%rdx,%rsi), %r8d
	andl	$63, %r8d
	orl	%r8d, %edi
	movq	-344(%rbp), %rdx
	movq	-320(%rbp), %rsi
	movzbl	(%rdx,%rsi), %r8d
	cmpl	$194, %r8d
	cmovll	%ecx, %eax
	addl	%eax, %edi
	movl	%edi, -924(%rbp)        # 4-byte Spill
	jmp	.LBB32_182
.LBB32_178:                             # %cond.false.703
                                        #   in Loop: Header=BB32_120 Depth=1
	movq	-344(%rbp), %rax
	movq	-320(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	andl	$16, %edx
	cmpl	$0, %edx
	jne	.LBB32_180
# BB#179:                               # %cond.true.709
                                        #   in Loop: Header=BB32_120 Depth=1
	movl	$3, -348(%rbp)
	movq	-344(%rbp), %rax
	movq	-320(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	andl	$15, %edx
	shll	$12, %edx
	movq	-344(%rbp), %rax
	movq	-320(%rbp), %rcx
	movzbl	1(%rax,%rcx), %esi
	andl	$63, %esi
	shll	$6, %esi
	orl	%esi, %edx
	movq	-344(%rbp), %rax
	movq	-320(%rbp), %rcx
	movzbl	2(%rax,%rcx), %esi
	andl	$63, %esi
	orl	%esi, %edx
	movl	%edx, -928(%rbp)        # 4-byte Spill
	jmp	.LBB32_181
.LBB32_180:                             # %cond.false.726
                                        #   in Loop: Header=BB32_120 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-348(%rbp), %rdx
	movq	-344(%rbp), %rcx
	addq	-320(%rbp), %rcx
	movq	%rcx, %rdi
	callq	string_char
	movl	%eax, -928(%rbp)        # 4-byte Spill
.LBB32_181:                             # %cond.end.729
                                        #   in Loop: Header=BB32_120 Depth=1
	movl	-928(%rbp), %eax        # 4-byte Reload
	movl	%eax, -924(%rbp)        # 4-byte Spill
.LBB32_182:                             # %cond.end.731
                                        #   in Loop: Header=BB32_120 Depth=1
	movl	-924(%rbp), %eax        # 4-byte Reload
	movl	%eax, -920(%rbp)        # 4-byte Spill
.LBB32_183:                             # %cond.end.733
                                        #   in Loop: Header=BB32_120 Depth=1
	movl	-920(%rbp), %eax        # 4-byte Reload
	movl	%eax, -636(%rbp)
	movslq	-348(%rbp), %rcx
	addq	-320(%rbp), %rcx
	movq	%rcx, -320(%rbp)
	cmpl	$92, -636(%rbp)
	jne	.LBB32_195
# BB#184:                               # %land.lhs.true.739
                                        #   in Loop: Header=BB32_120 Depth=1
	movq	-320(%rbp), %rax
	cmpq	-336(%rbp), %rax
	jge	.LBB32_195
# BB#185:                               # %if.then.742
                                        #   in Loop: Header=BB32_120 Depth=1
	movq	-320(%rbp), %rax
	movq	-344(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, -640(%rbp)
	movq	-344(%rbp), %rax
	movq	-320(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	jne	.LBB32_187
# BB#186:                               # %cond.true.750
                                        #   in Loop: Header=BB32_120 Depth=1
	movl	$1, -348(%rbp)
	movq	-344(%rbp), %rax
	movq	-320(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	movl	%edx, -932(%rbp)        # 4-byte Spill
	jmp	.LBB32_194
.LBB32_187:                             # %cond.false.754
                                        #   in Loop: Header=BB32_120 Depth=1
	movq	-344(%rbp), %rax
	movq	-320(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	andl	$32, %edx
	cmpl	$0, %edx
	jne	.LBB32_189
# BB#188:                               # %cond.true.760
                                        #   in Loop: Header=BB32_120 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -348(%rbp)
	movq	-344(%rbp), %rdx
	movq	-320(%rbp), %rsi
	movzbl	(%rdx,%rsi), %edi
	andl	$31, %edi
	shll	$6, %edi
	movq	-344(%rbp), %rdx
	movq	-320(%rbp), %rsi
	movzbl	1(%rdx,%rsi), %r8d
	andl	$63, %r8d
	orl	%r8d, %edi
	movq	-344(%rbp), %rdx
	movq	-320(%rbp), %rsi
	movzbl	(%rdx,%rsi), %r8d
	cmpl	$194, %r8d
	cmovll	%ecx, %eax
	addl	%eax, %edi
	movl	%edi, -936(%rbp)        # 4-byte Spill
	jmp	.LBB32_193
.LBB32_189:                             # %cond.false.778
                                        #   in Loop: Header=BB32_120 Depth=1
	movq	-344(%rbp), %rax
	movq	-320(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	andl	$16, %edx
	cmpl	$0, %edx
	jne	.LBB32_191
# BB#190:                               # %cond.true.784
                                        #   in Loop: Header=BB32_120 Depth=1
	movl	$3, -348(%rbp)
	movq	-344(%rbp), %rax
	movq	-320(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	andl	$15, %edx
	shll	$12, %edx
	movq	-344(%rbp), %rax
	movq	-320(%rbp), %rcx
	movzbl	1(%rax,%rcx), %esi
	andl	$63, %esi
	shll	$6, %esi
	orl	%esi, %edx
	movq	-344(%rbp), %rax
	movq	-320(%rbp), %rcx
	movzbl	2(%rax,%rcx), %esi
	andl	$63, %esi
	orl	%esi, %edx
	movl	%edx, -940(%rbp)        # 4-byte Spill
	jmp	.LBB32_192
.LBB32_191:                             # %cond.false.801
                                        #   in Loop: Header=BB32_120 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-348(%rbp), %rdx
	movq	-344(%rbp), %rcx
	addq	-320(%rbp), %rcx
	movq	%rcx, %rdi
	callq	string_char
	movl	%eax, -940(%rbp)        # 4-byte Spill
.LBB32_192:                             # %cond.end.804
                                        #   in Loop: Header=BB32_120 Depth=1
	movl	-940(%rbp), %eax        # 4-byte Reload
	movl	%eax, -936(%rbp)        # 4-byte Spill
.LBB32_193:                             # %cond.end.806
                                        #   in Loop: Header=BB32_120 Depth=1
	movl	-936(%rbp), %eax        # 4-byte Reload
	movl	%eax, -932(%rbp)        # 4-byte Spill
.LBB32_194:                             # %cond.end.808
                                        #   in Loop: Header=BB32_120 Depth=1
	movl	-932(%rbp), %eax        # 4-byte Reload
	movl	%eax, -636(%rbp)
	movslq	-348(%rbp), %rcx
	addq	-320(%rbp), %rcx
	movq	%rcx, -320(%rbp)
.LBB32_195:                             # %if.end.812
                                        #   in Loop: Header=BB32_120 Depth=1
	movl	-32(%rbp), %eax
	cmpl	-636(%rbp), %eax
	jle	.LBB32_197
# BB#196:                               # %if.then.815
                                        #   in Loop: Header=BB32_120 Depth=1
	jmp	.LBB32_120
.LBB32_197:                             # %if.end.816
                                        #   in Loop: Header=BB32_120 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB32_198
	jmp	.LBB32_199
.LBB32_198:                             # %cond.true.817
                                        #   in Loop: Header=BB32_120 Depth=1
	movl	-32(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB32_200
	jmp	.LBB32_221
.LBB32_199:                             # %cond.false.821
                                        #   in Loop: Header=BB32_120 Depth=1
	movslq	-32(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB32_221
.LBB32_200:                             # %if.then.826
                                        #   in Loop: Header=BB32_120 Depth=1
	jmp	.LBB32_201
.LBB32_201:                             # %while.cond.827
                                        #   Parent Loop BB32_120 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-32(%rbp), %eax
	cmpl	-636(%rbp), %eax
	movb	%cl, -941(%rbp)         # 1-byte Spill
	jg	.LBB32_203
# BB#202:                               # %land.rhs.830
                                        #   in Loop: Header=BB32_201 Depth=2
	cmpl	$128, -32(%rbp)
	setl	%al
	movb	%al, -941(%rbp)         # 1-byte Spill
.LBB32_203:                             # %land.end.833
                                        #   in Loop: Header=BB32_201 Depth=2
	movb	-941(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB32_204
	jmp	.LBB32_205
.LBB32_204:                             # %while.body.834
                                        #   in Loop: Header=BB32_201 Depth=2
	movl	-32(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -32(%rbp)
	movslq	%eax, %rdx
	movb	$1, -288(%rbp,%rdx)
	jmp	.LBB32_201
.LBB32_205:                             # %while.end.838
                                        #   in Loop: Header=BB32_120 Depth=1
	cmpl	$127, -32(%rbp)
	jg	.LBB32_207
# BB#206:                               # %cond.true.841
                                        #   in Loop: Header=BB32_120 Depth=1
	movl	-32(%rbp), %eax
	movl	%eax, -948(%rbp)        # 4-byte Spill
	jmp	.LBB32_220
.LBB32_207:                             # %cond.false.842
                                        #   in Loop: Header=BB32_120 Depth=1
	cmpl	$2047, -32(%rbp)        # imm = 0x7FF
	jg	.LBB32_209
# BB#208:                               # %cond.true.845
                                        #   in Loop: Header=BB32_120 Depth=1
	movl	-32(%rbp), %eax
	sarl	$6, %eax
	orl	$192, %eax
	movl	%eax, -952(%rbp)        # 4-byte Spill
	jmp	.LBB32_219
.LBB32_209:                             # %cond.false.848
                                        #   in Loop: Header=BB32_120 Depth=1
	cmpl	$65535, -32(%rbp)       # imm = 0xFFFF
	jg	.LBB32_211
# BB#210:                               # %cond.true.851
                                        #   in Loop: Header=BB32_120 Depth=1
	movl	-32(%rbp), %eax
	sarl	$12, %eax
	orl	$224, %eax
	movl	%eax, -956(%rbp)        # 4-byte Spill
	jmp	.LBB32_218
.LBB32_211:                             # %cond.false.854
                                        #   in Loop: Header=BB32_120 Depth=1
	cmpl	$2097151, -32(%rbp)     # imm = 0x1FFFFF
	jg	.LBB32_213
# BB#212:                               # %cond.true.857
                                        #   in Loop: Header=BB32_120 Depth=1
	movl	-32(%rbp), %eax
	sarl	$18, %eax
	orl	$240, %eax
	movl	%eax, -960(%rbp)        # 4-byte Spill
	jmp	.LBB32_217
.LBB32_213:                             # %cond.false.860
                                        #   in Loop: Header=BB32_120 Depth=1
	cmpl	$4194175, -32(%rbp)     # imm = 0x3FFF7F
	jg	.LBB32_215
# BB#214:                               # %cond.true.863
                                        #   in Loop: Header=BB32_120 Depth=1
	movl	$248, %eax
	movl	%eax, -964(%rbp)        # 4-byte Spill
	jmp	.LBB32_216
.LBB32_215:                             # %cond.false.864
                                        #   in Loop: Header=BB32_120 Depth=1
	movl	-32(%rbp), %eax
	sarl	$6, %eax
	andl	$1, %eax
	orl	$192, %eax
	movl	%eax, -964(%rbp)        # 4-byte Spill
.LBB32_216:                             # %cond.end.868
                                        #   in Loop: Header=BB32_120 Depth=1
	movl	-964(%rbp), %eax        # 4-byte Reload
	movl	%eax, -960(%rbp)        # 4-byte Spill
.LBB32_217:                             # %cond.end.870
                                        #   in Loop: Header=BB32_120 Depth=1
	movl	-960(%rbp), %eax        # 4-byte Reload
	movl	%eax, -956(%rbp)        # 4-byte Spill
.LBB32_218:                             # %cond.end.872
                                        #   in Loop: Header=BB32_120 Depth=1
	movl	-956(%rbp), %eax        # 4-byte Reload
	movl	%eax, -952(%rbp)        # 4-byte Spill
.LBB32_219:                             # %cond.end.874
                                        #   in Loop: Header=BB32_120 Depth=1
	movl	-952(%rbp), %eax        # 4-byte Reload
	movl	%eax, -948(%rbp)        # 4-byte Spill
.LBB32_220:                             # %cond.end.876
                                        #   in Loop: Header=BB32_120 Depth=1
	movl	-948(%rbp), %eax        # 4-byte Reload
	movl	%eax, -588(%rbp)
.LBB32_221:                             # %if.end.878
                                        #   in Loop: Header=BB32_120 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB32_222
	jmp	.LBB32_223
.LBB32_222:                             # %cond.true.879
                                        #   in Loop: Header=BB32_120 Depth=1
	movl	-32(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB32_230
	jmp	.LBB32_224
.LBB32_223:                             # %cond.false.883
                                        #   in Loop: Header=BB32_120 Depth=1
	movslq	-32(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jb	.LBB32_230
.LBB32_224:                             # %if.then.888
                                        #   in Loop: Header=BB32_120 Depth=1
	movl	-640(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -644(%rbp)
.LBB32_225:                             # %while.cond.891
                                        #   Parent Loop BB32_120 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-588(%rbp), %eax
	cmpl	-644(%rbp), %eax
	jge	.LBB32_227
# BB#226:                               # %while.body.894
                                        #   in Loop: Header=BB32_225 Depth=2
	movl	-588(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -588(%rbp)
	movslq	%eax, %rdx
	movb	$1, -288(%rbp,%rdx)
	jmp	.LBB32_225
.LBB32_227:                             # %while.end.898
                                        #   in Loop: Header=BB32_120 Depth=1
	movl	-32(%rbp), %eax
	cmpl	-636(%rbp), %eax
	jg	.LBB32_229
# BB#228:                               # %if.then.901
                                        #   in Loop: Header=BB32_120 Depth=1
	movl	-32(%rbp), %eax
	movl	-300(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -300(%rbp)
	movslq	%ecx, %rsi
	movq	-296(%rbp), %rdi
	movl	%eax, (%rdi,%rsi,4)
	movl	-636(%rbp), %eax
	movl	-300(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -300(%rbp)
	movslq	%ecx, %rsi
	movq	-296(%rbp), %rdi
	movl	%eax, (%rdi,%rsi,4)
.LBB32_229:                             # %if.end.908
                                        #   in Loop: Header=BB32_120 Depth=1
	jmp	.LBB32_230
.LBB32_230:                             # %if.end.909
                                        #   in Loop: Header=BB32_120 Depth=1
	jmp	.LBB32_237
.LBB32_231:                             # %if.else.910
                                        #   in Loop: Header=BB32_120 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB32_232
	jmp	.LBB32_233
.LBB32_232:                             # %cond.true.911
                                        #   in Loop: Header=BB32_120 Depth=1
	movl	-32(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB32_234
	jmp	.LBB32_235
.LBB32_233:                             # %cond.false.915
                                        #   in Loop: Header=BB32_120 Depth=1
	movslq	-32(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB32_235
.LBB32_234:                             # %if.then.920
                                        #   in Loop: Header=BB32_120 Depth=1
	movslq	-32(%rbp), %rax
	movb	$1, -288(%rbp,%rax)
	jmp	.LBB32_236
.LBB32_235:                             # %if.else.923
                                        #   in Loop: Header=BB32_120 Depth=1
	movslq	-588(%rbp), %rax
	movb	$1, -288(%rbp,%rax)
	movl	-32(%rbp), %ecx
	movl	-300(%rbp), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, -300(%rbp)
	movslq	%edx, %rax
	movq	-296(%rbp), %rdi
	movl	%ecx, (%rdi,%rax,4)
	movl	-32(%rbp), %ecx
	movl	-300(%rbp), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, -300(%rbp)
	movslq	%edx, %rax
	movq	-296(%rbp), %rdi
	movl	%ecx, (%rdi,%rax,4)
.LBB32_236:                             # %if.end.932
                                        #   in Loop: Header=BB32_120 Depth=1
	jmp	.LBB32_237
.LBB32_237:                             # %if.end.933
                                        #   in Loop: Header=BB32_120 Depth=1
	jmp	.LBB32_120
.LBB32_238:                             # %while.end.934
	testb	$1, -321(%rbp)
	jne	.LBB32_259
# BB#239:                               # %land.lhs.true.936
	cmpl	$0, -300(%rbp)
	jle	.LBB32_259
# BB#240:                               # %if.then.939
	xorl	%esi, %esi
	movl	$128, %eax
	movl	%eax, %edx
	leaq	-288(%rbp), %rcx
	addq	$128, %rcx
	movq	%rcx, %rdi
	callq	memset
	movq	$0, -312(%rbp)
.LBB32_241:                             # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB32_243 Depth 2
	movq	-312(%rbp), %rax
	movslq	-300(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB32_258
# BB#242:                               # %for.body
                                        #   in Loop: Header=BB32_241 Depth=1
	movq	-312(%rbp), %rax
	movq	-296(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movl	%edx, -648(%rbp)
	movq	-312(%rbp), %rax
	movq	-296(%rbp), %rcx
	movl	4(%rcx,%rax,4), %edx
	addl	$1, %edx
	movl	%edx, -652(%rbp)
.LBB32_243:                             # %for.cond.950
                                        #   Parent Loop BB32_241 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-648(%rbp), %eax
	cmpl	-652(%rbp), %eax
	jge	.LBB32_256
# BB#244:                               # %for.body.953
                                        #   in Loop: Header=BB32_243 Depth=2
	movb	$1, %al
	testb	$1, %al
	jne	.LBB32_245
	jmp	.LBB32_246
.LBB32_245:                             # %cond.true.954
                                        #   in Loop: Header=BB32_243 Depth=2
	movl	-648(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB32_247
	jmp	.LBB32_248
.LBB32_246:                             # %cond.false.958
                                        #   in Loop: Header=BB32_243 Depth=2
	movslq	-648(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB32_248
.LBB32_247:                             # %cond.true.963
                                        #   in Loop: Header=BB32_243 Depth=2
	movl	-648(%rbp), %eax
	movl	%eax, -968(%rbp)        # 4-byte Spill
	jmp	.LBB32_252
.LBB32_248:                             # %cond.false.964
                                        #   in Loop: Header=BB32_243 Depth=2
	cmpl	$4194175, -648(%rbp)    # imm = 0x3FFF7F
	jle	.LBB32_250
# BB#249:                               # %cond.true.967
                                        #   in Loop: Header=BB32_243 Depth=2
	movl	-648(%rbp), %eax
	subl	$4194048, %eax          # imm = 0x3FFF00
	movl	%eax, -972(%rbp)        # 4-byte Spill
	jmp	.LBB32_251
.LBB32_250:                             # %cond.false.969
                                        #   in Loop: Header=BB32_243 Depth=2
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -972(%rbp)        # 4-byte Spill
	jmp	.LBB32_251
.LBB32_251:                             # %cond.end.970
                                        #   in Loop: Header=BB32_243 Depth=2
	movl	-972(%rbp), %eax        # 4-byte Reload
	movl	%eax, -968(%rbp)        # 4-byte Spill
.LBB32_252:                             # %cond.end.972
                                        #   in Loop: Header=BB32_243 Depth=2
	movl	-968(%rbp), %eax        # 4-byte Reload
	movl	%eax, -656(%rbp)
	cmpl	$0, -656(%rbp)
	jl	.LBB32_254
# BB#253:                               # %if.then.976
                                        #   in Loop: Header=BB32_243 Depth=2
	movslq	-656(%rbp), %rax
	movb	$1, -288(%rbp,%rax)
.LBB32_254:                             # %if.end.979
                                        #   in Loop: Header=BB32_243 Depth=2
	jmp	.LBB32_255
.LBB32_255:                             # %for.inc
                                        #   in Loop: Header=BB32_243 Depth=2
	movl	-648(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -648(%rbp)
	jmp	.LBB32_243
.LBB32_256:                             # %for.end
                                        #   in Loop: Header=BB32_241 Depth=1
	jmp	.LBB32_257
.LBB32_257:                             # %for.inc.981
                                        #   in Loop: Header=BB32_241 Depth=1
	movq	-312(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -312(%rbp)
	jmp	.LBB32_241
.LBB32_258:                             # %for.end.983
	jmp	.LBB32_259
.LBB32_259:                             # %if.end.984
	jmp	.LBB32_260
.LBB32_260:                             # %if.end.985
	testb	$1, -301(%rbp)
	je	.LBB32_277
# BB#261:                               # %if.then.987
	testb	$1, -321(%rbp)
	jne	.LBB32_267
# BB#262:                               # %if.then.989
	movq	$0, -312(%rbp)
.LBB32_263:                             # %for.cond.990
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$256, -312(%rbp)        # imm = 0x100
	jae	.LBB32_266
# BB#264:                               # %for.body.993
                                        #   in Loop: Header=BB32_263 Depth=1
	movq	-312(%rbp), %rax
	movsbl	-288(%rbp,%rax), %ecx
	xorl	$1, %ecx
	movb	%cl, %dl
	movb	%dl, -288(%rbp,%rax)
# BB#265:                               # %for.inc.997
                                        #   in Loop: Header=BB32_263 Depth=1
	movq	-312(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -312(%rbp)
	jmp	.LBB32_263
.LBB32_266:                             # %for.end.999
	jmp	.LBB32_276
.LBB32_267:                             # %if.else.1000
	movq	$0, -312(%rbp)
.LBB32_268:                             # %for.cond.1001
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$128, -312(%rbp)
	jge	.LBB32_271
# BB#269:                               # %for.body.1004
                                        #   in Loop: Header=BB32_268 Depth=1
	movq	-312(%rbp), %rax
	movsbl	-288(%rbp,%rax), %ecx
	xorl	$1, %ecx
	movb	%cl, %dl
	movb	%dl, -288(%rbp,%rax)
# BB#270:                               # %for.inc.1009
                                        #   in Loop: Header=BB32_268 Depth=1
	movq	-312(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -312(%rbp)
	jmp	.LBB32_268
.LBB32_271:                             # %for.end.1011
	jmp	.LBB32_272
.LBB32_272:                             # %for.cond.1012
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$256, -312(%rbp)        # imm = 0x100
	jae	.LBB32_275
# BB#273:                               # %for.body.1015
                                        #   in Loop: Header=BB32_272 Depth=1
	movq	-312(%rbp), %rax
	movb	$1, -288(%rbp,%rax)
# BB#274:                               # %for.inc.1017
                                        #   in Loop: Header=BB32_272 Depth=1
	movq	-312(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -312(%rbp)
	jmp	.LBB32_272
.LBB32_275:                             # %for.end.1019
	jmp	.LBB32_276
.LBB32_276:                             # %if.end.1020
	jmp	.LBB32_277
.LBB32_277:                             # %if.end.1021
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, -664(%rbp)
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, -672(%rbp)
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	movq	%rax, -680(%rbp)
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB32_279
# BB#278:                               # %cond.true.1031
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -984(%rbp)        # 8-byte Spill
	jmp	.LBB32_280
.LBB32_279:                             # %cond.false.1033
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -984(%rbp)        # 8-byte Spill
	jmp	.LBB32_280
.LBB32_280:                             # %cond.end.1034
	movq	-984(%rbp), %rax        # 8-byte Reload
	movq	current_buffer, %rcx
	addq	744(%rcx), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -688(%rbp)
	testb	$1, -1(%rbp)
	je	.LBB32_292
# BB#281:                               # %if.then.1042
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	8(%rcx), %rax
	jne	.LBB32_283
# BB#282:                               # %cond.true.1047
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	24(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -992(%rbp)        # 8-byte Spill
	jmp	.LBB32_287
.LBB32_283:                             # %cond.false.1054
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	8(%rcx), %rax
	jl	.LBB32_285
# BB#284:                               # %cond.true.1060
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -1000(%rbp)       # 8-byte Spill
	jmp	.LBB32_286
.LBB32_285:                             # %cond.false.1063
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -1000(%rbp)       # 8-byte Spill
	jmp	.LBB32_286
.LBB32_286:                             # %cond.end.1064
	movq	-1000(%rbp), %rax       # 8-byte Reload
	movq	current_buffer, %rdi
	movq	-24(%rbp), %rcx
	sarq	$2, %rcx
	movq	%rcx, %rsi
	movq	%rax, -1008(%rbp)       # 8-byte Spill
	callq	buf_charpos_to_bytepos
	movq	-1008(%rbp), %rcx       # 8-byte Reload
	addq	%rax, %rcx
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	addq	(%rax), %rcx
	addq	$-1, %rcx
	movq	%rcx, -992(%rbp)        # 8-byte Spill
.LBB32_287:                             # %cond.end.1073
	movq	-992(%rbp), %rax        # 8-byte Reload
	movq	%rax, -696(%rbp)
	movq	-672(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	8(%rcx), %rax
	jge	.LBB32_290
# BB#288:                               # %land.lhs.true.1079
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jge	.LBB32_290
# BB#289:                               # %cond.true.1085
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	24(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -1016(%rbp)       # 8-byte Spill
	jmp	.LBB32_291
.LBB32_290:                             # %cond.false.1092
	movq	-696(%rbp), %rax
	movq	%rax, -1016(%rbp)       # 8-byte Spill
.LBB32_291:                             # %cond.end.1093
	movq	-1016(%rbp), %rax       # 8-byte Reload
	movq	%rax, -704(%rbp)
	jmp	.LBB32_300
.LBB32_292:                             # %if.else.1095
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	8(%rcx), %rax
	jl	.LBB32_294
# BB#293:                               # %cond.true.1101
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -1024(%rbp)       # 8-byte Spill
	jmp	.LBB32_295
.LBB32_294:                             # %cond.false.1104
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -1024(%rbp)       # 8-byte Spill
	jmp	.LBB32_295
.LBB32_295:                             # %cond.end.1105
	movq	-1024(%rbp), %rax       # 8-byte Reload
	movq	current_buffer, %rdi
	movq	-24(%rbp), %rcx
	sarq	$2, %rcx
	movq	%rcx, %rsi
	movq	%rax, -1032(%rbp)       # 8-byte Spill
	callq	buf_charpos_to_bytepos
	movq	-1032(%rbp), %rcx       # 8-byte Reload
	addq	%rax, %rcx
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	addq	(%rax), %rcx
	addq	$-1, %rcx
	movq	%rcx, -696(%rbp)
	movq	-672(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	8(%rcx), %rax
	jl	.LBB32_298
# BB#296:                               # %land.lhs.true.1118
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jle	.LBB32_298
# BB#297:                               # %cond.true.1124
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
	movq	%rax, -1040(%rbp)       # 8-byte Spill
	jmp	.LBB32_299
.LBB32_298:                             # %cond.false.1134
	movq	-696(%rbp), %rax
	movq	%rax, -1040(%rbp)       # 8-byte Spill
.LBB32_299:                             # %cond.end.1135
	movq	-1040(%rbp), %rax       # 8-byte Reload
	movq	%rax, -704(%rbp)
.LBB32_300:                             # %if.end.1137
	movb	$1, immediate_quit
	callq	SETUP_BUFFER_SYNTAX_TABLE
	testb	$1, -1(%rbp)
	je	.LBB32_355
# BB#301:                               # %if.then.1139
	testb	$1, -321(%rbp)
	je	.LBB32_339
# BB#302:                               # %if.then.1141
	jmp	.LBB32_303
.LBB32_303:                             # %while.body.1143
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB32_327 Depth 2
	movq	-688(%rbp), %rax
	cmpq	-704(%rbp), %rax
	jb	.LBB32_307
# BB#304:                               # %if.then.1146
                                        #   in Loop: Header=BB32_303 Depth=1
	movq	-688(%rbp), %rax
	cmpq	-696(%rbp), %rax
	jb	.LBB32_306
# BB#305:                               # %if.then.1149
	jmp	.LBB32_338
.LBB32_306:                             # %if.end.1150
                                        #   in Loop: Header=BB32_303 Depth=1
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
	movq	%rax, -688(%rbp)
	movq	-696(%rbp), %rax
	movq	%rax, -704(%rbp)
.LBB32_307:                             # %if.end.1160
                                        #   in Loop: Header=BB32_303 Depth=1
	movq	-688(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB32_309
# BB#308:                               # %cond.true.1165
                                        #   in Loop: Header=BB32_303 Depth=1
	movl	$1, -708(%rbp)
	movq	-688(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -1044(%rbp)       # 4-byte Spill
	jmp	.LBB32_316
.LBB32_309:                             # %cond.false.1168
                                        #   in Loop: Header=BB32_303 Depth=1
	movq	-688(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB32_311
# BB#310:                               # %cond.true.1173
                                        #   in Loop: Header=BB32_303 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -708(%rbp)
	movq	-688(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-688(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-688(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -1048(%rbp)       # 4-byte Spill
	jmp	.LBB32_315
.LBB32_311:                             # %cond.false.1188
                                        #   in Loop: Header=BB32_303 Depth=1
	movq	-688(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB32_313
# BB#312:                               # %cond.true.1193
                                        #   in Loop: Header=BB32_303 Depth=1
	movl	$3, -708(%rbp)
	movq	-688(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-688(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-688(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -1052(%rbp)       # 4-byte Spill
	jmp	.LBB32_314
.LBB32_313:                             # %cond.false.1207
                                        #   in Loop: Header=BB32_303 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-708(%rbp), %rdx
	movq	-688(%rbp), %rdi
	callq	string_char
	movl	%eax, -1052(%rbp)       # 4-byte Spill
.LBB32_314:                             # %cond.end.1209
                                        #   in Loop: Header=BB32_303 Depth=1
	movl	-1052(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1048(%rbp)       # 4-byte Spill
.LBB32_315:                             # %cond.end.1211
                                        #   in Loop: Header=BB32_303 Depth=1
	movl	-1048(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1044(%rbp)       # 4-byte Spill
.LBB32_316:                             # %cond.end.1213
                                        #   in Loop: Header=BB32_303 Depth=1
	movl	-1044(%rbp), %eax       # 4-byte Reload
	xorl	%edi, %edi
	movl	%eax, -32(%rbp)
	movq	-360(%rbp), %rcx
	movq	%rcx, -1064(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1064(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB32_321
# BB#317:                               # %land.lhs.true.1218
                                        #   in Loop: Header=BB32_303 Depth=1
	movl	-32(%rbp), %edi
	movq	-360(%rbp), %rsi
	callq	in_classes
	testb	$1, %al
	jne	.LBB32_318
	jmp	.LBB32_321
.LBB32_318:                             # %if.then.1221
                                        #   in Loop: Header=BB32_303 Depth=1
	testb	$1, -301(%rbp)
	je	.LBB32_320
# BB#319:                               # %if.then.1223
	jmp	.LBB32_338
.LBB32_320:                             # %if.else.1224
                                        #   in Loop: Header=BB32_303 Depth=1
	jmp	.LBB32_337
.LBB32_321:                             # %if.end.1225
                                        #   in Loop: Header=BB32_303 Depth=1
	movq	-688(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	cmpb	$0, -288(%rbp,%rax)
	jne	.LBB32_323
# BB#322:                               # %if.then.1229
	jmp	.LBB32_338
.LBB32_323:                             # %if.end.1230
                                        #   in Loop: Header=BB32_303 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB32_324
	jmp	.LBB32_325
.LBB32_324:                             # %cond.true.1231
                                        #   in Loop: Header=BB32_303 Depth=1
	movl	-32(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB32_336
	jmp	.LBB32_326
.LBB32_325:                             # %cond.false.1235
                                        #   in Loop: Header=BB32_303 Depth=1
	movslq	-32(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jb	.LBB32_336
.LBB32_326:                             # %if.then.1240
                                        #   in Loop: Header=BB32_303 Depth=1
	movq	$0, -312(%rbp)
.LBB32_327:                             # %for.cond.1241
                                        #   Parent Loop BB32_303 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-312(%rbp), %rax
	movslq	-300(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB32_333
# BB#328:                               # %for.body.1245
                                        #   in Loop: Header=BB32_327 Depth=2
	movl	-32(%rbp), %eax
	movq	-312(%rbp), %rcx
	movq	-296(%rbp), %rdx
	cmpl	(%rdx,%rcx,4), %eax
	jl	.LBB32_331
# BB#329:                               # %land.lhs.true.1249
                                        #   in Loop: Header=BB32_327 Depth=2
	movl	-32(%rbp), %eax
	movq	-312(%rbp), %rcx
	movq	-296(%rbp), %rdx
	cmpl	4(%rdx,%rcx,4), %eax
	jg	.LBB32_331
# BB#330:                               # %if.then.1254
                                        #   in Loop: Header=BB32_303 Depth=1
	jmp	.LBB32_333
.LBB32_331:                             # %if.end.1255
                                        #   in Loop: Header=BB32_327 Depth=2
	jmp	.LBB32_332
.LBB32_332:                             # %for.inc.1256
                                        #   in Loop: Header=BB32_327 Depth=2
	movq	-312(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -312(%rbp)
	jmp	.LBB32_327
.LBB32_333:                             # %for.end.1258
                                        #   in Loop: Header=BB32_303 Depth=1
	movb	-301(%rbp), %al
	andb	$1, %al
	movzbl	%al, %ecx
	movq	-312(%rbp), %rdx
	movslq	-300(%rbp), %rsi
	cmpq	%rsi, %rdx
	setl	%al
	andb	$1, %al
	movzbl	%al, %edi
	xorl	%edi, %ecx
	cmpl	$0, %ecx
	jne	.LBB32_335
# BB#334:                               # %if.then.1266
	jmp	.LBB32_338
.LBB32_335:                             # %if.end.1267
                                        #   in Loop: Header=BB32_303 Depth=1
	jmp	.LBB32_336
.LBB32_336:                             # %if.end.1268
                                        #   in Loop: Header=BB32_303 Depth=1
	jmp	.LBB32_337
.LBB32_337:                             # %fwd_ok
                                        #   in Loop: Header=BB32_303 Depth=1
	movl	-708(%rbp), %eax
	movq	-688(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -688(%rbp)
	movq	-672(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -672(%rbp)
	movslq	-708(%rbp), %rcx
	addq	-680(%rbp), %rcx
	movq	%rcx, -680(%rbp)
	jmp	.LBB32_303
.LBB32_338:                             # %while.end.1274
	jmp	.LBB32_354
.LBB32_339:                             # %if.else.1275
	jmp	.LBB32_340
.LBB32_340:                             # %while.body.1277
                                        # =>This Inner Loop Header: Depth=1
	movq	-688(%rbp), %rax
	cmpq	-704(%rbp), %rax
	jb	.LBB32_344
# BB#341:                               # %if.then.1280
                                        #   in Loop: Header=BB32_340 Depth=1
	movq	-688(%rbp), %rax
	cmpq	-696(%rbp), %rax
	jb	.LBB32_343
# BB#342:                               # %if.then.1283
	jmp	.LBB32_353
.LBB32_343:                             # %if.end.1284
                                        #   in Loop: Header=BB32_340 Depth=1
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
	movq	%rax, -688(%rbp)
	movq	-696(%rbp), %rax
	movq	%rax, -704(%rbp)
.LBB32_344:                             # %if.end.1294
                                        #   in Loop: Header=BB32_340 Depth=1
	xorl	%edi, %edi
	movq	-360(%rbp), %rax
	movq	%rax, -1072(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1072(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB32_349
# BB#345:                               # %land.lhs.true.1298
                                        #   in Loop: Header=BB32_340 Depth=1
	movq	-688(%rbp), %rax
	movzbl	(%rax), %edi
	movq	-360(%rbp), %rsi
	callq	in_classes
	testb	$1, %al
	jne	.LBB32_346
	jmp	.LBB32_349
.LBB32_346:                             # %if.then.1302
                                        #   in Loop: Header=BB32_340 Depth=1
	testb	$1, -301(%rbp)
	je	.LBB32_348
# BB#347:                               # %if.then.1304
	jmp	.LBB32_353
.LBB32_348:                             # %if.else.1305
                                        #   in Loop: Header=BB32_340 Depth=1
	jmp	.LBB32_352
.LBB32_349:                             # %if.end.1306
                                        #   in Loop: Header=BB32_340 Depth=1
	movq	-688(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	cmpb	$0, -288(%rbp,%rax)
	jne	.LBB32_351
# BB#350:                               # %if.then.1310
	jmp	.LBB32_353
.LBB32_351:                             # %if.end.1311
                                        #   in Loop: Header=BB32_340 Depth=1
	jmp	.LBB32_352
.LBB32_352:                             # %fwd_unibyte_ok
                                        #   in Loop: Header=BB32_340 Depth=1
	movq	-688(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -688(%rbp)
	movq	-672(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -672(%rbp)
	movq	-680(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -680(%rbp)
	jmp	.LBB32_340
.LBB32_353:                             # %while.end.1315
	jmp	.LBB32_354
.LBB32_354:                             # %if.end.1316
	jmp	.LBB32_414
.LBB32_355:                             # %if.else.1317
	testb	$1, -321(%rbp)
	je	.LBB32_398
# BB#356:                               # %if.then.1319
	jmp	.LBB32_357
.LBB32_357:                             # %while.body.1321
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB32_362 Depth 2
                                        #     Child Loop BB32_386 Depth 2
	movq	-688(%rbp), %rax
	cmpq	-704(%rbp), %rax
	ja	.LBB32_361
# BB#358:                               # %if.then.1324
                                        #   in Loop: Header=BB32_357 Depth=1
	movq	-688(%rbp), %rax
	cmpq	-696(%rbp), %rax
	ja	.LBB32_360
# BB#359:                               # %if.then.1327
	jmp	.LBB32_397
.LBB32_360:                             # %if.end.1328
                                        #   in Loop: Header=BB32_357 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	24(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -688(%rbp)
	movq	-696(%rbp), %rax
	movq	%rax, -704(%rbp)
.LBB32_361:                             # %if.end.1335
                                        #   in Loop: Header=BB32_357 Depth=1
	movq	-688(%rbp), %rax
	movq	%rax, -720(%rbp)
.LBB32_362:                             # %while.cond.1336
                                        #   Parent Loop BB32_357 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-688(%rbp), %rdx
	addq	$-1, %rdx
	movq	%rdx, -688(%rbp)
	cmpq	-704(%rbp), %rdx
	movb	%cl, -1073(%rbp)        # 1-byte Spill
	jb	.LBB32_364
# BB#363:                               # %land.rhs.1340
                                        #   in Loop: Header=BB32_362 Depth=2
	movq	-688(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	setne	%dl
	xorb	$-1, %dl
	movb	%dl, -1073(%rbp)        # 1-byte Spill
.LBB32_364:                             # %land.end.1345
                                        #   in Loop: Header=BB32_362 Depth=2
	movb	-1073(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB32_365
	jmp	.LBB32_366
.LBB32_365:                             # %while.body.1346
                                        #   in Loop: Header=BB32_362 Depth=2
	jmp	.LBB32_362
.LBB32_366:                             # %while.end.1347
                                        #   in Loop: Header=BB32_357 Depth=1
	movq	-688(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB32_368
# BB#367:                               # %cond.true.1352
                                        #   in Loop: Header=BB32_357 Depth=1
	movq	-688(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -1080(%rbp)       # 4-byte Spill
	jmp	.LBB32_375
.LBB32_368:                             # %cond.false.1355
                                        #   in Loop: Header=BB32_357 Depth=1
	movq	-688(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB32_370
# BB#369:                               # %cond.true.1360
                                        #   in Loop: Header=BB32_357 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movq	-688(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-688(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-688(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -1084(%rbp)       # 4-byte Spill
	jmp	.LBB32_374
.LBB32_370:                             # %cond.false.1375
                                        #   in Loop: Header=BB32_357 Depth=1
	movq	-688(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB32_372
# BB#371:                               # %cond.true.1380
                                        #   in Loop: Header=BB32_357 Depth=1
	movq	-688(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-688(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-688(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -1088(%rbp)       # 4-byte Spill
	jmp	.LBB32_373
.LBB32_372:                             # %cond.false.1394
                                        #   in Loop: Header=BB32_357 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-688(%rbp), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	string_char
	movl	%eax, -1088(%rbp)       # 4-byte Spill
.LBB32_373:                             # %cond.end.1396
                                        #   in Loop: Header=BB32_357 Depth=1
	movl	-1088(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1084(%rbp)       # 4-byte Spill
.LBB32_374:                             # %cond.end.1398
                                        #   in Loop: Header=BB32_357 Depth=1
	movl	-1084(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1080(%rbp)       # 4-byte Spill
.LBB32_375:                             # %cond.end.1400
                                        #   in Loop: Header=BB32_357 Depth=1
	movl	-1080(%rbp), %eax       # 4-byte Reload
	xorl	%edi, %edi
	movl	%eax, -32(%rbp)
	movq	-360(%rbp), %rcx
	movq	%rcx, -1096(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1096(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB32_380
# BB#376:                               # %land.lhs.true.1405
                                        #   in Loop: Header=BB32_357 Depth=1
	movl	-32(%rbp), %edi
	movq	-360(%rbp), %rsi
	callq	in_classes
	testb	$1, %al
	jne	.LBB32_377
	jmp	.LBB32_380
.LBB32_377:                             # %if.then.1408
                                        #   in Loop: Header=BB32_357 Depth=1
	testb	$1, -301(%rbp)
	je	.LBB32_379
# BB#378:                               # %if.then.1410
	jmp	.LBB32_397
.LBB32_379:                             # %if.else.1411
                                        #   in Loop: Header=BB32_357 Depth=1
	jmp	.LBB32_396
.LBB32_380:                             # %if.end.1412
                                        #   in Loop: Header=BB32_357 Depth=1
	movq	-688(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	cmpb	$0, -288(%rbp,%rax)
	jne	.LBB32_382
# BB#381:                               # %if.then.1416
	jmp	.LBB32_397
.LBB32_382:                             # %if.end.1417
                                        #   in Loop: Header=BB32_357 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB32_383
	jmp	.LBB32_384
.LBB32_383:                             # %cond.true.1418
                                        #   in Loop: Header=BB32_357 Depth=1
	movl	-32(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB32_395
	jmp	.LBB32_385
.LBB32_384:                             # %cond.false.1422
                                        #   in Loop: Header=BB32_357 Depth=1
	movslq	-32(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jb	.LBB32_395
.LBB32_385:                             # %if.then.1427
                                        #   in Loop: Header=BB32_357 Depth=1
	movq	$0, -312(%rbp)
.LBB32_386:                             # %for.cond.1428
                                        #   Parent Loop BB32_357 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-312(%rbp), %rax
	movslq	-300(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB32_392
# BB#387:                               # %for.body.1432
                                        #   in Loop: Header=BB32_386 Depth=2
	movl	-32(%rbp), %eax
	movq	-312(%rbp), %rcx
	movq	-296(%rbp), %rdx
	cmpl	(%rdx,%rcx,4), %eax
	jl	.LBB32_390
# BB#388:                               # %land.lhs.true.1436
                                        #   in Loop: Header=BB32_386 Depth=2
	movl	-32(%rbp), %eax
	movq	-312(%rbp), %rcx
	movq	-296(%rbp), %rdx
	cmpl	4(%rdx,%rcx,4), %eax
	jg	.LBB32_390
# BB#389:                               # %if.then.1441
                                        #   in Loop: Header=BB32_357 Depth=1
	jmp	.LBB32_392
.LBB32_390:                             # %if.end.1442
                                        #   in Loop: Header=BB32_386 Depth=2
	jmp	.LBB32_391
.LBB32_391:                             # %for.inc.1443
                                        #   in Loop: Header=BB32_386 Depth=2
	movq	-312(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -312(%rbp)
	jmp	.LBB32_386
.LBB32_392:                             # %for.end.1445
                                        #   in Loop: Header=BB32_357 Depth=1
	movb	-301(%rbp), %al
	andb	$1, %al
	movzbl	%al, %ecx
	movq	-312(%rbp), %rdx
	movslq	-300(%rbp), %rsi
	cmpq	%rsi, %rdx
	setl	%al
	andb	$1, %al
	movzbl	%al, %edi
	xorl	%edi, %ecx
	cmpl	$0, %ecx
	jne	.LBB32_394
# BB#393:                               # %if.then.1453
	jmp	.LBB32_397
.LBB32_394:                             # %if.end.1454
                                        #   in Loop: Header=BB32_357 Depth=1
	jmp	.LBB32_395
.LBB32_395:                             # %if.end.1455
                                        #   in Loop: Header=BB32_357 Depth=1
	jmp	.LBB32_396
.LBB32_396:                             # %back_ok
                                        #   in Loop: Header=BB32_357 Depth=1
	movq	-672(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -672(%rbp)
	movq	-720(%rbp), %rax
	movq	-688(%rbp), %rcx
	subq	%rcx, %rax
	movq	-680(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -680(%rbp)
	jmp	.LBB32_357
.LBB32_397:                             # %while.end.1460
	jmp	.LBB32_413
.LBB32_398:                             # %if.else.1461
	jmp	.LBB32_399
.LBB32_399:                             # %while.body.1463
                                        # =>This Inner Loop Header: Depth=1
	movq	-688(%rbp), %rax
	cmpq	-704(%rbp), %rax
	ja	.LBB32_403
# BB#400:                               # %if.then.1466
                                        #   in Loop: Header=BB32_399 Depth=1
	movq	-688(%rbp), %rax
	cmpq	-696(%rbp), %rax
	ja	.LBB32_402
# BB#401:                               # %if.then.1469
	jmp	.LBB32_412
.LBB32_402:                             # %if.end.1470
                                        #   in Loop: Header=BB32_399 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	24(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -688(%rbp)
	movq	-696(%rbp), %rax
	movq	%rax, -704(%rbp)
.LBB32_403:                             # %if.end.1477
                                        #   in Loop: Header=BB32_399 Depth=1
	xorl	%edi, %edi
	movq	-360(%rbp), %rax
	movq	%rax, -1104(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1104(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB32_408
# BB#404:                               # %land.lhs.true.1481
                                        #   in Loop: Header=BB32_399 Depth=1
	movq	-688(%rbp), %rax
	movzbl	-1(%rax), %edi
	movq	-360(%rbp), %rsi
	callq	in_classes
	testb	$1, %al
	jne	.LBB32_405
	jmp	.LBB32_408
.LBB32_405:                             # %if.then.1486
                                        #   in Loop: Header=BB32_399 Depth=1
	testb	$1, -301(%rbp)
	je	.LBB32_407
# BB#406:                               # %if.then.1488
	jmp	.LBB32_412
.LBB32_407:                             # %if.else.1489
                                        #   in Loop: Header=BB32_399 Depth=1
	jmp	.LBB32_411
.LBB32_408:                             # %if.end.1490
                                        #   in Loop: Header=BB32_399 Depth=1
	movq	-688(%rbp), %rax
	movzbl	-1(%rax), %ecx
	movl	%ecx, %eax
	cmpb	$0, -288(%rbp,%rax)
	jne	.LBB32_410
# BB#409:                               # %if.then.1495
	jmp	.LBB32_412
.LBB32_410:                             # %if.end.1496
                                        #   in Loop: Header=BB32_399 Depth=1
	jmp	.LBB32_411
.LBB32_411:                             # %back_unibyte_ok
                                        #   in Loop: Header=BB32_399 Depth=1
	movq	-688(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -688(%rbp)
	movq	-672(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -672(%rbp)
	movq	-680(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -680(%rbp)
	jmp	.LBB32_399
.LBB32_412:                             # %while.end.1500
	jmp	.LBB32_413
.LBB32_413:                             # %if.end.1501
	jmp	.LBB32_414
.LBB32_414:                             # %if.end.1502
	movq	-672(%rbp), %rdi
	movq	-680(%rbp), %rsi
	callq	set_point_both
	movb	$0, immediate_quit
# BB#415:                               # %do.body.1503
	testb	$1, -377(%rbp)
	je	.LBB32_417
# BB#416:                               # %if.then.1505
	xorl	%edi, %edi
	movb	$0, -377(%rbp)
	movq	-376(%rbp), %rax
	movq	%rax, -1112(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1112(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -1120(%rbp)       # 8-byte Spill
.LBB32_417:                             # %if.end.1508
	jmp	.LBB32_418
.LBB32_418:                             # %do.end.1509
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	subq	-664(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	skip_chars, .Lfunc_end32-skip_chars
	.cfi_endproc

	.globl	Fskip_chars_backward
	.align	16, 0x90
	.type	Fskip_chars_backward,@function
Fskip_chars_backward:                   # @Fskip_chars_backward
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
	subq	$16, %rsp
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movl	%eax, %edi
	callq	skip_chars
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	Fskip_chars_backward, .Lfunc_end33-Fskip_chars_backward
	.cfi_endproc

	.globl	Fskip_syntax_forward
	.align	16, 0x90
	.type	Fskip_syntax_forward,@function
Fskip_syntax_forward:                   # @Fskip_syntax_forward
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
	movl	$1, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movl	%eax, %edi
	callq	skip_syntaxes
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	Fskip_syntax_forward, .Lfunc_end34-Fskip_syntax_forward
	.cfi_endproc

	.align	16, 0x90
	.type	skip_syntaxes,@function
skip_syntaxes:                          # @skip_syntaxes
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
	subq	$576, %rsp              # imm = 0x240
	movb	%dil, %al
	andb	$1, %al
	movb	%al, -9(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movb	$0, -305(%rbp)
	movq	-24(%rbp), %rdi
	callq	CHECK_STRING
	xorl	%edi, %edi
	movq	-32(%rbp), %rdx
	movq	%rdx, -424(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-424(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB35_5
# BB#1:                                 # %if.then
	testb	$1, -9(%rbp)
	je	.LBB35_3
# BB#2:                                 # %cond.true
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	jmp	.LBB35_4
.LBB35_3:                               # %cond.false
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
.LBB35_4:                               # %cond.end
	movq	-432(%rbp), %rax        # 8-byte Reload
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB35_15
.LBB35_5:                               # %if.else
	jmp	.LBB35_6
.LBB35_6:                               # %do.body
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB35_9
# BB#7:                                 # %land.lhs.true
	movq	-32(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB35_9
# BB#8:                                 # %if.then.6
	movq	-32(%rbp), %rdi
	callq	marker_position
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -32(%rbp)
	jmp	.LBB35_13
.LBB35_9:                               # %if.else.9
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB35_11
# BB#10:                                # %cond.true.15
	jmp	.LBB35_12
.LBB35_11:                              # %cond.false.16
	movl	$558, %edi              # imm = 0x22E
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -440(%rbp)        # 8-byte Spill
.LBB35_12:                              # %cond.end.18
	jmp	.LBB35_13
.LBB35_13:                              # %if.end
	jmp	.LBB35_14
.LBB35_14:                              # %do.end
	jmp	.LBB35_15
.LBB35_15:                              # %if.end.19
	movq	-32(%rbp), %rax
	sarq	$2, %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	jle	.LBB35_17
# BB#16:                                # %if.then.23
	movq	current_buffer, %rax
	movq	768(%rax), %rdi
	callq	make_natnum
	movq	%rax, -32(%rbp)
.LBB35_17:                              # %if.end.26
	movq	-32(%rbp), %rax
	sarq	$2, %rax
	movq	current_buffer, %rcx
	cmpq	752(%rcx), %rax
	jge	.LBB35_19
# BB#18:                                # %if.then.31
	movq	current_buffer, %rax
	movq	752(%rax), %rdi
	callq	make_natnum
	movq	%rax, -32(%rbp)
.LBB35_19:                              # %if.end.34
	testb	$1, -9(%rbp)
	je	.LBB35_21
# BB#20:                                # %cond.true.37
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	-32(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jge	.LBB35_22
	jmp	.LBB35_23
.LBB35_21:                              # %cond.false.42
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	-32(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jg	.LBB35_23
.LBB35_22:                              # %if.then.48
	movq	$2, -8(%rbp)
	jmp	.LBB35_124
.LBB35_23:                              # %if.end.49
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movb	%dil, %cl
	movq	-448(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	movb	%cl, -449(%rbp)         # 1-byte Spill
	je	.LBB35_25
# BB#24:                                # %land.rhs
	movq	-32(%rbp), %rax
	sarq	$2, %rax
	movq	current_buffer, %rcx
	movq	736(%rcx), %rcx
	addq	$0, %rcx
	subq	%rcx, %rax
	movq	current_buffer, %rdi
	movq	-32(%rbp), %rcx
	sarq	$2, %rcx
	movq	%rcx, %rsi
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	buf_charpos_to_bytepos
	movq	current_buffer, %rcx
	movq	744(%rcx), %rcx
	addq	$0, %rcx
	subq	%rcx, %rax
	movq	-464(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	setne	%dl
	movb	%dl, -449(%rbp)         # 1-byte Spill
.LBB35_25:                              # %land.end
	movb	-449(%rbp), %al         # 1-byte Reload
	xorl	%esi, %esi
	movl	$256, %ecx              # imm = 0x100
	movl	%ecx, %edx
	leaq	-304(%rbp), %rdi
	andb	$1, %al
	movb	%al, -329(%rbp)
	callq	memset
	movq	-24(%rbp), %rdi
	callq	SBYTES
	movq	-24(%rbp), %rdi
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	SCHARS
	movq	-472(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	jle	.LBB35_27
# BB#26:                                # %if.then.67
	movq	-24(%rbp), %rdi
	callq	string_make_unibyte
	movq	%rax, -24(%rbp)
.LBB35_27:                              # %if.end.69
	movq	-24(%rbp), %rdi
	callq	SDATA
	movq	%rax, -352(%rbp)
	movq	-24(%rbp), %rdi
	callq	SBYTES
	movq	%rax, -344(%rbp)
	movq	$0, -328(%rbp)
	movq	-328(%rbp), %rax
	cmpq	-344(%rbp), %rax
	jge	.LBB35_30
# BB#28:                                # %land.lhs.true.74
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rdi
	callq	SREF
	movzbl	%al, %ecx
	cmpl	$94, %ecx
	jne	.LBB35_30
# BB#29:                                # %if.then.79
	movb	$1, -305(%rbp)
	movq	-328(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -328(%rbp)
.LBB35_30:                              # %if.end.80
	jmp	.LBB35_31
.LBB35_31:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-328(%rbp), %rax
	cmpq	-344(%rbp), %rax
	jge	.LBB35_33
# BB#32:                                # %while.body
                                        #   in Loop: Header=BB35_31 Depth=1
	movq	-328(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -328(%rbp)
	movq	-352(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, -36(%rbp)
	movslq	-36(%rbp), %rax
	movzbl	syntax_spec_code(,%rax), %edx
	movl	%edx, %eax
	movb	$1, -304(%rbp,%rax)
	jmp	.LBB35_31
.LBB35_33:                              # %while.end
	testb	$1, -305(%rbp)
	je	.LBB35_39
# BB#34:                                # %if.then.89
	movq	$0, -320(%rbp)
.LBB35_35:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$256, -320(%rbp)        # imm = 0x100
	jae	.LBB35_38
# BB#36:                                # %for.body
                                        #   in Loop: Header=BB35_35 Depth=1
	movq	-320(%rbp), %rax
	movzbl	-304(%rbp,%rax), %ecx
	xorl	$1, %ecx
	movb	%cl, %dl
	movb	%dl, -304(%rbp,%rax)
# BB#37:                                # %for.inc
                                        #   in Loop: Header=BB35_35 Depth=1
	movq	-320(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -320(%rbp)
	jmp	.LBB35_35
.LBB35_38:                              # %for.end
	jmp	.LBB35_39
.LBB35_39:                              # %if.end.96
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	$1, %ecx
	movq	current_buffer, %rdx
	movq	736(%rdx), %rdx
	addq	$0, %rdx
	movq	%rdx, -360(%rbp)
	movq	current_buffer, %rdx
	movq	736(%rdx), %rdx
	addq	$0, %rdx
	movq	%rdx, -368(%rbp)
	movq	current_buffer, %rdx
	movq	744(%rdx), %rdx
	addq	$0, %rdx
	movq	%rdx, -376(%rbp)
	movb	$1, immediate_quit
	movq	-368(%rbp), %rdi
	movb	-9(%rbp), %sil
	testb	$1, %sil
	cmovnel	%ecx, %eax
	movslq	%eax, %rsi
	callq	SETUP_SYNTAX_TABLE
	testb	$1, -9(%rbp)
	je	.LBB35_78
# BB#40:                                # %if.then.108
	jmp	.LBB35_41
.LBB35_41:                              # %while.body.110
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB35_55 Depth 2
	movq	-376(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB35_43
# BB#42:                                # %cond.true.113
                                        #   in Loop: Header=BB35_41 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	jmp	.LBB35_44
.LBB35_43:                              # %cond.false.115
                                        #   in Loop: Header=BB35_41 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -480(%rbp)        # 8-byte Spill
	jmp	.LBB35_44
.LBB35_44:                              # %cond.end.116
                                        #   in Loop: Header=BB35_41 Depth=1
	movq	-480(%rbp), %rax        # 8-byte Reload
	addq	-376(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -384(%rbp)
	movq	-32(%rbp), %rax
	sarq	$2, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	8(%rcx), %rax
	jne	.LBB35_46
# BB#45:                                # %cond.true.125
                                        #   in Loop: Header=BB35_41 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	24(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	jmp	.LBB35_50
.LBB35_46:                              # %cond.false.132
                                        #   in Loop: Header=BB35_41 Depth=1
	movq	-32(%rbp), %rax
	sarq	$2, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	8(%rcx), %rax
	jl	.LBB35_48
# BB#47:                                # %cond.true.138
                                        #   in Loop: Header=BB35_41 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	jmp	.LBB35_49
.LBB35_48:                              # %cond.false.141
                                        #   in Loop: Header=BB35_41 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -496(%rbp)        # 8-byte Spill
	jmp	.LBB35_49
.LBB35_49:                              # %cond.end.142
                                        #   in Loop: Header=BB35_41 Depth=1
	movq	-496(%rbp), %rax        # 8-byte Reload
	movq	current_buffer, %rdi
	movq	-32(%rbp), %rcx
	sarq	$2, %rcx
	movq	%rcx, %rsi
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	buf_charpos_to_bytepos
	movq	-504(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	addq	(%rax), %rcx
	addq	$-1, %rcx
	movq	%rcx, -488(%rbp)        # 8-byte Spill
.LBB35_50:                              # %cond.end.151
                                        #   in Loop: Header=BB35_41 Depth=1
	movq	-488(%rbp), %rax        # 8-byte Reload
	movq	%rax, -392(%rbp)
	movq	-368(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	8(%rcx), %rax
	jge	.LBB35_53
# BB#51:                                # %land.lhs.true.157
                                        #   in Loop: Header=BB35_41 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jge	.LBB35_53
# BB#52:                                # %cond.true.163
                                        #   in Loop: Header=BB35_41 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	24(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	jmp	.LBB35_54
.LBB35_53:                              # %cond.false.170
                                        #   in Loop: Header=BB35_41 Depth=1
	movq	-392(%rbp), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
.LBB35_54:                              # %cond.end.171
                                        #   in Loop: Header=BB35_41 Depth=1
	movq	-512(%rbp), %rax        # 8-byte Reload
	movq	%rax, -400(%rbp)
.LBB35_55:                              # %do.body.173
                                        #   Parent Loop BB35_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-384(%rbp), %rax
	cmpq	-400(%rbp), %rax
	jb	.LBB35_59
# BB#56:                                # %if.then.176
                                        #   in Loop: Header=BB35_55 Depth=2
	movq	-384(%rbp), %rax
	cmpq	-392(%rbp), %rax
	jb	.LBB35_58
# BB#57:                                # %if.then.179
	jmp	.LBB35_123
.LBB35_58:                              # %if.end.180
                                        #   in Loop: Header=BB35_55 Depth=2
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
	movq	%rax, -384(%rbp)
	movq	-392(%rbp), %rax
	movq	%rax, -400(%rbp)
.LBB35_59:                              # %if.end.190
                                        #   in Loop: Header=BB35_55 Depth=2
	testb	$1, -329(%rbp)
	je	.LBB35_70
# BB#60:                                # %if.then.192
                                        #   in Loop: Header=BB35_55 Depth=2
	movq	-384(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB35_62
# BB#61:                                # %cond.true.197
                                        #   in Loop: Header=BB35_55 Depth=2
	movl	$1, -404(%rbp)
	movq	-384(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -516(%rbp)        # 4-byte Spill
	jmp	.LBB35_69
.LBB35_62:                              # %cond.false.200
                                        #   in Loop: Header=BB35_55 Depth=2
	movq	-384(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB35_64
# BB#63:                                # %cond.true.205
                                        #   in Loop: Header=BB35_55 Depth=2
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -404(%rbp)
	movq	-384(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-384(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-384(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -520(%rbp)        # 4-byte Spill
	jmp	.LBB35_68
.LBB35_64:                              # %cond.false.219
                                        #   in Loop: Header=BB35_55 Depth=2
	movq	-384(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB35_66
# BB#65:                                # %cond.true.224
                                        #   in Loop: Header=BB35_55 Depth=2
	movl	$3, -404(%rbp)
	movq	-384(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-384(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-384(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -524(%rbp)        # 4-byte Spill
	jmp	.LBB35_67
.LBB35_66:                              # %cond.false.238
                                        #   in Loop: Header=BB35_55 Depth=2
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-404(%rbp), %rdx
	movq	-384(%rbp), %rdi
	callq	string_char
	movl	%eax, -524(%rbp)        # 4-byte Spill
.LBB35_67:                              # %cond.end.240
                                        #   in Loop: Header=BB35_55 Depth=2
	movl	-524(%rbp), %eax        # 4-byte Reload
	movl	%eax, -520(%rbp)        # 4-byte Spill
.LBB35_68:                              # %cond.end.242
                                        #   in Loop: Header=BB35_55 Depth=2
	movl	-520(%rbp), %eax        # 4-byte Reload
	movl	%eax, -516(%rbp)        # 4-byte Spill
.LBB35_69:                              # %cond.end.244
                                        #   in Loop: Header=BB35_55 Depth=2
	movl	-516(%rbp), %eax        # 4-byte Reload
	movl	%eax, -36(%rbp)
	jmp	.LBB35_71
.LBB35_70:                              # %if.else.246
                                        #   in Loop: Header=BB35_55 Depth=2
	movq	-384(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -36(%rbp)
	movl	$1, -404(%rbp)
.LBB35_71:                              # %if.end.248
                                        #   in Loop: Header=BB35_55 Depth=2
	movl	$1, %esi
	movl	-36(%rbp), %edi
	callq	syntax_property
	movl	%eax, %eax
	movl	%eax, %ecx
	cmpb	$0, -304(%rbp,%rcx)
	jne	.LBB35_73
# BB#72:                                # %if.then.253
	jmp	.LBB35_123
.LBB35_73:                              # %if.end.254
                                        #   in Loop: Header=BB35_55 Depth=2
	movl	-404(%rbp), %eax
	movq	-384(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -384(%rbp)
	movq	-368(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -368(%rbp)
	movslq	-404(%rbp), %rcx
	addq	-376(%rbp), %rcx
	movq	%rcx, -376(%rbp)
# BB#74:                                # %do.cond
                                        #   in Loop: Header=BB35_55 Depth=2
	movb	$1, %al
	testb	$1, globals+3420
	movb	%al, -525(%rbp)         # 1-byte Spill
	je	.LBB35_76
# BB#75:                                # %lor.rhs
                                        #   in Loop: Header=BB35_55 Depth=2
	movq	-368(%rbp), %rax
	cmpq	gl_state+64, %rax
	setl	%cl
	movb	%cl, -525(%rbp)         # 1-byte Spill
.LBB35_76:                              # %lor.end
                                        #   in Loop: Header=BB35_55 Depth=2
	movb	-525(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB35_55
# BB#77:                                # %do.end.262
                                        #   in Loop: Header=BB35_41 Depth=1
	xorl	%esi, %esi
	movq	-368(%rbp), %rax
	addq	gl_state+96, %rax
	movq	gl_state, %rdx
	movq	%rax, %rdi
	callq	update_syntax_table_forward
	jmp	.LBB35_41
.LBB35_78:                              # %if.else.264
	movq	-376(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB35_80
# BB#79:                                # %cond.true.269
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -536(%rbp)        # 8-byte Spill
	jmp	.LBB35_81
.LBB35_80:                              # %cond.false.272
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -536(%rbp)        # 8-byte Spill
	jmp	.LBB35_81
.LBB35_81:                              # %cond.end.273
	movq	-536(%rbp), %rax        # 8-byte Reload
	addq	-376(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -384(%rbp)
	movq	-32(%rbp), %rax
	sarq	$2, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	8(%rcx), %rax
	jl	.LBB35_83
# BB#82:                                # %cond.true.285
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	jmp	.LBB35_84
.LBB35_83:                              # %cond.false.288
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -544(%rbp)        # 8-byte Spill
	jmp	.LBB35_84
.LBB35_84:                              # %cond.end.289
	movq	-544(%rbp), %rax        # 8-byte Reload
	movq	current_buffer, %rdi
	movq	-32(%rbp), %rcx
	sarq	$2, %rcx
	movq	%rcx, %rsi
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	buf_charpos_to_bytepos
	movq	-552(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	addq	(%rax), %rcx
	addq	$-1, %rcx
	movq	%rcx, -392(%rbp)
	movq	-368(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	8(%rcx), %rax
	jl	.LBB35_87
# BB#85:                                # %land.lhs.true.302
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jle	.LBB35_87
# BB#86:                                # %cond.true.308
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
	movq	%rax, -560(%rbp)        # 8-byte Spill
	jmp	.LBB35_88
.LBB35_87:                              # %cond.false.318
	movq	-392(%rbp), %rax
	movq	%rax, -560(%rbp)        # 8-byte Spill
.LBB35_88:                              # %cond.end.319
	movq	-560(%rbp), %rax        # 8-byte Reload
	movq	%rax, -400(%rbp)
	testb	$1, -329(%rbp)
	je	.LBB35_112
# BB#89:                                # %if.then.322
	jmp	.LBB35_90
.LBB35_90:                              # %while.body.324
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB35_95 Depth 2
	movq	-384(%rbp), %rax
	cmpq	-400(%rbp), %rax
	ja	.LBB35_94
# BB#91:                                # %if.then.327
                                        #   in Loop: Header=BB35_90 Depth=1
	movq	-384(%rbp), %rax
	cmpq	-392(%rbp), %rax
	ja	.LBB35_93
# BB#92:                                # %if.then.330
	jmp	.LBB35_111
.LBB35_93:                              # %if.end.331
                                        #   in Loop: Header=BB35_90 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	24(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -384(%rbp)
	movq	-392(%rbp), %rax
	movq	%rax, -400(%rbp)
.LBB35_94:                              # %if.end.338
                                        #   in Loop: Header=BB35_90 Depth=1
	movq	-368(%rbp), %rax
	subq	$1, %rax
	movq	%rax, %rdi
	callq	UPDATE_SYNTAX_TABLE_BACKWARD
	movq	-384(%rbp), %rax
	movq	%rax, -416(%rbp)
.LBB35_95:                              # %while.cond.340
                                        #   Parent Loop BB35_90 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-384(%rbp), %rdx
	addq	$-1, %rdx
	movq	%rdx, -384(%rbp)
	cmpq	-400(%rbp), %rdx
	movb	%cl, -561(%rbp)         # 1-byte Spill
	jb	.LBB35_97
# BB#96:                                # %land.rhs.343
                                        #   in Loop: Header=BB35_95 Depth=2
	movq	-384(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	setne	%dl
	xorb	$-1, %dl
	movb	%dl, -561(%rbp)         # 1-byte Spill
.LBB35_97:                              # %land.end.348
                                        #   in Loop: Header=BB35_95 Depth=2
	movb	-561(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB35_98
	jmp	.LBB35_99
.LBB35_98:                              # %while.body.349
                                        #   in Loop: Header=BB35_95 Depth=2
	jmp	.LBB35_95
.LBB35_99:                              # %while.end.350
                                        #   in Loop: Header=BB35_90 Depth=1
	movq	-384(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB35_101
# BB#100:                               # %cond.true.355
                                        #   in Loop: Header=BB35_90 Depth=1
	movq	-384(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -568(%rbp)        # 4-byte Spill
	jmp	.LBB35_108
.LBB35_101:                             # %cond.false.358
                                        #   in Loop: Header=BB35_90 Depth=1
	movq	-384(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB35_103
# BB#102:                               # %cond.true.363
                                        #   in Loop: Header=BB35_90 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movq	-384(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-384(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-384(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -572(%rbp)        # 4-byte Spill
	jmp	.LBB35_107
.LBB35_103:                             # %cond.false.378
                                        #   in Loop: Header=BB35_90 Depth=1
	movq	-384(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB35_105
# BB#104:                               # %cond.true.383
                                        #   in Loop: Header=BB35_90 Depth=1
	movq	-384(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-384(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-384(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -576(%rbp)        # 4-byte Spill
	jmp	.LBB35_106
.LBB35_105:                             # %cond.false.397
                                        #   in Loop: Header=BB35_90 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-384(%rbp), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	string_char
	movl	%eax, -576(%rbp)        # 4-byte Spill
.LBB35_106:                             # %cond.end.399
                                        #   in Loop: Header=BB35_90 Depth=1
	movl	-576(%rbp), %eax        # 4-byte Reload
	movl	%eax, -572(%rbp)        # 4-byte Spill
.LBB35_107:                             # %cond.end.401
                                        #   in Loop: Header=BB35_90 Depth=1
	movl	-572(%rbp), %eax        # 4-byte Reload
	movl	%eax, -568(%rbp)        # 4-byte Spill
.LBB35_108:                             # %cond.end.403
                                        #   in Loop: Header=BB35_90 Depth=1
	movl	-568(%rbp), %eax        # 4-byte Reload
	movl	$1, %esi
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %edi
	callq	syntax_property
	movl	%eax, %eax
	movl	%eax, %ecx
	cmpb	$0, -304(%rbp,%rcx)
	jne	.LBB35_110
# BB#109:                               # %if.then.409
	jmp	.LBB35_111
.LBB35_110:                             # %if.end.410
                                        #   in Loop: Header=BB35_90 Depth=1
	movq	-368(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -368(%rbp)
	movq	-416(%rbp), %rax
	movq	-384(%rbp), %rcx
	subq	%rcx, %rax
	movq	-376(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -376(%rbp)
	jmp	.LBB35_90
.LBB35_111:                             # %while.end.412
	jmp	.LBB35_121
.LBB35_112:                             # %if.else.413
	jmp	.LBB35_113
.LBB35_113:                             # %while.body.415
                                        # =>This Inner Loop Header: Depth=1
	movq	-384(%rbp), %rax
	cmpq	-400(%rbp), %rax
	ja	.LBB35_117
# BB#114:                               # %if.then.418
                                        #   in Loop: Header=BB35_113 Depth=1
	movq	-384(%rbp), %rax
	cmpq	-392(%rbp), %rax
	ja	.LBB35_116
# BB#115:                               # %if.then.421
	jmp	.LBB35_120
.LBB35_116:                             # %if.end.422
                                        #   in Loop: Header=BB35_113 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	24(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -384(%rbp)
	movq	-392(%rbp), %rax
	movq	%rax, -400(%rbp)
.LBB35_117:                             # %if.end.429
                                        #   in Loop: Header=BB35_113 Depth=1
	movq	-368(%rbp), %rax
	subq	$1, %rax
	movq	%rax, %rdi
	callq	UPDATE_SYNTAX_TABLE_BACKWARD
	movl	$1, %esi
	movq	-384(%rbp), %rax
	movzbl	-1(%rax), %edi
	callq	syntax_property
	movl	%eax, %eax
	movl	%eax, %ecx
	cmpb	$0, -304(%rbp,%rcx)
	jne	.LBB35_119
# BB#118:                               # %if.then.437
	jmp	.LBB35_120
.LBB35_119:                             # %if.end.438
                                        #   in Loop: Header=BB35_113 Depth=1
	movq	-384(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -384(%rbp)
	movq	-368(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -368(%rbp)
	movq	-376(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -376(%rbp)
	jmp	.LBB35_113
.LBB35_120:                             # %while.end.442
	jmp	.LBB35_121
.LBB35_121:                             # %if.end.443
	jmp	.LBB35_122
.LBB35_122:                             # %if.end.444
	jmp	.LBB35_123
.LBB35_123:                             # %done
	movq	-368(%rbp), %rdi
	movq	-376(%rbp), %rsi
	callq	set_point_both
	movb	$0, immediate_quit
	movq	current_buffer, %rsi
	movq	736(%rsi), %rsi
	addq	$0, %rsi
	subq	-360(%rbp), %rsi
	shlq	$2, %rsi
	addq	$2, %rsi
	movq	%rsi, -8(%rbp)
.LBB35_124:                             # %return
	movq	-8(%rbp), %rax
	addq	$576, %rsp              # imm = 0x240
	popq	%rbp
	retq
.Lfunc_end35:
	.size	skip_syntaxes, .Lfunc_end35-skip_syntaxes
	.cfi_endproc

	.globl	Fskip_syntax_backward
	.align	16, 0x90
	.type	Fskip_syntax_backward,@function
Fskip_syntax_backward:                  # @Fskip_syntax_backward
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
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movl	%eax, %edi
	callq	skip_syntaxes
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	Fskip_syntax_backward, .Lfunc_end36-Fskip_syntax_backward
	.cfi_endproc

	.globl	Fforward_comment
	.align	16, 0x90
	.type	Fforward_comment,@function
Fforward_comment:                       # @Fforward_comment
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
	pushq	%rbx
	subq	$776, %rsp              # imm = 0x308
.Ltmp114:
	.cfi_offset %rbx, -24
	movq	%rdi, -24(%rbp)
	movl	$0, -64(%rbp)
	movb	$0, -65(%rbp)
	movq	-24(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	andl	$-5, %eax
	cmpl	$2, %eax
	jne	.LBB37_2
# BB#1:                                 # %cond.true
	jmp	.LBB37_3
.LBB37_2:                               # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -240(%rbp)        # 8-byte Spill
.LBB37_3:                               # %cond.end
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jle	.LBB37_5
# BB#4:                                 # %cond.true.5
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	jmp	.LBB37_6
.LBB37_5:                               # %cond.false.6
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
.LBB37_6:                               # %cond.end.7
	movq	-248(%rbp), %rax        # 8-byte Reload
	movq	%rax, -48(%rbp)
	movb	$1, immediate_quit
# BB#7:                                 # %do.body
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-256(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB37_10
# BB#8:                                 # %land.lhs.true
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-264(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB37_10
# BB#9:                                 # %if.then
	callq	process_quit_flag
	jmp	.LBB37_13
.LBB37_10:                              # %if.else
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB37_12
# BB#11:                                # %if.then.14
	callq	process_pending_signals
.LBB37_12:                              # %if.end
	jmp	.LBB37_13
.LBB37_13:                              # %if.end.15
	jmp	.LBB37_14
.LBB37_14:                              # %do.end
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, -32(%rbp)
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	SETUP_SYNTAX_TABLE
.LBB37_15:                              # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB37_17 Depth 2
	cmpq	$0, -80(%rbp)
	jle	.LBB37_147
# BB#16:                                # %while.body
                                        #   in Loop: Header=BB37_15 Depth=1
	jmp	.LBB37_17
.LBB37_17:                              # %do.body.19
                                        #   Parent Loop BB37_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-32(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB37_19
# BB#18:                                # %if.then.22
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	set_point_both
	xorl	%edi, %edi
	movb	$0, immediate_quit
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)
	jmp	.LBB37_327
.LBB37_19:                              # %if.end.24
                                        #   in Loop: Header=BB37_17 Depth=2
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-272(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB37_21
# BB#20:                                # %cond.true.28
                                        #   in Loop: Header=BB37_17 Depth=2
	movq	-40(%rbp), %rdi
	callq	FETCH_MULTIBYTE_CHAR
	movl	%eax, -276(%rbp)        # 4-byte Spill
	jmp	.LBB37_39
.LBB37_21:                              # %cond.false.30
                                        #   in Loop: Header=BB37_17 Depth=2
	movb	$1, %al
	testb	$1, %al
	jne	.LBB37_22
	jmp	.LBB37_26
.LBB37_22:                              # %cond.true.31
                                        #   in Loop: Header=BB37_17 Depth=2
	movq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB37_24
# BB#23:                                # %cond.true.34
                                        #   in Loop: Header=BB37_17 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	jmp	.LBB37_25
.LBB37_24:                              # %cond.false.36
                                        #   in Loop: Header=BB37_17 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -288(%rbp)        # 8-byte Spill
	jmp	.LBB37_25
.LBB37_25:                              # %cond.end.37
                                        #   in Loop: Header=BB37_17 Depth=2
	movq	-288(%rbp), %rax        # 8-byte Reload
	addq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$0, %edx
	cmpl	$128, %edx
	jb	.LBB37_30
	jmp	.LBB37_34
.LBB37_26:                              # %cond.false.46
                                        #   in Loop: Header=BB37_17 Depth=2
	movq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB37_28
# BB#27:                                # %cond.true.51
                                        #   in Loop: Header=BB37_17 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	jmp	.LBB37_29
.LBB37_28:                              # %cond.false.54
                                        #   in Loop: Header=BB37_17 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -296(%rbp)        # 8-byte Spill
	jmp	.LBB37_29
.LBB37_29:                              # %cond.end.55
                                        #   in Loop: Header=BB37_17 Depth=2
	movq	-296(%rbp), %rax        # 8-byte Reload
	addq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, %eax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB37_34
.LBB37_30:                              # %cond.true.66
                                        #   in Loop: Header=BB37_17 Depth=2
	movq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB37_32
# BB#31:                                # %cond.true.71
                                        #   in Loop: Header=BB37_17 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	jmp	.LBB37_33
.LBB37_32:                              # %cond.false.74
                                        #   in Loop: Header=BB37_17 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -304(%rbp)        # 8-byte Spill
	jmp	.LBB37_33
.LBB37_33:                              # %cond.end.75
                                        #   in Loop: Header=BB37_17 Depth=2
	movq	-304(%rbp), %rax        # 8-byte Reload
	addq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, -308(%rbp)        # 4-byte Spill
	jmp	.LBB37_38
.LBB37_34:                              # %cond.false.83
                                        #   in Loop: Header=BB37_17 Depth=2
	movq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB37_36
# BB#35:                                # %cond.true.88
                                        #   in Loop: Header=BB37_17 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	jmp	.LBB37_37
.LBB37_36:                              # %cond.false.91
                                        #   in Loop: Header=BB37_17 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	jmp	.LBB37_37
.LBB37_37:                              # %cond.end.92
                                        #   in Loop: Header=BB37_17 Depth=2
	movq	-320(%rbp), %rax        # 8-byte Reload
	addq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$4194048, %edx          # imm = 0x3FFF00
	movl	%edx, -308(%rbp)        # 4-byte Spill
.LBB37_38:                              # %cond.end.101
                                        #   in Loop: Header=BB37_17 Depth=2
	movl	-308(%rbp), %eax        # 4-byte Reload
	movl	%eax, -276(%rbp)        # 4-byte Spill
.LBB37_39:                              # %cond.end.103
                                        #   in Loop: Header=BB37_17 Depth=2
	movl	-276(%rbp), %eax        # 4-byte Reload
	movl	$1, %esi
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %edi
	callq	syntax_property_with_flags
	movl	$1, %esi
	movl	%eax, -112(%rbp)
	movl	-52(%rbp), %edi
	callq	syntax_property
	movl	%eax, -60(%rbp)
	movl	-112(%rbp), %edi
	callq	SYNTAX_FLAGS_COMSTART_FIRST
	andb	$1, %al
	movb	%al, -105(%rbp)
	movl	-112(%rbp), %edi
	callq	SYNTAX_FLAGS_COMMENT_NESTED
	xorl	%esi, %esi
	andb	$1, %al
	movb	%al, -65(%rbp)
	movl	-112(%rbp), %edi
	callq	SYNTAX_FLAGS_COMMENT_STYLE
	movl	%eax, -64(%rbp)
# BB#40:                                # %do.body.111
                                        #   in Loop: Header=BB37_17 Depth=2
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-328(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB37_42
# BB#41:                                # %if.then.116
                                        #   in Loop: Header=BB37_17 Depth=2
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB37_57
.LBB37_42:                              # %if.else.118
                                        #   in Loop: Header=BB37_17 Depth=2
	jmp	.LBB37_43
.LBB37_43:                              # %do.body.119
                                        #   in Loop: Header=BB37_17 Depth=2
	movq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB37_45
# BB#44:                                # %cond.true.124
                                        #   in Loop: Header=BB37_17 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	jmp	.LBB37_46
.LBB37_45:                              # %cond.false.127
                                        #   in Loop: Header=BB37_17 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -336(%rbp)        # 8-byte Spill
	jmp	.LBB37_46
.LBB37_46:                              # %cond.end.128
                                        #   in Loop: Header=BB37_17 Depth=2
	movq	-336(%rbp), %rax        # 8-byte Reload
	addq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movzbl	(%rax), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	jne	.LBB37_48
# BB#47:                                # %cond.true.138
                                        #   in Loop: Header=BB37_17 Depth=2
	movl	$1, %eax
	movl	%eax, -340(%rbp)        # 4-byte Spill
	jmp	.LBB37_55
.LBB37_48:                              # %cond.false.139
                                        #   in Loop: Header=BB37_17 Depth=2
	movq	-128(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB37_50
# BB#49:                                # %cond.true.143
                                        #   in Loop: Header=BB37_17 Depth=2
	movl	$2, %eax
	movl	%eax, -344(%rbp)        # 4-byte Spill
	jmp	.LBB37_54
.LBB37_50:                              # %cond.false.144
                                        #   in Loop: Header=BB37_17 Depth=2
	movq	-128(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB37_52
# BB#51:                                # %cond.true.148
                                        #   in Loop: Header=BB37_17 Depth=2
	movl	$3, %eax
	movl	%eax, -348(%rbp)        # 4-byte Spill
	jmp	.LBB37_53
.LBB37_52:                              # %cond.false.149
                                        #   in Loop: Header=BB37_17 Depth=2
	movl	$5, %eax
	movl	$4, %ecx
	movq	-128(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$8, %esi
	cmpl	$0, %esi
	setne	%dil
	xorb	$-1, %dil
	testb	$1, %dil
	cmovnel	%ecx, %eax
	movl	%eax, -348(%rbp)        # 4-byte Spill
.LBB37_53:                              # %cond.end.154
                                        #   in Loop: Header=BB37_17 Depth=2
	movl	-348(%rbp), %eax        # 4-byte Reload
	movl	%eax, -344(%rbp)        # 4-byte Spill
.LBB37_54:                              # %cond.end.156
                                        #   in Loop: Header=BB37_17 Depth=2
	movl	-344(%rbp), %eax        # 4-byte Reload
	movl	%eax, -340(%rbp)        # 4-byte Spill
.LBB37_55:                              # %cond.end.158
                                        #   in Loop: Header=BB37_17 Depth=2
	movl	-340(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	addq	-40(%rbp), %rcx
	movq	%rcx, -40(%rbp)
# BB#56:                                # %do.end.162
                                        #   in Loop: Header=BB37_17 Depth=2
	jmp	.LBB37_57
.LBB37_57:                              # %if.end.163
                                        #   in Loop: Header=BB37_17 Depth=2
	jmp	.LBB37_58
.LBB37_58:                              # %do.end.164
                                        #   in Loop: Header=BB37_17 Depth=2
	movq	-32(%rbp), %rdi
	callq	UPDATE_SYNTAX_TABLE_FORWARD
	movq	-32(%rbp), %rdi
	cmpq	-48(%rbp), %rdi
	jge	.LBB37_101
# BB#59:                                # %land.lhs.true.167
                                        #   in Loop: Header=BB37_17 Depth=2
	testb	$1, -105(%rbp)
	je	.LBB37_101
# BB#60:                                # %land.lhs.true.170
                                        #   in Loop: Header=BB37_17 Depth=2
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-360(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB37_62
# BB#61:                                # %cond.true.175
                                        #   in Loop: Header=BB37_17 Depth=2
	movq	-40(%rbp), %rdi
	callq	FETCH_MULTIBYTE_CHAR
	movl	%eax, -364(%rbp)        # 4-byte Spill
	jmp	.LBB37_80
.LBB37_62:                              # %cond.false.177
                                        #   in Loop: Header=BB37_17 Depth=2
	movb	$1, %al
	testb	$1, %al
	jne	.LBB37_63
	jmp	.LBB37_67
.LBB37_63:                              # %cond.true.178
                                        #   in Loop: Header=BB37_17 Depth=2
	movq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB37_65
# BB#64:                                # %cond.true.183
                                        #   in Loop: Header=BB37_17 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	jmp	.LBB37_66
.LBB37_65:                              # %cond.false.186
                                        #   in Loop: Header=BB37_17 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -376(%rbp)        # 8-byte Spill
	jmp	.LBB37_66
.LBB37_66:                              # %cond.end.187
                                        #   in Loop: Header=BB37_17 Depth=2
	movq	-376(%rbp), %rax        # 8-byte Reload
	addq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$0, %edx
	cmpl	$128, %edx
	jb	.LBB37_71
	jmp	.LBB37_75
.LBB37_67:                              # %cond.false.198
                                        #   in Loop: Header=BB37_17 Depth=2
	movq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB37_69
# BB#68:                                # %cond.true.203
                                        #   in Loop: Header=BB37_17 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	jmp	.LBB37_70
.LBB37_69:                              # %cond.false.206
                                        #   in Loop: Header=BB37_17 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -384(%rbp)        # 8-byte Spill
	jmp	.LBB37_70
.LBB37_70:                              # %cond.end.207
                                        #   in Loop: Header=BB37_17 Depth=2
	movq	-384(%rbp), %rax        # 8-byte Reload
	addq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, %eax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB37_75
.LBB37_71:                              # %cond.true.218
                                        #   in Loop: Header=BB37_17 Depth=2
	movq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB37_73
# BB#72:                                # %cond.true.223
                                        #   in Loop: Header=BB37_17 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	jmp	.LBB37_74
.LBB37_73:                              # %cond.false.226
                                        #   in Loop: Header=BB37_17 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -392(%rbp)        # 8-byte Spill
	jmp	.LBB37_74
.LBB37_74:                              # %cond.end.227
                                        #   in Loop: Header=BB37_17 Depth=2
	movq	-392(%rbp), %rax        # 8-byte Reload
	addq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, -396(%rbp)        # 4-byte Spill
	jmp	.LBB37_79
.LBB37_75:                              # %cond.false.235
                                        #   in Loop: Header=BB37_17 Depth=2
	movq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB37_77
# BB#76:                                # %cond.true.240
                                        #   in Loop: Header=BB37_17 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	jmp	.LBB37_78
.LBB37_77:                              # %cond.false.243
                                        #   in Loop: Header=BB37_17 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -408(%rbp)        # 8-byte Spill
	jmp	.LBB37_78
.LBB37_78:                              # %cond.end.244
                                        #   in Loop: Header=BB37_17 Depth=2
	movq	-408(%rbp), %rax        # 8-byte Reload
	addq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$4194048, %edx          # imm = 0x3FFF00
	movl	%edx, -396(%rbp)        # 4-byte Spill
.LBB37_79:                              # %cond.end.253
                                        #   in Loop: Header=BB37_17 Depth=2
	movl	-396(%rbp), %eax        # 4-byte Reload
	movl	%eax, -364(%rbp)        # 4-byte Spill
.LBB37_80:                              # %cond.end.255
                                        #   in Loop: Header=BB37_17 Depth=2
	movl	-364(%rbp), %eax        # 4-byte Reload
	movl	$1, %esi
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %edi
	callq	syntax_property_with_flags
	movl	%eax, -116(%rbp)
	movl	-116(%rbp), %edi
	callq	SYNTAX_FLAGS_COMSTART_SECOND
	testb	$1, %al
	jne	.LBB37_81
	jmp	.LBB37_101
.LBB37_81:                              # %if.then.260
                                        #   in Loop: Header=BB37_17 Depth=2
	movl	$11, -60(%rbp)
	movl	-116(%rbp), %edi
	movl	-112(%rbp), %esi
	callq	SYNTAX_FLAGS_COMMENT_STYLE
	movl	%eax, -64(%rbp)
	movl	-116(%rbp), %edi
	callq	SYNTAX_FLAGS_COMMENT_NESTED
	andb	$1, %al
	movzbl	%al, %esi
	movb	-65(%rbp), %al
	andb	$1, %al
	movzbl	%al, %edi
	orl	%esi, %edi
	cmpl	$0, %edi
	setne	%al
	andb	$1, %al
	movb	%al, -65(%rbp)
# BB#82:                                # %do.body.268
                                        #   in Loop: Header=BB37_17 Depth=2
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-416(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB37_84
# BB#83:                                # %if.then.274
                                        #   in Loop: Header=BB37_17 Depth=2
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB37_99
.LBB37_84:                              # %if.else.276
                                        #   in Loop: Header=BB37_17 Depth=2
	jmp	.LBB37_85
.LBB37_85:                              # %do.body.277
                                        #   in Loop: Header=BB37_17 Depth=2
	movq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB37_87
# BB#86:                                # %cond.true.283
                                        #   in Loop: Header=BB37_17 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	jmp	.LBB37_88
.LBB37_87:                              # %cond.false.286
                                        #   in Loop: Header=BB37_17 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -424(%rbp)        # 8-byte Spill
	jmp	.LBB37_88
.LBB37_88:                              # %cond.end.287
                                        #   in Loop: Header=BB37_17 Depth=2
	movq	-424(%rbp), %rax        # 8-byte Reload
	addq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movzbl	(%rax), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	jne	.LBB37_90
# BB#89:                                # %cond.true.297
                                        #   in Loop: Header=BB37_17 Depth=2
	movl	$1, %eax
	movl	%eax, -428(%rbp)        # 4-byte Spill
	jmp	.LBB37_97
.LBB37_90:                              # %cond.false.298
                                        #   in Loop: Header=BB37_17 Depth=2
	movq	-136(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB37_92
# BB#91:                                # %cond.true.302
                                        #   in Loop: Header=BB37_17 Depth=2
	movl	$2, %eax
	movl	%eax, -432(%rbp)        # 4-byte Spill
	jmp	.LBB37_96
.LBB37_92:                              # %cond.false.303
                                        #   in Loop: Header=BB37_17 Depth=2
	movq	-136(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB37_94
# BB#93:                                # %cond.true.307
                                        #   in Loop: Header=BB37_17 Depth=2
	movl	$3, %eax
	movl	%eax, -436(%rbp)        # 4-byte Spill
	jmp	.LBB37_95
.LBB37_94:                              # %cond.false.308
                                        #   in Loop: Header=BB37_17 Depth=2
	movl	$5, %eax
	movl	$4, %ecx
	movq	-136(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$8, %esi
	cmpl	$0, %esi
	setne	%dil
	xorb	$-1, %dil
	testb	$1, %dil
	cmovnel	%ecx, %eax
	movl	%eax, -436(%rbp)        # 4-byte Spill
.LBB37_95:                              # %cond.end.314
                                        #   in Loop: Header=BB37_17 Depth=2
	movl	-436(%rbp), %eax        # 4-byte Reload
	movl	%eax, -432(%rbp)        # 4-byte Spill
.LBB37_96:                              # %cond.end.316
                                        #   in Loop: Header=BB37_17 Depth=2
	movl	-432(%rbp), %eax        # 4-byte Reload
	movl	%eax, -428(%rbp)        # 4-byte Spill
.LBB37_97:                              # %cond.end.318
                                        #   in Loop: Header=BB37_17 Depth=2
	movl	-428(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	addq	-40(%rbp), %rcx
	movq	%rcx, -40(%rbp)
# BB#98:                                # %do.end.322
                                        #   in Loop: Header=BB37_17 Depth=2
	jmp	.LBB37_99
.LBB37_99:                              # %if.end.323
                                        #   in Loop: Header=BB37_17 Depth=2
	jmp	.LBB37_100
.LBB37_100:                             # %do.end.324
                                        #   in Loop: Header=BB37_17 Depth=2
	movq	-32(%rbp), %rdi
	callq	UPDATE_SYNTAX_TABLE_FORWARD
.LBB37_101:                             # %if.end.325
                                        #   in Loop: Header=BB37_17 Depth=2
	jmp	.LBB37_102
.LBB37_102:                             # %do.cond
                                        #   in Loop: Header=BB37_17 Depth=2
	movb	$1, %al
	cmpl	$0, -60(%rbp)
	movb	%al, -437(%rbp)         # 1-byte Spill
	je	.LBB37_106
# BB#103:                               # %lor.rhs
                                        #   in Loop: Header=BB37_17 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$12, -60(%rbp)
	movb	%cl, -438(%rbp)         # 1-byte Spill
	jne	.LBB37_105
# BB#104:                               # %land.rhs
                                        #   in Loop: Header=BB37_17 Depth=2
	cmpl	$10, -52(%rbp)
	sete	%al
	movb	%al, -438(%rbp)         # 1-byte Spill
.LBB37_105:                             # %land.end
                                        #   in Loop: Header=BB37_17 Depth=2
	movb	-438(%rbp), %al         # 1-byte Reload
	movb	%al, -437(%rbp)         # 1-byte Spill
.LBB37_106:                             # %lor.end
                                        #   in Loop: Header=BB37_17 Depth=2
	movb	-437(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB37_17
# BB#107:                               # %do.end.332
                                        #   in Loop: Header=BB37_15 Depth=1
	cmpl	$14, -60(%rbp)
	jne	.LBB37_109
# BB#108:                               # %if.then.335
                                        #   in Loop: Header=BB37_15 Depth=1
	movl	$257, -64(%rbp)         # imm = 0x101
	jmp	.LBB37_125
.LBB37_109:                             # %if.else.336
                                        #   in Loop: Header=BB37_15 Depth=1
	cmpl	$11, -60(%rbp)
	je	.LBB37_124
# BB#110:                               # %if.then.339
	movb	$0, immediate_quit
# BB#111:                               # %do.body.340
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -32(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-448(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB37_113
# BB#112:                               # %if.then.345
	movq	-40(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB37_122
.LBB37_113:                             # %if.else.347
	jmp	.LBB37_114
.LBB37_114:                             # %do.body.348
	movq	-40(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jge	.LBB37_116
# BB#115:                               # %if.then.355
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	addq	-40(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -144(%rbp)
	jmp	.LBB37_117
.LBB37_116:                             # %if.else.360
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	40(%rcx), %rax
	addq	-40(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -144(%rbp)
.LBB37_117:                             # %if.end.368
	jmp	.LBB37_118
.LBB37_118:                             # %while.cond.369
                                        # =>This Inner Loop Header: Depth=1
	movq	-144(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	setne	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB37_119
	jmp	.LBB37_120
.LBB37_119:                             # %while.body.375
                                        #   in Loop: Header=BB37_118 Depth=1
	movq	-144(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -144(%rbp)
	movq	-40(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB37_118
.LBB37_120:                             # %while.end
	jmp	.LBB37_121
.LBB37_121:                             # %do.end.378
	jmp	.LBB37_122
.LBB37_122:                             # %if.end.379
	jmp	.LBB37_123
.LBB37_123:                             # %do.end.381
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	set_point_both
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)
	jmp	.LBB37_327
.LBB37_124:                             # %if.end.383
                                        #   in Loop: Header=BB37_15 Depth=1
	jmp	.LBB37_125
.LBB37_125:                             # %if.end.384
                                        #   in Loop: Header=BB37_15 Depth=1
	xorl	%r9d, %r9d
	leaq	-88(%rbp), %rax
	leaq	-96(%rbp), %rcx
	leaq	-104(%rbp), %rdx
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %r8
	movb	-65(%rbp), %r10b
	andb	$1, %r10b
	movzbl	%r10b, %r11d
	movl	%r11d, %ebx
	movl	-64(%rbp), %r11d
	movq	%rdx, -456(%rbp)        # 8-byte Spill
	movq	%r8, %rdx
	movq	%rcx, -464(%rbp)        # 8-byte Spill
	movq	%rbx, %rcx
	movl	%r11d, %r8d
	movq	%rax, (%rsp)
	movq	-464(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	-456(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 16(%rsp)
	callq	forw_comment
	andb	$1, %al
	movb	%al, -66(%rbp)
	movq	-88(%rbp), %rcx
	movq	%rcx, -32(%rbp)
	movq	-96(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	testb	$1, -66(%rbp)
	jne	.LBB37_127
# BB#126:                               # %if.then.390
	movb	$0, immediate_quit
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	set_point_both
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)
	jmp	.LBB37_327
.LBB37_127:                             # %if.end.392
                                        #   in Loop: Header=BB37_15 Depth=1
	jmp	.LBB37_128
.LBB37_128:                             # %do.body.393
                                        #   in Loop: Header=BB37_15 Depth=1
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-472(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB37_130
# BB#129:                               # %if.then.399
                                        #   in Loop: Header=BB37_15 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB37_145
.LBB37_130:                             # %if.else.401
                                        #   in Loop: Header=BB37_15 Depth=1
	jmp	.LBB37_131
.LBB37_131:                             # %do.body.402
                                        #   in Loop: Header=BB37_15 Depth=1
	movq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB37_133
# BB#132:                               # %cond.true.408
                                        #   in Loop: Header=BB37_15 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	jmp	.LBB37_134
.LBB37_133:                             # %cond.false.411
                                        #   in Loop: Header=BB37_15 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -480(%rbp)        # 8-byte Spill
	jmp	.LBB37_134
.LBB37_134:                             # %cond.end.412
                                        #   in Loop: Header=BB37_15 Depth=1
	movq	-480(%rbp), %rax        # 8-byte Reload
	addq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movzbl	(%rax), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	jne	.LBB37_136
# BB#135:                               # %cond.true.422
                                        #   in Loop: Header=BB37_15 Depth=1
	movl	$1, %eax
	movl	%eax, -484(%rbp)        # 4-byte Spill
	jmp	.LBB37_143
.LBB37_136:                             # %cond.false.423
                                        #   in Loop: Header=BB37_15 Depth=1
	movq	-152(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB37_138
# BB#137:                               # %cond.true.427
                                        #   in Loop: Header=BB37_15 Depth=1
	movl	$2, %eax
	movl	%eax, -488(%rbp)        # 4-byte Spill
	jmp	.LBB37_142
.LBB37_138:                             # %cond.false.428
                                        #   in Loop: Header=BB37_15 Depth=1
	movq	-152(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB37_140
# BB#139:                               # %cond.true.432
                                        #   in Loop: Header=BB37_15 Depth=1
	movl	$3, %eax
	movl	%eax, -492(%rbp)        # 4-byte Spill
	jmp	.LBB37_141
.LBB37_140:                             # %cond.false.433
                                        #   in Loop: Header=BB37_15 Depth=1
	movl	$5, %eax
	movl	$4, %ecx
	movq	-152(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$8, %esi
	cmpl	$0, %esi
	setne	%dil
	xorb	$-1, %dil
	testb	$1, %dil
	cmovnel	%ecx, %eax
	movl	%eax, -492(%rbp)        # 4-byte Spill
.LBB37_141:                             # %cond.end.439
                                        #   in Loop: Header=BB37_15 Depth=1
	movl	-492(%rbp), %eax        # 4-byte Reload
	movl	%eax, -488(%rbp)        # 4-byte Spill
.LBB37_142:                             # %cond.end.441
                                        #   in Loop: Header=BB37_15 Depth=1
	movl	-488(%rbp), %eax        # 4-byte Reload
	movl	%eax, -484(%rbp)        # 4-byte Spill
.LBB37_143:                             # %cond.end.443
                                        #   in Loop: Header=BB37_15 Depth=1
	movl	-484(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	addq	-40(%rbp), %rcx
	movq	%rcx, -40(%rbp)
# BB#144:                               # %do.end.448
                                        #   in Loop: Header=BB37_15 Depth=1
	jmp	.LBB37_145
.LBB37_145:                             # %if.end.449
                                        #   in Loop: Header=BB37_15 Depth=1
	jmp	.LBB37_146
.LBB37_146:                             # %do.end.451
                                        #   in Loop: Header=BB37_15 Depth=1
	movq	-32(%rbp), %rdi
	callq	UPDATE_SYNTAX_TABLE_FORWARD
	movq	-80(%rbp), %rdi
	addq	$-1, %rdi
	movq	%rdi, -80(%rbp)
	jmp	.LBB37_15
.LBB37_147:                             # %while.end.453
	jmp	.LBB37_148
.LBB37_148:                             # %while.cond.454
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB37_150 Depth 2
                                        #       Child Loop BB37_160 Depth 3
                                        #       Child Loop BB37_199 Depth 3
                                        #     Child Loop BB37_227 Depth 2
                                        #       Child Loop BB37_235 Depth 3
	cmpq	$0, -80(%rbp)
	jge	.LBB37_326
# BB#149:                               # %while.body.457
                                        #   in Loop: Header=BB37_148 Depth=1
	jmp	.LBB37_150
.LBB37_150:                             # %while.body.459
                                        #   Parent Loop BB37_148 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB37_160 Depth 3
                                        #       Child Loop BB37_199 Depth 3
	movq	-32(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jg	.LBB37_152
# BB#151:                               # %if.then.463
	movq	current_buffer, %rax
	movq	752(%rax), %rdi
	movq	current_buffer, %rax
	movq	760(%rax), %rsi
	callq	set_point_both
	xorl	%edi, %edi
	movb	$0, immediate_quit
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)
	jmp	.LBB37_327
.LBB37_152:                             # %if.end.466
                                        #   in Loop: Header=BB37_150 Depth=2
	jmp	.LBB37_153
.LBB37_153:                             # %do.body.467
                                        #   in Loop: Header=BB37_150 Depth=2
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -32(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-504(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB37_155
# BB#154:                               # %if.then.473
                                        #   in Loop: Header=BB37_150 Depth=2
	movq	-40(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB37_164
.LBB37_155:                             # %if.else.475
                                        #   in Loop: Header=BB37_150 Depth=2
	jmp	.LBB37_156
.LBB37_156:                             # %do.body.476
                                        #   in Loop: Header=BB37_150 Depth=2
	movq	-40(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jge	.LBB37_158
# BB#157:                               # %if.then.483
                                        #   in Loop: Header=BB37_150 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	addq	-40(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -168(%rbp)
	jmp	.LBB37_159
.LBB37_158:                             # %if.else.488
                                        #   in Loop: Header=BB37_150 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	40(%rcx), %rax
	addq	-40(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -168(%rbp)
.LBB37_159:                             # %if.end.496
                                        #   in Loop: Header=BB37_150 Depth=2
	jmp	.LBB37_160
.LBB37_160:                             # %while.cond.497
                                        #   Parent Loop BB37_148 Depth=1
                                        #     Parent Loop BB37_150 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-168(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	setne	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB37_161
	jmp	.LBB37_162
.LBB37_161:                             # %while.body.503
                                        #   in Loop: Header=BB37_160 Depth=3
	movq	-168(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -168(%rbp)
	movq	-40(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB37_160
.LBB37_162:                             # %while.end.506
                                        #   in Loop: Header=BB37_150 Depth=2
	jmp	.LBB37_163
.LBB37_163:                             # %do.end.508
                                        #   in Loop: Header=BB37_150 Depth=2
	jmp	.LBB37_164
.LBB37_164:                             # %if.end.509
                                        #   in Loop: Header=BB37_150 Depth=2
	jmp	.LBB37_165
.LBB37_165:                             # %do.end.511
                                        #   in Loop: Header=BB37_150 Depth=2
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	char_quoted
	xorl	%edi, %edi
	andb	$1, %al
	movb	%al, -153(%rbp)
	movq	current_buffer, %rsi
	movq	312(%rsi), %rsi
	movq	%rsi, -512(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-512(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB37_167
# BB#166:                               # %cond.true.518
                                        #   in Loop: Header=BB37_150 Depth=2
	movq	-40(%rbp), %rdi
	callq	FETCH_MULTIBYTE_CHAR
	movl	%eax, -516(%rbp)        # 4-byte Spill
	jmp	.LBB37_185
.LBB37_167:                             # %cond.false.520
                                        #   in Loop: Header=BB37_150 Depth=2
	movb	$1, %al
	testb	$1, %al
	jne	.LBB37_168
	jmp	.LBB37_172
.LBB37_168:                             # %cond.true.521
                                        #   in Loop: Header=BB37_150 Depth=2
	movq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB37_170
# BB#169:                               # %cond.true.526
                                        #   in Loop: Header=BB37_150 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	jmp	.LBB37_171
.LBB37_170:                             # %cond.false.529
                                        #   in Loop: Header=BB37_150 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -528(%rbp)        # 8-byte Spill
	jmp	.LBB37_171
.LBB37_171:                             # %cond.end.530
                                        #   in Loop: Header=BB37_150 Depth=2
	movq	-528(%rbp), %rax        # 8-byte Reload
	addq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$0, %edx
	cmpl	$128, %edx
	jb	.LBB37_176
	jmp	.LBB37_180
.LBB37_172:                             # %cond.false.541
                                        #   in Loop: Header=BB37_150 Depth=2
	movq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB37_174
# BB#173:                               # %cond.true.546
                                        #   in Loop: Header=BB37_150 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -536(%rbp)        # 8-byte Spill
	jmp	.LBB37_175
.LBB37_174:                             # %cond.false.549
                                        #   in Loop: Header=BB37_150 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -536(%rbp)        # 8-byte Spill
	jmp	.LBB37_175
.LBB37_175:                             # %cond.end.550
                                        #   in Loop: Header=BB37_150 Depth=2
	movq	-536(%rbp), %rax        # 8-byte Reload
	addq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, %eax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB37_180
.LBB37_176:                             # %cond.true.561
                                        #   in Loop: Header=BB37_150 Depth=2
	movq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB37_178
# BB#177:                               # %cond.true.566
                                        #   in Loop: Header=BB37_150 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	jmp	.LBB37_179
.LBB37_178:                             # %cond.false.569
                                        #   in Loop: Header=BB37_150 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -544(%rbp)        # 8-byte Spill
	jmp	.LBB37_179
.LBB37_179:                             # %cond.end.570
                                        #   in Loop: Header=BB37_150 Depth=2
	movq	-544(%rbp), %rax        # 8-byte Reload
	addq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, -548(%rbp)        # 4-byte Spill
	jmp	.LBB37_184
.LBB37_180:                             # %cond.false.578
                                        #   in Loop: Header=BB37_150 Depth=2
	movq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB37_182
# BB#181:                               # %cond.true.583
                                        #   in Loop: Header=BB37_150 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -560(%rbp)        # 8-byte Spill
	jmp	.LBB37_183
.LBB37_182:                             # %cond.false.586
                                        #   in Loop: Header=BB37_150 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -560(%rbp)        # 8-byte Spill
	jmp	.LBB37_183
.LBB37_183:                             # %cond.end.587
                                        #   in Loop: Header=BB37_150 Depth=2
	movq	-560(%rbp), %rax        # 8-byte Reload
	addq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$4194048, %edx          # imm = 0x3FFF00
	movl	%edx, -548(%rbp)        # 4-byte Spill
.LBB37_184:                             # %cond.end.596
                                        #   in Loop: Header=BB37_150 Depth=2
	movl	-548(%rbp), %eax        # 4-byte Reload
	movl	%eax, -516(%rbp)        # 4-byte Spill
.LBB37_185:                             # %cond.end.598
                                        #   in Loop: Header=BB37_150 Depth=2
	movl	-516(%rbp), %eax        # 4-byte Reload
	movl	$1, %esi
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %edi
	callq	syntax_property_with_flags
	movl	$1, %esi
	movl	%eax, -160(%rbp)
	movl	-52(%rbp), %edi
	callq	syntax_property
	movl	%eax, -60(%rbp)
	movl	$0, -64(%rbp)
	movl	-160(%rbp), %edi
	callq	SYNTAX_FLAGS_COMMENT_NESTED
	andb	$1, %al
	movb	%al, -65(%rbp)
	cmpl	$12, -60(%rbp)
	jne	.LBB37_187
# BB#186:                               # %if.then.606
                                        #   in Loop: Header=BB37_150 Depth=2
	xorl	%esi, %esi
	movl	-160(%rbp), %edi
	callq	SYNTAX_FLAGS_COMMENT_STYLE
	movl	%eax, -64(%rbp)
.LBB37_187:                             # %if.end.608
                                        #   in Loop: Header=BB37_150 Depth=2
	movq	-32(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jle	.LBB37_225
# BB#188:                               # %land.lhs.true.611
                                        #   in Loop: Header=BB37_150 Depth=2
	movl	-160(%rbp), %edi
	callq	SYNTAX_FLAGS_COMEND_SECOND
	testb	$1, %al
	jne	.LBB37_189
	jmp	.LBB37_225
.LBB37_189:                             # %land.lhs.true.614
                                        #   in Loop: Header=BB37_150 Depth=2
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	prev_char_comend_first
	testb	$1, %al
	jne	.LBB37_190
	jmp	.LBB37_225
.LBB37_190:                             # %land.lhs.true.617
                                        #   in Loop: Header=BB37_150 Depth=2
	movq	-32(%rbp), %rax
	subq	$1, %rax
	movq	-40(%rbp), %rdi
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	dec_bytepos
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	char_quoted
	testb	$1, %al
	jne	.LBB37_225
# BB#191:                               # %if.then.620
                                        #   in Loop: Header=BB37_150 Depth=2
	jmp	.LBB37_192
.LBB37_192:                             # %do.body.622
                                        #   in Loop: Header=BB37_150 Depth=2
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -32(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-576(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB37_194
# BB#193:                               # %if.then.628
                                        #   in Loop: Header=BB37_150 Depth=2
	movq	-40(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB37_203
.LBB37_194:                             # %if.else.630
                                        #   in Loop: Header=BB37_150 Depth=2
	jmp	.LBB37_195
.LBB37_195:                             # %do.body.631
                                        #   in Loop: Header=BB37_150 Depth=2
	movq	-40(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jge	.LBB37_197
# BB#196:                               # %if.then.638
                                        #   in Loop: Header=BB37_150 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	addq	-40(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -184(%rbp)
	jmp	.LBB37_198
.LBB37_197:                             # %if.else.643
                                        #   in Loop: Header=BB37_150 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	40(%rcx), %rax
	addq	-40(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -184(%rbp)
.LBB37_198:                             # %if.end.651
                                        #   in Loop: Header=BB37_150 Depth=2
	jmp	.LBB37_199
.LBB37_199:                             # %while.cond.652
                                        #   Parent Loop BB37_148 Depth=1
                                        #     Parent Loop BB37_150 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-184(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	setne	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB37_200
	jmp	.LBB37_201
.LBB37_200:                             # %while.body.658
                                        #   in Loop: Header=BB37_199 Depth=3
	movq	-184(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -184(%rbp)
	movq	-40(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB37_199
.LBB37_201:                             # %while.end.661
                                        #   in Loop: Header=BB37_150 Depth=2
	jmp	.LBB37_202
.LBB37_202:                             # %do.end.663
                                        #   in Loop: Header=BB37_150 Depth=2
	jmp	.LBB37_203
.LBB37_203:                             # %if.end.664
                                        #   in Loop: Header=BB37_150 Depth=2
	jmp	.LBB37_204
.LBB37_204:                             # %do.end.666
                                        #   in Loop: Header=BB37_150 Depth=2
	xorl	%edi, %edi
	movl	$12, -60(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-584(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB37_206
# BB#205:                               # %cond.true.671
                                        #   in Loop: Header=BB37_150 Depth=2
	movq	-40(%rbp), %rdi
	callq	FETCH_MULTIBYTE_CHAR
	movl	%eax, -588(%rbp)        # 4-byte Spill
	jmp	.LBB37_224
.LBB37_206:                             # %cond.false.673
                                        #   in Loop: Header=BB37_150 Depth=2
	movb	$1, %al
	testb	$1, %al
	jne	.LBB37_207
	jmp	.LBB37_211
.LBB37_207:                             # %cond.true.674
                                        #   in Loop: Header=BB37_150 Depth=2
	movq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB37_209
# BB#208:                               # %cond.true.679
                                        #   in Loop: Header=BB37_150 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
	jmp	.LBB37_210
.LBB37_209:                             # %cond.false.682
                                        #   in Loop: Header=BB37_150 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -600(%rbp)        # 8-byte Spill
	jmp	.LBB37_210
.LBB37_210:                             # %cond.end.683
                                        #   in Loop: Header=BB37_150 Depth=2
	movq	-600(%rbp), %rax        # 8-byte Reload
	addq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$0, %edx
	cmpl	$128, %edx
	jb	.LBB37_215
	jmp	.LBB37_219
.LBB37_211:                             # %cond.false.694
                                        #   in Loop: Header=BB37_150 Depth=2
	movq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB37_213
# BB#212:                               # %cond.true.699
                                        #   in Loop: Header=BB37_150 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -608(%rbp)        # 8-byte Spill
	jmp	.LBB37_214
.LBB37_213:                             # %cond.false.702
                                        #   in Loop: Header=BB37_150 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -608(%rbp)        # 8-byte Spill
	jmp	.LBB37_214
.LBB37_214:                             # %cond.end.703
                                        #   in Loop: Header=BB37_150 Depth=2
	movq	-608(%rbp), %rax        # 8-byte Reload
	addq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, %eax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB37_219
.LBB37_215:                             # %cond.true.714
                                        #   in Loop: Header=BB37_150 Depth=2
	movq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB37_217
# BB#216:                               # %cond.true.719
                                        #   in Loop: Header=BB37_150 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
	jmp	.LBB37_218
.LBB37_217:                             # %cond.false.722
                                        #   in Loop: Header=BB37_150 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -616(%rbp)        # 8-byte Spill
	jmp	.LBB37_218
.LBB37_218:                             # %cond.end.723
                                        #   in Loop: Header=BB37_150 Depth=2
	movq	-616(%rbp), %rax        # 8-byte Reload
	addq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, -620(%rbp)        # 4-byte Spill
	jmp	.LBB37_223
.LBB37_219:                             # %cond.false.731
                                        #   in Loop: Header=BB37_150 Depth=2
	movq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB37_221
# BB#220:                               # %cond.true.736
                                        #   in Loop: Header=BB37_150 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -632(%rbp)        # 8-byte Spill
	jmp	.LBB37_222
.LBB37_221:                             # %cond.false.739
                                        #   in Loop: Header=BB37_150 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -632(%rbp)        # 8-byte Spill
	jmp	.LBB37_222
.LBB37_222:                             # %cond.end.740
                                        #   in Loop: Header=BB37_150 Depth=2
	movq	-632(%rbp), %rax        # 8-byte Reload
	addq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$4194048, %edx          # imm = 0x3FFF00
	movl	%edx, -620(%rbp)        # 4-byte Spill
.LBB37_223:                             # %cond.end.749
                                        #   in Loop: Header=BB37_150 Depth=2
	movl	-620(%rbp), %eax        # 4-byte Reload
	movl	%eax, -588(%rbp)        # 4-byte Spill
.LBB37_224:                             # %cond.end.751
                                        #   in Loop: Header=BB37_150 Depth=2
	movl	-588(%rbp), %eax        # 4-byte Reload
	movl	$1, %esi
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %edi
	callq	syntax_property_with_flags
	movl	%eax, -172(%rbp)
	movl	-172(%rbp), %edi
	movl	-160(%rbp), %esi
	callq	SYNTAX_FLAGS_COMMENT_STYLE
	movl	%eax, -64(%rbp)
	movl	-172(%rbp), %edi
	callq	SYNTAX_FLAGS_COMMENT_NESTED
	andb	$1, %al
	movzbl	%al, %esi
	movb	-65(%rbp), %al
	andb	$1, %al
	movzbl	%al, %edi
	orl	%esi, %edi
	cmpl	$0, %edi
	setne	%al
	andb	$1, %al
	movb	%al, -65(%rbp)
.LBB37_225:                             # %if.end.762
                                        #   in Loop: Header=BB37_150 Depth=2
	cmpl	$14, -60(%rbp)
	jne	.LBB37_270
# BB#226:                               # %if.then.765
                                        #   in Loop: Header=BB37_148 Depth=1
	movb	$0, -185(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -200(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -208(%rbp)
.LBB37_227:                             # %while.body.767
                                        #   Parent Loop BB37_148 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB37_235 Depth 3
	jmp	.LBB37_228
.LBB37_228:                             # %do.body.768
                                        #   in Loop: Header=BB37_227 Depth=2
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -32(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-640(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB37_230
# BB#229:                               # %if.then.774
                                        #   in Loop: Header=BB37_227 Depth=2
	movq	-40(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB37_239
.LBB37_230:                             # %if.else.776
                                        #   in Loop: Header=BB37_227 Depth=2
	jmp	.LBB37_231
.LBB37_231:                             # %do.body.777
                                        #   in Loop: Header=BB37_227 Depth=2
	movq	-40(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jge	.LBB37_233
# BB#232:                               # %if.then.784
                                        #   in Loop: Header=BB37_227 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	addq	-40(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -216(%rbp)
	jmp	.LBB37_234
.LBB37_233:                             # %if.else.789
                                        #   in Loop: Header=BB37_227 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	40(%rcx), %rax
	addq	-40(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -216(%rbp)
.LBB37_234:                             # %if.end.797
                                        #   in Loop: Header=BB37_227 Depth=2
	jmp	.LBB37_235
.LBB37_235:                             # %while.cond.798
                                        #   Parent Loop BB37_148 Depth=1
                                        #     Parent Loop BB37_227 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-216(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	setne	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB37_236
	jmp	.LBB37_237
.LBB37_236:                             # %while.body.804
                                        #   in Loop: Header=BB37_235 Depth=3
	movq	-216(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -216(%rbp)
	movq	-40(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB37_235
.LBB37_237:                             # %while.end.807
                                        #   in Loop: Header=BB37_227 Depth=2
	jmp	.LBB37_238
.LBB37_238:                             # %do.end.809
                                        #   in Loop: Header=BB37_227 Depth=2
	jmp	.LBB37_239
.LBB37_239:                             # %if.end.810
                                        #   in Loop: Header=BB37_227 Depth=2
	jmp	.LBB37_240
.LBB37_240:                             # %do.end.812
                                        #   in Loop: Header=BB37_227 Depth=2
	movq	-32(%rbp), %rdi
	callq	UPDATE_SYNTAX_TABLE_BACKWARD
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -648(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-648(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB37_242
# BB#241:                               # %cond.true.817
                                        #   in Loop: Header=BB37_227 Depth=2
	movq	-40(%rbp), %rdi
	callq	FETCH_MULTIBYTE_CHAR
	movl	%eax, -652(%rbp)        # 4-byte Spill
	jmp	.LBB37_260
.LBB37_242:                             # %cond.false.819
                                        #   in Loop: Header=BB37_227 Depth=2
	movb	$1, %al
	testb	$1, %al
	jne	.LBB37_243
	jmp	.LBB37_247
.LBB37_243:                             # %cond.true.820
                                        #   in Loop: Header=BB37_227 Depth=2
	movq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB37_245
# BB#244:                               # %cond.true.825
                                        #   in Loop: Header=BB37_227 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -664(%rbp)        # 8-byte Spill
	jmp	.LBB37_246
.LBB37_245:                             # %cond.false.828
                                        #   in Loop: Header=BB37_227 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -664(%rbp)        # 8-byte Spill
	jmp	.LBB37_246
.LBB37_246:                             # %cond.end.829
                                        #   in Loop: Header=BB37_227 Depth=2
	movq	-664(%rbp), %rax        # 8-byte Reload
	addq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$0, %edx
	cmpl	$128, %edx
	jb	.LBB37_251
	jmp	.LBB37_255
.LBB37_247:                             # %cond.false.840
                                        #   in Loop: Header=BB37_227 Depth=2
	movq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB37_249
# BB#248:                               # %cond.true.845
                                        #   in Loop: Header=BB37_227 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -672(%rbp)        # 8-byte Spill
	jmp	.LBB37_250
.LBB37_249:                             # %cond.false.848
                                        #   in Loop: Header=BB37_227 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -672(%rbp)        # 8-byte Spill
	jmp	.LBB37_250
.LBB37_250:                             # %cond.end.849
                                        #   in Loop: Header=BB37_227 Depth=2
	movq	-672(%rbp), %rax        # 8-byte Reload
	addq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, %eax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB37_255
.LBB37_251:                             # %cond.true.860
                                        #   in Loop: Header=BB37_227 Depth=2
	movq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB37_253
# BB#252:                               # %cond.true.865
                                        #   in Loop: Header=BB37_227 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -680(%rbp)        # 8-byte Spill
	jmp	.LBB37_254
.LBB37_253:                             # %cond.false.868
                                        #   in Loop: Header=BB37_227 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -680(%rbp)        # 8-byte Spill
	jmp	.LBB37_254
.LBB37_254:                             # %cond.end.869
                                        #   in Loop: Header=BB37_227 Depth=2
	movq	-680(%rbp), %rax        # 8-byte Reload
	addq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, -684(%rbp)        # 4-byte Spill
	jmp	.LBB37_259
.LBB37_255:                             # %cond.false.877
                                        #   in Loop: Header=BB37_227 Depth=2
	movq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB37_257
# BB#256:                               # %cond.true.882
                                        #   in Loop: Header=BB37_227 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -696(%rbp)        # 8-byte Spill
	jmp	.LBB37_258
.LBB37_257:                             # %cond.false.885
                                        #   in Loop: Header=BB37_227 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -696(%rbp)        # 8-byte Spill
	jmp	.LBB37_258
.LBB37_258:                             # %cond.end.886
                                        #   in Loop: Header=BB37_227 Depth=2
	movq	-696(%rbp), %rax        # 8-byte Reload
	addq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$4194048, %edx          # imm = 0x3FFF00
	movl	%edx, -684(%rbp)        # 4-byte Spill
.LBB37_259:                             # %cond.end.895
                                        #   in Loop: Header=BB37_227 Depth=2
	movl	-684(%rbp), %eax        # 4-byte Reload
	movl	%eax, -652(%rbp)        # 4-byte Spill
.LBB37_260:                             # %cond.end.897
                                        #   in Loop: Header=BB37_227 Depth=2
	movl	-652(%rbp), %eax        # 4-byte Reload
	movl	$1, %esi
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %edi
	callq	syntax_property
	cmpl	$14, %eax
	jne	.LBB37_263
# BB#261:                               # %land.lhs.true.902
                                        #   in Loop: Header=BB37_227 Depth=2
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	char_quoted
	testb	$1, %al
	jne	.LBB37_263
# BB#262:                               # %if.then.904
                                        #   in Loop: Header=BB37_148 Depth=1
	movb	$1, -185(%rbp)
	jmp	.LBB37_267
.LBB37_263:                             # %if.else.905
                                        #   in Loop: Header=BB37_227 Depth=2
	movq	-32(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB37_265
# BB#264:                               # %if.then.908
                                        #   in Loop: Header=BB37_148 Depth=1
	jmp	.LBB37_267
.LBB37_265:                             # %if.end.909
                                        #   in Loop: Header=BB37_227 Depth=2
	jmp	.LBB37_266
.LBB37_266:                             # %if.end.910
                                        #   in Loop: Header=BB37_227 Depth=2
	jmp	.LBB37_227
.LBB37_267:                             # %while.end.911
                                        #   in Loop: Header=BB37_148 Depth=1
	movb	-185(%rbp), %al
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	jne	.LBB37_269
# BB#268:                               # %if.then.916
	movq	-200(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-208(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB37_302
.LBB37_269:                             # %if.else.917
                                        #   in Loop: Header=BB37_148 Depth=1
	jmp	.LBB37_325
.LBB37_270:                             # %if.else.918
                                        #   in Loop: Header=BB37_150 Depth=2
	cmpl	$12, -60(%rbp)
	jne	.LBB37_299
# BB#271:                               # %if.then.921
                                        #   in Loop: Header=BB37_150 Depth=2
	leaq	-88(%rbp), %r9
	leaq	-96(%rbp), %rax
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movb	-65(%rbp), %cl
	movl	-64(%rbp), %r8d
	andb	$1, %cl
	movzbl	%cl, %ecx
	movq	%rax, (%rsp)
	callq	back_comment
	andb	$1, %al
	movb	%al, -66(%rbp)
	testb	$1, -66(%rbp)
	jne	.LBB37_297
# BB#272:                               # %if.then.926
                                        #   in Loop: Header=BB37_150 Depth=2
	cmpl	$10, -52(%rbp)
	jne	.LBB37_274
# BB#273:                               # %if.then.929
                                        #   in Loop: Header=BB37_150 Depth=2
	jmp	.LBB37_296
.LBB37_274:                             # %if.else.930
	movl	$1, %esi
	movl	-52(%rbp), %edi
	callq	syntax_property
	cmpl	-60(%rbp), %eax
	je	.LBB37_295
# BB#275:                               # %if.then.934
	jmp	.LBB37_276
.LBB37_276:                             # %do.body.935
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -704(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-704(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB37_278
# BB#277:                               # %if.then.941
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB37_293
.LBB37_278:                             # %if.else.943
	jmp	.LBB37_279
.LBB37_279:                             # %do.body.944
	movq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB37_281
# BB#280:                               # %cond.true.950
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -712(%rbp)        # 8-byte Spill
	jmp	.LBB37_282
.LBB37_281:                             # %cond.false.953
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -712(%rbp)        # 8-byte Spill
	jmp	.LBB37_282
.LBB37_282:                             # %cond.end.954
	movq	-712(%rbp), %rax        # 8-byte Reload
	addq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	movzbl	(%rax), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	jne	.LBB37_284
# BB#283:                               # %cond.true.964
	movl	$1, %eax
	movl	%eax, -716(%rbp)        # 4-byte Spill
	jmp	.LBB37_291
.LBB37_284:                             # %cond.false.965
	movq	-224(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB37_286
# BB#285:                               # %cond.true.969
	movl	$2, %eax
	movl	%eax, -720(%rbp)        # 4-byte Spill
	jmp	.LBB37_290
.LBB37_286:                             # %cond.false.970
	movq	-224(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB37_288
# BB#287:                               # %cond.true.974
	movl	$3, %eax
	movl	%eax, -724(%rbp)        # 4-byte Spill
	jmp	.LBB37_289
.LBB37_288:                             # %cond.false.975
	movl	$5, %eax
	movl	$4, %ecx
	movq	-224(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$8, %esi
	cmpl	$0, %esi
	setne	%dil
	xorb	$-1, %dil
	testb	$1, %dil
	cmovnel	%ecx, %eax
	movl	%eax, -724(%rbp)        # 4-byte Spill
.LBB37_289:                             # %cond.end.981
	movl	-724(%rbp), %eax        # 4-byte Reload
	movl	%eax, -720(%rbp)        # 4-byte Spill
.LBB37_290:                             # %cond.end.983
	movl	-720(%rbp), %eax        # 4-byte Reload
	movl	%eax, -716(%rbp)        # 4-byte Spill
.LBB37_291:                             # %cond.end.985
	movl	-716(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	addq	-40(%rbp), %rcx
	movq	%rcx, -40(%rbp)
# BB#292:                               # %do.end.990
	jmp	.LBB37_293
.LBB37_293:                             # %if.end.991
	jmp	.LBB37_294
.LBB37_294:                             # %do.end.993
	jmp	.LBB37_295
.LBB37_295:                             # %if.end.994
	jmp	.LBB37_302
.LBB37_296:                             # %if.end.995
                                        #   in Loop: Header=BB37_150 Depth=2
	jmp	.LBB37_298
.LBB37_297:                             # %if.else.996
                                        #   in Loop: Header=BB37_148 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB37_325
.LBB37_298:                             # %if.end.997
                                        #   in Loop: Header=BB37_150 Depth=2
	jmp	.LBB37_323
.LBB37_299:                             # %if.else.998
                                        #   in Loop: Header=BB37_150 Depth=2
	cmpl	$0, -60(%rbp)
	jne	.LBB37_301
# BB#300:                               # %lor.lhs.false
                                        #   in Loop: Header=BB37_150 Depth=2
	testb	$1, -153(%rbp)
	je	.LBB37_322
.LBB37_301:                             # %if.then.1003
	jmp	.LBB37_302
.LBB37_302:                             # %leave
	movb	$0, immediate_quit
# BB#303:                               # %do.body.1004
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -736(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-736(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB37_305
# BB#304:                               # %if.then.1010
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB37_320
.LBB37_305:                             # %if.else.1012
	jmp	.LBB37_306
.LBB37_306:                             # %do.body.1013
	movq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB37_308
# BB#307:                               # %cond.true.1019
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -744(%rbp)        # 8-byte Spill
	jmp	.LBB37_309
.LBB37_308:                             # %cond.false.1022
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -744(%rbp)        # 8-byte Spill
	jmp	.LBB37_309
.LBB37_309:                             # %cond.end.1023
	movq	-744(%rbp), %rax        # 8-byte Reload
	addq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rax
	movzbl	(%rax), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	jne	.LBB37_311
# BB#310:                               # %cond.true.1033
	movl	$1, %eax
	movl	%eax, -748(%rbp)        # 4-byte Spill
	jmp	.LBB37_318
.LBB37_311:                             # %cond.false.1034
	movq	-232(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB37_313
# BB#312:                               # %cond.true.1038
	movl	$2, %eax
	movl	%eax, -752(%rbp)        # 4-byte Spill
	jmp	.LBB37_317
.LBB37_313:                             # %cond.false.1039
	movq	-232(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB37_315
# BB#314:                               # %cond.true.1043
	movl	$3, %eax
	movl	%eax, -756(%rbp)        # 4-byte Spill
	jmp	.LBB37_316
.LBB37_315:                             # %cond.false.1044
	movl	$5, %eax
	movl	$4, %ecx
	movq	-232(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$8, %esi
	cmpl	$0, %esi
	setne	%dil
	xorb	$-1, %dil
	testb	$1, %dil
	cmovnel	%ecx, %eax
	movl	%eax, -756(%rbp)        # 4-byte Spill
.LBB37_316:                             # %cond.end.1050
	movl	-756(%rbp), %eax        # 4-byte Reload
	movl	%eax, -752(%rbp)        # 4-byte Spill
.LBB37_317:                             # %cond.end.1052
	movl	-752(%rbp), %eax        # 4-byte Reload
	movl	%eax, -748(%rbp)        # 4-byte Spill
.LBB37_318:                             # %cond.end.1054
	movl	-748(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	addq	-40(%rbp), %rcx
	movq	%rcx, -40(%rbp)
# BB#319:                               # %do.end.1059
	jmp	.LBB37_320
.LBB37_320:                             # %if.end.1060
	jmp	.LBB37_321
.LBB37_321:                             # %do.end.1062
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	set_point_both
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)
	jmp	.LBB37_327
.LBB37_322:                             # %if.end.1064
                                        #   in Loop: Header=BB37_150 Depth=2
	jmp	.LBB37_323
.LBB37_323:                             # %if.end.1065
                                        #   in Loop: Header=BB37_150 Depth=2
	jmp	.LBB37_324
.LBB37_324:                             # %if.end.1066
                                        #   in Loop: Header=BB37_150 Depth=2
	jmp	.LBB37_150
.LBB37_325:                             # %while.end.1067
                                        #   in Loop: Header=BB37_148 Depth=1
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB37_148
.LBB37_326:                             # %while.end.1069
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	set_point_both
	movl	$901, %edi              # imm = 0x385
	movb	$0, immediate_quit
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)
.LBB37_327:                             # %return
	movq	-16(%rbp), %rax
	addq	$776, %rsp              # imm = 0x308
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end37:
	.size	Fforward_comment, .Lfunc_end37-Fforward_comment
	.cfi_endproc

	.align	16, 0x90
	.type	SYNTAX_FLAGS_COMMENT_STYLE,@function
SYNTAX_FLAGS_COMMENT_STYLE:             # @SYNTAX_FLAGS_COMMENT_STYLE
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp115:
	.cfi_def_cfa_offset 16
.Ltmp116:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp117:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %edi
	callq	SYNTAX_FLAGS_COMMENT_STYLEB
	andb	$1, %al
	movzbl	%al, %esi
	movl	-4(%rbp), %edi
	movl	%esi, -12(%rbp)         # 4-byte Spill
	callq	SYNTAX_FLAGS_COMMENT_STYLEC2
	movl	-12(%rbp), %esi         # 4-byte Reload
	orl	%eax, %esi
	movl	-8(%rbp), %edi
	movl	%esi, -16(%rbp)         # 4-byte Spill
	callq	SYNTAX_FLAGS_COMMENT_STYLEC2
	movl	-16(%rbp), %esi         # 4-byte Reload
	orl	%eax, %esi
	movl	%esi, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	SYNTAX_FLAGS_COMMENT_STYLE, .Lfunc_end38-SYNTAX_FLAGS_COMMENT_STYLE
	.cfi_endproc

	.align	16, 0x90
	.type	forw_comment,@function
forw_comment:                           # @forw_comment
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp118:
	.cfi_def_cfa_offset 16
.Ltmp119:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp120:
	.cfi_def_cfa_register %rbp
	subq	$400, %rsp              # imm = 0x190
	movq	32(%rbp), %rax
	movq	24(%rbp), %r10
	movq	16(%rbp), %r11
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movl	%r9d, -48(%rbp)
	movq	%r11, -56(%rbp)
	movq	%r10, -64(%rbp)
	movq	%rax, -72(%rbp)
	cmpq	$0, -40(%rbp)
	jg	.LBB39_2
# BB#1:                                 # %if.then
	movq	$-1, -40(%rbp)
.LBB39_2:                               # %if.end
	movl	-48(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB39_4
# BB#3:                                 # %if.then.2
	jmp	.LBB39_64
.LBB39_4:                               # %if.end.3
	jmp	.LBB39_5
.LBB39_5:                               # %while.body
	movq	-16(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB39_7
# BB#6:                                 # %if.then.5
	movq	-40(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	movb	$0, -1(%rbp)
	jmp	.LBB39_165
.LBB39_7:                               # %if.end.6
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB39_9
# BB#8:                                 # %cond.true
	movq	-24(%rbp), %rdi
	callq	FETCH_MULTIBYTE_CHAR
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jmp	.LBB39_27
.LBB39_9:                               # %cond.false
	movb	$1, %al
	testb	$1, %al
	jne	.LBB39_10
	jmp	.LBB39_14
.LBB39_10:                              # %cond.true.9
	movq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB39_12
# BB#11:                                # %cond.true.11
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB39_13
.LBB39_12:                              # %cond.false.13
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB39_13
.LBB39_13:                              # %cond.end
	movq	-144(%rbp), %rax        # 8-byte Reload
	addq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$0, %edx
	cmpl	$128, %edx
	jb	.LBB39_18
	jmp	.LBB39_22
.LBB39_14:                              # %cond.false.19
	movq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB39_16
# BB#15:                                # %cond.true.24
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jmp	.LBB39_17
.LBB39_16:                              # %cond.false.27
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	jmp	.LBB39_17
.LBB39_17:                              # %cond.end.28
	movq	-152(%rbp), %rax        # 8-byte Reload
	addq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, %eax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB39_22
.LBB39_18:                              # %cond.true.39
	movq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB39_20
# BB#19:                                # %cond.true.44
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB39_21
.LBB39_20:                              # %cond.false.47
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	jmp	.LBB39_21
.LBB39_21:                              # %cond.end.48
	movq	-160(%rbp), %rax        # 8-byte Reload
	addq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, -164(%rbp)        # 4-byte Spill
	jmp	.LBB39_26
.LBB39_22:                              # %cond.false.56
	movq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB39_24
# BB#23:                                # %cond.true.61
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB39_25
.LBB39_24:                              # %cond.false.64
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	jmp	.LBB39_25
.LBB39_25:                              # %cond.end.65
	movq	-176(%rbp), %rax        # 8-byte Reload
	addq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$4194048, %edx          # imm = 0x3FFF00
	movl	%edx, -164(%rbp)        # 4-byte Spill
.LBB39_26:                              # %cond.end.74
	movl	-164(%rbp), %eax        # 4-byte Reload
	movl	%eax, -132(%rbp)        # 4-byte Spill
.LBB39_27:                              # %cond.end.76
	movl	-132(%rbp), %eax        # 4-byte Reload
	movl	$1, %esi
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %edi
	callq	syntax_property_with_flags
	movl	%eax, -88(%rbp)
	movl	-88(%rbp), %eax
	andl	$255, %eax
	movl	%eax, -84(%rbp)
	cmpl	$12, -84(%rbp)
	jne	.LBB39_36
# BB#28:                                # %land.lhs.true
	xorl	%esi, %esi
	movl	-88(%rbp), %edi
	callq	SYNTAX_FLAGS_COMMENT_STYLE
	cmpl	-44(%rbp), %eax
	jne	.LBB39_36
# BB#29:                                # %land.lhs.true.84
	movl	-88(%rbp), %edi
	callq	SYNTAX_FLAGS_COMMENT_NESTED
	testb	$1, %al
	jne	.LBB39_30
	jmp	.LBB39_32
.LBB39_30:                              # %cond.true.87
	cmpq	$0, -40(%rbp)
	jle	.LBB39_36
# BB#31:                                # %land.lhs.true.90
	movq	-40(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, %rax
	je	.LBB39_33
	jmp	.LBB39_36
.LBB39_32:                              # %cond.false.93
	cmpq	$0, -40(%rbp)
	jge	.LBB39_36
.LBB39_33:                              # %land.lhs.true.96
	testb	$1, globals+3360
	je	.LBB39_35
# BB#34:                                # %land.lhs.true.98
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	char_quoted
	testb	$1, %al
	jne	.LBB39_36
.LBB39_35:                              # %if.then.101
	jmp	.LBB39_164
.LBB39_36:                              # %if.end.102
	cmpl	$14, -84(%rbp)
	jne	.LBB39_39
# BB#37:                                # %land.lhs.true.105
	cmpl	$257, -44(%rbp)         # imm = 0x101
	jne	.LBB39_39
# BB#38:                                # %if.then.108
	jmp	.LBB39_164
.LBB39_39:                              # %if.end.109
	cmpq	$0, -40(%rbp)
	jle	.LBB39_44
# BB#40:                                # %land.lhs.true.112
	cmpl	$11, -84(%rbp)
	jne	.LBB39_44
# BB#41:                                # %land.lhs.true.115
	movl	-88(%rbp), %edi
	callq	SYNTAX_FLAGS_COMMENT_NESTED
	testb	$1, %al
	jne	.LBB39_42
	jmp	.LBB39_44
.LBB39_42:                              # %land.lhs.true.118
	xorl	%esi, %esi
	movl	-88(%rbp), %edi
	callq	SYNTAX_FLAGS_COMMENT_STYLE
	cmpl	-44(%rbp), %eax
	jne	.LBB39_44
# BB#43:                                # %if.then.122
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
.LBB39_44:                              # %if.end.123
	jmp	.LBB39_45
.LBB39_45:                              # %do.body
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB39_47
# BB#46:                                # %if.then.129
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB39_62
.LBB39_47:                              # %if.else
	jmp	.LBB39_48
.LBB39_48:                              # %do.body.131
	movq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB39_50
# BB#49:                                # %cond.true.136
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jmp	.LBB39_51
.LBB39_50:                              # %cond.false.139
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	jmp	.LBB39_51
.LBB39_51:                              # %cond.end.140
	movq	-192(%rbp), %rax        # 8-byte Reload
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
	jne	.LBB39_53
# BB#52:                                # %cond.true.150
	movl	$1, %eax
	movl	%eax, -196(%rbp)        # 4-byte Spill
	jmp	.LBB39_60
.LBB39_53:                              # %cond.false.151
	movq	-104(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB39_55
# BB#54:                                # %cond.true.155
	movl	$2, %eax
	movl	%eax, -200(%rbp)        # 4-byte Spill
	jmp	.LBB39_59
.LBB39_55:                              # %cond.false.156
	movq	-104(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB39_57
# BB#56:                                # %cond.true.160
	movl	$3, %eax
	movl	%eax, -204(%rbp)        # 4-byte Spill
	jmp	.LBB39_58
.LBB39_57:                              # %cond.false.161
	movl	$5, %eax
	movl	$4, %ecx
	movq	-104(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$8, %esi
	cmpl	$0, %esi
	setne	%dil
	xorb	$-1, %dil
	testb	$1, %dil
	cmovnel	%ecx, %eax
	movl	%eax, -204(%rbp)        # 4-byte Spill
.LBB39_58:                              # %cond.end.166
	movl	-204(%rbp), %eax        # 4-byte Reload
	movl	%eax, -200(%rbp)        # 4-byte Spill
.LBB39_59:                              # %cond.end.168
	movl	-200(%rbp), %eax        # 4-byte Reload
	movl	%eax, -196(%rbp)        # 4-byte Spill
.LBB39_60:                              # %cond.end.170
	movl	-196(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	addq	-24(%rbp), %rcx
	movq	%rcx, -24(%rbp)
# BB#61:                                # %do.end
	jmp	.LBB39_62
.LBB39_62:                              # %if.end.174
	jmp	.LBB39_63
.LBB39_63:                              # %do.end.175
	movq	-16(%rbp), %rdi
	callq	UPDATE_SYNTAX_TABLE_FORWARD
.LBB39_64:                              # %forw_incomment
	movq	-16(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jge	.LBB39_115
# BB#65:                                # %land.lhs.true.178
	movl	-88(%rbp), %edi
	callq	SYNTAX_FLAGS_COMEND_FIRST
	testb	$1, %al
	jne	.LBB39_66
	jmp	.LBB39_115
.LBB39_66:                              # %land.lhs.true.181
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB39_68
# BB#67:                                # %cond.true.186
	movq	-24(%rbp), %rdi
	callq	FETCH_MULTIBYTE_CHAR
	movl	%eax, -220(%rbp)        # 4-byte Spill
	jmp	.LBB39_86
.LBB39_68:                              # %cond.false.188
	movb	$1, %al
	testb	$1, %al
	jne	.LBB39_69
	jmp	.LBB39_73
.LBB39_69:                              # %cond.true.189
	movq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB39_71
# BB#70:                                # %cond.true.194
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	jmp	.LBB39_72
.LBB39_71:                              # %cond.false.197
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	jmp	.LBB39_72
.LBB39_72:                              # %cond.end.198
	movq	-232(%rbp), %rax        # 8-byte Reload
	addq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$0, %edx
	cmpl	$128, %edx
	jb	.LBB39_77
	jmp	.LBB39_81
.LBB39_73:                              # %cond.false.209
	movq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB39_75
# BB#74:                                # %cond.true.214
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	jmp	.LBB39_76
.LBB39_75:                              # %cond.false.217
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	jmp	.LBB39_76
.LBB39_76:                              # %cond.end.218
	movq	-240(%rbp), %rax        # 8-byte Reload
	addq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, %eax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB39_81
.LBB39_77:                              # %cond.true.229
	movq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB39_79
# BB#78:                                # %cond.true.234
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	jmp	.LBB39_80
.LBB39_79:                              # %cond.false.237
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -248(%rbp)        # 8-byte Spill
	jmp	.LBB39_80
.LBB39_80:                              # %cond.end.238
	movq	-248(%rbp), %rax        # 8-byte Reload
	addq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, -252(%rbp)        # 4-byte Spill
	jmp	.LBB39_85
.LBB39_81:                              # %cond.false.246
	movq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB39_83
# BB#82:                                # %cond.true.251
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	jmp	.LBB39_84
.LBB39_83:                              # %cond.false.254
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -264(%rbp)        # 8-byte Spill
	jmp	.LBB39_84
.LBB39_84:                              # %cond.end.255
	movq	-264(%rbp), %rax        # 8-byte Reload
	addq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$4194048, %edx          # imm = 0x3FFF00
	movl	%edx, -252(%rbp)        # 4-byte Spill
.LBB39_85:                              # %cond.end.264
	movl	-252(%rbp), %eax        # 4-byte Reload
	movl	%eax, -220(%rbp)        # 4-byte Spill
.LBB39_86:                              # %cond.end.266
	movl	-220(%rbp), %eax        # 4-byte Reload
	movl	$1, %esi
	movl	%eax, -80(%rbp)
	movl	-80(%rbp), %edi
	callq	syntax_property_with_flags
	movl	%eax, -92(%rbp)
	movl	-92(%rbp), %edi
	callq	SYNTAX_FLAGS_COMEND_SECOND
	testb	$1, %al
	jne	.LBB39_87
	jmp	.LBB39_115
.LBB39_87:                              # %land.lhs.true.271
	movl	-88(%rbp), %edi
	movl	-92(%rbp), %esi
	callq	SYNTAX_FLAGS_COMMENT_STYLE
	cmpl	-44(%rbp), %eax
	jne	.LBB39_115
# BB#88:                                # %land.lhs.true.275
	movl	-88(%rbp), %edi
	callq	SYNTAX_FLAGS_COMMENT_NESTED
	testb	$1, %al
	jne	.LBB39_90
# BB#89:                                # %lor.lhs.false
	movl	-92(%rbp), %edi
	callq	SYNTAX_FLAGS_COMMENT_NESTED
	testb	$1, %al
	jne	.LBB39_90
	jmp	.LBB39_91
.LBB39_90:                              # %cond.true.280
	cmpq	$0, -40(%rbp)
	jg	.LBB39_92
	jmp	.LBB39_115
.LBB39_91:                              # %cond.false.283
	cmpq	$0, -40(%rbp)
	jge	.LBB39_115
.LBB39_92:                              # %if.then.286
	movq	-40(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, %rax
	jg	.LBB39_94
# BB#93:                                # %if.then.290
	jmp	.LBB39_164
.LBB39_94:                              # %if.else.291
	jmp	.LBB39_95
.LBB39_95:                              # %do.body.292
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-272(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB39_97
# BB#96:                                # %if.then.298
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB39_112
.LBB39_97:                              # %if.else.300
	jmp	.LBB39_98
.LBB39_98:                              # %do.body.301
	movq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB39_100
# BB#99:                                # %cond.true.307
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	jmp	.LBB39_101
.LBB39_100:                             # %cond.false.310
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -280(%rbp)        # 8-byte Spill
	jmp	.LBB39_101
.LBB39_101:                             # %cond.end.311
	movq	-280(%rbp), %rax        # 8-byte Reload
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
	jne	.LBB39_103
# BB#102:                               # %cond.true.321
	movl	$1, %eax
	movl	%eax, -284(%rbp)        # 4-byte Spill
	jmp	.LBB39_110
.LBB39_103:                             # %cond.false.322
	movq	-112(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB39_105
# BB#104:                               # %cond.true.326
	movl	$2, %eax
	movl	%eax, -288(%rbp)        # 4-byte Spill
	jmp	.LBB39_109
.LBB39_105:                             # %cond.false.327
	movq	-112(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB39_107
# BB#106:                               # %cond.true.331
	movl	$3, %eax
	movl	%eax, -292(%rbp)        # 4-byte Spill
	jmp	.LBB39_108
.LBB39_107:                             # %cond.false.332
	movl	$5, %eax
	movl	$4, %ecx
	movq	-112(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$8, %esi
	cmpl	$0, %esi
	setne	%dil
	xorb	$-1, %dil
	testb	$1, %dil
	cmovnel	%ecx, %eax
	movl	%eax, -292(%rbp)        # 4-byte Spill
.LBB39_108:                             # %cond.end.338
	movl	-292(%rbp), %eax        # 4-byte Reload
	movl	%eax, -288(%rbp)        # 4-byte Spill
.LBB39_109:                             # %cond.end.340
	movl	-288(%rbp), %eax        # 4-byte Reload
	movl	%eax, -284(%rbp)        # 4-byte Spill
.LBB39_110:                             # %cond.end.342
	movl	-284(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	addq	-24(%rbp), %rcx
	movq	%rcx, -24(%rbp)
# BB#111:                               # %do.end.346
	jmp	.LBB39_112
.LBB39_112:                             # %if.end.347
	jmp	.LBB39_113
.LBB39_113:                             # %do.end.348
	movq	-16(%rbp), %rdi
	callq	UPDATE_SYNTAX_TABLE_FORWARD
# BB#114:                               # %if.end.349
	jmp	.LBB39_115
.LBB39_115:                             # %if.end.350
	cmpq	$0, -40(%rbp)
	jle	.LBB39_163
# BB#116:                               # %land.lhs.true.353
	movq	-16(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jge	.LBB39_163
# BB#117:                               # %land.lhs.true.356
	movl	-88(%rbp), %edi
	callq	SYNTAX_FLAGS_COMSTART_FIRST
	testb	$1, %al
	jne	.LBB39_118
	jmp	.LBB39_163
.LBB39_118:                             # %land.lhs.true.359
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-304(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB39_120
# BB#119:                               # %cond.true.364
	movq	-24(%rbp), %rdi
	callq	FETCH_MULTIBYTE_CHAR
	movl	%eax, -308(%rbp)        # 4-byte Spill
	jmp	.LBB39_138
.LBB39_120:                             # %cond.false.366
	movb	$1, %al
	testb	$1, %al
	jne	.LBB39_121
	jmp	.LBB39_125
.LBB39_121:                             # %cond.true.367
	movq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB39_123
# BB#122:                               # %cond.true.372
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	jmp	.LBB39_124
.LBB39_123:                             # %cond.false.375
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	jmp	.LBB39_124
.LBB39_124:                             # %cond.end.376
	movq	-320(%rbp), %rax        # 8-byte Reload
	addq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$0, %edx
	cmpl	$128, %edx
	jb	.LBB39_129
	jmp	.LBB39_133
.LBB39_125:                             # %cond.false.387
	movq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB39_127
# BB#126:                               # %cond.true.392
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	jmp	.LBB39_128
.LBB39_127:                             # %cond.false.395
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -328(%rbp)        # 8-byte Spill
	jmp	.LBB39_128
.LBB39_128:                             # %cond.end.396
	movq	-328(%rbp), %rax        # 8-byte Reload
	addq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, %eax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB39_133
.LBB39_129:                             # %cond.true.407
	movq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB39_131
# BB#130:                               # %cond.true.412
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	jmp	.LBB39_132
.LBB39_131:                             # %cond.false.415
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -336(%rbp)        # 8-byte Spill
	jmp	.LBB39_132
.LBB39_132:                             # %cond.end.416
	movq	-336(%rbp), %rax        # 8-byte Reload
	addq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, -340(%rbp)        # 4-byte Spill
	jmp	.LBB39_137
.LBB39_133:                             # %cond.false.424
	movq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB39_135
# BB#134:                               # %cond.true.429
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	jmp	.LBB39_136
.LBB39_135:                             # %cond.false.432
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -352(%rbp)        # 8-byte Spill
	jmp	.LBB39_136
.LBB39_136:                             # %cond.end.433
	movq	-352(%rbp), %rax        # 8-byte Reload
	addq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$4194048, %edx          # imm = 0x3FFF00
	movl	%edx, -340(%rbp)        # 4-byte Spill
.LBB39_137:                             # %cond.end.442
	movl	-340(%rbp), %eax        # 4-byte Reload
	movl	%eax, -308(%rbp)        # 4-byte Spill
.LBB39_138:                             # %cond.end.444
	movl	-308(%rbp), %eax        # 4-byte Reload
	movl	$1, %esi
	movl	%eax, -80(%rbp)
	movl	-80(%rbp), %edi
	callq	syntax_property_with_flags
	movl	%eax, -92(%rbp)
	movl	-92(%rbp), %edi
	movl	-88(%rbp), %esi
	callq	SYNTAX_FLAGS_COMMENT_STYLE
	xorl	%esi, %esi
	movb	%sil, %cl
	cmpl	-44(%rbp), %eax
	movb	%cl, -353(%rbp)         # 1-byte Spill
	jne	.LBB39_140
# BB#139:                               # %land.rhs
	movl	-92(%rbp), %edi
	callq	SYNTAX_FLAGS_COMSTART_SECOND
	movb	%al, -353(%rbp)         # 1-byte Spill
.LBB39_140:                             # %land.end
	movb	-353(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB39_141
	jmp	.LBB39_163
.LBB39_141:                             # %land.lhs.true.452
	movl	-88(%rbp), %edi
	callq	SYNTAX_FLAGS_COMMENT_NESTED
	testb	$1, %al
	jne	.LBB39_143
# BB#142:                               # %lor.lhs.false.455
	movl	-92(%rbp), %edi
	callq	SYNTAX_FLAGS_COMMENT_NESTED
	testb	$1, %al
	jne	.LBB39_143
	jmp	.LBB39_163
.LBB39_143:                             # %if.then.458
	jmp	.LBB39_144
.LBB39_144:                             # %do.body.459
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-368(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB39_146
# BB#145:                               # %if.then.465
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB39_161
.LBB39_146:                             # %if.else.467
	jmp	.LBB39_147
.LBB39_147:                             # %do.body.468
	movq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB39_149
# BB#148:                               # %cond.true.474
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	jmp	.LBB39_150
.LBB39_149:                             # %cond.false.477
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -376(%rbp)        # 8-byte Spill
	jmp	.LBB39_150
.LBB39_150:                             # %cond.end.478
	movq	-376(%rbp), %rax        # 8-byte Reload
	addq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movzbl	(%rax), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	jne	.LBB39_152
# BB#151:                               # %cond.true.488
	movl	$1, %eax
	movl	%eax, -380(%rbp)        # 4-byte Spill
	jmp	.LBB39_159
.LBB39_152:                             # %cond.false.489
	movq	-120(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB39_154
# BB#153:                               # %cond.true.493
	movl	$2, %eax
	movl	%eax, -384(%rbp)        # 4-byte Spill
	jmp	.LBB39_158
.LBB39_154:                             # %cond.false.494
	movq	-120(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB39_156
# BB#155:                               # %cond.true.498
	movl	$3, %eax
	movl	%eax, -388(%rbp)        # 4-byte Spill
	jmp	.LBB39_157
.LBB39_156:                             # %cond.false.499
	movl	$5, %eax
	movl	$4, %ecx
	movq	-120(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$8, %esi
	cmpl	$0, %esi
	setne	%dil
	xorb	$-1, %dil
	testb	$1, %dil
	cmovnel	%ecx, %eax
	movl	%eax, -388(%rbp)        # 4-byte Spill
.LBB39_157:                             # %cond.end.505
	movl	-388(%rbp), %eax        # 4-byte Reload
	movl	%eax, -384(%rbp)        # 4-byte Spill
.LBB39_158:                             # %cond.end.507
	movl	-384(%rbp), %eax        # 4-byte Reload
	movl	%eax, -380(%rbp)        # 4-byte Spill
.LBB39_159:                             # %cond.end.509
	movl	-380(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	addq	-24(%rbp), %rcx
	movq	%rcx, -24(%rbp)
# BB#160:                               # %do.end.513
	jmp	.LBB39_161
.LBB39_161:                             # %if.end.514
	jmp	.LBB39_162
.LBB39_162:                             # %do.end.515
	movq	-16(%rbp), %rdi
	callq	UPDATE_SYNTAX_TABLE_FORWARD
	movq	-40(%rbp), %rdi
	addq	$1, %rdi
	movq	%rdi, -40(%rbp)
.LBB39_163:                             # %if.end.517
	jmp	.LBB39_5
.LBB39_164:                             # %while.end
	movq	-16(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	movb	$1, -1(%rbp)
.LBB39_165:                             # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$400, %rsp              # imm = 0x190
	popq	%rbp
	retq
.Lfunc_end39:
	.size	forw_comment, .Lfunc_end39-forw_comment
	.cfi_endproc

	.align	16, 0x90
	.type	char_quoted,@function
char_quoted:                            # @char_quoted
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp121:
	.cfi_def_cfa_offset 16
.Ltmp122:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp123:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	current_buffer, %rsi
	movq	752(%rsi), %rsi
	movq	%rsi, -32(%rbp)
	movb	$0, -33(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -48(%rbp)
.LBB40_1:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB40_10 Depth 2
	movq	-8(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jle	.LBB40_39
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB40_1 Depth=1
	jmp	.LBB40_3
.LBB40_3:                               # %do.body
                                        #   in Loop: Header=BB40_1 Depth=1
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -8(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB40_5
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB40_14
.LBB40_5:                               # %if.else
                                        #   in Loop: Header=BB40_1 Depth=1
	jmp	.LBB40_6
.LBB40_6:                               # %do.body.3
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jge	.LBB40_8
# BB#7:                                 # %if.then.6
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	addq	-16(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB40_9
.LBB40_8:                               # %if.else.10
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	40(%rcx), %rax
	addq	-16(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -64(%rbp)
.LBB40_9:                               # %if.end
                                        #   in Loop: Header=BB40_1 Depth=1
	jmp	.LBB40_10
.LBB40_10:                              # %while.cond.17
                                        #   Parent Loop BB40_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-64(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	setne	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB40_11
	jmp	.LBB40_12
.LBB40_11:                              # %while.body.20
                                        #   in Loop: Header=BB40_10 Depth=2
	movq	-64(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB40_10
.LBB40_12:                              # %while.end
                                        #   in Loop: Header=BB40_1 Depth=1
	jmp	.LBB40_13
.LBB40_13:                              # %do.end
                                        #   in Loop: Header=BB40_1 Depth=1
	jmp	.LBB40_14
.LBB40_14:                              # %if.end.22
                                        #   in Loop: Header=BB40_1 Depth=1
	jmp	.LBB40_15
.LBB40_15:                              # %do.end.23
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	UPDATE_SYNTAX_TABLE_BACKWARD
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB40_17
# BB#16:                                # %cond.true
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	-16(%rbp), %rdi
	callq	FETCH_MULTIBYTE_CHAR
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jmp	.LBB40_35
.LBB40_17:                              # %cond.false
                                        #   in Loop: Header=BB40_1 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB40_18
	jmp	.LBB40_22
.LBB40_18:                              # %cond.true.29
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB40_20
# BB#19:                                # %cond.true.34
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB40_21
.LBB40_20:                              # %cond.false.37
                                        #   in Loop: Header=BB40_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB40_21
.LBB40_21:                              # %cond.end
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	addq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$0, %edx
	cmpl	$128, %edx
	jb	.LBB40_26
	jmp	.LBB40_30
.LBB40_22:                              # %cond.false.46
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB40_24
# BB#23:                                # %cond.true.51
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB40_25
.LBB40_24:                              # %cond.false.54
                                        #   in Loop: Header=BB40_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB40_25
.LBB40_25:                              # %cond.end.55
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	addq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, %eax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB40_30
.LBB40_26:                              # %cond.true.66
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB40_28
# BB#27:                                # %cond.true.71
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB40_29
.LBB40_28:                              # %cond.false.74
                                        #   in Loop: Header=BB40_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB40_29
.LBB40_29:                              # %cond.end.75
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	addq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, -116(%rbp)        # 4-byte Spill
	jmp	.LBB40_34
.LBB40_30:                              # %cond.false.83
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB40_32
# BB#31:                                # %cond.true.88
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB40_33
.LBB40_32:                              # %cond.false.91
                                        #   in Loop: Header=BB40_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB40_33
.LBB40_33:                              # %cond.end.92
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	-128(%rbp), %rax        # 8-byte Reload
	addq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$4194048, %edx          # imm = 0x3FFF00
	movl	%edx, -116(%rbp)        # 4-byte Spill
.LBB40_34:                              # %cond.end.101
                                        #   in Loop: Header=BB40_1 Depth=1
	movl	-116(%rbp), %eax        # 4-byte Reload
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB40_35:                              # %cond.end.103
                                        #   in Loop: Header=BB40_1 Depth=1
	movl	-84(%rbp), %eax         # 4-byte Reload
	movl	$1, %esi
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %edi
	callq	syntax_property
	movl	%eax, -20(%rbp)
	cmpl	$10, -20(%rbp)
	je	.LBB40_38
# BB#36:                                # %lor.lhs.false
                                        #   in Loop: Header=BB40_1 Depth=1
	cmpl	$9, -20(%rbp)
	je	.LBB40_38
# BB#37:                                # %if.then.110
	jmp	.LBB40_39
.LBB40_38:                              # %if.end.111
                                        #   in Loop: Header=BB40_1 Depth=1
	movb	-33(%rbp), %al
	xorb	$-1, %al
	andb	$1, %al
	movb	%al, -33(%rbp)
	jmp	.LBB40_1
.LBB40_39:                              # %while.end.113
	movq	-48(%rbp), %rdi
	callq	UPDATE_SYNTAX_TABLE
	movb	-33(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	char_quoted, .Lfunc_end40-char_quoted
	.cfi_endproc

	.align	16, 0x90
	.type	prev_char_comend_first,@function
prev_char_comend_first:                 # @prev_char_comend_first
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp124:
	.cfi_def_cfa_offset 16
.Ltmp125:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp126:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -8(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB41_3
# BB#2:                                 # %if.then
	movq	-16(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB41_12
.LBB41_3:                               # %if.else
	jmp	.LBB41_4
.LBB41_4:                               # %do.body.2
	movq	-16(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jge	.LBB41_6
# BB#5:                                 # %if.then.5
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	addq	-16(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB41_7
.LBB41_6:                               # %if.else.8
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	40(%rcx), %rax
	addq	-16(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -32(%rbp)
.LBB41_7:                               # %if.end
	jmp	.LBB41_8
.LBB41_8:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	setne	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB41_9
	jmp	.LBB41_10
.LBB41_9:                               # %while.body
                                        #   in Loop: Header=BB41_8 Depth=1
	movq	-32(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB41_8
.LBB41_10:                              # %while.end
	jmp	.LBB41_11
.LBB41_11:                              # %do.end
	jmp	.LBB41_12
.LBB41_12:                              # %if.end.18
	jmp	.LBB41_13
.LBB41_13:                              # %do.end.19
	movq	-8(%rbp), %rdi
	callq	UPDATE_SYNTAX_TABLE_BACKWARD
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB41_15
# BB#14:                                # %cond.true
	movq	-16(%rbp), %rdi
	callq	FETCH_MULTIBYTE_CHAR
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB41_19
.LBB41_15:                              # %cond.false
	movq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB41_17
# BB#16:                                # %cond.true.29
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB41_18
.LBB41_17:                              # %cond.false.32
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	jmp	.LBB41_18
.LBB41_18:                              # %cond.end
	movq	-64(%rbp), %rax         # 8-byte Reload
	addq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, -52(%rbp)         # 4-byte Spill
.LBB41_19:                              # %cond.end.38
	movl	-52(%rbp), %eax         # 4-byte Reload
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %edi
	callq	SYNTAX_COMEND_FIRST
	andb	$1, %al
	movb	%al, -21(%rbp)
	movq	-8(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, %rdi
	callq	UPDATE_SYNTAX_TABLE_FORWARD
	movb	-21(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	prev_char_comend_first, .Lfunc_end41-prev_char_comend_first
	.cfi_endproc

	.align	16, 0x90
	.type	dec_bytepos,@function
dec_bytepos:                            # @dec_bytepos
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp127:
	.cfi_def_cfa_offset 16
.Ltmp128:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp129:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	current_buffer, %rdi
	movq	312(%rdi), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB42_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB42_11
.LBB42_2:                               # %if.end
	jmp	.LBB42_3
.LBB42_3:                               # %do.body
	movq	-16(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jge	.LBB42_5
# BB#4:                                 # %if.then.2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	addq	-16(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB42_6
.LBB42_5:                               # %if.else
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	40(%rcx), %rax
	addq	-16(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -24(%rbp)
.LBB42_6:                               # %if.end.11
	jmp	.LBB42_7
.LBB42_7:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	setne	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB42_8
	jmp	.LBB42_9
.LBB42_8:                               # %while.body
                                        #   in Loop: Header=BB42_7 Depth=1
	movq	-24(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB42_7
.LBB42_9:                               # %while.end
	jmp	.LBB42_10
.LBB42_10:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB42_11:                              # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end42:
	.size	dec_bytepos, .Lfunc_end42-dec_bytepos
	.cfi_endproc

	.align	16, 0x90
	.type	back_comment,@function
back_comment:                           # @back_comment
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp130:
	.cfi_def_cfa_offset 16
.Ltmp131:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp132:
	.cfi_def_cfa_register %rbp
	subq	$528, %rsp              # imm = 0x210
	movb	%cl, %al
	movq	16(%rbp), %r10
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	andb	$1, %al
	movb	%al, -25(%rbp)
	movl	%r8d, -32(%rbp)
	movq	%r9, -40(%rbp)
	movq	%r10, -48(%rbp)
	movl	$-1, -52(%rbp)
	movb	$0, -53(%rbp)
	movb	$0, -54(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -64(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -104(%rbp)
	movq	$1, -120(%rbp)
	movl	$0, -128(%rbp)
.LBB43_1:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB43_10 Depth 2
                                        #     Child Loop BB43_56 Depth 2
	movq	-8(%rbp), %rax
	cmpq	-24(%rbp), %rax
	je	.LBB43_155
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB43_1 Depth=1
	jmp	.LBB43_3
.LBB43_3:                               # %do.body
                                        #   in Loop: Header=BB43_1 Depth=1
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -8(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-288(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB43_5
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB43_14
.LBB43_5:                               # %if.else
                                        #   in Loop: Header=BB43_1 Depth=1
	jmp	.LBB43_6
.LBB43_6:                               # %do.body.3
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jge	.LBB43_8
# BB#7:                                 # %if.then.6
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	addq	-16(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -152(%rbp)
	jmp	.LBB43_9
.LBB43_8:                               # %if.else.9
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	40(%rcx), %rax
	addq	-16(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -152(%rbp)
.LBB43_9:                               # %if.end
                                        #   in Loop: Header=BB43_1 Depth=1
	jmp	.LBB43_10
.LBB43_10:                              # %while.cond.16
                                        #   Parent Loop BB43_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-152(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	setne	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB43_11
	jmp	.LBB43_12
.LBB43_11:                              # %while.body.19
                                        #   in Loop: Header=BB43_10 Depth=2
	movq	-152(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -152(%rbp)
	movq	-16(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB43_10
.LBB43_12:                              # %while.end
                                        #   in Loop: Header=BB43_1 Depth=1
	jmp	.LBB43_13
.LBB43_13:                              # %do.end
                                        #   in Loop: Header=BB43_1 Depth=1
	jmp	.LBB43_14
.LBB43_14:                              # %if.end.21
                                        #   in Loop: Header=BB43_1 Depth=1
	jmp	.LBB43_15
.LBB43_15:                              # %do.end.22
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	UPDATE_SYNTAX_TABLE_BACKWARD
	xorl	%edi, %edi
	movl	-128(%rbp), %eax
	movl	%eax, -140(%rbp)
	movq	current_buffer, %rcx
	movq	312(%rcx), %rcx
	movq	%rcx, -296(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-296(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB43_17
# BB#16:                                # %cond.true
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-16(%rbp), %rdi
	callq	FETCH_MULTIBYTE_CHAR
	movl	%eax, -300(%rbp)        # 4-byte Spill
	jmp	.LBB43_35
.LBB43_17:                              # %cond.false
                                        #   in Loop: Header=BB43_1 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB43_18
	jmp	.LBB43_22
.LBB43_18:                              # %cond.true.28
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB43_20
# BB#19:                                # %cond.true.33
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	jmp	.LBB43_21
.LBB43_20:                              # %cond.false.36
                                        #   in Loop: Header=BB43_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -312(%rbp)        # 8-byte Spill
	jmp	.LBB43_21
.LBB43_21:                              # %cond.end
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-312(%rbp), %rax        # 8-byte Reload
	addq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$0, %edx
	cmpl	$128, %edx
	jb	.LBB43_26
	jmp	.LBB43_30
.LBB43_22:                              # %cond.false.45
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB43_24
# BB#23:                                # %cond.true.50
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	jmp	.LBB43_25
.LBB43_24:                              # %cond.false.53
                                        #   in Loop: Header=BB43_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	jmp	.LBB43_25
.LBB43_25:                              # %cond.end.54
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-320(%rbp), %rax        # 8-byte Reload
	addq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, %eax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB43_30
.LBB43_26:                              # %cond.true.65
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB43_28
# BB#27:                                # %cond.true.70
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	jmp	.LBB43_29
.LBB43_28:                              # %cond.false.73
                                        #   in Loop: Header=BB43_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -328(%rbp)        # 8-byte Spill
	jmp	.LBB43_29
.LBB43_29:                              # %cond.end.74
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-328(%rbp), %rax        # 8-byte Reload
	addq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, -332(%rbp)        # 4-byte Spill
	jmp	.LBB43_34
.LBB43_30:                              # %cond.false.82
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB43_32
# BB#31:                                # %cond.true.87
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	jmp	.LBB43_33
.LBB43_32:                              # %cond.false.90
                                        #   in Loop: Header=BB43_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -344(%rbp)        # 8-byte Spill
	jmp	.LBB43_33
.LBB43_33:                              # %cond.end.91
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-344(%rbp), %rax        # 8-byte Reload
	addq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$4194048, %edx          # imm = 0x3FFF00
	movl	%edx, -332(%rbp)        # 4-byte Spill
.LBB43_34:                              # %cond.end.100
                                        #   in Loop: Header=BB43_1 Depth=1
	movl	-332(%rbp), %eax        # 4-byte Reload
	movl	%eax, -300(%rbp)        # 4-byte Spill
.LBB43_35:                              # %cond.end.102
                                        #   in Loop: Header=BB43_1 Depth=1
	movl	-300(%rbp), %eax        # 4-byte Reload
	movl	$1, %esi
	movl	%eax, -124(%rbp)
	movl	-124(%rbp), %edi
	callq	syntax_property_with_flags
	movl	$1, %esi
	movl	%eax, -128(%rbp)
	movl	-124(%rbp), %edi
	callq	syntax_property
	movl	%eax, -108(%rbp)
	movl	-128(%rbp), %edi
	callq	SYNTAX_FLAGS_COMSTART_FIRST
	xorl	%esi, %esi
	movb	%sil, %cl
	testb	$1, %al
	movb	%cl, -345(%rbp)         # 1-byte Spill
	jne	.LBB43_36
	jmp	.LBB43_41
.LBB43_36:                              # %land.lhs.true
                                        #   in Loop: Header=BB43_1 Depth=1
	movl	-140(%rbp), %edi
	callq	SYNTAX_FLAGS_COMSTART_SECOND
	xorl	%edi, %edi
	movb	%dil, %cl
	testb	$1, %al
	movb	%cl, -345(%rbp)         # 1-byte Spill
	jne	.LBB43_37
	jmp	.LBB43_41
.LBB43_37:                              # %land.lhs.true.110
                                        #   in Loop: Header=BB43_1 Depth=1
	movl	-32(%rbp), %eax
	movl	-140(%rbp), %edi
	movl	-128(%rbp), %esi
	movl	%eax, -352(%rbp)        # 4-byte Spill
	callq	SYNTAX_FLAGS_COMMENT_STYLE
	xorl	%esi, %esi
	movb	%sil, %cl
	movl	-352(%rbp), %esi        # 4-byte Reload
	cmpl	%eax, %esi
	movb	%cl, -345(%rbp)         # 1-byte Spill
	jne	.LBB43_41
# BB#38:                                # %land.rhs
                                        #   in Loop: Header=BB43_1 Depth=1
	movl	-140(%rbp), %edi
	callq	SYNTAX_FLAGS_COMMENT_NESTED
	movb	$1, %cl
	testb	$1, %al
	movb	%cl, -353(%rbp)         # 1-byte Spill
	jne	.LBB43_40
# BB#39:                                # %lor.rhs
                                        #   in Loop: Header=BB43_1 Depth=1
	movl	-128(%rbp), %edi
	callq	SYNTAX_FLAGS_COMMENT_NESTED
	movb	%al, -353(%rbp)         # 1-byte Spill
.LBB43_40:                              # %lor.end
                                        #   in Loop: Header=BB43_1 Depth=1
	movb	-353(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movb	-25(%rbp), %al
	andb	$1, %al
	movzbl	%al, %edx
	cmpl	%edx, %ecx
	sete	%al
	movb	%al, -345(%rbp)         # 1-byte Spill
.LBB43_41:                              # %land.end
                                        #   in Loop: Header=BB43_1 Depth=1
	movb	-345(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -141(%rbp)
	movl	-128(%rbp), %edi
	callq	SYNTAX_FLAGS_COMEND_FIRST
	xorl	%edi, %edi
	movb	%dil, %cl
	testb	$1, %al
	movb	%cl, -354(%rbp)         # 1-byte Spill
	jne	.LBB43_42
	jmp	.LBB43_43
.LBB43_42:                              # %land.rhs.124
                                        #   in Loop: Header=BB43_1 Depth=1
	movl	-140(%rbp), %edi
	callq	SYNTAX_FLAGS_COMEND_SECOND
	movb	%al, -354(%rbp)         # 1-byte Spill
.LBB43_43:                              # %land.end.127
                                        #   in Loop: Header=BB43_1 Depth=1
	movb	-354(%rbp), %al         # 1-byte Reload
	movb	$1, %cl
	andb	$1, %al
	movb	%al, -142(%rbp)
	testb	$1, -141(%rbp)
	movb	%cl, -355(%rbp)         # 1-byte Spill
	jne	.LBB43_45
# BB#44:                                # %lor.rhs.131
                                        #   in Loop: Header=BB43_1 Depth=1
	cmpl	$11, -108(%rbp)
	sete	%al
	movb	%al, -355(%rbp)         # 1-byte Spill
.LBB43_45:                              # %lor.end.134
                                        #   in Loop: Header=BB43_1 Depth=1
	movb	-355(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -143(%rbp)
	movq	-8(%rbp), %rcx
	cmpq	-24(%rbp), %rcx
	jle	.LBB43_92
# BB#46:                                # %land.lhs.true.139
                                        #   in Loop: Header=BB43_1 Depth=1
	testb	$1, -142(%rbp)
	jne	.LBB43_48
# BB#47:                                # %lor.lhs.false
                                        #   in Loop: Header=BB43_1 Depth=1
	testb	$1, -143(%rbp)
	je	.LBB43_92
.LBB43_48:                              # %if.then.144
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -168(%rbp)
# BB#49:                                # %do.body.145
                                        #   in Loop: Header=BB43_1 Depth=1
	xorl	%edi, %edi
	movq	-160(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -160(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-368(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB43_51
# BB#50:                                # %if.then.151
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-168(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -168(%rbp)
	jmp	.LBB43_60
.LBB43_51:                              # %if.else.153
                                        #   in Loop: Header=BB43_1 Depth=1
	jmp	.LBB43_52
.LBB43_52:                              # %do.body.154
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-168(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jge	.LBB43_54
# BB#53:                                # %if.then.161
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	addq	-168(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -184(%rbp)
	jmp	.LBB43_55
.LBB43_54:                              # %if.else.166
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	40(%rcx), %rax
	addq	-168(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -184(%rbp)
.LBB43_55:                              # %if.end.174
                                        #   in Loop: Header=BB43_1 Depth=1
	jmp	.LBB43_56
.LBB43_56:                              # %while.cond.175
                                        #   Parent Loop BB43_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-184(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	setne	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB43_57
	jmp	.LBB43_58
.LBB43_57:                              # %while.body.181
                                        #   in Loop: Header=BB43_56 Depth=2
	movq	-184(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -184(%rbp)
	movq	-168(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -168(%rbp)
	jmp	.LBB43_56
.LBB43_58:                              # %while.end.184
                                        #   in Loop: Header=BB43_1 Depth=1
	jmp	.LBB43_59
.LBB43_59:                              # %do.end.185
                                        #   in Loop: Header=BB43_1 Depth=1
	jmp	.LBB43_60
.LBB43_60:                              # %if.end.186
                                        #   in Loop: Header=BB43_1 Depth=1
	jmp	.LBB43_61
.LBB43_61:                              # %do.end.187
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-160(%rbp), %rdi
	callq	UPDATE_SYNTAX_TABLE_BACKWARD
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-376(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB43_63
# BB#62:                                # %cond.true.192
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-168(%rbp), %rdi
	callq	FETCH_MULTIBYTE_CHAR
	movl	%eax, -380(%rbp)        # 4-byte Spill
	jmp	.LBB43_81
.LBB43_63:                              # %cond.false.194
                                        #   in Loop: Header=BB43_1 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB43_64
	jmp	.LBB43_68
.LBB43_64:                              # %cond.true.195
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-168(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB43_66
# BB#65:                                # %cond.true.200
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	jmp	.LBB43_67
.LBB43_66:                              # %cond.false.203
                                        #   in Loop: Header=BB43_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -392(%rbp)        # 8-byte Spill
	jmp	.LBB43_67
.LBB43_67:                              # %cond.end.204
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-392(%rbp), %rax        # 8-byte Reload
	addq	-168(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$0, %edx
	cmpl	$128, %edx
	jb	.LBB43_72
	jmp	.LBB43_76
.LBB43_68:                              # %cond.false.215
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-168(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB43_70
# BB#69:                                # %cond.true.220
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	jmp	.LBB43_71
.LBB43_70:                              # %cond.false.223
                                        #   in Loop: Header=BB43_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -400(%rbp)        # 8-byte Spill
	jmp	.LBB43_71
.LBB43_71:                              # %cond.end.224
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-400(%rbp), %rax        # 8-byte Reload
	addq	-168(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, %eax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB43_76
.LBB43_72:                              # %cond.true.235
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-168(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB43_74
# BB#73:                                # %cond.true.240
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	jmp	.LBB43_75
.LBB43_74:                              # %cond.false.243
                                        #   in Loop: Header=BB43_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -408(%rbp)        # 8-byte Spill
	jmp	.LBB43_75
.LBB43_75:                              # %cond.end.244
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-408(%rbp), %rax        # 8-byte Reload
	addq	-168(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, -412(%rbp)        # 4-byte Spill
	jmp	.LBB43_80
.LBB43_76:                              # %cond.false.252
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-168(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB43_78
# BB#77:                                # %cond.true.257
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	jmp	.LBB43_79
.LBB43_78:                              # %cond.false.260
                                        #   in Loop: Header=BB43_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -424(%rbp)        # 8-byte Spill
	jmp	.LBB43_79
.LBB43_79:                              # %cond.end.261
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-424(%rbp), %rax        # 8-byte Reload
	addq	-168(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$4194048, %edx          # imm = 0x3FFF00
	movl	%edx, -412(%rbp)        # 4-byte Spill
.LBB43_80:                              # %cond.end.270
                                        #   in Loop: Header=BB43_1 Depth=1
	movl	-412(%rbp), %eax        # 4-byte Reload
	movl	%eax, -380(%rbp)        # 4-byte Spill
.LBB43_81:                              # %cond.end.272
                                        #   in Loop: Header=BB43_1 Depth=1
	movl	-380(%rbp), %eax        # 4-byte Reload
	movl	$1, %esi
	movl	%eax, -172(%rbp)
	movl	-172(%rbp), %edi
	callq	syntax_property_with_flags
	movl	%eax, -176(%rbp)
	testb	$1, -143(%rbp)
	jne	.LBB43_83
# BB#82:                                # %lor.lhs.false.277
                                        #   in Loop: Header=BB43_1 Depth=1
	testb	$1, -25(%rbp)
	je	.LBB43_85
.LBB43_83:                              # %land.lhs.true.280
                                        #   in Loop: Header=BB43_1 Depth=1
	movl	-128(%rbp), %edi
	callq	SYNTAX_FLAGS_COMEND_SECOND
	testb	$1, %al
	jne	.LBB43_84
	jmp	.LBB43_85
.LBB43_84:                              # %land.lhs.true.283
                                        #   in Loop: Header=BB43_1 Depth=1
	movl	-176(%rbp), %edi
	callq	SYNTAX_FLAGS_COMEND_FIRST
	testb	$1, %al
	jne	.LBB43_90
.LBB43_85:                              # %lor.lhs.false.286
                                        #   in Loop: Header=BB43_1 Depth=1
	testb	$1, -142(%rbp)
	jne	.LBB43_87
# BB#86:                                # %lor.lhs.false.289
                                        #   in Loop: Header=BB43_1 Depth=1
	testb	$1, -25(%rbp)
	je	.LBB43_91
.LBB43_87:                              # %land.lhs.true.292
                                        #   in Loop: Header=BB43_1 Depth=1
	movl	-128(%rbp), %edi
	callq	SYNTAX_FLAGS_COMSTART_SECOND
	testb	$1, %al
	jne	.LBB43_88
	jmp	.LBB43_91
.LBB43_88:                              # %land.lhs.true.295
                                        #   in Loop: Header=BB43_1 Depth=1
	movl	-32(%rbp), %eax
	movl	-128(%rbp), %edi
	movl	-140(%rbp), %esi
	movl	%eax, -428(%rbp)        # 4-byte Spill
	callq	SYNTAX_FLAGS_COMMENT_STYLE
	movl	-428(%rbp), %esi        # 4-byte Reload
	cmpl	%eax, %esi
	jne	.LBB43_91
# BB#89:                                # %land.lhs.true.299
                                        #   in Loop: Header=BB43_1 Depth=1
	movl	-176(%rbp), %edi
	callq	SYNTAX_FLAGS_COMSTART_FIRST
	testb	$1, %al
	jne	.LBB43_90
	jmp	.LBB43_91
.LBB43_90:                              # %if.then.302
	jmp	.LBB43_160
.LBB43_91:                              # %if.end.303
                                        #   in Loop: Header=BB43_1 Depth=1
	jmp	.LBB43_92
.LBB43_92:                              # %if.end.304
                                        #   in Loop: Header=BB43_1 Depth=1
	testb	$1, -141(%rbp)
	je	.LBB43_95
# BB#93:                                # %land.lhs.true.307
                                        #   in Loop: Header=BB43_1 Depth=1
	cmpq	$0, -80(%rbp)
	jne	.LBB43_95
# BB#94:                                # %if.then.310
                                        #   in Loop: Header=BB43_1 Depth=1
	movb	$0, -142(%rbp)
.LBB43_95:                              # %if.end.311
                                        #   in Loop: Header=BB43_1 Depth=1
	testb	$1, -142(%rbp)
	je	.LBB43_97
# BB#96:                                # %if.then.313
                                        #   in Loop: Header=BB43_1 Depth=1
	movl	$12, -108(%rbp)
	jmp	.LBB43_105
.LBB43_97:                              # %if.else.314
                                        #   in Loop: Header=BB43_1 Depth=1
	testb	$1, -141(%rbp)
	je	.LBB43_99
# BB#98:                                # %if.then.316
                                        #   in Loop: Header=BB43_1 Depth=1
	movl	$11, -108(%rbp)
	jmp	.LBB43_104
.LBB43_99:                              # %if.else.317
                                        #   in Loop: Header=BB43_1 Depth=1
	cmpl	$11, -108(%rbp)
	jne	.LBB43_103
# BB#100:                               # %land.lhs.true.320
                                        #   in Loop: Header=BB43_1 Depth=1
	xorl	%esi, %esi
	movl	-32(%rbp), %eax
	movl	-128(%rbp), %edi
	movl	%eax, -432(%rbp)        # 4-byte Spill
	callq	SYNTAX_FLAGS_COMMENT_STYLE
	movl	-432(%rbp), %esi        # 4-byte Reload
	cmpl	%eax, %esi
	jne	.LBB43_102
# BB#101:                               # %lor.lhs.false.324
                                        #   in Loop: Header=BB43_1 Depth=1
	movl	-128(%rbp), %edi
	callq	SYNTAX_FLAGS_COMMENT_NESTED
	andb	$1, %al
	movzbl	%al, %edi
	movb	-25(%rbp), %al
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	%ecx, %edi
	je	.LBB43_103
.LBB43_102:                             # %if.then.331
                                        #   in Loop: Header=BB43_1 Depth=1
	jmp	.LBB43_1
.LBB43_103:                             # %if.end.332
                                        #   in Loop: Header=BB43_1 Depth=1
	jmp	.LBB43_104
.LBB43_104:                             # %if.end.333
                                        #   in Loop: Header=BB43_1 Depth=1
	jmp	.LBB43_105
.LBB43_105:                             # %if.end.334
                                        #   in Loop: Header=BB43_1 Depth=1
	testb	$1, globals+3360
	jne	.LBB43_107
# BB#106:                               # %lor.lhs.false.337
                                        #   in Loop: Header=BB43_1 Depth=1
	cmpl	$12, -108(%rbp)
	je	.LBB43_109
.LBB43_107:                             # %land.lhs.true.340
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	char_quoted
	testb	$1, %al
	jne	.LBB43_108
	jmp	.LBB43_109
.LBB43_108:                             # %if.then.343
                                        #   in Loop: Header=BB43_1 Depth=1
	jmp	.LBB43_1
.LBB43_109:                             # %if.end.344
                                        #   in Loop: Header=BB43_1 Depth=1
	movl	-108(%rbp), %eax
	addl	$-4, %eax
	movl	%eax, %ecx
	subl	$11, %eax
	movq	%rcx, -440(%rbp)        # 8-byte Spill
	movl	%eax, -444(%rbp)        # 4-byte Spill
	ja	.LBB43_153
# BB#183:                               # %if.end.344
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-440(%rbp), %rax        # 8-byte Reload
	movq	.LJTI43_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB43_110:                             # %sw.bb
                                        #   in Loop: Header=BB43_1 Depth=1
	movl	$257, %eax              # imm = 0x101
	movl	$258, %ecx              # imm = 0x102
	cmpl	$15, -108(%rbp)
	cmovel	%ecx, %eax
	movl	%eax, -124(%rbp)
.LBB43_111:                             # %sw.bb.348
                                        #   in Loop: Header=BB43_1 Depth=1
	cmpl	$-1, -52(%rbp)
	jne	.LBB43_113
# BB#112:                               # %if.then.351
                                        #   in Loop: Header=BB43_1 Depth=1
	movl	-124(%rbp), %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB43_117
.LBB43_113:                             # %if.else.352
                                        #   in Loop: Header=BB43_1 Depth=1
	movl	-52(%rbp), %eax
	cmpl	-124(%rbp), %eax
	jne	.LBB43_115
# BB#114:                               # %if.then.355
                                        #   in Loop: Header=BB43_1 Depth=1
	movl	$-1, -52(%rbp)
	jmp	.LBB43_116
.LBB43_115:                             # %if.else.356
                                        #   in Loop: Header=BB43_1 Depth=1
	movb	$1, -53(%rbp)
.LBB43_116:                             # %if.end.357
                                        #   in Loop: Header=BB43_1 Depth=1
	jmp	.LBB43_117
.LBB43_117:                             # %if.end.358
                                        #   in Loop: Header=BB43_1 Depth=1
	jmp	.LBB43_154
.LBB43_118:                             # %sw.bb.359
                                        #   in Loop: Header=BB43_1 Depth=1
	cmpl	$-1, -52(%rbp)
	jne	.LBB43_121
# BB#119:                               # %lor.lhs.false.362
                                        #   in Loop: Header=BB43_1 Depth=1
	testb	$1, -54(%rbp)
	jne	.LBB43_121
# BB#120:                               # %lor.lhs.false.365
                                        #   in Loop: Header=BB43_1 Depth=1
	testb	$1, -53(%rbp)
	je	.LBB43_122
.LBB43_121:                             # %if.then.368
	jmp	.LBB43_160
.LBB43_122:                             # %if.end.369
                                        #   in Loop: Header=BB43_1 Depth=1
	testb	$1, -25(%rbp)
	jne	.LBB43_124
# BB#123:                               # %if.then.371
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB43_127
.LBB43_124:                             # %if.else.372
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-120(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -120(%rbp)
	cmpq	$0, %rax
	jg	.LBB43_126
# BB#125:                               # %if.then.376
	jmp	.LBB43_182
.LBB43_126:                             # %if.end.377
                                        #   in Loop: Header=BB43_1 Depth=1
	jmp	.LBB43_127
.LBB43_127:                             # %if.end.378
                                        #   in Loop: Header=BB43_1 Depth=1
	jmp	.LBB43_154
.LBB43_128:                             # %sw.bb.379
                                        #   in Loop: Header=BB43_1 Depth=1
	xorl	%esi, %esi
	movl	-128(%rbp), %edi
	callq	SYNTAX_FLAGS_COMMENT_STYLE
	cmpl	-32(%rbp), %eax
	jne	.LBB43_137
# BB#129:                               # %land.lhs.true.383
                                        #   in Loop: Header=BB43_1 Depth=1
	testb	$1, -142(%rbp)
	je	.LBB43_131
# BB#130:                               # %land.lhs.true.386
                                        #   in Loop: Header=BB43_1 Depth=1
	movl	-140(%rbp), %edi
	callq	SYNTAX_FLAGS_COMMENT_NESTED
	movb	$1, %cl
	testb	$1, %al
	movb	%cl, -445(%rbp)         # 1-byte Spill
	jne	.LBB43_132
.LBB43_131:                             # %lor.rhs.389
                                        #   in Loop: Header=BB43_1 Depth=1
	movl	-128(%rbp), %edi
	callq	SYNTAX_FLAGS_COMMENT_NESTED
	movb	%al, -445(%rbp)         # 1-byte Spill
.LBB43_132:                             # %lor.end.392
                                        #   in Loop: Header=BB43_1 Depth=1
	movb	-445(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movb	-25(%rbp), %al
	andb	$1, %al
	movzbl	%al, %edx
	cmpl	%edx, %ecx
	jne	.LBB43_137
# BB#133:                               # %if.then.398
                                        #   in Loop: Header=BB43_1 Depth=1
	testb	$1, -25(%rbp)
	je	.LBB43_135
# BB#134:                               # %if.then.400
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-120(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -120(%rbp)
	jmp	.LBB43_136
.LBB43_135:                             # %if.else.401
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB43_136:                             # %if.end.402
                                        #   in Loop: Header=BB43_1 Depth=1
	jmp	.LBB43_141
.LBB43_137:                             # %if.else.403
                                        #   in Loop: Header=BB43_1 Depth=1
	cmpq	$0, -80(%rbp)
	jne	.LBB43_139
# BB#138:                               # %lor.lhs.false.406
                                        #   in Loop: Header=BB43_1 Depth=1
	cmpl	$10, -124(%rbp)
	je	.LBB43_140
.LBB43_139:                             # %if.then.409
                                        #   in Loop: Header=BB43_1 Depth=1
	movb	$1, -54(%rbp)
.LBB43_140:                             # %if.end.410
                                        #   in Loop: Header=BB43_1 Depth=1
	jmp	.LBB43_141
.LBB43_141:                             # %if.end.411
                                        #   in Loop: Header=BB43_1 Depth=1
	jmp	.LBB43_154
.LBB43_142:                             # %sw.bb.412
                                        #   in Loop: Header=BB43_1 Depth=1
	testb	$1, globals+3418
	je	.LBB43_152
# BB#143:                               # %land.lhs.true.415
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-8(%rbp), %rax
	cmpq	-24(%rbp), %rax
	je	.LBB43_151
# BB#144:                               # %lor.lhs.false.418
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-16(%rbp), %rdi
	callq	dec_bytepos
	xorl	%edi, %edi
	movq	%rax, -136(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-456(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB43_146
# BB#145:                               # %cond.true.424
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-136(%rbp), %rdi
	callq	FETCH_MULTIBYTE_CHAR
	movl	%eax, -460(%rbp)        # 4-byte Spill
	jmp	.LBB43_150
.LBB43_146:                             # %cond.false.426
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB43_148
# BB#147:                               # %cond.true.431
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	jmp	.LBB43_149
.LBB43_148:                             # %cond.false.434
                                        #   in Loop: Header=BB43_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -472(%rbp)        # 8-byte Spill
	jmp	.LBB43_149
.LBB43_149:                             # %cond.end.435
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-472(%rbp), %rax        # 8-byte Reload
	addq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, -460(%rbp)        # 4-byte Spill
.LBB43_150:                             # %cond.end.443
                                        #   in Loop: Header=BB43_1 Depth=1
	movl	-460(%rbp), %eax        # 4-byte Reload
	cmpl	$10, %eax
	jne	.LBB43_152
.LBB43_151:                             # %if.then.447
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB43_152:                             # %if.end.448
                                        #   in Loop: Header=BB43_1 Depth=1
	jmp	.LBB43_154
.LBB43_153:                             # %sw.default
                                        #   in Loop: Header=BB43_1 Depth=1
	jmp	.LBB43_154
.LBB43_154:                             # %sw.epilog
                                        #   in Loop: Header=BB43_1 Depth=1
	jmp	.LBB43_1
.LBB43_155:                             # %while.end.449
	cmpq	$0, -80(%rbp)
	jne	.LBB43_157
# BB#156:                               # %if.then.452
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-64(%rbp), %rdi
	callq	UPDATE_SYNTAX_TABLE_FORWARD
	jmp	.LBB43_181
.LBB43_157:                             # %if.else.453
	movb	$1, %al
	testb	$1, %al
	jne	.LBB43_158
	jmp	.LBB43_159
.LBB43_158:                             # %if.then.454
	movq	-80(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	subq	$1, %rax
	movq	%rax, %rdi
	callq	UPDATE_SYNTAX_TABLE_FORWARD
	jmp	.LBB43_180
.LBB43_159:                             # %if.else.455
	jmp	.LBB43_160
.LBB43_160:                             # %lossage
	movb	$1, -273(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB43_162
# BB#161:                               # %if.then.458
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	find_defun_start
	movq	%rax, -96(%rbp)
	movq	find_start_value_byte, %rax
	movq	%rax, -104(%rbp)
	movq	-96(%rbp), %rax
	movq	current_buffer, %rsi
	cmpq	752(%rsi), %rax
	setg	%cl
	andb	$1, %cl
	movb	%cl, -273(%rbp)
.LBB43_162:                             # %if.end.463
	jmp	.LBB43_163
.LBB43_163:                             # %do.body.464
                                        # =>This Inner Loop Header: Depth=1
	xorl	%edi, %edi
	movq	-96(%rbp), %rsi
	movq	-104(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	%rcx, -480(%rbp)        # 8-byte Spill
	movq	%rsi, -488(%rbp)        # 8-byte Spill
	movq	%rdx, -496(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	leaq	-272(%rbp), %rdi
	movabsq	$-9223372036854775808, %r8 # imm = 0x8000000000000000
	xorl	%r9d, %r9d
	movq	-488(%rbp), %rsi        # 8-byte Reload
	movq	-496(%rbp), %rdx        # 8-byte Reload
	movq	-480(%rbp), %rcx        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$0, 8(%rsp)
	callq	scan_sexps_forward
	movq	-64(%rbp), %rax
	movq	%rax, -96(%rbp)
	testb	$1, -273(%rbp)
	jne	.LBB43_171
# BB#164:                               # %if.then.467
                                        #   in Loop: Header=BB43_163 Depth=1
	movb	$1, -273(%rbp)
	movq	-192(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB43_166
# BB#165:                               # %cond.true.472
                                        #   in Loop: Header=BB43_163 Depth=1
	movq	-192(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	jmp	.LBB43_170
.LBB43_166:                             # %cond.false.475
                                        #   in Loop: Header=BB43_163 Depth=1
	cmpq	$0, -232(%rbp)
	jl	.LBB43_168
# BB#167:                               # %cond.true.478
                                        #   in Loop: Header=BB43_163 Depth=1
	movq	-232(%rbp), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	jmp	.LBB43_169
.LBB43_168:                             # %cond.false.480
                                        #   in Loop: Header=BB43_163 Depth=1
	movq	find_start_value, %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
.LBB43_169:                             # %cond.end.481
                                        #   in Loop: Header=BB43_163 Depth=1
	movq	-512(%rbp), %rax        # 8-byte Reload
	movq	%rax, -504(%rbp)        # 8-byte Spill
.LBB43_170:                             # %cond.end.483
                                        #   in Loop: Header=BB43_163 Depth=1
	movq	-504(%rbp), %rax        # 8-byte Reload
	movq	%rax, find_start_value
	movq	current_buffer, %rdi
	movq	find_start_value, %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, find_start_value_byte
.LBB43_171:                             # %if.end.486
                                        #   in Loop: Header=BB43_163 Depth=1
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	$1, %ecx
	movq	-256(%rbp), %rdx
	movb	-25(%rbp), %sil
	testb	$1, %sil
	cmovnel	%ecx, %eax
	movslq	%eax, %rdi
	cmpq	%rdi, %rdx
	jne	.LBB43_174
# BB#172:                               # %land.lhs.true.493
                                        #   in Loop: Header=BB43_163 Depth=1
	movl	-248(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jne	.LBB43_174
# BB#173:                               # %if.then.497
                                        #   in Loop: Header=BB43_163 Depth=1
	movq	-200(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB43_177
.LBB43_174:                             # %if.else.498
                                        #   in Loop: Header=BB43_163 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -256(%rbp)
	je	.LBB43_176
# BB#175:                               # %if.then.501
                                        #   in Loop: Header=BB43_163 Depth=1
	movq	-200(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -96(%rbp)
	movq	current_buffer, %rdi
	movq	-96(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -104(%rbp)
.LBB43_176:                             # %if.end.505
                                        #   in Loop: Header=BB43_163 Depth=1
	jmp	.LBB43_177
.LBB43_177:                             # %if.end.506
                                        #   in Loop: Header=BB43_163 Depth=1
	jmp	.LBB43_178
.LBB43_178:                             # %do.cond
                                        #   in Loop: Header=BB43_163 Depth=1
	movq	-96(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jl	.LBB43_163
# BB#179:                               # %do.end.509
	movq	current_buffer, %rdi
	movq	-8(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	subq	$1, %rax
	movq	%rax, %rdi
	callq	UPDATE_SYNTAX_TABLE_FORWARD
.LBB43_180:                             # %if.end.512
	jmp	.LBB43_181
.LBB43_181:                             # %if.end.513
	jmp	.LBB43_182
.LBB43_182:                             # %done
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	cmpq	-64(%rbp), %rax
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	addq	$528, %rsp              # imm = 0x210
	popq	%rbp
	retq
.Lfunc_end43:
	.size	back_comment, .Lfunc_end43-back_comment
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI43_0:
	.quad	.LBB43_142
	.quad	.LBB43_153
	.quad	.LBB43_153
	.quad	.LBB43_111
	.quad	.LBB43_153
	.quad	.LBB43_153
	.quad	.LBB43_153
	.quad	.LBB43_118
	.quad	.LBB43_128
	.quad	.LBB43_153
	.quad	.LBB43_110
	.quad	.LBB43_110

	.text
	.globl	Fscan_lists
	.align	16, 0x90
	.type	Fscan_lists,@function
Fscan_lists:                            # @Fscan_lists
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp133:
	.cfi_def_cfa_offset 16
.Ltmp134:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp135:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	andl	$-5, %eax
	cmpl	$2, %eax
	jne	.LBB44_2
# BB#1:                                 # %cond.true
	jmp	.LBB44_3
.LBB44_2:                               # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB44_3:                               # %cond.end
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB44_5
# BB#4:                                 # %cond.true.8
	jmp	.LBB44_6
.LBB44_5:                               # %cond.false.9
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB44_6:                               # %cond.end.11
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB44_8
# BB#7:                                 # %cond.true.17
	jmp	.LBB44_9
.LBB44_8:                               # %cond.false.18
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB44_9:                               # %cond.end.20
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	movq	-16(%rbp), %rdx
	sarq	$2, %rdx
	movq	-24(%rbp), %rsi
	sarq	$2, %rsi
	movq	%rax, %rdi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rdx, %rsi
	movq	-56(%rbp), %rdx         # 8-byte Reload
	callq	scan_lists
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end44:
	.size	Fscan_lists, .Lfunc_end44-Fscan_lists
	.cfi_endproc

	.align	16, 0x90
	.type	scan_lists,@function
scan_lists:                             # @scan_lists
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp136:
	.cfi_def_cfa_offset 16
.Ltmp137:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp138:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$1704, %rsp             # imm = 0x6A8
.Ltmp139:
	.cfi_offset %rbx, -24
	movb	%cl, %al
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	andb	$1, %al
	movb	%al, -41(%rbp)
	cmpq	$0, -32(%rbp)
	jle	.LBB45_2
# BB#1:                                 # %cond.true
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	jmp	.LBB45_3
.LBB45_2:                               # %cond.false
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
.LBB45_3:                               # %cond.end
	movq	-360(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -64(%rbp)
	movb	$0, -78(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -96(%rbp)
	movl	$0, -100(%rbp)
	movb	$0, -101(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -120(%rbp)
	testb	$1, -41(%rbp)
	movb	%dl, -361(%rbp)         # 1-byte Spill
	je	.LBB45_5
# BB#4:                                 # %land.rhs
	movb	globals+3414, %al
	movb	%al, -361(%rbp)         # 1-byte Spill
.LBB45_5:                               # %land.end
	movb	-361(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -161(%rbp)
	cmpq	$0, -40(%rbp)
	jle	.LBB45_7
# BB#6:                                 # %if.then
	movq	$0, -96(%rbp)
.LBB45_7:                               # %if.end
	movq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	jle	.LBB45_9
# BB#8:                                 # %if.then.6
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB45_9:                               # %if.end.8
	movq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	cmpq	752(%rcx), %rax
	jge	.LBB45_11
# BB#10:                                # %if.then.11
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB45_11:                              # %if.end.13
	movq	current_buffer, %rdi
	movq	-24(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -136(%rbp)
	movb	$1, immediate_quit
# BB#12:                                # %do.body
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-376(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB45_15
# BB#13:                                # %land.lhs.true
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-384(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB45_15
# BB#14:                                # %if.then.18
	callq	process_quit_flag
	jmp	.LBB45_18
.LBB45_15:                              # %if.else
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB45_17
# BB#16:                                # %if.then.20
	callq	process_pending_signals
.LBB45_17:                              # %if.end.21
	jmp	.LBB45_18
.LBB45_18:                              # %if.end.22
	jmp	.LBB45_19
.LBB45_19:                              # %do.end
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	SETUP_SYNTAX_TABLE
.LBB45_20:                              # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB45_22 Depth 2
                                        #       Child Loop BB45_308 Depth 3
                                        #     Child Loop BB45_137 Depth 2
	cmpq	$0, -32(%rbp)
	jle	.LBB45_406
# BB#21:                                # %while.body
                                        #   in Loop: Header=BB45_20 Depth=1
	jmp	.LBB45_22
.LBB45_22:                              # %while.cond.24
                                        #   Parent Loop BB45_20 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB45_308 Depth 3
	movq	-24(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jge	.LBB45_402
# BB#23:                                # %while.body.26
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-24(%rbp), %rdi
	callq	UPDATE_SYNTAX_TABLE_FORWARD
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-392(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB45_25
# BB#24:                                # %cond.true.29
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-136(%rbp), %rdi
	callq	FETCH_MULTIBYTE_CHAR
	movl	%eax, -396(%rbp)        # 4-byte Spill
	jmp	.LBB45_43
.LBB45_25:                              # %cond.false.31
                                        #   in Loop: Header=BB45_22 Depth=2
	movb	$1, %al
	testb	$1, %al
	jne	.LBB45_26
	jmp	.LBB45_30
.LBB45_26:                              # %cond.true.32
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB45_28
# BB#27:                                # %cond.true.34
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	jmp	.LBB45_29
.LBB45_28:                              # %cond.false.36
                                        #   in Loop: Header=BB45_22 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -408(%rbp)        # 8-byte Spill
	jmp	.LBB45_29
.LBB45_29:                              # %cond.end.37
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-408(%rbp), %rax        # 8-byte Reload
	addq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$0, %edx
	cmpl	$128, %edx
	jb	.LBB45_34
	jmp	.LBB45_38
.LBB45_30:                              # %cond.false.44
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB45_32
# BB#31:                                # %cond.true.49
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	jmp	.LBB45_33
.LBB45_32:                              # %cond.false.52
                                        #   in Loop: Header=BB45_22 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -416(%rbp)        # 8-byte Spill
	jmp	.LBB45_33
.LBB45_33:                              # %cond.end.53
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-416(%rbp), %rax        # 8-byte Reload
	addq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, %eax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB45_38
.LBB45_34:                              # %cond.true.64
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB45_36
# BB#35:                                # %cond.true.69
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	jmp	.LBB45_37
.LBB45_36:                              # %cond.false.72
                                        #   in Loop: Header=BB45_22 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -424(%rbp)        # 8-byte Spill
	jmp	.LBB45_37
.LBB45_37:                              # %cond.end.73
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-424(%rbp), %rax        # 8-byte Reload
	addq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, -428(%rbp)        # 4-byte Spill
	jmp	.LBB45_42
.LBB45_38:                              # %cond.false.81
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB45_40
# BB#39:                                # %cond.true.86
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	jmp	.LBB45_41
.LBB45_40:                              # %cond.false.89
                                        #   in Loop: Header=BB45_22 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -440(%rbp)        # 8-byte Spill
	jmp	.LBB45_41
.LBB45_41:                              # %cond.end.90
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-440(%rbp), %rax        # 8-byte Reload
	addq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$4194048, %edx          # imm = 0x3FFF00
	movl	%edx, -428(%rbp)        # 4-byte Spill
.LBB45_42:                              # %cond.end.99
                                        #   in Loop: Header=BB45_22 Depth=2
	movl	-428(%rbp), %eax        # 4-byte Reload
	movl	%eax, -396(%rbp)        # 4-byte Spill
.LBB45_43:                              # %cond.end.101
                                        #   in Loop: Header=BB45_22 Depth=2
	movl	-396(%rbp), %eax        # 4-byte Reload
	movl	$1, %esi
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %edi
	callq	syntax_property_with_flags
	movl	%eax, -168(%rbp)
	movl	-68(%rbp), %edi
	movb	-161(%rbp), %cl
	andb	$1, %cl
	movzbl	%cl, %esi
	callq	syntax_multibyte
	movl	%eax, -84(%rbp)
	movl	-168(%rbp), %edi
	callq	SYNTAX_FLAGS_COMSTART_FIRST
	andb	$1, %al
	movb	%al, -162(%rbp)
	movl	-168(%rbp), %edi
	callq	SYNTAX_FLAGS_COMMENT_NESTED
	xorl	%esi, %esi
	andb	$1, %al
	movb	%al, -101(%rbp)
	movl	-168(%rbp), %edi
	callq	SYNTAX_FLAGS_COMMENT_STYLE
	movl	%eax, -100(%rbp)
	movl	-168(%rbp), %edi
	callq	SYNTAX_FLAGS_PREFIX
	andb	$1, %al
	movb	%al, -163(%rbp)
	movq	-40(%rbp), %rdx
	cmpq	-96(%rbp), %rdx
	jne	.LBB45_45
# BB#44:                                # %if.then.115
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-24(%rbp), %rax
	movq	%rax, -120(%rbp)
.LBB45_45:                              # %if.end.116
                                        #   in Loop: Header=BB45_22 Depth=2
	jmp	.LBB45_46
.LBB45_46:                              # %do.body.117
                                        #   in Loop: Header=BB45_22 Depth=2
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-448(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB45_48
# BB#47:                                # %if.then.122
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-136(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -136(%rbp)
	jmp	.LBB45_63
.LBB45_48:                              # %if.else.124
                                        #   in Loop: Header=BB45_22 Depth=2
	jmp	.LBB45_49
.LBB45_49:                              # %do.body.125
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB45_51
# BB#50:                                # %cond.true.130
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	jmp	.LBB45_52
.LBB45_51:                              # %cond.false.133
                                        #   in Loop: Header=BB45_22 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -456(%rbp)        # 8-byte Spill
	jmp	.LBB45_52
.LBB45_52:                              # %cond.end.134
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-456(%rbp), %rax        # 8-byte Reload
	addq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	movzbl	(%rax), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	jne	.LBB45_54
# BB#53:                                # %cond.true.143
                                        #   in Loop: Header=BB45_22 Depth=2
	movl	$1, %eax
	movl	%eax, -460(%rbp)        # 4-byte Spill
	jmp	.LBB45_61
.LBB45_54:                              # %cond.false.144
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-184(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB45_56
# BB#55:                                # %cond.true.148
                                        #   in Loop: Header=BB45_22 Depth=2
	movl	$2, %eax
	movl	%eax, -464(%rbp)        # 4-byte Spill
	jmp	.LBB45_60
.LBB45_56:                              # %cond.false.149
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-184(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB45_58
# BB#57:                                # %cond.true.153
                                        #   in Loop: Header=BB45_22 Depth=2
	movl	$3, %eax
	movl	%eax, -468(%rbp)        # 4-byte Spill
	jmp	.LBB45_59
.LBB45_58:                              # %cond.false.154
                                        #   in Loop: Header=BB45_22 Depth=2
	movl	$5, %eax
	movl	$4, %ecx
	movq	-184(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$8, %esi
	cmpl	$0, %esi
	setne	%dil
	xorb	$-1, %dil
	testb	$1, %dil
	cmovnel	%ecx, %eax
	movl	%eax, -468(%rbp)        # 4-byte Spill
.LBB45_59:                              # %cond.end.159
                                        #   in Loop: Header=BB45_22 Depth=2
	movl	-468(%rbp), %eax        # 4-byte Reload
	movl	%eax, -464(%rbp)        # 4-byte Spill
.LBB45_60:                              # %cond.end.161
                                        #   in Loop: Header=BB45_22 Depth=2
	movl	-464(%rbp), %eax        # 4-byte Reload
	movl	%eax, -460(%rbp)        # 4-byte Spill
.LBB45_61:                              # %cond.end.163
                                        #   in Loop: Header=BB45_22 Depth=2
	movl	-460(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	addq	-136(%rbp), %rcx
	movq	%rcx, -136(%rbp)
# BB#62:                                # %do.end.167
                                        #   in Loop: Header=BB45_22 Depth=2
	jmp	.LBB45_63
.LBB45_63:                              # %if.end.168
                                        #   in Loop: Header=BB45_22 Depth=2
	jmp	.LBB45_64
.LBB45_64:                              # %do.end.169
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-24(%rbp), %rdi
	callq	UPDATE_SYNTAX_TABLE_FORWARD
	movq	-24(%rbp), %rdi
	cmpq	-64(%rbp), %rdi
	jge	.LBB45_108
# BB#65:                                # %land.lhs.true.172
                                        #   in Loop: Header=BB45_22 Depth=2
	testb	$1, -162(%rbp)
	je	.LBB45_108
# BB#66:                                # %land.lhs.true.175
                                        #   in Loop: Header=BB45_22 Depth=2
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-480(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB45_68
# BB#67:                                # %cond.true.180
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-136(%rbp), %rdi
	callq	FETCH_MULTIBYTE_CHAR
	movl	%eax, -484(%rbp)        # 4-byte Spill
	jmp	.LBB45_86
.LBB45_68:                              # %cond.false.182
                                        #   in Loop: Header=BB45_22 Depth=2
	movb	$1, %al
	testb	$1, %al
	jne	.LBB45_69
	jmp	.LBB45_73
.LBB45_69:                              # %cond.true.183
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB45_71
# BB#70:                                # %cond.true.188
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	jmp	.LBB45_72
.LBB45_71:                              # %cond.false.191
                                        #   in Loop: Header=BB45_22 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -496(%rbp)        # 8-byte Spill
	jmp	.LBB45_72
.LBB45_72:                              # %cond.end.192
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-496(%rbp), %rax        # 8-byte Reload
	addq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$0, %edx
	cmpl	$128, %edx
	jb	.LBB45_77
	jmp	.LBB45_81
.LBB45_73:                              # %cond.false.203
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB45_75
# BB#74:                                # %cond.true.208
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	jmp	.LBB45_76
.LBB45_75:                              # %cond.false.211
                                        #   in Loop: Header=BB45_22 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -504(%rbp)        # 8-byte Spill
	jmp	.LBB45_76
.LBB45_76:                              # %cond.end.212
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-504(%rbp), %rax        # 8-byte Reload
	addq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, %eax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB45_81
.LBB45_77:                              # %cond.true.223
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB45_79
# BB#78:                                # %cond.true.228
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	jmp	.LBB45_80
.LBB45_79:                              # %cond.false.231
                                        #   in Loop: Header=BB45_22 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -512(%rbp)        # 8-byte Spill
	jmp	.LBB45_80
.LBB45_80:                              # %cond.end.232
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-512(%rbp), %rax        # 8-byte Reload
	addq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, -516(%rbp)        # 4-byte Spill
	jmp	.LBB45_85
.LBB45_81:                              # %cond.false.240
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB45_83
# BB#82:                                # %cond.true.245
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	jmp	.LBB45_84
.LBB45_83:                              # %cond.false.248
                                        #   in Loop: Header=BB45_22 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -528(%rbp)        # 8-byte Spill
	jmp	.LBB45_84
.LBB45_84:                              # %cond.end.249
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-528(%rbp), %rax        # 8-byte Reload
	addq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$4194048, %edx          # imm = 0x3FFF00
	movl	%edx, -516(%rbp)        # 4-byte Spill
.LBB45_85:                              # %cond.end.258
                                        #   in Loop: Header=BB45_22 Depth=2
	movl	-516(%rbp), %eax        # 4-byte Reload
	movl	%eax, -484(%rbp)        # 4-byte Spill
.LBB45_86:                              # %cond.end.260
                                        #   in Loop: Header=BB45_22 Depth=2
	movl	-484(%rbp), %eax        # 4-byte Reload
	movl	$1, %esi
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %edi
	callq	syntax_property_with_flags
	movl	%eax, -172(%rbp)
	movl	-172(%rbp), %edi
	callq	SYNTAX_FLAGS_COMSTART_SECOND
	testb	$1, %al
	jne	.LBB45_87
	jmp	.LBB45_108
.LBB45_87:                              # %land.lhs.true.265
                                        #   in Loop: Header=BB45_22 Depth=2
	testb	$1, globals+3419
	je	.LBB45_108
# BB#88:                                # %if.then.268
                                        #   in Loop: Header=BB45_22 Depth=2
	movl	$11, -84(%rbp)
	movl	-172(%rbp), %edi
	movl	-168(%rbp), %esi
	callq	SYNTAX_FLAGS_COMMENT_STYLE
	movl	%eax, -100(%rbp)
	movl	-172(%rbp), %edi
	callq	SYNTAX_FLAGS_COMMENT_NESTED
	andb	$1, %al
	movzbl	%al, %esi
	movb	-101(%rbp), %al
	andb	$1, %al
	movzbl	%al, %edi
	orl	%esi, %edi
	cmpl	$0, %edi
	setne	%al
	andb	$1, %al
	movb	%al, -101(%rbp)
# BB#89:                                # %do.body.276
                                        #   in Loop: Header=BB45_22 Depth=2
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-536(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB45_91
# BB#90:                                # %if.then.282
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-136(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -136(%rbp)
	jmp	.LBB45_106
.LBB45_91:                              # %if.else.284
                                        #   in Loop: Header=BB45_22 Depth=2
	jmp	.LBB45_92
.LBB45_92:                              # %do.body.285
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB45_94
# BB#93:                                # %cond.true.291
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	jmp	.LBB45_95
.LBB45_94:                              # %cond.false.294
                                        #   in Loop: Header=BB45_22 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -544(%rbp)        # 8-byte Spill
	jmp	.LBB45_95
.LBB45_95:                              # %cond.end.295
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-544(%rbp), %rax        # 8-byte Reload
	addq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	movzbl	(%rax), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	jne	.LBB45_97
# BB#96:                                # %cond.true.305
                                        #   in Loop: Header=BB45_22 Depth=2
	movl	$1, %eax
	movl	%eax, -548(%rbp)        # 4-byte Spill
	jmp	.LBB45_104
.LBB45_97:                              # %cond.false.306
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-192(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB45_99
# BB#98:                                # %cond.true.310
                                        #   in Loop: Header=BB45_22 Depth=2
	movl	$2, %eax
	movl	%eax, -552(%rbp)        # 4-byte Spill
	jmp	.LBB45_103
.LBB45_99:                              # %cond.false.311
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-192(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB45_101
# BB#100:                               # %cond.true.315
                                        #   in Loop: Header=BB45_22 Depth=2
	movl	$3, %eax
	movl	%eax, -556(%rbp)        # 4-byte Spill
	jmp	.LBB45_102
.LBB45_101:                             # %cond.false.316
                                        #   in Loop: Header=BB45_22 Depth=2
	movl	$5, %eax
	movl	$4, %ecx
	movq	-192(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$8, %esi
	cmpl	$0, %esi
	setne	%dil
	xorb	$-1, %dil
	testb	$1, %dil
	cmovnel	%ecx, %eax
	movl	%eax, -556(%rbp)        # 4-byte Spill
.LBB45_102:                             # %cond.end.322
                                        #   in Loop: Header=BB45_22 Depth=2
	movl	-556(%rbp), %eax        # 4-byte Reload
	movl	%eax, -552(%rbp)        # 4-byte Spill
.LBB45_103:                             # %cond.end.324
                                        #   in Loop: Header=BB45_22 Depth=2
	movl	-552(%rbp), %eax        # 4-byte Reload
	movl	%eax, -548(%rbp)        # 4-byte Spill
.LBB45_104:                             # %cond.end.326
                                        #   in Loop: Header=BB45_22 Depth=2
	movl	-548(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	addq	-136(%rbp), %rcx
	movq	%rcx, -136(%rbp)
# BB#105:                               # %do.end.330
                                        #   in Loop: Header=BB45_22 Depth=2
	jmp	.LBB45_106
.LBB45_106:                             # %if.end.331
                                        #   in Loop: Header=BB45_22 Depth=2
	jmp	.LBB45_107
.LBB45_107:                             # %do.end.332
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-24(%rbp), %rdi
	callq	UPDATE_SYNTAX_TABLE_FORWARD
.LBB45_108:                             # %if.end.333
                                        #   in Loop: Header=BB45_22 Depth=2
	testb	$1, -163(%rbp)
	je	.LBB45_110
# BB#109:                               # %if.then.335
                                        #   in Loop: Header=BB45_22 Depth=2
	jmp	.LBB45_22
.LBB45_110:                             # %if.end.336
                                        #   in Loop: Header=BB45_22 Depth=2
	movl	-84(%rbp), %eax
	addl	$-2, %eax
	movl	%eax, %ecx
	subl	$13, %eax
	movq	%rcx, -568(%rbp)        # 8-byte Spill
	movl	%eax, -572(%rbp)        # 4-byte Spill
	ja	.LBB45_400
# BB#778:                               # %if.end.336
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-568(%rbp), %rax        # 8-byte Reload
	movq	.LJTI45_1(,%rax,8), %rcx
	jmpq	*%rcx
.LBB45_111:                             # %sw.bb
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-24(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB45_113
# BB#112:                               # %if.then.339
	jmp	.LBB45_774
.LBB45_113:                             # %if.end.340
                                        #   in Loop: Header=BB45_22 Depth=2
	jmp	.LBB45_114
.LBB45_114:                             # %do.body.341
                                        #   in Loop: Header=BB45_22 Depth=2
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-584(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB45_116
# BB#115:                               # %if.then.347
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-136(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -136(%rbp)
	jmp	.LBB45_131
.LBB45_116:                             # %if.else.349
                                        #   in Loop: Header=BB45_22 Depth=2
	jmp	.LBB45_117
.LBB45_117:                             # %do.body.350
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB45_119
# BB#118:                               # %cond.true.356
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -592(%rbp)        # 8-byte Spill
	jmp	.LBB45_120
.LBB45_119:                             # %cond.false.359
                                        #   in Loop: Header=BB45_22 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -592(%rbp)        # 8-byte Spill
	jmp	.LBB45_120
.LBB45_120:                             # %cond.end.360
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-592(%rbp), %rax        # 8-byte Reload
	addq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rax
	movzbl	(%rax), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	jne	.LBB45_122
# BB#121:                               # %cond.true.370
                                        #   in Loop: Header=BB45_22 Depth=2
	movl	$1, %eax
	movl	%eax, -596(%rbp)        # 4-byte Spill
	jmp	.LBB45_129
.LBB45_122:                             # %cond.false.371
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-200(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB45_124
# BB#123:                               # %cond.true.375
                                        #   in Loop: Header=BB45_22 Depth=2
	movl	$2, %eax
	movl	%eax, -600(%rbp)        # 4-byte Spill
	jmp	.LBB45_128
.LBB45_124:                             # %cond.false.376
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-200(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB45_126
# BB#125:                               # %cond.true.380
                                        #   in Loop: Header=BB45_22 Depth=2
	movl	$3, %eax
	movl	%eax, -604(%rbp)        # 4-byte Spill
	jmp	.LBB45_127
.LBB45_126:                             # %cond.false.381
                                        #   in Loop: Header=BB45_22 Depth=2
	movl	$5, %eax
	movl	$4, %ecx
	movq	-200(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$8, %esi
	cmpl	$0, %esi
	setne	%dil
	xorb	$-1, %dil
	testb	$1, %dil
	cmovnel	%ecx, %eax
	movl	%eax, -604(%rbp)        # 4-byte Spill
.LBB45_127:                             # %cond.end.387
                                        #   in Loop: Header=BB45_22 Depth=2
	movl	-604(%rbp), %eax        # 4-byte Reload
	movl	%eax, -600(%rbp)        # 4-byte Spill
.LBB45_128:                             # %cond.end.389
                                        #   in Loop: Header=BB45_22 Depth=2
	movl	-600(%rbp), %eax        # 4-byte Reload
	movl	%eax, -596(%rbp)        # 4-byte Spill
.LBB45_129:                             # %cond.end.391
                                        #   in Loop: Header=BB45_22 Depth=2
	movl	-596(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	addq	-136(%rbp), %rcx
	movq	%rcx, -136(%rbp)
# BB#130:                               # %do.end.395
                                        #   in Loop: Header=BB45_22 Depth=2
	jmp	.LBB45_131
.LBB45_131:                             # %if.end.396
                                        #   in Loop: Header=BB45_22 Depth=2
	jmp	.LBB45_132
.LBB45_132:                             # %do.end.397
                                        #   in Loop: Header=BB45_22 Depth=2
	jmp	.LBB45_133
.LBB45_133:                             # %sw.bb.398
                                        #   in Loop: Header=BB45_22 Depth=2
	cmpq	$0, -40(%rbp)
	jne	.LBB45_135
# BB#134:                               # %lor.lhs.false
                                        #   in Loop: Header=BB45_22 Depth=2
	testb	$1, -41(%rbp)
	jne	.LBB45_136
.LBB45_135:                             # %if.then.401
                                        #   in Loop: Header=BB45_22 Depth=2
	jmp	.LBB45_401
.LBB45_136:                             # %if.end.402
                                        #   in Loop: Header=BB45_20 Depth=1
	jmp	.LBB45_137
.LBB45_137:                             # %while.cond.403
                                        #   Parent Loop BB45_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-24(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jge	.LBB45_203
# BB#138:                               # %while.body.406
                                        #   in Loop: Header=BB45_137 Depth=2
	movq	-24(%rbp), %rdi
	callq	UPDATE_SYNTAX_TABLE_FORWARD
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-616(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB45_140
# BB#139:                               # %cond.true.411
                                        #   in Loop: Header=BB45_137 Depth=2
	movq	-136(%rbp), %rdi
	callq	FETCH_MULTIBYTE_CHAR
	movl	%eax, -620(%rbp)        # 4-byte Spill
	jmp	.LBB45_158
.LBB45_140:                             # %cond.false.413
                                        #   in Loop: Header=BB45_137 Depth=2
	movb	$1, %al
	testb	$1, %al
	jne	.LBB45_141
	jmp	.LBB45_145
.LBB45_141:                             # %cond.true.414
                                        #   in Loop: Header=BB45_137 Depth=2
	movq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB45_143
# BB#142:                               # %cond.true.419
                                        #   in Loop: Header=BB45_137 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -632(%rbp)        # 8-byte Spill
	jmp	.LBB45_144
.LBB45_143:                             # %cond.false.422
                                        #   in Loop: Header=BB45_137 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -632(%rbp)        # 8-byte Spill
	jmp	.LBB45_144
.LBB45_144:                             # %cond.end.423
                                        #   in Loop: Header=BB45_137 Depth=2
	movq	-632(%rbp), %rax        # 8-byte Reload
	addq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$0, %edx
	cmpl	$128, %edx
	jb	.LBB45_149
	jmp	.LBB45_153
.LBB45_145:                             # %cond.false.434
                                        #   in Loop: Header=BB45_137 Depth=2
	movq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB45_147
# BB#146:                               # %cond.true.439
                                        #   in Loop: Header=BB45_137 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
	jmp	.LBB45_148
.LBB45_147:                             # %cond.false.442
                                        #   in Loop: Header=BB45_137 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -640(%rbp)        # 8-byte Spill
	jmp	.LBB45_148
.LBB45_148:                             # %cond.end.443
                                        #   in Loop: Header=BB45_137 Depth=2
	movq	-640(%rbp), %rax        # 8-byte Reload
	addq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, %eax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB45_153
.LBB45_149:                             # %cond.true.454
                                        #   in Loop: Header=BB45_137 Depth=2
	movq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB45_151
# BB#150:                               # %cond.true.459
                                        #   in Loop: Header=BB45_137 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -648(%rbp)        # 8-byte Spill
	jmp	.LBB45_152
.LBB45_151:                             # %cond.false.462
                                        #   in Loop: Header=BB45_137 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -648(%rbp)        # 8-byte Spill
	jmp	.LBB45_152
.LBB45_152:                             # %cond.end.463
                                        #   in Loop: Header=BB45_137 Depth=2
	movq	-648(%rbp), %rax        # 8-byte Reload
	addq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, -652(%rbp)        # 4-byte Spill
	jmp	.LBB45_157
.LBB45_153:                             # %cond.false.471
                                        #   in Loop: Header=BB45_137 Depth=2
	movq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB45_155
# BB#154:                               # %cond.true.476
                                        #   in Loop: Header=BB45_137 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -664(%rbp)        # 8-byte Spill
	jmp	.LBB45_156
.LBB45_155:                             # %cond.false.479
                                        #   in Loop: Header=BB45_137 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -664(%rbp)        # 8-byte Spill
	jmp	.LBB45_156
.LBB45_156:                             # %cond.end.480
                                        #   in Loop: Header=BB45_137 Depth=2
	movq	-664(%rbp), %rax        # 8-byte Reload
	addq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$4194048, %edx          # imm = 0x3FFF00
	movl	%edx, -652(%rbp)        # 4-byte Spill
.LBB45_157:                             # %cond.end.489
                                        #   in Loop: Header=BB45_137 Depth=2
	movl	-652(%rbp), %eax        # 4-byte Reload
	movl	%eax, -620(%rbp)        # 4-byte Spill
.LBB45_158:                             # %cond.end.491
                                        #   in Loop: Header=BB45_137 Depth=2
	movl	-620(%rbp), %eax        # 4-byte Reload
	movl	%eax, -68(%rbp)
	movzbl	-161(%rbp), %ecx
	andl	$1, %ecx
	movl	%eax, %edi
	movl	%ecx, %esi
	callq	syntax_multibyte
	movl	%eax, %ecx
	addl	$-2, %ecx
	subl	$2, %ecx
	movl	%eax, -668(%rbp)        # 4-byte Spill
	movl	%ecx, -672(%rbp)        # 4-byte Spill
	jb	.LBB45_181
	jmp	.LBB45_779
.LBB45_779:                             # %cond.end.491
                                        #   in Loop: Header=BB45_137 Depth=2
	movl	-668(%rbp), %eax        # 4-byte Reload
	subl	$6, %eax
	movl	%eax, -676(%rbp)        # 4-byte Spill
	je	.LBB45_181
	jmp	.LBB45_780
.LBB45_780:                             # %cond.end.491
                                        #   in Loop: Header=BB45_137 Depth=2
	movl	-668(%rbp), %eax        # 4-byte Reload
	addl	$-9, %eax
	subl	$1, %eax
	movl	%eax, -680(%rbp)        # 4-byte Spill
	ja	.LBB45_182
	jmp	.LBB45_159
.LBB45_159:                             # %sw.bb.495
                                        #   in Loop: Header=BB45_137 Depth=2
	jmp	.LBB45_160
.LBB45_160:                             # %do.body.496
                                        #   in Loop: Header=BB45_137 Depth=2
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -688(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-688(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB45_162
# BB#161:                               # %if.then.502
                                        #   in Loop: Header=BB45_137 Depth=2
	movq	-136(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -136(%rbp)
	jmp	.LBB45_177
.LBB45_162:                             # %if.else.504
                                        #   in Loop: Header=BB45_137 Depth=2
	jmp	.LBB45_163
.LBB45_163:                             # %do.body.505
                                        #   in Loop: Header=BB45_137 Depth=2
	movq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB45_165
# BB#164:                               # %cond.true.511
                                        #   in Loop: Header=BB45_137 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -696(%rbp)        # 8-byte Spill
	jmp	.LBB45_166
.LBB45_165:                             # %cond.false.514
                                        #   in Loop: Header=BB45_137 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -696(%rbp)        # 8-byte Spill
	jmp	.LBB45_166
.LBB45_166:                             # %cond.end.515
                                        #   in Loop: Header=BB45_137 Depth=2
	movq	-696(%rbp), %rax        # 8-byte Reload
	addq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	movzbl	(%rax), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	jne	.LBB45_168
# BB#167:                               # %cond.true.525
                                        #   in Loop: Header=BB45_137 Depth=2
	movl	$1, %eax
	movl	%eax, -700(%rbp)        # 4-byte Spill
	jmp	.LBB45_175
.LBB45_168:                             # %cond.false.526
                                        #   in Loop: Header=BB45_137 Depth=2
	movq	-208(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB45_170
# BB#169:                               # %cond.true.530
                                        #   in Loop: Header=BB45_137 Depth=2
	movl	$2, %eax
	movl	%eax, -704(%rbp)        # 4-byte Spill
	jmp	.LBB45_174
.LBB45_170:                             # %cond.false.531
                                        #   in Loop: Header=BB45_137 Depth=2
	movq	-208(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB45_172
# BB#171:                               # %cond.true.535
                                        #   in Loop: Header=BB45_137 Depth=2
	movl	$3, %eax
	movl	%eax, -708(%rbp)        # 4-byte Spill
	jmp	.LBB45_173
.LBB45_172:                             # %cond.false.536
                                        #   in Loop: Header=BB45_137 Depth=2
	movl	$5, %eax
	movl	$4, %ecx
	movq	-208(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$8, %esi
	cmpl	$0, %esi
	setne	%dil
	xorb	$-1, %dil
	testb	$1, %dil
	cmovnel	%ecx, %eax
	movl	%eax, -708(%rbp)        # 4-byte Spill
.LBB45_173:                             # %cond.end.542
                                        #   in Loop: Header=BB45_137 Depth=2
	movl	-708(%rbp), %eax        # 4-byte Reload
	movl	%eax, -704(%rbp)        # 4-byte Spill
.LBB45_174:                             # %cond.end.544
                                        #   in Loop: Header=BB45_137 Depth=2
	movl	-704(%rbp), %eax        # 4-byte Reload
	movl	%eax, -700(%rbp)        # 4-byte Spill
.LBB45_175:                             # %cond.end.546
                                        #   in Loop: Header=BB45_137 Depth=2
	movl	-700(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	addq	-136(%rbp), %rcx
	movq	%rcx, -136(%rbp)
# BB#176:                               # %do.end.550
                                        #   in Loop: Header=BB45_137 Depth=2
	jmp	.LBB45_177
.LBB45_177:                             # %if.end.551
                                        #   in Loop: Header=BB45_137 Depth=2
	jmp	.LBB45_178
.LBB45_178:                             # %do.end.552
                                        #   in Loop: Header=BB45_137 Depth=2
	movq	-24(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB45_180
# BB#179:                               # %if.then.555
	jmp	.LBB45_774
.LBB45_180:                             # %if.end.556
                                        #   in Loop: Header=BB45_137 Depth=2
	jmp	.LBB45_183
.LBB45_181:                             # %sw.bb.557
                                        #   in Loop: Header=BB45_137 Depth=2
	jmp	.LBB45_183
.LBB45_182:                             # %sw.default
                                        #   in Loop: Header=BB45_20 Depth=1
	jmp	.LBB45_405
.LBB45_183:                             # %sw.epilog
                                        #   in Loop: Header=BB45_137 Depth=2
	jmp	.LBB45_184
.LBB45_184:                             # %do.body.558
                                        #   in Loop: Header=BB45_137 Depth=2
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -720(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-720(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB45_186
# BB#185:                               # %if.then.564
                                        #   in Loop: Header=BB45_137 Depth=2
	movq	-136(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -136(%rbp)
	jmp	.LBB45_201
.LBB45_186:                             # %if.else.566
                                        #   in Loop: Header=BB45_137 Depth=2
	jmp	.LBB45_187
.LBB45_187:                             # %do.body.567
                                        #   in Loop: Header=BB45_137 Depth=2
	movq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB45_189
# BB#188:                               # %cond.true.573
                                        #   in Loop: Header=BB45_137 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -728(%rbp)        # 8-byte Spill
	jmp	.LBB45_190
.LBB45_189:                             # %cond.false.576
                                        #   in Loop: Header=BB45_137 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -728(%rbp)        # 8-byte Spill
	jmp	.LBB45_190
.LBB45_190:                             # %cond.end.577
                                        #   in Loop: Header=BB45_137 Depth=2
	movq	-728(%rbp), %rax        # 8-byte Reload
	addq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %rax
	movzbl	(%rax), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	jne	.LBB45_192
# BB#191:                               # %cond.true.587
                                        #   in Loop: Header=BB45_137 Depth=2
	movl	$1, %eax
	movl	%eax, -732(%rbp)        # 4-byte Spill
	jmp	.LBB45_199
.LBB45_192:                             # %cond.false.588
                                        #   in Loop: Header=BB45_137 Depth=2
	movq	-216(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB45_194
# BB#193:                               # %cond.true.592
                                        #   in Loop: Header=BB45_137 Depth=2
	movl	$2, %eax
	movl	%eax, -736(%rbp)        # 4-byte Spill
	jmp	.LBB45_198
.LBB45_194:                             # %cond.false.593
                                        #   in Loop: Header=BB45_137 Depth=2
	movq	-216(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB45_196
# BB#195:                               # %cond.true.597
                                        #   in Loop: Header=BB45_137 Depth=2
	movl	$3, %eax
	movl	%eax, -740(%rbp)        # 4-byte Spill
	jmp	.LBB45_197
.LBB45_196:                             # %cond.false.598
                                        #   in Loop: Header=BB45_137 Depth=2
	movl	$5, %eax
	movl	$4, %ecx
	movq	-216(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$8, %esi
	cmpl	$0, %esi
	setne	%dil
	xorb	$-1, %dil
	testb	$1, %dil
	cmovnel	%ecx, %eax
	movl	%eax, -740(%rbp)        # 4-byte Spill
.LBB45_197:                             # %cond.end.604
                                        #   in Loop: Header=BB45_137 Depth=2
	movl	-740(%rbp), %eax        # 4-byte Reload
	movl	%eax, -736(%rbp)        # 4-byte Spill
.LBB45_198:                             # %cond.end.606
                                        #   in Loop: Header=BB45_137 Depth=2
	movl	-736(%rbp), %eax        # 4-byte Reload
	movl	%eax, -732(%rbp)        # 4-byte Spill
.LBB45_199:                             # %cond.end.608
                                        #   in Loop: Header=BB45_137 Depth=2
	movl	-732(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	addq	-136(%rbp), %rcx
	movq	%rcx, -136(%rbp)
# BB#200:                               # %do.end.612
                                        #   in Loop: Header=BB45_137 Depth=2
	jmp	.LBB45_201
.LBB45_201:                             # %if.end.613
                                        #   in Loop: Header=BB45_137 Depth=2
	jmp	.LBB45_202
.LBB45_202:                             # %do.end.614
                                        #   in Loop: Header=BB45_137 Depth=2
	jmp	.LBB45_137
.LBB45_203:                             # %while.end
                                        #   in Loop: Header=BB45_20 Depth=1
	jmp	.LBB45_405
.LBB45_204:                             # %sw.bb.615
                                        #   in Loop: Header=BB45_22 Depth=2
	movl	$257, -100(%rbp)        # imm = 0x101
.LBB45_205:                             # %sw.bb.616
                                        #   in Loop: Header=BB45_22 Depth=2
	testb	$1, globals+3419
	jne	.LBB45_207
# BB#206:                               # %if.then.618
                                        #   in Loop: Header=BB45_22 Depth=2
	jmp	.LBB45_401
.LBB45_207:                             # %if.end.619
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-24(%rbp), %rdi
	callq	UPDATE_SYNTAX_TABLE_FORWARD
	xorl	%r9d, %r9d
	leaq	-152(%rbp), %rdi
	leaq	-144(%rbp), %rax
	leaq	-160(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-136(%rbp), %rsi
	movq	-64(%rbp), %r8
	movb	-101(%rbp), %r10b
	andb	$1, %r10b
	movzbl	%r10b, %r11d
	movl	%r11d, %ebx
	movl	-100(%rbp), %r11d
	movq	%rdi, -752(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%r8, %rdx
	movq	%rcx, -760(%rbp)        # 8-byte Spill
	movq	%rbx, %rcx
	movl	%r11d, %r8d
	movq	-752(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, (%rsp)
	movq	%rax, 8(%rsp)
	movq	-760(%rbp), %rax        # 8-byte Reload
	movq	%rax, 16(%rsp)
	callq	forw_comment
	andb	$1, %al
	movb	%al, -121(%rbp)
	movq	-152(%rbp), %rcx
	movq	%rcx, -24(%rbp)
	movq	-144(%rbp), %rcx
	movq	%rcx, -136(%rbp)
	testb	$1, -121(%rbp)
	jne	.LBB45_211
# BB#208:                               # %if.then.625
                                        #   in Loop: Header=BB45_20 Depth=1
	cmpq	$0, -40(%rbp)
	jne	.LBB45_210
# BB#209:                               # %if.then.628
                                        #   in Loop: Header=BB45_20 Depth=1
	jmp	.LBB45_405
.LBB45_210:                             # %if.end.629
	jmp	.LBB45_774
.LBB45_211:                             # %if.end.630
                                        #   in Loop: Header=BB45_22 Depth=2
	jmp	.LBB45_212
.LBB45_212:                             # %do.body.631
                                        #   in Loop: Header=BB45_22 Depth=2
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -768(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-768(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB45_214
# BB#213:                               # %if.then.637
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-136(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -136(%rbp)
	jmp	.LBB45_229
.LBB45_214:                             # %if.else.639
                                        #   in Loop: Header=BB45_22 Depth=2
	jmp	.LBB45_215
.LBB45_215:                             # %do.body.640
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB45_217
# BB#216:                               # %cond.true.646
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -776(%rbp)        # 8-byte Spill
	jmp	.LBB45_218
.LBB45_217:                             # %cond.false.649
                                        #   in Loop: Header=BB45_22 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -776(%rbp)        # 8-byte Spill
	jmp	.LBB45_218
.LBB45_218:                             # %cond.end.650
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-776(%rbp), %rax        # 8-byte Reload
	addq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	movzbl	(%rax), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	jne	.LBB45_220
# BB#219:                               # %cond.true.660
                                        #   in Loop: Header=BB45_22 Depth=2
	movl	$1, %eax
	movl	%eax, -780(%rbp)        # 4-byte Spill
	jmp	.LBB45_227
.LBB45_220:                             # %cond.false.661
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-224(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB45_222
# BB#221:                               # %cond.true.665
                                        #   in Loop: Header=BB45_22 Depth=2
	movl	$2, %eax
	movl	%eax, -784(%rbp)        # 4-byte Spill
	jmp	.LBB45_226
.LBB45_222:                             # %cond.false.666
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-224(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB45_224
# BB#223:                               # %cond.true.670
                                        #   in Loop: Header=BB45_22 Depth=2
	movl	$3, %eax
	movl	%eax, -788(%rbp)        # 4-byte Spill
	jmp	.LBB45_225
.LBB45_224:                             # %cond.false.671
                                        #   in Loop: Header=BB45_22 Depth=2
	movl	$5, %eax
	movl	$4, %ecx
	movq	-224(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$8, %esi
	cmpl	$0, %esi
	setne	%dil
	xorb	$-1, %dil
	testb	$1, %dil
	cmovnel	%ecx, %eax
	movl	%eax, -788(%rbp)        # 4-byte Spill
.LBB45_225:                             # %cond.end.677
                                        #   in Loop: Header=BB45_22 Depth=2
	movl	-788(%rbp), %eax        # 4-byte Reload
	movl	%eax, -784(%rbp)        # 4-byte Spill
.LBB45_226:                             # %cond.end.679
                                        #   in Loop: Header=BB45_22 Depth=2
	movl	-784(%rbp), %eax        # 4-byte Reload
	movl	%eax, -780(%rbp)        # 4-byte Spill
.LBB45_227:                             # %cond.end.681
                                        #   in Loop: Header=BB45_22 Depth=2
	movl	-780(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	addq	-136(%rbp), %rcx
	movq	%rcx, -136(%rbp)
# BB#228:                               # %do.end.685
                                        #   in Loop: Header=BB45_22 Depth=2
	jmp	.LBB45_229
.LBB45_229:                             # %if.end.686
                                        #   in Loop: Header=BB45_22 Depth=2
	jmp	.LBB45_230
.LBB45_230:                             # %do.end.687
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-24(%rbp), %rdi
	callq	UPDATE_SYNTAX_TABLE_FORWARD
	jmp	.LBB45_401
.LBB45_231:                             # %sw.bb.688
                                        #   in Loop: Header=BB45_22 Depth=2
	testb	$1, -41(%rbp)
	jne	.LBB45_233
# BB#232:                               # %if.then.690
                                        #   in Loop: Header=BB45_22 Depth=2
	jmp	.LBB45_401
.LBB45_233:                             # %if.end.691
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-24(%rbp), %rax
	cmpq	-64(%rbp), %rax
	je	.LBB45_275
# BB#234:                               # %land.lhs.true.694
                                        #   in Loop: Header=BB45_22 Depth=2
	xorl	%edi, %edi
	movl	-68(%rbp), %eax
	movq	current_buffer, %rcx
	movq	312(%rcx), %rcx
	movq	%rcx, -800(%rbp)        # 8-byte Spill
	movl	%eax, -804(%rbp)        # 4-byte Spill
	callq	builtin_lisp_symbol
	movq	-800(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB45_236
# BB#235:                               # %cond.true.699
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-136(%rbp), %rdi
	callq	FETCH_MULTIBYTE_CHAR
	movl	%eax, -808(%rbp)        # 4-byte Spill
	jmp	.LBB45_254
.LBB45_236:                             # %cond.false.701
                                        #   in Loop: Header=BB45_22 Depth=2
	movb	$1, %al
	testb	$1, %al
	jne	.LBB45_237
	jmp	.LBB45_241
.LBB45_237:                             # %cond.true.702
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB45_239
# BB#238:                               # %cond.true.707
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -816(%rbp)        # 8-byte Spill
	jmp	.LBB45_240
.LBB45_239:                             # %cond.false.710
                                        #   in Loop: Header=BB45_22 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -816(%rbp)        # 8-byte Spill
	jmp	.LBB45_240
.LBB45_240:                             # %cond.end.711
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-816(%rbp), %rax        # 8-byte Reload
	addq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$0, %edx
	cmpl	$128, %edx
	jb	.LBB45_245
	jmp	.LBB45_249
.LBB45_241:                             # %cond.false.722
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB45_243
# BB#242:                               # %cond.true.727
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -824(%rbp)        # 8-byte Spill
	jmp	.LBB45_244
.LBB45_243:                             # %cond.false.730
                                        #   in Loop: Header=BB45_22 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -824(%rbp)        # 8-byte Spill
	jmp	.LBB45_244
.LBB45_244:                             # %cond.end.731
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-824(%rbp), %rax        # 8-byte Reload
	addq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, %eax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB45_249
.LBB45_245:                             # %cond.true.742
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB45_247
# BB#246:                               # %cond.true.747
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -832(%rbp)        # 8-byte Spill
	jmp	.LBB45_248
.LBB45_247:                             # %cond.false.750
                                        #   in Loop: Header=BB45_22 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -832(%rbp)        # 8-byte Spill
	jmp	.LBB45_248
.LBB45_248:                             # %cond.end.751
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-832(%rbp), %rax        # 8-byte Reload
	addq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, -836(%rbp)        # 4-byte Spill
	jmp	.LBB45_253
.LBB45_249:                             # %cond.false.759
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB45_251
# BB#250:                               # %cond.true.764
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -848(%rbp)        # 8-byte Spill
	jmp	.LBB45_252
.LBB45_251:                             # %cond.false.767
                                        #   in Loop: Header=BB45_22 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -848(%rbp)        # 8-byte Spill
	jmp	.LBB45_252
.LBB45_252:                             # %cond.end.768
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-848(%rbp), %rax        # 8-byte Reload
	addq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$4194048, %edx          # imm = 0x3FFF00
	movl	%edx, -836(%rbp)        # 4-byte Spill
.LBB45_253:                             # %cond.end.777
                                        #   in Loop: Header=BB45_22 Depth=2
	movl	-836(%rbp), %eax        # 4-byte Reload
	movl	%eax, -808(%rbp)        # 4-byte Spill
.LBB45_254:                             # %cond.end.779
                                        #   in Loop: Header=BB45_22 Depth=2
	movl	-808(%rbp), %eax        # 4-byte Reload
	movl	-804(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB45_275
# BB#255:                               # %if.then.783
                                        #   in Loop: Header=BB45_22 Depth=2
	jmp	.LBB45_256
.LBB45_256:                             # %do.body.784
                                        #   in Loop: Header=BB45_22 Depth=2
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -856(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-856(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB45_258
# BB#257:                               # %if.then.790
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-136(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -136(%rbp)
	jmp	.LBB45_273
.LBB45_258:                             # %if.else.792
                                        #   in Loop: Header=BB45_22 Depth=2
	jmp	.LBB45_259
.LBB45_259:                             # %do.body.793
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB45_261
# BB#260:                               # %cond.true.799
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -864(%rbp)        # 8-byte Spill
	jmp	.LBB45_262
.LBB45_261:                             # %cond.false.802
                                        #   in Loop: Header=BB45_22 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -864(%rbp)        # 8-byte Spill
	jmp	.LBB45_262
.LBB45_262:                             # %cond.end.803
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-864(%rbp), %rax        # 8-byte Reload
	addq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rax
	movzbl	(%rax), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	jne	.LBB45_264
# BB#263:                               # %cond.true.813
                                        #   in Loop: Header=BB45_22 Depth=2
	movl	$1, %eax
	movl	%eax, -868(%rbp)        # 4-byte Spill
	jmp	.LBB45_271
.LBB45_264:                             # %cond.false.814
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-232(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB45_266
# BB#265:                               # %cond.true.818
                                        #   in Loop: Header=BB45_22 Depth=2
	movl	$2, %eax
	movl	%eax, -872(%rbp)        # 4-byte Spill
	jmp	.LBB45_270
.LBB45_266:                             # %cond.false.819
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-232(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB45_268
# BB#267:                               # %cond.true.823
                                        #   in Loop: Header=BB45_22 Depth=2
	movl	$3, %eax
	movl	%eax, -876(%rbp)        # 4-byte Spill
	jmp	.LBB45_269
.LBB45_268:                             # %cond.false.824
                                        #   in Loop: Header=BB45_22 Depth=2
	movl	$5, %eax
	movl	$4, %ecx
	movq	-232(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$8, %esi
	cmpl	$0, %esi
	setne	%dil
	xorb	$-1, %dil
	testb	$1, %dil
	cmovnel	%ecx, %eax
	movl	%eax, -876(%rbp)        # 4-byte Spill
.LBB45_269:                             # %cond.end.830
                                        #   in Loop: Header=BB45_22 Depth=2
	movl	-876(%rbp), %eax        # 4-byte Reload
	movl	%eax, -872(%rbp)        # 4-byte Spill
.LBB45_270:                             # %cond.end.832
                                        #   in Loop: Header=BB45_22 Depth=2
	movl	-872(%rbp), %eax        # 4-byte Reload
	movl	%eax, -868(%rbp)        # 4-byte Spill
.LBB45_271:                             # %cond.end.834
                                        #   in Loop: Header=BB45_22 Depth=2
	movl	-868(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	addq	-136(%rbp), %rcx
	movq	%rcx, -136(%rbp)
# BB#272:                               # %do.end.838
                                        #   in Loop: Header=BB45_22 Depth=2
	jmp	.LBB45_273
.LBB45_273:                             # %if.end.839
                                        #   in Loop: Header=BB45_22 Depth=2
	jmp	.LBB45_274
.LBB45_274:                             # %do.end.840
                                        #   in Loop: Header=BB45_22 Depth=2
	jmp	.LBB45_275
.LBB45_275:                             # %if.end.841
                                        #   in Loop: Header=BB45_22 Depth=2
	testb	$1, -78(%rbp)
	je	.LBB45_277
# BB#276:                               # %if.then.843
                                        #   in Loop: Header=BB45_22 Depth=2
	movb	$0, -78(%rbp)
	jmp	.LBB45_282
.LBB45_277:                             # %if.end.844
                                        #   in Loop: Header=BB45_22 Depth=2
	movb	$1, -78(%rbp)
.LBB45_278:                             # %sw.bb.845
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, %rax
	jne	.LBB45_280
# BB#279:                               # %if.then.848
                                        #   in Loop: Header=BB45_20 Depth=1
	jmp	.LBB45_405
.LBB45_280:                             # %if.end.849
                                        #   in Loop: Header=BB45_22 Depth=2
	jmp	.LBB45_401
.LBB45_281:                             # %sw.bb.850
                                        #   in Loop: Header=BB45_22 Depth=2
	jmp	.LBB45_282
.LBB45_282:                             # %close1
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-40(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, %rax
	jne	.LBB45_284
# BB#283:                               # %if.then.852
                                        #   in Loop: Header=BB45_20 Depth=1
	jmp	.LBB45_405
.LBB45_284:                             # %if.end.853
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-40(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jge	.LBB45_286
# BB#285:                               # %if.then.856
	movl	$828, %edi              # imm = 0x33C
	callq	builtin_lisp_symbol
	movabsq	$.L.str.61, %rdi
	movq	%rax, -888(%rbp)        # 8-byte Spill
	callq	build_string
	movq	-120(%rbp), %rdi
	shlq	$2, %rdi
	addq	$2, %rdi
	movq	-24(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	-888(%rbp), %rdx        # 8-byte Reload
	movq	%rdi, -896(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rsi
	movq	-896(%rbp), %rdx        # 8-byte Reload
	callq	xsignal3
.LBB45_286:                             # %if.end.862
                                        #   in Loop: Header=BB45_22 Depth=2
	jmp	.LBB45_401
.LBB45_287:                             # %sw.bb.863
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-136(%rbp), %rdi
	callq	dec_bytepos
	xorl	%edi, %edi
	movq	%rax, -112(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -904(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-904(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB45_289
# BB#288:                               # %cond.true.869
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-112(%rbp), %rdi
	callq	FETCH_MULTIBYTE_CHAR
	movl	%eax, -908(%rbp)        # 4-byte Spill
	jmp	.LBB45_307
.LBB45_289:                             # %cond.false.871
                                        #   in Loop: Header=BB45_22 Depth=2
	movb	$1, %al
	testb	$1, %al
	jne	.LBB45_290
	jmp	.LBB45_294
.LBB45_290:                             # %cond.true.872
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-112(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB45_292
# BB#291:                               # %cond.true.877
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -920(%rbp)        # 8-byte Spill
	jmp	.LBB45_293
.LBB45_292:                             # %cond.false.880
                                        #   in Loop: Header=BB45_22 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -920(%rbp)        # 8-byte Spill
	jmp	.LBB45_293
.LBB45_293:                             # %cond.end.881
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-920(%rbp), %rax        # 8-byte Reload
	addq	-112(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$0, %edx
	cmpl	$128, %edx
	jb	.LBB45_298
	jmp	.LBB45_302
.LBB45_294:                             # %cond.false.892
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-112(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB45_296
# BB#295:                               # %cond.true.897
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -928(%rbp)        # 8-byte Spill
	jmp	.LBB45_297
.LBB45_296:                             # %cond.false.900
                                        #   in Loop: Header=BB45_22 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -928(%rbp)        # 8-byte Spill
	jmp	.LBB45_297
.LBB45_297:                             # %cond.end.901
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-928(%rbp), %rax        # 8-byte Reload
	addq	-112(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, %eax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB45_302
.LBB45_298:                             # %cond.true.912
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-112(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB45_300
# BB#299:                               # %cond.true.917
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -936(%rbp)        # 8-byte Spill
	jmp	.LBB45_301
.LBB45_300:                             # %cond.false.920
                                        #   in Loop: Header=BB45_22 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -936(%rbp)        # 8-byte Spill
	jmp	.LBB45_301
.LBB45_301:                             # %cond.end.921
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-936(%rbp), %rax        # 8-byte Reload
	addq	-112(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, -940(%rbp)        # 4-byte Spill
	jmp	.LBB45_306
.LBB45_302:                             # %cond.false.929
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-112(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB45_304
# BB#303:                               # %cond.true.934
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -952(%rbp)        # 8-byte Spill
	jmp	.LBB45_305
.LBB45_304:                             # %cond.false.937
                                        #   in Loop: Header=BB45_22 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -952(%rbp)        # 8-byte Spill
	jmp	.LBB45_305
.LBB45_305:                             # %cond.end.938
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-952(%rbp), %rax        # 8-byte Reload
	addq	-112(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$4194048, %edx          # imm = 0x3FFF00
	movl	%edx, -940(%rbp)        # 4-byte Spill
.LBB45_306:                             # %cond.end.947
                                        #   in Loop: Header=BB45_22 Depth=2
	movl	-940(%rbp), %eax        # 4-byte Reload
	movl	%eax, -908(%rbp)        # 4-byte Spill
.LBB45_307:                             # %cond.end.949
                                        #   in Loop: Header=BB45_22 Depth=2
	movl	-908(%rbp), %eax        # 4-byte Reload
	movl	%eax, -76(%rbp)
.LBB45_308:                             # %while.body.952
                                        #   Parent Loop BB45_20 Depth=1
                                        #     Parent Loop BB45_22 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-24(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jl	.LBB45_310
# BB#309:                               # %if.then.955
	jmp	.LBB45_774
.LBB45_310:                             # %if.end.956
                                        #   in Loop: Header=BB45_308 Depth=3
	movq	-24(%rbp), %rdi
	callq	UPDATE_SYNTAX_TABLE_FORWARD
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-960(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB45_312
# BB#311:                               # %cond.true.961
                                        #   in Loop: Header=BB45_308 Depth=3
	movq	-136(%rbp), %rdi
	callq	FETCH_MULTIBYTE_CHAR
	movl	%eax, -964(%rbp)        # 4-byte Spill
	jmp	.LBB45_330
.LBB45_312:                             # %cond.false.963
                                        #   in Loop: Header=BB45_308 Depth=3
	movb	$1, %al
	testb	$1, %al
	jne	.LBB45_313
	jmp	.LBB45_317
.LBB45_313:                             # %cond.true.964
                                        #   in Loop: Header=BB45_308 Depth=3
	movq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB45_315
# BB#314:                               # %cond.true.969
                                        #   in Loop: Header=BB45_308 Depth=3
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -976(%rbp)        # 8-byte Spill
	jmp	.LBB45_316
.LBB45_315:                             # %cond.false.972
                                        #   in Loop: Header=BB45_308 Depth=3
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -976(%rbp)        # 8-byte Spill
	jmp	.LBB45_316
.LBB45_316:                             # %cond.end.973
                                        #   in Loop: Header=BB45_308 Depth=3
	movq	-976(%rbp), %rax        # 8-byte Reload
	addq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$0, %edx
	cmpl	$128, %edx
	jb	.LBB45_321
	jmp	.LBB45_325
.LBB45_317:                             # %cond.false.984
                                        #   in Loop: Header=BB45_308 Depth=3
	movq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB45_319
# BB#318:                               # %cond.true.989
                                        #   in Loop: Header=BB45_308 Depth=3
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -984(%rbp)        # 8-byte Spill
	jmp	.LBB45_320
.LBB45_319:                             # %cond.false.992
                                        #   in Loop: Header=BB45_308 Depth=3
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -984(%rbp)        # 8-byte Spill
	jmp	.LBB45_320
.LBB45_320:                             # %cond.end.993
                                        #   in Loop: Header=BB45_308 Depth=3
	movq	-984(%rbp), %rax        # 8-byte Reload
	addq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, %eax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB45_325
.LBB45_321:                             # %cond.true.1004
                                        #   in Loop: Header=BB45_308 Depth=3
	movq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB45_323
# BB#322:                               # %cond.true.1009
                                        #   in Loop: Header=BB45_308 Depth=3
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -992(%rbp)        # 8-byte Spill
	jmp	.LBB45_324
.LBB45_323:                             # %cond.false.1012
                                        #   in Loop: Header=BB45_308 Depth=3
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -992(%rbp)        # 8-byte Spill
	jmp	.LBB45_324
.LBB45_324:                             # %cond.end.1013
                                        #   in Loop: Header=BB45_308 Depth=3
	movq	-992(%rbp), %rax        # 8-byte Reload
	addq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, -996(%rbp)        # 4-byte Spill
	jmp	.LBB45_329
.LBB45_325:                             # %cond.false.1021
                                        #   in Loop: Header=BB45_308 Depth=3
	movq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB45_327
# BB#326:                               # %cond.true.1026
                                        #   in Loop: Header=BB45_308 Depth=3
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -1008(%rbp)       # 8-byte Spill
	jmp	.LBB45_328
.LBB45_327:                             # %cond.false.1029
                                        #   in Loop: Header=BB45_308 Depth=3
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -1008(%rbp)       # 8-byte Spill
	jmp	.LBB45_328
.LBB45_328:                             # %cond.end.1030
                                        #   in Loop: Header=BB45_308 Depth=3
	movq	-1008(%rbp), %rax       # 8-byte Reload
	addq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$4194048, %edx          # imm = 0x3FFF00
	movl	%edx, -996(%rbp)        # 4-byte Spill
.LBB45_329:                             # %cond.end.1039
                                        #   in Loop: Header=BB45_308 Depth=3
	movl	-996(%rbp), %eax        # 4-byte Reload
	movl	%eax, -964(%rbp)        # 4-byte Spill
.LBB45_330:                             # %cond.end.1041
                                        #   in Loop: Header=BB45_308 Depth=3
	movl	-964(%rbp), %eax        # 4-byte Reload
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %edi
	movb	-161(%rbp), %cl
	andb	$1, %cl
	movzbl	%cl, %esi
	callq	syntax_multibyte
	movl	%eax, -236(%rbp)
	cmpl	$7, -84(%rbp)
	jne	.LBB45_333
# BB#331:                               # %cond.true.1047
                                        #   in Loop: Header=BB45_308 Depth=3
	movl	-68(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jne	.LBB45_335
# BB#332:                               # %land.lhs.true.1050
                                        #   in Loop: Header=BB45_308 Depth=3
	cmpl	$7, -236(%rbp)
	je	.LBB45_334
	jmp	.LBB45_335
.LBB45_333:                             # %cond.false.1053
                                        #   in Loop: Header=BB45_308 Depth=3
	cmpl	$15, -236(%rbp)
	jne	.LBB45_335
.LBB45_334:                             # %if.then.1056
                                        #   in Loop: Header=BB45_22 Depth=2
	jmp	.LBB45_377
.LBB45_335:                             # %if.end.1057
                                        #   in Loop: Header=BB45_308 Depth=3
	cmpl	$10, -236(%rbp)
	je	.LBB45_337
# BB#336:                               # %lor.lhs.false.1060
                                        #   in Loop: Header=BB45_308 Depth=3
	cmpl	$9, -236(%rbp)
	jne	.LBB45_357
.LBB45_337:                             # %if.then.1063
                                        #   in Loop: Header=BB45_308 Depth=3
	jmp	.LBB45_338
.LBB45_338:                             # %do.body.1064
                                        #   in Loop: Header=BB45_308 Depth=3
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -1016(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1016(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB45_340
# BB#339:                               # %if.then.1070
                                        #   in Loop: Header=BB45_308 Depth=3
	movq	-136(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -136(%rbp)
	jmp	.LBB45_355
.LBB45_340:                             # %if.else.1072
                                        #   in Loop: Header=BB45_308 Depth=3
	jmp	.LBB45_341
.LBB45_341:                             # %do.body.1073
                                        #   in Loop: Header=BB45_308 Depth=3
	movq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB45_343
# BB#342:                               # %cond.true.1079
                                        #   in Loop: Header=BB45_308 Depth=3
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -1024(%rbp)       # 8-byte Spill
	jmp	.LBB45_344
.LBB45_343:                             # %cond.false.1082
                                        #   in Loop: Header=BB45_308 Depth=3
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -1024(%rbp)       # 8-byte Spill
	jmp	.LBB45_344
.LBB45_344:                             # %cond.end.1083
                                        #   in Loop: Header=BB45_308 Depth=3
	movq	-1024(%rbp), %rax       # 8-byte Reload
	addq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rax
	movzbl	(%rax), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	jne	.LBB45_346
# BB#345:                               # %cond.true.1093
                                        #   in Loop: Header=BB45_308 Depth=3
	movl	$1, %eax
	movl	%eax, -1028(%rbp)       # 4-byte Spill
	jmp	.LBB45_353
.LBB45_346:                             # %cond.false.1094
                                        #   in Loop: Header=BB45_308 Depth=3
	movq	-248(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB45_348
# BB#347:                               # %cond.true.1098
                                        #   in Loop: Header=BB45_308 Depth=3
	movl	$2, %eax
	movl	%eax, -1032(%rbp)       # 4-byte Spill
	jmp	.LBB45_352
.LBB45_348:                             # %cond.false.1099
                                        #   in Loop: Header=BB45_308 Depth=3
	movq	-248(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB45_350
# BB#349:                               # %cond.true.1103
                                        #   in Loop: Header=BB45_308 Depth=3
	movl	$3, %eax
	movl	%eax, -1036(%rbp)       # 4-byte Spill
	jmp	.LBB45_351
.LBB45_350:                             # %cond.false.1104
                                        #   in Loop: Header=BB45_308 Depth=3
	movl	$5, %eax
	movl	$4, %ecx
	movq	-248(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$8, %esi
	cmpl	$0, %esi
	setne	%dil
	xorb	$-1, %dil
	testb	$1, %dil
	cmovnel	%ecx, %eax
	movl	%eax, -1036(%rbp)       # 4-byte Spill
.LBB45_351:                             # %cond.end.1110
                                        #   in Loop: Header=BB45_308 Depth=3
	movl	-1036(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1032(%rbp)       # 4-byte Spill
.LBB45_352:                             # %cond.end.1112
                                        #   in Loop: Header=BB45_308 Depth=3
	movl	-1032(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1028(%rbp)       # 4-byte Spill
.LBB45_353:                             # %cond.end.1114
                                        #   in Loop: Header=BB45_308 Depth=3
	movl	-1028(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	addq	-136(%rbp), %rcx
	movq	%rcx, -136(%rbp)
# BB#354:                               # %do.end.1118
                                        #   in Loop: Header=BB45_308 Depth=3
	jmp	.LBB45_355
.LBB45_355:                             # %if.end.1119
                                        #   in Loop: Header=BB45_308 Depth=3
	jmp	.LBB45_356
.LBB45_356:                             # %do.end.1120
                                        #   in Loop: Header=BB45_308 Depth=3
	jmp	.LBB45_357
.LBB45_357:                             # %if.end.1121
                                        #   in Loop: Header=BB45_308 Depth=3
	jmp	.LBB45_358
.LBB45_358:                             # %do.body.1122
                                        #   in Loop: Header=BB45_308 Depth=3
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -1048(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1048(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB45_360
# BB#359:                               # %if.then.1128
                                        #   in Loop: Header=BB45_308 Depth=3
	movq	-136(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -136(%rbp)
	jmp	.LBB45_375
.LBB45_360:                             # %if.else.1130
                                        #   in Loop: Header=BB45_308 Depth=3
	jmp	.LBB45_361
.LBB45_361:                             # %do.body.1131
                                        #   in Loop: Header=BB45_308 Depth=3
	movq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB45_363
# BB#362:                               # %cond.true.1137
                                        #   in Loop: Header=BB45_308 Depth=3
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -1056(%rbp)       # 8-byte Spill
	jmp	.LBB45_364
.LBB45_363:                             # %cond.false.1140
                                        #   in Loop: Header=BB45_308 Depth=3
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -1056(%rbp)       # 8-byte Spill
	jmp	.LBB45_364
.LBB45_364:                             # %cond.end.1141
                                        #   in Loop: Header=BB45_308 Depth=3
	movq	-1056(%rbp), %rax       # 8-byte Reload
	addq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -256(%rbp)
	movq	-256(%rbp), %rax
	movzbl	(%rax), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	jne	.LBB45_366
# BB#365:                               # %cond.true.1151
                                        #   in Loop: Header=BB45_308 Depth=3
	movl	$1, %eax
	movl	%eax, -1060(%rbp)       # 4-byte Spill
	jmp	.LBB45_373
.LBB45_366:                             # %cond.false.1152
                                        #   in Loop: Header=BB45_308 Depth=3
	movq	-256(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB45_368
# BB#367:                               # %cond.true.1156
                                        #   in Loop: Header=BB45_308 Depth=3
	movl	$2, %eax
	movl	%eax, -1064(%rbp)       # 4-byte Spill
	jmp	.LBB45_372
.LBB45_368:                             # %cond.false.1157
                                        #   in Loop: Header=BB45_308 Depth=3
	movq	-256(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB45_370
# BB#369:                               # %cond.true.1161
                                        #   in Loop: Header=BB45_308 Depth=3
	movl	$3, %eax
	movl	%eax, -1068(%rbp)       # 4-byte Spill
	jmp	.LBB45_371
.LBB45_370:                             # %cond.false.1162
                                        #   in Loop: Header=BB45_308 Depth=3
	movl	$5, %eax
	movl	$4, %ecx
	movq	-256(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$8, %esi
	cmpl	$0, %esi
	setne	%dil
	xorb	$-1, %dil
	testb	$1, %dil
	cmovnel	%ecx, %eax
	movl	%eax, -1068(%rbp)       # 4-byte Spill
.LBB45_371:                             # %cond.end.1168
                                        #   in Loop: Header=BB45_308 Depth=3
	movl	-1068(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1064(%rbp)       # 4-byte Spill
.LBB45_372:                             # %cond.end.1170
                                        #   in Loop: Header=BB45_308 Depth=3
	movl	-1064(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1060(%rbp)       # 4-byte Spill
.LBB45_373:                             # %cond.end.1172
                                        #   in Loop: Header=BB45_308 Depth=3
	movl	-1060(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	addq	-136(%rbp), %rcx
	movq	%rcx, -136(%rbp)
# BB#374:                               # %do.end.1176
                                        #   in Loop: Header=BB45_308 Depth=3
	jmp	.LBB45_375
.LBB45_375:                             # %if.end.1177
                                        #   in Loop: Header=BB45_308 Depth=3
	jmp	.LBB45_376
.LBB45_376:                             # %do.end.1178
                                        #   in Loop: Header=BB45_308 Depth=3
	jmp	.LBB45_308
.LBB45_377:                             # %while.end.1179
                                        #   in Loop: Header=BB45_22 Depth=2
	jmp	.LBB45_378
.LBB45_378:                             # %do.body.1180
                                        #   in Loop: Header=BB45_22 Depth=2
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -1080(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1080(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB45_380
# BB#379:                               # %if.then.1186
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-136(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -136(%rbp)
	jmp	.LBB45_395
.LBB45_380:                             # %if.else.1188
                                        #   in Loop: Header=BB45_22 Depth=2
	jmp	.LBB45_381
.LBB45_381:                             # %do.body.1189
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB45_383
# BB#382:                               # %cond.true.1195
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -1088(%rbp)       # 8-byte Spill
	jmp	.LBB45_384
.LBB45_383:                             # %cond.false.1198
                                        #   in Loop: Header=BB45_22 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -1088(%rbp)       # 8-byte Spill
	jmp	.LBB45_384
.LBB45_384:                             # %cond.end.1199
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-1088(%rbp), %rax       # 8-byte Reload
	addq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -264(%rbp)
	movq	-264(%rbp), %rax
	movzbl	(%rax), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	jne	.LBB45_386
# BB#385:                               # %cond.true.1209
                                        #   in Loop: Header=BB45_22 Depth=2
	movl	$1, %eax
	movl	%eax, -1092(%rbp)       # 4-byte Spill
	jmp	.LBB45_393
.LBB45_386:                             # %cond.false.1210
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-264(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB45_388
# BB#387:                               # %cond.true.1214
                                        #   in Loop: Header=BB45_22 Depth=2
	movl	$2, %eax
	movl	%eax, -1096(%rbp)       # 4-byte Spill
	jmp	.LBB45_392
.LBB45_388:                             # %cond.false.1215
                                        #   in Loop: Header=BB45_22 Depth=2
	movq	-264(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB45_390
# BB#389:                               # %cond.true.1219
                                        #   in Loop: Header=BB45_22 Depth=2
	movl	$3, %eax
	movl	%eax, -1100(%rbp)       # 4-byte Spill
	jmp	.LBB45_391
.LBB45_390:                             # %cond.false.1220
                                        #   in Loop: Header=BB45_22 Depth=2
	movl	$5, %eax
	movl	$4, %ecx
	movq	-264(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$8, %esi
	cmpl	$0, %esi
	setne	%dil
	xorb	$-1, %dil
	testb	$1, %dil
	cmovnel	%ecx, %eax
	movl	%eax, -1100(%rbp)       # 4-byte Spill
.LBB45_391:                             # %cond.end.1226
                                        #   in Loop: Header=BB45_22 Depth=2
	movl	-1100(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1096(%rbp)       # 4-byte Spill
.LBB45_392:                             # %cond.end.1228
                                        #   in Loop: Header=BB45_22 Depth=2
	movl	-1096(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1092(%rbp)       # 4-byte Spill
.LBB45_393:                             # %cond.end.1230
                                        #   in Loop: Header=BB45_22 Depth=2
	movl	-1092(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	addq	-136(%rbp), %rcx
	movq	%rcx, -136(%rbp)
# BB#394:                               # %do.end.1234
                                        #   in Loop: Header=BB45_22 Depth=2
	jmp	.LBB45_395
.LBB45_395:                             # %if.end.1235
                                        #   in Loop: Header=BB45_22 Depth=2
	jmp	.LBB45_396
.LBB45_396:                             # %do.end.1236
                                        #   in Loop: Header=BB45_22 Depth=2
	cmpq	$0, -40(%rbp)
	jne	.LBB45_399
# BB#397:                               # %land.lhs.true.1238
                                        #   in Loop: Header=BB45_22 Depth=2
	testb	$1, -41(%rbp)
	je	.LBB45_399
# BB#398:                               # %if.then.1241
                                        #   in Loop: Header=BB45_20 Depth=1
	jmp	.LBB45_405
.LBB45_399:                             # %if.end.1242
                                        #   in Loop: Header=BB45_22 Depth=2
	jmp	.LBB45_401
.LBB45_400:                             # %sw.default.1243
                                        #   in Loop: Header=BB45_22 Depth=2
	jmp	.LBB45_401
.LBB45_401:                             # %sw.epilog.1244
                                        #   in Loop: Header=BB45_22 Depth=2
	jmp	.LBB45_22
.LBB45_402:                             # %while.end.1245
	cmpq	$0, -40(%rbp)
	je	.LBB45_404
# BB#403:                               # %if.then.1247
	jmp	.LBB45_774
.LBB45_404:                             # %if.end.1248
	xorl	%edi, %edi
	movb	$0, immediate_quit
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)
	jmp	.LBB45_775
.LBB45_405:                             # %done
                                        #   in Loop: Header=BB45_20 Depth=1
	movq	-32(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB45_20
.LBB45_406:                             # %while.end.1251
	jmp	.LBB45_407
.LBB45_407:                             # %while.cond.1252
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB45_409 Depth 2
                                        #       Child Loop BB45_418 Depth 3
                                        #       Child Loop BB45_459 Depth 3
                                        #       Child Loop BB45_495 Depth 3
                                        #       Child Loop BB45_656 Depth 3
                                        #         Child Loop BB45_666 Depth 4
                                        #       Child Loop BB45_631 Depth 3
                                        #       Child Loop BB45_722 Depth 3
                                        #         Child Loop BB45_732 Depth 4
                                        #     Child Loop BB45_509 Depth 2
                                        #       Child Loop BB45_516 Depth 3
                                        #       Child Loop BB45_552 Depth 3
                                        #       Child Loop BB45_591 Depth 3
	cmpq	$0, -32(%rbp)
	jge	.LBB45_773
# BB#408:                               # %while.body.1255
                                        #   in Loop: Header=BB45_407 Depth=1
	jmp	.LBB45_409
.LBB45_409:                             # %while.cond.1256
                                        #   Parent Loop BB45_407 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB45_418 Depth 3
                                        #       Child Loop BB45_459 Depth 3
                                        #       Child Loop BB45_495 Depth 3
                                        #       Child Loop BB45_656 Depth 3
                                        #         Child Loop BB45_666 Depth 4
                                        #       Child Loop BB45_631 Depth 3
                                        #       Child Loop BB45_722 Depth 3
                                        #         Child Loop BB45_732 Depth 4
	movq	-24(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jle	.LBB45_769
# BB#410:                               # %while.body.1259
                                        #   in Loop: Header=BB45_409 Depth=2
	jmp	.LBB45_411
.LBB45_411:                             # %do.body.1261
                                        #   in Loop: Header=BB45_409 Depth=2
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -24(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -1112(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1112(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB45_413
# BB#412:                               # %if.then.1267
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	-136(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -136(%rbp)
	jmp	.LBB45_422
.LBB45_413:                             # %if.else.1269
                                        #   in Loop: Header=BB45_409 Depth=2
	jmp	.LBB45_414
.LBB45_414:                             # %do.body.1270
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	-136(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jge	.LBB45_416
# BB#415:                               # %if.then.1277
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	addq	-136(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -280(%rbp)
	jmp	.LBB45_417
.LBB45_416:                             # %if.else.1282
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	40(%rcx), %rax
	addq	-136(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -280(%rbp)
.LBB45_417:                             # %if.end.1290
                                        #   in Loop: Header=BB45_409 Depth=2
	jmp	.LBB45_418
.LBB45_418:                             # %while.cond.1291
                                        #   Parent Loop BB45_407 Depth=1
                                        #     Parent Loop BB45_409 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-280(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	setne	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB45_419
	jmp	.LBB45_420
.LBB45_419:                             # %while.body.1297
                                        #   in Loop: Header=BB45_418 Depth=3
	movq	-280(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -280(%rbp)
	movq	-136(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -136(%rbp)
	jmp	.LBB45_418
.LBB45_420:                             # %while.end.1299
                                        #   in Loop: Header=BB45_409 Depth=2
	jmp	.LBB45_421
.LBB45_421:                             # %do.end.1300
                                        #   in Loop: Header=BB45_409 Depth=2
	jmp	.LBB45_422
.LBB45_422:                             # %if.end.1301
                                        #   in Loop: Header=BB45_409 Depth=2
	jmp	.LBB45_423
.LBB45_423:                             # %do.end.1302
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	-24(%rbp), %rdi
	callq	UPDATE_SYNTAX_TABLE_BACKWARD
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -1120(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1120(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB45_425
# BB#424:                               # %cond.true.1307
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	-136(%rbp), %rdi
	callq	FETCH_MULTIBYTE_CHAR
	movl	%eax, -1124(%rbp)       # 4-byte Spill
	jmp	.LBB45_443
.LBB45_425:                             # %cond.false.1309
                                        #   in Loop: Header=BB45_409 Depth=2
	movb	$1, %al
	testb	$1, %al
	jne	.LBB45_426
	jmp	.LBB45_430
.LBB45_426:                             # %cond.true.1310
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB45_428
# BB#427:                               # %cond.true.1315
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -1136(%rbp)       # 8-byte Spill
	jmp	.LBB45_429
.LBB45_428:                             # %cond.false.1318
                                        #   in Loop: Header=BB45_409 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -1136(%rbp)       # 8-byte Spill
	jmp	.LBB45_429
.LBB45_429:                             # %cond.end.1319
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	-1136(%rbp), %rax       # 8-byte Reload
	addq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$0, %edx
	cmpl	$128, %edx
	jb	.LBB45_434
	jmp	.LBB45_438
.LBB45_430:                             # %cond.false.1330
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB45_432
# BB#431:                               # %cond.true.1335
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -1144(%rbp)       # 8-byte Spill
	jmp	.LBB45_433
.LBB45_432:                             # %cond.false.1338
                                        #   in Loop: Header=BB45_409 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -1144(%rbp)       # 8-byte Spill
	jmp	.LBB45_433
.LBB45_433:                             # %cond.end.1339
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	-1144(%rbp), %rax       # 8-byte Reload
	addq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, %eax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB45_438
.LBB45_434:                             # %cond.true.1350
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB45_436
# BB#435:                               # %cond.true.1355
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -1152(%rbp)       # 8-byte Spill
	jmp	.LBB45_437
.LBB45_436:                             # %cond.false.1358
                                        #   in Loop: Header=BB45_409 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -1152(%rbp)       # 8-byte Spill
	jmp	.LBB45_437
.LBB45_437:                             # %cond.end.1359
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	-1152(%rbp), %rax       # 8-byte Reload
	addq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, -1156(%rbp)       # 4-byte Spill
	jmp	.LBB45_442
.LBB45_438:                             # %cond.false.1367
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB45_440
# BB#439:                               # %cond.true.1372
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -1168(%rbp)       # 8-byte Spill
	jmp	.LBB45_441
.LBB45_440:                             # %cond.false.1375
                                        #   in Loop: Header=BB45_409 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -1168(%rbp)       # 8-byte Spill
	jmp	.LBB45_441
.LBB45_441:                             # %cond.end.1376
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	-1168(%rbp), %rax       # 8-byte Reload
	addq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$4194048, %edx          # imm = 0x3FFF00
	movl	%edx, -1156(%rbp)       # 4-byte Spill
.LBB45_442:                             # %cond.end.1385
                                        #   in Loop: Header=BB45_409 Depth=2
	movl	-1156(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1124(%rbp)       # 4-byte Spill
.LBB45_443:                             # %cond.end.1387
                                        #   in Loop: Header=BB45_409 Depth=2
	movl	-1124(%rbp), %eax       # 4-byte Reload
	movl	$1, %esi
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %edi
	callq	syntax_property_with_flags
	movl	%eax, -268(%rbp)
	movl	-68(%rbp), %edi
	movb	-161(%rbp), %cl
	andb	$1, %cl
	movzbl	%cl, %esi
	callq	syntax_multibyte
	movl	%eax, -84(%rbp)
	movq	-40(%rbp), %rdx
	cmpq	-96(%rbp), %rdx
	jne	.LBB45_445
# BB#444:                               # %if.then.1394
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	-24(%rbp), %rax
	movq	%rax, -120(%rbp)
.LBB45_445:                             # %if.end.1395
                                        #   in Loop: Header=BB45_409 Depth=2
	movl	$0, -100(%rbp)
	movl	-268(%rbp), %edi
	callq	SYNTAX_FLAGS_COMMENT_NESTED
	andb	$1, %al
	movb	%al, -101(%rbp)
	cmpl	$12, -84(%rbp)
	jne	.LBB45_447
# BB#446:                               # %if.then.1400
                                        #   in Loop: Header=BB45_409 Depth=2
	xorl	%esi, %esi
	movl	-268(%rbp), %edi
	callq	SYNTAX_FLAGS_COMMENT_STYLE
	movl	%eax, -100(%rbp)
.LBB45_447:                             # %if.end.1402
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	-24(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jle	.LBB45_485
# BB#448:                               # %land.lhs.true.1405
                                        #   in Loop: Header=BB45_409 Depth=2
	movl	-268(%rbp), %edi
	callq	SYNTAX_FLAGS_COMEND_SECOND
	testb	$1, %al
	jne	.LBB45_449
	jmp	.LBB45_485
.LBB45_449:                             # %land.lhs.true.1408
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	-24(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	prev_char_comend_first
	testb	$1, %al
	jne	.LBB45_450
	jmp	.LBB45_485
.LBB45_450:                             # %land.lhs.true.1411
                                        #   in Loop: Header=BB45_409 Depth=2
	testb	$1, globals+3419
	je	.LBB45_485
# BB#451:                               # %if.then.1414
                                        #   in Loop: Header=BB45_409 Depth=2
	jmp	.LBB45_452
.LBB45_452:                             # %do.body.1416
                                        #   in Loop: Header=BB45_409 Depth=2
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -24(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -1176(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1176(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB45_454
# BB#453:                               # %if.then.1422
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	-136(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -136(%rbp)
	jmp	.LBB45_463
.LBB45_454:                             # %if.else.1424
                                        #   in Loop: Header=BB45_409 Depth=2
	jmp	.LBB45_455
.LBB45_455:                             # %do.body.1425
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	-136(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jge	.LBB45_457
# BB#456:                               # %if.then.1432
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	addq	-136(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -296(%rbp)
	jmp	.LBB45_458
.LBB45_457:                             # %if.else.1437
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	40(%rcx), %rax
	addq	-136(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -296(%rbp)
.LBB45_458:                             # %if.end.1445
                                        #   in Loop: Header=BB45_409 Depth=2
	jmp	.LBB45_459
.LBB45_459:                             # %while.cond.1446
                                        #   Parent Loop BB45_407 Depth=1
                                        #     Parent Loop BB45_409 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-296(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	setne	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB45_460
	jmp	.LBB45_461
.LBB45_460:                             # %while.body.1452
                                        #   in Loop: Header=BB45_459 Depth=3
	movq	-296(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -296(%rbp)
	movq	-136(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -136(%rbp)
	jmp	.LBB45_459
.LBB45_461:                             # %while.end.1455
                                        #   in Loop: Header=BB45_409 Depth=2
	jmp	.LBB45_462
.LBB45_462:                             # %do.end.1456
                                        #   in Loop: Header=BB45_409 Depth=2
	jmp	.LBB45_463
.LBB45_463:                             # %if.end.1457
                                        #   in Loop: Header=BB45_409 Depth=2
	jmp	.LBB45_464
.LBB45_464:                             # %do.end.1458
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	-24(%rbp), %rdi
	callq	UPDATE_SYNTAX_TABLE_BACKWARD
	xorl	%edi, %edi
	movl	$12, -84(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -1184(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1184(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB45_466
# BB#465:                               # %cond.true.1463
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	-136(%rbp), %rdi
	callq	FETCH_MULTIBYTE_CHAR
	movl	%eax, -1188(%rbp)       # 4-byte Spill
	jmp	.LBB45_484
.LBB45_466:                             # %cond.false.1465
                                        #   in Loop: Header=BB45_409 Depth=2
	movb	$1, %al
	testb	$1, %al
	jne	.LBB45_467
	jmp	.LBB45_471
.LBB45_467:                             # %cond.true.1466
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB45_469
# BB#468:                               # %cond.true.1471
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -1200(%rbp)       # 8-byte Spill
	jmp	.LBB45_470
.LBB45_469:                             # %cond.false.1474
                                        #   in Loop: Header=BB45_409 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -1200(%rbp)       # 8-byte Spill
	jmp	.LBB45_470
.LBB45_470:                             # %cond.end.1475
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	-1200(%rbp), %rax       # 8-byte Reload
	addq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$0, %edx
	cmpl	$128, %edx
	jb	.LBB45_475
	jmp	.LBB45_479
.LBB45_471:                             # %cond.false.1486
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB45_473
# BB#472:                               # %cond.true.1491
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -1208(%rbp)       # 8-byte Spill
	jmp	.LBB45_474
.LBB45_473:                             # %cond.false.1494
                                        #   in Loop: Header=BB45_409 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -1208(%rbp)       # 8-byte Spill
	jmp	.LBB45_474
.LBB45_474:                             # %cond.end.1495
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	-1208(%rbp), %rax       # 8-byte Reload
	addq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, %eax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB45_479
.LBB45_475:                             # %cond.true.1506
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB45_477
# BB#476:                               # %cond.true.1511
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -1216(%rbp)       # 8-byte Spill
	jmp	.LBB45_478
.LBB45_477:                             # %cond.false.1514
                                        #   in Loop: Header=BB45_409 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -1216(%rbp)       # 8-byte Spill
	jmp	.LBB45_478
.LBB45_478:                             # %cond.end.1515
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	-1216(%rbp), %rax       # 8-byte Reload
	addq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, -1220(%rbp)       # 4-byte Spill
	jmp	.LBB45_483
.LBB45_479:                             # %cond.false.1523
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB45_481
# BB#480:                               # %cond.true.1528
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -1232(%rbp)       # 8-byte Spill
	jmp	.LBB45_482
.LBB45_481:                             # %cond.false.1531
                                        #   in Loop: Header=BB45_409 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -1232(%rbp)       # 8-byte Spill
	jmp	.LBB45_482
.LBB45_482:                             # %cond.end.1532
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	-1232(%rbp), %rax       # 8-byte Reload
	addq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$4194048, %edx          # imm = 0x3FFF00
	movl	%edx, -1220(%rbp)       # 4-byte Spill
.LBB45_483:                             # %cond.end.1541
                                        #   in Loop: Header=BB45_409 Depth=2
	movl	-1220(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1188(%rbp)       # 4-byte Spill
.LBB45_484:                             # %cond.end.1543
                                        #   in Loop: Header=BB45_409 Depth=2
	movl	-1188(%rbp), %eax       # 4-byte Reload
	movl	$1, %esi
	movl	%eax, -284(%rbp)
	movl	-284(%rbp), %edi
	callq	syntax_property_with_flags
	movl	%eax, -288(%rbp)
	movl	-288(%rbp), %edi
	movl	-268(%rbp), %esi
	callq	SYNTAX_FLAGS_COMMENT_STYLE
	movl	%eax, -100(%rbp)
	movl	-288(%rbp), %edi
	callq	SYNTAX_FLAGS_COMMENT_NESTED
	andb	$1, %al
	movzbl	%al, %esi
	movb	-101(%rbp), %al
	andb	$1, %al
	movzbl	%al, %edi
	orl	%esi, %edi
	cmpl	$0, %edi
	setne	%al
	andb	$1, %al
	movb	%al, -101(%rbp)
.LBB45_485:                             # %if.end.1554
                                        #   in Loop: Header=BB45_409 Depth=2
	cmpl	$12, -84(%rbp)
	je	.LBB45_501
# BB#486:                               # %land.lhs.true.1557
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	-24(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	char_quoted
	testb	$1, %al
	jne	.LBB45_487
	jmp	.LBB45_501
.LBB45_487:                             # %if.then.1560
                                        #   in Loop: Header=BB45_409 Depth=2
	jmp	.LBB45_488
.LBB45_488:                             # %do.body.1561
                                        #   in Loop: Header=BB45_409 Depth=2
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -24(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -1240(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1240(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB45_490
# BB#489:                               # %if.then.1567
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	-136(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -136(%rbp)
	jmp	.LBB45_499
.LBB45_490:                             # %if.else.1569
                                        #   in Loop: Header=BB45_409 Depth=2
	jmp	.LBB45_491
.LBB45_491:                             # %do.body.1570
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	-136(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jge	.LBB45_493
# BB#492:                               # %if.then.1577
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	addq	-136(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -304(%rbp)
	jmp	.LBB45_494
.LBB45_493:                             # %if.else.1582
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	40(%rcx), %rax
	addq	-136(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -304(%rbp)
.LBB45_494:                             # %if.end.1590
                                        #   in Loop: Header=BB45_409 Depth=2
	jmp	.LBB45_495
.LBB45_495:                             # %while.cond.1591
                                        #   Parent Loop BB45_407 Depth=1
                                        #     Parent Loop BB45_409 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-304(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	setne	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB45_496
	jmp	.LBB45_497
.LBB45_496:                             # %while.body.1597
                                        #   in Loop: Header=BB45_495 Depth=3
	movq	-304(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -304(%rbp)
	movq	-136(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -136(%rbp)
	jmp	.LBB45_495
.LBB45_497:                             # %while.end.1600
                                        #   in Loop: Header=BB45_409 Depth=2
	jmp	.LBB45_498
.LBB45_498:                             # %do.end.1601
                                        #   in Loop: Header=BB45_409 Depth=2
	jmp	.LBB45_499
.LBB45_499:                             # %if.end.1602
                                        #   in Loop: Header=BB45_409 Depth=2
	jmp	.LBB45_500
.LBB45_500:                             # %do.end.1603
                                        #   in Loop: Header=BB45_409 Depth=2
	movl	$2, -84(%rbp)
	jmp	.LBB45_504
.LBB45_501:                             # %if.else.1604
                                        #   in Loop: Header=BB45_409 Depth=2
	movl	-268(%rbp), %edi
	callq	SYNTAX_FLAGS_PREFIX
	testb	$1, %al
	jne	.LBB45_502
	jmp	.LBB45_503
.LBB45_502:                             # %if.then.1606
                                        #   in Loop: Header=BB45_409 Depth=2
	jmp	.LBB45_409
.LBB45_503:                             # %if.end.1607
                                        #   in Loop: Header=BB45_409 Depth=2
	jmp	.LBB45_504
.LBB45_504:                             # %if.end.1608
                                        #   in Loop: Header=BB45_409 Depth=2
	movl	-84(%rbp), %eax
	addl	$-2, %eax
	movl	%eax, %ecx
	subl	$13, %eax
	movq	%rcx, -1248(%rbp)       # 8-byte Spill
	movl	%eax, -1252(%rbp)       # 4-byte Spill
	ja	.LBB45_767
# BB#776:                               # %if.end.1608
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	-1248(%rbp), %rax       # 8-byte Reload
	movq	.LJTI45_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB45_505:                             # %sw.bb.1609
                                        #   in Loop: Header=BB45_409 Depth=2
	cmpq	$0, -40(%rbp)
	jne	.LBB45_507
# BB#506:                               # %lor.lhs.false.1611
                                        #   in Loop: Header=BB45_409 Depth=2
	testb	$1, -41(%rbp)
	jne	.LBB45_508
.LBB45_507:                             # %if.then.1613
                                        #   in Loop: Header=BB45_409 Depth=2
	jmp	.LBB45_768
.LBB45_508:                             # %if.end.1614
                                        #   in Loop: Header=BB45_407 Depth=1
	jmp	.LBB45_509
.LBB45_509:                             # %while.cond.1615
                                        #   Parent Loop BB45_407 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB45_516 Depth 3
                                        #       Child Loop BB45_552 Depth 3
                                        #       Child Loop BB45_591 Depth 3
	movq	-24(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jle	.LBB45_597
# BB#510:                               # %while.body.1618
                                        #   in Loop: Header=BB45_509 Depth=2
	xorl	%edi, %edi
	movq	-136(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -1264(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1264(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB45_520
# BB#511:                               # %if.then.1623
                                        #   in Loop: Header=BB45_509 Depth=2
	jmp	.LBB45_512
.LBB45_512:                             # %do.body.1624
                                        #   in Loop: Header=BB45_509 Depth=2
	movq	-112(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jge	.LBB45_514
# BB#513:                               # %if.then.1631
                                        #   in Loop: Header=BB45_509 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	addq	-112(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -312(%rbp)
	jmp	.LBB45_515
.LBB45_514:                             # %if.else.1636
                                        #   in Loop: Header=BB45_509 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	40(%rcx), %rax
	addq	-112(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -312(%rbp)
.LBB45_515:                             # %if.end.1644
                                        #   in Loop: Header=BB45_509 Depth=2
	jmp	.LBB45_516
.LBB45_516:                             # %while.cond.1645
                                        #   Parent Loop BB45_407 Depth=1
                                        #     Parent Loop BB45_509 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-312(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	setne	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB45_517
	jmp	.LBB45_518
.LBB45_517:                             # %while.body.1651
                                        #   in Loop: Header=BB45_516 Depth=3
	movq	-312(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -312(%rbp)
	movq	-112(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -112(%rbp)
	jmp	.LBB45_516
.LBB45_518:                             # %while.end.1654
                                        #   in Loop: Header=BB45_509 Depth=2
	jmp	.LBB45_519
.LBB45_519:                             # %do.end.1655
                                        #   in Loop: Header=BB45_509 Depth=2
	jmp	.LBB45_521
.LBB45_520:                             # %if.else.1656
                                        #   in Loop: Header=BB45_509 Depth=2
	movq	-112(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -112(%rbp)
.LBB45_521:                             # %if.end.1658
                                        #   in Loop: Header=BB45_509 Depth=2
	movq	-24(%rbp), %rax
	subq	$1, %rax
	movq	%rax, %rdi
	callq	UPDATE_SYNTAX_TABLE_BACKWARD
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -1272(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1272(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB45_523
# BB#522:                               # %cond.true.1663
                                        #   in Loop: Header=BB45_509 Depth=2
	movq	-112(%rbp), %rdi
	callq	FETCH_MULTIBYTE_CHAR
	movl	%eax, -1276(%rbp)       # 4-byte Spill
	jmp	.LBB45_541
.LBB45_523:                             # %cond.false.1665
                                        #   in Loop: Header=BB45_509 Depth=2
	movb	$1, %al
	testb	$1, %al
	jne	.LBB45_524
	jmp	.LBB45_528
.LBB45_524:                             # %cond.true.1666
                                        #   in Loop: Header=BB45_509 Depth=2
	movq	-112(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB45_526
# BB#525:                               # %cond.true.1671
                                        #   in Loop: Header=BB45_509 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -1288(%rbp)       # 8-byte Spill
	jmp	.LBB45_527
.LBB45_526:                             # %cond.false.1674
                                        #   in Loop: Header=BB45_509 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -1288(%rbp)       # 8-byte Spill
	jmp	.LBB45_527
.LBB45_527:                             # %cond.end.1675
                                        #   in Loop: Header=BB45_509 Depth=2
	movq	-1288(%rbp), %rax       # 8-byte Reload
	addq	-112(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$0, %edx
	cmpl	$128, %edx
	jb	.LBB45_532
	jmp	.LBB45_536
.LBB45_528:                             # %cond.false.1686
                                        #   in Loop: Header=BB45_509 Depth=2
	movq	-112(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB45_530
# BB#529:                               # %cond.true.1691
                                        #   in Loop: Header=BB45_509 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -1296(%rbp)       # 8-byte Spill
	jmp	.LBB45_531
.LBB45_530:                             # %cond.false.1694
                                        #   in Loop: Header=BB45_509 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -1296(%rbp)       # 8-byte Spill
	jmp	.LBB45_531
.LBB45_531:                             # %cond.end.1695
                                        #   in Loop: Header=BB45_509 Depth=2
	movq	-1296(%rbp), %rax       # 8-byte Reload
	addq	-112(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, %eax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB45_536
.LBB45_532:                             # %cond.true.1706
                                        #   in Loop: Header=BB45_509 Depth=2
	movq	-112(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB45_534
# BB#533:                               # %cond.true.1711
                                        #   in Loop: Header=BB45_509 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -1304(%rbp)       # 8-byte Spill
	jmp	.LBB45_535
.LBB45_534:                             # %cond.false.1714
                                        #   in Loop: Header=BB45_509 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -1304(%rbp)       # 8-byte Spill
	jmp	.LBB45_535
.LBB45_535:                             # %cond.end.1715
                                        #   in Loop: Header=BB45_509 Depth=2
	movq	-1304(%rbp), %rax       # 8-byte Reload
	addq	-112(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, -1308(%rbp)       # 4-byte Spill
	jmp	.LBB45_540
.LBB45_536:                             # %cond.false.1723
                                        #   in Loop: Header=BB45_509 Depth=2
	movq	-112(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB45_538
# BB#537:                               # %cond.true.1728
                                        #   in Loop: Header=BB45_509 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -1320(%rbp)       # 8-byte Spill
	jmp	.LBB45_539
.LBB45_538:                             # %cond.false.1731
                                        #   in Loop: Header=BB45_509 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -1320(%rbp)       # 8-byte Spill
	jmp	.LBB45_539
.LBB45_539:                             # %cond.end.1732
                                        #   in Loop: Header=BB45_509 Depth=2
	movq	-1320(%rbp), %rax       # 8-byte Reload
	addq	-112(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$4194048, %edx          # imm = 0x3FFF00
	movl	%edx, -1308(%rbp)       # 4-byte Spill
.LBB45_540:                             # %cond.end.1741
                                        #   in Loop: Header=BB45_509 Depth=2
	movl	-1308(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1276(%rbp)       # 4-byte Spill
.LBB45_541:                             # %cond.end.1743
                                        #   in Loop: Header=BB45_509 Depth=2
	movl	-1276(%rbp), %eax       # 4-byte Reload
	movl	%eax, -72(%rbp)
	movl	-72(%rbp), %edi
	movb	-161(%rbp), %cl
	andb	$1, %cl
	movzbl	%cl, %esi
	callq	syntax_multibyte
	cmpl	$12, %eax
	jne	.LBB45_543
# BB#542:                               # %if.then.1749
                                        #   in Loop: Header=BB45_407 Depth=1
	jmp	.LBB45_772
.LBB45_543:                             # %if.end.1750
                                        #   in Loop: Header=BB45_509 Depth=2
	movq	-24(%rbp), %rax
	subq	$1, %rax
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	callq	char_quoted
	andb	$1, %al
	movb	%al, -77(%rbp)
	testb	$1, -77(%rbp)
	je	.LBB45_558
# BB#544:                               # %if.then.1755
                                        #   in Loop: Header=BB45_509 Depth=2
	jmp	.LBB45_545
.LBB45_545:                             # %do.body.1756
                                        #   in Loop: Header=BB45_509 Depth=2
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -24(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -1328(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1328(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB45_547
# BB#546:                               # %if.then.1762
                                        #   in Loop: Header=BB45_509 Depth=2
	movq	-136(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -136(%rbp)
	jmp	.LBB45_556
.LBB45_547:                             # %if.else.1764
                                        #   in Loop: Header=BB45_509 Depth=2
	jmp	.LBB45_548
.LBB45_548:                             # %do.body.1765
                                        #   in Loop: Header=BB45_509 Depth=2
	movq	-136(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jge	.LBB45_550
# BB#549:                               # %if.then.1772
                                        #   in Loop: Header=BB45_509 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	addq	-136(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -320(%rbp)
	jmp	.LBB45_551
.LBB45_550:                             # %if.else.1777
                                        #   in Loop: Header=BB45_509 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	40(%rcx), %rax
	addq	-136(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -320(%rbp)
.LBB45_551:                             # %if.end.1785
                                        #   in Loop: Header=BB45_509 Depth=2
	jmp	.LBB45_552
.LBB45_552:                             # %while.cond.1786
                                        #   Parent Loop BB45_407 Depth=1
                                        #     Parent Loop BB45_509 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-320(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	setne	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB45_553
	jmp	.LBB45_554
.LBB45_553:                             # %while.body.1792
                                        #   in Loop: Header=BB45_552 Depth=3
	movq	-320(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -320(%rbp)
	movq	-136(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -136(%rbp)
	jmp	.LBB45_552
.LBB45_554:                             # %while.end.1795
                                        #   in Loop: Header=BB45_509 Depth=2
	jmp	.LBB45_555
.LBB45_555:                             # %do.end.1796
                                        #   in Loop: Header=BB45_509 Depth=2
	jmp	.LBB45_556
.LBB45_556:                             # %if.end.1797
                                        #   in Loop: Header=BB45_509 Depth=2
	jmp	.LBB45_557
.LBB45_557:                             # %do.end.1798
                                        #   in Loop: Header=BB45_509 Depth=2
	movq	-112(%rbp), %rdi
	callq	dec_bytepos
	movq	%rax, -112(%rbp)
	movq	-24(%rbp), %rax
	subq	$1, %rax
	movq	%rax, %rdi
	callq	UPDATE_SYNTAX_TABLE_BACKWARD
.LBB45_558:                             # %if.end.1801
                                        #   in Loop: Header=BB45_509 Depth=2
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -1336(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1336(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB45_560
# BB#559:                               # %cond.true.1806
                                        #   in Loop: Header=BB45_509 Depth=2
	movq	-112(%rbp), %rdi
	callq	FETCH_MULTIBYTE_CHAR
	movl	%eax, -1340(%rbp)       # 4-byte Spill
	jmp	.LBB45_578
.LBB45_560:                             # %cond.false.1808
                                        #   in Loop: Header=BB45_509 Depth=2
	movb	$1, %al
	testb	$1, %al
	jne	.LBB45_561
	jmp	.LBB45_565
.LBB45_561:                             # %cond.true.1809
                                        #   in Loop: Header=BB45_509 Depth=2
	movq	-112(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB45_563
# BB#562:                               # %cond.true.1814
                                        #   in Loop: Header=BB45_509 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -1352(%rbp)       # 8-byte Spill
	jmp	.LBB45_564
.LBB45_563:                             # %cond.false.1817
                                        #   in Loop: Header=BB45_509 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -1352(%rbp)       # 8-byte Spill
	jmp	.LBB45_564
.LBB45_564:                             # %cond.end.1818
                                        #   in Loop: Header=BB45_509 Depth=2
	movq	-1352(%rbp), %rax       # 8-byte Reload
	addq	-112(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$0, %edx
	cmpl	$128, %edx
	jb	.LBB45_569
	jmp	.LBB45_573
.LBB45_565:                             # %cond.false.1829
                                        #   in Loop: Header=BB45_509 Depth=2
	movq	-112(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB45_567
# BB#566:                               # %cond.true.1834
                                        #   in Loop: Header=BB45_509 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -1360(%rbp)       # 8-byte Spill
	jmp	.LBB45_568
.LBB45_567:                             # %cond.false.1837
                                        #   in Loop: Header=BB45_509 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -1360(%rbp)       # 8-byte Spill
	jmp	.LBB45_568
.LBB45_568:                             # %cond.end.1838
                                        #   in Loop: Header=BB45_509 Depth=2
	movq	-1360(%rbp), %rax       # 8-byte Reload
	addq	-112(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, %eax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB45_573
.LBB45_569:                             # %cond.true.1849
                                        #   in Loop: Header=BB45_509 Depth=2
	movq	-112(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB45_571
# BB#570:                               # %cond.true.1854
                                        #   in Loop: Header=BB45_509 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -1368(%rbp)       # 8-byte Spill
	jmp	.LBB45_572
.LBB45_571:                             # %cond.false.1857
                                        #   in Loop: Header=BB45_509 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -1368(%rbp)       # 8-byte Spill
	jmp	.LBB45_572
.LBB45_572:                             # %cond.end.1858
                                        #   in Loop: Header=BB45_509 Depth=2
	movq	-1368(%rbp), %rax       # 8-byte Reload
	addq	-112(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, -1372(%rbp)       # 4-byte Spill
	jmp	.LBB45_577
.LBB45_573:                             # %cond.false.1866
                                        #   in Loop: Header=BB45_509 Depth=2
	movq	-112(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB45_575
# BB#574:                               # %cond.true.1871
                                        #   in Loop: Header=BB45_509 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -1384(%rbp)       # 8-byte Spill
	jmp	.LBB45_576
.LBB45_575:                             # %cond.false.1874
                                        #   in Loop: Header=BB45_509 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -1384(%rbp)       # 8-byte Spill
	jmp	.LBB45_576
.LBB45_576:                             # %cond.end.1875
                                        #   in Loop: Header=BB45_509 Depth=2
	movq	-1384(%rbp), %rax       # 8-byte Reload
	addq	-112(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$4194048, %edx          # imm = 0x3FFF00
	movl	%edx, -1372(%rbp)       # 4-byte Spill
.LBB45_577:                             # %cond.end.1884
                                        #   in Loop: Header=BB45_509 Depth=2
	movl	-1372(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1340(%rbp)       # 4-byte Spill
.LBB45_578:                             # %cond.end.1886
                                        #   in Loop: Header=BB45_509 Depth=2
	movl	-1340(%rbp), %eax       # 4-byte Reload
	movl	%eax, -72(%rbp)
	testb	$1, -77(%rbp)
	jne	.LBB45_583
# BB#579:                               # %if.then.1889
                                        #   in Loop: Header=BB45_509 Depth=2
	movl	-72(%rbp), %edi
	movzbl	-161(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %esi
	callq	syntax_multibyte
	movl	%eax, %esi
	addl	$-2, %esi
	subl	$2, %esi
	movl	%eax, -1388(%rbp)       # 4-byte Spill
	movl	%esi, -1392(%rbp)       # 4-byte Spill
	jb	.LBB45_580
	jmp	.LBB45_777
.LBB45_777:                             # %if.then.1889
                                        #   in Loop: Header=BB45_509 Depth=2
	movl	-1388(%rbp), %eax       # 4-byte Reload
	subl	$6, %eax
	movl	%eax, -1396(%rbp)       # 4-byte Spill
	jne	.LBB45_581
	jmp	.LBB45_580
.LBB45_580:                             # %sw.bb.1892
                                        #   in Loop: Header=BB45_509 Depth=2
	jmp	.LBB45_582
.LBB45_581:                             # %sw.default.1893
                                        #   in Loop: Header=BB45_407 Depth=1
	jmp	.LBB45_772
.LBB45_582:                             # %sw.epilog.1894
                                        #   in Loop: Header=BB45_509 Depth=2
	jmp	.LBB45_583
.LBB45_583:                             # %if.end.1895
                                        #   in Loop: Header=BB45_509 Depth=2
	jmp	.LBB45_584
.LBB45_584:                             # %do.body.1896
                                        #   in Loop: Header=BB45_509 Depth=2
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -24(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -1408(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1408(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB45_586
# BB#585:                               # %if.then.1902
                                        #   in Loop: Header=BB45_509 Depth=2
	movq	-136(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -136(%rbp)
	jmp	.LBB45_595
.LBB45_586:                             # %if.else.1904
                                        #   in Loop: Header=BB45_509 Depth=2
	jmp	.LBB45_587
.LBB45_587:                             # %do.body.1905
                                        #   in Loop: Header=BB45_509 Depth=2
	movq	-136(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jge	.LBB45_589
# BB#588:                               # %if.then.1912
                                        #   in Loop: Header=BB45_509 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	addq	-136(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -328(%rbp)
	jmp	.LBB45_590
.LBB45_589:                             # %if.else.1917
                                        #   in Loop: Header=BB45_509 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	40(%rcx), %rax
	addq	-136(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -328(%rbp)
.LBB45_590:                             # %if.end.1925
                                        #   in Loop: Header=BB45_509 Depth=2
	jmp	.LBB45_591
.LBB45_591:                             # %while.cond.1926
                                        #   Parent Loop BB45_407 Depth=1
                                        #     Parent Loop BB45_509 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-328(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	setne	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB45_592
	jmp	.LBB45_593
.LBB45_592:                             # %while.body.1932
                                        #   in Loop: Header=BB45_591 Depth=3
	movq	-328(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -328(%rbp)
	movq	-136(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -136(%rbp)
	jmp	.LBB45_591
.LBB45_593:                             # %while.end.1935
                                        #   in Loop: Header=BB45_509 Depth=2
	jmp	.LBB45_594
.LBB45_594:                             # %do.end.1936
                                        #   in Loop: Header=BB45_509 Depth=2
	jmp	.LBB45_595
.LBB45_595:                             # %if.end.1937
                                        #   in Loop: Header=BB45_509 Depth=2
	jmp	.LBB45_596
.LBB45_596:                             # %do.end.1938
                                        #   in Loop: Header=BB45_509 Depth=2
	jmp	.LBB45_509
.LBB45_597:                             # %while.end.1939
                                        #   in Loop: Header=BB45_407 Depth=1
	jmp	.LBB45_772
.LBB45_598:                             # %sw.bb.1940
                                        #   in Loop: Header=BB45_409 Depth=2
	testb	$1, -41(%rbp)
	jne	.LBB45_600
# BB#599:                               # %if.then.1942
                                        #   in Loop: Header=BB45_409 Depth=2
	jmp	.LBB45_768
.LBB45_600:                             # %if.end.1943
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	cmpq	752(%rcx), %rax
	jle	.LBB45_638
# BB#601:                               # %if.then.1947
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	-136(%rbp), %rdi
	callq	dec_bytepos
	movq	%rax, -112(%rbp)
	movq	-24(%rbp), %rax
	subq	$1, %rax
	movq	%rax, %rdi
	callq	UPDATE_SYNTAX_TABLE_BACKWARD
	movq	-24(%rbp), %rax
	cmpq	-64(%rbp), %rax
	je	.LBB45_637
# BB#602:                               # %land.lhs.true.1952
                                        #   in Loop: Header=BB45_409 Depth=2
	xorl	%edi, %edi
	movl	-68(%rbp), %eax
	movq	current_buffer, %rcx
	movq	312(%rcx), %rcx
	movq	%rcx, -1416(%rbp)       # 8-byte Spill
	movl	%eax, -1420(%rbp)       # 4-byte Spill
	callq	builtin_lisp_symbol
	movq	-1416(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB45_604
# BB#603:                               # %cond.true.1957
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	-112(%rbp), %rdi
	callq	FETCH_MULTIBYTE_CHAR
	movl	%eax, -1424(%rbp)       # 4-byte Spill
	jmp	.LBB45_622
.LBB45_604:                             # %cond.false.1959
                                        #   in Loop: Header=BB45_409 Depth=2
	movb	$1, %al
	testb	$1, %al
	jne	.LBB45_605
	jmp	.LBB45_609
.LBB45_605:                             # %cond.true.1960
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	-112(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB45_607
# BB#606:                               # %cond.true.1965
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -1432(%rbp)       # 8-byte Spill
	jmp	.LBB45_608
.LBB45_607:                             # %cond.false.1968
                                        #   in Loop: Header=BB45_409 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -1432(%rbp)       # 8-byte Spill
	jmp	.LBB45_608
.LBB45_608:                             # %cond.end.1969
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	-1432(%rbp), %rax       # 8-byte Reload
	addq	-112(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$0, %edx
	cmpl	$128, %edx
	jb	.LBB45_613
	jmp	.LBB45_617
.LBB45_609:                             # %cond.false.1980
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	-112(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB45_611
# BB#610:                               # %cond.true.1985
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -1440(%rbp)       # 8-byte Spill
	jmp	.LBB45_612
.LBB45_611:                             # %cond.false.1988
                                        #   in Loop: Header=BB45_409 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -1440(%rbp)       # 8-byte Spill
	jmp	.LBB45_612
.LBB45_612:                             # %cond.end.1989
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	-1440(%rbp), %rax       # 8-byte Reload
	addq	-112(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, %eax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB45_617
.LBB45_613:                             # %cond.true.2000
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	-112(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB45_615
# BB#614:                               # %cond.true.2005
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -1448(%rbp)       # 8-byte Spill
	jmp	.LBB45_616
.LBB45_615:                             # %cond.false.2008
                                        #   in Loop: Header=BB45_409 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -1448(%rbp)       # 8-byte Spill
	jmp	.LBB45_616
.LBB45_616:                             # %cond.end.2009
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	-1448(%rbp), %rax       # 8-byte Reload
	addq	-112(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, -1452(%rbp)       # 4-byte Spill
	jmp	.LBB45_621
.LBB45_617:                             # %cond.false.2017
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	-112(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB45_619
# BB#618:                               # %cond.true.2022
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -1464(%rbp)       # 8-byte Spill
	jmp	.LBB45_620
.LBB45_619:                             # %cond.false.2025
                                        #   in Loop: Header=BB45_409 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -1464(%rbp)       # 8-byte Spill
	jmp	.LBB45_620
.LBB45_620:                             # %cond.end.2026
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	-1464(%rbp), %rax       # 8-byte Reload
	addq	-112(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$4194048, %edx          # imm = 0x3FFF00
	movl	%edx, -1452(%rbp)       # 4-byte Spill
.LBB45_621:                             # %cond.end.2035
                                        #   in Loop: Header=BB45_409 Depth=2
	movl	-1452(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1424(%rbp)       # 4-byte Spill
.LBB45_622:                             # %cond.end.2037
                                        #   in Loop: Header=BB45_409 Depth=2
	movl	-1424(%rbp), %eax       # 4-byte Reload
	movl	-1420(%rbp), %ecx       # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB45_637
# BB#623:                               # %if.then.2041
                                        #   in Loop: Header=BB45_409 Depth=2
	jmp	.LBB45_624
.LBB45_624:                             # %do.body.2042
                                        #   in Loop: Header=BB45_409 Depth=2
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -24(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -1472(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1472(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB45_626
# BB#625:                               # %if.then.2048
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	-136(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -136(%rbp)
	jmp	.LBB45_635
.LBB45_626:                             # %if.else.2050
                                        #   in Loop: Header=BB45_409 Depth=2
	jmp	.LBB45_627
.LBB45_627:                             # %do.body.2051
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	-136(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jge	.LBB45_629
# BB#628:                               # %if.then.2058
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	addq	-136(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -336(%rbp)
	jmp	.LBB45_630
.LBB45_629:                             # %if.else.2063
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	40(%rcx), %rax
	addq	-136(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -336(%rbp)
.LBB45_630:                             # %if.end.2071
                                        #   in Loop: Header=BB45_409 Depth=2
	jmp	.LBB45_631
.LBB45_631:                             # %while.cond.2072
                                        #   Parent Loop BB45_407 Depth=1
                                        #     Parent Loop BB45_409 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-336(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	setne	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB45_632
	jmp	.LBB45_633
.LBB45_632:                             # %while.body.2078
                                        #   in Loop: Header=BB45_631 Depth=3
	movq	-336(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -336(%rbp)
	movq	-136(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -136(%rbp)
	jmp	.LBB45_631
.LBB45_633:                             # %while.end.2081
                                        #   in Loop: Header=BB45_409 Depth=2
	jmp	.LBB45_634
.LBB45_634:                             # %do.end.2082
                                        #   in Loop: Header=BB45_409 Depth=2
	jmp	.LBB45_635
.LBB45_635:                             # %if.end.2083
                                        #   in Loop: Header=BB45_409 Depth=2
	jmp	.LBB45_636
.LBB45_636:                             # %do.end.2084
                                        #   in Loop: Header=BB45_409 Depth=2
	jmp	.LBB45_637
.LBB45_637:                             # %if.end.2085
                                        #   in Loop: Header=BB45_409 Depth=2
	jmp	.LBB45_638
.LBB45_638:                             # %if.end.2086
                                        #   in Loop: Header=BB45_409 Depth=2
	testb	$1, -78(%rbp)
	je	.LBB45_640
# BB#639:                               # %if.then.2088
                                        #   in Loop: Header=BB45_409 Depth=2
	movb	$0, -78(%rbp)
	jmp	.LBB45_645
.LBB45_640:                             # %if.end.2089
                                        #   in Loop: Header=BB45_409 Depth=2
	movb	$1, -78(%rbp)
.LBB45_641:                             # %sw.bb.2090
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, %rax
	jne	.LBB45_643
# BB#642:                               # %if.then.2093
                                        #   in Loop: Header=BB45_407 Depth=1
	jmp	.LBB45_772
.LBB45_643:                             # %if.end.2094
                                        #   in Loop: Header=BB45_409 Depth=2
	jmp	.LBB45_768
.LBB45_644:                             # %sw.bb.2095
                                        #   in Loop: Header=BB45_409 Depth=2
	jmp	.LBB45_645
.LBB45_645:                             # %open2
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	-40(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, %rax
	jne	.LBB45_647
# BB#646:                               # %if.then.2098
                                        #   in Loop: Header=BB45_407 Depth=1
	jmp	.LBB45_772
.LBB45_647:                             # %if.end.2099
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	-40(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jge	.LBB45_649
# BB#648:                               # %if.then.2102
	movl	$828, %edi              # imm = 0x33C
	callq	builtin_lisp_symbol
	movabsq	$.L.str.61, %rdi
	movq	%rax, -1480(%rbp)       # 8-byte Spill
	callq	build_string
	movq	-120(%rbp), %rdi
	shlq	$2, %rdi
	addq	$2, %rdi
	movq	-24(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	-1480(%rbp), %rdx       # 8-byte Reload
	movq	%rdi, -1488(%rbp)       # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rsi
	movq	-1488(%rbp), %rdx       # 8-byte Reload
	callq	xsignal3
.LBB45_649:                             # %if.end.2109
                                        #   in Loop: Header=BB45_409 Depth=2
	jmp	.LBB45_768
.LBB45_650:                             # %sw.bb.2110
                                        #   in Loop: Header=BB45_409 Depth=2
	testb	$1, globals+3419
	jne	.LBB45_652
# BB#651:                               # %if.then.2112
                                        #   in Loop: Header=BB45_409 Depth=2
	jmp	.LBB45_768
.LBB45_652:                             # %if.end.2113
                                        #   in Loop: Header=BB45_409 Depth=2
	leaq	-152(%rbp), %r9
	leaq	-144(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	-136(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movb	-101(%rbp), %cl
	movl	-100(%rbp), %r8d
	andb	$1, %cl
	movzbl	%cl, %ecx
	movq	%rax, (%rsp)
	callq	back_comment
	andb	$1, %al
	movb	%al, -121(%rbp)
	testb	$1, -121(%rbp)
	je	.LBB45_654
# BB#653:                               # %if.then.2118
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	-152(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -136(%rbp)
.LBB45_654:                             # %if.end.2119
                                        #   in Loop: Header=BB45_409 Depth=2
	jmp	.LBB45_768
.LBB45_655:                             # %sw.bb.2120
                                        #   in Loop: Header=BB45_409 Depth=2
	jmp	.LBB45_656
.LBB45_656:                             # %while.body.2122
                                        #   Parent Loop BB45_407 Depth=1
                                        #     Parent Loop BB45_409 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB45_666 Depth 4
	movq	-24(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB45_658
# BB#657:                               # %if.then.2125
	jmp	.LBB45_774
.LBB45_658:                             # %if.end.2126
                                        #   in Loop: Header=BB45_656 Depth=3
	jmp	.LBB45_659
.LBB45_659:                             # %do.body.2127
                                        #   in Loop: Header=BB45_656 Depth=3
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -24(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -1496(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1496(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB45_661
# BB#660:                               # %if.then.2133
                                        #   in Loop: Header=BB45_656 Depth=3
	movq	-136(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -136(%rbp)
	jmp	.LBB45_670
.LBB45_661:                             # %if.else.2135
                                        #   in Loop: Header=BB45_656 Depth=3
	jmp	.LBB45_662
.LBB45_662:                             # %do.body.2136
                                        #   in Loop: Header=BB45_656 Depth=3
	movq	-136(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jge	.LBB45_664
# BB#663:                               # %if.then.2143
                                        #   in Loop: Header=BB45_656 Depth=3
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	addq	-136(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -344(%rbp)
	jmp	.LBB45_665
.LBB45_664:                             # %if.else.2148
                                        #   in Loop: Header=BB45_656 Depth=3
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	40(%rcx), %rax
	addq	-136(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -344(%rbp)
.LBB45_665:                             # %if.end.2156
                                        #   in Loop: Header=BB45_656 Depth=3
	jmp	.LBB45_666
.LBB45_666:                             # %while.cond.2157
                                        #   Parent Loop BB45_407 Depth=1
                                        #     Parent Loop BB45_409 Depth=2
                                        #       Parent Loop BB45_656 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	-344(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	setne	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB45_667
	jmp	.LBB45_668
.LBB45_667:                             # %while.body.2163
                                        #   in Loop: Header=BB45_666 Depth=4
	movq	-344(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -344(%rbp)
	movq	-136(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -136(%rbp)
	jmp	.LBB45_666
.LBB45_668:                             # %while.end.2166
                                        #   in Loop: Header=BB45_656 Depth=3
	jmp	.LBB45_669
.LBB45_669:                             # %do.end.2167
                                        #   in Loop: Header=BB45_656 Depth=3
	jmp	.LBB45_670
.LBB45_670:                             # %if.end.2168
                                        #   in Loop: Header=BB45_656 Depth=3
	jmp	.LBB45_671
.LBB45_671:                             # %do.end.2169
                                        #   in Loop: Header=BB45_656 Depth=3
	movq	-24(%rbp), %rdi
	callq	UPDATE_SYNTAX_TABLE_BACKWARD
	movq	-24(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	char_quoted
	testb	$1, %al
	jne	.LBB45_695
# BB#672:                               # %if.then.2171
                                        #   in Loop: Header=BB45_656 Depth=3
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -1504(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1504(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB45_674
# BB#673:                               # %cond.true.2176
                                        #   in Loop: Header=BB45_656 Depth=3
	movq	-136(%rbp), %rdi
	callq	FETCH_MULTIBYTE_CHAR
	movl	%eax, -1508(%rbp)       # 4-byte Spill
	jmp	.LBB45_692
.LBB45_674:                             # %cond.false.2178
                                        #   in Loop: Header=BB45_656 Depth=3
	movb	$1, %al
	testb	$1, %al
	jne	.LBB45_675
	jmp	.LBB45_679
.LBB45_675:                             # %cond.true.2179
                                        #   in Loop: Header=BB45_656 Depth=3
	movq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB45_677
# BB#676:                               # %cond.true.2184
                                        #   in Loop: Header=BB45_656 Depth=3
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -1520(%rbp)       # 8-byte Spill
	jmp	.LBB45_678
.LBB45_677:                             # %cond.false.2187
                                        #   in Loop: Header=BB45_656 Depth=3
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -1520(%rbp)       # 8-byte Spill
	jmp	.LBB45_678
.LBB45_678:                             # %cond.end.2188
                                        #   in Loop: Header=BB45_656 Depth=3
	movq	-1520(%rbp), %rax       # 8-byte Reload
	addq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$0, %edx
	cmpl	$128, %edx
	jb	.LBB45_683
	jmp	.LBB45_687
.LBB45_679:                             # %cond.false.2199
                                        #   in Loop: Header=BB45_656 Depth=3
	movq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB45_681
# BB#680:                               # %cond.true.2204
                                        #   in Loop: Header=BB45_656 Depth=3
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -1528(%rbp)       # 8-byte Spill
	jmp	.LBB45_682
.LBB45_681:                             # %cond.false.2207
                                        #   in Loop: Header=BB45_656 Depth=3
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -1528(%rbp)       # 8-byte Spill
	jmp	.LBB45_682
.LBB45_682:                             # %cond.end.2208
                                        #   in Loop: Header=BB45_656 Depth=3
	movq	-1528(%rbp), %rax       # 8-byte Reload
	addq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, %eax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB45_687
.LBB45_683:                             # %cond.true.2219
                                        #   in Loop: Header=BB45_656 Depth=3
	movq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB45_685
# BB#684:                               # %cond.true.2224
                                        #   in Loop: Header=BB45_656 Depth=3
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -1536(%rbp)       # 8-byte Spill
	jmp	.LBB45_686
.LBB45_685:                             # %cond.false.2227
                                        #   in Loop: Header=BB45_656 Depth=3
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -1536(%rbp)       # 8-byte Spill
	jmp	.LBB45_686
.LBB45_686:                             # %cond.end.2228
                                        #   in Loop: Header=BB45_656 Depth=3
	movq	-1536(%rbp), %rax       # 8-byte Reload
	addq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, -1540(%rbp)       # 4-byte Spill
	jmp	.LBB45_691
.LBB45_687:                             # %cond.false.2236
                                        #   in Loop: Header=BB45_656 Depth=3
	movq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB45_689
# BB#688:                               # %cond.true.2241
                                        #   in Loop: Header=BB45_656 Depth=3
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -1552(%rbp)       # 8-byte Spill
	jmp	.LBB45_690
.LBB45_689:                             # %cond.false.2244
                                        #   in Loop: Header=BB45_656 Depth=3
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -1552(%rbp)       # 8-byte Spill
	jmp	.LBB45_690
.LBB45_690:                             # %cond.end.2245
                                        #   in Loop: Header=BB45_656 Depth=3
	movq	-1552(%rbp), %rax       # 8-byte Reload
	addq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$4194048, %edx          # imm = 0x3FFF00
	movl	%edx, -1540(%rbp)       # 4-byte Spill
.LBB45_691:                             # %cond.end.2254
                                        #   in Loop: Header=BB45_656 Depth=3
	movl	-1540(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1508(%rbp)       # 4-byte Spill
.LBB45_692:                             # %cond.end.2256
                                        #   in Loop: Header=BB45_656 Depth=3
	movl	-1508(%rbp), %eax       # 4-byte Reload
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %edi
	movb	-161(%rbp), %cl
	andb	$1, %cl
	movzbl	%cl, %esi
	callq	syntax_multibyte
	cmpl	-84(%rbp), %eax
	jne	.LBB45_694
# BB#693:                               # %if.then.2262
                                        #   in Loop: Header=BB45_409 Depth=2
	jmp	.LBB45_696
.LBB45_694:                             # %if.end.2263
                                        #   in Loop: Header=BB45_656 Depth=3
	jmp	.LBB45_695
.LBB45_695:                             # %if.end.2264
                                        #   in Loop: Header=BB45_656 Depth=3
	jmp	.LBB45_656
.LBB45_696:                             # %while.end.2265
                                        #   in Loop: Header=BB45_409 Depth=2
	cmpl	$15, -84(%rbp)
	jne	.LBB45_700
# BB#697:                               # %land.lhs.true.2268
                                        #   in Loop: Header=BB45_409 Depth=2
	cmpq	$0, -40(%rbp)
	jne	.LBB45_700
# BB#698:                               # %land.lhs.true.2270
                                        #   in Loop: Header=BB45_409 Depth=2
	testb	$1, -41(%rbp)
	je	.LBB45_700
# BB#699:                               # %if.then.2273
                                        #   in Loop: Header=BB45_407 Depth=1
	jmp	.LBB45_772
.LBB45_700:                             # %if.end.2274
                                        #   in Loop: Header=BB45_409 Depth=2
	jmp	.LBB45_768
.LBB45_701:                             # %sw.bb.2275
                                        #   in Loop: Header=BB45_409 Depth=2
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -1560(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1560(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB45_703
# BB#702:                               # %cond.true.2280
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	-136(%rbp), %rdi
	callq	FETCH_MULTIBYTE_CHAR
	movl	%eax, -1564(%rbp)       # 4-byte Spill
	jmp	.LBB45_721
.LBB45_703:                             # %cond.false.2282
                                        #   in Loop: Header=BB45_409 Depth=2
	movb	$1, %al
	testb	$1, %al
	jne	.LBB45_704
	jmp	.LBB45_708
.LBB45_704:                             # %cond.true.2283
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB45_706
# BB#705:                               # %cond.true.2288
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -1576(%rbp)       # 8-byte Spill
	jmp	.LBB45_707
.LBB45_706:                             # %cond.false.2291
                                        #   in Loop: Header=BB45_409 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -1576(%rbp)       # 8-byte Spill
	jmp	.LBB45_707
.LBB45_707:                             # %cond.end.2292
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	-1576(%rbp), %rax       # 8-byte Reload
	addq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$0, %edx
	cmpl	$128, %edx
	jb	.LBB45_712
	jmp	.LBB45_716
.LBB45_708:                             # %cond.false.2303
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB45_710
# BB#709:                               # %cond.true.2308
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -1584(%rbp)       # 8-byte Spill
	jmp	.LBB45_711
.LBB45_710:                             # %cond.false.2311
                                        #   in Loop: Header=BB45_409 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -1584(%rbp)       # 8-byte Spill
	jmp	.LBB45_711
.LBB45_711:                             # %cond.end.2312
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	-1584(%rbp), %rax       # 8-byte Reload
	addq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, %eax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB45_716
.LBB45_712:                             # %cond.true.2323
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB45_714
# BB#713:                               # %cond.true.2328
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -1592(%rbp)       # 8-byte Spill
	jmp	.LBB45_715
.LBB45_714:                             # %cond.false.2331
                                        #   in Loop: Header=BB45_409 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -1592(%rbp)       # 8-byte Spill
	jmp	.LBB45_715
.LBB45_715:                             # %cond.end.2332
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	-1592(%rbp), %rax       # 8-byte Reload
	addq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, -1596(%rbp)       # 4-byte Spill
	jmp	.LBB45_720
.LBB45_716:                             # %cond.false.2340
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB45_718
# BB#717:                               # %cond.true.2345
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -1608(%rbp)       # 8-byte Spill
	jmp	.LBB45_719
.LBB45_718:                             # %cond.false.2348
                                        #   in Loop: Header=BB45_409 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -1608(%rbp)       # 8-byte Spill
	jmp	.LBB45_719
.LBB45_719:                             # %cond.end.2349
                                        #   in Loop: Header=BB45_409 Depth=2
	movq	-1608(%rbp), %rax       # 8-byte Reload
	addq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$4194048, %edx          # imm = 0x3FFF00
	movl	%edx, -1596(%rbp)       # 4-byte Spill
.LBB45_720:                             # %cond.end.2358
                                        #   in Loop: Header=BB45_409 Depth=2
	movl	-1596(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1564(%rbp)       # 4-byte Spill
.LBB45_721:                             # %cond.end.2360
                                        #   in Loop: Header=BB45_409 Depth=2
	movl	-1564(%rbp), %eax       # 4-byte Reload
	movl	%eax, -76(%rbp)
.LBB45_722:                             # %while.body.2363
                                        #   Parent Loop BB45_407 Depth=1
                                        #     Parent Loop BB45_409 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB45_732 Depth 4
	movq	-24(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB45_724
# BB#723:                               # %if.then.2366
	jmp	.LBB45_774
.LBB45_724:                             # %if.end.2367
                                        #   in Loop: Header=BB45_722 Depth=3
	jmp	.LBB45_725
.LBB45_725:                             # %do.body.2368
                                        #   in Loop: Header=BB45_722 Depth=3
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -24(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -1616(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1616(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB45_727
# BB#726:                               # %if.then.2374
                                        #   in Loop: Header=BB45_722 Depth=3
	movq	-136(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -136(%rbp)
	jmp	.LBB45_736
.LBB45_727:                             # %if.else.2376
                                        #   in Loop: Header=BB45_722 Depth=3
	jmp	.LBB45_728
.LBB45_728:                             # %do.body.2377
                                        #   in Loop: Header=BB45_722 Depth=3
	movq	-136(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jge	.LBB45_730
# BB#729:                               # %if.then.2384
                                        #   in Loop: Header=BB45_722 Depth=3
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	addq	-136(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -352(%rbp)
	jmp	.LBB45_731
.LBB45_730:                             # %if.else.2389
                                        #   in Loop: Header=BB45_722 Depth=3
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	40(%rcx), %rax
	addq	-136(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -352(%rbp)
.LBB45_731:                             # %if.end.2397
                                        #   in Loop: Header=BB45_722 Depth=3
	jmp	.LBB45_732
.LBB45_732:                             # %while.cond.2398
                                        #   Parent Loop BB45_407 Depth=1
                                        #     Parent Loop BB45_409 Depth=2
                                        #       Parent Loop BB45_722 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	-352(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	setne	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB45_733
	jmp	.LBB45_734
.LBB45_733:                             # %while.body.2404
                                        #   in Loop: Header=BB45_732 Depth=4
	movq	-352(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -352(%rbp)
	movq	-136(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -136(%rbp)
	jmp	.LBB45_732
.LBB45_734:                             # %while.end.2407
                                        #   in Loop: Header=BB45_722 Depth=3
	jmp	.LBB45_735
.LBB45_735:                             # %do.end.2408
                                        #   in Loop: Header=BB45_722 Depth=3
	jmp	.LBB45_736
.LBB45_736:                             # %if.end.2409
                                        #   in Loop: Header=BB45_722 Depth=3
	jmp	.LBB45_737
.LBB45_737:                             # %do.end.2410
                                        #   in Loop: Header=BB45_722 Depth=3
	movq	-24(%rbp), %rdi
	callq	UPDATE_SYNTAX_TABLE_BACKWARD
	movq	-24(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	char_quoted
	testb	$1, %al
	jne	.LBB45_762
# BB#738:                               # %if.then.2412
                                        #   in Loop: Header=BB45_722 Depth=3
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -1624(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1624(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB45_740
# BB#739:                               # %cond.true.2417
                                        #   in Loop: Header=BB45_722 Depth=3
	movq	-136(%rbp), %rdi
	callq	FETCH_MULTIBYTE_CHAR
	movl	%eax, -1628(%rbp)       # 4-byte Spill
	jmp	.LBB45_758
.LBB45_740:                             # %cond.false.2419
                                        #   in Loop: Header=BB45_722 Depth=3
	movb	$1, %al
	testb	$1, %al
	jne	.LBB45_741
	jmp	.LBB45_745
.LBB45_741:                             # %cond.true.2420
                                        #   in Loop: Header=BB45_722 Depth=3
	movq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB45_743
# BB#742:                               # %cond.true.2425
                                        #   in Loop: Header=BB45_722 Depth=3
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -1640(%rbp)       # 8-byte Spill
	jmp	.LBB45_744
.LBB45_743:                             # %cond.false.2428
                                        #   in Loop: Header=BB45_722 Depth=3
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -1640(%rbp)       # 8-byte Spill
	jmp	.LBB45_744
.LBB45_744:                             # %cond.end.2429
                                        #   in Loop: Header=BB45_722 Depth=3
	movq	-1640(%rbp), %rax       # 8-byte Reload
	addq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$0, %edx
	cmpl	$128, %edx
	jb	.LBB45_749
	jmp	.LBB45_753
.LBB45_745:                             # %cond.false.2440
                                        #   in Loop: Header=BB45_722 Depth=3
	movq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB45_747
# BB#746:                               # %cond.true.2445
                                        #   in Loop: Header=BB45_722 Depth=3
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -1648(%rbp)       # 8-byte Spill
	jmp	.LBB45_748
.LBB45_747:                             # %cond.false.2448
                                        #   in Loop: Header=BB45_722 Depth=3
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -1648(%rbp)       # 8-byte Spill
	jmp	.LBB45_748
.LBB45_748:                             # %cond.end.2449
                                        #   in Loop: Header=BB45_722 Depth=3
	movq	-1648(%rbp), %rax       # 8-byte Reload
	addq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, %eax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB45_753
.LBB45_749:                             # %cond.true.2460
                                        #   in Loop: Header=BB45_722 Depth=3
	movq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB45_751
# BB#750:                               # %cond.true.2465
                                        #   in Loop: Header=BB45_722 Depth=3
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -1656(%rbp)       # 8-byte Spill
	jmp	.LBB45_752
.LBB45_751:                             # %cond.false.2468
                                        #   in Loop: Header=BB45_722 Depth=3
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -1656(%rbp)       # 8-byte Spill
	jmp	.LBB45_752
.LBB45_752:                             # %cond.end.2469
                                        #   in Loop: Header=BB45_722 Depth=3
	movq	-1656(%rbp), %rax       # 8-byte Reload
	addq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, -1660(%rbp)       # 4-byte Spill
	jmp	.LBB45_757
.LBB45_753:                             # %cond.false.2477
                                        #   in Loop: Header=BB45_722 Depth=3
	movq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB45_755
# BB#754:                               # %cond.true.2482
                                        #   in Loop: Header=BB45_722 Depth=3
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -1672(%rbp)       # 8-byte Spill
	jmp	.LBB45_756
.LBB45_755:                             # %cond.false.2485
                                        #   in Loop: Header=BB45_722 Depth=3
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -1672(%rbp)       # 8-byte Spill
	jmp	.LBB45_756
.LBB45_756:                             # %cond.end.2486
                                        #   in Loop: Header=BB45_722 Depth=3
	movq	-1672(%rbp), %rax       # 8-byte Reload
	addq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$4194048, %edx          # imm = 0x3FFF00
	movl	%edx, -1660(%rbp)       # 4-byte Spill
.LBB45_757:                             # %cond.end.2495
                                        #   in Loop: Header=BB45_722 Depth=3
	movl	-1660(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1628(%rbp)       # 4-byte Spill
.LBB45_758:                             # %cond.end.2497
                                        #   in Loop: Header=BB45_722 Depth=3
	movl	-1628(%rbp), %eax       # 4-byte Reload
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jne	.LBB45_761
# BB#759:                               # %land.lhs.true.2501
                                        #   in Loop: Header=BB45_722 Depth=3
	movl	-68(%rbp), %edi
	movb	-161(%rbp), %al
	andb	$1, %al
	movzbl	%al, %esi
	callq	syntax_multibyte
	cmpl	$7, %eax
	jne	.LBB45_761
# BB#760:                               # %if.then.2506
                                        #   in Loop: Header=BB45_409 Depth=2
	jmp	.LBB45_763
.LBB45_761:                             # %if.end.2507
                                        #   in Loop: Header=BB45_722 Depth=3
	jmp	.LBB45_762
.LBB45_762:                             # %if.end.2508
                                        #   in Loop: Header=BB45_722 Depth=3
	jmp	.LBB45_722
.LBB45_763:                             # %while.end.2509
                                        #   in Loop: Header=BB45_409 Depth=2
	cmpq	$0, -40(%rbp)
	jne	.LBB45_766
# BB#764:                               # %land.lhs.true.2511
                                        #   in Loop: Header=BB45_409 Depth=2
	testb	$1, -41(%rbp)
	je	.LBB45_766
# BB#765:                               # %if.then.2514
                                        #   in Loop: Header=BB45_407 Depth=1
	jmp	.LBB45_772
.LBB45_766:                             # %if.end.2515
                                        #   in Loop: Header=BB45_409 Depth=2
	jmp	.LBB45_768
.LBB45_767:                             # %sw.default.2516
                                        #   in Loop: Header=BB45_409 Depth=2
	jmp	.LBB45_768
.LBB45_768:                             # %sw.epilog.2517
                                        #   in Loop: Header=BB45_409 Depth=2
	jmp	.LBB45_409
.LBB45_769:                             # %while.end.2518
	cmpq	$0, -40(%rbp)
	je	.LBB45_771
# BB#770:                               # %if.then.2520
	jmp	.LBB45_774
.LBB45_771:                             # %if.end.2521
	xorl	%edi, %edi
	movb	$0, immediate_quit
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)
	jmp	.LBB45_775
.LBB45_772:                             # %done2
                                        #   in Loop: Header=BB45_407 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB45_407
.LBB45_773:                             # %while.end.2524
	movb	$0, immediate_quit
	movq	-24(%rbp), %rdi
	callq	make_natnum
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB45_775
.LBB45_774:                             # %lose
	movl	$828, %edi              # imm = 0x33C
	callq	builtin_lisp_symbol
	movabsq	$.L.str.62, %rdi
	movq	%rax, -1680(%rbp)       # 8-byte Spill
	callq	build_string
	movq	-120(%rbp), %rdi
	shlq	$2, %rdi
	addq	$2, %rdi
	movq	-24(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	-1680(%rbp), %rdx       # 8-byte Reload
	movq	%rdi, -1688(%rbp)       # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rsi
	movq	-1688(%rbp), %rdx       # 8-byte Reload
	callq	xsignal3
.LBB45_775:                             # %return
	movq	-16(%rbp), %rax
	addq	$1704, %rsp             # imm = 0x6A8
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end45:
	.size	scan_lists, .Lfunc_end45-scan_lists
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI45_0:
	.quad	.LBB45_505
	.quad	.LBB45_505
	.quad	.LBB45_644
	.quad	.LBB45_641
	.quad	.LBB45_767
	.quad	.LBB45_701
	.quad	.LBB45_598
	.quad	.LBB45_505
	.quad	.LBB45_505
	.quad	.LBB45_767
	.quad	.LBB45_650
	.quad	.LBB45_767
	.quad	.LBB45_655
	.quad	.LBB45_655
.LJTI45_1:
	.quad	.LBB45_133
	.quad	.LBB45_133
	.quad	.LBB45_278
	.quad	.LBB45_281
	.quad	.LBB45_400
	.quad	.LBB45_287
	.quad	.LBB45_231
	.quad	.LBB45_111
	.quad	.LBB45_111
	.quad	.LBB45_205
	.quad	.LBB45_400
	.quad	.LBB45_400
	.quad	.LBB45_204
	.quad	.LBB45_287

	.text
	.globl	Fscan_sexps
	.align	16, 0x90
	.type	Fscan_sexps,@function
Fscan_sexps:                            # @Fscan_sexps
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	andq	$7, %rsi
	movl	%esi, %eax
	andl	$-5, %eax
	cmpl	$2, %eax
	jne	.LBB46_2
# BB#1:                                 # %cond.true
	jmp	.LBB46_3
.LBB46_2:                               # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB46_3:                               # %cond.end
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB46_5
# BB#4:                                 # %cond.true.8
	jmp	.LBB46_6
.LBB46_5:                               # %cond.false.9
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB46_6:                               # %cond.end.11
	xorl	%eax, %eax
	movl	%eax, %edx
	movl	$1, %ecx
	movq	-8(%rbp), %rsi
	sarq	$2, %rsi
	movq	-16(%rbp), %rdi
	sarq	$2, %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-40(%rbp), %rsi         # 8-byte Reload
	callq	scan_lists
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end46:
	.size	Fscan_sexps, .Lfunc_end46-Fscan_sexps
	.cfi_endproc

	.globl	Fbackward_prefix_chars
	.align	16, 0x90
	.type	Fbackward_prefix_chars,@function
Fbackward_prefix_chars:                 # @Fbackward_prefix_chars
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
	subq	$160, %rsp
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, -24(%rbp)
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	movq	%rax, -32(%rbp)
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, -40(%rbp)
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jg	.LBB47_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	set_point_both
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB47_58
.LBB47_2:                               # %if.end
	movq	$-1, %rsi
	movq	-40(%rbp), %rdi
	callq	SETUP_SYNTAX_TABLE
# BB#3:                                 # %do.body
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB47_5
# BB#4:                                 # %if.then.8
	movq	-48(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB47_14
.LBB47_5:                               # %if.else
	jmp	.LBB47_6
.LBB47_6:                               # %do.body.10
	movq	-48(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jge	.LBB47_8
# BB#7:                                 # %if.then.13
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	addq	-48(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB47_9
.LBB47_8:                               # %if.else.17
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	40(%rcx), %rax
	addq	-48(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -64(%rbp)
.LBB47_9:                               # %if.end.24
	jmp	.LBB47_10
.LBB47_10:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	setne	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB47_11
	jmp	.LBB47_12
.LBB47_11:                              # %while.body
                                        #   in Loop: Header=BB47_10 Depth=1
	movq	-64(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB47_10
.LBB47_12:                              # %while.end
	jmp	.LBB47_13
.LBB47_13:                              # %do.end
	jmp	.LBB47_14
.LBB47_14:                              # %if.end.28
	jmp	.LBB47_15
.LBB47_15:                              # %do.end.29
	jmp	.LBB47_16
.LBB47_16:                              # %while.cond.30
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB47_51 Depth 2
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	char_quoted
	xorl	%ecx, %ecx
	movb	%cl, %dl
	testb	$1, %al
	movb	%dl, -81(%rbp)          # 1-byte Spill
	jne	.LBB47_40
# BB#17:                                # %land.rhs
                                        #   in Loop: Header=BB47_16 Depth=1
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB47_19
# BB#18:                                # %cond.true
                                        #   in Loop: Header=BB47_16 Depth=1
	movq	-48(%rbp), %rdi
	callq	FETCH_MULTIBYTE_CHAR
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB47_37
.LBB47_19:                              # %cond.false
                                        #   in Loop: Header=BB47_16 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB47_20
	jmp	.LBB47_24
.LBB47_20:                              # %cond.true.37
                                        #   in Loop: Header=BB47_16 Depth=1
	movq	-48(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB47_22
# BB#21:                                # %cond.true.42
                                        #   in Loop: Header=BB47_16 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB47_23
.LBB47_22:                              # %cond.false.45
                                        #   in Loop: Header=BB47_16 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB47_23
.LBB47_23:                              # %cond.end
                                        #   in Loop: Header=BB47_16 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	addq	-48(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$0, %edx
	cmpl	$128, %edx
	jb	.LBB47_28
	jmp	.LBB47_32
.LBB47_24:                              # %cond.false.55
                                        #   in Loop: Header=BB47_16 Depth=1
	movq	-48(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB47_26
# BB#25:                                # %cond.true.60
                                        #   in Loop: Header=BB47_16 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB47_27
.LBB47_26:                              # %cond.false.63
                                        #   in Loop: Header=BB47_16 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB47_27
.LBB47_27:                              # %cond.end.64
                                        #   in Loop: Header=BB47_16 Depth=1
	movq	-120(%rbp), %rax        # 8-byte Reload
	addq	-48(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, %eax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB47_32
.LBB47_28:                              # %cond.true.75
                                        #   in Loop: Header=BB47_16 Depth=1
	movq	-48(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB47_30
# BB#29:                                # %cond.true.80
                                        #   in Loop: Header=BB47_16 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB47_31
.LBB47_30:                              # %cond.false.83
                                        #   in Loop: Header=BB47_16 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB47_31
.LBB47_31:                              # %cond.end.84
                                        #   in Loop: Header=BB47_16 Depth=1
	movq	-128(%rbp), %rax        # 8-byte Reload
	addq	-48(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, -132(%rbp)        # 4-byte Spill
	jmp	.LBB47_36
.LBB47_32:                              # %cond.false.92
                                        #   in Loop: Header=BB47_16 Depth=1
	movq	-48(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB47_34
# BB#33:                                # %cond.true.97
                                        #   in Loop: Header=BB47_16 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB47_35
.LBB47_34:                              # %cond.false.100
                                        #   in Loop: Header=BB47_16 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB47_35
.LBB47_35:                              # %cond.end.101
                                        #   in Loop: Header=BB47_16 Depth=1
	movq	-144(%rbp), %rax        # 8-byte Reload
	addq	-48(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$4194048, %edx          # imm = 0x3FFF00
	movl	%edx, -132(%rbp)        # 4-byte Spill
.LBB47_36:                              # %cond.end.110
                                        #   in Loop: Header=BB47_16 Depth=1
	movl	-132(%rbp), %eax        # 4-byte Reload
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB47_37:                              # %cond.end.112
                                        #   in Loop: Header=BB47_16 Depth=1
	movl	-100(%rbp), %eax        # 4-byte Reload
	movl	$1, %esi
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %edi
	callq	syntax_property
	movb	$1, %cl
	cmpl	$6, %eax
	movb	%cl, -145(%rbp)         # 1-byte Spill
	je	.LBB47_39
# BB#38:                                # %lor.rhs
                                        #   in Loop: Header=BB47_16 Depth=1
	movl	-52(%rbp), %edi
	callq	syntax_prefix_flag_p
	movb	%al, -145(%rbp)         # 1-byte Spill
.LBB47_39:                              # %lor.end
                                        #   in Loop: Header=BB47_16 Depth=1
	movb	-145(%rbp), %al         # 1-byte Reload
	movb	%al, -81(%rbp)          # 1-byte Spill
.LBB47_40:                              # %land.end
                                        #   in Loop: Header=BB47_16 Depth=1
	movb	-81(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB47_41
	jmp	.LBB47_57
.LBB47_41:                              # %while.body.119
                                        #   in Loop: Header=BB47_16 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jg	.LBB47_43
# BB#42:                                # %if.then.122
	jmp	.LBB47_57
.LBB47_43:                              # %if.end.123
                                        #   in Loop: Header=BB47_16 Depth=1
	jmp	.LBB47_44
.LBB47_44:                              # %do.body.124
                                        #   in Loop: Header=BB47_16 Depth=1
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB47_46
# BB#45:                                # %if.then.130
                                        #   in Loop: Header=BB47_16 Depth=1
	movq	-48(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB47_55
.LBB47_46:                              # %if.else.132
                                        #   in Loop: Header=BB47_16 Depth=1
	jmp	.LBB47_47
.LBB47_47:                              # %do.body.133
                                        #   in Loop: Header=BB47_16 Depth=1
	movq	-48(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jge	.LBB47_49
# BB#48:                                # %if.then.140
                                        #   in Loop: Header=BB47_16 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	addq	-48(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB47_50
.LBB47_49:                              # %if.else.145
                                        #   in Loop: Header=BB47_16 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	40(%rcx), %rax
	addq	-48(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -72(%rbp)
.LBB47_50:                              # %if.end.153
                                        #   in Loop: Header=BB47_16 Depth=1
	jmp	.LBB47_51
.LBB47_51:                              # %while.cond.154
                                        #   Parent Loop BB47_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-72(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	setne	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB47_52
	jmp	.LBB47_53
.LBB47_52:                              # %while.body.160
                                        #   in Loop: Header=BB47_51 Depth=2
	movq	-72(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB47_51
.LBB47_53:                              # %while.end.163
                                        #   in Loop: Header=BB47_16 Depth=1
	jmp	.LBB47_54
.LBB47_54:                              # %do.end.164
                                        #   in Loop: Header=BB47_16 Depth=1
	jmp	.LBB47_55
.LBB47_55:                              # %if.end.165
                                        #   in Loop: Header=BB47_16 Depth=1
	jmp	.LBB47_56
.LBB47_56:                              # %do.end.166
                                        #   in Loop: Header=BB47_16 Depth=1
	jmp	.LBB47_16
.LBB47_57:                              # %while.end.167
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	set_point_both
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB47_58:                              # %return
	movq	-8(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end47:
	.size	Fbackward_prefix_chars, .Lfunc_end47-Fbackward_prefix_chars
	.cfi_endproc

	.globl	Fparse_partial_sexp
	.align	16, 0x90
	.type	Fparse_partial_sexp,@function
Fparse_partial_sexp:                    # @Fparse_partial_sexp
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
	subq	$432, %rsp              # imm = 0x1B0
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-24(%rbp), %rcx
	movl	%eax, %edi
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB48_5
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB48_3
# BB#2:                                 # %cond.true
	jmp	.LBB48_4
.LBB48_3:                               # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -160(%rbp)        # 8-byte Spill
.LBB48_4:                               # %cond.end
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -144(%rbp)
	jmp	.LBB48_6
.LBB48_5:                               # %if.else
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	%rax, -144(%rbp)
.LBB48_6:                               # %if.end
	leaq	-8(%rbp), %rdi
	leaq	-16(%rbp), %rsi
	callq	validate_region
	movq	-8(%rbp), %rsi
	sarq	$2, %rsi
	movq	current_buffer, %rdi
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	callq	buf_charpos_to_bytepos
	xorl	%edi, %edi
	movq	-16(%rbp), %rsi
	sarq	$2, %rsi
	movq	-144(%rbp), %r8
	movq	-32(%rbp), %rcx
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	movq	%rsi, -192(%rbp)        # 8-byte Spill
	movq	%r8, -200(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-184(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rsi
	movq	%rsi, -208(%rbp)        # 8-byte Spill
	movb	%dl, -209(%rbp)         # 1-byte Spill
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB48_8
# BB#7:                                 # %cond.true.15
	xorl	%eax, %eax
	movl	%eax, -228(%rbp)        # 4-byte Spill
	jmp	.LBB48_9
.LBB48_8:                               # %cond.false.16
	movl	$899, %edi              # imm = 0x383
	movq	-48(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$1, %edi
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	-240(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	cmovel	%ecx, %edi
	movl	%edi, -228(%rbp)        # 4-byte Spill
.LBB48_9:                               # %cond.end.20
	movl	-228(%rbp), %eax        # 4-byte Reload
	leaq	-136(%rbp), %rcx
	movq	%rsp, %rdx
	movl	%eax, 8(%rdx)
	movq	-224(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, (%rdx)
	movb	-209(%rbp), %dil        # 1-byte Reload
	movzbl	%dil, %eax
	andl	$1, %eax
	leaq	-136(%rbp), %rdi
	movq	-168(%rbp), %rsi        # 8-byte Reload
	movq	-176(%rbp), %rdx        # 8-byte Reload
	movq	-192(%rbp), %r8         # 8-byte Reload
	movq	%rcx, -248(%rbp)        # 8-byte Spill
	movq	%r8, %rcx
	movq	-200(%rbp), %r8         # 8-byte Reload
	movl	%eax, %r9d
	callq	scan_sexps_forward
	movq	-80(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	set_point_both
	movq	-136(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	cmpq	$0, -88(%rbp)
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	jge	.LBB48_11
# BB#10:                                # %cond.true.24
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -264(%rbp)        # 8-byte Spill
	jmp	.LBB48_12
.LBB48_11:                              # %cond.false.26
	movq	-88(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
.LBB48_12:                              # %cond.end.30
	movq	-264(%rbp), %rax        # 8-byte Reload
	cmpq	$0, -96(%rbp)
	movq	%rax, -272(%rbp)        # 8-byte Spill
	jge	.LBB48_14
# BB#13:                                # %cond.true.34
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -280(%rbp)        # 8-byte Spill
	jmp	.LBB48_15
.LBB48_14:                              # %cond.false.36
	movq	-96(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
.LBB48_15:                              # %cond.end.40
	movq	-280(%rbp), %rax        # 8-byte Reload
	cmpl	$0, -128(%rbp)
	movq	%rax, -288(%rbp)        # 8-byte Spill
	jl	.LBB48_20
# BB#16:                                # %cond.true.44
	cmpl	$258, -128(%rbp)        # imm = 0x102
	jne	.LBB48_18
# BB#17:                                # %cond.true.48
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -296(%rbp)        # 8-byte Spill
	jmp	.LBB48_19
.LBB48_18:                              # %cond.false.50
	movslq	-128(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
.LBB48_19:                              # %cond.end.55
	movq	-296(%rbp), %rax        # 8-byte Reload
	movq	%rax, -304(%rbp)        # 8-byte Spill
	jmp	.LBB48_21
.LBB48_20:                              # %cond.false.57
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -304(%rbp)        # 8-byte Spill
.LBB48_21:                              # %cond.end.59
	movq	-304(%rbp), %rax        # 8-byte Reload
	cmpq	$0, -120(%rbp)
	movq	%rax, -312(%rbp)        # 8-byte Spill
	jge	.LBB48_23
# BB#22:                                # %cond.true.63
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -320(%rbp)        # 8-byte Spill
	jmp	.LBB48_27
.LBB48_23:                              # %cond.false.65
	cmpq	$0, -120(%rbp)
	jne	.LBB48_25
# BB#24:                                # %cond.true.69
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -328(%rbp)        # 8-byte Spill
	jmp	.LBB48_26
.LBB48_25:                              # %cond.false.71
	movq	-120(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
.LBB48_26:                              # %cond.end.75
	movq	-328(%rbp), %rax        # 8-byte Reload
	movq	%rax, -320(%rbp)        # 8-byte Spill
.LBB48_27:                              # %cond.end.77
	movq	-320(%rbp), %rax        # 8-byte Reload
	testb	$1, -108(%rbp)
	movq	%rax, -336(%rbp)        # 8-byte Spill
	je	.LBB48_29
# BB#28:                                # %cond.true.80
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -344(%rbp)        # 8-byte Spill
	jmp	.LBB48_30
.LBB48_29:                              # %cond.false.82
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -344(%rbp)        # 8-byte Spill
.LBB48_30:                              # %cond.end.84
	movq	-344(%rbp), %rax        # 8-byte Reload
	movq	-104(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	cmpl	$0, -112(%rbp)
	movq	%rax, -352(%rbp)        # 8-byte Spill
	movq	%rcx, -360(%rbp)        # 8-byte Spill
	je	.LBB48_35
# BB#31:                                # %cond.true.89
	cmpl	$257, -112(%rbp)        # imm = 0x101
	jne	.LBB48_33
# BB#32:                                # %cond.true.93
	movl	$899, %edi              # imm = 0x383
	callq	builtin_lisp_symbol
	movq	%rax, -368(%rbp)        # 8-byte Spill
	jmp	.LBB48_34
.LBB48_33:                              # %cond.false.95
	movslq	-112(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
.LBB48_34:                              # %cond.end.100
	movq	-368(%rbp), %rax        # 8-byte Reload
	movq	%rax, -376(%rbp)        # 8-byte Spill
	jmp	.LBB48_36
.LBB48_35:                              # %cond.false.102
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -376(%rbp)        # 8-byte Spill
.LBB48_36:                              # %cond.end.104
	movq	-376(%rbp), %rax        # 8-byte Reload
	cmpq	$0, -120(%rbp)
	movq	%rax, -384(%rbp)        # 8-byte Spill
	jne	.LBB48_38
# BB#37:                                # %lor.lhs.false
	cmpl	$0, -128(%rbp)
	jl	.LBB48_39
.LBB48_38:                              # %cond.true.111
	movq	-64(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	jmp	.LBB48_40
.LBB48_39:                              # %cond.false.114
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -392(%rbp)        # 8-byte Spill
.LBB48_40:                              # %cond.end.116
	movq	-392(%rbp), %rax        # 8-byte Reload
	xorl	%edi, %edi
	movq	-56(%rbp), %rcx
	movq	%rax, -400(%rbp)        # 8-byte Spill
	movq	%rcx, -408(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	addq	$432, %rsp              # imm = 0x1B0
	popq	%rbp
	retq
.Lfunc_end48:
	.size	Fparse_partial_sexp, .Lfunc_end48-Fparse_partial_sexp
	.cfi_endproc

	.align	16, 0x90
	.type	scan_sexps_forward,@function
scan_sexps_forward:                     # @scan_sexps_forward
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
	pushq	%r14
	pushq	%rbx
	subq	$3296, %rsp             # imm = 0xCE0
.Ltmp152:
	.cfi_offset %rbx, -32
.Ltmp153:
	.cfi_offset %r14, -24
	movb	%r9b, %al
	movl	24(%rbp), %r9d
	movq	16(%rbp), %r10
	leaq	-1792(%rbp), %r11
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	andb	$1, %al
	movb	%al, -57(%rbp)
	movq	%r10, -72(%rbp)
	movl	%r9d, -76(%rbp)
	movq	%r11, -1800(%rbp)
	addq	$1600, %r11             # imm = 0x640
	movq	%r11, -1808(%rbp)
	movb	$0, -1825(%rbp)
	cmpl	$-1, -76(%rbp)
	sete	%al
	andb	$1, %al
	movb	%al, -1861(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -1848(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rcx, -1856(%rbp)
	movq	-32(%rbp), %rcx
	movq	current_buffer, %rdx
	cmpq	752(%rdx), %rcx
	je	.LBB49_15
# BB#1:                                 # %if.then
	jmp	.LBB49_2
.LBB49_2:                               # %do.body
	xorl	%edi, %edi
	movq	-1848(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -1848(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -2008(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-2008(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB49_4
# BB#3:                                 # %if.then.5
	movq	-1856(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -1856(%rbp)
	jmp	.LBB49_13
.LBB49_4:                               # %if.else
	jmp	.LBB49_5
.LBB49_5:                               # %do.body.7
	movq	-1856(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -1856(%rbp)
	movq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jge	.LBB49_7
# BB#6:                                 # %if.then.10
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	addq	-1856(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -1896(%rbp)
	jmp	.LBB49_8
.LBB49_7:                               # %if.else.14
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	40(%rcx), %rax
	addq	-1856(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -1896(%rbp)
.LBB49_8:                               # %if.end
	jmp	.LBB49_9
.LBB49_9:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-1896(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	setne	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB49_10
	jmp	.LBB49_11
.LBB49_10:                              # %while.body
                                        #   in Loop: Header=BB49_9 Depth=1
	movq	-1896(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -1896(%rbp)
	movq	-1856(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -1856(%rbp)
	jmp	.LBB49_9
.LBB49_11:                              # %while.end
	jmp	.LBB49_12
.LBB49_12:                              # %do.end
	jmp	.LBB49_13
.LBB49_13:                              # %if.end.24
	jmp	.LBB49_14
.LBB49_14:                              # %do.end.25
	jmp	.LBB49_15
.LBB49_15:                              # %if.end.26
	movb	$1, immediate_quit
# BB#16:                                # %do.body.27
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -2016(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-2016(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB49_19
# BB#17:                                # %land.lhs.true
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -2024(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-2024(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB49_19
# BB#18:                                # %if.then.34
	callq	process_quit_flag
	jmp	.LBB49_22
.LBB49_19:                              # %if.else.35
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB49_21
# BB#20:                                # %if.then.36
	callq	process_pending_signals
.LBB49_21:                              # %if.end.37
	jmp	.LBB49_22
.LBB49_22:                              # %if.end.38
	jmp	.LBB49_23
.LBB49_23:                              # %do.end.39
	xorl	%edi, %edi
	movq	-72(%rbp), %rax
	movq	%rax, -2032(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-2032(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB49_25
# BB#24:                                # %if.then.43
	movq	$0, -1816(%rbp)
	movl	$-1, -160(%rbp)
	movq	$0, -152(%rbp)
	movl	$0, -144(%rbp)
	movq	$-1, -96(%rbp)
	jmp	.LBB49_58
.LBB49_25:                              # %if.else.44
	movq	-72(%rbp), %rdi
	callq	Fcar
	xorl	%edi, %edi
	movq	%rax, -1840(%rbp)
	movq	-1840(%rbp), %rax
	movq	%rax, -2040(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-2040(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB49_27
# BB#26:                                # %if.then.49
	movq	-1840(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -1816(%rbp)
	jmp	.LBB49_28
.LBB49_27:                              # %if.else.50
	movq	$0, -1816(%rbp)
.LBB49_28:                              # %if.end.51
	movq	-72(%rbp), %rdi
	callq	Fcdr
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	Fcdr
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	Fcdr
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	Fcar
	xorl	%edi, %edi
	movq	%rax, -1840(%rbp)
	movq	-1840(%rbp), %rax
	movq	%rax, -2048(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-2048(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB49_34
# BB#29:                                # %cond.true
	movq	-1840(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB49_30
	jmp	.LBB49_32
.LBB49_30:                              # %land.lhs.true.61
	movq	-1840(%rbp), %rax
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jg	.LBB49_32
# BB#31:                                # %cond.true.65
	movq	-1840(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -2056(%rbp)       # 8-byte Spill
	jmp	.LBB49_33
.LBB49_32:                              # %cond.false
	movl	$258, %eax              # imm = 0x102
	movl	%eax, %ecx
	movq	%rcx, -2056(%rbp)       # 8-byte Spill
	jmp	.LBB49_33
.LBB49_33:                              # %cond.end
	movq	-2056(%rbp), %rax       # 8-byte Reload
	movq	%rax, -2064(%rbp)       # 8-byte Spill
	jmp	.LBB49_35
.LBB49_34:                              # %cond.false.67
	movq	$-1, %rax
	movq	%rax, -2064(%rbp)       # 8-byte Spill
	jmp	.LBB49_35
.LBB49_35:                              # %cond.end.68
	movq	-2064(%rbp), %rax       # 8-byte Reload
	movl	%eax, %ecx
	movl	%ecx, -160(%rbp)
	movq	-72(%rbp), %rdi
	callq	Fcdr
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	Fcar
	xorl	%edi, %edi
	movq	%rax, -1840(%rbp)
	movq	-1840(%rbp), %rax
	movq	%rax, -2072(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-2072(%rbp), %rdx       # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB49_40
# BB#36:                                # %cond.true.77
	movq	-1840(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB49_38
# BB#37:                                # %cond.true.83
	movq	-1840(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -2080(%rbp)       # 8-byte Spill
	jmp	.LBB49_39
.LBB49_38:                              # %cond.false.85
	movq	$-1, %rax
	movq	%rax, -2080(%rbp)       # 8-byte Spill
	jmp	.LBB49_39
.LBB49_39:                              # %cond.end.86
	movq	-2080(%rbp), %rax       # 8-byte Reload
	movq	%rax, -2088(%rbp)       # 8-byte Spill
	jmp	.LBB49_41
.LBB49_40:                              # %cond.false.88
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -2088(%rbp)       # 8-byte Spill
	jmp	.LBB49_41
.LBB49_41:                              # %cond.end.89
	movq	-2088(%rbp), %rax       # 8-byte Reload
	movq	%rax, -152(%rbp)
	movq	-72(%rbp), %rdi
	callq	Fcdr
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	Fcar
	xorl	%edi, %edi
	movq	%rax, -1840(%rbp)
	movq	-1840(%rbp), %rax
	movq	%rax, -2096(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-2096(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	andb	$1, %dl
	movb	%dl, -1825(%rbp)
	movq	-72(%rbp), %rdi
	callq	Fcdr
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	Fcdr
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	Fcar
	xorl	%edi, %edi
	movq	%rax, -1840(%rbp)
	movq	-1840(%rbp), %rax
	movq	%rax, -2104(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-2104(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB49_43
# BB#42:                                # %cond.true.105
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -2112(%rbp)       # 8-byte Spill
	jmp	.LBB49_47
.LBB49_43:                              # %cond.false.106
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	$257, %eax              # imm = 0x101
	movl	%eax, %edx
	movq	-1840(%rbp), %rsi
	callq	RANGED_INTEGERP
	testb	$1, %al
	jne	.LBB49_44
	jmp	.LBB49_45
.LBB49_44:                              # %cond.true.109
	movq	-1840(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -2120(%rbp)       # 8-byte Spill
	jmp	.LBB49_46
.LBB49_45:                              # %cond.false.111
	movl	$257, %eax              # imm = 0x101
	movl	%eax, %ecx
	movq	%rcx, -2120(%rbp)       # 8-byte Spill
	jmp	.LBB49_46
.LBB49_46:                              # %cond.end.112
	movq	-2120(%rbp), %rax       # 8-byte Reload
	movq	%rax, -2112(%rbp)       # 8-byte Spill
.LBB49_47:                              # %cond.end.114
	movq	-2112(%rbp), %rax       # 8-byte Reload
	movl	%eax, %ecx
	movl	%ecx, -144(%rbp)
	movq	-72(%rbp), %rdi
	callq	Fcdr
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	Fcar
	movabsq	$-9223372036854775808, %rdi # imm = 0x8000000000000000
	movabsq	$9223372036854775807, %rdx # imm = 0x7FFFFFFFFFFFFFFF
	movq	%rax, -1840(%rbp)
	movq	-1840(%rbp), %rsi
	callq	RANGED_INTEGERP
	testb	$1, %al
	jne	.LBB49_48
	jmp	.LBB49_49
.LBB49_48:                              # %cond.true.122
	movq	-1840(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -2128(%rbp)       # 8-byte Spill
	jmp	.LBB49_50
.LBB49_49:                              # %cond.false.124
	movq	$-1, %rax
	movq	%rax, -2128(%rbp)       # 8-byte Spill
	jmp	.LBB49_50
.LBB49_50:                              # %cond.end.125
	movq	-2128(%rbp), %rax       # 8-byte Reload
	movq	%rax, -96(%rbp)
	movq	-72(%rbp), %rdi
	callq	Fcdr
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	Fcar
	movq	%rax, -1840(%rbp)
.LBB49_51:                              # %while.cond.130
                                        # =>This Inner Loop Header: Depth=1
	xorl	%edi, %edi
	movq	-1840(%rbp), %rax
	movq	%rax, -2136(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-2136(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB49_52
	jmp	.LBB49_57
.LBB49_52:                              # %while.body.135
                                        #   in Loop: Header=BB49_51 Depth=1
	movq	-1840(%rbp), %rdi
	callq	Fcar
	movabsq	$-9223372036854775808, %rdi # imm = 0x8000000000000000
	movabsq	$9223372036854775807, %rdx # imm = 0x7FFFFFFFFFFFFFFF
	movq	%rax, -1904(%rbp)
	movq	-1904(%rbp), %rsi
	callq	RANGED_INTEGERP
	testb	$1, %al
	jne	.LBB49_53
	jmp	.LBB49_54
.LBB49_53:                              # %if.then.138
                                        #   in Loop: Header=BB49_51 Depth=1
	movq	-1904(%rbp), %rax
	sarq	$2, %rax
	movq	-1800(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB49_54:                              # %if.end.140
                                        #   in Loop: Header=BB49_51 Depth=1
	movq	-1800(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -1800(%rbp)
	cmpq	-1808(%rbp), %rax
	jne	.LBB49_56
# BB#55:                                # %if.then.144
                                        #   in Loop: Header=BB49_51 Depth=1
	movq	-1800(%rbp), %rax
	addq	$-16, %rax
	movq	%rax, -1800(%rbp)
.LBB49_56:                              # %if.end.146
                                        #   in Loop: Header=BB49_51 Depth=1
	movq	-1800(%rbp), %rax
	movq	$-1, 8(%rax)
	movq	-1800(%rbp), %rax
	movq	$-1, (%rax)
	movq	-1840(%rbp), %rdi
	callq	Fcdr
	movq	%rax, -1840(%rbp)
	jmp	.LBB49_51
.LBB49_57:                              # %while.end.149
	jmp	.LBB49_58
.LBB49_58:                              # %if.end.150
	movl	$1, %eax
	movl	%eax, %esi
	movb	$0, -140(%rbp)
	movq	-1816(%rbp), %rcx
	movq	%rcx, -1824(%rbp)
	movq	-1800(%rbp), %rcx
	movq	$-1, 8(%rcx)
	movq	-1800(%rbp), %rcx
	movq	$-1, (%rcx)
	movq	-1848(%rbp), %rdi
	callq	SETUP_SYNTAX_TABLE
	xorl	%edi, %edi
	movq	current_buffer, %rcx
	movq	312(%rcx), %rcx
	movq	%rcx, -2144(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-2144(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB49_60
# BB#59:                                # %cond.true.157
	movq	-1856(%rbp), %rdi
	callq	FETCH_MULTIBYTE_CHAR
	movl	%eax, -2148(%rbp)       # 4-byte Spill
	jmp	.LBB49_64
.LBB49_60:                              # %cond.false.159
	movq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB49_62
# BB#61:                                # %cond.true.164
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -2160(%rbp)       # 8-byte Spill
	jmp	.LBB49_63
.LBB49_62:                              # %cond.false.167
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -2160(%rbp)       # 8-byte Spill
	jmp	.LBB49_63
.LBB49_63:                              # %cond.end.168
	movq	-2160(%rbp), %rax       # 8-byte Reload
	addq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, -2148(%rbp)       # 4-byte Spill
.LBB49_64:                              # %cond.end.175
	movl	-2148(%rbp), %eax       # 4-byte Reload
	movl	$1, %esi
	movl	%eax, -1884(%rbp)
	movl	-1884(%rbp), %edi
	callq	syntax_property_with_flags
	movl	%eax, -1860(%rbp)
	movq	-32(%rbp), %rdi
	callq	UPDATE_SYNTAX_TABLE_FORWARD
	cmpq	$0, -152(%rbp)
	je	.LBB49_66
# BB#65:                                # %if.then.180
	jmp	.LBB49_353
.LBB49_66:                              # %if.end.181
	cmpl	$0, -160(%rbp)
	jl	.LBB49_70
# BB#67:                                # %if.then.185
	cmpl	$258, -160(%rbp)        # imm = 0x102
	setne	%al
	andb	$1, %al
	movb	%al, -1862(%rbp)
	testb	$1, -1825(%rbp)
	je	.LBB49_69
# BB#68:                                # %if.then.191
	jmp	.LBB49_522
.LBB49_69:                              # %if.end.192
	jmp	.LBB49_447
.LBB49_70:                              # %if.else.193
	testb	$1, -1825(%rbp)
	je	.LBB49_72
# BB#71:                                # %if.then.195
	jmp	.LBB49_183
.LBB49_72:                              # %if.end.196
	jmp	.LBB49_73
.LBB49_73:                              # %if.end.197
	jmp	.LBB49_74
.LBB49_74:                              # %while.cond.198
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jge	.LBB49_620
# BB#75:                                # %while.body.201
                                        #   in Loop: Header=BB49_74 Depth=1
	jmp	.LBB49_76
.LBB49_76:                              # %do.body.202
                                        #   in Loop: Header=BB49_74 Depth=1
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -1848(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -1856(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -2168(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-2168(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB49_78
# BB#77:                                # %cond.true.207
                                        #   in Loop: Header=BB49_74 Depth=1
	movq	-1856(%rbp), %rdi
	callq	FETCH_MULTIBYTE_CHAR
	movl	%eax, -2172(%rbp)       # 4-byte Spill
	jmp	.LBB49_96
.LBB49_78:                              # %cond.false.209
                                        #   in Loop: Header=BB49_74 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB49_79
	jmp	.LBB49_83
.LBB49_79:                              # %cond.true.210
                                        #   in Loop: Header=BB49_74 Depth=1
	movq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB49_81
# BB#80:                                # %cond.true.215
                                        #   in Loop: Header=BB49_74 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -2184(%rbp)       # 8-byte Spill
	jmp	.LBB49_82
.LBB49_81:                              # %cond.false.218
                                        #   in Loop: Header=BB49_74 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -2184(%rbp)       # 8-byte Spill
	jmp	.LBB49_82
.LBB49_82:                              # %cond.end.219
                                        #   in Loop: Header=BB49_74 Depth=1
	movq	-2184(%rbp), %rax       # 8-byte Reload
	addq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$0, %edx
	cmpl	$128, %edx
	jb	.LBB49_87
	jmp	.LBB49_91
.LBB49_83:                              # %cond.false.230
                                        #   in Loop: Header=BB49_74 Depth=1
	movq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB49_85
# BB#84:                                # %cond.true.235
                                        #   in Loop: Header=BB49_74 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -2192(%rbp)       # 8-byte Spill
	jmp	.LBB49_86
.LBB49_85:                              # %cond.false.238
                                        #   in Loop: Header=BB49_74 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -2192(%rbp)       # 8-byte Spill
	jmp	.LBB49_86
.LBB49_86:                              # %cond.end.239
                                        #   in Loop: Header=BB49_74 Depth=1
	movq	-2192(%rbp), %rax       # 8-byte Reload
	addq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, %eax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB49_91
.LBB49_87:                              # %cond.true.250
                                        #   in Loop: Header=BB49_74 Depth=1
	movq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB49_89
# BB#88:                                # %cond.true.255
                                        #   in Loop: Header=BB49_74 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -2200(%rbp)       # 8-byte Spill
	jmp	.LBB49_90
.LBB49_89:                              # %cond.false.258
                                        #   in Loop: Header=BB49_74 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -2200(%rbp)       # 8-byte Spill
	jmp	.LBB49_90
.LBB49_90:                              # %cond.end.259
                                        #   in Loop: Header=BB49_74 Depth=1
	movq	-2200(%rbp), %rax       # 8-byte Reload
	addq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, -2204(%rbp)       # 4-byte Spill
	jmp	.LBB49_95
.LBB49_91:                              # %cond.false.267
                                        #   in Loop: Header=BB49_74 Depth=1
	movq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB49_93
# BB#92:                                # %cond.true.272
                                        #   in Loop: Header=BB49_74 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -2216(%rbp)       # 8-byte Spill
	jmp	.LBB49_94
.LBB49_93:                              # %cond.false.275
                                        #   in Loop: Header=BB49_74 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -2216(%rbp)       # 8-byte Spill
	jmp	.LBB49_94
.LBB49_94:                              # %cond.end.276
                                        #   in Loop: Header=BB49_74 Depth=1
	movq	-2216(%rbp), %rax       # 8-byte Reload
	addq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$4194048, %edx          # imm = 0x3FFF00
	movl	%edx, -2204(%rbp)       # 4-byte Spill
.LBB49_95:                              # %cond.end.285
                                        #   in Loop: Header=BB49_74 Depth=1
	movl	-2204(%rbp), %eax       # 4-byte Reload
	movl	%eax, -2172(%rbp)       # 4-byte Spill
.LBB49_96:                              # %cond.end.287
                                        #   in Loop: Header=BB49_74 Depth=1
	movl	-2172(%rbp), %eax       # 4-byte Reload
	movl	$1, %esi
	movl	%eax, -1884(%rbp)
	movl	-1884(%rbp), %edi
	callq	syntax_property_with_flags
	movl	%eax, -1860(%rbp)
# BB#97:                                # %do.body.290
                                        #   in Loop: Header=BB49_74 Depth=1
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -2224(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-2224(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB49_99
# BB#98:                                # %if.then.295
                                        #   in Loop: Header=BB49_74 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB49_114
.LBB49_99:                              # %if.else.297
                                        #   in Loop: Header=BB49_74 Depth=1
	jmp	.LBB49_100
.LBB49_100:                             # %do.body.298
                                        #   in Loop: Header=BB49_74 Depth=1
	movq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB49_102
# BB#101:                               # %cond.true.304
                                        #   in Loop: Header=BB49_74 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -2232(%rbp)       # 8-byte Spill
	jmp	.LBB49_103
.LBB49_102:                             # %cond.false.307
                                        #   in Loop: Header=BB49_74 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -2232(%rbp)       # 8-byte Spill
	jmp	.LBB49_103
.LBB49_103:                             # %cond.end.308
                                        #   in Loop: Header=BB49_74 Depth=1
	movq	-2232(%rbp), %rax       # 8-byte Reload
	addq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -1920(%rbp)
	movq	-1920(%rbp), %rax
	movzbl	(%rax), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	jne	.LBB49_105
# BB#104:                               # %cond.true.318
                                        #   in Loop: Header=BB49_74 Depth=1
	movl	$1, %eax
	movl	%eax, -2236(%rbp)       # 4-byte Spill
	jmp	.LBB49_112
.LBB49_105:                             # %cond.false.319
                                        #   in Loop: Header=BB49_74 Depth=1
	movq	-1920(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB49_107
# BB#106:                               # %cond.true.323
                                        #   in Loop: Header=BB49_74 Depth=1
	movl	$2, %eax
	movl	%eax, -2240(%rbp)       # 4-byte Spill
	jmp	.LBB49_111
.LBB49_107:                             # %cond.false.324
                                        #   in Loop: Header=BB49_74 Depth=1
	movq	-1920(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB49_109
# BB#108:                               # %cond.true.328
                                        #   in Loop: Header=BB49_74 Depth=1
	movl	$3, %eax
	movl	%eax, -2244(%rbp)       # 4-byte Spill
	jmp	.LBB49_110
.LBB49_109:                             # %cond.false.329
                                        #   in Loop: Header=BB49_74 Depth=1
	movl	$5, %eax
	movl	$4, %ecx
	movq	-1920(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$8, %esi
	cmpl	$0, %esi
	setne	%dil
	xorb	$-1, %dil
	testb	$1, %dil
	cmovnel	%ecx, %eax
	movl	%eax, -2244(%rbp)       # 4-byte Spill
.LBB49_110:                             # %cond.end.335
                                        #   in Loop: Header=BB49_74 Depth=1
	movl	-2244(%rbp), %eax       # 4-byte Reload
	movl	%eax, -2240(%rbp)       # 4-byte Spill
.LBB49_111:                             # %cond.end.337
                                        #   in Loop: Header=BB49_74 Depth=1
	movl	-2240(%rbp), %eax       # 4-byte Reload
	movl	%eax, -2236(%rbp)       # 4-byte Spill
.LBB49_112:                             # %cond.end.339
                                        #   in Loop: Header=BB49_74 Depth=1
	movl	-2236(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	addq	-40(%rbp), %rcx
	movq	%rcx, -40(%rbp)
# BB#113:                               # %do.end.343
                                        #   in Loop: Header=BB49_74 Depth=1
	jmp	.LBB49_114
.LBB49_114:                             # %if.end.344
                                        #   in Loop: Header=BB49_74 Depth=1
	jmp	.LBB49_115
.LBB49_115:                             # %do.end.345
                                        #   in Loop: Header=BB49_74 Depth=1
	movq	-32(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jge	.LBB49_117
# BB#116:                               # %if.then.348
                                        #   in Loop: Header=BB49_74 Depth=1
	movq	-32(%rbp), %rdi
	callq	UPDATE_SYNTAX_TABLE_FORWARD
.LBB49_117:                             # %if.end.349
                                        #   in Loop: Header=BB49_74 Depth=1
	jmp	.LBB49_118
.LBB49_118:                             # %do.end.350
                                        #   in Loop: Header=BB49_74 Depth=1
	movl	-1860(%rbp), %eax
	andl	$255, %eax
	movl	%eax, -172(%rbp)
	movq	-32(%rbp), %rcx
	cmpq	-48(%rbp), %rcx
	jge	.LBB49_171
# BB#119:                               # %land.lhs.true.354
                                        #   in Loop: Header=BB49_74 Depth=1
	movl	-1860(%rbp), %edi
	callq	SYNTAX_FLAGS_COMSTART_FIRST
	testb	$1, %al
	jne	.LBB49_120
	jmp	.LBB49_171
.LBB49_120:                             # %land.lhs.true.357
                                        #   in Loop: Header=BB49_74 Depth=1
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -2256(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-2256(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB49_122
# BB#121:                               # %cond.true.362
                                        #   in Loop: Header=BB49_74 Depth=1
	movq	-40(%rbp), %rdi
	callq	FETCH_MULTIBYTE_CHAR
	movl	%eax, -2260(%rbp)       # 4-byte Spill
	jmp	.LBB49_126
.LBB49_122:                             # %cond.false.364
                                        #   in Loop: Header=BB49_74 Depth=1
	movq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB49_124
# BB#123:                               # %cond.true.369
                                        #   in Loop: Header=BB49_74 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -2272(%rbp)       # 8-byte Spill
	jmp	.LBB49_125
.LBB49_124:                             # %cond.false.372
                                        #   in Loop: Header=BB49_74 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -2272(%rbp)       # 8-byte Spill
	jmp	.LBB49_125
.LBB49_125:                             # %cond.end.373
                                        #   in Loop: Header=BB49_74 Depth=1
	movq	-2272(%rbp), %rax       # 8-byte Reload
	addq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, -2260(%rbp)       # 4-byte Spill
.LBB49_126:                             # %cond.end.381
                                        #   in Loop: Header=BB49_74 Depth=1
	movl	-2260(%rbp), %eax       # 4-byte Reload
	movl	$1, %esi
	movl	%eax, -176(%rbp)
	movl	-176(%rbp), %edi
	callq	syntax_property_with_flags
	movl	%eax, -1908(%rbp)
	movl	-1908(%rbp), %edi
	callq	SYNTAX_FLAGS_COMSTART_SECOND
	testb	$1, %al
	jne	.LBB49_127
	jmp	.LBB49_171
.LBB49_127:                             # %if.then.386
                                        #   in Loop: Header=BB49_74 Depth=1
	movl	-1908(%rbp), %edi
	movl	-1860(%rbp), %esi
	callq	SYNTAX_FLAGS_COMMENT_STYLE
	movl	%eax, -144(%rbp)
	movl	-1860(%rbp), %edi
	callq	SYNTAX_FLAGS_COMMENT_NESTED
	andb	$1, %al
	movzbl	%al, %esi
	movl	-1908(%rbp), %edi
	movl	%esi, -2276(%rbp)       # 4-byte Spill
	callq	SYNTAX_FLAGS_COMMENT_NESTED
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movl	$1, %edi
	andb	$1, %al
	movzbl	%al, %ecx
	movl	-2276(%rbp), %edx       # 4-byte Reload
	orl	%ecx, %edx
	cmpl	$0, %edx
	setne	%al
	andb	$1, %al
	movb	%al, -177(%rbp)
	movb	-177(%rbp), %al
	testb	$1, %al
	cmovnel	%edi, %esi
	movslq	%esi, %r8
	movq	%r8, -152(%rbp)
	movq	-1848(%rbp), %r8
	movq	%r8, -96(%rbp)
# BB#128:                               # %do.body.401
                                        #   in Loop: Header=BB49_74 Depth=1
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -1848(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -1856(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -2288(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-2288(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB49_130
# BB#129:                               # %cond.true.406
                                        #   in Loop: Header=BB49_74 Depth=1
	movq	-1856(%rbp), %rdi
	callq	FETCH_MULTIBYTE_CHAR
	movl	%eax, -2292(%rbp)       # 4-byte Spill
	jmp	.LBB49_148
.LBB49_130:                             # %cond.false.408
                                        #   in Loop: Header=BB49_74 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB49_131
	jmp	.LBB49_135
.LBB49_131:                             # %cond.true.409
                                        #   in Loop: Header=BB49_74 Depth=1
	movq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB49_133
# BB#132:                               # %cond.true.414
                                        #   in Loop: Header=BB49_74 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -2304(%rbp)       # 8-byte Spill
	jmp	.LBB49_134
.LBB49_133:                             # %cond.false.417
                                        #   in Loop: Header=BB49_74 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -2304(%rbp)       # 8-byte Spill
	jmp	.LBB49_134
.LBB49_134:                             # %cond.end.418
                                        #   in Loop: Header=BB49_74 Depth=1
	movq	-2304(%rbp), %rax       # 8-byte Reload
	addq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$0, %edx
	cmpl	$128, %edx
	jb	.LBB49_139
	jmp	.LBB49_143
.LBB49_135:                             # %cond.false.429
                                        #   in Loop: Header=BB49_74 Depth=1
	movq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB49_137
# BB#136:                               # %cond.true.434
                                        #   in Loop: Header=BB49_74 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -2312(%rbp)       # 8-byte Spill
	jmp	.LBB49_138
.LBB49_137:                             # %cond.false.437
                                        #   in Loop: Header=BB49_74 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -2312(%rbp)       # 8-byte Spill
	jmp	.LBB49_138
.LBB49_138:                             # %cond.end.438
                                        #   in Loop: Header=BB49_74 Depth=1
	movq	-2312(%rbp), %rax       # 8-byte Reload
	addq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, %eax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB49_143
.LBB49_139:                             # %cond.true.449
                                        #   in Loop: Header=BB49_74 Depth=1
	movq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB49_141
# BB#140:                               # %cond.true.454
                                        #   in Loop: Header=BB49_74 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -2320(%rbp)       # 8-byte Spill
	jmp	.LBB49_142
.LBB49_141:                             # %cond.false.457
                                        #   in Loop: Header=BB49_74 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -2320(%rbp)       # 8-byte Spill
	jmp	.LBB49_142
.LBB49_142:                             # %cond.end.458
                                        #   in Loop: Header=BB49_74 Depth=1
	movq	-2320(%rbp), %rax       # 8-byte Reload
	addq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, -2324(%rbp)       # 4-byte Spill
	jmp	.LBB49_147
.LBB49_143:                             # %cond.false.466
                                        #   in Loop: Header=BB49_74 Depth=1
	movq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB49_145
# BB#144:                               # %cond.true.471
                                        #   in Loop: Header=BB49_74 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -2336(%rbp)       # 8-byte Spill
	jmp	.LBB49_146
.LBB49_145:                             # %cond.false.474
                                        #   in Loop: Header=BB49_74 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -2336(%rbp)       # 8-byte Spill
	jmp	.LBB49_146
.LBB49_146:                             # %cond.end.475
                                        #   in Loop: Header=BB49_74 Depth=1
	movq	-2336(%rbp), %rax       # 8-byte Reload
	addq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$4194048, %edx          # imm = 0x3FFF00
	movl	%edx, -2324(%rbp)       # 4-byte Spill
.LBB49_147:                             # %cond.end.484
                                        #   in Loop: Header=BB49_74 Depth=1
	movl	-2324(%rbp), %eax       # 4-byte Reload
	movl	%eax, -2292(%rbp)       # 4-byte Spill
.LBB49_148:                             # %cond.end.486
                                        #   in Loop: Header=BB49_74 Depth=1
	movl	-2292(%rbp), %eax       # 4-byte Reload
	movl	$1, %esi
	movl	%eax, -1884(%rbp)
	movl	-1884(%rbp), %edi
	callq	syntax_property_with_flags
	movl	%eax, -1860(%rbp)
# BB#149:                               # %do.body.489
                                        #   in Loop: Header=BB49_74 Depth=1
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -2344(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-2344(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB49_151
# BB#150:                               # %if.then.495
                                        #   in Loop: Header=BB49_74 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB49_166
.LBB49_151:                             # %if.else.497
                                        #   in Loop: Header=BB49_74 Depth=1
	jmp	.LBB49_152
.LBB49_152:                             # %do.body.498
                                        #   in Loop: Header=BB49_74 Depth=1
	movq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB49_154
# BB#153:                               # %cond.true.504
                                        #   in Loop: Header=BB49_74 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -2352(%rbp)       # 8-byte Spill
	jmp	.LBB49_155
.LBB49_154:                             # %cond.false.507
                                        #   in Loop: Header=BB49_74 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -2352(%rbp)       # 8-byte Spill
	jmp	.LBB49_155
.LBB49_155:                             # %cond.end.508
                                        #   in Loop: Header=BB49_74 Depth=1
	movq	-2352(%rbp), %rax       # 8-byte Reload
	addq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -1928(%rbp)
	movq	-1928(%rbp), %rax
	movzbl	(%rax), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	jne	.LBB49_157
# BB#156:                               # %cond.true.518
                                        #   in Loop: Header=BB49_74 Depth=1
	movl	$1, %eax
	movl	%eax, -2356(%rbp)       # 4-byte Spill
	jmp	.LBB49_164
.LBB49_157:                             # %cond.false.519
                                        #   in Loop: Header=BB49_74 Depth=1
	movq	-1928(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB49_159
# BB#158:                               # %cond.true.523
                                        #   in Loop: Header=BB49_74 Depth=1
	movl	$2, %eax
	movl	%eax, -2360(%rbp)       # 4-byte Spill
	jmp	.LBB49_163
.LBB49_159:                             # %cond.false.524
                                        #   in Loop: Header=BB49_74 Depth=1
	movq	-1928(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB49_161
# BB#160:                               # %cond.true.528
                                        #   in Loop: Header=BB49_74 Depth=1
	movl	$3, %eax
	movl	%eax, -2364(%rbp)       # 4-byte Spill
	jmp	.LBB49_162
.LBB49_161:                             # %cond.false.529
                                        #   in Loop: Header=BB49_74 Depth=1
	movl	$5, %eax
	movl	$4, %ecx
	movq	-1928(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$8, %esi
	cmpl	$0, %esi
	setne	%dil
	xorb	$-1, %dil
	testb	$1, %dil
	cmovnel	%ecx, %eax
	movl	%eax, -2364(%rbp)       # 4-byte Spill
.LBB49_162:                             # %cond.end.535
                                        #   in Loop: Header=BB49_74 Depth=1
	movl	-2364(%rbp), %eax       # 4-byte Reload
	movl	%eax, -2360(%rbp)       # 4-byte Spill
.LBB49_163:                             # %cond.end.537
                                        #   in Loop: Header=BB49_74 Depth=1
	movl	-2360(%rbp), %eax       # 4-byte Reload
	movl	%eax, -2356(%rbp)       # 4-byte Spill
.LBB49_164:                             # %cond.end.539
                                        #   in Loop: Header=BB49_74 Depth=1
	movl	-2356(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	addq	-40(%rbp), %rcx
	movq	%rcx, -40(%rbp)
# BB#165:                               # %do.end.543
                                        #   in Loop: Header=BB49_74 Depth=1
	jmp	.LBB49_166
.LBB49_166:                             # %if.end.544
                                        #   in Loop: Header=BB49_74 Depth=1
	jmp	.LBB49_167
.LBB49_167:                             # %do.end.545
                                        #   in Loop: Header=BB49_74 Depth=1
	movq	-32(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jge	.LBB49_169
# BB#168:                               # %if.then.548
                                        #   in Loop: Header=BB49_74 Depth=1
	movq	-32(%rbp), %rdi
	callq	UPDATE_SYNTAX_TABLE_FORWARD
.LBB49_169:                             # %if.end.549
                                        #   in Loop: Header=BB49_74 Depth=1
	jmp	.LBB49_170
.LBB49_170:                             # %do.end.550
                                        #   in Loop: Header=BB49_74 Depth=1
	movl	$11, -172(%rbp)
	jmp	.LBB49_177
.LBB49_171:                             # %if.else.551
                                        #   in Loop: Header=BB49_74 Depth=1
	cmpl	$14, -172(%rbp)
	jne	.LBB49_173
# BB#172:                               # %if.then.554
                                        #   in Loop: Header=BB49_74 Depth=1
	movl	$257, -144(%rbp)        # imm = 0x101
	movq	$-1, -152(%rbp)
	movq	-1848(%rbp), %rax
	movq	%rax, -96(%rbp)
	movl	$11, -172(%rbp)
	jmp	.LBB49_176
.LBB49_173:                             # %if.else.558
                                        #   in Loop: Header=BB49_74 Depth=1
	cmpl	$11, -172(%rbp)
	jne	.LBB49_175
# BB#174:                               # %if.then.561
                                        #   in Loop: Header=BB49_74 Depth=1
	xorl	%esi, %esi
	movl	-1860(%rbp), %edi
	callq	SYNTAX_FLAGS_COMMENT_STYLE
	movl	%eax, -144(%rbp)
	movl	-1860(%rbp), %edi
	callq	SYNTAX_FLAGS_COMMENT_NESTED
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movl	$1, %edi
	testb	$1, %al
	cmovnel	%edi, %esi
	movslq	%esi, %rcx
	movq	%rcx, -152(%rbp)
	movq	-1848(%rbp), %rcx
	movq	%rcx, -96(%rbp)
.LBB49_175:                             # %if.end.570
                                        #   in Loop: Header=BB49_74 Depth=1
	jmp	.LBB49_176
.LBB49_176:                             # %if.end.571
                                        #   in Loop: Header=BB49_74 Depth=1
	jmp	.LBB49_177
.LBB49_177:                             # %if.end.572
                                        #   in Loop: Header=BB49_74 Depth=1
	movl	-1860(%rbp), %edi
	callq	SYNTAX_FLAGS_PREFIX
	testb	$1, %al
	jne	.LBB49_178
	jmp	.LBB49_179
.LBB49_178:                             # %if.then.574
                                        #   in Loop: Header=BB49_74 Depth=1
	jmp	.LBB49_74
.LBB49_179:                             # %if.end.575
	movl	-172(%rbp), %eax
	addl	$-2, %eax
	movl	%eax, %ecx
	subl	$13, %eax
	movq	%rcx, -2376(%rbp)       # 8-byte Spill
	movl	%eax, -2380(%rbp)       # 4-byte Spill
	ja	.LBB49_618
# BB#630:                               # %if.end.575
	movq	-2376(%rbp), %rax       # 8-byte Reload
	movq	.LJTI49_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB49_180:                             # %sw.bb
	testb	$1, -57(%rbp)
	je	.LBB49_182
# BB#181:                               # %if.then.577
	jmp	.LBB49_621
.LBB49_182:                             # %if.end.578
	movq	-1848(%rbp), %rax
	movq	-1800(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB49_183:                             # %startquoted
	movq	-32(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB49_185
# BB#184:                               # %if.then.582
	jmp	.LBB49_622
.LBB49_185:                             # %if.end.583
	jmp	.LBB49_186
.LBB49_186:                             # %do.body.584
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -1848(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -1856(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -2392(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-2392(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB49_188
# BB#187:                               # %cond.true.589
	movq	-1856(%rbp), %rdi
	callq	FETCH_MULTIBYTE_CHAR
	movl	%eax, -2396(%rbp)       # 4-byte Spill
	jmp	.LBB49_206
.LBB49_188:                             # %cond.false.591
	movb	$1, %al
	testb	$1, %al
	jne	.LBB49_189
	jmp	.LBB49_193
.LBB49_189:                             # %cond.true.592
	movq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB49_191
# BB#190:                               # %cond.true.597
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -2408(%rbp)       # 8-byte Spill
	jmp	.LBB49_192
.LBB49_191:                             # %cond.false.600
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -2408(%rbp)       # 8-byte Spill
	jmp	.LBB49_192
.LBB49_192:                             # %cond.end.601
	movq	-2408(%rbp), %rax       # 8-byte Reload
	addq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$0, %edx
	cmpl	$128, %edx
	jb	.LBB49_197
	jmp	.LBB49_201
.LBB49_193:                             # %cond.false.612
	movq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB49_195
# BB#194:                               # %cond.true.617
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -2416(%rbp)       # 8-byte Spill
	jmp	.LBB49_196
.LBB49_195:                             # %cond.false.620
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -2416(%rbp)       # 8-byte Spill
	jmp	.LBB49_196
.LBB49_196:                             # %cond.end.621
	movq	-2416(%rbp), %rax       # 8-byte Reload
	addq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, %eax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB49_201
.LBB49_197:                             # %cond.true.632
	movq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB49_199
# BB#198:                               # %cond.true.637
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -2424(%rbp)       # 8-byte Spill
	jmp	.LBB49_200
.LBB49_199:                             # %cond.false.640
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -2424(%rbp)       # 8-byte Spill
	jmp	.LBB49_200
.LBB49_200:                             # %cond.end.641
	movq	-2424(%rbp), %rax       # 8-byte Reload
	addq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, -2428(%rbp)       # 4-byte Spill
	jmp	.LBB49_205
.LBB49_201:                             # %cond.false.649
	movq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB49_203
# BB#202:                               # %cond.true.654
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -2440(%rbp)       # 8-byte Spill
	jmp	.LBB49_204
.LBB49_203:                             # %cond.false.657
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -2440(%rbp)       # 8-byte Spill
	jmp	.LBB49_204
.LBB49_204:                             # %cond.end.658
	movq	-2440(%rbp), %rax       # 8-byte Reload
	addq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$4194048, %edx          # imm = 0x3FFF00
	movl	%edx, -2428(%rbp)       # 4-byte Spill
.LBB49_205:                             # %cond.end.667
	movl	-2428(%rbp), %eax       # 4-byte Reload
	movl	%eax, -2396(%rbp)       # 4-byte Spill
.LBB49_206:                             # %cond.end.669
	movl	-2396(%rbp), %eax       # 4-byte Reload
	movl	$1, %esi
	movl	%eax, -1884(%rbp)
	movl	-1884(%rbp), %edi
	callq	syntax_property_with_flags
	movl	%eax, -1860(%rbp)
# BB#207:                               # %do.body.672
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -2448(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-2448(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB49_209
# BB#208:                               # %if.then.678
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB49_224
.LBB49_209:                             # %if.else.680
	jmp	.LBB49_210
.LBB49_210:                             # %do.body.681
	movq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB49_212
# BB#211:                               # %cond.true.687
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -2456(%rbp)       # 8-byte Spill
	jmp	.LBB49_213
.LBB49_212:                             # %cond.false.690
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -2456(%rbp)       # 8-byte Spill
	jmp	.LBB49_213
.LBB49_213:                             # %cond.end.691
	movq	-2456(%rbp), %rax       # 8-byte Reload
	addq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -1936(%rbp)
	movq	-1936(%rbp), %rax
	movzbl	(%rax), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	jne	.LBB49_215
# BB#214:                               # %cond.true.701
	movl	$1, %eax
	movl	%eax, -2460(%rbp)       # 4-byte Spill
	jmp	.LBB49_222
.LBB49_215:                             # %cond.false.702
	movq	-1936(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB49_217
# BB#216:                               # %cond.true.706
	movl	$2, %eax
	movl	%eax, -2464(%rbp)       # 4-byte Spill
	jmp	.LBB49_221
.LBB49_217:                             # %cond.false.707
	movq	-1936(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB49_219
# BB#218:                               # %cond.true.711
	movl	$3, %eax
	movl	%eax, -2468(%rbp)       # 4-byte Spill
	jmp	.LBB49_220
.LBB49_219:                             # %cond.false.712
	movl	$5, %eax
	movl	$4, %ecx
	movq	-1936(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$8, %esi
	cmpl	$0, %esi
	setne	%dil
	xorb	$-1, %dil
	testb	$1, %dil
	cmovnel	%ecx, %eax
	movl	%eax, -2468(%rbp)       # 4-byte Spill
.LBB49_220:                             # %cond.end.718
	movl	-2468(%rbp), %eax       # 4-byte Reload
	movl	%eax, -2464(%rbp)       # 4-byte Spill
.LBB49_221:                             # %cond.end.720
	movl	-2464(%rbp), %eax       # 4-byte Reload
	movl	%eax, -2460(%rbp)       # 4-byte Spill
.LBB49_222:                             # %cond.end.722
	movl	-2460(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	addq	-40(%rbp), %rcx
	movq	%rcx, -40(%rbp)
# BB#223:                               # %do.end.726
	jmp	.LBB49_224
.LBB49_224:                             # %if.end.727
	jmp	.LBB49_225
.LBB49_225:                             # %do.end.728
	movq	-32(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jge	.LBB49_227
# BB#226:                               # %if.then.731
	movq	-32(%rbp), %rdi
	callq	UPDATE_SYNTAX_TABLE_FORWARD
.LBB49_227:                             # %if.end.732
	jmp	.LBB49_228
.LBB49_228:                             # %do.end.733
	jmp	.LBB49_232
.LBB49_229:                             # %sw.bb.734
	testb	$1, -57(%rbp)
	je	.LBB49_231
# BB#230:                               # %if.then.736
	jmp	.LBB49_621
.LBB49_231:                             # %if.end.737
	movq	-1848(%rbp), %rax
	movq	-1800(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB49_232:                             # %symstarted
	jmp	.LBB49_233
.LBB49_233:                             # %while.cond.739
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jge	.LBB49_347
# BB#234:                               # %while.body.742
                                        #   in Loop: Header=BB49_233 Depth=1
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -2480(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-2480(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB49_236
# BB#235:                               # %cond.true.747
                                        #   in Loop: Header=BB49_233 Depth=1
	movq	-40(%rbp), %rdi
	callq	FETCH_MULTIBYTE_CHAR
	movl	%eax, -2484(%rbp)       # 4-byte Spill
	jmp	.LBB49_254
.LBB49_236:                             # %cond.false.749
                                        #   in Loop: Header=BB49_233 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB49_237
	jmp	.LBB49_241
.LBB49_237:                             # %cond.true.750
                                        #   in Loop: Header=BB49_233 Depth=1
	movq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB49_239
# BB#238:                               # %cond.true.755
                                        #   in Loop: Header=BB49_233 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -2496(%rbp)       # 8-byte Spill
	jmp	.LBB49_240
.LBB49_239:                             # %cond.false.758
                                        #   in Loop: Header=BB49_233 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -2496(%rbp)       # 8-byte Spill
	jmp	.LBB49_240
.LBB49_240:                             # %cond.end.759
                                        #   in Loop: Header=BB49_233 Depth=1
	movq	-2496(%rbp), %rax       # 8-byte Reload
	addq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$0, %edx
	cmpl	$128, %edx
	jb	.LBB49_245
	jmp	.LBB49_249
.LBB49_241:                             # %cond.false.770
                                        #   in Loop: Header=BB49_233 Depth=1
	movq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB49_243
# BB#242:                               # %cond.true.775
                                        #   in Loop: Header=BB49_233 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -2504(%rbp)       # 8-byte Spill
	jmp	.LBB49_244
.LBB49_243:                             # %cond.false.778
                                        #   in Loop: Header=BB49_233 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -2504(%rbp)       # 8-byte Spill
	jmp	.LBB49_244
.LBB49_244:                             # %cond.end.779
                                        #   in Loop: Header=BB49_233 Depth=1
	movq	-2504(%rbp), %rax       # 8-byte Reload
	addq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, %eax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB49_249
.LBB49_245:                             # %cond.true.790
                                        #   in Loop: Header=BB49_233 Depth=1
	movq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB49_247
# BB#246:                               # %cond.true.795
                                        #   in Loop: Header=BB49_233 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -2512(%rbp)       # 8-byte Spill
	jmp	.LBB49_248
.LBB49_247:                             # %cond.false.798
                                        #   in Loop: Header=BB49_233 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -2512(%rbp)       # 8-byte Spill
	jmp	.LBB49_248
.LBB49_248:                             # %cond.end.799
                                        #   in Loop: Header=BB49_233 Depth=1
	movq	-2512(%rbp), %rax       # 8-byte Reload
	addq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, -2516(%rbp)       # 4-byte Spill
	jmp	.LBB49_253
.LBB49_249:                             # %cond.false.807
                                        #   in Loop: Header=BB49_233 Depth=1
	movq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB49_251
# BB#250:                               # %cond.true.812
                                        #   in Loop: Header=BB49_233 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -2528(%rbp)       # 8-byte Spill
	jmp	.LBB49_252
.LBB49_251:                             # %cond.false.815
                                        #   in Loop: Header=BB49_233 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -2528(%rbp)       # 8-byte Spill
	jmp	.LBB49_252
.LBB49_252:                             # %cond.end.816
                                        #   in Loop: Header=BB49_233 Depth=1
	movq	-2528(%rbp), %rax       # 8-byte Reload
	addq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$4194048, %edx          # imm = 0x3FFF00
	movl	%edx, -2516(%rbp)       # 4-byte Spill
.LBB49_253:                             # %cond.end.825
                                        #   in Loop: Header=BB49_233 Depth=1
	movl	-2516(%rbp), %eax       # 4-byte Reload
	movl	%eax, -2484(%rbp)       # 4-byte Spill
.LBB49_254:                             # %cond.end.827
                                        #   in Loop: Header=BB49_233 Depth=1
	movl	-2484(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1940(%rbp)
	movl	$1, %esi
	movl	%eax, %edi
	callq	syntax_property
	movl	%eax, %esi
	addl	$-2, %esi
	subl	$2, %esi
	movl	%eax, -2532(%rbp)       # 4-byte Spill
	movl	%esi, -2536(%rbp)       # 4-byte Spill
	jb	.LBB49_301
	jmp	.LBB49_632
.LBB49_632:                             # %cond.end.827
                                        #   in Loop: Header=BB49_233 Depth=1
	movl	-2532(%rbp), %eax       # 4-byte Reload
	subl	$6, %eax
	movl	%eax, -2540(%rbp)       # 4-byte Spill
	je	.LBB49_301
	jmp	.LBB49_633
.LBB49_633:                             # %cond.end.827
                                        #   in Loop: Header=BB49_233 Depth=1
	movl	-2532(%rbp), %eax       # 4-byte Reload
	addl	$-9, %eax
	subl	$1, %eax
	movl	%eax, -2544(%rbp)       # 4-byte Spill
	ja	.LBB49_302
	jmp	.LBB49_255
.LBB49_255:                             # %sw.bb.830
                                        #   in Loop: Header=BB49_233 Depth=1
	jmp	.LBB49_256
.LBB49_256:                             # %do.body.831
                                        #   in Loop: Header=BB49_233 Depth=1
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -1848(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -1856(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -2552(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-2552(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB49_258
# BB#257:                               # %cond.true.836
                                        #   in Loop: Header=BB49_233 Depth=1
	movq	-1856(%rbp), %rdi
	callq	FETCH_MULTIBYTE_CHAR
	movl	%eax, -2556(%rbp)       # 4-byte Spill
	jmp	.LBB49_276
.LBB49_258:                             # %cond.false.838
                                        #   in Loop: Header=BB49_233 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB49_259
	jmp	.LBB49_263
.LBB49_259:                             # %cond.true.839
                                        #   in Loop: Header=BB49_233 Depth=1
	movq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB49_261
# BB#260:                               # %cond.true.844
                                        #   in Loop: Header=BB49_233 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -2568(%rbp)       # 8-byte Spill
	jmp	.LBB49_262
.LBB49_261:                             # %cond.false.847
                                        #   in Loop: Header=BB49_233 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -2568(%rbp)       # 8-byte Spill
	jmp	.LBB49_262
.LBB49_262:                             # %cond.end.848
                                        #   in Loop: Header=BB49_233 Depth=1
	movq	-2568(%rbp), %rax       # 8-byte Reload
	addq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$0, %edx
	cmpl	$128, %edx
	jb	.LBB49_267
	jmp	.LBB49_271
.LBB49_263:                             # %cond.false.859
                                        #   in Loop: Header=BB49_233 Depth=1
	movq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB49_265
# BB#264:                               # %cond.true.864
                                        #   in Loop: Header=BB49_233 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -2576(%rbp)       # 8-byte Spill
	jmp	.LBB49_266
.LBB49_265:                             # %cond.false.867
                                        #   in Loop: Header=BB49_233 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -2576(%rbp)       # 8-byte Spill
	jmp	.LBB49_266
.LBB49_266:                             # %cond.end.868
                                        #   in Loop: Header=BB49_233 Depth=1
	movq	-2576(%rbp), %rax       # 8-byte Reload
	addq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, %eax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB49_271
.LBB49_267:                             # %cond.true.879
                                        #   in Loop: Header=BB49_233 Depth=1
	movq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB49_269
# BB#268:                               # %cond.true.884
                                        #   in Loop: Header=BB49_233 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -2584(%rbp)       # 8-byte Spill
	jmp	.LBB49_270
.LBB49_269:                             # %cond.false.887
                                        #   in Loop: Header=BB49_233 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -2584(%rbp)       # 8-byte Spill
	jmp	.LBB49_270
.LBB49_270:                             # %cond.end.888
                                        #   in Loop: Header=BB49_233 Depth=1
	movq	-2584(%rbp), %rax       # 8-byte Reload
	addq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, -2588(%rbp)       # 4-byte Spill
	jmp	.LBB49_275
.LBB49_271:                             # %cond.false.896
                                        #   in Loop: Header=BB49_233 Depth=1
	movq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB49_273
# BB#272:                               # %cond.true.901
                                        #   in Loop: Header=BB49_233 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -2600(%rbp)       # 8-byte Spill
	jmp	.LBB49_274
.LBB49_273:                             # %cond.false.904
                                        #   in Loop: Header=BB49_233 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -2600(%rbp)       # 8-byte Spill
	jmp	.LBB49_274
.LBB49_274:                             # %cond.end.905
                                        #   in Loop: Header=BB49_233 Depth=1
	movq	-2600(%rbp), %rax       # 8-byte Reload
	addq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$4194048, %edx          # imm = 0x3FFF00
	movl	%edx, -2588(%rbp)       # 4-byte Spill
.LBB49_275:                             # %cond.end.914
                                        #   in Loop: Header=BB49_233 Depth=1
	movl	-2588(%rbp), %eax       # 4-byte Reload
	movl	%eax, -2556(%rbp)       # 4-byte Spill
.LBB49_276:                             # %cond.end.916
                                        #   in Loop: Header=BB49_233 Depth=1
	movl	-2556(%rbp), %eax       # 4-byte Reload
	movl	$1, %esi
	movl	%eax, -1884(%rbp)
	movl	-1884(%rbp), %edi
	callq	syntax_property_with_flags
	movl	%eax, -1860(%rbp)
# BB#277:                               # %do.body.919
                                        #   in Loop: Header=BB49_233 Depth=1
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -2608(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-2608(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB49_279
# BB#278:                               # %if.then.925
                                        #   in Loop: Header=BB49_233 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB49_294
.LBB49_279:                             # %if.else.927
                                        #   in Loop: Header=BB49_233 Depth=1
	jmp	.LBB49_280
.LBB49_280:                             # %do.body.928
                                        #   in Loop: Header=BB49_233 Depth=1
	movq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB49_282
# BB#281:                               # %cond.true.934
                                        #   in Loop: Header=BB49_233 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -2616(%rbp)       # 8-byte Spill
	jmp	.LBB49_283
.LBB49_282:                             # %cond.false.937
                                        #   in Loop: Header=BB49_233 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -2616(%rbp)       # 8-byte Spill
	jmp	.LBB49_283
.LBB49_283:                             # %cond.end.938
                                        #   in Loop: Header=BB49_233 Depth=1
	movq	-2616(%rbp), %rax       # 8-byte Reload
	addq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -1952(%rbp)
	movq	-1952(%rbp), %rax
	movzbl	(%rax), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	jne	.LBB49_285
# BB#284:                               # %cond.true.948
                                        #   in Loop: Header=BB49_233 Depth=1
	movl	$1, %eax
	movl	%eax, -2620(%rbp)       # 4-byte Spill
	jmp	.LBB49_292
.LBB49_285:                             # %cond.false.949
                                        #   in Loop: Header=BB49_233 Depth=1
	movq	-1952(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB49_287
# BB#286:                               # %cond.true.953
                                        #   in Loop: Header=BB49_233 Depth=1
	movl	$2, %eax
	movl	%eax, -2624(%rbp)       # 4-byte Spill
	jmp	.LBB49_291
.LBB49_287:                             # %cond.false.954
                                        #   in Loop: Header=BB49_233 Depth=1
	movq	-1952(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB49_289
# BB#288:                               # %cond.true.958
                                        #   in Loop: Header=BB49_233 Depth=1
	movl	$3, %eax
	movl	%eax, -2628(%rbp)       # 4-byte Spill
	jmp	.LBB49_290
.LBB49_289:                             # %cond.false.959
                                        #   in Loop: Header=BB49_233 Depth=1
	movl	$5, %eax
	movl	$4, %ecx
	movq	-1952(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$8, %esi
	cmpl	$0, %esi
	setne	%dil
	xorb	$-1, %dil
	testb	$1, %dil
	cmovnel	%ecx, %eax
	movl	%eax, -2628(%rbp)       # 4-byte Spill
.LBB49_290:                             # %cond.end.965
                                        #   in Loop: Header=BB49_233 Depth=1
	movl	-2628(%rbp), %eax       # 4-byte Reload
	movl	%eax, -2624(%rbp)       # 4-byte Spill
.LBB49_291:                             # %cond.end.967
                                        #   in Loop: Header=BB49_233 Depth=1
	movl	-2624(%rbp), %eax       # 4-byte Reload
	movl	%eax, -2620(%rbp)       # 4-byte Spill
.LBB49_292:                             # %cond.end.969
                                        #   in Loop: Header=BB49_233 Depth=1
	movl	-2620(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	addq	-40(%rbp), %rcx
	movq	%rcx, -40(%rbp)
# BB#293:                               # %do.end.973
                                        #   in Loop: Header=BB49_233 Depth=1
	jmp	.LBB49_294
.LBB49_294:                             # %if.end.974
                                        #   in Loop: Header=BB49_233 Depth=1
	jmp	.LBB49_295
.LBB49_295:                             # %do.end.975
                                        #   in Loop: Header=BB49_233 Depth=1
	movq	-32(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jge	.LBB49_297
# BB#296:                               # %if.then.978
                                        #   in Loop: Header=BB49_233 Depth=1
	movq	-32(%rbp), %rdi
	callq	UPDATE_SYNTAX_TABLE_FORWARD
.LBB49_297:                             # %if.end.979
                                        #   in Loop: Header=BB49_233 Depth=1
	jmp	.LBB49_298
.LBB49_298:                             # %do.end.980
                                        #   in Loop: Header=BB49_233 Depth=1
	movq	-32(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB49_300
# BB#299:                               # %if.then.983
	jmp	.LBB49_622
.LBB49_300:                             # %if.end.984
                                        #   in Loop: Header=BB49_233 Depth=1
	jmp	.LBB49_303
.LBB49_301:                             # %sw.bb.985
                                        #   in Loop: Header=BB49_233 Depth=1
	jmp	.LBB49_303
.LBB49_302:                             # %sw.default
	jmp	.LBB49_348
.LBB49_303:                             # %sw.epilog
                                        #   in Loop: Header=BB49_233 Depth=1
	jmp	.LBB49_304
.LBB49_304:                             # %do.body.986
                                        #   in Loop: Header=BB49_233 Depth=1
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -1848(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -1856(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -2640(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-2640(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB49_306
# BB#305:                               # %cond.true.991
                                        #   in Loop: Header=BB49_233 Depth=1
	movq	-1856(%rbp), %rdi
	callq	FETCH_MULTIBYTE_CHAR
	movl	%eax, -2644(%rbp)       # 4-byte Spill
	jmp	.LBB49_324
.LBB49_306:                             # %cond.false.993
                                        #   in Loop: Header=BB49_233 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB49_307
	jmp	.LBB49_311
.LBB49_307:                             # %cond.true.994
                                        #   in Loop: Header=BB49_233 Depth=1
	movq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB49_309
# BB#308:                               # %cond.true.999
                                        #   in Loop: Header=BB49_233 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -2656(%rbp)       # 8-byte Spill
	jmp	.LBB49_310
.LBB49_309:                             # %cond.false.1002
                                        #   in Loop: Header=BB49_233 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -2656(%rbp)       # 8-byte Spill
	jmp	.LBB49_310
.LBB49_310:                             # %cond.end.1003
                                        #   in Loop: Header=BB49_233 Depth=1
	movq	-2656(%rbp), %rax       # 8-byte Reload
	addq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$0, %edx
	cmpl	$128, %edx
	jb	.LBB49_315
	jmp	.LBB49_319
.LBB49_311:                             # %cond.false.1014
                                        #   in Loop: Header=BB49_233 Depth=1
	movq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB49_313
# BB#312:                               # %cond.true.1019
                                        #   in Loop: Header=BB49_233 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -2664(%rbp)       # 8-byte Spill
	jmp	.LBB49_314
.LBB49_313:                             # %cond.false.1022
                                        #   in Loop: Header=BB49_233 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -2664(%rbp)       # 8-byte Spill
	jmp	.LBB49_314
.LBB49_314:                             # %cond.end.1023
                                        #   in Loop: Header=BB49_233 Depth=1
	movq	-2664(%rbp), %rax       # 8-byte Reload
	addq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, %eax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB49_319
.LBB49_315:                             # %cond.true.1034
                                        #   in Loop: Header=BB49_233 Depth=1
	movq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB49_317
# BB#316:                               # %cond.true.1039
                                        #   in Loop: Header=BB49_233 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -2672(%rbp)       # 8-byte Spill
	jmp	.LBB49_318
.LBB49_317:                             # %cond.false.1042
                                        #   in Loop: Header=BB49_233 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -2672(%rbp)       # 8-byte Spill
	jmp	.LBB49_318
.LBB49_318:                             # %cond.end.1043
                                        #   in Loop: Header=BB49_233 Depth=1
	movq	-2672(%rbp), %rax       # 8-byte Reload
	addq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, -2676(%rbp)       # 4-byte Spill
	jmp	.LBB49_323
.LBB49_319:                             # %cond.false.1051
                                        #   in Loop: Header=BB49_233 Depth=1
	movq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB49_321
# BB#320:                               # %cond.true.1056
                                        #   in Loop: Header=BB49_233 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -2688(%rbp)       # 8-byte Spill
	jmp	.LBB49_322
.LBB49_321:                             # %cond.false.1059
                                        #   in Loop: Header=BB49_233 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -2688(%rbp)       # 8-byte Spill
	jmp	.LBB49_322
.LBB49_322:                             # %cond.end.1060
                                        #   in Loop: Header=BB49_233 Depth=1
	movq	-2688(%rbp), %rax       # 8-byte Reload
	addq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$4194048, %edx          # imm = 0x3FFF00
	movl	%edx, -2676(%rbp)       # 4-byte Spill
.LBB49_323:                             # %cond.end.1069
                                        #   in Loop: Header=BB49_233 Depth=1
	movl	-2676(%rbp), %eax       # 4-byte Reload
	movl	%eax, -2644(%rbp)       # 4-byte Spill
.LBB49_324:                             # %cond.end.1071
                                        #   in Loop: Header=BB49_233 Depth=1
	movl	-2644(%rbp), %eax       # 4-byte Reload
	movl	$1, %esi
	movl	%eax, -1884(%rbp)
	movl	-1884(%rbp), %edi
	callq	syntax_property_with_flags
	movl	%eax, -1860(%rbp)
# BB#325:                               # %do.body.1074
                                        #   in Loop: Header=BB49_233 Depth=1
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -2696(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-2696(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB49_327
# BB#326:                               # %if.then.1080
                                        #   in Loop: Header=BB49_233 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB49_342
.LBB49_327:                             # %if.else.1082
                                        #   in Loop: Header=BB49_233 Depth=1
	jmp	.LBB49_328
.LBB49_328:                             # %do.body.1083
                                        #   in Loop: Header=BB49_233 Depth=1
	movq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB49_330
# BB#329:                               # %cond.true.1089
                                        #   in Loop: Header=BB49_233 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -2704(%rbp)       # 8-byte Spill
	jmp	.LBB49_331
.LBB49_330:                             # %cond.false.1092
                                        #   in Loop: Header=BB49_233 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -2704(%rbp)       # 8-byte Spill
	jmp	.LBB49_331
.LBB49_331:                             # %cond.end.1093
                                        #   in Loop: Header=BB49_233 Depth=1
	movq	-2704(%rbp), %rax       # 8-byte Reload
	addq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -1960(%rbp)
	movq	-1960(%rbp), %rax
	movzbl	(%rax), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	jne	.LBB49_333
# BB#332:                               # %cond.true.1103
                                        #   in Loop: Header=BB49_233 Depth=1
	movl	$1, %eax
	movl	%eax, -2708(%rbp)       # 4-byte Spill
	jmp	.LBB49_340
.LBB49_333:                             # %cond.false.1104
                                        #   in Loop: Header=BB49_233 Depth=1
	movq	-1960(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB49_335
# BB#334:                               # %cond.true.1108
                                        #   in Loop: Header=BB49_233 Depth=1
	movl	$2, %eax
	movl	%eax, -2712(%rbp)       # 4-byte Spill
	jmp	.LBB49_339
.LBB49_335:                             # %cond.false.1109
                                        #   in Loop: Header=BB49_233 Depth=1
	movq	-1960(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB49_337
# BB#336:                               # %cond.true.1113
                                        #   in Loop: Header=BB49_233 Depth=1
	movl	$3, %eax
	movl	%eax, -2716(%rbp)       # 4-byte Spill
	jmp	.LBB49_338
.LBB49_337:                             # %cond.false.1114
                                        #   in Loop: Header=BB49_233 Depth=1
	movl	$5, %eax
	movl	$4, %ecx
	movq	-1960(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$8, %esi
	cmpl	$0, %esi
	setne	%dil
	xorb	$-1, %dil
	testb	$1, %dil
	cmovnel	%ecx, %eax
	movl	%eax, -2716(%rbp)       # 4-byte Spill
.LBB49_338:                             # %cond.end.1120
                                        #   in Loop: Header=BB49_233 Depth=1
	movl	-2716(%rbp), %eax       # 4-byte Reload
	movl	%eax, -2712(%rbp)       # 4-byte Spill
.LBB49_339:                             # %cond.end.1122
                                        #   in Loop: Header=BB49_233 Depth=1
	movl	-2712(%rbp), %eax       # 4-byte Reload
	movl	%eax, -2708(%rbp)       # 4-byte Spill
.LBB49_340:                             # %cond.end.1124
                                        #   in Loop: Header=BB49_233 Depth=1
	movl	-2708(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	addq	-40(%rbp), %rcx
	movq	%rcx, -40(%rbp)
# BB#341:                               # %do.end.1128
                                        #   in Loop: Header=BB49_233 Depth=1
	jmp	.LBB49_342
.LBB49_342:                             # %if.end.1129
                                        #   in Loop: Header=BB49_233 Depth=1
	jmp	.LBB49_343
.LBB49_343:                             # %do.end.1130
                                        #   in Loop: Header=BB49_233 Depth=1
	movq	-32(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jge	.LBB49_345
# BB#344:                               # %if.then.1133
                                        #   in Loop: Header=BB49_233 Depth=1
	movq	-32(%rbp), %rdi
	callq	UPDATE_SYNTAX_TABLE_FORWARD
.LBB49_345:                             # %if.end.1134
                                        #   in Loop: Header=BB49_233 Depth=1
	jmp	.LBB49_346
.LBB49_346:                             # %do.end.1135
                                        #   in Loop: Header=BB49_233 Depth=1
	jmp	.LBB49_233
.LBB49_347:                             # %while.end.1136
	jmp	.LBB49_348
.LBB49_348:                             # %symdone
	movq	-1800(%rbp), %rax
	movq	(%rax), %rax
	movq	-1800(%rbp), %rcx
	movq	%rax, 8(%rcx)
	jmp	.LBB49_619
.LBB49_349:                             # %sw.bb.1139
	cmpl	$0, -76(%rbp)
	jne	.LBB49_351
# BB#350:                               # %lor.lhs.false
	testb	$1, -1861(%rbp)
	je	.LBB49_352
.LBB49_351:                             # %if.then.1143
	jmp	.LBB49_623
.LBB49_352:                             # %if.end.1144
	jmp	.LBB49_353
.LBB49_353:                             # %startincomment
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	-152(%rbp), %rcx
	movl	-144(%rbp), %r8d
	movq	-32(%rbp), %rax
	movq	current_buffer, %r9
	cmpq	752(%r9), %rax
	movq	%rdi, -2728(%rbp)       # 8-byte Spill
	movq	%rsi, -2736(%rbp)       # 8-byte Spill
	movq	%rdx, -2744(%rbp)       # 8-byte Spill
	movq	%rcx, -2752(%rbp)       # 8-byte Spill
	movl	%r8d, -2756(%rbp)       # 4-byte Spill
	je	.LBB49_355
# BB#354:                               # %lor.lhs.false.1150
	movq	-32(%rbp), %rax
	movq	-96(%rbp), %rcx
	addq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB49_356
.LBB49_355:                             # %cond.true.1155
	xorl	%eax, %eax
	movl	%eax, -2760(%rbp)       # 4-byte Spill
	jmp	.LBB49_357
.LBB49_356:                             # %cond.false.1156
	movl	-1860(%rbp), %eax
	movl	%eax, -2760(%rbp)       # 4-byte Spill
.LBB49_357:                             # %cond.end.1157
	movl	-2760(%rbp), %eax       # 4-byte Reload
	leaq	-1880(%rbp), %rcx
	leaq	-1872(%rbp), %rdx
	leaq	-168(%rbp), %rsi
	addq	$16, %rsi
	movq	-2728(%rbp), %rdi       # 8-byte Reload
	movq	-2736(%rbp), %r8        # 8-byte Reload
	movq	%rsi, -2768(%rbp)       # 8-byte Spill
	movq	%r8, %rsi
	movq	-2744(%rbp), %r9        # 8-byte Reload
	movq	%rdx, -2776(%rbp)       # 8-byte Spill
	movq	%r9, %rdx
	movq	-2752(%rbp), %r10       # 8-byte Reload
	movq	%rcx, -2784(%rbp)       # 8-byte Spill
	movq	%r10, %rcx
	movl	-2756(%rbp), %r8d       # 4-byte Reload
	movl	%eax, %r9d
	movq	-2784(%rbp), %r11       # 8-byte Reload
	movq	%r11, (%rsp)
	movq	-2776(%rbp), %rbx       # 8-byte Reload
	movq	%rbx, 8(%rsp)
	movq	-2768(%rbp), %r14       # 8-byte Reload
	movq	%r14, 16(%rsp)
	callq	forw_comment
	andb	$1, %al
	movb	%al, -1863(%rbp)
	movq	-1880(%rbp), %rcx
	movq	%rcx, -32(%rbp)
	movq	-1872(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	testb	$1, -1863(%rbp)
	jne	.LBB49_359
# BB#358:                               # %if.then.1163
	jmp	.LBB49_623
.LBB49_359:                             # %if.end.1164
	jmp	.LBB49_360
.LBB49_360:                             # %do.body.1165
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -1848(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -1856(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -2792(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-2792(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB49_362
# BB#361:                               # %cond.true.1170
	movq	-1856(%rbp), %rdi
	callq	FETCH_MULTIBYTE_CHAR
	movl	%eax, -2796(%rbp)       # 4-byte Spill
	jmp	.LBB49_380
.LBB49_362:                             # %cond.false.1172
	movb	$1, %al
	testb	$1, %al
	jne	.LBB49_363
	jmp	.LBB49_367
.LBB49_363:                             # %cond.true.1173
	movq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB49_365
# BB#364:                               # %cond.true.1178
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -2808(%rbp)       # 8-byte Spill
	jmp	.LBB49_366
.LBB49_365:                             # %cond.false.1181
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -2808(%rbp)       # 8-byte Spill
	jmp	.LBB49_366
.LBB49_366:                             # %cond.end.1182
	movq	-2808(%rbp), %rax       # 8-byte Reload
	addq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$0, %edx
	cmpl	$128, %edx
	jb	.LBB49_371
	jmp	.LBB49_375
.LBB49_367:                             # %cond.false.1193
	movq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB49_369
# BB#368:                               # %cond.true.1198
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -2816(%rbp)       # 8-byte Spill
	jmp	.LBB49_370
.LBB49_369:                             # %cond.false.1201
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -2816(%rbp)       # 8-byte Spill
	jmp	.LBB49_370
.LBB49_370:                             # %cond.end.1202
	movq	-2816(%rbp), %rax       # 8-byte Reload
	addq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, %eax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB49_375
.LBB49_371:                             # %cond.true.1213
	movq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB49_373
# BB#372:                               # %cond.true.1218
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -2824(%rbp)       # 8-byte Spill
	jmp	.LBB49_374
.LBB49_373:                             # %cond.false.1221
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -2824(%rbp)       # 8-byte Spill
	jmp	.LBB49_374
.LBB49_374:                             # %cond.end.1222
	movq	-2824(%rbp), %rax       # 8-byte Reload
	addq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, -2828(%rbp)       # 4-byte Spill
	jmp	.LBB49_379
.LBB49_375:                             # %cond.false.1230
	movq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB49_377
# BB#376:                               # %cond.true.1235
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -2840(%rbp)       # 8-byte Spill
	jmp	.LBB49_378
.LBB49_377:                             # %cond.false.1238
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -2840(%rbp)       # 8-byte Spill
	jmp	.LBB49_378
.LBB49_378:                             # %cond.end.1239
	movq	-2840(%rbp), %rax       # 8-byte Reload
	addq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$4194048, %edx          # imm = 0x3FFF00
	movl	%edx, -2828(%rbp)       # 4-byte Spill
.LBB49_379:                             # %cond.end.1248
	movl	-2828(%rbp), %eax       # 4-byte Reload
	movl	%eax, -2796(%rbp)       # 4-byte Spill
.LBB49_380:                             # %cond.end.1250
	movl	-2796(%rbp), %eax       # 4-byte Reload
	movl	$1, %esi
	movl	%eax, -1884(%rbp)
	movl	-1884(%rbp), %edi
	callq	syntax_property_with_flags
	movl	%eax, -1860(%rbp)
# BB#381:                               # %do.body.1253
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -2848(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-2848(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB49_383
# BB#382:                               # %if.then.1259
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB49_398
.LBB49_383:                             # %if.else.1261
	jmp	.LBB49_384
.LBB49_384:                             # %do.body.1262
	movq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB49_386
# BB#385:                               # %cond.true.1268
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -2856(%rbp)       # 8-byte Spill
	jmp	.LBB49_387
.LBB49_386:                             # %cond.false.1271
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -2856(%rbp)       # 8-byte Spill
	jmp	.LBB49_387
.LBB49_387:                             # %cond.end.1272
	movq	-2856(%rbp), %rax       # 8-byte Reload
	addq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -1968(%rbp)
	movq	-1968(%rbp), %rax
	movzbl	(%rax), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	jne	.LBB49_389
# BB#388:                               # %cond.true.1282
	movl	$1, %eax
	movl	%eax, -2860(%rbp)       # 4-byte Spill
	jmp	.LBB49_396
.LBB49_389:                             # %cond.false.1283
	movq	-1968(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB49_391
# BB#390:                               # %cond.true.1287
	movl	$2, %eax
	movl	%eax, -2864(%rbp)       # 4-byte Spill
	jmp	.LBB49_395
.LBB49_391:                             # %cond.false.1288
	movq	-1968(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB49_393
# BB#392:                               # %cond.true.1292
	movl	$3, %eax
	movl	%eax, -2868(%rbp)       # 4-byte Spill
	jmp	.LBB49_394
.LBB49_393:                             # %cond.false.1293
	movl	$5, %eax
	movl	$4, %ecx
	movq	-1968(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$8, %esi
	cmpl	$0, %esi
	setne	%dil
	xorb	$-1, %dil
	testb	$1, %dil
	cmovnel	%ecx, %eax
	movl	%eax, -2868(%rbp)       # 4-byte Spill
.LBB49_394:                             # %cond.end.1299
	movl	-2868(%rbp), %eax       # 4-byte Reload
	movl	%eax, -2864(%rbp)       # 4-byte Spill
.LBB49_395:                             # %cond.end.1301
	movl	-2864(%rbp), %eax       # 4-byte Reload
	movl	%eax, -2860(%rbp)       # 4-byte Spill
.LBB49_396:                             # %cond.end.1303
	movl	-2860(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	addq	-40(%rbp), %rcx
	movq	%rcx, -40(%rbp)
# BB#397:                               # %do.end.1307
	jmp	.LBB49_398
.LBB49_398:                             # %if.end.1308
	jmp	.LBB49_399
.LBB49_399:                             # %do.end.1309
	movq	-32(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jge	.LBB49_401
# BB#400:                               # %if.then.1312
	movq	-32(%rbp), %rdi
	callq	UPDATE_SYNTAX_TABLE_FORWARD
.LBB49_401:                             # %if.end.1313
	jmp	.LBB49_402
.LBB49_402:                             # %do.end.1314
	movq	$0, -152(%rbp)
	movl	$0, -144(%rbp)
	testb	$1, -1861(%rbp)
	je	.LBB49_404
# BB#403:                               # %if.then.1318
	jmp	.LBB49_623
.LBB49_404:                             # %if.end.1319
	jmp	.LBB49_619
.LBB49_405:                             # %sw.bb.1320
	testb	$1, -57(%rbp)
	je	.LBB49_407
# BB#406:                               # %if.then.1322
	jmp	.LBB49_621
.LBB49_407:                             # %if.end.1323
	movq	-1816(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -1816(%rbp)
	movq	-1848(%rbp), %rax
	movq	-1800(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-1800(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -1800(%rbp)
	cmpq	-1808(%rbp), %rax
	jne	.LBB49_409
# BB#408:                               # %if.then.1329
	movq	-1800(%rbp), %rax
	addq	$-16, %rax
	movq	%rax, -1800(%rbp)
.LBB49_409:                             # %if.end.1331
	movq	-1800(%rbp), %rax
	movq	$-1, 8(%rax)
	movq	-1800(%rbp), %rax
	movq	$-1, (%rax)
	movq	-56(%rbp), %rax
	cmpq	-1816(%rbp), %rax
	jne	.LBB49_411
# BB#410:                               # %if.then.1336
	jmp	.LBB49_623
.LBB49_411:                             # %if.end.1337
	jmp	.LBB49_619
.LBB49_412:                             # %sw.bb.1338
	movq	-1816(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -1816(%rbp)
	movq	-1816(%rbp), %rax
	cmpq	-1824(%rbp), %rax
	jge	.LBB49_414
# BB#413:                               # %if.then.1342
	movq	-1816(%rbp), %rax
	movq	%rax, -1824(%rbp)
.LBB49_414:                             # %if.end.1343
	leaq	-1792(%rbp), %rax
	movq	-1800(%rbp), %rcx
	cmpq	%rax, %rcx
	je	.LBB49_416
# BB#415:                               # %if.then.1347
	movq	-1800(%rbp), %rax
	addq	$-16, %rax
	movq	%rax, -1800(%rbp)
.LBB49_416:                             # %if.end.1349
	movq	-1800(%rbp), %rax
	movq	(%rax), %rax
	movq	-1800(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-56(%rbp), %rax
	cmpq	-1816(%rbp), %rax
	jne	.LBB49_418
# BB#417:                               # %if.then.1354
	jmp	.LBB49_623
.LBB49_418:                             # %if.end.1355
	jmp	.LBB49_619
.LBB49_419:                             # %sw.bb.1356
	movq	-32(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -96(%rbp)
	testb	$1, -57(%rbp)
	je	.LBB49_421
# BB#420:                               # %if.then.1359
	jmp	.LBB49_621
.LBB49_421:                             # %if.end.1360
	movq	-1848(%rbp), %rax
	movq	-1800(%rbp), %rcx
	movq	%rax, (%rcx)
	cmpl	$7, -172(%rbp)
	jne	.LBB49_443
# BB#422:                               # %cond.true.1364
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -2880(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-2880(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB49_424
# BB#423:                               # %cond.true.1369
	movq	-1856(%rbp), %rdi
	callq	FETCH_MULTIBYTE_CHAR
	movl	%eax, -2884(%rbp)       # 4-byte Spill
	jmp	.LBB49_442
.LBB49_424:                             # %cond.false.1371
	movb	$1, %al
	testb	$1, %al
	jne	.LBB49_425
	jmp	.LBB49_429
.LBB49_425:                             # %cond.true.1372
	movq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB49_427
# BB#426:                               # %cond.true.1377
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -2896(%rbp)       # 8-byte Spill
	jmp	.LBB49_428
.LBB49_427:                             # %cond.false.1380
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -2896(%rbp)       # 8-byte Spill
	jmp	.LBB49_428
.LBB49_428:                             # %cond.end.1381
	movq	-2896(%rbp), %rax       # 8-byte Reload
	addq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$0, %edx
	cmpl	$128, %edx
	jb	.LBB49_433
	jmp	.LBB49_437
.LBB49_429:                             # %cond.false.1392
	movq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB49_431
# BB#430:                               # %cond.true.1397
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -2904(%rbp)       # 8-byte Spill
	jmp	.LBB49_432
.LBB49_431:                             # %cond.false.1400
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -2904(%rbp)       # 8-byte Spill
	jmp	.LBB49_432
.LBB49_432:                             # %cond.end.1401
	movq	-2904(%rbp), %rax       # 8-byte Reload
	addq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, %eax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB49_437
.LBB49_433:                             # %cond.true.1412
	movq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB49_435
# BB#434:                               # %cond.true.1417
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -2912(%rbp)       # 8-byte Spill
	jmp	.LBB49_436
.LBB49_435:                             # %cond.false.1420
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -2912(%rbp)       # 8-byte Spill
	jmp	.LBB49_436
.LBB49_436:                             # %cond.end.1421
	movq	-2912(%rbp), %rax       # 8-byte Reload
	addq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, -2916(%rbp)       # 4-byte Spill
	jmp	.LBB49_441
.LBB49_437:                             # %cond.false.1429
	movq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB49_439
# BB#438:                               # %cond.true.1434
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -2928(%rbp)       # 8-byte Spill
	jmp	.LBB49_440
.LBB49_439:                             # %cond.false.1437
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -2928(%rbp)       # 8-byte Spill
	jmp	.LBB49_440
.LBB49_440:                             # %cond.end.1438
	movq	-2928(%rbp), %rax       # 8-byte Reload
	addq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$4194048, %edx          # imm = 0x3FFF00
	movl	%edx, -2916(%rbp)       # 4-byte Spill
.LBB49_441:                             # %cond.end.1447
	movl	-2916(%rbp), %eax       # 4-byte Reload
	movl	%eax, -2884(%rbp)       # 4-byte Spill
.LBB49_442:                             # %cond.end.1449
	movl	-2884(%rbp), %eax       # 4-byte Reload
	movl	%eax, -2932(%rbp)       # 4-byte Spill
	jmp	.LBB49_444
.LBB49_443:                             # %cond.false.1451
	movl	$258, %eax              # imm = 0x102
	movl	%eax, -2932(%rbp)       # 4-byte Spill
	jmp	.LBB49_444
.LBB49_444:                             # %cond.end.1452
	movl	-2932(%rbp), %eax       # 4-byte Reload
	movl	%eax, -160(%rbp)
	testb	$1, -1861(%rbp)
	je	.LBB49_446
# BB#445:                               # %if.then.1456
	jmp	.LBB49_623
.LBB49_446:                             # %if.end.1457
	jmp	.LBB49_447
.LBB49_447:                             # %startinstring
	cmpl	$258, -160(%rbp)        # imm = 0x102
	setne	%al
	andb	$1, %al
	movb	%al, -1862(%rbp)
.LBB49_448:                             # %while.body.1463
	movq	-32(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jl	.LBB49_450
# BB#449:                               # %if.then.1466
	jmp	.LBB49_623
.LBB49_450:                             # %if.end.1467
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -2944(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-2944(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB49_452
# BB#451:                               # %cond.true.1472
	movq	-40(%rbp), %rdi
	callq	FETCH_MULTIBYTE_CHAR
	movl	%eax, -2948(%rbp)       # 4-byte Spill
	jmp	.LBB49_470
.LBB49_452:                             # %cond.false.1474
	movb	$1, %al
	testb	$1, %al
	jne	.LBB49_453
	jmp	.LBB49_457
.LBB49_453:                             # %cond.true.1475
	movq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB49_455
# BB#454:                               # %cond.true.1480
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -2960(%rbp)       # 8-byte Spill
	jmp	.LBB49_456
.LBB49_455:                             # %cond.false.1483
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -2960(%rbp)       # 8-byte Spill
	jmp	.LBB49_456
.LBB49_456:                             # %cond.end.1484
	movq	-2960(%rbp), %rax       # 8-byte Reload
	addq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$0, %edx
	cmpl	$128, %edx
	jb	.LBB49_461
	jmp	.LBB49_465
.LBB49_457:                             # %cond.false.1495
	movq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB49_459
# BB#458:                               # %cond.true.1500
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -2968(%rbp)       # 8-byte Spill
	jmp	.LBB49_460
.LBB49_459:                             # %cond.false.1503
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -2968(%rbp)       # 8-byte Spill
	jmp	.LBB49_460
.LBB49_460:                             # %cond.end.1504
	movq	-2968(%rbp), %rax       # 8-byte Reload
	addq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, %eax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB49_465
.LBB49_461:                             # %cond.true.1515
	movq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB49_463
# BB#462:                               # %cond.true.1520
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -2976(%rbp)       # 8-byte Spill
	jmp	.LBB49_464
.LBB49_463:                             # %cond.false.1523
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -2976(%rbp)       # 8-byte Spill
	jmp	.LBB49_464
.LBB49_464:                             # %cond.end.1524
	movq	-2976(%rbp), %rax       # 8-byte Reload
	addq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, -2980(%rbp)       # 4-byte Spill
	jmp	.LBB49_469
.LBB49_465:                             # %cond.false.1532
	movq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB49_467
# BB#466:                               # %cond.true.1537
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -2992(%rbp)       # 8-byte Spill
	jmp	.LBB49_468
.LBB49_467:                             # %cond.false.1540
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -2992(%rbp)       # 8-byte Spill
	jmp	.LBB49_468
.LBB49_468:                             # %cond.end.1541
	movq	-2992(%rbp), %rax       # 8-byte Reload
	addq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$4194048, %edx          # imm = 0x3FFF00
	movl	%edx, -2980(%rbp)       # 4-byte Spill
.LBB49_469:                             # %cond.end.1550
	movl	-2980(%rbp), %eax       # 4-byte Reload
	movl	%eax, -2948(%rbp)       # 4-byte Spill
.LBB49_470:                             # %cond.end.1552
	movl	-2948(%rbp), %eax       # 4-byte Reload
	movl	$1, %esi
	movl	%eax, -1972(%rbp)
	movl	-1972(%rbp), %edi
	callq	syntax_property
	movl	%eax, -1976(%rbp)
	testb	$1, -1862(%rbp)
	je	.LBB49_474
# BB#471:                               # %land.lhs.true.1557
	movl	-1972(%rbp), %eax
	cmpl	-160(%rbp), %eax
	jne	.LBB49_474
# BB#472:                               # %land.lhs.true.1561
	cmpl	$7, -1976(%rbp)
	jne	.LBB49_474
# BB#473:                               # %if.then.1564
	jmp	.LBB49_570
.LBB49_474:                             # %if.end.1565
	movl	-1976(%rbp), %eax
	movl	%eax, %ecx
	addl	$-9, %ecx
	subl	$2, %ecx
	movl	%eax, -2996(%rbp)       # 4-byte Spill
	movl	%ecx, -3000(%rbp)       # 4-byte Spill
	jb	.LBB49_478
	jmp	.LBB49_631
.LBB49_631:                             # %if.end.1565
	movl	-2996(%rbp), %eax       # 4-byte Reload
	subl	$15, %eax
	movl	%eax, -3004(%rbp)       # 4-byte Spill
	jne	.LBB49_525
	jmp	.LBB49_475
.LBB49_475:                             # %sw.bb.1566
	testb	$1, -1862(%rbp)
	jne	.LBB49_477
# BB#476:                               # %if.then.1568
	jmp	.LBB49_571
.LBB49_477:                             # %if.end.1569
	jmp	.LBB49_526
.LBB49_478:                             # %sw.bb.1570
	jmp	.LBB49_479
.LBB49_479:                             # %do.body.1571
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -1848(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -1856(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -3016(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-3016(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB49_481
# BB#480:                               # %cond.true.1576
	movq	-1856(%rbp), %rdi
	callq	FETCH_MULTIBYTE_CHAR
	movl	%eax, -3020(%rbp)       # 4-byte Spill
	jmp	.LBB49_499
.LBB49_481:                             # %cond.false.1578
	movb	$1, %al
	testb	$1, %al
	jne	.LBB49_482
	jmp	.LBB49_486
.LBB49_482:                             # %cond.true.1579
	movq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB49_484
# BB#483:                               # %cond.true.1584
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -3032(%rbp)       # 8-byte Spill
	jmp	.LBB49_485
.LBB49_484:                             # %cond.false.1587
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -3032(%rbp)       # 8-byte Spill
	jmp	.LBB49_485
.LBB49_485:                             # %cond.end.1588
	movq	-3032(%rbp), %rax       # 8-byte Reload
	addq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$0, %edx
	cmpl	$128, %edx
	jb	.LBB49_490
	jmp	.LBB49_494
.LBB49_486:                             # %cond.false.1599
	movq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB49_488
# BB#487:                               # %cond.true.1604
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -3040(%rbp)       # 8-byte Spill
	jmp	.LBB49_489
.LBB49_488:                             # %cond.false.1607
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -3040(%rbp)       # 8-byte Spill
	jmp	.LBB49_489
.LBB49_489:                             # %cond.end.1608
	movq	-3040(%rbp), %rax       # 8-byte Reload
	addq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, %eax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB49_494
.LBB49_490:                             # %cond.true.1619
	movq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB49_492
# BB#491:                               # %cond.true.1624
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -3048(%rbp)       # 8-byte Spill
	jmp	.LBB49_493
.LBB49_492:                             # %cond.false.1627
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -3048(%rbp)       # 8-byte Spill
	jmp	.LBB49_493
.LBB49_493:                             # %cond.end.1628
	movq	-3048(%rbp), %rax       # 8-byte Reload
	addq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, -3052(%rbp)       # 4-byte Spill
	jmp	.LBB49_498
.LBB49_494:                             # %cond.false.1636
	movq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB49_496
# BB#495:                               # %cond.true.1641
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -3064(%rbp)       # 8-byte Spill
	jmp	.LBB49_497
.LBB49_496:                             # %cond.false.1644
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -3064(%rbp)       # 8-byte Spill
	jmp	.LBB49_497
.LBB49_497:                             # %cond.end.1645
	movq	-3064(%rbp), %rax       # 8-byte Reload
	addq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$4194048, %edx          # imm = 0x3FFF00
	movl	%edx, -3052(%rbp)       # 4-byte Spill
.LBB49_498:                             # %cond.end.1654
	movl	-3052(%rbp), %eax       # 4-byte Reload
	movl	%eax, -3020(%rbp)       # 4-byte Spill
.LBB49_499:                             # %cond.end.1656
	movl	-3020(%rbp), %eax       # 4-byte Reload
	movl	$1, %esi
	movl	%eax, -1884(%rbp)
	movl	-1884(%rbp), %edi
	callq	syntax_property_with_flags
	movl	%eax, -1860(%rbp)
# BB#500:                               # %do.body.1659
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -3072(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-3072(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB49_502
# BB#501:                               # %if.then.1665
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB49_517
.LBB49_502:                             # %if.else.1667
	jmp	.LBB49_503
.LBB49_503:                             # %do.body.1668
	movq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB49_505
# BB#504:                               # %cond.true.1674
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -3080(%rbp)       # 8-byte Spill
	jmp	.LBB49_506
.LBB49_505:                             # %cond.false.1677
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -3080(%rbp)       # 8-byte Spill
	jmp	.LBB49_506
.LBB49_506:                             # %cond.end.1678
	movq	-3080(%rbp), %rax       # 8-byte Reload
	addq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -1984(%rbp)
	movq	-1984(%rbp), %rax
	movzbl	(%rax), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	jne	.LBB49_508
# BB#507:                               # %cond.true.1688
	movl	$1, %eax
	movl	%eax, -3084(%rbp)       # 4-byte Spill
	jmp	.LBB49_515
.LBB49_508:                             # %cond.false.1689
	movq	-1984(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB49_510
# BB#509:                               # %cond.true.1693
	movl	$2, %eax
	movl	%eax, -3088(%rbp)       # 4-byte Spill
	jmp	.LBB49_514
.LBB49_510:                             # %cond.false.1694
	movq	-1984(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB49_512
# BB#511:                               # %cond.true.1698
	movl	$3, %eax
	movl	%eax, -3092(%rbp)       # 4-byte Spill
	jmp	.LBB49_513
.LBB49_512:                             # %cond.false.1699
	movl	$5, %eax
	movl	$4, %ecx
	movq	-1984(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$8, %esi
	cmpl	$0, %esi
	setne	%dil
	xorb	$-1, %dil
	testb	$1, %dil
	cmovnel	%ecx, %eax
	movl	%eax, -3092(%rbp)       # 4-byte Spill
.LBB49_513:                             # %cond.end.1705
	movl	-3092(%rbp), %eax       # 4-byte Reload
	movl	%eax, -3088(%rbp)       # 4-byte Spill
.LBB49_514:                             # %cond.end.1707
	movl	-3088(%rbp), %eax       # 4-byte Reload
	movl	%eax, -3084(%rbp)       # 4-byte Spill
.LBB49_515:                             # %cond.end.1709
	movl	-3084(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	addq	-40(%rbp), %rcx
	movq	%rcx, -40(%rbp)
# BB#516:                               # %do.end.1713
	jmp	.LBB49_517
.LBB49_517:                             # %if.end.1714
	jmp	.LBB49_518
.LBB49_518:                             # %do.end.1715
	movq	-32(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jge	.LBB49_520
# BB#519:                               # %if.then.1718
	movq	-32(%rbp), %rdi
	callq	UPDATE_SYNTAX_TABLE_FORWARD
.LBB49_520:                             # %if.end.1719
	jmp	.LBB49_521
.LBB49_521:                             # %do.end.1720
	jmp	.LBB49_522
.LBB49_522:                             # %startquotedinstring
	movq	-32(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jl	.LBB49_524
# BB#523:                               # %if.then.1723
	jmp	.LBB49_622
.LBB49_524:                             # %if.end.1724
	jmp	.LBB49_526
.LBB49_525:                             # %sw.default.1725
	jmp	.LBB49_526
.LBB49_526:                             # %sw.epilog.1726
	jmp	.LBB49_527
.LBB49_527:                             # %do.body.1727
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -1848(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -1856(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -3104(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-3104(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB49_529
# BB#528:                               # %cond.true.1732
	movq	-1856(%rbp), %rdi
	callq	FETCH_MULTIBYTE_CHAR
	movl	%eax, -3108(%rbp)       # 4-byte Spill
	jmp	.LBB49_547
.LBB49_529:                             # %cond.false.1734
	movb	$1, %al
	testb	$1, %al
	jne	.LBB49_530
	jmp	.LBB49_534
.LBB49_530:                             # %cond.true.1735
	movq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB49_532
# BB#531:                               # %cond.true.1740
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -3120(%rbp)       # 8-byte Spill
	jmp	.LBB49_533
.LBB49_532:                             # %cond.false.1743
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -3120(%rbp)       # 8-byte Spill
	jmp	.LBB49_533
.LBB49_533:                             # %cond.end.1744
	movq	-3120(%rbp), %rax       # 8-byte Reload
	addq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$0, %edx
	cmpl	$128, %edx
	jb	.LBB49_538
	jmp	.LBB49_542
.LBB49_534:                             # %cond.false.1755
	movq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB49_536
# BB#535:                               # %cond.true.1760
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -3128(%rbp)       # 8-byte Spill
	jmp	.LBB49_537
.LBB49_536:                             # %cond.false.1763
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -3128(%rbp)       # 8-byte Spill
	jmp	.LBB49_537
.LBB49_537:                             # %cond.end.1764
	movq	-3128(%rbp), %rax       # 8-byte Reload
	addq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, %eax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB49_542
.LBB49_538:                             # %cond.true.1775
	movq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB49_540
# BB#539:                               # %cond.true.1780
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -3136(%rbp)       # 8-byte Spill
	jmp	.LBB49_541
.LBB49_540:                             # %cond.false.1783
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -3136(%rbp)       # 8-byte Spill
	jmp	.LBB49_541
.LBB49_541:                             # %cond.end.1784
	movq	-3136(%rbp), %rax       # 8-byte Reload
	addq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, -3140(%rbp)       # 4-byte Spill
	jmp	.LBB49_546
.LBB49_542:                             # %cond.false.1792
	movq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB49_544
# BB#543:                               # %cond.true.1797
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -3152(%rbp)       # 8-byte Spill
	jmp	.LBB49_545
.LBB49_544:                             # %cond.false.1800
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -3152(%rbp)       # 8-byte Spill
	jmp	.LBB49_545
.LBB49_545:                             # %cond.end.1801
	movq	-3152(%rbp), %rax       # 8-byte Reload
	addq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$4194048, %edx          # imm = 0x3FFF00
	movl	%edx, -3140(%rbp)       # 4-byte Spill
.LBB49_546:                             # %cond.end.1810
	movl	-3140(%rbp), %eax       # 4-byte Reload
	movl	%eax, -3108(%rbp)       # 4-byte Spill
.LBB49_547:                             # %cond.end.1812
	movl	-3108(%rbp), %eax       # 4-byte Reload
	movl	$1, %esi
	movl	%eax, -1884(%rbp)
	movl	-1884(%rbp), %edi
	callq	syntax_property_with_flags
	movl	%eax, -1860(%rbp)
# BB#548:                               # %do.body.1815
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -3160(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-3160(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB49_550
# BB#549:                               # %if.then.1821
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB49_565
.LBB49_550:                             # %if.else.1823
	jmp	.LBB49_551
.LBB49_551:                             # %do.body.1824
	movq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB49_553
# BB#552:                               # %cond.true.1830
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -3168(%rbp)       # 8-byte Spill
	jmp	.LBB49_554
.LBB49_553:                             # %cond.false.1833
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -3168(%rbp)       # 8-byte Spill
	jmp	.LBB49_554
.LBB49_554:                             # %cond.end.1834
	movq	-3168(%rbp), %rax       # 8-byte Reload
	addq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -1992(%rbp)
	movq	-1992(%rbp), %rax
	movzbl	(%rax), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	jne	.LBB49_556
# BB#555:                               # %cond.true.1844
	movl	$1, %eax
	movl	%eax, -3172(%rbp)       # 4-byte Spill
	jmp	.LBB49_563
.LBB49_556:                             # %cond.false.1845
	movq	-1992(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB49_558
# BB#557:                               # %cond.true.1849
	movl	$2, %eax
	movl	%eax, -3176(%rbp)       # 4-byte Spill
	jmp	.LBB49_562
.LBB49_558:                             # %cond.false.1850
	movq	-1992(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB49_560
# BB#559:                               # %cond.true.1854
	movl	$3, %eax
	movl	%eax, -3180(%rbp)       # 4-byte Spill
	jmp	.LBB49_561
.LBB49_560:                             # %cond.false.1855
	movl	$5, %eax
	movl	$4, %ecx
	movq	-1992(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$8, %esi
	cmpl	$0, %esi
	setne	%dil
	xorb	$-1, %dil
	testb	$1, %dil
	cmovnel	%ecx, %eax
	movl	%eax, -3180(%rbp)       # 4-byte Spill
.LBB49_561:                             # %cond.end.1861
	movl	-3180(%rbp), %eax       # 4-byte Reload
	movl	%eax, -3176(%rbp)       # 4-byte Spill
.LBB49_562:                             # %cond.end.1863
	movl	-3176(%rbp), %eax       # 4-byte Reload
	movl	%eax, -3172(%rbp)       # 4-byte Spill
.LBB49_563:                             # %cond.end.1865
	movl	-3172(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	addq	-40(%rbp), %rcx
	movq	%rcx, -40(%rbp)
# BB#564:                               # %do.end.1869
	jmp	.LBB49_565
.LBB49_565:                             # %if.end.1870
	jmp	.LBB49_566
.LBB49_566:                             # %do.end.1871
	movq	-32(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jge	.LBB49_568
# BB#567:                               # %if.then.1874
	movq	-32(%rbp), %rdi
	callq	UPDATE_SYNTAX_TABLE_FORWARD
.LBB49_568:                             # %if.end.1875
	jmp	.LBB49_569
.LBB49_569:                             # %do.end.1876
	jmp	.LBB49_448
.LBB49_570:                             # %while.end.1877
	jmp	.LBB49_571
.LBB49_571:                             # %string_end
	movl	$-1, -160(%rbp)
	movq	-1800(%rbp), %rax
	movq	(%rax), %rax
	movq	-1800(%rbp), %rcx
	movq	%rax, 8(%rcx)
# BB#572:                               # %do.body.1881
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -1848(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -1856(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -3192(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-3192(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB49_574
# BB#573:                               # %cond.true.1886
	movq	-1856(%rbp), %rdi
	callq	FETCH_MULTIBYTE_CHAR
	movl	%eax, -3196(%rbp)       # 4-byte Spill
	jmp	.LBB49_592
.LBB49_574:                             # %cond.false.1888
	movb	$1, %al
	testb	$1, %al
	jne	.LBB49_575
	jmp	.LBB49_579
.LBB49_575:                             # %cond.true.1889
	movq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB49_577
# BB#576:                               # %cond.true.1894
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -3208(%rbp)       # 8-byte Spill
	jmp	.LBB49_578
.LBB49_577:                             # %cond.false.1897
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -3208(%rbp)       # 8-byte Spill
	jmp	.LBB49_578
.LBB49_578:                             # %cond.end.1898
	movq	-3208(%rbp), %rax       # 8-byte Reload
	addq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$0, %edx
	cmpl	$128, %edx
	jb	.LBB49_583
	jmp	.LBB49_587
.LBB49_579:                             # %cond.false.1909
	movq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB49_581
# BB#580:                               # %cond.true.1914
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -3216(%rbp)       # 8-byte Spill
	jmp	.LBB49_582
.LBB49_581:                             # %cond.false.1917
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -3216(%rbp)       # 8-byte Spill
	jmp	.LBB49_582
.LBB49_582:                             # %cond.end.1918
	movq	-3216(%rbp), %rax       # 8-byte Reload
	addq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, %eax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB49_587
.LBB49_583:                             # %cond.true.1929
	movq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB49_585
# BB#584:                               # %cond.true.1934
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -3224(%rbp)       # 8-byte Spill
	jmp	.LBB49_586
.LBB49_585:                             # %cond.false.1937
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -3224(%rbp)       # 8-byte Spill
	jmp	.LBB49_586
.LBB49_586:                             # %cond.end.1938
	movq	-3224(%rbp), %rax       # 8-byte Reload
	addq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, -3228(%rbp)       # 4-byte Spill
	jmp	.LBB49_591
.LBB49_587:                             # %cond.false.1946
	movq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB49_589
# BB#588:                               # %cond.true.1951
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -3240(%rbp)       # 8-byte Spill
	jmp	.LBB49_590
.LBB49_589:                             # %cond.false.1954
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -3240(%rbp)       # 8-byte Spill
	jmp	.LBB49_590
.LBB49_590:                             # %cond.end.1955
	movq	-3240(%rbp), %rax       # 8-byte Reload
	addq	-1856(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$4194048, %edx          # imm = 0x3FFF00
	movl	%edx, -3228(%rbp)       # 4-byte Spill
.LBB49_591:                             # %cond.end.1964
	movl	-3228(%rbp), %eax       # 4-byte Reload
	movl	%eax, -3196(%rbp)       # 4-byte Spill
.LBB49_592:                             # %cond.end.1966
	movl	-3196(%rbp), %eax       # 4-byte Reload
	movl	$1, %esi
	movl	%eax, -1884(%rbp)
	movl	-1884(%rbp), %edi
	callq	syntax_property_with_flags
	movl	%eax, -1860(%rbp)
# BB#593:                               # %do.body.1969
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -3248(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-3248(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB49_595
# BB#594:                               # %if.then.1975
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB49_610
.LBB49_595:                             # %if.else.1977
	jmp	.LBB49_596
.LBB49_596:                             # %do.body.1978
	movq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB49_598
# BB#597:                               # %cond.true.1984
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -3256(%rbp)       # 8-byte Spill
	jmp	.LBB49_599
.LBB49_598:                             # %cond.false.1987
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -3256(%rbp)       # 8-byte Spill
	jmp	.LBB49_599
.LBB49_599:                             # %cond.end.1988
	movq	-3256(%rbp), %rax       # 8-byte Reload
	addq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -2000(%rbp)
	movq	-2000(%rbp), %rax
	movzbl	(%rax), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	jne	.LBB49_601
# BB#600:                               # %cond.true.1998
	movl	$1, %eax
	movl	%eax, -3260(%rbp)       # 4-byte Spill
	jmp	.LBB49_608
.LBB49_601:                             # %cond.false.1999
	movq	-2000(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB49_603
# BB#602:                               # %cond.true.2003
	movl	$2, %eax
	movl	%eax, -3264(%rbp)       # 4-byte Spill
	jmp	.LBB49_607
.LBB49_603:                             # %cond.false.2004
	movq	-2000(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB49_605
# BB#604:                               # %cond.true.2008
	movl	$3, %eax
	movl	%eax, -3268(%rbp)       # 4-byte Spill
	jmp	.LBB49_606
.LBB49_605:                             # %cond.false.2009
	movl	$5, %eax
	movl	$4, %ecx
	movq	-2000(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$8, %esi
	cmpl	$0, %esi
	setne	%dil
	xorb	$-1, %dil
	testb	$1, %dil
	cmovnel	%ecx, %eax
	movl	%eax, -3268(%rbp)       # 4-byte Spill
.LBB49_606:                             # %cond.end.2015
	movl	-3268(%rbp), %eax       # 4-byte Reload
	movl	%eax, -3264(%rbp)       # 4-byte Spill
.LBB49_607:                             # %cond.end.2017
	movl	-3264(%rbp), %eax       # 4-byte Reload
	movl	%eax, -3260(%rbp)       # 4-byte Spill
.LBB49_608:                             # %cond.end.2019
	movl	-3260(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	addq	-40(%rbp), %rcx
	movq	%rcx, -40(%rbp)
# BB#609:                               # %do.end.2023
	jmp	.LBB49_610
.LBB49_610:                             # %if.end.2024
	jmp	.LBB49_611
.LBB49_611:                             # %do.end.2025
	movq	-32(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jge	.LBB49_613
# BB#612:                               # %if.then.2028
	movq	-32(%rbp), %rdi
	callq	UPDATE_SYNTAX_TABLE_FORWARD
.LBB49_613:                             # %if.end.2029
	jmp	.LBB49_614
.LBB49_614:                             # %do.end.2030
	testb	$1, -1861(%rbp)
	je	.LBB49_616
# BB#615:                               # %if.then.2032
	jmp	.LBB49_623
.LBB49_616:                             # %if.end.2033
	jmp	.LBB49_619
.LBB49_617:                             # %sw.bb.2034
	jmp	.LBB49_619
.LBB49_618:                             # %sw.default.2035
	jmp	.LBB49_619
.LBB49_619:                             # %sw.epilog.2036
	jmp	.LBB49_74
.LBB49_620:                             # %while.end.2037
	jmp	.LBB49_623
.LBB49_621:                             # %stop
	movq	-1848(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-1856(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB49_623
.LBB49_622:                             # %endquoted
	movb	$1, -140(%rbp)
.LBB49_623:                             # %done
	leaq	-1792(%rbp), %rax
	movq	-1816(%rbp), %rcx
	movq	%rcx, -168(%rbp)
	movq	-1824(%rbp), %rcx
	movq	%rcx, -136(%rbp)
	movq	-1800(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -128(%rbp)
	movq	-1800(%rbp), %rcx
	cmpq	%rax, %rcx
	jne	.LBB49_625
# BB#624:                               # %cond.true.2045
	movq	$-1, %rax
	movq	%rax, -3280(%rbp)       # 8-byte Spill
	jmp	.LBB49_626
.LBB49_625:                             # %cond.false.2046
	movq	-1800(%rbp), %rax
	movq	-16(%rax), %rax
	movq	%rax, -3280(%rbp)       # 8-byte Spill
.LBB49_626:                             # %cond.end.2049
	movq	-3280(%rbp), %rax       # 8-byte Reload
	xorl	%edi, %edi
	movq	%rax, -120(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -88(%rbp)
.LBB49_627:                             # %while.cond.2052
                                        # =>This Inner Loop Header: Depth=1
	leaq	-1792(%rbp), %rax
	movq	-1800(%rbp), %rcx
	cmpq	%rax, %rcx
	jbe	.LBB49_629
# BB#628:                               # %while.body.2056
                                        #   in Loop: Header=BB49_627 Depth=1
	movq	-1800(%rbp), %rax
	movq	%rax, %rcx
	addq	$-16, %rcx
	movq	%rcx, -1800(%rbp)
	movq	-16(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -88(%rbp)
	jmp	.LBB49_627
.LBB49_629:                             # %while.end.2063
	movl	$88, %eax
	movl	%eax, %edx
	leaq	-168(%rbp), %rcx
	movb	$0, immediate_quit
	movq	-24(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	memcpy
	addq	$3296, %rsp             # imm = 0xCE0
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end49:
	.size	scan_sexps_forward, .Lfunc_end49-scan_sexps_forward
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI49_0:
	.quad	.LBB49_229
	.quad	.LBB49_229
	.quad	.LBB49_405
	.quad	.LBB49_412
	.quad	.LBB49_618
	.quad	.LBB49_419
	.quad	.LBB49_617
	.quad	.LBB49_180
	.quad	.LBB49_180
	.quad	.LBB49_349
	.quad	.LBB49_618
	.quad	.LBB49_618
	.quad	.LBB49_349
	.quad	.LBB49_419

	.text
	.globl	init_syntax_once
	.align	16, 0x90
	.type	init_syntax_once,@function
init_syntax_once:                       # @init_syntax_once
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp154:
	.cfi_def_cfa_offset 16
.Ltmp155:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp156:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movl	$16, %eax
	movl	%eax, %edi
	callq	make_uninit_vector
	movq	%rax, Vsyntax_code_object
	movl	$0, -4(%rbp)
.LBB50_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$16, -4(%rbp)
	jge	.LBB50_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB50_1 Depth=1
	xorl	%edi, %edi
	movq	Vsyntax_code_object, %rax
	movslq	-4(%rbp), %rsi
	movslq	-4(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -24(%rbp)         # 8-byte Spill
	movq	%rax, -32(%rbp)         # 8-byte Spill
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB50_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB50_1
.LBB50_4:                               # %for.end
	movl	$899, %edi              # imm = 0x383
	callq	builtin_lisp_symbol
	movl	$258, %edi              # imm = 0x102
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$2, %edi
	movl	%edi, %edx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fput
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	Vsyntax_code_object, %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	AREF
	movl	$899, %edi              # imm = 0x383
	movq	%rax, -16(%rbp)
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fmake_char_table
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, buffer_defaults+128
	movq	Vsyntax_code_object, %rdi
	callq	AREF
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
.LBB50_5:                               # %for.cond.11
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$31, -4(%rbp)
	jg	.LBB50_8
# BB#6:                                 # %for.body.14
                                        #   in Loop: Header=BB50_5 Depth=1
	movq	buffer_defaults+128, %rdi
	movl	-4(%rbp), %esi
	movq	-16(%rbp), %rdx
	callq	SET_RAW_SYNTAX_ENTRY
# BB#7:                                 # %for.inc.15
                                        #   in Loop: Header=BB50_5 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB50_5
.LBB50_8:                               # %for.end.17
	movl	$127, %esi
	movq	buffer_defaults+128, %rdi
	movq	-16(%rbp), %rdx
	callq	SET_RAW_SYNTAX_ENTRY
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	Vsyntax_code_object, %rdi
	callq	AREF
	movl	$32, %esi
	movq	%rax, -16(%rbp)
	movq	buffer_defaults+128, %rdi
	movq	-16(%rbp), %rdx
	callq	SET_RAW_SYNTAX_ENTRY
	movl	$9, %esi
	movq	buffer_defaults+128, %rdi
	movq	-16(%rbp), %rdx
	callq	SET_RAW_SYNTAX_ENTRY
	movl	$10, %esi
	movq	buffer_defaults+128, %rdi
	movq	-16(%rbp), %rdx
	callq	SET_RAW_SYNTAX_ENTRY
	movl	$13, %esi
	movq	buffer_defaults+128, %rdi
	movq	-16(%rbp), %rdx
	callq	SET_RAW_SYNTAX_ENTRY
	movl	$12, %esi
	movq	buffer_defaults+128, %rdi
	movq	-16(%rbp), %rdx
	callq	SET_RAW_SYNTAX_ENTRY
	movl	$2, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	Vsyntax_code_object, %rdi
	callq	AREF
	movq	%rax, -16(%rbp)
	movl	$97, -4(%rbp)
.LBB50_9:                               # %for.cond.20
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$122, -4(%rbp)
	jg	.LBB50_12
# BB#10:                                # %for.body.23
                                        #   in Loop: Header=BB50_9 Depth=1
	movq	buffer_defaults+128, %rdi
	movl	-4(%rbp), %esi
	movq	-16(%rbp), %rdx
	callq	SET_RAW_SYNTAX_ENTRY
# BB#11:                                # %for.inc.24
                                        #   in Loop: Header=BB50_9 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB50_9
.LBB50_12:                              # %for.end.26
	movl	$65, -4(%rbp)
.LBB50_13:                              # %for.cond.27
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$90, -4(%rbp)
	jg	.LBB50_16
# BB#14:                                # %for.body.30
                                        #   in Loop: Header=BB50_13 Depth=1
	movq	buffer_defaults+128, %rdi
	movl	-4(%rbp), %esi
	movq	-16(%rbp), %rdx
	callq	SET_RAW_SYNTAX_ENTRY
# BB#15:                                # %for.inc.31
                                        #   in Loop: Header=BB50_13 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB50_13
.LBB50_16:                              # %for.end.33
	movl	$48, -4(%rbp)
.LBB50_17:                              # %for.cond.34
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$57, -4(%rbp)
	jg	.LBB50_20
# BB#18:                                # %for.body.37
                                        #   in Loop: Header=BB50_17 Depth=1
	movq	buffer_defaults+128, %rdi
	movl	-4(%rbp), %esi
	movq	-16(%rbp), %rdx
	callq	SET_RAW_SYNTAX_ENTRY
# BB#19:                                # %for.inc.38
                                        #   in Loop: Header=BB50_17 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB50_17
.LBB50_20:                              # %for.end.40
	movl	$36, %esi
	movq	buffer_defaults+128, %rdi
	movq	-16(%rbp), %rdx
	callq	SET_RAW_SYNTAX_ENTRY
	movl	$37, %esi
	movq	buffer_defaults+128, %rdi
	movq	-16(%rbp), %rdx
	callq	SET_RAW_SYNTAX_ENTRY
	movl	$18, %esi
	movl	%esi, %edi
	movl	$166, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	buffer_defaults+128, %rdx
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	callq	Fcons
	movl	$40, %esi
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	SET_RAW_SYNTAX_ENTRY
	movl	$22, %esi
	movl	%esi, %edi
	movl	$162, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	buffer_defaults+128, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	Fcons
	movl	$41, %esi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	SET_RAW_SYNTAX_ENTRY
	movl	$18, %esi
	movl	%esi, %edi
	movl	$374, %esi              # imm = 0x176
                                        # kill: RSI<def> ESI<kill>
	movq	buffer_defaults+128, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	Fcons
	movl	$91, %esi
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	SET_RAW_SYNTAX_ENTRY
	movl	$22, %esi
	movl	%esi, %edi
	movl	$366, %esi              # imm = 0x16E
                                        # kill: RSI<def> ESI<kill>
	movq	buffer_defaults+128, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	Fcons
	movl	$93, %esi
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	SET_RAW_SYNTAX_ENTRY
	movl	$18, %esi
	movl	%esi, %edi
	movl	$502, %esi              # imm = 0x1F6
                                        # kill: RSI<def> ESI<kill>
	movq	buffer_defaults+128, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	Fcons
	movl	$123, %esi
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	SET_RAW_SYNTAX_ENTRY
	movl	$22, %esi
	movl	%esi, %edi
	movl	$494, %esi              # imm = 0x1EE
                                        # kill: RSI<def> ESI<kill>
	movq	buffer_defaults+128, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	Fcons
	movl	$125, %esi
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	SET_RAW_SYNTAX_ENTRY
	xorl	%edi, %edi
	movq	buffer_defaults+128, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$30, %esi
	movl	%esi, %edi
	movq	%rax, %rsi
	callq	Fcons
	movl	$34, %esi
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	SET_RAW_SYNTAX_ENTRY
	xorl	%edi, %edi
	movq	buffer_defaults+128, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$38, %esi
	movl	%esi, %edi
	movq	%rax, %rsi
	callq	Fcons
	movl	$92, %esi
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	SET_RAW_SYNTAX_ENTRY
	movl	$3, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	Vsyntax_code_object, %rdi
	callq	AREF
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
.LBB50_21:                              # %for.cond.52
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$10, -4(%rbp)
	jge	.LBB50_24
# BB#22:                                # %for.body.55
                                        #   in Loop: Header=BB50_21 Depth=1
	movslq	-4(%rbp), %rax
	movsbl	.L.str.42(,%rax), %ecx
	movl	%ecx, -8(%rbp)
	movq	buffer_defaults+128, %rdi
	movl	-8(%rbp), %esi
	movq	-16(%rbp), %rdx
	callq	SET_RAW_SYNTAX_ENTRY
# BB#23:                                # %for.inc.57
                                        #   in Loop: Header=BB50_21 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB50_21
.LBB50_24:                              # %for.end.59
	movl	$1, %eax
	movl	%eax, %esi
	movq	Vsyntax_code_object, %rdi
	callq	AREF
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
.LBB50_25:                              # %for.cond.61
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$12, -4(%rbp)
	jge	.LBB50_28
# BB#26:                                # %for.body.64
                                        #   in Loop: Header=BB50_25 Depth=1
	movslq	-4(%rbp), %rax
	movsbl	.L.str.43(,%rax), %ecx
	movl	%ecx, -8(%rbp)
	movq	buffer_defaults+128, %rdi
	movl	-8(%rbp), %esi
	movq	-16(%rbp), %rdx
	callq	SET_RAW_SYNTAX_ENTRY
# BB#27:                                # %for.inc.68
                                        #   in Loop: Header=BB50_25 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB50_25
.LBB50_28:                              # %for.end.70
	movl	$2, %eax
	movl	%eax, %esi
	movq	Vsyntax_code_object, %rdi
	callq	AREF
	movl	$128, %esi
	movl	$4194303, %edx          # imm = 0x3FFFFF
	movq	%rax, -16(%rbp)
	movq	buffer_defaults+128, %rdi
	movq	-16(%rbp), %rcx
	callq	char_table_set_range
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end50:
	.size	init_syntax_once, .Lfunc_end50-init_syntax_once
	.cfi_endproc

	.globl	syms_of_syntax
	.align	16, 0x90
	.type	syms_of_syntax,@function
syms_of_syntax:                         # @syms_of_syntax
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp157:
	.cfi_def_cfa_offset 16
.Ltmp158:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp159:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movabsq	$Vsyntax_code_object, %rdi
	callq	staticpro
	movabsq	$gl_state, %rdi
	callq	staticpro
	movabsq	$gl_state, %rdi
	addq	$32, %rdi
	callq	staticpro
	movabsq	$gl_state, %rdi
	addq	$40, %rdi
	callq	staticpro
	movabsq	$gl_state, %rdi
	addq	$48, %rdi
	callq	staticpro
	movabsq	$re_match_object, %rdi
	callq	staticpro
	movl	$828, %edi              # imm = 0x33C
	callq	builtin_lisp_symbol
	movl	$373, %edi              # imm = 0x175
	movq	%rax, -8(%rbp)          # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$828, %edi              # imm = 0x33C
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$372, %edi              # imm = 0x174
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$1, %edi
	movl	$2, %ecx
	movl	%ecx, %esi
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	listn
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movq	-16(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movl	$828, %edi              # imm = 0x33C
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$374, %edi              # imm = 0x176
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.44, %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	build_pure_c_string
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movq	%rax, -56(%rbp)         # 8-byte Spill
# BB#1:                                 # %do.body
	movabsq	$syms_of_syntax.b_fwd, %rdi
	movabsq	$.L.str.45, %rsi
	movabsq	$globals, %rax
	addq	$3419, %rax             # imm = 0xD5B
	movq	%rax, %rdx
	callq	defvar_bool
# BB#2:                                 # %do.end
	jmp	.LBB51_3
.LBB51_3:                               # %do.body.10
	movabsq	$syms_of_syntax.b_fwd.46, %rdi
	movabsq	$.L.str.47, %rsi
	movabsq	$globals, %rax
	addq	$3420, %rax             # imm = 0xD5C
	movq	%rax, %rdx
	callq	defvar_bool
# BB#4:                                 # %do.end.11
	jmp	.LBB51_5
.LBB51_5:                               # %do.body.12
	movabsq	$syms_of_syntax.i_fwd, %rdi
	movabsq	$.L.str.48, %rsi
	movabsq	$globals, %rax
	addq	$3296, %rax             # imm = 0xCE0
	movq	%rax, %rdx
	callq	defvar_int
# BB#6:                                 # %do.end.13
	movabsq	$.L.str.48, %rdi
	movq	$-1, globals+3296
	callq	intern
	movq	%rax, %rdi
	callq	Fmake_variable_buffer_local
	movb	$0, globals+3439
	movq	%rax, -64(%rbp)         # 8-byte Spill
# BB#7:                                 # %do.body.16
	movabsq	$syms_of_syntax.b_fwd.49, %rdi
	movabsq	$.L.str.50, %rsi
	movabsq	$globals, %rax
	addq	$3439, %rax             # imm = 0xD6F
	movq	%rax, %rdx
	callq	defvar_bool
# BB#8:                                 # %do.end.17
	jmp	.LBB51_9
.LBB51_9:                               # %do.body.18
	movabsq	$syms_of_syntax.b_fwd.51, %rdi
	movabsq	$.L.str.52, %rsi
	movabsq	$globals, %rax
	addq	$3414, %rax             # imm = 0xD56
	movq	%rax, %rdx
	callq	defvar_bool
# BB#10:                                # %do.end.19
	movb	$0, globals+3414
# BB#11:                                # %do.body.20
	movabsq	$syms_of_syntax.b_fwd.53, %rdi
	movabsq	$.L.str.54, %rsi
	movabsq	$globals, %rax
	addq	$3418, %rax             # imm = 0xD5A
	movq	%rax, %rdx
	callq	defvar_bool
# BB#12:                                # %do.end.21
	movb	$1, globals+3418
# BB#13:                                # %do.body.22
	movabsq	$syms_of_syntax.o_fwd, %rdi
	movabsq	$.L.str.55, %rsi
	movabsq	$globals, %rax
	addq	$768, %rax              # imm = 0x300
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#14:                                # %do.end.23
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fmake_char_table
	movq	%rax, globals+768
# BB#15:                                # %do.body.27
	movabsq	$syms_of_syntax.b_fwd.56, %rdi
	movabsq	$.L.str.57, %rsi
	movabsq	$globals, %rax
	addq	$3360, %rax             # imm = 0xD20
	movq	%rax, %rdx
	callq	defvar_bool
# BB#16:                                # %do.end.28
	movl	$287, %edi              # imm = 0x11F
	movb	$0, globals+3360
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	Fmake_variable_buffer_local
	movabsq	$Ssyntax_table_p, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	defsubr
	movabsq	$Ssyntax_table, %rdi
	callq	defsubr
	movabsq	$Sstandard_syntax_table, %rdi
	callq	defsubr
	movabsq	$Scopy_syntax_table, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sset_syntax_table, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Schar_syntax, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Smatching_paren, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sstring_to_syntax, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Smodify_syntax_entry, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sinternal_describe_syntax_value, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sforward_word, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sskip_chars_forward, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sskip_chars_backward, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sskip_syntax_forward, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sskip_syntax_backward, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sforward_comment, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sscan_lists, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sscan_sexps, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sbackward_prefix_chars, %rdi
	callq	defsubr
	movabsq	$Sparse_partial_sexp, %rax
	movq	%rax, %rdi
	callq	defsubr
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end51:
	.size	syms_of_syntax, .Lfunc_end51-syms_of_syntax
	.cfi_endproc

	.align	16, 0x90
	.type	in_classes,@function
in_classes:                             # @in_classes
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp160:
	.cfi_def_cfa_offset 16
.Ltmp161:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp162:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movb	$0, -17(%rbp)
.LBB52_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB52_5
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB52_1 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %edi
	movq	-32(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, %esi
	callq	re_iswctype
	cmpb	$0, %al
	je	.LBB52_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB52_1 Depth=1
	movb	$1, -17(%rbp)
.LBB52_4:                               # %if.end
                                        #   in Loop: Header=BB52_1 Depth=1
	jmp	.LBB52_1
.LBB52_5:                               # %while.end
	movb	-17(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end52:
	.size	in_classes, .Lfunc_end52-in_classes
	.cfi_endproc

	.align	16, 0x90
	.type	SYNTAX_FLAGS_COMMENT_STYLEC2,@function
SYNTAX_FLAGS_COMMENT_STYLEC2:           # @SYNTAX_FLAGS_COMMENT_STYLEC2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp163:
	.cfi_def_cfa_offset 16
.Ltmp164:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp165:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	sarl	$22, %edi
	andl	$2, %edi
	movl	%edi, %eax
	popq	%rbp
	retq
.Lfunc_end53:
	.size	SYNTAX_FLAGS_COMMENT_STYLEC2, .Lfunc_end53-SYNTAX_FLAGS_COMMENT_STYLEC2
	.cfi_endproc

	.align	16, 0x90
	.type	SYNTAX_COMEND_FIRST,@function
SYNTAX_COMEND_FIRST:                    # @SYNTAX_COMEND_FIRST
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp166:
	.cfi_def_cfa_offset 16
.Ltmp167:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp168:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$1, %esi
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	syntax_property_with_flags
	movl	%eax, %edi
	callq	SYNTAX_FLAGS_COMEND_FIRST
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end54:
	.size	SYNTAX_COMEND_FIRST, .Lfunc_end54-SYNTAX_COMEND_FIRST
	.cfi_endproc

	.align	16, 0x90
	.type	find_defun_start,@function
find_defun_start:                       # @find_defun_start
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp169:
	.cfi_def_cfa_offset 16
.Ltmp170:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp171:
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	current_buffer, %rsi
	movq	736(%rsi), %rsi
	addq	$0, %rsi
	movq	%rsi, -32(%rbp)
	movq	current_buffer, %rsi
	movq	744(%rsi), %rsi
	addq	$0, %rsi
	movq	%rsi, -40(%rbp)
	movq	current_buffer, %rsi
	cmpq	find_start_buffer, %rsi
	jne	.LBB55_6
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	find_start_pos, %rcx
	addq	$1000, %rcx             # imm = 0x3E8
	cmpq	%rcx, %rax
	jg	.LBB55_6
# BB#2:                                 # %land.lhs.true.4
	movq	-16(%rbp), %rax
	cmpq	find_start_value, %rax
	jl	.LBB55_6
# BB#3:                                 # %land.lhs.true.6
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	cmpq	find_start_begv, %rax
	jne	.LBB55_6
# BB#4:                                 # %land.lhs.true.8
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	48(%rax), %rax
	cmpq	find_start_modiff, %rax
	jne	.LBB55_6
# BB#5:                                 # %if.then
	movq	find_start_value, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB55_57
.LBB55_6:                               # %if.end
	testb	$1, globals+3418
	jne	.LBB55_8
# BB#7:                                 # %if.then.10
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	%rax, find_start_value
	movq	current_buffer, %rax
	movq	760(%rax), %rax
	movq	%rax, find_start_value_byte
	jmp	.LBB55_56
.LBB55_8:                               # %if.end.12
	movq	$-1, %r8
	movl	$1, %r9d
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	current_buffer, %rax
	movq	752(%rax), %rdx
	movq	current_buffer, %rax
	movq	760(%rax), %rcx
	callq	scan_newline
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	SETUP_BUFFER_SYNTAX_TABLE
.LBB55_9:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	current_buffer, %rcx
	cmpq	752(%rcx), %rax
	jle	.LBB55_55
# BB#10:                                # %while.body
                                        #   in Loop: Header=BB55_9 Depth=1
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB55_12
# BB#11:                                # %cond.true
                                        #   in Loop: Header=BB55_9 Depth=1
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	movq	%rax, %rdi
	callq	FETCH_MULTIBYTE_CHAR
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB55_30
.LBB55_12:                              # %cond.false
                                        #   in Loop: Header=BB55_9 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB55_13
	jmp	.LBB55_17
.LBB55_13:                              # %cond.true.24
                                        #   in Loop: Header=BB55_9 Depth=1
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB55_15
# BB#14:                                # %cond.true.29
                                        #   in Loop: Header=BB55_9 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB55_16
.LBB55_15:                              # %cond.false.31
                                        #   in Loop: Header=BB55_9 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB55_16
.LBB55_16:                              # %cond.end
                                        #   in Loop: Header=BB55_9 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	current_buffer, %rcx
	movq	744(%rcx), %rcx
	addq	$0, %rcx
	addq	%rcx, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$0, %edx
	cmpl	$128, %edx
	jb	.LBB55_21
	jmp	.LBB55_25
.LBB55_17:                              # %cond.false.40
                                        #   in Loop: Header=BB55_9 Depth=1
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB55_19
# BB#18:                                # %cond.true.47
                                        #   in Loop: Header=BB55_9 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB55_20
.LBB55_19:                              # %cond.false.50
                                        #   in Loop: Header=BB55_9 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	jmp	.LBB55_20
.LBB55_20:                              # %cond.end.51
                                        #   in Loop: Header=BB55_9 Depth=1
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	current_buffer, %rcx
	movq	744(%rcx), %rcx
	addq	$0, %rcx
	addq	%rcx, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, %eax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB55_25
.LBB55_21:                              # %cond.true.64
                                        #   in Loop: Header=BB55_9 Depth=1
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB55_23
# BB#22:                                # %cond.true.71
                                        #   in Loop: Header=BB55_9 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB55_24
.LBB55_23:                              # %cond.false.74
                                        #   in Loop: Header=BB55_9 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB55_24
.LBB55_24:                              # %cond.end.75
                                        #   in Loop: Header=BB55_9 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	current_buffer, %rcx
	movq	744(%rcx), %rcx
	addq	$0, %rcx
	addq	%rcx, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, -100(%rbp)        # 4-byte Spill
	jmp	.LBB55_29
.LBB55_25:                              # %cond.false.85
                                        #   in Loop: Header=BB55_9 Depth=1
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB55_27
# BB#26:                                # %cond.true.92
                                        #   in Loop: Header=BB55_9 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB55_28
.LBB55_27:                              # %cond.false.95
                                        #   in Loop: Header=BB55_9 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB55_28
.LBB55_28:                              # %cond.end.96
                                        #   in Loop: Header=BB55_9 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	current_buffer, %rcx
	movq	744(%rcx), %rcx
	addq	$0, %rcx
	addq	%rcx, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$4194048, %edx          # imm = 0x3FFF00
	movl	%edx, -100(%rbp)        # 4-byte Spill
.LBB55_29:                              # %cond.end.107
                                        #   in Loop: Header=BB55_9 Depth=1
	movl	-100(%rbp), %eax        # 4-byte Reload
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB55_30:                              # %cond.end.109
                                        #   in Loop: Header=BB55_9 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	movl	$1, %esi
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %edi
	callq	syntax_property
	cmpl	$4, %eax
	jne	.LBB55_54
# BB#31:                                # %if.then.114
                                        #   in Loop: Header=BB55_9 Depth=1
	movq	$-1, %rsi
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	SETUP_SYNTAX_TABLE
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB55_33
# BB#32:                                # %cond.true.122
                                        #   in Loop: Header=BB55_9 Depth=1
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	movq	%rax, %rdi
	callq	FETCH_MULTIBYTE_CHAR
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jmp	.LBB55_51
.LBB55_33:                              # %cond.false.126
                                        #   in Loop: Header=BB55_9 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB55_34
	jmp	.LBB55_38
.LBB55_34:                              # %cond.true.127
                                        #   in Loop: Header=BB55_9 Depth=1
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB55_36
# BB#35:                                # %cond.true.134
                                        #   in Loop: Header=BB55_9 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB55_37
.LBB55_36:                              # %cond.false.137
                                        #   in Loop: Header=BB55_9 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	jmp	.LBB55_37
.LBB55_37:                              # %cond.end.138
                                        #   in Loop: Header=BB55_9 Depth=1
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	current_buffer, %rcx
	movq	744(%rcx), %rcx
	addq	$0, %rcx
	addq	%rcx, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$0, %edx
	cmpl	$128, %edx
	jb	.LBB55_42
	jmp	.LBB55_46
.LBB55_38:                              # %cond.false.151
                                        #   in Loop: Header=BB55_9 Depth=1
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB55_40
# BB#39:                                # %cond.true.158
                                        #   in Loop: Header=BB55_9 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB55_41
.LBB55_40:                              # %cond.false.161
                                        #   in Loop: Header=BB55_9 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB55_41
.LBB55_41:                              # %cond.end.162
                                        #   in Loop: Header=BB55_9 Depth=1
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	current_buffer, %rcx
	movq	744(%rcx), %rcx
	addq	$0, %rcx
	addq	%rcx, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, %eax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB55_46
.LBB55_42:                              # %cond.true.175
                                        #   in Loop: Header=BB55_9 Depth=1
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB55_44
# BB#43:                                # %cond.true.182
                                        #   in Loop: Header=BB55_9 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jmp	.LBB55_45
.LBB55_44:                              # %cond.false.185
                                        #   in Loop: Header=BB55_9 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	jmp	.LBB55_45
.LBB55_45:                              # %cond.end.186
                                        #   in Loop: Header=BB55_9 Depth=1
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	current_buffer, %rcx
	movq	744(%rcx), %rcx
	addq	$0, %rcx
	addq	%rcx, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, -156(%rbp)        # 4-byte Spill
	jmp	.LBB55_50
.LBB55_46:                              # %cond.false.196
                                        #   in Loop: Header=BB55_9 Depth=1
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB55_48
# BB#47:                                # %cond.true.203
                                        #   in Loop: Header=BB55_9 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB55_49
.LBB55_48:                              # %cond.false.206
                                        #   in Loop: Header=BB55_9 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	jmp	.LBB55_49
.LBB55_49:                              # %cond.end.207
                                        #   in Loop: Header=BB55_9 Depth=1
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	current_buffer, %rcx
	movq	744(%rcx), %rcx
	addq	$0, %rcx
	addq	%rcx, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$4194048, %edx          # imm = 0x3FFF00
	movl	%edx, -156(%rbp)        # 4-byte Spill
.LBB55_50:                              # %cond.end.218
                                        #   in Loop: Header=BB55_9 Depth=1
	movl	-156(%rbp), %eax        # 4-byte Reload
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB55_51:                              # %cond.end.220
                                        #   in Loop: Header=BB55_9 Depth=1
	movl	-124(%rbp), %eax        # 4-byte Reload
	movl	$1, %esi
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %edi
	callq	syntax_property
	cmpl	$4, %eax
	jne	.LBB55_53
# BB#52:                                # %if.then.225
	jmp	.LBB55_55
.LBB55_53:                              # %if.end.226
                                        #   in Loop: Header=BB55_9 Depth=1
	callq	SETUP_BUFFER_SYNTAX_TABLE
.LBB55_54:                              # %if.end.227
                                        #   in Loop: Header=BB55_9 Depth=1
	movq	$-2, %r8
	movl	$1, %r9d
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	current_buffer, %rcx
	movq	744(%rcx), %rcx
	addq	$0, %rcx
	movq	current_buffer, %rdx
	movq	752(%rdx), %rdx
	movq	current_buffer, %rsi
	movq	760(%rsi), %rsi
	movq	%rax, %rdi
	movq	%rsi, -176(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	movq	-176(%rbp), %rcx        # 8-byte Reload
	callq	scan_newline
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB55_9
.LBB55_55:                              # %while.end
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, find_start_value
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	movq	%rax, find_start_value_byte
	movq	current_buffer, %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	temp_set_point_both
.LBB55_56:                              # %found
	movq	current_buffer, %rax
	movq	%rax, find_start_buffer
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	48(%rax), %rax
	movq	%rax, find_start_modiff
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	%rax, find_start_begv
	movq	-16(%rbp), %rax
	movq	%rax, find_start_pos
	movq	find_start_value, %rax
	movq	%rax, -8(%rbp)
.LBB55_57:                              # %return
	movq	-8(%rbp), %rax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end55:
	.size	find_defun_start, .Lfunc_end55-find_defun_start
	.cfi_endproc

	.align	16, 0x90
	.type	syntax_multibyte,@function
syntax_multibyte:                       # @syntax_multibyte
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp172:
	.cfi_def_cfa_offset 16
.Ltmp173:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp174:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movb	%sil, %al
	movb	$1, %cl
	movl	%edi, -4(%rbp)
	andb	$1, %al
	movb	%al, -5(%rbp)
	testb	$1, %cl
	jne	.LBB56_1
	jmp	.LBB56_2
.LBB56_1:                               # %cond.true
	movl	-4(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB56_4
	jmp	.LBB56_3
.LBB56_2:                               # %cond.false
	movslq	-4(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jb	.LBB56_4
.LBB56_3:                               # %lor.lhs.false
	testb	$1, -5(%rbp)
	jne	.LBB56_5
.LBB56_4:                               # %cond.true.4
	movl	$1, %esi
	movl	-4(%rbp), %edi
	callq	syntax_property
	movl	%eax, -12(%rbp)         # 4-byte Spill
	jmp	.LBB56_6
.LBB56_5:                               # %cond.false.5
	movl	$3, %eax
	movl	%eax, -12(%rbp)         # 4-byte Spill
	jmp	.LBB56_6
.LBB56_6:                               # %cond.end
	movl	-12(%rbp), %eax         # 4-byte Reload
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end56:
	.size	syntax_multibyte, .Lfunc_end56-syntax_multibyte
	.cfi_endproc

	.type	gl_state,@object        # @gl_state
	.comm	gl_state,104,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Error in syntax_table logic for to-the-end intervals"
	.size	.L.str, 53

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Error in syntax_table logic for intervals <-"
	.size	.L.str.1, 45

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Error in syntax_table logic for intervals ->"
	.size	.L.str.2, 45

	.type	syntax_spec_code,@object # @syntax_spec_code
	.section	.rodata,"a",@progbits
	.globl	syntax_spec_code
	.align	16
syntax_spec_code:
	.asciz	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\016\007\377\b\377\377\006\004\005\377\377\377\000\001\n\377\377\377\377\377\377\377\377\377\377\377\377\013\377\f\377\r\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\002\377\377\377\377\t\377\377\003\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\002\377\377\377\377\017\377\377\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.size	syntax_spec_code, 256

	.type	syntax_code_spec,@object # @syntax_code_spec
	.globl	syntax_code_spec
	.align	16
syntax_code_spec:
	.ascii	" .w_()'\"$\\/<>@!|"
	.size	syntax_code_spec, 16

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"Invalid syntax description letter: %c"
	.size	.L.str.3, 38

	.type	Vsyntax_code_object,@object # @Vsyntax_code_object
	.local	Vsyntax_code_object
	.comm	Vsyntax_code_object,8,8
	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"default"
	.size	.L.str.4, 8

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"deeper char-table ..."
	.size	.L.str.5, 22

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"invalid"
	.size	.L.str.6, 8

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	" "
	.size	.L.str.7, 2

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"1"
	.size	.L.str.8, 2

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"2"
	.size	.L.str.9, 2

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"3"
	.size	.L.str.10, 2

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"4"
	.size	.L.str.11, 2

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"p"
	.size	.L.str.12, 2

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"b"
	.size	.L.str.13, 2

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"c"
	.size	.L.str.14, 2

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"n"
	.size	.L.str.15, 2

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"\twhich means: "
	.size	.L.str.16, 15

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"whitespace"
	.size	.L.str.17, 11

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"punctuation"
	.size	.L.str.18, 12

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"word"
	.size	.L.str.19, 5

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"symbol"
	.size	.L.str.20, 7

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"open"
	.size	.L.str.21, 5

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"close"
	.size	.L.str.22, 6

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"prefix"
	.size	.L.str.23, 7

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"string"
	.size	.L.str.24, 7

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"math"
	.size	.L.str.25, 5

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"escape"
	.size	.L.str.26, 7

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"charquote"
	.size	.L.str.27, 10

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"comment"
	.size	.L.str.28, 8

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"endcomment"
	.size	.L.str.29, 11

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"inherit"
	.size	.L.str.30, 8

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"comment fence"
	.size	.L.str.31, 14

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"string fence"
	.size	.L.str.32, 13

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	", matches "
	.size	.L.str.33, 11

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	",\n\t  is the first character of a comment-start sequence"
	.size	.L.str.34, 56

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	",\n\t  is the second character of a comment-start sequence"
	.size	.L.str.35, 57

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	",\n\t  is the first character of a comment-end sequence"
	.size	.L.str.36, 54

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	",\n\t  is the second character of a comment-end sequence"
	.size	.L.str.37, 55

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	" (comment style b)"
	.size	.L.str.38, 19

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	" (comment style c)"
	.size	.L.str.39, 19

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	" (nestable)"
	.size	.L.str.40, 12

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	",\n\t  is a prefix character for `backward-prefix-chars'"
	.size	.L.str.41, 55

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"_-+*/&|<>="
	.size	.L.str.42, 11

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	".,;:?!#@~^'`"
	.size	.L.str.43, 13

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"Scan error"
	.size	.L.str.44, 11

	.type	syms_of_syntax.b_fwd,@object # @syms_of_syntax.b_fwd
	.local	syms_of_syntax.b_fwd
	.comm	syms_of_syntax.b_fwd,16,8
	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"parse-sexp-ignore-comments"
	.size	.L.str.45, 27

	.type	syms_of_syntax.b_fwd.46,@object # @syms_of_syntax.b_fwd.46
	.local	syms_of_syntax.b_fwd.46
	.comm	syms_of_syntax.b_fwd.46,16,8
	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"parse-sexp-lookup-properties"
	.size	.L.str.47, 29

	.type	syms_of_syntax.i_fwd,@object # @syms_of_syntax.i_fwd
	.local	syms_of_syntax.i_fwd
	.comm	syms_of_syntax.i_fwd,16,8
	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"syntax-propertize--done"
	.size	.L.str.48, 24

	.type	syms_of_syntax.b_fwd.49,@object # @syms_of_syntax.b_fwd.49
	.local	syms_of_syntax.b_fwd.49
	.comm	syms_of_syntax.b_fwd.49,16,8
	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"words-include-escapes"
	.size	.L.str.50, 22

	.type	syms_of_syntax.b_fwd.51,@object # @syms_of_syntax.b_fwd.51
	.local	syms_of_syntax.b_fwd.51
	.comm	syms_of_syntax.b_fwd.51,16,8
	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"multibyte-syntax-as-symbol"
	.size	.L.str.52, 27

	.type	syms_of_syntax.b_fwd.53,@object # @syms_of_syntax.b_fwd.53
	.local	syms_of_syntax.b_fwd.53
	.comm	syms_of_syntax.b_fwd.53,16,8
	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"open-paren-in-column-0-is-defun-start"
	.size	.L.str.54, 38

	.type	syms_of_syntax.o_fwd,@object # @syms_of_syntax.o_fwd
	.local	syms_of_syntax.o_fwd
	.comm	syms_of_syntax.o_fwd,16,8
	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"find-word-boundary-function-table"
	.size	.L.str.55, 34

	.type	syms_of_syntax.b_fwd.56,@object # @syms_of_syntax.b_fwd.56
	.local	syms_of_syntax.b_fwd.56
	.comm	syms_of_syntax.b_fwd.56,16,8
	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"comment-end-can-be-escaped"
	.size	.L.str.57, 27

	.type	Ssyntax_table,@object   # @Ssyntax_table
	.data
	.align	8
Ssyntax_table:
	.quad	167772160               # 0xa000000
	.quad	Fsyntax_table
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.64
	.quad	0
	.quad	0
	.size	Ssyntax_table, 48

	.type	Sstandard_syntax_table,@object # @Sstandard_syntax_table
	.align	8
Sstandard_syntax_table:
	.quad	167772160               # 0xa000000
	.quad	Fstandard_syntax_table
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.65
	.quad	0
	.quad	0
	.size	Sstandard_syntax_table, 48

	.type	Sbackward_prefix_chars,@object # @Sbackward_prefix_chars
	.align	8
Sbackward_prefix_chars:
	.quad	167772160               # 0xa000000
	.quad	Fbackward_prefix_chars
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.83
	.quad	0
	.quad	0
	.size	Sbackward_prefix_chars, 48

	.type	.L.str.58,@object       # @.str.58
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.58:
	.asciz	"parse-sexp-propertize-function modified the buffer!"
	.size	.L.str.58, 52

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"parse-sexp-propertize-function did not move syntax-propertize--done"
	.size	.L.str.59, 68

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"Invalid ISO C character class"
	.size	.L.str.60, 30

	.type	find_start_value_byte,@object # @find_start_value_byte
	.local	find_start_value_byte
	.comm	find_start_value_byte,8,8
	.type	find_start_value,@object # @find_start_value
	.local	find_start_value
	.comm	find_start_value,8,8
	.type	find_start_buffer,@object # @find_start_buffer
	.local	find_start_buffer
	.comm	find_start_buffer,8,8
	.type	find_start_pos,@object  # @find_start_pos
	.local	find_start_pos
	.comm	find_start_pos,8,8
	.type	find_start_begv,@object # @find_start_begv
	.local	find_start_begv
	.comm	find_start_begv,8,8
	.type	find_start_modiff,@object # @find_start_modiff
	.local	find_start_modiff
	.comm	find_start_modiff,8,8
	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"Containing expression ends prematurely"
	.size	.L.str.61, 39

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"Unbalanced parentheses"
	.size	.L.str.62, 23

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"syntax-table-p"
	.size	.L.str.63, 15

	.type	Ssyntax_table_p,@object # @Ssyntax_table_p
	.data
	.align	8
Ssyntax_table_p:
	.quad	167772160               # 0xa000000
	.quad	Fsyntax_table_p
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.63
	.quad	0
	.quad	0
	.size	Ssyntax_table_p, 48

	.type	.L.str.64,@object       # @.str.64
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.64:
	.asciz	"syntax-table"
	.size	.L.str.64, 13

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"standard-syntax-table"
	.size	.L.str.65, 22

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"copy-syntax-table"
	.size	.L.str.66, 18

	.type	Scopy_syntax_table,@object # @Scopy_syntax_table
	.data
	.align	8
Scopy_syntax_table:
	.quad	167772160               # 0xa000000
	.quad	Fcopy_syntax_table
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.66
	.quad	0
	.quad	0
	.size	Scopy_syntax_table, 48

	.type	.L.str.67,@object       # @.str.67
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.67:
	.asciz	"set-syntax-table"
	.size	.L.str.67, 17

	.type	Sset_syntax_table,@object # @Sset_syntax_table
	.data
	.align	8
Sset_syntax_table:
	.quad	167772160               # 0xa000000
	.quad	Fset_syntax_table
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.67
	.quad	0
	.quad	0
	.size	Sset_syntax_table, 48

	.type	.L.str.68,@object       # @.str.68
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.68:
	.asciz	"char-syntax"
	.size	.L.str.68, 12

	.type	Schar_syntax,@object    # @Schar_syntax
	.data
	.align	8
Schar_syntax:
	.quad	167772160               # 0xa000000
	.quad	Fchar_syntax
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.68
	.quad	0
	.quad	0
	.size	Schar_syntax, 48

	.type	.L.str.69,@object       # @.str.69
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.69:
	.asciz	"matching-paren"
	.size	.L.str.69, 15

	.type	Smatching_paren,@object # @Smatching_paren
	.data
	.align	8
Smatching_paren:
	.quad	167772160               # 0xa000000
	.quad	Fmatching_paren
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.69
	.quad	0
	.quad	0
	.size	Smatching_paren, 48

	.type	.L.str.70,@object       # @.str.70
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.70:
	.asciz	"string-to-syntax"
	.size	.L.str.70, 17

	.type	Sstring_to_syntax,@object # @Sstring_to_syntax
	.data
	.align	8
Sstring_to_syntax:
	.quad	167772160               # 0xa000000
	.quad	Fstring_to_syntax
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.70
	.quad	0
	.quad	0
	.size	Sstring_to_syntax, 48

	.type	.L.str.71,@object       # @.str.71
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.71:
	.asciz	"modify-syntax-entry"
	.size	.L.str.71, 20

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"cSet syntax for character: \nsSet syntax for %s to: "
	.size	.L.str.72, 52

	.type	Smodify_syntax_entry,@object # @Smodify_syntax_entry
	.data
	.align	8
Smodify_syntax_entry:
	.quad	167772160               # 0xa000000
	.quad	Fmodify_syntax_entry
	.short	2                       # 0x2
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.71
	.quad	.L.str.72
	.quad	0
	.size	Smodify_syntax_entry, 48

	.type	.L.str.73,@object       # @.str.73
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.73:
	.asciz	"internal-describe-syntax-value"
	.size	.L.str.73, 31

	.type	Sinternal_describe_syntax_value,@object # @Sinternal_describe_syntax_value
	.data
	.align	8
Sinternal_describe_syntax_value:
	.quad	167772160               # 0xa000000
	.quad	Finternal_describe_syntax_value
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.73
	.quad	0
	.quad	0
	.size	Sinternal_describe_syntax_value, 48

	.type	.L.str.74,@object       # @.str.74
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.74:
	.asciz	"forward-word"
	.size	.L.str.74, 13

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"^p"
	.size	.L.str.75, 3

	.type	Sforward_word,@object   # @Sforward_word
	.data
	.align	8
Sforward_word:
	.quad	167772160               # 0xa000000
	.quad	Fforward_word
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.74
	.quad	.L.str.75
	.quad	0
	.size	Sforward_word, 48

	.type	.L.str.76,@object       # @.str.76
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.76:
	.asciz	"skip-chars-forward"
	.size	.L.str.76, 19

	.type	Sskip_chars_forward,@object # @Sskip_chars_forward
	.data
	.align	8
Sskip_chars_forward:
	.quad	167772160               # 0xa000000
	.quad	Fskip_chars_forward
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.76
	.quad	0
	.quad	0
	.size	Sskip_chars_forward, 48

	.type	.L.str.77,@object       # @.str.77
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.77:
	.asciz	"skip-chars-backward"
	.size	.L.str.77, 20

	.type	Sskip_chars_backward,@object # @Sskip_chars_backward
	.data
	.align	8
Sskip_chars_backward:
	.quad	167772160               # 0xa000000
	.quad	Fskip_chars_backward
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.77
	.quad	0
	.quad	0
	.size	Sskip_chars_backward, 48

	.type	.L.str.78,@object       # @.str.78
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.78:
	.asciz	"skip-syntax-forward"
	.size	.L.str.78, 20

	.type	Sskip_syntax_forward,@object # @Sskip_syntax_forward
	.data
	.align	8
Sskip_syntax_forward:
	.quad	167772160               # 0xa000000
	.quad	Fskip_syntax_forward
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.78
	.quad	0
	.quad	0
	.size	Sskip_syntax_forward, 48

	.type	.L.str.79,@object       # @.str.79
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.79:
	.asciz	"skip-syntax-backward"
	.size	.L.str.79, 21

	.type	Sskip_syntax_backward,@object # @Sskip_syntax_backward
	.data
	.align	8
Sskip_syntax_backward:
	.quad	167772160               # 0xa000000
	.quad	Fskip_syntax_backward
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.79
	.quad	0
	.quad	0
	.size	Sskip_syntax_backward, 48

	.type	.L.str.80,@object       # @.str.80
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.80:
	.asciz	"forward-comment"
	.size	.L.str.80, 16

	.type	Sforward_comment,@object # @Sforward_comment
	.data
	.align	8
Sforward_comment:
	.quad	167772160               # 0xa000000
	.quad	Fforward_comment
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.80
	.quad	0
	.quad	0
	.size	Sforward_comment, 48

	.type	.L.str.81,@object       # @.str.81
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.81:
	.asciz	"scan-lists"
	.size	.L.str.81, 11

	.type	Sscan_lists,@object     # @Sscan_lists
	.data
	.align	8
Sscan_lists:
	.quad	167772160               # 0xa000000
	.quad	Fscan_lists
	.short	3                       # 0x3
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.81
	.quad	0
	.quad	0
	.size	Sscan_lists, 48

	.type	.L.str.82,@object       # @.str.82
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.82:
	.asciz	"scan-sexps"
	.size	.L.str.82, 11

	.type	Sscan_sexps,@object     # @Sscan_sexps
	.data
	.align	8
Sscan_sexps:
	.quad	167772160               # 0xa000000
	.quad	Fscan_sexps
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.82
	.quad	0
	.quad	0
	.size	Sscan_sexps, 48

	.type	.L.str.83,@object       # @.str.83
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.83:
	.asciz	"backward-prefix-chars"
	.size	.L.str.83, 22

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"parse-partial-sexp"
	.size	.L.str.84, 19

	.type	Sparse_partial_sexp,@object # @Sparse_partial_sexp
	.data
	.align	8
Sparse_partial_sexp:
	.quad	167772160               # 0xa000000
	.quad	Fparse_partial_sexp
	.short	2                       # 0x2
	.short	6                       # 0x6
	.zero	4
	.quad	.L.str.84
	.quad	0
	.quad	0
	.size	Sparse_partial_sexp, 48


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
