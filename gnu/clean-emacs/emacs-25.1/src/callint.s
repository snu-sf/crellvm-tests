	.text
	.file	"callint.bc"
	.globl	Finteractive
	.align	16, 0x90
	.type	Finteractive,@function
Finteractive:                           # @Finteractive
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
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	Finteractive, .Lfunc_end0-Finteractive
	.cfi_endproc

	.globl	Ffuncall_interactively
	.align	16, 0x90
	.type	Ffuncall_interactively,@function
Ffuncall_interactively:                 # @Ffuncall_interactively
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
	movq	%rsi, -16(%rbp)
	callq	SPECPDL_INDEX
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	%rax, -24(%rbp)
	callq	temporarily_switch_to_single_kboard
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	Ffuncall
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	Ffuncall_interactively, .Lfunc_end1-Ffuncall_interactively
	.cfi_endproc

	.globl	Fcall_interactively
	.align	16, 0x90
	.type	Fcall_interactively,@function
Fcall_interactively:                    # @Fcall_interactively
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
	subq	$1696, %rsp             # imm = 0x6A0
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	$16384, -96(%rbp)       # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -104(%rbp)
	movb	$0, -105(%rbp)
	callq	SPECPDL_INDEX
	xorl	%edi, %edi
	movq	%rax, -120(%rbp)
	movb	$0, -185(%rbp)
	movb	$0, -201(%rbp)
	movq	globals+2344, %rax
	movq	%rax, -216(%rbp)
	movq	globals+2360, %rax
	movq	%rax, -232(%rbp)
	movq	globals+1984, %rax
	movq	%rax, -240(%rbp)
	movq	current_kboard, %rax
	movq	16(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-392(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movq	this_command_keys, %rax
	movq	%rax, -32(%rbp)
	movq	this_command_key_count, %rax
	movq	%rax, -200(%rbp)
	jmp	.LBB2_3
.LBB2_2:                                # %if.else
	movq	-32(%rbp), %rdi
	callq	CHECK_VECTOR
	movq	-32(%rbp), %rdi
	callq	ASIZE
	movq	%rax, -200(%rbp)
.LBB2_3:                                # %if.end
	movq	globals+400, %rax
	movq	%rax, -136(%rbp)
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB2_5
# BB#4:                                 # %if.then.6
	movl	$365, %edi              # imm = 0x16D
	movq	-16(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget
	movq	%rax, -88(%rbp)
	jmp	.LBB2_6
.LBB2_5:                                # %if.else.9
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -88(%rbp)
.LBB2_6:                                # %if.end.11
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)
	movq	$0, -144(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rdi
	callq	Finteractive_form
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB2_8
# BB#7:                                 # %if.then.20
	movq	-248(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	Fcar
	movq	%rax, -64(%rbp)
	movq	%rax, -56(%rbp)
	jmp	.LBB2_9
.LBB2_8:                                # %if.else.22
	movl	$286, %edi              # imm = 0x11E
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -408(%rbp)        # 8-byte Spill
.LBB2_9:                                # %if.end.24
	movq	-56(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB2_29
# BB#10:                                # %if.then.26
	movl	$901, %edi              # imm = 0x385
	movq	-16(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Findirect_function
	movq	%rax, -264(%rbp)
	movq	num_input_events, %rax
	movq	%rax, -272(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -256(%rbp)
	movq	-56(%rbp), %rdi
	movq	-264(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	movq	%rdi, -424(%rbp)        # 8-byte Spill
	jne	.LBB2_13
# BB#11:                                # %land.lhs.true
	movl	$271, %edi              # imm = 0x10F
	callq	builtin_lisp_symbol
	movq	-264(%rbp), %rcx
	subq	$3, %rcx
	cmpq	(%rcx), %rax
	jne	.LBB2_13
# BB#12:                                # %cond.true
	movq	-264(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	CAR_SAFE
	movq	%rax, -432(%rbp)        # 8-byte Spill
	jmp	.LBB2_14
.LBB2_13:                               # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -432(%rbp)        # 8-byte Spill
.LBB2_14:                               # %cond.end
	movq	-432(%rbp), %rax        # 8-byte Reload
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Feval
	movq	%rax, -56(%rbp)
	movq	-272(%rbp), %rax
	cmpq	num_input_events, %rax
	jne	.LBB2_16
# BB#15:                                # %lor.lhs.false
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-440(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB2_24
.LBB2_16:                               # %if.then.48
	movq	-56(%rbp), %rdi
	callq	Fcopy_sequence
	movq	%rax, %rdi
	callq	quotify_args
	movq	%rax, -280(%rbp)
	movq	-256(%rbp), %rdi
	movq	-280(%rbp), %rsi
	callq	fix_command
	movq	-16(%rbp), %rdi
	movq	-280(%rbp), %rsi
	callq	Fcons
	movq	%rax, -288(%rbp)
	testb	$1, globals+3385
	je	.LBB2_18
# BB#17:                                # %if.then.52
	movq	-288(%rbp), %rdi
	movq	globals+328, %rsi
	callq	Fdelete
	movq	%rax, globals+328
.LBB2_18:                               # %if.end.54
	movq	-288(%rbp), %rdi
	movq	globals+328, %rsi
	callq	Fcons
	movq	%rax, globals+328
	movq	globals+1000, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB2_23
# BB#19:                                # %land.lhs.true.61
	movq	globals+1000, %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jle	.LBB2_23
# BB#20:                                # %if.then.64
	movq	globals+1000, %rdi
	movq	globals+328, %rsi
	callq	Fnthcdr
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB2_22
# BB#21:                                # %if.then.70
	xorl	%edi, %edi
	movq	-72(%rbp), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	XSETCDR
.LBB2_22:                               # %if.end.72
	jmp	.LBB2_23
.LBB2_23:                               # %if.end.73
	jmp	.LBB2_24
.LBB2_24:                               # %if.end.74
	movq	-216(%rbp), %rax
	movq	%rax, globals+2344
	movq	-232(%rbp), %rax
	movq	%rax, globals+2360
	movq	-240(%rbp), %rax
	movq	%rax, globals+1984
	movq	current_kboard, %rdi
	movq	-224(%rbp), %rsi
	callq	kset_last_command
	movl	$475, %edi              # imm = 0x1DB
	movq	-120(%rbp), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$3, %edi
                                        # kill: RDI<def> EDI<kill>
	leaq	-320(%rbp), %rsi
	movq	%rax, -320(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -312(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -304(%rbp)
	callq	Fapply
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -296(%rbp)
# BB#25:                                # %do.body
	testb	$1, -105(%rbp)
	je	.LBB2_27
# BB#26:                                # %if.then.80
	xorl	%edi, %edi
	movb	$0, -105(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -472(%rbp)        # 8-byte Spill
.LBB2_27:                               # %if.end.83
	jmp	.LBB2_28
.LBB2_28:                               # %do.end
	movq	-296(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB2_250
.LBB2_29:                               # %if.end.84
	jmp	.LBB2_30
.LBB2_30:                               # %do.body.85
	movq	-56(%rbp), %rdi
	callq	SBYTES
	addq	$1, %rax
	cmpq	-96(%rbp), %rax
	jg	.LBB2_32
# BB#31:                                # %cond.true.89
	movq	-56(%rbp), %rdi
	callq	SBYTES
	incq	%rax
	movq	-96(%rbp), %rdi
	subq	%rax, %rdi
	movq	%rdi, -96(%rbp)
	movq	-56(%rbp), %rdi
	callq	SBYTES
	addq	$16, %rax
	andq	$-16, %rax
	movq	%rsp, %rdi
	subq	%rax, %rdi
	movq	%rdi, %rsp
	movq	%rdi, -480(%rbp)        # 8-byte Spill
	jmp	.LBB2_33
.LBB2_32:                               # %cond.false.95
	movb	$1, -105(%rbp)
	movq	-56(%rbp), %rdi
	callq	SBYTES
	addq	$1, %rax
	movq	%rax, %rdi
	callq	record_xmalloc
	movq	%rax, -480(%rbp)        # 8-byte Spill
.LBB2_33:                               # %cond.end.99
	movq	-480(%rbp), %rax        # 8-byte Reload
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	%rdi, -488(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	SDATA
	movq	-56(%rbp), %rdi
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	SBYTES
	addq	$1, %rax
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	-496(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	memcpy
# BB#34:                                # %do.end.104
	movq	$0, -128(%rbp)
.LBB2_35:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-128(%rbp), %rax
	cmpq	-200(%rbp), %rax
	jge	.LBB2_40
# BB#36:                                # %for.body
                                        #   in Loop: Header=BB2_35 Depth=1
	movq	-32(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	AREF
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB2_38
# BB#37:                                # %if.then.112
	jmp	.LBB2_40
.LBB2_38:                               # %if.end.113
                                        #   in Loop: Header=BB2_35 Depth=1
	jmp	.LBB2_39
.LBB2_39:                               # %for.inc
                                        #   in Loop: Header=BB2_35 Depth=1
	movq	-128(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -128(%rbp)
	jmp	.LBB2_35
.LBB2_40:                               # %for.end
	jmp	.LBB2_41
.LBB2_41:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_47 Depth 2
	movq	-144(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$43, %ecx
	jne	.LBB2_43
# BB#42:                                # %if.then.117
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	error
.LBB2_43:                               # %if.else.118
                                        #   in Loop: Header=BB2_41 Depth=1
	movq	-144(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$42, %ecx
	jne	.LBB2_58
# BB#44:                                # %if.then.122
                                        #   in Loop: Header=BB2_41 Depth=1
	xorl	%edi, %edi
	movq	-144(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -144(%rbp)
	movq	current_buffer, %rax
	movq	56(%rax), %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-504(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB2_57
# BB#45:                                # %if.then.126
                                        #   in Loop: Header=BB2_41 Depth=1
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-512(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB2_55
# BB#46:                                # %if.then.130
                                        #   in Loop: Header=BB2_41 Depth=1
	movq	-144(%rbp), %rax
	movq	%rax, -328(%rbp)
.LBB2_47:                               # %while.cond.131
                                        #   Parent Loop BB2_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-328(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB2_54
# BB#48:                                # %while.body.133
                                        #   in Loop: Header=BB2_47 Depth=2
	movq	-328(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$114, %ecx
	je	.LBB2_53
# BB#49:                                # %lor.lhs.false.137
                                        #   in Loop: Header=BB2_47 Depth=2
	movq	-328(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$112, %ecx
	je	.LBB2_53
# BB#50:                                # %lor.lhs.false.141
                                        #   in Loop: Header=BB2_47 Depth=2
	movq	-328(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$80, %ecx
	je	.LBB2_53
# BB#51:                                # %lor.lhs.false.145
                                        #   in Loop: Header=BB2_47 Depth=2
	movq	-328(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$10, %ecx
	je	.LBB2_53
# BB#52:                                # %if.then.149
                                        #   in Loop: Header=BB2_47 Depth=2
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	Fbarf_if_buffer_read_only
	movq	%rax, -520(%rbp)        # 8-byte Spill
.LBB2_53:                               # %if.end.152
                                        #   in Loop: Header=BB2_47 Depth=2
	movq	-328(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -328(%rbp)
	jmp	.LBB2_47
.LBB2_54:                               # %while.end
                                        #   in Loop: Header=BB2_41 Depth=1
	movb	$1, -201(%rbp)
	jmp	.LBB2_56
.LBB2_55:                               # %if.else.154
                                        #   in Loop: Header=BB2_41 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	Fbarf_if_buffer_read_only
	movq	%rax, -528(%rbp)        # 8-byte Spill
.LBB2_56:                               # %if.end.157
                                        #   in Loop: Header=BB2_41 Depth=1
	jmp	.LBB2_57
.LBB2_57:                               # %if.end.158
                                        #   in Loop: Header=BB2_41 Depth=1
	jmp	.LBB2_80
.LBB2_58:                               # %if.else.159
                                        #   in Loop: Header=BB2_41 Depth=1
	movq	-144(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$45, %ecx
	jne	.LBB2_60
# BB#59:                                # %if.then.163
                                        #   in Loop: Header=BB2_41 Depth=1
	movq	-144(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -144(%rbp)
	jmp	.LBB2_79
.LBB2_60:                               # %if.else.165
                                        #   in Loop: Header=BB2_41 Depth=1
	movq	-144(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$64, %ecx
	jne	.LBB2_74
# BB#61:                                # %if.then.169
                                        #   in Loop: Header=BB2_41 Depth=1
	movq	-128(%rbp), %rax
	cmpq	-200(%rbp), %rax
	jge	.LBB2_63
# BB#62:                                # %cond.true.172
                                        #   in Loop: Header=BB2_41 Depth=1
	movq	-32(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	AREF
	movq	%rax, -536(%rbp)        # 8-byte Spill
	jmp	.LBB2_64
.LBB2_63:                               # %cond.false.174
                                        #   in Loop: Header=BB2_41 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -536(%rbp)        # 8-byte Spill
.LBB2_64:                               # %cond.end.176
                                        #   in Loop: Header=BB2_41 Depth=1
	movq	-536(%rbp), %rax        # 8-byte Reload
	movq	%rax, -336(%rbp)
	movq	-336(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB2_73
# BB#65:                                # %land.lhs.true.182
                                        #   in Loop: Header=BB2_41 Depth=1
	movq	-336(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -344(%rbp)
	movq	-344(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB2_73
# BB#66:                                # %land.lhs.true.190
                                        #   in Loop: Header=BB2_41 Depth=1
	movq	-344(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -344(%rbp)
	movq	-344(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB2_73
# BB#67:                                # %land.lhs.true.197
                                        #   in Loop: Header=BB2_41 Depth=1
	movq	-344(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -344(%rbp)
	movq	-344(%rbp), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB2_68
	jmp	.LBB2_73
.LBB2_68:                               # %if.then.202
                                        #   in Loop: Header=BB2_41 Depth=1
	movq	-344(%rbp), %rdi
	callq	XWINDOW
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB2_72
# BB#69:                                # %land.lhs.true.205
                                        #   in Loop: Header=BB2_41 Depth=1
	cmpq	$0, minibuf_level
	jle	.LBB2_71
# BB#70:                                # %land.lhs.true.208
                                        #   in Loop: Header=BB2_41 Depth=1
	movq	-344(%rbp), %rax
	cmpq	minibuf_window, %rax
	je	.LBB2_72
.LBB2_71:                               # %if.then.211
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	error
.LBB2_72:                               # %if.end.212
                                        #   in Loop: Header=BB2_41 Depth=1
	movl	$689, %edi              # imm = 0x2B1
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	run_hook
	xorl	%edi, %edi
	movq	-344(%rbp), %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-544(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fselect_window
	movq	%rax, -552(%rbp)        # 8-byte Spill
.LBB2_73:                               # %if.end.216
                                        #   in Loop: Header=BB2_41 Depth=1
	movq	-144(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -144(%rbp)
	jmp	.LBB2_78
.LBB2_74:                               # %if.else.218
                                        #   in Loop: Header=BB2_41 Depth=1
	movq	-144(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$94, %ecx
	jne	.LBB2_76
# BB#75:                                # %if.then.222
                                        #   in Loop: Header=BB2_41 Depth=1
	movl	$507, %edi              # imm = 0x1FB
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	call0
	movq	-144(%rbp), %rdi
	addq	$1, %rdi
	movq	%rdi, -144(%rbp)
	movq	%rax, -560(%rbp)        # 8-byte Spill
	jmp	.LBB2_77
.LBB2_76:                               # %if.else.226
	jmp	.LBB2_82
.LBB2_77:                               # %if.end.227
                                        #   in Loop: Header=BB2_41 Depth=1
	jmp	.LBB2_78
.LBB2_78:                               # %if.end.228
                                        #   in Loop: Header=BB2_41 Depth=1
	jmp	.LBB2_79
.LBB2_79:                               # %if.end.229
                                        #   in Loop: Header=BB2_41 Depth=1
	jmp	.LBB2_80
.LBB2_80:                               # %if.end.230
                                        #   in Loop: Header=BB2_41 Depth=1
	jmp	.LBB2_81
.LBB2_81:                               # %if.end.231
                                        #   in Loop: Header=BB2_41 Depth=1
	jmp	.LBB2_41
.LBB2_82:                               # %while.end.232
	movq	-144(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	$2, -176(%rbp)
.LBB2_83:                               # %for.cond.233
                                        # =>This Inner Loop Header: Depth=1
	movq	-152(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB2_91
# BB#84:                                # %for.body.235
                                        #   in Loop: Header=BB2_83 Depth=1
	movq	-152(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$114, %ecx
	jne	.LBB2_86
# BB#85:                                # %if.then.239
                                        #   in Loop: Header=BB2_83 Depth=1
	movq	-176(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -176(%rbp)
	jmp	.LBB2_87
.LBB2_86:                               # %if.else.241
                                        #   in Loop: Header=BB2_83 Depth=1
	movq	-176(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -176(%rbp)
.LBB2_87:                               # %if.end.243
                                        #   in Loop: Header=BB2_83 Depth=1
	movl	$10, %esi
	movq	-152(%rbp), %rdi
	callq	strchr
	movq	%rax, -152(%rbp)
	cmpq	$0, -152(%rbp)
	je	.LBB2_89
# BB#88:                                # %if.then.246
                                        #   in Loop: Header=BB2_83 Depth=1
	movq	-152(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -152(%rbp)
	jmp	.LBB2_90
.LBB2_89:                               # %if.else.248
	jmp	.LBB2_91
.LBB2_90:                               # %if.end.249
                                        #   in Loop: Header=BB2_83 Depth=1
	jmp	.LBB2_83
.LBB2_91:                               # %for.end.250
	jmp	.LBB2_92
.LBB2_92:                               # %do.body.251
	movl	$3, %eax
	movl	%eax, %ecx
	movq	-176(%rbp), %rdx
	movq	-96(%rbp), %rsi
	shrq	$3, %rsi
	movq	%rsi, %rax
	xorl	%edi, %edi
	movq	%rdx, -568(%rbp)        # 8-byte Spill
	movl	%edi, %edx
	divq	%rcx
	movq	-568(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	ja	.LBB2_94
# BB#93:                                # %if.then.255
	movq	-176(%rbp), %rax
	shlq	$3, %rax
	leaq	(%rax,%rax,2), %rax
	movq	-96(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -96(%rbp)
	movq	-176(%rbp), %rax
	leaq	(%rax,%rax,2), %rax
	leaq	15(,%rax,8), %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -40(%rbp)
	jmp	.LBB2_95
.LBB2_94:                               # %if.else.258
	movl	$24, %eax
	movl	%eax, %esi
	movq	-176(%rbp), %rdi
	callq	xnmalloc
	movabsq	$xfree, %rdi
	movq	%rax, -40(%rbp)
	movb	$1, -105(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	callq	record_unwind_protect_ptr
.LBB2_95:                               # %if.end.260
	jmp	.LBB2_96
.LBB2_96:                               # %do.end.261
	movq	-40(%rbp), %rax
	movq	-176(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	-176(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	%rax, -160(%rbp)
	movq	-40(%rbp), %rax
	imulq	$17, -176(%rbp), %rsi
	movq	%rax, %rdi
	callq	memclear
	xorl	%edi, %edi
	movq	-88(%rbp), %rax
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-576(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB2_98
# BB#97:                                # %if.then.267
	movl	$365, %edi              # imm = 0x16D
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -584(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-584(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
.LBB2_98:                               # %if.end.270
	movq	-144(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	$2, -168(%rbp)
.LBB2_99:                               # %for.cond.271
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_143 Depth 2
	movq	-152(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB2_213
# BB#100:                               # %for.body.273
                                        #   in Loop: Header=BB2_99 Depth=1
	movabsq	$.L.str.2, %rsi
	movq	-152(%rbp), %rax
	addq	$1, %rax
	movq	-152(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, %rdi
	movq	%rax, -592(%rbp)        # 8-byte Spill
	callq	strcspn
	movq	-592(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	make_string
	movq	-48(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdi
	callq	SSDATA
	movl	$37, %esi
	movq	%rax, %rdi
	callq	strchr
	cmpq	$0, %rax
	je	.LBB2_102
# BB#101:                               # %if.then.282
                                        #   in Loop: Header=BB2_99 Depth=1
	movq	-168(%rbp), %rax
	subq	$1, %rax
	movq	-48(%rbp), %rcx
	addq	$8, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	Fformat_message
	movq	%rax, callint_message
	jmp	.LBB2_103
.LBB2_102:                              # %if.else.286
                                        #   in Loop: Header=BB2_99 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, callint_message
.LBB2_103:                              # %if.end.288
                                        #   in Loop: Header=BB2_99 Depth=1
	movq	-152(%rbp), %rax
	movsbl	(%rax), %ecx
	movl	%ecx, %edx
	subl	$43, %edx
	movl	%ecx, -596(%rbp)        # 4-byte Spill
	movl	%edx, -600(%rbp)        # 4-byte Spill
	je	.LBB2_174
	jmp	.LBB2_251
.LBB2_251:                              # %if.end.288
                                        #   in Loop: Header=BB2_99 Depth=1
	movl	-596(%rbp), %eax        # 4-byte Reload
	subl	$66, %eax
	movl	%eax, -604(%rbp)        # 4-byte Spill
	je	.LBB2_108
	jmp	.LBB2_252
.LBB2_252:                              # %if.end.288
                                        #   in Loop: Header=BB2_99 Depth=1
	movl	-596(%rbp), %eax        # 4-byte Reload
	subl	$67, %eax
	movl	%eax, -608(%rbp)        # 4-byte Spill
	je	.LBB2_113
	jmp	.LBB2_253
.LBB2_253:                              # %if.end.288
                                        #   in Loop: Header=BB2_99 Depth=1
	movl	-596(%rbp), %eax        # 4-byte Reload
	subl	$68, %eax
	movl	%eax, -612(%rbp)        # 4-byte Spill
	je	.LBB2_115
	jmp	.LBB2_254
.LBB2_254:                              # %if.end.288
                                        #   in Loop: Header=BB2_99 Depth=1
	movl	-596(%rbp), %eax        # 4-byte Reload
	subl	$70, %eax
	movl	%eax, -616(%rbp)        # 4-byte Spill
	je	.LBB2_117
	jmp	.LBB2_255
.LBB2_255:                              # %if.end.288
                                        #   in Loop: Header=BB2_99 Depth=1
	movl	-596(%rbp), %eax        # 4-byte Reload
	subl	$71, %eax
	movl	%eax, -620(%rbp)        # 4-byte Spill
	je	.LBB2_118
	jmp	.LBB2_256
.LBB2_256:                              # %if.end.288
                                        #   in Loop: Header=BB2_99 Depth=1
	movl	-596(%rbp), %eax        # 4-byte Reload
	subl	$75, %eax
	movl	%eax, -624(%rbp)        # 4-byte Spill
	je	.LBB2_127
	jmp	.LBB2_257
.LBB2_257:                              # %if.end.288
                                        #   in Loop: Header=BB2_99 Depth=1
	movl	-596(%rbp), %eax        # 4-byte Reload
	subl	$77, %eax
	movl	%eax, -628(%rbp)        # 4-byte Spill
	je	.LBB2_149
	jmp	.LBB2_258
.LBB2_258:                              # %if.end.288
                                        #   in Loop: Header=BB2_99 Depth=1
	movl	-596(%rbp), %eax        # 4-byte Reload
	subl	$78, %eax
	movl	%eax, -632(%rbp)        # 4-byte Spill
	je	.LBB2_150
	jmp	.LBB2_259
.LBB2_259:                              # %if.end.288
                                        #   in Loop: Header=BB2_99 Depth=1
	movl	-596(%rbp), %eax        # 4-byte Reload
	subl	$80, %eax
	movl	%eax, -636(%rbp)        # 4-byte Spill
	je	.LBB2_154
	jmp	.LBB2_260
.LBB2_260:                              # %if.end.288
                                        #   in Loop: Header=BB2_99 Depth=1
	movl	-596(%rbp), %eax        # 4-byte Reload
	subl	$83, %eax
	movl	%eax, -640(%rbp)        # 4-byte Spill
	je	.LBB2_165
	jmp	.LBB2_261
.LBB2_261:                              # %if.end.288
                                        #   in Loop: Header=BB2_99 Depth=1
	movl	-596(%rbp), %eax        # 4-byte Reload
	subl	$85, %eax
	movl	%eax, -644(%rbp)        # 4-byte Spill
	je	.LBB2_134
	jmp	.LBB2_262
.LBB2_262:                              # %if.end.288
                                        #   in Loop: Header=BB2_99 Depth=1
	movl	-596(%rbp), %eax        # 4-byte Reload
	subl	$88, %eax
	movl	%eax, -648(%rbp)        # 4-byte Spill
	je	.LBB2_168
	jmp	.LBB2_263
.LBB2_263:                              # %if.end.288
                                        #   in Loop: Header=BB2_99 Depth=1
	movl	-596(%rbp), %eax        # 4-byte Reload
	subl	$90, %eax
	movl	%eax, -652(%rbp)        # 4-byte Spill
	je	.LBB2_169
	jmp	.LBB2_264
.LBB2_264:                              # %if.end.288
                                        #   in Loop: Header=BB2_99 Depth=1
	movl	-596(%rbp), %eax        # 4-byte Reload
	subl	$97, %eax
	movl	%eax, -656(%rbp)        # 4-byte Spill
	je	.LBB2_104
	jmp	.LBB2_265
.LBB2_265:                              # %if.end.288
                                        #   in Loop: Header=BB2_99 Depth=1
	movl	-596(%rbp), %eax        # 4-byte Reload
	subl	$98, %eax
	movl	%eax, -660(%rbp)        # 4-byte Spill
	je	.LBB2_105
	jmp	.LBB2_266
.LBB2_266:                              # %if.end.288
                                        #   in Loop: Header=BB2_99 Depth=1
	movl	-596(%rbp), %eax        # 4-byte Reload
	subl	$99, %eax
	movl	%eax, -664(%rbp)        # 4-byte Spill
	je	.LBB2_109
	jmp	.LBB2_267
.LBB2_267:                              # %if.end.288
                                        #   in Loop: Header=BB2_99 Depth=1
	movl	-596(%rbp), %eax        # 4-byte Reload
	subl	$100, %eax
	movl	%eax, -668(%rbp)        # 4-byte Spill
	je	.LBB2_114
	jmp	.LBB2_268
.LBB2_268:                              # %if.end.288
                                        #   in Loop: Header=BB2_99 Depth=1
	movl	-596(%rbp), %eax        # 4-byte Reload
	subl	$101, %eax
	movl	%eax, -672(%rbp)        # 4-byte Spill
	je	.LBB2_137
	jmp	.LBB2_269
.LBB2_269:                              # %if.end.288
                                        #   in Loop: Header=BB2_99 Depth=1
	movl	-596(%rbp), %eax        # 4-byte Reload
	subl	$102, %eax
	movl	%eax, -676(%rbp)        # 4-byte Spill
	je	.LBB2_116
	jmp	.LBB2_270
.LBB2_270:                              # %if.end.288
                                        #   in Loop: Header=BB2_99 Depth=1
	movl	-596(%rbp), %eax        # 4-byte Reload
	subl	$105, %eax
	movl	%eax, -680(%rbp)        # 4-byte Spill
	je	.LBB2_119
	jmp	.LBB2_271
.LBB2_271:                              # %if.end.288
                                        #   in Loop: Header=BB2_99 Depth=1
	movl	-596(%rbp), %eax        # 4-byte Reload
	subl	$107, %eax
	movl	%eax, -684(%rbp)        # 4-byte Spill
	je	.LBB2_120
	jmp	.LBB2_272
.LBB2_272:                              # %if.end.288
                                        #   in Loop: Header=BB2_99 Depth=1
	movl	-596(%rbp), %eax        # 4-byte Reload
	subl	$109, %eax
	movl	%eax, -688(%rbp)        # 4-byte Spill
	je	.LBB2_148
	jmp	.LBB2_273
.LBB2_273:                              # %if.end.288
                                        #   in Loop: Header=BB2_99 Depth=1
	movl	-596(%rbp), %eax        # 4-byte Reload
	subl	$110, %eax
	movl	%eax, -692(%rbp)        # 4-byte Spill
	je	.LBB2_153
	jmp	.LBB2_274
.LBB2_274:                              # %if.end.288
                                        #   in Loop: Header=BB2_99 Depth=1
	movl	-596(%rbp), %eax        # 4-byte Reload
	subl	$112, %eax
	movl	%eax, -696(%rbp)        # 4-byte Spill
	je	.LBB2_155
	jmp	.LBB2_275
.LBB2_275:                              # %if.end.288
                                        #   in Loop: Header=BB2_99 Depth=1
	movl	-596(%rbp), %eax        # 4-byte Reload
	subl	$114, %eax
	movl	%eax, -700(%rbp)        # 4-byte Spill
	je	.LBB2_157
	jmp	.LBB2_276
.LBB2_276:                              # %if.end.288
                                        #   in Loop: Header=BB2_99 Depth=1
	movl	-596(%rbp), %eax        # 4-byte Reload
	subl	$115, %eax
	movl	%eax, -704(%rbp)        # 4-byte Spill
	je	.LBB2_164
	jmp	.LBB2_277
.LBB2_277:                              # %if.end.288
                                        #   in Loop: Header=BB2_99 Depth=1
	movl	-596(%rbp), %eax        # 4-byte Reload
	subl	$118, %eax
	movl	%eax, -708(%rbp)        # 4-byte Spill
	je	.LBB2_166
	jmp	.LBB2_278
.LBB2_278:                              # %if.end.288
                                        #   in Loop: Header=BB2_99 Depth=1
	movl	-596(%rbp), %eax        # 4-byte Reload
	subl	$120, %eax
	movl	%eax, -712(%rbp)        # 4-byte Spill
	je	.LBB2_167
	jmp	.LBB2_279
.LBB2_279:                              # %if.end.288
                                        #   in Loop: Header=BB2_99 Depth=1
	movl	-596(%rbp), %eax        # 4-byte Reload
	subl	$122, %eax
	movl	%eax, -716(%rbp)        # 4-byte Spill
	je	.LBB2_173
	jmp	.LBB2_175
.LBB2_104:                              # %sw.bb
                                        #   in Loop: Header=BB2_99 Depth=1
	movl	$402, %edi              # imm = 0x192
	movq	callint_message, %rax
	movq	globals+1656, %rsi
	movq	%rsi, -728(%rbp)        # 8-byte Spill
	movq	%rax, -736(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -744(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -752(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -760(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -768(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -776(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	subq	$16, %rsp
	movq	-736(%rbp), %rdi        # 8-byte Reload
	movq	-728(%rbp), %rsi        # 8-byte Reload
	movq	-744(%rbp), %rdx        # 8-byte Reload
	movq	-752(%rbp), %rcx        # 8-byte Reload
	movq	-760(%rbp), %r8         # 8-byte Reload
	movq	-768(%rbp), %r9         # 8-byte Reload
	movq	-776(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	callq	Fcompleting_read
	addq	$16, %rsp
	xorl	%edi, %edi
	movq	-168(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-168(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -784(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-784(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fintern
	movq	-168(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	jmp	.LBB2_203
.LBB2_105:                              # %sw.bb.302
                                        #   in Loop: Header=BB2_99 Depth=1
	callq	Fcurrent_buffer
	movq	-168(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	selected_window, %rax
	cmpq	minibuf_window, %rax
	jne	.LBB2_107
# BB#106:                               # %if.then.307
                                        #   in Loop: Header=BB2_99 Depth=1
	xorl	%edi, %edi
	movq	-168(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -792(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -800(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-792(%rbp), %rdi        # 8-byte Reload
	movq	-800(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fother_buffer
	movq	-168(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
.LBB2_107:                              # %if.end.313
                                        #   in Loop: Header=BB2_99 Depth=1
	movl	$901, %edi              # imm = 0x385
	movq	callint_message, %rax
	movq	-168(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rsi
	movq	%rsi, -808(%rbp)        # 8-byte Spill
	movq	%rax, -816(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -824(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-816(%rbp), %rdi        # 8-byte Reload
	movq	-808(%rbp), %rsi        # 8-byte Reload
	movq	-824(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	Fread_buffer
	movq	-168(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	jmp	.LBB2_203
.LBB2_108:                              # %sw.bb.319
                                        #   in Loop: Header=BB2_99 Depth=1
	movq	callint_message, %rdi
	movq	%rdi, -832(%rbp)        # 8-byte Spill
	callq	Fcurrent_buffer
	xorl	%edi, %edi
	movq	%rax, -840(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -848(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-840(%rbp), %rdi        # 8-byte Reload
	movq	-848(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fother_buffer
	xorl	%edi, %edi
	movq	%rax, -856(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -864(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-832(%rbp), %rdi        # 8-byte Reload
	movq	-856(%rbp), %rsi        # 8-byte Reload
	movq	-864(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	Fread_buffer
	movq	-168(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	jmp	.LBB2_203
.LBB2_109:                              # %sw.bb.328
                                        #   in Loop: Header=BB2_99 Depth=1
	movq	callint_message, %rdi
	callq	SCHARS
	movl	$397, %edi              # imm = 0x18D
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -872(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$666, %edi              # imm = 0x29A
	movq	%rax, -880(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$2, %edi
                                        # kill: RDI<def> EDI<kill>
	movq	callint_message, %r8
	movq	-872(%rbp), %rsi        # 8-byte Reload
	movq	-880(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	Fput_text_property
	xorl	%edi, %edi
	movq	callint_message, %rcx
	movq	%rax, -888(%rbp)        # 8-byte Spill
	movq	%rcx, -896(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -904(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-896(%rbp), %rdi        # 8-byte Reload
	movq	-904(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fread_char
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	movq	-168(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	callq	message1_nolog
	movq	-168(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB2_110
	jmp	.LBB2_111
.LBB2_110:                              # %land.lhs.true.341
                                        #   in Loop: Header=BB2_99 Depth=1
	movq	-72(%rbp), %rax
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jle	.LBB2_112
.LBB2_111:                              # %if.then.345
	movabsq	$.L.str.3, %rdi
	movb	$0, %al
	callq	error
.LBB2_112:                              # %if.end.346
                                        #   in Loop: Header=BB2_99 Depth=1
	movq	-72(%rbp), %rdi
	callq	Fchar_to_string
	movq	-168(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx,%rdi,8)
	jmp	.LBB2_203
.LBB2_113:                              # %sw.bb.349
                                        #   in Loop: Header=BB2_99 Depth=1
	movl	$286, %edi              # imm = 0x11E
	movq	callint_message, %rax
	movq	globals+1656, %rsi
	movq	%rsi, -912(%rbp)        # 8-byte Spill
	movq	%rax, -920(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -928(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -936(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -944(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -952(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -960(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	subq	$16, %rsp
	movq	-920(%rbp), %rdi        # 8-byte Reload
	movq	-912(%rbp), %rsi        # 8-byte Reload
	movq	-928(%rbp), %rdx        # 8-byte Reload
	movq	-936(%rbp), %rcx        # 8-byte Reload
	movq	-944(%rbp), %r8         # 8-byte Reload
	movq	-952(%rbp), %r9         # 8-byte Reload
	movq	-960(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	callq	Fcompleting_read
	addq	$16, %rsp
	xorl	%edi, %edi
	movq	-168(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-168(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -968(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-968(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fintern
	movq	-168(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	jmp	.LBB2_203
.LBB2_114:                              # %sw.bb.362
                                        #   in Loop: Header=BB2_99 Depth=1
	xorl	%edi, %edi
	movq	point_marker, %rax
	movq	%rax, -976(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	current_buffer, %rcx
	movq	736(%rcx), %rcx
	addq	$0, %rcx
	movq	current_buffer, %rdx
	movq	744(%rdx), %rdx
	addq	$0, %rdx
	movq	-976(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movq	%rdx, -984(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-984(%rbp), %rcx        # 8-byte Reload
	callq	set_marker_both
	movq	point_marker, %rcx
	movq	-168(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	%rcx, (%rsi,%rdx,8)
	movq	-168(%rbp), %rcx
	movq	-160(%rbp), %rdx
	movb	$1, (%rdx,%rcx)
	movq	%rax, -992(%rbp)        # 8-byte Spill
	jmp	.LBB2_203
.LBB2_115:                              # %sw.bb.369
                                        #   in Loop: Header=BB2_99 Depth=1
	movl	$598, %edi              # imm = 0x256
	movq	current_buffer, %rax
	movq	24(%rax), %rax
	movq	%rax, -1000(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -1008(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$410, %edi              # imm = 0x19A
	movq	%rax, -1016(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1000(%rbp), %rdi       # 8-byte Reload
	movq	-1008(%rbp), %rsi       # 8-byte Reload
	movq	-1016(%rbp), %rdx       # 8-byte Reload
	movq	%rax, %rcx
	callq	read_file_name
	movq	-168(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	jmp	.LBB2_203
.LBB2_116:                              # %sw.bb.375
                                        #   in Loop: Header=BB2_99 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movl	$598, %edi              # imm = 0x256
	movq	%rax, -1024(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -1032(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -1040(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1024(%rbp), %rdi       # 8-byte Reload
	movq	-1032(%rbp), %rsi       # 8-byte Reload
	movq	-1040(%rbp), %rdx       # 8-byte Reload
	movq	%rax, %rcx
	callq	read_file_name
	movq	-168(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	jmp	.LBB2_203
.LBB2_117:                              # %sw.bb.382
                                        #   in Loop: Header=BB2_99 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -1048(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -1056(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -1064(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1048(%rbp), %rdi       # 8-byte Reload
	movq	-1056(%rbp), %rsi       # 8-byte Reload
	movq	-1064(%rbp), %rdx       # 8-byte Reload
	movq	%rax, %rcx
	callq	read_file_name
	movq	-168(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	jmp	.LBB2_203
.LBB2_118:                              # %sw.bb.389
                                        #   in Loop: Header=BB2_99 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -1072(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	empty_unibyte_string, %rdx
	movq	%rax, -1080(%rbp)       # 8-byte Spill
	movq	%rdx, -1088(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1072(%rbp), %rdi       # 8-byte Reload
	movq	-1080(%rbp), %rsi       # 8-byte Reload
	movq	-1088(%rbp), %rdx       # 8-byte Reload
	movq	%rax, %rcx
	callq	read_file_name
	movq	-168(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	jmp	.LBB2_203
.LBB2_119:                              # %sw.bb.395
                                        #   in Loop: Header=BB2_99 Depth=1
	movq	-168(%rbp), %rax
	movq	-160(%rbp), %rcx
	movb	$-1, (%rcx,%rax)
	jmp	.LBB2_203
.LBB2_120:                              # %sw.bb.397
                                        #   in Loop: Header=BB2_99 Depth=1
	callq	SPECPDL_INDEX
	movl	$308, %edi              # imm = 0x134
	movq	%rax, -352(%rbp)
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -1096(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1096(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
	movq	callint_message, %rdi
	callq	SCHARS
	movl	$397, %edi              # imm = 0x18D
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -1104(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$666, %edi              # imm = 0x29A
	movq	%rax, -1112(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$2, %edi
                                        # kill: RDI<def> EDI<kill>
	movq	callint_message, %r8
	movq	-1104(%rbp), %rsi       # 8-byte Reload
	movq	-1112(%rbp), %rdx       # 8-byte Reload
	movq	%rax, %rcx
	callq	Fput_text_property
	xorl	%edi, %edi
	movq	callint_message, %rcx
	movq	%rax, -1120(%rbp)       # 8-byte Spill
	movq	%rcx, -1128(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -1136(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -1144(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -1152(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1128(%rbp), %rdi       # 8-byte Reload
	movq	-1136(%rbp), %rsi       # 8-byte Reload
	movq	-1144(%rbp), %rdx       # 8-byte Reload
	movq	-1152(%rbp), %rcx       # 8-byte Reload
	movq	%rax, %r8
	callq	Fread_key_sequence
	xorl	%edi, %edi
	movq	-168(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-352(%rbp), %rax
	movq	%rax, -1160(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1160(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	xorl	%edi, %edi
	movq	-168(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	%rcx, -72(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rax, -1168(%rbp)       # 8-byte Spill
	movq	%rcx, -1176(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1176(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Fkey_description
	movq	-168(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-168(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movq	-168(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rdi, -1184(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	callq	Flength
	sarq	$2, %rax
	subq	$1, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-1184(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Faref
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %r9d
	cmpl	$3, %r9d
	jne	.LBB2_122
# BB#121:                               # %if.then.431
                                        #   in Loop: Header=BB2_99 Depth=1
	movq	-72(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
.LBB2_122:                              # %if.end.434
                                        #   in Loop: Header=BB2_99 Depth=1
	movq	-72(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB2_126
# BB#123:                               # %if.then.439
                                        #   in Loop: Header=BB2_99 Depth=1
	movl	$384, %edi              # imm = 0x180
	movq	-72(%rbp), %rax
	movq	%rax, -1192(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1192(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget
	movl	$352, %edi              # imm = 0x160
	movq	%rax, -72(%rbp)
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rdi
	movq	%rax, -1200(%rbp)       # 8-byte Spill
	callq	Fcdr
	movq	-1200(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Fmemq
	xorl	%edi, %edi
	movq	%rax, -360(%rbp)
	movq	-360(%rbp), %rax
	movq	%rax, -1208(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1208(%rbp), %rsi       # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB2_125
# BB#124:                               # %if.then.448
                                        #   in Loop: Header=BB2_99 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -1216(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -1224(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1216(%rbp), %rdi       # 8-byte Reload
	movq	-1224(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	callq	Fread_event
	movq	%rax, -80(%rbp)
.LBB2_125:                              # %if.end.453
                                        #   in Loop: Header=BB2_99 Depth=1
	jmp	.LBB2_126
.LBB2_126:                              # %if.end.454
                                        #   in Loop: Header=BB2_99 Depth=1
	jmp	.LBB2_203
.LBB2_127:                              # %sw.bb.455
                                        #   in Loop: Header=BB2_99 Depth=1
	callq	SPECPDL_INDEX
	movl	$308, %edi              # imm = 0x134
	movq	%rax, -368(%rbp)
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -1232(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1232(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
	movq	callint_message, %rdi
	callq	SCHARS
	movl	$397, %edi              # imm = 0x18D
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -1240(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$666, %edi              # imm = 0x29A
	movq	%rax, -1248(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$2, %edi
                                        # kill: RDI<def> EDI<kill>
	movq	callint_message, %r8
	movq	-1240(%rbp), %rsi       # 8-byte Reload
	movq	-1248(%rbp), %rdx       # 8-byte Reload
	movq	%rax, %rcx
	callq	Fput_text_property
	xorl	%edi, %edi
	movq	callint_message, %rcx
	movq	%rax, -1256(%rbp)       # 8-byte Spill
	movq	%rcx, -1264(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -1272(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -1280(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -1288(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1264(%rbp), %rdi       # 8-byte Reload
	movq	-1272(%rbp), %rsi       # 8-byte Reload
	movq	-1280(%rbp), %rdx       # 8-byte Reload
	movq	-1288(%rbp), %rcx       # 8-byte Reload
	movq	%rax, %r8
	callq	Fread_key_sequence_vector
	xorl	%edi, %edi
	movq	-168(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-168(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -1296(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1296(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Fkey_description
	xorl	%edi, %edi
	movq	-168(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-368(%rbp), %rax
	movq	%rax, -1304(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1304(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	-168(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rdi
	movq	-168(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	%rdi, -1312(%rbp)       # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -1320(%rbp)       # 8-byte Spill
	callq	Flength
	sarq	$2, %rax
	subq	$1, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-1312(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Faref
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %r9d
	cmpl	$3, %r9d
	jne	.LBB2_129
# BB#128:                               # %if.then.490
                                        #   in Loop: Header=BB2_99 Depth=1
	movq	-72(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
.LBB2_129:                              # %if.end.493
                                        #   in Loop: Header=BB2_99 Depth=1
	movq	-72(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB2_133
# BB#130:                               # %if.then.498
                                        #   in Loop: Header=BB2_99 Depth=1
	movl	$384, %edi              # imm = 0x180
	movq	-72(%rbp), %rax
	movq	%rax, -1328(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1328(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget
	movl	$352, %edi              # imm = 0x160
	movq	%rax, -72(%rbp)
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rdi
	movq	%rax, -1336(%rbp)       # 8-byte Spill
	callq	Fcdr
	movq	-1336(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Fmemq
	xorl	%edi, %edi
	movq	%rax, -376(%rbp)
	movq	-376(%rbp), %rax
	movq	%rax, -1344(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1344(%rbp), %rsi       # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB2_132
# BB#131:                               # %if.then.508
                                        #   in Loop: Header=BB2_99 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -1352(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -1360(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1352(%rbp), %rdi       # 8-byte Reload
	movq	-1360(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	callq	Fread_event
	movq	%rax, -80(%rbp)
.LBB2_132:                              # %if.end.513
                                        #   in Loop: Header=BB2_99 Depth=1
	jmp	.LBB2_133
.LBB2_133:                              # %if.end.514
                                        #   in Loop: Header=BB2_99 Depth=1
	jmp	.LBB2_203
.LBB2_134:                              # %sw.bb.515
                                        #   in Loop: Header=BB2_99 Depth=1
	xorl	%edi, %edi
	movq	-80(%rbp), %rax
	movq	%rax, -1368(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1368(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB2_136
# BB#135:                               # %if.then.519
                                        #   in Loop: Header=BB2_99 Depth=1
	movl	$6, %eax
	movl	%eax, %edi
	movq	-80(%rbp), %rsi
	callq	Fmake_vector
	xorl	%edi, %edi
	movq	-168(%rbp), %rsi
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx,%rsi,8)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -80(%rbp)
	movq	-168(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -1376(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1376(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Fkey_description
	movq	-168(%rbp), %rcx
	movq	-48(%rbp), %rsi
	movq	%rax, (%rsi,%rcx,8)
.LBB2_136:                              # %if.end.527
                                        #   in Loop: Header=BB2_99 Depth=1
	jmp	.LBB2_203
.LBB2_137:                              # %sw.bb.528
                                        #   in Loop: Header=BB2_99 Depth=1
	movq	-128(%rbp), %rax
	cmpq	-200(%rbp), %rax
	jl	.LBB2_142
# BB#138:                               # %if.then.531
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB2_140
# BB#139:                               # %cond.true.536
	movq	-16(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SSDATA
	movq	%rax, -1384(%rbp)       # 8-byte Spill
	jmp	.LBB2_141
.LBB2_140:                              # %cond.false.539
	movabsq	$.L.str.5, %rax
	movq	%rax, -1384(%rbp)       # 8-byte Spill
	jmp	.LBB2_141
.LBB2_141:                              # %cond.end.540
	movq	-1384(%rbp), %rax       # 8-byte Reload
	movabsq	$.L.str.4, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	error
.LBB2_142:                              # %if.end.542
                                        #   in Loop: Header=BB2_99 Depth=1
	movq	-32(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	AREF
	movq	-168(%rbp), %rsi
	movq	-40(%rbp), %rdi
	movq	%rax, (%rdi,%rsi,8)
	movq	-128(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -128(%rbp)
	movq	-168(%rbp), %rax
	movq	-160(%rbp), %rsi
	movb	$-1, (%rsi,%rax)
.LBB2_143:                              # %while.cond
                                        #   Parent Loop BB2_99 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-128(%rbp), %rdx
	cmpq	-200(%rbp), %rdx
	movb	%cl, -1385(%rbp)        # 1-byte Spill
	jge	.LBB2_145
# BB#144:                               # %land.rhs
                                        #   in Loop: Header=BB2_143 Depth=2
	movq	-32(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	AREF
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	sete	%dl
	xorb	$-1, %dl
	movb	%dl, -1385(%rbp)        # 1-byte Spill
.LBB2_145:                              # %land.end
                                        #   in Loop: Header=BB2_143 Depth=2
	movb	-1385(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB2_146
	jmp	.LBB2_147
.LBB2_146:                              # %while.body.554
                                        #   in Loop: Header=BB2_143 Depth=2
	movq	-128(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -128(%rbp)
	jmp	.LBB2_143
.LBB2_147:                              # %while.end.556
                                        #   in Loop: Header=BB2_99 Depth=1
	jmp	.LBB2_203
.LBB2_148:                              # %sw.bb.557
                                        #   in Loop: Header=BB2_99 Depth=1
	xorl	%edi, %edi
	callq	check_mark
	movq	current_buffer, %rax
	movq	64(%rax), %rax
	movq	-168(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-168(%rbp), %rax
	movq	-160(%rbp), %rcx
	movb	$2, (%rcx,%rax)
	jmp	.LBB2_203
.LBB2_149:                              # %sw.bb.560
                                        #   in Loop: Header=BB2_99 Depth=1
	xorl	%edi, %edi
	movq	callint_message, %rax
	movq	%rax, -1400(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -1408(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -1416(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -1424(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1400(%rbp), %rdi       # 8-byte Reload
	movq	-1408(%rbp), %rsi       # 8-byte Reload
	movq	-1416(%rbp), %rdx       # 8-byte Reload
	movq	-1424(%rbp), %rcx       # 8-byte Reload
	movq	%rax, %r8
	callq	Fread_string
	movq	-168(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	jmp	.LBB2_203
.LBB2_150:                              # %sw.bb.567
                                        #   in Loop: Header=BB2_99 Depth=1
	xorl	%edi, %edi
	movq	-136(%rbp), %rax
	movq	%rax, -1432(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1432(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB2_152
# BB#151:                               # %if.then.571
                                        #   in Loop: Header=BB2_99 Depth=1
	jmp	.LBB2_156
.LBB2_152:                              # %if.end.572
                                        #   in Loop: Header=BB2_99 Depth=1
	jmp	.LBB2_153
.LBB2_153:                              # %sw.bb.573
                                        #   in Loop: Header=BB2_99 Depth=1
	movl	$791, %edi              # imm = 0x317
	callq	builtin_lisp_symbol
	movq	callint_message, %rsi
	movq	%rax, %rdi
	callq	call1
	movq	-168(%rbp), %rsi
	movq	-40(%rbp), %rdi
	movq	%rax, (%rdi,%rsi,8)
	movq	-168(%rbp), %rax
	movq	-40(%rbp), %rsi
	movq	(%rsi,%rax,8), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	Fnumber_to_string
	movq	-168(%rbp), %rsi
	movq	-48(%rbp), %rdi
	movq	%rax, (%rdi,%rsi,8)
	jmp	.LBB2_203
.LBB2_154:                              # %sw.bb.580
                                        #   in Loop: Header=BB2_99 Depth=1
	movq	-136(%rbp), %rax
	movq	-168(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-168(%rbp), %rax
	movq	-160(%rbp), %rcx
	movb	$-1, (%rcx,%rax)
	jmp	.LBB2_203
.LBB2_155:                              # %sw.bb.583
                                        #   in Loop: Header=BB2_99 Depth=1
	jmp	.LBB2_156
.LBB2_156:                              # %have_prefix_arg
                                        #   in Loop: Header=BB2_99 Depth=1
	movq	-136(%rbp), %rdi
	callq	Fprefix_numeric_value
	movq	-168(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx,%rdi,8)
	movq	-168(%rbp), %rax
	movq	-160(%rbp), %rcx
	movb	$-1, (%rcx,%rax)
	jmp	.LBB2_203
.LBB2_157:                              # %sw.bb.587
                                        #   in Loop: Header=BB2_99 Depth=1
	movl	$1, %edi
	callq	check_mark
	xorl	%edi, %edi
	movq	point_marker, %rax
	movq	%rax, -1440(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	current_buffer, %rcx
	movq	736(%rcx), %rcx
	addq	$0, %rcx
	movq	current_buffer, %rdx
	movq	744(%rdx), %rdx
	addq	$0, %rdx
	movq	-1440(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	movq	%rdx, -1448(%rbp)       # 8-byte Spill
	movq	%rcx, %rdx
	movq	-1448(%rbp), %rcx       # 8-byte Reload
	callq	set_marker_both
	movq	current_buffer, %rcx
	movq	64(%rcx), %rdi
	movq	%rax, -1456(%rbp)       # 8-byte Spill
	callq	marker_position
	movq	%rax, -184(%rbp)
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	cmpq	-184(%rbp), %rax
	jge	.LBB2_159
# BB#158:                               # %cond.true.600
                                        #   in Loop: Header=BB2_99 Depth=1
	movq	point_marker, %rax
	movq	%rax, -1464(%rbp)       # 8-byte Spill
	jmp	.LBB2_160
.LBB2_159:                              # %cond.false.601
                                        #   in Loop: Header=BB2_99 Depth=1
	movq	current_buffer, %rax
	movq	64(%rax), %rax
	movq	%rax, -1464(%rbp)       # 8-byte Spill
.LBB2_160:                              # %cond.end.603
                                        #   in Loop: Header=BB2_99 Depth=1
	movq	-1464(%rbp), %rax       # 8-byte Reload
	movq	-168(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-168(%rbp), %rax
	movq	-160(%rbp), %rcx
	movb	$3, (%rcx,%rax)
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	cmpq	-184(%rbp), %rax
	jle	.LBB2_162
# BB#161:                               # %cond.true.611
                                        #   in Loop: Header=BB2_99 Depth=1
	movq	point_marker, %rax
	movq	%rax, -1472(%rbp)       # 8-byte Spill
	jmp	.LBB2_163
.LBB2_162:                              # %cond.false.612
                                        #   in Loop: Header=BB2_99 Depth=1
	movq	current_buffer, %rax
	movq	64(%rax), %rax
	movq	%rax, -1472(%rbp)       # 8-byte Spill
.LBB2_163:                              # %cond.end.614
                                        #   in Loop: Header=BB2_99 Depth=1
	movq	-1472(%rbp), %rax       # 8-byte Reload
	movq	-168(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -168(%rbp)
	movq	-40(%rbp), %rdx
	movq	%rax, 8(%rdx,%rcx,8)
	movq	-168(%rbp), %rax
	movq	-160(%rbp), %rcx
	movb	$4, (%rcx,%rax)
	jmp	.LBB2_203
.LBB2_164:                              # %sw.bb.619
                                        #   in Loop: Header=BB2_99 Depth=1
	xorl	%edi, %edi
	movq	callint_message, %rax
	movq	%rax, -1480(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -1488(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -1496(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -1504(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1480(%rbp), %rdi       # 8-byte Reload
	movq	-1488(%rbp), %rsi       # 8-byte Reload
	movq	-1496(%rbp), %rdx       # 8-byte Reload
	movq	-1504(%rbp), %rcx       # 8-byte Reload
	movq	%rax, %r8
	callq	Fread_string
	movq	-168(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	jmp	.LBB2_203
.LBB2_165:                              # %sw.bb.626
                                        #   in Loop: Header=BB2_99 Depth=1
	xorl	%edi, %edi
	movq	callint_message, %rax
	movq	%rax, -1512(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -1520(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -1528(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -1536(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1512(%rbp), %rdi       # 8-byte Reload
	movq	-1520(%rbp), %rsi       # 8-byte Reload
	movq	-1528(%rbp), %rdx       # 8-byte Reload
	movq	-1536(%rbp), %rcx       # 8-byte Reload
	movq	%rax, %r8
	callq	Fread_string
	xorl	%edi, %edi
	movq	-168(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-168(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -1544(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1544(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Fintern
	movq	-168(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	jmp	.LBB2_203
.LBB2_166:                              # %sw.bb.637
                                        #   in Loop: Header=BB2_99 Depth=1
	xorl	%edi, %edi
	movq	callint_message, %rax
	movq	%rax, -1552(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1552(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Fread_variable
	movq	-168(%rbp), %rsi
	movq	-40(%rbp), %rdi
	movq	%rax, (%rdi,%rsi,8)
	movq	last_minibuf_string, %rax
	movq	-168(%rbp), %rsi
	movq	-48(%rbp), %rdi
	movq	%rax, (%rdi,%rsi,8)
	jmp	.LBB2_203
.LBB2_167:                              # %sw.bb.642
                                        #   in Loop: Header=BB2_99 Depth=1
	movabsq	$.L.str.6, %rdi
	callq	intern
	movq	callint_message, %rsi
	movq	%rax, %rdi
	callq	call1
	movq	-168(%rbp), %rsi
	movq	-40(%rbp), %rdi
	movq	%rax, (%rdi,%rsi,8)
	movq	last_minibuf_string, %rax
	movq	-168(%rbp), %rsi
	movq	-48(%rbp), %rdi
	movq	%rax, (%rdi,%rsi,8)
	jmp	.LBB2_203
.LBB2_168:                              # %sw.bb.647
                                        #   in Loop: Header=BB2_99 Depth=1
	movabsq	$.L.str.7, %rdi
	callq	intern
	movq	callint_message, %rsi
	movq	%rax, %rdi
	callq	call1
	movq	-168(%rbp), %rsi
	movq	-40(%rbp), %rdi
	movq	%rax, (%rdi,%rsi,8)
	movq	last_minibuf_string, %rax
	movq	-168(%rbp), %rsi
	movq	-48(%rbp), %rdi
	movq	%rax, (%rdi,%rsi,8)
	jmp	.LBB2_203
.LBB2_169:                              # %sw.bb.652
                                        #   in Loop: Header=BB2_99 Depth=1
	xorl	%edi, %edi
	movq	-136(%rbp), %rax
	movq	%rax, -1560(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1560(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB2_171
# BB#170:                               # %if.then.656
                                        #   in Loop: Header=BB2_99 Depth=1
	movq	-168(%rbp), %rax
	movq	-160(%rbp), %rcx
	movb	$-1, (%rcx,%rax)
	jmp	.LBB2_172
.LBB2_171:                              # %if.else.658
                                        #   in Loop: Header=BB2_99 Depth=1
	movq	callint_message, %rdi
	callq	Fread_non_nil_coding_system
	movq	-168(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx,%rdi,8)
	movq	last_minibuf_string, %rax
	movq	-168(%rbp), %rcx
	movq	-48(%rbp), %rdi
	movq	%rax, (%rdi,%rcx,8)
.LBB2_172:                              # %if.end.662
                                        #   in Loop: Header=BB2_99 Depth=1
	jmp	.LBB2_203
.LBB2_173:                              # %sw.bb.663
                                        #   in Loop: Header=BB2_99 Depth=1
	xorl	%edi, %edi
	movq	callint_message, %rax
	movq	%rax, -1568(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1568(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Fread_coding_system
	movq	-168(%rbp), %rsi
	movq	-40(%rbp), %rdi
	movq	%rax, (%rdi,%rsi,8)
	movq	last_minibuf_string, %rax
	movq	-168(%rbp), %rsi
	movq	-48(%rbp), %rdi
	movq	%rax, (%rdi,%rsi,8)
	jmp	.LBB2_203
.LBB2_174:                              # %sw.bb.668
	jmp	.LBB2_175
.LBB2_175:                              # %sw.default
	movq	-152(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB2_177
# BB#176:                               # %cond.true.673
	movq	-152(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -1572(%rbp)       # 4-byte Spill
	jmp	.LBB2_184
.LBB2_177:                              # %cond.false.676
	movq	-152(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB2_179
# BB#178:                               # %cond.true.681
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
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
	movl	%esi, -1576(%rbp)       # 4-byte Spill
	jmp	.LBB2_183
.LBB2_179:                              # %cond.false.695
	movq	-152(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB2_181
# BB#180:                               # %cond.true.700
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
	movl	%ecx, -1580(%rbp)       # 4-byte Spill
	jmp	.LBB2_182
.LBB2_181:                              # %cond.false.714
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-152(%rbp), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	string_char
	movl	%eax, -1580(%rbp)       # 4-byte Spill
.LBB2_182:                              # %cond.end.716
	movl	-1580(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1576(%rbp)       # 4-byte Spill
.LBB2_183:                              # %cond.end.718
	movl	-1576(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1572(%rbp)       # 4-byte Spill
.LBB2_184:                              # %cond.end.720
	movl	-1572(%rbp), %eax       # 4-byte Reload
	movq	-152(%rbp), %rcx
	movzbl	(%rcx), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	movl	%eax, -1584(%rbp)       # 4-byte Spill
	jne	.LBB2_186
# BB#185:                               # %cond.true.726
	movq	-152(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -1588(%rbp)       # 4-byte Spill
	jmp	.LBB2_193
.LBB2_186:                              # %cond.false.729
	movq	-152(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB2_188
# BB#187:                               # %cond.true.734
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
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
	movl	%esi, -1592(%rbp)       # 4-byte Spill
	jmp	.LBB2_192
.LBB2_188:                              # %cond.false.749
	movq	-152(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB2_190
# BB#189:                               # %cond.true.754
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
	movl	%ecx, -1596(%rbp)       # 4-byte Spill
	jmp	.LBB2_191
.LBB2_190:                              # %cond.false.768
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-152(%rbp), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	string_char
	movl	%eax, -1596(%rbp)       # 4-byte Spill
.LBB2_191:                              # %cond.end.770
	movl	-1596(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1592(%rbp)       # 4-byte Spill
.LBB2_192:                              # %cond.end.772
	movl	-1592(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1588(%rbp)       # 4-byte Spill
.LBB2_193:                              # %cond.end.774
	movl	-1588(%rbp), %eax       # 4-byte Reload
	movq	-152(%rbp), %rcx
	movzbl	(%rcx), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	movl	%eax, -1600(%rbp)       # 4-byte Spill
	jne	.LBB2_195
# BB#194:                               # %cond.true.780
	movq	-152(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -1604(%rbp)       # 4-byte Spill
	jmp	.LBB2_202
.LBB2_195:                              # %cond.false.783
	movq	-152(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB2_197
# BB#196:                               # %cond.true.788
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
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
	movl	%esi, -1608(%rbp)       # 4-byte Spill
	jmp	.LBB2_201
.LBB2_197:                              # %cond.false.803
	movq	-152(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB2_199
# BB#198:                               # %cond.true.808
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
	movl	%ecx, -1612(%rbp)       # 4-byte Spill
	jmp	.LBB2_200
.LBB2_199:                              # %cond.false.822
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-152(%rbp), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	string_char
	movl	%eax, -1612(%rbp)       # 4-byte Spill
.LBB2_200:                              # %cond.end.824
	movl	-1612(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1608(%rbp)       # 4-byte Spill
.LBB2_201:                              # %cond.end.826
	movl	-1608(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1604(%rbp)       # 4-byte Spill
.LBB2_202:                              # %cond.end.828
	movl	-1604(%rbp), %eax       # 4-byte Reload
	movabsq	$.L.str.8, %rdi
	movl	-1584(%rbp), %esi       # 4-byte Reload
	movl	-1600(%rbp), %edx       # 4-byte Reload
	movl	%eax, %ecx
	movb	$0, %al
	callq	error
.LBB2_203:                              # %sw.epilog
                                        #   in Loop: Header=BB2_99 Depth=1
	movq	-168(%rbp), %rax
	movq	-160(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$0, %edx
	jne	.LBB2_205
# BB#204:                               # %if.then.834
                                        #   in Loop: Header=BB2_99 Depth=1
	movb	$1, -185(%rbp)
.LBB2_205:                              # %if.end.835
                                        #   in Loop: Header=BB2_99 Depth=1
	xorl	%edi, %edi
	movq	-168(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -1624(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1624(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB2_208
# BB#206:                               # %land.lhs.true.840
                                        #   in Loop: Header=BB2_99 Depth=1
	movq	-168(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB2_207
	jmp	.LBB2_208
.LBB2_207:                              # %if.then.844
                                        #   in Loop: Header=BB2_99 Depth=1
	movq	-168(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-168(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
.LBB2_208:                              # %if.end.847
                                        #   in Loop: Header=BB2_99 Depth=1
	movl	$10, %esi
	movq	-152(%rbp), %rdi
	callq	strchr
	movq	%rax, -152(%rbp)
	cmpq	$0, -152(%rbp)
	je	.LBB2_210
# BB#209:                               # %if.then.850
                                        #   in Loop: Header=BB2_99 Depth=1
	movq	-152(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -152(%rbp)
	jmp	.LBB2_211
.LBB2_210:                              # %if.else.852
                                        #   in Loop: Header=BB2_99 Depth=1
	movabsq	$.L.str.9, %rax
	movq	%rax, -152(%rbp)
.LBB2_211:                              # %if.end.853
                                        #   in Loop: Header=BB2_99 Depth=1
	jmp	.LBB2_212
.LBB2_212:                              # %for.inc.854
                                        #   in Loop: Header=BB2_99 Depth=1
	movq	-168(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -168(%rbp)
	jmp	.LBB2_99
.LBB2_213:                              # %for.end.856
	xorl	%edi, %edi
	movq	-120(%rbp), %rax
	movq	%rax, -1632(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1632(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -1640(%rbp)       # 8-byte Spill
# BB#214:                               # %do.body.859
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -1648(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1648(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB2_217
# BB#215:                               # %land.lhs.true.863
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -1656(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1656(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB2_217
# BB#216:                               # %if.then.867
	callq	process_quit_flag
	jmp	.LBB2_220
.LBB2_217:                              # %if.else.868
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB2_219
# BB#218:                               # %if.then.870
	callq	process_pending_signals
.LBB2_219:                              # %if.end.871
	jmp	.LBB2_220
.LBB2_220:                              # %if.end.872
	jmp	.LBB2_221
.LBB2_221:                              # %do.end.873
	movl	$475, %edi              # imm = 0x1DB
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 8(%rcx)
	testb	$1, -185(%rbp)
	jne	.LBB2_223
# BB#222:                               # %lor.lhs.false.879
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -1664(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1664(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB2_236
.LBB2_223:                              # %if.then.883
	movq	-16(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	$2, -168(%rbp)
.LBB2_224:                              # %for.cond.885
                                        # =>This Inner Loop Header: Depth=1
	movq	-168(%rbp), %rax
	cmpq	-176(%rbp), %rax
	jge	.LBB2_230
# BB#225:                               # %for.body.888
                                        #   in Loop: Header=BB2_224 Depth=1
	movq	-168(%rbp), %rax
	movq	-160(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$0, %edx
	jle	.LBB2_227
# BB#226:                               # %if.then.893
                                        #   in Loop: Header=BB2_224 Depth=1
	movq	-168(%rbp), %rax
	movq	-160(%rbp), %rcx
	movsbq	(%rcx,%rax), %rax
	movq	callint_argfuns(,%rax,8), %rdi
	callq	intern
	movq	%rax, %rdi
	callq	list1
	movq	-168(%rbp), %rcx
	movq	-48(%rbp), %rdi
	movq	%rax, (%rdi,%rcx,8)
	jmp	.LBB2_228
.LBB2_227:                              # %if.else.899
                                        #   in Loop: Header=BB2_224 Depth=1
	movq	-168(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	quotify_arg
	movq	-168(%rbp), %rcx
	movq	-48(%rbp), %rdi
	movq	%rax, (%rdi,%rcx,8)
.LBB2_228:                              # %if.end.903
                                        #   in Loop: Header=BB2_224 Depth=1
	jmp	.LBB2_229
.LBB2_229:                              # %for.inc.904
                                        #   in Loop: Header=BB2_224 Depth=1
	movq	-168(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -168(%rbp)
	jmp	.LBB2_224
.LBB2_230:                              # %for.end.906
	movq	-176(%rbp), %rax
	subq	$1, %rax
	movq	-48(%rbp), %rcx
	addq	$8, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	Flist
	movq	globals+328, %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, globals+328
	movq	globals+1000, %rax
	andq	$7, %rax
	movl	%eax, %edx
	andl	$-5, %edx
	cmpl	$2, %edx
	jne	.LBB2_235
# BB#231:                               # %land.lhs.true.916
	movq	globals+1000, %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jle	.LBB2_235
# BB#232:                               # %if.then.920
	movq	globals+1000, %rdi
	movq	globals+328, %rsi
	callq	Fnthcdr
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB2_234
# BB#233:                               # %if.then.926
	xorl	%edi, %edi
	movq	-72(%rbp), %rax
	movq	%rax, -1672(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1672(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	XSETCDR
.LBB2_234:                              # %if.end.928
	jmp	.LBB2_235
.LBB2_235:                              # %if.end.929
	jmp	.LBB2_236
.LBB2_236:                              # %if.end.930
	movq	$2, -168(%rbp)
.LBB2_237:                              # %for.cond.931
                                        # =>This Inner Loop Header: Depth=1
	movq	-168(%rbp), %rax
	cmpq	-176(%rbp), %rax
	jge	.LBB2_243
# BB#238:                               # %for.body.934
                                        #   in Loop: Header=BB2_237 Depth=1
	movq	-168(%rbp), %rax
	movq	-160(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$1, %edx
	jl	.LBB2_241
# BB#239:                               # %land.lhs.true.939
                                        #   in Loop: Header=BB2_237 Depth=1
	movq	-168(%rbp), %rax
	movq	-160(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$4, %edx
	jg	.LBB2_241
# BB#240:                               # %if.then.944
                                        #   in Loop: Header=BB2_237 Depth=1
	movq	-168(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	marker_position
	shlq	$2, %rax
	addq	$2, %rax
	movq	-168(%rbp), %rcx
	movq	-40(%rbp), %rdi
	movq	%rax, (%rdi,%rcx,8)
.LBB2_241:                              # %if.end.950
                                        #   in Loop: Header=BB2_237 Depth=1
	jmp	.LBB2_242
.LBB2_242:                              # %for.inc.951
                                        #   in Loop: Header=BB2_237 Depth=1
	movq	-168(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -168(%rbp)
	jmp	.LBB2_237
.LBB2_243:                              # %for.end.953
	testb	$1, -201(%rbp)
	je	.LBB2_245
# BB#244:                               # %if.then.955
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	Fbarf_if_buffer_read_only
	movq	%rax, -1680(%rbp)       # 8-byte Spill
.LBB2_245:                              # %if.end.958
	movq	-216(%rbp), %rax
	movq	%rax, globals+2344
	movq	-232(%rbp), %rax
	movq	%rax, globals+2360
	movq	-240(%rbp), %rax
	movq	%rax, globals+1984
	movq	current_kboard, %rdi
	movq	-224(%rbp), %rsi
	callq	kset_last_command
	movq	-176(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	Ffuncall
	movq	%rax, -384(%rbp)
	movq	-120(%rbp), %rdi
	movq	-384(%rbp), %rsi
	callq	unbind_to
	movq	%rax, -384(%rbp)
# BB#246:                               # %do.body.961
	testb	$1, -105(%rbp)
	je	.LBB2_248
# BB#247:                               # %if.then.963
	xorl	%edi, %edi
	movb	$0, -105(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -1688(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1688(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -1696(%rbp)       # 8-byte Spill
.LBB2_248:                              # %if.end.966
	jmp	.LBB2_249
.LBB2_249:                              # %do.end.967
	movq	-384(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB2_250:                              # %return
	movq	-8(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	Fcall_interactively, .Lfunc_end2-Fcall_interactively
	.cfi_endproc

	.align	16, 0x90
	.type	quotify_args,@function
quotify_args:                           # @quotify_args
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
.LBB3_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB3_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	quotify_arg
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	XSETCAR
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB3_1
.LBB3_4:                                # %for.end
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	quotify_args, .Lfunc_end3-quotify_args
	.cfi_endproc

	.align	16, 0x90
	.type	fix_command,@function
fix_command:                            # @fix_command
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	andq	$7, %rsi
	movl	%esi, %eax
	cmpl	$3, %eax
	jne	.LBB4_35
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB4_2:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_8 Depth 2
	movl	$612, %edi              # imm = 0x264
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movb	$1, %cl
	movq	-72(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	movb	%cl, -73(%rbp)          # 1-byte Spill
	je	.LBB4_6
# BB#3:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB4_2 Depth=1
	movl	$613, %edi              # imm = 0x265
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movb	$1, %cl
	movq	-88(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	movb	%cl, -73(%rbp)          # 1-byte Spill
	je	.LBB4_6
# BB#4:                                 # %lor.lhs.false.8
                                        #   in Loop: Header=BB4_2 Depth=1
	movl	$826, %edi              # imm = 0x33A
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movb	$1, %cl
	movq	-96(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	movb	%cl, -73(%rbp)          # 1-byte Spill
	je	.LBB4_6
# BB#5:                                 # %lor.rhs
                                        #   in Loop: Header=BB4_2 Depth=1
	movl	$777, %edi              # imm = 0x309
	movq	-24(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	movb	%dl, -73(%rbp)          # 1-byte Spill
.LBB4_6:                                # %lor.end
                                        #   in Loop: Header=BB4_2 Depth=1
	movb	-73(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB4_7
	jmp	.LBB4_13
.LBB4_7:                                # %while.body
                                        #   in Loop: Header=BB4_2 Depth=1
	jmp	.LBB4_8
.LBB4_8:                                # %while.cond.15
                                        #   Parent Loop BB4_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB4_10
# BB#9:                                 # %while.body.21
                                        #   in Loop: Header=BB4_8 Depth=2
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB4_8
.LBB4_10:                               # %while.end
                                        #   in Loop: Header=BB4_2 Depth=1
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB4_12
# BB#11:                                # %if.then.31
	jmp	.LBB4_13
.LBB4_12:                               # %if.end
                                        #   in Loop: Header=BB4_2 Depth=1
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB4_2
.LBB4_13:                               # %while.end.34
	movl	$624, %edi              # imm = 0x270
	movq	-24(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB4_34
# BB#14:                                # %if.then.38
	movq	-8(%rbp), %rdi
	callq	Fcdr
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB4_15:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_22 Depth 2
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB4_33
# BB#16:                                # %for.body
                                        #   in Loop: Header=BB4_15 Depth=1
	movq	-32(%rbp), %rdi
	callq	Fcar
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB4_31
# BB#17:                                # %if.then.49
                                        #   in Loop: Header=BB4_15 Depth=1
	movl	$535, %edi              # imm = 0x217
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB4_20
# BB#18:                                # %land.lhs.true
                                        #   in Loop: Header=BB4_15 Depth=1
	movl	$14, %eax
	movl	%eax, %edi
	movq	-48(%rbp), %rsi
	callq	Fnthcdr
	xorl	%edi, %edi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB4_20
# BB#19:                                # %if.then.59
                                        #   in Loop: Header=BB4_15 Depth=1
	movl	$10, %eax
	movl	%eax, %edi
	movq	-48(%rbp), %rsi
	callq	Fnth
	movq	%rax, -48(%rbp)
	jmp	.LBB4_26
.LBB4_20:                               # %if.else
                                        #   in Loop: Header=BB4_15 Depth=1
	movl	$1014, %edi             # imm = 0x3F6
	movq	-64(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB4_25
# BB#21:                                # %if.then.64
                                        #   in Loop: Header=BB4_15 Depth=1
	jmp	.LBB4_22
.LBB4_22:                               # %while.cond.65
                                        #   Parent Loop BB4_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB4_24
# BB#23:                                # %while.body.73
                                        #   in Loop: Header=BB4_22 Depth=2
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB4_22
.LBB4_24:                               # %while.end.77
                                        #   in Loop: Header=BB4_15 Depth=1
	movq	-48(%rbp), %rdi
	callq	Fcar
	movq	%rax, -48(%rbp)
.LBB4_25:                               # %if.end.79
                                        #   in Loop: Header=BB4_15 Depth=1
	jmp	.LBB4_26
.LBB4_26:                               # %if.end.80
                                        #   in Loop: Header=BB4_15 Depth=1
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB4_30
# BB#27:                                # %if.then.85
                                        #   in Loop: Header=BB4_15 Depth=1
	movq	-48(%rbp), %rdi
	callq	Fcar
	movq	preserved_fns, %rsi
	movq	%rax, %rdi
	callq	Fmemq
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB4_29
# BB#28:                                # %if.then.91
                                        #   in Loop: Header=BB4_15 Depth=1
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	Fcar
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fsetcar
	movq	%rax, -160(%rbp)        # 8-byte Spill
.LBB4_29:                               # %if.end.94
                                        #   in Loop: Header=BB4_15 Depth=1
	jmp	.LBB4_30
.LBB4_30:                               # %if.end.95
                                        #   in Loop: Header=BB4_15 Depth=1
	jmp	.LBB4_31
.LBB4_31:                               # %if.end.96
                                        #   in Loop: Header=BB4_15 Depth=1
	jmp	.LBB4_32
.LBB4_32:                               # %for.inc
                                        #   in Loop: Header=BB4_15 Depth=1
	movq	-32(%rbp), %rdi
	callq	Fcdr
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB4_15
.LBB4_33:                               # %for.end
	jmp	.LBB4_34
.LBB4_34:                               # %if.end.101
	jmp	.LBB4_35
.LBB4_35:                               # %if.end.102
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	fix_command, .Lfunc_end4-fix_command
	.cfi_endproc

	.align	16, 0x90
	.type	read_file_name,@function
read_file_name:                         # @read_file_name
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
	subq	$96, %rsp
	movabsq	$.L.str.26, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%rax, %rdi
	callq	intern
	xorl	%edi, %edi
	movq	%rax, -88(%rbp)
	movq	callint_message, %rax
	movq	%rax, -80(%rbp)
	callq	builtin_lisp_symbol
	movl	$7, %edi
                                        # kill: RDI<def> EDI<kill>
	leaq	-88(%rbp), %rsi
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	Ffuncall
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	read_file_name, .Lfunc_end5-read_file_name
	.cfi_endproc

	.align	16, 0x90
	.type	check_mark,@function
check_mark:                             # @check_mark
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
	subq	$48, %rsp
	movb	%dil, %al
	andb	$1, %al
	movb	%al, -1(%rbp)
	movq	current_buffer, %rcx
	movq	64(%rcx), %rdi
	callq	Fmarker_buffer
	xorl	%edi, %edi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB6_2
# BB#1:                                 # %lor.lhs.false
	movq	-16(%rbp), %rdi
	callq	XBUFFER
	cmpq	current_buffer, %rax
	je	.LBB6_3
.LBB6_2:                                # %if.then
	movabsq	$.L.str.28, %rax
	movabsq	$.L.str.27, %rcx
	movb	-1(%rbp), %dl
	testb	$1, %dl
	cmovneq	%rcx, %rax
	movq	%rax, %rdi
	movb	$0, %al
	callq	error
.LBB6_3:                                # %if.end
	xorl	%edi, %edi
	movq	globals+2440, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB6_7
# BB#4:                                 # %land.lhs.true
	xorl	%edi, %edi
	movq	globals+1368, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB6_7
# BB#5:                                 # %land.lhs.true.8
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	304(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB6_7
# BB#6:                                 # %if.then.11
	movl	$644, %edi              # imm = 0x284
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	xsignal0
.LBB6_7:                                # %if.end.13
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	check_mark, .Lfunc_end6-check_mark
	.cfi_endproc

	.globl	Fprefix_numeric_value
	.align	16, 0x90
	.type	Fprefix_numeric_value,@function
Fprefix_numeric_value:                  # @Fprefix_numeric_value
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
	subq	$32, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB7_2
# BB#1:                                 # %if.then
	movl	$1, %eax
	movl	%eax, %edi
	callq	make_natnum
	movq	%rax, -16(%rbp)
	jmp	.LBB7_13
.LBB7_2:                                # %if.else
	movl	$668, %edi              # imm = 0x29C
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB7_4
# BB#3:                                 # %if.then.4
	movq	$-2, -16(%rbp)
	jmp	.LBB7_12
.LBB7_4:                                # %if.else.5
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB7_7
# BB#5:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB7_7
# BB#6:                                 # %if.then.13
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB7_11
.LBB7_7:                                # %if.else.16
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB7_9
# BB#8:                                 # %if.then.22
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB7_10
.LBB7_9:                                # %if.else.23
	movl	$1, %eax
	movl	%eax, %edi
	callq	make_natnum
	movq	%rax, -16(%rbp)
.LBB7_10:                               # %if.end
	jmp	.LBB7_11
.LBB7_11:                               # %if.end.25
	jmp	.LBB7_12
.LBB7_12:                               # %if.end.26
	jmp	.LBB7_13
.LBB7_13:                               # %if.end.27
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	Fprefix_numeric_value, .Lfunc_end7-Fprefix_numeric_value
	.cfi_endproc

	.align	16, 0x90
	.type	quotify_arg,@function
quotify_arg:                            # @quotify_arg
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
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$3, %eax
	je	.LBB8_4
# BB#1:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB8_5
# BB#2:                                 # %land.lhs.true
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB8_5
# BB#3:                                 # %land.lhs.true.8
	movl	$901, %edi              # imm = 0x385
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB8_5
.LBB8_4:                                # %if.then
	movl	$783, %edi              # imm = 0x30F
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	list2
	movq	%rax, -8(%rbp)
	jmp	.LBB8_6
.LBB8_5:                                # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB8_6:                                # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	quotify_arg, .Lfunc_end8-quotify_arg
	.cfi_endproc

	.globl	syms_of_callint
	.align	16, 0x90
	.type	syms_of_callint,@function
syms_of_callint:                        # @syms_of_callint
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
	subq	$32, %rsp
	callq	Fmake_marker
	movabsq	$point_marker, %rdi
	movq	%rax, point_marker
	callq	staticpro
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$callint_message, %rdi
	movq	%rax, callint_message
	callq	staticpro
	movabsq	$.L.str.10, %rdi
	callq	intern_c_string
	movabsq	$.L.str.11, %rdi
	movq	%rax, -8(%rbp)          # 8-byte Spill
	callq	intern_c_string
	movabsq	$.L.str.12, %rdi
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	intern_c_string
	movabsq	$.L.str.13, %rdi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	intern_c_string
	movl	$1, %edi
	movl	$4, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	-24(%rbp), %r8          # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	listn
	movq	%rax, preserved_fns
# BB#1:                                 # %do.body
	movabsq	$syms_of_callint.ko_fwd, %rdi
	movabsq	$.L.str.14, %rsi
	movl	$48, %edx
	callq	defvar_kboard
# BB#2:                                 # %do.end
	jmp	.LBB9_3
.LBB9_3:                                # %do.body.7
	movabsq	$syms_of_callint.ko_fwd.15, %rdi
	movabsq	$.L.str.16, %rsi
	movl	$56, %edx
	callq	defvar_kboard
# BB#4:                                 # %do.end.8
	jmp	.LBB9_5
.LBB9_5:                                # %do.body.9
	movabsq	$syms_of_callint.o_fwd, %rdi
	movabsq	$.L.str.17, %rsi
	movabsq	$globals, %rax
	addq	$400, %rax              # imm = 0x190
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#6:                                 # %do.end.10
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+400
# BB#7:                                 # %do.body.12
	movabsq	$syms_of_callint.o_fwd.18, %rdi
	movabsq	$.L.str.19, %rsi
	movabsq	$globals, %rax
	addq	$328, %rax              # imm = 0x148
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#8:                                 # %do.end.13
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+328
# BB#9:                                 # %do.body.15
	movabsq	$syms_of_callint.o_fwd.20, %rdi
	movabsq	$.L.str.21, %rsi
	movabsq	$globals, %rax
	addq	$312, %rax              # imm = 0x138
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#10:                                # %do.end.16
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+312
# BB#11:                                # %do.body.18
	movabsq	$syms_of_callint.o_fwd.22, %rdi
	movabsq	$.L.str.23, %rsi
	movabsq	$globals, %rax
	addq	$1368, %rax             # imm = 0x558
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#12:                                # %do.end.19
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, globals+1368
# BB#13:                                # %do.body.21
	movabsq	$syms_of_callint.o_fwd.24, %rdi
	movabsq	$.L.str.25, %rsi
	movabsq	$globals, %rax
	addq	$1624, %rax             # imm = 0x658
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#14:                                # %do.end.22
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$Sinteractive, %rcx
	movq	%rax, globals+1624
	movq	%rcx, %rdi
	callq	defsubr
	movabsq	$Scall_interactively, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sfuncall_interactively, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sprefix_numeric_value, %rax
	movq	%rax, %rdi
	callq	defsubr
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	syms_of_callint, .Lfunc_end9-syms_of_callint
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"`+' is not used in `interactive' for ordinary commands"
	.size	.L.str, 55

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Attempt to select inactive minibuffer window"
	.size	.L.str.1, 45

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"\n"
	.size	.L.str.2, 2

	.type	callint_message,@object # @callint_message
	.local	callint_message
	.comm	callint_message,8,8
	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Non-character input-event"
	.size	.L.str.3, 26

	.type	point_marker,@object    # @point_marker
	.local	point_marker
	.comm	point_marker,8,8
	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"%s must be bound to an event with parameters"
	.size	.L.str.4, 45

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"command"
	.size	.L.str.5, 8

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"read-minibuffer"
	.size	.L.str.6, 16

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"eval-minibuffer"
	.size	.L.str.7, 16

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Invalid control letter `%c' (#o%03o, #x%04x) in interactive calling string"
	.size	.L.str.8, 75

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.zero	1
	.size	.L.str.9, 1

	.type	callint_argfuns,@object # @callint_argfuns
	.data
	.align	16
callint_argfuns:
	.quad	.L.str.9
	.quad	.L.str.12
	.quad	.L.str.13
	.quad	.L.str.10
	.quad	.L.str.11
	.size	callint_argfuns, 40

	.type	.L.str.10,@object       # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"region-beginning"
	.size	.L.str.10, 17

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"region-end"
	.size	.L.str.11, 11

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"point"
	.size	.L.str.12, 6

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"mark"
	.size	.L.str.13, 5

	.type	preserved_fns,@object   # @preserved_fns
	.local	preserved_fns
	.comm	preserved_fns,8,8
	.type	syms_of_callint.ko_fwd,@object # @syms_of_callint.ko_fwd
	.local	syms_of_callint.ko_fwd
	.comm	syms_of_callint.ko_fwd,8,4
	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"prefix-arg"
	.size	.L.str.14, 11

	.type	syms_of_callint.ko_fwd.15,@object # @syms_of_callint.ko_fwd.15
	.local	syms_of_callint.ko_fwd.15
	.comm	syms_of_callint.ko_fwd.15,8,4
	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"last-prefix-arg"
	.size	.L.str.16, 16

	.type	syms_of_callint.o_fwd,@object # @syms_of_callint.o_fwd
	.local	syms_of_callint.o_fwd
	.comm	syms_of_callint.o_fwd,16,8
	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"current-prefix-arg"
	.size	.L.str.17, 19

	.type	syms_of_callint.o_fwd.18,@object # @syms_of_callint.o_fwd.18
	.local	syms_of_callint.o_fwd.18
	.comm	syms_of_callint.o_fwd.18,16,8
	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"command-history"
	.size	.L.str.19, 16

	.type	syms_of_callint.o_fwd.20,@object # @syms_of_callint.o_fwd.20
	.local	syms_of_callint.o_fwd.20
	.comm	syms_of_callint.o_fwd.20,16,8
	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"command-debug-status"
	.size	.L.str.21, 21

	.type	syms_of_callint.o_fwd.22,@object # @syms_of_callint.o_fwd.22
	.local	syms_of_callint.o_fwd.22
	.comm	syms_of_callint.o_fwd.22,16,8
	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"mark-even-if-inactive"
	.size	.L.str.23, 22

	.type	syms_of_callint.o_fwd.24,@object # @syms_of_callint.o_fwd.24
	.local	syms_of_callint.o_fwd.24
	.comm	syms_of_callint.o_fwd.24,16,8
	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"mouse-leave-buffer-hook"
	.size	.L.str.25, 24

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"read-file-name"
	.size	.L.str.26, 15

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"The mark is not set now, so there is no region"
	.size	.L.str.27, 47

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"The mark is not set now"
	.size	.L.str.28, 24

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"interactive"
	.size	.L.str.29, 12

	.type	Sinteractive,@object    # @Sinteractive
	.data
	.align	8
Sinteractive:
	.quad	167772160               # 0xa000000
	.quad	Finteractive
	.short	0                       # 0x0
	.short	65535                   # 0xffff
	.zero	4
	.quad	.L.str.29
	.quad	0
	.quad	0
	.size	Sinteractive, 48

	.type	.L.str.30,@object       # @.str.30
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.30:
	.asciz	"call-interactively"
	.size	.L.str.30, 19

	.type	Scall_interactively,@object # @Scall_interactively
	.data
	.align	8
Scall_interactively:
	.quad	167772160               # 0xa000000
	.quad	Fcall_interactively
	.short	1                       # 0x1
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.30
	.quad	0
	.quad	0
	.size	Scall_interactively, 48

	.type	.L.str.31,@object       # @.str.31
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.31:
	.asciz	"funcall-interactively"
	.size	.L.str.31, 22

	.type	Sfuncall_interactively,@object # @Sfuncall_interactively
	.data
	.align	8
Sfuncall_interactively:
	.quad	167772160               # 0xa000000
	.quad	Ffuncall_interactively
	.short	1                       # 0x1
	.short	65534                   # 0xfffe
	.zero	4
	.quad	.L.str.31
	.quad	0
	.quad	0
	.size	Sfuncall_interactively, 48

	.type	.L.str.32,@object       # @.str.32
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.32:
	.asciz	"prefix-numeric-value"
	.size	.L.str.32, 21

	.type	Sprefix_numeric_value,@object # @Sprefix_numeric_value
	.data
	.align	8
Sprefix_numeric_value:
	.quad	167772160               # 0xa000000
	.quad	Fprefix_numeric_value
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.32
	.quad	0
	.quad	0
	.size	Sprefix_numeric_value, 48


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
